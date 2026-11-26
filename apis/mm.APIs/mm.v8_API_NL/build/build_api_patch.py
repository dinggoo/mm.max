"""Builds mm.v8_API(_NL).maxpat + mm.cmd_out(_nl).maxpat:
web API (JSON) -> [v8 api_reader.js] -> [p router] -> 4 channel columns 0..255 -> CMD messages -> [serial] -> Arduino.

    python3 build/build_api_patch.py mm.v8_API.maxpat              (English, in mm.v8_API/)
    python3 build/build_api_patch.py mm.v8_API_NL.maxpat --nl      (Nederlands, in mm.v8_API_NL/)

The same script lives in both folders.
"""
import json, os, sys

NL = "--nl" in sys.argv
APPV = {"major": 9, "minor": 2, "revision": 1, "architecture": "x64", "modernui": 1}

# names differ per language, so both versions can be open at the same time
P = "v8apinl" if NL else "v8api"                 # send/receive prefix
JS = "api_reader_nl.js" if NL else "api_reader.js"
DICT = "api_data_nl" if NL else "api_data"
CMDOUT = "mm.cmd_out_nl" if NL else "mm.cmd_out"
WEBJS = "web_server_nl.js" if NL else "web_server.js"
PAGE = "web_page_nl.html" if NL else "web_page.html"
PORT = 8081 if NL else 8080

# colour per section (light, so text stays readable in light & dark)
# dark tinted panels with white text (readable on Max's dark patch background)
C_API = [0.16, 0.22, 0.34, 1.0]
C_FETCH = [0.15, 0.28, 0.20, 1.0]
C_DATA = [0.32, 0.27, 0.13, 1.0]
C_CHAN = [0.27, 0.18, 0.32, 1.0]
C_ARD = [0.34, 0.17, 0.16, 1.0]
C_WEB = [0.13, 0.27, 0.30, 1.0]
TEXT = [1.0, 1.0, 1.0, 1.0]

