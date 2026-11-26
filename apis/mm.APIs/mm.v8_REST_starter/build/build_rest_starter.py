"""Builds mm.v8_REST_starter.maxpat: a minimal REST client in a [v8.codebox] (fetch, Max 9.2+),
next to the classic [maxurl] way.

    python3 build/build_rest_starter.py mm.v8_REST_starter.maxpat
    python3 build/build_rest_starter.py mm.v8_REST_starter_NL.maxpat --nl     (Nederlandse versie)
    python3 build/build_rest_starter.py test.maxpat --test /path/log.txt     (self-test, closes itself)
"""
import json, sys

APPV = {"major": 9, "minor": 2, "revision": 1, "architecture": "x64", "modernui": 1}
BLACK = [1.0, 1.0, 1.0, 1.0]  # white text, readable on the dark patch background
boxes, lines = [], []
_n = [0]


def _id():
    _n[0] += 1
    return f"obj-{_n[0]}"


def obj(text, x, y, w, ins, outs, cls="newobj", h=22.0, **extra):
    oid = _id()
    b = {"id": oid, "maxclass": cls, "numinlets": ins, "numoutlets": outs,
         "outlettype": [""] * outs, "patching_rect": [x, y, w, h]}
    if text is not None:
        b["text"] = text
    b.update(extra)
    boxes.append({"box": b})
    return oid


def msg(text, x, y, w):
    return obj(text, x, y, w, 2, 1, cls="message")


def comment(text, x, y, w, h=20.0, size=12.0, bold=False):
    oid = _id()
    b = {"id": oid, "maxclass": "comment", "numinlets": 1, "numoutlets": 0,
         "patching_rect": [x, y, w, h], "text": text, "fontsize": size, "textcolor": BLACK}
    if bold:
        b["fontface"] = 1
    boxes.append({"box": b})
    return oid


def panel(x, y, w, h, color):
    boxes.append({"box": {"id": _id(), "maxclass": "panel", "numinlets": 1, "numoutlets": 0,
                          "patching_rect": [x, y, w, h], "background": 1, "ignoreclick": 1,
                          "bgcolor": color, "rounded": 10, "border": 0, "mode": 0}})


def wire(src, so, dst, di=0):
    lines.append({"patchline": {"source": [src, so], "destination": [dst, di]}})


CODE = r'''// v8 REST starter (Max 9.2+): fetch() with async/await
//
// MESSAGES
//   GET <url>                      DELETE <url>
//   POST <url> <dict name>         PUT <url> <dict name>      PATCH <url> <dict name>
//     (the dict is sent as the JSON body)
//   header <name> <value...>       e.g. header Authorization Bearer YOUR_TOKEN
//   clearheaders
// OUTLETS
//   0  dictionary rest_data        the JSON response, as a Max dict
//   1  status text                 e.g. 200 OK 143 ms

outlets = 2;

const result = new Dict("__RESULT__");
const headers = {};

function GET(url) { request("GET", url); }
function DELETE(url) { request("DELETE", url); }
function POST(url, dictName) { request("POST", url, dictName); }
function PUT(url, dictName) { request("PUT", url, dictName); }
function PATCH(url, dictName) { request("PATCH", url, dictName); }

function header(name, ...value) { headers[name] = value.join(" "); }
function clearheaders() { for (const key in headers) delete headers[key]; }

async function request(method, url, dictName) {
  const options = { method, headers: { Accept: "application/json", ...headers } };
  if (dictName) {
    options.headers["Content-Type"] = "application/json";
    options.body = new Dict(dictName).stringify();
  }
  const start = Date.now();
  status(`${method} ...`);
  try {
    const response = await fetch(url, options);
    const text = await response.text();
    let data;
    try { data = JSON.parse(text); } catch { data = { text }; } // not JSON? keep it as text
    if (data === null || typeof data !== "object" || Array.isArray(data)) data = { value: data };
    result.parse(JSON.stringify(data));
    status(`${response.status} ${response.statusText} ${Date.now() - start} ms`);
    outlet(0, "dictionary", result.name);
  } catch (error) {
    status(`error: ${error.message}`);
  }
}

function status(text) { outlet(1, ...text.split(" ")); }

request.local = 1;
status.local = 1;
'''

