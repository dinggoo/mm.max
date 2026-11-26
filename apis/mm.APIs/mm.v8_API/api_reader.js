// api_reader.js — fetches JSON from a web API and sends the values into the patch.
// For the [v8] object (Max 9.2+): modern JavaScript with fetch(), async/await,
// template strings, arrow functions, etc.
//
//   in the patch:  [v8 api_reader.js]
//
// MESSAGES (inlet)
//   api <name>                 load an API from api_presets.js (weather, air, iss, ...)
//   url <address>              your own API address (no commas: use %2C)
//   header <name> <value>      extra HTTP header, e.g. for an API key
//   bang                       fetch once, now
//   auto <0/1>                 fetch automatically on/off (stop = auto 0)
//   interval <ms>              how often to fetch automatically (minimum 1000 ms)
//   watch <channel> <path>     channel 1..4 follows a value, e.g. watch 1 current.temperature_2m
//   label <channel> <text>     name for a channel
//   range <channel> <lo> <hi>  expected range (the patch scales this to 0..255)
//   unwatch <channel> / clear  empty one channel / all channels
//   paths                      put every path in the JSON into the menu (and the Max Console)
//   peek <path>                show a single value
//
// OUTLETS
//   0  dictionary api_data     → [dict.view] / [dict] / [dict.unpack]
//   1  <channel> <number>      → [route 1 2 3 4]   (numbers only)
//   2  status / auto / interval / show / label / range / paths / peek → info for the patch

autowatch = 1; // VS Code: save the file = Max reloads the script right away
inlets = 1;
outlets = 3;

setinletassist(0, "api, url, bang, auto, interval, watch, paths, ...");
setoutletassist(0, "dictionary with the full JSON");
setoutletassist(1, "channel number  →  [route 1 2 3 4]");
setoutletassist(2, "status / auto / interval / show / label / range / paths / peek");

// note: the message is called 'api', not 'preset': Max swallows the arguments
// of a 'preset' message when it travels through [send]/[receive].
const { presets } = require("api_presets");

const CHANNELS = [1, 2, 3, 4];
const MIN_INTERVAL = 1000; // be kind to free APIs
const TIMEOUT_MS = 10000;
const MAX_PATHS = 400; // keeps the menu usable

const dict = new Dict(jsarguments[1] || "api_data");

const state = {
  url: "",
  method: "GET",
  body: null, // only for POST, set from api_presets.js
  headers: {},
  channels: {}, // { 1: { path, label } }
  interval: 5000,
  auto: false,
  timer: null,
  gen: 0,
  busy: false,
  data: null,
};

// ---------------------------------------------------------------- messages

function api(name) {
  const p = presets[name];
  if (!p) {
    info("status", `unknown api '${name}'. Choose from: ${Object.keys(presets).join(" ")}`);
    return;
  }
  clear();
  state.data = null; // old data belongs to the previous API
  state.url = p.url;
  state.method = p.method || "GET";
  state.body = p.body === undefined ? null : JSON.stringify(p.body);
  state.headers = { ...(p.headers || {}) };
  for (const [ch, c] of Object.entries(p.channels || {})) {
    watch(Number(ch), c.path);
    if (c.label) label(Number(ch), c.label);
    if (c.range) range(Number(ch), c.range[0], c.range[1]);
  }
  info("status", `api ${name} loaded`);
  interval(p.interval || 5000);
  auto(1);
  bang();
}

function url(...parts) {
  state.url = parts.join("");
  state.method = "GET";
  state.body = null;
  info("status", `url set: ${state.url}`);
}

function header(name, ...value) {
  state.headers[name] = value.join(" ");
  info("status", `header ${name} set`);
}

function bang() {
  request();
}

function interval(ms) {
  ms = Number(ms) || 0;
  if (ms < MIN_INTERVAL) {
    post(`api_reader: interval ${ms} is too fast, using ${MIN_INTERVAL} ms\n`);
    ms = MIN_INTERVAL;
  }
  state.interval = ms;
  info("interval", ms);
  if (state.auto) auto(1); // restart at the new speed
}

function auto(on) {
  state.auto = Boolean(Number(on));
  stopTimer();
  if (state.auto) scheduleNext();
  info("auto", state.auto ? 1 : 0);
}

function stop() {
  auto(0);
}

function watch(ch, ...pathParts) {
  if (!validChannel(ch)) return;
  const path = pathParts.join("");
  state.channels[ch] = { path, label: lastKey(path) };
  info("label", ch, state.channels[ch].label);
  if (state.data) sendChannel(ch);
}

function label(ch, ...text) {
  if (!validChannel(ch) || !state.channels[ch]) return;
  state.channels[ch].label = text.join(" ");
  info("label", ch, state.channels[ch].label);
}

function range(ch, lo, hi) {
  if (!validChannel(ch)) return;
  info("range", ch, Number(lo), Number(hi));
}

function unwatch(ch) {
  if (!validChannel(ch)) return;
  delete state.channels[ch];
  info("label", ch, "-");
  info("show", ch, "-");
}

function clear() {
  CHANNELS.forEach(unwatch);
  state.headers = {};
}

function paths() {
  if (!state.data) return info("status", "no data yet: fetch first (bang)");
  const list = [];
  walk(state.data, "", list);
  info("paths", "clear");
  post(`---- api_reader: ${list.length} paths ----\n`);
  for (const [p, v] of list) {
    info("paths", "append", p);
    post(`${p} = ${short(v)}\n`);
  }
  if (list.length >= MAX_PATHS) post(`(cut off after ${MAX_PATHS} paths)\n`);
  info("status", `${list.length} paths put in the menu`);
}

