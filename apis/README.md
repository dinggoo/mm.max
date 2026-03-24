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

### Arduino Support
Each API project includes a `put_this_on-your_arduino/` folder with sketches to relay API data to physical outputs.

## Requirements
- Max/MSP 8+
- Node.js (for NASA Fireball API)
- Arduino (optional, for physical output)
