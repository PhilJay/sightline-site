# Hero loop v3 report

Rendered on 29 September 2026 with `render_hero_v3.py` in `Sightline/marketing_video/Sightline_showcase_source/` (design revisions 1 and 2 included). 23.3 s, 1920 by 1080, 30 fps, 699 frames, silent, seamless loop on a lighter teal stage (`#2a6b74` to `#123238`) with a soft white-teal glow behind the centre, a still film grain and one slow light spot on the 23.3 s period. One accent (`#2fb4b6`). Red only marks the misaligned button and the capture and recording frames. Headlines are Manrope Bold in white with a soft dark-teal shadow. The content is generic: a dashboard with job names, a "Shop" checkout form, a lamp product photo, a "Field notes" article and an account page with `hello@example.com`.

Every scene opens with its headline large and centred (104 px). The headline then eases up and shrinks to 50 px above the window, and fades when the scene needs the top of the frame. Windows are 1400 by 875 (25 % larger than the first cut). They arrive with a 13 degree tilt that settles flat, and every shot pushes in slowly (about 1.045). All motion is eased.

## Storyboard as rendered

| Time | Beat |
| --- | --- |
| 0.0 to 1.0 | App icon with glow and the wordmark "Sightline" at rest (same state as the last frame), fading and shrinking out from 0.68. |
| 0.85 to 3.85 | Headline "Capture. Mark it up." large, then rising at 1.2. |
| 1.45 to 2.35 | The dashboard window arrives with the tilt. |
| 1.9 to 2.3 | Viewfinder brackets tighten on the Jobs table, the rest of the window dims. |
| 2.33 | Soft flash over the area. |
| 2.4 to 3.35 | The captured card lifts off with a shadow, the window becomes the editor, and the card settles as its canvas. |
| 2.8 to 3.25 | Title-row actions and the slim bar (tools, color swatch, width, shadow) ease in. |
| 3.2 to 3.82 | A teal arrow draws to the Failed pill and badge "1" pops. The active tool moves from Arrow to Number. |
| 3.78 to 4.2 | The scene fades out. |
| 4.2 to 6.75 | Headline "Your agent sees what it built.", rising at 4.6. |
| 4.9 to 5.8 | Terminal card "Claude Code" and the Shop preview window arrive together. |
| 5.25 to 6.15 | Types "> build the checkout button". |
| 6.3 to 6.65 | The teal Checkout button appears 8 px out of line with the fields. |
| 6.75 to 7.6 | Notice "Sightline / Claude Code took a screenshot" drops in and leaves. |
| 7.25 to 7.9 | The camera zooms to 1.25 onto the button, keeping the terminal in view. |
| 7.9 to 8.2 | Red measurement guide with the label "8 px". |
| 8.1 | Terminal: "Button is 8 px off, fixing" with a spinner. |
| 8.5 to 9.1 | The button eases into line. The label counts down to "0 px" and the guide turns teal. |
| 9.2 to 9.7 | Zoom back out. The terminal shows the teal check "Aligned" (9.4). |
| 9.75 to 10.2 | The scene fades out. |
| 10.2 to 11.45 | Headline "Lift the subject.", rising at 10.5. |
| 10.75 | The editor with the lamp photo arrives. |
| 11.0 to 11.42 | The cursor moves to the scissors tool and clicks. |
| 11.4 to 12.0 | The camera leans in on the lamp (1.2). |
| 11.5 to 12.65 | The lamp lifts, the backdrop dissolves outward into a checkerboard, and the lamp settles with a soft shadow. "Restore background" appears in the bar (12.3). |
| 12.65 to 13.1 | The scene fades out. |
| 13.1 to 14.1 | Headline "Capture the whole page.", rising at 13.38. |
| 13.62 | Window and stitched strip arrive. |
| 13.92 to 14.22 | Dim around the area, red border, scrolling HUD. |
| 14.1 to 15.12 | The page scrolls smoothly. Frames 1 to 12 stack into the strip on the right, which shrinks to fit. The HUD counts to "12 frames / 4800 px". |
| 15.13 to 15.45 | Done pressed, dim and HUD fade. |
| 15.35 to 15.8 | The scene fades out. |
| 15.8 to 16.5 | Headline "Blur that follows.", rising at 16.0. |
| 16.15 | The account window arrives. |
| 16.45 to 16.7 | Red recording frame and dim, recording HUD with a pulsing red dot. The timer counts from 0:00 at 16.55 to 0:04. |
| 16.85 to 17.15 | Blur over the email line. |
| 17.4 to 18.4 and 18.9 to 19.9 | The page scrolls twice. The blur follows the line. |
| 20.68 | Stop pressed. Frame and HUD fade by 20.98. |
| 20.8 to 21.48 | The window shrinks into a clip card with a play glyph and a "0:04" badge. A strip of the recording editor's timeline slides in below, and its playhead moves until 22.0. |
| 21.75 to 22.0 | The scene fades out. |
| 22.0 to 22.78 | Chips "On-device", "No account", "Works with your AI agent" fade in one after another (0.08 s apart), then fade out. |
| 22.68 to 23.3 | Icon and wordmark return, then hold to 23.3 so the last frame matches the first. |

