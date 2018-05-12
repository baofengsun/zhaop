# Host: localhost  (Version: 5.5.53)
# Date: 2018-04-26 21:08:06
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "stb_comments"
#

DROP TABLE IF EXISTS `stb_comments`;
CREATE TABLE `stb_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `content` text,
  `replytime` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`,`topic_id`,`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "stb_comments"
#

/*!40000 ALTER TABLE `stb_comments` DISABLE KEYS */;
INSERT INTO `stb_comments` VALUES (1,1,1,'aaa，不错啊','1503883733'),(2,1,1,'可以啊，','1503883745'),(3,1,1,'<img src=\"http://localhost/uploads/image/201708/20170828092932_62485.png\" alt=\"\">','1503883774'),(4,1,1,'<a target=\"_blank\" href=\"http://localhost/index.php/user/profile/1\" >@admin</a> shi a','1503884063');
/*!40000 ALTER TABLE `stb_comments` ENABLE KEYS */;

#
# Structure for table "stb_favorites"
#

DROP TABLE IF EXISTS `stb_favorites`;
CREATE TABLE `stb_favorites` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `favorites` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`id`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "stb_favorites"
#

/*!40000 ALTER TABLE `stb_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `stb_favorites` ENABLE KEYS */;

#
# Structure for table "stb_links"
#

DROP TABLE IF EXISTS `stb_links`;
CREATE TABLE `stb_links` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "stb_links"
#

/*!40000 ALTER TABLE `stb_links` DISABLE KEYS */;
INSERT INTO `stb_links` VALUES (1,'一帆远航科技有限公司','','',0);
/*!40000 ALTER TABLE `stb_links` ENABLE KEYS */;

#
# Structure for table "stb_message"
#

DROP TABLE IF EXISTS `stb_message`;
CREATE TABLE `stb_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dialog_id` int(11) NOT NULL,
  `sender_uid` int(11) NOT NULL,
  `receiver_uid` int(11) NOT NULL,
  `content` text NOT NULL,
  `create_time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dialog_id` (`dialog_id`),
  KEY `sender_uid` (`sender_uid`),
  KEY `create_time` (`create_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "stb_message"
#

/*!40000 ALTER TABLE `stb_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `stb_message` ENABLE KEYS */;

#
# Structure for table "stb_message_dialog"
#

DROP TABLE IF EXISTS `stb_message_dialog`;
CREATE TABLE `stb_message_dialog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_uid` int(11) NOT NULL,
  `receiver_uid` int(11) NOT NULL,
  `last_content` text NOT NULL,
  `create_time` int(10) NOT NULL,
  `update_time` int(10) NOT NULL,
  `sender_remove` tinyint(1) NOT NULL DEFAULT '0',
  `receiver_remove` tinyint(1) NOT NULL DEFAULT '0',
  `sender_read` tinyint(1) NOT NULL DEFAULT '1',
  `receiver_read` tinyint(1) NOT NULL DEFAULT '0',
  `messages` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`sender_uid`,`receiver_uid`),
  KEY `update_time` (`update_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "stb_message_dialog"
#

/*!40000 ALTER TABLE `stb_message_dialog` DISABLE KEYS */;
/*!40000 ALTER TABLE `stb_message_dialog` ENABLE KEYS */;

#
# Structure for table "stb_nodes"
#

DROP TABLE IF EXISTS `stb_nodes`;
CREATE TABLE `stb_nodes` (
  `node_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) NOT NULL DEFAULT '0',
  `cname` varchar(30) DEFAULT NULL COMMENT '分类名称',
  `content` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `ico` varchar(128) NOT NULL DEFAULT 'uploads/ico/default.png',
  `master` varchar(100) NOT NULL,
  `permit` varchar(255) DEFAULT NULL,
  `listnum` mediumint(8) unsigned DEFAULT '0',
  `clevel` varchar(25) DEFAULT NULL,
  `cord` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`node_id`,`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "stb_nodes"
#

/*!40000 ALTER TABLE `stb_nodes` DISABLE KEYS */;
INSERT INTO `stb_nodes` VALUES (1,0,'业务谈论','分类简介','分类关键字','uploads/ico/default.png','admin',NULL,1,NULL,NULL);
/*!40000 ALTER TABLE `stb_nodes` ENABLE KEYS */;

#
# Structure for table "stb_notifications"
#

DROP TABLE IF EXISTS `stb_notifications`;
CREATE TABLE `stb_notifications` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `topic_id` int(11) DEFAULT NULL,
  `suid` int(11) DEFAULT NULL,
  `nuid` int(11) NOT NULL DEFAULT '0',
  `ntype` tinyint(1) DEFAULT NULL,
  `ntime` int(10) DEFAULT NULL,
  PRIMARY KEY (`nid`,`nuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "stb_notifications"
