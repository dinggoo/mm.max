"""Builds the simplest v8 API patch: [v8 fetcher] -> [dict] -> [v8 reader] -> [route] -> numbers.

    python3 build/build_simple_starter.py mm.v8_simple_starter.maxpat
    python3 build/build_simple_starter.py mm.v8_simple_starter_NL.maxpat --nl
    python3 build/build_simple_starter.py test.maxpat [--nl] --test /path/log.txt   (self-test, closes itself)
"""
import json, sys

APPV = {"major": 9, "minor": 2, "revision": 1, "architecture": "x64", "modernui": 1}
BLACK = [1.0, 1.0, 1.0, 1.0]  # white text, readable on the dark patch background
NL = "--nl" in sys.argv
TEST = "--test" in sys.argv
LOG = sys.argv[sys.argv.index("--test") + 1] if TEST else None
DICT = "api_data_nl" if NL else "api_data"  # own name per language, so both can be open together
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


def codebox(code, x, y, w, h, ins, outs):
    return obj(None, x, y, w, ins, outs, cls="v8.codebox", h=h, code=code, filename="none",
               fontface=0, fontname="<Monospaced>", fontsize=12.0,
               saved_object_attributes={"parameter_enable": 0})


def wire(src, so, dst, di=0):
    lines.append({"patchline": {"source": [src, so], "destination": [dst, di]}})


# ------------------------------------------------------------------ the two scripts
if NL:
    FETCHER = f'''// FETCHER: get <url>  →  haalt JSON op en schrijft het in [dict {DICT}]
outlets = 2; // links: dictionary {DICT}   rechts: status

const data = new Dict("{DICT}");

async function get(url) {{
  try {{
    const response = await fetch(url);
    let json = await response.json();
    if (Array.isArray(json)) json = {{ items: json }}; // een dict wil sleutels
    data.parse(JSON.stringify(json));
    outlet(1, "status", response.status);
    outlet(0, "dictionary", data.name);
  }} catch (error) {{
    outlet(1, "fout", error.message);
  }}
}}
'''
    READER = '''// READER: dictionary <naam>  →  elke waarde als Max-bericht: <pad> <waarde>
// bijv. "latitude 52.3"  of  "current.temperature_2m 4.2"

function dictionary(name) {
  const data = JSON.parse(new Dict(name).stringify());
  walk(data, "");
}

function walk(value, path) {
  if (value !== null && typeof value === "object") {
    for (const key in value) walk(value[key], path ? path + "." + key : key);
  } else if (typeof value === "boolean") {
    outlet(0, path, value ? 1 : 0); // true/false wordt 1/0
  } else {
    outlet(0, path, value === null ? "null" : value);
  }
}
walk.local = 1;
'''
else:
    FETCHER = f'''// FETCHER: get <url>  →  fetches JSON and writes it into [dict {DICT}]
outlets = 2; // left: dictionary {DICT}   right: status

const data = new Dict("{DICT}");

async function get(url) {{
  try {{
    const response = await fetch(url);
    let json = await response.json();
    if (Array.isArray(json)) json = {{ items: json }}; // a dict needs keys
    data.parse(JSON.stringify(json));
    outlet(1, "status", response.status);
    outlet(0, "dictionary", data.name);
  }} catch (error) {{
    outlet(1, "error", error.message);
  }}
}}
'''
    READER = '''// READER: dictionary <name>  →  every value as a Max message: <path> <value>
// e.g. "latitude 52.3"  or  "current.temperature_2m 4.2"

function dictionary(name) {
  const data = JSON.parse(new Dict(name).stringify());
  walk(data, "");
}

function walk(value, path) {
  if (value !== null && typeof value === "object") {
    for (const key in value) walk(value[key], path ? path + "." + key : key);
  } else if (typeof value === "boolean") {
    outlet(0, path, value ? 1 : 0); // true/false becomes 1/0
  } else {
    outlet(0, path, value === null ? "null" : value);
  }
}
walk.local = 1;
'''

