# mm.v8_API: web API → Max → Arduino

*English version. Nederlandse versie: [`../mm.v8_API_NL`](../mm.v8_API_NL).*

Pull live data from the internet (weather, air quality, the ISS, the power mix, earthquakes, …) into Max and use it to drive servos, LEDs and motors.

Needs **Max 9.2 or newer**. It uses the modern `[v8]` object with `fetch()`, `async/await` and other new JavaScript. No `npm install` needed.

## Quick start

1. Open `mm.v8_API.maxpat`.
2. **Section 1**: click `api weather` (or another API).
3. **Section 3**: look at the JSON in the `dict.view`.
4. **Section 4**: watch the four channels move between 0 and 255.
5. **Section 5**: upload `put_this_on-your_arduino` to your board. It's the same CMD sketch as in the ISS, Moon and Fireball patches. Then pick the port in the menu.

No board yet? Turn on *show in Max Console* in section 5 to see what would be sent to the Arduino.

## How it works

```
web API ──JSON──▶ [v8 api_reader.js] ──▶ channel 1..4 ──▶ [scale] → 0..255 ──▶ [mm.cmd_out s 9] ──▶ [serial] ──▶ Arduino
                      │                                                                  "w s 9 90⏎"
                      └──▶ dict.view (look at everything)
```

| File | What |
|---|---|
| `mm.v8_API.maxpat` | the patch |
| `mm.cmd_out.maxpat` | abstraction: 0..255 → CMD message. `[mm.cmd_out s 9]` = servo on pin 9, `a 5` = PWM on pin 5, `d 7` = on/off on pin 7 |
| `api_reader.js` | all the code: fetching, reading the JSON, sending values on |
| `web_server.js` / `web_page.html` | the web page of section 6: the server in Max, and the page itself |
| `api_presets.js` | the ready-made APIs. **Add your own API here.** |
| `put_this_on-your_arduino/` | the CMD sketch (9600 baud): `w s <pin> <0-180>`, `w a <pin> <0-255>`, `w d <pin> <0/1>` |
| `tools/` | testing without Max (see VS Code) |
| `build/build_api_patch.py` | rebuilds the patch (and `mm.cmd_out`): `python3 build/build_api_patch.py mm.v8_API.maxpat` |

## Web page (section 6)

Max itself serves a small web page with the four live channels, the status and a few buttons. It uses the new `require("http")` in `[v8]`.

- Click `; max launchbrowser http://localhost:8080` in section 6, or open http://localhost:8080 yourself.
- On your phone (same wifi): `http://<this computer's IP address>:8080`. You'll find the IP address in *System Settings → Wi-Fi → Details*.
- Change the look in `web_page.html` (plain HTML/CSS/JS, reload the page to see it). The server is `web_server.js`.
- For safety the page may only send `api <name>`, `bang` and `auto 0/1` to Max. Anyone on the same wifi can open the page.

## Messages to `[v8 api_reader.js]`

Send them to `[s v8api.cmd]`. In a message box, a comma separates two messages.

| Message | Example |
|---|---|
| `api <name>` | `api iss` (loads url, channels, range and interval from `api_presets.js`) |
| `url <address>` | `url https://api.wheretheiss.at/v1/satellites/25544` |
| `watch <channel> <path>` | `watch 1 current.temperature_2m` · `watch 2 features[0].properties.mag` |
| `label <channel> <text>` | `label 1 temperature` |
| `range <channel> <low> <high>` | `range 1 -10 35` (this range becomes 0..255) |
| `bang` | fetch now |
| `auto 1` / `auto 0` | fetch automatically on or off |
| `interval <ms>` | `interval 5000` (minimum 1000) |
| `header <name> <value>` | `header x-api-key ABC123` |
| `paths` | put every path in the menu in section 3 |
| `peek <path>` | show a single value |
| `clear` | empty all channels |

**Reading paths.** A path is the way to a value in the JSON. Use a dot for a key and `[0]` for the first item of a list. Don't know the path? Click `paths`, pick one in the menu and click 1 to 4.

Text is shown in the patch. Only numbers go on to the actuators (`true`/`false` becomes 1/0).

## Adding your own API

Open `api_presets.js` and copy a block:

```js
myapi: {
  url: "https://...",
  interval: 60000,
  channels: {
    1: { path: "data.value", label: "my value", range: [0, 100] },
  },
},
```

Save the file. Then send `compile` to the v8 object in Max (or save `api_reader.js` as well), and click `api myapi`.