EN = {
    "title": "Web API  →  Max  →  Arduino",
    "intro": f"Work from 1 to 5. All code lives in {JS} (double-click [v8] or open the file in VS Code). "
             "Add your own APIs in api_presets.js.",
    "s1": "1 · CHOOSE AN API",
    "presets": ["weather in Amsterdam (Open-Meteo)", "air quality / particulate matter",
                "UK power mix: wind / solar / gas", "ISS position, new every 2 s",
                "crypto prices (CoinGecko)", "earthquakes in the past hour"],
    "own": "or your own API (a comma = next message):",
    "key": "YOUR_KEY", "keytxt": "← for APIs that need a key",
    "s2": "2 · FETCH", "now": "fetch once, now", "auto": "automatically, every", "heart": "the heart of the patch:",
    "router": "← sorts the answers for the patch (double-click)", "json": "JSON → section 3",
    "status": "status:",
    "s3": "3 · LOOK AT THE DATA", "unfold": "the full JSON, click ▸ to unfold",
    "paths": "← put every path in the menu (and in the Max Console)",
    "tochan": "chosen path → channel:", "pick": "pick a path in the menu, then click 1-4",
    "s4": "4 · CHANNELS: from data to 0..255",
    "s4txt": "range = the values you expect; that becomes 0..255. Feel free to change it.",
    "chan": "CHANNEL", "number": "number", "range": "range", "glide": "glide over 300 ms",
    "drag": "0 ……… 255   (drag = test)",
    "outinfo": {"s": "servo", "a": "PWM", "d": "on/off"},
    "foot": f"[{CMDOUT} s 9] = servo on pin 9 · a = PWM (pins 3 5 6 10 11) · d = on/off. "
            "Change the letter and pin number to match your setup.",
    "s5": "5 · TO THE ARDUINO (serial)",
    "s5txt": "upload put_this_on-your_arduino (the CMD sketch), close the Arduino Serial Monitor, "
             "then pick the port.",
    "refresh": "← refresh ports", "board": "← pick your board", "release": "← release the port",
    "quiet": "← Arduino stays quiet", "console": "console", "gate": "opens once a port is chosen",
    "cmd": "CMD text + return, e.g. w s 9 90",
    "s6": "6 · WEB PAGE",
    "s6txt": "Max serves a small web page with the live channels. Open it here, or on your phone "
             "(same wifi): http://<this computer's IP address>:8080. Change the page in web_page.html.",
    "open": "← open in your browser",
    # abstraction
    "ab1": f"{CMDOUT} <type> <pin>   ·   0..255 in → CMD message for put_this_on-your_arduino",
    "ab2": "s = servo (0..180 degrees)   a = PWM (0..255)   d = digital on/off (from 128)",
    "abin": "value 0..255", "about": f"CMD message → [s {P}.out]", "abbad": "type_must_be_s_a_or_d",
}
NLT = {
    "title": "Web-API  →  Max  →  Arduino",
    "intro": f"Werk van 1 naar 5. Alle code zit in {JS} (dubbelklik op [v8] of open het bestand in VS Code). "
             "Eigen API's voeg je toe in api_presets_nl.js.",
    "s1": "1 · KIES EEN API",
    "presets": ["weer in Amsterdam (Open-Meteo)", "luchtkwaliteit / fijnstof",
                "stroommix UK: wind / zon / gas", "positie ISS, elke 2 s nieuw",
                "crypto-koersen (CoinGecko)", "aardbevingen afgelopen uur"],
    "own": "of je eigen API (een komma = volgend bericht):",
    "key": "JOUW_SLEUTEL", "keytxt": "← voor API's met een sleutel",
    "s2": "2 · OPHALEN", "now": "nu één keer ophalen", "auto": "automatisch, elke", "heart": "het hart van de patch:",
    "router": "← sorteert de antwoorden voor de patch (dubbelklik)", "json": "JSON → sectie 3",
    "status": "status:",
    "s3": "3 · DATA BEKIJKEN", "unfold": "de volledige JSON, klik ▸ om open te klappen",
    "paths": "← zet alle paden in het menu (en in de Max Console)",
    "tochan": "gekozen pad → kanaal:", "pick": "kies een pad in het menu, klik dan 1-4",
    "s4": "4 · KANALEN: van data naar 0..255",
    "s4txt": "bereik = welke waardes je verwacht; dat wordt 0..255. Pas het gerust aan.",
    "chan": "KANAAL", "number": "getal", "range": "bereik", "glide": "glijden in 300 ms",
    "drag": "0 ……… 255   (sleep = testen)",
    "outinfo": {"s": "servo", "a": "PWM", "d": "aan/uit"},
    "foot": f"[{CMDOUT} s 9] = servo op pin 9 · a = PWM (pin 3 5 6 10 11) · d = aan/uit. "
            "Pas de letter en het pinnummer aan voor jouw opstelling.",
    "s5": "5 · NAAR DE ARDUINO (serial)",
    "s5txt": "upload put_this_on-your_arduino (de CMD-sketch), sluit de Arduino Serial Monitor "
             "en kies dan de poort.",
    "refresh": "← ververs poorten", "board": "← kies je board", "release": "← poort loslaten",
    "quiet": "← Arduino blijft stil", "console": "console", "gate": "gaat open als er een poort gekozen is",
    "cmd": "CMD-tekst + enter, bijv. w s 9 90",
    "s6": "6 · WEBPAGINA",
    "s6txt": "Max serveert een kleine webpagina met de live kanalen. Open hem hier, of op je telefoon "
             "(zelfde wifi): http://<IP-adres van deze computer>:8081. Pas de pagina aan in web_page_nl.html.",
    "open": "← open in je browser",
    "ab1": f"{CMDOUT} <type> <pin>   ·   0..255 in → CMD-bericht voor put_this_on-your_arduino",
    "ab2": "s = servo (0..180 graden)   a = PWM (0..255)   d = digitaal aan/uit (vanaf 128)",
    "abin": "waarde 0..255", "about": f"CMD-bericht → [s {P}.out]", "abbad": "type_moet_s_a_of_d_zijn",
}
T = NLT if NL else EN

