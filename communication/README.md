# Communication

OSC and MQTT networking tools for Max/MSP.

## Projects

### mm.osc
Receivers for mobile sensor apps that stream data over OSC. Includes patches for:
- **ZigSim** (iOS & Android) — Multi-sensor streaming
- **EywSensorToOSC** (Android) — Sensor data over OSC
- **oscHook** (Android) — OSC sensor hook
- **videOSC** (Android) — Video data over OSC
- **FaceOSC** — Face tracking data

**Setup**: Install the app on your phone, set the IP/port to your computer, open the matching Max patch.

### mm.mqtt
MQTT publish/subscribe messaging for Max/MSP (Node for Max).
- `mqtt-publisher.js` — Publish messages to any MQTT broker
- `mqtt-subscriber.js` — Subscribe to MQTT topics

**Setup**:
```bash
cd communication/mm.mqtt/data && npm install
```
Then open `patchers/mqtt.maxpat` and connect to your MQTT broker.

## Requirements
- Max/MSP 8+
- For MQTT: Node.js, `npm install` in `mm.mqtt/data/`
- For OSC: Mobile device with sensor app + WiFi network
