/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhoubianyoupingtai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhoubianyoupingtai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhoubianyoupingtai`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'你好','2022-04-13 14:57:43',NULL,NULL,2,1,'2022-04-13 14:57:43'),(2,1,NULL,NULL,'ddddd','2022-04-13 14:58:06',NULL,2,'2022-04-13 14:58:07'),(3,1,NULL,NULL,'ggggg','2022-04-13 14:58:10',NULL,2,'2022-04-13 14:58:10');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zhoubianyoupingtai/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/zhoubianyoupingtai/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/zhoubianyoupingtai/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-13 13:19:05'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-13 13:19:05'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-13 13:19:05'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-13 13:19:05'),(5,'jingdian_types','景点类型',1,'景点类型1',NULL,NULL,'2022-04-13 13:19:06'),(6,'jingdian_types','景点类型',2,'景点类型2',NULL,NULL,'2022-04-13 13:19:06'),(7,'jingdian_types','景点类型',3,'景点类型3',NULL,NULL,'2022-04-13 13:19:06'),(8,'jingdian_types','景点类型',4,'景点类型4',NULL,NULL,'2022-04-13 13:19:06'),(9,'jingdian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-13 13:19:06'),(10,'jingdian_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-13 13:19:06'),(11,'jingdian_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-13 13:19:06'),(12,'jingdian_order_types','订单类型',3,'已检票',NULL,NULL,'2022-04-13 13:19:06'),(13,'jingdian_order_types','订单类型',4,'已用户确认',NULL,NULL,'2022-04-13 13:19:06'),(14,'jingdian_order_types','订单类型',5,'已评价',NULL,NULL,'2022-04-13 13:19:06'),(15,'jingdian_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-13 13:19:06'),(16,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-13 13:19:06'),(17,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-13 13:19:06'),(18,'fangjian_types','房间类型',1,'房间类型1',NULL,NULL,'2022-04-13 13:19:06'),(19,'fangjian_types','房间类型',2,'房间类型2',NULL,NULL,'2022-04-13 13:19:06'),(20,'fangjian_types','房间类型',3,'房间类型3',NULL,NULL,'2022-04-13 13:19:06'),(21,'fangjian_types','房间类型',4,'房间类型4',NULL,NULL,'2022-04-13 13:19:06'),(22,'fangjian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-13 13:19:06'),(23,'fangjian_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-13 13:19:06'),(24,'fangjian_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-13 13:19:06'),(25,'fangjian_order_types','订单类型',3,'已入住',NULL,NULL,'2022-04-13 13:19:06'),(26,'fangjian_order_types','订单类型',4,'已用户确认',NULL,NULL,'2022-04-13 13:19:06'),(27,'fangjian_order_types','订单类型',5,'已评价',NULL,NULL,'2022-04-13 13:19:06'),(28,'fangjian_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-13 13:19:06'),(29,'youwanluxian_lvyoufangshi_types','旅游方式',1,'自驾',NULL,NULL,'2022-04-13 13:19:06'),(30,'youwanluxian_lvyoufangshi_types','旅游方式',2,'跟团',NULL,NULL,'2022-04-13 13:19:06'),(31,'youwanluxian_lvyoufangshi_types','旅游方式',3,'一日游',NULL,NULL,'2022-04-13 13:19:06'),(32,'youwanluxian_lvyoufangshi_types','旅游方式',4,'其他',NULL,NULL,'2022-04-13 13:19:06'),(33,'youwanluxian_chufashijian_types','出发时间',1,'近三天',NULL,NULL,'2022-04-13 13:19:06'),(34,'youwanluxian_chufashijian_types','出发时间',2,'国家法定日',NULL,NULL,'2022-04-13 13:19:06'),(35,'youwanluxian_chufashijian_types','出发时间',3,'自定义时间',NULL,NULL,'2022-04-13 13:19:06'),(36,'youwanluxian_chuxingfangshi_types','出行方式',1,'平台大巴',NULL,NULL,'2022-04-13 13:19:06'),(37,'youwanluxian_chuxingfangshi_types','出行方式',2,'地铁',NULL,NULL,'2022-04-13 13:19:06'),(38,'youwanluxian_chuxingfangshi_types','出行方式',3,'开车',NULL,NULL,'2022-04-13 13:19:06'),(39,'youwanluxian_chuxingfangshi_types','出行方式',4,'其他',NULL,NULL,'2022-04-13 13:19:06'),(40,'youwanluxian_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-13 13:19:06'),(41,'lvyoutuan_types','旅游团类型',1,'旅游团类型1',NULL,NULL,'2022-04-13 13:19:06'),(42,'lvyoutuan_types','旅游团类型',2,'旅游团类型2',NULL,NULL,'2022-04-13 13:19:06'),(43,'lvyoutuan_types','旅游团类型',3,'旅游团类型3',NULL,NULL,'2022-04-13 13:19:06'),(44,'lvyoutuan_types','旅游团类型',4,'旅游团类型4',NULL,NULL,'2022-04-13 13:19:06'),(49,'lvyoutuan_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-13 13:19:07'),(50,'lvyoutuan_order_yesno_types','订单类型',1,'待审核',NULL,NULL,'2022-04-13 13:19:07'),(51,'lvyoutuan_order_yesno_types','订单类型',2,'同意',NULL,NULL,'2022-04-13 13:19:07'),(52,'lvyoutuan_order_yesno_types','订单类型',3,'拒绝',NULL,NULL,'2022-04-13 13:19:07'),(53,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-04-13 13:19:07'),(54,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-04-13 13:19:07'),(55,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-04-13 13:19:07'),(56,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-04-13 13:19:07'),(57,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-13 13:19:07'),(58,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-13 13:19:07'),(59,'lvyoutuan_types','旅游团类型',5,'旅游团类型5',NULL,'','2022-04-13 15:00:30');

/*Table structure for table `fangjian` */

DROP TABLE IF EXISTS `fangjian`;

CREATE TABLE `fangjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `fangjian_name` varchar(200) DEFAULT NULL COMMENT '房间名称 Search111 ',
  `fangjian_uuid_number` varchar(200) DEFAULT NULL COMMENT '房间编号  Search111 ',
  `jiudian_name` varchar(200) DEFAULT NULL COMMENT '酒店名称 Search111 ',
  `fangjian_photo` varchar(200) DEFAULT NULL COMMENT '房间照片',
  `fangjian_tese` varchar(200) DEFAULT NULL COMMENT '房间特色',
  `fangjian_address` varchar(200) DEFAULT NULL COMMENT '房间位置 Search111 ',
  `fangjian_types` int(11) DEFAULT NULL COMMENT '房间类型 Search111',
  `fangjian_old_money` decimal(10,2) DEFAULT NULL COMMENT '房间原价',
  `fangjian_new_money` decimal(10,2) DEFAULT NULL COMMENT '房间现价/天',
  `fangjian_content` text COMMENT '房间介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `fangjian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='房间';

