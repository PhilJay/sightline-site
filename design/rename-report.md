# Rename report: Sightline to Sightline

Done on 15 September 2026. The product name on the landing site and in the two marketing loops is now Sightline. The repository folder `sightline-site` and the GitHub URL are unchanged.

## Site text

- `index.html`, `privacy.html`, `imprint.html` and `README.md`: every "Sightline" is now "Sightline", including the `<title>` tags, the nav brand, the comparison table column, the video `aria-label`s, the "Back to Sightline" links and the footer "© 2026 Sightline".
- The App Store placeholder links now read `https://apps.apple.com/app/sightline/id[APP_ID]`.
- The email philjay.librarysup@gmail.com and the GitHub URL are unchanged.
- The site has no CLI or MCP setup snippets, so there was nothing to rename to `sightline-cli`, the `sightline` MCP server name or `/Applications/Sightline.app`. If such snippets are added later they should use those names.
- `styles.css` contains no product name. `design/landing-reference.dc.html`, `design/build-report.md`, `design/hero-v2-report.md` and `design/agent-flows-report.md` are historical and keep the old name.

## Videos

In `Sightline/marketing_video/Sightline_showcase_source/`, `render_hero_v2.py` and `render_agent_flows.py` now draw the wordmark and the notice chip title as "Sightline" (the terminal card title stays "Claude Code"), write the masters as `Sightline_hero_v2.*` and `Sightline_agent_flows.*`, and their docstrings say Sightline. `engine.py` is unchanged. Both scripts were rerun in full, so the masters and the site assets come from the scripts' own `encode()` step with the same ffmpeg settings as in the hero v2 and agent flows reports (H.264 crf 18 masters, VP9 crf 33 masters, 1280x720 H.264 crf 27 preset slow faststart for the site, VP9 crf 33 for `hero.webm`, JPEG quality 80 posters). The old `Sightline_*` masters are still in `marketing_video/`.

| File | Size | Notes |
| --- | --- | --- |
| `marketing_video/Sightline_hero_v2.mp4` | 3.07 MB | 16.3 s, 1920x1080, master |
| `marketing_video/Sightline_hero_v2.webm` | 0.79 MB | 16.3 s, 1920x1080, master |
| `marketing_video/Sightline_agent_flows.mp4` | 3.28 MB | 24.3 s, 1920x1080, master |
| `marketing_video/Sightline_agent_flows.webm` | 0.95 MB | 24.3 s, 1920x1080, master |
| `assets/hero.mp4` | 0.64 MB | 16.3 s, 1280x720 |
| `assets/hero.webm` | 0.48 MB | 16.3 s, 1280x720 |
| `assets/hero-poster.jpg` | 0.03 MB | frame at 3.6 s, byte identical to before because the editor beat shows no wordmark |
| `assets/agent.mp4` | 0.70 MB | 24.3 s, 1280x720 |
| `assets/agent-poster.jpg` | 0.05 MB | frame at 8.05 s, now with the Sightline chip |

Hero total on the site 1.15 MB (limit 2 MB), agent section 0.75 MB (limit 3 MB).

## Frames checked

Three frames from each new master, extracted with ffmpeg into `Sightline_showcase_source/preview/`: `sightline_hero_v2_0.5.jpg` (wordmark), `sightline_hero_v2_10.6.jpg` and `sightline_hero_v2_13.4.jpg` (notice chips), `sightline_agent_flows_3.9.jpg`, `sightline_agent_flows_8.05.jpg` and `sightline_agent_flows_22.0.jpg` (notice chips). All read "Sightline"; the terminal card reads "Claude Code".

## Demo video caveat

`assets/demo.mp4` (1:19, with audio, cut from older real footage) and its poster still show the Sightline name inside the app UI and notices. It was left as is and needs a re-cut with the renamed app before launch.
