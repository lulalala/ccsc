# WordPress Migration — Setup & Plugin Reference

## WordPress Environment

- **Managed by:** Local (localwp.com)
- **Directory:** `wordpress/` (within the Rails project repo)
- **Public root:** `wordpress/app/public/`
- **DB name:** `local`; **DB user/password:** `root`/`root`
- **Table prefix:** `wp_`
- **WP-CLI:** available from within `wordpress/` directory (`cd wordpress && wp <command>`)
- **Permalink structure:** Plain (`?p=ID`)

---

## Required Plugins

| Plugin | Slug | Purpose |
|--------|------|---------|
| **Classic Editor** | `classic-editor` | Body/content is raw HTML from CKEditor; Classic Editor preserves it without Gutenberg block conversion |
| **Advanced Custom Fields** | `advanced-custom-fields` | Manages custom fields on CPTs (issue, catalogue, author, periodical_category) |

### Installing via WP-CLI
```bash
cd wordpress
wp plugin install classic-editor --activate
wp plugin install advanced-custom-fields --activate
wp plugin activate ccsc-cpt
```

---

## Custom Plugin: `ccsc-cpt`

**File:** `wordpress/app/public/wp-content/plugins/ccsc-cpt/ccsc-cpt.php`

This plugin registers all Custom Post Types (CPTs) and taxonomies. It must be **activated before importing SQL data** so WordPress recognises the `post_type` values.

### CPTs Registered

#### `notice` — 公告
- Supports: title, editor
- Taxonomy: `group` (one term per Rails Group)
- Archive: yes (`/?post_type=notice`)
- Single: `/?p=ID`

#### `periodical` — 期刊
- Supports: title, thumbnail (cover image), custom-fields
- Taxonomy: `periodical_type` (terms: fountain 心泉, seed 芥子)
- Archive: yes (`/?post_type=periodical`)
- Single: `/?p=ID`

#### `periodical_entry` — 期刊文章
- Supports: title, editor, page-attributes (menu_order), custom-fields
- Hierarchical: no; uses `post_parent` to link to parent Periodical post
- Archive: no (accessed only through parent periodical)
- Single: `/?p=ID`

#### `schedule` — 行事曆
- Supports: title, editor
- Taxonomy: `group` (same terms as notices)
- Not publicly queryable (no archive, no single view) — mirrors Rails, which only exposes the aggregated `/schedules` index
- Public display: the 行事曆 page (`/?page_id=65000`) contains the `[ccsc_schedules]` shortcode, which renders each group's **latest** schedule (body + 更新時間), or 目前暫無活動 when a group has none
- Managed in WP Admin like notices; the newest published schedule per group is what shows on the page

### Taxonomies Registered

#### `group`
- Applied to: `notice` and `schedule` CPTs
- One term per Rails `Group` record
- Used to filter notices by group: `/?post_type=notice&group=<slug>` (schedules never appear in taxonomy archives since they are not publicly queryable)

#### `periodical_type`
- Applied to: `periodical` CPT
- Terms: `fountain` ("心泉"), `seed` ("芥子")
- Used to filter: `/?post_type=periodical&periodical_type=fountain`

---

## ACF Field Groups

Configure these field groups in ACF after activating the plugin:

### Field Group: Periodical Fields
- **Location:** Post Type = `periodical`
- **Fields:**
  - `issue` (Number) — issue number
  - `catalogue` (Textarea or WYSIWYG) — table of contents text

### Field Group: Periodical Entry Fields
- **Location:** Post Type = `periodical_entry`
- **Fields:**
  - `author` (Text) — article author name
  - `periodical_category` (Text) — article category within the issue
  - `periodical_ref_id` (Number) — original Rails periodical_id (for reference)

> ACF field values are stored in `wp_postmeta`. The SQL export writes them directly, so ACF only needs to be active for display/editing — no import step needed for ACF itself.

---

## SQL Import Order

Run in this order to satisfy foreign key dependencies:

```bash
cd wordpress
wp db query < sql/01_terms.sql
wp db query < sql/02_notices.sql
wp db query < sql/03_periodicals.sql
wp db query < sql/04_periodical_entries.sql
wp db query < sql/05_info_pages.sql
wp db query < sql/06_navigation.sql
wp db query < sql/07_schedules.sql
```

---

## Image Migration

Cover images for Periodicals only exist on production. The export inserts attachment posts with production URLs as `guid`. Images can be downloaded later:

```bash
cd wordpress
bash ../download_images.sh
wp media regenerate
```

See `download_images.sh` for details.

---

## Verification Checklist

After import:

- [ ] WP Admin → Settings → Permalinks: "Plain" selected
- [ ] `/?post_type=notice` lists imported notices
- [ ] `/?p=10001` shows a notice with title + HTML body
- [ ] `/?post_type=periodical` lists periodicals
- [ ] `/?p=20001` shows a periodical with ACF fields (issue, catalogue) and thumbnail
- [ ] `/?p=30001` shows a periodical entry with author ACF field + HTML body
- [ ] `/?post_type=notice&group=<slug>` filters notices by group
- [ ] `/?post_type=periodical&periodical_type=fountain` shows only Fountain periodicals
- [ ] `/?page_id=65000` (行事曆) shows one section per group with its latest schedule or 目前暫無活動
- [ ] Nav item 行事曆 links to `/?page_id=65000`
