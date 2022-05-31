/*
 Navicat Premium Data Transfer

 Source Server         : 本机
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : vue

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 25/05/2022 17:29:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hx_taste
-- ----------------------------
DROP TABLE IF EXISTS `hx_taste`;
CREATE TABLE `hx_taste`  (
  `taste_id` bigint(255) NOT NULL AUTO_INCREMENT COMMENT '口味申请单ID',
  `dept_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门Id',
  `business_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务姓名',
  `business_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '业务代码',
  `customers_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户名称',
  `customers_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '客户代码',
  `taste_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '口味数量',
  `referee_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上次申请单号',
  `send_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '第几次送样',
  `is_supply` int(10) NOT NULL COMMENT '口味专供(0:是，1:否）',
  `is_try` int(10) NOT NULL COMMENT '现场试用（0:是，1：否)',
  `visit_time` datetime(0) NOT NULL COMMENT '来访日期',
  `is_smoking` int(10) NOT NULL COMMENT '自带烟具（0:是，1:否）',
  `smoking_type` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '烟具类型（0：一次性，1换弹式)',
  `heating_wire_type` int(10) NOT NULL COMMENT '发热丝类型（0:类型1，1：类型2）',
  `heating_wire_resistance` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '发热丝阻值',
  `capacity` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '烟油仓容量',
  `oil_guide_cotton_type` int(10) NOT NULL COMMENT '导游棉类型（0：类型1，1:类型2)',
  `is_recycling_smoking` int(10) NOT NULL COMMENT '是否回收烟具（0：是，1：否）',
  `oil_ring_material` int(10) NOT NULL COMMENT '油环材质类型（0：类型1, 1：类型2）',
  `vg` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'VG',
  `viscosity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '粘稠度',
  `expected_completion_time` datetime(0) NOT NULL COMMENT '期望完成时间',
  `sample_request_time` datetime(0) NULL DEFAULT NULL COMMENT '样品需求时间',
  `estimated_finish_time` datetime(0) NOT NULL COMMENT '预计完成时间',
  `match_market` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '匹配市场（待定内容）',
  `samples_num` int(100) NULL DEFAULT NULL COMMENT '样品数量（单位ml）',
  `mailing_information` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮寄信息',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`taste_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '口味申请单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hx_taste
-- ----------------------------
INSERT INTO `hx_taste` VALUES (1, '1', '2', '2', '2', '2', '2', '2', '2', 0, 0, '2022-05-03 00:00:00', 0, 0000000000, 0, '2', '2', 0, 0, 0, '2', '2', '2022-05-25 00:00:00', '2022-06-01 00:00:00', '2022-05-30 00:00:00', '2', 2, '2', '', '2022-05-25 17:27:57', '', NULL, '2');

SET FOREIGN_KEY_CHECKS = 1;
