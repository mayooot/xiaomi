/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50540
 Source Host           : localhost:3306
 Source Schema         : xiaomi

 Target Server Type    : MySQL
 Target Server Version : 50540
 File Encoding         : 65001

 Date: 05/11/2021 19:51:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for consumer
-- ----------------------------
DROP TABLE IF EXISTS `consumer`;
CREATE TABLE `consumer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待完善' COMMENT '电子邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待完善' COMMENT '联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of consumer
-- ----------------------------
INSERT INTO `consumer` VALUES (16, 'admin', 'admin', '待完善', '待完善');
INSERT INTO `consumer` VALUES (17, 'CORN', '123', '待完善', '待完善');
INSERT INTO `consumer` VALUES (18, 'CORN', '123', '待完善', '待完善');
INSERT INTO `consumer` VALUES (19, 'CORN', '123', '待完善', '待完善');
INSERT INTO `consumer` VALUES (20, 'CORN', '123', '待完善', '待完善');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `price` double NOT NULL COMMENT '商品单价',
  `stock` int(11) NULL DEFAULT 0 COMMENT '商品库存',
  `goods_type_id` int(11) NOT NULL COMMENT '商品类型',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '商品描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1, '小米CC9e', 3499, 100, 10001, '8GB+256GB');
INSERT INTO `goods` VALUES (2, '小米CC9e', 2799, 100, 10001, '6GB+256GB');
INSERT INTO `goods` VALUES (3, '小米CC9e', 3099, 100, 10001, '8GB+128GB');
INSERT INTO `goods` VALUES (4, '小米CC9 Pro', 3499, 50, 10001, '8GB+256GB');
INSERT INTO `goods` VALUES (5, '小米CC9 Pro', 2799, 100, 10001, '6GB+256GB');
INSERT INTO `goods` VALUES (6, '小米CC9 Pro', 3099, 100, 10001, '8GB+128GB');
INSERT INTO `goods` VALUES (7, '红米8', 699, 100, 10002, '4GB+128GB 5000mAh');
INSERT INTO `goods` VALUES (8, '红米8A', 699, 100, 10002, '4GB+128GB 5000mAh 31天超长续航');
INSERT INTO `goods` VALUES (9, '红米7A', 579, 100, 10002, '3GB+128GB 小巧大电量，持久又流畅');
INSERT INTO `goods` VALUES (10, '黑鲨手机2 Pro', 2999, 100, 10003, '12GB+128GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级');
INSERT INTO `goods` VALUES (11, '黑鲨手机2 Pro', 3499, 100, 10003, '12GB+256GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级');
INSERT INTO `goods` VALUES (12, '黑鲨手机2 Pro', 3999, 100, 10003, '12GB+512GB 骁龙855 Plus旗舰处理器 / 全系标配12GB大运存 / 液冷3.0+，全域液冷升级 / 电竞级屏幕压感，操作快人一步 / 独显DC调光2.0 护眼全新升级');
INSERT INTO `goods` VALUES (13, '小米电视5 75英寸', 7999, 100, 20001, '「小米电视新品火爆预约中！」全面屏设计 / 金属机身 / 4K广色域屏幕 /纤薄机身 / 内置小爱同学 / 3GB+32GB大存储 / 支持8K视频内容');
INSERT INTO `goods` VALUES (14, '小米电视5 Pro 75英寸', 9999, 100, 20002, '「小米电视新品火爆预约中！」量子点屏幕 / 全面屏设计 / 超薄金属机身 / 4GB+64GB大存储 / MEMC运动补偿 / 内置小爱同学 / 支持8K视频内容');
INSERT INTO `goods` VALUES (15, '小米全面屏电视Pro 65英寸E65S', 3399, 100, 20003, '时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容');
INSERT INTO `goods` VALUES (16, '小米全面屏电视Pro 55英寸E55S', 3499, 100, 20003, '时尚金属全面屏设计 / 搭载Amlogic T972超强悍处理器 / 4K超高清画质 细腻如真 / 支持8K视频解码 / 2G+32G超大存储 / 内置小爱同学 语音控制更方便 / 智能Patchwall汇聚海量好内容');
INSERT INTO `goods` VALUES (17, '小米笔记本 13.3', 4499, 100, 30001, '第八代四核处理器，显卡再升级');
INSERT INTO `goods` VALUES (18, '小米笔记本Air 12.5\"2019款\"', 3999, 100, 30001, '全高清屏幕 / 长续航全金属 / 超窄边框 / 像杂志一样随身携带 / 哈曼高品质扬声器');
INSERT INTO `goods` VALUES (19, '小米笔记本15.6\" 2019款 独显版', 4699, 100, 30001, '独立显卡/ 英特尔四核处理器 / 最高512G高速固态硬盘 / 独立数字键盘 / 全面均衡的国民轻薄本');
INSERT INTO `goods` VALUES (20, '小米笔记本15.6\" 2019款 集显版', 4499, 100, 30001, '高速固态硬盘 / 独立数字键盘 / 全面均衡的国民轻薄本');
INSERT INTO `goods` VALUES (21, 'Pro 15 增强版 i7 16GB', 6999, 100, 30001, '全新十代酷睿处理器 / 大满贯接口 / 100%sRGB高色域 / 全尺寸背光键盘');
INSERT INTO `goods` VALUES (22, '小米笔记本Pro 15.6\" 2019款', 5999, 100, 30001, 'NVIDIA MX250 2G独显 / 第八代Intel处理器 / PCIe 高速固态硬盘 / 72%NTSC高色域全高清屏 / 更强悍的专业笔记本');
INSERT INTO `goods` VALUES (23, 'Pro 15.6\" GTX显卡', 7499, 100, 30001, '全新第八代英特尔酷睿处理器 ／ 升级金属双风扇 ／ 带宽提升80% ／ 15.6\"全高清大屏超窄边大视野');
INSERT INTO `goods` VALUES (24, '小米游戏本15.6', 7999, 100, 30002, 'i5 8G 1T+256G 1060 6G');
INSERT INTO `goods` VALUES (25, '小米游戏本15.6', 8999, 100, 30002, '   i7 16G 512G 1060 6G	 ');
INSERT INTO `goods` VALUES (26, '小米游戏本15.6', 7999, 100, 30002, '   i5 8G 512G 1060 6G	 ');
INSERT INTO `goods` VALUES (27, '小米游戏本15.6', 6699, 100, 30002, '   i5 8G 1T+256G 1050Ti 4G ');
INSERT INTO `goods` VALUES (28, '小米游戏本15.6', 8999, 100, 30002, '   i7 16G 1T+256G 1060 6G ');

-- ----------------------------
-- Table structure for goods_cart
-- ----------------------------
DROP TABLE IF EXISTS `goods_cart`;
CREATE TABLE `goods_cart`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '购物编号',
  `goods_id` int(11) NOT NULL COMMENT '商品编号',
  `buy_count` int(11) NULL DEFAULT 1 COMMENT '购买数量',
  `add_date` datetime NULL DEFAULT NULL COMMENT '添加时间',
  `subtotal` double NULL DEFAULT NULL COMMENT '小计金额',
  `consumer_id` int(11) NOT NULL COMMENT '所属用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_cart
-- ----------------------------
INSERT INTO `goods_cart` VALUES (14, 14, 2, '2021-09-01 10:13:21', 19998, 16);
INSERT INTO `goods_cart` VALUES (15, 4, 1, '2021-09-01 10:34:38', 3499, 16);
INSERT INTO `goods_cart` VALUES (16, 10, 1, '2021-09-01 10:34:43', 2999, 16);
INSERT INTO `goods_cart` VALUES (17, 8, 1, '2021-09-01 18:59:22', 699, 16);

-- ----------------------------
-- Table structure for goods_configure
-- ----------------------------
DROP TABLE IF EXISTS `goods_configure`;
CREATE TABLE `goods_configure`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '配置编号',
  `info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置描述',
  `goods_id` int(11) NOT NULL COMMENT '所属商品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_configure
