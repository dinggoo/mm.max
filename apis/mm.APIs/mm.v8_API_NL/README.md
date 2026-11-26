# mm.v8_API_NL: web-API → Max → Arduino

*Nederlandse versie. English version: [`../mm.v8_API`](../mm.v8_API).*

Haal live data van internet binnen in Max en stuur er servo's, LED's en motoren mee aan. Denk aan het weer, luchtkwaliteit, het ISS, de stroommix of aardbevingen.

Werkt met **Max 9.2 of nieuwer**. De patch gebruikt het moderne `[v8]`-object met `fetch()`, `async/await` en andere nieuwe JavaScript. Je hebt geen `npm install` nodig.

## Snel beginnen

1. Open `mm.v8_API_NL.maxpat`.
2. **Sectie 1**: klik op `api weather` (of een andere API).
3. **Sectie 3**: bekijk de JSON in de `dict.view`.
4. **Sectie 4**: daar zie je de vier kanalen bewegen, van 0 tot 255.
5. **Sectie 5**: upload `put_this_on-your_arduino` naar je board. Dat is dezelfde CMD-sketch als bij de ISS-, Moon- en Fireball-patches. Kies daarna de poort in het menu.

Nog geen board? Zet *toon in Max Console* aan in sectie 5, dan zie je wat er naar de Arduino zou gaan.

## Hoe het werkt

```
web-API ──JSON──▶ [v8 api_reader_nl.js] ──▶ kanaal 1..4 ──▶ [scale] → 0..255 ──▶ [mm.cmd_out_nl s 9] ──▶ [serial] ──▶ Arduino
                      │                                                                      "w s 9 90⏎"
                      └──▶ dict.view (alles bekijken)
```

| Bestand | Wat |
|---|---|
| `mm.v8_API_NL.maxpat` | de patch |
| `mm.cmd_out_nl.maxpat` | abstractie: 0..255 → CMD-bericht. `[mm.cmd_out_nl s 9]` = servo op pin 9, `a 5` = PWM op pin 5, `d 7` = aan/uit op pin 7 |
| `api_reader_nl.js` | alle code: ophalen, JSON uitlezen, waardes doorsturen |
| `web_server_nl.js` / `web_page_nl.html` | de webpagina van sectie 6: de server in Max, en de pagina zelf |
| `api_presets_nl.js` | de kant-en-klare API's. **Hier voeg je je eigen API toe.** |
| `put_this_on-your_arduino/` | de CMD-sketch (9600 baud): `w s <pin> <0-180>`, `w a <pin> <0-255>`, `w d <pin> <0/1>` |
| `tools/` | testen zonder Max (zie VS Code) |
| `build/build_api_patch.py` | maakt de patch (en `mm.cmd_out_nl`) opnieuw: `python3 build/build_api_patch.py mm.v8_API_NL.maxpat` |

De bestanden en de send/receive-namen (`v8apinl.*`) zijn anders dan in de Engelse versie. Zo kun je beide versies tegelijk open hebben zonder dat ze elkaar storen.

## Webpagina (sectie 6)

Max serveert zelf een kleine webpagina met de vier live kanalen, de status en een paar knoppen. Dat gebeurt met de nieuwe `require("http")` in `[v8]`.

- Klik in sectie 6 op `; max launchbrowser http://localhost:8081`, of open zelf http://localhost:8081.
- Op je telefoon (zelfde wifi): `http://<IP-adres van deze computer>:8081`. Het IP-adres vind je bij *Systeeminstellingen → Wi-Fi → Details*.
- De opmaak pas je aan in `web_page_nl.html` (gewone HTML/CSS/JS, herlaad de pagina om het te zien). De server is `web_server_nl.js`.
- Voor de veiligheid mag de pagina alleen `api <naam>`, `bang` en `auto 0/1` naar Max sturen. Iedereen op hetzelfde wifi-netwerk kan de pagina openen.

## Berichten naar `[v8 api_reader_nl.js]`

Stuur ze naar `[s v8apinl.cmd]`. In een berichtbox scheidt een komma twee berichten.

| Bericht | Voorbeeld |
|---|---|
| `api <naam>` | `api iss` (laadt url, kanalen, bereik en interval uit `api_presets_nl.js`) |
| `url <adres>` | `url https://api.wheretheiss.at/v1/satellites/25544` |
| `watch <kanaal> <pad>` | `watch 1 current.temperature_2m` · `watch 2 features[0].properties.mag` |
| `label <kanaal> <tekst>` | `label 1 temperatuur` |
| `range <kanaal> <laag> <hoog>` | `range 1 -10 35` (dit bereik wordt 0..255) |
| `bang` | nu ophalen |
| `auto 1` / `auto 0` | automatisch ophalen aan of uit |
| `interval <ms>` | `interval 5000` (minimaal 1000) |
| `header <naam> <waarde>` | `header x-api-key ABC123` |
| `paths` | zet alle paden in het menu van sectie 3 |
| `peek <pad>` | laat één waarde zien |
| `clear` | alle kanalen leeg |

**Paden lezen.** Een pad is de weg naar een waarde in de JSON. Gebruik een punt voor een sleutel en `[0]` voor het eerste item van een lijst. Weet je het pad niet? Klik op `paths`, kies er een in het menu en klik op 1 t/m 4.

Teksten zie je in de patch. Alleen getallen gaan door naar de actuatoren (`true`/`false` wordt 1/0).

## Je eigen API toevoegen

Open `api_presets_nl.js` en kopieer een blok:

```js
mijnapi: {
  url: "https://...",
  interval: 60000,
  channels: {
    1: { path: "data.waarde", label: "mijn waarde", range: [0, 100] },
  },
},
```

