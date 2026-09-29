# Hero loop v3 design

A new 20 s hero loop for the top of the site that presents Sightline as a whole, most important features first, in a calmer and more premium style. Rendered like v2 with a script in `Sightline/marketing_video/Sightline_showcase_source/` (new `render_hero_v3.py`, reusing `engine.py`, `ui.py` and `icons.py`), not recorded. A longer product video with music is decided after this loop.

## Principles

Taken from "Make your product videos look expensive" (leo, September 2026):

- One shot, one idea. The key object is centered, and every shot has room to breathe.
- Nothing by accident: one font (Manrope, the site's font), one background, one accent (`#2fb4b6`). Red only as a signal: the misaligned button and the recording frame.
- Every motion is eased, never linear, and motions overlap slightly. Scenes flow into each other (the captured card becomes the next surface) instead of cutting.
- The rhythm varies: quick moments (a flash, a pop) inside slow, held shots.
- No gimmicks: soft flashes, no bouncy overshoot beyond a subtle spring, no extra effects.

## Look

- The stage stays dark teal (`#163d45` to `#0a1013`), with finer depth than v2: a very subtle film grain and one slow light spot drifting on the 20 s period, instead of moving blobs.
- The same window shape, corner radii, shadow and motion speed in every scene.
- The editor is shown in the current slim layout: actions in the title bar row, one centered bar with tools and options, and color as a single swatch.
- Captions: Manrope at a light-to-medium weight, small, bottom center, at most four words. They fade in with a slight rise (about 8 px) and fade out before the scene changes.
- Generic content only: no real brands, names or personal data. Placeholder words like the v2 dashboard.

## Storyboard

| Time (s) | Scene | What happens | Caption |
|---|---|---|---|
| 0.0-1.2 | Intro | App icon with a soft glow and the wordmark "Sightline", at rest. This is the same frame as the end. | none |
| 1.2-4.6 | Capture and annotate | A window rises. The viewfinder brackets tighten on an area, the rest dims, a gentle flash. The card lifts off with a shadow and becomes the editor canvas, and the slim bar slides in. An arrow draws itself to a status pill, and badge "1" pops. | Capture. Mark it up. |
| 4.6-8.4 | The agent checks its own work | A terminal card types "> build the checkout button". A mock app shows a "Checkout" button 8 px out of line with the field above it. The notice "Claude Code took a screenshot" drops in, and a thin red box outlines the offset. The terminal says "Button is 8 px off, fixing". The button eases into line, a second notice appears, and a teal check reads "Aligned". | Your agent sees what it built. |
| 8.4-11.4 | Remove background | A product photo (a generic object such as a sneaker or a lamp, rendered simply) sits in the editor. The scissors tool highlights, then one click: the subject lifts slightly, the background dissolves into a transparency checkerboard, and the subject settles with a soft shadow. | Lift the subject. |
| 11.4-14.4 | Scrolling capture | A long page scrolls smoothly inside a window with the dim around the area and the red border (as in the app). Strips stack into one tall image on the right, and the HUD counts up "12 frames / 4800 px". | Capture the whole page. |
| 14.4-17.8 | Recording with a following blur | A red recording frame with a timer. A page scrolls, and a blur stays exactly on an email address line and moves with it. | Blur that follows. |
| 17.8-18.8 | Close | Three small chips fade in one after another: "On-device", "No account", "Works with your AI agent". | none |
| 18.8-20.0 | Back to the start | The icon and wordmark return and hold, so the last frame matches the first. | none |

## Output

- Master: `marketing_video/Sightline_hero_v3.mp4` (H.264, 1920x1080, 30 fps, crf 18) and `.webm`.
- Site: `assets/hero.mp4` (1280x720, crf 27, faststart, no audio), `assets/hero.webm` (VP9) and `assets/hero-poster.jpg` (the frame from scene 1 with the arrow drawn). The hero total stays under 2 MB. File names are unchanged, so `index.html` needs no change for the video.
- A report `design/hero-v3-report.md` in the v2 report's format: the storyboard as rendered, the files, the frames checked and any deviations.
- Before anything replaces the site assets, preview frames at the middle of every scene go to Philipp for approval.

## Site (phase 2, after the loop)

Present Sightline as a whole: most important features first, the same order as the loop, with new rendered feature images (remove background, the agent checking its work, the slim editor, history, pins with tracing). Also premium tweaks to the site itself: more whitespace, calmer type scale, fewer and larger feature blocks, subtle eased reveal on scroll, one accent. Detailed in its own design once the loop is approved.
