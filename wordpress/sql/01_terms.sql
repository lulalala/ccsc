SET NAMES utf8mb4;
SET foreign_key_checks = 0;

-- Groups → wp_terms + wp_term_taxonomy (taxonomy: 'group')
-- Periodical types → wp_terms + wp_term_taxonomy (taxonomy: 'periodical_type')

-- wp_terms
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (101, '總會', '%e7%b8%bd%e6%9c%83', 0);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (102, '台北分會', '%e5%8f%b0%e5%8c%97%e5%88%86%e6%9c%83', 0);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (103, '台中分會', '%e5%8f%b0%e4%b8%ad%e5%88%86%e6%9c%83', 0);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (104, '高雄分會', '%e9%ab%98%e9%9b%84%e5%88%86%e6%9c%83', 0);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (105, '北美分會', '%e5%8c%97%e7%be%8e%e5%88%86%e6%9c%83', 0);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (106, '默觀月訊', '%e9%bb%98%e8%a7%80%e6%9c%88%e8%a8%8a', 0);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (107, '總會', '%e7%b8%bd%e6%9c%83-7', 0);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (200, '心泉', 'fountain', 0);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (201, '芥子', 'seed', 0);

-- wp_term_taxonomy
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (101, 101, 'group', '', 0, 9);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (102, 102, 'group', '', 0, 36);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (103, 103, 'group', '', 0, 27);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (104, 104, 'group', '', 0, 15);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (105, 105, 'group', '', 0, 4);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (106, 106, 'group', '', 0, 115);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (107, 107, 'group', '', 0, 8);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (200, 200, 'periodical_type', '', 0, 0);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (201, 201, 'periodical_type', '', 0, 0);

SET foreign_key_checks = 1;
