// app.js — web API → browser → Arduino. Plain JavaScript, no libraries.
// The same idea as the Max patch mm.v8_API:
//   1 choose an API   2 fetch   3 look at the data   4 four channels 0..255   5 Arduino
// presets.js has the APIs, arduino.js does the USB/serial part.

const LANG = document.documentElement.lang === "nl" ? "nl" : "en";
const TXT = {
  en: {
    nourl: "no url yet: choose an API or type one", fetching: "fetching…", notjson: "the response is not JSON",
    error: "ERROR: ", channel: "CHANNEL", path: "path", range: "range", output: "output", pin: "pin",
    servo: "servo", pwm: "PWM", onoff: "on/off", none: "–", notfound: "not found",
    connect: "Connect Arduino", disconnect: "Disconnect", connecting: "starting the board…",
    connected: "connected", notconnected: "not connected", nosupport: "Web Serial needs Chrome or Edge, on http://localhost or https://",
    pick: "pick a path…", paths: (n) => `${n} paths`,
  },
  nl: {
    nourl: "nog geen url: kies een API of typ er een", fetching: "bezig met ophalen…", notjson: "het antwoord is geen JSON",
    error: "FOUT: ", channel: "KANAAL", path: "pad", range: "bereik", output: "uitgang", pin: "pin",
    servo: "servo", pwm: "PWM", onoff: "aan/uit", none: "–", notfound: "niet gevonden",
    connect: "Verbind Arduino", disconnect: "Verbreek", connecting: "board start op…",
    connected: "verbonden", notconnected: "niet verbonden", nosupport: "Web Serial werkt in Chrome of Edge, op http://localhost of https://",
    pick: "kies een pad…", paths: (n) => `${n} paden`,
  },
}[LANG];

const $ = (selector) => document.querySelector(selector);

const state = {
  url: "",
  data: null,
  busy: false,
  timer: null,
  channels: {
    1: { type: "s", pin: 9 },
    2: { type: "a", pin: 5 },
    3: { type: "a", pin: 6 },
    4: { type: "d", pin: 7 },
  },
};
for (const ch of Object.values(state.channels)) Object.assign(ch, { path: "", label: "", lo: 0, hi: 1, value: null, target: 0, out: 0, sent: "" });

// ================================================================ 1 · choose an API

for (const name of Object.keys(PRESETS)) {
  const button = document.createElement("button");
  button.textContent = name;
  button.onclick = () => loadPreset(name);
  $("#presets").append(button);
}

function loadPreset(name) {
  const p = PRESETS[name];
  state.url = p.url;
  $("#url").value = p.url;
  for (const ch of [1, 2, 3, 4]) {
    const c = p.channels[ch];
    Object.assign(state.channels[ch], c
      ? { path: c.path, label: textOf(c.label), lo: c.range[0], hi: c.range[1] }
      : { path: "", label: "", lo: 0, hi: 1 });
    state.channels[ch].value = null;
  }
  $("#interval").value = p.interval || 5;
  $("#auto").checked = true;
  renderChannelSettings();
  restartAuto();
  fetchNow();
}

$("#use-url").onclick = () => {
  state.url = $("#url").value.trim();
  fetchNow();
};

// ================================================================ 2 · fetch

async function fetchNow() {
  if (!state.url) return status(TXT.nourl);
  if (state.busy) return;
  state.busy = true;
  const start = Date.now();
  status(TXT.fetching);
  try {
    const response = await fetch(state.url);
    const text = await response.text();
    if (!response.ok) throw new Error(`HTTP ${response.status}`);
    try { state.data = JSON.parse(text); } catch { throw new Error(TXT.notjson); }
    $("#json").textContent = JSON.stringify(state.data, null, 2);
    fillPaths(state.data);
    updateChannels();
    status(`ok · HTTP ${response.status} · ${Date.now() - start} ms · ${new Date().toLocaleTimeString()}`);
  } catch (error) {
    status(TXT.error + error.message);
  } finally {
    state.busy = false;
  }
}

