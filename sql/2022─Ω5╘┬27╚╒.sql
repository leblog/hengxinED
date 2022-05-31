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

 Date: 27/05/2022 18:58:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'hx_taste', '口味申请单', 'hx_taste_detail', 'taste_id', 'HxTaste', 'sub', 'com.ruoyi.system', 'system', 'taste', '口味申请单', 'lusifer', '0', '/', '{\"parentMenuId\":\"1\"}', 'admin', '2022-05-25 10:32:46', '', '2022-05-25 17:22:21', NULL);
INSERT INTO `gen_table` VALUES (2, 'hx_taste_detail', '口味申请单明细表', NULL, NULL, 'HxTasteDetail', 'crud', 'com.ruoyi.system', 'system', 'detail', '口味申请单明细', 'ruoyi', '0', '/', NULL, 'admin', '2022-05-25 10:32:46', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'taste_id', '口味申请单ID', 'varchar(255)', 'Long', 'tasteId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 1, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (2, '1', 'dept_id', '部门Id', 'varchar(255)', 'String', 'deptId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (3, '1', 'business_name', '业务姓名', 'varchar(255)', 'String', 'businessName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (4, '1', 'business_code', '业务代码', 'varchar(255)', 'String', 'businessCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (5, '1', 'customers_name', '客户名称', 'varchar(255)', 'String', 'customersName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (6, '1', 'customers_code', '客户代码', 'varchar(255)', 'String', 'customersCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (7, '1', 'taste_num', '口味数量', 'varchar(255)', 'String', 'tasteNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (8, '1', 'referee_num', '上次申请单号', 'varchar(255)', 'String', 'refereeNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (9, '1', 'send_num', '第几次送样', 'varchar(255)', 'String', 'sendNum', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:21');
INSERT INTO `gen_table_column` VALUES (10, '1', 'is_supply', '口味专供', 'int(10)', 'Integer', 'isSupply', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (11, '1', 'is_try', '现场试用', 'int(10)', 'Integer', 'isTry', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (12, '1', 'visit_time', '来访日期', 'datetime', 'Date', 'visitTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 12, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (14, '1', 'smoking_type', '烟具类型', 'int(10)', 'Integer', 'smokingType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (16, '1', 'heating_wire_resistance', '发热丝阻值', 'varchar(20)', 'String', 'heatingWireResistance', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (17, '1', 'capacity', '烟油仓容量', 'varchar(20)', 'String', 'capacity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (19, '1', 'is_recycling_smoking', '是否回收烟具', 'int(10)', 'Integer', 'isRecyclingSmoking', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (20, '1', 'oil_ring_material', '油环材质类型', 'int(10)', 'Integer', 'oilRingMaterial', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (21, '1', 'vg', 'VG', 'varchar(50)', 'String', 'vg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (22, '1', 'viscosity', '粘稠度', 'varchar(50)', 'String', 'viscosity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (23, '1', 'expected_completion_time', '期望完成时间', 'datetime', 'Date', 'expectedCompletionTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 23, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (24, '1', 'sample_request_time', '样品需求时间', 'datetime', 'Date', 'sampleRequestTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 24, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (25, '1', 'estimated_finish_time', '预计完成时间', 'datetime', 'Date', 'estimatedFinishTime', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 25, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (26, '1', 'match_market', '匹配市场', 'varchar(255)', 'String', 'matchMarket', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (27, '1', 'samples_num', '样品数量', 'int(100)', 'Long', 'samplesNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (28, '1', 'mailing_information', '邮寄信息', 'varchar(1000)', 'String', 'mailingInformation', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 28, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (29, '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 29, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (30, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', NULL, 30, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (31, '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', NULL, 31, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (32, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', NULL, 32, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (33, '1', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 33, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (34, '2', 'id', '口味明细ID', 'int(11)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 1, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (35, '2', 'taste_name', '口味名称', 'varchar(50)', 'String', 'tasteName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (36, '2', 'taste_id', '管理口味表ID', 'varchar(255)', 'Long', 'tasteId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (37, '2', 'taste_detail', '口味描述', 'varchar(255)', 'String', 'tasteDetail', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (38, '2', 'is_basic_taste', '有基础口味（0:是，1：否）', 'int(10)', 'Integer', 'isBasicTaste', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (39, '2', 'basic_taste_name', '基础口味名称/编号', 'varchar(255)', 'String', 'basicTasteName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 6, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (40, '2', 'basic_taste_improvement_ideas', '基础口味改善建议', 'varchar(255)', 'String', 'basicTasteImprovementIdeas', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (41, '2', 'capacity', '容量', 'varchar(100)', 'String', 'capacity', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (42, '2', 'vg', 'VG（待优化）', 'varchar(100)', 'String', 'vg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (43, '2', 'nic_type', 'NIC类别（字段长度待优化)', 'varchar(100)', 'String', 'nicType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 10, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (44, '2', 'nic_concentration', 'NIC浓度', 'varchar(100)', 'String', 'nicConcentration', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (45, '2', 'nic_unit', 'NIC单位（mg/ml ， mg/g）', 'varchar(255)', 'String', 'nicUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (46, '2', 'perfumer', '调香师', 'varchar(255)', 'String', 'perfumer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (47, '2', 'version', '版本', 'varchar(255)', 'String', 'version', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (48, '2', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', NULL, 15, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (49, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', NULL, 16, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (50, '2', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', NULL, 17, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (51, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', NULL, 18, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (52, '2', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 19, 'admin', '2022-05-25 10:32:46', NULL, '2022-05-25 17:21:40');
INSERT INTO `gen_table_column` VALUES (53, '1', 'is_smoking', '自带烟具', 'int(10)', 'Integer', 'isSmoking', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 13, '', '2022-05-25 17:21:37', '', '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (54, '1', 'heating_wire_type', '发热丝类型', 'int(10)', 'Integer', 'heatingWireType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 15, '', '2022-05-25 17:21:37', '', '2022-05-25 17:22:22');
INSERT INTO `gen_table_column` VALUES (55, '1', 'oil_guide_cotton_type', '导游棉类型', 'int(10)', 'Integer', 'oilGuideCottonType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 18, '', '2022-05-25 17:21:37', '', '2022-05-25 17:22:22');

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '口味申请单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hx_taste
-- ----------------------------
INSERT INTO `hx_taste` VALUES (1, '1', '2', '2', '2', '2', '2', '2', '2', 0, 0, '2022-05-03 00:00:00', 0, 0000000000, 0, '2', '2', 0, 0, 0, '2', '2', '2022-05-25 00:00:00', '2022-06-01 00:00:00', '2022-05-30 00:00:00', '2', 2, '2', '', '2022-05-25 17:27:57', '', NULL, '2');
INSERT INTO `hx_taste` VALUES (2, '1', '1', '1', '1', '1', '1', '1', '1', 0, 0, '2022-05-26 00:00:00', 0, 0000000000, 0, '1', '1', 1, 0, 0, '234', '1', '2022-05-26 00:00:00', NULL, '2022-05-26 00:00:00', '1', 1, '11', '', '2022-05-26 11:21:28', '', '2022-05-26 11:21:45', '1');
INSERT INTO `hx_taste` VALUES (3, '1', '2', '2', '2', '2', '2', '2', '2', 0, 0, '2022-05-26 00:00:00', 0, 0000000000, 0, '2', '2', 0, 0, 0, NULL, '2', '2022-05-26 00:00:00', '2022-05-26 00:00:00', '2022-05-26 00:00:00', '2', 2, '2', '', '2022-05-26 12:20:38', '', NULL, '1\n2\n3');

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
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '口味申请单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hx_taste_detail
-- ----------------------------
INSERT INTO `hx_taste_detail` VALUES (1, '2', NULL, '2', 2, '2', '2', '2', '2', '0', '2', '2', '2', '2', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (2, '1', NULL, '1', 1, '1', '1', '1', '1', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (3, '', NULL, '', NULL, '', '', '', '', '1', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (4, '', NULL, '', NULL, '', '', '', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (5, '', NULL, '', NULL, '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (6, '', NULL, '', NULL, '', '', '', '', '0', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (7, '1', NULL, '1', 1, '1', '1', '1', '1', '0', '1', '1', '1', '1', NULL, NULL, NULL, NULL, '1');
INSERT INTO `hx_taste_detail` VALUES (8, '2', NULL, '2', 2, '2', '2', '2', '2', '0', '2', '2', '2', '2', NULL, NULL, NULL, NULL, '2');
INSERT INTO `hx_taste_detail` VALUES (9, '3', NULL, '3', 3, '3', '3', '3', '3', '', '3', '3', '3', '3', NULL, NULL, NULL, NULL, '3');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-05-24 17:11:23', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-05-24 17:11:23', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2022-05-24 17:11:23', 'admin', '2022-05-25 12:27:27', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'false', 'Y', 'admin', '2022-05-24 17:11:23', 'admin', '2022-05-26 13:09:06', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-05-24 17:11:23', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '天眼科技', 0, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, 'lusi', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '类型1', '0', 'hx_common_type', NULL, 'default', 'N', '0', 'admin', '2022-05-25 10:35:51', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 0, '类型2', '1', 'hx_common_type', NULL, 'default', 'N', '0', 'admin', '2022-05-25 10:36:10', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (102, 0, '是', '0', 'hx_common_is', NULL, 'default', 'N', '0', 'admin', '2022-05-25 10:37:33', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 0, '否', '1', 'hx_common_is', NULL, 'default', 'N', '0', 'admin', '2022-05-25 10:37:41', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '恒信通用类型', 'hx_common_type', '0', 'admin', '2022-05-25 10:35:18', '', NULL, '恒信通用类型:  \n0：类型1\n1: 类型2');
INSERT INTO `sys_dict_type` VALUES (101, '恒信通用是否', 'hx_common_is', '0', 'admin', '2022-05-25 10:37:23', '', NULL, '恒信通用判断\n0: 是\n1：否');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2022-05-24 17:11:23', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 154 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-24 18:46:17');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 10:32:28');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 11:20:38');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 11:52:36');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-05-25 12:27:47');
INSERT INTO `sys_logininfor` VALUES (105, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：test 不存在', '2022-05-25 12:27:59');
INSERT INTO `sys_logininfor` VALUES (106, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：test 不存在', '2022-05-25 12:28:32');
INSERT INTO `sys_logininfor` VALUES (107, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 12:29:16');
INSERT INTO `sys_logininfor` VALUES (108, 'test', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 12:35:32');
INSERT INTO `sys_logininfor` VALUES (109, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 12:37:42');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '10.10.7.161', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2022-05-25 13:32:21');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 14:04:02');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-25 14:29:18');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 14:29:21');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 14:33:58');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 14:43:01');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-25 14:43:09');
INSERT INTO `sys_logininfor` VALUES (117, 'test', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 14:43:18');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 15:06:39');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-25 15:06:44');
INSERT INTO `sys_logininfor` VALUES (120, 'test', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 15:06:53');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 16:25:16');
INSERT INTO `sys_logininfor` VALUES (122, 'test', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 17:09:42');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 17:21:30');
INSERT INTO `sys_logininfor` VALUES (124, 'test', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 18:12:44');
INSERT INTO `sys_logininfor` VALUES (125, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-25 18:42:34');
INSERT INTO `sys_logininfor` VALUES (126, 'test', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 09:48:56');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2022-05-26 09:49:50');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 09:49:54');
INSERT INTO `sys_logininfor` VALUES (129, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 10:12:22');
INSERT INTO `sys_logininfor` VALUES (130, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 10:13:03');
INSERT INTO `sys_logininfor` VALUES (131, 'test', '10.10.7.212', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 12:23:33');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 13:08:43');
INSERT INTO `sys_logininfor` VALUES (133, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 13:09:17');
INSERT INTO `sys_logininfor` VALUES (134, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-26 13:09:30');
INSERT INTO `sys_logininfor` VALUES (135, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 13:09:33');
INSERT INTO `sys_logininfor` VALUES (136, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-26 13:13:08');
INSERT INTO `sys_logininfor` VALUES (137, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 13:13:09');
INSERT INTO `sys_logininfor` VALUES (138, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 13:54:10');
INSERT INTO `sys_logininfor` VALUES (139, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-26 13:54:43');
INSERT INTO `sys_logininfor` VALUES (140, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 13:54:44');
INSERT INTO `sys_logininfor` VALUES (141, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 14:06:33');
INSERT INTO `sys_logininfor` VALUES (142, 'test', '10.10.7.212', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 14:26:09');
INSERT INTO `sys_logininfor` VALUES (143, 'test', '10.10.7.212', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 16:38:00');
INSERT INTO `sys_logininfor` VALUES (144, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-26 16:56:39');
INSERT INTO `sys_logininfor` VALUES (145, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 16:59:01');
INSERT INTO `sys_logininfor` VALUES (146, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 18:58:03');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-26 19:03:50');
INSERT INTO `sys_logininfor` VALUES (148, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-27 09:50:30');
INSERT INTO `sys_logininfor` VALUES (149, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-27 09:55:26');
INSERT INTO `sys_logininfor` VALUES (150, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-27 12:25:40');
INSERT INTO `sys_logininfor` VALUES (151, 'test', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2022-05-27 13:34:32');
INSERT INTO `sys_logininfor` VALUES (152, 'test', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-27 14:07:37');
INSERT INTO `sys_logininfor` VALUES (153, 'test', '10.10.7.133', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-27 16:40:06');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2006 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-05-24 17:11:23', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2022-05-24 17:11:23', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2022-05-24 17:11:23', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '百度', 0, 4, 'http://baidu.com', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-05-24 17:11:23', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-05-24 17:11:23', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-05-24 17:11:23', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-05-24 17:11:23', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-05-24 17:11:23', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-05-24 17:11:23', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2022-05-24 17:11:23', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2022-05-24 17:11:23', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2022-05-24 17:11:23', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-05-24 17:11:23', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2022-05-24 17:11:23', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-05-24 17:11:23', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-05-24 17:11:23', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-05-24 17:11:23', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-05-24 17:11:23', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-05-24 17:11:23', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2022-05-24 17:11:23', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2022-05-24 17:11:23', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2022-05-24 17:11:23', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '口味申请单', 3, 1, 'taste', 'system/taste/index', NULL, 1, 0, 'C', '0', '0', 'system:taste:list', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '口味申请单菜单');
INSERT INTO `sys_menu` VALUES (2001, '口味申请单查询', 2000, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:taste:query', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '口味申请单新增', 2000, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:taste:add', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '口味申请单修改', 2000, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:taste:edit', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '口味申请单删除', 2000, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:taste:remove', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '口味申请单导出', 2000, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'system:taste:export', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 172 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'hx_taste,hx_taste_detail', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:32:46');
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-05-25 10:32:52');
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-05-25 10:32:53');
INSERT INTO `sys_oper_log` VALUES (103, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"恒信通用类型\",\"remark\":\"恒信通用类型:  \\n0：类型1\\n1: 类型2\",\"params\":{},\"dictType\":\"hx_common_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:35:18');
INSERT INTO `sys_oper_log` VALUES (104, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":0,\"params\":{},\"dictType\":\"hx_common_type\",\"dictLabel\":\"类型1\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:35:51');
INSERT INTO `sys_oper_log` VALUES (105, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":0,\"params\":{},\"dictType\":\"hx_common_type\",\"dictLabel\":\"类型2\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:36:10');
INSERT INTO `sys_oper_log` VALUES (106, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"恒信通用是否\",\"remark\":\"恒信通用判断\\n0: 是\\n1：否\",\"params\":{},\"dictType\":\"hx_common_is\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:37:23');
INSERT INTO `sys_oper_log` VALUES (107, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"default\",\"dictSort\":0,\"params\":{},\"dictType\":\"hx_common_is\",\"dictLabel\":\"是\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:37:33');
INSERT INTO `sys_oper_log` VALUES (108, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"default\",\"dictSort\":0,\"params\":{},\"dictType\":\"hx_common_is\",\"dictLabel\":\"否\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:37:41');
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\",\"sort\":4,\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:39:02');
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653446342000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653446342000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653446342000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlTyp', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:39:26');
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653446366000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653446366000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653446366000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlTyp', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:41:35');
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653446495000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653446495000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653446495000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlTyp', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 10:42:31');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-05-25 11:21:33');
INSERT INTO `sys_oper_log` VALUES (114, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1653383483000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[3,114],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:18:43');
INSERT INTO `sys_oper_log` VALUES (115, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-验证码开关\",\"configKey\":\"sys.account.captchaOnOff\",\"createBy\":\"admin\",\"createTime\":1653383483000,\"updateBy\":\"admin\",\"configId\":4,\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"configType\":\"Y\",\"configValue\":\"fasle\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:22:27');
INSERT INTO `sys_oper_log` VALUES (116, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"主框架页-侧边栏主题\",\"configKey\":\"sys.index.sideTheme\",\"createBy\":\"admin\",\"createTime\":1653383483000,\"updateBy\":\"admin\",\"configId\":3,\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"configType\":\"Y\",\"configValue\":\"theme-light\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:27:27');
INSERT INTO `sys_oper_log` VALUES (117, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-验证码开关\",\"configKey\":\"sys.account.captchaOnOff\",\"createBy\":\"admin\",\"createTime\":1653383483000,\"updateBy\":\"admin\",\"configId\":4,\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateTime\":1653452547000,\"configType\":\"Y\",\"configValue\":\"true\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:27:38');
INSERT INTO `sys_oper_log` VALUES (118, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1653383483000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"127.0.0.1\",\"email\":\"test@qq.com\",\"nickName\":\"test\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部门\",\"leader\":\"lusi\",\"deptId\":105,\"orderNum\":3,\"params\":{},\"parentId\":101,\"children\":[],\"ancestors\":\"0,100,101\",\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1653383483000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:28:18');
INSERT INTO `sys_oper_log` VALUES (119, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$QjkwmcEAicj4i6y7rhg5WuFC.jHfe2YYzf3ZnucmR4JLQlP6UvrR2\",\"postIds\":[4],\"nickName\":\"test\",\"deptId\":101,\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:29:02');
INSERT INTO `sys_oper_log` VALUES (120, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1653383483000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[3,2000,2001,2002,2003,2004],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:29:55');
INSERT INTO `sys_oper_log` VALUES (121, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1653452957000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"深圳总公司\",\"leader\":\"lusi\",\"deptId\":101,\"orderNum\":1,\"params\":{},\"parentId\":100,\"children\":[],\"ancestors\":\"0,100\",\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1653452942000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:34:21');
INSERT INTO `sys_oper_log` VALUES (122, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1653383483000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[3,2000,2001,2002,2003,2004],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 12:34:42');
INSERT INTO `sys_oper_log` VALUES (123, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"123456\",\"smokingType\":0,\"businessName\":\"123456\",\"remark\":\"123456\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"123456\",\"capacity\":\"123456\",\"heatingWireType\":0,\"businessCode\":\"123456\",\"heatingWireResistance\":\"123456\",\"customersCode\":\"123456\",\"sendNum\":\"123456\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1653408000000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"123456\",\"deptId\":\"123456\",\"sampleRequestTime\":1653408000000,\"samplesNum\":123456,\"params\":{},\"vg\":\"123456\",\"viscosity\":\"123456\",\"visitTime\":1653408000000,\"oilRingMaterial\":0,\"createTime\":1653465639674,\"isSupply\":0,\"mailingInformation\":\"123456\",\"tasteNum\":\"123456\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,              is_smoking,             smoking_type,              heating_wire_type,             heating_wire_resistance,             capacity,              oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:00:39');
INSERT INTO `sys_oper_log` VALUES (124, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"123456\",\"smokingType\":0,\"businessName\":\"123456\",\"remark\":\"123456\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"123456\",\"capacity\":\"123456\",\"heatingWireType\":0,\"businessCode\":\"123456\",\"heatingWireResistance\":\"123456\",\"customersCode\":\"123456\",\"sendNum\":\"123456\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1653408000000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"123456\",\"deptId\":\"123456\",\"sampleRequestTime\":1653408000000,\"samplesNum\":123456,\"params\":{},\"vg\":\"123456\",\"viscosity\":\"123456\",\"visitTime\":1653408000000,\"oilRingMaterial\":0,\"createTime\":1653465754452,\"isSupply\":0,\"mailingInformation\":\"123456\",\"tasteNum\":\"123456\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,              is_smoking,             smoking_type,              heating_wire_type,             heating_wire_resistance,             capacity,              oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:02:34');
INSERT INTO `sys_oper_log` VALUES (125, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"123456\",\"smokingType\":0,\"businessName\":\"123456\",\"remark\":\"123456\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"123456\",\"capacity\":\"123456\",\"heatingWireType\":0,\"businessCode\":\"123456\",\"heatingWireResistance\":\"123456\",\"customersCode\":\"123456\",\"sendNum\":\"123456\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1653408000000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"123456\",\"deptId\":\"123456\",\"sampleRequestTime\":1653408000000,\"samplesNum\":123456,\"params\":{},\"vg\":\"123456\",\"viscosity\":\"123456\",\"visitTime\":1653408000000,\"oilRingMaterial\":0,\"createTime\":1653466025338,\"isSupply\":0,\"mailingInformation\":\"123456\",\"tasteNum\":\"123456\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:07:05');
INSERT INTO `sys_oper_log` VALUES (126, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"123456\",\"smokingType\":0,\"businessName\":\"123456\",\"remark\":\"123456\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"123456\",\"capacity\":\"123456\",\"heatingWireType\":0,\"businessCode\":\"123456\",\"heatingWireResistance\":\"123456\",\"customersCode\":\"123456\",\"sendNum\":\"123456\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"123456\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1653408000000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"123456\",\"deptId\":\"123456\",\"sampleRequestTime\":1653408000000,\"samplesNum\":123456,\"params\":{},\"vg\":\"123456\",\"viscosity\":\"123456\",\"visitTime\":1653408000000,\"oilRingMaterial\":0,\"createTime\":1653466224719,\"isSupply\":0,\"mailingInformation\":\"123456\",\"tasteNum\":\"123456\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:10:24');
INSERT INTO `sys_oper_log` VALUES (127, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653466602971,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:16:43');
INSERT INTO `sys_oper_log` VALUES (128, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653466900610,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:21:40');
INSERT INTO `sys_oper_log` VALUES (129, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653466994974,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:23:15');
INSERT INTO `sys_oper_log` VALUES (130, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653466999298,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:23:19');
INSERT INTO `sys_oper_log` VALUES (131, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653467006004,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:23:26');
INSERT INTO `sys_oper_log` VALUES (132, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653467065481,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:24:25');
INSERT INTO `sys_oper_log` VALUES (133, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653467383272,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:30:24');
INSERT INTO `sys_oper_log` VALUES (134, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653467383273,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:30:57');
INSERT INTO `sys_oper_log` VALUES (135, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653467594336,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:33:14');
INSERT INTO `sys_oper_log` VALUES (136, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653467602253,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:33:22');
INSERT INTO `sys_oper_log` VALUES (137, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"11\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653408000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653667200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1653926400000,\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653467646385,\"isSupply\":0,\"mailingInformation\":\"1\",\"tasteNum\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 16:34:06');
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/hx_taste', '127.0.0.1', '内网IP', '{tableName=hx_taste}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:48:52');
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653468532000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653468532000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653468532000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:49:58');
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-05-25 16:50:20');
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/hx_taste', '127.0.0.1', '内网IP', '{tableName=hx_taste}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:54:00');
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653468840000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653468840000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653468840000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:54:23');
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653468863000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653468863000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653468863000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:55:04');
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653468904000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653468904000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653468904000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:55:37');
INSERT INTO `sys_oper_log` VALUES (145, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/hx_taste_detail', '127.0.0.1', '内网IP', '{tableName=hx_taste_detail}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:55:51');
INSERT INTO `sys_oper_log` VALUES (146, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653468937000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653468937000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653468937000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:56:04');
INSERT INTO `sys_oper_log` VALUES (147, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653468964000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653468964000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653468964000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:57:06');
INSERT INTO `sys_oper_log` VALUES (148, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/hx_taste', '127.0.0.1', '内网IP', '{tableName=hx_taste}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:57:22');
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653469042000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653469042000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653469042000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 16:58:04');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-05-25 16:58:06');
INSERT INTO `sys_oper_log` VALUES (151, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"2\",\"smokingType\":0,\"businessName\":\"2\",\"remark\":\"2\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"2\",\"capacity\":\"2\",\"heatingWireType\":0,\"businessCode\":\"2\",\"heatingWireResistance\":\"2\",\"customersCode\":\"2\",\"sendNum\":\"2\",\"estimatedFinishTime\":1653840000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"2\",\"tasteName\":\"2\",\"remark\":\"\",\"params\":{},\"version\":\"2\",\"capacity\":\"2\",\"vg\":\"2\",\"nicConcentration\":\"2\",\"basicTasteName\":\"2\",\"nicType\":\"0\",\"tasteDetail\":\"2\",\"nicUnit\":\"2\",\"isBasicTaste\":2,\"perfumer\":\"2\"}],\"expectedCompletionTime\":1653408000000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"2\",\"deptId\":\"1\",\"sampleRequestTime\":1654012800000,\"samplesNum\":2,\"params\":{},\"vg\":\"2\",\"viscosity\":\"2\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653469846101,\"isSupply\":0,\"mailingInformation\":\"2\",\"tasteNum\":\"2\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,             is_smoking,             smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'is_smoking\' in \'field list\'', '2022-05-25 17:10:46');
INSERT INTO `sys_oper_log` VALUES (152, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"2\",\"smokingType\":0,\"businessName\":\"2\",\"remark\":\"2\",\"isTry\":0,\"refereeNum\":\"2\",\"capacity\":\"2\",\"heatingWireType\":0,\"businessCode\":\"2\",\"heatingWireResistance\":\"2\",\"customersCode\":\"2\",\"sendNum\":\"2\",\"estimatedFinishTime\":1653840000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"2\",\"tasteName\":\"2\",\"remark\":\"\",\"params\":{},\"version\":\"2\",\"capacity\":\"2\",\"vg\":\"2\",\"nicConcentration\":\"2\",\"basicTasteName\":\"2\",\"nicType\":\"0\",\"tasteDetail\":\"2\",\"nicUnit\":\"2\",\"isBasicTaste\":2,\"perfumer\":\"2\"}],\"expectedCompletionTime\":1653408000000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"2\",\"deptId\":\"1\",\"sampleRequestTime\":1654012800000,\"samplesNum\":2,\"params\":{},\"vg\":\"2\",\"viscosity\":\"2\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653470155991,\"isSupply\":0,\"mailingInformation\":\"2\",\"tasteNum\":\"2\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'heating_wire_type\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,                          smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'heating_wire_type\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'heating_wire_type\' in \'field list\'', '2022-05-25 17:15:56');
INSERT INTO `sys_oper_log` VALUES (153, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"2\",\"smokingType\":0,\"businessName\":\"2\",\"remark\":\"2\",\"isTry\":0,\"refereeNum\":\"2\",\"capacity\":\"2\",\"heatingWireType\":0,\"businessCode\":\"2\",\"heatingWireResistance\":\"2\",\"customersCode\":\"2\",\"sendNum\":\"2\",\"estimatedFinishTime\":1653840000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"2\",\"tasteName\":\"2\",\"remark\":\"\",\"params\":{},\"version\":\"2\",\"capacity\":\"2\",\"vg\":\"2\",\"nicConcentration\":\"2\",\"basicTasteName\":\"2\",\"nicType\":\"0\",\"tasteDetail\":\"2\",\"nicUnit\":\"2\",\"isBasicTaste\":2,\"perfumer\":\"2\"}],\"expectedCompletionTime\":1653408000000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"2\",\"deptId\":\"1\",\"sampleRequestTime\":1654012800000,\"samplesNum\":2,\"params\":{},\"vg\":\"2\",\"viscosity\":\"2\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653470160608,\"isSupply\":0,\"mailingInformation\":\"2\",\"tasteNum\":\"2\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'heating_wire_type\' in \'field list\'\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,                          smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,             vg,             viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,             samples_num,             mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'heating_wire_type\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'heating_wire_type\' in \'field list\'', '2022-05-25 17:16:00');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/hx_taste', '127.0.0.1', '内网IP', '{tableName=hx_taste}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 17:21:37');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/hx_taste_detail', '127.0.0.1', '内网IP', '{tableName=hx_taste_detail}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 17:21:40');
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653470497000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653470497000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653470497000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 17:21:55');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"hx_taste_detail\",\"functionAuthor\":\"lusifer\",\"columns\":[{\"capJavaField\":\"TasteId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"required\":false,\"superColumn\":false,\"isInsert\":\"1\",\"javaField\":\"tasteId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"口味申请单ID\",\"updateTime\":1653470515000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"Long\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1653445966000,\"tableId\":1,\"pk\":true,\"columnName\":\"taste_id\"},{\"capJavaField\":\"DeptId\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"部门Id\",\"isQuery\":\"1\",\"updateTime\":1653470515000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"dept_id\"},{\"capJavaField\":\"BusinessName\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务姓名\",\"isQuery\":\"1\",\"updateTime\":1653470515000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1653445966000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"business_name\"},{\"capJavaField\":\"BusinessCode\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"businessCode\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"业务代码\",\"isQuery\":\"1\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 17:22:22');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-05-25 17:22:24');
INSERT INTO `sys_oper_log` VALUES (159, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '10.10.7.133', '内网IP', '{\"customersName\":\"2\",\"smokingType\":0,\"businessName\":\"2\",\"remark\":\"2\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"2\",\"capacity\":\"2\",\"heatingWireType\":0,\"businessCode\":\"2\",\"heatingWireResistance\":\"2\",\"customersCode\":\"2\",\"sendNum\":\"2\",\"estimatedFinishTime\":1653840000000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"2\",\"tasteName\":\"2\",\"remark\":\"\",\"params\":{},\"version\":\"2\",\"capacity\":\"2\",\"vg\":\"2\",\"nicConcentration\":\"2\",\"basicTasteName\":\"2\",\"nicType\":\"0\",\"tasteDetail\":\"2\",\"nicUnit\":\"2\",\"isBasicTaste\":2,\"perfumer\":\"2\"}],\"expectedCompletionTime\":1653408000000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"2\",\"deptId\":\"1\",\"sampleRequestTime\":1654012800000,\"samplesNum\":2,\"params\":{},\"vg\":\"2\",\"viscosity\":\"2\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653470876584,\"isSupply\":0,\"mailingInformation\":\"2\",\"tasteNum\":\"2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-25 17:27:56');
INSERT INTO `sys_oper_log` VALUES (160, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1653383483000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-26 09:50:07');
INSERT INTO `sys_oper_log` VALUES (161, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1653383483000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[3,2000,2001,2002,2003,2004,2005],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-26 09:51:00');
INSERT INTO `sys_oper_log` VALUES (162, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1653383483000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"menuIds\":[3,2000,2001,2002,2003,2004],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-26 09:56:52');
INSERT INTO `sys_oper_log` VALUES (163, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":1,\"businessName\":\"11\",\"remark\":\"1\\n2\",\"isTry\":0,\"refereeNum\":\"1\",\"capacity\":\"1\",\"heatingWireType\":1,\"businessCode\":\"11\",\"heatingWireResistance\":\"111\",\"customersCode\":\"11\",\"sendNum\":\"11\",\"estimatedFinishTime\":1653580800000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"12\",\"tasteName\":\"123\",\"remark\":\"\",\"params\":{},\"version\":\"12\",\"capacity\":\"12\",\"vg\":\"12\",\"nicConcentration\":\"12\",\"basicTasteName\":\"123\",\"nicType\":\"0\",\"tasteDetail\":\"123\",\"nicUnit\":\"12\",\"isBasicTaste\":123,\"perfumer\":\"12\"}],\"expectedCompletionTime\":1651507200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1652198400000,\"params\":{},\"viscosity\":\"111\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653535069656,\"isSupply\":0,\"mailingInformation\":\"11\",\"tasteNum\":\"11\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,                          smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,                          viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,                          mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,                          ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value\n; Field \'is_smoking\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value', '2022-05-26 11:17:49');
INSERT INTO `sys_oper_log` VALUES (164, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":1,\"businessName\":\"11\",\"remark\":\"1\\n2\",\"isTry\":0,\"refereeNum\":\"1\",\"capacity\":\"1\",\"heatingWireType\":1,\"businessCode\":\"11\",\"heatingWireResistance\":\"111\",\"customersCode\":\"11\",\"sendNum\":\"11\",\"estimatedFinishTime\":1653580800000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"12\",\"tasteName\":\"123\",\"remark\":\"\",\"params\":{},\"version\":\"12\",\"capacity\":\"12\",\"vg\":\"12\",\"nicConcentration\":\"12\",\"basicTasteName\":\"123\",\"nicType\":\"0\",\"tasteDetail\":\"123\",\"nicUnit\":\"12\",\"isBasicTaste\":123,\"perfumer\":\"12\"}],\"expectedCompletionTime\":1651507200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1652198400000,\"params\":{},\"viscosity\":\"111\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653535078960,\"isSupply\":0,\"mailingInformation\":\"11\",\"tasteNum\":\"11\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,                          smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,                          viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,                          mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,                          ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value\n; Field \'is_smoking\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value', '2022-05-26 11:17:58');
INSERT INTO `sys_oper_log` VALUES (165, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":1,\"businessName\":\"11\",\"remark\":\"1\\n2\",\"isTry\":0,\"refereeNum\":\"1\",\"capacity\":\"1\",\"heatingWireType\":1,\"businessCode\":\"11\",\"heatingWireResistance\":\"111\",\"customersCode\":\"11\",\"sendNum\":\"11\",\"estimatedFinishTime\":1653580800000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"12\",\"tasteName\":\"123\",\"remark\":\"\",\"params\":{},\"version\":\"12\",\"capacity\":\"12\",\"vg\":\"12\",\"nicConcentration\":\"12\",\"basicTasteName\":\"123\",\"nicType\":\"0\",\"tasteDetail\":\"123\",\"nicUnit\":\"12\",\"isBasicTaste\":123,\"perfumer\":\"12\"}],\"expectedCompletionTime\":1651507200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1652198400000,\"params\":{},\"viscosity\":\"111\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653535102047,\"isSupply\":0,\"mailingInformation\":\"11\",\"tasteNum\":\"11\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,                          smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,                          viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,                          mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,                          ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value\n; Field \'is_smoking\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value', '2022-05-26 11:18:22');
INSERT INTO `sys_oper_log` VALUES (166, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":1,\"businessName\":\"11\",\"remark\":\"1\\n2\",\"isTry\":0,\"refereeNum\":\"1\",\"capacity\":\"1\",\"heatingWireType\":1,\"businessCode\":\"11\",\"heatingWireResistance\":\"111\",\"customersCode\":\"11\",\"sendNum\":\"11\",\"estimatedFinishTime\":1653580800000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"12\",\"tasteName\":\"123\",\"remark\":\"\",\"params\":{},\"version\":\"12\",\"capacity\":\"12\",\"vg\":\"12\",\"nicConcentration\":\"12\",\"basicTasteName\":\"123\",\"nicType\":\"0\",\"tasteDetail\":\"123\",\"nicUnit\":\"12\",\"isBasicTaste\":123,\"perfumer\":\"12\"}],\"expectedCompletionTime\":1651507200000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"sampleRequestTime\":1652198400000,\"params\":{},\"viscosity\":\"111\",\"visitTime\":1651507200000,\"oilRingMaterial\":0,\"createTime\":1653535236602,\"isSupply\":0,\"mailingInformation\":\"11\",\"tasteNum\":\"11\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( dept_id,             business_name,             business_code,             customers_name,             customers_code,             taste_num,             referee_num,             send_num,             is_supply,             is_try,             visit_time,                          smoking_type,             heating_wire_type,             heating_wire_resistance,             capacity,             oil_guide_cotton_type,             is_recycling_smoking,             oil_ring_material,                          viscosity,             expected_completion_time,             sample_request_time,             estimated_finish_time,             match_market,                          mailing_information,                          create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,                          ?,                          ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value\n; Field \'is_smoking\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'is_smoking\' doesn\'t have a default value', '2022-05-26 11:20:36');
INSERT INTO `sys_oper_log` VALUES (167, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"1\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653494400000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"1\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"}],\"expectedCompletionTime\":1653494400000,\"oilGuideCottonType\":1,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"samplesNum\":1,\"params\":{},\"vg\":\"1\",\"viscosity\":\"1\",\"visitTime\":1653494400000,\"oilRingMaterial\":0,\"createTime\":1653535288177,\"isSupply\":0,\"mailingInformation\":\"11\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-26 11:21:28');
INSERT INTO `sys_oper_log` VALUES (168, '口味申请单', 2, 'com.ruoyi.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'test', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":0,\"businessName\":\"1\",\"remark\":\"1\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"1\",\"capacity\":\"1\",\"heatingWireType\":0,\"businessCode\":\"1\",\"heatingWireResistance\":\"1\",\"updateBy\":\"\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1653494400000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1653494400000,\"oilGuideCottonType\":1,\"isRecyclingSmoking\":0,\"matchMarket\":\"1\",\"deptId\":\"1\",\"updateTime\":1653535305125,\"samplesNum\":1,\"params\":{},\"tasteId\":2,\"vg\":\"234\",\"createBy\":\"\",\"viscosity\":\"1\",\"visitTime\":1653494400000,\"oilRingMaterial\":0,\"createTime\":1653535288000,\"isSupply\":0,\"mailingInformation\":\"11\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-26 11:21:45');
INSERT INTO `sys_oper_log` VALUES (169, '口味申请单', 1, 'com.ruoyi.web.controller.system.HxTasteController.add()', 'POST', 1, 'test', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"2\",\"smokingType\":0,\"businessName\":\"2\",\"remark\":\"1\\n2\\n3\",\"isTry\":0,\"isSmoking\":0,\"refereeNum\":\"2\",\"capacity\":\"2\",\"heatingWireType\":0,\"businessCode\":\"2\",\"heatingWireResistance\":\"2\",\"customersCode\":\"2\",\"sendNum\":\"2\",\"estimatedFinishTime\":1653494400000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"1\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"0\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"0\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"1\",\"tasteName\":\"1\",\"remark\":\"1\",\"params\":{},\"version\":\"1\",\"capacity\":\"1\",\"vg\":\"1\",\"nicConcentration\":\"1\",\"basicTasteName\":\"1\",\"nicType\":\"0\",\"tasteDetail\":\"1\",\"nicUnit\":\"1\",\"isBasicTaste\":1,\"perfumer\":\"1\"},{\"basicTasteImprovementIdeas\":\"2\",\"tasteName\":\"2\",\"remark\":\"2\",\"params\":{},\"version\":\"2\",\"capacity\":\"2\",\"vg\":\"2\",\"nicConcentration\":\"2\",\"basicTasteName\":\"2\",\"nicType\":\"0\",\"tasteDetail\":\"2\",\"nicUnit\":\"2\",\"isBasicTaste\":2,\"perfumer\":\"2\"},{\"basicTasteImprovementIdeas\":\"3\",\"tasteName\":\"3\",\"remark\":\"3\",\"params\":{},\"version\":\"3\",\"capacity\":\"3\",\"vg\":\"3\",\"nicConcentration\":\"3\",\"basicTasteName\":\"3\",\"nicType\":\"\",\"tasteDetail\":\"3\",\"nicUnit\":\"3\",\"isBasicTaste\":3,\"perfumer\":\"3\"}],\"expectedCompletionTime\":1653494400000,\"oilGuideCottonType\":0,\"isRecyclingSmoking\":0,\"matchMarket\":\"2\",\"deptId\":\"1\",\"sampleRequestTime\":1653494400000,\"samplesNum\":2,\"params', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-26 12:20:37');
INSERT INTO `sys_oper_log` VALUES (170, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configName\":\"账号自助-验证码开关\",\"configKey\":\"sys.account.captchaOnOff\",\"createBy\":\"admin\",\"createTime\":1653383483000,\"updateBy\":\"admin\",\"configId\":4,\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateTime\":1653452858000,\"configType\":\"Y\",\"configValue\":\"false\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-05-26 13:09:06');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', NULL, 0, NULL, '2022-05-26 19:06:24');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-05-26 09:56:52', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', 'lusi', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-05-26 19:03:50', 'admin', '2022-05-24 17:11:23', '', '2022-05-26 19:03:50', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', 'test', '00', 'test@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-05-24 17:11:23', 'admin', '2022-05-24 17:11:23', 'admin', '2022-05-25 12:28:18', '测试员');
INSERT INTO `sys_user` VALUES (100, 105, 'test', 'test', '00', '', '', '0', '', '$2a$10$QjkwmcEAicj4i6y7rhg5WuFC.jHfe2YYzf3ZnucmR4JLQlP6UvrR2', '0', '0', '10.10.7.133', '2022-05-27 16:40:07', 'admin', '2022-05-25 12:29:02', 'admin', '2022-05-27 16:40:06', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 4);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 2);

SET FOREIGN_KEY_CHECKS = 1;
