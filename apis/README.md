# APIs

Web API integrations for Max/MSP with optional Arduino output.

## Projects

### mm.NASA_FireballAPI
Query NASA's fireball (meteor) database. Fetch fireballs by date, energy, location, velocity.

**Setup**:
```bash
cd apis/mm.APIs/mm.NASA_FireballAPI && npm install
```
Open the Max patch, send queries like `latest 10` to get recent fireballs.

### mm.issAPI
International Space Station live position tracker.

### mm.moon_API
Moon phase information via web API.

### mm.v8_API
General-purpose API reader built on Max 9's modern `[v8]` JavaScript (`fetch`, `async/await`). Pick a ready-made API (weather, air quality, UK energy mix, ISS, crypto, earthquakes) or add your own in `api_presets.js`, browse the JSON, and map up to 4 values to servos, PWM or digital pins via the CMD sketch. Includes VS Code setup and a Node runner to test the script without Max. Requires Max 9.2+, no `npm install` needed. Includes a small web page served by Max itself (section 6).

### mm.v8_API_NL
Dutch version of mm.v8_API (Nederlandse versie), with its own file and send/receive names so both can be open at the same time.

### mm.v8_simple_starter
The simplest v8 example: a `[v8]` fetcher writes JSON into a dict, and a second `[v8]` reader turns the dict into `<path> <value>` messages for `[route]`. Includes the same request with `[maxurl]` for comparison. English and Dutch patch. Requires Max 9.2+.

### mm.v8_REST_starter
Minimal REST client in a single `[v8.codebox]` using `fetch()`: `GET`, `POST`/`PUT`/`PATCH` (JSON body from a Max dict), `DELETE`, custom headers. Shows the classic `[maxurl]` request dict next to it for comparison, plus a servo section (ISS latitude → servo via the CMD sketch). English and Dutch patch included. Requires Max 9.2+.

### mm.web_API
The same as mm.v8_API without Max: plain HTML, CSS and JavaScript in the browser, with the Arduino over USB via Web Serial (Chrome/Edge) and the same CMD sketch. English and Dutch page.

### Arduino Support
Each API project includes a `put_this_on-your_arduino/` folder with sketches to relay API data to physical outputs.

## Requirements
- Max/MSP 8+ (Max 9.2+ for mm.v8_API, mm.v8_API_NL and mm.v8_REST_starter)
- Node.js (for NASA Fireball API)
- Arduino (optional, for physical output)
