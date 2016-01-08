# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.13)
# Database: yingyushu
# Generation Time: 2016-01-08 11:02:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tb_article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_article`;

CREATE TABLE `tb_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(512) NOT NULL DEFAULT '' COMMENT '标题',
  `author_name` varchar(128) NOT NULL DEFAULT ' ' COMMENT '作者姓名',
  `content_id` int(10) unsigned NOT NULL COMMENT '内容表ID',
  `source` varchar(512) NOT NULL DEFAULT ' ' COMMENT '来源',
  `short_url` varchar(16) NOT NULL DEFAULT ' ' COMMENT '短链接',
  `favorite_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '收藏数量',
  `view_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点击量',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';



# Dump of table tb_article_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_article_content`;

CREATE TABLE `tb_article_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL COMMENT '文章内容',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_users`;

CREATE TABLE `tb_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(64) NOT NULL DEFAULT ' ' COMMENT '昵称',
  `email` varchar(64) NOT NULL DEFAULT ' ' COMMENT '邮件地址',
  `password` varchar(64) NOT NULL DEFAULT ' ' COMMENT '密码',
  `mobile` varchar(16) NOT NULL DEFAULT ' ' COMMENT '手机号码',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '用户状态',
  `reg_ip` varchar(16) NOT NULL DEFAULT ' ' COMMENT '注册IP',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '注册时间',
  `last_login_at` int(10) NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
