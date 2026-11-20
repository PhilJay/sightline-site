# Sightline site

Always use the PhilJay GitHub account in this repo. Git pushes go through the `github-philjay` SSH host. For `gh`, run `gh auth switch --user PhilJay` first.

Styles live in `styles.css`. Edit that file and run `./build.sh`, never the inlined `<style>` block in the pages.

New pages for SEO, offers or AI search go into `_pages/` as `<slug>.en.html` and `<slug>.de.html`, see "Adding a page" in the README. Build them from the components in `_pages/_components` and reuse them instead of writing your own markup or class names. Add a new component only when none fits, and keep it general so later pages can use it. Give time-limited pages an `expires` date. Run `./build.sh`, look at the page in a browser (`python3 -m http.server 8000`), and commit the page source together with the changed `sitemap.xml`, `llms.txt` and `llms-full.txt`. The built `/<slug>/index.html` files stay out of git, `build.sh` lists them in `.gitignore`.

Every page that search engines may index must be in `sitemap.xml`, and every English one also in `llms.txt` with a one-line summary, and listed in `llms-full.txt`. Pages from `_pages/` get this from `./build.sh`. For pages written by hand, like the docs, add the entries yourself, and also set the canonical URL, description, `og:*` tags and, if a German version exists, `hreflang` links. Pages that should stay out of search get `<meta name="robots" content="noindex">`. `./build.sh` warns about every page that is missing from `sitemap.xml` or `llms.txt`, and the build must finish without warnings before you commit.

## SEO page guidelines

- Keep copy short and scannable. A page body should read in about two minutes, roughly 400 to 600 words in English including the FAQ. One or two sentences per paragraph, at most one paragraph before a list or an image, bullets of one line each, four to six FAQ answers of one or two sentences.
- Put the search phrase the page targets into the title, one section heading and the first paragraph, written naturally.
- Check spacing before opening a pull request. Look at the built page at 1280 px and 390 px wide (for example `google-chrome --headless=new --window-size=1280,6000 --screenshot=...`), and fix uneven gaps, cramped text under cards and lines that break badly through the components and `styles.css`, not with inline styles.
- Make new graphics when they explain something better than an existing screenshot, such as a simple SVG diagram of a flow. Put them in `assets/seo/`, use the colors and Manrope from `styles.css`, give them a real `alt`, `width` and `height`, and make a German version when the graphic has text.
- Every product fact must match the docs in `docs/` and the app. Prices, limits, setting names and button labels are copied from there, not from memory.
- Comparisons with other products must be factual, sourced, dated ("as of" with the date) and neutral, say where the other product is the better fit, use names only to identify products (no logos), and end with a note that the names are trademarks of their owners and Sightline is not affiliated with them.
- Every page exists in English and German (`<slug>.en.html` and `<slug>.de.html`), with natural German rather than a word-for-word translation.
- Agents put new and changed pages on a branch and open a pull request. The owner reviews and merges, agents never push them to `main`.

## Deploying

A push to `main` deploys the site. The GitHub Action in `.github/workflows/deploy.yml` runs `./build.sh` and publishes the result to GitHub Pages, and it also runs daily to take expired pages offline. After a push, check that the run passed with `gh run list --limit 1` and that the new URL loads on https://sightlinemac.com. Don't change the GitHub Pages settings, the custom domain or the workflow without asking. URLs of published pages must not change, because search engines and links already point to them.

`AGENTS.md` only points here, so keep all instructions in this file.