/*Data for the table `fangjian` */

insert  into `fangjian`(`id`,`fangjian_name`,`fangjian_uuid_number`,`jiudian_name`,`fangjian_photo`,`fangjian_tese`,`fangjian_address`,`fangjian_types`,`fangjian_old_money`,`fangjian_new_money`,`fangjian_content`,`shangxia_types`,`fangjian_delete`,`create_time`) values (1,'房间名称1','16498272722805','酒店名称1','http://localhost:8080/zhoubianyoupingtai/upload/fangjian1.jpg','房间特色1','房间位置1',4,'741.14','374.51','房间介绍1',1,1,'2022-04-13 13:21:12'),(2,'房间名称2','16498272722807','酒店名称2','http://localhost:8080/zhoubianyoupingtai/upload/fangjian2.jpg','房间特色2','房间位置2',2,'829.32','74.37','房间介绍2',1,1,'2022-04-13 13:21:12'),(3,'房间名称3','16498272722801','酒店名称3','http://localhost:8080/zhoubianyoupingtai/upload/fangjian3.jpg','房间特色3','房间位置3',3,'780.50','58.40','房间介绍3',1,1,'2022-04-13 13:21:12'),(4,'房间名称4','16498272722800','酒店名称4','http://localhost:8080/zhoubianyoupingtai/upload/fangjian4.jpg','房间特色4','房间位置4',4,'834.18','438.47','房间介绍4',1,1,'2022-04-13 13:21:12'),(5,'房间名称5','16498272722802','酒店名称5','http://localhost:8080/zhoubianyoupingtai/upload/fangjian5.jpg','房间特色5','房间位置5',1,'721.26','459.97','房间介绍5',1,1,'2022-04-13 13:21:12');

