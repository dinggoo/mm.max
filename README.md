# mm.max

A collection of Max/MSP patches, Arduino/ESP32 sketches, and Node.js scripts for creative coding — covering hardware control, LED strips, networking, AI, and more.

---

## Categories

### [Microcontrollers](microcontrollers/)
Arduino & ESP32 integration modules for Max/MSP — serial I/O, WiFi/OSC, pin control, sensors, motors.

| Project | Description |
|---|---|
| `mm.arduino` | Core Arduino-Max modules (serial, digital/analog, servo, sensors) |
| `mm.arduino-osc` | Arduino control over WiFi/OSC |
| `mm.esp32_OSC` | ESP32 WiFi/OSC with 26 digital + 6 analog pins |

### [LEDs](leds/)
LED strip controllers with Arduino sketches and Max patches.

| Project | Description |
|---|---|
| `mm.led_dotstar` | APA102 DotStar strips (SPI), up to 4 strips / 100 pixels |
| `mm.led_neopixel` | WS2812B NeoPixel strips, up to 4 strips / 100 pixels |
| `mm.led_servo` | NeoPixel strips + servo motor combo |

### [Communication](communication/)
OSC and MQTT networking for Max/MSP.

| Project | Description |
|---|---|
| `mm.osc` | Receivers for mobile sensor apps (ZigSim, FaceOSC, oscHook, etc.) |
| `mm.mqtt` | MQTT publish/subscribe messaging (Node for Max) |

### [AI & Machine Learning](ai/)
AI integrations — chatbots, speech-to-text, audio classification.

| Project | Description |
|---|---|
| `mm.chatGTP-public` | ChatGPT (GPT-3.5) in Max via Node for Max |
| `mm.OpenAI_Deepgram` | Live speech-to-text (Deepgram) + OpenAI text generation |
| `mm.jweb-mediapipe-audio` | Real-time audio classification with Google MediaPipe |

### [APIs](apis/)
Web API integrations with optional Arduino output.

| Project | Description |
|---|---|
| `mm.NASA_FireballAPI` | NASA fireball/meteor data queries |
| `mm.issAPI` | ISS live position tracking |
| `mm.moon_API` | Moon phase information |

### [Handy Patches](mm.handypatches/)
35+ pure Max/MSP utility patches — no dependencies, just open and use.

Includes: amplitude threshold, BPM counter, pitch detection, data smoothing, video cue system, color detection, stagger, normalize, switch logic, serial readout, and many more.

### [Misc](misc/)
Experimental and archived projects.

| Project | Description |
|---|---|
| `mm.farmbot_faker` | FarmBot simulation |
| `mm.archive` | Old/archived project files |

---

## General Requirements

- **Max/MSP 8+** — all patches
- **Arduino IDE** — for uploading `.ino` sketches
- **Node.js** — for projects using Node for Max (AI, APIs, MQTT)
- **npm install** — run inside project folders that contain a `package.json`

## Quick Start

1. Clone this repo
2. Open any `.maxpat` file in Max/MSP
3. For Node for Max projects, run `npm install` in the project folder first
4. For hardware projects, upload the `.ino` sketch to your board via Arduino IDE

---

*Created by [dinggoo](https://github.com/dinggoo)*
