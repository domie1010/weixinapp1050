/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm6rrx0
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm6rrx0` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm6rrx0`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm6rrx0/upload/1611210560717.png'),(2,'picture2','http://localhost:8080/ssm6rrx0/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm6rrx0/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `qinshi` varchar(200) DEFAULT NULL COMMENT '寝室',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611210337332 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`xingming`,`xingbie`,`qinshi`,`dianhua`,`youxiang`,`zhaopian`) values (21,'2021-01-21 14:17:05','教师1','123456','姓名1','男','寝室1','13823888881','773890001@qq.com','http://localhost:8080/ssm6rrx0/upload/jiaoshi_zhaopian1.jpg'),(22,'2021-01-21 14:17:05','教师2','123456','姓名2','男','寝室2','13823888882','773890002@qq.com','http://localhost:8080/ssm6rrx0/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-01-21 14:17:05','教师3','123456','姓名3','男','寝室3','13823888883','773890003@qq.com','http://localhost:8080/ssm6rrx0/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-01-21 14:17:05','教师4','123456','姓名4','男','寝室4','13823888884','773890004@qq.com','http://localhost:8080/ssm6rrx0/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-01-21 14:17:05','教师5','123456','姓名5','男','寝室5','13823888885','773890005@qq.com','http://localhost:8080/ssm6rrx0/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-01-21 14:17:05','教师6','123456','姓名6','男','寝室6','13823888886','773890006@qq.com','http://localhost:8080/ssm6rrx0/upload/jiaoshi_zhaopian6.jpg'),(1611210337331,'2021-01-21 14:25:37','001','001','李四','男','A001','13800000000','123@qq.com','http://localhost:8080/ssm6rrx0/upload/1611210366404.png');

/*Table structure for table `jiaoshijiaofei` */

DROP TABLE IF EXISTS `jiaoshijiaofei`;

CREATE TABLE `jiaoshijiaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `qinshi` varchar(200) DEFAULT NULL COMMENT '寝室',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `yongliang` varchar(200) DEFAULT NULL COMMENT '用量',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611210533794 DEFAULT CHARSET=utf8 COMMENT='教师缴费';

/*Data for the table `jiaoshijiaofei` */

insert  into `jiaoshijiaofei`(`id`,`addtime`,`nianfen`,`yuefen`,`gonghao`,`xingming`,`zhaopian`,`qinshi`,`leixing`,`yongliang`,`jine`,`riqi`,`ispay`) values (51,'2021-01-21 14:17:05','年份1','一月份','工号1','姓名1','http://localhost:8080/ssm6rrx0/upload/jiaoshijiaofei_zhaopian1.jpg','寝室1','水费','用量1',1,'2021-01-21 14:17:05','未支付'),(52,'2021-01-21 14:17:05','年份2','一月份','工号2','姓名2','http://localhost:8080/ssm6rrx0/upload/jiaoshijiaofei_zhaopian2.jpg','寝室2','水费','用量2',2,'2021-01-21 14:17:05','未支付'),(53,'2021-01-21 14:17:05','年份3','一月份','工号3','姓名3','http://localhost:8080/ssm6rrx0/upload/jiaoshijiaofei_zhaopian3.jpg','寝室3','水费','用量3',3,'2021-01-21 14:17:05','未支付'),(54,'2021-01-21 14:17:05','年份4','一月份','工号4','姓名4','http://localhost:8080/ssm6rrx0/upload/jiaoshijiaofei_zhaopian4.jpg','寝室4','水费','用量4',4,'2021-01-21 14:17:05','未支付'),(55,'2021-01-21 14:17:05','年份5','一月份','工号5','姓名5','http://localhost:8080/ssm6rrx0/upload/jiaoshijiaofei_zhaopian5.jpg','寝室5','水费','用量5',5,'2021-01-21 14:17:05','未支付'),(56,'2021-01-21 14:17:05','年份6','一月份','工号6','姓名6','http://localhost:8080/ssm6rrx0/upload/jiaoshijiaofei_zhaopian6.jpg','寝室6','水费','用量6',6,'2021-01-21 14:17:05','未支付'),(1611210520256,'2021-01-21 14:28:39','2021','一月份','001','李四','http://localhost:8080/ssm6rrx0/upload/1611210366404.png','A001','水费','100',200,'2021-01-21 14:28:39','已支付'),(1611210533793,'2021-01-21 14:28:52','2021','一月份','001','李四','http://localhost:8080/ssm6rrx0/upload/1611210366404.png','A001','电费','200',353,'2021-01-21 14:28:52','已支付');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611210603697 DEFAULT CHARSET=utf8 COMMENT='校园公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (61,'2021-01-21 14:17:05','标题1','简介1','http://localhost:8080/ssm6rrx0/upload/news_picture1.jpg','内容1'),(62,'2021-01-21 14:17:05','标题2','简介2','http://localhost:8080/ssm6rrx0/upload/news_picture2.jpg','内容2'),(63,'2021-01-21 14:17:05','标题3','简介3','http://localhost:8080/ssm6rrx0/upload/news_picture3.jpg','内容3'),(64,'2021-01-21 14:17:05','标题4','简介4','http://localhost:8080/ssm6rrx0/upload/news_picture4.jpg','内容4'),(65,'2021-01-21 14:17:05','标题5','简介5','http://localhost:8080/ssm6rrx0/upload/news_picture5.jpg','内容5'),(66,'2021-01-21 14:17:05','标题6','简介6','http://localhost:8080/ssm6rrx0/upload/news_picture6.jpg','内容6'),(1611210603696,'2021-01-21 14:30:02','公告信息','2021/1月份尽快缴费','http://localhost:8080/ssm6rrx0/upload/1611210580279.jpg','<p><img src=\"http://localhost:8080/ssm6rrx0/upload/1611210600663.jpg\">2021/1月份尽快缴费</p>');

/*Table structure for table `sushexinxi` */

DROP TABLE IF EXISTS `sushexinxi`;

CREATE TABLE `sushexinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `sushelouhao` varchar(200) DEFAULT NULL COMMENT '宿舍楼号',
  `susheleixing` varchar(200) DEFAULT NULL COMMENT '宿舍类型',
  `susheleibie` varchar(200) DEFAULT NULL COMMENT '宿舍类别',
  `sushemingcheng` varchar(200) DEFAULT NULL COMMENT '宿舍名称',
  `sushezhuangtai` varchar(200) DEFAULT NULL COMMENT '宿舍状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611210424011 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushexinxi` */

