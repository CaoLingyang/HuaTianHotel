/*
 Navicat Premium Data Transfer

 Source Server         : HuaTianHotel
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : hotel

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 19/12/2019 10:43:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `roomid` int(11) NULL DEFAULT NULL,
  `roomname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `message` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roomid`(`roomid`) USING BTREE,
  CONSTRAINT `administrator_ibfk_1` FOREIGN KEY (`roomid`) REFERENCES `room` (`roomid`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES (1, 'One', '12839273182', '湖南怀化', 'cao111', 'cly111', '人事部老大', 1, '人事部', NULL);
INSERT INTO `administrator` VALUES (2, 'Two', '13245123213', '广东广州', 'cao222', 'cly222', '保安部老大', 2, '保安部', NULL);
INSERT INTO `administrator` VALUES (3, 'Three', '13198371743', '湖南永州', 'cao333', 'cly333', '采购部老大', 2, '采购部', NULL);
INSERT INTO `administrator` VALUES (4, 'Four', '13298372162', '湖南长沙', 'cao444', 'cly444', '客房部老大', 5, '客房部', NULL);
INSERT INTO `administrator` VALUES (5, 'Five', '13928391294', '江西吉安', 'cao555', 'cly555', '前厅部老大', 5, '前厅部', NULL);
INSERT INTO `administrator` VALUES (6, 'Six', '13928363812', '北京朝阳', 'cao666', 'cly666', '财务部老大', 3, '财务部', NULL);
INSERT INTO `administrator` VALUES (7, 'Seven', '13921238792', '广西柳州', 'cao777', 'cly777', '总老大', 1, '全部', NULL);

-- ----------------------------
-- Table structure for customers_to_check_in
-- ----------------------------
DROP TABLE IF EXISTS `customers_to_check_in`;
CREATE TABLE `customers_to_check_in`  (
  `cname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idCard` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `checkDate` date NULL DEFAULT NULL,
  `roomId` int(11) NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roomid`(`roomId`) USING BTREE,
  CONSTRAINT `customers_to_check_in_ibfk_1` FOREIGN KEY (`roomId`) REFERENCES `room` (`roomid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customers_to_check_in
-- ----------------------------
INSERT INTO `customers_to_check_in` VALUES ('周杰', '123372374312', '江西吉安市', '4302831293827381273', '2019-12-25', 5, 1);
INSERT INTO `customers_to_check_in` VALUES ('廖龙', '13289323352', '湖南省衡阳市', '4302124425234612814', '2019-09-04', 2, 2);
INSERT INTO `customers_to_check_in` VALUES ('温顺豪', '13281353312', '广东省河源市', '4302427428234012114', '2019-08-03', 3, 3);
INSERT INTO `customers_to_check_in` VALUES ('韦发贵', '13289175322', '广西省柳州市', '4302124426232212119', '2019-08-08', 4, 4);

-- ----------------------------
-- Table structure for employeeinfo
-- ----------------------------
DROP TABLE IF EXISTS `employeeinfo`;
CREATE TABLE `employeeinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `IdNumber` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `MaritalStatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Nation` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `NativePlace` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PoliticsStatus` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Department` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Jodlevelid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `PositionDate` date NULL DEFAULT NULL,
  `school` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `deptid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `deptid`(`deptid`) USING BTREE,
  CONSTRAINT `employeeinfo_ibfk_1` FOREIGN KEY (`deptid`) REFERENCES `role` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employeeinfo
-- ----------------------------
INSERT INTO `employeeinfo` VALUES (1, '张三', '男', '1999-07-15', '4302739472947317264', '未婚', '汉', '湖南', '共产党员', '2582937482831@qq.com', '12341234212', '湖南永州', '人事部', '人事部小张', '部长', '2017-12-02', '南方IT', 2);
INSERT INTO `employeeinfo` VALUES (2, '李四', '男', '1997-04-24', '4302134123147581235', '已婚', '汉', '广东', '无', '18263748123@qq.com', '18473264171', '广东广州', '客房部', '客房部小李', '普通员工', '2018-03-02', '南方IT', 4);
INSERT INTO `employeeinfo` VALUES (3, '王五', '女', '1994-04-02', '3461728361837261', '未婚', '汉', '江西', '共产党员', '19283647152@qq.com', '18293812731', '江西吉安', '前厅部', '前厅部小王', '部长', '2016-01-09', '南方IT', 2);
INSERT INTO `employeeinfo` VALUES (4, '吴六', '男', '1996-06-01', '3123857481928374', '已婚', '汉', '广西', '无', '27182938191@qq.com', '18273617381', '广西柳州', '财务部', '财务部小吴', '普通员工', '2016-09-01', '南方IT', 3);
INSERT INTO `employeeinfo` VALUES (5, '周七', '女', '1995-07-05', '4839293737128313', '未婚', '汉', '北京', '无', '2912913912@qq.com', '17283827121', '北京朝阳', '采购部', '采购部小周', '员工', '2013-02-06', '南方IT', 4);
INSERT INTO `employeeinfo` VALUES (6, '杨八', '男', '1996-01-02', '4382197628173617', '未婚', '汉', '江西', '共产党员', '2819283912@qq.com', '17263728121', '江西吉安', '保安部', '保安部小杨', '员工', '2019-12-03', '南方IT', 5);
INSERT INTO `employeeinfo` VALUES (76, 'aaa', 'nan', '2019-01-04', 'aaa', NULL, 'aaa', 'aaa', 'aaa', '2563875559@qq.com', '13250748614', 'ç½èéç½èåè·¯åæ¹IT', 'aaa', 'aaa', 'aaa', '2019-01-04', 'aaa', NULL);
INSERT INTO `employeeinfo` VALUES (81, 'aaa', 'nan', '2019-01-04', 'aaa', NULL, 'æ±', 'æ¹åè¡¡é³', 'aaa', '2563875559@qq.com', '13250748614', 'æé¨åºç½èéç½èåè·¯åæ¹IT', 'æªç¥', 'æªç¥', 'æªç¥', '2019-01-04', 'aaa', NULL);

-- ----------------------------
-- Table structure for hotelannouncement
-- ----------------------------
DROP TABLE IF EXISTS `hotelannouncement`;
CREATE TABLE `hotelannouncement`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `headline` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `promulgator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `desiginer` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `releasetime` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotelannouncement
-- ----------------------------
INSERT INTO `hotelannouncement` VALUES (1, 'aaaa', '加油', '华天酒店', '小天', '2019-01-02');
INSERT INTO `hotelannouncement` VALUES (2, 'bbbb', '努力', '华天酒店', '小华', '2019-02-01');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `creation_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, '管理员', '2019-01-04');
INSERT INTO `role` VALUES (2, '部门部长', '2019-03-09');
INSERT INTO `role` VALUES (3, '主管', '2019-01-06');
INSERT INTO `role` VALUES (4, '大堂经理', '2019-03-01');
INSERT INTO `role` VALUES (5, '普通员工', '2019-01-04');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `roomid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `money` decimal(11, 0) NOT NULL,
  `remark` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `restroom` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`roomid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, '单人间', 368, '单人房间（日）', 10);
INSERT INTO `room` VALUES (2, '豪华双间', 368, '豪华双间（日）', 10);
INSERT INTO `room` VALUES (3, '商务双间', 398, '商务双间（日）', 10);
INSERT INTO `room` VALUES (4, '商务单间', 198, '商务单间（日）', 10);
INSERT INTO `room` VALUES (5, '行政套房', 688, '行政套房（日）', 5);

SET FOREIGN_KEY_CHECKS = 1;
