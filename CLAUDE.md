# Sightline site

Always use the PhilJay GitHub account in this repo. Git pushes go through the `github-philjay` SSH host. For `gh`, run `gh auth switch --user PhilJay` first.

Styles live in `styles.css`. Edit that file and run `./build.sh`, never the inlined `<style>` block in the pages.

New pages for SEO, offers or AI search go into `_pages/` as `<slug>.en.html` and `<slug>.de.html`, see "Adding a page" in the README. Build them from the components in `_pages/_components` and reuse them instead of writing your own markup or class names. Add a new component only when none fits, and keep it general so later pages can use it. Give time-limited pages an `expires` date. Give every page a `topic` (for example `AI agents`, `Screen recording` or `Offers`, in the page's language), reuse an existing topic when it fits, and keep the English and German topic names matching. Run `./build.sh`, look at the page in a browser (`python3 -m http.server 8000`), and commit the page source together with the changed `sitemap.xml`, `llms.txt` and `llms-full.txt`. The built `/<slug>/index.html` files stay out of git, `build.sh` lists them in `.gitignore`.

Every page that search engines may index must be in `sitemap.xml`, and every English one also in `llms.txt` with a one-line summary, and listed in `llms-full.txt`. Pages from `_pages/` get this from `./build.sh`. For pages written by hand, like the docs, add the entries yourself, and also set the canonical URL, description, `og:*` tags and, if a German version exists, `hreflang` links. Pages that should stay out of search get `<meta name="robots" content="noindex">`. `./build.sh` warns about every page that is missing from `sitemap.xml` or `llms.txt`, and the build must finish without warnings before you commit.

## Links between pages

`./build.sh` lists every page from `_pages/` on `/resources/` and `/de/resources/`, grouped by `topic`, and adds up to four related pages at the end of each page. The footer of every page links to Resources. For each new page, also add one or two links in the text of existing pages that cover the same subject, for example the matching FAQ answer on the home page or a docs page, with words that describe the target page. Don't add single pages to the footer or the navigation.

## Share data

Every page needs complete share data so it looks good when shared: canonical URL, `og:type`, `og:title`, `og:description`, `og:url`, `og:image` with `og:image:width`, `og:image:height` and `og:image:alt`, `og:locale`, and `twitter:card` set to `summary_large_image` with `twitter:title`, `twitter:description`, `twitter:image` and `twitter:image:alt`. Pages from `_pages/` get all of this from the layout. They use the general share image unless the page sets `image` and `image-alt`, and a custom image must be a 1200x630 PNG or WebP in `/assets`. `./build.sh` warns about missing share data on every page.

## Deploying

A push to `main` deploys the site. The GitHub Action in `.github/workflows/deploy.yml` runs `./build.sh` and publishes the result to GitHub Pages, and it also runs daily to take expired pages offline. After a push, check that the run passed with `gh run list --limit 1` and that the new URL loads on https://sightlinemac.com. Don't change the GitHub Pages settings, the custom domain or the workflow without asking. URLs of published pages must not change, because search engines and links already point to them.

`AGENTS.md` only points here, so keep all instructions in this file.