/*Table structure for table `fangjian_collection` */

DROP TABLE IF EXISTS `fangjian_collection`;

CREATE TABLE `fangjian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_id` int(11) DEFAULT NULL COMMENT '房间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangjian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房间收藏';

/*Data for the table `fangjian_collection` */

insert  into `fangjian_collection`(`id`,`fangjian_id`,`yonghu_id`,`fangjian_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(2,2,2,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,1,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,4,2,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,5,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(6,4,1,1,'2022-04-13 14:50:18','2022-04-13 14:50:18');

/*Table structure for table `fangjian_commentback` */

DROP TABLE IF EXISTS `fangjian_commentback`;

CREATE TABLE `fangjian_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_id` int(11) DEFAULT NULL COMMENT '房间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangjian_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房间评价';

/*Data for the table `fangjian_commentback` */

insert  into `fangjian_commentback`(`id`,`fangjian_id`,`yonghu_id`,`fangjian_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2022-04-13 13:21:12','回复信息1','2022-04-13 13:21:12','2022-04-13 13:21:12'),(2,2,3,'评价内容2','2022-04-13 13:21:12','回复信息2','2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,3,'评价内容3','2022-04-13 13:21:12','回复信息3','2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,4,1,'评价内容4','2022-04-13 13:21:12','回复信息4','2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,5,1,'评价内容5','2022-04-13 13:21:12','回复信息5','2022-04-13 13:21:12','2022-04-13 13:21:12'),(6,4,1,'44444','2022-04-13 15:02:16',NULL,NULL,'2022-04-13 15:02:16');

/*Table structure for table `fangjian_order` */

DROP TABLE IF EXISTS `fangjian_order`;

CREATE TABLE `fangjian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `fangjian_id` int(11) DEFAULT NULL COMMENT '房间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `zhu_time` date DEFAULT NULL COMMENT '入住日期',
  `zhu_number` int(11) DEFAULT NULL COMMENT '住的天数',
  `fangjian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `fangjian_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `fangjian_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='房间订单';

/*Data for the table `fangjian_order` */

insert  into `fangjian_order`(`id`,`fangjian_order_uuid_number`,`fangjian_id`,`yonghu_id`,`zhu_time`,`zhu_number`,`fangjian_order_true_price`,`fangjian_order_types`,`fangjian_order_payment_types`,`insert_time`,`create_time`) values (1,'1649832630993',4,1,'2022-04-14',9,'3946.23',5,1,'2022-04-13 14:50:31','2022-04-13 14:50:31');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/zhoubianyoupingtai/upload/gonggao1.jpg',1,'2022-04-13 13:21:12','公告详情1','2022-04-13 13:21:12'),(2,'公告名称2','http://localhost:8080/zhoubianyoupingtai/upload/gonggao2.jpg',2,'2022-04-13 13:21:12','公告详情2','2022-04-13 13:21:12'),(3,'公告名称3','http://localhost:8080/zhoubianyoupingtai/upload/gonggao3.jpg',2,'2022-04-13 13:21:12','公告详情3','2022-04-13 13:21:12'),(4,'公告名称4','http://localhost:8080/zhoubianyoupingtai/upload/gonggao4.jpg',1,'2022-04-13 13:21:12','公告详情4','2022-04-13 13:21:12'),(5,'公告名称5','http://localhost:8080/zhoubianyoupingtai/upload/gonggao5.jpg',1,'2022-04-13 13:21:12','公告详情5','2022-04-13 13:21:12');

/*Table structure for table `jingdian` */

DROP TABLE IF EXISTS `jingdian`;

CREATE TABLE `jingdian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jingdian_name` varchar(200) DEFAULT NULL COMMENT '景点名称  Search111 ',
  `jingdian_uuid_number` varchar(200) DEFAULT NULL COMMENT '景点编号  Search111 ',
  `jingdian_photo` varchar(200) DEFAULT NULL COMMENT '景点照片',
  `jingdian_tese` varchar(200) DEFAULT NULL COMMENT '景点特色',
  `jingdian_luxian` varchar(200) DEFAULT NULL COMMENT '景点游玩路线',
  `jingdian_address` varchar(200) DEFAULT NULL COMMENT '景点位置',
  `jingdian_zhuyishixiang` varchar(200) DEFAULT NULL COMMENT '景点注意事项',
  `jingdian_types` int(11) DEFAULT NULL COMMENT '景点类型 Search111',
  `jingdian_old_money` decimal(10,2) DEFAULT NULL COMMENT '景点门票原价',
  `jingdian_new_money` decimal(10,2) DEFAULT NULL COMMENT '景点门票现价',
  `jingdian_clicknum` int(11) DEFAULT NULL COMMENT '景点热度 ',
  `jingdian_content` text COMMENT '景点介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `jingdian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点';