# ---------------------------------------------------------------- helpers
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


def tw(text):
    """width that fits the text of an object/message box"""
    return 16 + 7.0 * len(text)


def o(text, x, y, ins=1, outs=1, w=None):
    return obj(text, x, y, w or tw(text), ins, outs)


def msg(text, x, y, w=None, h=22.0):
    return obj(text, x, y, w or tw(text), 2, 1, cls="message", h=h)


def display(x, y, w):
    """empty message box that shows text via 'set ...'"""
    return obj("", x, y, w, 2, 1, cls="message")


def comment(text, x, y, w, h=20.0, size=12.0, bold=False):
    oid = _id()
    b = {"id": oid, "maxclass": "comment", "numinlets": 1, "numoutlets": 0,
         "patching_rect": [x, y, w, h], "text": text, "fontsize": size, "textcolor": TEXT}
    if bold:
        b["fontface"] = 1
    boxes.append({"box": b})
    return oid


def header(text, x, y, w=420):
    return comment(text, x, y, w, h=24.0, size=16.0, bold=True)


def panel(x, y, w, h, color):
    boxes.append({"box": {"id": _id(), "maxclass": "panel", "numinlets": 1, "numoutlets": 0,
                          "patching_rect": [x, y, w, h], "background": 1, "ignoreclick": 1,
                          "bgcolor": color, "rounded": 10, "border": 0, "mode": 0}})


def toggle(x, y):
    return obj(None, x, y, 24, 1, 1, cls="toggle", h=24.0, parameter_enable=0)


def number(x, y, w=70):
    return obj(None, x, y, w, 1, 2, cls="number", parameter_enable=0)


def flonum(x, y, w=70):
    return obj(None, x, y, w, 1, 2, cls="flonum", parameter_enable=0)


def umenu(x, y, w):
    return obj(None, x, y, w, 1, 3, cls="umenu", parameter_enable=0)


def wire(src, so, dst, di=0):
    lines.append({"patchline": {"source": [src, so], "destination": [dst, di]}})


def s(name, x, y):
    return o(f"s {P}.{name}", x, y, 1, 0)


def r(name, x, y):
    return o(f"r {P}.{name}", x, y, 0, 1)


def subpatcher(text, x, y, ins, outs, build, rect=(100, 100, 900, 500)):
    """[p name] whose contents are made by build() with the same helpers"""
    global boxes, lines
    outer_b, outer_l = boxes, lines
    boxes, lines = [], []
    build()
    inner = {"fileversion": 1, "appversion": APPV, "classnamespace": "box",
             "rect": list(rect), "gridsize": [15.0, 15.0], "default_fontsize": 12.0,
             "boxes": boxes, "lines": lines}
    boxes, lines = outer_b, outer_l
    return obj(text, x, y, tw(text), ins, outs, patcher=inner)


def save(path, rect):
    patch = {"patcher": {"fileversion": 1, "appversion": APPV, "classnamespace": "box",
                         "rect": rect, "gridsize": [15.0, 15.0], "default_fontsize": 12.0,
                         "boxes": boxes, "lines": lines}}
    with open(path, "w") as f:
        json.dump(patch, f, indent=1)


# ================================================================ title
comment(T["title"], 20, 12, 600, h=34.0, size=24.0, bold=True)
comment("By Mark Meeuwenoord · www.dinggoo.nl · 2026", 1110, 20, 310)
comment(T["intro"], 20, 46, 1300)

# ================================================================ 1 · choose an API
panel(15, 75, 445, 425, C_API)
header(T["s1"], 30, 85)
s_api1 = s("cmd", 30, 460)
for i, (name, desc) in enumerate(zip(["weather", "air", "energy", "iss", "bitcoin", "quakes"], T["presets"])):
    y = 120 + i * 30
    m = msg(f"api {name}", 30, y, 110)
    comment(desc, 150, y + 1, 300)
    wire(m, 0, s_api1)
