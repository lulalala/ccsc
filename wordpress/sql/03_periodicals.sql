SET NAMES utf8mb4;
SET foreign_key_checks = 0;

-- Periodicals → wp_posts (post_type='periodical') + wp_postmeta + attachments

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20001, 1, '2016-01-24 14:33:48', '2016-01-24 14:33:48', '', '1', '',
   'draft', 'closed', 'closed', 'periodical-1', '2016-01-24 14:33:48', '2016-01-24 14:33:48',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20001, 'issue', 1);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20001, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20002, 1, '2016-01-24 14:33:49', '2016-01-24 14:33:49', '', '2', '',
   'draft', 'closed', 'closed', 'periodical-2', '2016-01-24 14:33:49', '2016-01-24 14:33:49',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20002, 'issue', 2);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20002, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20003, 1, '2016-01-24 14:33:51', '2016-01-24 14:33:51', '', '3', '',
   'draft', 'closed', 'closed', 'periodical-3', '2016-01-24 14:33:51', '2016-01-24 14:33:51',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20003, 'issue', 3);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20003, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20004, 1, '2016-01-24 14:33:52', '2016-01-24 14:33:52', '', '4', '',
   'draft', 'closed', 'closed', 'periodical-4', '2016-01-24 14:33:52', '2016-01-24 14:33:52',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20004, 'issue', 4);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20004, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20005, 1, '2016-01-24 14:33:52', '2016-01-24 14:33:52', '', '5', '',
   'draft', 'closed', 'closed', 'periodical-5', '2016-01-24 14:33:52', '2016-01-24 14:33:52',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20005, 'issue', 5);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20005, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20006, 1, '2016-01-24 14:33:52', '2016-01-24 14:33:52', '', '6', '',
   'draft', 'closed', 'closed', 'periodical-6', '2016-01-24 14:33:52', '2016-01-24 14:33:52',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20006, 'issue', 6);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20006, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20007, 1, '2016-01-24 14:33:53', '2016-01-24 14:33:53', '', '7', '',
   'draft', 'closed', 'closed', 'periodical-7', '2016-01-24 14:33:53', '2016-01-24 14:33:53',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20007, 'issue', 7);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20007, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20008, 1, '2016-01-24 14:33:53', '2016-01-24 14:33:53', '', '8', '',
   'draft', 'closed', 'closed', 'periodical-8', '2016-01-24 14:33:53', '2016-01-24 14:33:53',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20008, 'issue', 8);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20008, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20009, 1, '2016-01-24 14:33:53', '2016-01-24 14:33:53', '', '9', '',
   'draft', 'closed', 'closed', 'periodical-9', '2016-01-24 14:33:53', '2016-01-24 14:33:53',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20009, 'issue', 9);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20009, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20010, 1, '2016-01-24 14:33:54', '2016-01-24 14:33:54', '', '10', '',
   'draft', 'closed', 'closed', 'periodical-10', '2016-01-24 14:33:54', '2016-01-24 14:33:54',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20010, 'issue', 10);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20010, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20011, 1, '2016-01-24 14:33:54', '2016-01-24 14:33:54', '', '11', '',
   'draft', 'closed', 'closed', 'periodical-11', '2016-01-24 14:33:54', '2016-01-24 14:33:54',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20011, 'issue', 11);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20011, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20012, 1, '2016-01-24 14:33:54', '2016-01-24 14:33:54', '', '12', '',
   'draft', 'closed', 'closed', 'periodical-12', '2016-01-24 14:33:54', '2016-01-24 14:33:54',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20012, 'issue', 12);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20012, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20013, 1, '2016-01-24 14:33:55', '2016-01-24 14:33:55', '', '13', '',
   'draft', 'closed', 'closed', 'periodical-13', '2016-01-24 14:33:55', '2016-01-24 14:33:55',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20013, 'issue', 13);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20013, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20014, 1, '2016-01-24 14:33:55', '2016-01-24 14:33:55', '', '14', '',
   'draft', 'closed', 'closed', 'periodical-14', '2016-01-24 14:33:55', '2016-01-24 14:33:55',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20014, 'issue', 14);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20014, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20015, 1, '2016-01-24 14:33:55', '2016-01-24 14:33:55', '', '15', '',
   'draft', 'closed', 'closed', 'periodical-15', '2016-01-24 14:33:55', '2016-01-24 14:33:55',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20015, 'issue', 15);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20015, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20016, 1, '2016-01-24 14:33:56', '2016-01-24 14:33:56', '', '16', '',
   'draft', 'closed', 'closed', 'periodical-16', '2016-01-24 14:33:56', '2016-01-24 14:33:56',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20016, 'issue', 16);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20016, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20017, 1, '2016-01-24 14:33:56', '2016-01-24 14:33:56', '', '心泉17', '',
   'draft', 'closed', 'closed', 'periodical-17', '2026-05-26 08:40:11', '2026-05-26 08:40:11',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20017, 'issue', 17);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20017, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40017, 1, '2016-01-24 14:33:56', '2016-01-24 14:33:56', '', '心泉17', '',
   'inherit', 'closed', 'closed', 'periodical-image-17', '2026-05-26 08:40:11', '2026-05-26 08:40:11',
   '', '', '', 20017, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/17/17期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40017, '_wp_attached_file', 'uploads/fountain/image/17/17期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20017, '_thumbnail_id', 40017);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20018, 1, '2016-01-24 14:33:56', '2016-01-24 14:33:56', '', '心泉18', '',
   'draft', 'closed', 'closed', 'periodical-18', '2026-05-19 08:47:16', '2026-05-19 08:47:16',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20018, 'issue', 18);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20018, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40018, 1, '2016-01-24 14:33:56', '2016-01-24 14:33:56', '', '心泉18', '',
   'inherit', 'closed', 'closed', 'periodical-image-18', '2026-05-19 08:47:16', '2026-05-19 08:47:16',
   '', '', '', 20018, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/18/18期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40018, '_wp_attached_file', 'uploads/fountain/image/18/18期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20018, '_thumbnail_id', 40018);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20019, 1, '2016-01-24 14:33:57', '2016-01-24 14:33:57', '', '心泉19', '',
   'publish', 'closed', 'closed', 'periodical-19', '2026-05-19 08:00:49', '2026-05-19 08:00:49',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20019, 'issue', 19);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20019, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40019, 1, '2016-01-24 14:33:57', '2016-01-24 14:33:57', '', '心泉19', '',
   'inherit', 'closed', 'closed', 'periodical-image-19', '2026-05-19 08:00:49', '2026-05-19 08:00:49',
   '', '', '', 20019, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/19/19期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40019, '_wp_attached_file', 'uploads/fountain/image/19/19期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20019, '_thumbnail_id', 40019);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20020, 1, '2016-01-24 14:33:57', '2016-01-24 14:33:57', '', '心泉20', '',
   'publish', 'closed', 'closed', 'periodical-20', '2026-04-21 07:50:34', '2026-04-21 07:50:34',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20020, 'issue', 20);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20020, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40020, 1, '2016-01-24 14:33:57', '2016-01-24 14:33:57', '', '心泉20', '',
   'inherit', 'closed', 'closed', 'periodical-image-20', '2026-04-21 07:50:34', '2026-04-21 07:50:34',
   '', '', '', 20020, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/20/20期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40020, '_wp_attached_file', 'uploads/fountain/image/20/20期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20020, '_thumbnail_id', 40020);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20021, 1, '2016-01-24 14:33:57', '2016-01-24 14:33:57', '', '心泉21', '',
   'publish', 'closed', 'closed', 'periodical-21', '2026-03-10 07:43:08', '2026-03-10 07:43:08',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20021, 'issue', 21);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20021, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40021, 1, '2016-01-24 14:33:57', '2016-01-24 14:33:57', '', '心泉21', '',
   'inherit', 'closed', 'closed', 'periodical-image-21', '2026-03-10 07:43:08', '2026-03-10 07:43:08',
   '', '', '', 20021, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/21/21期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40021, '_wp_attached_file', 'uploads/fountain/image/21/21期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20021, '_thumbnail_id', 40021);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20022, 1, '2016-01-24 14:33:58', '2016-01-24 14:33:58', '', '心泉22', '',
   'publish', 'closed', 'closed', 'periodical-22', '2026-02-10 08:34:15', '2026-02-10 08:34:15',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20022, 'issue', 22);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20022, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40022, 1, '2016-01-24 14:33:58', '2016-01-24 14:33:58', '', '心泉22', '',
   'inherit', 'closed', 'closed', 'periodical-image-22', '2026-02-10 08:34:15', '2026-02-10 08:34:15',
   '', '', '', 20022, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/22/22期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40022, '_wp_attached_file', 'uploads/fountain/image/22/22期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20022, '_thumbnail_id', 40022);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20023, 1, '2016-01-24 14:33:58', '2016-01-24 14:33:58', '', '心泉23', '',
   'publish', 'closed', 'closed', 'periodical-23', '2026-01-20 09:41:09', '2026-01-20 09:41:09',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20023, 'issue', 23);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20023, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40023, 1, '2016-01-24 14:33:58', '2016-01-24 14:33:58', '', '心泉23', '',
   'inherit', 'closed', 'closed', 'periodical-image-23', '2026-01-20 09:41:09', '2026-01-20 09:41:09',
   '', '', '', 20023, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/23/23期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40023, '_wp_attached_file', 'uploads/fountain/image/23/23期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20023, '_thumbnail_id', 40023);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20024, 1, '2016-01-24 14:33:59', '2016-01-24 14:33:59', '', '心泉24', '',
   'publish', 'closed', 'closed', 'periodical-24', '2025-11-18 09:54:07', '2025-11-18 09:54:07',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20024, 'issue', 24);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20024, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40024, 1, '2016-01-24 14:33:59', '2016-01-24 14:33:59', '', '心泉24', '',
   'inherit', 'closed', 'closed', 'periodical-image-24', '2025-11-18 09:54:07', '2025-11-18 09:54:07',
   '', '', '', 20024, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/24/24期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40024, '_wp_attached_file', 'uploads/fountain/image/24/24期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20024, '_thumbnail_id', 40024);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20025, 1, '2016-01-24 14:33:59', '2016-01-24 14:33:59', '', '心泉25', '',
   'publish', 'closed', 'closed', 'periodical-25', '2025-10-07 08:49:38', '2025-10-07 08:49:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20025, 'issue', 25);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20025, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40025, 1, '2016-01-24 14:33:59', '2016-01-24 14:33:59', '', '心泉25', '',
   'inherit', 'closed', 'closed', 'periodical-image-25', '2025-10-07 08:49:38', '2025-10-07 08:49:38',
   '', '', '', 20025, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/25/25封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40025, '_wp_attached_file', 'uploads/fountain/image/25/25封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20025, '_thumbnail_id', 40025);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20026, 1, '2016-01-24 14:33:59', '2016-01-24 14:33:59', '', '心泉26', '',
   'publish', 'closed', 'closed', 'periodical-26', '2025-09-23 09:31:18', '2025-09-23 09:31:18',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20026, 'issue', 26);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20026, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40026, 1, '2016-01-24 14:33:59', '2016-01-24 14:33:59', '', '心泉26', '',
   'inherit', 'closed', 'closed', 'periodical-image-26', '2025-09-23 09:31:18', '2025-09-23 09:31:18',
   '', '', '', 20026, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/26/26期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40026, '_wp_attached_file', 'uploads/fountain/image/26/26期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20026, '_thumbnail_id', 40026);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20027, 1, '2016-01-24 14:34:00', '2016-01-24 14:34:00', '', '心泉27', '',
   'publish', 'closed', 'closed', 'periodical-27', '2025-08-26 08:41:55', '2025-08-26 08:41:55',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20027, 'issue', 27);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20027, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40027, 1, '2016-01-24 14:34:00', '2016-01-24 14:34:00', '', '心泉27', '',
   'inherit', 'closed', 'closed', 'periodical-image-27', '2025-08-26 08:41:55', '2025-08-26 08:41:55',
   '', '', '', 20027, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/27/27期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40027, '_wp_attached_file', 'uploads/fountain/image/27/27期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20027, '_thumbnail_id', 40027);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20028, 1, '2016-01-24 14:34:00', '2016-01-24 14:34:00', '', '心泉28', '',
   'publish', 'closed', 'closed', 'periodical-28', '2025-08-05 09:05:04', '2025-08-05 09:05:04',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20028, 'issue', 28);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20028, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40028, 1, '2016-01-24 14:34:00', '2016-01-24 14:34:00', '', '心泉28', '',
   'inherit', 'closed', 'closed', 'periodical-image-28', '2025-08-05 09:05:04', '2025-08-05 09:05:04',
   '', '', '', 20028, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/28/28期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40028, '_wp_attached_file', 'uploads/fountain/image/28/28期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20028, '_thumbnail_id', 40028);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20029, 1, '2016-01-24 14:34:00', '2016-01-24 14:34:00', '', '心泉29', '',
   'publish', 'closed', 'closed', 'periodical-29', '2025-07-08 09:31:20', '2025-07-08 09:31:20',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20029, 'issue', 29);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20029, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40029, 1, '2016-01-24 14:34:00', '2016-01-24 14:34:00', '', '心泉29', '',
   'inherit', 'closed', 'closed', 'periodical-image-29', '2025-07-08 09:31:20', '2025-07-08 09:31:20',
   '', '', '', 20029, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/29/29期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40029, '_wp_attached_file', 'uploads/fountain/image/29/29期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20029, '_thumbnail_id', 40029);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20030, 1, '2016-01-24 14:34:01', '2016-01-24 14:34:01', '', '心泉30', '',
   'publish', 'closed', 'closed', 'periodical-30', '2025-06-10 08:29:05', '2025-06-10 08:29:05',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20030, 'issue', 30);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20030, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40030, 1, '2016-01-24 14:34:01', '2016-01-24 14:34:01', '', '心泉30', '',
   'inherit', 'closed', 'closed', 'periodical-image-30', '2025-06-10 08:29:05', '2025-06-10 08:29:05',
   '', '', '', 20030, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/30/30期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40030, '_wp_attached_file', 'uploads/fountain/image/30/30期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20030, '_thumbnail_id', 40030);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20031, 1, '2016-01-24 14:34:01', '2016-01-24 14:34:01', '', '提高信仰生活品質', '',
   'publish', 'closed', 'closed', 'periodical-31', '2025-05-06 09:07:36', '2025-05-06 09:07:36',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20031, 'issue', 31);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20031, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40031, 1, '2016-01-24 14:34:01', '2016-01-24 14:34:01', '', '提高信仰生活品質', '',
   'inherit', 'closed', 'closed', 'periodical-image-31', '2025-05-06 09:07:36', '2025-05-06 09:07:36',
   '', '', '', 20031, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/31/31期封面001.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40031, '_wp_attached_file', 'uploads/fountain/image/31/31期封面001.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20031, '_thumbnail_id', 40031);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20032, 1, '2016-01-24 14:34:01', '2016-01-24 14:34:01', '', '從小我邁向大我', '',
   'publish', 'closed', 'closed', 'periodical-32', '2025-04-08 09:33:34', '2025-04-08 09:33:34',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20032, 'issue', 32);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20032, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40032, 1, '2016-01-24 14:34:01', '2016-01-24 14:34:01', '', '從小我邁向大我', '',
   'inherit', 'closed', 'closed', 'periodical-image-32', '2025-04-08 09:33:34', '2025-04-08 09:33:34',
   '', '', '', 20032, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/32/32期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40032, '_wp_attached_file', 'uploads/fountain/image/32/32期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20032, '_thumbnail_id', 40032);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20033, 1, '2016-01-24 14:34:02', '2016-01-24 14:34:02', '', '如何加強小會的團體意識', '',
   'publish', 'closed', 'closed', 'periodical-33', '2025-03-04 06:47:08', '2025-03-04 06:47:08',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20033, 'issue', 33);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20033, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40033, 1, '2016-01-24 14:34:02', '2016-01-24 14:34:02', '', '如何加強小會的團體意識', '',
   'inherit', 'closed', 'closed', 'periodical-image-33', '2025-03-04 06:47:08', '2025-03-04 06:47:08',
   '', '', '', 20033, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/33/33期封面001.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40033, '_wp_attached_file', 'uploads/fountain/image/33/33期封面001.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20033, '_thumbnail_id', 40033);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20034, 1, '2016-01-24 14:34:02', '2016-01-24 14:34:02', '', '心泉34', '',
   'publish', 'closed', 'closed', 'periodical-34', '2025-02-25 07:24:57', '2025-02-25 07:24:57',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20034, 'issue', 34);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20034, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40034, 1, '2016-01-24 14:34:02', '2016-01-24 14:34:02', '', '心泉34', '',
   'inherit', 'closed', 'closed', 'periodical-image-34', '2025-02-25 07:24:57', '2025-02-25 07:24:57',
   '', '', '', 20034, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/34/34期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40034, '_wp_attached_file', 'uploads/fountain/image/34/34期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20034, '_thumbnail_id', 40034);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20035, 1, '2016-01-24 14:34:02', '2016-01-24 14:34:02', '', '心泉35', '',
   'publish', 'closed', 'closed', 'periodical-35', '2025-02-18 09:13:20', '2025-02-18 09:13:20',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20035, 'issue', 35);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20035, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40035, 1, '2016-01-24 14:34:02', '2016-01-24 14:34:02', '', '心泉35', '',
   'inherit', 'closed', 'closed', 'periodical-image-35', '2025-02-18 09:13:20', '2025-02-18 09:13:20',
   '', '', '', 20035, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/35/35期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40035, '_wp_attached_file', 'uploads/fountain/image/35/35期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20035, '_thumbnail_id', 40035);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20036, 1, '2016-01-24 14:34:03', '2016-01-24 14:34:03', '', '心泉36', '',
   'publish', 'closed', 'closed', 'periodical-36', '2025-02-11 07:42:24', '2025-02-11 07:42:24',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20036, 'issue', 36);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20036, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40036, 1, '2016-01-24 14:34:03', '2016-01-24 14:34:03', '', '心泉36', '',
   'inherit', 'closed', 'closed', 'periodical-image-36', '2025-02-11 07:42:24', '2025-02-11 07:42:24',
   '', '', '', 20036, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/36/36期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40036, '_wp_attached_file', 'uploads/fountain/image/36/36期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20036, '_thumbnail_id', 40036);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20037, 1, '2016-01-24 14:34:03', '2016-01-24 14:34:03', '', '心泉37', '',
   'publish', 'closed', 'closed', 'periodical-37', '2025-02-04 08:33:28', '2025-02-04 08:33:28',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20037, 'issue', 37);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20037, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40037, 1, '2016-01-24 14:34:03', '2016-01-24 14:34:03', '', '心泉37', '',
   'inherit', 'closed', 'closed', 'periodical-image-37', '2025-02-04 08:33:28', '2025-02-04 08:33:28',
   '', '', '', 20037, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/37/37期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40037, '_wp_attached_file', 'uploads/fountain/image/37/37期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20037, '_thumbnail_id', 40037);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20038, 1, '2016-01-24 14:34:03', '2016-01-24 14:34:03', '', '心泉38', '',
   'publish', 'closed', 'closed', 'periodical-38', '2025-01-21 08:39:05', '2025-01-21 08:39:05',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20038, 'issue', 38);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20038, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40038, 1, '2016-01-24 14:34:03', '2016-01-24 14:34:03', '', '心泉38', '',
   'inherit', 'closed', 'closed', 'periodical-image-38', '2025-01-21 08:39:05', '2025-01-21 08:39:05',
   '', '', '', 20038, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/38/38期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40038, '_wp_attached_file', 'uploads/fountain/image/38/38期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20038, '_thumbnail_id', 40038);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20039, 1, '2016-01-24 14:34:04', '2016-01-24 14:34:04', '', '心泉39', '',
   'publish', 'closed', 'closed', 'periodical-39', '2025-01-21 06:45:27', '2025-01-21 06:45:27',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20039, 'issue', 39);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20039, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40039, 1, '2016-01-24 14:34:04', '2016-01-24 14:34:04', '', '心泉39', '',
   'inherit', 'closed', 'closed', 'periodical-image-39', '2025-01-21 06:45:27', '2025-01-21 06:45:27',
   '', '', '', 20039, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/39/39期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40039, '_wp_attached_file', 'uploads/fountain/image/39/39期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20039, '_thumbnail_id', 40039);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20040, 1, '2016-01-24 14:34:04', '2016-01-24 14:34:04', '', '划向深處', '',
   'publish', 'closed', 'closed', 'periodical-40', '2024-11-12 09:05:55', '2024-11-12 09:05:55',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20040, 'issue', 40);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20040, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40040, 1, '2016-01-24 14:34:04', '2016-01-24 14:34:04', '', '划向深處', '',
   'inherit', 'closed', 'closed', 'periodical-image-40', '2024-11-12 09:05:55', '2024-11-12 09:05:55',
   '', '', '', 20040, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/40/40期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40040, '_wp_attached_file', 'uploads/fountain/image/40/40期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20040, '_thumbnail_id', 40040);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20041, 1, '2016-01-24 14:34:04', '2016-01-24 14:34:04', '', '在生活中承行天主的旨意', '',
   'publish', 'closed', 'closed', 'periodical-41', '2024-11-05 08:33:48', '2024-11-05 08:33:48',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20041, 'issue', 41);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20041, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40041, 1, '2016-01-24 14:34:04', '2016-01-24 14:34:04', '', '在生活中承行天主的旨意', '',
   'inherit', 'closed', 'closed', 'periodical-image-41', '2024-11-05 08:33:48', '2024-11-05 08:33:48',
   '', '', '', 20041, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/41/41期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40041, '_wp_attached_file', 'uploads/fountain/image/41/41期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20041, '_thumbnail_id', 40041);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20042, 1, '2016-01-24 14:34:05', '2016-01-24 14:34:05', '', '在生活中承行天主的旨意', '',
   'publish', 'closed', 'closed', 'periodical-42', '2024-10-22 09:40:37', '2024-10-22 09:40:37',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20042, 'issue', 42);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20042, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40042, 1, '2016-01-24 14:34:05', '2016-01-24 14:34:05', '', '在生活中承行天主的旨意', '',
   'inherit', 'closed', 'closed', 'periodical-image-42', '2024-10-22 09:40:37', '2024-10-22 09:40:37',
   '', '', '', 20042, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/42/42期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40042, '_wp_attached_file', 'uploads/fountain/image/42/42期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20042, '_thumbnail_id', 40042);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20043, 1, '2016-01-24 14:34:05', '2016-01-24 14:34:05', '', '在生活中承行天主的旨意', '',
   'publish', 'closed', 'closed', 'periodical-43', '2024-10-01 09:15:23', '2024-10-01 09:15:23',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20043, 'issue', 43);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20043, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40043, 1, '2016-01-24 14:34:05', '2016-01-24 14:34:05', '', '在生活中承行天主的旨意', '',
   'inherit', 'closed', 'closed', 'periodical-image-43', '2024-10-01 09:15:23', '2024-10-01 09:15:23',
   '', '', '', 20043, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/43/43期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40043, '_wp_attached_file', 'uploads/fountain/image/43/43期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20043, '_thumbnail_id', 40043);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20044, 1, '2016-01-24 14:34:05', '2016-01-24 14:34:05', '', '在生活中承行天主的旨意', '',
   'publish', 'closed', 'closed', 'periodical-44', '2024-08-20 08:41:53', '2024-08-20 08:41:53',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20044, 'issue', 44);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20044, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40044, 1, '2016-01-24 14:34:05', '2016-01-24 14:34:05', '', '在生活中承行天主的旨意', '',
   'inherit', 'closed', 'closed', 'periodical-image-44', '2024-08-20 08:41:53', '2024-08-20 08:41:53',
   '', '', '', 20044, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/44/44期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40044, '_wp_attached_file', 'uploads/fountain/image/44/44期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20044, '_thumbnail_id', 40044);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20045, 1, '2016-01-24 14:34:06', '2016-01-24 14:34:06', '', '福傳與復活', '',
   'publish', 'closed', 'closed', 'periodical-45', '2024-07-23 07:32:24', '2024-07-23 07:32:24',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20045, 'issue', 45);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20045, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40045, 1, '2016-01-24 14:34:06', '2016-01-24 14:34:06', '', '福傳與復活', '',
   'inherit', 'closed', 'closed', 'periodical-image-45', '2024-07-23 07:32:24', '2024-07-23 07:32:24',
   '', '', '', 20045, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/45/45期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40045, '_wp_attached_file', 'uploads/fountain/image/45/45期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20045, '_thumbnail_id', 40045);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20046, 1, '2016-01-24 14:34:06', '2016-01-24 14:34:06', '', '福傳後的見證與行動', '',
   'publish', 'closed', 'closed', 'periodical-46', '2024-07-02 07:38:00', '2024-07-02 07:38:00',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20046, 'issue', 46);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20046, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40046, 1, '2016-01-24 14:34:06', '2016-01-24 14:34:06', '', '福傳後的見證與行動', '',
   'inherit', 'closed', 'closed', 'periodical-image-46', '2024-07-02 07:38:00', '2024-07-02 07:38:00',
   '', '', '', 20046, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/46/46期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40046, '_wp_attached_file', 'uploads/fountain/image/46/46期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20046, '_thumbnail_id', 40046);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20047, 1, '2016-01-24 14:34:07', '2016-01-24 14:34:07', '', '生活與見證', '',
   'publish', 'closed', 'closed', 'periodical-47', '2024-05-28 09:21:17', '2024-05-28 09:21:17',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20047, 'issue', 47);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20047, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40047, 1, '2016-01-24 14:34:07', '2016-01-24 14:34:07', '', '生活與見證', '',
   'inherit', 'closed', 'closed', 'periodical-image-47', '2024-05-28 09:21:17', '2024-05-28 09:21:17',
   '', '', '', 20047, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/47/47期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40047, '_wp_attached_file', 'uploads/fountain/image/47/47期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20047, '_thumbnail_id', 40047);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20048, 1, '2016-01-24 14:34:07', '2016-01-24 14:34:07', '', '信，望，愛', '',
   'publish', 'closed', 'closed', 'periodical-48', '2024-05-14 07:31:28', '2024-05-14 07:31:28',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20048, 'issue', 48);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20048, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40048, 1, '2016-01-24 14:34:07', '2016-01-24 14:34:07', '', '信，望，愛', '',
   'inherit', 'closed', 'closed', 'periodical-image-48', '2024-05-14 07:31:28', '2024-05-14 07:31:28',
   '', '', '', 20048, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/48/48期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40048, '_wp_attached_file', 'uploads/fountain/image/48/48期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20048, '_thumbnail_id', 40048);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20049, 1, '2016-01-24 14:34:07', '2016-01-24 14:34:07', '', '進取・合作', '',
   'publish', 'closed', 'closed', 'periodical-49', '2024-04-16 08:49:53', '2024-04-16 08:49:53',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20049, 'issue', 49);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20049, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40049, 1, '2016-01-24 14:34:07', '2016-01-24 14:34:07', '', '進取・合作', '',
   'inherit', 'closed', 'closed', 'periodical-image-49', '2024-04-16 08:49:53', '2024-04-16 08:49:53',
   '', '', '', 20049, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/49/49期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40049, '_wp_attached_file', 'uploads/fountain/image/49/49期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20049, '_thumbnail_id', 40049);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20050, 1, '2016-01-24 14:34:08', '2016-01-24 14:34:08', '', '進取・合作', '',
   'publish', 'closed', 'closed', 'periodical-50', '2024-02-27 08:16:50', '2024-02-27 08:16:50',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20050, 'issue', 50);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20050, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40050, 1, '2016-01-24 14:34:08', '2016-01-24 14:34:08', '', '進取・合作', '',
   'inherit', 'closed', 'closed', 'periodical-image-50', '2024-02-27 08:16:50', '2024-02-27 08:16:50',
   '', '', '', 20050, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/50/50期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40050, '_wp_attached_file', 'uploads/fountain/image/50/50期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20050, '_thumbnail_id', 40050);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20051, 1, '2016-01-24 14:34:08', '2016-01-24 14:34:08', '', '進取・合作', '',
   'publish', 'closed', 'closed', 'periodical-51', '2023-10-03 10:00:02', '2023-10-03 10:00:02',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20051, 'issue', 51);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20051, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40051, 1, '2016-01-24 14:34:08', '2016-01-24 14:34:08', '', '進取・合作', '',
   'inherit', 'closed', 'closed', 'periodical-image-51', '2023-10-03 10:00:02', '2023-10-03 10:00:02',
   '', '', '', 20051, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/51/51期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40051, '_wp_attached_file', 'uploads/fountain/image/51/51期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20051, '_thumbnail_id', 40051);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20052, 1, '2016-01-24 14:34:08', '2016-01-24 14:34:08', '', '進取・合作', '',
   'publish', 'closed', 'closed', 'periodical-52', '2023-08-22 08:51:37', '2023-08-22 08:51:37',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20052, 'issue', 52);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20052, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40052, 1, '2016-01-24 14:34:08', '2016-01-24 14:34:08', '', '進取・合作', '',
   'inherit', 'closed', 'closed', 'periodical-image-52', '2023-08-22 08:51:37', '2023-08-22 08:51:37',
   '', '', '', 20052, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/52/52期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40052, '_wp_attached_file', 'uploads/fountain/image/52/52期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20052, '_thumbnail_id', 40052);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20053, 1, '2016-01-24 14:34:09', '2016-01-24 14:34:09', '', '整合・落實', '',
   'publish', 'closed', 'closed', 'periodical-53', '2023-07-18 08:38:59', '2023-07-18 08:38:59',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20053, 'issue', 53);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20053, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40053, 1, '2016-01-24 14:34:09', '2016-01-24 14:34:09', '', '整合・落實', '',
   'inherit', 'closed', 'closed', 'periodical-image-53', '2023-07-18 08:38:59', '2023-07-18 08:38:59',
   '', '', '', 20053, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/53/53期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40053, '_wp_attached_file', 'uploads/fountain/image/53/53期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20053, '_thumbnail_id', 40053);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20054, 1, '2016-01-24 14:34:09', '2016-01-24 14:34:09', '', '天主聖三', '',
   'publish', 'closed', 'closed', 'periodical-54', '2022-12-06 09:32:29', '2022-12-06 09:32:29',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20054, 'issue', 54);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20054, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40054, 1, '2016-01-24 14:34:09', '2016-01-24 14:34:09', '', '天主聖三', '',
   'inherit', 'closed', 'closed', 'periodical-image-54', '2022-12-06 09:32:29', '2022-12-06 09:32:29',
   '', '', '', 20054, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/54/54期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40054, '_wp_attached_file', 'uploads/fountain/image/54/54期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20054, '_thumbnail_id', 40054);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20055, 1, '2016-01-24 14:34:09', '2016-01-24 14:34:09', '', '生命・喜樂', '',
   'publish', 'closed', 'closed', 'periodical-55', '2022-11-29 09:19:50', '2022-11-29 09:19:50',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20055, 'issue', 55);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20055, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40055, 1, '2016-01-24 14:34:09', '2016-01-24 14:34:09', '', '生命・喜樂', '',
   'inherit', 'closed', 'closed', 'periodical-image-55', '2022-11-29 09:19:50', '2022-11-29 09:19:50',
   '', '', '', 20055, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/55/55期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40055, '_wp_attached_file', 'uploads/fountain/image/55/55期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20055, '_thumbnail_id', 40055);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20056, 1, '2016-01-24 14:34:10', '2016-01-24 14:34:10', '', '信．望．愛', '',
   'publish', 'closed', 'closed', 'periodical-56', '2022-10-24 10:27:34', '2022-10-24 10:27:34',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20056, 'issue', 56);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20056, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40056, 1, '2016-01-24 14:34:10', '2016-01-24 14:34:10', '', '信．望．愛', '',
   'inherit', 'closed', 'closed', 'periodical-image-56', '2022-10-24 10:27:34', '2022-10-24 10:27:34',
   '', '', '', 20056, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/56/56期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40056, '_wp_attached_file', 'uploads/fountain/image/56/56期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20056, '_thumbnail_id', 40056);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20057, 1, '2016-01-24 14:34:10', '2016-01-24 14:34:10', '', '神修生活', '',
   'publish', 'closed', 'closed', 'periodical-57', '2022-09-27 08:45:50', '2022-09-27 08:45:50',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20057, 'issue', 57);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20057, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40057, 1, '2016-01-24 14:34:10', '2016-01-24 14:34:10', '', '神修生活', '',
   'inherit', 'closed', 'closed', 'periodical-image-57', '2022-09-27 08:45:50', '2022-09-27 08:45:50',
   '', '', '', 20057, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/57/57期.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40057, '_wp_attached_file', 'uploads/fountain/image/57/57期.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20057, '_thumbnail_id', 40057);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20058, 1, '2016-01-24 14:34:10', '2016-01-24 14:34:10', '', '基督的愛', '',
   'publish', 'closed', 'closed', 'periodical-58', '2022-08-23 07:54:17', '2022-08-23 07:54:17',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20058, 'issue', 58);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20058, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40058, 1, '2016-01-24 14:34:10', '2016-01-24 14:34:10', '', '基督的愛', '',
   'inherit', 'closed', 'closed', 'periodical-image-58', '2022-08-23 07:54:17', '2022-08-23 07:54:17',
   '', '', '', 20058, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/58/58期.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40058, '_wp_attached_file', 'uploads/fountain/image/58/58期.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20058, '_thumbnail_id', 40058);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20059, 1, '2016-01-24 14:34:11', '2016-01-24 14:34:11', '', '信仰與人生', '',
   'publish', 'closed', 'closed', 'periodical-59', '2022-07-05 07:06:33', '2022-07-05 07:06:33',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20059, 'issue', 59);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20059, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40059, 1, '2016-01-24 14:34:11', '2016-01-24 14:34:11', '', '信仰與人生', '',
   'inherit', 'closed', 'closed', 'periodical-image-59', '2022-07-05 07:06:33', '2022-07-05 07:06:33',
   '', '', '', 20059, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/59/59期.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40059, '_wp_attached_file', 'uploads/fountain/image/59/59期.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20059, '_thumbnail_id', 40059);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20060, 1, '2016-01-24 14:34:11', '2016-01-24 14:34:11', '', '大朱神父紀念特輯', '',
   'publish', 'closed', 'closed', 'periodical-60', '2022-06-28 08:29:28', '2022-06-28 08:29:28',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20060, 'issue', 60);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20060, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40060, 1, '2016-01-24 14:34:11', '2016-01-24 14:34:11', '', '大朱神父紀念特輯', '',
   'inherit', 'closed', 'closed', 'periodical-image-60', '2022-06-28 08:29:28', '2022-06-28 08:29:28',
   '', '', '', 20060, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/60/60___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40060, '_wp_attached_file', 'uploads/fountain/image/60/60___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20060, '_thumbnail_id', 40060);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20061, 1, '2016-01-24 14:34:11', '2016-01-24 14:34:11', '', '生活中的祈禱', '',
   'publish', 'closed', 'closed', 'periodical-61', '2022-04-19 10:07:24', '2022-04-19 10:07:24',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20061, 'issue', 61);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20061, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40061, 1, '2016-01-24 14:34:11', '2016-01-24 14:34:11', '', '生活中的祈禱', '',
   'inherit', 'closed', 'closed', 'periodical-image-61', '2022-04-19 10:07:24', '2022-04-19 10:07:24',
   '', '', '', 20061, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/61/61___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40061, '_wp_attached_file', 'uploads/fountain/image/61/61___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20061, '_thumbnail_id', 40061);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20062, 1, '2016-01-24 14:34:12', '2016-01-24 14:34:12', '', '祈禱與靈修', '',
   'publish', 'closed', 'closed', 'periodical-62', '2022-01-25 09:54:10', '2022-01-25 09:54:10',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20062, 'issue', 62);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20062, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20063, 1, '2016-01-24 14:34:20', '2016-01-24 14:34:20', '', '邁向和好', '',
   'publish', 'closed', 'closed', 'periodical-63', '2022-01-11 05:59:46', '2022-01-11 05:59:46',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20063, 'issue', 63);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20063, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40063, 1, '2016-01-24 14:34:20', '2016-01-24 14:34:20', '', '邁向和好', '',
   'inherit', 'closed', 'closed', 'periodical-image-63', '2022-01-11 05:59:46', '2022-01-11 05:59:46',
   '', '', '', 20063, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/63/63___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40063, '_wp_attached_file', 'uploads/fountain/image/63/63___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20063, '_thumbnail_id', 40063);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20064, 1, '2016-01-24 14:34:35', '2016-01-24 14:34:35', '', '和好', '',
   'publish', 'closed', 'closed', 'periodical-64', '2021-10-05 05:25:19', '2021-10-05 05:25:19',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20064, 'issue', 64);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20064, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40064, 1, '2016-01-24 14:34:35', '2016-01-24 14:34:35', '', '和好', '',
   'inherit', 'closed', 'closed', 'periodical-image-64', '2021-10-05 05:25:19', '2021-10-05 05:25:19',
   '', '', '', 20064, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/64/64___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40064, '_wp_attached_file', 'uploads/fountain/image/64/64___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20064, '_thumbnail_id', 40064);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20065, 1, '2016-01-24 14:34:52', '2016-01-24 14:34:52', '', '回歸父家', '',
   'publish', 'closed', 'closed', 'periodical-65', '2021-10-05 05:18:28', '2021-10-05 05:18:28',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20065, 'issue', 65);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20065, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40065, 1, '2016-01-24 14:34:52', '2016-01-24 14:34:52', '', '回歸父家', '',
   'inherit', 'closed', 'closed', 'periodical-image-65', '2021-10-05 05:18:28', '2021-10-05 05:18:28',
   '', '', '', 20065, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/65/65___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40065, '_wp_attached_file', 'uploads/fountain/image/65/65___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20065, '_thumbnail_id', 40065);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20066, 1, '2016-01-24 14:35:12', '2016-01-24 14:35:12', '', '變遷社會中小會精神的呈現', '',
   'publish', 'closed', 'closed', 'periodical-66', '2020-07-22 06:18:05', '2020-07-22 06:18:05',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20066, 'issue', 66);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20066, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40066, 1, '2016-01-24 14:35:12', '2016-01-24 14:35:12', '', '變遷社會中小會精神的呈現', '',
   'inherit', 'closed', 'closed', 'periodical-image-66', '2020-07-22 06:18:05', '2020-07-22 06:18:05',
   '', '', '', 20066, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/66/66___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40066, '_wp_attached_file', 'uploads/fountain/image/66/66___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20066, '_thumbnail_id', 40066);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20067, 1, '2016-01-24 14:35:34', '2016-01-24 14:35:34', '', '變遷社會中小會精神的呈現', '',
   'publish', 'closed', 'closed', 'periodical-67', '2020-06-23 08:52:08', '2020-06-23 08:52:08',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20067, 'issue', 67);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20067, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40067, 1, '2016-01-24 14:35:34', '2016-01-24 14:35:34', '', '變遷社會中小會精神的呈現', '',
   'inherit', 'closed', 'closed', 'periodical-image-67', '2020-06-23 08:52:08', '2020-06-23 08:52:08',
   '', '', '', 20067, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/67/67___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40067, '_wp_attached_file', 'uploads/fountain/image/67/67___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20067, '_thumbnail_id', 40067);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20068, 1, '2016-01-24 14:35:47', '2016-01-24 14:35:47', '', '愛你的近人', '',
   'publish', 'closed', 'closed', 'periodical-68', '2020-06-02 07:27:54', '2020-06-02 07:27:54',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20068, 'issue', 68);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20068, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40068, 1, '2016-01-24 14:35:47', '2016-01-24 14:35:47', '', '愛你的近人', '',
   'inherit', 'closed', 'closed', 'periodical-image-68', '2020-06-02 07:27:54', '2020-06-02 07:27:54',
   '', '', '', 20068, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/68/__68__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40068, '_wp_attached_file', 'uploads/fountain/image/68/__68__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20068, '_thumbnail_id', 40068);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20069, 1, '2016-01-24 14:35:52', '2016-01-24 14:35:52', '', '愛你的近人', '',
   'publish', 'closed', 'closed', 'periodical-69', '2020-03-10 10:12:38', '2020-03-10 10:12:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20069, 'issue', 69);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20069, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40069, 1, '2016-01-24 14:35:52', '2016-01-24 14:35:52', '', '愛你的近人', '',
   'inherit', 'closed', 'closed', 'periodical-image-69', '2020-03-10 10:12:38', '2020-03-10 10:12:38',
   '', '', '', 20069, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/69/69___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40069, '_wp_attached_file', 'uploads/fountain/image/69/69___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20069, '_thumbnail_id', 40069);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20070, 1, '2016-01-24 14:36:02', '2016-01-24 14:36:02', '', '重溫小會精神', '',
   'publish', 'closed', 'closed', 'periodical-70', '2020-02-25 08:18:54', '2020-02-25 08:18:54',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20070, 'issue', 70);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20070, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40070, 1, '2016-01-24 14:36:02', '2016-01-24 14:36:02', '', '重溫小會精神', '',
   'inherit', 'closed', 'closed', 'periodical-image-70', '2020-02-25 08:18:54', '2020-02-25 08:18:54',
   '', '', '', 20070, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/70/70__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40070, '_wp_attached_file', 'uploads/fountain/image/70/70__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20070, '_thumbnail_id', 40070);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20071, 1, '2016-01-24 14:36:12', '2016-01-24 14:36:12', '', '重溫小會精神', '',
   'publish', 'closed', 'closed', 'periodical-71', '2019-10-22 08:49:22', '2019-10-22 08:49:22',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20071, 'issue', 71);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20071, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40071, 1, '2016-01-24 14:36:12', '2016-01-24 14:36:12', '', '重溫小會精神', '',
   'inherit', 'closed', 'closed', 'periodical-image-71', '2019-10-22 08:49:22', '2019-10-22 08:49:22',
   '', '', '', 20071, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/71/71___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40071, '_wp_attached_file', 'uploads/fountain/image/71/71___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20071, '_thumbnail_id', 40071);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20072, 1, '2016-01-24 14:36:22', '2016-01-24 14:36:22', '', '神修小會四十週年專刊', '',
   'publish', 'closed', 'closed', 'periodical-72', '2019-07-02 08:11:08', '2019-07-02 08:11:08',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20072, 'issue', 72);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20072, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40072, 1, '2016-01-24 14:36:22', '2016-01-24 14:36:22', '', '神修小會四十週年專刊', '',
   'inherit', 'closed', 'closed', 'periodical-image-72', '2019-07-02 08:11:08', '2019-07-02 08:11:08',
   '', '', '', 20072, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/72/72___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40072, '_wp_attached_file', 'uploads/fountain/image/72/72___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20072, '_thumbnail_id', 40072);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20073, 1, '2016-01-24 14:36:33', '2016-01-24 14:36:33', '', '全球思維．在地行動', '',
   'publish', 'closed', 'closed', 'periodical-73', '2019-06-11 08:13:10', '2019-06-11 08:13:10',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20073, 'issue', 73);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20073, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40073, 1, '2016-01-24 14:36:33', '2016-01-24 14:36:33', '', '全球思維．在地行動', '',
   'inherit', 'closed', 'closed', 'periodical-image-73', '2019-06-11 08:13:10', '2019-06-11 08:13:10',
   '', '', '', 20073, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/73/73__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40073, '_wp_attached_file', 'uploads/fountain/image/73/73__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20073, '_thumbnail_id', 40073);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20074, 1, '2016-01-24 14:36:45', '2016-01-24 14:36:45', '', '讀經樂', '',
   'publish', 'closed', 'closed', 'periodical-74', '2019-05-07 09:31:08', '2019-05-07 09:31:08',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20074, 'issue', 74);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20074, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40074, 1, '2016-01-24 14:36:45', '2016-01-24 14:36:45', '', '讀經樂', '',
   'inherit', 'closed', 'closed', 'periodical-image-74', '2019-05-07 09:31:08', '2019-05-07 09:31:08',
   '', '', '', 20074, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/74/74__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40074, '_wp_attached_file', 'uploads/fountain/image/74/74__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20074, '_thumbnail_id', 40074);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20075, 1, '2016-01-24 14:36:52', '2016-01-24 14:36:52', '', '走出曠野', '',
   'publish', 'closed', 'closed', 'periodical-75', '2019-04-16 06:39:02', '2019-04-16 06:39:02',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20075, 'issue', 75);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20075, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40075, 1, '2016-01-24 14:36:52', '2016-01-24 14:36:52', '', '走出曠野', '',
   'inherit', 'closed', 'closed', 'periodical-image-75', '2019-04-16 06:39:02', '2019-04-16 06:39:02',
   '', '', '', 20075, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/75/75__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40075, '_wp_attached_file', 'uploads/fountain/image/75/75__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20075, '_thumbnail_id', 40075);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20076, 1, '2016-01-24 14:37:02', '2016-01-24 14:37:02', '', '參與基督復活之旅', '',
   'publish', 'closed', 'closed', 'periodical-76', '2019-03-05 09:49:13', '2019-03-05 09:49:13',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20076, 'issue', 76);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20076, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40076, 1, '2016-01-24 14:37:02', '2016-01-24 14:37:02', '', '參與基督復活之旅', '',
   'inherit', 'closed', 'closed', 'periodical-image-76', '2019-03-05 09:49:13', '2019-03-05 09:49:13',
   '', '', '', 20076, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/76/76___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40076, '_wp_attached_file', 'uploads/fountain/image/76/76___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20076, '_thumbnail_id', 40076);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20077, 1, '2016-01-24 14:37:13', '2016-01-24 14:37:13', '', '全球思維．在地行動', '',
   'publish', 'closed', 'closed', 'periodical-77', '2019-02-13 07:20:41', '2019-02-13 07:20:41',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20077, 'issue', 77);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20077, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40077, 1, '2016-01-24 14:37:13', '2016-01-24 14:37:13', '', '全球思維．在地行動', '',
   'inherit', 'closed', 'closed', 'periodical-image-77', '2019-02-13 07:20:41', '2019-02-13 07:20:41',
   '', '', '', 20077, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/77/77___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40077, '_wp_attached_file', 'uploads/fountain/image/77/77___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20077, '_thumbnail_id', 40077);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20078, 1, '2016-01-24 14:37:20', '2016-01-24 14:37:20', '', '聆聽的藝術', '',
   'publish', 'closed', 'closed', 'periodical-78', '2019-01-17 06:10:28', '2019-01-17 06:10:28',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20078, 'issue', 78);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20078, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40078, 1, '2016-01-24 14:37:20', '2016-01-24 14:37:20', '', '聆聽的藝術', '',
   'inherit', 'closed', 'closed', 'periodical-image-78', '2019-01-17 06:10:28', '2019-01-17 06:10:28',
   '', '', '', 20078, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/78/78___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40078, '_wp_attached_file', 'uploads/fountain/image/78/78___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20078, '_thumbnail_id', 40078);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20079, 1, '2016-01-24 14:37:34', '2016-01-24 14:37:34', '', '從「心」出發', '',
   'publish', 'closed', 'closed', 'periodical-79', '2018-12-25 08:09:46', '2018-12-25 08:09:46',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20079, 'issue', 79);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20079, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40079, 1, '2016-01-24 14:37:34', '2016-01-24 14:37:34', '', '從「心」出發', '',
   'inherit', 'closed', 'closed', 'periodical-image-79', '2018-12-25 08:09:46', '2018-12-25 08:09:46',
   '', '', '', 20079, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/79/79___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40079, '_wp_attached_file', 'uploads/fountain/image/79/79___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20079, '_thumbnail_id', 40079);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20080, 1, '2016-01-24 14:37:44', '2016-01-24 14:37:44', '', '愛的淨化', '',
   'publish', 'closed', 'closed', 'periodical-80', '2018-11-27 08:08:37', '2018-11-27 08:08:37',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20080, 'issue', 80);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20080, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40080, 1, '2016-01-24 14:37:44', '2016-01-24 14:37:44', '', '愛的淨化', '',
   'inherit', 'closed', 'closed', 'periodical-image-80', '2018-11-27 08:08:37', '2018-11-27 08:08:37',
   '', '', '', 20080, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/80/80__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40080, '_wp_attached_file', 'uploads/fountain/image/80/80__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20080, '_thumbnail_id', 40080);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20081, 1, '2016-01-24 14:38:04', '2016-01-24 14:38:04', '', '精彩過一生', '',
   'publish', 'closed', 'closed', 'periodical-81', '2018-10-09 09:29:31', '2018-10-09 09:29:31',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20081, 'issue', 81);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20081, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40081, 1, '2016-01-24 14:38:04', '2016-01-24 14:38:04', '', '精彩過一生', '',
   'inherit', 'closed', 'closed', 'periodical-image-81', '2018-10-09 09:29:31', '2018-10-09 09:29:31',
   '', '', '', 20081, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/81/81__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40081, '_wp_attached_file', 'uploads/fountain/image/81/81__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20081, '_thumbnail_id', 40081);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20082, 1, '2016-01-24 14:38:14', '2016-01-24 14:38:14', '', '答覆召叫', '',
   'publish', 'closed', 'closed', 'periodical-82', '2018-09-25 07:05:17', '2018-09-25 07:05:17',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20082, 'issue', 82);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20082, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40082, 1, '2016-01-24 14:38:14', '2016-01-24 14:38:14', '', '答覆召叫', '',
   'inherit', 'closed', 'closed', 'periodical-image-82', '2018-09-25 07:05:17', '2018-09-25 07:05:17',
   '', '', '', 20082, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/82/82__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40082, '_wp_attached_file', 'uploads/fountain/image/82/82__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20082, '_thumbnail_id', 40082);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20083, 1, '2016-01-24 14:38:27', '2016-01-24 14:38:27', '', '懷念雷公專集', '',
   'publish', 'closed', 'closed', 'periodical-83', '2018-08-30 09:01:53', '2018-08-30 09:01:53',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20083, 'issue', 83);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20083, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40083, 1, '2016-01-24 14:38:27', '2016-01-24 14:38:27', '', '懷念雷公專集', '',
   'inherit', 'closed', 'closed', 'periodical-image-83', '2018-08-30 09:01:53', '2018-08-30 09:01:53',
   '', '', '', 20083, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/83/83__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40083, '_wp_attached_file', 'uploads/fountain/image/83/83__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20083, '_thumbnail_id', 40083);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20084, 1, '2016-01-24 14:38:49', '2016-01-24 14:38:49', '', '扭轉乾坤的信仰生活', '',
   'publish', 'closed', 'closed', 'periodical-84', '2018-06-27 05:58:14', '2018-06-27 05:58:14',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20084, 'issue', 84);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20084, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40084, 1, '2016-01-24 14:38:49', '2016-01-24 14:38:49', '', '扭轉乾坤的信仰生活', '',
   'inherit', 'closed', 'closed', 'periodical-image-84', '2018-06-27 05:58:14', '2018-06-27 05:58:14',
   '', '', '', 20084, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/84/84_.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40084, '_wp_attached_file', 'uploads/fountain/image/84/84_.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20084, '_thumbnail_id', 40084);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20085, 1, '2016-01-24 14:38:49', '2016-01-24 14:38:49', '', '與主親近．與人同行', '',
   'publish', 'closed', 'closed', 'periodical-85', '2018-06-05 05:47:27', '2018-06-05 05:47:27',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20085, 'issue', 85);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20085, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40085, 1, '2016-01-24 14:38:49', '2016-01-24 14:38:49', '', '與主親近．與人同行', '',
   'inherit', 'closed', 'closed', 'periodical-image-85', '2018-06-05 05:47:27', '2018-06-05 05:47:27',
   '', '', '', 20085, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/85/img265.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40085, '_wp_attached_file', 'uploads/fountain/image/85/img265.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20085, '_thumbnail_id', 40085);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20086, 1, '2016-01-24 14:38:49', '2016-01-24 14:38:49', '', '逾越的喜樂', '',
   'publish', 'closed', 'closed', 'periodical-86', '2018-05-15 05:46:03', '2018-05-15 05:46:03',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20086, 'issue', 86);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20086, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40086, 1, '2016-01-24 14:38:49', '2016-01-24 14:38:49', '', '逾越的喜樂', '',
   'inherit', 'closed', 'closed', 'periodical-image-86', '2018-05-15 05:46:03', '2018-05-15 05:46:03',
   '', '', '', 20086, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/86/86__01.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40086, '_wp_attached_file', 'uploads/fountain/image/86/86__01.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20086, '_thumbnail_id', 40086);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20087, 1, '2016-01-24 14:38:57', '2016-01-24 14:38:57', '', '以信德交託．以愛德分享', '',
   'publish', 'closed', 'closed', 'periodical-87', '2018-04-24 06:24:54', '2018-04-24 06:24:54',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20087, 'issue', 87);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20087, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40087, 1, '2016-01-24 14:38:57', '2016-01-24 14:38:57', '', '以信德交託．以愛德分享', '',
   'inherit', 'closed', 'closed', 'periodical-image-87', '2018-04-24 06:24:54', '2018-04-24 06:24:54',
   '', '', '', 20087, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/87/87__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40087, '_wp_attached_file', 'uploads/fountain/image/87/87__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20087, '_thumbnail_id', 40087);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20088, 1, '2016-01-24 14:39:17', '2016-01-24 14:39:17', '', '以信德裝備．以愛德行動', '',
   'publish', 'closed', 'closed', 'periodical-88', '2017-09-19 09:41:17', '2017-09-19 09:41:17',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20088, 'issue', 88);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20088, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20089, 1, '2016-01-24 14:39:43', '2016-01-24 14:39:43', '', '神修起步．錨定福傳', '',
   'publish', 'closed', 'closed', 'periodical-89', '2018-03-20 09:03:30', '2018-03-20 09:03:30',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20089, 'issue', 89);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20089, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40089, 1, '2016-01-24 14:39:43', '2016-01-24 14:39:43', '', '神修起步．錨定福傳', '',
   'inherit', 'closed', 'closed', 'periodical-image-89', '2018-03-20 09:03:30', '2018-03-20 09:03:30',
   '', '', '', 20089, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/89/89001.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40089, '_wp_attached_file', 'uploads/fountain/image/89/89001.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20089, '_thumbnail_id', 40089);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20090, 1, '2016-01-24 14:40:01', '2016-01-24 14:40:01', '', '罪過與補贖、 善果與道路', '',
   'publish', 'closed', 'closed', 'periodical-90', '2016-11-06 12:48:32', '2016-11-06 12:48:32',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20090, 'issue', 90);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20090, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20091, 1, '2016-01-24 14:40:22', '2016-01-24 14:40:22', '', '向下位移、走向群眾', '',
   'publish', 'closed', 'closed', 'periodical-91', '2016-11-06 12:48:32', '2016-11-06 12:48:32',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20091, 'issue', 91);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20091, 200, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20092, 1, '2016-01-25 12:54:38', '2016-01-25 12:54:38', '', '向下位移，走向群眾', '',
   'publish', 'closed', 'closed', 'periodical-92', '2016-11-06 12:48:32', '2016-11-06 12:48:32',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20092, 'issue', 92);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20092, 'catalogue', '<table class="table">
  <tbody>
    <tr>
      <td><a href="/posts/513">僕人經驗談領導</a></td>
      <td>張瑞雲</td>
    </tr>
    <tr>
      <td><a href="/posts/512">大聖若瑟的角色與聖德</a></td>
      <td>曾慶導神父</td>
    </tr>
  </tbody>