-- ----------------------------

-- ----------------------------
-- Table structure for goods_images
-- ----------------------------
DROP TABLE IF EXISTS `goods_images`;
CREATE TABLE `goods_images`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片编号',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片路径',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '小米品质' COMMENT '图片主题',
  `alt` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '小米品质' COMMENT '图片描述',
  `goods_id` int(11) NOT NULL COMMENT '所属商品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 60 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_images
-- ----------------------------
INSERT INTO `goods_images` VALUES (1, 'static/images/goodsImage/1_1.jpg', '8GB+256GB', '8GB+256GB', 1);
INSERT INTO `goods_images` VALUES (2, 'static/images/goodsImage/1_2.jpg', '8GB+256GB', '8GB+256GB', 1);
INSERT INTO `goods_images` VALUES (3, 'static/images/goodsImage/2_1.jpg', '8GB+256GB', '6GB+256GB', 2);
INSERT INTO `goods_images` VALUES (4, 'static/images/goodsImage/2_2.jpg', '8GB+256GB', '6GB+256GB', 2);
INSERT INTO `goods_images` VALUES (5, 'static/images/goodsImage/3_1.jpg', '8GB+256GB', '8GB+256GB', 3);
INSERT INTO `goods_images` VALUES (6, 'static/images/goodsImage/3_2.jpg', '8GB+256GB', '8GB+256GB', 3);
INSERT INTO `goods_images` VALUES (7, 'static/images/goodsImage/3_2.jpg', '8GB+256GB', '8GB+256GB', 3);
INSERT INTO `goods_images` VALUES (8, 'static/images/goodsImage/4_1.jpg', '小米CC9 Pro', '8GB+128GB', 4);
INSERT INTO `goods_images` VALUES (9, 'static/images/goodsImage/4_2.jpg', '小米CC9 Pro', '8GB+256GB', 4);
INSERT INTO `goods_images` VALUES (10, 'static/images/goodsImage/5_1.jpg', '小米CC9 Pro', '8GB+256GB', 5);
INSERT INTO `goods_images` VALUES (11, 'static/images/goodsImage/5_2.jpg', '小米CC9 Pro', '8GB+256GB', 5);
INSERT INTO `goods_images` VALUES (12, 'static/images/goodsImage/6_1.jpg', '小米CC9 Pro', '8GB+256GB', 6);
INSERT INTO `goods_images` VALUES (13, 'static/images/goodsImage/6_2.jpg', '小米CC9 Pro', '8GB+256GB', 6);
INSERT INTO `goods_images` VALUES (14, 'static/images/goodsImage/7_1.jpg', '8GB+256GB', '8GB+256GB', 7);
INSERT INTO `goods_images` VALUES (15, 'static/images/goodsImage/7_2.jpg', '8GB+256GB', '8GB+256GB', 7);
INSERT INTO `goods_images` VALUES (16, 'static/images/goodsImage/8_1.jpg', '8GB+256GB', '8GB+256GB', 8);
INSERT INTO `goods_images` VALUES (17, 'static/images/goodsImage/8_2.jpg', '8GB+256GB', '8GB+256GB', 8);
INSERT INTO `goods_images` VALUES (18, 'static/images/goodsImage/9_1.jpg', '红米7A', '8GB+256GB', 9);
INSERT INTO `goods_images` VALUES (19, 'static/images/goodsImage/9_2.jpg', '红米7A', '8GB+256GB', 9);
INSERT INTO `goods_images` VALUES (20, 'static/images/goodsImage/9_3.jpg', '红米7A', '8GB+256GB', 9);
INSERT INTO `goods_images` VALUES (21, 'static/images/goodsImage/9_4.jpg', '红米7A', '8GB+256GB', 9);
INSERT INTO `goods_images` VALUES (22, 'static/images/goodsImage/10_1.jpg', '黑鲨手机2 Pro', '8GB+256GB', 10);
INSERT INTO `goods_images` VALUES (23, 'static/images/goodsImage/10_2.jpg', '黑鲨手机2 Pro', '8GB+256GB', 10);
INSERT INTO `goods_images` VALUES (24, 'static/images/goodsImage/11_1.jpg', '黑鲨手机2 Pro', '8GB+256GB', 11);
INSERT INTO `goods_images` VALUES (25, 'static/images/goodsImage/11_2.jpg', '黑鲨手机2 Pro', '8GB+256GB', 11);
INSERT INTO `goods_images` VALUES (26, 'static/images/goodsImage/12_1.jpg', '黑鲨手机2 Pro', '8GB+256GB', 12);
INSERT INTO `goods_images` VALUES (27, 'static/images/goodsImage/12_2.jpg', '黑鲨手机2 Pro', '8GB+256GB', 12);
INSERT INTO `goods_images` VALUES (28, 'static/images/goodsImage/13_1.jpg', '小米电视5 75英寸', '8GB+256GB', 13);
INSERT INTO `goods_images` VALUES (29, 'static/images/goodsImage/13_2.jpg', '小米电视5 75英寸', '8GB+256GB', 13);
INSERT INTO `goods_images` VALUES (30, 'static/images/goodsImage/14_1.jpg', '小米电视5 Pro 75英寸', '8GB+256GB', 14);
INSERT INTO `goods_images` VALUES (31, 'static/images/goodsImage/14_2.jpg', '小米电视5 Pro 75英寸', '8GB+256GB', 14);
INSERT INTO `goods_images` VALUES (32, 'static/images/goodsImage/15_1.jpg', '小米全面屏电视Pro 65英寸E65S', '8GB+256GB', 15);
INSERT INTO `goods_images` VALUES (33, 'static/images/goodsImage/15_2.jpg', '小米全面屏电视Pro 65英寸E65S', '8GB+256GB', 15);
INSERT INTO `goods_images` VALUES (34, 'static/images/goodsImage/16_1.jpg', '小米全面屏电视Pro 55英寸E55S', '8GB+256GB', 16);
INSERT INTO `goods_images` VALUES (35, 'static/images/goodsImage/16_2.jpg', '小米全面屏电视Pro 55英寸E55S', '8GB+256GB', 16);
INSERT INTO `goods_images` VALUES (36, 'static/images/goodsImage/17_1.png', '小米笔记本 13.3', '8GB+256GB', 17);
INSERT INTO `goods_images` VALUES (37, 'static/images/goodsImage/17_2.png', '小米笔记本 13.3', '8GB+256GB', 17);
INSERT INTO `goods_images` VALUES (38, 'static/images/goodsImage/18_1.jpg', '小米笔记本Air 12.5\"2019款\"', '8GB+256GB', 18);
INSERT INTO `goods_images` VALUES (39, 'static/images/goodsImage/18_2.jpg', '小米笔记本Air 12.5\"2019款\"', '8GB+256GB', 18);
INSERT INTO `goods_images` VALUES (40, 'static/images/goodsImage/19_1.png', '小米笔记本15.6\" 2019款 独显版', '8GB+256GB', 19);
INSERT INTO `goods_images` VALUES (41, 'static/images/goodsImage/19_2.png', '小米笔记本15.6\" 2019款 独显版', '8GB+256GB', 19);
INSERT INTO `goods_images` VALUES (42, 'static/images/goodsImage/20_1.png', '小米笔记本15.6\" 2019款 集显版', '8GB+256GB', 20);
INSERT INTO `goods_images` VALUES (43, 'static/images/goodsImage/20_2.png', '小米笔记本15.6\" 2019款 集显版', '8GB+256GB', 20);
INSERT INTO `goods_images` VALUES (44, 'static/images/goodsImage/21_1.png', 'Pro 15 增强版 i7 16GB', '8GB+256GB', 21);
INSERT INTO `goods_images` VALUES (45, 'static/images/goodsImage/21_2.jpg', 'Pro 15 增强版 i7 16GB', '8GB+256GB', 21);
INSERT INTO `goods_images` VALUES (46, 'static/images/goodsImage/22_1.jpg', '小米笔记本Pro 15.6\" 2019款', '8GB+256GB', 22);
INSERT INTO `goods_images` VALUES (47, 'static/images/goodsImage/22_2.jpg', '小米笔记本Pro 15.6\" 2019款', '8GB+256GB', 22);
INSERT INTO `goods_images` VALUES (48, 'static/images/goodsImage/22_1.jpg', 'Pro 15.6\" GTX显卡', '8GB+256GB', 23);
INSERT INTO `goods_images` VALUES (49, 'static/images/goodsImage/23_2.jpg', 'Pro 15.6\" GTX显卡', '8GB+256GB', 23);
INSERT INTO `goods_images` VALUES (50, 'static/images/goodsImage/24_1.jpg', '小米游戏本15.6', '8GB+256GB', 24);
INSERT INTO `goods_images` VALUES (51, 'static/images/goodsImage/24_2.jpg', '小米游戏本15.6', '8GB+256GB', 24);
INSERT INTO `goods_images` VALUES (52, 'static/images/goodsImage/25_1.jpg', '小米游戏本15.6', '8GB+256GB', 25);
INSERT INTO `goods_images` VALUES (53, 'static/images/goodsImage/25_2.jpg', '小米游戏本15.6', '8GB+256GB', 25);
INSERT INTO `goods_images` VALUES (54, 'static/images/goodsImage/26_1.png', '小米游戏本15.6', '8GB+256GB', 26);
INSERT INTO `goods_images` VALUES (55, 'static/images/goodsImage/26_2.png', '小米游戏本15.6', '8GB+256GB', 26);
INSERT INTO `goods_images` VALUES (56, 'static/images/goodsImage/27_1.jpg', '小米游戏本15.6', '8GB+256GB', 27);
INSERT INTO `goods_images` VALUES (57, 'static/images/goodsImage/27_2.jpg', '小米游戏本15.6', '8GB+256GB', 27);
INSERT INTO `goods_images` VALUES (58, 'static/images/goodsImage/28_1.png', '小米游戏本15.6', '8GB+256GB', 28);
INSERT INTO `goods_images` VALUES (59, 'static/images/goodsImage/28_2.png', '小米游戏本15.6', '8GB+256GB', 28);

