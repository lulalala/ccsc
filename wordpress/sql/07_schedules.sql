SET NAMES utf8mb4;
SET foreign_key_checks = 0;

-- Schedules → wp_posts (post_type='schedule') + wp_term_relationships

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60007, 1, '2019-11-19 02:53:51', '2019-11-19 02:53:51', '<p align="center"><strong>2026年北美分會行事曆</strong></p>

<p align="center"><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2026/3/1更新 </strong>&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp;</p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="width:612px;" width="766">
	<tbody>
		<tr>
			<td style="width:140px;height:1px;">
			<p align="center">日&nbsp; 期</p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">活 動 內 容</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="center">主講人／主持人&nbsp;&nbsp;&nbsp;&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:1px;">
			<p align="center">週一至週五每天下午4：00（美東時間）</p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">默觀祈禱</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="left">週一：李秀萍</p>

			<p align="left">週二：徐琪/葛寧意</p>

			<p align="left">週三：葛寧意/許建徳</p>

			<p align="left">週四：馮克芳</p>

			<p align="left">週五：孫愛珠</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:53px;">
			<p align="center"><strong>1/1&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:53px;">
			<p align="left">聊天室：元旦暫停</p>
			</td>
			<td style="width:106px;height:53px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:1px;">
			<p align="center"><strong>1/8&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">工作室會議</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="center">趙世熙</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:46px;">
			<p align="center"><strong>1/15&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:46px;">
			<p align="center">公念玫瑰經</p>
			</td>
			<td style="width:106px;height:46px;">
			<p align="center">王利華</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:35px;">
			<p align="center"><strong>1/22&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:35px;">
			<p align="center">神修溯源（十七）：神修生活</p>
			</td>
			<td style="width:106px;height:35px;">
			<p align="center">韓甲蕙/梁修文</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:47px;">
			<p align="center"><strong>2/5&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:47px;">
			<p align="center">聊天室：在幸福中老去</p>
			</td>
			<td style="width:106px;height:47px;">
			<p align="center">江行武</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:39px;">
			<p align="center"><strong>2/26(四)</strong></p>
			</td>
			<td style="width:225px;height:39px;">
			<p align="center">神修溯源（十八）：會章上篇總複習：答覆召叫</p>
			</td>
			<td style="width:106px;height:39px;">
			<p align="center">葛寧意/馮克芳</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:45px;">
			<p align="center"><strong>3/5&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:45px;">
			<p align="center">聊天室：四旬期避靜講座</p>
			</td>
			<td style="width:106px;height:45px;">
			<p align="center">滕林神父</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:1px;">
			<p align="center"><strong>3/12&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">工作室會議</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="center">趙世熙</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:38px;">
			<p align="center"><strong>3/19&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:38px;">
			<p align="center">公念玫瑰經</p>
			</td>
			<td style="width:106px;height:38px;">
			<p align="center">王利華</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:39px;">
			<p align="center"><strong>3/27(四)</strong></p>
			</td>
			<td style="width:225px;height:39px;">
			<p align="center">小會手冊修訂討論</p>
			</td>
			<td style="width:106px;height:39px;">
			<p align="center">工作室</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:38px;">
			<p align="center"><strong>4/2(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:38px;">
			<p align="center">聊天室：「小會的初心」研討會</p>
			</td>
			<td style="width:106px;height:38px;">
			<p align="center">許建德</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:63px;">
			<p align="center"><strong>4/9 (</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:63px;">
			<p align="center">工作室會議</p>
			</td>
			<td style="width:106px;height:63px;">
			<p align="center">趙世熙/葛寧意</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:63px;">
			<p align="center"><strong>4/23 (</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:63px;">
			<p align="center">小會手冊修訂討論</p>
			</td>
			<td style="width:106px;height:63px;">
			<p align="center">工作室</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:47px;">
			<p align="center"><strong>5/7&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:47px;">
			<p align="center">聊天室：「會員手冊修訂案」分會討論及問卷收回</p>
			</td>
			<td style="width:106px;height:47px;">
			<p align="center">工作室</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:1px;">
			<p align="center"><strong>5/14&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">工作室會議</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="center">趙世熙/葛寧意</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:47px;">
			<p align="center"><strong>5/21&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:47px;">
			<p align="center">公念玫瑰經</p>
			</td>
			<td style="width:106px;height:47px;">
			<p align="center">王利華</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:1px;">
			<p align="center"><strong>5/28&nbsp;(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">神修討論</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="center">未定</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:38px;">
			<p align="center"><strong>6/4(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:38px;">
			<p align="center">聊天室：「悅主畫展」</p>
			</td>
			<td style="width:106px;height:38px;">
			<p align="center">周文漣</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:38px;">
			<p align="center"><strong>6/11(</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:38px;">
			<p align="center">工作室會議</p>
			</td>
			<td style="width:106px;height:38px;">
			<p align="center">趙世熙/葛寧意</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:63px;">
			<p align="center"><strong>6/25 (</strong><strong>四)</strong></p>
			</td>
			<td style="width:225px;height:63px;">
			<p align="center">神修討論</p>
			</td>
			<td style="width:106px;height:63px;">
			<p align="center">未定</p>
			</td>
		</tr>
		
	</tbody>
</table>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<div style="clear:both;">&nbsp;</div>

<p>&nbsp;</p>
', '北美分會行事曆 2019/11/19', '',
   'publish', 'closed', 'closed', 'schedule-7', '2026-02-28 07:15:01', '2026-02-28 07:15:01',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60007, 105, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60008, 1, '2019-12-03 17:10:41', '2019-12-03 17:10:41', '<p>神修默觀祈禱小組2026年4月訊。已於3月27日出刊。</p>
', '默觀月訊行事曆 2019/12/03', '',
   'publish', 'closed', 'closed', 'schedule-8', '2026-04-15 00:52:04', '2026-04-15 00:52:04',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60008, 106, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60009, 1, '2020-10-25 14:20:47', '2020-10-25 14:20:47', '<p align="center"><strong>2020</strong><strong>年台北分會</strong><strong>行事曆&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;年度主題：福傳 我們的使命</strong></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="width: 644px;" width="0">
	<tbody>
		<tr>
			<td style="width: 114px;">
			<p align="center">日 &nbsp;期</p>
			</td>
			<td style="width: 153px;">
			<p align="center">活 動 內 容</p>
			</td>
			<td style="width: 103px;">
			<p align="center">負 責 組 別</p>
			</td>
			<td style="width: 123px;">
			<p align="center">主 講 人</p>
			</td>
			<td style="width: 152px;">
			<p align="center">備&nbsp; 註</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 42px;">
			<p align="center">1月12日(日)</p>
			</td>
			<td style="width: 153px; height: 42px;">
			<p align="center">從基督徒的角度觀&ldquo;三位一體之神&rdquo;與&ldquo;有無相生之道&rdquo;</p>
			</td>
			<td style="width: 103px; height: 42px;">
			<p align="center">大安（一）、大安（二）</p>
			</td>
			<td style="width: 123px; height: 42px;">
			<p align="center">林之鼎神父</p>
			</td>
			<td style="width: 152px; height: 42px;">
			<p>1/1(四)元旦</p>

			<p>1/25 (六) 初一</p>

			<p>(1/23-1/29)7天連假</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 42px;">
			<p align="center">2月8日(六)</p>
			</td>
			<td style="width: 153px; height: 42px;">
			<p align="center">頤福園、團拜</p>
			</td>
			<td style="width: 103px; height: 42px;">
			<p align="center">活糧組</p>
			</td>
			<td style="width: 123px; height: 42px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width: 152px; height: 42px;">
			<p>&nbsp;因新冠疫情停辦</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 29px;">
			<p align="center">3月27~29日</p>
			</td>
			<td style="width: 153px; height: 29px;">
			<p align="center">聖心靈修中心<br />
			避靜</p>
			</td>
			<td style="width: 103px; height: 29px;">
			<p align="center">文化查經組</p>
			</td>
			<td style="width: 123px; height: 29px;">
			<p>&nbsp;江奇星神父</p>

			<p style="margin-left: 18pt;">&nbsp;</p>
			</td>
			<td style="width: 152px; height: 29px;">
			<p align="center">因新冠疫情停辦</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 59px;">
			<p align="center">4月18日(六)<br />
			&nbsp;</p>
			</td>
			<td style="width: 153px; height: 59px;">
			<p align="center">小踏青-</p>

			<p>基隆阿拉寶灣之遊</p>
			</td>
			<td style="width: 103px; height: 59px;">
			<p align="center">文化查經組</p>
			</td>
			<td style="width: 123px; height: 59px;">
			<p align="center">賴惠珠</p>
			</td>
			<td style="width: 152px; height: 59px;">
			<p align="center">因新冠疫情停辦</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 50px;">
			<p align="center">5月16日(六)</p>

			<p align="center">&nbsp;</p>
			</td>
			<td style="width: 153px; height: 50px;">
			<p align="center">AI〈 人工智慧〉與醫療倫理</p>
			</td>
			<td style="width: 103px; height: 50px;">
			<p align="center">大安（三）</p>

			<p align="center">木柵組</p>
			</td>
			<td style="width: 123px; height: 50px;">
			<p align="center">許德訓神父</p>
			</td>
			<td style="width: 152px; height: 50px;">
			<p align="center">因新冠疫情停辦</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 57px;">
			<p align="center">6月21日(日)</p>
			</td>
			<td style="width: 153px; height: 57px;">
			<p align="center">聖三節會慶</p>

			<p align="center">胡神父慶生</p>

			<p align="center">十誡新銓-&ldquo;十誡與真福八端&rdquo;導讀</p>
			</td>
			<td style="width: 103px; height: 57px;">
			<p align="center">活糧組</p>
			</td>
			<td style="width: 123px; height: 57px;">
			<p align="center">胡國楨神父</p>
			</td>
			<td style="width: 152px; height: 57px;">
			<p align="center">6/25端午</p>

			<p align="center">(6/25-6/28)4天連假</p>

			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 45px;">
			<p align="center">7月19日(日)</p>
			</td>
			<td style="width: 153px; height: 45px;">
			<p align="center">管窺目前大陸教會</p>
			</td>
			<td style="width: 103px; height: 45px;">
			<p align="center">文化查經組</p>
			</td>
			<td style="width: 123px; height: 45px;">
			<p align="center">王端敏</p>
			</td>
			<td style="width: 152px; height: 45px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 34px;">
			<p align="center">8月23日(日)</p>
			</td>
			<td style="width: 153px; height: 34px;">
			<p align="center">分享環遊世界之旅</p>
			</td>
			<td style="width: 103px; height: 34px;">
			<p align="center">大安（三）</p>

			<p align="center">木柵組</p>
			</td>
			<td style="width: 123px; height: 34px;">
			<p align="center">&nbsp;曾慧榕</p>
			</td>
			<td style="width: 152px; height: 34px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 47px;">
			<p align="center">9月13日(日)</p>
			</td>
			<td style="width: 153px; height: 47px;">
			<p align="center">雷公追思(10週年)</p>
			</td>
			<td style="width: 103px; height: 47px;">
			<p align="center">大安（一）、大安（二）</p>
			</td>
			<td style="width: 123px; height: 47px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width: 152px; height: 47px;">
			<p>震旦之友協會、活泉〈合辦〉</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 43px;">
			<p align="center">9月25~27日</p>
			</td>
			<td style="width: 153px; height: 43px;">
			<p align="center">共融營(彰化靜山)</p>
			</td>
			<td style="width: 103px; height: 43px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width: 123px; height: 43px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width: 152px; height: 43px;">
			<p align="center">(10/1-10/4)4天中秋連假</p>

			<p align="center">(10/9-10/11)3天連假</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 43px;">
			<p align="center">11月22日(日)</p>
			</td>
			<td style="width: 153px; height: 43px;">
			<p align="center">淺談藝術市場與博覽會</p>

			<p align="center">&nbsp;</p>
			</td>
			<td style="width: 103px; height: 43px;">
			<p align="center">大安（三）</p>

			<p align="center">木柵組</p>
			</td>
			<td style="width: 123px; height: 43px;">
			<p align="center">林立泰</p>
			</td>
			<td style="width: 152px; height: 43px;">
			<p align="center">&nbsp;</p>

			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width: 114px; height: 31px;">
			<p align="center">12月20日</p>

			<p align="center">(日)</p>

			<p align="center">&nbsp;</p>
			</td>
			<td style="width: 153px; height: 31px;">
			<p align="center">以卡內基做福傳</p>
			</td>
			<td style="width: 103px; height: 31px;">
			<p align="center">大安（一）、大安（二）</p>

			<p align="center">文化查經組</p>
			</td>
			<td style="width: 123px; height: 31px;">
			<p align="center">&nbsp;黑幼龍</p>
			</td>
			<td style="width: 152px; height: 31px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="clear: both;">&nbsp;</div>

<p>&nbsp;</p>
', '台北分會行事曆 2020/10/25', '',
   'publish', 'closed', 'closed', 'schedule-9', '2020-10-25 14:32:24', '2020-10-25 14:32:24',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60009, 102, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60011, 1, '2023-11-21 08:41:31', '2023-11-21 08:41:31', '<p align="center"><strong>2023</strong><strong>年台北分會行事曆</strong></p>

<p align="center"><strong>年度主題：攜手同行─靈修、陪伴、服務</strong></p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="width:564px;" width="705">
	<tbody>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">日&nbsp; 期</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">活 動 內 容</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">負 責 組 別</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">主 講 人</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">1月15日(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">世界上最遠的路程是從頭到心</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">大安（一）、大安（二）</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">李碧圓修女</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">2月17~19日(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">全球共融營</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">總&nbsp; 會</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">李百齡</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">3月10~12〈日〉</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">四旬期避靜-</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">文化查經組</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">麥安泰神父</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">4月29日(六)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">小踏青</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">大安（一）、大安（二）</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">劉佩珊</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">5月13日(六)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">疫苗研發知多少？</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">大安（三）</p>

			<p align="center">木柵組</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">鍾筱妤</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">6月4日(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">會&nbsp; 慶<br />
			（聖三節）</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">文化查經組</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">胡國楨神父</p>

			<p align="center">介紹<br />
			《多默福音》</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">7月16日(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">利瑪竇的天文曆算研究</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">大安（一）、大安（二）</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">古偉瀛與張海潮對談</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">8月27日(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">Enjoy Life</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">大安（三）</p>

			<p align="center">木柵組</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">黑幼龍</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">9月17日(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">雷公追思(13週年)</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">總&nbsp;&nbsp;&nbsp; 會</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">總&nbsp; 會</p>

			<p align="center">戎巧復</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">10月13~15(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">共融營</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">台北分會</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">總&nbsp; 會</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">11月19日(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">地上的鹽 世界的光</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">大安（一）、大安（二）</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">張少麟神父</p>
			</td>
		</tr>
		<tr>
			<td style="width:153px;height:1px;">
			<p align="center">12月17日(日)</p>
			</td>
			<td style="width:173px;height:1px;">
			<p align="center">慶祝聖誕</p>
			</td>
			<td style="width:105px;height:1px;">
			<p align="center">大安（三）</p>

			<p align="center">木柵組</p>
			</td>
			<td style="width:132px;height:1px;">
			<p align="center">青壯組</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="clear:both;">&nbsp;</div>

<p>&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp;</p>
', '台北分會行事曆 2023/11/21', '',
   'publish', 'closed', 'closed', 'schedule-11', '2023-11-21 08:41:31', '2023-11-21 08:41:31',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60011, 102, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60016, 1, '2024-02-04 13:46:00', '2024-02-04 13:46:00', '<p align="center"><strong>113</strong><strong>年台北分會行事曆</strong></p>

<p align="center"><strong>年度主題： 靈修 福傳 共融 傳承&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong>&nbsp; &nbsp; &nbsp;113/6/30定案</p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="width:612px;" width="766">
	<tbody>
		<tr>
			<td style="width:140px;height:1px;">
			<p align="center">日&nbsp; 期</p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">活 動 內 容</p>
			</td>
			<td style="width:142px;height:1px;">
			<p align="center">負 責 組</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="center">主 講 人</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:53px;">
			<p align="center"><strong>1/21 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:53px;">
			<p align="center">福音的喜樂中分辨原則</p>

			<p align="center">~ 邁向和平之路 ~</p>
			</td>
			<td style="width:142px;height:53px;">
			<p align="center">大安(二、三)</p>
			</td>
			<td style="width:106px;height:53px;">
			<p align="center">胡淑琴修女</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:1px;">
			<p align="center"><strong>2/18 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">我為小會做什麼? 座談會</p>

			<p align="center">春節團拜</p>
			</td>
			<td style="width:142px;height:1px;">
			<p align="center">大安(一)</p>

			<p align="center">木柵組</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="center">褚世傑主持</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:35px;">
			<p align="center"><strong>3/1-3 (</strong><strong>五-日)</strong></p>
			</td>
			<td style="width:225px;height:35px;">
			<p align="center">四旬期避靜</p>

			<p align="center">(聖心靈修中心)</p>

			<p align="center">主題：耶穌基督的逾越奧蹟</p>
			</td>
			<td style="width:142px;height:35px;">
			<p align="center">文化查經組</p>
			</td>
			<td style="width:106px;height:35px;">
			<p align="center">高金聲神父</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:47px;">
			<p align="center"><strong>4/14 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:47px;">
			<p align="center">從小會的會名和使命談起</p>
			</td>
			<td style="width:142px;height:47px;">
			<p align="center">大安(一、二)</p>
			</td>
			<td style="width:106px;height:47px;">
			<p align="center">吳伯仁神父</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:46px;">
			<p align="center"><strong>5/26 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:46px;">
			<p align="center">會&nbsp; 慶（聖三節）</p>

			<p align="center">主題：全球思維，在地行動</p>

			<p align="center">副題：羅爾神父在美國繼續基督對中華的使命</p>
			</td>
			<td style="width:142px;height:46px;">
			<p align="center">大安(三)、木柵組</p>
			</td>
			<td style="width:106px;height:46px;">
			<p align="center">胡國楨神父</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:39px;">
			<p align="center"><strong>6月29日(六)</strong></p>
			</td>
			<td style="width:225px;height:39px;">
			<p align="center">天使教堂&amp;峨嵋天主堂</p>

			<p align="center">新竹寶山小德蘭堂朝聖地</p>
			</td>
			<td style="width:142px;height:39px;">
			<p align="center">文化查經組</p>
			</td>
			<td style="width:106px;height:39px;">
			<p align="center">與新竹小組合辦</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:45px;">
			<p align="center"><strong>7/20 (</strong><strong>六)</strong></p>
			</td>
			<td style="width:225px;height:45px;">
			<p align="center">台北總教區「芯媒體」福傳看過來!</p>
			</td>
			<td style="width:142px;height:45px;">
			<p align="center">大安(二、三)</p>
			</td>
			<td style="width:106px;height:45px;">
			<p align="center">鍾瑪竇弟兄</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:38px;">
			<p align="center"><strong>8/18 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:38px;">
			<p align="center">未來精彩的最後十年--接受人的有限</p>
			</td>
			<td style="width:142px;height:38px;">
			<p align="center">大安(一)</p>

			<p align="center">木柵組</p>
			</td>
			<td style="width:106px;height:38px;">
			<p align="center">陳惠姿姊妹</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:38px;">
			<p align="center"><strong>9/15 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:38px;">
			<p align="center">雷公追思(14週年)</p>
			</td>
			<td style="width:142px;height:38px;">
			<p align="center">總&nbsp;&nbsp;&nbsp; 會</p>
			</td>
			<td style="width:106px;height:38px;">
			<p align="center">總會戎巧復</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:1px;">
			<p><strong>10/18-20 (</strong><strong>五-日)</strong></p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">共融營(彰化鹿港)</p>
			</td>
			<td style="width:142px;height:1px;">
			<p align="center">會員參與</p>
			</td>
			<td style="width:106px;height:1px;">
			<p align="center">總會</p>

			<p align="center">(台中分會)</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:63px;">
			<p align="center"><strong>11/23 (</strong><strong>六)</strong></p>
			</td>
			<td style="width:225px;height:63px;">
			<p align="center">大德蘭與馬斯洛的超越性自我實現</p>
			</td>
			<td style="width:142px;height:63px;">
			<p align="center">大安(一、二)</p>
			</td>
			<td style="width:106px;height:63px;">
			<p align="center">陳美琴教授</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:47px;">
			<p align="center"><strong>12/15 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:47px;">
			<p align="center">慶祝聖誕</p>
			</td>
			<td style="width:142px;height:47px;">
			<p align="center">文化查經組</p>
			</td>
			<td style="width:106px;height:47px;">
			<p align="center">邀青壯組</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="clear:both;">&nbsp;</div>

<p>&nbsp;</p>
', '台北分會行事曆 2024/02/04', '',
   'publish', 'closed', 'closed', 'schedule-16', '2024-08-04 17:03:50', '2024-08-04 17:03:50',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60016, 102, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60017, 1, '2024-02-13 10:36:38', '2024-02-13 10:36:38', '<h2>2025 CCSC 總會行事曆</h2>

<p>靈修、福傳、共融、傳承</p>

<p>總會在2025 年相關的活動，幹事會2次，研發組4次，陶成組8次及2次共融營。</p>

<table border="1" cellpadding="0" cellspacing="0" style="width:576px;" width="720">
	<tbody>
		<tr>
			<td style="width:113px;height:20px;">
			<p align="center"><strong>日期</strong></p>
			</td>
			<td style="width:312px;height:20px;">
			<p align="center"><strong>內容摘述</strong></p>
			</td>
			<td style="width:151px;height:20px;">
			<p align="center"><strong>備註</strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;height:29px;">
			<p>2/11(W2)</p>
			</td>
			<td style="width:312px;height:29px;">
			<p>第一次研發組會議</p>
			</td>
			<td style="width:151px;height:29px;">
			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>2/28(W5)</p>
			</td>
			<td style="width:312px;">
			<p>參贊會</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>3/6(W4)</p>
			</td>
			<td style="width:312px;">
			<p>聯合陶成組預備會議</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>3/17(W1)</p>
			</td>
			<td style="width:312px;">
			<p>第三次會員手冊修訂委員會會議</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>3/21 ~3/23</p>
			</td>
			<td style="width:312px;">
			<p>青壯組共識營</p>
			</td>
			<td style="width:151px;">
			<p>台東</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>4/10(W4)</p>
			</td>
			<td style="width:312px;">
			<p>第一次聯合陶成組</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>4/12(W6)</p>
			</td>
			<td style="width:312px;">
			<p>第二次研發組會議</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>4/15(W2)</p>
			</td>
			<td style="width:312px;">
			<p>第四次會員手冊修訂委員會會議</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>4/30(W3)</p>
			</td>
			<td style="width:312px;">
			<p>103期心泉截稿</p>
			</td>
			<td style="width:151px;">
			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>5/6(W2)</p>
			</td>
			<td style="width:312px;">
			<p>第五次會員手冊修訂委員會會議</p>
			</td>
			<td style="width:151px;">
			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>5/8(W4)</p>
			</td>
			<td style="width:312px;">
			<p>第二次聯合陶成組</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>5/29(W6)</p>
			</td>
			<td style="width:312px;">
			<p>第三次研發組會議</p>
			</td>
			<td style="width:151px;">
			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>6/12(W4)</p>
			</td>
			<td style="width:312px;">
			<p>第三次聯合陶成組</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>7/8(W2)</p>
			</td>
			<td style="width:312px;">
			<p>幹事會</p>
			</td>
			<td style="width:151px;">
			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>7/10(W4)</p>
			</td>
			<td style="width:312px;">
			<p>第四次聯合陶成組</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>8/2(W6)</p>
			</td>
			<td style="width:312px;">
			<p>第四次研發組會議</p>
			</td>
			<td style="width:151px;">
			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>8/7(W4)</p>
			</td>
			<td style="width:312px;">
			<p>第五次聯合陶成組</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>8/23(W6)</p>
			</td>
			<td style="width:312px;">
			<p>參贊參議會</p>
			</td>
			<td style="width:151px;">
			<p>台北長安堂</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>9/11(W4)</p>
			</td>
			<td style="width:312px;">
			<p>第六次聯合陶成組</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>10/9(W4)</p>
			</td>
			<td style="width:312px;">
			<p>第七次聯合陶成組</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>10/3 ~ 5</p>
			</td>
			<td style="width:312px;">
			<p>總會共融營</p>
			</td>
			<td style="width:151px;">
			<p>台中 聖愛山莊</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>10/10</p>
			</td>
			<td style="width:312px;">
			<p>103期心泉出刊</p>
			</td>
			<td style="width:151px;">
			<p>&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>11/6(W4)</p>
			</td>
			<td style="width:312px;">
			<p>第八次聯合陶成組</p>
			</td>
			<td style="width:151px;">
			<p>線上</p>
			</td>
		</tr>
		<tr>
			<td style="width:113px;">
			<p>12/9(W2)</p>
			</td>
			<td style="width:312px;">
			<p>幹事會</p>
			</td>
			<td style="width:151px;">
			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<p>&nbsp;&nbsp;</p>
', '總會行事曆 2024/02/13', '',
   'publish', 'closed', 'closed', 'schedule-17', '2025-03-26 12:41:34', '2025-03-26 12:41:34',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60017, 107, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60019, 1, '2025-02-18 06:21:45', '2025-02-18 06:21:45', '<p align="center"><strong>114</strong><strong>年台北分會行事曆</strong></p>

<p align="center"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong><strong>年度主題： 靈修 福傳 共融 傳承&nbsp; </strong>&nbsp;114.02.18</p>

<table align="center" border="1" cellpadding="0" cellspacing="0" style="width:637px;" width="796">
	<tbody>
		<tr>
			<td style="width:140px;height:35px;">
			<p align="center">日&nbsp; 期</p>
			</td>
			<td style="width:225px;height:35px;">
			<p align="center">活 動 內 容</p>
			</td>
			<td style="width:142px;height:35px;">
			<p align="center">負 責 組</p>
			</td>
			<td style="width:131px;height:35px;">
			<p align="center">主 講 人</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:40px;">
			<p align="center"><strong>1/19 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:40px;">
			<p align="center">享受祈禱，祈禱享受！</p>
			</td>
			<td style="width:142px;height:40px;">
			<p align="center">溫安組</p>
			</td>
			<td style="width:131px;height:40px;">
			<p align="center">譚璧輝老師</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:45px;">
			<p align="center"><strong>2/9 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:45px;">
			<p align="center">台灣 Camino 朝聖之旅</p>

			<p align="center">春節團拜</p>
			</td>
			<td style="width:142px;height:45px;">
			<p align="center">大安組</p>
			</td>
			<td style="width:131px;height:45px;">
			<p align="center">姜樂義老師</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:35px;">
			<p align="center"><strong>3/28-30 (</strong><strong>五-日)</strong></p>
			</td>
			<td style="width:225px;height:35px;">
			<p align="center">四旬期避靜</p>

			<p align="center">(新竹納匝肋靈修中心)</p>

			<p align="center">愈有人性，愈有神性之探討</p>
			</td>
			<td style="width:142px;height:35px;">
			<p align="center">文化組</p>
			</td>
			<td style="width:131px;height:35px;">
			<p align="center">李碧圓修女</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:39px;">
			<p align="center"><strong>4/5(</strong><strong>六)</strong></p>
			</td>
			<td style="width:225px;height:39px;">
			<p align="center">烏來法蒂瑪堂朝聖</p>
			</td>
			<td style="width:142px;height:39px;">
			<p align="center">木柵組</p>
			</td>
			<td style="width:131px;height:39px;">
			<p align="center"><strong>搭配Camino </strong></p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:46px;">
			<p align="center"><strong>5/18 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:46px;">
			<p align="center">原來，我的編輯生涯是趟朝聖之旅！</p>
			</td>
			<td style="width:142px;height:46px;">
			<p align="center">溫安組</p>
			</td>
			<td style="width:131px;height:46px;">
			<p align="center">雄獅美術主編黃長春</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:39px;">
			<p align="center"><strong>6/15 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:39px;">
			<p align="center">天主聖三節 會慶</p>
			</td>
			<td style="width:142px;height:39px;">
			<p align="center">大安組</p>
			</td>
			<td style="width:131px;height:39px;">
			<p align="center">胡國楨神父</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:45px;">
			<p align="center"><strong>7/20 (</strong><strong>日) </strong></p>
			</td>
			<td style="width:225px;height:45px;">
			<p align="center">&nbsp;{傳愛一生、幸福一生}</p>

			<p>做個世界好公民</p>
			</td>
			<td style="width:142px;height:45px;">
			<p align="center">溫安組、木柵組</p>
			</td>
			<td style="width:131px;height:45px;">
			<p align="center">陳春山教授</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:38px;">
			<p align="center"><strong>8/31(</strong><strong>日) </strong>&nbsp;</p>
			</td>
			<td style="width:225px;height:38px;">
			<p align="center">&nbsp;【在愛中成長】工作坊</p>

			<p align="center"><strong>15:00 &ndash; 18:00(</strong><strong>無感恩祭)</strong></p>
			</td>
			<td style="width:142px;height:38px;">
			<p align="center">大安組</p>
			</td>
			<td style="width:131px;height:38px;">
			<p align="center">劉家正神父</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:38px;">
			<p align="center"><strong>9/14</strong> <strong>(</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:38px;">
			<p align="center">雷公追思(15週年)</p>
			</td>
			<td style="width:142px;height:38px;">
			<p align="center">總&nbsp;&nbsp;&nbsp; 會</p>
			</td>
			<td style="width:131px;height:38px;">
			<p align="center">總會戎巧復</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:1px;">
			<p><strong>10/3-5 (</strong><strong>五-日)</strong></p>
			</td>
			<td style="width:225px;height:1px;">
			<p align="center">共融營(台中聖愛山莊)</p>
			</td>
			<td style="width:142px;height:1px;">
			<p align="center">會員參與</p>
			</td>
			<td style="width:131px;height:1px;">
			<p align="center">總會</p>

			<p align="center">( 高雄分會 )</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:54px;">
			<p align="center"><strong>11/16 (</strong><strong>日)</strong></p>
			</td>
			<td style="width:225px;height:54px;">
			<p align="center">快樂賀爾蒙</p>

			<p align="center">漫談 AI</p>
			</td>
			<td style="width:142px;height:54px;">
			<p align="center">文化組</p>
			</td>
			<td style="width:131px;height:54px;">
			<p align="center">劉佩珊博士</p>

			<p align="center">趙方麟博士</p>
			</td>
		</tr>
		<tr>
			<td style="width:140px;height:35px;">
			<p align="center"><strong>12/14(</strong><strong>日) </strong></p>
			</td>
			<td style="width:225px;height:35px;">
			<p align="center">慶祝聖誕</p>
			</td>
			<td style="width:142px;height:35px;">
			<p align="center">文化組</p>
			</td>
			<td style="width:131px;height:35px;">
			<p align="center">邀青壯組</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="clear:both;">&nbsp;</div>

<p>輔導司鐸 : 胡國楨神父</p>

<p>主席 : 張惠敏</p>

<p>秘書 : 侯慧群</p>

<p>參議 : 丘琍華、陳雪琴</p>

<p>會計 : 陳雲珍</p>

<p>輔導組 : 周香汝</p>

<p>大安組 : 陳筠</p>

<p>溫安組 : 鄭嘉珷</p>

<p>木柵組 : 劉慧英</p>

<p>文化組 : 張帆人</p>
', '台北分會行事曆 2025/02/18', '',
   'publish', 'closed', 'closed', 'schedule-19', '2025-06-29 13:40:50', '2025-06-29 13:40:50',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60019, 102, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60020, 1, '2025-02-24 14:45:29', '2025-02-24 14:45:29', '<p align="center">2025年高雄分會行事曆</p>

<p align="center">年度方向：攜手同行&mdash;靈修、福傳、共融、傳承</p>

<table border="1" cellpadding="0" cellspacing="0" style="width:709px;" width="886">
	<tbody>
		<tr>
			<td style="width:161px;height:28px;">
			<p align="center">日期</p>
			</td>
			<td style="width:369px;height:28px;">
			<p align="center">內容</p>
			</td>
			<td style="width:95px;height:28px;">
			<p align="center" style="margin-left:1.2pt;">地點</p>
			</td>
			<td style="width:85px;height:28px;">
			<p align="center" style="margin-left:1.2pt;">負責人</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:37px;">
			<p align="center">2025/01/11(六)</p>
			</td>
			<td style="width:369px;height:37px;">
			<p>總會主席陳惠姿分享北美共融營見聞</p>
			</td>
			<td style="width:95px;height:37px;">
			<p align="center">聖家會</p>
			</td>
			<td style="width:85px;height:37px;">
			<p align="center" style="margin-left:1.2pt;">顏闓明</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:37px;">
			<p align="center">2/15(六)</p>
			</td>
			<td style="width:369px;height:37px;">
			<p>邀請施麗華：「步履神師，愛的旅程」西法朝聖分享，及林櫻枝生活分享</p>
			</td>
			<td style="width:95px;height:37px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:37px;">
			<p align="center" style="margin-left:1.2pt;">林櫻枝</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:37px;">
			<p align="center">3/8(六)</p>
			</td>
			<td style="width:369px;height:37px;">
			<p>邀請李碧圓修女分享「越有人性，越有神性」</p>
			</td>
			<td style="width:95px;height:37px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:37px;">
			<p align="center" style="margin-left:1.2pt;">施麗華</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:37px;">
			<p align="center">3/28~30(五~日)</p>
			</td>
			<td style="width:369px;height:37px;">
			<p>台中分會避靜(太平聖愛山莊)</p>

			<p>吳伯仁神父主講，高雄分會8人參加</p>
			</td>
			<td style="width:95px;height:37px;">
			<p align="center">聖愛山莊</p>
			</td>
			<td style="width:85px;height:37px;">
			<p align="center" style="margin-left:1.2pt;">施麗華</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:37px;">
			<p align="center">4/26 (六)</p>
			</td>
			<td style="width:369px;height:37px;">
			<p>邀請蔣範華修女分享「從德蘭的靈修談基督徒的培育」</p>
			</td>
			<td style="width:95px;height:37px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:37px;">
			<p align="center" style="margin-left:1.2pt;">洪艷秋</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:31px;">
			<p align="center">5/24(六)</p>
			</td>
			<td style="width:369px;height:31px;">
			<p>邀請陳德光前輔大神學院院長「成聖」</p>
			</td>
			<td style="width:95px;height:31px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:31px;">
			<p align="center" style="margin-left:1.2pt;">洪艷秋</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:37px;">
			<p align="center">6/28(六)</p>
			</td>
			<td style="width:369px;height:37px;">
			<p>邀請吳伯仁神父主講：「禧年、朝聖」</p>
			</td>
			<td style="width:95px;height:37px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:37px;">
			<p align="center" style="margin-left:1.2pt;">林俊芳</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:37px;">
			<p align="center">7/12(六)</p>
			</td>
			<td style="width:369px;height:37px;">
			<p>邀請廖金常修女生活分享</p>
			</td>
			<td style="width:95px;height:37px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:37px;">
			<p align="center" style="margin-left:1.2pt;">翁詩貞</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:37px;">
			<p align="center">8/9(六)</p>
			</td>
			<td style="width:369px;height:37px;">
			<p>與年輕人的對話&mdash;新世代、新見識</p>
			</td>
			<td style="width:95px;height:37px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:37px;">
			<p align="center" style="margin-left:1.2pt;">廖玲玲</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:28px;">
			<p align="center">9/13(六)</p>
			</td>
			<td style="width:369px;height:28px;">
			<p>邀請郭青青修女生活分享</p>
			</td>
			<td style="width:95px;height:28px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:28px;">
			<p align="center" style="margin-left:1.2pt;">洪碧玉</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:27px;">
			<p align="center">10/3~5(五~日)</p>
			</td>
			<td style="width:369px;height:27px;">
			<p>小會年度共融營(台中太平聖愛山莊)</p>

			<p>營長：朱豐榮</p>
			</td>
			<td style="width:95px;height:27px;">
			<p align="center">聖愛山莊</p>
			</td>
			<td style="width:85px;height:27px;">
			<p align="center" style="margin-left:1.2pt;">施麗華</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:27px;">
			<p align="center">11/8(六)</p>
			</td>
			<td style="width:369px;height:27px;">
			<p>前瞻與回顧，繼往開來，訂定新行事曆</p>
			</td>
			<td style="width:95px;height:27px;">
			<p align="center">救世主堂</p>
			</td>
			<td style="width:85px;height:27px;">
			<p align="center" style="margin-left:1.2pt;">施麗華</p>
			</td>
		</tr>
		<tr>
			<td style="width:161px;height:27px;">
			<p align="center">12/27(六)</p>
			</td>
			<td style="width:369px;height:27px;">
			<p>聖誕餐會(第45次)</p>
			</td>
			<td style="width:95px;height:27px;">
			<p align="center">待定</p>
			</td>
			<td style="width:85px;height:27px;">
			<p align="center" style="margin-left:1.2pt;">劉文義</p>
			</td>
		</tr>
	</tbody>
</table>

<p style="margin-left:41.65pt;">輔導神師：&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;神父</p>

<p style="margin-left:41.65pt;">幹部名單：主&nbsp; 席：施麗華</p>

<p style="margin-left:96.0pt;">參&nbsp; 議：顏闓明</p>

<p style="margin-left:96.0pt;">靈修組：林櫻枝、洪碧玉、洪艷秋、謝文檉</p>

<p style="margin-left:96.0pt;">秘書組：楊黎芳、郭曉薇</p>

<p style="margin-left:96.0pt;">活動組：林俊芳、朱豐榮、翁詩貞、顏闓明</p>

<p style="margin-left:96.0pt;">關懷組：劉文義、陳惠姿、李美達</p>

<p style="margin-left:96.0pt;">會計組：鐘素馨、張燕惠</p>

<p style="margin-left:96.0pt;">創意組：廖玲玲、張友青</p>

<p>另選5月中旬前往台南嘉義雲林等地朝聖與教堂一日遊</p>

<p>&nbsp;</p>

<p align="center">2025年天主教中華基督神修小會高雄分會讀書會行事曆</p>

<p align="center">2025年1月~2025年12月：「聖女大德蘭的全德之路」星火文化出版，加爾默羅聖衣會譯。</p>

<table align="center" border="1" cellpadding="0" cellspacing="0">
	<thead>
		<tr>
			<th style="width:76px;">
			<p align="center">日期</p>
			</th>
			<th style="width:58px;">
			<p align="center">星期</p>
			</th>
			<th style="width:336px;">
			<p align="center">內容</p>
			</th>
			<th style="width:146px;">
			<p align="center">負責人</p>
			</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">1/17</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>第13-14章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">顏闓明</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:36px;">
			<p align="center">2/21</p>
			</td>
			<td style="width:58px;height:36px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:36px;">
			<p>第15-16章</p>
			</td>
			<td style="width:146px;height:36px;">
			<p align="center">林櫻枝</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">3/28</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>第17-18章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">謝文檉</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:30px;">
			<p align="center">4/11</p>
			</td>
			<td style="width:58px;height:30px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:30px;">
			<p style="margin-left:19.6pt;">第19章</p>
			</td>
			<td style="width:146px;height:30px;">
			<p align="center">楊黎芳</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:34px;">
			<p align="center">5/16</p>
			</td>
			<td style="width:58px;height:34px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:34px;">
			<p>第20-21章</p>
			</td>
			<td style="width:146px;height:34px;">
			<p align="center">廖金常修女</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">6/20</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>第22-23章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">郭曉薇</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">7/25</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p style="margin-left:19.7pt;">第24-25章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">施麗華</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">8/22</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>第26-27章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">翁詩貞</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">9/26</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>第28-29章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">陳惠姿</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">10/24</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>第30-31章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">鐘素馨</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">11/28</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>第32-33章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">劉文義</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">12/19</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">五</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>第34-34章</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">洪艷秋</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>&nbsp;</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>&nbsp;</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>&nbsp;</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>&nbsp;</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:58px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:336px;height:33px;">
			<p>&nbsp;</p>
			</td>
			<td style="width:146px;height:33px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:36px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:58px;height:36px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:336px;height:36px;">
			<p>&nbsp;</p>
			</td>
			<td style="width:146px;height:36px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td style="width:76px;height:36px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:58px;height:36px;">
			<p align="center">&nbsp;</p>
			</td>
			<td style="width:336px;height:36px;">
			<p>&nbsp;</p>
			</td>
			<td style="width:146px;height:36px;">
			<p align="center">&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="clear:both;">&nbsp;</div>

<p>地點：救世主堂</p>
', '高雄分會行事曆 2025/02/24', '',
   'publish', 'closed', 'closed', 'schedule-20', '2026-04-23 00:39:41', '2026-04-23 00:39:41',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60020, 104, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60022, 1, '2025-03-01 14:45:29', '2025-03-01 14:45:29', '<p>2025 青壯組年度行事曆</p>

<p>★您有一封新郵件</p>

<p>感恩天主的禮物，大家能相聚在一起，對於新加入的夥伴們，可能不認識小會？</p>

<p>小會是什麼？ 小會是一個以基督為愛中心的大家庭。由於生活方式不同，每個人天主賜的禮物也不一樣。</p>

<p>青壯組藉由大家在愛中彼此共融，學習成長，藉由天主的光，點燃信仰生活，</p>

<p>你想過未來的生活嗎?　天主的計劃沒有人知道，感恩我們能藉此未來以愛傳愛，使愛發揮光芒。</p>

<p>核心價值：生命有限，幫助更多的人。（依照小會的精神-愛。）</p>

<p>★記得疫情時間，第一次發起的捐贈物資給台中榮總醫護人員，大家那時熱心捐款，印象記憶深刻，感覺天主聖神的陪伴，大家熱心參與，謝謝百齡阿姨、小會阿姨叔叔家人的共同支持。</p>

<p>★迎接復活節的來臨，我們更新信仰生命並與主基督復活 ，</p>

<p>熱情邀請大家參與天主的聖宴，同道偕行!</p>

<p>★3/15：hihi~好久不見青年門徒聚在餐桌上（台中秋山堂~美術館餐廳）。</p>

<p>★3/16:台北長安堂與台北、北美小會共融。</p>

<p>★3/21-23:台東青年共融營。</p>

<p>★4月：四旬期街友關懷服務工作，實行愛德做公益。</p>

<p>★6月：青年門徒走出戶外，參觀新 &rdquo;勤美術館&rdquo;。</p>

<p>★8月: 感恩陳潔分享工作甘苦談，同步開放ZOOM線上。</p>

<p>★10月：台中蘇主教與青年交談&amp;生活工作交流分享。同步用ZOOM線上。</p>

<p>★12月：慶祝聖誕節，分享愛做公益。</p>

<p>青壯組小編：巫郁玫</p>
', '總會行事曆 2025/03/01', '',
   'publish', 'closed', 'closed', 'schedule-22', '2025-03-01 14:45:29', '2025-03-01 14:45:29',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60022, 101, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60026, 1, '2026-01-17 13:06:34', '2026-01-17 13:06:34', '<p><img alt="" src="/uploads/ckeditor/pictures/974/content_1771955424876.jpg" style="width: 544px; height: 800px;" /></p>
', '台北分會行事曆 2026/01/17', '',
   'publish', 'closed', 'closed', 'schedule-26', '2026-02-27 08:35:19', '2026-02-27 08:35:19',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60026, 102, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60027, 1, '2026-02-07 08:43:04', '2026-02-07 08:43:04', '<p align="center">2026年--中華基督神修小會台中分會行事曆115.1~115.12</p>

<p>年度主題：靈修,福傳,共融,傳承</p>

<table align="center" border="1" cellpadding="0" cellspacing="0" width="642">
	<tbody>
		<tr>
			<td style="width:170px;">
			<p>日期</p>
			</td>
			<td style="width:306px;">
			<p>活動內容</p>
			</td>
			<td style="width:90px;">
			<p>地點</p>
			</td>
			<td style="width:74px;">
			<p>主持人</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;">
			<p>115.1.18(日)</p>

			<p>&nbsp;</p>
			</td>
			<td style="width:306px;">
			<p>譚璧輝老師分享-你認為自己是瑪利亞還是瑪爾大</p>
			</td>
			<td style="width:90px;">
			<p>雙十堂</p>
			</td>
			<td style="width:74px;">
			<p>蔡熙</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:36px;">
			<p>115.2.8(日)</p>
			</td>
			<td style="width:306px;height:36px;">
			<p>劉瓊惠-分享COMINO之旅</p>
			</td>
			<td style="width:90px;height:36px;">
			<p>雙十堂</p>
			</td>
			<td style="width:74px;height:36px;">
			<p>黃瑞華</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:57px;">
			<p>115.3.20-3.22(日)</p>
			</td>
			<td style="width:306px;height:57px;">
			<p>避靜(神師:吳伯仁神父)</p>
			</td>
			<td style="width:90px;height:57px;">
			<p>靜山</p>
			</td>
			<td style="width:74px;height:57px;">
			<p>陳瑞蘭</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:36px;">
			<p>115.4.19 (日)</p>
			</td>
			<td style="width:306px;height:36px;">
			<p>討論小會的會章</p>
			</td>
			<td style="width:90px;height:36px;">
			<p>雙十堂</p>
			</td>
			<td style="width:74px;height:36px;">
			<p>全體會員</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:48px;">
			<p>115.5.30(六)</p>
			</td>
			<td style="width:306px;height:48px;">
			<p>慶祝會慶&mdash;與高雄分會合辦（救世主堂）</p>
			</td>
			<td style="width:90px;height:48px;">
			<p>高雄</p>
			</td>
			<td style="width:74px;height:48px;">
			<p>張育英</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:49px;">
			<p>115.6.21 (日)</p>

			<p>&nbsp;</p>
			</td>
			<td style="width:306px;height:49px;">
			<p>楊敦和大哥演講-遺產信託</p>
			</td>
			<td style="width:90px;height:49px;">
			<p>雙十堂</p>
			</td>
			<td style="width:74px;height:49px;">
			<p>劉素梅</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:35px;">
			<p>115.7.19 (日)</p>
			</td>
			<td style="width:306px;height:35px;">
			<p>郭良玉分享-現代父母甘苦談</p>
			</td>
			<td style="width:90px;height:35px;">
			<p>雙十堂</p>
			</td>
			<td style="width:74px;height:35px;">
			<p>劉瓊惠</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:44px;">
			<p>115.8.23(日)</p>

			<p>&nbsp;</p>
			</td>
			<td style="width:306px;height:44px;">
			<p>游照美分享&mdash;走讀新社</p>
			</td>
			<td style="width:90px;height:44px;">
			<p>新社</p>
			</td>
			<td style="width:74px;height:44px;">
			<p>何富寶</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:47px;">
			<p>115.9.20( 日)&nbsp;&nbsp;</p>
			</td>
			<td style="width:306px;height:47px;">
			<p>讀書分享：生活中的神聖</p>
			</td>
			<td style="width:90px;height:47px;">
			<p>雙十堂</p>
			</td>
			<td style="width:74px;height:47px;">
			<p>傅美華</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:58px;">
			<p>115.10.23-10.25</p>
			</td>
			<td style="width:306px;height:58px;">
			<p>共融營</p>
			</td>
			<td style="width:90px;height:58px;">
			<p>靜山</p>
			</td>
			<td style="width:74px;height:58px;">
			<p>全體會員</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:48px;">
			<p>115.11.15(日)</p>
			</td>
			<td style="width:306px;height:48px;">
			<p>張瑞雲姐&mdash;靈修分享</p>
			</td>
			<td style="width:90px;height:48px;">
			<p>雙十堂</p>
			</td>
			<td style="width:74px;height:48px;">
			<p>雷成明</p>
			</td>
		</tr>
		<tr>
			<td style="width:170px;height:48px;">
			<p>115.12.20 (日)</p>
			</td>
			<td style="width:306px;height:48px;">
			<p>聖誕聚會</p>
			</td>
			<td style="width:90px;height:48px;">
			<p>&nbsp;</p>
			</td>
			<td style="width:74px;height:48px;">
			<p>巫郁玫</p>
			</td>
		</tr>
	</tbody>
</table>

<div style="clear:both;">&nbsp;</div>

<p>指導司鐸：吳伯仁神父&nbsp;&nbsp;</p>

<p>分會主席：傅美華&nbsp;&nbsp;</p>

<p>秘書加資訊：巫郁玫&nbsp;&nbsp;</p>

<p>參議：游照美&nbsp;&nbsp;</p>

<p>會計：黃瑞華&nbsp;&nbsp;</p>

<p>連絡:張育英&nbsp;&nbsp;</p>

<p>靈修：劉素梅&nbsp; &nbsp;蔡熙</p>

<p>康樂: 郭良玉&nbsp; &nbsp;何富寶</p>

<p>總務：陳瑞王蘭&nbsp;</p>

<p>健康諮詢: 雷成明</p>
', '台中分會行事曆 2026/02/07', '',
   'publish', 'closed', 'closed', 'schedule-27', '2026-02-24 15:45:19', '2026-02-24 15:45:19',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60027, 103, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60028, 1, '2026-04-23 00:39:15', '2026-04-23 00:39:15', '<p><img alt="" src="/uploads/ckeditor/pictures/1003/content_2026%E5%B9%B4%E9%AB%98%E9%9B%84%E5%88%86%E6%9C%83%E8%A1%8C%E4%BA%8B%E6%9B%86-2026.4%E6%9C%88%E7%89%88.jpg" style="width: 576px; height: 800px;" /><img alt="" src="/uploads/ckeditor/pictures/1000/content_%E8%AE%80%E6%9B%B8%E6%9C%83%E8%A1%8C%E7%A8%8B.jpg" style="width: 601px; height: 800px;" /></p>
', '高雄分會行事曆 2026/04/23', '',
   'publish', 'closed', 'closed', 'schedule-28', '2026-04-23 03:36:26', '2026-04-23 03:36:26',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60028, 104, 0);

INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (60029, 1, '2026-04-27 23:20:49', '2026-04-27 23:20:49', '<p><img alt="" src="/uploads/ckeditor/pictures/1038/content_%E8%AE%80%E6%9B%B8%E6%9C%83%E8%A1%8C%E7%A8%8B.jpg" style="width: 601px; height: 800px;" /><img alt="" src="/uploads/ckeditor/pictures/1039/content_2026%E5%B9%B4%E9%AB%98%E9%9B%84%E5%88%86%E6%9C%83%E8%A1%8C%E4%BA%8B%E6%9B%86-2026.4%E6%9C%88%E7%89%88-1.jpg" style="width: 570px; height: 800px;" /></p>
', '高雄分會行事曆 2026/04/27', '',
   'publish', 'closed', 'closed', 'schedule-29', '2026-04-27 23:23:24', '2026-04-27 23:23:24',
   '', '', '', 0, 0, 'schedule', 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (60029, 104, 0);

-- 行事曆 page rendering the latest schedule per group
INSERT INTO wp_posts
  (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt,
   post_status, comment_status, ping_status, post_name, post_modified, post_modified_gmt,
   post_content_filtered, to_ping, pinged, post_parent, menu_order, post_type, comment_count)
VALUES
  (65000, 1, NOW(), UTC_TIMESTAMP(), '[ccsc_schedules]', '行事曆', '',
   'publish', 'closed', 'closed', 'schedules', NOW(), UTC_TIMESTAMP(),
   '', '', '', 0, 0, 'page', 0);

-- Recalculate group term counts
UPDATE wp_term_taxonomy tt SET count = (SELECT COUNT(*) FROM wp_term_relationships tr WHERE tr.term_taxonomy_id = tt.term_taxonomy_id) WHERE tt.taxonomy = 'group';

SET foreign_key_checks = 1;