TEST = "--test" in sys.argv
NL = "--nl" in sys.argv
SFX = "_nl" if NL else ""            # own dict names, so EN and NL can be open together
RESULT, BODY, MREQ = "rest_data" + SFX, "my_body" + SFX, "maxurl_request" + SFX

EN_TXT = {
    "intro": "Click a message on the left. The JavaScript in the box below does the request with fetch(); "
             "the answer arrives as a Max dict. Needs Max 9.2 or newer.",
    "req": "1 · REQUEST", "iss": "← where is the ISS?", "metro": "← ask the ISS every 5 s",
    "body": "← the JSON body for POST/PUT", "ans": "2 · ANSWER", "status": "status:",
    "unp": "latitude / longitude (ISS). Change the key names for another API.",
    "look": "3 · LOOK AT THE DICT", "dbl": f"double-click [dict {RESULT}] to see it too",
    "classic": "THE CLASSIC WAY: [maxurl]",
    "classic_txt": "No code: you fill a request dict and send it to [maxurl]. parse_type json turns the body "
                   "into a dict. streaming_buffering is new in 9.2 (undocumented).",
    "prog": "right outlet = progress", "http": "← HTTP status",
    "vs": "fetch() vs maxurl: fetch gives you JavaScript (if/else, loops, POST JSON from a dict, "
          "your own headers). maxurl needs no code and also downloads files (filename_out).",
    "servo": "4 · SERVO  (upload put_this_on-your_arduino, the CMD sketch, to your board)",
    "servo_txt": "ISS latitude −90…90 → servo 0…180° on pin 9. Drag the slider to test. "
                 "Another pin? Change the 9 in [w s 9 $1].",
    "refresh": "← refresh ports", "pick": "← pick your board", "close": "← release port",
    "gate": "← only open once a port is chosen", "quiet": "← Arduino sends nothing back",
}
NL_TXT = {
    "intro": "Klik links op een bericht. De JavaScript in het vak hieronder doet het verzoek met fetch(); "
             "het antwoord komt binnen als Max-dict. Werkt met Max 9.2 of nieuwer.",
    "req": "1 · VERZOEK", "iss": "← waar is het ISS?", "metro": "← vraag het ISS elke 5 s",
    "body": "← de JSON-body voor POST/PUT", "ans": "2 · ANTWOORD", "status": "status:",
    "unp": "breedtegraad / lengtegraad (ISS). Verander de sleutelnamen voor een andere API.",
    "look": "3 · BEKIJK DE DICT", "dbl": f"dubbelklik op [dict {RESULT}] om hem ook te zien",
    "classic": "DE KLASSIEKE MANIER: [maxurl]",
    "classic_txt": "Zonder code: je vult een request-dict en stuurt die naar [maxurl]. parse_type json maakt "
                   "van de body een dict. streaming_buffering is nieuw in 9.2 (niet gedocumenteerd).",
    "prog": "rechter outlet = voortgang", "http": "← HTTP-status",
    "vs": "fetch() of maxurl: met fetch schrijf je JavaScript (if/else, loops, POST-JSON uit een dict, "
          "eigen headers). maxurl heeft geen code nodig en kan ook bestanden downloaden (filename_out).",
    "servo": "4 · SERVO  (upload put_this_on-your_arduino, de CMD-sketch, naar je board)",
    "servo_txt": "ISS-breedtegraad −90…90 → servo 0…180° op pin 9. Sleep de slider om te testen. "
                 "Andere pin? Verander de 9 in [w s 9 $1].",
    "refresh": "← ververs poorten", "pick": "← kies je board", "close": "← poort loslaten",
    "gate": "← pas open als er een poort gekozen is", "quiet": "← Arduino stuurt niets terug",
}
T = NL_TXT if NL else EN_TXT
LOG = sys.argv[sys.argv.index("--test") + 1] if TEST else None

