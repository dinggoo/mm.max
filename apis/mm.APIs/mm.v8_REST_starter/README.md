# mm.v8_REST_starter

The smallest useful REST client for Max: one patch, one `[v8.codebox]`. All the code is visible in the patch. Needs **Max 9.2 or newer**.

Two versions of the same patch:
- `mm.v8_REST_starter.maxpat`: English
- `mm.v8_REST_starter_NL.maxpat`: Nederlands (eigen dict-namen, dus je kunt ze tegelijk open hebben)

## Use

Open `mm.v8_REST_starter.maxpat` and click a message:

| Message | Does |
|---|---|
| `GET <url>` | fetch JSON |
| `POST <url> <dict>` / `PUT <url> <dict>` / `PATCH <url> <dict>` | send a Max dict as the JSON body |
| `DELETE <url>` | delete |
| `header <name> <value>` | add a header, e.g. `header Authorization Bearer YOUR_TOKEN` |
| `clearheaders` | remove all headers |

The answer comes out as `dictionary rest_data`. Use it with `[dict.view]`, `[dict.unpack key:]` or `[dict rest_data]`. The right outlet gives the status, e.g. `200 OK 143 ms`.

The message names are in capitals (`GET`, `POST`) because `post` is already a Max function in JavaScript.

## Servo

Section 4 sends the ISS latitude (−90…90) to a servo (0…180°) on pin 9:

1. Upload `put_this_on-your_arduino` (the CMD sketch from the other API patches) to your board.
2. Pick your board in the port menu.
3. Click the ISS message, or turn on the metro.

Drag the slider to test the servo without data. Another pin? Change the 9 in `[w s 9 $1]`. Other actuators use the same CMD messages: `w a 5 $1` for PWM, `w d 7 $1` for on/off.

Give the servo its own 5V supply, with its GND connected to the Arduino. Otherwise it may jitter or reset the board.

## fetch() or maxurl?

The right side of the patch shows the same request with `[maxurl]`:

- **`[v8]` + `fetch()`**: you write JavaScript (if/else, loops, POST JSON from a dict, your own headers). Max 9.2 added `fetch`, `WebSocket`, `http`, `tcp`, `udp` and a rewritten `XMLHttpRequest` to `v8`.
- **`[maxurl]`**: no code. You fill a request dict (`url`, `http_method`, `parse_type json`, `headers`, `post_data`, …) and send it. It can also download files (`filename_out`).

Max 9.2.0 changed two things in `maxurl`: libcurl was updated to 8.10.1, and there is a new `streaming_buffering` key in the request dict. That key isn't documented. In a test with Max 9.2.1, `maxurl` still delivered the response in one piece at the end, with the key set to 0 or 1. With 1 there were only fewer empty progress messages.

## Rebuild

The patch is generated from `build/build_rest_starter.py`:

```
python3 build/build_rest_starter.py mm.v8_REST_starter.maxpat
python3 build/build_rest_starter.py mm.v8_REST_starter_NL.maxpat --nl
```
