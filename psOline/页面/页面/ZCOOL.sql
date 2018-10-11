CREATE database ZCOOL;
USE ZCOOL;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(200) DEFAULT NULL,
  `upwd` varchar(11) DEFAULT NULL,
  `renqi` int(11) DEFAULT NULL,
  `jifen` int(11) DEFAULT NULL,
  `fens` int(11) DEFAULT NULL,
  `fouc` int(11) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `shengfen` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO `user` VALUES (1,'chen', '123', 0,0,0,0,'1111','address','shnegfeng','youxian@foxmali.com',now());
INSERT INTO `user` VALUES (2,'chen2', '1233', 0,0,0,0,'1111','address','shnegfeng','youxian@foxmali.com',now());

DROP TABLE IF EXISTS `rela`;
CREATE TABLE `rela` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `fans` int(11) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO `rela` VALUES (1,1,1,now());

DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `works` int(11) DEFAULT NULL,
  `neirong` varchar(400) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `zan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO `comment` VALUES (1,1,1,'neirong',now(),1);

DROP TABLE IF EXISTS `letter`;
CREATE TABLE `letter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `jieshou` int(11) DEFAULT NULL,
  `neirong` varchar(400) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO `letter` VALUES (1,1,1,'neirong',now());

DROP TABLE IF EXISTS `works`;
CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) DEFAULT NULL,
  `name` varchar(11) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `gkrenshu` int(11) DEFAULT NULL,
  `plrenshu` int(11) DEFAULT NULL,
  `neirong` varchar(400) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
INSERT INTO `works` VALUES (1,1,'name','type',1,1,'neirong',now());