comment(T["own"], 30, 305, 410)
m_url = msg("clear, url https://api.wheretheiss.at/v1/satellites/25544, watch 1 latitude, bang",
            30, 330, 415, h=38.0)
m_watch = msg("watch 2 longitude", 30, 380)
m_range = msg("range 2 -180 180", 175, 380)
m_head = msg(f"header x-api-key {T['key']}", 30, 415)
comment(T["keytxt"], 30 + tw(f"header x-api-key {T['key']}") + 8, 416, 190)
for m in (m_url, m_watch, m_range, m_head):
    wire(m, 0, s_api1)

# ================================================================ 2 · fetch
panel(475, 75, 430, 425, C_FETCH)
header(T["s2"], 490, 85)
b_now = obj(None, 490, 120, 24, 1, 1, cls="button", h=24.0, parameter_enable=0)
comment(T["now"], 520, 122, 200)
r_auto = r("auto", 490, 155)
r_int = r("interval", 680, 155)
t_auto = toggle(490, 185)
comment(T["auto"], 520, 187, 150)
n_ms = number(680, 185, 80)
comment("ms", 765, 187, 30)
p_auto = o("prepend auto", 490, 220)
p_int = o("prepend interval", 680, 220)
lm_ms = o("loadmess set 5000", 775, 250)
s_api2 = s("cmd", 490, 250)
wire(r_auto, 0, t_auto)
wire(r_int, 0, n_ms)
wire(lm_ms, 0, n_ms)
wire(b_now, 0, s_api2)
wire(t_auto, 0, p_auto)
wire(n_ms, 0, p_int)
wire(p_auto, 0, s_api2)
wire(p_int, 0, s_api2)

comment(T["heart"], 490, 290, 300)
r_cmd = r("cmd", 490, 315)
v8 = obj(f"v8 {JS} {DICT}", 490, 345, 220, 1, 3)
wire(r_cmd, 0, v8)
s_dict = s("dict", 490, 380)
comment(T["json"], 490 + tw(f"s {P}.dict") + 6, 381, 120)


def build_router():
    """v8 outlet 1 (numbers) + outlet 2 (info) → named sends, one per channel / display"""
    inl_v = obj("inlet", 30, 20, 30, 0, 1, comment="channel number")
    inl_i = obj("inlet", 640, 20, 30, 0, 1, comment="info")
    comment("numbers → [r %s.val1] .. [r %s.val4]" % (P, P), 30, 50, 360)
    rv = o("route 1 2 3 4", 30, 80, 2, 5)
    wire(inl_v, 0, rv)
    # untouched copies for anyone else who wants them (e.g. the web page in section 6)
    wire(inl_v, 0, s("values", 200, 20))
    wire(inl_i, 0, s("info", 760, 20))
    for k in range(4):
        wire(rv, k, s(f"val{k+1}", 30 + k * 140, 120))
    comment("info → displays, channel labels, ranges, menu", 640, 50, 400)
    ri = o("route label show range status auto interval paths peek", 640, 80, 2, 9)
    wire(inl_i, 0, ri)
    for j, kind in enumerate(["label", "show", "range"]):
        y = 170 + j * 110
        comment(kind, 30, y, 80)
        rr = o("route 1 2 3 4", 30, y + 22, 2, 5)
        wire(ri, j, rr)
        for k in range(4):
            x = 30 + k * 140
            dst = s(f"{kind}{k+1}", x, y + 82)
            if kind == "range":
                wire(rr, k, dst)
            else:
                ps = o("prepend set", x, y + 52)
                wire(rr, k, ps)
                wire(ps, 0, dst)
    for j, kind in enumerate(["status", "auto", "interval", "paths", "peek"]):
        x = 640 + j * 85
        dst = s(kind, x, 260 if j % 2 else 230)
        if kind == "paths":   # 'clear' / 'append <path>' go straight to the umenu
            wire(ri, 3 + j, dst)
        else:
            ps = o("prepend set", x, 150 if j % 2 else 120)
            wire(ri, 3 + j, ps)
            wire(ps, 0, dst)


