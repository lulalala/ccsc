# CCSC — Rails → WordPress migration

CCSC (中華基督神修小會) is a Chinese Catholic community site. The legacy app (repo root:
`app/`, `db/`, Rails 4.2/PostgreSQL) is being retired in favor of a new WordPress site under
`wordpress/`. **All active development happens in `wordpress/`.** The Rails app is kept
around only as the source of truth for data being migrated — don't add features to it.

## Local environment

- WordPress runs via **Local** (Local WP / Local by Flywheel), not Docker/vagrant.
  - Site root: `wordpress/app/public`
  - `wp-cli` must be invoked from `wordpress/` with `--path=app/public`, or from inside
    `wordpress/app/public` directly — `wordpress/wp-cli.local.yml` sets `path: app/public`
    and requires `wp-cli.local.php` (defines `DB_HOST` as the Local MySQL socket).
  - Local dev URL: `http://ccsc3.local`
- Theme: **Astra** (classic PHP, not block-based FSE), customized with a warm brown/cream
  palette (`#3d2110`, `#6b3a1f`, `#b07330`, `#fef5e7`, `#fdf6ec`).
- All custom logic (CPTs, taxonomies, shortcodes, content filters, header CSS) lives in one
  mu-plugin-style plugin: `wordpress/app/public/wp-content/plugins/ccsc-cpt/ccsc-cpt.php`.
  There is no theme child-theme — everything goes through this plugin file.

## Migration architecture

Data moves **Rails/Postgres → generated SQL → `wp db query`**, not through WP-CLI importers
or the REST API. The pipeline:

1. Ruby exporters in `wordpress/exporters/*.rb` connect directly to the Rails dev Postgres DB
   (`ccsc_development`) via the `pg` gem and read source tables.
2. Each exporter writes a numbered, self-contained `.sql` file to `wordpress/sql/`
   (`SET NAMES utf8mb4; SET foreign_key_checks = 0; ... INSERT ...; SET foreign_key_checks = 1;`).
3. `wordpress/exporters/run_all.rb` requires and runs every exporter in order, then prints the
   `wp db query < sql/NN_*.sql` import commands.
4. Import order matters (terms before posts that reference them, parents before children):
   `01_terms → 02_notices → 03_periodicals → 04_periodical_entries → 05_info_pages →
   06_navigation → 07_schedules → 08_culture_entries`.

Run the whole pipeline with:
```bash
cd wordpress/exporters && ruby run_all.rb
cd .. && wp db query < sql/01_terms.sql   # ...through 08_culture_entries.sql
```

Shared helpers live in `wordpress/exporters/base.rb`:
- `db` — memoized PG connection (`PGDATABASE`/`PGHOST`/`PGUSER`/`PGPASSWORD` env vars,
  defaults to `ccsc_development` on localhost)
- `escape_string` / `escape` — SQL string escaping
- `format_date` — Postgres timestamp → MySQL `'YYYY-MM-DD HH:MM:SS'`
- `wp_sanitize_title(str)` — **must** mirror WordPress's `sanitize_title()`: lowercases ASCII,
  percent-encodes non-ASCII (Chinese) bytes as lowercase hex. Term/post slugs generated in
  Ruby have to match this exactly or `get_term_by('slug', ...)` / permalink lookups fail in WP.
- `sql_output(filename) { |f| ... }` — wraps a block in the SET NAMES/FK-checks boilerplate

### ID offset scheme (avoids collisions with WP's own posts/terms)

All defined in `base.rb`:

| Constant | Value | Use |
|---|---|---|
| `TERM_GROUP_OFFSET` | 100 | `group` taxonomy term_id = 100 + `groups.id` |
| `TERM_TYPE_FOUNTAIN` / `TERM_TYPE_SEED` | 200 / 201 | `periodical_type` terms |
| `TERM_CULTURE_OFFSET` | 300 | `culture_category` term_id = 300 + `categories.id` |
| `TERM_TAG_OFFSET` | 400 | `post_tag` term_id = 400 + `tags.id` (culture entry tags) |
| `NOTICE_OFFSET` | 10,000 | wp post ID = `notices.id` + 10000 |
| `PERIODICAL_OFFSET` | 20,000 | wp post ID = `periodicals.id` + 20000 |
| `ENTRY_OFFSET` | 30,000 | wp post ID = `periodical_entries.id` + 30000 |
| `ATTACHMENT_OFFSET` | 40,000 | wp post ID = periodical cover attachment stub |
| `INFO_OFFSET` | 50,000 | wp post ID = `infos.id` + 50000 (nav-relevant Info pages only) |
| `SCHEDULE_OFFSET` | 60,000 | wp post ID = `schedules.id` + 60000 |
| `SCHEDULE_PAGE_ID` | 65,000 | the single 行事曆 page hosting `[ccsc_schedules]` |
| `CULTURE_OFFSET` | 70,000 | wp post ID = `culture_entries.id` + 70000 |
| `COMMENT_OFFSET` | 100,000 | wp comment_ID = `comment_posts.id` + 100000 |

