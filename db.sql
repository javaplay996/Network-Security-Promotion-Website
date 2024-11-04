/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangluoxuancuan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangluoxuancuan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangluoxuancuan`;

/*Table structure for table `bumenguizhang` */

DROP TABLE IF EXISTS `bumenguizhang`;

CREATE TABLE `bumenguizhang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bumenguizhang_name` varchar(200) DEFAULT NULL COMMENT '名称  Search111 ',
  `bumenguizhang_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `bumenguizhang_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='部门规章';

/*Data for the table `bumenguizhang` */

insert  into `bumenguizhang`(`id`,`bumenguizhang_name`,`bumenguizhang_photo`,`insert_time`,`bumenguizhang_content`,`create_time`) values (1,'部门规章1','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618194475763.jpg','2021-04-12 10:27:38','详情1\r\n','2021-04-12 10:27:38');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/wangluoxuancuan/upload/1618192507036.jpg'),(2,'picture2','http://localhost:8080/wangluoxuancuan/upload/1618192513924.jpg'),(3,'picture3','http://localhost:8080/wangluoxuancuan/upload/1618192523961.jpg'),(6,'homepage','http://localhost:8080/wangluoxuancuan/upload/1618192535482.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-10 21:26:33'),(2,'sex_types','性别',2,'女',NULL,'2021-04-10 21:26:33');

/*Table structure for table `falvgagui` */

DROP TABLE IF EXISTS `falvgagui`;

CREATE TABLE `falvgagui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `falvgagui_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111',
  `falvgagui_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `falvgagui_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `falvgagui_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 show1 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='法律法规';

/*Data for the table `falvgagui` */

insert  into `falvgagui`(`id`,`falvgagui_name`,`falvgagui_photo`,`falvgagui_video`,`zan_number`,`cai_number`,`falvgagui_content`,`create_time`) values (22,'法律法规1','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618191761504.jpg','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192342934.mp4',6,1,'详情信息1\r\n','2021-04-10 21:38:48'),(23,'法律法规2','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192049316.jpg','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192044225.mp4',7,0,'详情信息2\r\n','2021-04-12 09:47:35');

/*Table structure for table `falvgagui_collection` */

DROP TABLE IF EXISTS `falvgagui_collection`;

CREATE TABLE `falvgagui_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `falvgagui_id` int(11) DEFAULT NULL COMMENT '法律法规id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='法律法规收藏';

/*Data for the table `falvgagui_collection` */

insert  into `falvgagui_collection`(`id`,`falvgagui_id`,`yonghu_id`,`insert_time`,`create_time`) values (3,22,1,'2021-04-12 11:01:05','2021-04-12 11:01:05');

/*Table structure for table `falvgagui_liuyan` */

DROP TABLE IF EXISTS `falvgagui_liuyan`;

CREATE TABLE `falvgagui_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `falvgagui_id` int(11) DEFAULT NULL COMMENT '法律法规id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `falvgagui_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='法律法规留言';

/*Data for the table `falvgagui_liuyan` */

