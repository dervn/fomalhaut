# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.14)
# Database: fomalhaut
# Generation Time: 2017-02-17 08:14:06 +0000
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



# Dump of table tb_fountain
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_fountain`;

CREATE TABLE `tb_fountain` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT ' ' COMMENT '名称',
  `out_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外部ID',
  `description` varchar(256) NOT NULL DEFAULT ' ' COMMENT '描述',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '类型，0其他金1银2铜3',
  `created_at` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tb_fountain` WRITE;
/*!40000 ALTER TABLE `tb_fountain` DISABLE KEYS */;

INSERT INTO `tb_fountain` (`id`, `name`, `out_id`, `description`, `type`, `created_at`)
VALUES
	(1,'安度因·乌瑞恩的金币',43641,' ',1,0),
	(2,'阿克蒙德的金币',43640,' ',1,0),
	(3,'阿尔萨斯的金币',43639,' ',1,0),
	(4,'阿鲁高的金币',43638,' ',1,0),
	(5,'布莱恩·铜须的金币',43637,' ',1,0),
	(6,'克罗米的金币',43636,' ',1,0),
	(7,'克尔苏加德的金币',43635,' ',1,0),
	(8,'吉安娜·普罗德摩尔的金币',43628,' ',1,0),
	(9,'卡特拉娜·普瑞斯托的金币',43634,' ',1,0),
	(10,'凯尔萨斯王子的金币',43633,' ',1,0),
	(11,'希尔瓦娜斯·风行者的金币',43632,' ',1,0),
	(12,'塔隆的金币',43631,' ',1,0),
	(13,'萨尔的金币',43627,' ',1,0),
	(14,'提里奥·弗丁的金币',43630,' ',1,0),
	(15,'乌瑟尔·光明使者的金币',43629,' ',1,0),
	(16,'艾格文的银币',43687,' ',2,0),
	(17,'奥蕾莉亚的银币',43686,' ',2,0),
	(18,'安东尼达斯的银币',43678,' ',2,0),
	(19,'奥术师杜安的银币',43676,' ',2,0),
	(20,'范达尔·鹿盔的银币',43675,' ',2,0),
	(21,'大工匠梅卡托克的银币',43677,' ',2,0),
	(22,'卡德加的银币',43683,' ',2,0),
	(23,'安纳斯特里亚·逐日者国王的银币',43682,' ',2,0),
	(24,'泰瑞纳斯·米奈希尔国王的银币',43681,' ',2,0),
	(25,'瓦里安·乌瑞恩国王的银币',43680,' ',2,0),
	(26,'玛维·影歌的银币',43685,' ',2,0),
	(27,'麦迪文的银币',43684,' ',2,0),
	(28,'穆拉丁·铜须的银币',43679,' ',2,0),
	(29,'麦格尼·铜须王子的银币',43643,' ',2,0),
	(30,'农夫的银币',43644,' ',2,0),
	(31,'佳莉娅·米奈希尔公主的铜币',43717,' ',3,0),
	(32,'奔波尔霸的铜币',43716,' ',3,0),
	(33,'穆罗克的铜币',43715,' ',3,0),
	(34,'兰德鲁·郎绍特的铜币',43714,' ',3,0),
	(35,'列兵马库斯·乔纳森的铜币',43718,' ',3,0),
	(36,'瓦格斯的铜币',43723,' ',3,0),
	(37,'温蕾萨的铜币',43722,' ',3,0),
	(38,'斯塔文的铜币',43721,' ',3,0),
	(39,'侍卫洛文的铜币',43720,' ',3,0),
	(40,'克里尔的铜币',43713,' ',3,0),
	(41,'克拉苏斯的铜币',43712,' ',3,0),
	(42,'达纳斯·托尔贝恩的铜币',43705,' ',3,0),
	(43,'阿图门的铜币',43704,' ',3,0),
	(44,'安斯雷姆的铜币',43703,' ',3,0),
	(45,'阿隆索斯·法奥的铜币',43702,' ',3,0),
	(46,'伊崔格的铜币',43707,' ',3,0),
	(47,'英尼戈的铜币',43711,' ',3,0),
	(48,'吉恩的铜币',43710,' ',3,0),
	(49,'弗斯塔德·蛮锤的铜币',43709,' ',3,0),
	(50,'埃林·提亚斯的铜币',43708,' ',3,0),
	(51,'某位步兵的铜币',43701,' ',3,0);

/*!40000 ALTER TABLE `tb_fountain` ENABLE KEYS */;
UNLOCK TABLES;


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
