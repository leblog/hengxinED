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

 Date: 25/05/2022 17:29:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hx_taste_detail
-- ----------------------------
DROP TABLE IF EXISTS `hx_taste_detail`;
CREATE TABLE `hx_taste_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '口味明细ID',
  `taste_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味名称',
  `taste_id` bigint(100) NULL DEFAULT NULL COMMENT '管理口味表ID',
  `taste_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味描述',
  `is_basic_taste` int(10) NULL DEFAULT NULL COMMENT '有基础口味（0:是，1：否）',
  `basic_taste_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基础口味名称/编号',
  `basic_taste_improvement_ideas` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基础口味改善建议',
  `capacity` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '容量',
  `vg` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'VG（待优化）',
  `nic_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NIC类别（字段长度待优化)',
  `nic_concentration` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NIC浓度',
  `nic_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NIC单位（mg/ml ， mg/g）',
  `perfumer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '调香师',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '口味申请单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hx_taste_detail
-- ----------------------------
INSERT INTO `hx_taste_detail` VALUES (1, '2', NULL, '2', 2, '2', '2', '2', '2', '0', '2', '2', '2', '2', NULL, NULL, NULL, NULL, '');

SET FOREIGN_KEY_CHECKS = 1;
