/*
 Navicat Premium Data Transfer

 Source Server         : 哥斯拉不说话
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : project

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 14/07/2019 16:13:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `student_phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `server_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_money` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_way` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_phone`, `server_id`) USING BTREE,
  INDEX `fk4_server_id`(`server_id`) USING BTREE,
  CONSTRAINT `fk3_student_phone` FOREIGN KEY (`student_phone`) REFERENCES `student` (`student_phone`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk4_server_id` FOREIGN KEY (`server_id`) REFERENCES `server` (`server_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('15732651140', '001', '001', '27', '饿了么');
INSERT INTO `book` VALUES ('15732651141', '002', '002', '34', '美团');
INSERT INTO `book` VALUES ('15732651142', '003', '003', '15', '大众点评');
INSERT INTO `book` VALUES ('15732651143', '004', '004', '11', '美团');
INSERT INTO `book` VALUES ('15732651144', '005', '005', '21', '大众点评');
INSERT INTO `book` VALUES ('15732651145', '006', '006', '56', '饿了么');
INSERT INTO `book` VALUES ('15732651146', '007', '007', '304', '大众点评');
INSERT INTO `book` VALUES ('15732651147', '008', '008', '16', '饿了么');
INSERT INTO `book` VALUES ('15732651148', '009', '009', '18', '美团');
INSERT INTO `book` VALUES ('15732651149', '010', '010', '23', '百度外卖');
INSERT INTO `book` VALUES ('15732651150', '011', '011', '44', '百度外卖');
INSERT INTO `book` VALUES ('15732651151', '012', '012', '32', '饿了么');
INSERT INTO `book` VALUES ('15732651152', '013', '013', '16', '滴滴外卖');
INSERT INTO `book` VALUES ('15732651153', '014', '014', '19', '饿了么');
INSERT INTO `book` VALUES ('15732651154', '015', '015', '22', '饿了么');
INSERT INTO `book` VALUES ('15732651155', '016', '016', '25', '美团');
INSERT INTO `book` VALUES ('15732651156', '017', '017', '36', '滴滴外卖');
INSERT INTO `book` VALUES ('15732651157', '018', '018', '23', '支付宝');
INSERT INTO `book` VALUES ('15732651158', '019', '019', '16', '大众点评');
INSERT INTO `book` VALUES ('15732651159', '020', '020', '12', '微信');
INSERT INTO `book` VALUES ('15732651160', '021', '021', '17', '饿了么');

-- ----------------------------
-- Table structure for courier
-- ----------------------------
DROP TABLE IF EXISTS `courier`;
CREATE TABLE `courier`  (
  `courier_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courier_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courier_phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `foodshop_shop_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`courier_id`) USING BTREE,
  INDEX `fk2_shop_name`(`foodshop_shop_name`) USING BTREE,
  CONSTRAINT `fk2_shop_name` FOREIGN KEY (`foodshop_shop_name`) REFERENCES `foodshop` (`shop_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courier
-- ----------------------------
INSERT INTO `courier` VALUES ('001', '张三', '13566726345', '周黑鸭');
INSERT INTO `courier` VALUES ('002', '李四', '13423222526', '周黑鸭');
INSERT INTO `courier` VALUES ('003', '李天一', '13423220000', '周黑鸭');
INSERT INTO `courier` VALUES ('004', '李海峰', '18867803445', '华莱士');
INSERT INTO `courier` VALUES ('005', '方敏', '18867803477', '华莱士');
INSERT INTO `courier` VALUES ('006', '张三分', '16654213320', '一点点');
INSERT INTO `courier` VALUES ('007', '何瑞斌', '15733433211', '一点点');
INSERT INTO `courier` VALUES ('008', '米柳飞', '17745600876', '小笼包');
INSERT INTO `courier` VALUES ('009', '赵恩超', '15567203450', '张亮麻辣烫');
INSERT INTO `courier` VALUES ('010', '于晓虎', '17890908800', '张亮麻辣烫');
INSERT INTO `courier` VALUES ('011', '孙琦皓', '16678909090', '张亮麻辣烫');
INSERT INTO `courier` VALUES ('012', '陈天', '17765454040', '德克士');
INSERT INTO `courier` VALUES ('013', '胡海平', '12355646888', '德克士');
INSERT INTO `courier` VALUES ('014', '刘户籍', '15567309090', '星巴克');
INSERT INTO `courier` VALUES ('015', '周一胡', '17790908751', '星巴克');
INSERT INTO `courier` VALUES ('016', '倪洁洲', '18898989045', '星巴克');
INSERT INTO `courier` VALUES ('017', '席龙伟', '15678784744', '百果园');
INSERT INTO `courier` VALUES ('018', '袁浩', '15545456764', '百果园');
INSERT INTO `courier` VALUES ('019', '郑源', '16656568909', '百果园');
INSERT INTO `courier` VALUES ('020', '唐明皇', '12234445670', '过桥米线');
INSERT INTO `courier` VALUES ('021', '杨幂', '19908087652', '过桥米线');

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery`  (
  `student_phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courier_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `deliver_time` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`student_phone`, `courier_id`) USING BTREE,
  INDEX `fk6_courier_id`(`courier_id`) USING BTREE,
  CONSTRAINT `fk5_student_phone` FOREIGN KEY (`student_phone`) REFERENCES `student` (`student_phone`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk6_courier_id` FOREIGN KEY (`courier_id`) REFERENCES `courier` (`courier_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery
-- ----------------------------
INSERT INTO `delivery` VALUES ('15732651140', '001', '35');
INSERT INTO `delivery` VALUES ('15732651141', '002', '22');
INSERT INTO `delivery` VALUES ('15732651142', '003', '11');
INSERT INTO `delivery` VALUES ('15732651143', '004', '23');
INSERT INTO `delivery` VALUES ('15732651144', '005', '24');
INSERT INTO `delivery` VALUES ('15732651145', '006', '26');
INSERT INTO `delivery` VALUES ('15732651146', '007', '77');
INSERT INTO `delivery` VALUES ('15732651147', '008', '54');
INSERT INTO `delivery` VALUES ('15732651148', '009', '36');
INSERT INTO `delivery` VALUES ('15732651149', '010', '78');
INSERT INTO `delivery` VALUES ('15732651150', '011', '60');
INSERT INTO `delivery` VALUES ('15732651151', '012', '33');
INSERT INTO `delivery` VALUES ('15732651152', '013', '23');
INSERT INTO `delivery` VALUES ('15732651153', '014', '27');
INSERT INTO `delivery` VALUES ('15732651154', '015', '16');
INSERT INTO `delivery` VALUES ('15732651155', '016', '16');
INSERT INTO `delivery` VALUES ('15732651156', '017', '12');
INSERT INTO `delivery` VALUES ('15732651157', '018', '25');
INSERT INTO `delivery` VALUES ('15732651158', '019', '22');
INSERT INTO `delivery` VALUES ('15732651159', '020', '36');
INSERT INTO `delivery` VALUES ('15732651160', '021', '38');

-- ----------------------------
-- Table structure for foodshop
-- ----------------------------
DROP TABLE IF EXISTS `foodshop`;
CREATE TABLE `foodshop`  (
  `shop_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salenum` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`shop_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of foodshop
-- ----------------------------
INSERT INTO `foodshop` VALUES ('一点点', '2256');
INSERT INTO `foodshop` VALUES ('华莱士', '2245');
INSERT INTO `foodshop` VALUES ('周黑鸭', '440');
INSERT INTO `foodshop` VALUES ('小笼包', '4442');
INSERT INTO `foodshop` VALUES ('张亮麻辣烫', '665');
INSERT INTO `foodshop` VALUES ('德克士', '1890');
INSERT INTO `foodshop` VALUES ('星巴克', '3332');
INSERT INTO `foodshop` VALUES ('百果园', '2210');
INSERT INTO `foodshop` VALUES ('过桥米线', '3348');

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server`  (
  `server_id` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `server_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `foodshop_shop_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`server_id`) USING BTREE,
  INDEX `fk_shop_name`(`foodshop_shop_name`) USING BTREE,
  CONSTRAINT `fk_shop_name` FOREIGN KEY (`foodshop_shop_name`) REFERENCES `foodshop` (`shop_name`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of server
-- ----------------------------
INSERT INTO `server` VALUES ('001', '刘海', '一点点');
INSERT INTO `server` VALUES ('002', '刘吉吉', '一点点');
INSERT INTO `server` VALUES ('003', '刘默', '一点点');
INSERT INTO `server` VALUES ('004', '贺狗贼', '华莱士');
INSERT INTO `server` VALUES ('005', '张亮', '华莱士');
INSERT INTO `server` VALUES ('006', '张宇', '华莱士');
INSERT INTO `server` VALUES ('007', '张提德尔', '华莱士');
INSERT INTO `server` VALUES ('008', '赵云', '周黑鸭');
INSERT INTO `server` VALUES ('009', '吴青峰', '小笼包');
INSERT INTO `server` VALUES ('010', '谢丽', '小笼包');
INSERT INTO `server` VALUES ('011', '谢贤', '小笼包');
INSERT INTO `server` VALUES ('012', '薛涵', '小笼包');
INSERT INTO `server` VALUES ('013', '沈洁', '小笼包');
INSERT INTO `server` VALUES ('014', '陈燕', '张亮麻辣烫');
INSERT INTO `server` VALUES ('015', '陈毅', '张亮麻辣烫');
INSERT INTO `server` VALUES ('016', '卢明华', '德克士');
INSERT INTO `server` VALUES ('017', '陆明华', '德克士');
INSERT INTO `server` VALUES ('018', '明彩', '德克士');
INSERT INTO `server` VALUES ('019', '程善', '星巴克');
INSERT INTO `server` VALUES ('020', '程堰', '百果园');
INSERT INTO `server` VALUES ('021', '薛彤', '百果园');
INSERT INTO `server` VALUES ('022', '雷东波', '百果园');
INSERT INTO `server` VALUES ('023', '陆离', '百果园');
INSERT INTO `server` VALUES ('024', '周泰', '过桥米线');
INSERT INTO `server` VALUES ('025', '水寒京', '过桥米线');
INSERT INTO `server` VALUES ('026', '包一彤', '过桥米线');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `student_phone` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `student_dorm` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`student_phone`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('15732651140', '严大哥', '326');
INSERT INTO `student` VALUES ('15732651141', '严二哥', '326');
INSERT INTO `student` VALUES ('15732651142', '严三哥', '326');
INSERT INTO `student` VALUES ('15732651143', '严四哥', '326');
INSERT INTO `student` VALUES ('15732651144', '严五哥', '326');
INSERT INTO `student` VALUES ('15732651145', '严六哥', '326');
INSERT INTO `student` VALUES ('15732651146', '和瑞宝', '326');
INSERT INTO `student` VALUES ('15732651147', '严七哥', '326');
INSERT INTO `student` VALUES ('15732651148', '李天一', '325');
INSERT INTO `student` VALUES ('15732651149', '李珏挖', '323');
INSERT INTO `student` VALUES ('15732651150', '张朝龙', '333');
INSERT INTO `student` VALUES ('15732651151', '黄雨涵', '322');
INSERT INTO `student` VALUES ('15732651152', '刘玉峰', '321');
INSERT INTO `student` VALUES ('15732651153', '米恩图', '320');
INSERT INTO `student` VALUES ('15732651154', '于小雅', '223');
INSERT INTO `student` VALUES ('15732651155', '张家辉', '366');
INSERT INTO `student` VALUES ('15732651156', '包丕静', '455');
INSERT INTO `student` VALUES ('15732651157', '韩愈', '321');
INSERT INTO `student` VALUES ('15732651158', '冼星海', '314');
INSERT INTO `student` VALUES ('15732651159', '亚索', '466');
INSERT INTO `student` VALUES ('15732651160', '亚瑟', '360');

SET FOREIGN_KEY_CHECKS = 1;