-- ----------------------------
-- Table structure for goods_order
-- ----------------------------
DROP TABLE IF EXISTS `goods_order`;
CREATE TABLE `goods_order`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `order_date` datetime NULL DEFAULT NULL COMMENT '下单时间',
  `consumer_id` int(11) NOT NULL COMMENT '所属用户',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '待付款' COMMENT '订单状态(待付款|已付款|已发货|已收货)',
  `goods_shipping_address_id` int(11) NOT NULL COMMENT '收货地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_order
-- ----------------------------

-- ----------------------------
-- Table structure for goods_order_item
-- ----------------------------
DROP TABLE IF EXISTS `goods_order_item`;
CREATE TABLE `goods_order_item`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订单编号',
  `goods_id` int(11) NOT NULL COMMENT '购买商品编号',
  `goods_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图片',
  `goods_price` double NOT NULL COMMENT '成交金额',
  `goods_count` int(11) NOT NULL COMMENT '成交数量',
  `goods_subtotal` double NULL DEFAULT NULL COMMENT '小计金额',
  `goods_order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属订单',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_order_item
-- ----------------------------

-- ----------------------------
-- Table structure for goods_package
-- ----------------------------
DROP TABLE IF EXISTS `goods_package`;
CREATE TABLE `goods_package`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '套餐编号',
  `info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '套餐描述',
  `goods_id` int(11) NOT NULL COMMENT '所属商品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_package
-- ----------------------------

-- ----------------------------
-- Table structure for goods_service
-- ----------------------------
DROP TABLE IF EXISTS `goods_service`;
CREATE TABLE `goods_service`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务编号',
  `info` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务描述',
  `goods_id` int(11) NOT NULL COMMENT '所属商品',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_service
-- ----------------------------

-- ----------------------------
-- Table structure for goods_shipping_address
-- ----------------------------
DROP TABLE IF EXISTS `goods_shipping_address`;
CREATE TABLE `goods_shipping_address`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址编号',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人姓名',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人联系方式',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人电子邮箱',
  `province` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省区',
  `city` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '市区',
  `country` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '县区',
  `street` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '街道',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `consumer_id` int(11) NOT NULL COMMENT '所属用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_shipping_address
-- ----------------------------

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品类型编号',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型名称',
  `pid` int(11) NULL DEFAULT NULL COMMENT '上级类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30003 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (101, '手机电话', NULL);
INSERT INTO `goods_type` VALUES (102, '电视盒子', NULL);
INSERT INTO `goods_type` VALUES (103, '笔记本 平板', NULL);
INSERT INTO `goods_type` VALUES (104, '家电 插线板', NULL);
INSERT INTO `goods_type` VALUES (105, '出行 穿戴', NULL);
INSERT INTO `goods_type` VALUES (106, '智能 路由器', NULL);
INSERT INTO `goods_type` VALUES (107, '电源 配件', NULL);
INSERT INTO `goods_type` VALUES (108, '健康 儿童', NULL);
INSERT INTO `goods_type` VALUES (109, '耳机 音箱', NULL);
INSERT INTO `goods_type` VALUES (110, '生活 箱包', NULL);
INSERT INTO `goods_type` VALUES (10001, '小米CC', 101);
INSERT INTO `goods_type` VALUES (10002, 'RedMi Note', 101);
INSERT INTO `goods_type` VALUES (10003, '黑鲨手机', 101);
INSERT INTO `goods_type` VALUES (20001, '小米电视4A', 102);
INSERT INTO `goods_type` VALUES (20002, '小米电视Pro', 102);
INSERT INTO `goods_type` VALUES (20003, '全面屏电视', 102);
INSERT INTO `goods_type` VALUES (30001, '小米笔记本', 103);
INSERT INTO `goods_type` VALUES (30002, '小米游戏本', 103);

SET FOREIGN_KEY_CHECKS = 1;
