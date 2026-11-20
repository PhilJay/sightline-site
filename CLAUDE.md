# Sightline site

Always use the PhilJay GitHub account in this repo. Git pushes go through the `github-philjay` SSH host. For `gh`, run `gh auth switch --user PhilJay` first.

Styles live in `styles.css`. Edit that file and run `./build.sh`, never the inlined `<style>` block in the pages.

New pages for SEO, offers or AI search go into `_pages/` as `<slug>.en.html` and `<slug>.de.html`, see "Adding a page" in the README. Build them from the components in `_pages/_components` and reuse them instead of writing your own markup or class names. Add a new component only when none fits, and keep it general so later pages can use it. Give time-limited pages an `expires` date. Run `./build.sh`, look at the page in a browser (`python3 -m http.server 8000`), and commit the page source together with the changed `sitemap.xml`, `llms.txt` and `llms-full.txt`. The built `/<slug>/index.html` files stay out of git, `build.sh` lists them in `.gitignore`.

Every page that search engines may index must be in `sitemap.xml`, and every English one also in `llms.txt` with a one-line summary, and listed in `llms-full.txt`. Pages from `_pages/` get this from `./build.sh`. For pages written by hand, like the docs, add the entries yourself, and also set the canonical URL, description, `og:*` tags and, if a German version exists, `hreflang` links. Pages that should stay out of search get `<meta name="robots" content="noindex">`. `./build.sh` warns about every page that is missing from `sitemap.xml` or `llms.txt`, and the build must finish without warnings before you commit.

## Deploying

A push to `main` deploys the site. The GitHub Action in `.github/workflows/deploy.yml` runs `./build.sh` and publishes the result to GitHub Pages, and it also runs daily to take expired pages offline. After a push, check that the run passed with `gh run list --limit 1` and that the new URL loads on https://sightlinemac.com. Don't change the GitHub Pages settings, the custom domain or the workflow without asking. URLs of published pages must not change, because search engines and links already point to them.

`AGENTS.md` only points here, so keep all instructions in this file.
