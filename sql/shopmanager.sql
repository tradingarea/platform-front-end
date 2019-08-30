/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.6.43 : Database - shopmanager
*********************************************************************
Server version : 5.6.43
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `shopmanager`;

USE `shopmanager`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `bussiness` */

DROP TABLE IF EXISTS `bussiness`;

CREATE TABLE `bussiness` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户名称',
  `introduction` varchar(2048) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户信息简介',
  `detail` varchar(2048) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户详细介绍',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户地址',
  `logo` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户logo',
  `picture` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '商户图片',
  `status` int(11) DEFAULT NULL COMMENT '商户状态 0无优惠活动 1有优惠活动 -1违法商户',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bussiness` */

/*Table structure for table `chatflow` */

DROP TABLE IF EXISTS `chatflow`;

CREATE TABLE `chatflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '群组id',
  `fromuserid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '发言人id',
  `type` int(11) DEFAULT NULL COMMENT '消息类型 0文本 1图片 2 link',
  `content` text CHARACTER SET utf8 COMMENT '内容',
  `picture` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片地址',
  `link` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '连接地址',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录创建时间 ',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chatflow` */

/*Table structure for table `chatgroup` */

DROP TABLE IF EXISTS `chatgroup`;

CREATE TABLE `chatgroup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '群组名称',
  `adminid` int(11) DEFAULT NULL COMMENT '管理员id',
  `membernum` int(11) DEFAULT NULL COMMENT '群成员数量',
  `avatar` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '群头像',
  `introduction` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '群简介',
  `notice` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '群公告',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chatgroup` */

/*Table structure for table `chatuser` */

DROP TABLE IF EXISTS `chatuser`;

CREATE TABLE `chatuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户id',
  `groupid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '群组id',
  `lastchatid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '最后读的消息id',
  `userstatus` int(11) DEFAULT NULL COMMENT '用户状态 0正常 -1禁言 1指定管理员',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chatuser` */

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户id',
  `productid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '对应活动id',
  `status` int(11) DEFAULT NULL COMMENT '订单状态，0未付款 1付款',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `order` */

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '活动名称',
  `starttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '开始时间',
  `endtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束时间',
  `status` int(11) DEFAULT NULL COMMENT '活动状态 0未进行 1进行中',
  `createdtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录创建时间',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `product` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `phonenum` int(11) DEFAULT NULL COMMENT '手机号',
  `password` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `name` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '昵称',
  `sex` char(2) CHARACTER SET utf8 DEFAULT NULL COMMENT '性别',
  `avatar` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `mail` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '邮箱',
  `wxid` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '微信id',
  `type` int(11) DEFAULT NULL COMMENT '用户类型，普通用户0或者商户1 ，默认0',
  `status` int(11) DEFAULT NULL COMMENT '用户状态，正常0 ，禁用-1',
  `ismember` int(11) DEFAULT NULL COMMENT '是否是会员，0不是，1是',
  `invitenum` int(11) DEFAULT NULL COMMENT '邀请用户数量',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

/*Data for the table `user` */

insert  into `user`(`id`,`phonenum`,`password`,`name`,`sex`,`avatar`,`mail`,`wxid`,`type`,`status`,`ismember`,`invitenum`,`createdtime`,`updatetime`) values (1,NULL,NULL,'段美鑫',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-08-17 17:39:14','0000-00-00 00:00:00');

/*Table structure for table `userrelationship` */

DROP TABLE IF EXISTS `userrelationship`;

CREATE TABLE `userrelationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户id',
  `inviteuserid` varchar(32) CHARACTER SET utf8 DEFAULT NULL COMMENT '目标用户id',
  `createdtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '记录创建时间',
  `updatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '记录更改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userrelationship` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
