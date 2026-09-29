# Site v2 design

The landing page presents Sightline as a whole, most important features first, in the same lighter and calmer premium style as the hero loop v3 (`design/hero-v3-design.md`). Approved by Philipp on 29 September 2026.

## Colors

- The stage is the luminous teal of the loop instead of the near-black teal: for example `#2a6b74` fading to `#123238`, with a soft glow behind the hero headline.
- Sections alternate slightly between the lighter and the darker teal, so the page doesn't read as one dark block.
- Cards are a little lighter and semi-transparent with a fine light border. Text is white. Secondary text is a bit stronger than today, so it stays readable on the lighter ground (check contrast, WCAG AA for body text).
- One accent, `#2fb4b6`, for links and highlights. Nothing competes with it.

## Premium tweaks

- Larger, calmer headlines in Manrope semibold, with more space above and below. One statement per section.
- Fewer, larger feature blocks: the five main features each get a large image and text row, alternating left and right. The rest goes into a compact grid of small cards.
- Content fades in with an eased rise while scrolling. It is off with "Reduce motion". No other effects.
- Same font, radii and shadows everywhere.

## Order

1. Hero: headline, the new loop, download.
2. Capture and annotate, showing the slim editor.
3. Your agent sees what it built: the agent checking its own work.
4. Remove background.
5. Scrolling capture, both directions, any app including Terminal.
6. Screen recording with a blur that follows.
7. A compact grid of everything else:
   - pins and tracing
   - history
   - sensitive data (the key and Choose)
   - smart names
   - Capture Text and QR codes
   - paste and arrange
   - Replay
   - Shortcuts and Spotlight
8. The comparison with the macOS screenshot tool (kept, restyled).
9. Privacy and guardrails, short: On-device, No account, You approve every agent.
10. Pricing and download (kept, restyled).

Copy stays close to the store listing (`Sightline/docs/store/listing.md`) and must be factually right: free vs Pro, macOS 27 only for Replay, subject blur and Remove Background.

## Images

- The five large feature images are full-resolution stills from the hero loop v3 (rendered by `render_hero_v3.py`), so the video and the page read as one piece. Export them as WebP at 1040 and 2080 wide, like the existing feature images.
- The grid cards get new small rendered images in the same style where the current ones no longer match (for example pins, history, paste). Keep the rest if they still fit.
- The hero uses the final v3 loop (`assets/hero.*`, under 2 MB total, poster from the annotated editor).

## Checks

The page works at phone width without horizontal scrolling. Lighthouse-style basics: images have sizes and alt text, the videos are muted and loop without audio, and fonts preload. Screenshots of the page at desktop and phone width go to Philipp before anything is pushed. The site deploys from `main`, so all work stays on the `hero-v3` branch until he approves.