T = {
    "title": "v8 simple starter" if not NL else "v8 simpele starter",
    "sub": ("Web API → [v8 fetcher] → [dict] → [v8 reader] → [route] → numbers. Needs Max 9.2+."
            if not NL else
            "Web-API → [v8 fetcher] → [dict] → [v8 reader] → [route] → getallen. Werkt met Max 9.2+."),
    "s1": "1 · FETCH" if not NL else "1 · OPHALEN",
    "iss": "← ISS position" if not NL else "← positie van het ISS",
    "wx": "← weather Amsterdam" if not NL else "← weer in Amsterdam",
    "metro": "← every 5 s" if not NL else "← elke 5 s",
    "s2": "2 · THE DICT" if not NL else "2 · DE DICT",
    "dict": (f"the fetcher writes into [dict {DICT}]. Double-click it, or look here:" if not NL else
             f"de fetcher schrijft in [dict {DICT}]. Dubbelklik erop, of kijk hier:"),
    "s3": "3 · DICT → MAX DATA" if not NL else "3 · DICT → MAX-DATA",
    "reader": ("the reader sends every value out as  <path> <value>.  Pick what you need with [route]:"
               if not NL else
               "de reader stuurt elke waarde als  <pad> <waarde>.  Pak wat je nodig hebt met [route]:"),
    "route_tip": ("Another API? Click 'print', look in the Max Console for the path, and type it into [route]."
                  if not NL else
                  "Andere API? Klik op 'print', zoek het pad in de Max Console en typ het in [route]."),
    "print": "← every path + value to the Max Console" if not NL else "← elk pad + waarde naar de Max Console",
    "mu": "1b · OR: [maxurl]" if not NL else "1b · OF: [maxurl]",
    "mu_txt": ("Same job without code. The reader below works with both." if not NL else
               "Hetzelfde zonder code. De reader hieronder werkt met allebei."),
    "body": "← body = the JSON" if not NL else "← body = de JSON",
}

# ------------------------------------------------------------------ patch
comment(T["title"], 20, 12, 400, h=34.0, size=24.0, bold=True)
comment(T["sub"], 20, 46, 700)
comment("By Mark Meeuwenoord · www.dinggoo.nl · 2026", 900, 20, 300)

comment(T["s1"], 20, 85, 300, h=24.0, size=16.0, bold=True)
m_iss = msg("get https://api.wheretheiss.at/v1/satellites/25544", 20, 115, 330)
comment(T["iss"], 360, 115, 200)
m_wx = msg("get https://api.open-meteo.com/v1/forecast?latitude=52.37&longitude=4.89&current=temperature_2m",
           20, 145, 560)
comment(T["wx"], 590, 145, 160)
tg = obj(None, 20, 180, 24, 1, 1, cls="toggle", h=24.0, parameter_enable=0)
met = obj("metro 5000", 50, 180, 75, 2, 1)
comment(T["metro"], 130, 180, 100)
wire(tg, 0, met)
wire(met, 0, m_iss)

fetcher = codebox(FETCHER, 20, 220, 560, 250, 1, 2)
wire(m_iss, 0, fetcher)
wire(m_wx, 0, fetcher)
p_set = obj("prepend set", 590, 450, 80, 1, 1)
d_stat = obj("", 680, 450, 140, 2, 1, cls="message")
wire(fetcher, 1, p_set)
wire(p_set, 0, d_stat)

# ------------------------------------------------------------------ 1b · the same with [maxurl]
MREQ = "maxurl_request_nl" if NL else "maxurl_request"
comment(T["mu"], 600, 220, 240, h=24.0, size=16.0, bold=True)
comment(T["mu_txt"], 600, 245, 240, h=34.0)
m_mu = msg("clear, set url https://api.wheretheiss.at/v1/satellites/25544, set parse_type json, bang",
           600, 285, 230)
m_mu_box = boxes[-1]["box"]; m_mu_box["patching_rect"][3] = 50.0
d_req = obj(f"dict {MREQ}", 600, 345, 150, 2, 4)
mu = obj("maxurl", 600, 375, 60, 2, 2)
unp_body = obj("dict.unpack body:", 600, 405, 120, 1, 2)
comment(T["body"], 725, 405, 115)
wire(m_mu, 0, d_req)
wire(d_req, 0, mu)
wire(mu, 0, unp_body)

