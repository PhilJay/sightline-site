# Agent flows loop report

Rendered on 15 September 2026 with `render_agent_flows.py` in `Sightline/marketing_video/Sightline_showcase_source/`. 24.3 s, 1920 by 1080, 30 fps, 729 frames, silent, seamless loop on the same dark teal stage as the hero loop. The script imports `render_hero_v2.py` and reuses its mock dashboard, window, arrow, marker, highlight box, status lines, colors and easing, so both videos read as one family. The terminal card "Claude Code" sits on the left, the mock window on the right, the Sightline notice chip drops in top right. Nothing white or branded appears in the mock.

## Storyboard as rendered

| Time | Scene |
| --- | --- |
| 0.0 to 0.3 | Stage only (same state as the last frame). |
| 0.3 to 0.75 | Window slides in from the right, the terminal card pops in on the left. |
| 0.75 to 3.9 | Scene 1: types "> list my open windows", status "Listing windows", answer "Dashboard, Mail, Notes" in teal, then types "> screenshot the dashboard window", status "Capturing the window". |
| 3.35 to 4.2 | Brackets tighten around the window, shutter flash, notice "Claude Code took a screenshot". The window lifts as a captured card (teal glow, deeper shadow, brighter outline) and settles back as the scene fades at 5.05 to 5.35. |
| 5.7 to 6.6 | Scene 2: types "> mark the failing job and number the retry button", status "Annotating the screenshot", notice "Claude Code annotated a screenshot". |
| 6.95 to 7.9 | A red arrow draws to the Failed badge, marker "1" pops with the label "Retry", status "Arrow and marker added". Fade at 9.65 to 9.95. |
| 10.3 to 12.35 | Scene 3: types "> find the word Reports and scroll capture that section", status "Reading the screen", notice "Claude Code read the screen", a teal box draws around "Reports" in the sidebar, status "Found Reports in the sidebar". |
| 12.45 to 14.65 | The window narrows to make room, brackets tighten, notice "Claude Code took a scrolling screenshot", three captures at 13.05, 13.55 and 14.05 with the page scrolling between them, each appends a chunk to the strip on the right, chip "Stitching · n of 3" then "Stitched · 1200 × 2200 px". |
| 15.35 to 15.95 | Scene 3 fades, the window scrolls back to the top and widens again. |
| 16.0 to 17.85 | Scene 4: types "> blur the email addresses", status "Annotating the screenshot", notice "Claude Code annotated a screenshot", the two grey address lines of the first job rows get frosted blur blocks, status "Blurred 2 addresses". Fade at 19.65 to 19.95. |
| 20.05 to 22.2 | Scene 5: the error toast "Deploy preview failed: build step 3" rises into the window, types "> what does the error toast say", status "Reading the screen", notice "Claude Code read the screen", a teal box draws around the toast text and a light teal fill settles, answer "Build step 3 failed on deploy preview" in teal. |
| 23.55 to 23.95 | Everything fades out and slides away, the stage rests until 24.3 so the last frame matches the first. |

The background blobs run on a 24.3 s period. Mean absolute difference between the first and last frame is 0.12 of 255 in the rendered frames and 0.28 of 255 in the encoded mp4.

## Files

| File | Size | Notes |
| --- | --- | --- |
| `marketing_video/Sightline_agent_flows.mp4` | 3.29 MB | H.264, 1920x1080, crf 18, master |
| `marketing_video/Sightline_agent_flows.webm` | 0.95 MB | VP9, 1920x1080, crf 33, b:v 0 |
| `assets/agent.mp4` | 0.70 MB | H.264, 1280x720, crf 27, preset slow, faststart, no audio |
| `assets/agent-poster.jpg` | 0.05 MB | frame at 8.05 s (arrow, marker and Retry label drawn), 1280x720, JPEG quality 80 |
| Agent section total on the site | 0.75 MB | limit was 3 MB |

`index.html` references `assets/agent.mp4` and `assets/agent-poster.jpg` as before; the caption next to the video now reads "Agent flows, no sound".

## Frames checked

Preview frames from the script at 0.0, 0.5, 1.4, 3.9, 4.2, 5.2, 8.05, 11.9, 13.7, 15.5, 15.75, 17.3, 17.6, 22.0, 23.7 and 24.27 s, then six frames extracted from the encoded mp4 at 3.9, 8.05, 11.9, 13.8, 17.6 and 22.0 s (`Sightline_showcase_source/preview/agent_flows_*.jpg`). After the first pass the blur blocks got a faint frosted tint because pixelating the dark grey bars alone was nearly invisible, and the window lift was reduced so the lifted window stays clear of the notice chip.

## Deviations

- The terminal card is 300 px tall instead of 280 so scene 1 fits two prompts and three status lines.
- The notice chip widens to the left when its label is longer than the 540 px chip of the hero ("Claude Code took a scrolling screenshot").
- The scrolling capture narrows the window to 840 px and shows a 250 px strip on the right; the hero has a wider window and a taller strip because it has no terminal card.
- Blur blocks are the hero's pixelation plus a 9 percent white tint.
- The window and the terminal card stay on screen across all five scenes; only their contents, the marks and the notice fade between scenes.
