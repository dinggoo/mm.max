// web_server_nl.js — een kleine webserver in Max (Max 9.2+), voor het [v8]-object.
// Hij serveert web_page_nl.html en de live kanaalwaardes, zodat je ze in een
// browser kunt bekijken, ook op je telefoon (zelfde wifi).
//
//   in de patch:  [v8 web_server_nl.js 8081 web_page_nl.html]
//                  argument 1 = poort, argument 2 = de pagina
//
// IN (vanuit de patch)
//   info  <wat> ...        kopie van wat api_reader_nl.js uitstuurt (label / show / range / status / auto)
//   value <kanaal> <n>     de getallen per kanaal
// UIT
//   berichten voor api_reader_nl.js, van de knoppen op de pagina (api <naam> / bang / auto 0|1)
//
// DE PAGINA PRAAT MET DEZE SERVER
//   GET /          de pagina (web_page_nl.html)
//   GET /state     alles wat de pagina laat zien, als JSON
//   GET /cmd?m=... er is op een knop geklikt (alleen api / bang / auto mogen)

inlets = 1;
outlets = 1;

const http = require("http");

const self = this; // om later de map van de patch te vinden
const PORT = Number(jsarguments[1]) || 8081;
const PAGE = jsarguments[2] || "web_page_nl.html";

const state = {
  status: "",
  auto: 0,
  channels: { 1: {}, 2: {}, 3: {}, 4: {} },
};

// ---------------------------------------------------------------- vanuit de patch

function info(kind, ...args) {
  if (kind === "status") state.status = args.join(" ");
  else if (kind === "auto") state.auto = Number(args[0]) || 0;
  else if (kind === "label" || kind === "show" || kind === "range") {
    const ch = state.channels[args[0]];
    if (!ch) return;
    if (kind === "range") ch.range = [Number(args[1]), Number(args[2])];
    else ch[kind] = args.slice(1).join(" ");
    if (kind === "label" && ch.label === "-") delete ch.value; // kanaal is leeggemaakt
  }
}

function value(channel, n) {
  const ch = state.channels[channel];
  if (ch) ch.value = Number(n);
}

// ---------------------------------------------------------------- de server

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
      send(res, 403, "text/plain", "niet toegestaan");
    }
  } else if (url.pathname === "/" || url.pathname === "/" + PAGE) {
    const page = readText(PAGE);
    if (page) send(res, 200, "text/html; charset=utf-8", page);
    else send(res, 404, "text/plain", `${PAGE} niet gevonden (hij moet naast de patch staan)`);
  } else {
    send(res, 404, "text/plain", "niet gevonden");
  }
});

server.on("error", (e) => post(`web_server: ${e.message} (is poort ${PORT} al in gebruik?)\n`));
server.listen(PORT, "0.0.0.0", () => post(`web_server: open http://localhost:${PORT}\n`));

// poort sluiten als het object verwijderd of de patch gesloten wordt
function notifydeleted() {
  server.close();
}

// ---------------------------------------------------------------- hulpjes

// de pagina mag alleen een API kiezen, nu ophalen, of auto aan/uit zetten
function allowed(words) {
  const [cmd, arg] = words;
  if (cmd === "bang" && words.length === 1) return true;
  if (cmd === "auto" && (arg === "0" || arg === "1") && words.length === 2) return true;
  if (cmd === "api" && /^[a-z0-9_]+$/i.test(arg || "") && words.length === 2) return true;
  return false;
}

// eerst naast de patch, anders ergens in het Max-zoekpad
function readText(name) {
  const patchPath = (self.patcher && self.patcher.filepath) || "";
  const folder = patchPath.slice(0, patchPath.lastIndexOf("/") + 1);
  let f = new File(folder + name, "read");
  if (!f.isopen) f = new File(name, "read");
  if (!f.isopen) return null;
  const bytes = [];
  while (f.position < f.eof) bytes.push(...f.readbytes(Math.min(4096, f.eof - f.position)));
  f.close();
  return new TextDecoder().decode(new Uint8Array(bytes)); // UTF-8, zodat é en → heel blijven
}

function send(res, code, type, body) {
  res.statusCode = code;
  res.setHeader("Content-Type", type);
  res.setHeader("Cache-Control", "no-store");
  res.end(body);
}

[allowed, readText, send].forEach((f) => (f.local = 1));
