# Quick Reference - Message Handlers

## All Available Handlers

### Basic Commands
```
latest          → Get latest 10 fireballs
latest 5        → Get latest 5 fireballs  
latest 20       → Get latest 20 fireballs
bang            → Get latest 10 fireballs (same as "latest")
```

### Date-Based Queries
```
date 2024-01-01                     → All fireballs since Jan 1, 2024
date 2024-12-01                     → All fireballs since Dec 1, 2024
range 2024-01-01 2024-12-31        → Fireballs in 2024
range 2024-06-01 2024-06-30        → Fireballs in June 2024
```

### Filtered Queries
```
energy 5        → Fireballs with energy >= 5 x10^10 joules
energy 10       → Fireballs with energy >= 10 x10^10 joules
impact 1        → Fireballs with impact >= 1 kiloton
impact 0.5      → Fireballs with impact >= 0.5 kilotons
location        → Latest 20 fireballs with known location
location 10     → Latest 10 fireballs with known location
velocity        → Latest 10 fireballs with velocity data
velocity 5      → Latest 5 fireballs with velocity data
```

## Output Messages (via outlet)

### Structural Messages
```
count <n>           Number of fireballs returned
fireball <index>    Start of fireball record (0, 1, 2, ...)
---                 End of current fireball record
bang                All data has been sent
```

### Data Messages (per fireball)
```
date <string>               "YYYY-MM-DD HH:MM:SS"
latitude <float>            -90.0 to 90.0
longitude <float>           -180.0 to 180.0
location <float> <float>    lat lon as two values
altitude <float>            kilometers above Earth
energy <float>              x10^10 joules
energy_joules <float>       total joules
impact_energy <float>       kilotons TNT equivalent
velocity_x <float>          km/s (if velocity requested)
velocity_y <float>          km/s (if velocity requested)
velocity_z <float>          km/s (if velocity requested)
velocity_total <float>      km/s magnitude (if velocity requested)
```

## Dictionary Storage

All data is automatically stored in `fireballDict` using `Max.setDict()`.

**You need to create this in your patch:**
```
[dict fireballDict]
```

### Dictionary Structure

```
fireballDict
├── count: <total number>
├── fireball_0
│   ├── date
│   ├── latitude
│   ├── longitude  
│   ├── altitude
│   ├── energy
│   ├── energy_joules
│   ├── impact_energy
│   └── velocity_x/y/z/total (if available)
├── fireball_1
│   └── ...
└── fireball_N
```

## Max Patch Examples

### Minimal Setup
```
[node.script fireball-api.js]
|
[print]  ← see all output
```

### Route Messages
```
[latest 5(
|
[node.script fireball-api.js]
|
[route count fireball date energy bang]
|      |        |      |      |
[int]  [int]  [print] [f]   [print "done"]
```

### Get Energy Values
```
[node.script fireball-api.js]
|
[route energy]
|
[f]  ← stores energy value
```

### Detect End of Records
```
[node.script fireball-api.js]
|
[route ---]
|
[bang]  ← triggers at end of each fireball
```

### Wait for Completion
```
[node.script fireball-api.js]
|
[route bang]
|
[bang]  ← triggers when all data sent
```

### Access Dictionary
```
[dict fireballDict]  <- create this first!

[latest 5(
|
[node.script fireball-api.js]
|
[route bang]
|
[dict.get fireballDict fireball_0 energy]
|
[f]  ← get first fireball energy
```

### Iterate Through Dictionary
```
[dict fireballDict]

[node.script fireball-api.js]
|
[route bang]
|
[dict.get fireballDict count]
|
[uzi]  ← loop through all
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

### Store Multiple Fireballs
```
[latest 10(
|
[node.script fireball-api.js]
|
[route fireball]
|
[counter]  ← gives you fireball index
|
[pack i s]
|
[coll fireballs]  ← store for later use
```

## Message Flow Example

Send: `latest 2`

Receive:
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

## Tips

1. **Route early**: Use [route] immediately after node.script to organize messages
2. **Use ---**: Detect record boundaries with [route ---]
3. **Use bang**: Know when query is complete with [route bang]
4. **Store count**: [route count] tells you how many fireballs to expect
5. **Check console**: Errors only appear in Max console
6. **Start small**: Test with "latest 1" before larger queries

## Common Patterns

### Pattern 1: Sonify Each Fireball
```
[node.script fireball-api.js]
|
[route energy ---]
|            |
[scale 0 50  [bang]  ← end of record
 200 2000]   |
|            |
[cycle~] <---+  ← trigger sound
|
[*~ 0.3]
|
[line~ 0 500]  ← envelope
|
[*~]
|
[dac~]
```

### Pattern 2: Collect All Data First
```
[latest 10(
|
[node.script fireball-api.js]
|
[t a a]
|    |
|    [route bang]  ← wait for completion
|    |
|    [coll fireballs, dump]  ← then process
|
[coll fireballs]  ← store during collection
```

### Pattern 3: Real-time Monitor
```
[loadbang]
|
[metro 300000]  ← every 5 minutes
|
[date]
|
[prepend date]
|
[node.script fireball-api.js]
|
[route count]
|
[> 0]  ← new fireballs?
|
[TRIGGER YOUR EVENT]
```
