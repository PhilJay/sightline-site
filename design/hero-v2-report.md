# Hero loop v2 report

Rendered on 15 September 2026 with `render_hero_v2.py` in `Sightline/marketing_video/Sightline_showcase_source/`. 16.3 s, 1920 by 1080, 30 fps, 489 frames, silent, seamless loop on the site's dark teal stage (`#163d45` to `#0a1013`, accent `#2fb4b6`). The UI shown is a synthetic dark dashboard with grey text blocks and generic words only (Overview, Activity, Jobs, Reports, Settings, job names such as "Nightly build", status pills Done, Failed, Running, Queued, one error toast "Deploy preview failed: build step 3").

## Storyboard as rendered

| Time | Beat |
| --- | --- |
| 0.0 to 0.85 | App icon with teal glow and the wordmark "Sightline" at rest (same state as the last frame). |
| 0.85 to 1.15 | Icon and wordmark fade and shrink out. |
| 1.2 to 1.5 | The dark mock window rises in. |
| 1.55 to 1.85 | Viewfinder brackets tighten on the Jobs table, the rest of the window dims, a "900 × 380" size chip appears. |
| 2.05 to 2.3 | Shutter flash over the region. |
| 2.1 to 2.45 | The captured card lifts off with a shadow. |
| 3.05 to 3.4 | The window fades out and the card grows into the editor canvas. |
| 3.4 to 3.75 | The glass tool pill slides in at the bottom (editor line icons). |
| 3.85 to 4.25 | Arrow draws to the Failed pill. |
| 4.5 to 4.95 | Marker "1" pops with the label "Retry". |
| 5.25 to 5.55 | Blur block covers the "Send digest" line. |
| 6.1 to 6.4 | Editor card and pill fade out. |
| 6.4 to 6.85 | Scrolling window slides in, brackets tighten around it. |
| 7.0, 7.5, 8.0 | Three captures with a short flash; the page scrolls in two steps between them (7.1 to 7.4 and 7.6 to 7.9). Each capture appends a chunk to the strip on the right with a teal seam flash. Chip reads "Stitching · n of 3", then "Stitched · 1200 × 2200 px". |
| 8.3 to 8.6 | Scrolling beat fades out. |
| 8.6 to 9.05 | Mock window slides in from the right, the terminal card "Claude Code" pops in on the left. |
| 9.0 to 9.85 | Types "> screenshot the dashboard and mark the failing job". |
| 10.0 to 10.4 | Status line "Capturing the window" with a spinner; the notice "Sightline / Claude Code took a screenshot" with the icon drops in top right. |
| 10.55 to 11.25 | A red rectangle draws around the "Deploy preview" row and marker "1" pops; status line "Marked the failed job". |
| 11.4 to 11.7 | The first prompt and its status lines fade out of the terminal card, the red rectangle, marker and first notice fade out. The window and the card stay. |
| 11.55 to 11.95 | A toast "Deploy preview failed: build step 3" with a red dot rises into the bottom right of the window. |
| 11.8 to 12.45 | Types "> what does the error toast say". |
| 12.6 to 13.0 | Status line "Reading the screen" with a spinner; the notice "Sightline / Claude Code read the screen" drops in top right. |
| 12.75 to 13.4 | A teal box draws around the toast text, then a light teal fill settles in. |
| 13.35 to 13.7 | Spinner becomes a dot, the answer "Build step 3 failed on deploy preview" appears in teal below it. |
| 14.7 to 15.05 | Everything fades out. |
| 15.1 to 15.65 | Icon and wordmark return, then hold to 16.3 so the last frame matches the first. |

The background blobs run on a 16.3 s period, the glow pulse on the icon uses the same period. Mean absolute difference between the first and last frame is 0.12 of 255 (one frame of background drift).

## Files

| File | Size | Notes |
| --- | --- | --- |
| `marketing_video/Sightline_hero_v2.mp4` | 3.08 MB | H.264, 1920x1080, crf 18, master |
| `marketing_video/Sightline_hero_v2.webm` | 0.80 MB | VP9, 1920x1080, crf 33, b:v 0 |
| `assets/hero.mp4` | 0.65 MB | H.264, 1280x720, crf 27, preset slow, faststart, no audio |
| `assets/hero.webm` | 0.48 MB | VP9, 1280x720, crf 33, b:v 0, no audio |
| `assets/hero-poster.jpg` | 0.03 MB | frame at 3.6 s (editor beat), 1280x720, JPEG quality 80 |
| Hero total on the site | 1.16 MB | limit was 2 MB |

`index.html` references `assets/hero.webm`, `assets/hero.mp4` and `assets/hero-poster.jpg`; the names are unchanged.

## Frames checked

Preview frames from the script at 0.0, 1.7, 2.3, 3.6, 4.9, 5.6, 7.3, 8.05, 9.5, 10.4, 11.1 and 12.0 s for the first cut, plus 11.55, 11.9, 12.3, 12.9, 13.3, 13.8, 14.6 and 15.4 s for the second agent beat, then six frames extracted from the encoded mp4 at 0.5, 2.3, 4.9, 7.6, 10.6 and 13.4 s (`Sightline_showcase_source/preview/hero_v2_*.jpg`). Nothing white or branded appears. After the first preview pass the shutter flashes were shortened and softened (window flash 0.22, area flash 0.4) because the 8.05 s frame read as a light grey page at the flash peak.

## Deviations

- The stage colors and the accent are applied by overriding the engine's module constants inside `render_hero_v2.py`; `engine.py` is unchanged.
- Encoding (masters and site assets) is part of the script's `encode()` step, the earlier scripts encoded by hand.
- The captured card morphs into the editor canvas instead of cutting to it, so the capture and editor beats share one card.
- The scrolling capture scrolls in two steps for three stitched frames rather than one continuous scroll, which reads better at this pace.
- The poster is the editor frame at 3.6 s, not the dim second frame used before.
- The second agent beat (reading the toast) was added after the first cut; the window and the terminal card stay on screen across both beats and only the card content, the marks and the notice change.
- This report is committed with the assets.