**`PRODUCTION_DOMAIN`** in `base.rb` is still the literal placeholder
`'https://PRODUCTION_DOMAIN_HERE'` — it's swapped into attachment `guid`s and needs a real
value (`https://2nee.org`) before a production export/import.

### Migrated models → WordPress shape

Full Rails-side model reference (columns, associations, public URLs, rendered HTML structure)
is documented in `wordpress/page_types.md` — read that before touching an exporter or the
corresponding CPT logic. Summary of the WP side:

| Rails model | WP `post_type` | Taxonomies | Notes |
|---|---|---|---|
| `Group` | *(taxonomy only)* | `group` (on `notice`, `schedule`) | no own CPT |
| `Notice` | `notice` | `group` | |
| `Schedule` | `schedule` | `group` | `public=false`; no single/archive view — only rendered via `[ccsc_schedules]` shortcode on the one 行事曆 page. `save_post` recursion guard not needed here (no meta box). |
| `Periodical` (STI: Fountain/Seed) | `periodical` | `periodical_type` | cover image → attachment stub + `_thumbnail_id`; `issue`/`catalogue` as postmeta |
| `PeriodicalEntry` | `periodical_entry` | — | `post_parent` = parent periodical's WP ID; `author`/`periodical_category` as postmeta; post_status inherits parent's `public` flag |
| `Info` (4 of many) | `page` | — | only intro/purpose/history/timeline (nav-relevant) exported, at fixed IDs 50001–50004 |
| `CultureEntry` | `culture_entry` | `culture_category` (flattened, 3 terms), `post_tag` | comments → `wp_comments`; `author` postmeta; tags via `acts-as-taggable-on` (`context='culture_entry_tags'`) |

All CCSC CPTs use `?p=ID` permalinks (see `ccsc_plain_permalink()` in ccsc-cpt.php) — WordPress
pretty permalinks are **not** used for migrated content, so there's no rewrite-rule flushing to
worry about after schema changes.

**Category flattening**: `CultureEntry` categories were a 2-level hierarchy in Rails
(`categories` table, `scope='文化福傳'`) but are flattened to 3 flat `culture_category` terms
in WP (301 信仰與文化, 302 信仰我見我思, 303 論文) since the extra nesting added no value.
The `CATEGORY_MAP` mapping (leaf-category id → flattened term id) lives inline in
`culture_entries_exporter.rb`.

## `ccsc-cpt.php` plugin — key patterns

- **CPT/taxonomy registration** is centralized in `ccsc_register_post_types()` /
  `ccsc_register_taxonomies()`. When adding a new migrated model, add it here, add its type to
  `$ccsc_types` in `ccsc_plain_permalink()`, and if it needs a tag/category filter also touch
  `ccsc_resolve_p_for_cpts()` / `ccsc_tag_archive_include_culture()`.
- **`the_content` filters** (one per CPT: `ccsc_periodical_entry_list`,
  `ccsc_periodical_entry_meta`, `ccsc_culture_entry_meta`) inject breadcrumbs/bylines/entry
  tables to reproduce the Rails views' layout, since Astra's default single-post template
  doesn't know about these custom fields.
- **`the_author` filter** (`ccsc_culture_entry_author_name`): all migrated posts are owned by
  WP user ID 1 (no real WP user accounts were migrated), so the real author name is stored as
  the `author` postmeta and swapped in via this filter wherever WP would show the post author.
- **Meta boxes + `save_post_periodical_entry`**: periodical ⇄ periodical_entry parent/child
  relationship is managed by custom meta boxes, not Gutenberg's page-attributes UI. The save
  handler updates `post_parent` via **direct `$wpdb->update()`**, not `wp_update_post()` —
  calling `wp_update_post()` inside a `save_post` hook re-triggers `save_post` and caused
  infinite recursion (see commit `3be9b2b`). Follow this pattern for any future parent-setting
  logic triggered from `save_post`.