router = subpatcher("p router", 760, 380, 2, 0, build_router, rect=(100, 100, 1150, 560))
comment(T["router"], 760, 405, 140, h=48.0)
wire(v8, 0, s_dict)
wire(v8, 1, router, 0)
wire(v8, 2, router, 1)

comment(T["status"], 490, 445, 50)
r_stat = r("status", 545, 445)
d_status = display(490, 470, 400)
wire(r_stat, 0, d_status)

# ================================================================ 3 · look at the data
panel(920, 75, 500, 640, C_DATA)
header(T["s3"], 935, 85)
comment(T["unfold"], 935, 112, 360)
r_dict = r("dict", 1300, 112)
dv = obj(None, 935, 140, 470, 1, 0, cls="dict.view", h=260.0)
wire(r_dict, 0, dv)

m_paths = msg("paths", 935, 415, 50)
comment(T["paths"], 992, 416, 420)
r_paths = r("paths", 935, 445)
menu_paths = umenu(935, 470, 470)
wire(r_paths, 0, menu_paths)
t_ss = o("t s s", 935, 500, 1, 2)
p_peek = o("prepend peek", 1000, 530)
s_api3 = s("cmd", 1000, 560)
wire(m_paths, 0, s_api3)
wire(menu_paths, 1, t_ss)
wire(t_ss, 1, p_peek)
wire(p_peek, 0, s_api3)
r_peek = r("peek", 1150, 530)
d_peek = display(1150, 560, 255)
wire(r_peek, 0, d_peek)

comment(T["tochan"], 935, 600, 170)
pk = o("pack 0 s", 1110, 630, 2, 1)
for i in range(4):
    m = msg(str(i + 1), 1110 + i * 38, 600, 30)
    wire(m, 0, pk)
wire(t_ss, 0, pk, 1)
p_watch = o("prepend watch", 1110, 660)
s_api4 = s("cmd", 1110, 688)
wire(pk, 0, p_watch)
wire(p_watch, 0, s_api4)
comment(T["pick"], 935, 630, 165, h=34.0)

# ================================================================ 4 · channels
panel(15, 515, 890, 655, C_CHAN)
header(T["s4"], 30, 525, 600)
comment(T["s4txt"], 30, 550, 860)
DEFAULT_OUT = [("s", 9), ("a", 5), ("a", 6), ("d", 7)]

for n in range(4):
    sx, ch, Y = 30 + n * 220, n + 1, 585
    kind, pin = DEFAULT_OUT[n]
    header(f"{T['chan']} {ch}", sx, Y, 110)
    comment(f"{T['outinfo'][kind]}, pin {pin}", sx + 115, Y + 3, 95)
    r_l = r(f"label{ch}", sx, Y + 30)
    d_l = display(sx, Y + 55, 205)
    r_s = r(f"show{ch}", sx, Y + 85)
    d_s = display(sx, Y + 110, 205)
    wire(r_l, 0, d_l)
    wire(r_s, 0, d_s)

    r_v = r(f"val{ch}", sx, Y + 145)
    f_val = flonum(sx, Y + 170, 75)
    comment(T["number"], sx + 80, Y + 171, 60)
    r_rg = r(f"range{ch}", sx, Y + 205)
    up = o("unpack 0. 0.", sx, Y + 230, 1, 2, w=133)
    comment(T["range"], sx, Y + 261, 50)
    f_lo = flonum(sx + 55, Y + 260, 72)
    f_hi = flonum(sx + 133, Y + 260, 72)
    wire(r_v, 0, f_val)
    wire(r_rg, 0, up)
    wire(up, 0, f_lo)
    wire(up, 1, f_hi)

    sc = o("scale 0. 1. 0. 255.", sx, Y + 295, 6, 1, w=205)
    wire(f_val, 0, sc)
    wire(f_lo, 0, sc, 1)
    wire(f_hi, 0, sc, 2)
    cl = o("clip 0. 255.", sx, Y + 325, 3, 1)
    gl = msg("$1 300", sx, Y + 355, 55)
    comment(T["glide"], sx + 60, Y + 356, 145)
    ln = o("line 0 50", sx, Y + 385, 3, 3)
    chg = o("change", sx, Y + 415, 1, 3)
    sl = obj(None, sx, Y + 445, 205, 1, 1, cls="slider", h=22.0, size=256.0, parameter_enable=0)
    comment(T["drag"], sx, Y + 469, 205)
    co = o(f"{CMDOUT} {kind} {pin}", sx, Y + 495, 1, 1)
    s_out = s("out", sx, Y + 525)
    wire(sc, 0, cl)
    wire(cl, 0, gl)
    wire(gl, 0, ln)
    wire(ln, 0, chg)
    wire(chg, 0, sl)
    wire(sl, 0, co)
    wire(co, 0, s_out)
