# mm.v8_simple_starter

The simplest way to get web data into Max with `[v8]`. Needs **Max 9.2 or newer**.

```
get <url> ──▶ [v8 fetcher] ──▶ [dict api_data] ──▶ [v8 reader] ──▶ [route latitude ...] ──▶ numbers
                                     ▲
[maxurl] ── dict.unpack body: ───────┘   (same job without code)
```

- **fetcher**: `get <url>` does a `fetch()` and writes the JSON into a dict.
- **reader**: turns that dict into ordinary Max messages, `<path> <value>` (e.g. `latitude 52.3`, `current.temperature_2m 4.2`). Pick what you need with `[route]`.
- Turn on **print** to see every path in the Max Console. Then type the paths you need into `[route]`.
- **1b** shows the same request with `[maxurl]`. The reader doesn't care who filled the dict.

Two versions of the patch:
- `mm.v8_simple_starter.maxpat`: English
- `mm.v8_simple_starter_NL.maxpat`: Nederlands

Rebuild: `python3 build/build_simple_starter.py mm.v8_simple_starter.maxpat` (add `--nl` for the Dutch one).

---

**NL:** de simpelste manier om webdata in Max te krijgen. De fetcher haalt JSON op met `fetch()` en schrijft die in een dict. De reader maakt van die dict gewone Max-berichten (`<pad> <waarde>`), die je met `[route]` oppakt. Sectie 1b doet hetzelfde met `[maxurl]`, zonder code.
