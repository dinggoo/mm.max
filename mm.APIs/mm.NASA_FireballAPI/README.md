# NASA Fireball API Script for Max/MSP

A Node.js script to fetch NASA fireball (bright meteor) data and output it in Max/MSP-friendly format.

## Installation

1. Make sure Node.js is installed on your system
2. Place `fireball-api.js` in your Max project folder
3. Make it executable (Unix/Mac): `chmod +x fireball-api.js`

## Usage from Command Line

```bash
# Get latest 10 fireballs
node fireball-api.js latest

# Get latest 5 fireballs
node fireball-api.js latest 5

# Get all fireballs since January 1, 2024
node fireball-api.js date 2024-01-01

# Get fireballs in a date range
node fireball-api.js range 2024-01-01 2024-12-31

# Get fireballs with energy >= 5 x10^10 joules
node fireball-api.js energy 5

# Get fireballs with impact energy >= 1 kiloton
node fireball-api.js impact 1

# Get latest 10 fireballs with known location
node fireball-api.js location 10

# Get latest 10 fireballs with velocity data
node fireball-api.js velocity 10

# Show help
node fireball-api.js help
```

## Max/MSP Integration

### Using `shell` Object

```max
[shell]
|
[route count fireball date latitude longitude altitude energy impact_energy bang]
```

### Basic Max Patch Setup

```
1. Create a [shell] object
2. Send message: "node /path/to/fireball-api.js latest 5"
3. Parse output using [route] object
4. Store data or trigger actions based on the output
```

### Example Max Messages to Send

```
node fireball-api.js latest 10
node fireball-api.js date 2024-01-01
node fireball-api.js impact 0.5
node fireball-api.js location 20
```

## Output Format

The script outputs Max-friendly messages in this format:

### Overall Structure
```
count <number>              Number of fireballs returned
fireball <index>            Start of a fireball record (index 0, 1, 2, ...)
  date <timestamp>          Date/time (YYYY-MM-DD HH:MM:SS)
  latitude <degrees>        Signed latitude (-90 to 90)
  longitude <degrees>       Signed longitude (-180 to 180)
  location <lat> <lon>      Lat/lon as two values
  altitude <km>             Altitude in kilometers (if available)
  energy <value>            Energy in x10^10 joules
  energy_joules <value>     Energy in joules (easier for calculations)
  impact_energy <kt>        Impact energy in kilotons
  velocity_x <km/s>         X velocity component (if available)
  velocity_y <km/s>         Y velocity component (if available)
  velocity_z <km/s>         Z velocity component (if available)
  velocity_total <km/s>     Total velocity magnitude (if available)
  ---                       End of this fireball record
bang                        All data has been sent
```

### Example Output

```
count 2
fireball 0
date 2024-12-10 15:23:45
latitude 35.5
longitude -120.3
location 35.5 -120.3
altitude 28.5
energy 3.2
energy_joules 32000000000
impact_energy 0.15
---
fireball 1
date 2024-12-09 08:12:33
latitude -15.2
longitude 45.8
location -15.2 45.8
altitude 32.1
energy 2.8
energy_joules 28000000000
impact_energy 0.12
---
bang
```

## Max/MSP Patch Ideas

### 1. Sonify Fireball Energy
```
Route 'energy' messages to control oscillator amplitude
Higher energy = louder sound
```

### 2. Map Location to Pan
```
Route 'longitude' to control stereo panning
West = left, East = right
```

### 3. Trigger Events on New Fireballs
```
Store last count, compare with new count
Trigger sound/visual when count increases
```

### 4. Velocity to Pitch
```
Route 'velocity_total' to control oscillator frequency
Faster meteors = higher pitch
```

### 5. Real-time Monitor
```
Use [metro] to poll API every 60 seconds
Check for new fireballs since last check
Alert when new bright fireballs detected
```

## Data Field Descriptions

| Field | Description | Always Present? | Units |
|-------|-------------|----------------|-------|
| date | Time of peak brightness (GMT) | Yes | YYYY-MM-DD HH:MM:SS |
| latitude | North/South position | Sometimes | degrees (-90 to 90) |
| longitude | East/West position | Sometimes | degrees (-180 to 180) |
| altitude | Height above Earth | Sometimes | kilometers |
| energy | Total radiated energy | Yes | x10^10 joules |
| energy_joules | Same as energy | Yes | joules |
| impact_energy | Explosive power | Yes | kilotons TNT |
| velocity_x/y/z | Entry velocity components | Sometimes | km/s |
| velocity_total | Speed magnitude | Sometimes | km/s |

## Understanding Energy Values

- **Small fireball**: 0.1 - 1.0 x10^10 joules (0.01-0.1 kt)
- **Medium fireball**: 1.0 - 10.0 x10^10 joules (0.1-1 kt)
- **Large fireball**: 10+ x10^10 joules (1+ kt)
- **For reference**: Hiroshima bomb ≈ 15 kt

## Advanced Usage

### Combining with Max/MSP's JavaScript

You can call the Node script from Max's `js` object:

```javascript
// In Max js object
var task = new Task(processFireballs, this);

function callAPI() {
    var shell = new ShellTask();
    shell.command = "node";
    shell.args = ["/path/to/fireball-api.js", "latest", "5"];
    shell.callback = processOutput;
    shell.run();
}

function processOutput(output) {
    // Parse output and do something with it
    post(output);
}
```

### Polling for New Data

Create a Max patch that:
1. Stores the date of last fireball
2. Every N minutes, queries API with that date
3. Triggers events if new fireballs found
4. Updates last date

```
[metro 300000]  <- Check every 5 minutes
|
[trigger bang]
|
[sprintf node fireball-api.js date %s]
|
[shell]
```

## Troubleshooting

### "node: command not found"
- Make sure Node.js is installed
- In Max, specify full path to node: `/usr/local/bin/node` (Mac) or `C:\Program Files\nodejs\node.exe` (Windows)

### No output
- Check that the script path is correct
- Test the script from terminal first
- Check Max console for error messages

### Network errors
- The API requires internet connection
- Some networks may block the NASA domain
- Try testing with: `curl https://ssd-api.jpl.nasa.gov/fireball.api?limit=1`

## API Limitations

- Data is NOT real-time (updated periodically by NASA)
- Not all fireballs are detected/reported
- Location data may be missing for many events
- Historical data goes back to ~1988

## Credits

Data provided by NASA's Center for Near-Earth Object Studies (CNEOS)
API Documentation: https://ssd-api.jpl.nasa.gov/doc/fireball.html

## License

This script is provided as-is for educational and creative purposes.
NASA data is in the public domain.