Sla het bestand op. Stuur dan in Max `compile` naar het v8-object (of sla `api_reader_nl.js` ook op) en klik op `api mijnapi`.

**Waar vind je API's zonder sleutel?**

- [mixedanalytics: actually free, no-auth API's](https://mixedanalytics.com/blog/list-actually-free-open-no-auth-needed-apis/)
- [free-apis.github.io](https://free-apis.github.io/)

Kijk in die lijsten naar *Auth: none*, *HTTPS: yes*, en naar data die verandert. Kies een interval dat de API aankan: de meeste gratis data ververst maar elke paar minuten.

**AI-API's** (OpenAI, Hugging Face, Gemini, …) vragen bijna altijd een sleutel en een POST-verzoek. Beide kan: zet `method`, `body` en `headers` in je preset. In `api_presets_nl.js` staat een uitgecommentarieerd voorbeeld voor **Ollama**, een taalmodel dat zonder sleutel op je eigen laptop draait. **Zet nooit een echte sleutel in een bestand dat je deelt of op GitHub zet.**

## Actuator kiezen (servo, LED, motor, relais)

Elk kanaal eindigt in `[mm.cmd_out_nl <type> <pin>]`. Dubbelklik in het objectvak en typ een ander type of pinnummer:

| Type | Doet | Pinnen (Uno) |
|---|---|---|
| `s` | servo, 0..255 wordt 0..180 graden | 2..13 |
| `a` | PWM: LED-helderheid, of een motor via een transistor/MOSFET | 3, 5, 6, 10, 11 (niet 9/10 als je servo's gebruikt) |
| `d` | digitaal aan/uit, aan vanaf 128 (bijv. een relais) | 2..13 |

Meer servo's? Zet meerdere kanalen op `s`, bijvoorbeeld `[mm.cmd_out_nl s 9]` en `[mm.cmd_out_nl s 10]`. De CMD-sketch kan tot 6 servo's aan.

Gebruik je de CMD-module (bpatcher) uit de andere API-patches tegelijk? Gebruik dan maar één van de twee op dezelfde poort.

## Werken in VS Code

Kies wat bij je past. Ze zijn te combineren.

1. **JavaScript bewerken in VS Code (aanrader).** Open deze map in VS Code en bewerk `api_reader_nl.js` of `api_presets_nl.js`. Bovenaan het script staat `autowatch = 1`: sla je op, dan laadt Max de code meteen opnieuw. Wil je dat dubbelklikken op `[v8]` ook VS Code opent? Zet in Max bij *Preferences → External Editor* "Always use External Text Editor" aan en kies VS Code.

2. **Autocomplete voor Max-functies.** `jsconfig.json` en `types/max-v8.d.ts` geven uitleg bij `outlet`, `post`, `Dict`, `Task` enz. als je eroverheen hovert. Max zelf gebruikt deze bestanden niet.

3. **Testen zonder Max.** Draai in de terminal:
   ```
   node tools/run-in-node.js "api iss" paths
   node tools/run-in-node.js "url https://api.carbonintensity.org.uk/intensity" bang paths
   ```
   Dit draait precies dezelfde `api_reader_nl.js` en print wat er uit de outlets komt. Met **F5** (Node.js-debugger) en een breakpoint loop je stap voor stap door de code.

4. **API's verkennen.** Open `tools/test-api.http` met de extensie *REST Client* (of gebruik *Thunder Client*). Klik op *Send Request* om de JSON te zien voordat je hem in Max gebruikt.

5. **Arduino in VS Code.** Gebruik de extensie *Arduino Community Edition*, *PlatformIO*, of de terminal met `arduino-cli`. Bijvoorbeeld:
   ```
   arduino-cli compile --upload -b arduino:avr:uno -p /dev/cu.usbmodemXXXX put_this_on-your_arduino
   ```
   Klik eerst op `close` in sectie 5, anders houdt Max de poort vast.

6. **Node for Max (`[node.script]`).** Gebruik dit als je npm-pakketten nodig hebt, zoals MQTT, socket.io, OAuth-logins of `serialport`. Typings staan in Max: `Node for Max/source/@types/max-api.d.ts`. Het is zwaarder dan `[v8]`, dus voor gewone JSON-API's is `[v8]` genoeg.

7. **De patch als code.** `build/build_api_patch.py` beschrijft de hele patch in Python. Pas de layout of objecten daar aan en bouw opnieuw. Dit is handig voor versiebeheer (git) en om varianten te maken.

## Problemen?

| Probleem | Oplossing |
|---|---|
| `FOUT: HTTP 429` | Je vraagt te vaak. Zet het interval hoger. |
| `FOUT: HTTP 401/403` | De API wil een sleutel. Gebruik `header ...`. |
| `? pad` in een kanaal | Dat pad bestaat niet. Gebruik `paths` om het juiste pad te vinden. |
| Fouten van objecten die je niet herkent (bijv. `sprintf: can't convert symbol`) | Er staat nog een oudere kopie van deze patch open. Sluit die: open patches delen hun `send`/`receive`-namen. |
| De Arduino stuurt veel `d ...`/`a ...` terug | Klik op `mode none` in sectie 5. |
| De servo trilt of reset het board | Geef de servo eigen 5V-voeding, met de GND verbonden met de Arduino. |
| Geen poort in het menu | Klik op `print`, sluit de Arduino Serial Monitor en controleer de USB-kabel (sommige kabels laden alleen op). |
| Uploaden lukt niet | Klik eerst op `close` in de patch. |
| `preset`-bericht doet niets | Het bericht heet `api`. Max slikt de argumenten van `preset` in via send/receive. |
