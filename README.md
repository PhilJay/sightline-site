# Sightline site

This is the static landing site for Sightline, a macOS screenshot app with a built in MCP server for AI agents. Preview it locally with `python3 -m http.server 8000` in this folder and open http://localhost:8000. Every push to `main` deploys it: the GitHub Action in `.github/workflows/deploy.yml` runs `./build.sh` and publishes the site to GitHub Pages, within about a minute. It also runs daily, so pages past their `expires` date go offline by themselves. Build sources and notes (`_pages/`, `design/`, the build scripts and the `.md` files at the top) are not published.

Styles live in `styles.css` and are copied into each page by `./build.sh`, so nothing blocks the first paint. Edit `styles.css`, run the script, and commit both.

## Adding a page

Pages for SEO, offers and AI search live in `_pages/`. Add `_pages/<slug>.en.html` for `/<slug>/` and `_pages/<slug>.de.html` for `/de/<slug>/`. Each file starts with a short header, followed by the page content:

```
---
title: The page title, shown as the big heading
description: One or two sentences for search results, social previews and llms.txt
lead: Optional shorter line under the heading, the description is used otherwise
eyebrow: Optional small label above the heading
updated: 2026-11-20
expires: Optional last day, YYYY-MM-DD
topic: The group on /resources/, for example AI agents
image: Share image, 1200x630, made with design/share-image.sh
image-alt: Description of the share image, needed with image
---
<x-section title="A heading">
  <x-checks>
    <li><b>Point</b> with a short explanation</li>
  </x-checks>
</x-section>
```

Build the content from the components in `_pages/_components`: `x-deal`, `x-section`, `x-steps`, `x-checks`, `x-image`, `x-code`, `x-faq` and `x-question`. The comment at the top of each file lists its attributes, `_pages/black-friday.en.html` shows most of them and `_pages/claude-code-screenshots.en.html` shows `x-code`. A new component is one HTML file there with `{{attribute}}` and `{{content}}` placeholders, plus its CSS in `styles.css`.

Run `./build.sh`. It fills in the components, adds nav, footer, meta tags and structured data from `_pages/_layout.html`, links the English and German version, adds the page to `sitemap.xml`, `llms.txt` and `llms-full.txt`, and turns every `x-question` into FAQ structured data. It also lists every page as a card on `/resources/` and `/de/resources/`, with a filter by topic, and adds related pages at the end of each page. `design/share-image.sh` makes the share image of a page, which is also its card picture. It stops with an error for a missing field, a wrong component attribute, a share image in the wrong size or a taken slug, and warns about pages that miss share data or are not in the sitemap or `llms.txt`.

After the `expires` day, browsers send visitors of the page to the home page, and the next build removes the page and its entries. Deleting a page file and building does the same. Shared wording for both languages is in `_pages/_strings.json`. The built `/<slug>/index.html` files are not committed, `build.sh` lists them in `.gitignore`, and the Action builds them on every deploy. Preview locally with `./build.sh` and `python3 -m http.server 8000`.

Keep pages short and check them at desktop and phone width before opening a pull request. The full SEO page guidelines (length, spacing, new graphics, facts, comparisons, English and German, branch and pull request) are in `CLAUDE.md`.