/*Data for the table `jingdian` */

insert  into `jingdian`(`id`,`jingdian_name`,`jingdian_uuid_number`,`jingdian_photo`,`jingdian_tese`,`jingdian_luxian`,`jingdian_address`,`jingdian_zhuyishixiang`,`jingdian_types`,`jingdian_old_money`,`jingdian_new_money`,`jingdian_clicknum`,`jingdian_content`,`shangxia_types`,`jingdian_delete`,`create_time`) values (1,'景点名称1','164982727229119','http://localhost:8080/zhoubianyoupingtai/upload/jingdian1.jpg','景点特色1','景点游玩路线1','景点位置1','景点注意事项1',3,'735.11','384.20',459,'景点介绍1',1,1,'2022-04-13 13:21:12'),(2,'景点名称2','16498272722917','http://localhost:8080/zhoubianyoupingtai/upload/jingdian2.jpg','景点特色2','景点游玩路线2','景点位置2','景点注意事项2',3,'586.20','46.60',177,'景点介绍2',1,1,'2022-04-13 13:21:12'),(3,'景点名称3','164982727229115','http://localhost:8080/zhoubianyoupingtai/upload/jingdian3.jpg','景点特色3','景点游玩路线3','景点位置3','景点注意事项3',3,'744.06','457.31',41,'景点介绍3',1,1,'2022-04-13 13:21:12'),(4,'景点名称4','16498272722916','http://localhost:8080/zhoubianyoupingtai/upload/jingdian4.jpg','景点特色4','景点游玩路线4','景点位置4','景点注意事项4',3,'574.02','181.07',243,'景点介绍4',1,1,'2022-04-13 13:21:12'),(5,'景点名称5','164982727229114','http://localhost:8080/zhoubianyoupingtai/upload/jingdian5.jpg','景点特色5','景点游玩路线5','景点位置5','景点注意事项5',4,'554.76','493.86',93,'景点介绍5',1,1,'2022-04-13 13:21:12');

/*Table structure for table `jingdian_collection` */

DROP TABLE IF EXISTS `jingdian_collection`;

CREATE TABLE `jingdian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingdian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='景点收藏';

/*Data for the table `jingdian_collection` */

insert  into `jingdian_collection`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(2,2,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,4,1,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,5,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12');

/*Table structure for table `jingdian_commentback` */

DROP TABLE IF EXISTS `jingdian_commentback`;

CREATE TABLE `jingdian_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jingdian_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='景点评价';

/*Data for the table `jingdian_commentback` */

