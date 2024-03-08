/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - tiyuguanguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tiyuguanguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tiyuguanguanli`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(2,3,'收货人2','17703786902','地址2',1,'2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(3,1,'收货人3','17703786903','地址3',1,'2022-02-26 15:19:13','2022-02-26 17:01:58','2022-02-26 15:19:13'),(4,2,'收货人4','17703786904','地址4',1,'2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(5,3,'收货人5','17703786905','地址5',1,'2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(6,1,'地9','17703786909','点钟6',2,'2022-02-26 17:02:24','2022-02-26 17:02:24','2022-02-26 17:02:24');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `changdi` */

DROP TABLE IF EXISTS `changdi`;

CREATE TABLE `changdi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `changdi_name` varchar(200) DEFAULT NULL COMMENT '场地名称  Search111 ',
  `changdi_photo` varchar(200) DEFAULT NULL COMMENT '场地照片',
  `changdi_types` int(11) DEFAULT NULL COMMENT '场地类型 Search111',
  `changdi_old_money` decimal(10,2) DEFAULT NULL COMMENT '预约原价格/天 ',
  `changdi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价/天',
  `changdi_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `changdi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `changdi_content` text COMMENT '场地介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='场地';

/*Data for the table `changdi` */

insert  into `changdi`(`id`,`changdi_name`,`changdi_photo`,`changdi_types`,`changdi_old_money`,`changdi_new_money`,`changdi_clicknum`,`shangxia_types`,`changdi_delete`,`changdi_content`,`create_time`) values (1,'场地名称1','http://localhost:8080/tiyuguanguanli/upload/changdi1.jpg',2,'521.15','225.41',280,1,1,'场地介绍1','2022-02-26 15:19:13'),(2,'场地名称2','http://localhost:8080/tiyuguanguanli/upload/changdi2.jpg',3,'813.26','142.74',223,1,1,'场地介绍2','2022-02-26 15:19:13'),(3,'场地名称3','http://localhost:8080/tiyuguanguanli/upload/changdi3.jpg',2,'871.97','69.08',313,1,1,'场地介绍3','2022-02-26 15:19:13'),(4,'场地名称4','http://localhost:8080/tiyuguanguanli/upload/changdi4.jpg',1,'508.74','181.12',195,1,1,'场地介绍4','2022-02-26 15:19:13'),(5,'场地名称5','http://localhost:8080/tiyuguanguanli/upload/changdi5.jpg',1,'736.82','495.58',448,1,1,'场地介绍5','2022-02-26 15:19:13');

/*Table structure for table `changdi_order` */

DROP TABLE IF EXISTS `changdi_order`;

CREATE TABLE `changdi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `changdi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约单号 Search111 ',
  `changdi_id` int(11) DEFAULT NULL COMMENT '场地',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `changdi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `changdi_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `changdi_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `yuyue_time` date DEFAULT NULL COMMENT '预约日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='场地订单';

/*Data for the table `changdi_order` */

