# Sightline site

Always use the PhilJay GitHub account in this repo. Git pushes go through the `github-philjay` SSH host. For `gh`, run `gh auth switch --user PhilJay` first.

Styles live in `styles.css`. Edit that file and run `./build.sh`, never the inlined `<style>` block in the pages.

New pages for SEO, offers or AI search go into `_pages/` as `<slug>.en.html` and `<slug>.de.html`, see "Adding a page" in the README. Build them from the components in `_pages/_components` and reuse them instead of writing your own markup or class names. Add a new component only when none fits, and keep it general so later pages can use it. Give time-limited pages an `expires` date. Run `./build.sh`, look at the page in a browser, and commit the source and the generated files together. Never edit the generated `/<slug>/index.html` files.

Every page that search engines may index must be in `sitemap.xml`, and every English one also in `llms.txt` with a one-line summary, and listed in `llms-full.txt`. Pages from `_pages/` get this from `./build.sh`. For pages written by hand, like the docs, add the entries yourself, and also set the canonical URL, description, `og:*` tags and, if a German version exists, `hreflang` links. Pages that should stay out of search get `<meta name="robots" content="noindex">`. `./build.sh` warns about every page that is missing from `sitemap.xml` or `llms.txt`, and the build must finish without warnings before you commit.

`AGENTS.md` only points here, so keep all instructions in this file.

