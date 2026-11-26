// presets.js — ready-made APIs (no key needed, all allow CORS so the browser may read them)
// ---------------------------------------------------------------------------
// Every preset has:
//   url       the address that gets requested
//   interval  how often (seconds) to fetch again when "auto" is on. Be modest.
//   channels  up to 4. Per channel:
//               path   where the number lives in the JSON (dots, and [0] for lists)
//               label  text shown on the page: "text" or { en: "...", nl: "..." }
//               range  [low, high]: the values you expect; this becomes 0..255
//
// Your own API? Copy a block, change it, save, reload the page.
// Check that the API allows CORS (the browser console tells you if it doesn't).
// ---------------------------------------------------------------------------

const PRESETS = {

  weather: {
    url: "https://api.open-meteo.com/v1/forecast?latitude=52.37&longitude=4.89" +
         "&current=temperature_2m,relative_humidity_2m,wind_speed_10m,cloud_cover",
    interval: 60,
    channels: {
      1: { path: "current.temperature_2m",       label: { en: "temperature °C", nl: "temperatuur °C" }, range: [-10, 35] },
      2: { path: "current.wind_speed_10m",       label: { en: "wind km/h",      nl: "wind km/u" },      range: [0, 60] },
      3: { path: "current.relative_humidity_2m", label: { en: "humidity %",     nl: "luchtvocht %" },   range: [0, 100] },
      4: { path: "current.cloud_cover",          label: { en: "cloud cover %",  nl: "bewolking %" },    range: [0, 100] },
    },
  },

  air: {
    url: "https://air-quality-api.open-meteo.com/v1/air-quality?latitude=52.37&longitude=4.89" +
         "&current=pm10,pm2_5,european_aqi,uv_index",
    interval: 60,
    channels: {
      1: { path: "current.pm2_5",        label: { en: "particles PM2.5", nl: "fijnstof PM2.5" }, range: [0, 50] },
      2: { path: "current.pm10",         label: { en: "particles PM10",  nl: "fijnstof PM10" },  range: [0, 80] },
      3: { path: "current.european_aqi", label: "EU AQI",                                         range: [0, 100] },
      4: { path: "current.uv_index",     label: { en: "UV index",        nl: "UV-index" },       range: [0, 10] },
    },
  },

  energy: {
    url: "https://api.carbonintensity.org.uk/generation",
    interval: 300,
    channels: {
      1: { path: "data.generationmix[8].perc", label: "wind %",                            range: [0, 100] },
      2: { path: "data.generationmix[7].perc", label: { en: "solar %", nl: "zon %" },      range: [0, 100] },
      3: { path: "data.generationmix[3].perc", label: "gas %",                             range: [0, 100] },
      4: { path: "data.generationmix[4].perc", label: { en: "nuclear %", nl: "kernenergie %" }, range: [0, 100] },
    },
  },

  iss: {
    url: "https://api.wheretheiss.at/v1/satellites/25544",
    interval: 2,
    channels: {
      1: { path: "latitude",  label: { en: "latitude",    nl: "breedtegraad" },  range: [-90, 90] },
      2: { path: "longitude", label: { en: "longitude",   nl: "lengtegraad" },   range: [-180, 180] },
      3: { path: "altitude",  label: { en: "altitude km", nl: "hoogte km" },     range: [400, 430] },
      4: { path: "velocity",  label: { en: "speed km/h",  nl: "snelheid km/u" }, range: [27500, 27700] },
    },
  },

  bitcoin: {
    url: "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum" +
         "&vs_currencies=eur&include_24hr_change=true",
    interval: 60,
    channels: {
      1: { path: "bitcoin.eur",             label: "BTC €",                             range: [40000, 120000] },
      2: { path: "bitcoin.eur_24h_change",  label: { en: "BTC 24h %", nl: "BTC 24u %" }, range: [-10, 10] },
      3: { path: "ethereum.eur",            label: "ETH €",                             range: [1000, 5000] },
      4: { path: "ethereum.eur_24h_change", label: { en: "ETH 24h %", nl: "ETH 24u %" }, range: [-10, 10] },
    },
  },

  quakes: {
    url: "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson",
    interval: 60,
    channels: {
      1: { path: "metadata.count",                      label: { en: "count (1 hour)",   nl: "aantal (1 uur)" },    range: [0, 20] },
      2: { path: "features[0].properties.mag",          label: { en: "latest magnitude", nl: "laatste magnitude" }, range: [0, 7] },
      3: { path: "features[0].geometry.coordinates[2]", label: { en: "depth km",         nl: "diepte km" },         range: [0, 100] },
      4: { path: "features[0].properties.place",        label: { en: "place (text)",     nl: "plaats (tekst)" },    range: [0, 1] },
    },
  },

};
