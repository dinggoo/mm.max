// api_reader_nl.js — haalt JSON op van een web-API en stuurt waardes de patch in.
// Voor het [v8]-object (Max 9.2+): moderne JavaScript met fetch(), async/await,
// template strings, arrow functions, enz.
//
//   in de patch:  [v8 api_reader_nl.js]
//
// BERICHTEN (inlet)
//   api <naam>                 laad een API uit api_presets_nl.js (weather, air, iss, ...)
//   url <adres>                eigen API-adres (geen komma's: gebruik %2C)
//   header <naam> <waarde>     extra HTTP-header, bijv. voor een API-sleutel
//   bang                       nu één keer ophalen
//   auto <0/1>                 automatisch ophalen aan/uit (stop = auto 0)
//   interval <ms>              hoe vaak automatisch ophalen (minimaal 1000 ms)
//   watch <kanaal> <pad>       kanaal 1..4 volgt een waarde, bijv. watch 1 current.temperature_2m
//   label <kanaal> <tekst>     naam voor een kanaal
//   range <kanaal> <lo> <hi>   verwacht bereik (de patch schaalt dit naar 0..255)
//   unwatch <kanaal> / clear   één kanaal / alle kanalen leegmaken
//   paths                      zet alle paden in de JSON in het menu (en de Max Console)
//   peek <pad>                 laat één waarde zien
//
// UITGANGEN (outlets)
//   0  dictionary api_data_nl  → [dict.view] / [dict] / [dict.unpack]
//   1  <kanaal> <getal>        → [route 1 2 3 4]   (alleen getallen)
//   2  status / auto / interval / show / label / range / paths / peek → info voor de patch

autowatch = 1; // VS Code: opslaan = Max laadt het script meteen opnieuw
inlets = 1;
outlets = 3;

setinletassist(0, "api, url, bang, auto, interval, watch, paths, ...");
setoutletassist(0, "dictionary met de volledige JSON");
setoutletassist(1, "kanaal getal  →  [route 1 2 3 4]");
setoutletassist(2, "status / auto / interval / show / label / range / paths / peek");

// let op: het bericht heet 'api' en niet 'preset': Max slikt de argumenten
// van een 'preset'-bericht in als het via [send]/[receive] gaat.
const { presets } = require("api_presets_nl");

const CHANNELS = [1, 2, 3, 4];
const MIN_INTERVAL = 1000; // wees lief voor gratis API's
const TIMEOUT_MS = 10000;
const MAX_PATHS = 400; // zo blijft het menu bruikbaar

const dict = new Dict(jsarguments[1] || "api_data_nl");

const state = {
  url: "",
  method: "GET",
  body: null, // alleen voor POST, vanuit api_presets_nl.js
  headers: {},
  channels: {}, // { 1: { path, label } }
  interval: 5000,
  auto: false,
  timer: null,
  gen: 0,
  busy: false,
  data: null,
};

// ---------------------------------------------------------------- berichten

function api(name) {
  const p = presets[name];
  if (!p) {
    info("status", `onbekende api '${name}'. Kies uit: ${Object.keys(presets).join(" ")}`);
    return;
  }
  clear();
  state.data = null; // oude data hoort bij de vorige API
  state.url = p.url;
  state.method = p.method || "GET";
  state.body = p.body === undefined ? null : JSON.stringify(p.body);
  state.headers = { ...(p.headers || {}) };
  for (const [ch, c] of Object.entries(p.channels || {})) {
    watch(Number(ch), c.path);
    if (c.label) label(Number(ch), c.label);
    if (c.range) range(Number(ch), c.range[0], c.range[1]);
  }
  info("status", `api ${name} geladen`);
  interval(p.interval || 5000);
  auto(1);
  bang();
}

function url(...parts) {
  state.url = parts.join("");
  state.method = "GET";
  state.body = null;
  info("status", `url ingesteld: ${state.url}`);
}

