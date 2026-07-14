<?php
/**
 * Extracts base64 data: URIs embedded in post_content into real WordPress attachments.
 *
 * The Rails CKEditor content pasted images inline as data: URIs, and the exporters pass
 * post bodies through untouched — so this must be re-run after every SQL re-import, like
 * download_images.sh.
 *
 * Usage, from wordpress/ :
 *   wp eval-file extract_inline_images.php dry-run
 *   wp eval-file extract_inline_images.php
 *   wp eval-file extract_inline_images.php verbose
 *
 * Idempotent: once the data URIs are gone, a second run is a no-op.
 */

if ( ! defined( 'WP_CLI' ) || ! WP_CLI ) {
	exit( "This script must be run via `wp eval-file`.\n" );
}

require_once ABSPATH . 'wp-admin/includes/image.php';

global $wpdb;

// $args is a local supplied by `wp eval-file`; declaring it global would shadow it with null.
$dry_run = in_array( 'dry-run', (array) $args, true );
$verbose = in_array( 'verbose', (array) $args, true );

$extensions = array(
	'image/png'  => 'png',
	'image/jpeg' => 'jpg',
	'image/gif'  => 'gif',
	'image/webp' => 'webp',
);

if ( $dry_run ) {
	WP_CLI::line( 'DRY RUN — no files written, no posts modified.' );
}

// Revisions are stale copies of content we are about to rewrite; deleting them is the fix.
$revision_ids = $wpdb->get_col(
	"SELECT ID FROM {$wpdb->posts} WHERE post_content LIKE '%data:image%' AND post_type = 'revision'"
);

$post_ids = $wpdb->get_col(
	"SELECT ID FROM {$wpdb->posts} WHERE post_content LIKE '%data:image%' AND post_type != 'revision' ORDER BY ID"
);

if ( ! $post_ids && ! $revision_ids ) {
	WP_CLI::success( 'No inline base64 images found. Nothing to do.' );
	return;
}

$total_images  = 0;
$total_shrunk  = 0;
$failures      = array();

// Load one post at a time — a single post_content can be 5+ MB of base64.
foreach ( $post_ids as $post_id ) {
	$post = get_post( $post_id );
	if ( ! $post ) {
		continue;
	}

	$content      = $post->post_content;
	$before_bytes = strlen( $content );
	$index        = 0;
	$made         = 0;
	$saved        = 0;

	$content = preg_replace_callback(
		'/src="data:(image\/(?:png|jpe?g|gif|webp));base64,([^"]+)"/i',
		function ( $m ) use ( $post, $extensions, $dry_run, $verbose, &$index, &$made, &$saved, &$failures ) {
			$index++;

			$mime = strtolower( $m[1] );
			if ( 'image/jpg' === $mime ) {
				$mime = 'image/jpeg';
			}
			$ext = isset( $extensions[ $mime ] ) ? $extensions[ $mime ] : null;
			if ( ! $ext ) {
				$failures[] = "post {$post->ID} image {$index}: unsupported mime {$mime}";
				return $m[0];
			}

			// Whitespace can survive inside an HTML attribute; strict decode rejects it.
			$binary = base64_decode( preg_replace( '/\s+/', '', $m[2] ), true );
			if ( false === $binary || '' === $binary ) {
				$failures[] = "post {$post->ID} image {$index}: base64 decode failed";
				return $m[0];
			}

			// Year/month folder, but a filename that still points back at its source post.
			$filename = "{$post->post_type}-{$post->ID}-{$index}.{$ext}";

			if ( $dry_run ) {
				$made++;
				$saved += strlen( $m[2] );
				if ( $verbose ) {
					WP_CLI::line( sprintf( '  would extract %s (%s KB)', $filename, number_format( strlen( $binary ) / 1024 ) ) );
				}
				return $m[0];
			}

			$upload = wp_upload_bits( $filename, null, $binary );
			if ( ! empty( $upload['error'] ) ) {
				$failures[] = "post {$post->ID} image {$index}: {$upload['error']}";
				return $m[0];
			}

			$attach_id = wp_insert_attachment(
				array(
					'post_mime_type' => $mime,
					'post_title'     => sanitize_file_name( pathinfo( $filename, PATHINFO_FILENAME ) ),
					'post_content'   => '',
					'post_status'    => 'inherit',
					'guid'           => $upload['url'],
				),
				$upload['file'],
				$post->ID,
				true
			);

			if ( is_wp_error( $attach_id ) ) {
				$failures[] = "post {$post->ID} image {$index}: " . $attach_id->get_error_message();
				return $m[0];
			}

			wp_update_attachment_metadata( $attach_id, wp_generate_attachment_metadata( $attach_id, $upload['file'] ) );

			// Not $upload['url'] — WP downsizes images over big_image_size_threshold into a
			// -scaled file and treats that as 'full'. The original stays on disk untouched.
			$url = wp_get_attachment_image_url( $attach_id, 'full' );

			$made++;
			if ( $verbose ) {
				WP_CLI::line( sprintf( '  #%d → %s (attachment %d)', $index, basename( $url ), $attach_id ) );
			}

			// Site-relative, matching the /wp-content/uploads/ckeditor/... convention the
			// exporters already use, so content survives a domain change.
			return 'src="' . esc_url( wp_make_link_relative( $url ) ) . '"';
		},
		$content
	);

	$after_bytes = strlen( $content );

	if ( ! $dry_run && $made > 0 ) {
		// Direct write: wp_update_post() would spawn a fresh multi-MB revision of the very
		// content we just shrank, and re-enter save_post (see save_post_periodical_entry).
		$wpdb->update( $wpdb->posts, array( 'post_content' => $content ), array( 'ID' => $post->ID ) );
		clean_post_cache( $post->ID );
	}

	$total_images += $made;
	$total_shrunk += $dry_run ? $saved : ( $before_bytes - $after_bytes );

	WP_CLI::line(
		sprintf(
			'%s %d (%s): %d image%s, %s KB → %s KB',
			$dry_run ? '[dry]' : '[ok] ',
			$post->ID,
			$post->post_type,
			$made,
			1 === $made ? '' : 's',
			number_format( $before_bytes / 1024 ),
			number_format( ( $dry_run ? $before_bytes - $saved : $after_bytes ) / 1024 )
		)
	);

	unset( $post, $content );
}

foreach ( $revision_ids as $revision_id ) {
	if ( $dry_run ) {
		WP_CLI::line( "[dry] would delete revision {$revision_id}" );
		continue;
	}
	wp_delete_post_revision( (int) $revision_id );
	WP_CLI::line( "[ok]  deleted revision {$revision_id}" );
}

WP_CLI::line( '' );
foreach ( $failures as $failure ) {
	WP_CLI::warning( $failure );
}

WP_CLI::success(
	sprintf(
		'%s%d posts, %d images extracted, %d revisions removed, %s MB of base64 dropped from post_content.%s',
		$dry_run ? 'DRY RUN: ' : '',
		count( $post_ids ),
		$total_images,
		count( $revision_ids ),
		number_format( $total_shrunk / 1048576, 1 ),
		$dry_run ? '' : ' Run `wp db query "OPTIMIZE TABLE wp_posts"` to reclaim the disk space.'
	)
);
