#!/bin/sh
# Makes a 1200x630 share image for a page in _pages/, also used as its picture on /resources/.
# Usage: design/share-image.sh <name> "<eyebrow>" "<title>" <screenshot>
# Example: design/share-image.sh claude-code-screenshots "AI agents" "Let Claude Code see your Mac screen" /assets/feature-v3-agent-2080.webp
# Writes assets/share/<name>.webp. Set image: /assets/share/<name>.webp and image-alt in the page file.
set -e
[ $# -eq 4 ] || { sed -n '3,4p' "$0"; exit 1; }
cd "$(dirname "$0")/.."
query=$(python3 -c 'import sys, urllib.parse; print(urllib.parse.urlencode({"eyebrow": sys.argv[1], "title": sys.argv[2], "image": sys.argv[3]}))' "$2" "$3" "$4")
tmp=$(mktemp -d)
mkdir -p assets/share
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --disable-gpu --hide-scrollbars \
  --allow-file-access-from-files --force-device-scale-factor=2 --window-size=1200,630 --virtual-time-budget=3000 \
  --screenshot="$tmp/share.png" "file://$PWD/design/share-image.html?$query" 2>/dev/null
cwebp -quiet -q 88 -resize 1200 630 "$tmp/share.png" -o "assets/share/$1.webp"
rm -rf "$tmp"
echo "wrote assets/share/$1.webp"
