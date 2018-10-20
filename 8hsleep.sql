/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : 8hsleep

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-20 17:33:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `userid` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `telnumber` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '2', 'chaner', '13571426732', '广东省广州', '广东省广州市天河区元岗路200号');

-- ----------------------------
-- Table structure for cartlist
-- ----------------------------
DROP TABLE IF EXISTS `cartlist`;
CREATE TABLE `cartlist` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `count` int(20) NOT NULL,
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pid` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cartlist
-- ----------------------------

-- ----------------------------
-- Table structure for controller
-- ----------------------------
DROP TABLE IF EXISTS `controller`;
CREATE TABLE `controller` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `actor` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of controller
-- ----------------------------
INSERT INTO `controller` VALUES ('1', 'admin', '12345', 'spuervip');

-- ----------------------------
-- Table structure for hotsale
-- ----------------------------
DROP TABLE IF EXISTS `hotsale`;
CREATE TABLE `hotsale` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `typeid` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `salecount` varchar(255) NOT NULL,
  `searchhelp` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `refamount` varchar(255) NOT NULL,
  `prolink` varchar(255) DEFAULT NULL,
  `isact` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hotsale
-- ----------------------------
INSERT INTO `hotsale` VALUES ('54', '0', '8H 天然蚕丝子母被', '四季更替 体贴如一', 'CZ', '0', 'CZ', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/16/201807161557550488.jpg', '359', '359', '', '0');
INSERT INTO `hotsale` VALUES ('53', '0', '法国亚麻素色件套', '回归自然纯粹的睡眠', 'JM', '0', 'JM', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/03/201807031202548043.jpg', '499', '499', '', '0');
INSERT INTO `hotsale` VALUES ('47', '0', '8H可水洗凉感软被', '8H可水洗凉感软被', '凉感软席', '0', '凉感软席', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101702008496.png', '129', '129', '', '0');
INSERT INTO `hotsale` VALUES ('50', '0', '8H七分区天然乳胶床垫R1', '新一代纯乳胶床垫 一睡就爱上的舒�?', 'R1', '0', 'R1', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/13/201806131748207166.png', '1099', '1099', '', '0');
INSERT INTO `hotsale` VALUES ('48', '0', '8H抗菌凉感薄被', '8H抗菌凉感薄被', '凉感薄被', '0', '凉感薄被', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101719333474.png', '129', '129', '', '0');
INSERT INTO `hotsale` VALUES ('45', '0', '8H 水洗棉抗菌空调被', '', 'BX', '0', 'BX', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/02/201805020939553513.jpg', '129', '129', '', '0');
INSERT INTO `hotsale` VALUES ('49', '0', '8H真皮电动休闲沙发', '8H真皮电动休闲沙发', '悠然1号', '0', '悠然1号', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/20/201805201119485278.png', '1899', '1999', '', '1');
INSERT INTO `hotsale` VALUES ('51', '0', '8H儿童天然蚕丝子母被', '每一丝轻柔，都源于自然', 'CZ kids', '0', 'CZ kids', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/16/201806161023062893.jpg', '299', '299', '', '0');

-- ----------------------------
-- Table structure for lunbo
-- ----------------------------
DROP TABLE IF EXISTS `lunbo`;
CREATE TABLE `lunbo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uploadimg` varchar(255) NOT NULL,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lunbo
-- ----------------------------
INSERT INTO `lunbo` VALUES ('1', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808151619454842.jpg', '2018-10-19 13:33:13');
INSERT INTO `lunbo` VALUES ('2', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/20/201809201140536121.jpg', '2018-10-19 13:33:13');
INSERT INTO `lunbo` VALUES ('3', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201810/13/201810131701586616.jpg', '2018-10-19 13:33:13');
INSERT INTO `lunbo` VALUES ('4', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/06/201803062239062374.jpg', '2018-10-19 13:33:13');

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `pid` int(20) NOT NULL,
  `userid` int(20) NOT NULL,
  `status` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
INSERT INTO `orderlist` VALUES ('1', '2', '2', '1');

-- ----------------------------
-- Table structure for product_skucolor
-- ----------------------------
DROP TABLE IF EXISTS `product_skucolor`;
CREATE TABLE `product_skucolor` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `keyid` varchar(255) NOT NULL,
  `pid` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `img_pc` varchar(255) NOT NULL,
  `img_wap` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `isvalid` varchar(255) NOT NULL,
  `update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product_skucolor
