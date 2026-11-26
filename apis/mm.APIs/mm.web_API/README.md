# mm.web_API: web API → browser → Arduino

The same as the Max patch [`mm.v8_API`](../mm.v8_API), but with only **HTML, CSS and JavaScript**. No Max, no libraries, no build step. The Arduino is connected over USB with **Web Serial**, using the same CMD sketch as the Max patches.

*Nederlands: zie onderaan.*

## Start

The page must run on `http://localhost` (for Web Serial), not as a file:

- **VS Code:** install the *Live Server* extension, open `index.html` and click **Go Live**.
- **Terminal:** in this folder run `python3 -m http.server 8000`, then open http://localhost:8000 (English) or http://localhost:8000/index_nl.html (Nederlands).

Use **Chrome or Edge**. Safari and Firefox don't support Web Serial. They can still show the data, but can't talk to the Arduino.

## Use

1. **Choose an API:** a preset button, or type your own address and click *use*.
2. **Fetch:** once, or automatically every n seconds.
3. **Look at the data:** pick a path in the menu to see its value, and click 1–4 to put it on a channel. *The full JSON* shows everything.
4. **Channels:** each channel scales its *range* to 0..255. Under *output* you choose servo / PWM / on-off and the pin. Drag the slider to test.
5. **Arduino:** upload `put_this_on-your_arduino` to your board, then click *Connect Arduino* and pick the port. The page sends CMD messages like `w s 9 95`. Turn on *show messages* to see them.

## Files

| File | What |
|---|---|
| `index.html` / `index_nl.html` | the page (English / Nederlands) |
| `style.css` | the look: colours, layout |
| `presets.js` | the ready-made APIs. **Add your own API here.** |
| `app.js` | fetching, reading the JSON, the channels (like `api_reader.js` in Max) |
| `arduino.js` | Web Serial: connect, send `w s 9 90`, read lines back |
| `put_this_on-your_arduino/` | the CMD sketch (9600 baud), the same as for the Max patches |

## Your own API

Copy a block in `presets.js` and reload the page. The browser has one rule Max doesn't have: the API must allow **CORS** (the header `Access-Control-Allow-Origin`). All presets do. If your API doesn't, the browser console (F12) says "blocked by CORS policy". Then use the Max version, which has no CORS rule.

Never put an API key in a page that others can open: anyone can read it with *View source*.

## Max or browser?

| | Max (`mm.v8_API`) | Browser (`mm.web_API`) |
|---|---|---|
| Needs | Max 9.2+ | Chrome / Edge |
| APIs without CORS | yes | no |
| Arduino | `[serial]` | Web Serial |
| Combine with sound / video / Jitter | yes | with Web Audio / canvas |
| Share | send the patch | put the folder online (https) |

---

## Nederlands

Hetzelfde als de Max-patch `mm.v8_API`, maar alleen met HTML, CSS en JavaScript. De Arduino gaat via USB met **Web Serial**, met dezelfde CMD-sketch.

- **Starten:** in VS Code met *Live Server* (**Go Live**), of in de terminal met `python3 -m http.server 8000`. Open daarna http://localhost:8000/index_nl.html. Gebruik **Chrome of Edge**.
- **Gebruik:** werk van 1 naar 5, net als in de Max-patch. Upload eerst `put_this_on-your_arduino` en klik dan op *Verbind Arduino*.
- **Eigen API:** voeg een blok toe in `presets.js`. Let op: de API moet **CORS** toestaan, anders blokkeert de browser hem. Kijk in de console (F12) als het niet werkt.
- **Zet nooit een API-sleutel in een pagina** die anderen kunnen openen.