insert  into `sushexinxi`(`id`,`addtime`,`sushelouhao`,`susheleixing`,`susheleibie`,`sushemingcheng`,`sushezhuangtai`) values (1611210196369,'2021-01-21 14:23:15','恩华楼','教师寝室','男寝','A001','空闲'),(1611210218550,'2021-01-21 14:23:37','新华楼','教师寝室','女寝','B001','空闲'),(1611210241894,'2021-01-21 14:24:00','新月楼','学生寝室','男寝','C001','空闲'),(1611210257984,'2021-01-21 14:24:17','建华楼','学生寝室','女寝','D001','空闲'),(1611210424010,'2021-01-21 14:27:03','三间楼','教师寝室','男寝','A002','空闲');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ilvhkluavl2turq0161qdyqwmub9nwl6','2021-01-21 14:20:47','2021-01-21 15:26:40'),(2,1611210288574,'001','xuesheng','学生','j4gakj80bwniamtoa405bf2kygtm0qxt','2021-01-21 14:24:56','2021-01-21 15:31:14'),(3,1611210337331,'001','jiaoshi','教师','04ghk01tdyeunuwsww9s8rmt9mhkm2o1','2021-01-21 14:25:44','2021-01-21 15:32:14');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-01-21 14:17:05');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `qinshi` varchar(200) DEFAULT NULL COMMENT '寝室',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611210667883 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xingming`,`xingbie`,`qinshi`,`dianhua`,`youxiang`,`zhaopian`) values (11,'2021-01-21 14:17:05','学生1','123456','姓名1','男','寝室1','13823888881','773890001@qq.com','http://localhost:8080/ssm6rrx0/upload/xuesheng_zhaopian1.jpg'),(12,'2021-01-21 14:17:05','学生2','123456','姓名2','男','寝室2','13823888882','773890002@qq.com','http://localhost:8080/ssm6rrx0/upload/xuesheng_zhaopian2.jpg'),(13,'2021-01-21 14:17:05','学生3','123456','姓名3','男','寝室3','13823888883','773890003@qq.com','http://localhost:8080/ssm6rrx0/upload/xuesheng_zhaopian3.jpg'),(14,'2021-01-21 14:17:05','学生4','123456','姓名4','男','寝室4','13823888884','773890004@qq.com','http://localhost:8080/ssm6rrx0/upload/xuesheng_zhaopian4.jpg'),(15,'2021-01-21 14:17:05','学生5','123456','姓名5','男','寝室5','13823888885','773890005@qq.com','http://localhost:8080/ssm6rrx0/upload/xuesheng_zhaopian5.jpg'),(16,'2021-01-21 14:17:05','学生6','123456','姓名6','男','寝室6','13823888886','773890006@qq.com','http://localhost:8080/ssm6rrx0/upload/xuesheng_zhaopian6.jpg'),(1611210288574,'2021-01-21 14:24:48','001','001','张三','女','D001','13800000000','123@qq.com','http://localhost:8080/ssm6rrx0/upload/1611210308845.jpg'),(1611210667882,'2021-01-21 14:31:07','002','001','王五','女','B001','13800000000','123@qq.com',NULL);

/*Table structure for table `xueshengjiaofei` */

DROP TABLE IF EXISTS `xueshengjiaofei`;

CREATE TABLE `xueshengjiaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nianfen` varchar(200) DEFAULT NULL COMMENT '年份',
  `yuefen` varchar(200) DEFAULT NULL COMMENT '月份',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `qinshi` varchar(200) DEFAULT NULL COMMENT '寝室',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `yongliang` varchar(200) DEFAULT NULL COMMENT '用量',
  `jine` int(11) DEFAULT NULL COMMENT '金额',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611210498512 DEFAULT CHARSET=utf8 COMMENT='学生缴费';

/*Data for the table `xueshengjiaofei` */

insert  into `xueshengjiaofei`(`id`,`addtime`,`nianfen`,`yuefen`,`xuehao`,`xingming`,`zhaopian`,`qinshi`,`leixing`,`yongliang`,`jine`,`riqi`,`ispay`) values (41,'2021-01-21 14:17:05','年份1','一月份','学号1','姓名1','http://localhost:8080/ssm6rrx0/upload/xueshengjiaofei_zhaopian1.jpg','寝室1','水费','用量1',1,'2021-01-21 14:17:05','未支付'),(42,'2021-01-21 14:17:05','年份2','一月份','学号2','姓名2','http://localhost:8080/ssm6rrx0/upload/xueshengjiaofei_zhaopian2.jpg','寝室2','水费','用量2',2,'2021-01-21 14:17:05','未支付'),(43,'2021-01-21 14:17:05','年份3','一月份','学号3','姓名3','http://localhost:8080/ssm6rrx0/upload/xueshengjiaofei_zhaopian3.jpg','寝室3','水费','用量3',3,'2021-01-21 14:17:05','未支付'),(44,'2021-01-21 14:17:05','年份4','一月份','学号4','姓名4','http://localhost:8080/ssm6rrx0/upload/xueshengjiaofei_zhaopian4.jpg','寝室4','水费','用量4',4,'2021-01-21 14:17:05','未支付'),(45,'2021-01-21 14:17:05','年份5','一月份','学号5','姓名5','http://localhost:8080/ssm6rrx0/upload/xueshengjiaofei_zhaopian5.jpg','寝室5','水费','用量5',5,'2021-01-21 14:17:05','未支付'),(46,'2021-01-21 14:17:05','年份6','一月份','学号6','姓名6','http://localhost:8080/ssm6rrx0/upload/xueshengjiaofei_zhaopian6.jpg','寝室6','水费','用量6',6,'2021-01-21 14:17:05','未支付'),(1611210471634,'2021-01-21 14:27:51','2021','一月份','001','张三','http://localhost:8080/ssm6rrx0/upload/1611210308845.jpg','D001','水费','100度',200,'2021-01-21 14:27:51','已支付'),(1611210498511,'2021-01-21 14:28:18','2021','一月份','001','张三','http://localhost:8080/ssm6rrx0/upload/1611210308845.jpg','D001','水费','100升',23,'2021-01-21 14:28:18','已支付');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