-- ----------------------------
INSERT INTO `product_skucolor` VALUES ('96', 'd412e880104c46a7af8a1c14f3f6b8d2', '54', '夏被', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/16/201807161605197789.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/16/201807161605231540.jpg', '夏被', 'true', '2018-10-19 19:46:30');
INSERT INTO `product_skucolor` VALUES ('97', 'a1a0d663d4d543f0b74e02c6d3096e89', '54', '春秋被', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/16/201807161605395450.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/16/201807161605426389.jpg', '春秋被', 'true', '2018-10-20 10:45:43');
INSERT INTO `product_skucolor` VALUES ('98', '307d7dc898ae4791a18721f84d54e06d', '54', '子母被', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/16/201807161605567486.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/16/201807161605595143.jpg', '子母被', 'true', '2018-10-20 10:45:39');
INSERT INTO `product_skucolor` VALUES ('111', '7b4764de9cf24e599dd6ee7ddbee2894', '63', '原木被', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/20/201809201137553598.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/20/201809201137599849.png', '原木被', 'true', '2018-10-20 10:45:32');
INSERT INTO `product_skucolor` VALUES ('112', '3984cf8896904dbea0d782f90d8674b5', '63', '核桃色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/20/201809201138376416.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/20/201809201138403916.png', '核桃色', 'true', '2018-10-20 10:45:26');
INSERT INTO `product_skucolor` VALUES ('106', 'f36935302f6d4f20bf960fbec78b6ddf', '58', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/17/201808171353060294.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/17/201808171353084045.jpg', '白色', 'true', '2018-10-19 19:53:04');
INSERT INTO `product_skucolor` VALUES ('109', '0d95189fc9b24bbdbfbaf984e1421fa0', '61', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/31/201808311514074135.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/31/201808311514094760.png', '白色', 'true', '2018-10-19 19:53:04');
INSERT INTO `product_skucolor` VALUES ('110', '958905049017496eb8a905c108f8fc81', '62', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/11/201809111104321985.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/11/201809111104345110.png', '白色', 'true', '2018-10-19 19:53:04');
INSERT INTO `product_skucolor` VALUES ('94', '86b6a37dee75419ba7b6a0eecf0d63d3', '53', '清雅卡其', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/03/201807031242121683.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/03/201807031242144652.jpg', '清雅卡其', 'true', '2018-10-19 19:59:29');
INSERT INTO `product_skucolor` VALUES ('95', '675f52c7bd404f54ae9152bb40678781', '53', '静谧灰蓝', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/03/201807031243204048.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201807/03/201807031243225768.jpg', '静谧灰蓝', 'true', '2018-10-19 19:59:29');
INSERT INTO `product_skucolor` VALUES ('79', 'd65be01f1cc14a7ba67f35117b3433cc', '47', '沁蓝', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101711549510.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101712037167.png', '沁蓝', 'true', '2018-10-19 19:59:29');
INSERT INTO `product_skucolor` VALUES ('80', '5bf1b9bd5e4d4f74970b2b1935774d13', '47', '冷灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101712239982.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101712285295.png', '冷灰', 'true', '2018-10-19 19:59:29');
INSERT INTO `product_skucolor` VALUES ('86', '65d802afba8245c891d2c3da588bffe4', '50', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/13/201806131753171129.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/13/201806131753199724.png', '咖啡金', 'true', '2018-10-20 10:44:52');
INSERT INTO `product_skucolor` VALUES ('87', '2def2f6d60984bf2a51a5a35344aaca1', '50', '素蓝灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/13/201806131753488948.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/13/201806131753508480.png', '素蓝灰', 'true', '2018-10-20 10:44:49');
INSERT INTO `product_skucolor` VALUES ('88', '842b2ebcd8e84a09b5344b1635bbe401', '50', '玫瑰灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/13/201806131753597388.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/13/201806131754015982.png', '玫瑰金', 'true', '2018-10-20 10:44:44');
INSERT INTO `product_skucolor` VALUES ('92', 'd2886b522f414097ada53cbd91cdb0aa', '52', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/23/201806231605559637.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/23/201806231605585576.png', '咖啡金', 'true', '2018-10-20 10:44:40');
INSERT INTO `product_skucolor` VALUES ('93', 'f4ce176523b04c13bdda3b2d777d6549', '52', '素蓝灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/23/201806231606109955.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/23/201806231606128861.png', '素蓝灰', 'true', '2018-10-20 10:44:36');
INSERT INTO `product_skucolor` VALUES ('71', '7cff10682b8b49bc8256f197e3d056d3', '41', '空灵灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/29/201803291137586055.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/29/201803291138007149.jpg', '空灵灰', 'true', '2018-10-20 10:44:21');
INSERT INTO `product_skucolor` VALUES ('85', '10db85c6233b428daec261577d35e73b', '41', '森林米', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/29/201805290933566185.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/29/201805290934009155.jpg', '森林米', 'true', '2018-10-20 10:44:16');
INSERT INTO `product_skucolor` VALUES ('81', '15fc37bf98204b738986ca954dd71c81', '48', '沁蓝', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101726410560.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101726441186.png', '沁蓝', 'true', '2018-10-19 20:01:00');
INSERT INTO `product_skucolor` VALUES ('82', 'b021895c52da46bc96ee1b8231a32568', '48', '冷灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101727245566.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101727252441.png', '冷灰', 'true', '2018-10-19 20:01:00');
INSERT INTO `product_skucolor` VALUES ('1', '2a17e1a7d4cf446fae7061aad169d336', '1', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211049220857.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211049306172.png', '#9c816c', 'true', '2018-10-20 10:28:54');
INSERT INTO `product_skucolor` VALUES ('2', '99e94fac0d23476fa8f48f06c3f53e5d', '1', '素蓝灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211049353985.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211049375861.png', '#808894', 'true', '2018-10-20 10:28:58');
INSERT INTO `product_skucolor` VALUES ('3', '4171a0ec6d544fc7a30f6a8dae8e3da2', '2', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211050103213.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211050125557.png', '#9c816c', 'true', '2018-10-20 10:29:02');
INSERT INTO `product_skucolor` VALUES ('4', '864435c5128e458892814e8dac597976', '2', '素蓝灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211050314625.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211050332750.png', '#808894', 'true', '2018-10-20 10:29:08');
INSERT INTO `product_skucolor` VALUES ('5', '37f0f0ccb5144ee9998bf23e7fcb86d4', '3', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211051048071.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211051066196.png', '#9c816c', 'true', '2018-10-20 10:29:11');
INSERT INTO `product_skucolor` VALUES ('6', '0b645568e6d147d4ae4f9c65e9941525', '3', '素蓝灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211051139948.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211051158230.png', '#808894', 'true', '2018-10-20 10:29:16');
INSERT INTO `product_skucolor` VALUES ('32', 'd64f6113ec7f4ce48c6d3272ffd86c06', '3', '玫瑰金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211051344797.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211051368079.png', '#f99ca8', 'true', '2018-10-20 10:29:19');
INSERT INTO `product_skucolor` VALUES ('7', '98bd33fdf04f42c8a8efb5ce784abed1', '4', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211048595539.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211049014914.png', '#9c816c', 'true', '2018-10-20 10:29:24');
INSERT INTO `product_skucolor` VALUES ('8', '35c4f60f4b574d98b9c1e4eab9ff27fe', '4', '玫瑰金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211049062103.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211049090072.png', '#f99ca8', 'true', '2018-10-20 10:29:29');
INSERT INTO `product_skucolor` VALUES ('10', '5e8398b300554030916cd04b1d9df2c5', '6', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211052331218.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211052353250.png', '#9c816c', 'true', '2018-10-20 10:29:32');
INSERT INTO `product_skucolor` VALUES ('11', '53472c01eaf5454ba086f6c8b7a8b0d8', '6', '素蓝灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211052448878.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211052472784.png', '#808894', 'true', '2018-10-20 10:29:56');
INSERT INTO `product_skucolor` VALUES ('13', '54fdcf427c444c0aa9b0c34eb329b290', '8', '舒雅灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211050464941.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211050486035.png', '#cccccc', 'true', '2018-10-20 10:30:03');
INSERT INTO `product_skucolor` VALUES ('15', 'adedba72cf1340f1a3e9945d56f7d105', '10', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211053398579.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211053417486.png', '#9c816c', 'true', '2018-10-20 10:30:08');
INSERT INTO `product_skucolor` VALUES ('16', 'dde9e8dfe32847e7958ec54b2a340aaf', '10', '玫瑰金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211054122337.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211054141713.png', ' #f99ca8', 'true', '2018-10-20 10:30:13');
INSERT INTO `product_skucolor` VALUES ('17', '17da92362235408e8857ad6368d6953d', '11', '舒雅灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211053219668.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211053245294.png', '#cccccc', 'true', '2018-10-20 10:30:25');
INSERT INTO `product_skucolor` VALUES ('28', 'd388a93c2f834c7fb6291af2073b6238', '16', '天空灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201709/05/201709050710370571.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201709/05/201709050710450104.jpg', '#e6e6e6', 'true', '2018-10-20 10:30:31');
INSERT INTO `product_skucolor` VALUES ('37', '77f58c512baa45dc98ed33343867d6ea', '19', '天空灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/19/201706191017120134.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/19/201706191017153728.png', '天空灰', 'true', '2018-10-20 10:44:06');
INSERT INTO `product_skucolor` VALUES ('41', 'fd7dc27af00e45f5937f122a1c21a5f8', '21', '咖啡金', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/30/201706301211250519.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/30/201706301211280363.png', '#9c816c', 'true', '2018-10-20 10:30:41');
INSERT INTO `product_skucolor` VALUES ('42', '2808fb56a4df4d03b189083dfecbef70', '21', '素蓝灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/30/201706301211343021.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/30/201706301211368022.png', '#808894', 'true', '2018-10-20 10:30:45');
INSERT INTO `product_skucolor` VALUES ('46', '155a00a209c5409aaf2b6ddec494fec3', '25', '橙灰双色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201709/29/201709291333042939.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201709/29/201709291333073565.png', '灰橙', 'true', '2018-10-19 20:04:16');
INSERT INTO `product_skucolor` VALUES ('51', '8af6abb442c340e99a8a21b6a057adcc', '30', '灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/27/201710271605358905.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/27/201710271605384843.jpg', '灰色', 'true', '2018-10-19 20:04:16');
INSERT INTO `product_skucolor` VALUES ('53', '565e374a2bef4e0ca051a89b64d2c74c', '31', '灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201711/20/201711202053594739.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201711/20/201711202054016771.png', '灰色', 'true', '2018-10-19 20:05:42');
INSERT INTO `product_skucolor` VALUES ('63', '409bf9b8ff1946c2ab702a3d2ebeb910', '35', '珍珠白间天空灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201802/05/201802051247428354.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201802/05/201802051247456948.jpg', '珍珠白间天空灰', 'true', '2018-10-20 10:43:59');
INSERT INTO `product_skucolor` VALUES ('75', 'bdc63b763ea74da9afbd98d176790b3b', '45', '澄澈蓝', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101735148751.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101735181252.png', '澄澈蓝', 'true', '2018-10-20 10:43:53');
INSERT INTO `product_skucolor` VALUES ('76', 'b5d9d165e37e44d0b76b06c0b6d2b6b2', '45', '冰河灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/02/201805020945238576.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/02/201805020945260608.png', '冰河灰', 'true', '2018-10-20 10:45:53');
INSERT INTO `product_skucolor` VALUES ('77', '6b2822dd044942d3ad7f45b24d000472', '46', '混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101734226713.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101734267808.png', '混灰色', 'true', '2018-10-20 10:43:41');
INSERT INTO `product_skucolor` VALUES ('78', '6a6027c0660848d7b5d50e21a818836a', '46', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/08/201805081303143041.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/08/201805081303162885.jpg', '混米色', 'true', '2018-10-20 10:43:36');
INSERT INTO `product_skucolor` VALUES ('83', '69018db53c25435b9746748aa94e81d6', '49', '纯真米', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/20/201805201129268707.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/20/201805201129290270.png', '纯真米', 'true', '2018-10-20 10:43:30');
INSERT INTO `product_skucolor` VALUES ('84', '63e388d110f146939eafb812815c2e88', '49', '博雅驼', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/20/201805201129526683.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/20/201805201129552933.png', '博雅驼', 'true', '2018-10-20 10:43:25');
INSERT INTO `product_skucolor` VALUES ('99', '22ffec9568f144e3aa3bb45e3c4a0037', '55', '混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/01/201808011145127381.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/01/201808011145154100.png', '混灰色', 'true', '2018-10-20 10:43:19');
INSERT INTO `product_skucolor` VALUES ('100', '314ae90767054767b8234d581790bdbd', '55', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/01/201808011145274103.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/01/201808011145293010.png', '混米色', 'true', '2018-10-20 10:43:16');
INSERT INTO `product_skucolor` VALUES ('101', 'e3df0d3143a6473aaf4fb9306725e556', '56', '优雅米灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/02/201808021636298299.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/02/201808021636321268.png', '优雅米灰', 'true', '2018-10-19 20:07:25');
INSERT INTO `product_skucolor` VALUES ('102', '087ddd0e6c7c460391f404887867294a', '57', '雅士米', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808151436242555.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808151436267556.png', '雅士米', 'true', '2018-10-20 10:43:10');
INSERT INTO `product_skucolor` VALUES ('103', '7e939a31f7064cdebaad6c37c7fb344b', '57', '宁静篮', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808150939102929.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808150939130430.png', '宁静蓝', 'true', '2018-10-20 10:43:04');
INSERT INTO `product_skucolor` VALUES ('104', '68c2e79a4f8844199ef777a4e1b5bc6d', '57', '清晨灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808150946363356.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808150946384137.png', '清晨灰', 'true', '2018-10-20 10:42:59');
INSERT INTO `product_skucolor` VALUES ('105', '020aaf190ecf468ea0938f4e539c4e55', '57', '秋色米麻感', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808150950486233.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/15/201808150950509202.png', '秋色米麻感', 'true', '2018-10-20 10:42:54');
INSERT INTO `product_skucolor` VALUES ('108', '634e1d78cf8e485589b30f917e439b47', '60', '灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/22/201808221113512639.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/22/201808221113532796.png', '灰色', 'true', '2018-10-19 20:07:25');
INSERT INTO `product_skucolor` VALUES ('120', '48f150ad444e4615a0f267f6e791ecf4', '65', '本白', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201810/13/201810131642207715.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201810/13/201810131642237255.png', '本白', 'true', '2018-10-19 20:07:25');
INSERT INTO `product_skucolor` VALUES ('121', 'a6ab206980034a5fb71f8e87b4e58e0a', '65', '银雾灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201810/13/201810131642464665.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201810/13/201810131642485922.png', '银雾灰', 'true', '2018-10-20 10:42:46');
INSERT INTO `product_skucolor` VALUES ('107', 'b58b4f34dd4f4026904cda2a2d26d335', '59', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/21/201808211236011769.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201808/21/201808211236034738.png', '白色', 'true', '2018-10-19 20:07:25');
INSERT INTO `product_skucolor` VALUES ('115', 'df766c6013444c1784de3f9ec0e84943', '64', '绅士棕', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271614037428.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271614061803.png', '绅士棕', 'true', '2018-10-20 10:42:41');
INSERT INTO `product_skucolor` VALUES ('116', '514503c4a2c3491ab293443c233cf8de', '64', '米灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271614272274.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271614291181.png', '米灰', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('117', '6d1c577696cb43ae8eeafc2ec07463f0', '64', '绅士棕', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271614488996.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271614513059.png', '绅士棕', 'true', '2018-10-20 10:42:33');
INSERT INTO `product_skucolor` VALUES ('118', 'a7401d8fa1d7498ca5ea791710d6a452', '64', '深海军蓝', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271615229313.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271615249157.png', '深海军蓝', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('119', '8b78be9105bc4a509ebbe48401257aca', '64', '深海军蓝', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271615229313.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/27/201809271615249157.png', '深海军蓝', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('89', 'f4da5e1b344e40c599659be32de4d273', '51', '夏被', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/16/201806161027124066.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/16/201806161027146723.jpg', '夏被', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('90', 'fb4b1087a8cb46c7be95489c7e71a5cd', '51', '春秋被', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/16/201806161027270321.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/16/201806161027292509.jpg', '春秋被', 'true', '2018-10-20 10:42:17');
INSERT INTO `product_skucolor` VALUES ('91', '0c0ae0018ab140169ceefb07251dd0f4', '51', '子母被', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/16/201806161027375480.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201806/16/201806161027392512.jpg', '子母被', 'true', '2018-10-20 10:42:13');
INSERT INTO `product_skucolor` VALUES ('74', '9ae087bd28bd4655a3da9ccdb85ec25f', '44', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101740390511.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/10/201805101740379730.png', '白色', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('73', 'ff660139e8e94ee3a5658dede328006d', '43', '本白', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201804/09/201804091428100483.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201804/09/201804091428122202.png', '本白', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('29', 'a910228eac9748e3afa07f146f160c71', '17', '炭灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211048285062.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211048307094.png', '#6a6a6a', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('30', '6b881eb3cbdf4783a96989893cb985bd', '17', '深咖', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211048366001.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211048387565.png', '#422420', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('31', '6c4df6dc8dba4608906c7d6446cc1b35', '17', '藏青', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211048439753.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211048460223.png', '#252d40', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('38', '2da326896f444c04addae060cb34d537', '20', '远山绿', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/26/201706261216023133.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/26/201706261216057039.png', '远山绿', 'true', '2018-10-20 10:42:02');
INSERT INTO `product_skucolor` VALUES ('39', '66550aed0b2b4bcca6b5033dcf3217d9', '20', '拂晓灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/26/201706261216431109.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/26/201706261216485485.png', '拂晓灰', 'true', '2018-10-20 10:41:54');
INSERT INTO `product_skucolor` VALUES ('40', '80a74aaf09ed427aa0c5036d60dd0248', '20', '暮光灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/22/201706221722214850.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/22/201706221722235476.png', '暮光灰', 'true', '2018-10-20 10:41:50');
INSERT INTO `product_skucolor` VALUES ('113', 'a160dcb1044f4734b5a84aa0a29babd4', '20', '巴黎灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/25/201809251543277096.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/25/201809251543301784.png', '巴黎灰', 'true', '2018-10-20 10:41:46');
INSERT INTO `product_skucolor` VALUES ('114', '630027177742421b9c968375f61d5aa1', '20', '摩登米', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/25/201809251543479444.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201809/25/201809251543501788.png', '摩登米', 'true', '2018-10-20 10:41:40');
INSERT INTO `product_skucolor` VALUES ('56', 'eaffc0b527714617a05668ff1073fd2f', '33', '雅士灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/04/201801041643528279.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/04/201801041643557967.png', '雅士灰', 'true', '2018-10-20 10:41:37');
INSERT INTO `product_skucolor` VALUES ('57', 'e3f92e9a7881496f8e1e316b06a916ba', '33', '秋水蓝', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/04/201801041644006250.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/04/201801041644027031.png', '秋蓝', 'true', '2018-10-20 10:41:33');
INSERT INTO `product_skucolor` VALUES ('58', '18b149b67f7241ee8ae795726f6c0e43', '33', '英格兰灰白格', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/04/201801041644100627.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/04/201801041644122034.png', '英格兰灰白格', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('72', 'c6be39abad2440caba10980fb7bd069b', '42', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/30/201803302006124025.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/30/201803302006145588.png', '白色', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('9', 'a6e22a65be1749228c1299fe71afdcfb', '5', '米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211055017350.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211055036882.png', '#f1e8d0', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('35', '1f54c2ec859649da9c4b8cd3eb243555', '5', '米色（礼盒装�?', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/30/201703301356168928.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201704/07/201704071714025307.png', '#f1e8d0', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('14', 'c01338a10e6348d3bca27186a2093a15', '9', '雅米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211054427189.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211054445002.png', '#f1e8d0', 'true', '2018-10-20 10:36:08');
INSERT INTO `product_skucolor` VALUES ('34', 'dfd2ee0881d34bce9fc1fa55b0881cc5', '9', '雅米色（礼盒装）', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/30/201703301352547626.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201704/07/201704071708510071.png', '#f1e8d0', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('18', 'a46a279118a5486ea0d52744de757c13', '12', ' 混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211055244075.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211055247668.png', '#aaa2aa', 'true', '2018-10-20 10:36:13');
INSERT INTO `product_skucolor` VALUES ('19', '01e5c69e77bf427eba647944ca847662', '12', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211055314233.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211055355952.png', '#e3d4c5', 'true', '2018-10-20 10:36:16');
INSERT INTO `product_skucolor` VALUES ('33', '0eec1fee5eed4694a7e96f587cb35d65', '12', '混米色（礼盒装）', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/30/201703301349045380.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201704/07/201704071714381722.png', '#e3d4c5', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('22', 'f5947de56006482c9a90be5b3f3445ca', '13', '混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231404520903.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231404520903.png', '#cac9d6', 'true', '2018-10-20 10:36:21');
INSERT INTO `product_skucolor` VALUES ('23', 'b873f93a9b3940fba73cd50dfbec1d8c', '13', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231404399650.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231404399650.png', '#d3cac0', 'true', '2018-10-20 10:36:23');
INSERT INTO `product_skucolor` VALUES ('21', 'f4a145e7fadb4617bd7e6846df3eafb3', '14', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231408292052.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231408292052.png', '#e3d4c5', 'true', '2018-10-20 10:36:37');
INSERT INTO `product_skucolor` VALUES ('26', '7faab9c9d04547d9b51827132b1d280e', '15', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231405060125.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231405060125.png', '#d3cac0', 'true', '2018-10-20 10:36:43');
INSERT INTO `product_skucolor` VALUES ('27', '10634d422f51421ca7036b018d6d4672', '15', '混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231405148877.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201703/23/201703231405148877.png', '#cac9d6', 'true', '2018-10-20 10:36:46');
INSERT INTO `product_skucolor` VALUES ('45', 'a519199387874caa8c32a9b5de8c4475', '24', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201709/08/201709081608505533.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201709/08/201709081608527408.jpg', '混米色', 'true', '2018-10-20 10:41:21');
INSERT INTO `product_skucolor` VALUES ('49', '90a7ab933ac249a599e7b1d88ab37a0e', '28', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/25/201710251626018053.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/25/201710251626038834.png', '白色', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('50', 'b4ccd6ec49a745a0adc6cf2ef8c10877', '29', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/25/201710251643557234.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/25/201710251643583016.png', '白色', 'true', '2018-10-19 20:15:06');
INSERT INTO `product_skucolor` VALUES ('54', '1715fe7202ac45b18e706e0175f48ad5', '32', '混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/03/201801031653021672.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/03/201801031653043392.jpg', '混灰色', 'true', '2018-10-20 10:41:17');
INSERT INTO `product_skucolor` VALUES ('55', 'c3ff0474ab024c6ca06f05eb68f9e832', '32', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/03/201801031653198083.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201801/03/201801031653224803.jpg', '混米色', 'true', '2018-10-20 10:41:14');
INSERT INTO `product_skucolor` VALUES ('64', '7f2a34d3368e4bdd9b688a2bc6c04faa', '36', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/15/201803151458388397.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/15/201803151458418710.jpg', '混米色', 'true', '2018-10-20 10:41:12');
INSERT INTO `product_skucolor` VALUES ('65', '6ada044c4ede4cd58a997cd15a6131cd', '36', '混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/15/201803151458535430.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/15/201803151458562462.jpg', '混灰色', 'true', '2018-10-20 10:41:09');
INSERT INTO `product_skucolor` VALUES ('66', '16c5436da90b4859ae4d1f3d0a00df14', '37', '混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/16/201803160922571959.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/16/201803160922596178.jpg', '混灰色', 'true', '2018-10-20 10:41:04');
INSERT INTO `product_skucolor` VALUES ('67', '9edf655996564727a87d67a79a35cf50', '37', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/16/201803160923464309.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/16/201803160923484466.jpg', '混米色', 'true', '2018-10-20 10:41:00');
INSERT INTO `product_skucolor` VALUES ('68', '3aa20a9fdf0044c2b66504ff92c743b7', '38', '混灰色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/16/201803160954172200.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/16/201803160954259857.jpg', '混灰色', 'true', '2018-10-20 10:40:52');
INSERT INTO `product_skucolor` VALUES ('69', '3becc84876244f4fb91e0f0b031eab2e', '38', '混米色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/16/201803160954418765.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/16/201803160954437359.jpg', '混米色', 'true', '2018-10-20 10:40:46');
INSERT INTO `product_skucolor` VALUES ('70', 'c317a18797b640729400e6e02601751b', '39', '本白', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/20/201803201909478356.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/20/201803201909501168.jpg', '本白', 'true', '2018-10-19 20:16:46');
INSERT INTO `product_skucolor` VALUES ('36', '1e58771a09854511a0bfac0b18e23fb9', '18', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211056383625.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201706/21/201706211056409250.png', '#ffffff', 'true', '2018-10-19 20:16:46');
INSERT INTO `product_skucolor` VALUES ('47', 'd26a7fdadd26455bab3ad305e3688622', '26', '本白', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/11/201710111104017338.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/11/201710111104058745.jpg', '本白', 'true', '2018-10-19 20:16:46');
INSERT INTO `product_skucolor` VALUES ('48', '8aacbbeef36d48a682e2f025fa9ccd95', '27', '白色', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/21/201710212312531813.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201710/21/201710212312567439.jpg', '白色', 'true', '2018-10-19 20:16:46');
INSERT INTO `product_skucolor` VALUES ('59', '8f7ab27edb4044aa901383f756706aca', '34', '深秋绿', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/13/201803131538206692.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/13/201803131538232473.png', '深秋绿', 'true', '2018-10-20 10:40:39');
INSERT INTO `product_skucolor` VALUES ('60', '6f02bc914b454768b92b77d4ebba3937', '34', '舒雅灰', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/13/201803131538322318.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/13/201803131538345287.png', '舒雅灰', 'true', '2018-10-20 10:40:26');
INSERT INTO `product_skucolor` VALUES ('61', 'c47e3354f9e141bdad4a6b2ee0e1112c', '34', '春色粉', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/13/201803131538427476.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/13/201803131538447788.png', '春粉', 'true', '2018-10-20 10:40:33');
INSERT INTO `product_skucolor` VALUES ('62', 'c840c043b87147be945a5a9a172a9acb', '34', '普洱褐', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/13/201803131538520602.png', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/13/201803131538541696.png', '普洱褐', 'true', '2018-10-20 10:40:13');
INSERT INTO `product_skucolor` VALUES ('12', 'e08e5b9ecbf046b8b962f8acb677edfc', '7', '补差', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201611/01/201611010948182200.jpg', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201611/01/201611010948182200.jpg', '#ffffff', 'true', '2018-10-20 10:46:20');

-- ----------------------------
-- Table structure for tehui
-- ----------------------------
DROP TABLE IF EXISTS `tehui`;
CREATE TABLE `tehui` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `typeid` int(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `salecount` varchar(255) NOT NULL,
  `searchhelp` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `refamount` varchar(255) NOT NULL,
  `prolink` varchar(255) NOT NULL,
  `isact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tehui
-- ----------------------------
INSERT INTO `tehui` VALUES ('41', '0', '8H乳胶多连锁弹簧床垫TS', '高弹多连锁弹簧抑菌排湿透气', 'TS', '0', 'TS', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201803/29/201803291116120853.jpg', '899', '2299', '', '1');
INSERT INTO `tehui` VALUES ('1', '0', '乳胶弹簧床垫T1', '独立袋装、分层设计', 'T1', '9999', 'T1', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201702/13/201702131922434145.jpg', '1699', '1999', 'product_t1_1.html', '1');
INSERT INTO `tehui` VALUES ('2', '0', '【软硬随变】乳胶床垫Q1', '0胶水无甲醛、分层设计、软硬随变', 'Q1', '1999', 'Q1', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201702/13/201702131755545234.jpg', '2599', '2899', 'product_q1_1.html', '1');
INSERT INTO `tehui` VALUES ('3', '0', '5cm乳胶层】乳胶床垫Q2 ', '0胶水无甲醛、全物理防螨、软硬随变', 'Q2', '1999', 'Q2', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201702/13/201702131920427083.jpg', '3399', '3699', 'product_q2_1.html', '1');
INSERT INTO `tehui` VALUES ('6', '0', '乳胶弹簧床垫P1', '银离子抗菌、独立袋装、七区分布', 'P1', '999', 'P1', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201702/13/201702131921577258.jpg', '1899', '2299', 'product_p1_1.html', '1');
INSERT INTO `tehui` VALUES ('10', '0', '乳胶床垫Qse', '抗菌防螨、分层设计、软硬两睡', 'Qse', '1999', 'Qse', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201702/06/201702061542500860.png', '699', '899', '', '1');
INSERT INTO `tehui` VALUES ('21', '0', '乳胶弹簧床垫T2 双面可睡 ', '乳胶弹簧床垫T2 双面可睡 ', 'T2', '99', 'T1', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201702/13/201702131755545234.jpg', '2299', '2699', '', '1');
INSERT INTO `tehui` VALUES ('35', '0', '3D多线径乳胶弹簧床垫T5', '压力塔式双层弹簧减压系统29cm超厚优质填充', 'T5', '0', 'T5', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201802/05/201802051229254010.jpg', '3699', '4199', '', '1');
INSERT INTO `tehui` VALUES ('49', '0', '8H真皮电动休闲沙发', '8H真皮电动休闲沙发', '悠然1号', '0', '悠然1号', 'http://qushui-8h.oss-cn-beijing.aliyuncs.com/uploadfiles/201805/20/201805201119485278.png', '1899', '1999', '', '1');

-- ----------------------------
-- Table structure for userlist
-- ----------------------------
DROP TABLE IF EXISTS `userlist`;
CREATE TABLE `userlist` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `telphone` varchar(255) CHARACTER SET utf8 COLLATE utf8_romanian_ci NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `QQ` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userlist
-- ----------------------------
INSERT INTO `userlist` VALUES ('1', '12345678901', null, '123456', null, null, null);
INSERT INTO `userlist` VALUES ('2', '13571425732', null, '123456', null, null, null);
SET FOREIGN_KEY_CHECKS=1;
