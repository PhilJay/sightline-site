#!/bin/sh
# Copies styles.css into every page so the first paint waits on nothing.
# Edit styles.css, then run this.
set -e
cd "$(dirname "$0")"
python3 - <<'PY'
import re
from pathlib import Path

START = '  <!-- inlined from styles.css, run build.sh after editing it -->'
END = '  <!-- end styles.css -->'

css = Path('styles.css').read_text().strip()
block = f'{START}\n  <style>\n{css}\n  </style>\n{END}'
target = re.compile(
    re.escape(START) + r'.*?' + re.escape(END)
    + r'|  <link rel="stylesheet" href="styles\.css">',
    re.S,
)

for page in sorted(Path('.').glob('*.html')):
    html = page.read_text()
    updated, count = target.subn(lambda _: block, html, count=1)
    if count != 1:
        raise SystemExit(f'{page}: no stylesheet link or inlined block found')
    if updated != html:
        page.write_text(updated)
        print('inlined', page)
PY
