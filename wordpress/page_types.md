# Rails Page Types — Model Reference

## Group

**Table:** `groups`

| Column | Type | Notes |
|--------|------|-------|
| id | integer | PK |
| name | string | NOT NULL; 名稱 (Name) |
| created_at | datetime | NOT NULL |
| updated_at | datetime | NOT NULL |

**Associations:**
- `has_many :notices` (inverse_of: :group)
- `has_many :schedules`

**Public URLs:**
- `/groups/:id` — shows group name; if no active notices, displays "目前沒有活動訊息"
- `/groups/:id/notices` — lists all notices for the group (table: title + date)
- `/groups/:id/notices/:id` — single notice

**No image attachment.**

---

## Notice

**Table:** `notices`

| Column | Type | Notes |
|--------|------|-------|
| id | integer | PK |
| group_id | integer | NOT NULL; FK → groups |
| title | string | NOT NULL; 標題 |
| body | text | nullable; 內文 (raw HTML from CKEditor) |
| created_at | datetime | NOT NULL |
| updated_at | datetime | NOT NULL |

**Associations:**
- `belongs_to :group` (inverse_of: :notices)

**Public URLs:**
- `/groups/:group_id/notices` — index, listed by descending id with `created_at` date
- `/groups/:group_id/notices/:id` — shows group name, notice title, and HTML body

**Rendered structure (show):**
```
<h2>{group.name}</h2>
<h1>{notice.title}</h1>
{notice.body — raw HTML}
<a href="/groups/:id/notices">過往活動訊息</a>
```

---

## Periodical

**Table:** `periodicals`

Uses Single Table Inheritance (STI):
- `Fountain` → type = `"Fountain"`, fullname = `"心泉"`, URL base: `/fountains`
- `Seed` → type = `"Seed"`, fullname = `"芥子"`, URL base: `/seeds`

| Column | Type | Notes |
|--------|------|-------|
| id | integer | PK |
| type | string | STI discriminator: "Fountain" or "Seed" |
| issue | integer | NOT NULL; issue number |
| title | string | NOT NULL; issue title |
| catalogue | text | nullable; table of contents (plain text or HTML) |
| image | string | nullable; cover image filename (CarrierWave) |
| public | boolean | NOT NULL, default false; controls publish status |
| created_at | datetime | NOT NULL |
| updated_at | datetime | NOT NULL |

**Associations:**
- `has_many :entries, class_name: "PeriodicalEntry"`

**Image storage:**
- Uploader: `FountainUploader` (CarrierWave, `:file` storage)
- Path on disk: `public/uploads/fountain/image/{periodical.id}/{filename}`
- Production URL: `https://PRODUCTION_DOMAIN/uploads/fountain/image/{id}/{filename}`
- **Images only exist on production**, not in the local development repo

**Public URLs:**
- `/fountains` — Fountain archive (paginated, most recent first)
- `/fountains/:id` — single Fountain: issue#, title, cover image, entry list (table: title + author)
- `/seeds` — Seed archive
- `/seeds/:id` — single Seed

**Rendered structure (show):**
```
<h2>{fullname} 第{issue}期</h2>
<h1>{title}</h1>
<img src="{image.url}">   ← if image present
<table>                   ← catalogue cell (entries)
  {entry.post.title} | {entry.post.author}
  ...
</table>
```

---

## PeriodicalEntry

**Table:** `periodical_entries`

STI subclass: `FountainEntry` (for Fountain periodicals).

| Column | Type | Notes |
|--------|------|-------|
| id | integer | PK |
| periodical_id | integer | NOT NULL; FK → periodicals |
| order | integer | nullable; display order within issue |
| category | string | nullable; article category label |
| created_at | datetime | NOT NULL |
| updated_at | datetime | NOT NULL |

**Associations:**
- `belongs_to :periodical`
- `has_one :post, as: :owner` (polymorphic via `posts` table)
  - `posts.owner_type = "PeriodicalEntry"`, `posts.owner_id = periodical_entry.id`

**Post record** (`posts` table — used for article content):

| Column | Type | Notes |
|--------|------|-------|
| id | integer | PK |
| title | string | NOT NULL |
| body | text | nullable; raw HTML from CKEditor |
| author | string | nullable; author name |
| owner_id | integer | FK → periodical_entries.id |
| owner_type | string | "PeriodicalEntry" |

**Delegations:** `entry.title`, `entry.body`, `entry.author` → via `post`

**Public URLs:**
- `/periodical_entries/:id` — single entry page

**Rendered structure (show):**
```
<a href="/fountains/:periodical_id">{fullname} 第{issue}期 {title}</a>
<h1>{post.title}</h1>
<div class="author">{post.author}</div>
<div class="body">{post.body — raw HTML}</div>
```

---

## Relationship Diagram

```
Group
  ├── has_many :notices
  └── has_many :schedules

Notice
  └── belongs_to :group

Periodical (STI: Fountain, Seed)
  └── has_many :entries → PeriodicalEntry

PeriodicalEntry (STI: FountainEntry)
  ├── belongs_to :periodical
  └── has_one :post (polymorphic via posts table)

Post
  └── belongs_to :owner (PeriodicalEntry)
```