# ------------------------------------------------------------------ title
CODE = CODE.replace("__RESULT__", RESULT).replace("dictionary rest_data", "dictionary " + RESULT)
if NL:
    CODE = (CODE
        .replace("// v8 REST starter (Max 9.2+): fetch() with async/await", "// v8 REST-starter (Max 9.2+): fetch() met async/await")
        .replace("// MESSAGES", "// BERICHTEN")
        .replace("<dict name>", "<dict-naam>").replace("//     (the dict is sent as the JSON body)", "//     (de dict gaat mee als JSON-body)")
        .replace("e.g. header Authorization Bearer YOUR_TOKEN", "bijv. header Authorization Bearer JOUW_TOKEN")
        .replace("// OUTLETS", "// UITGANGEN")
        .replace("the JSON response, as a Max dict", "het JSON-antwoord, als Max-dict")
        .replace("status text                 e.g. 200 OK 143 ms", "statustekst                 bijv. 200 OK 143 ms")
        .replace("// not JSON? keep it as text", "// geen JSON? bewaar het als tekst"))

comment("v8 REST starter", 20, 12, 400, h=34.0, size=24.0, bold=True)
comment("By Mark Meeuwenoord · www.dinggoo.nl · 2026", 920, 20, 300)
comment(T["intro"], 20, 46, 1180)

# ------------------------------------------------------------------ left: v8 + fetch
panel(15, 75, 590, 790, [0.15, 0.28, 0.20, 1.0])
comment(T["req"], 30, 85, 300, h=24.0, size=16.0, bold=True)
m_iss = msg("GET https://api.wheretheiss.at/v1/satellites/25544", 30, 115, 330)
comment(T["iss"], 370, 115, 200)
m_wx = msg("GET https://api.open-meteo.com/v1/forecast?latitude=52.37&longitude=4.89&current=temperature_2m",
           30, 145, 560)
tg = obj(None, 30, 180, 24, 1, 1, cls="toggle", h=24.0, parameter_enable=0)
met = obj("metro 5000", 60, 180, 75, 2, 1)
comment(T["metro"], 145, 180, 200)
m_body = msg("clear, set name Max, set value 42", 30, 220, 230)
d_body = obj(f"dict {BODY}", 270, 220, 100, 2, 4)
comment(T["body"], 375, 220, 210)
m_post = msg(f"POST https://httpbin.org/post {BODY}", 30, 250, 265)
m_put = msg(f"PUT https://httpbin.org/put {BODY}", 305, 250, 260)
m_del = msg("DELETE https://httpbin.org/delete", 30, 280, 230)
m_head = msg("header Authorization Bearer " + ("JOUW_TOKEN" if NL else "YOUR_TOKEN"), 270, 280, 270)

cb = obj(None, 30, 320, 560, 1, 2, cls="v8.codebox", h=400.0, code=CODE, filename="none",
         fontface=0, fontname="<Monospaced>", fontsize=11.0,
         saved_object_attributes={"parameter_enable": 0})
for m in (m_iss, m_wx, m_post, m_put, m_del, m_head):
    wire(m, 0, cb)
wire(tg, 0, met)
wire(met, 0, m_iss)
wire(m_body, 0, d_body)

comment(T["ans"], 30, 730, 300, h=24.0, size=16.0, bold=True)
p_set = obj("prepend set", 330, 730, 80, 1, 1)
d_stat = obj("", 330, 760, 260, 2, 1, cls="message")
comment(T["status"], 280, 760, 50)
wire(cb, 1, p_set)
wire(p_set, 0, d_stat)
unp = obj("dict.unpack latitude: longitude:", 30, 760, 200, 1, 3)
f_lat = obj(None, 30, 795, 90, 1, 2, cls="flonum", parameter_enable=0)
f_lon = obj(None, 130, 795, 90, 1, 2, cls="flonum", parameter_enable=0)
comment(T["unp"], 30, 825, 560)
wire(cb, 0, unp)
wire(unp, 0, f_lat)
wire(unp, 1, f_lon)

