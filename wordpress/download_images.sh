#!/usr/bin/env bash
# Downloads Periodical cover images from production to the WordPress uploads directory.
# Run this after importing SQL files, from the project root (not the wordpress/ directory).
#
# Prerequisites:
# - wp-cli available in wordpress/ (via Local)
# - PRODUCTION_DOMAIN set correctly in wordpress/exporters/base.rb
# - SQL files already imported
#
# Usage: bash wordpress/download_images.sh

set -euo pipefail

WP_DIR="$(dirname "$0")/app/public"
UPLOADS_DIR="$WP_DIR/wp-content/uploads"

echo "Fetching attachment list from WordPress..."

# Get all attachment posts that are children of periodical posts
cd "$(dirname "$0")"
ATTACHMENTS=$(wp --path=app/public post list \
  --post_type=attachment \
  --fields=ID,guid \
  --format=csv \
  --posts_per_page=9999 \
  2>/dev/null | tail -n +2)

if [ -z "$ATTACHMENTS" ]; then
  echo "No attachments found. Have you imported the SQL files?"
  exit 1
fi

echo "Downloading images..."

while IFS=',' read -r post_id guid; do
  # Extract path after domain (e.g. uploads/fountain/image/5/cover.jpg)
  rel_path=$(echo "$guid" | sed 's|https\?://[^/]*/||')
  dest="$UPLOADS_DIR/$rel_path"
  dest_dir=$(dirname "$dest")

  if [ -f "$dest" ]; then
    echo "  [skip] $rel_path"
    continue
  fi

  mkdir -p "$dest_dir"
  echo "  [download] $guid"
  curl -fsSL "$guid" -o "$dest" || echo "  [warn] Failed: $guid"
done <<< "$ATTACHMENTS"

echo ""
echo "Regenerating thumbnails..."
wp --path=app/public media regenerate --yes

echo ""
echo "Done."