The mean absolute difference between the first and last frame is 0.019 of 255. An ordinary step between two frames is 0.024.

## Files

| File | Size | Notes |
| --- | --- | --- |
| `marketing_video/Sightline_hero_v3.mp4` | 11.02 MB | H.264, 1920x1080, crf 18, master |
| `marketing_video/Sightline_hero_v3.webm` | 2.84 MB | VP9, 1920x1080, crf 33, b:v 0 |
| `assets/hero.mp4` | 0.98 MB | H.264, 1280x720, crf 29, preset slow, faststart, no audio |
| `assets/hero.webm` | 0.87 MB | VP9, 1280x720, crf 37, b:v 0, no audio |
| `assets/hero-poster.webp` | 0.02 MB | frame at 3.77 s (annotated editor), 1280x720 |
| Hero total on the site | 1.86 MB | limit 2 MB |
| `assets/feature-v3-capture-1040.webp` / `-2080.webp` | 14 KB / 63 KB | annotated editor, 3.9 s |
| `assets/feature-v3-agent-1040.webp` / `-2080.webp` | 14 KB / 57 KB | close-up with the "8 px" guide, 8.4 s |
| `assets/feature-v3-cutout-1040.webp` / `-2080.webp` | 20 KB / 72 KB | lamp on the checkerboard, 12.6 s |
| `assets/feature-v3-scrolling-1040.webp` / `-2080.webp` | 12 KB / 38 KB | scrolling with the strip, 14.75 s |
| `assets/feature-v3-recording-1040.webp` / `-2080.webp` | 10 KB / 32 KB | recording with blur and timer, 19.3 s |

The stills are 16:10 (1040x650 and 2080x1300), without headlines or the notice. They come from `render_stills()` (`python3 render_hero_v3.py --stills`, also part of `--final`).

## Frames checked

First cut: preview frames at 0.6, 2.2, 2.9, 3.4, 4.2, 4.65, 6.5, 6.9, 8.1, 8.5, 9.9, 10.3, 10.9, 12.9, 13.9, 16.1, 16.9, 17.7, 18.3 and 19.95 s, plus a scan of frame-to-frame differences over the whole loop to find pops. Revisions 1 and 2: contact sheets of 20 frames each (`preview/hero_v3_contact.jpg`), with the final one at 0.5, 1.15, 1.8, 3.6, 4.45, 7.3, 8.6, 9.3, 9.8, 10.35, 11.95, 12.6, 13.3, 14.7, 16.0, 17.9, 19.5, 20.6, 21.6 and 22.25 s, plus 23.25 s. Final encode: frames from `hero.mp4` at 14.7 s and `hero.webm` at 1.8 s at 720p. Checked for readability at 720p, overlaps, crops and white flashes.

Fixes from the checks:
- a light band in the editor background;
- the red guide cutting through form labels;
- the account sidebar scrolling with the page;
- too busy seam flashes on the strip;
- shadows and window fades that popped;
- the headline passing over arriving windows;
- a notice fading over the zoomed view;
- the agent close-up cropping the Checkout button;
- the recording zoom cropping the window.

## Deviations

- One accent: the editor's Save button is teal instead of the app's blue, the trash icon is muted white instead of red, and window buttons are grey (inactive). Annotations (arrow, badge) are teal.
- The Remove Background scissors icon is drawn by hand, because the app uses an SF Symbol that is not in the editor icon set.
- The film grain is still (baked into the stage), not moving, to keep the site files small. The light spot moves on the loop period.
- The misalignment is drawn as 16 px at 2x (20 px on screen) so it reads at 720p. The label and terminal say "8 px".
- Scenes do not morph into each other. Each opens on the stage with its headline, and its window arrives tilted. The captured card still becomes the editor canvas inside scene 1.
- Headlines fade after rising in the agent, cutout, scrolling and recording scenes, so the notice, the zoom and the HUDs have the top of the frame.
- The agent scene has one notice instead of two.
- The recording HUD is drawn outside the camera move so it stays in view. The clip card and the timeline strip are simplified.
- The camera zooms by scaling the rendered 1080p frame, so the closest moments are slightly soft in the master (fine at 720p). The 2080 wide stills are upscaled from a 1728x1080 crop.
- The loop is 23.3 s instead of 20 s, after revision 2 lengthened the recording scene.
- The poster is `hero-poster.webp`, the file `index.html` references, instead of a `.jpg`.
- `index.html` still requests the video with `?v=8`, so cached visitors may see the old loop until the version is bumped.
- Site encodes use crf 29 (H.264) and crf 37 (VP9) instead of 27 and 33 to stay under 2 MB.
- Headlines, chips, the wordmark and the page text in the mocks use Manrope. The macOS interface (bar, HUDs, notice) uses SF.
