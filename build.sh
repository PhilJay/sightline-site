#!/bin/sh
# Builds the pages from _pages/, updates the sitemap and llms files, and copies styles.css into every page.
set -e
cd "$(dirname "$0")"
python3 build.py