comment(T["foot"], 30, 1135, 860, h=34.0)

# ================================================================ 5 · Arduino
panel(920, 730, 500, 440, C_ARD)
header(T["s5"], 935, 740)
comment(T["s5txt"], 935, 765, 470, h=34.0)

# left column: choosing the port
lb = o("loadbang", 935, 810, 1, 1)
m_print = msg("print", 1010, 810, 45)
comment(T["refresh"], 1060, 811, 150)
r_ports = r("ports", 935, 840)
comment("↓ " + T["board"][2:], 1065, 841, 165)
menu_port = umenu(935, 865, 260)
wire(r_ports, 0, menu_port)
t_pick = o("t b 1 b s", 935, 895, 1, 4, w=90)       # 4) quiet 3) gate open 2) open 1) port <name>
p_port = o("prepend port", 1040, 925)
m_open = msg("open", 1150, 925, 40)
m_close = msg("close", 935, 955, 45)
t_close = o("t 0 close", 985, 955, 1, 2)
comment(T["release"], 1072, 956, 160)
m_quiet = msg("mode none", 935, 985, 75)
s_q = s("out", 1015, 985)
qx = 1015 + tw(f"s {P}.out") + 5
comment(T["quiet"], qx, 986, 1235 - qx, h=34.0)
ser = o("serial a 9600 @autoopen 0 @dtr 1", 935, 1035, 1, 2, w=210)


def build_portlist():
    inl = obj("inlet", 20, 20, 30, 0, 1, comment="from [serial] right outlet")
    rp = o("route port", 20, 55, 2, 2)
    tl = o("t l b", 20, 85, 1, 2)
    clr = msg("clear", 120, 115, 40)
    it = o("iter", 20, 115, 1, 1)
    pa = o("prepend append", 20, 145, 1, 1)
    out = obj("outlet", 20, 180, 30, 1, 0, comment="to the port umenu")
    wire(inl, 0, rp); wire(rp, 0, tl); wire(tl, 1, clr); wire(tl, 0, it)
    wire(it, 0, pa); wire(pa, 0, out); wire(clr, 0, out)


plist = subpatcher("p port_list", 1160, 1035, 1, 1, build_portlist, rect=(200, 200, 400, 260))
s_ports = s("ports", 1160, 1065)
wire(lb, 0, m_print)
wire(m_print, 0, ser)
wire(menu_port, 1, t_pick)
wire(t_pick, 3, p_port)
wire(t_pick, 2, m_open)
wire(t_pick, 0, m_quiet)
wire(m_quiet, 0, s_q)
wire(p_port, 0, ser)
wire(m_open, 0, ser)
wire(m_close, 0, t_close)
wire(t_close, 1, ser)
wire(ser, 1, plist)
wire(plist, 0, s_ports)

