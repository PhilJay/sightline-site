#!/bin/sh
# Renders design/feature-graphic.html to assets/feature-graphic-2400.webp and -1200.webp.
set -e
cd "$(dirname "$0")/.."
tmp=$(mktemp -d)
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu --hide-scrollbars \
  --allow-file-access-from-files --force-device-scale-factor=2 --window-size=1200,750 \
  --screenshot="$tmp/graphic.png" "file://$PWD/design/feature-graphic.html" 2>/dev/null
cwebp -quiet -q 88 "$tmp/graphic.png" -o assets/feature-graphic-2400.webp
cwebp -quiet -q 88 -resize 1200 750 "$tmp/graphic.png" -o assets/feature-graphic-1200.webp
rm -rf "$tmp"
echo "wrote assets/feature-graphic-2400.webp and assets/feature-graphic-1200.webp"