insert  into `jingdian_commentback`(`id`,`jingdian_id`,`yonghu_id`,`jingdian_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2022-04-13 13:21:12','回复信息1','2022-04-13 13:21:12','2022-04-13 13:21:12'),(2,2,3,'评价内容2','2022-04-13 13:21:12','回复信息2','2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,2,'评价内容3','2022-04-13 13:21:12','回复信息3','2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,4,1,'评价内容4','2022-04-13 13:21:12','回复信息4','2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,5,1,'评价内容5','2022-04-13 13:21:12','回复信息5','2022-04-13 13:21:12','2022-04-13 13:21:12'),(6,2,1,'sssgg','2022-04-13 15:01:57',NULL,NULL,'2022-04-13 15:01:57');

/*Table structure for table `jingdian_order` */

DROP TABLE IF EXISTS `jingdian_order`;

CREATE TABLE `jingdian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jingdian_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `jingdian_id` int(11) DEFAULT NULL COMMENT '景点',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `youwan_time` date DEFAULT NULL COMMENT '游玩日期',
  `jingdian_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `jingdian_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `jingdian_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='景点订单';

/*Data for the table `jingdian_order` */

insert  into `jingdian_order`(`id`,`jingdian_order_uuid_number`,`jingdian_id`,`yonghu_id`,`buy_number`,`youwan_time`,`jingdian_order_true_price`,`jingdian_order_types`,`jingdian_order_payment_types`,`insert_time`,`create_time`) values (1,'1649832596021',5,1,2,'2022-04-14','987.72',1,1,'2022-04-13 14:49:56','2022-04-13 14:49:56'),(2,'1649832607625',3,1,3,'2022-04-15','1371.93',3,1,'2022-04-13 14:50:08','2022-04-13 14:50:08'),(3,'1649833156371',2,1,2,'2022-04-22','93.20',5,1,'2022-04-13 14:59:16','2022-04-13 14:59:16');

/*Table structure for table `liuyan` */

DROP TABLE IF EXISTS `liuyan`;

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `liuyan` */

insert  into `liuyan`(`id`,`yonghu_id`,`liuyan_name`,`liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,2,'留言标题1','留言内容1','2022-04-13 13:21:12','回复信息1','2022-04-13 13:21:12','2022-04-13 13:21:12'),(2,1,'留言标题2','留言内容2','2022-04-13 13:21:12','回复信息2','2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,'留言标题3','留言内容3','2022-04-13 13:21:12','回复信息3','2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,2,'留言标题4','留言内容4','2022-04-13 13:21:12','回复信息4','2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,2,'留言标题5','留言内容5','2022-04-13 13:21:12','回复信息5','2022-04-13 13:21:12','2022-04-13 13:21:12'),(6,1,'标题111','内容111','2022-04-13 14:57:32','wwwww','2022-04-13 15:01:30','2022-04-13 14:57:32');

/*Table structure for table `lvyoutuan` */

DROP TABLE IF EXISTS `lvyoutuan`;

CREATE TABLE `lvyoutuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lvyoutuan_name` varchar(200) DEFAULT NULL COMMENT '旅游团名称  Search111 ',
  `lvyoutuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '旅游团编号  Search111 ',
  `lvyoutuan_photo` varchar(200) DEFAULT NULL COMMENT '旅游团照片',
  `lvyoutuan_lvxingdizhi` varchar(200) DEFAULT NULL COMMENT '旅行地点 Search111 ',
  `youwanluxian_chuxingfangshi_types` int(11) DEFAULT NULL COMMENT '出行方式 Search111',
  `lvyoutuan_types` int(11) DEFAULT NULL COMMENT '旅游团类型 Search111',
  `lvyoutuan_number` int(11) DEFAULT NULL COMMENT '最大参与人数',
  `lvyoutuan_clicknum` int(11) DEFAULT NULL COMMENT '旅游团热度 ',
  `lvyoutuan_content` text COMMENT '旅游团详情 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `lvyoutuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='旅游团';

/*Data for the table `lvyoutuan` */

insert  into `lvyoutuan`(`id`,`yonghu_id`,`lvyoutuan_name`,`lvyoutuan_uuid_number`,`lvyoutuan_photo`,`lvyoutuan_lvxingdizhi`,`youwanluxian_chuxingfangshi_types`,`lvyoutuan_types`,`lvyoutuan_number`,`lvyoutuan_clicknum`,`lvyoutuan_content`,`shangxia_types`,`lvyoutuan_delete`,`create_time`) values (1,2,'旅游团名称1','16498272723047','http://localhost:8080/zhoubianyoupingtai/upload/yonghu1.jpg','旅行地点1',1,2,121,255,'旅游团详情1',1,1,'2022-04-13 13:21:12'),(2,1,'旅游团名称2','164982727230420','http://localhost:8080/zhoubianyoupingtai/upload/yonghu2.jpg','旅行地点2',2,2,105,232,'旅游团详情2',1,1,'2022-04-13 13:21:12'),(3,1,'旅游团名称3','164982727230411','http://localhost:8080/zhoubianyoupingtai/upload/yonghu3.jpg','旅行地点3',4,3,273,358,'旅游团详情3',1,1,'2022-04-13 13:21:12'),(4,2,'旅游团名称4','16498272723042','http://localhost:8080/zhoubianyoupingtai/upload/yonghu1.jpg','旅行地点4',1,2,70,400,'旅游团详情4',1,1,'2022-04-13 13:21:12'),(5,3,'旅游团名称5','164982727230415','http://localhost:8080/zhoubianyoupingtai/upload/yonghu2.jpg','旅行地点5',4,2,171,54,'旅游团详情5',1,1,'2022-04-13 13:21:12');

/*Table structure for table `lvyoutuan_collection` */

DROP TABLE IF EXISTS `lvyoutuan_collection`;

CREATE TABLE `lvyoutuan_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvyoutuan_id` int(11) DEFAULT NULL COMMENT '旅游团',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lvyoutuan_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='旅游团收藏';

/*Data for the table `lvyoutuan_collection` */

insert  into `lvyoutuan_collection`(`id`,`lvyoutuan_id`,`yonghu_id`,`lvyoutuan_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,4,1,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,5,2,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(6,3,1,1,'2022-04-13 14:57:10','2022-04-13 14:57:10');

/*Table structure for table `lvyoutuan_liuyan` */

DROP TABLE IF EXISTS `lvyoutuan_liuyan`;

CREATE TABLE `lvyoutuan_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvyoutuan_id` int(11) DEFAULT NULL COMMENT '旅游团',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `lvyoutuan_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='旅游团留言';

/*Data for the table `lvyoutuan_liuyan` */

insert  into `lvyoutuan_liuyan`(`id`,`lvyoutuan_id`,`yonghu_id`,`lvyoutuan_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'留言内容1','2022-04-13 13:21:12','回复信息1','2022-04-13 13:21:12','2022-04-13 13:21:12'),(2,2,2,'留言内容2','2022-04-13 13:21:12','回复信息2','2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,1,'留言内容3','2022-04-13 13:21:12','回复信息3','2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,4,1,'留言内容4','2022-04-13 13:21:12','回复信息4','2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,5,2,'留言内容5','2022-04-13 13:21:12','回复信息5','2022-04-13 13:21:12','2022-04-13 13:21:12');

/*Table structure for table `lvyoutuan_order` */

DROP TABLE IF EXISTS `lvyoutuan_order`;

CREATE TABLE `lvyoutuan_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lvyoutuan_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `lvyoutuan_id` int(11) DEFAULT NULL COMMENT '旅游团',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '报名时间',
  `lvyoutuan_order_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `lvyoutuan_order_yesno_text` text COMMENT '审核意见',
  `lvyoutuan_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='旅游团拼团';

/*Data for the table `lvyoutuan_order` */

insert  into `lvyoutuan_order`(`id`,`lvyoutuan_order_uuid_number`,`lvyoutuan_id`,`yonghu_id`,`insert_time`,`lvyoutuan_order_yesno_types`,`lvyoutuan_order_yesno_text`,`lvyoutuan_order_shenhe_time`,`create_time`) values (1,'1649829408963',4,1,'2022-04-13 13:56:49',2,'ghhhujj','2022-04-13 15:03:50','2022-04-13 13:56:49'),(2,'1649833018351',5,1,'2022-04-13 14:56:58',2,'ss','2022-04-13 15:01:12','2022-04-13 14:56:58');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','xjb3fgtwt6q6n6an0kxw1a80wb41bdlh','2022-04-13 13:25:00','2022-04-13 15:57:50'),(2,1,'a1','yonghu','用户','zraph84d847ulutzbivgbgufbvi1s40m','2022-04-13 13:34:09','2022-04-13 16:01:41'),(3,2,'a2','yonghu','用户','opwzii7wd4glnnwf25xvczqxg3dg0tg9','2022-04-13 14:45:00','2022-04-13 16:03:40');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/zhoubianyoupingtai/upload/yonghu1.jpg',2,'1@qq.com','94382.48','2022-04-13 13:21:12'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/zhoubianyoupingtai/upload/yonghu2.jpg',1,'2@qq.com','702.66','2022-04-13 13:21:12'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/zhoubianyoupingtai/upload/yonghu3.jpg',1,'3@qq.com','123.18','2022-04-13 13:21:12');

/*Table structure for table `youwanluxian` */

DROP TABLE IF EXISTS `youwanluxian`;

CREATE TABLE `youwanluxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `youwanluxian_name` varchar(200) DEFAULT NULL COMMENT '游玩路线名称  Search111 ',
  `youwanluxian_uuid_number` varchar(200) DEFAULT NULL COMMENT '游玩路线编号  Search111 ',
  `youwanluxian_photo` varchar(200) DEFAULT NULL COMMENT '游玩路线照片',
  `youwanluxian_lvyoufangshi_types` int(11) DEFAULT NULL COMMENT '旅游方式 Search111',
  `youwanluxian_chufashijian_types` int(11) DEFAULT NULL COMMENT '出发时间 Search111',
  `youwanluxian_xingcheng_number` int(11) DEFAULT NULL COMMENT '行程时间 ',
  `youwanluxian_chuxingfangshi_types` int(11) DEFAULT NULL COMMENT '出行方式 Search111',
  `youwanluxian_clicknum` int(11) DEFAULT NULL COMMENT '游玩路线热度 ',
  `youwanluxian_content` text COMMENT '游玩路线介绍',
  `youwanluxian_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='游玩路线';

/*Data for the table `youwanluxian` */

insert  into `youwanluxian`(`id`,`youwanluxian_name`,`youwanluxian_uuid_number`,`youwanluxian_photo`,`youwanluxian_lvyoufangshi_types`,`youwanluxian_chufashijian_types`,`youwanluxian_xingcheng_number`,`youwanluxian_chuxingfangshi_types`,`youwanluxian_clicknum`,`youwanluxian_content`,`youwanluxian_delete`,`create_time`) values (1,'游玩路线名称1','164982727231417','http://localhost:8080/zhoubianyoupingtai/upload/yonghu1.jpg',3,3,417,4,313,'游玩路线介绍1',1,'2022-04-13 13:21:12'),(2,'游玩路线名称2','164982727231415','http://localhost:8080/zhoubianyoupingtai/upload/yonghu2.jpg',1,1,134,4,499,'游玩路线介绍2',1,'2022-04-13 13:21:12'),(3,'游玩路线名称3','16498272723144','http://localhost:8080/zhoubianyoupingtai/upload/yonghu3.jpg',1,3,312,2,72,'游玩路线介绍3',1,'2022-04-13 13:21:12'),(4,'游玩路线名称4','16498272723142','http://localhost:8080/zhoubianyoupingtai/upload/yonghu1.jpg',2,2,48,1,445,'游玩路线介绍4',1,'2022-04-13 13:21:12'),(5,'游玩路线名称5','164982727231414','http://localhost:8080/zhoubianyoupingtai/upload/yonghu2.jpg',1,3,355,1,218,'游玩路线介绍5',1,'2022-04-13 13:21:12');

/*Table structure for table `youwanluxian_collection` */

DROP TABLE IF EXISTS `youwanluxian_collection`;

CREATE TABLE `youwanluxian_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youwanluxian_id` int(11) DEFAULT NULL COMMENT '游玩路线',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `youwanluxian_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='游玩路线收藏';

/*Data for the table `youwanluxian_collection` */

insert  into `youwanluxian_collection`(`id`,`youwanluxian_id`,`yonghu_id`,`youwanluxian_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(2,2,2,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,4,2,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,5,3,1,'2022-04-13 13:21:12','2022-04-13 13:21:12'),(6,3,1,1,'2022-04-13 14:59:44','2022-04-13 14:59:44');

/*Table structure for table `youwanluxian_liuyan` */

DROP TABLE IF EXISTS `youwanluxian_liuyan`;

CREATE TABLE `youwanluxian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `youwanluxian_id` int(11) DEFAULT NULL COMMENT '游玩路线',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `youwanluxian_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='游玩路线留言';

/*Data for the table `youwanluxian_liuyan` */

insert  into `youwanluxian_liuyan`(`id`,`youwanluxian_id`,`yonghu_id`,`youwanluxian_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-04-13 13:21:12','回复信息1','2022-04-13 13:21:12','2022-04-13 13:21:12'),(2,2,3,'留言内容2','2022-04-13 13:21:12','回复信息2','2022-04-13 13:21:12','2022-04-13 13:21:12'),(3,3,3,'留言内容3','2022-04-13 13:21:12','回复信息3','2022-04-13 13:21:12','2022-04-13 13:21:12'),(4,4,2,'留言内容4','2022-04-13 13:21:12','回复信息4','2022-04-13 13:21:12','2022-04-13 13:21:12'),(5,5,1,'留言内容5','2022-04-13 13:21:12','回复信息5','2022-04-13 13:21:12','2022-04-13 13:21:12'),(6,4,1,'swssss','2022-04-13 14:57:20',NULL,NULL,'2022-04-13 14:57:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