# right column: CMD text → bytes → gate → serial
r_out = r("out", 1240, 810)
tsym = o("tosymbol", 1240, 840)
t_out = o("t s s", 1240, 870, 1, 2)
ato = o("atoi", 1240, 900, 3, 1)
app = o("append 10", 1240, 930, 2, 1)
g_ser = o("gate", 1240, 960, 2, 1)
comment(T["gate"], 1285, 955, 130, h=34.0)
comment(T["cmd"], 1240, 990, 175, h=34.0)
t_mon = toggle(1330, 840)
comment(T["console"], 1358, 842, 60)
g_mon = o("gate", 1330, 870, 2, 1)
prt = o("print to_arduino", 1300, 900, 1, 0)
wire(r_out, 0, tsym)
wire(tsym, 0, t_out)
wire(t_out, 0, ato)
wire(ato, 0, app)
wire(app, 0, g_ser, 1)
wire(t_pick, 1, g_ser)
wire(t_close, 0, g_ser)
wire(g_ser, 0, ser)
wire(t_mon, 0, g_mon)
wire(t_out, 1, g_mon, 1)
wire(g_mon, 0, prt)

# ================================================================ 6 · web page
panel(15, 1185, 1405, 110, C_WEB)
header(T["s6"], 30, 1195)
comment(T["s6txt"], 30, 1220, 1370)
r_wi = r("info", 30, 1250)
p_wi = o("prepend info", 30 + tw(f"r {P}.info") + 10, 1250)
r_wv = r("values", 300, 1250)
p_wv = o("prepend value", 300 + tw(f"r {P}.values") + 10, 1250)
web = o(f"v8 {WEBJS} {PORT} {PAGE}", 600, 1250, 1, 1)
sx_web = 600 + tw(f"v8 {WEBJS} {PORT} {PAGE}") + 15
s_web = s("cmd", sx_web, 1250)
ox = sx_web + tw(f"s {P}.cmd") + 25
m_open = msg(f"; max launchbrowser http://localhost:{PORT}", ox, 1250)
comment(T["open"], ox + tw(f"; max launchbrowser http://localhost:{PORT}") + 6, 1251, 170)
wire(r_wi, 0, p_wi)
wire(p_wi, 0, web)
wire(r_wv, 0, p_wv)
wire(p_wv, 0, web)
wire(web, 0, s_web)

save(sys.argv[1], [40.0, 60.0, 1450.0, 1310.0])
print(len(boxes), "boxes,", len(lines), "lines")

# ================================================================ abstraction mm.cmd_out(_nl)
# [mm.cmd_out <s|a|d> <pin>]: 0..255 in → CMD message out ("w s 9 90")
boxes, lines = [], []
_n[0] = 0
comment(T["ab1"], 20, 10, 600)
comment(T["ab2"], 20, 32, 600)
inl = obj("inlet", 20, 65, 30, 0, 1, comment=T["abin"])
pre = o("prepend #1", 20, 100)
rt = o("route s a d", 20, 135, 2, 4, w=140)
sc = o("scale 0 255 0 180", 20, 175, 6, 1)
ch_s = o("change", 20, 205, 1, 3)
sp_s = o("sprintf w s #2 %ld", 20, 235, 2, 1)
ia = o("i", 160, 175, 2, 1, w=30)
sp_a = o("sprintf w a #2 %ld", 160, 235, 2, 1)
ge = o(">= 128", 300, 175, 2, 1)
ch_d = o("change", 300, 205, 1, 3)
sp_d = o("sprintf w d #2 %ld", 300, 235, 2, 1)
bad = o(f"print {CMDOUT}:_{T['abbad']}", 440, 175, 1, 0)
outl = obj("outlet", 20, 280, 30, 1, 0, comment=T["about"])
wire(inl, 0, pre); wire(pre, 0, rt)
wire(rt, 0, sc); wire(sc, 0, ch_s); wire(ch_s, 0, sp_s); wire(sp_s, 0, outl)
wire(rt, 1, ia); wire(ia, 0, sp_a); wire(sp_a, 0, outl)
wire(rt, 2, ge); wire(ge, 0, ch_d); wire(ch_d, 0, sp_d); wire(sp_d, 0, outl)
wire(rt, 3, bad)
save(os.path.join(os.path.dirname(os.path.abspath(sys.argv[1])), CMDOUT + ".maxpat"), [100.0, 100.0, 760.0, 340.0])
print(CMDOUT + ".maxpat:", len(boxes), "boxes")