</table> 
');
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20092, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40092, 1, '2016-01-25 12:54:38', '2016-01-25 12:54:38', '', '向下位移，走向群眾', '',
   'inherit', 'closed', 'closed', 'periodical-image-92', '2016-11-06 12:48:32', '2016-11-06 12:48:32',
   '', '', '', 20092, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/92/__92___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40092, '_wp_attached_file', 'uploads/fountain/image/92/__92___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20092, '_thumbnail_id', 40092);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20093, 1, '2016-01-26 12:07:48', '2016-01-26 12:07:48', '', '活出福音的慈悲', '',
   'publish', 'closed', 'closed', 'periodical-93', '2016-11-06 12:48:32', '2016-11-06 12:48:32',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20093, 'issue', 93);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20093, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40093, 1, '2016-01-26 12:07:48', '2016-01-26 12:07:48', '', '活出福音的慈悲', '',
   'inherit', 'closed', 'closed', 'periodical-image-93', '2016-11-06 12:48:32', '2016-11-06 12:48:32',
   '', '', '', 20093, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/93/19062016201126-0001.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40093, '_wp_attached_file', 'uploads/fountain/image/93/19062016201126-0001.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20093, '_thumbnail_id', 40093);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20094, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '1', '',
   'publish', 'closed', 'closed', 'periodical-94', '2023-12-28 21:42:48', '2023-12-28 21:42:48',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20094, 'issue', 1);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20094, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20095, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '2', '',
   'draft', 'closed', 'closed', 'periodical-95', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20095, 'issue', 2);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20095, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20096, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '3', '',
   'draft', 'closed', 'closed', 'periodical-96', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20096, 'issue', 3);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20096, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20097, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '4', '',
   'draft', 'closed', 'closed', 'periodical-97', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20097, 'issue', 4);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20097, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20098, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '5', '',
   'draft', 'closed', 'closed', 'periodical-98', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20098, 'issue', 5);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20098, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20099, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '6', '',
   'draft', 'closed', 'closed', 'periodical-99', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20099, 'issue', 6);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20099, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20100, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '7', '',
   'draft', 'closed', 'closed', 'periodical-100', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20100, 'issue', 7);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20100, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20101, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '8', '',
   'draft', 'closed', 'closed', 'periodical-101', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20101, 'issue', 8);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20101, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20102, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '9', '',
   'draft', 'closed', 'closed', 'periodical-102', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20102, 'issue', 9);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20102, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20103, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '10', '',
   'draft', 'closed', 'closed', 'periodical-103', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20103, 'issue', 10);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20103, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20104, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '11', '',
   'draft', 'closed', 'closed', 'periodical-104', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20104, 'issue', 11);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20104, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20105, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '12', '',
   'draft', 'closed', 'closed', 'periodical-105', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20105, 'issue', 12);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20105, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20106, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '13', '',
   'draft', 'closed', 'closed', 'periodical-106', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20106, 'issue', 13);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20106, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20107, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '14', '',
   'draft', 'closed', 'closed', 'periodical-107', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20107, 'issue', 14);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20107, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20108, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '15', '',
   'draft', 'closed', 'closed', 'periodical-108', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20108, 'issue', 15);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20108, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20109, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '16', '',
   'draft', 'closed', 'closed', 'periodical-109', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20109, 'issue', 16);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20109, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20110, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '17', '',
   'draft', 'closed', 'closed', 'periodical-110', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20110, 'issue', 17);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20110, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20111, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '18', '',
   'draft', 'closed', 'closed', 'periodical-111', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20111, 'issue', 18);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20111, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20112, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '19', '',
   'draft', 'closed', 'closed', 'periodical-112', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20112, 'issue', 19);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20112, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20113, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '20', '',
   'draft', 'closed', 'closed', 'periodical-113', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20113, 'issue', 20);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20113, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20114, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '21', '',
   'draft', 'closed', 'closed', 'periodical-114', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20114, 'issue', 21);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20114, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20115, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '22', '',
   'draft', 'closed', 'closed', 'periodical-115', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20115, 'issue', 22);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20115, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20116, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '23', '',
   'draft', 'closed', 'closed', 'periodical-116', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20116, 'issue', 23);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20116, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20117, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '24', '',
   'draft', 'closed', 'closed', 'periodical-117', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20117, 'issue', 24);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20117, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20118, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '25', '',
   'draft', 'closed', 'closed', 'periodical-118', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20118, 'issue', 25);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20118, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20119, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '26', '',
   'draft', 'closed', 'closed', 'periodical-119', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20119, 'issue', 26);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20119, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20120, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '27 ', '',
   'draft', 'closed', 'closed', 'periodical-120', '2025-08-04 21:32:42', '2025-08-04 21:32:42',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20120, 'issue', 27);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20120, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20121, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '28 (Oct. 2007)', '',
   'publish', 'closed', 'closed', 'periodical-121', '2025-08-04 21:32:22', '2025-08-04 21:32:22',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20121, 'issue', 28);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20121, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20122, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '29 (Feb. 2008)', '',
   'draft', 'closed', 'closed', 'periodical-122', '2025-08-04 21:33:29', '2025-08-04 21:33:29',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20122, 'issue', 29);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20122, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20123, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '30 (June 2008)', '',
   'publish', 'closed', 'closed', 'periodical-123', '2025-08-04 21:26:13', '2025-08-04 21:26:13',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20123, 'issue', 30);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20123, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20124, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '31 (Oct. 2008)', '',
   'publish', 'closed', 'closed', 'periodical-124', '2025-08-04 21:26:44', '2025-08-04 21:26:44',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20124, 'issue', 31);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20124, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20125, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '32 (Feb. 2009)', '',
   'publish', 'closed', 'closed', 'periodical-125', '2025-08-04 21:27:28', '2025-08-04 21:27:28',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20125, 'issue', 32);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20125, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20126, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '33 (June 2009)', '',
   'draft', 'closed', 'closed', 'periodical-126', '2025-08-04 21:28:09', '2025-08-04 21:28:09',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20126, 'issue', 33);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20126, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20127, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '34', '',
   'draft', 'closed', 'closed', 'periodical-127', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20127, 'issue', 34);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20127, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20128, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '35', '',
   'draft', 'closed', 'closed', 'periodical-128', '2016-11-06 12:59:38', '2016-11-06 12:59:38',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20128, 'issue', 35);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20128, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20129, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '36 ', '',
   'publish', 'closed', 'closed', 'periodical-129', '2025-08-04 21:28:58', '2025-08-04 21:28:58',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20129, 'issue', 36);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20129, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20130, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '37 (Nov. 2010)', '',
   'publish', 'closed', 'closed', 'periodical-130', '2025-08-04 21:23:52', '2025-08-04 21:23:52',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20130, 'issue', 37);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20130, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20131, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '38 (April 2011)', '',
   'publish', 'closed', 'closed', 'periodical-131', '2025-08-04 21:23:23', '2025-08-04 21:23:23',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20131, 'issue', 38);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20131, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20132, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '39 (Oct. 2012)', '',
   'publish', 'closed', 'closed', 'periodical-132', '2025-08-04 21:22:57', '2025-08-04 21:22:57',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20132, 'issue', 39);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20132, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20133, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '40 (June 2013)', '',
   'publish', 'closed', 'closed', 'periodical-133', '2025-08-04 21:22:24', '2025-08-04 21:22:24',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20133, 'issue', 40);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20133, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20134, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '41 (Sept. 2014)', '',
   'publish', 'closed', 'closed', 'periodical-134', '2025-08-04 21:21:53', '2025-08-04 21:21:53',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20134, 'issue', 41);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20134, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20135, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '42 (2015-01-10)', '',
   'publish', 'closed', 'closed', 'periodical-135', '2025-08-04 21:20:16', '2025-08-04 21:20:16',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20135, 'issue', 42);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20135, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20136, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '43 (2015-05-10)', '',
   'publish', 'closed', 'closed', 'periodical-136', '2025-08-04 21:16:37', '2025-08-04 21:16:37',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20136, 'issue', 43);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20136, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20137, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '44 (2015-09-10)', '',
   'publish', 'closed', 'closed', 'periodical-137', '2025-08-04 21:15:57', '2025-08-04 21:15:57',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20137, 'issue', 44);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20137, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20138, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '45 (2016-01-10)', '',
   'publish', 'closed', 'closed', 'periodical-138', '2025-08-04 21:15:33', '2025-08-04 21:15:33',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20138, 'issue', 45);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20138, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20139, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '46 (2016-05-10)', '',
   'publish', 'closed', 'closed', 'periodical-139', '2025-08-04 21:14:55', '2025-08-04 21:14:55',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20139, 'issue', 46);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20139, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20140, 1, '2016-11-06 12:59:38', '2016-11-06 12:59:38', '', '47 (2016-09-10)', '',
   'publish', 'closed', 'closed', 'periodical-140', '2025-08-04 21:14:26', '2025-08-04 21:14:26',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20140, 'issue', 47);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20140, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20141, 1, '2017-01-15 19:16:16', '2017-01-15 19:16:16', '', '48 (2017-01-10)', '',
   'publish', 'closed', 'closed', 'periodical-141', '2025-08-04 21:14:04', '2025-08-04 21:14:04',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20141, 'issue', 48);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20141, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20142, 1, '2017-02-20 11:50:50', '2017-02-20 11:50:50', '', '重燃傳教的心火', '',
   'publish', 'closed', 'closed', 'periodical-142', '2017-09-19 08:36:01', '2017-09-19 08:36:01',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20142, 'issue', 94);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20142, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40142, 1, '2017-02-20 11:50:50', '2017-02-20 11:50:50', '', '重燃傳教的心火', '',
   'inherit', 'closed', 'closed', 'periodical-image-142', '2017-09-19 08:36:01', '2017-09-19 08:36:01',
   '', '', '', 20142, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/142/94cc.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40142, '_wp_attached_file', 'uploads/fountain/image/142/94cc.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20142, '_thumbnail_id', 40142);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20143, 1, '2017-05-07 20:44:39', '2017-05-07 20:44:39', '', '49 (2017-05-15)', '',
   'publish', 'closed', 'closed', 'periodical-143', '2025-08-04 21:13:26', '2025-08-04 21:13:26',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20143, 'issue', 49);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20143, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20144, 1, '2017-09-08 03:38:52', '2017-09-08 03:38:52', '', '50 (2017-09-10)', '',
   'publish', 'closed', 'closed', 'periodical-144', '2025-08-04 21:12:41', '2025-08-04 21:12:41',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20144, 'issue', 50);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20144, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20145, 1, '2018-01-06 20:33:29', '2018-01-06 20:33:29', '', '51 (2018-01-10)', '',
   'publish', 'closed', 'closed', 'periodical-145', '2025-08-04 21:12:07', '2025-08-04 21:12:07',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20145, 'issue', 51);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20145, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20146, 1, '2018-01-30 09:30:55', '2018-01-30 09:30:55', '', '基督信仰的在地化、現代化', '',
   'publish', 'closed', 'closed', 'periodical-146', '2018-01-30 10:06:25', '2018-01-30 10:06:25',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20146, 'issue', 95);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20146, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40146, 1, '2018-01-30 09:30:55', '2018-01-30 09:30:55', '', '基督信仰的在地化、現代化', '',
   'inherit', 'closed', 'closed', 'periodical-image-146', '2018-01-30 10:06:25', '2018-01-30 10:06:25',
   '', '', '', 20146, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/146/95.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40146, '_wp_attached_file', 'uploads/fountain/image/146/95.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20146, '_thumbnail_id', 40146);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20147, 1, '2018-05-06 22:26:19', '2018-05-06 22:26:19', '', '52 (2018-05-10)', '',
   'publish', 'closed', 'closed', 'periodical-147', '2025-08-04 21:11:36', '2025-08-04 21:11:36',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20147, 'issue', 52);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20147, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20148, 1, '2018-09-08 19:19:49', '2018-09-08 19:19:49', '', '53 (2018-09-10)', '',
   'publish', 'closed', 'closed', 'periodical-148', '2025-08-04 21:11:00', '2025-08-04 21:11:00',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20148, 'issue', 53);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20148, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20149, 1, '2018-10-30 06:47:11', '2018-10-30 06:47:11', '', '靈修與福傳', '',
   'publish', 'closed', 'closed', 'periodical-149', '2018-10-30 06:47:30', '2018-10-30 06:47:30',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20149, 'issue', 96);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20149, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40149, 1, '2018-10-30 06:47:11', '2018-10-30 06:47:11', '', '靈修與福傳', '',
   'inherit', 'closed', 'closed', 'periodical-image-149', '2018-10-30 06:47:30', '2018-10-30 06:47:30',
   '', '', '', 20149, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/149/96__.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40149, '_wp_attached_file', 'uploads/fountain/image/149/96__.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20149, '_thumbnail_id', 40149);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20150, 1, '2019-01-02 17:24:55', '2019-01-02 17:24:55', '', '54 (2019-01-10)', '',
   'publish', 'closed', 'closed', 'periodical-150', '2025-08-04 21:10:30', '2025-08-04 21:10:30',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20150, 'issue', 54);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20150, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20151, 1, '2019-05-06 22:30:13', '2019-05-06 22:30:13', '', '55 (2019-05-10)', '',
   'publish', 'closed', 'closed', 'periodical-151', '2025-08-04 21:10:04', '2025-08-04 21:10:04',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20151, 'issue', 55);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20151, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20152, 1, '2019-08-27 05:52:43', '2019-08-27 05:52:43', '', '靈修與福傳', '',
   'publish', 'closed', 'closed', 'periodical-152', '2019-08-27 05:58:37', '2019-08-27 05:58:37',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20152, 'issue', 97);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20152, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40152, 1, '2019-08-27 05:52:43', '2019-08-27 05:52:43', '', '靈修與福傳', '',
   'inherit', 'closed', 'closed', 'periodical-image-152', '2019-08-27 05:58:37', '2019-08-27 05:58:37',
   '', '', '', 20152, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/152/97___.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40152, '_wp_attached_file', 'uploads/fountain/image/152/97___.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20152, '_thumbnail_id', 40152);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20153, 1, '2019-09-09 04:35:53', '2019-09-09 04:35:53', '', '56 (2019-09-10)', '',
   'publish', 'closed', 'closed', 'periodical-153', '2025-08-04 21:09:31', '2025-08-04 21:09:31',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20153, 'issue', 56);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20153, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20154, 1, '2020-01-08 18:46:24', '2020-01-08 18:46:24', '', '57 (2020-01-10)', '',
   'publish', 'closed', 'closed', 'periodical-154', '2025-08-04 21:08:31', '2025-08-04 21:08:31',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20154, 'issue', 57);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20154, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20155, 1, '2020-03-24 06:16:56', '2020-03-24 06:16:56', '', '信仰是禮物、選擇、熱忱 ', '',
   'publish', 'closed', 'closed', 'periodical-155', '2020-04-07 07:24:21', '2020-04-07 07:24:21',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20155, 'issue', 98);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20155, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40155, 1, '2020-03-24 06:16:56', '2020-03-24 06:16:56', '', '信仰是禮物、選擇、熱忱 ', '',
   'inherit', 'closed', 'closed', 'periodical-image-155', '2020-04-07 07:24:21', '2020-04-07 07:24:21',
   '', '', '', 20155, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/155/__98001.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40155, '_wp_attached_file', 'uploads/fountain/image/155/__98001.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20155, '_thumbnail_id', 40155);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20156, 1, '2020-05-08 17:25:05', '2020-05-08 17:25:05', '', '58 (2020-05-10)', '',
   'publish', 'closed', 'closed', 'periodical-156', '2025-08-04 21:08:06', '2025-08-04 21:08:06',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20156, 'issue', 58);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20156, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20157, 1, '2020-09-08 16:24:33', '2020-09-08 16:24:33', '', '59 (2020-09-10)', '',
   'publish', 'closed', 'closed', 'periodical-157', '2025-08-04 21:07:37', '2025-08-04 21:07:37',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20157, 'issue', 59);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20157, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20158, 1, '2021-01-08 05:17:51', '2021-01-08 05:17:51', '', '0', '',
   'draft', 'closed', 'closed', 'periodical-158', '2021-01-10 04:29:15', '2021-01-10 04:29:15',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20158, 'issue', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20158, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20159, 1, '2021-01-08 05:18:49', '2021-01-08 05:18:49', '', '60 (2021-01-10)', '',
   'publish', 'closed', 'closed', 'periodical-159', '2025-08-04 21:07:03', '2025-08-04 21:07:03',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20159, 'issue', 60);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20159, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20160, 1, '2021-05-10 01:21:13', '2021-05-10 01:21:13', '', '61 (2021-05-10)', '',
   'publish', 'closed', 'closed', 'periodical-160', '2025-08-04 21:06:14', '2025-08-04 21:06:14',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20160, 'issue', 61);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20160, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20161, 1, '2021-09-06 05:18:26', '2021-09-06 05:18:26', '', '62 (2021-09-10)', '',
   'publish', 'closed', 'closed', 'periodical-161', '2025-08-04 21:05:59', '2025-08-04 21:05:59',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20161, 'issue', 62);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20161, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20162, 1, '2021-09-07 08:49:52', '2021-09-07 08:49:52', '', '靈修‧陪伴‧服務', '',
   'publish', 'closed', 'closed', 'periodical-162', '2021-09-29 07:50:30', '2021-09-29 07:50:30',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20162, 'issue', 99);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20162, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40162, 1, '2021-09-07 08:49:52', '2021-09-07 08:49:52', '', '靈修‧陪伴‧服務', '',
   'inherit', 'closed', 'closed', 'periodical-image-162', '2021-09-29 07:50:30', '2021-09-29 07:50:30',
   '', '', '', 20162, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/162/99期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40162, '_wp_attached_file', 'uploads/fountain/image/162/99期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20162, '_thumbnail_id', 40162);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20163, 1, '2022-01-12 04:28:05', '2022-01-12 04:28:05', '', '63 (2022-01-20)', '',
   'publish', 'closed', 'closed', 'periodical-163', '2025-08-04 21:03:24', '2025-08-04 21:03:24',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20163, 'issue', 63);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20163, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20164, 1, '2022-04-23 18:23:59', '2022-04-23 18:23:59', '', '64 (2022-05-20)', '',
   'publish', 'closed', 'closed', 'periodical-164', '2025-08-04 21:03:03', '2025-08-04 21:03:03',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20164, 'issue', 64);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20164, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20165, 1, '2022-09-16 18:54:52', '2022-09-16 18:54:52', '', '65 (2022-09-20)', '',
   'publish', 'closed', 'closed', 'periodical-165', '2025-08-04 21:02:11', '2025-08-04 21:02:11',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20165, 'issue', 65);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20165, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20166, 1, '2022-12-13 06:25:58', '2022-12-13 06:25:58', '', '心泉100', '',
   'publish', 'closed', 'closed', 'periodical-166', '2022-12-13 06:25:58', '2022-12-13 06:25:58',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20166, 'issue', 100);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20166, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40166, 1, '2022-12-13 06:25:58', '2022-12-13 06:25:58', '', '心泉100', '',
   'inherit', 'closed', 'closed', 'periodical-image-166', '2022-12-13 06:25:58', '2022-12-13 06:25:58',
   '', '', '', 20166, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/166/100期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40166, '_wp_attached_file', 'uploads/fountain/image/166/100期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20166, '_thumbnail_id', 40166);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20167, 1, '2023-04-17 03:31:52', '2023-04-17 03:31:52', '', '66 (2023-04-20)', '',
   'publish', 'closed', 'closed', 'periodical-167', '2025-08-04 21:01:33', '2025-08-04 21:01:33',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20167, 'issue', 66);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20167, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20168, 1, '2023-04-17 03:32:45', '2023-04-17 03:32:45', '', '67 (2023-10-31)', '',
   'publish', 'closed', 'closed', 'periodical-168', '2025-08-04 21:01:02', '2025-08-04 21:01:02',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20168, 'issue', 67);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20168, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20169, 1, '2023-11-07 07:40:25', '2023-11-07 07:40:25', '', '福傳・靈修・陪伴', '',
   'publish', 'closed', 'closed', 'periodical-169', '2024-01-02 05:52:19', '2024-01-02 05:52:19',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20169, 'issue', 101);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20169, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40169, 1, '2023-11-07 07:40:25', '2023-11-07 07:40:25', '', '福傳・靈修・陪伴', '',
   'inherit', 'closed', 'closed', 'periodical-image-169', '2024-01-02 05:52:19', '2024-01-02 05:52:19',
   '', '', '', 20169, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/169/101封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40169, '_wp_attached_file', 'uploads/fountain/image/169/101封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20169, '_thumbnail_id', 40169);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20170, 1, '2024-04-16 15:38:28', '2024-04-16 15:38:28', '', '68 (2024-04-30)', '',
   'publish', 'closed', 'closed', 'periodical-170', '2025-08-04 21:00:29', '2025-08-04 21:00:29',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20170, 'issue', 68);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20170, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20171, 1, '2024-10-25 20:55:08', '2024-10-25 20:55:08', '', '69 (2024-10-31)', '',
   'publish', 'closed', 'closed', 'periodical-171', '2025-08-04 20:59:01', '2025-08-04 20:59:01',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20171, 'issue', 69);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20171, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20172, 1, '2024-10-29 06:25:53', '2024-10-29 06:25:53', '', '地上的鹽  世界的光', '',
   'publish', 'closed', 'closed', 'periodical-172', '2024-10-29 07:00:31', '2024-10-29 07:00:31',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20172, 'issue', 102);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20172, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40172, 1, '2024-10-29 06:25:53', '2024-10-29 06:25:53', '', '地上的鹽  世界的光', '',
   'inherit', 'closed', 'closed', 'periodical-image-172', '2024-10-29 07:00:31', '2024-10-29 07:00:31',
   '', '', '', 20172, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/172/102期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40172, '_wp_attached_file', 'uploads/fountain/image/172/102期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20172, '_thumbnail_id', 40172);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20173, 1, '2025-04-13 03:42:02', '2025-04-13 03:42:02', '', '70 (2025-04-30)', '',
   'publish', 'closed', 'closed', 'periodical-173', '2025-08-04 20:54:11', '2025-08-04 20:54:11',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20173, 'issue', 70);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20173, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20174, 1, '2025-10-14 22:22:12', '2025-10-14 22:22:12', '', '72 (04/30/2026)', '',
   'publish', 'closed', 'closed', 'periodical-174', '2026-04-29 22:14:08', '2026-04-29 22:14:08',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20174, 'issue', 72);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20174, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20175, 1, '2025-10-14 22:22:40', '2025-10-14 22:22:40', '', '71 (10/30/2025)', '',
   'publish', 'closed', 'closed', 'periodical-175', '2025-10-29 21:09:21', '2025-10-29 21:09:21',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20175, 'issue', 71);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20175, 201, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20176, 1, '2025-11-04 08:02:43', '2025-11-04 08:02:43', '', '我是葡萄樹，你們是枝條', '',
   'publish', 'closed', 'closed', 'periodical-176', '2025-11-04 08:06:15', '2025-11-04 08:06:15',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20176, 'issue', 103);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20176, 200, 0);
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, post_mime_type, guid, comment_count)
VALUES
  (40176, 1, '2025-11-04 08:02:43', '2025-11-04 08:02:43', '', '我是葡萄樹，你們是枝條', '',
   'inherit', 'closed', 'closed', 'periodical-image-176', '2025-11-04 08:06:15', '2025-11-04 08:06:15',
   '', '', '', 20176, 0, 'attachment', 'image/jpeg', 'https://PRODUCTION_DOMAIN_HERE/uploads/fountain/image/176/103期封面.jpg', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (40176, '_wp_attached_file', 'uploads/fountain/image/176/103期封面.jpg');
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20176, '_thumbnail_id', 40176);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (20177, 1, '2026-04-14 20:40:50', '2026-04-14 20:40:50', '', '72 (2026-04-30)', '',
   'draft', 'closed', 'closed', 'periodical-177', '2026-04-14 20:41:10', '2026-04-14 20:41:10',
   '', '', '', 0, 0, 'periodical', 0);
INSERT INTO wp_postmeta (post_id, meta_key, meta_value) VALUES (20177, 'issue', 72);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (20177, 201, 0);

-- Recalculate periodical_type term counts
UPDATE wp_term_taxonomy tt SET count = (SELECT COUNT(*) FROM wp_term_relationships tr WHERE tr.term_taxonomy_id = tt.term_taxonomy_id) WHERE tt.taxonomy = 'periodical_type';

SET foreign_key_checks = 1;
