# NASA Fireball API for Max/MSP (node.script)

A Node.js script using `max-api` to fetch NASA fireball (bright meteor) data directly into Max/MSP.

## Installation

### 1. Install Node.js
Make sure Node.js is installed on your system.

### 2. Install max-api
In your Max package folder or project folder, run:
```bash
npm install max-api
```

### 3. Place the Script
Put `fireball-api.js` in the same folder where you have `node_modules`.

## Max/MSP Setup

### Basic Patch

```
[node.script fireball-api.js]
|
[route count fireball date latitude longitude energy impact_energy bang ---]
```

### Sending Messages

Send these messages to `[node.script]`:

```
latest 5              Get latest 5 fireballs
latest 10             Get latest 10 fireballs (default)
date 2024-01-01       Get all fireballs since Jan 1, 2024
range 2024-01-01 2024-12-31    Get fireballs in date range
energy 5              Get fireballs with energy >= 5 x10^10 joules
impact 1              Get fireballs with impact >= 1 kiloton
location 10           Get 10 fireballs with known location
velocity 10           Get 10 fireballs with velocity data
bang                  Get latest 10 fireballs (same as 'latest 10')
```

## Dictionary Storage

**All data is automatically stored in a Max dictionary named `fireballDict`**

The script uses `Max.setDict()` to populate a dictionary with all fireball data. You just need to create a `[dict fireballDict]` object in your Max patch.

### In Your Max Patch:
```
[dict fireballDict]  <- create this object
```

### Dictionary Structure:
```
fireballDict
├── count: <n>
├── fireball_0
│   ├── date: "YYYY-MM-DD HH:MM:SS"
│   ├── latitude: <float>
│   ├── longitude: <float>
│   ├── altitude: <float>
│   ├── energy: <float>
│   ├── energy_joules: <float>
│   ├── impact_energy: <float>
│   └── velocity_x/y/z/total: <float>
├── fireball_1
│   └── ...
└── fireball_N
```

### Using the Dictionary in Max

```
[dict.unpack fireballDict]
|
[route fireball_0 fireball_1 fireball_2]
|          |           |
```

Or access specific values:
```
[dict.get fireballDict fireball_0 energy]
|
[f]  <- energy of first fireball
```

Or get the count:
```
[dict.get fireballDict count]
|
[i]  <- number of fireballs
```

## Output Messages

The script sends these messages out the outlet (dictionary is updated separately):

### Structure
```
count <n>                    Number of fireballs found
fireball <index>             Start of fireball #index (0, 1, 2...)
  date <timestamp>           Date/time (YYYY-MM-DD HH:MM:SS GMT)
  latitude <degrees>         Signed (-90 to 90)
  longitude <degrees>        Signed (-180 to 180)
  location <lat> <lon>       Lat/lon as two floats
  altitude <km>              Height in kilometers (if available)
  energy <value>             Energy x10^10 joules
  energy_joules <value>      Energy in joules
  impact_energy <kt>         Impact energy in kilotons
  velocity_x <km/s>          X velocity (if requested)
  velocity_y <km/s>          Y velocity (if requested)
  velocity_z <km/s>          Z velocity (if requested)
  velocity_total <km/s>      Total velocity magnitude
  ---                        End of this record
bang                         All data sent, processing complete
```

## Example Max Patches

### Example 1: Simple Output
```
[node.script fireball-api.js]
|
[route count fireball]
|        |
[int]    [route date energy impact_energy]
         |      |         |
      [print] [float]  [float]
```

### Example 2: Energy to Frequency
```
[latest 5(
|
[node.script fireball-api.js]
|
[route energy]
|
[scale 0. 50. 200 2000]  <- map energy to frequency
|
[mtof]
|
[cycle~]
|
[*~ 0.3]
|
[dac~]
```

### Example 3: Location to Pan
```
[location 10(
|
[node.script fireball-api.js]
|
[route longitude]
|
[scale -180. 180. -1. 1.]  <- map longitude to stereo pan
|
[line~]
|
[*~]  <- multiply your audio signal
```

