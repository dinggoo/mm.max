# Max/MSP Integration Examples

## Basic Integration Methods

### Method 1: Using [shell] object (Simplest)

```
[node /path/to/fireball-api.js latest 5]
|
[shell]
|
[route count fireball date latitude longitude energy impact_energy bang]
```

### Method 2: Using [sprintf] for dynamic queries

```
[5(  <- number of results
|
[sprintf node /path/to/fireball-api.js latest %d]
|
[shell]
```

### Method 3: Scheduled polling

```
[loadbang]
|
[metro 300000]  <- every 5 minutes
|
[node /path/to/fireball-api.js date 2024-12-01]
|
[shell]
```

## Creative Application Examples

### Example 1: Energy-Driven Synthesis

**Concept**: Map fireball energy to synthesis parameters

```
[shell] output
|
[route energy]
|
[scale 0. 50. 50 500]  <- scale energy (0-50 x10^10j) to frequency (50-500 Hz)
|
[cycle~]
|
[*~ 0.5]
|
[dac~]
```

**Additional mappings**:
- Energy → amplitude (louder = more powerful)
- Energy → filter cutoff
- Energy → number of oscillators
- Impact energy → reverb size

### Example 2: Geographic Sonification

**Concept**: Latitude/Longitude control spatial audio

```
[route latitude longitude]
|           |
|       [scale -180. 180. -1. 1.]  <- lon to pan
|           |
|       [line~]
|           |
[scale -90. 90. 0. 127]          <- lat to MIDI note
|
[mtof]
|
[cycle~] <- connect to pan from longitude
```

### Example 3: Multi-Fireball Polyphony

**Concept**: Each fireball triggers a voice with its own parameters

```
[shell]
|
[route fireball ---]
|            |
|        [trigger bang]  <- end of record signal
|            |
|        [counter]  <- count active voices
|
[route date energy latitude longitude]
|       |      |          |
|       |      |          [poly~ voice-synth 8]
|       |      |
|       |    [pack 0 f]  <- voice number, energy
|       |       |
|       |    [poly~ voice-synth 8]
|       |
|    [print timestamp]
```

**voice-synth.maxpat** (polyphonic synth patch):
```
[in 1]  <- voice number
[in 2]  <- energy parameter
|
[unpack]
|
[scale 0. 50. 200 2000]  <- energy to frequency
|
[cycle~]
|
[*~ 0.3]
|
[out~ 1]
```

### Example 4: Velocity-Based Rhythm

**Concept**: Use meteor velocity to generate rhythmic patterns

```
[route velocity_total]
|
[scale 10. 30. 100 1000]  <- velocity (km/s) to tempo (ms)
|
[metro]
|
[random 8]  <- random step in sequence
|
[sel 0 1 2 3 4 5 6 7]
|  |  |  |  |  |  |  |
[60][62][64][65][67][69][71][72]  <- C major scale
|
[makenote 100 500]
|
[noteout]
```

### Example 5: Data Visualization Triggers

**Concept**: Use fireball data to trigger jit.gl objects

```
[route location energy]
|             |
|         [scale 0. 50. 0.1 2.]  <- energy to size
|             |
|         [pack f f f]
|             |
[unpack f f]  [jit.gl.gridshape @scale 1 1 1]
|        |
[/ 90.]  [/ 180.]  <- normalize lat/lon
|        |
[pack f f f]  <- x, y, z position
|
[jit.gl.gridshape @shape sphere @position 0 0 0]
```

## Data Storage Patterns

### Store Last Query Time

```
[date]
|
[sprintf %04d-%02d-%02d]
|
[prepend node fireball-api.js date]
|
[shell]
```

### Cache Results in [coll]

```
[shell]
|
[route fireball]
|
[counter]
|
[pack 0 s]  <- index, data
|
[coll fireball-data]
```

### Count New Fireballs