# ------------------------------------------------------------------ middle: look at the dict
panel(620, 75, 300, 790, [0.32, 0.27, 0.13, 1.0])
comment(T["look"], 635, 85, 280, h=24.0, size=16.0, bold=True)
comment(T["dbl"], 635, 112, 280)
dv = obj(None, 635, 140, 270, 1, 0, cls="dict.view", h=700.0)
wire(cb, 0, dv)

# ------------------------------------------------------------------ right: maxurl
panel(935, 75, 300, 790, [0.20, 0.20, 0.34, 1.0])
comment(T["classic"], 950, 85, 280, h=24.0, size=16.0, bold=True)
comment(T["classic_txt"], 950, 112, 270, h=62.0)
m_req = msg("clear, set url https://api.wheretheiss.at/v1/satellites/25544, set http_method get, "
            "set parse_type json, set streaming_buffering 1, bang", 950, 180, 270)
d_req = obj(f"dict {MREQ}", 950, 250, 140, 2, 4)
mu = obj("maxurl", 950, 285, 60, 2, 2)
comment(T["prog"], 1020, 285, 180)
unp2 = obj("dict.unpack status: body:", 950, 320, 170, 1, 3)
n_stat = obj(None, 950, 355, 60, 1, 2, cls="number", parameter_enable=0)
comment(T["http"], 1015, 355, 120)
dv2 = obj(None, 950, 385, 270, 1, 0, cls="dict.view", h=260.0)
comment(T["vs"], 950, 655, 270, h=76.0)
wire(m_req, 0, d_req)
wire(d_req, 0, mu)
wire(mu, 0, unp2)
wire(unp2, 0, n_stat)
wire(unp2, 1, dv2)

# ------------------------------------------------------------------ servo (CMD sketch)
panel(15, 880, 1220, 200, [0.34, 0.17, 0.16, 1.0])
comment(T["servo"], 30, 890, 900, h=24.0, size=16.0, bold=True)
comment(T["servo_txt"], 30, 915, 1000)
sc = obj("scale -90. 90. 0 180", 30, 945, 125, 6, 1)
ii = obj("i", 165, 945, 30, 2, 1)
chg = obj("change", 205, 945, 55, 1, 3)
sl = obj(None, 270, 945, 180, 1, 1, cls="slider", h=22.0, size=181.0, parameter_enable=0)
n_deg = obj(None, 460, 945, 50, 1, 2, cls="number", parameter_enable=0)
comment("°", 512, 945, 20)
m_servo = msg("w s 9 $1", 535, 945, 70)
tsym = obj("tosymbol", 615, 945, 65, 1, 1)
ato = obj("atoi", 690, 945, 40, 3, 1)
app = obj("append 10", 740, 945, 70, 2, 1)
g_ser = obj("gate", 820, 945, 40, 2, 1)
comment(T["gate"], 865, 945, 260)
wire(unp, 0, sc); wire(sc, 0, ii); wire(ii, 0, chg); wire(chg, 0, sl)
wire(sl, 0, n_deg); wire(n_deg, 0, m_servo); wire(m_servo, 0, tsym); wire(tsym, 0, ato); wire(ato, 0, app); wire(app, 0, g_ser, 1)

