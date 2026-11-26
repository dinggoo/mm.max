// api_presets_nl.js — kant-en-klare API's voor api_reader_nl.js
// ---------------------------------------------------------------------------
// Elke preset heeft:
//   url       het adres dat opgevraagd wordt (komma's mogen hier gewoon,
//             in een Max-berichtbox niet!)
//   interval  hoe vaak (ms) we automatisch opnieuw ophalen. Wees zuinig:
//             de meeste gratis API's verversen hun data maar elke paar minuten.
//   channels  max. 4 kanalen. Per kanaal:
//               path   waar het getal in de JSON staat (punten en [0] voor lijsten)
//               label  tekst die in de patch verschijnt
//               range  [laag, hoog]: welke waardes je verwacht.
//                      De patch schaalt dit naar 0..255 voor de Arduino.
//   headers   (optioneel) bijv. { "x-api-key": "..." } voor API's met een sleutel
//   method    (optioneel) "POST" i.p.v. het standaard "GET"
//   body      (optioneel) object dat als JSON meegestuurd wordt (bij POST)
//
// Een eigen API toevoegen? Kopieer een blok, pas het aan, sla op, en stuur
// in Max het bericht:  api <jouw_naam>
// (na het opslaan van dit bestand: stuur 'compile' naar v8, of sla
//  api_reader_nl.js opnieuw op, zodat de nieuwe presets ingelezen worden)
// ---------------------------------------------------------------------------

exports.presets = {

  // Weer in Amsterdam, Open-Meteo (gratis, geen sleutel)
  // Andere stad? Verander latitude/longitude (zoek op https://open-meteo.com)
  weather: {
    url: "https://api.open-meteo.com/v1/forecast?latitude=52.37&longitude=4.89" +
         "&current=temperature_2m,relative_humidity_2m,wind_speed_10m,cloud_cover",
    interval: 60000,
    channels: {
      1: { path: "current.temperature_2m",       label: "temperatuur °C", range: [-10, 35] },
      2: { path: "current.wind_speed_10m",       label: "wind km/u",     range: [0, 60] },
      3: { path: "current.relative_humidity_2m", label: "luchtvocht %",    range: [0, 100] },
      4: { path: "current.cloud_cover",          label: "bewolking %",   range: [0, 100] },
    },
  },

  // Luchtkwaliteit in Amsterdam, Open-Meteo Air Quality
  air: {
    url: "https://air-quality-api.open-meteo.com/v1/air-quality?latitude=52.37&longitude=4.89" +
         "&current=pm10,pm2_5,european_aqi,uv_index",
    interval: 60000,
    channels: {
      1: { path: "current.pm2_5",        label: "fijnstof PM2.5", range: [0, 50] },
      2: { path: "current.pm10",         label: "fijnstof PM10", range: [0, 80] },
      3: { path: "current.european_aqi", label: "EU AQI",          range: [0, 100] },
      4: { path: "current.uv_index",     label: "UV-index",      range: [0, 10] },
    },
  },

  // Waar is het ISS nu? Verandert elke seconde: mooi voor servo's
  iss: {
    url: "https://api.wheretheiss.at/v1/satellites/25544",
    interval: 2000,
    channels: {
      1: { path: "latitude",  label: "breedtegraad",range: [-90, 90] },
      2: { path: "longitude", label: "lengtegraad", range: [-180, 180] },
      3: { path: "altitude",  label: "hoogte km",   range: [400, 430] },
      4: { path: "velocity",  label: "snelheid km/u", range: [27500, 27700] },
    },
  },

  // Stroommix van het Britse net, live (National Grid ESO, Carbon Intensity API)
  // generationmix is een lijst: [3]=gas [4]=kernenergie [7]=zon [8]=wind
  // Al in procenten, dus range 0..100 werkt direct.
  energy: {
    url: "https://api.carbonintensity.org.uk/generation",
    interval: 300000,
    channels: {
      1: { path: "data.generationmix[8].perc", label: "wind %",    range: [0, 100] },
      2: { path: "data.generationmix[7].perc", label: "zon %",     range: [0, 100] },
      3: { path: "data.generationmix[3].perc", label: "gas %",     range: [0, 100] },
      4: { path: "data.generationmix[4].perc", label: "kernenergie %", range: [0, 100] },
    },
  },

  // Crypto-koersen, CoinGecko (houd interval ≥ 30 s, anders word je geblokkeerd)
  bitcoin: {
    url: "https://api.coingecko.com/api/v3/simple/price?ids=bitcoin,ethereum" +
         "&vs_currencies=eur&include_24hr_change=true",
    interval: 60000,
    channels: {
      1: { path: "bitcoin.eur",             label: "BTC €",     range: [40000, 120000] },
      2: { path: "bitcoin.eur_24h_change",  label: "BTC 24u %", range: [-10, 10] },
      3: { path: "ethereum.eur",            label: "ETH €",     range: [1000, 5000] },
      4: { path: "ethereum.eur_24h_change", label: "ETH 24u %", range: [-10, 10] },
    },
  },

  // Aardbevingen wereldwijd, afgelopen uur (USGS)
  // features[0] = de meest recente beving
  quakes: {
    url: "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson",
    interval: 60000,
    channels: {
      1: { path: "metadata.count",                      label: "aantal (1 uur)", range: [0, 20] },
      2: { path: "features[0].properties.mag",          label: "laatste magnitude", range: [0, 7] },
      3: { path: "features[0].geometry.coordinates[2]", label: "diepte km",       range: [0, 100] },
      4: { path: "features[0].properties.place",        label: "plaats (tekst)",  range: [0, 1] },
    },
  },

  // AI-voorbeeld: een taalmodel op je eigen laptop met Ollama (https://ollama.com),
  // geen sleutel nodig. Installeer Ollama, draai 'ollama pull llama3.2' en haal de //'s weg.
  // Het model geeft een getal terug dat je naar een actuator kunt sturen.
  // ollama: {
  //   url: "http://localhost:11434/api/generate",
  //   method: "POST",
  //   body: {
  //     model: "llama3.2",
  //     stream: false,
  //     format: { type: "object", properties: { mood: { type: "number" } }, required: ["mood"] },
  //     prompt: "Geef op een schaal van 0 tot 10 hoe vrolijk deze zin is: 'Het regent alweer.' Antwoord in JSON.",
  //   },
  //   interval: 30000,
  //   channels: {
  //     1: { path: "response", label: "antwoord (JSON-tekst)", range: [0, 10] },
  //   },
  // },

};