insert  into `changdi_order`(`id`,`changdi_order_uuid_number`,`changdi_id`,`yonghu_id`,`changdi_order_true_price`,`changdi_order_types`,`changdi_order_payment_types`,`yuyue_time`,`insert_time`,`create_time`) values (1,'1645864805615',4,1,'181.12',2,1,'2022-02-26','2022-02-26 16:40:14','2022-02-26 16:40:14'),(2,'1645865039636',4,1,'181.12',3,1,'2022-02-27','2022-02-26 16:44:08','2022-02-26 16:44:08'),(3,'1645866001197',4,1,'181.12',3,1,'2022-02-28','2022-02-26 17:00:30','2022-02-26 17:00:30');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/tiyuguanguanli/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/tiyuguanguanli/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/tiyuguanguanli/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-02-26 15:17:31'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-02-26 15:17:31'),(3,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-26 15:17:31'),(4,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-26 15:17:31'),(5,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-02-26 15:17:31'),(6,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-02-26 15:17:31'),(7,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-02-26 15:17:31'),(8,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2022-02-26 15:17:32'),(9,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-26 15:17:32'),(10,'shangpin_order_types','订单类型',1,'已评价',NULL,NULL,'2022-02-26 15:17:32'),(11,'shangpin_order_types','订单类型',2,'退款',NULL,NULL,'2022-02-26 15:17:32'),(12,'shangpin_order_types','订单类型',3,'已支付',NULL,NULL,'2022-02-26 15:17:32'),(13,'shangpin_order_types','订单类型',4,'已发货',NULL,NULL,'2022-02-26 15:17:32'),(14,'shangpin_order_types','订单类型',5,'已收货',NULL,NULL,'2022-02-26 15:17:32'),(15,'shangpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-02-26 15:17:32'),(16,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-02-26 15:17:32'),(17,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-02-26 15:17:32'),(18,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-26 15:17:32'),(19,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-26 15:17:32'),(20,'saishi_types','赛事类型',1,'赛事类型1',NULL,NULL,'2022-02-26 15:17:32'),(21,'saishi_types','赛事类型',2,'赛事类型2',NULL,NULL,'2022-02-26 15:17:32'),(22,'saishi_types','赛事类型',3,'赛事类型3',NULL,NULL,'2022-02-26 15:17:32'),(23,'saishi_types','赛事类型',4,'赛事类型4',NULL,NULL,'2022-02-26 15:17:32'),(24,'saishi_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-02-26 15:17:32'),(25,'saishi_order_types','订单类型',1,'已支付',NULL,NULL,'2022-02-26 15:17:32'),(26,'saishi_order_types','订单类型',2,'退款',NULL,NULL,'2022-02-26 15:17:32'),(27,'saishi_order_types','订单类型',3,'已出票',NULL,NULL,'2022-02-26 15:17:32'),(28,'saishi_order_types','订单类型',4,'已使用',NULL,NULL,'2022-02-26 15:17:32'),(29,'saishi_order_types','订单类型',5,'已评价',NULL,NULL,'2022-02-26 15:17:32'),(30,'saishi_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-02-26 15:17:32'),(31,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-02-26 15:17:32'),(32,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-02-26 15:17:32'),(33,'changdi_types','场地类型',1,'场地类型1',NULL,NULL,'2022-02-26 15:17:32'),(34,'changdi_types','场地类型',2,'场地类型2',NULL,NULL,'2022-02-26 15:17:32'),(35,'changdi_types','场地类型',3,'场地类型3',NULL,NULL,'2022-02-26 15:17:33'),(36,'changdi_types','场地类型',4,'场地类型4',NULL,NULL,'2022-02-26 15:17:33'),(37,'changdi_order_types','订单类型',1,'已支付',NULL,NULL,'2022-02-26 15:17:33'),(38,'changdi_order_types','订单类型',2,'退款',NULL,NULL,'2022-02-26 15:17:33'),(39,'changdi_order_types','订单类型',3,'同意',NULL,NULL,'2022-02-26 15:17:33'),(42,'changdi_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-02-26 15:17:33'),(43,'shangpin_types','商品类型',5,'商品类型5',NULL,'','2022-02-26 17:04:52');

/*Table structure for table `saishi` */

DROP TABLE IF EXISTS `saishi`;

CREATE TABLE `saishi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `saishi_name` varchar(200) DEFAULT NULL COMMENT '赛事名称  Search111 ',
  `saishi_photo` varchar(200) DEFAULT NULL COMMENT '赛事照片',
  `saishi_types` int(11) DEFAULT NULL COMMENT '赛事类型 Search111',
  `saishi_old_money` decimal(10,2) DEFAULT NULL COMMENT '赛事原价 ',
  `saishi_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价 ',
  `zuowei_number` int(11) DEFAULT NULL COMMENT '座位',
  `saishi_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `saishi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `saishi_content` text COMMENT '赛事介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='赛事';

/*Data for the table `saishi` */

insert  into `saishi`(`id`,`saishi_name`,`saishi_photo`,`saishi_types`,`saishi_old_money`,`saishi_new_money`,`zuowei_number`,`saishi_clicknum`,`shangxia_types`,`saishi_delete`,`saishi_content`,`create_time`) values (1,'赛事名称1','http://localhost:8080/tiyuguanguanli/upload/shangpin1.jpg',1,'855.15','481.23',20,147,1,1,'赛事介绍1','2022-02-26 15:19:13'),(2,'赛事名称2','http://localhost:8080/tiyuguanguanli/upload/shangpin2.jpg',2,'652.94','434.30',20,65,1,1,'赛事介绍2','2022-02-26 15:19:13'),(3,'赛事名称3','http://localhost:8080/tiyuguanguanli/upload/shangpin3.jpg',3,'905.90','271.01',20,298,1,1,'赛事介绍3','2022-02-26 15:19:13'),(4,'赛事名称4','http://localhost:8080/tiyuguanguanli/upload/shangpin4.jpg',4,'672.35','270.52',20,449,1,1,'赛事介绍4','2022-02-26 15:19:13'),(5,'赛事名称5','http://localhost:8080/tiyuguanguanli/upload/shangpin5.jpg',2,'674.42','36.52',20,482,1,1,'赛事介绍5','2022-02-26 15:19:13');

/*Table structure for table `saishi_collection` */

DROP TABLE IF EXISTS `saishi_collection`;

CREATE TABLE `saishi_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saishi_id` int(11) DEFAULT NULL COMMENT '赛事',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `saishi_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='赛事收藏';

/*Data for the table `saishi_collection` */

insert  into `saishi_collection`(`id`,`saishi_id`,`yonghu_id`,`saishi_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2022-02-26 15:19:13','2022-02-26 15:19:13'),(2,2,2,1,'2022-02-26 15:19:13','2022-02-26 15:19:13'),(3,3,3,1,'2022-02-26 15:19:13','2022-02-26 15:19:13'),(4,4,1,1,'2022-02-26 15:19:13','2022-02-26 15:19:13'),(5,5,3,1,'2022-02-26 15:19:13','2022-02-26 15:19:13');

/*Table structure for table `saishi_commentback` */

DROP TABLE IF EXISTS `saishi_commentback`;

CREATE TABLE `saishi_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saishi_id` int(11) DEFAULT NULL COMMENT '赛事',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `saishi_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='赛事评价';

/*Data for the table `saishi_commentback` */

insert  into `saishi_commentback`(`id`,`saishi_id`,`yonghu_id`,`saishi_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,2,'评价内容1','回复信息1','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(2,2,1,'评价内容2','回复信息2','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(3,3,2,'评价内容3','回复信息3','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(4,4,1,'评价内容4','回复信息4','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(5,5,3,'评价内容5','回复信息5','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(6,5,1,'好得很',NULL,'2022-02-26 17:08:42',NULL,'2022-02-26 17:08:42');

/*Table structure for table `saishi_order` */

DROP TABLE IF EXISTS `saishi_order`;

CREATE TABLE `saishi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `saishi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `saishi_id` int(11) DEFAULT NULL COMMENT '赛事',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `saishi_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格 ',
  `saishi_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `saishi_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `buy_zuowei_number` varchar(200) DEFAULT NULL COMMENT '购买的座位',
  `buy_zuowei_time` date DEFAULT NULL COMMENT '订购日期',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='赛事订单';

/*Data for the table `saishi_order` */

insert  into `saishi_order`(`id`,`saishi_order_uuid_number`,`saishi_id`,`yonghu_id`,`saishi_order_true_price`,`saishi_order_types`,`saishi_order_payment_types`,`buy_zuowei_number`,`buy_zuowei_time`,`insert_time`,`create_time`) values (1,'1645863803823',4,1,'541.04',1,1,'3,4','2022-02-26','2022-02-26 16:23:30','2022-02-26 16:23:30'),(2,'1645866058989',5,1,'109.56',5,1,'4,6,7','2022-02-26','2022-02-26 17:01:02','2022-02-26 17:01:02');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `shangpin_content` text COMMENT '商品简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangxia_types`,`shangpin_delete`,`shangpin_content`,`create_time`) values (1,'商品名称1','http://localhost:8080/tiyuguanguanli/upload/shangpin1.jpg',2,9999,'796.78','202.99',251,1,1,'商品简介1','2022-02-26 15:19:13'),(2,'商品名称2','http://localhost:8080/tiyuguanguanli/upload/shangpin2.jpg',2,10002,'987.50','225.09',293,1,1,'商品简介2','2022-02-26 15:19:13'),(3,'商品名称3','http://localhost:8080/tiyuguanguanli/upload/shangpin3.jpg',3,9999,'936.26','493.50',160,1,1,'商品简介3','2022-02-26 15:19:13'),(4,'商品名称4','http://localhost:8080/tiyuguanguanli/upload/shangpin4.jpg',1,10002,'791.83','147.94',486,1,1,'商品简介4','2022-02-26 15:19:13'),(5,'商品名称5','http://localhost:8080/tiyuguanguanli/upload/shangpin5.jpg',3,10002,'941.83','313.61',135,1,1,'商品简介5','2022-02-26 15:19:13');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,1,1,'2022-02-26 15:19:13','2022-02-26 15:19:13'),(2,2,2,1,'2022-02-26 15:19:13','2022-02-26 15:19:13'),(3,3,1,1,'2022-02-26 15:19:13','2022-02-26 15:19:13'),(4,4,1,1,'2022-02-26 15:19:13','2022-02-26 15:19:13'),(5,5,2,1,'2022-02-26 15:19:13','2022-02-26 15:19:13');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,1,'评价内容1','回复信息1','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(2,2,2,'评价内容2','回复信息2','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(3,3,1,'评价内容3','回复信息3','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(4,4,3,'评价内容4','回复信息4','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(5,5,2,'评价内容5','回复信息5','2022-02-26 15:19:13','2022-02-26 15:19:13','2022-02-26 15:19:13'),(6,5,1,'号',NULL,'2022-02-26 17:09:02',NULL,'2022-02-26 17:09:02');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1645863062798',3,4,1,2,'295.88',3,1,'2022-02-26 16:11:03','2022-02-26 16:11:03'),(2,'1645863062798',3,3,1,2,'987.00',4,1,'2022-02-26 16:11:03','2022-02-26 16:11:03'),(3,'1645866101879',3,1,1,2,'405.98',4,1,'2022-02-26 17:01:42','2022-02-26 17:01:42'),(4,'1645866185180',3,3,1,2,'987.00',5,1,'2022-02-26 17:03:05','2022-02-26 17:03:05'),(5,'1645866185180',3,5,1,3,'940.83',1,1,'2022-02-26 17:03:05','2022-02-26 17:03:05');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','sfiz0m0iuq3t33ds8r0u2aass4c003hi','2022-02-26 15:23:54','2022-02-26 18:05:49'),(2,6,'admin','users','管理员','zinc353b3oeocaox2ulw09n48k52mcpb','2022-02-26 16:57:01','2022-02-26 18:12:17');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2021-04-27 14:51:13');

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

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/tiyuguanguanli/upload/yonghu1.jpg',1,'1@qq.com','5575.90','2022-02-26 15:19:13'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/tiyuguanguanli/upload/yonghu2.jpg',2,'2@qq.com','31.48','2022-02-26 15:19:13'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/tiyuguanguanli/upload/yonghu3.jpg',2,'3@qq.com','707.31','2022-02-26 15:19:13');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;