function header(name, ...value) {
  state.headers[name] = value.join(" ");
  info("status", `header ${name} ingesteld`);
}

function bang() {
  request();
}

function interval(ms) {
  ms = Number(ms) || 0;
  if (ms < MIN_INTERVAL) {
    post(`api_reader: interval ${ms} is te snel, ik gebruik ${MIN_INTERVAL} ms\n`);
    ms = MIN_INTERVAL;
  }
  state.interval = ms;
  info("interval", ms);
  if (state.auto) auto(1); // herstart met de nieuwe snelheid
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
  if (!state.data) return info("status", "nog geen data: eerst ophalen (bang)");
  const list = [];
  walk(state.data, "", list);
  info("paths", "clear");
  post(`---- api_reader: ${list.length} paden ----\n`);
  for (const [p, v] of list) {
    info("paths", "append", p);
    post(`${p} = ${short(v)}\n`);
  }
  if (list.length >= MAX_PATHS) post(`(afgekapt na ${MAX_PATHS} paden)\n`);
  info("status", `${list.length} paden in het menu gezet`);
}

function peek(...pathParts) {
  const path = pathParts.join("");
  const v = getPath(state.data, path);
  info("peek", v === undefined ? "(niet gevonden)" : short(v));
}

function anything() {
  post(`api_reader: onbekend bericht '${messagename}'\n`);
}

// ---------------------------------------------------------------- ophalen

async function request() {
  if (!state.url) return info("status", "nog geen url: kies een api of stuur 'url ...'");
  if (state.busy) return; // vorige aanvraag loopt nog
  state.busy = true;
  const t0 = Date.now();
  info("status", "bezig met ophalen…");

  // timeout, als AbortController beschikbaar is
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
      throw new Error("het antwoord is geen JSON");
    }
    // een dict heeft sleutels nodig: lijst → items, los getal/tekst → value
    if (Array.isArray(data)) data = { items: data };
    else if (data === null || typeof data !== "object") data = { value: data };

    state.data = data;
    dict.parse(JSON.stringify(data));
    outlet(0, "dictionary", dict.name);
    CHANNELS.forEach(sendChannel);
    info("status", `ok · HTTP ${res.status} · ${Date.now() - t0} ms · ${clock()}`);
  } catch (err) {
    const msg = err && err.name === "AbortError" ? `geen antwoord na ${TIMEOUT_MS / 1000} s` : String(err && err.message ? err.message : err);
    info("status", `FOUT: ${msg}`);
    post(`api_reader FOUT: ${msg}\n`);
  } finally {
    if (killer) clearTimeout(killer);
    state.busy = false;
  }
}

function scheduleNext() {
  const gen = state.gen; // hoort deze timer nog bij de huidige instelling?
  state.timer = setTimeout(async () => {
    await request();
    if (state.auto && gen === state.gen) scheduleNext();
  }, state.interval);
}

function stopTimer() {
  if (state.timer) clearTimeout(state.timer);
  state.timer = null;
  state.gen++; // oude timers stoppen na hun lopende aanvraag
}

// ---------------------------------------------------------------- uitvoer

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

// teksten in losse woorden, zodat Max ze zonder "aanhalingstekens" toont
function info(...args) {
  const atoms = args.flatMap((a) => (typeof a === "string" ? a.split(/\s+/).filter(Boolean) : [a]));
  outlet(2, ...atoms);
}

// ---------------------------------------------------------------- hulpjes

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
  post(`api_reader: kanaal moet 1, 2, 3 of 4 zijn (kreeg '${ch}')\n`);
  return false;
}

function clock() {
  const d = new Date();
  return [d.getHours(), d.getMinutes(), d.getSeconds()].map((n) => String(n).padStart(2, "0")).join(":");
}

// interne hulpjes niet als Max-bericht aanbieden
[request, scheduleNext, stopTimer, sendChannel, info, splitPath, getPath, walk, toNumber, short, lastKey, validChannel, clock]
  .forEach((f) => (f.local = 1));