comment(T["s2"], 850, 85, 300, h=24.0, size=16.0, bold=True)
comment(T["dict"], 850, 112, 380, h=34.0)
d_obj = obj(f"dict {DICT}", 850, 150, 120, 2, 4)
dv = obj(None, 850, 180, 380, 1, 0, cls="dict.view", h=290.0)
wire(fetcher, 0, dv)

comment(T["s3"], 20, 495, 300, h=24.0, size=16.0, bold=True)
comment(T["reader"], 20, 522, 700)
reader = codebox(READER, 20, 550, 560, 280, 1, 1)
wire(fetcher, 0, reader)
wire(unp_body, 0, reader)
wire(unp_body, 0, dv)

rt = obj("route latitude longitude altitude current.temperature_2m", 20, 845, 400, 2, 5)
wire(reader, 0, rt)
names = ["latitude", "longitude", "altitude", "current.temperature_2m"]
flos = []
for i, name in enumerate(names):
    x = 20 + i * 110
    f = obj(None, x, 880, 100, 1, 2, cls="flonum", parameter_enable=0)
    comment(name, x, 905, 105, h=34.0)
    wire(rt, i, f)
    flos.append(f)
comment(T["route_tip"], 20, 945, 700)

m_print = obj(None, 600, 550, 24, 1, 1, cls="toggle", h=24.0, parameter_enable=0)
gt = obj("gate", 600, 580, 40, 2, 1)
pr = obj("print api", 600, 610, 70, 1, 0)
comment("print", 630, 552, 50)
comment(T["print"], 600, 640, 230, h=34.0)
wire(m_print, 0, gt)
wire(reader, 0, gt, 1)
wire(gt, 0, pr)

# ------------------------------------------------------------------ self-test (only with --test)
if TEST:
    code = f'''inlets = 1; outlets = 0;
const log = [];
function anything() {{ log.push(messagename + " " + arrayfromargs(arguments).join(" ")); }}
function loadbang() {{ const P = this.patcher; setTimeout(() => {{
  let o = P.firstobject, n = 0; while (o) {{ n++; if (o.maxclass === "jbogus") log.push("BOGUS " + o.rect); o = o.nextobject; }}
  log.push("objects " + n);
  const f = new File("{LOG}", "write", "TEXT"); log.forEach((l) => f.writeline(l)); f.close(); }}, 8500); }}'''
    st = codebox(code, 1300, 100, 300, 200, 1, 0)
    for i, (src, o, name) in enumerate([(fetcher, 1, "STATUS"), (flos[0], 0, "LAT"), (flos[1], 0, "LON"),
                                        (flos[3], 0, "TEMP"), (reader, 0, "READER")]):
        p = obj(f"prepend {name}", 1300, 320 + i * 30, 150, 1, 1)
        wire(src, o, p)
        wire(p, 0, st)
    lb = obj("loadbang", 1300, 500, 70, 1, 1)
    for i, (t, target) in enumerate([(800, m_iss), (3500, m_wx), (5500, m_mu)]):
        d = obj(f"delay {t}", 1300 + i * 100, 530, 80, 2, 1)
        wire(lb, 0, d)
        wire(d, 0, target)
    dd = obj("delay 9000", 1500, 600, 80, 2, 1)
    dm = msg("dispose", 1500, 630, 60)
    tp = obj("thispatcher", 1500, 660, 80, 1, 2)
    wire(lb, 0, dd); wire(dd, 0, dm); wire(dm, 0, tp)

patch = {"patcher": {
    "fileversion": 1, "appversion": APPV, "classnamespace": "box",
    "rect": [40.0, 60.0, 1260.0 if not TEST else 1650.0, 1000.0], "gridsize": [15.0, 15.0],
    "default_fontsize": 12.0, "boxes": boxes, "lines": lines,
}}
with open(sys.argv[1], "w") as f:
    json.dump(patch, f, indent=1)
print(len(boxes), "boxes,", len(lines), "lines")