insert  into `falvgagui_liuyan`(`id`,`falvgagui_id`,`yonghu_id`,`falvgagui_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,23,1,'123\r\n','1111111\r\n','2021-04-12 10:37:12','2021-04-12 10:37:12');

/*Table structure for table `guifanwenjian` */

DROP TABLE IF EXISTS `guifanwenjian`;

CREATE TABLE `guifanwenjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guifanwenjian_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `guifanwenjian_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `guifanwenjian_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `guifanwenjian_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='规范文件';

/*Data for the table `guifanwenjian` */

insert  into `guifanwenjian`(`id`,`guifanwenjian_name`,`guifanwenjian_photo`,`guifanwenjian_file`,`guifanwenjian_content`,`create_time`) values (1,'规范文件1','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192424642.jpg','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192428999.xls','详情1\r\n','2021-04-12 09:53:52');

/*Table structure for table `shifajieshi` */

DROP TABLE IF EXISTS `shifajieshi`;

CREATE TABLE `shifajieshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shifajieshi_name` varchar(200) DEFAULT NULL COMMENT '名称 Search111',
  `shifajieshi_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `shifajieshi_video` varchar(200) DEFAULT NULL COMMENT '视频',
  `zan_number` int(11) DEFAULT NULL COMMENT '赞',
  `cai_number` int(11) DEFAULT NULL COMMENT '踩',
  `shifajieshi_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='司法解释';

/*Data for the table `shifajieshi` */

insert  into `shifajieshi`(`id`,`shifajieshi_name`,`shifajieshi_photo`,`shifajieshi_video`,`zan_number`,`cai_number`,`shifajieshi_content`,`create_time`) values (1,'司法解释1','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618191934378.jpg','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618191939231.mp4',2,0,'详情信息1\r\n','2021-04-12 09:45:47'),(2,'司法解释2','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192363078.jpg','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192369132.mp4',0,0,'详情信息2\r\n','2021-04-12 09:52:54');

/*Table structure for table `shifajieshi_collection` */

DROP TABLE IF EXISTS `shifajieshi_collection`;

CREATE TABLE `shifajieshi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shifajieshi_id` int(11) DEFAULT NULL COMMENT '司法解释id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='司法解释收藏';

/*Data for the table `shifajieshi_collection` */

/*Table structure for table `shifajieshi_liuyan` */

DROP TABLE IF EXISTS `shifajieshi_liuyan`;

CREATE TABLE `shifajieshi_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shifajieshi_id` int(11) DEFAULT NULL COMMENT '司法解释id',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `shifajieshi_liuyan_content` text COMMENT '留言内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '讨论时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='司法解释留言';

/*Data for the table `shifajieshi_liuyan` */

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','sti1e40ujd9itysvw8cuai1zwsler8l3','2021-04-10 20:23:20','2021-04-12 11:51:01'),(2,1,'111','yonghu','用户','9tp3onijt772q7ytlg0fmbh0bjgmevil','2021-04-10 20:48:28','2021-04-12 12:00:00');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xingzhengfagui` */

DROP TABLE IF EXISTS `xingzhengfagui`;

CREATE TABLE `xingzhengfagui` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xingzhengfagui_name` varchar(200) DEFAULT NULL COMMENT '名称  Search111 ',
  `xingzhengfagui_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `xingzhengfagui_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='行政法规';

/*Data for the table `xingzhengfagui` */

insert  into `xingzhengfagui`(`id`,`xingzhengfagui_name`,`xingzhengfagui_photo`,`insert_time`,`xingzhengfagui_content`,`create_time`) values (1,'行政法规1','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192466224.jpg','2021-04-12 09:54:32','详情1\r\n','2021-04-12 09:54:32');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`create_time`) values (1,'111','123456','张三',1,'410882200011231211','17796655464','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618191745863.jpg','2021-04-10 21:39:38'),(2,'222','123456','王武',1,'410882200011021544','17712312312','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618195950245.jpg','2021-04-12 10:52:31');

/*Table structure for table `zhengchengwenjian` */

DROP TABLE IF EXISTS `zhengchengwenjian`;

CREATE TABLE `zhengchengwenjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zhengchengwenjian_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `zhengchengwenjian_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhengchengwenjian_file` varchar(200) DEFAULT NULL COMMENT '文件',
  `zhengchengwenjian_content` text COMMENT '详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='政策文件';

/*Data for the table `zhengchengwenjian` */

insert  into `zhengchengwenjian`(`id`,`zhengchengwenjian_name`,`zhengchengwenjian_photo`,`zhengchengwenjian_file`,`zhengchengwenjian_content`,`create_time`) values (1,'政策文件1','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192485784.jpg','http://localhost:8080/wangluoxuancuan/file/download?fileName=1618192491160.doc','详情1\r\n','2021-04-12 09:54:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
