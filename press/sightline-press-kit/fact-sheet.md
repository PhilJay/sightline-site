# Sightline press kit

Sightline is a screenshot and screen recording app for the Mac with an image and video editor, and every feature in it is also available to AI agents like Claude Code and Codex through a built-in MCP server.

## Facts

- Developer: Philipp Jahoda, indie developer from Austria
- Released: 22 September 2026 on the Mac App Store, current version 1.9.0
- Platform: macOS 14 or later, recording needs macOS 15
- Price: free download with area and full screen capture. Sightline Pro: 7 days free, then $3.99 a month, $24.99 a year or $29.99 once
- Languages: English, German, French, Spanish, Italian, Dutch, Portuguese, Japanese, Korean
- Website: https://sightlinemac.com
- App Store: https://apps.apple.com/app/id6812521593
- Contact: Philipp Jahoda, philjay.librarysup@gmail.com

## The story

When building apps with Claude Code, I kept running into the same problem: the agent couldn't see what it had built. So I built Sightline and gave the agent access to it. The first time it changed Sightline's own editor, it captured the window, saw that labels were cut off in a narrow window, and fixed the layout before telling me it was done.

That became the idea: one app that is a really good screenshot and recording tool for people, and gives AI agents the same tools. An agent can capture the window it just built, compare it with the design, and fix what is off. It can also draw live into the editor you have open, and everything it draws stays editable for you.

## What it does

- Screenshots: area, window, full screen and scrolling capture with the macOS shortcuts, freeze the screen, text recognition and QR codes
- Image editor: arrows, shapes, text, highlights, spotlight, step numbers and a blur that follows a face or a line of text, each on a single key. Style adds a background, padding and a shadow. Remove Background on macOS 27
- Screen recording and video editor: a timeline with clips, speed from 0.5x to 15x, sound, crop, zoom on clicks, keystrokes, a smooth pointer, and blurs that stay on what they cover while the page scrolls. Export to MP4, MOV or GIF
- History: everything you copied or saved, searchable by the text inside the screenshots. Captures are named after what is in them
- Privacy: passwords and API keys are found and blurred before you share. No account, no analytics, no server; text recognition, naming and the secret check run on device
- For AI agents: a local MCP server and CLI with 23 tools. Agent access is off by default, every new agent asks once, and agents only read and write inside the screenshot folder

## Files

- `screenshots/`: the framed App Store screenshots, 2880 x 1800
- `icon/`: the app icon at 1024 x 1024
- `video/`: the 1080p App Store preview, only in the kit from https://sightlinemac.com/press/sightline-press-kit.zip