**Where to find APIs without a key?**

- [mixedanalytics: actually free, no-auth APIs](https://mixedanalytics.com/blog/list-actually-free-open-no-auth-needed-apis/)
- [free-apis.github.io](https://free-apis.github.io/)

In those lists, look for *Auth: none*, *HTTPS: yes*, and data that changes. Pick an interval the API can handle: most free data only refreshes every few minutes.

**AI APIs** (OpenAI, Hugging Face, Gemini, …) almost always need a key and a POST request. Both work: put `method`, `body` and `headers` in your preset. `api_presets.js` contains a commented-out example for **Ollama**, a language model that runs on your own laptop without a key. **Never put a real key in a file that you share or push to GitHub.**

## Choosing an actuator (servo, LED, motor, relay)

Every channel ends in `[mm.cmd_out <type> <pin>]`. Double-click the object box and type a different type or pin number:

| Type | Does | Pins (Uno) |
|---|---|---|
| `s` | servo, 0..255 becomes 0..180 degrees | 2..13 |
| `a` | PWM: LED brightness, or a motor through a transistor/MOSFET | 3, 5, 6, 10, 11 (not 9/10 if you use servos) |
| `d` | digital on/off, on from 128 (e.g. a relay) | 2..13 |

More servos? Set several channels to `s`, e.g. `[mm.cmd_out s 9]` and `[mm.cmd_out s 10]`. The CMD sketch handles up to 6 servos.

Using the CMD module (bpatcher) from the other API patches at the same time? Then use only one of the two on the same port.

## Working in VS Code

Pick what suits you. They can be combined.

1. **Edit the JavaScript in VS Code (recommended).** Open this folder in VS Code and edit `api_reader.js` or `api_presets.js`. The script starts with `autowatch = 1`: save, and Max reloads the code immediately. Want double-clicking `[v8]` to open VS Code too? In Max, go to *Preferences → External Editor*, turn on "Always use External Text Editor" and choose VS Code.

2. **Autocomplete for Max functions.** `jsconfig.json` and `types/max-v8.d.ts` explain `outlet`, `post`, `Dict`, `Task` etc. when you hover over them. Max itself doesn't use these files.

3. **Test without Max.** In the terminal, run:
   ```
   node tools/run-in-node.js "api iss" paths
   node tools/run-in-node.js "url https://api.carbonintensity.org.uk/intensity" bang paths
   ```
   This runs exactly the same `api_reader.js` and prints what comes out of the outlets. With **F5** (Node.js debugger) and a breakpoint you can step through the code.

4. **Explore APIs.** Open `tools/test-api.http` with the *REST Client* extension (or use *Thunder Client*). Click *Send Request* to see the JSON before you use it in Max.

5. **Arduino in VS Code.** Use the *Arduino Community Edition* extension, *PlatformIO*, or the terminal with `arduino-cli`. For example:
   ```
   arduino-cli compile --upload -b arduino:avr:uno -p /dev/cu.usbmodemXXXX put_this_on-your_arduino
   ```
   Click `close` in section 5 first, otherwise Max keeps the port busy.

6. **Node for Max (`[node.script]`).** Use this when you need npm packages, such as MQTT, socket.io, OAuth logins or `serialport`. Typings ship with Max: `Node for Max/source/@types/max-api.d.ts`. It's heavier than `[v8]`, so for ordinary JSON APIs `[v8]` is enough.

7. **The patch as code.** `build/build_api_patch.py` describes the whole patch in Python. Change the layout or objects there and rebuild. This is handy for version control (git) and for making variations.

## Troubleshooting

| Problem | Fix |
|---|---|
| `ERROR: HTTP 429` | You're asking too often. Raise the interval. |
| `ERROR: HTTP 401/403` | The API wants a key. Use `header ...`. |
| `? path` in a channel | That path doesn't exist. Use `paths` to find the right one. |
| Errors from objects you don't recognise (e.g. `sprintf: can't convert symbol`) | Another, older copy of this patch is open. Close it: open patches share `send`/`receive` names. |
| The Arduino sends lots of `d ...`/`a ...` back | Click `mode none` in section 5. |
| The servo jitters or resets the board | Give the servo its own 5V supply, with its GND connected to the Arduino. |
| No port in the menu | Click `print`, close the Arduino Serial Monitor and check the USB cable (some cables only charge). |
| Uploading fails | Click `close` in the patch first. |
| A `preset` message does nothing | The message is called `api`. Max swallows the arguments of `preset` through send/receive. |
