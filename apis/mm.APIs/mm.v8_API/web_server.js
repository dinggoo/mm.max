// web_server.js — a tiny web server inside Max (Max 9.2+), for the [v8] object.
// It serves web_page.html and the live channel values, so you can watch them
// in a browser, also on your phone (same wifi).
//
//   in the patch:  [v8 web_server.js 8080 web_page.html]
//                   argument 1 = port, argument 2 = the page to serve
//
// IN (from the patch)
//   info  <what> ...       copy of what api_reader.js sends out (label / show / range / status / auto)
//   value <channel> <n>    the channel numbers
// OUT
//   messages for api_reader.js, from the buttons on the page (api <name> / bang / auto 0|1)
//
// THE PAGE TALKS TO THIS SERVER
//   GET /          the page (web_page.html)
//   GET /state     everything the page shows, as JSON
//   GET /cmd?m=... a button was clicked (only api / bang / auto are allowed)

inlets = 1;
outlets = 1;

const http = require("http");

const self = this; // to find the folder of the patch later
const PORT = Number(jsarguments[1]) || 8080;
const PAGE = jsarguments[2] || "web_page.html";

const state = {
  status: "",
  auto: 0,
  channels: { 1: {}, 2: {}, 3: {}, 4: {} },
};

// ---------------------------------------------------------------- from the patch

function info(kind, ...args) {
  if (kind === "status") state.status = args.join(" ");
  else if (kind === "auto") state.auto = Number(args[0]) || 0;
  else if (kind === "label" || kind === "show" || kind === "range") {
    const ch = state.channels[args[0]];
    if (!ch) return;
    if (kind === "range") ch.range = [Number(args[1]), Number(args[2])];
    else ch[kind] = args.slice(1).join(" ");
    if (kind === "label" && ch.label === "-") delete ch.value; // channel was cleared
  }
}

function value(channel, n) {
  const ch = state.channels[channel];
  if (ch) ch.value = Number(n);
}

// ---------------------------------------------------------------- the server

const server = http.createServer((req, res) => {
  const url = new URL(req.url, "http://localhost");

  if (url.pathname === "/state") {
    send(res, 200, "application/json", JSON.stringify(state));
  } else if (url.pathname === "/cmd") {
    const words = (url.searchParams.get("m") || "").trim().split(/\s+/);
    if (allowed(words)) {
      outlet(0, ...words.map((w) => (isNaN(w) ? w : Number(w))));
      send(res, 200, "text/plain", "ok");
    } else {
      send(res, 403, "text/plain", "not allowed");
    }
  } else if (url.pathname === "/" || url.pathname === "/" + PAGE) {
    const page = readText(PAGE);
    if (page) send(res, 200, "text/html; charset=utf-8", page);
    else send(res, 404, "text/plain", `${PAGE} not found (it must be next to the patch)`);
  } else {
    send(res, 404, "text/plain", "not found");
  }
});

server.on("error", (e) => post(`web_server: ${e.message} (is port ${PORT} already in use?)\n`));
server.listen(PORT, "0.0.0.0", () => post(`web_server: open http://localhost:${PORT}\n`));

// close the port when the object is deleted or the patch is closed
function notifydeleted() {
  server.close();
}

// ---------------------------------------------------------------- helpers

// the page may only choose an API, fetch now, or switch auto on/off
function allowed(words) {
  const [cmd, arg] = words;
  if (cmd === "bang" && words.length === 1) return true;
  if (cmd === "auto" && (arg === "0" || arg === "1") && words.length === 2) return true;
  if (cmd === "api" && /^[a-z0-9_]+$/i.test(arg || "") && words.length === 2) return true;
  return false;
}

// first next to the patch, otherwise anywhere in the Max search path
function readText(name) {
  const patchPath = (self.patcher && self.patcher.filepath) || "";
  const folder = patchPath.slice(0, patchPath.lastIndexOf("/") + 1);
  let f = new File(folder + name, "read");
  if (!f.isopen) f = new File(name, "read");
  if (!f.isopen) return null;
  const bytes = [];
  while (f.position < f.eof) bytes.push(...f.readbytes(Math.min(4096, f.eof - f.position)));
  f.close();
  return new TextDecoder().decode(new Uint8Array(bytes)); // UTF-8, so é and → survive
}

function send(res, code, type, body) {
  res.statusCode = code;
  res.setHeader("Content-Type", type);
  res.setHeader("Cache-Control", "no-store");
  res.end(body);
}

[allowed, readText, send].forEach((f) => (f.local = 1));