- **`[ccsc_schedules]` shortcode**: renders one section per `group` term showing that group's
  single latest `schedule` post — mirrors the Rails `/schedules` page, which only ever shows
  the latest schedule per group (history is kept in the DB/WP but not publicly listed).

## Image migration

Rails stored uploads three ways, all requiring manual relinking after SQL import:
- **CarrierWave periodical covers** (`public/uploads/fountain/image/{id}/{file}`, production
  only, not in the dev repo) — fetched via `wordpress/download_images.sh` (uses `wp post list
  --post_type=attachment` to enumerate stub `guid`s, strips the domain, rsyncs the relative
  path under `wp-content/uploads/`). Run *after* SQL import, from the repo root.
- **CKEditor inline images** in `posts.body` / `culture_entries` HTML
  (`/uploads/ckeditor/...`, Rails-root-relative) — rewritten to
  `/wp-content/uploads/ckeditor/...` at export time via `rewrite_ckeditor_paths()` in
  `base.rb`, not via a post-import `wp search-replace`. **Every exporter that emits a body
  must pipe it through this helper** (`notices`, `schedules`, `periodical_entries`, `infos`,
  `culture_entries` all do) — `schedules_exporter.rb` was missing it and its images 404'd
  until the paths were patched in place. The helper's negative lookbehind makes it idempotent,
  so it's safe to apply to already-rewritten bodies.
- **Base64 `data:` URIs** pasted inline into CKEditor — 99 of them, ~105 MB of base64 across
  38 `notice`, 5 `periodical_entry` and 1 `culture_entry` posts (62% of the whole `wp_posts`
  table). The exporters pass post bodies through untouched, so **these come back on every
  re-import** and must be extracted again with `wordpress/extract_inline_images.php`:

  ```bash
  cd wordpress
  wp db export ../backup-before-inline-extract.sql   # it rewrites post_content in place
  wp eval-file extract_inline_images.php dry-run     # positional flag, NOT --dry-run
  wp eval-file extract_inline_images.php
  wp db query "OPTIMIZE TABLE wp_posts"              # InnoDB won't release the ~100 MB otherwise
  ```

  It decodes each data URI, writes it to `uploads/YYYY/MM/{post_type}-{post_id}-{n}.{ext}`,
  creates a real attachment (parented to the source post, with generated thumbnail sizes), and
  rewrites only the `src` attribute to a site-relative `/wp-content/uploads/...` URL — matching
  the CKEditor convention above. Safe to re-run; once the data URIs are gone it is a no-op.

Known gotchas already fixed once (re-check if images break again after a fresh import):
- `_wp_attached_file` postmeta must **not** include a leading `uploads/` — WP resolves it
  relative to `wp-content/uploads/` already.
- Attachment `guid` needs `PRODUCTION_DOMAIN` replaced with the actual local/prod URL.
- Images over 2560px get a `-scaled` variant that WP treats as the canonical "full" size, while
  the larger original stays on disk. Content `src` must use
  `wp_get_attachment_image_url($id, 'full')`, **not** the URL returned by `wp_upload_bits()`,
  or pages serve the oversized original.
- `wp eval-file` passes its trailing arguments as a local `$args`; a `global $args;` declaration
  in the script shadows it with `null` and silently disables flag parsing.

## Adding a new migrated model — checklist

1. Read the Rails model's shape in `wordpress/page_types.md` (add a section there first if
   it's not documented).
2. Pick unused ID offset(s) in `base.rb`, following the existing `*_OFFSET = N_000` convention.
3. Write `wordpress/exporters/<model>_exporter.rb` (mirror an existing one — `schedules_exporter.rb`
   is the simplest template, `culture_entries_exporter.rb` the most complete with
   taxonomies/tags/comments).
4. Add `require_relative` + the `export_*` call to `run_all.rb`, in dependency order, and
   update the printed import command list.
5. Register the CPT/taxonomies in `ccsc-cpt.php`, add to `ccsc_plain_permalink()`'s
   `$ccsc_types`, add any `the_content`/`the_author` filters needed to reproduce the Rails
   view.
6. Regenerate + import: `ruby exporters/run_all.rb && wp db query < sql/NN_whatever.sql`.
7. Verify via `?p=ID` and the archive/taxonomy-filter URLs, same shape as
   `page_types.md`'s "Public URLs" per model.