#

/*!40000 ALTER TABLE `stb_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `stb_notifications` ENABLE KEYS */;

#
# Structure for table "stb_page"
#

DROP TABLE IF EXISTS `stb_page`;
CREATE TABLE `stb_page` (
  `pid` tinyint(6) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `go_url` varchar(100) DEFAULT NULL,
  `add_time` int(10) DEFAULT NULL,
  `is_hidden` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "stb_page"
#

/*!40000 ALTER TABLE `stb_page` DISABLE KEYS */;
INSERT INTO `stb_page` VALUES (1,'单页面是干啥的','单页面内容','',1503884706,0);
/*!40000 ALTER TABLE `stb_page` ENABLE KEYS */;

#
# Structure for table "stb_settings"
#

DROP TABLE IF EXISTS `stb_settings`;
CREATE TABLE `stb_settings` (
  `id` tinyint(5) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`title`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "stb_settings"
#

/*!40000 ALTER TABLE `stb_settings` DISABLE KEYS */;
INSERT INTO `stb_settings` VALUES (1,'site_name','航运系统微社区',0),(2,'welcome_tip','欢迎访问航运系统微社区',0),(3,'short_intro','在这里讨论属于我们专有的技术话题',0),(4,'show_captcha','on',0),(5,'site_run','0',0),(6,'site_stats','统计代码\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t',0),(7,'site_keywords','航运',0),(8,'site_description','航运系统BBS',0),(9,'money_title','银币',0),(10,'per_page_num','20',0),(11,'is_rewrite','off',0),(12,'show_editor','on',0),(13,'comment_order','desc',0);
/*!40000 ALTER TABLE `stb_settings` ENABLE KEYS */;

#
# Structure for table "stb_site_stats"
#

DROP TABLE IF EXISTS `stb_site_stats`;
CREATE TABLE `stb_site_stats` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `item` varchar(20) NOT NULL,
  `value` int(10) DEFAULT '0',
  `update_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

#
# Data for table "stb_site_stats"
#

/*!40000 ALTER TABLE `stb_site_stats` DISABLE KEYS */;
INSERT INTO `stb_site_stats` VALUES (1,'last_uid',1,NULL),(2,'total_users',1,NULL),(3,'today_topics',5,1503884063),(4,'yesterday_topics',0,1503883709),(5,'total_topics',1,NULL),(6,'total_comments',4,NULL),(7,'total_nodes',0,NULL),(8,'total_tags',0,NULL);
/*!40000 ALTER TABLE `stb_site_stats` ENABLE KEYS */;

#
# Structure for table "stb_tags"
#

DROP TABLE IF EXISTS `stb_tags`;
CREATE TABLE `stb_tags` (
  `tag_id` int(10) NOT NULL AUTO_INCREMENT,
  `tag_title` varchar(30) NOT NULL,
  `topics` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_id`),
  UNIQUE KEY `tag_title` (`tag_title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "stb_tags"
#

/*!40000 ALTER TABLE `stb_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `stb_tags` ENABLE KEYS */;

#
# Structure for table "stb_tags_relation"
#

DROP TABLE IF EXISTS `stb_tags_relation`;
CREATE TABLE `stb_tags_relation` (
  `tag_id` int(10) NOT NULL DEFAULT '0',
  `topic_id` int(10) DEFAULT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `fid` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "stb_tags_relation"
#

/*!40000 ALTER TABLE `stb_tags_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `stb_tags_relation` ENABLE KEYS */;

#
# Structure for table "stb_topics"
#

DROP TABLE IF EXISTS `stb_topics`;
CREATE TABLE `stb_topics` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` smallint(5) NOT NULL DEFAULT '0',
  `uid` mediumint(8) NOT NULL DEFAULT '0',
  `ruid` mediumint(8) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `content` text,
  `addtime` int(10) DEFAULT NULL,
  `updatetime` int(10) DEFAULT NULL,
  `lastreply` int(10) DEFAULT NULL,
  `views` int(10) DEFAULT '0',
  `comments` smallint(8) DEFAULT '0',
  `favorites` int(10) unsigned DEFAULT '0',
  `closecomment` tinyint(1) DEFAULT NULL,
  `is_top` tinyint(1) NOT NULL DEFAULT '0',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `ord` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`node_id`,`uid`),
  KEY `updatetime` (`updatetime`),
  KEY `ord` (`ord`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "stb_topics"
#

/*!40000 ALTER TABLE `stb_topics` DISABLE KEYS */;
INSERT INTO `stb_topics` VALUES (1,1,1,1,'一帆远航正式起航','0','话题内容',1503883667,1503884063,1503884063,8,4,0,NULL,0,0,1503884063);
/*!40000 ALTER TABLE `stb_topics` ENABLE KEYS */;

#
# Structure for table "stb_user_follow"
#

DROP TABLE IF EXISTS `stb_user_follow`;
CREATE TABLE `stb_user_follow` (
  `follow_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `follow_uid` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`follow_id`,`uid`,`follow_uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

#
# Data for table "stb_user_follow"
#

/*!40000 ALTER TABLE `stb_user_follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `stb_user_follow` ENABLE KEYS */;

#
# Structure for table "stb_user_groups"
#

DROP TABLE IF EXISTS `stb_user_groups`;
CREATE TABLE `stb_user_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `group_name` varchar(50) DEFAULT NULL,
  `usernum` int(11) DEFAULT '0',
  PRIMARY KEY (`gid`,`group_type`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "stb_user_groups"
#

/*!40000 ALTER TABLE `stb_user_groups` DISABLE KEYS */;
INSERT INTO `stb_user_groups` VALUES (1,0,'管理员',1),(2,1,'版主',0),(3,2,'普通会员',0);
/*!40000 ALTER TABLE `stb_user_groups` ENABLE KEYS */;

#
# Structure for table "stb_users"
#

DROP TABLE IF EXISTS `stb_users`;
CREATE TABLE `stb_users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` char(32) DEFAULT NULL,
  `salt` char(6) DEFAULT NULL COMMENT '混淆码',
  `openid` char(32) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT 'uploads/avatar/default/',
  `homepage` varchar(50) DEFAULT NULL,
  `money` int(11) DEFAULT '0',
  `credit` int(11) NOT NULL DEFAULT '100',
  `signature` text,
  `topics` int(11) DEFAULT '0',
  `replies` int(11) DEFAULT '0',
  `notices` smallint(5) DEFAULT '0',
  `follows` int(11) NOT NULL DEFAULT '0',
  `favorites` int(11) DEFAULT '0',
  `messages_unread` int(11) DEFAULT '0',
  `regtime` int(10) DEFAULT NULL,
  `lastlogin` int(10) DEFAULT NULL,
  `lastpost` int(10) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `group_type` tinyint(3) NOT NULL DEFAULT '0',
  `gid` tinyint(3) NOT NULL DEFAULT '3',
  `ip` char(15) DEFAULT NULL,
  `location` varchar(128) DEFAULT NULL,
  `introduction` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`uid`,`group_type`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "stb_users"
#

/*!40000 ALTER TABLE `stb_users` DISABLE KEYS */;
INSERT INTO `stb_users` VALUES (1,'admin','9de76a7aab3c26aefa165b2a7453a596','8add85',NULL,'wenju2005@126.com','uploads/avatar/default/','',0,126,'',1,4,0,0,0,0,1503883128,1519304334,1503884063,'',0,1,'119.109.25.59','','',1);
/*!40000 ALTER TABLE `stb_users` ENABLE KEYS */;
