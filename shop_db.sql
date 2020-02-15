# Host: localhost  (Version: 5.5.29)
# Date: 2019-08-28 14:19:17
# Generator: MySQL-Front 5.3  (Build 4.13)

/*!40101 SET NAMES utf8 */;

#
# Source for table "t_dingdan"
#

DROP TABLE IF EXISTS `t_dingdan`;
CREATE TABLE `t_dingdan` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `xingming` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  `xiangqing` text,
  `orderid` varchar(255) DEFAULT NULL,
  `beizhu` text,
  `shijian` varchar(255) DEFAULT NULL,
  `zongjia` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_dingdan"
#

INSERT INTO `t_dingdan` VALUES (1,'已处理',1,'101','13245678954','101','商品名：12,单价:12.0,购买数量：1,小计：12.0<br/>','20190828140910','12','2019-08-28 14:09:10',12),(2,'已处理',1,'101','13245678954','101','商品名：12,单价:12.0,购买数量：1,小计：12.0<br/>','20190828140932','','2019-08-28 14:09:32',12),(3,'已处理',3,'102','13678945612','102','商品名：12,单价:12.0,购买数量：1,小计：12.0<br/>商品名：B2,单价:150.0,购买数量：2,小计：300.0<br/>','20190828141512','1212','2019-08-28 14:15:12',312);

#
# Source for table "t_fenlei"
#

DROP TABLE IF EXISTS `t_fenlei`;
CREATE TABLE `t_fenlei` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_fenlei"
#

INSERT INTO `t_fenlei` VALUES (1,'A'),(2,'B');

#
# Source for table "t_gonggao"
#

DROP TABLE IF EXISTS `t_gonggao`;
CREATE TABLE `t_gonggao` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `biaoti` varchar(255) DEFAULT NULL,
  `neirong` text,
  `shijian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_gonggao"
#

INSERT INTO `t_gonggao` VALUES (1,'12','12','2019-08-28 14:05:54'),(2,'GSDFS','GSDF','2019-08-28 14:13:57');

#
# Source for table "t_gouwuche"
#

DROP TABLE IF EXISTS `t_gouwuche`;
CREATE TABLE `t_gouwuche` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(255) DEFAULT NULL,
  `jiage` float NOT NULL DEFAULT '0',
  `shuliang` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_gouwuche"
#


#
# Source for table "t_product"
#

DROP TABLE IF EXISTS `t_product`;
CREATE TABLE `t_product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) DEFAULT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `fenleiid` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `jiage` float NOT NULL DEFAULT '0',
  `tuijian` varchar(255) DEFAULT NULL,
  `dianjishu` int(11) NOT NULL DEFAULT '0',
  `xiaoliang` int(11) NOT NULL DEFAULT '0',
  `miaoshu` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_product"
#

INSERT INTO `t_product` VALUES (1,'12','20190828140543.jpg','2019-08-28 14:05:34','1','A',12,'未推荐',2,3,'12'),(2,'B2','20190828141419.jpg','2019-08-28 14:13:52','1','A',150,'未推荐',0,2,'FASFDS');

#
# Source for table "t_user"
#

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `xingming` varchar(255) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT '0',
  `dianhua` varchar(255) DEFAULT NULL,
  `dizhi` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

#
# Data for table "t_user"
#

INSERT INTO `t_user` VALUES (1,'101','111111','101',0,'13245678954','101'),(2,'admin','123',NULL,1,NULL,NULL),(3,'102','111111','102',0,'13678945612','102');