function peek(...pathParts) {
  const path = pathParts.join("");
  const v = getPath(state.data, path);
  info("peek", v === undefined ? "(not found)" : short(v));
}

function anything() {
  post(`api_reader: unknown message '${messagename}'\n`);
}

// ---------------------------------------------------------------- fetching

async function request() {
  if (!state.url) return info("status", "no url yet: choose an api or send 'url ...'");
  if (state.busy) return; // previous request still running
  state.busy = true;
  const t0 = Date.now();
  info("status", "fetching…");

  // timeout, if AbortController is available
  const ctrl = typeof AbortController !== "undefined" ? new AbortController() : null;
  const killer = ctrl ? setTimeout(() => ctrl.abort(), TIMEOUT_MS) : null;

  try {
    const res = await fetch(state.url, {
      method: state.method,
      headers: {
        Accept: "application/json",
        ...(state.body ? { "Content-Type": "application/json" } : {}),
        ...state.headers,
      },
      ...(state.body ? { body: state.body } : {}),
      ...(ctrl ? { signal: ctrl.signal } : {}),
    });
    const text = await res.text();
    if (!res.ok) throw new Error(`HTTP ${res.status}: ${text.slice(0, 120)}`);

    let data;
    try {
      data = JSON.parse(text);
    } catch {
      throw new Error("the response is not JSON");
    }
    // a dict needs keys: list → items, bare number/text → value
    if (Array.isArray(data)) data = { items: data };
    else if (data === null || typeof data !== "object") data = { value: data };

    state.data = data;
    dict.parse(JSON.stringify(data));
    outlet(0, "dictionary", dict.name);
    CHANNELS.forEach(sendChannel);
    info("status", `ok · HTTP ${res.status} · ${Date.now() - t0} ms · ${clock()}`);
  } catch (err) {
    const msg = err && err.name === "AbortError" ? `no answer after ${TIMEOUT_MS / 1000} s` : String(err && err.message ? err.message : err);
    info("status", `ERROR: ${msg}`);
    post(`api_reader ERROR: ${msg}\n`);
  } finally {
    if (killer) clearTimeout(killer);
    state.busy = false;
  }
}

function scheduleNext() {
  const gen = state.gen; // does this timer still belong to the current setting?
  state.timer = setTimeout(async () => {
    await request();
    if (state.auto && gen === state.gen) scheduleNext();
  }, state.interval);
}

function stopTimer() {
  if (state.timer) clearTimeout(state.timer);
  state.timer = null;
  state.gen++; // old timers stop after their running request
}

// ---------------------------------------------------------------- output

function sendChannel(ch) {
  const c = state.channels[ch];
  if (!c || !state.data) return;
  const v = getPath(state.data, c.path);
  if (v === undefined) {
    info("show", ch, `? ${c.path}`);
    return;
  }
  info("show", ch, short(v));
  const n = toNumber(v);
  if (n !== null) outlet(1, ch, n);
}

// text as separate words, so Max shows it without "quotes"
function info(...args) {
  const atoms = args.flatMap((a) => (typeof a === "string" ? a.split(/\s+/).filter(Boolean) : [a]));
  outlet(2, ...atoms);
}

// ---------------------------------------------------------------- helpers

// "features[0].properties.mag" → ["features", 0, "properties", "mag"]
function splitPath(path) {
  return String(path)
    .replace(/\[(\d+)\]/g, ".$1")
    .split(".")
    .filter((k) => k !== "");
}

function getPath(obj, path) {
  let cur = obj;
  for (const key of splitPath(path)) {
    if (cur === null || typeof cur !== "object" || !(key in cur)) return undefined;
    cur = cur[key];
  }
  return cur;
}

function walk(v, prefix, out) {
  if (out.length >= MAX_PATHS) return;
  if (Array.isArray(v)) {
    v.slice(0, 20).forEach((item, i) => walk(item, `${prefix}[${i}]`, out));
  } else if (v !== null && typeof v === "object") {
    for (const [k, item] of Object.entries(v)) walk(item, prefix ? `${prefix}.${k}` : k, out);
  } else {
    out.push([prefix, v]);
  }
}

function toNumber(v) {
  if (typeof v === "number") return Number.isFinite(v) ? v : null;
  if (typeof v === "boolean") return v ? 1 : 0;
  if (typeof v === "string" && v.trim() !== "" && !isNaN(v)) return parseFloat(v);
  return null;
}

function short(v) {
  if (v === null) return "null";
  if (typeof v === "object") {
    const s = JSON.stringify(v);
    return s.length > 60 ? s.slice(0, 57) + "..." : s;
  }
  return typeof v === "number" ? v : String(v);
}

function lastKey(path) {
  const keys = splitPath(path);
  return keys.length ? String(keys[keys.length - 1]) : path;
}

function validChannel(ch) {
  if (CHANNELS.includes(Number(ch))) return true;
  post(`api_reader: channel must be 1, 2, 3 or 4 (got '${ch}')\n`);
  return false;
}

function clock() {
  const d = new Date();
  return [d.getHours(), d.getMinutes(), d.getSeconds()].map((n) => String(n).padStart(2, "0")).join(":");
}

// don't offer internal helpers as Max messages
[request, scheduleNext, stopTimer, sendChannel, info, splitPath, getPath, walk, toNumber, short, lastKey, validChannel, clock]
  .forEach((f) => (f.local = 1));
