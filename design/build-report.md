# Build report: Sightline landing site

Built on 15 September 2026 from `design/landing-reference.dc.html`.

## Files

- `index.html`: the landing page with sections `features`, `demo`, `compare`, `agents`, `guardrails`.
- `privacy.html`: GDPR privacy notice for site and app.
- `imprint.html`: Austrian Impressum skeleton (ECG § 5, MedienG § 25).
- `styles.css`: shared stylesheet, CSS variables for accent, stage gradient and glass cards.
- `README.md`, `.gitignore` (`.DS_Store`). No `CNAME` (domain undecided).
- `assets/`: videos, posters, icon and favicon.
- `design/`: the reference draft and image stand-ins, committed as is.

## Asset sizes

| File | Size | Notes |
| --- | --- | --- |
| hero.webm | 0.36 MB | VP9, 1280x720, crf 33, no audio |
| hero.mp4 | 0.34 MB | H.264, 1280x720, crf 27, slow, faststart |
| hero-poster.jpg | 0.01 MB | second frame of the loop |
| demo.mp4 | 5.76 MB | H.264 1280x720 crf 27 plus AAC 128k, 1:19 |
| demo-poster.jpg | 0.03 MB | frame at 8 s |
| agent.mp4 | 1.99 MB | H.264, 1280x720, crf 27, no audio, 25 s |
| agent-poster.jpg | 0.02 MB | frame at 1 s |
| icon.png | 0.04 MB | copied from design/icon.png, 256 px |
| favicon.png | 0.00 MB | 32 px |
| Total | 9.6 MB | limit was 20 MB |

## Verification

- Rendered with headless Chrome at 1280 px and inside a 400 px iframe (headless Chrome will not open a window narrower than 500 px). At 400 px the document scroll width equals the viewport width, so nothing overflows.
- Served with `python3 -m http.server 8765`; the server log shows 200 responses for index.html, styles.css and every asset. `curl` from the sandboxed shell could not reach localhost at all, so the curl check itself is inconclusive and the server log is the evidence.
- Every `assets/` path referenced in the HTML exists. No em dashes in any html, css or md file.

## Deviations from the reference

- Nav has five links (Features, Demo, AI agents, Guardrails, Support) instead of three, so every section is reachable. The nav links are hidden below 720 px; the logo stays.
- Video captions inside the frames sit top left on the two videos with native controls (demo and agent), so they do not overlap the control bar. The hero keeps them bottom left as in the reference.
- The play button overlay from the stand-in images is not reproduced; the hero autoplays and the other two videos use native controls.
- The agent video autoplays muted in a loop with native controls shown.
- The comparison table is a real `<table>`; below 600 px each row stacks with "macOS" and "Sightline" labels before the check marks.
- The hero poster is the dim second frame of the fade-in, as requested. If autoplay is blocked (for example Low Power Mode on iOS) the visitor sees that faint frame until they tap.
- The privacy page names Google Fonts as the only third party request, since the site loads Manrope from there.

## Placeholders to fill before launch

- `[APP_ID]` in both App Store links in `index.html`, and the hand drawn badge must be replaced by Apple's official badge asset (marked with an HTML comment at both places).
- `[SUPPORT_EMAIL]` in all three pages (nav, footer, privacy, imprint).
- `[YOUR NAME OR COMPANY]` in all three footers, privacy and imprint.
- `[ADDRESS]`, `[PHONE]`, `[UID OR "not applicable"]`, `[TRADE AUTHORITY]`, `[MEMBERSHIP, for example WKO]`, `[PROFESSION AND APPLICABLE LAW]` in `imprint.html`; `[ADDRESS]` also in `privacy.html`.
- The "Last updated" date in `privacy.html` if the text changes.
- The imprint's dispute resolution line says you do not take part in consumer arbitration; adjust if that is not true for you.