```
[route count]
|
[- 0]  <- subtract last count
|
[sel 1 2 3 4 5]  <- trigger on new fireballs
|  |  |  |  |
[BANG!]  <- do something exciting
```

## Performance Considerations

### Avoid Blocking

```
[shell] runs asynchronously, but output can be rapid.
Use [pipe] or [speedlim] to throttle processing:

[shell]
|
[speedlim 100]  <- limit to one message per 100ms
|
[route ...]
```

### Buffer Large Queries

```
For queries returning many fireballs, store in coll first:

[shell]
|
[t a a]  <- split output
|     |
|     [coll buffer]  <- store all data
|
[route bang]  <- wait for complete
|
[coll buffer]  <- then read back
|
[iter]  <- iterate through stored data
|
[process one at a time]
```

## Example: Complete Monitoring System

```
┌─────────────────────────────────────────────────┐
│ FIREBALL MONITORING PATCH                       │
├─────────────────────────────────────────────────┤
│                                                 │
│  [loadbang]                                     │
│      |                                          │
│  [date]  [metro 600000] <- check every 10 min  │
│      |        |                                 │
│  [sprintf %04d-%02d-%02d]                      │
│      |                                          │
│  [prepend node fireball-api.js date]           │
│      |                                          │
│  [shell]                                        │
│      |                                          │
│  [route count fireball bang]                   │
│      |       |         |                        │
│      |       |     [trigger bang bang]          │
│      |       |         |         |              │
│  [> 0]      |     [update date] [play sound]   │
│      |       |                                  │
│  [gate]     [route energy latitude]            │
│      |           |           |                  │
│  [NEW!]    [synthesis]   [spatialization]      │
│      |                                          │
│  [print "New fireball detected!"]              │
│                                                 │
└─────────────────────────────────────────────────┘
```

## Debugging Tips

### 1. Print Everything First

```
[shell]
|
[print RAW]  <- see all output
|
[route ...]
```

### 2. Test Commands in Terminal

Before using in Max, test in terminal:
```bash
node fireball-api.js latest 3
```

### 3. Check for Errors

```
[shell]
|
[route error]  <- catches error messages
|
[print ERROR]
```

### 4. Validate Data

```
[route energy]
|
[if $f1 < 0 then bang]  <- detect invalid values
|
[print "Invalid energy value"]
```

## Advanced: Custom Commands

You can modify the script to add custom commands:

```javascript
// In fireball-api.js, add new case:
case 'nearby':
  const lat = parseFloat(args[1]);
  const lon = parseFloat(args[2]);
  const radius = parseFloat(args[3]) || 500;
  // Add filtering logic for location-based queries
  break;
```

Then use in Max:
```
[node fireball-api.js nearby 40.7 -74.0 500]  <- NYC area, 500km radius
```

## Resource Management

### Limit Concurrent Queries

```
[gate 0]  <- start closed
|
[shell]
|
[t a b]
|   |
|   [1(  <- reopen gate when done
|   |
|   [gate]
|
[route bang]
```

### Timeout Protection

```
[node fireball-api.js latest 5]
|
[t b b]
|   |
|   [del 10000]  <- 10 second timeout
|   |
|   [print "Query timeout"]
|
[shell]
|
[route bang]  <- cancels timeout on completion
```

## Tips for Live Performance

1. **Pre-cache data** before performance (query API beforehand, store in coll)
2. **Use bang-triggered queries** instead of metro during performance
3. **Have fallback data** in case API is unavailable
4. **Test network connectivity** before show
5. **Keep queries simple** (limit=1 or limit=5 for real-time use)

## Troubleshooting in Max

**Problem**: No output from [shell]
- Check Max console for errors
- Verify Node.js path
- Test script in terminal first

**Problem**: Rapid message overflow
- Use [speedlim 100] after [shell]
- Use [gate] to control flow
- Buffer into [coll] first

**Problem**: API not responding
- Check internet connection
- Add timeout using [del]
- Have cached/dummy data as fallback