lb = obj("loadbang", 30, 985, 65, 1, 1)
m_print = msg("print", 105, 985, 45)
comment(T["refresh"], 155, 985, 130)
menu = obj(None, 30, 1015, 250, 1, 3, cls="umenu", parameter_enable=0)
comment(T["pick"], 285, 1015, 120)
t_pick = obj("t b 1 b s", 410, 1015, 80, 1, 4)
p_port = obj("prepend port", 500, 1045, 85, 1, 1)
m_open = msg("open", 595, 1045, 40)
m_quiet = msg("mode none", 645, 1015, 75)
comment(T["quiet"], 725, 1015, 200)
m_close = msg("close", 410, 985, 45)
comment(T["close"], 460, 985, 130)
t_close = obj("t 0 close", 600, 985, 70, 1, 2)
ser = obj("serial a 9600 @autoopen 0 @dtr 1", 750, 1045, 200, 1, 2)
rt_port = obj("route port", 960, 1045, 70, 2, 2)
t_lb = obj("t l b", 1040, 1045, 45, 1, 2)
it = obj("iter", 1095, 1045, 35, 1, 1)
p_app = obj("prepend append", 1140, 1045, 90, 1, 1)
m_clr = msg("clear", 1095, 1015, 40)
wire(lb, 0, m_print); wire(m_print, 0, ser)
wire(menu, 1, t_pick)
wire(t_pick, 3, p_port); wire(p_port, 0, ser)
wire(t_pick, 2, m_open); wire(m_open, 0, ser)
wire(t_pick, 1, g_ser)
wire(t_pick, 0, m_quiet); wire(m_quiet, 0, tsym)
wire(m_close, 0, t_close); wire(t_close, 1, ser); wire(t_close, 0, g_ser)
wire(g_ser, 0, ser)
wire(ser, 1, rt_port); wire(rt_port, 0, t_lb)
wire(t_lb, 1, m_clr); wire(m_clr, 0, menu)
wire(t_lb, 0, it); wire(it, 0, p_app); wire(p_app, 0, menu)

# ------------------------------------------------------------------ self-test (only with --test)
if TEST:
    code = f'''inlets = 1; outlets = 0;
const log = [];
function anything() {{ log.push(messagename + " " + arrayfromargs(arguments).join(" ")); }}
function msg_float(v) {{ log.push("float " + v); }}
function msg_int(v) {{ log.push("int " + v); }}
function loadbang() {{ const P = this.patcher; setTimeout(() => {{
  let o = P.firstobject, n = 0; while (o) {{ n++; if (o.maxclass === "jbogus") log.push("BOGUS " + o.rect); o = o.nextobject; }}
  log.push("objects " + n);
  const f = new File("{LOG}", "write", "TEXT"); log.forEach((l) => f.writeline(l)); f.close(); }}, 12000); }}'''
    st = obj(None, 1300, 100, 300, 1, 0, cls="v8.codebox", h=200.0, code=code, filename="none",
             saved_object_attributes={"parameter_enable": 0})
    taps = [(cb, 1, "STATUS"), (unp, 0, "LAT"), (unp2, 0, "MAXURL_STATUS"), (d_req, 0, "REQ"), (m_servo, 0, "SERVO"), (app, 0, "BYTES")]
    for i, (src, o, name) in enumerate(taps):
        p = obj(f"prepend {name}", 1300, 320 + i * 30, 150, 1, 1)
        wire(src, o, p)
        wire(p, 0, st)
    lb = obj("loadbang", 1300, 500, 70, 1, 1)
    for i, (t, target) in enumerate([(800, m_iss), (2500, m_body), (3000, m_post), (5000, m_del),
                                     (6500, m_wx), (8500, m_req), (10000, m_quiet)]):
        d = obj(f"delay {t}", 1300 + i * 20, 530 + i * 25, 80, 2, 1)
        wire(lb, 0, d)
        wire(d, 0, target)
    dd = obj("delay 13000", 1500, 500, 80, 2, 1)
    dm = msg("dispose", 1500, 530, 60)
    tp = obj("thispatcher", 1500, 560, 80, 1, 2)
    wire(lb, 0, dd); wire(dd, 0, dm); wire(dm, 0, tp)

patch = {"patcher": {
    "fileversion": 1, "appversion": APPV, "classnamespace": "box",
    "rect": [40.0, 60.0, 1260.0 if not TEST else 1650.0, 1100.0], "gridsize": [15.0, 15.0],
    "default_fontsize": 12.0, "boxes": boxes, "lines": lines,
}}
with open(sys.argv[1], "w") as f:
    json.dump(patch, f, indent=1)
print(len(boxes), "boxes,", len(lines), "lines")