function restartAuto() {
  clearInterval(state.timer);
  if ($("#auto").checked) state.timer = setInterval(fetchNow, Math.max(1, Number($("#interval").value) || 5) * 1000);
}

$("#fetch").onclick = fetchNow;
$("#auto").onchange = restartAuto;
$("#interval").onchange = restartAuto;

function status(text) {
  $("#status").textContent = text;
}

// ================================================================ 3 · look at the data

function fillPaths(data) {
  const select = $("#paths");
  const chosen = select.value;
  const list = [];
  walk(data, "", list);
  select.innerHTML = `<option value="">${TXT.pick} (${TXT.paths(list.length)})</option>`;
  for (const [path] of list) select.add(new Option(path, path));
  select.value = chosen;
}

$("#paths").onchange = () => {
  const v = getPath(state.data, $("#paths").value);
  $("#peek").textContent = v === undefined ? "" : short(v);
};

document.querySelectorAll("[data-to-channel]").forEach((button) => {
  button.onclick = () => {
    const path = $("#paths").value;
    if (!path) return;
    const ch = state.channels[button.dataset.toChannel];
    ch.path = path;
    ch.label = path.split(/[.[\]]/).filter(Boolean).pop();
    renderChannelSettings();
    updateChannels();
  };
});

// ================================================================ 4 · channels

// build the four cards once
for (const ch of [1, 2, 3, 4]) {
  $("#channels").insertAdjacentHTML("beforeend", `
    <div class="card" id="ch${ch}">
      <div class="card-head"><b>${TXT.channel} ${ch}</b> <input class="label" placeholder="label"></div>
      <div class="small">${TXT.path}: <code class="path">${TXT.none}</code></div>
      <div class="value">${TXT.none}</div>
      <div class="text"></div>
      <label class="row">${TXT.range} <input class="lo" type="number" step="any"> … <input class="hi" type="number" step="any"></label>
      <input class="slider" type="range" min="0" max="255" value="0">
      <div class="small out">0</div>
      <label class="row">${TXT.output}
        <select class="type">
          <option value="s">${TXT.servo}</option><option value="a">${TXT.pwm}</option><option value="d">${TXT.onoff}</option>
        </select>
        ${TXT.pin} <input class="pin" type="number" min="2" max="13">
      </label>
    </div>`);
  const card = $("#ch" + ch);
  const c = state.channels[ch];
  card.querySelector(".label").oninput = (e) => (c.label = e.target.value);
  card.querySelector(".lo").onchange = (e) => { c.lo = Number(e.target.value); updateChannels(); };
  card.querySelector(".hi").onchange = (e) => { c.hi = Number(e.target.value); updateChannels(); };
  card.querySelector(".type").onchange = (e) => { c.type = e.target.value; c.sent = ""; };
  card.querySelector(".pin").onchange = (e) => { c.pin = Number(e.target.value); c.sent = ""; };
  card.querySelector(".slider").oninput = (e) => { c.target = c.out = Number(e.target.value); c.touched = true; }; // drag = test
}
renderChannelSettings();

function renderChannelSettings() {
  for (const ch of [1, 2, 3, 4]) {
    const c = state.channels[ch];
    const card = $("#ch" + ch);
    card.querySelector(".label").value = c.label;
    card.querySelector(".path").textContent = c.path || TXT.none;
    card.querySelector(".lo").value = c.lo;
    card.querySelector(".hi").value = c.hi;
    card.querySelector(".type").value = c.type;
    card.querySelector(".pin").value = c.pin;
    card.classList.toggle("unused", !c.path);
  }
}

// new data: read every channel's value and set its target (0..255)
function updateChannels() {
  for (const ch of [1, 2, 3, 4]) {
    const c = state.channels[ch];
    const card = $("#ch" + ch);
    if (!c.path || !state.data) continue;
    const v = getPath(state.data, c.path);
    const n = toNumber(v);
    card.querySelector(".value").textContent = n === null ? TXT.none : round(n);
    card.querySelector(".text").textContent = v === undefined ? `? ${TXT.notfound}` : n === null ? short(v) : "";
    if (n !== null && c.hi !== c.lo) {
      c.target = Math.min(255, Math.max(0, ((n - c.lo) / (c.hi - c.lo)) * 255));
    }
  }
}

