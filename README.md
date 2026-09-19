# Sightline site

This is the static landing site for Sightline, a macOS screenshot app with a built in MCP server for AI agents. Preview it locally with `python3 -m http.server 8000` in this folder and open http://localhost:8000. It deploys as GitHub Pages from the `main` branch.

Styles live in `styles.css` and are copied into each page by `./build.sh`, so nothing blocks the first paint. Edit `styles.css`, run the script, and commit both.
