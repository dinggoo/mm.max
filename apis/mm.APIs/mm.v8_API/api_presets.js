// api_presets.js — ready-made APIs for api_reader.js
// ---------------------------------------------------------------------------
// Every preset has:
//   url       the address that gets requested (commas are fine here,
//             but not in a Max message box!)
//   interval  how often (ms) we fetch again automatically. Be modest:
//             most free APIs only refresh their data every few minutes.
//   channels  up to 4 channels. Per channel:
//               path   where the number lives in the JSON (dots, and [0] for lists)
//               label  text shown in the patch
//               range  [low, high]: the values you expect.
//                      The patch scales this to 0..255 for the Arduino.
//   headers   (optional) e.g. { "x-api-key": "..." } for APIs that need a key
//   method    (optional) "POST" instead of the default "GET"
//   body      (optional) object sent along as JSON (with POST)
//
// Adding your own API? Copy a block, change it, save, and send this message
// in Max:  api <your_name>
// (after saving this file: send 'compile' to v8, or save api_reader.js
//  again, so the new presets are read in)
// ---------------------------------------------------------------------------

exports.presets = {

  // Weather in Amsterdam, Open-Meteo (free, no key)
  // Another city? Change latitude/longitude (look it up on https://open-meteo.com)
  weather: {
    url: "https://api.open-meteo.com/v1/forecast?latitude=52.37&longitude=4.89" +
         "&current=temperature_2m,relative_humidity_2m,wind_speed_10m,cloud_cover",
    interval: 60000,
    channels: {
      1: { path: "current.temperature_2m",       label: "temperature °C", range: [-10, 35] },
      2: { path: "current.wind_speed_10m",       label: "wind km/h",      range: [0, 60] },
      3: { path: "current.relative_humidity_2m", label: "humidity %",     range: [0, 100] },
      4: { path: "current.cloud_cover",          label: "cloud cover %",  range: [0, 100] },
    },
  },

  // Air quality in Amsterdam, Open-Meteo Air Quality
  air: {
    url: "https://air-quality-api.open-meteo.com/v1/air-quality?latitude=52.37&longitude=4.89" +
         "&current=pm10,pm2_5,european_aqi,uv_index",
    interval: 60000,
    channels: {
      1: { path: "current.pm2_5",        label: "particles PM2.5", range: [0, 50] },
      2: { path: "current.pm10",         label: "particles PM10",  range: [0, 80] },
      3: { path: "current.european_aqi", label: "EU AQI",          range: [0, 100] },
      4: { path: "current.uv_index",     label: "UV index",        range: [0, 10] },
    },
  },

  // Where is the ISS right now? Changes every second: nice for servos
  iss: {
    url: "https://api.wheretheiss.at/v1/satellites/25544",
    interval: 2000,
    channels: {
      1: { path: "latitude",  label: "latitude",    range: [-90, 90] },
      2: { path: "longitude", label: "longitude",   range: [-180, 180] },
      3: { path: "altitude",  label: "altitude km", range: [400, 430] },
      4: { path: "velocity",  label: "speed km/h",  range: [27500, 27700] },
    },
  },

  // Live power mix of the UK grid (National Grid ESO, Carbon Intensity API)
  // generationmix is a list: [3]=gas [4]=nuclear [7]=solar [8]=wind
  // Already in percent, so a range of 0..100 works straight away.
  energy: {
    url: "https://api.carbonintensity.org.uk/generation",
    interval: 300000,
    channels: {
      1: { path: "data.generationmix[8].perc", label: "wind %",    range: [0, 100] },
      2: { path: "data.generationmix[7].perc", label: "solar %",   range: [0, 100] },
      3: { path: "data.generationmix[3].perc", label: "gas %",     range: [0, 100] },
      4: { path: "data.generationmix[4].perc", label: "nuclear %", range: [0, 100] },
    },
  },

  // Crypto prices, CoinGecko (keep the interval ≥ 30 s, or you'll get blocked)
  bitcoin: {
    url: "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum" +
         "&vs_currencies=eur&include_24hr_change=true",
    interval: 60000,
    channels: {
      1: { path: "bitcoin.eur",             label: "BTC €",     range: [40000, 120000] },
      2: { path: "bitcoin.eur_24h_change",  label: "BTC 24h %", range: [-10, 10] },
      3: { path: "ethereum.eur",            label: "ETH €",     range: [1000, 5000] },
      4: { path: "ethereum.eur_24h_change", label: "ETH 24h %", range: [-10, 10] },
    },
  },

  // Earthquakes worldwide in the past hour (USGS)
  // features[0] = the most recent quake
  quakes: {
    url: "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson",
    interval: 60000,
    channels: {
      1: { path: "metadata.count",                      label: "count (1 hour)",  range: [0, 20] },
      2: { path: "features[0].properties.mag",          label: "latest magnitude", range: [0, 7] },
      3: { path: "features[0].geometry.coordinates[2]", label: "depth km",        range: [0, 100] },
      4: { path: "features[0].properties.place",        label: "place (text)",    range: [0, 1] },
    },
  },

  // AI example: a language model on your own laptop with Ollama (https://ollama.com),
  // no key needed. Install Ollama, run 'ollama pull llama3.2' and remove the //'s.
  // The model returns a number you can send to an actuator.
  // ollama: {
  //   url: "http://localhost:11434/api/generate",
  //   method: "POST",
  //   body: {
  //     model: "llama3.2",
  //     stream: false,
  //     format: { type: "object", properties: { mood: { type: "number" } }, required: ["mood"] },
  //     prompt: "On a scale from 0 to 10, how happy is this sentence: 'It is raining again.' Answer in JSON.",
  //   },
  //   interval: 30000,
  //   channels: {
  //     1: { path: "response", label: "answer (JSON text)", range: [0, 10] },
  //   },
  // },

};