// glide towards the target (like [line] in Max) and send to the Arduino when something changes
setInterval(() => {
  for (const ch of [1, 2, 3, 4]) {
    const c = state.channels[ch];
    c.out += (c.target - c.out) * 0.25;
    if (Math.abs(c.target - c.out) < 0.5) c.out = c.target;
    const out = Math.round(c.out);
    const card = $("#ch" + ch);
    card.querySelector(".slider").value = out;
    card.querySelector(".out").textContent = `0..255: ${out}  →  ${cmdFor(c, out)}`;
    if (c.path || c.touched) sendToArduino(c, out); // unused channels stay quiet
  }
}, 60);

// the CMD message for put_this_on-your_arduino: w s|a|d <pin> <value>
function cmdFor(c, out) {
  const value = c.type === "s" ? Math.round((out * 180) / 255) : c.type === "d" ? (out >= 128 ? 1 : 0) : out;
  return `w ${c.type} ${c.pin} ${value}`;
}

function sendToArduino(c, out) {
  if (!Arduino.ready) return;
  const message = cmdFor(c, out);
  if (message === c.sent) return; // only send what changed
  c.sent = message;
  Arduino.send(message);
  log("→ " + message);
}

// ================================================================ 5 · Arduino

$("#connect").onclick = async () => {
  if (!Arduino.supported) return alert(TXT.nosupport);
  try {
    if (Arduino.connected) await Arduino.disconnect();
    else {
      $("#serial-status").textContent = TXT.connecting;
      await Arduino.connect(9600);
      for (const c of Object.values(state.channels)) c.sent = ""; // send everything once
      Arduino.onChange();
    }
  } catch (error) {
    $("#serial-status").textContent = TXT.error + error.message;
  }
};

Arduino.onChange = () => {
  $("#connect").textContent = Arduino.connected ? TXT.disconnect : TXT.connect;
  $("#connect").classList.toggle("on", Arduino.connected);
  $("#serial-status").textContent = Arduino.ready ? TXT.connected : Arduino.connected ? TXT.connecting : TXT.notconnected;
};
Arduino.onLine = (line) => log("← " + line);
Arduino.onChange();
if (!Arduino.supported) $("#serial-status").textContent = TXT.nosupport;

function log(text) {
  if (!$("#show-log").checked) return;
  const pre = $("#log");
  pre.textContent = (text + "\n" + pre.textContent).split("\n").slice(0, 40).join("\n");
}

// ================================================================ helpers

function textOf(label) {
  return typeof label === "object" ? label[LANG] || label.en : label || "";
}

// "features[0].properties.mag" → ["features", "0", "properties", "mag"]
function getPath(obj, path) {
  let cur = obj;
  for (const key of String(path).replace(/\[(\d+)\]/g, ".$1").split(".").filter(Boolean)) {
    if (cur === null || typeof cur !== "object" || !(key in cur)) return undefined;
    cur = cur[key];
  }
  return cur;
}

function walk(v, prefix, out) {
  if (out.length >= 400) return;
  if (Array.isArray(v)) v.slice(0, 20).forEach((item, i) => walk(item, `${prefix}[${i}]`, out));
  else if (v !== null && typeof v === "object") for (const [k, item] of Object.entries(v)) walk(item, prefix ? `${prefix}.${k}` : k, out);
  else out.push([prefix, v]);
}

function toNumber(v) {
  if (typeof v === "number") return Number.isFinite(v) ? v : null;
  if (typeof v === "boolean") return v ? 1 : 0;
  if (typeof v === "string" && v.trim() !== "" && !isNaN(v)) return parseFloat(v);
  return null;
}

function short(v) {
  const s = typeof v === "object" ? JSON.stringify(v) : String(v);
  return s.length > 80 ? s.slice(0, 77) + "..." : s;
}

function round(n) {
  return Math.abs(n) >= 100 ? n.toFixed(0) : Math.abs(n) >= 10 ? n.toFixed(1) : n.toFixed(2);
}