### Example 4: Collect Multiple Fireballs
```
[latest 10(
|
[node.script fireball-api.js]
|
[route fireball ---]
|            |
[counter]    [bang]  <- end of record marker
|
[pack 0 s]
|
[coll fireball-data]  <- store for later use
```

### Example 5: Velocity-Based Rhythm
```
[velocity 5(
|
[node.script fireball-api.js]
|
[route velocity_total]
|
[scale 10. 30. 100 1000]  <- velocity to tempo (ms)
|
[metro]
|
[random 128]
|
[makenote 100 500]
|
[noteout]
```

### Example 6: Access Dictionary Data

```
[dict fireballDict]  <- create dictionary object first!

[latest 5(
|
[node.script fireball-api.js]
|
[route bang]  <- wait for completion
|
[t b b]
|  |
|  [dict.get fireballDict fireball_0 energy]
|  |
|  [f]  <- first fireball's energy
|
[dict.get fireballDict count]
|
[print "Total:"]
```

### Example 7: Iterate Through All Fireballs

```
[dict fireballDict]

[latest 10(
|
[node.script fireball-api.js]
|
[route bang]  <- wait for data
|
[dict.get fireballDict count]
|
[uzi]  <- iterate 0 to count-1
|
[sprintf fireball_%d]
|
[prepend get fireballDict]
|
[append energy]
|
[dict.get]
|
[YOUR PROCESSING]
```

## Message Flow Example

When you send `latest 2`:

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
energy 2.8
energy_joules 28000000000
impact_energy 0.12
---
bang
```

Note: Not all fireballs have location/altitude data!

## Polling for New Fireballs

```
[loadbang]
|
[metro 300000]  <- check every 5 minutes
|
[date]
|
[prepend date]  <- creates message "date YYYY-MM-DD"
|
[node.script fireball-api.js]
|
[route count]
|
[> 0]  <- fires if new fireballs found
|
[YOUR SOUND/VISUAL TRIGGER HERE]
```

## Error Handling

Errors are posted to the Max console only. Monitor the console for:
- Network errors (no internet, API down)
- Invalid date formats
- Missing required parameters

## Understanding the Data

### Energy Values
- **Small**: 0.1 - 1.0 x10^10 joules
- **Medium**: 1.0 - 10.0 x10^10 joules  
- **Large**: 10+ x10^10 joules
- **Hiroshima bomb**: ~15 kilotons (for reference)

### Location
- Not all fireballs have location data
- Coordinates are at point of peak brightness
- Latitude: -90 (South Pole) to 90 (North Pole)
- Longitude: -180 (West) to 180 (East)

### Velocity
- Only available if you request with `velocity` command
- Typical meteor velocity: 11-72 km/s
- Components are Earth-centered coordinates

## Tips

1. **Start with small queries**: Use `latest 5` before `latest 100`
2. **Use `---` to detect record boundaries**: Route this to trigger processing
3. **Use `bang` to know when done**: Good for UI updates
4. **Cache data in [coll]**: Don't re-query unnecessarily
5. **Test queries in Max console first**: Type messages directly to node.script

## Troubleshooting

### "Cannot find module 'max-api'"
Install it: `npm install max-api` in your project folder

### No output
- Check Max console for errors
- Verify internet connection
- Test with `latest 1` first
- Check that NASA API is accessible: https://ssd-api.jpl.nasa.gov/fireball.api?limit=1

### "ERROR: Unknown command"
Make sure you're using valid commands: latest, date, range, energy, impact, location, velocity, bang

### Messages arriving too fast
Use [speedlim] after node.script:
```
[node.script fireball-api.js]
|
[speedlim 50]  <- one message per 50ms
|
[route ...]
```

## API Limitations

- Data is NOT real-time (NASA updates periodically)
- Not all fireballs are detected
- Location/altitude may be missing for many events
- Historical data from ~1988 onwards
- No live "falling star right now" capability

## Credits

Data provided by NASA's Center for Near-Earth Object Studies (CNEOS)
API Documentation: https://ssd-api.jpl.nasa.gov/doc/fireball.html

## License

This script is provided as-is for educational and creative purposes.
NASA data is in the public domain.
