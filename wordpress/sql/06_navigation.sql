SET NAMES utf8mb4;
SET foreign_key_checks = 0;

-- Update wp_navigation post (ID=4) with full menu block markup

UPDATE wp_posts
  SET post_title = 'Main Navigation',
      post_content = '<!-- wp:navigation-link {"label":"首頁","url":"/","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-submenu {"label":"關於我們","url":"#","kind":"custom","isTopLevelLink":false} -->
<!-- wp:navigation-link {"label":"小會是什麼？","url":"/?page_id=50001","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"宗旨精神","url":"/?page_id=50002","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"歷史沿革","url":"/?page_id=50003","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"大事年表","url":"/?page_id=50004","kind":"custom","isTopLevelLink":false} /-->
<!-- /wp:navigation-submenu -->
<!-- wp:navigation-submenu {"label":"活動訊息","url":"#","kind":"custom","isTopLevelLink":false} -->
<!-- wp:navigation-link {"label":"總會","url":"/?group=總會","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"台北分會","url":"/?group=台北分會","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"台中分會","url":"/?group=台中分會","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"高雄分會","url":"/?group=高雄分會","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"北美分會","url":"/?group=北美分會","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"默觀月訊","url":"/?group=默觀月訊","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"總會","url":"/?group=總會-7","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"影音紀錄","url":"#","kind":"custom","isTopLevelLink":false} /-->
<!-- /wp:navigation-submenu -->
<!-- wp:navigation-submenu {"label":"服務與生活","url":"#","kind":"custom","isTopLevelLink":false} -->
<!-- wp:navigation-link {"label":"文化福傳","url":"#","kind":"custom","isTopLevelLink":false} /-->
<!-- /wp:navigation-submenu -->
<!-- wp:navigation-link {"label":"行事曆","url":"#","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-submenu {"label":"小會刊物","url":"#","kind":"custom","isTopLevelLink":false} -->
<!-- wp:navigation-link {"label":"心泉","url":"/?periodical_type=fountain","kind":"custom","isTopLevelLink":false} /-->
<!-- wp:navigation-link {"label":"芥子","url":"/?periodical_type=seed","kind":"custom","isTopLevelLink":false} /-->
<!-- /wp:navigation-submenu -->',
      post_status = 'publish',
      post_modified = NOW(),
      post_modified_gmt = UTC_TIMESTAMP()
  WHERE ID = 4;

SET foreign_key_checks = 1;
