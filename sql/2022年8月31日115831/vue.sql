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

 Date: 31/08/2022 11:58:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for crm_data_region
-- ----------------------------
DROP TABLE IF EXISTS `crm_data_region`;
CREATE TABLE `crm_data_region`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '父ID',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `level` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '层级',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名称',
  `name_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '英文名称',
  `name_pinyin` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文拼音',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4170 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '全球地区库，采集自腾讯QQ国内+国际版.ADD.JENA.20141221' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of crm_data_region
-- ----------------------------
INSERT INTO `crm_data_region` VALUES (1, 0, ',1,', 1, '亚洲', 'Asia', 'yazhou', NULL);
INSERT INTO `crm_data_region` VALUES (2, 0, ',2,', 1, '欧洲', 'Europe', 'ouzhou', NULL);
INSERT INTO `crm_data_region` VALUES (3, 0, ',3,', 1, '非洲', 'Africa', 'feizhou', NULL);
INSERT INTO `crm_data_region` VALUES (4, 0, ',4,', 1, '北美', 'North America', 'beimei', NULL);
INSERT INTO `crm_data_region` VALUES (5, 0, ',5,', 1, '南美', 'South America', 'nanmei', NULL);
INSERT INTO `crm_data_region` VALUES (6, 0, ',6,', 1, '大洋洲', 'Oceania', 'dayangzhou', NULL);
INSERT INTO `crm_data_region` VALUES (7, 1, ',1,7,', 2, '中国', 'China', 'zhongguo', 'CN');
INSERT INTO `crm_data_region` VALUES (8, 2, ',2,8,', 2, '阿尔巴尼亚', 'Albania', 'aerbaniya', 'ALB');
INSERT INTO `crm_data_region` VALUES (9, 3, ',3,9,', 2, '阿尔及利亚', 'Algeria', 'aerjiliya', 'DZA');
INSERT INTO `crm_data_region` VALUES (10, 1, ',1,10,', 2, '阿富汗', 'Afghanistan', 'afuhan', 'AFG');
INSERT INTO `crm_data_region` VALUES (11, 5, ',5,11,', 2, '阿根廷', 'Argentina', 'agenting', 'ARG');
INSERT INTO `crm_data_region` VALUES (12, 1, ',1,12,', 2, '阿拉伯联合酋长国', 'United Arab Emirates', 'alabolianheqiuchangguo', 'ARE');
INSERT INTO `crm_data_region` VALUES (13, 5, ',5,13,', 2, '阿鲁巴', 'Aruba', 'aluba', 'ABW');
INSERT INTO `crm_data_region` VALUES (14, 1, ',1,14,', 2, '阿曼', 'Oman', 'aman', 'OMN');
INSERT INTO `crm_data_region` VALUES (15, 1, ',1,15,', 2, '阿塞拜疆', 'Azerbaijan', 'asaibaijiang', 'AZE');
INSERT INTO `crm_data_region` VALUES (16, 3, ',3,16,', 2, '阿森松岛', 'Ascension Island', 'asensongdao', 'ASC');
INSERT INTO `crm_data_region` VALUES (17, 3, ',3,17,', 2, '埃及', 'Egypt', 'aiji', 'EGY');
INSERT INTO `crm_data_region` VALUES (18, 3, ',3,18,', 2, '埃塞俄比亚', 'Ethiopia', 'aisaiebiya', 'ETH');
INSERT INTO `crm_data_region` VALUES (19, 2, ',2,19,', 2, '爱尔兰', 'Ireland', 'aierlan', 'IRL');
INSERT INTO `crm_data_region` VALUES (20, 2, ',2,20,', 2, '爱沙尼亚', 'Estonia', 'aishaniya', 'EST');
INSERT INTO `crm_data_region` VALUES (21, 2, ',2,21,', 2, '安道尔', 'Andorra', 'andaoer', 'AND');
INSERT INTO `crm_data_region` VALUES (22, 3, ',3,22,', 2, '安哥拉', 'Angola', 'angela', 'AGO');
INSERT INTO `crm_data_region` VALUES (23, 5, ',5,23,', 2, '安圭拉', 'Anguilla', 'anguila', 'AIA');
INSERT INTO `crm_data_region` VALUES (24, 4, ',4,24,', 2, '安提瓜岛和巴布达', 'Antigua and Barbuda', 'antiguadaohebabuda', 'ATG');
INSERT INTO `crm_data_region` VALUES (25, 6, ',6,25,', 2, '澳大利亚', 'Australia', 'aodaliya', 'AUS');
INSERT INTO `crm_data_region` VALUES (26, 2, ',2,26,', 2, '奥地利', 'Austria', 'aodili', 'AUT');
INSERT INTO `crm_data_region` VALUES (27, 2, ',2,27,', 2, '奥兰群岛', 'Aland lslands', 'aolanqundao', 'ALA');
INSERT INTO `crm_data_region` VALUES (28, 5, ',5,28,', 2, '巴巴多斯岛', 'Barbados', 'babaduosidao', 'BRB');
INSERT INTO `crm_data_region` VALUES (29, 6, ',6,29,', 2, '巴布亚新几内亚', 'Papua New Guinea', 'babuyaxinjineiya', 'PNG');
INSERT INTO `crm_data_region` VALUES (30, 4, ',4,30,', 2, '巴哈马', 'Bahamas', 'bahama', 'BHS');
INSERT INTO `crm_data_region` VALUES (31, 1, ',1,31,', 2, '巴基斯坦', 'Pakistan', 'bajisitan', 'PAK');
INSERT INTO `crm_data_region` VALUES (32, 5, ',5,32,', 2, '巴拉圭', 'Paraguay', 'balagui', 'PRY');
INSERT INTO `crm_data_region` VALUES (33, 1, ',1,33,', 2, '巴勒斯坦', 'Palestinian Authority', 'balesitan', 'PSE');
INSERT INTO `crm_data_region` VALUES (34, 1, ',1,34,', 2, '巴林', 'Bahrain', 'balin', 'BHR');
INSERT INTO `crm_data_region` VALUES (35, 4, ',4,35,', 2, '巴拿马', 'Panama', 'banama', 'PAN');
INSERT INTO `crm_data_region` VALUES (36, 5, ',5,36,', 2, '巴西', 'Brazil', 'baxi', 'BRA');
INSERT INTO `crm_data_region` VALUES (37, 2, ',2,37,', 2, '白俄罗斯', 'White Russia', 'baieluosi', 'BLR');
INSERT INTO `crm_data_region` VALUES (38, 4, ',4,38,', 2, '百慕大', 'Bermuda', 'baimuda', 'BMU');
INSERT INTO `crm_data_region` VALUES (39, 2, ',2,39,', 2, '保加利亚', 'Bulgaria', 'baojialiya', 'BGR');
INSERT INTO `crm_data_region` VALUES (40, 4, ',4,40,', 2, '北马里亚纳群岛', 'Northern Mariana Islands', 'beimaliyanaqundao', 'MNP');
INSERT INTO `crm_data_region` VALUES (41, 3, ',3,41,', 2, '贝宁', 'Benin', 'beining', 'BEN');
INSERT INTO `crm_data_region` VALUES (42, 2, ',2,42,', 2, '比利时', 'Belgium', 'bilishi', 'BEL');
INSERT INTO `crm_data_region` VALUES (43, 2, ',2,43,', 2, '冰岛', 'Iceland', 'bingdao', 'ISL');
INSERT INTO `crm_data_region` VALUES (44, 4, ',4,44,', 2, '波多黎各', 'Puerto Rico', 'boduolige', 'PRI');
INSERT INTO `crm_data_region` VALUES (45, 2, ',2,45,', 2, '波兰', 'Poland', 'bolan', 'POL');
INSERT INTO `crm_data_region` VALUES (46, 5, ',5,46,', 2, '玻利维亚', 'Bolivia', 'boliweiya', 'BOL');
INSERT INTO `crm_data_region` VALUES (47, 2, ',2,47,', 2, '波斯尼亚和黑塞哥维那', 'Bosnia and Herzegovina', 'bosiniyaheheisaigeweina', 'BIH');
INSERT INTO `crm_data_region` VALUES (48, 3, ',3,48,', 2, '博茨瓦纳', 'Botswana', 'bociwana', 'BWA');
INSERT INTO `crm_data_region` VALUES (49, 4, ',4,49,', 2, '伯利兹', 'Belize', 'bolizi', 'BLZ');
INSERT INTO `crm_data_region` VALUES (50, 1, ',1,50,', 2, '不丹', 'Bhutan', 'budan', 'BTN');
INSERT INTO `crm_data_region` VALUES (51, 3, ',3,51,', 2, '布基纳法索', 'Burkina Faso', 'bujinafasuo', 'BFA');
INSERT INTO `crm_data_region` VALUES (52, 3, ',3,52,', 2, '布隆迪', 'Burundi', 'bulongdi', 'BDI');
INSERT INTO `crm_data_region` VALUES (53, 2, ',2,53,', 2, '布韦岛', 'Bouvet Island', 'buweidao', 'BVT');
INSERT INTO `crm_data_region` VALUES (54, 1, ',1,54,', 2, '朝鲜', 'North Korea', 'chaoxian', 'PRK');
INSERT INTO `crm_data_region` VALUES (55, 2, ',2,55,', 2, '丹麦', 'Denmark', 'danmai', 'DNK');
INSERT INTO `crm_data_region` VALUES (56, 2, ',2,56,', 2, '德国', 'Germany', 'deguo', 'DEU');
INSERT INTO `crm_data_region` VALUES (57, 1, ',1,57,', 2, '东帝汶', 'Timor-Leste', 'dongdi', 'TLS');
INSERT INTO `crm_data_region` VALUES (58, 3, ',3,58,', 2, '多哥', 'Togo', 'duoge', 'TGO');
INSERT INTO `crm_data_region` VALUES (59, 4, ',4,59,', 2, '多米尼加', 'Dominica', 'duominijia', 'DMA');
INSERT INTO `crm_data_region` VALUES (60, 4, ',4,60,', 2, '多米尼加共和国', 'Dominican Republic', 'duominijiagongheguo', 'DOM');
INSERT INTO `crm_data_region` VALUES (61, 2, ',2,61,', 2, '俄罗斯', 'Russia', 'eluosi', 'RUS');
INSERT INTO `crm_data_region` VALUES (62, 5, ',5,62,', 2, '厄瓜多尔', 'Ecuador', 'eguaduoer', 'ECU');
INSERT INTO `crm_data_region` VALUES (63, 3, ',3,63,', 2, '厄立特里亚', 'Eritrea', 'eliteliya', 'ERI');
INSERT INTO `crm_data_region` VALUES (64, 2, ',2,64,', 2, '法国', 'France', 'faguo', 'FRA');
INSERT INTO `crm_data_region` VALUES (65, 2, ',2,65,', 2, '法罗群岛', 'Faroe Islands', 'faluoqundao', 'FRO');
INSERT INTO `crm_data_region` VALUES (66, 6, ',6,66,', 2, '法属波利尼西亚', 'Frech Polynesia', 'fashubolinixiya', 'PYF');
INSERT INTO `crm_data_region` VALUES (67, 5, ',5,67,', 2, '法属圭亚那', 'French Guiana', 'fashuguiyana', 'GUF');
INSERT INTO `crm_data_region` VALUES (68, 2, ',2,68,', 2, '法属南部领地', 'French Southern and Antarctic Lands', 'fashunanbulingdi', 'ATF');
INSERT INTO `crm_data_region` VALUES (69, 2, ',2,69,', 2, '梵蒂冈', 'Vatican City', 'digang', 'VAT');
INSERT INTO `crm_data_region` VALUES (70, 1, ',1,70,', 2, '菲律宾', 'Philippines', 'feilvbin', 'PHL');
INSERT INTO `crm_data_region` VALUES (71, 6, ',6,71,', 2, '斐济', 'Fiji Islands', 'ji', 'FJI');
INSERT INTO `crm_data_region` VALUES (72, 2, ',2,72,', 2, '芬兰', 'Finland', 'fenlan', 'FIN');
INSERT INTO `crm_data_region` VALUES (73, 3, ',3,73,', 2, '佛得角', 'Cape Verde', 'fodejiao', 'CPV');
INSERT INTO `crm_data_region` VALUES (74, 2, ',2,74,', 2, '弗兰克群岛', 'Falkland Islands', 'fulankequndao', 'FLK');
INSERT INTO `crm_data_region` VALUES (75, 3, ',3,75,', 2, '冈比亚', 'Gambia', 'gangbiya', 'GMB');
INSERT INTO `crm_data_region` VALUES (76, 3, ',3,76,', 2, '刚果', 'Congo', 'gangguo', 'COG');
INSERT INTO `crm_data_region` VALUES (77, 3, ',3,77,', 2, '刚果民主共和国', 'Congo(DRC)', 'gangguominzhugongheguo', 'COD');
INSERT INTO `crm_data_region` VALUES (78, 5, ',5,78,', 2, '哥伦比亚', 'Colombia', 'gelunbiya', 'COL');
INSERT INTO `crm_data_region` VALUES (79, 4, ',4,79,', 2, '哥斯达黎加', 'Costa Rica', 'gesidalijia', 'CRI');
INSERT INTO `crm_data_region` VALUES (80, 2, ',2,80,', 2, '格恩西岛', 'Guernsey', 'geenxidao', 'GGY');
INSERT INTO `crm_data_region` VALUES (81, 4, ',4,81,', 2, '格林纳达', 'Grenada', 'gelinnada', 'GRD');
INSERT INTO `crm_data_region` VALUES (82, 4, ',4,82,', 2, '格陵兰', 'Greenland', 'gelinglan', 'GRL');
INSERT INTO `crm_data_region` VALUES (83, 4, ',4,83,', 2, '古巴', 'Cuba', 'guba', 'CUB');
INSERT INTO `crm_data_region` VALUES (84, 4, ',4,84,', 2, '瓜德罗普', 'Guadeloupe', 'guadeluopu', 'GLP');
INSERT INTO `crm_data_region` VALUES (85, 6, ',6,85,', 2, '关岛', 'Guam', 'guandao', 'GUM');
INSERT INTO `crm_data_region` VALUES (86, 5, ',5,86,', 2, '圭亚那', 'Guyana', 'guiyana', 'GUY');
INSERT INTO `crm_data_region` VALUES (87, 1, ',1,87,', 2, '哈萨克斯坦', 'Kazakhstan', 'hasakesitan', 'KAZ');
INSERT INTO `crm_data_region` VALUES (88, 4, ',4,88,', 2, '海地', 'Haiti', 'haidi', 'HTI');
INSERT INTO `crm_data_region` VALUES (89, 1, ',1,89,', 2, '韩国', 'Korea', 'hanguo', 'KOR');
INSERT INTO `crm_data_region` VALUES (90, 2, ',2,90,', 2, '荷兰', 'Netherlands', 'helan', 'NLD');
INSERT INTO `crm_data_region` VALUES (91, 5, ',5,91,', 2, '荷属安地列斯', 'Netherlands Antilles', 'heshuandiliesi', 'ANT');
INSERT INTO `crm_data_region` VALUES (92, 6, ',6,92,', 2, '赫德和麦克唐纳群岛', 'Heard Island and McDonald Islands', 'hedehemaiketangnaqundao', 'HMD');
INSERT INTO `crm_data_region` VALUES (93, 4, ',4,93,', 2, '洪都拉斯', 'Honduras', 'hongdulasi', 'HND');
INSERT INTO `crm_data_region` VALUES (94, 6, ',6,94,', 2, '基里巴斯', 'Kiribati', 'jilibasi', 'KIR');
INSERT INTO `crm_data_region` VALUES (95, 3, ',3,95,', 2, '吉布提', 'Djibouti', 'jibuti', 'DJI');
INSERT INTO `crm_data_region` VALUES (96, 1, ',1,96,', 2, '吉尔吉斯斯坦', 'Kyrgyzstan', 'jierjisisitan', 'KGZ');
INSERT INTO `crm_data_region` VALUES (97, 3, ',3,97,', 2, '几内亚', 'Guinea', 'jineiya', 'GIN');
INSERT INTO `crm_data_region` VALUES (98, 3, ',3,98,', 2, '几内亚比绍', 'Guinea-Bissau', 'jineiyabishao', 'GNB');
INSERT INTO `crm_data_region` VALUES (99, 4, ',4,99,', 2, '加拿大', 'Canada', 'jianada', 'CAN');
INSERT INTO `crm_data_region` VALUES (100, 3, ',3,100,', 2, '加纳', 'Ghana', 'jiana', 'GHA');
INSERT INTO `crm_data_region` VALUES (101, 3, ',3,101,', 2, '加蓬', 'Gabon', 'jiapeng', 'GAB');
INSERT INTO `crm_data_region` VALUES (102, 1, ',1,102,', 2, '柬埔寨', 'Cambodia', 'jianpuzhai', 'KHM');
INSERT INTO `crm_data_region` VALUES (103, 2, ',2,103,', 2, '捷克共和国', 'Czech Republic', 'jiekegongheguo', 'CZE');
INSERT INTO `crm_data_region` VALUES (104, 3, ',3,104,', 2, '津巴布韦', 'Zimbabwe', 'jinbabuwei', 'ZWE');
INSERT INTO `crm_data_region` VALUES (105, 3, ',3,105,', 2, '喀麦隆', 'Cameroon', 'kamailong', 'CMR');
INSERT INTO `crm_data_region` VALUES (106, 1, ',1,106,', 2, '卡塔尔', 'Qatar', 'kataer', 'QAT');
INSERT INTO `crm_data_region` VALUES (107, 4, ',4,107,', 2, '开曼群岛', 'Cayman Islands', 'kaimanqundao', 'CYM');
INSERT INTO `crm_data_region` VALUES (108, 6, ',6,108,', 2, '科科斯群岛', 'Cocos(Keeling)Islands', 'kekesiqundao', 'CCK');
INSERT INTO `crm_data_region` VALUES (109, 3, ',3,109,', 2, '科摩罗', 'Comoros', 'kemoluo', 'COM');
INSERT INTO `crm_data_region` VALUES (110, 3, ',3,110,', 2, '科特迪瓦', 'Cote d\'Ivoire', 'ketediwa', 'CIV');
INSERT INTO `crm_data_region` VALUES (111, 1, ',1,111,', 2, '科威特', 'Kuwait', 'keweite', 'KWT');
INSERT INTO `crm_data_region` VALUES (112, 2, ',2,112,', 2, '克罗地亚', 'Croatia', 'keluodiya', 'HRV');
INSERT INTO `crm_data_region` VALUES (113, 3, ',3,113,', 2, '肯尼亚', 'Kenya', 'kenniya', 'KEN');
INSERT INTO `crm_data_region` VALUES (114, 6, ',6,114,', 2, '库克群岛', 'Cook Islands', 'kukequndao', 'COK');
INSERT INTO `crm_data_region` VALUES (115, 2, ',2,115,', 2, '拉脱维亚', 'Latvia', 'latuoweiya', 'LVA');
INSERT INTO `crm_data_region` VALUES (116, 3, ',3,116,', 2, '莱索托', 'Lesotho', 'laisuotuo', 'LSO');
INSERT INTO `crm_data_region` VALUES (117, 1, ',1,117,', 2, '老挝', 'Laos', 'laowo', 'LAO');
INSERT INTO `crm_data_region` VALUES (118, 1, ',1,118,', 2, '黎巴嫩', 'Lebanon', 'libanen', 'LBN');
INSERT INTO `crm_data_region` VALUES (119, 3, ',3,119,', 2, '利比里亚', 'Liberia', 'libiliya', 'LBR');
INSERT INTO `crm_data_region` VALUES (120, 3, ',3,120,', 2, '利比亚', 'Libya', 'libiya', 'LBY');
INSERT INTO `crm_data_region` VALUES (121, 2, ',2,121,', 2, '立陶宛', 'Lithuania', 'litaowan', 'LTU');
INSERT INTO `crm_data_region` VALUES (122, 2, ',2,122,', 2, '列支敦士登', 'Liechtenstein', 'liezhidunshideng', 'LIE');
INSERT INTO `crm_data_region` VALUES (123, 2, ',2,123,', 2, '留尼旺岛', 'Reunion', 'liuniwangdao', 'REU');
INSERT INTO `crm_data_region` VALUES (124, 2, ',2,124,', 2, '卢森堡', 'Luxembourg', 'lusenbao', 'LUX');
INSERT INTO `crm_data_region` VALUES (125, 3, ',3,125,', 2, '卢旺达', 'Rwanda', 'luwangda', 'RWA');
INSERT INTO `crm_data_region` VALUES (126, 2, ',2,126,', 2, '罗马尼亚', 'Romania', 'luomaniya', 'ROU');
INSERT INTO `crm_data_region` VALUES (127, 3, ',3,127,', 2, '马达加斯加', 'Madagascar', 'madajiasijia', 'MDG');
INSERT INTO `crm_data_region` VALUES (128, 1, ',1,128,', 2, '马尔代夫', 'Maldives', 'maerdaifu', 'MDV');
INSERT INTO `crm_data_region` VALUES (129, 2, ',2,129,', 2, '马耳他', 'Malta', 'maerta', 'MLT');
INSERT INTO `crm_data_region` VALUES (130, 3, ',3,130,', 2, '马拉维', 'Malawi', 'malawei', 'MWI');
INSERT INTO `crm_data_region` VALUES (131, 1, ',1,131,', 2, '马来西亚', 'Malaysia', 'malaixiya', 'MYS');
INSERT INTO `crm_data_region` VALUES (132, 3, ',3,132,', 2, '马里', 'Mali', 'mali', 'MLI');
INSERT INTO `crm_data_region` VALUES (133, 2, ',2,133,', 2, '马其顿', 'Macedonia,Former Yugoslav Republic of', 'maqidun', 'MKD');
INSERT INTO `crm_data_region` VALUES (134, 6, ',6,134,', 2, '马绍尔群岛', 'Marshall Islands', 'mashaoerqundao', 'MHL');
INSERT INTO `crm_data_region` VALUES (135, 4, ',4,135,', 2, '马提尼克', 'Martinique', 'matinike', 'MTQ');
INSERT INTO `crm_data_region` VALUES (136, 3, ',3,136,', 2, '马约特岛', 'Mayotte', 'mayuetedao', 'MYT');
INSERT INTO `crm_data_region` VALUES (137, 2, ',2,137,', 2, '曼岛', 'Isle of Man', 'mandao', 'IMN');
INSERT INTO `crm_data_region` VALUES (138, 3, ',3,138,', 2, '毛里求斯', 'Mauritius', 'maoliqiusi', 'MUS');
INSERT INTO `crm_data_region` VALUES (139, 3, ',3,139,', 2, '毛里塔尼亚', 'Mauritania', 'maolitaniya', 'MRT');
INSERT INTO `crm_data_region` VALUES (140, 4, ',4,140,', 2, '美国', 'United States', 'meiguo', 'USA');
INSERT INTO `crm_data_region` VALUES (141, 6, ',6,141,', 2, '美属萨摩亚', 'American Samoa', 'meishusamoya', 'ASM');
INSERT INTO `crm_data_region` VALUES (142, 4, ',4,142,', 2, '美属外岛', 'United States Minor Outlying Islands', 'meishuwaidao', 'UMI');
INSERT INTO `crm_data_region` VALUES (143, 1, ',1,143,', 2, '蒙古', 'Mongolia', 'menggu', 'MNG');
INSERT INTO `crm_data_region` VALUES (144, 4, ',4,144,', 2, '蒙特塞拉特', 'Montserrat', 'mengtesailate', 'MSR');
INSERT INTO `crm_data_region` VALUES (145, 1, ',1,145,', 2, '孟加拉', 'Bangladesh', 'mengjiala', 'BGD');
INSERT INTO `crm_data_region` VALUES (146, 6, ',6,146,', 2, '密克罗尼西亚', 'Micronesia', 'mikeluonixiya', 'FSM');
INSERT INTO `crm_data_region` VALUES (147, 5, ',5,147,', 2, '秘鲁', 'Peru', 'milu', 'PER');
INSERT INTO `crm_data_region` VALUES (148, 1, ',1,148,', 2, '缅甸', 'Myanmar', 'miandian', 'MMR');
INSERT INTO `crm_data_region` VALUES (149, 2, ',2,149,', 2, '摩尔多瓦', 'Moldova', 'moerduowa', 'MDA');
INSERT INTO `crm_data_region` VALUES (150, 3, ',3,150,', 2, '摩洛哥', 'Morocco', 'moluoge', 'MAR');
INSERT INTO `crm_data_region` VALUES (151, 2, ',2,151,', 2, '摩纳哥', 'Monaco', 'monage', 'MCO');
INSERT INTO `crm_data_region` VALUES (152, 3, ',3,152,', 2, '莫桑比克', 'Mozambique', 'mosangbike', 'MOZ');
INSERT INTO `crm_data_region` VALUES (153, 4, ',4,153,', 2, '墨西哥', 'Mexico', 'moxige', 'MEX');
INSERT INTO `crm_data_region` VALUES (154, 3, ',3,154,', 2, '纳米比亚', 'Namibia', 'namibiya', 'NAM');
INSERT INTO `crm_data_region` VALUES (155, 3, ',3,155,', 2, '南非', 'South Africa', 'nanfei', 'ZAF');
INSERT INTO `crm_data_region` VALUES (156, 0, ',156,', 1, '南极洲', 'Antarctica', 'nanjizhou', 'ATA');
INSERT INTO `crm_data_region` VALUES (157, 156, ',156,157,', 2, '南乔治亚和南桑德威奇群岛', 'South Georgia and South Sandwich Islands', 'nanqiaozhiyahenansangdeweiqiqundao', 'SGS');
INSERT INTO `crm_data_region` VALUES (158, 6, ',6,158,', 2, '瑙鲁', 'Nauru', 'lu', 'NRU');
INSERT INTO `crm_data_region` VALUES (159, 1, ',1,159,', 2, '尼泊尔', 'Nepal', 'niboer', 'NPL');
INSERT INTO `crm_data_region` VALUES (160, 4, ',4,160,', 2, '尼加拉瓜', 'Nicaragua', 'nijialagua', 'NIC');
INSERT INTO `crm_data_region` VALUES (161, 3, ',3,161,', 2, '尼日尔', 'Niger', 'nirier', 'NER');
INSERT INTO `crm_data_region` VALUES (162, 3, ',3,162,', 2, '尼日利亚', 'Nigeria', 'niriliya', 'NGA');
INSERT INTO `crm_data_region` VALUES (163, 6, ',6,163,', 2, '纽埃', 'Niue', 'niuai', 'NIU');
INSERT INTO `crm_data_region` VALUES (164, 2, ',2,164,', 2, '挪威', 'Norway', 'nuowei', 'NOR');
INSERT INTO `crm_data_region` VALUES (165, 4, ',4,165,', 2, '诺福克', 'Norfolk Island', 'nuofuke', 'NFK');
INSERT INTO `crm_data_region` VALUES (166, 6, ',6,166,', 2, '帕劳群岛', 'Palau', 'palaoqundao', 'PLW');
INSERT INTO `crm_data_region` VALUES (167, 6, ',6,167,', 2, '皮特凯恩', 'Pitcairn Islands', 'pitekaien', 'PCN');
INSERT INTO `crm_data_region` VALUES (168, 2, ',2,168,', 2, '葡萄牙', 'Portugal', 'putaoya', 'PRT');
INSERT INTO `crm_data_region` VALUES (169, 156, ',156,169,', 2, '乔治亚', 'Georgia', 'qiaozhiya', 'GEO');
INSERT INTO `crm_data_region` VALUES (170, 1, ',1,170,', 2, '日本', 'Japan', 'riben', 'JPN');
INSERT INTO `crm_data_region` VALUES (171, 2, ',2,171,', 2, '瑞典', 'Sweden', 'ruidian', 'SWE');
INSERT INTO `crm_data_region` VALUES (172, 2, ',2,172,', 2, '瑞士', 'Switzerland', 'ruishi', 'CHE');
INSERT INTO `crm_data_region` VALUES (173, 4, ',4,173,', 2, '萨尔瓦多', 'El Salvador', 'saerwaduo', 'SLV');
INSERT INTO `crm_data_region` VALUES (174, 6, ',6,174,', 2, '萨摩亚', 'Samoa', 'samoya', 'WSM');
INSERT INTO `crm_data_region` VALUES (175, 2, ',2,175,', 2, '塞尔维亚,黑山', 'Serbia,Montenegro', 'saierweiyaheishan', 'SCG');
INSERT INTO `crm_data_region` VALUES (176, 3, ',3,176,', 2, '塞拉利昂', 'Sierra Leone', 'sailaliang', 'SLE');
INSERT INTO `crm_data_region` VALUES (177, 3, ',3,177,', 2, '塞内加尔', 'Senegal', 'saineijiaer', 'SEN');
INSERT INTO `crm_data_region` VALUES (178, 1, ',1,178,', 2, '塞浦路斯', 'Cyprus', 'saipulusi', 'CYP');
INSERT INTO `crm_data_region` VALUES (179, 3, ',3,179,', 2, '塞舌尔', 'Seychelles', 'saisheer', 'SYC');
INSERT INTO `crm_data_region` VALUES (180, 1, ',1,180,', 2, '沙特阿拉伯', 'Saudi Arabia', 'shatealabo', 'SAU');
INSERT INTO `crm_data_region` VALUES (181, 6, ',6,181,', 2, '圣诞岛', 'Christmas Island', 'shengdandao', 'CXR');
INSERT INTO `crm_data_region` VALUES (182, 3, ',3,182,', 2, '圣多美和普林西比', 'Sao Tome and Principe', 'shengduomeihepulinxibi', 'STP');
INSERT INTO `crm_data_region` VALUES (183, 3, ',3,183,', 2, '圣赫勒拿', 'St.Helena', 'shenghelena', 'SHN');
INSERT INTO `crm_data_region` VALUES (184, 4, ',4,184,', 2, '圣基茨和尼维斯', 'St.Kitts and Nevis', 'shengjiciheniweisi', 'KNA');
INSERT INTO `crm_data_region` VALUES (185, 4, ',4,185,', 2, '圣卢西亚', 'St.Lucia', 'shengluxiya', 'LCA');
INSERT INTO `crm_data_region` VALUES (186, 2, ',2,186,', 2, '圣马力诺', 'San Marino', 'shengmalinuo', 'SMR');
INSERT INTO `crm_data_region` VALUES (187, 4, ',4,187,', 2, '圣皮埃尔和米克隆群岛', 'St.Pierre and Miquelon', 'shengpiaierhemikelongqundao', 'SPM');
INSERT INTO `crm_data_region` VALUES (188, 4, ',4,188,', 2, '圣文森特和格林纳丁斯', 'St.Vincent and the Grenadines', 'shengwensentehegelinnadingsi', 'VCT');
INSERT INTO `crm_data_region` VALUES (189, 1, ',1,189,', 2, '斯里兰卡', 'Sri Lanka', 'sililanka', 'LKA');
INSERT INTO `crm_data_region` VALUES (190, 2, ',2,190,', 2, '斯洛伐克', 'Slovakia', 'siluofake', 'SVK');
INSERT INTO `crm_data_region` VALUES (191, 2, ',2,191,', 2, '斯洛文尼亚', 'Slovenia', 'siluowenniya', 'SVN');
INSERT INTO `crm_data_region` VALUES (192, 2, ',2,192,', 2, '斯瓦尔巴和扬马廷', 'Svalbard and Jan Mayen', 'siwaerbaheyangmating', 'SJM');
INSERT INTO `crm_data_region` VALUES (193, 3, ',3,193,', 2, '斯威士兰', 'Swaziland', 'siweishilan', 'SWZ');
INSERT INTO `crm_data_region` VALUES (194, 3, ',3,194,', 2, '苏丹', 'Sudan', 'sudan', 'SDN');
INSERT INTO `crm_data_region` VALUES (195, 5, ',5,195,', 2, '苏里南', 'Suriname', 'sulinan', 'SUR');
INSERT INTO `crm_data_region` VALUES (196, 6, ',6,196,', 2, '所罗门群岛', 'Solomon Islands', 'suoluomenqundao', 'SLB');
INSERT INTO `crm_data_region` VALUES (197, 3, ',3,197,', 2, '索马里', 'Somalia', 'suomali', 'SOM');
INSERT INTO `crm_data_region` VALUES (198, 1, ',1,198,', 2, '塔吉克斯坦', 'Tajikistan', 'tajikesitan', 'TJK');
INSERT INTO `crm_data_region` VALUES (199, 1, ',1,199,', 2, '泰国', 'Thailand', 'taiguo', 'THA');
INSERT INTO `crm_data_region` VALUES (200, 3, ',3,200,', 2, '坦桑尼亚', 'Tanzania', 'tansangniya', 'TZA');
INSERT INTO `crm_data_region` VALUES (201, 6, ',6,201,', 2, '汤加', 'Tonga', 'tangjia', 'TON');
INSERT INTO `crm_data_region` VALUES (202, 4, ',4,202,', 2, '特克斯和凯克特斯群岛', 'Turks and Caicos Islands', 'tekesihekaiketesiqundao', 'TCA');
INSERT INTO `crm_data_region` VALUES (203, 5, ',5,203,', 2, '特里斯坦达昆哈', 'Tristan da Cunha', 'telisitandakunha', 'TAA');
INSERT INTO `crm_data_region` VALUES (204, 4, ',4,204,', 2, '特立尼达和多巴哥', 'Trinidad and Tobago', 'telinidaheduobage', 'TTO');
INSERT INTO `crm_data_region` VALUES (205, 3, ',3,205,', 2, '突尼斯', 'Tunisia', 'tunisi', 'TUN');
INSERT INTO `crm_data_region` VALUES (206, 6, ',6,206,', 2, '图瓦卢', 'Tuvalu', 'tuwalu', 'TUV');
INSERT INTO `crm_data_region` VALUES (207, 1, ',1,207,', 2, '土耳其', 'Turkey', 'tuerqi', 'TUR');
INSERT INTO `crm_data_region` VALUES (208, 1, ',1,208,', 2, '土库曼斯坦', 'Turkmenistan', 'tukumansitan', 'TKM');
INSERT INTO `crm_data_region` VALUES (209, 6, ',6,209,', 2, '托克劳', 'Tokelau', 'tuokelao', 'TKL');
INSERT INTO `crm_data_region` VALUES (210, 6, ',6,210,', 2, '瓦利斯和福图纳', 'Wallis and Futuna', 'walisihefutuna', 'WLF');
INSERT INTO `crm_data_region` VALUES (211, 6, ',6,211,', 2, '瓦努阿图', 'Vanuatu', 'wanuatu', 'VUT');
INSERT INTO `crm_data_region` VALUES (212, 4, ',4,212,', 2, '危地马拉', 'Guatemala', 'weidimala', 'GTM');
INSERT INTO `crm_data_region` VALUES (213, 4, ',4,213,', 2, '维尔京群岛，美属', 'Virgin Islands', 'weierjingqundaomeishu', 'VIR');
INSERT INTO `crm_data_region` VALUES (214, 4, ',4,214,', 2, '维尔京群岛，英属', 'Virgin Islands,British', 'weierjingqundaoyingshu', 'VGB');
INSERT INTO `crm_data_region` VALUES (215, 5, ',5,215,', 2, '委内瑞拉', 'Venezuela', 'weineiruila', 'VEN');
INSERT INTO `crm_data_region` VALUES (216, 1, ',1,216,', 2, '文莱', 'Brunei', 'wenlai', 'BRN');
INSERT INTO `crm_data_region` VALUES (217, 3, ',3,217,', 2, '乌干达', 'Uganda', 'wuganda', 'UGA');
INSERT INTO `crm_data_region` VALUES (218, 2, ',2,218,', 2, '乌克兰', 'Ukraine', 'wukelan', 'UKR');
INSERT INTO `crm_data_region` VALUES (219, 5, ',5,219,', 2, '乌拉圭', 'Uruguay', 'wulagui', 'URY');
INSERT INTO `crm_data_region` VALUES (220, 1, ',1,220,', 2, '乌兹别克斯坦', 'Uzbekistan', 'wuzibiekesitan', 'UZB');
INSERT INTO `crm_data_region` VALUES (221, 2, ',2,221,', 2, '西班牙', 'Spain', 'xibanya', 'ESP');
INSERT INTO `crm_data_region` VALUES (222, 2, ',2,222,', 2, '希腊', 'Greece', 'xila', 'GRC');
INSERT INTO `crm_data_region` VALUES (223, 1, ',1,223,', 2, '新加坡', 'Singapore', 'xinjiapo', 'SGP');
INSERT INTO `crm_data_region` VALUES (224, 6, ',6,224,', 2, '新喀里多尼亚', 'New Caledonia', 'xinkaliduoniya', 'NCL');
INSERT INTO `crm_data_region` VALUES (225, 6, ',6,225,', 2, '新西兰', 'New Zealand', 'xinxilan', 'NZL');
INSERT INTO `crm_data_region` VALUES (226, 2, ',2,226,', 2, '匈牙利', 'Hungary', 'xiongyali', 'HUN');
INSERT INTO `crm_data_region` VALUES (227, 1, ',1,227,', 2, '叙利亚', 'Syria', 'xuliya', 'SYR');
INSERT INTO `crm_data_region` VALUES (228, 4, ',4,228,', 2, '牙买加', 'Jamaica', 'yamaijia', 'JAM');
INSERT INTO `crm_data_region` VALUES (229, 1, ',1,229,', 2, '亚美尼亚', 'Armenia', 'yameiniya', 'ARM');
INSERT INTO `crm_data_region` VALUES (230, 1, ',1,230,', 2, '也门', 'Yemen', 'yemen', 'YEM');
INSERT INTO `crm_data_region` VALUES (231, 1, ',1,231,', 2, '伊拉克', 'Iraq', 'yilake', 'IRQ');
INSERT INTO `crm_data_region` VALUES (232, 1, ',1,232,', 2, '伊朗', 'Iran', 'yilang', 'IRN');
INSERT INTO `crm_data_region` VALUES (233, 1, ',1,233,', 2, '以色列', 'Israel', 'yiselie', 'ISR');
INSERT INTO `crm_data_region` VALUES (234, 2, ',2,234,', 2, '意大利', 'Italy', 'yidali', 'ITA');
INSERT INTO `crm_data_region` VALUES (235, 1, ',1,235,', 2, '印度', 'India', 'yindu', 'IND');
INSERT INTO `crm_data_region` VALUES (236, 1, ',1,236,', 2, '印度尼西亚', 'Indonesia', 'yindunixiya', 'IDN');
INSERT INTO `crm_data_region` VALUES (237, 2, ',2,237,', 2, '英国', 'United Kingdom', 'yingguo', 'GBR');
INSERT INTO `crm_data_region` VALUES (238, 3, ',3,238,', 2, '英属印度洋领地', 'British Indian Ocean Territory', 'yingshuyinduyanglingdi', 'IOT');
INSERT INTO `crm_data_region` VALUES (239, 1, ',1,239,', 2, '约旦', 'Jordan', 'yuedan', 'JOR');
INSERT INTO `crm_data_region` VALUES (240, 1, ',1,240,', 2, '越南', 'Vietnam', 'yuenan', 'VNM');
INSERT INTO `crm_data_region` VALUES (241, 3, ',3,241,', 2, '赞比亚', 'Zambia', 'zanbiya', 'ZMB');
INSERT INTO `crm_data_region` VALUES (242, 2, ',2,242,', 2, '泽西岛', 'Jersey', 'zexidao', 'JEY');
INSERT INTO `crm_data_region` VALUES (243, 3, ',3,243,', 2, '乍得', 'Chad', 'zhade', 'TCD');
INSERT INTO `crm_data_region` VALUES (244, 3, ',3,244,', 2, '直布罗陀', 'Gibraltar', 'zhibuluotuo', 'GIB');
INSERT INTO `crm_data_region` VALUES (245, 5, ',5,245,', 2, '智利', 'Chile', 'zhili', 'CHL');
INSERT INTO `crm_data_region` VALUES (246, 3, ',3,246,', 2, '中非共和国', 'Central African Republic', 'zhongfeigongheguo', 'CAF');
INSERT INTO `crm_data_region` VALUES (247, 7, ',1,7,247,', 3, '北京', 'Beijing', 'beijing', '11');
INSERT INTO `crm_data_region` VALUES (248, 7, ',1,7,248,', 3, '天津', 'Tianjin', 'tianjin', '12');
INSERT INTO `crm_data_region` VALUES (249, 7, ',1,7,249,', 3, '河北', 'Hebei', 'hebei', '13');
INSERT INTO `crm_data_region` VALUES (250, 7, ',1,7,250,', 3, '山西', 'Shanxi', 'shanxi', '14');
INSERT INTO `crm_data_region` VALUES (251, 7, ',1,7,251,', 3, '内蒙古', 'Inner Mongolia', 'neimenggu', '15');
INSERT INTO `crm_data_region` VALUES (252, 7, ',1,7,252,', 3, '辽宁', 'Liaoning', 'liaoning', '21');
INSERT INTO `crm_data_region` VALUES (253, 7, ',1,7,253,', 3, '吉林', 'Jilin', 'jilin', '22');
INSERT INTO `crm_data_region` VALUES (254, 7, ',1,7,254,', 3, '黑龙江', 'Heilongjiang', 'heilongjiang', '23');
INSERT INTO `crm_data_region` VALUES (255, 7, ',1,7,255,', 3, '上海', 'Shanghai', 'shanghai', '31');
INSERT INTO `crm_data_region` VALUES (256, 7, ',1,7,256,', 3, '江苏', 'Jiangsu', 'jiangsu', '32');
INSERT INTO `crm_data_region` VALUES (257, 7, ',1,7,257,', 3, '浙江', 'Zhejiang', 'zhejiang', '33');
INSERT INTO `crm_data_region` VALUES (258, 7, ',1,7,258,', 3, '安徽', 'Anhui', 'anhui', '34');
INSERT INTO `crm_data_region` VALUES (259, 7, ',1,7,259,', 3, '福建', 'Fujian', 'fujian', '35');
INSERT INTO `crm_data_region` VALUES (260, 7, ',1,7,260,', 3, '江西', 'Jiangxi', 'jiangxi', '36');
INSERT INTO `crm_data_region` VALUES (261, 7, ',1,7,261,', 3, '山东', 'Shandong', 'shandong', '37');
INSERT INTO `crm_data_region` VALUES (262, 7, ',1,7,262,', 3, '河南', 'Henan', 'henan', '41');
INSERT INTO `crm_data_region` VALUES (263, 7, ',1,7,263,', 3, '湖北', 'Hubei', 'hubei', '42');
INSERT INTO `crm_data_region` VALUES (264, 7, ',1,7,264,', 3, '湖南', 'Hunan', 'hunan', '43');
INSERT INTO `crm_data_region` VALUES (265, 7, ',1,7,265,', 3, '广东', 'Guangdong', 'guangdong', '44');
INSERT INTO `crm_data_region` VALUES (266, 7, ',1,7,266,', 3, '广西', 'Guangxi', 'guangxi', '45');
INSERT INTO `crm_data_region` VALUES (267, 7, ',1,7,267,', 3, '海南', 'Hainan', 'hainan', '46');
INSERT INTO `crm_data_region` VALUES (268, 7, ',1,7,268,', 3, '重庆', 'Chongqing', 'zhongqing', '50');
INSERT INTO `crm_data_region` VALUES (269, 7, ',1,7,269,', 3, '四川', 'Sichuan', 'sichuan', '51');
INSERT INTO `crm_data_region` VALUES (270, 7, ',1,7,270,', 3, '贵州', 'Guizhou', 'guizhou', '52');
INSERT INTO `crm_data_region` VALUES (271, 7, ',1,7,271,', 3, '云南', 'Yunnan', 'yunnan', '53');
INSERT INTO `crm_data_region` VALUES (272, 7, ',1,7,272,', 3, '西藏', 'Tibet', 'xicang', '54');
INSERT INTO `crm_data_region` VALUES (273, 7, ',1,7,273,', 3, '陕西', 'Shaanxi', 'shanxi', '61');
INSERT INTO `crm_data_region` VALUES (274, 7, ',1,7,274,', 3, '甘肃', 'Gansu', 'gansu', '62');
INSERT INTO `crm_data_region` VALUES (275, 7, ',1,7,275,', 3, '青海', 'Qinghai', 'qinghai', '63');
INSERT INTO `crm_data_region` VALUES (276, 7, ',1,7,276,', 3, '宁夏', 'Ningxia', 'ningxia', '64');
INSERT INTO `crm_data_region` VALUES (277, 7, ',1,7,277,', 3, '新疆', 'Xinjiang', 'xinjiang', '65');
INSERT INTO `crm_data_region` VALUES (278, 7, ',1,7,278,', 3, '台湾', 'Taiwan', 'taiwan', '71');
INSERT INTO `crm_data_region` VALUES (279, 7, ',1,7,279,', 3, '香港', 'Hongkong SAR', 'xianggang', '81');
INSERT INTO `crm_data_region` VALUES (280, 7, ',1,7,280,', 3, '澳门', 'Macao SAR', 'aomen', '82');
INSERT INTO `crm_data_region` VALUES (281, 25, ',6,25,281,', 3, '北部地区', 'Northern Territory', 'beibudiqu', 'NT');
INSERT INTO `crm_data_region` VALUES (282, 25, ',6,25,282,', 3, '堪培拉', 'Canberra', 'kanpeila', 'ACT');
INSERT INTO `crm_data_region` VALUES (283, 25, ',6,25,283,', 3, '昆士兰', 'Queensland', 'kunshilan', 'QLD');
INSERT INTO `crm_data_region` VALUES (284, 25, ',6,25,284,', 3, '南澳大利亚', 'South Australia', 'nanaodaliya', 'SA');
INSERT INTO `crm_data_region` VALUES (285, 25, ',6,25,285,', 3, '塔斯马尼亚', 'Tasmania', 'tasimaniya', 'TAS');
INSERT INTO `crm_data_region` VALUES (286, 25, ',6,25,286,', 3, '维多利亚', 'Victoria', 'weiduoliya', 'VIC');
INSERT INTO `crm_data_region` VALUES (287, 25, ',6,25,287,', 3, '西澳大利亚', 'Western Australia', 'xiaodaliya', 'WA');
INSERT INTO `crm_data_region` VALUES (288, 25, ',6,25,288,', 3, '新南威尔士', 'New South Wales', 'xinnanweiershi', 'NSW');
INSERT INTO `crm_data_region` VALUES (289, 89, ',1,89,289,', 3, '大邱', 'Daegu', 'daqiu', '27');
INSERT INTO `crm_data_region` VALUES (290, 89, ',1,89,290,', 3, '大田', 'Daejeon', 'datian', '30');
INSERT INTO `crm_data_region` VALUES (291, 89, ',1,89,291,', 3, '釜山', 'Busan', 'fushan', '26');
INSERT INTO `crm_data_region` VALUES (292, 89, ',1,89,292,', 3, '光州', 'Gwangju', 'guangzhou', '29');
INSERT INTO `crm_data_region` VALUES (293, 89, ',1,89,293,', 3, '济州特别自治道', 'Jeju-do', 'jizhoutebiezizhidao', '41');
INSERT INTO `crm_data_region` VALUES (294, 89, ',1,89,294,', 3, '江原道', 'Gangwon-do', 'jiangyuandao', '42');
INSERT INTO `crm_data_region` VALUES (295, 89, ',1,89,295,', 3, '京畿道', 'Gyeonggi-do', 'jingdao', '49');
INSERT INTO `crm_data_region` VALUES (296, 89, ',1,89,296,', 3, '庆尚北道', 'Chungcheongbuk-do', 'qingshangbeidao', '43');
INSERT INTO `crm_data_region` VALUES (297, 89, ',1,89,297,', 3, '庆尚南道', 'Chungcheongnam-do', 'qingshangnandao', '44');
INSERT INTO `crm_data_region` VALUES (298, 89, ',1,89,298,', 3, '全罗北道', 'Gyeongsangbuk-do', 'quanluobeidao', '47');
INSERT INTO `crm_data_region` VALUES (299, 89, ',1,89,299,', 3, '全罗南道', 'Gyeongsangnam-do', 'quanluonandao', '48');
INSERT INTO `crm_data_region` VALUES (300, 89, ',1,89,300,', 3, '仁川', 'Incheon', 'renchuan', '28');
INSERT INTO `crm_data_region` VALUES (301, 89, ',1,89,301,', 3, '首尔', 'Seoul', 'shouer', '11');
INSERT INTO `crm_data_region` VALUES (302, 89, ',1,89,302,', 3, '蔚山', 'Ulsan', 'weishan', '31');
INSERT INTO `crm_data_region` VALUES (303, 89, ',1,89,303,', 3, '忠清北道', 'Jeollabuk-do', 'zhongqingbeidao', '45');
INSERT INTO `crm_data_region` VALUES (304, 89, ',1,89,304,', 3, '忠清南道', 'Jeollanam-do', 'zhongqingnandao', '46');
INSERT INTO `crm_data_region` VALUES (305, 131, ',1,131,305,', 3, '槟榔屿', 'Pulau Pinang', 'langyu', 'PH');
INSERT INTO `crm_data_region` VALUES (306, 131, ',1,131,306,', 3, '玻璃市', 'Perlis', 'bolishi', 'PS');
INSERT INTO `crm_data_region` VALUES (307, 131, ',1,131,307,', 3, '丁加奴', 'Terengganu', 'dingjianu', 'TR');
INSERT INTO `crm_data_region` VALUES (308, 131, ',1,131,308,', 3, '吉打', 'Kedah', 'jida', 'KD');
INSERT INTO `crm_data_region` VALUES (309, 131, ',1,131,309,', 3, '吉兰丹', 'Kelantan', 'jilandan', 'KN');
INSERT INTO `crm_data_region` VALUES (310, 131, ',1,131,310,', 3, '吉隆坡', 'Kuala Lumpur', 'jilongpo', 'KL');
INSERT INTO `crm_data_region` VALUES (311, 131, ',1,131,311,', 3, '马六甲', 'Malacca', 'maliujia', 'ML');
INSERT INTO `crm_data_region` VALUES (312, 131, ',1,131,312,', 3, '纳闽', 'Labuan', 'namin', 'LB');
INSERT INTO `crm_data_region` VALUES (313, 131, ',1,131,313,', 3, '彭亨', 'Pahang', 'pengheng', 'PG');
INSERT INTO `crm_data_region` VALUES (314, 131, ',1,131,314,', 3, '霹雳', 'Perak', 'pi', 'PK');
INSERT INTO `crm_data_region` VALUES (315, 131, ',1,131,315,', 3, '柔佛', 'Johor', 'roufo', 'JH');
INSERT INTO `crm_data_region` VALUES (316, 131, ',1,131,316,', 3, '森美兰', 'Negeri Sembilan', 'senmeilan', 'NS');
INSERT INTO `crm_data_region` VALUES (317, 131, ',1,131,317,', 3, '沙巴', 'Sabah', 'shaba', 'SB');
INSERT INTO `crm_data_region` VALUES (318, 131, ',1,131,318,', 3, '沙捞越', 'Sarawak', 'shalaoyue', 'SR');
INSERT INTO `crm_data_region` VALUES (319, 131, ',1,131,319,', 3, '雪兰莪', 'Selangor', 'xuelan', 'SL');
INSERT INTO `crm_data_region` VALUES (320, 140, ',4,140,320,', 3, '阿肯色', 'Arkansas', 'akense', 'AR');
INSERT INTO `crm_data_region` VALUES (321, 140, ',4,140,321,', 3, '阿拉巴马', 'Alabama', 'alabama', 'AL');
INSERT INTO `crm_data_region` VALUES (322, 140, ',4,140,322,', 3, '阿拉斯加', 'Alaska', 'alasijia', 'AK');
INSERT INTO `crm_data_region` VALUES (323, 140, ',4,140,323,', 3, '爱达荷', 'Idaho', 'aidahe', 'ID');
INSERT INTO `crm_data_region` VALUES (324, 140, ',4,140,324,', 3, '爱荷华', 'Iowa', 'aihehua', 'IA');
INSERT INTO `crm_data_region` VALUES (325, 140, ',4,140,325,', 3, '北达科他', 'North Dakota', 'beidaketa', 'ND');
INSERT INTO `crm_data_region` VALUES (326, 140, ',4,140,326,', 3, '北卡罗来纳', 'North Carolina', 'beikaluolaina', 'NC');
INSERT INTO `crm_data_region` VALUES (327, 140, ',4,140,327,', 3, '宾夕法尼亚', 'Pennsylvania', 'binxifaniya', 'PA');
INSERT INTO `crm_data_region` VALUES (328, 140, ',4,140,328,', 3, '德克萨斯', 'Texas', 'dekesasi', 'TX');
INSERT INTO `crm_data_region` VALUES (329, 140, ',4,140,329,', 3, '俄亥俄', 'Ohio', 'ehaie', 'OH');
INSERT INTO `crm_data_region` VALUES (330, 140, ',4,140,330,', 3, '俄克拉荷马', 'Oklahoma', 'ekelahema', 'OK');
INSERT INTO `crm_data_region` VALUES (331, 140, ',4,140,331,', 3, '俄勒冈', 'Oregon', 'elegang', 'OR');
INSERT INTO `crm_data_region` VALUES (332, 140, ',4,140,332,', 3, '佛罗里达', 'Florida', 'foluolida', 'FL');
INSERT INTO `crm_data_region` VALUES (333, 140, ',4,140,333,', 3, '佛蒙特', 'Vermont', 'fomengte', 'VT');
INSERT INTO `crm_data_region` VALUES (334, 140, ',4,140,334,', 3, '哥伦比亚特区', 'District of Columbia', 'gelunbiyatequ', 'DC');
INSERT INTO `crm_data_region` VALUES (335, 140, ',4,140,335,', 3, '华盛顿', 'Washington', 'huashengdun', 'WA');
INSERT INTO `crm_data_region` VALUES (336, 140, ',4,140,336,', 3, '怀俄明', 'Wyoming', 'huaieming', 'WY');
INSERT INTO `crm_data_region` VALUES (337, 140, ',4,140,337,', 3, '加利福尼亚', 'California', 'jialifuniya', 'CA');
INSERT INTO `crm_data_region` VALUES (338, 140, ',4,140,338,', 3, '堪萨斯', 'Kansas', 'kansasi', 'KS');
INSERT INTO `crm_data_region` VALUES (339, 140, ',4,140,339,', 3, '康涅狄格', 'Connecticut', 'kangniedige', 'CT');
INSERT INTO `crm_data_region` VALUES (340, 140, ',4,140,340,', 3, '科罗拉多', 'Colorado', 'keluoladuo', 'CO');
INSERT INTO `crm_data_region` VALUES (341, 140, ',4,140,341,', 3, '肯塔基', 'Kentucky', 'kentaji', 'KY');
INSERT INTO `crm_data_region` VALUES (342, 140, ',4,140,342,', 3, '路易斯安那', 'Louisiana', 'luyisianna', 'LA');
INSERT INTO `crm_data_region` VALUES (343, 140, ',4,140,343,', 3, '罗德岛', 'Rhode Island', 'luodedao', 'RI');
INSERT INTO `crm_data_region` VALUES (344, 140, ',4,140,344,', 3, '马里兰', 'Maryland', 'malilan', 'MD');
INSERT INTO `crm_data_region` VALUES (345, 140, ',4,140,345,', 3, '马萨诸塞', 'Massachusetts', 'masazhusai', 'MA');
INSERT INTO `crm_data_region` VALUES (346, 140, ',4,140,346,', 3, '蒙大拿', 'Montana', 'mengdana', 'MT');
INSERT INTO `crm_data_region` VALUES (347, 140, ',4,140,347,', 3, '密苏里', 'Missouri', 'misuli', 'MO');
INSERT INTO `crm_data_region` VALUES (348, 140, ',4,140,348,', 3, '密西西比', 'Mississippi', 'mixixibi', 'MS');
INSERT INTO `crm_data_region` VALUES (349, 140, ',4,140,349,', 3, '密歇根', 'Michigan', 'mixiegen', 'MI');
INSERT INTO `crm_data_region` VALUES (350, 140, ',4,140,350,', 3, '缅因', 'Maine', 'mianyin', 'ME');
INSERT INTO `crm_data_region` VALUES (351, 140, ',4,140,351,', 3, '明尼苏达', 'Minnesota', 'mingnisuda', 'MN');
INSERT INTO `crm_data_region` VALUES (352, 140, ',4,140,352,', 3, '南达科他', 'South Dakota', 'nandaketa', 'SD');
INSERT INTO `crm_data_region` VALUES (353, 140, ',4,140,353,', 3, '南卡罗来纳', 'South Carolina', 'nankaluolaina', 'SC');
INSERT INTO `crm_data_region` VALUES (354, 140, ',4,140,354,', 3, '内布拉斯加', 'Nebraska', 'neibulasijia', 'NE');
INSERT INTO `crm_data_region` VALUES (355, 140, ',4,140,355,', 3, '内华达', 'Nevada', 'neihuada', 'NV');
INSERT INTO `crm_data_region` VALUES (356, 140, ',4,140,356,', 3, '纽约', 'New York', 'niuyue', 'NY');
INSERT INTO `crm_data_region` VALUES (357, 140, ',4,140,357,', 3, '特拉华', 'Delaware', 'telahua', 'DE');
INSERT INTO `crm_data_region` VALUES (358, 140, ',4,140,358,', 3, '田纳西', 'Tennessee', 'tiannaxi', 'TN');
INSERT INTO `crm_data_region` VALUES (359, 140, ',4,140,359,', 3, '威斯康星', 'Wisconsin', 'weisikangxing', 'WI');
INSERT INTO `crm_data_region` VALUES (360, 140, ',4,140,360,', 3, '维吉尼亚', 'Virginia', 'weijiniya', 'VA');
INSERT INTO `crm_data_region` VALUES (361, 140, ',4,140,361,', 3, '西佛吉尼亚', 'West Virginia', 'xifojiniya', 'WV');
INSERT INTO `crm_data_region` VALUES (362, 140, ',4,140,362,', 3, '夏威夷', 'Hawaii', 'xiaweiyi', 'HI');
INSERT INTO `crm_data_region` VALUES (363, 140, ',4,140,363,', 3, '新罕布什尔', 'New Hampshire', 'xinhanbushier', 'NH');
INSERT INTO `crm_data_region` VALUES (364, 140, ',4,140,364,', 3, '新墨西哥', 'New Mexico', 'xinmoxige', 'NM');
INSERT INTO `crm_data_region` VALUES (365, 140, ',4,140,365,', 3, '新泽西', 'New Jersey', 'xinzexi', 'NJ');
INSERT INTO `crm_data_region` VALUES (366, 140, ',4,140,366,', 3, '亚利桑那', 'Arizona', 'yalisangna', 'AZ');
INSERT INTO `crm_data_region` VALUES (367, 140, ',4,140,367,', 3, '伊利诺斯', 'Illinois', 'yilinuosi', 'IL');
INSERT INTO `crm_data_region` VALUES (368, 140, ',4,140,368,', 3, '印第安那', 'Indiana', 'yindianna', 'IN');
INSERT INTO `crm_data_region` VALUES (369, 140, ',4,140,369,', 3, '犹他', 'Utah', 'youta', 'UT');
INSERT INTO `crm_data_region` VALUES (370, 140, ',4,140,370,', 3, '佐治亚', 'Georgia', 'zuozhiya', 'GA');
INSERT INTO `crm_data_region` VALUES (371, 237, ',2,237,371,', 3, '北爱尔兰', 'Northern Ireland', 'beiaierlan', 'NIR');
INSERT INTO `crm_data_region` VALUES (372, 237, ',2,237,372,', 3, '苏格兰', 'Scotland', 'sugelan', 'SCT');
INSERT INTO `crm_data_region` VALUES (373, 237, ',2,237,373,', 3, '威尔士', 'Wales', 'weiershi', 'WLS');
INSERT INTO `crm_data_region` VALUES (374, 237, ',2,237,374,', 3, '英格兰', 'England', 'yinggelan', 'ENG');
INSERT INTO `crm_data_region` VALUES (375, 8, ',2,8,375,', 3, '爱尔巴桑', 'Elbasan', 'aierbasang', 'EL');
INSERT INTO `crm_data_region` VALUES (376, 8, ',2,8,376,', 3, '迪勃拉', 'Diber', 'dibola', 'DI');
INSERT INTO `crm_data_region` VALUES (377, 8, ',2,8,377,', 3, '地拉那', 'Tirane', 'dilana', 'TR');
INSERT INTO `crm_data_region` VALUES (378, 8, ',2,8,378,', 3, '都拉斯', 'Durres', 'dulasi', 'DR');
INSERT INTO `crm_data_region` VALUES (379, 8, ',2,8,379,', 3, '发罗拉', 'Vlore', 'faluola', 'VL');
INSERT INTO `crm_data_region` VALUES (380, 8, ',2,8,380,', 3, '费里', 'Fier', 'feili', 'FR');
INSERT INTO `crm_data_region` VALUES (381, 8, ',2,8,381,', 3, '吉诺卡斯特', 'Gjirokaster', 'jinuokasite', 'GJ');
INSERT INTO `crm_data_region` VALUES (382, 8, ',2,8,382,', 3, '科尔察', 'Korce', 'keercha', 'KO');
INSERT INTO `crm_data_region` VALUES (383, 8, ',2,8,383,', 3, '库克斯', 'Kukes', 'kukesi', 'KU');
INSERT INTO `crm_data_region` VALUES (384, 8, ',2,8,384,', 3, '莱什', 'Lezhe', 'laishi', 'LE');
INSERT INTO `crm_data_region` VALUES (385, 8, ',2,8,385,', 3, '培拉特', 'Berat', 'peilate', 'BR');
INSERT INTO `crm_data_region` VALUES (386, 8, ',2,8,386,', 3, '斯库台', 'Shkoder', 'sikutai', 'SH');
INSERT INTO `crm_data_region` VALUES (387, 9, ',3,9,387,', 3, '阿德拉尔', 'Adrar', 'adelaer', 'ADR');
INSERT INTO `crm_data_region` VALUES (388, 9, ',3,9,388,', 3, '阿尔及尔', 'Alger', 'aerjier', 'ALG');
INSERT INTO `crm_data_region` VALUES (389, 9, ',3,9,389,', 3, '艾因·德夫拉', 'Ain Defla', 'aiyin', 'ADE');
INSERT INTO `crm_data_region` VALUES (390, 9, ',3,9,390,', 3, '艾因·蒂姆尚特', 'Ain Temouchent', 'aiyin', 'ATE');
INSERT INTO `crm_data_region` VALUES (391, 9, ',3,9,391,', 3, '安纳巴', 'Annaba', 'annaba', 'AAE');
INSERT INTO `crm_data_region` VALUES (392, 9, ',3,9,392,', 3, '奥兰', 'Oran', 'aolan', 'ORA');
INSERT INTO `crm_data_region` VALUES (393, 9, ',3,9,393,', 3, '巴特纳', 'Batna', 'batena', 'BAT');
INSERT INTO `crm_data_region` VALUES (394, 9, ',3,9,394,', 3, '贝贾亚', 'Bejaia', 'beijiaya', 'BJA');
INSERT INTO `crm_data_region` VALUES (395, 9, ',3,9,395,', 3, '贝沙尔', 'Bechar', 'beishaer', 'BEC');
INSERT INTO `crm_data_region` VALUES (396, 9, ',3,9,396,', 3, '贝伊德', 'El Bayadh', 'beiyide', 'EBA');
INSERT INTO `crm_data_region` VALUES (397, 9, ',3,9,397,', 3, '比斯克拉', 'Biskra', 'bisikela', 'BIS');
INSERT INTO `crm_data_region` VALUES (398, 9, ',3,9,398,', 3, '布尔吉·布阿雷里吉', 'Bordj Bou Arreridj', 'buerji', 'BOR');
INSERT INTO `crm_data_region` VALUES (399, 9, ',3,9,399,', 3, '布利达', 'Blida', 'bulida', 'BLI');
INSERT INTO `crm_data_region` VALUES (400, 9, ',3,9,400,', 3, '布迈德斯', 'Boumerdes', 'bumaidesi', 'BOU');
INSERT INTO `crm_data_region` VALUES (401, 9, ',3,9,401,', 3, '布依拉', 'Bouira', 'buyila', 'BOA');
INSERT INTO `crm_data_region` VALUES (402, 9, ',3,9,402,', 3, '蒂巴扎', 'Tipaza', 'dibazha', 'TIP');
INSERT INTO `crm_data_region` VALUES (403, 9, ',3,9,403,', 3, '蒂斯姆西勒特', 'Tissemsilt', 'disimuxilete', 'TIS');
INSERT INTO `crm_data_region` VALUES (404, 9, ',3,9,404,', 3, '盖尔达耶', 'Ghardaia', 'gaierdaye', 'GHA');
INSERT INTO `crm_data_region` VALUES (405, 9, ',3,9,405,', 3, '盖尔马', 'Guelma', 'gaierma', 'GUE');
INSERT INTO `crm_data_region` VALUES (406, 9, ',3,9,406,', 3, '罕西拉', 'Khenchela', 'hanxila', 'KHE');
INSERT INTO `crm_data_region` VALUES (407, 9, ',3,9,407,', 3, '赫利赞', 'Relizane', 'helizan', 'REL');
INSERT INTO `crm_data_region` VALUES (408, 9, ',3,9,408,', 3, '吉杰尔', 'Jijel', 'jijieer', 'JIJ');
INSERT INTO `crm_data_region` VALUES (409, 9, ',3,9,409,', 3, '杰勒法', 'Djelfa', 'jielefa', 'DJE');
INSERT INTO `crm_data_region` VALUES (410, 9, ',3,9,410,', 3, '君士坦丁', 'Constantine', 'junshitanding', 'CZL');
INSERT INTO `crm_data_region` VALUES (411, 9, ',3,9,411,', 3, '拉格瓦特', 'Laghouat', 'lagewate', 'LAG');
INSERT INTO `crm_data_region` VALUES (412, 9, ',3,9,412,', 3, '马斯卡拉', 'Mascara', 'masikala', 'MUA');
INSERT INTO `crm_data_region` VALUES (413, 9, ',3,9,413,', 3, '麦迪亚', 'Medea', 'maidiya', 'MED');
INSERT INTO `crm_data_region` VALUES (414, 9, ',3,9,414,', 3, '密拉', 'Mila', 'mila', 'MIL');
INSERT INTO `crm_data_region` VALUES (415, 9, ',3,9,415,', 3, '莫斯塔加纳姆', 'Mostaganem', 'mositajianamu', 'MOS');
INSERT INTO `crm_data_region` VALUES (416, 9, ',3,9,416,', 3, '姆西拉', 'Msila', 'muxila', 'MSI');
INSERT INTO `crm_data_region` VALUES (417, 9, ',3,9,417,', 3, '纳阿马', 'Naama', 'naama', 'NAA');
INSERT INTO `crm_data_region` VALUES (418, 9, ',3,9,418,', 3, '塞蒂夫', 'Setif', 'saidifu', 'SET');
INSERT INTO `crm_data_region` VALUES (419, 9, ',3,9,419,', 3, '赛伊达', 'Saida', 'saiyida', 'SAI');
INSERT INTO `crm_data_region` VALUES (420, 9, ',3,9,420,', 3, '斯基克达', 'Skikda', 'sijikeda', 'SKI');
INSERT INTO `crm_data_region` VALUES (421, 9, ',3,9,421,', 3, '苏克·阿赫拉斯', 'Souk Ahras', 'suke', 'SAH');
INSERT INTO `crm_data_region` VALUES (422, 9, ',3,9,422,', 3, '塔里夫', 'El Tarf', 'talifu', 'ETA');
INSERT INTO `crm_data_region` VALUES (423, 9, ',3,9,423,', 3, '塔曼拉塞特', 'Tamanghasset', 'tamanlasaite', 'TAM');
INSERT INTO `crm_data_region` VALUES (424, 9, ',3,9,424,', 3, '特贝萨', 'Tebessa', 'tebeisa', 'TEB');
INSERT INTO `crm_data_region` VALUES (425, 9, ',3,9,425,', 3, '特莱姆森', 'Tlemcen', 'telaimusen', 'TLE');
INSERT INTO `crm_data_region` VALUES (426, 9, ',3,9,426,', 3, '提济乌祖', 'Tizi Ouzou', 'tijiwuzu', 'IOU');
INSERT INTO `crm_data_region` VALUES (427, 9, ',3,9,427,', 3, '提亚雷特', 'Tiaret', 'tiyaleite', 'TIA');
INSERT INTO `crm_data_region` VALUES (428, 9, ',3,9,428,', 3, '廷杜夫', 'Tindouf', 'tingdufu', 'TIN');
INSERT INTO `crm_data_region` VALUES (429, 9, ',3,9,429,', 3, '瓦德', 'El Oued', 'wade', 'EOU');
INSERT INTO `crm_data_region` VALUES (430, 9, ',3,9,430,', 3, '瓦尔格拉', 'Ouargla', 'waergela', 'OUA');
INSERT INTO `crm_data_region` VALUES (431, 9, ',3,9,431,', 3, '乌姆布阿基', 'Oum el Bouaghi', 'wumubuaji', 'OEB');
INSERT INTO `crm_data_region` VALUES (432, 9, ',3,9,432,', 3, '西迪贝勒阿贝斯', 'Sidi Bel Abbes', 'xidibeileabeisi', 'SBA');
INSERT INTO `crm_data_region` VALUES (433, 9, ',3,9,433,', 3, '谢里夫', 'Chlef', 'xielifu', 'CHL');
INSERT INTO `crm_data_region` VALUES (434, 9, ',3,9,434,', 3, '伊利齐', 'Illizi', 'yiliqi', 'ILL');
INSERT INTO `crm_data_region` VALUES (435, 10, ',1,10,435,', 3, '赫拉特', 'Herat', 'helate', 'HEA');
INSERT INTO `crm_data_region` VALUES (436, 10, ',1,10,436,', 3, '喀布尔', 'Kabul', 'kabuer', 'KBL');
INSERT INTO `crm_data_region` VALUES (437, 10, ',1,10,437,', 3, '坎大哈', 'Kandahar', 'kandaha', 'KDH');
INSERT INTO `crm_data_region` VALUES (438, 10, ',1,10,438,', 3, '马扎里沙里夫', 'Mazar-i Sharif', 'mazhalishalifu', 'MZR');
INSERT INTO `crm_data_region` VALUES (439, 11, ',5,11,439,', 3, '巴拉那', 'Parana', 'balana', 'PRA');
INSERT INTO `crm_data_region` VALUES (440, 11, ',5,11,440,', 3, '别德马', 'Viedma', 'biedema', 'VDM');
INSERT INTO `crm_data_region` VALUES (441, 11, ',5,11,441,', 3, '波萨达斯', 'Posadas', 'bosadasi', 'PSS');
INSERT INTO `crm_data_region` VALUES (442, 11, ',5,11,442,', 3, '布兰卡港', 'Bahia Blanca', 'bulankagang', 'BHI');
INSERT INTO `crm_data_region` VALUES (443, 11, ',5,11,443,', 3, '布宜诺斯艾利斯', 'Buenos Aires', 'buyinuosiailisi', 'BUE');
INSERT INTO `crm_data_region` VALUES (444, 11, ',5,11,444,', 3, '福莫萨', 'Formosa', 'fumosa', 'FMA');
INSERT INTO `crm_data_region` VALUES (445, 11, ',5,11,445,', 3, '胡胡伊', 'Jujuy', 'huhuyi', 'JUJ');
INSERT INTO `crm_data_region` VALUES (446, 11, ',5,11,446,', 3, '卡塔马卡', 'Catamarca', 'katamaka', 'CTC');
INSERT INTO `crm_data_region` VALUES (447, 11, ',5,11,447,', 3, '科尔多瓦', 'Cordoba', 'keerduowa', 'COR');
INSERT INTO `crm_data_region` VALUES (448, 11, ',5,11,448,', 3, '科连特斯', 'Corrientes', 'keliantesi', 'CNQ');
INSERT INTO `crm_data_region` VALUES (449, 11, ',5,11,449,', 3, '克劳斯城', 'Villa Krause', 'kelaosicheng', 'VLK');
INSERT INTO `crm_data_region` VALUES (450, 11, ',5,11,450,', 3, '肯考迪娅', 'Concordia', 'kenkaodi', 'COC');
INSERT INTO `crm_data_region` VALUES (451, 11, ',5,11,451,', 3, '拉里奥哈', 'La Rioja', 'laliaoha', 'IRJ');
INSERT INTO `crm_data_region` VALUES (452, 11, ',5,11,452,', 3, '拉普拉塔', 'La Plata', 'lapulata', 'LPG');
INSERT INTO `crm_data_region` VALUES (453, 11, ',5,11,453,', 3, '雷西斯滕匹亚', 'Resistencia', 'leixisipiya', 'RES');
INSERT INTO `crm_data_region` VALUES (454, 11, ',5,11,454,', 3, '里奥加耶戈斯', 'Rio Gallegos', 'liaojiayegesi', 'RGL');
INSERT INTO `crm_data_region` VALUES (455, 11, ',5,11,455,', 3, '里奥夸尔托', 'Rio Cuarto', 'liaokuaertuo', 'RCU');
INSERT INTO `crm_data_region` VALUES (456, 11, ',5,11,456,', 3, '里瓦达维亚海军准将城', 'Comodoro Rivadavia', 'liwadaweiyahaijunzhunjiangcheng', 'CRD');
INSERT INTO `crm_data_region` VALUES (457, 11, ',5,11,457,', 3, '罗萨里奥', 'Rosario', 'luosaliao', 'ROS');
INSERT INTO `crm_data_region` VALUES (458, 11, ',5,11,458,', 3, '罗森', 'Rawson', 'luosen', 'RWO');
INSERT INTO `crm_data_region` VALUES (459, 11, ',5,11,459,', 3, '马德普拉塔', 'Mar del Plata', 'madepulata', 'MDQ');
INSERT INTO `crm_data_region` VALUES (460, 11, ',5,11,460,', 3, '门多萨', 'Mendoza', 'menduosa', 'MDZ');
INSERT INTO `crm_data_region` VALUES (461, 11, ',5,11,461,', 3, '内乌肯', 'Neuquen', 'neiwuken', 'NQN');
INSERT INTO `crm_data_region` VALUES (462, 11, ',5,11,462,', 3, '萨尔塔', 'Salta', 'saerta', 'SLA');
INSERT INTO `crm_data_region` VALUES (463, 11, ',5,11,463,', 3, '圣地亚哥-德尔埃斯特罗', 'Santiago del Estero', 'shengdiyagedeeraisiteluo', 'SDE');
INSERT INTO `crm_data_region` VALUES (464, 11, ',5,11,464,', 3, '圣菲', 'Santa Fe', 'shengfei', 'SFN');
INSERT INTO `crm_data_region` VALUES (465, 11, ',5,11,465,', 3, '圣胡安', 'San Juan', 'shenghuan', 'UAQ');
INSERT INTO `crm_data_region` VALUES (466, 11, ',5,11,466,', 3, '圣拉斐尔', 'San Rafael', 'shenglaer', 'AFA');
INSERT INTO `crm_data_region` VALUES (467, 11, ',5,11,467,', 3, '圣路易斯', 'San Luis', 'shengluyisi', 'LUQ');
INSERT INTO `crm_data_region` VALUES (468, 11, ',5,11,468,', 3, '圣罗莎', 'Santa Rosa', 'shengluosha', 'RSA');
INSERT INTO `crm_data_region` VALUES (469, 11, ',5,11,469,', 3, '圣米格尔-德图库曼', 'San Miguel de Tucuman', 'shengmigeerdetukuman', 'SMC');
INSERT INTO `crm_data_region` VALUES (470, 11, ',5,11,470,', 3, '圣尼古拉斯', 'San Nicolas', 'shengnigulasi', 'SNS');
INSERT INTO `crm_data_region` VALUES (471, 11, ',5,11,471,', 3, '特雷利乌', 'Trelew', 'teleiliwu', 'REL');
INSERT INTO `crm_data_region` VALUES (472, 11, ',5,11,472,', 3, '乌斯怀亚', 'Ushuaia', 'wusihuaiya', 'USH');
INSERT INTO `crm_data_region` VALUES (473, 12, ',1,12,473,', 3, '阿布扎比', 'Abu Dhabi', 'abuzhabi', 'AZ');
INSERT INTO `crm_data_region` VALUES (474, 12, ',1,12,474,', 3, '艾因', 'Al l\'Ayn', 'aiyin', 'AL');
INSERT INTO `crm_data_region` VALUES (475, 12, ',1,12,475,', 3, '迪拜', 'Dubai', 'dibai', 'DU');
INSERT INTO `crm_data_region` VALUES (476, 12, ',1,12,476,', 3, '沙迦', 'Ash Shariqah', 'sha', 'SH');
INSERT INTO `crm_data_region` VALUES (477, 14, ',1,14,477,', 3, '巴提奈地区', 'Al-Batinah', 'batinaidiqu', 'BA');
INSERT INTO `crm_data_region` VALUES (478, 14, ',1,14,478,', 3, '达希莱地区', 'Az-Zahirah', 'daxilaidiqu', 'ZA');
INSERT INTO `crm_data_region` VALUES (479, 14, ',1,14,479,', 3, '东部地区', 'Ash-Sharqiyah', 'dongbudiqu', 'SH');
INSERT INTO `crm_data_region` VALUES (480, 14, ',1,14,480,', 3, '马斯喀特省', 'Masqat', 'masikatesheng', 'MA');
INSERT INTO `crm_data_region` VALUES (481, 14, ',1,14,481,', 3, '穆桑达姆省', 'Musandam', 'musangdamusheng', 'MU');
INSERT INTO `crm_data_region` VALUES (482, 14, ',1,14,482,', 3, '内地地区', 'Ad-Dakhiliyah', 'neididiqu', 'DA');
INSERT INTO `crm_data_region` VALUES (483, 14, ',1,14,483,', 3, '中部地区', 'Al-Wusta', 'zhongbudiqu', 'WU');
INSERT INTO `crm_data_region` VALUES (484, 14, ',1,14,484,', 3, '佐法尔省', 'Zufar', 'zuofaersheng', 'ZU');
INSERT INTO `crm_data_region` VALUES (485, 15, ',1,15,485,', 3, '阿布歇隆', 'Abseron', 'abuxielong', 'ABS');
INSERT INTO `crm_data_region` VALUES (486, 15, ',1,15,486,', 3, '哈奇马斯', 'Xacmaz', 'haqimasi', 'XAC');
INSERT INTO `crm_data_region` VALUES (487, 15, ',1,15,487,', 3, '卡尔巴卡尔', 'Kalbacar', 'kaerbakaer', 'KAL');
INSERT INTO `crm_data_region` VALUES (488, 15, ',1,15,488,', 3, '卡扎赫', 'Qazax', 'kazhahe', 'QAZ');
INSERT INTO `crm_data_region` VALUES (489, 15, ',1,15,489,', 3, '连科兰', 'Lankaran', 'liankelan', 'LAN');
INSERT INTO `crm_data_region` VALUES (490, 15, ',1,15,490,', 3, '密尔-卡拉巴赫', 'Mil-Qarabax', 'mierkalabahe', 'MQA');
INSERT INTO `crm_data_region` VALUES (491, 15, ',1,15,491,', 3, '穆甘-萨连', 'Mugan-Salyan', 'mugansalian', 'MSA');
INSERT INTO `crm_data_region` VALUES (492, 15, ',1,15,492,', 3, '纳戈尔诺－卡拉巴赫', 'Nagorni-Qarabax', 'nageernuokalabahe', 'NQA');
INSERT INTO `crm_data_region` VALUES (493, 15, ',1,15,493,', 3, '纳希切万', 'Naxcivan', 'naxiqiewan', 'NX');
INSERT INTO `crm_data_region` VALUES (494, 15, ',1,15,494,', 3, '普利亚拉克斯', 'Priaraks', 'puliyalakesi', 'PRI');
INSERT INTO `crm_data_region` VALUES (495, 15, ',1,15,495,', 3, '舍基', 'Saki', 'sheji', 'SA');
INSERT INTO `crm_data_region` VALUES (496, 15, ',1,15,496,', 3, '苏姆盖特', 'Sumqayit', 'sumugaite', 'SMC');
INSERT INTO `crm_data_region` VALUES (497, 15, ',1,15,497,', 3, '锡尔万', 'Sirvan', 'xierwan', 'SIR');
INSERT INTO `crm_data_region` VALUES (498, 15, ',1,15,498,', 3, '占贾', 'Ganca', 'zhanjia', 'GA');
INSERT INTO `crm_data_region` VALUES (499, 17, ',3,17,499,', 3, '阿斯旺', 'Aswan', 'asiwang', 'ASW');
INSERT INTO `crm_data_region` VALUES (500, 17, ',3,17,500,', 3, '古尔代盖', 'Al Ghurdaqah', 'guerdaigai', 'GBY');
INSERT INTO `crm_data_region` VALUES (501, 17, ',3,17,501,', 3, '开罗', 'Cairo', 'kailuo', 'CAI');
INSERT INTO `crm_data_region` VALUES (502, 17, ',3,17,502,', 3, '苏布拉开马', 'Shubra al Khaymah', 'subulakaima', 'SKH');
INSERT INTO `crm_data_region` VALUES (503, 17, ',3,17,503,', 3, '亚历山大', 'Alexandria', 'yalishanda', 'ALY');
INSERT INTO `crm_data_region` VALUES (504, 18, ',3,18,504,', 3, '阿法尔', 'Afar', 'afaer', 'AF');
INSERT INTO `crm_data_region` VALUES (505, 18, ',3,18,505,', 3, '阿姆哈拉', 'Amara', 'amuhala', 'AH');
INSERT INTO `crm_data_region` VALUES (506, 18, ',3,18,506,', 3, '奥罗米亚', 'Oromiya', 'aoluomiya', 'OR');
INSERT INTO `crm_data_region` VALUES (507, 18, ',3,18,507,', 3, '宾香古尔', 'Binshangul Gumuz', 'binxiangguer', 'BG');
INSERT INTO `crm_data_region` VALUES (508, 18, ',3,18,508,', 3, '德雷达瓦', 'Dire Dawa', 'deleidawa', 'DD');
INSERT INTO `crm_data_region` VALUES (509, 18, ',3,18,509,', 3, '甘贝拉各族', 'Gambela Hizboch', 'ganbeilagezu', 'GB');
INSERT INTO `crm_data_region` VALUES (510, 18, ',3,18,510,', 3, '哈勒里民族', 'Hareri  Hizb', 'haleliminzu', 'HR');
INSERT INTO `crm_data_region` VALUES (511, 18, ',3,18,511,', 3, '南方各族', 'YeDebub Biheroch', 'nanfanggezu', 'SN');
INSERT INTO `crm_data_region` VALUES (512, 18, ',3,18,512,', 3, '索马里', 'Sumale', 'suomali', 'SM');
INSERT INTO `crm_data_region` VALUES (513, 18, ',3,18,513,', 3, '提格雷', 'Tigray', 'tigelei', 'TG');
INSERT INTO `crm_data_region` VALUES (514, 18, ',3,18,514,', 3, '亚的斯亚贝巴', 'Adis abeba', 'yadesiyabeiba', 'AA');
INSERT INTO `crm_data_region` VALUES (515, 19, ',2,19,515,', 3, '奥法利', 'Offaly', 'aofali', 'OF');
INSERT INTO `crm_data_region` VALUES (516, 19, ',2,19,516,', 3, '蒂珀雷里', 'Tipperary', 'dileili', 'TP');
INSERT INTO `crm_data_region` VALUES (517, 19, ',2,19,517,', 3, '都柏林', 'Dublin', 'dubailin', 'DB');
INSERT INTO `crm_data_region` VALUES (518, 19, ',2,19,518,', 3, '多内加尔', 'Donegal', 'duoneijiaer', 'DG');
INSERT INTO `crm_data_region` VALUES (519, 19, ',2,19,519,', 3, '戈尔韦', 'Galway', 'geerwei', 'GW');
INSERT INTO `crm_data_region` VALUES (520, 19, ',2,19,520,', 3, '基尔代尔', 'Kildare', 'jierdaier', 'KD');
INSERT INTO `crm_data_region` VALUES (521, 19, ',2,19,521,', 3, '基尔肯尼', 'Kilkenny', 'jierkenni', 'KK');
INSERT INTO `crm_data_region` VALUES (522, 19, ',2,19,522,', 3, '卡范', 'Cavan', 'kafan', 'CV');
INSERT INTO `crm_data_region` VALUES (523, 19, ',2,19,523,', 3, '卡洛', 'Carlow', 'kaluo', 'CW');
INSERT INTO `crm_data_region` VALUES (524, 19, ',2,19,524,', 3, '凯里', 'Kerry', 'kaili', 'KR');
INSERT INTO `crm_data_region` VALUES (525, 19, ',2,19,525,', 3, '科克', 'Cork', 'keke', 'CK');
INSERT INTO `crm_data_region` VALUES (526, 19, ',2,19,526,', 3, '克莱尔', 'Clare', 'kelaier', 'CL');
INSERT INTO `crm_data_region` VALUES (527, 19, ',2,19,527,', 3, '朗福德', 'Longford', 'langfude', 'LF');
INSERT INTO `crm_data_region` VALUES (528, 19, ',2,19,528,', 3, '劳斯', 'Louth', 'laosi', 'LT');
INSERT INTO `crm_data_region` VALUES (529, 19, ',2,19,529,', 3, '崂斯', 'Laois', 'si', 'LA');
INSERT INTO `crm_data_region` VALUES (530, 19, ',2,19,530,', 3, '利默里克', 'Limerick', 'limolike', 'LM');
INSERT INTO `crm_data_region` VALUES (531, 19, ',2,19,531,', 3, '利特里姆', 'Leitrim', 'litelimu', 'LR');
INSERT INTO `crm_data_region` VALUES (532, 19, ',2,19,532,', 3, '罗斯康芒', 'Roscommon', 'luosikangmang', 'RC');
INSERT INTO `crm_data_region` VALUES (533, 19, ',2,19,533,', 3, '梅奥', 'Mayo', 'meiao', 'MY');
INSERT INTO `crm_data_region` VALUES (534, 19, ',2,19,534,', 3, '米斯', 'Meath', 'misi', 'MT');
INSERT INTO `crm_data_region` VALUES (535, 19, ',2,19,535,', 3, '莫内根', 'Monaghan', 'moneigen', 'MG');
INSERT INTO `crm_data_region` VALUES (536, 19, ',2,19,536,', 3, '斯莱戈', 'Sligo', 'silaige', 'SL');
INSERT INTO `crm_data_region` VALUES (537, 19, ',2,19,537,', 3, '威克洛', 'Wicklow', 'weikeluo', 'WK');
INSERT INTO `crm_data_region` VALUES (538, 19, ',2,19,538,', 3, '韦克斯福德', 'Wexford', 'weikesifude', 'WX');
INSERT INTO `crm_data_region` VALUES (539, 19, ',2,19,539,', 3, '沃特福德', 'Waterford', 'wotefude', 'WF');
INSERT INTO `crm_data_region` VALUES (540, 19, ',2,19,540,', 3, '西米斯', 'Westmeath', 'ximisi', 'WM');
INSERT INTO `crm_data_region` VALUES (541, 20, ',2,20,541,', 3, '贝尔瓦', 'Polva', 'beierwa', '65');
INSERT INTO `crm_data_region` VALUES (542, 20, ',2,20,542,', 3, '哈留', 'Harju', 'haliu', '37');
INSERT INTO `crm_data_region` VALUES (543, 20, ',2,20,543,', 3, '拉普拉', 'Rapla', 'lapula', '70');
INSERT INTO `crm_data_region` VALUES (544, 20, ',2,20,544,', 3, '里亚内', 'Laane', 'liyanei', '57');
INSERT INTO `crm_data_region` VALUES (545, 20, ',2,20,545,', 3, '帕尔努', 'Parnu', 'paernu', '67');
INSERT INTO `crm_data_region` VALUES (546, 20, ',2,20,546,', 3, '萨雷', 'Saare', 'salei', '74');
INSERT INTO `crm_data_region` VALUES (547, 20, ',2,20,547,', 3, '塔尔图', 'Tartu', 'taertu', '78');
INSERT INTO `crm_data_region` VALUES (548, 20, ',2,20,548,', 3, '瓦尔加', 'Valga', 'waerjia', '82');
INSERT INTO `crm_data_region` VALUES (549, 20, ',2,20,549,', 3, '维良地', 'Viljandi', 'weiliangdi', '84');
INSERT INTO `crm_data_region` VALUES (550, 20, ',2,20,550,', 3, '维鲁', 'Laane-Viru', 'weilu', '59');
INSERT INTO `crm_data_region` VALUES (551, 20, ',2,20,551,', 3, '沃鲁', 'Voru', 'wolu', '86');
INSERT INTO `crm_data_region` VALUES (552, 20, ',2,20,552,', 3, '希尤', 'Hiiu', 'xiyou', '39');
INSERT INTO `crm_data_region` VALUES (553, 20, ',2,20,553,', 3, '耶尔韦', 'Jarva', 'yeerwei', '51');
INSERT INTO `crm_data_region` VALUES (554, 20, ',2,20,554,', 3, '耶盖瓦', 'Jogeva', 'yegaiwa', '49');
INSERT INTO `crm_data_region` VALUES (555, 20, ',2,20,555,', 3, '依达－维鲁', 'Ida-Viru', 'yidaweilu', '44');
INSERT INTO `crm_data_region` VALUES (556, 21, ',2,21,556,', 3, '安道尔城', 'Andorra la Vella', 'andaoercheng', '7');
INSERT INTO `crm_data_region` VALUES (557, 21, ',2,21,557,', 3, '奥尔迪诺', 'Ordino', 'aoerdinuo', '5');
INSERT INTO `crm_data_region` VALUES (558, 21, ',2,21,558,', 3, '恩坎普', 'Encamp', 'enkanpu', '3');
INSERT INTO `crm_data_region` VALUES (559, 21, ',2,21,559,', 3, '卡尼略', 'Canillo', 'kanilue', '2');
INSERT INTO `crm_data_region` VALUES (560, 21, ',2,21,560,', 3, '莱塞斯卡尔德－恩戈尔达', 'Escaldes-Engordany', 'laisaisikaerdeengeerda', '8');
INSERT INTO `crm_data_region` VALUES (561, 21, ',2,21,561,', 3, '马萨纳', 'La Massana', 'masana', '4');
INSERT INTO `crm_data_region` VALUES (562, 21, ',2,21,562,', 3, '圣胡利娅－德洛里亚', 'Sant Julia de Laria', 'shenghulideluoliya', '6');
INSERT INTO `crm_data_region` VALUES (563, 22, ',3,22,563,', 3, '北宽扎', 'Cuanza Norte', 'beikuanzha', 'CNO');
INSERT INTO `crm_data_region` VALUES (564, 22, ',3,22,564,', 3, '北隆达', 'Lunda Norte', 'beilongda', 'LNO');
INSERT INTO `crm_data_region` VALUES (565, 22, ',3,22,565,', 3, '本戈', 'Bengo', 'benge', 'BGO');
INSERT INTO `crm_data_region` VALUES (566, 22, ',3,22,566,', 3, '本格拉', 'Benguela', 'bengela', 'BGU');
INSERT INTO `crm_data_region` VALUES (567, 22, ',3,22,567,', 3, '比耶', 'Bie', 'biye', 'BIE');
INSERT INTO `crm_data_region` VALUES (568, 22, ',3,22,568,', 3, '卡宾达', 'Cabinda', 'kabinda', 'CAB');
INSERT INTO `crm_data_region` VALUES (569, 22, ',3,22,569,', 3, '库内内', 'Cunene', 'kuneinei', 'CNN');
INSERT INTO `crm_data_region` VALUES (570, 22, ',3,22,570,', 3, '宽多库邦戈', 'Cuando Cubango', 'kuanduokubangge', 'CCU');
INSERT INTO `crm_data_region` VALUES (571, 22, ',3,22,571,', 3, '罗安达', 'Luanda', 'luoanda', 'LUA');
INSERT INTO `crm_data_region` VALUES (572, 22, ',3,22,572,', 3, '马兰热', 'Malanje', 'malanre', 'MAL');
INSERT INTO `crm_data_region` VALUES (573, 22, ',3,22,573,', 3, '莫希科', 'Moxico', 'moxike', 'MOX');
INSERT INTO `crm_data_region` VALUES (574, 22, ',3,22,574,', 3, '纳米贝', 'Namibe', 'namibei', 'NAM');
INSERT INTO `crm_data_region` VALUES (575, 22, ',3,22,575,', 3, '南宽扎', 'Cuanza Sul', 'nankuanzha', 'CUS');
INSERT INTO `crm_data_region` VALUES (576, 22, ',3,22,576,', 3, '南隆达', 'Lunda Sul', 'nanlongda', 'LSU');
INSERT INTO `crm_data_region` VALUES (577, 22, ',3,22,577,', 3, '万博', 'Huambo', 'wanbo', 'HUA');
INSERT INTO `crm_data_region` VALUES (578, 22, ',3,22,578,', 3, '威拉', 'Huila', 'weila', 'HUI');
INSERT INTO `crm_data_region` VALUES (579, 22, ',3,22,579,', 3, '威热', 'Uige', 'weire', 'UIG');
INSERT INTO `crm_data_region` VALUES (580, 22, ',3,22,580,', 3, '扎伊尔', 'Zaire', 'zhayier', 'ZAI');
INSERT INTO `crm_data_region` VALUES (581, 26, ',2,26,581,', 3, '布尔根兰', 'Burgenland', 'buergenlan', 'BUR');
INSERT INTO `crm_data_region` VALUES (582, 26, ',2,26,582,', 3, '蒂罗尔', 'Tyrol', 'diluoer', 'TYR');
INSERT INTO `crm_data_region` VALUES (583, 26, ',2,26,583,', 3, '福拉尔贝格', 'Vorarlberg', 'fulaerbeige', 'VOR');
INSERT INTO `crm_data_region` VALUES (584, 26, ',2,26,584,', 3, '克恩顿', 'Carinthia', 'keendun', 'CAT');
INSERT INTO `crm_data_region` VALUES (585, 26, ',2,26,585,', 3, '萨尔茨堡', 'Salzburg', 'saercibao', 'SZG');
INSERT INTO `crm_data_region` VALUES (586, 26, ',2,26,586,', 3, '上奥地利', 'Upper Austria', 'shangaodili', 'UAU');
INSERT INTO `crm_data_region` VALUES (587, 26, ',2,26,587,', 3, '施蒂利亚', 'Styria', 'shidiliya', 'STY');
INSERT INTO `crm_data_region` VALUES (588, 26, ',2,26,588,', 3, '维也纳', 'Vienna', 'weiyena', 'VDD');
INSERT INTO `crm_data_region` VALUES (589, 26, ',2,26,589,', 3, '下奥地利', 'Lower Austria', 'xiaaodili', 'LAU');
INSERT INTO `crm_data_region` VALUES (590, 29, ',6,29,590,', 3, '北部', 'Northern', 'beibu', 'NO');
INSERT INTO `crm_data_region` VALUES (591, 29, ',6,29,591,', 3, '布干维尔', 'Bougainville', 'buganweier', 'BV');
INSERT INTO `crm_data_region` VALUES (592, 29, ',6,29,592,', 3, '东部高地', 'Eastern Highlands', 'dongbugaodi', 'EH');
INSERT INTO `crm_data_region` VALUES (593, 29, ',6,29,593,', 3, '东塞皮克', 'East Sepik', 'dongsaipike', 'ES');
INSERT INTO `crm_data_region` VALUES (594, 29, ',6,29,594,', 3, '东新不列颠', 'East New Britain', 'dongxinbuliedian', 'EB');
INSERT INTO `crm_data_region` VALUES (595, 29, ',6,29,595,', 3, '恩加', 'Enga', 'enjia', 'EN');
INSERT INTO `crm_data_region` VALUES (596, 29, ',6,29,596,', 3, '海湾', 'Gulf', 'haiwan', 'GU');
INSERT INTO `crm_data_region` VALUES (597, 29, ',6,29,597,', 3, '马当', 'Madang', 'madang', 'MD');
INSERT INTO `crm_data_region` VALUES (598, 29, ',6,29,598,', 3, '马努斯', 'Manus', 'manusi', 'MN');
INSERT INTO `crm_data_region` VALUES (599, 29, ',6,29,599,', 3, '米尔恩湾', 'Milne Bay', 'mierenwan', 'MB');
INSERT INTO `crm_data_region` VALUES (600, 29, ',6,29,600,', 3, '莫尔兹比港', 'Port Moresby', 'moerzibigang', 'NC');
INSERT INTO `crm_data_region` VALUES (601, 29, ',6,29,601,', 3, '莫罗贝', 'Morobe', 'moluobei', 'MR');
INSERT INTO `crm_data_region` VALUES (602, 29, ',6,29,602,', 3, '南部高地', 'Southern Highlands', 'nanbugaodi', 'SH');
INSERT INTO `crm_data_region` VALUES (603, 29, ',6,29,603,', 3, '钦布', 'Simbu', 'qinbu', 'SI');
INSERT INTO `crm_data_region` VALUES (604, 29, ',6,29,604,', 3, '桑道恩', 'Sandaun', 'sangdaoen', 'SA');
INSERT INTO `crm_data_region` VALUES (605, 29, ',6,29,605,', 3, '西部', 'Western', 'xibu', 'WE');
INSERT INTO `crm_data_region` VALUES (606, 29, ',6,29,606,', 3, '西部高地', 'Western Highlands', 'xibugaodi', 'WH');
INSERT INTO `crm_data_region` VALUES (607, 29, ',6,29,607,', 3, '西新不列颠', 'West New Britain', 'xixinbuliedian', 'WB');
INSERT INTO `crm_data_region` VALUES (608, 29, ',6,29,608,', 3, '新爱尔兰', 'New Ireland', 'xinaierlan', 'NI');
INSERT INTO `crm_data_region` VALUES (609, 31, ',1,31,609,', 3, '白沙瓦', 'Peshawar', 'baishawa', 'PEW');
INSERT INTO `crm_data_region` VALUES (610, 31, ',1,31,610,', 3, '费萨拉巴德', 'Faisalabad', 'feisalabade', 'LYP');
INSERT INTO `crm_data_region` VALUES (611, 31, ',1,31,611,', 3, '故吉软瓦拉', 'Gujranwala', 'gujiruanwala', 'GUJ');
INSERT INTO `crm_data_region` VALUES (612, 31, ',1,31,612,', 3, '海德拉巴', 'Hyderabad', 'haidelaba', 'HDD');
INSERT INTO `crm_data_region` VALUES (613, 31, ',1,31,613,', 3, '卡拉奇', 'Karachi', 'kalaqi', 'KCT');
INSERT INTO `crm_data_region` VALUES (614, 31, ',1,31,614,', 3, '拉合尔', 'Lahore', 'laheer', 'LHE');
INSERT INTO `crm_data_region` VALUES (615, 31, ',1,31,615,', 3, '拉瓦尔品第', 'Rawalpindi', 'lawaerpindi', 'RWP');
INSERT INTO `crm_data_region` VALUES (616, 31, ',1,31,616,', 3, '木尔坦', 'Multan', 'muertan', 'MUX');
INSERT INTO `crm_data_region` VALUES (617, 31, ',1,31,617,', 3, '伊斯兰堡', 'Islamabad', 'yisilanbao', 'ISB');
INSERT INTO `crm_data_region` VALUES (618, 32, ',5,32,618,', 3, '阿曼拜', 'Amambay', 'amanbai', 'AM');
INSERT INTO `crm_data_region` VALUES (619, 32, ',5,32,619,', 3, '阿耶斯总统省', 'Presidente Hayes', 'ayesizongtongsheng', 'PH');
INSERT INTO `crm_data_region` VALUES (620, 32, ',5,32,620,', 3, '巴拉瓜里', 'Paraguari', 'balaguali', 'PA');
INSERT INTO `crm_data_region` VALUES (621, 32, ',5,32,621,', 3, '博克龙', 'Boqueron', 'bokelong', 'BO');
INSERT INTO `crm_data_region` VALUES (622, 32, ',5,32,622,', 3, '瓜伊拉', 'Guaira', 'guayila', 'GU');
INSERT INTO `crm_data_region` VALUES (623, 32, ',5,32,623,', 3, '卡瓜苏', 'Caaguazu', 'kaguasu', 'CG');
INSERT INTO `crm_data_region` VALUES (624, 32, ',5,32,624,', 3, '卡嫩迪尤', 'Canindeyu', 'kanendiyou', 'CN');
INSERT INTO `crm_data_region` VALUES (625, 32, ',5,32,625,', 3, '卡萨帕', 'Caazapa', 'kasapa', 'CZ');
INSERT INTO `crm_data_region` VALUES (626, 32, ',5,32,626,', 3, '康塞普西翁', 'Concepcion', 'kangsaipuxiweng', 'CC');
INSERT INTO `crm_data_region` VALUES (627, 32, ',5,32,627,', 3, '科迪勒拉', 'Cordillera', 'kedilela', 'CD');
INSERT INTO `crm_data_region` VALUES (628, 32, ',5,32,628,', 3, '米西奥内斯', 'Misiones', 'mixiaoneisi', 'MI');
INSERT INTO `crm_data_region` VALUES (629, 32, ',5,32,629,', 3, '涅恩布库', 'Neembucu', 'nieenbuku', 'NE');
INSERT INTO `crm_data_region` VALUES (630, 32, ',5,32,630,', 3, '上巴拉圭', 'Alto Paraguay', 'shangbalagui', 'AG');
INSERT INTO `crm_data_region` VALUES (631, 32, ',5,32,631,', 3, '上巴拉那', 'Alto Parana', 'shangbalana', 'AN');
INSERT INTO `crm_data_region` VALUES (632, 32, ',5,32,632,', 3, '圣佩德罗', 'San Pedro', 'shengpeideluo', 'SP');
INSERT INTO `crm_data_region` VALUES (633, 32, ',5,32,633,', 3, '亚松森特别区', 'Asuncion', 'yasongsentebiequ', 'AS');
INSERT INTO `crm_data_region` VALUES (634, 32, ',5,32,634,', 3, '伊塔普亚', 'Itapua', 'yitapuya', 'IT');
INSERT INTO `crm_data_region` VALUES (635, 32, ',5,32,635,', 3, '中央', 'Central', 'zhongyang', 'CE');
INSERT INTO `crm_data_region` VALUES (636, 33, ',1,33,636,', 3, '加沙地带', 'Gaza Strip', 'jiashadidai', 'GZ');
INSERT INTO `crm_data_region` VALUES (637, 33, ',1,33,637,', 3, '西岸', 'West Bank', 'xian', 'WE');
INSERT INTO `crm_data_region` VALUES (638, 34, ',1,34,638,', 3, '北部', 'Ash-Shamaliyah', 'beibu', '5');
INSERT INTO `crm_data_region` VALUES (639, 34, ',1,34,639,', 3, '哈德', 'Al-Hadd', 'hade', '1');
INSERT INTO `crm_data_region` VALUES (640, 34, ',1,34,640,', 3, '哈马德', 'Hammad', 'hamade', '12');
INSERT INTO `crm_data_region` VALUES (641, 34, ',1,34,641,', 3, '里法', 'Ar-Rifa', 'lifa', '9');
INSERT INTO `crm_data_region` VALUES (642, 34, ',1,34,642,', 3, '麦纳麦', 'Al-Manamah', 'mainamai', '3');
INSERT INTO `crm_data_region` VALUES (643, 34, ',1,34,643,', 3, '穆哈拉格', 'Al-Muharraq', 'muhalage', '2');
INSERT INTO `crm_data_region` VALUES (644, 34, ',1,34,644,', 3, '西部', 'Al-Gharbiyah', 'xibu', '10');
INSERT INTO `crm_data_region` VALUES (645, 34, ',1,34,645,', 3, '伊萨城', 'Isa', 'yisacheng', '8');
INSERT INTO `crm_data_region` VALUES (646, 34, ',1,34,646,', 3, '中部', 'Al-Wusta', 'zhongbu', '7');
INSERT INTO `crm_data_region` VALUES (647, 36, ',5,36,647,', 3, '阿克里', 'Acre', 'akeli', 'AC');
INSERT INTO `crm_data_region` VALUES (648, 36, ',5,36,648,', 3, '阿拉戈斯', 'Alagoas', 'alagesi', 'AL');
INSERT INTO `crm_data_region` VALUES (649, 36, ',5,36,649,', 3, '阿马帕', 'Amapa', 'amapa', 'AP');
INSERT INTO `crm_data_region` VALUES (650, 36, ',5,36,650,', 3, '巴拉那', 'Parana', 'balana', 'PR');
INSERT INTO `crm_data_region` VALUES (651, 36, ',5,36,651,', 3, '巴西利亚', 'Brasilia', 'baxiliya', 'BSB');
INSERT INTO `crm_data_region` VALUES (652, 36, ',5,36,652,', 3, '巴伊亚', 'Bahia', 'bayiya', 'BA');
INSERT INTO `crm_data_region` VALUES (653, 36, ',5,36,653,', 3, '北里奥格兰德', 'Rio Grande do Norte', 'beiliaogelande', 'RN');
INSERT INTO `crm_data_region` VALUES (654, 36, ',5,36,654,', 3, '伯南布哥', 'Pernambuco', 'bonanbuge', 'PE');
INSERT INTO `crm_data_region` VALUES (655, 36, ',5,36,655,', 3, '戈亚斯', 'Goias', 'geyasi', 'GO');
INSERT INTO `crm_data_region` VALUES (656, 36, ',5,36,656,', 3, '朗多尼亚', 'Rondonia', 'langduoniya', 'RO');
INSERT INTO `crm_data_region` VALUES (657, 36, ',5,36,657,', 3, '里约热内卢', 'Rio de Janeiro', 'liyuereneilu', 'RJ');
INSERT INTO `crm_data_region` VALUES (658, 36, ',5,36,658,', 3, '罗赖马', 'Roraima', 'luolaima', 'RR');
INSERT INTO `crm_data_region` VALUES (659, 36, ',5,36,659,', 3, '马拉尼昂', 'Maranhao', 'malaniang', 'MA');
INSERT INTO `crm_data_region` VALUES (660, 36, ',5,36,660,', 3, '马托格罗索', 'Mato Grosso', 'matuogeluosuo', 'MT');
INSERT INTO `crm_data_region` VALUES (661, 36, ',5,36,661,', 3, '米纳斯吉拉斯', 'Minas Gerais', 'minasijilasi', 'MG');
INSERT INTO `crm_data_region` VALUES (662, 36, ',5,36,662,', 3, '南里奥格兰德', 'Rio Grande do Sul', 'nanliaogelande', 'RS');
INSERT INTO `crm_data_region` VALUES (663, 36, ',5,36,663,', 3, '南马托格罗索', 'Mato Grosso do Sul', 'nanmatuogeluosuo', 'MS');
INSERT INTO `crm_data_region` VALUES (664, 36, ',5,36,664,', 3, '帕拉', 'Para', 'pala', 'PA');
INSERT INTO `crm_data_region` VALUES (665, 36, ',5,36,665,', 3, '帕拉伊巴', 'Paraiba', 'palayiba', 'PB');
INSERT INTO `crm_data_region` VALUES (666, 36, ',5,36,666,', 3, '皮奥伊', 'Piaui', 'piaoyi', 'PI');
INSERT INTO `crm_data_region` VALUES (667, 36, ',5,36,667,', 3, '塞阿拉', 'Ceara', 'saiala', 'CE');
INSERT INTO `crm_data_region` VALUES (668, 36, ',5,36,668,', 3, '塞尔希培', 'Sergipe', 'saierxipei', 'SE');
INSERT INTO `crm_data_region` VALUES (669, 36, ',5,36,669,', 3, '圣埃斯皮里图', 'Espirito Santo', 'shengaisipilitu', 'ES');
INSERT INTO `crm_data_region` VALUES (670, 36, ',5,36,670,', 3, '圣保罗', 'Sao Paulo', 'shengbaoluo', 'SP');
INSERT INTO `crm_data_region` VALUES (671, 36, ',5,36,671,', 3, '圣卡塔琳娜', 'Santa Catarina', 'shengkatalinna', 'SC');
INSERT INTO `crm_data_region` VALUES (672, 36, ',5,36,672,', 3, '托坎廷斯', 'Tocantins', 'tuokantingsi', 'TO');
INSERT INTO `crm_data_region` VALUES (673, 36, ',5,36,673,', 3, '亚马孙', 'Amazonas', 'yamasun', 'AM');
INSERT INTO `crm_data_region` VALUES (674, 37, ',2,37,674,', 3, '布列斯特', 'Bresckaja', 'buliesite', 'BR');
INSERT INTO `crm_data_region` VALUES (675, 37, ',2,37,675,', 3, '戈梅利', 'Homelskaja', 'gemeili', 'HO');
INSERT INTO `crm_data_region` VALUES (676, 37, ',2,37,676,', 3, '格罗德诺', 'Hrodzenskaja', 'geluodenuo', 'HR');
INSERT INTO `crm_data_region` VALUES (677, 37, ',2,37,677,', 3, '明斯克市', 'Minsk', 'mingsikeshi', 'MI');
INSERT INTO `crm_data_region` VALUES (678, 37, ',2,37,678,', 3, '莫吉廖夫', 'Mahileuskaja', 'mojiliaofu', 'MA');
INSERT INTO `crm_data_region` VALUES (679, 37, ',2,37,679,', 3, '维捷布斯克', 'Vicebskaja', 'weijiebusike', 'VI');
INSERT INTO `crm_data_region` VALUES (680, 39, ',2,39,680,', 3, '布尔加斯', 'Burgas', 'buerjiasi', 'BOJ');
INSERT INTO `crm_data_region` VALUES (681, 39, ',2,39,681,', 3, '卡斯科伏', 'Khaskovo', 'kasikefu', 'KHO');
INSERT INTO `crm_data_region` VALUES (682, 39, ',2,39,682,', 3, '鲁塞', 'Ruse', 'lusai', 'ROU');
INSERT INTO `crm_data_region` VALUES (683, 39, ',2,39,683,', 3, '洛维奇', 'Lovech', 'luoweiqi', 'LVP');
INSERT INTO `crm_data_region` VALUES (684, 39, ',2,39,684,', 3, '蒙塔纳', 'Montana', 'mengtana', 'OZA');
INSERT INTO `crm_data_region` VALUES (685, 39, ',2,39,685,', 3, '普罗夫迪夫', 'Plovdiv', 'puluofudifu', 'PDV');
INSERT INTO `crm_data_region` VALUES (686, 39, ',2,39,686,', 3, '索非亚', 'Sofiya', 'suofeiya', 'SOF');
INSERT INTO `crm_data_region` VALUES (687, 39, ',2,39,687,', 3, '索非亚市', 'Grad Sofiya', 'suofeiyashi', 'GSO');
INSERT INTO `crm_data_region` VALUES (688, 39, ',2,39,688,', 3, '瓦尔纳', 'Varna', 'waerna', 'VAR');
INSERT INTO `crm_data_region` VALUES (689, 41, ',3,41,689,', 3, '阿黎博里', 'Alibori', 'aliboli', 'AL');
INSERT INTO `crm_data_region` VALUES (690, 41, ',3,41,690,', 3, '阿塔科拉', 'Atakora', 'atakela', 'AK');
INSERT INTO `crm_data_region` VALUES (691, 41, ',3,41,691,', 3, '滨海', 'Littoral', 'binhai', 'LI');
INSERT INTO `crm_data_region` VALUES (692, 41, ',3,41,692,', 3, '波希康市', 'Bohicon', 'boxikangshi', 'BOH');
INSERT INTO `crm_data_region` VALUES (693, 41, ',3,41,693,', 3, '博尔古', 'Borgou', 'boergu', 'BO');
INSERT INTO `crm_data_region` VALUES (694, 41, ',3,41,694,', 3, '大西洋', 'Atlantique', 'daxiyang', 'AQ');
INSERT INTO `crm_data_region` VALUES (695, 41, ',3,41,695,', 3, '高原', 'Plateau', 'gaoyuan', 'PL');
INSERT INTO `crm_data_region` VALUES (696, 41, ',3,41,696,', 3, '库福', 'Kouffo', 'kufu', 'KO');
INSERT INTO `crm_data_region` VALUES (697, 41, ',3,41,697,', 3, '莫诺', 'Mono', 'monuo', 'MO');
INSERT INTO `crm_data_region` VALUES (698, 41, ',3,41,698,', 3, '丘陵', 'Collines', 'qiuling', 'CO');
INSERT INTO `crm_data_region` VALUES (699, 41, ',3,41,699,', 3, '韦梅', 'Oueme', 'weimei', 'OU');
INSERT INTO `crm_data_region` VALUES (700, 41, ',3,41,700,', 3, '峡谷', 'Donga', 'xiagu', 'DO');
INSERT INTO `crm_data_region` VALUES (701, 41, ',3,41,701,', 3, '祖', 'Zou', 'zu', 'ZO');
INSERT INTO `crm_data_region` VALUES (702, 42, ',2,42,702,', 3, '埃诺', 'Hainaut', 'ainuo', 'WHT');
INSERT INTO `crm_data_region` VALUES (703, 42, ',2,42,703,', 3, '安特卫普', 'Antwerpen', 'anteweipu', 'VAN');
INSERT INTO `crm_data_region` VALUES (704, 42, ',2,42,704,', 3, '布拉班特-瓦隆', 'Brabant-Wallone', 'bulabantewalong', 'WBR');
INSERT INTO `crm_data_region` VALUES (705, 42, ',2,42,705,', 3, '布鲁塞尔', 'Brussels', 'bulusaier', 'BRU');
INSERT INTO `crm_data_region` VALUES (706, 42, ',2,42,706,', 3, '东佛兰德', 'Oost-Vlaanderen', 'dongfolande', 'VOV');
INSERT INTO `crm_data_region` VALUES (707, 42, ',2,42,707,', 3, '佛兰芒-布拉班特', 'Vlaams-Brabant', 'folanmangbulabante', 'VBR');
INSERT INTO `crm_data_region` VALUES (708, 42, ',2,42,708,', 3, '列日', 'Liege', 'lieri', 'WLG');
INSERT INTO `crm_data_region` VALUES (709, 42, ',2,42,709,', 3, '林堡', 'Limburg', 'linbao', 'VLI');
INSERT INTO `crm_data_region` VALUES (710, 42, ',2,42,710,', 3, '卢森堡', 'Luxembourg', 'lusenbao', 'WLX');
INSERT INTO `crm_data_region` VALUES (711, 42, ',2,42,711,', 3, '那慕尔', 'Namur', 'namuer', 'WNA');
INSERT INTO `crm_data_region` VALUES (712, 42, ',2,42,712,', 3, '西佛兰德', 'West-Vlaanderen', 'xifolande', 'VWV');
INSERT INTO `crm_data_region` VALUES (713, 45, ',2,45,713,', 3, '埃尔布隆格', 'Elbląg', 'aierbulongge', 'ELB');
INSERT INTO `crm_data_region` VALUES (714, 45, ',2,45,714,', 3, '奥尔什丁', 'Olsztyn', 'aoershiding', 'OLS');
INSERT INTO `crm_data_region` VALUES (715, 45, ',2,45,715,', 3, '奥斯特罗文卡', 'Ostrołeka', 'aositeluowenka', 'OSS');
INSERT INTO `crm_data_region` VALUES (716, 45, ',2,45,716,', 3, '比得哥什', 'Bydgoszcz', 'bidegeshi', 'BZG');
INSERT INTO `crm_data_region` VALUES (717, 45, ',2,45,717,', 3, '彼得库夫', 'Piotrkow', 'bidekufu', 'PIO');
INSERT INTO `crm_data_region` VALUES (718, 45, ',2,45,718,', 3, '比托姆', 'Bytom', 'bituomu', 'BYT');
INSERT INTO `crm_data_region` VALUES (719, 45, ',2,45,719,', 3, '比亚瓦波德拉斯卡', 'Biała Podlaska', 'biyawabodelasika', 'BAP');
INSERT INTO `crm_data_region` VALUES (720, 45, ',2,45,720,', 3, '比亚维斯托克', 'Białystok', 'biyaweisituoke', 'BIA');
INSERT INTO `crm_data_region` VALUES (721, 45, ',2,45,721,', 3, '波莱', 'Opole', 'bolai', 'OPO');
INSERT INTO `crm_data_region` VALUES (722, 45, ',2,45,722,', 3, '波兹南', 'Poznan', 'bozinan', 'POZ');
INSERT INTO `crm_data_region` VALUES (723, 45, ',2,45,723,', 3, '达布罗瓦戈尼察', 'Dabrowa Gornicza', 'dabuluowagenicha', 'DAB');
INSERT INTO `crm_data_region` VALUES (724, 45, ',2,45,724,', 3, '大波兰地区戈茹夫', 'Gorzow Wlkp', 'dabolandiqugerufu', 'GOW');
INSERT INTO `crm_data_region` VALUES (725, 45, ',2,45,725,', 3, '弗罗茨瓦夫', 'Wroclaw', 'fuluociwafu', 'WRO');
INSERT INTO `crm_data_region` VALUES (726, 45, ',2,45,726,', 3, '弗沃茨瓦韦克', 'Wlocławek', 'fuwociwaweike', 'WLO');
INSERT INTO `crm_data_region` VALUES (727, 45, ',2,45,727,', 3, '格但斯克', 'Gdansk', 'gedansike', 'GDN');
INSERT INTO `crm_data_region` VALUES (728, 45, ',2,45,728,', 3, '格丁尼亚', 'Gdynia', 'gedingniya', 'GDY');
INSERT INTO `crm_data_region` VALUES (729, 45, ',2,45,729,', 3, '格利维采', 'Gliwice', 'geliweicai', 'GWC');
INSERT INTO `crm_data_region` VALUES (730, 45, ',2,45,730,', 3, '格鲁琼兹', 'Grudziadz', 'geluqiongzi', 'GRU');
INSERT INTO `crm_data_region` VALUES (731, 45, ',2,45,731,', 3, '海乌姆', 'Chełm', 'haiwumu', 'CHO');
INSERT INTO `crm_data_region` VALUES (732, 45, ',2,45,732,', 3, '华沙', 'Warszawa', 'huasha', 'WAW');
INSERT INTO `crm_data_region` VALUES (733, 45, ',2,45,733,', 3, '霍茹夫', 'Chorzow', 'huorufu', 'CHZ');
INSERT INTO `crm_data_region` VALUES (734, 45, ',2,45,734,', 3, '卡利什', 'Kalisz', 'kalishi', 'KAL');
INSERT INTO `crm_data_region` VALUES (735, 45, ',2,45,735,', 3, '卡托维兹', 'Katowice', 'katuoweizi', 'KTW');
INSERT INTO `crm_data_region` VALUES (736, 45, ',2,45,736,', 3, '凯尔采', 'Kielce', 'kaiercai', 'KLC');
INSERT INTO `crm_data_region` VALUES (737, 45, ',2,45,737,', 3, '科宁', 'Konin', 'kening', 'KON');
INSERT INTO `crm_data_region` VALUES (738, 45, ',2,45,738,', 3, '科沙林', 'Koszalin', 'keshalin', 'OSZ');
INSERT INTO `crm_data_region` VALUES (739, 45, ',2,45,739,', 3, '克拉科夫', 'Krakow', 'kelakefu', 'KRK');
INSERT INTO `crm_data_region` VALUES (740, 45, ',2,45,740,', 3, '克罗斯诺', 'Krosno', 'keluosinuo', 'KRO');
INSERT INTO `crm_data_region` VALUES (741, 45, ',2,45,741,', 3, '拉多姆', 'Radom', 'laduomu', 'RDM');
INSERT INTO `crm_data_region` VALUES (742, 45, ',2,45,742,', 3, '莱格尼察', 'Legnica', 'laigenicha', 'LEG');
INSERT INTO `crm_data_region` VALUES (743, 45, ',2,45,743,', 3, '莱什诺', 'Leszno', 'laishinuo', 'LEZ');
INSERT INTO `crm_data_region` VALUES (744, 45, ',2,45,744,', 3, '卢布林', 'Lublin', 'lubulin', 'LUL');
INSERT INTO `crm_data_region` VALUES (745, 45, ',2,45,745,', 3, '鲁达', 'Ruda Sl', 'luda', 'RDS');
INSERT INTO `crm_data_region` VALUES (746, 45, ',2,45,746,', 3, '罗兹', 'Lodz', 'luozi', 'LOD');
INSERT INTO `crm_data_region` VALUES (747, 45, ',2,45,747,', 3, '绿山城', 'Zielona Gora', 'lvshancheng', 'IEG');
INSERT INTO `crm_data_region` VALUES (748, 45, ',2,45,748,', 3, '米什洛维采', 'Mysłowice', 'mishiluoweicai', 'MYL');
INSERT INTO `crm_data_region` VALUES (749, 45, ',2,45,749,', 3, '皮瓦', 'Piła', 'piwa', 'PIL');
INSERT INTO `crm_data_region` VALUES (750, 45, ',2,45,750,', 3, '普热梅希尔', 'Przemysl', 'puremeixier', 'PRZ');
INSERT INTO `crm_data_region` VALUES (751, 45, ',2,45,751,', 3, '普沃茨克', 'Plock', 'puwocike', 'PLO');
INSERT INTO `crm_data_region` VALUES (752, 45, ',2,45,752,', 3, '切哈努夫', 'Ciechanow', 'qiehanufu', 'CIE');
INSERT INTO `crm_data_region` VALUES (753, 45, ',2,45,753,', 3, '热舒夫', 'Rzeszow', 'reshufu', 'RZE');
INSERT INTO `crm_data_region` VALUES (754, 45, ',2,45,754,', 3, '什切青', 'Szczecin', 'shiqieqing', 'SZZ');
INSERT INTO `crm_data_region` VALUES (755, 45, ',2,45,755,', 3, '斯凯尔涅维采', 'Skierniewice', 'sikaiernieweicai', 'SKI');
INSERT INTO `crm_data_region` VALUES (756, 45, ',2,45,756,', 3, '斯武普斯克', 'Slupsk', 'siwupusike', 'SLP');
INSERT INTO `crm_data_region` VALUES (757, 45, ',2,45,757,', 3, '苏瓦乌基', 'Suwałki', 'suwawuji', 'SWL');
INSERT INTO `crm_data_region` VALUES (758, 45, ',2,45,758,', 3, '索波特', 'Sopot', 'suobote', 'SOP');
INSERT INTO `crm_data_region` VALUES (759, 45, ',2,45,759,', 3, '索斯诺维茨', 'Sosnowiec', 'suosinuoweici', 'SWC');
INSERT INTO `crm_data_region` VALUES (760, 45, ',2,45,760,', 3, '塔尔努夫', 'Tarnow', 'taernufu', 'TAR');
INSERT INTO `crm_data_region` VALUES (761, 45, ',2,45,761,', 3, '塔尔诺布热格', 'Tarnobrzeg', 'taernuoburege', 'QEP');
INSERT INTO `crm_data_region` VALUES (762, 45, ',2,45,762,', 3, '特切', 'Tychy', 'teqie', 'TYY');
INSERT INTO `crm_data_region` VALUES (763, 45, ',2,45,763,', 3, '托伦', 'Torun', 'tuolun', 'TOR');
INSERT INTO `crm_data_region` VALUES (764, 45, ',2,45,764,', 3, '瓦乌布日赫', 'Walbrzych', 'wawuburihe', 'WZH');
INSERT INTO `crm_data_region` VALUES (765, 45, ',2,45,765,', 3, '沃姆扎', 'Lomza', 'womuzha', 'QOY');
INSERT INTO `crm_data_region` VALUES (766, 45, ',2,45,766,', 3, '希米亚诺维采', 'Siemianowice Sl', 'ximiyanuoweicai', 'SOW');
INSERT INTO `crm_data_region` VALUES (767, 45, ',2,45,767,', 3, '希维诺乌伊希切', 'Swinoujscie', 'xiweinuowuyixiqie', 'SWI');
INSERT INTO `crm_data_region` VALUES (768, 45, ',2,45,768,', 3, '希维托赫洛维采', 'Swietochłowice', 'xiweituoheluoweicai', 'SWT');
INSERT INTO `crm_data_region` VALUES (769, 45, ',2,45,769,', 3, '谢德尔采', 'Siedlce', 'xiedeercai', 'SDC');
INSERT INTO `crm_data_region` VALUES (770, 45, ',2,45,770,', 3, '谢拉兹', 'Sieradz', 'xielazi', 'SIR');
INSERT INTO `crm_data_region` VALUES (771, 45, ',2,45,771,', 3, '新松奇', 'Nowy Sacz', 'xinsongqi', 'NOW');
INSERT INTO `crm_data_region` VALUES (772, 45, ',2,45,772,', 3, '雅沃兹诺', 'Jaworzno', 'yawozinuo', 'JAW');
INSERT INTO `crm_data_region` VALUES (773, 45, ',2,45,773,', 3, '耶莱尼亚古拉', 'Jelenia Gora', 'yelainiyagula', 'JEG');
INSERT INTO `crm_data_region` VALUES (774, 45, ',2,45,774,', 3, '扎布热', 'Zabrze', 'zhabure', 'ZAB');
INSERT INTO `crm_data_region` VALUES (775, 45, ',2,45,775,', 3, '扎莫希奇', 'Zamosc', 'zhamoxiqi', 'ZAM');
INSERT INTO `crm_data_region` VALUES (776, 46, ',5,46,776,', 3, '奥尔托', 'El Alto', 'aoertuo', 'ALT');
INSERT INTO `crm_data_region` VALUES (777, 46, ',5,46,777,', 3, '奥鲁罗', 'Oruro', 'aoluluo', 'ORU');
INSERT INTO `crm_data_region` VALUES (778, 46, ',5,46,778,', 3, '贝尼', 'El Beni', 'beini', 'BEN');
INSERT INTO `crm_data_region` VALUES (779, 46, ',5,46,779,', 3, '波多西', 'Potosi', 'boduoxi', 'POI');
INSERT INTO `crm_data_region` VALUES (780, 46, ',5,46,780,', 3, '基拉科洛', 'Quillacollo', 'jilakeluo', 'QUI');
INSERT INTO `crm_data_region` VALUES (781, 46, ',5,46,781,', 3, '科恰班巴', 'Cochabamba', 'keqiabanba', 'CBB');
INSERT INTO `crm_data_region` VALUES (782, 46, ',5,46,782,', 3, '拉巴斯', 'La Paz', 'labasi', 'LPB');
INSERT INTO `crm_data_region` VALUES (783, 46, ',5,46,783,', 3, '潘多', 'Pando', 'panduo', 'PAN');
INSERT INTO `crm_data_region` VALUES (784, 46, ',5,46,784,', 3, '丘基萨卡', 'Chuquisaca', 'qiujisaka', 'CHU');
INSERT INTO `crm_data_region` VALUES (785, 46, ',5,46,785,', 3, '萨卡巴', 'Sacaba', 'sakaba', 'SAC');
INSERT INTO `crm_data_region` VALUES (786, 46, ',5,46,786,', 3, '圣克鲁斯', 'Santa Cruz', 'shengkelusi', 'SRZ');
INSERT INTO `crm_data_region` VALUES (787, 46, ',5,46,787,', 3, '塔里哈', 'Tarija', 'taliha', 'TJA');
INSERT INTO `crm_data_region` VALUES (788, 47, ',2,47,788,', 3, '波萨维纳', 'Posavski', 'bosaweina', 'FPO');
INSERT INTO `crm_data_region` VALUES (789, 47, ',2,47,789,', 3, '波斯尼亚－波德里涅', 'Bosansko-Podrinjski', 'bosiniyabodelinie', 'FBP');
INSERT INTO `crm_data_region` VALUES (790, 47, ',2,47,790,', 3, '多米斯拉夫格勒', 'Tomislavgrad', 'duomisilafugele', 'FTO');
INSERT INTO `crm_data_region` VALUES (791, 47, ',2,47,791,', 3, '黑塞哥维那－涅雷特瓦', 'Hercegovacko-Neretvanski', 'heisaigeweinanieleitewa', 'FHN');
INSERT INTO `crm_data_region` VALUES (792, 47, ',2,47,792,', 3, '萨拉热窝', 'Sarajevo', 'salarewo', 'FSA');
INSERT INTO `crm_data_region` VALUES (793, 47, ',2,47,793,', 3, '图兹拉－波德里涅', 'Tuzlanski-Podrinjski', 'tuzilabodelinie', 'FTU');
INSERT INTO `crm_data_region` VALUES (794, 47, ',2,47,794,', 3, '乌纳－萨纳', 'Unsko-Sanski', 'wunasana', 'FUS');
INSERT INTO `crm_data_region` VALUES (795, 47, ',2,47,795,', 3, '西波斯尼亚', 'Hercegovacko-Bosanski', 'xibosiniya', 'FHB');
INSERT INTO `crm_data_region` VALUES (796, 47, ',2,47,796,', 3, '西黑塞哥维那', 'Zapadno-Hercegovaki', 'xiheisaigeweina', 'FZH');
INSERT INTO `crm_data_region` VALUES (797, 47, ',2,47,797,', 3, '泽尼察－多博伊', 'Zenicko-Dobojski', 'zenichaduoboyi', 'FZE');
INSERT INTO `crm_data_region` VALUES (798, 47, ',2,47,798,', 3, '中波斯尼亚', 'Srednjo-Bosanski', 'zhongbosiniya', 'FSB');
INSERT INTO `crm_data_region` VALUES (799, 49, ',4,49,799,', 3, '伯利兹', 'Belize', 'bolizi', 'BZ');
INSERT INTO `crm_data_region` VALUES (800, 49, ',4,49,800,', 3, '橘园', 'Orange Walk', 'yuan', 'OW');
INSERT INTO `crm_data_region` VALUES (801, 49, ',4,49,801,', 3, '卡约', 'Cayo', 'kayue', 'CY');
INSERT INTO `crm_data_region` VALUES (802, 49, ',4,49,802,', 3, '科罗萨尔', 'Corozal', 'keluosaer', 'CR');
INSERT INTO `crm_data_region` VALUES (803, 49, ',4,49,803,', 3, '斯坦港', 'Stann Creek', 'sitangang', 'SC');
INSERT INTO `crm_data_region` VALUES (804, 49, ',4,49,804,', 3, '托莱多', 'Toledo', 'tuolaiduo', 'TO');
INSERT INTO `crm_data_region` VALUES (805, 51, ',3,51,805,', 3, '巴雷', 'Bale', 'balei', 'BAL');
INSERT INTO `crm_data_region` VALUES (806, 51, ',3,51,806,', 3, '巴姆', 'Bam', 'bamu', 'BAM');
INSERT INTO `crm_data_region` VALUES (807, 51, ',3,51,807,', 3, '巴瓦', 'Banwa', 'bawa', 'BAN');
INSERT INTO `crm_data_region` VALUES (808, 51, ',3,51,808,', 3, '巴泽加', 'Bazega', 'bazejia', 'BAZ');
INSERT INTO `crm_data_region` VALUES (809, 51, ',3,51,809,', 3, '波尼', 'Poni', 'boni', 'PON');
INSERT INTO `crm_data_region` VALUES (810, 51, ',3,51,810,', 3, '布尔古', 'Boulgou', 'buergu', 'BLG');
INSERT INTO `crm_data_region` VALUES (811, 51, ',3,51,811,', 3, '布尔基恩德', 'Boulkiemde', 'buerjiende', 'BOK');
INSERT INTO `crm_data_region` VALUES (812, 51, ',3,51,812,', 3, '布古里巴', 'Bougouriba', 'buguliba', 'BOR');
INSERT INTO `crm_data_region` VALUES (813, 51, ',3,51,813,', 3, '冈祖尔古', 'Ganzourgou', 'gangzuergu', 'GAN');
INSERT INTO `crm_data_region` VALUES (814, 51, ',3,51,814,', 3, '古尔马', 'Gourma', 'guerma', 'GOU');
INSERT INTO `crm_data_region` VALUES (815, 51, ',3,51,815,', 3, '济罗', 'Ziro', 'jiluo', 'ZIR');
INSERT INTO `crm_data_region` VALUES (816, 51, ',3,51,816,', 3, '卡焦戈', 'Kadiogo', 'kajiaoge', 'KAD');
INSERT INTO `crm_data_region` VALUES (817, 51, ',3,51,817,', 3, '凯内杜古', 'Kenedougou', 'kaineidugu', 'KEN');
INSERT INTO `crm_data_region` VALUES (818, 51, ',3,51,818,', 3, '科蒙加里', 'Komondjari', 'kemengjiali', 'KOO');
INSERT INTO `crm_data_region` VALUES (819, 51, ',3,51,819,', 3, '科莫埃', 'Comoe', 'kemoai', 'COM');
INSERT INTO `crm_data_region` VALUES (820, 51, ',3,51,820,', 3, '孔皮恩加', 'Kompienga', 'kongpienjia', 'KOP');
INSERT INTO `crm_data_region` VALUES (821, 51, ',3,51,821,', 3, '孔西', 'Kossi', 'kongxi', 'KOS');
INSERT INTO `crm_data_region` VALUES (822, 51, ',3,51,822,', 3, '库尔佩罗戈', 'Koulpelogo', 'kuerpeiluoge', 'KOL');
INSERT INTO `crm_data_region` VALUES (823, 51, ',3,51,823,', 3, '库尔维奥戈', 'Kourweogo', 'kuerweiaoge', 'KOW');
INSERT INTO `crm_data_region` VALUES (824, 51, ',3,51,824,', 3, '库里滕加', 'Kouritenga', 'kulijia', 'KOT');
INSERT INTO `crm_data_region` VALUES (825, 51, ',3,51,825,', 3, '雷拉巴', 'Leraba', 'leilaba', 'LER');
INSERT INTO `crm_data_region` VALUES (826, 51, ',3,51,826,', 3, '罗卢姆', 'Loroum', 'luolumu', 'LOR');
INSERT INTO `crm_data_region` VALUES (827, 51, ',3,51,827,', 3, '穆翁', 'Mouhoun', 'muweng', 'MOU');
INSERT INTO `crm_data_region` VALUES (828, 51, ',3,51,828,', 3, '纳门滕加', 'Namentenga', 'namenjia', 'NAM');
INSERT INTO `crm_data_region` VALUES (829, 51, ',3,51,829,', 3, '纳乌里', 'Nahouri', 'nawuli', 'NAH');
INSERT INTO `crm_data_region` VALUES (830, 51, ',3,51,830,', 3, '纳亚拉', 'Nayala', 'nayala', 'NAY');
INSERT INTO `crm_data_region` VALUES (831, 51, ',3,51,831,', 3, '尼亚尼亚', 'Gnagna', 'niyaniya', 'GNA');
INSERT INTO `crm_data_region` VALUES (832, 51, ',3,51,832,', 3, '努姆比埃尔', 'Noumbiel', 'numubiaier', 'NOU');
INSERT INTO `crm_data_region` VALUES (833, 51, ',3,51,833,', 3, '帕索雷', 'Passore', 'pasuolei', 'PAS');
INSERT INTO `crm_data_region` VALUES (834, 51, ',3,51,834,', 3, '塞诺', 'Seno', 'sainuo', 'SEN');
INSERT INTO `crm_data_region` VALUES (835, 51, ',3,51,835,', 3, '桑吉', 'Sanguie', 'sangji', 'SAG');
INSERT INTO `crm_data_region` VALUES (836, 51, ',3,51,836,', 3, '桑马滕加', 'Sanmatenga', 'sangmajia', 'SAM');
INSERT INTO `crm_data_region` VALUES (837, 51, ',3,51,837,', 3, '苏鲁', 'Sourou', 'sulu', 'SOR');
INSERT INTO `crm_data_region` VALUES (838, 51, ',3,51,838,', 3, '苏姆', 'Soum', 'sumu', 'SOM');
INSERT INTO `crm_data_region` VALUES (839, 51, ',3,51,839,', 3, '塔波阿', 'Tapoa', 'taboa', 'TAP');
INSERT INTO `crm_data_region` VALUES (840, 51, ',3,51,840,', 3, '图伊', 'Tuy', 'tuyi', 'TUY');
INSERT INTO `crm_data_region` VALUES (841, 51, ',3,51,841,', 3, '乌埃', 'Houet', 'wuai', 'HOU');
INSERT INTO `crm_data_region` VALUES (842, 51, ',3,51,842,', 3, '乌布里滕加', 'Oubritenga', 'wubulijia', 'OUB');
INSERT INTO `crm_data_region` VALUES (843, 51, ',3,51,843,', 3, '乌达兰', 'Oudalan', 'wudalan', 'OUD');
INSERT INTO `crm_data_region` VALUES (844, 51, ',3,51,844,', 3, '锡西里', 'Sissili', 'xixili', 'SIS');
INSERT INTO `crm_data_region` VALUES (845, 51, ',3,51,845,', 3, '亚加', 'Yagha', 'yajia', 'YAG');
INSERT INTO `crm_data_region` VALUES (846, 51, ',3,51,846,', 3, '亚滕加', 'Yatenga', 'yajia', 'YAT');
INSERT INTO `crm_data_region` VALUES (847, 51, ',3,51,847,', 3, '伊奥巴', 'Ioba', 'yiaoba', 'IOA');
INSERT INTO `crm_data_region` VALUES (848, 51, ',3,51,848,', 3, '宗德韦奥戈', 'Zoundweogo', 'zongdeweiaoge', 'ZOW');
INSERT INTO `crm_data_region` VALUES (849, 51, ',3,51,849,', 3, '宗多马', 'Zondoma', 'zongduoma', 'ZOD');
INSERT INTO `crm_data_region` VALUES (850, 52, ',3,52,850,', 3, '布班扎', 'Bubanza', 'bubanzha', 'BB');
INSERT INTO `crm_data_region` VALUES (851, 52, ',3,52,851,', 3, '布鲁里', 'Bururi', 'bululi', 'BR');
INSERT INTO `crm_data_region` VALUES (852, 52, ',3,52,852,', 3, '布琼布拉城市', 'Bujumbura Mairie', 'buqiongbulachengshi', 'BM');
INSERT INTO `crm_data_region` VALUES (853, 52, ',3,52,853,', 3, '布琼布拉乡村', 'Bujumbura Rural', 'buqiongbulaxiangcun', 'BU');
INSERT INTO `crm_data_region` VALUES (854, 52, ',3,52,854,', 3, '恩戈齐', 'Ngozi', 'engeqi', 'NG');
INSERT INTO `crm_data_region` VALUES (855, 52, ',3,52,855,', 3, '基龙多', 'Kirundo', 'jilongduo', 'KI');
INSERT INTO `crm_data_region` VALUES (856, 52, ',3,52,856,', 3, '基特加', 'Gitega', 'jitejia', 'GI');
INSERT INTO `crm_data_region` VALUES (857, 52, ',3,52,857,', 3, '卡鲁济', 'Karuzi', 'kaluji', 'KR');
INSERT INTO `crm_data_region` VALUES (858, 52, ',3,52,858,', 3, '卡扬扎', 'Kayanza', 'kayangzha', 'KY');
INSERT INTO `crm_data_region` VALUES (859, 52, ',3,52,859,', 3, '坎库佐', 'Cankuzo', 'kankuzuo', 'CA');
INSERT INTO `crm_data_region` VALUES (860, 52, ',3,52,860,', 3, '鲁塔纳', 'Rutana', 'lutana', 'RT');
INSERT INTO `crm_data_region` VALUES (861, 52, ',3,52,861,', 3, '鲁伊吉', 'Ruyigi', 'luyiji', 'RY');
INSERT INTO `crm_data_region` VALUES (862, 52, ',3,52,862,', 3, '马坎巴', 'Makamba', 'makanba', 'MA');
INSERT INTO `crm_data_region` VALUES (863, 52, ',3,52,863,', 3, '穆拉姆维亚', 'Muramvya', 'mulamuweiya', 'MU');
INSERT INTO `crm_data_region` VALUES (864, 52, ',3,52,864,', 3, '穆瓦洛', 'Mwaro', 'muwaluo', 'MW');
INSERT INTO `crm_data_region` VALUES (865, 52, ',3,52,865,', 3, '穆因加', 'Muyinga', 'muyinjia', 'MY');
INSERT INTO `crm_data_region` VALUES (866, 52, ',3,52,866,', 3, '锡比托凯', 'Cibitoke', 'xibituokai', 'CI');
INSERT INTO `crm_data_region` VALUES (867, 54, ',1,54,867,', 3, '海州', 'Haeju', 'haizhou', 'HAE');
INSERT INTO `crm_data_region` VALUES (868, 54, ',1,54,868,', 3, '惠山', 'Hyesan', 'huishan', 'HYE');
INSERT INTO `crm_data_region` VALUES (869, 54, ',1,54,869,', 3, '江界', 'Kanggye', 'jiangjie', 'KAN');
INSERT INTO `crm_data_region` VALUES (870, 54, ',1,54,870,', 3, '开城', 'Kaesong', 'kaicheng', 'KSN');
INSERT INTO `crm_data_region` VALUES (871, 54, ',1,54,871,', 3, '罗先', 'Naseon', 'luoxian', 'NAS');
INSERT INTO `crm_data_region` VALUES (872, 54, ',1,54,872,', 3, '南浦', 'Namp\'o', 'nanpu', 'NAM');
INSERT INTO `crm_data_region` VALUES (873, 54, ',1,54,873,', 3, '平壤', 'Pyongyang', 'pingrang', 'FNJ');
INSERT INTO `crm_data_region` VALUES (874, 54, ',1,54,874,', 3, '清津', 'Ch\'ongjin', 'qingjin', 'CHO');
INSERT INTO `crm_data_region` VALUES (875, 54, ',1,54,875,', 3, '沙里院', 'Sariwon', 'shaliyuan', 'SAR');
INSERT INTO `crm_data_region` VALUES (876, 54, ',1,54,876,', 3, '咸兴', 'Hamhung', 'xianxing', 'HAM');
INSERT INTO `crm_data_region` VALUES (877, 54, ',1,54,877,', 3, '新义州', 'Sinuiju', 'xinyizhou', 'SII');
INSERT INTO `crm_data_region` VALUES (878, 54, ',1,54,878,', 3, '元山', 'Wonsan', 'yuanshan', 'WON');
INSERT INTO `crm_data_region` VALUES (879, 55, ',2,55,879,', 3, '奥胡斯', 'Aarhus', 'aohusi', 'AR');
INSERT INTO `crm_data_region` VALUES (880, 55, ',2,55,880,', 3, '北日德兰', 'Nordjylland', 'beiridelan', 'VSV');
INSERT INTO `crm_data_region` VALUES (881, 55, ',2,55,881,', 3, '博恩霍尔姆', 'Bornholm', 'boenhuoermu', 'BO');
INSERT INTO `crm_data_region` VALUES (882, 55, ',2,55,882,', 3, '菲特烈堡', 'Frederiksborg', 'feiteliebao', 'FRE');
INSERT INTO `crm_data_region` VALUES (883, 55, ',2,55,883,', 3, '菲茵', 'Fyn', 'feiyin', 'FY');
INSERT INTO `crm_data_region` VALUES (884, 55, ',2,55,884,', 3, '哥本哈根', 'Copenhagen', 'gebenhagen', 'CPH');
INSERT INTO `crm_data_region` VALUES (885, 55, ',2,55,885,', 3, '里伯', 'Ribe', 'libo', 'RIB');
INSERT INTO `crm_data_region` VALUES (886, 55, ',2,55,886,', 3, '灵克宾', 'Ringkoebing', 'lingkebin', 'RKG');
INSERT INTO `crm_data_region` VALUES (887, 55, ',2,55,887,', 3, '罗斯基勒', 'Roskilde', 'luosijile', 'RKE');
INSERT INTO `crm_data_region` VALUES (888, 55, ',2,55,888,', 3, '南日德兰', 'Soenderjylland', 'nanridelan', 'VBI');
INSERT INTO `crm_data_region` VALUES (889, 55, ',2,55,889,', 3, '斯多斯特姆', 'Storstroem', 'siduositemu', 'ST');
INSERT INTO `crm_data_region` VALUES (890, 55, ',2,55,890,', 3, '维堡', 'Viborg', 'weibao', 'VIB');
INSERT INTO `crm_data_region` VALUES (891, 55, ',2,55,891,', 3, '维厄勒', 'Vejle', 'weiele', 'VEJ');
INSERT INTO `crm_data_region` VALUES (892, 55, ',2,55,892,', 3, '西希兰', 'Vestsjaelland', 'xixilan', 'VS');
INSERT INTO `crm_data_region` VALUES (893, 56, ',2,56,893,', 3, '阿恩斯贝格', 'Arnsberg', 'aensibeige', 'ARN');
INSERT INTO `crm_data_region` VALUES (894, 56, ',2,56,894,', 3, '爱尔福特', 'Erfurt', 'aierfute', 'ERF');
INSERT INTO `crm_data_region` VALUES (895, 56, ',2,56,895,', 3, '安斯巴格', 'Ansbach', 'ansibage', 'ANS');
INSERT INTO `crm_data_region` VALUES (896, 56, ',2,56,896,', 3, '奥格斯堡', 'Augsburg', 'aogesibao', 'AGB');
INSERT INTO `crm_data_region` VALUES (897, 56, ',2,56,897,', 3, '柏林', 'Berlin', 'bailin', 'BE');
INSERT INTO `crm_data_region` VALUES (898, 56, ',2,56,898,', 3, '拜伊罗特', 'Bayreuth', 'baiyiluote', 'BYU');
INSERT INTO `crm_data_region` VALUES (899, 56, ',2,56,899,', 3, '比勒费尔德', 'Bielefeld', 'bilefeierde', 'BFE');
INSERT INTO `crm_data_region` VALUES (900, 56, ',2,56,900,', 3, '波茨坦', 'Potsdam', 'bocitan', 'POT');
INSERT INTO `crm_data_region` VALUES (901, 56, ',2,56,901,', 3, '波鸿', 'Bochum', 'bohong', 'BOM');
INSERT INTO `crm_data_region` VALUES (902, 56, ',2,56,902,', 3, '不来梅', 'Bremen', 'bulaimei', 'HB');
INSERT INTO `crm_data_region` VALUES (903, 56, ',2,56,903,', 3, '不伦瑞克', 'Brunswick', 'bulunruike', 'BRW');
INSERT INTO `crm_data_region` VALUES (904, 56, ',2,56,904,', 3, '达姆施塔特', 'Darmstadt', 'damushitate', 'DAR');
INSERT INTO `crm_data_region` VALUES (905, 56, ',2,56,905,', 3, '代特莫尔特', 'Detmold', 'daitemoerte', 'DET');
INSERT INTO `crm_data_region` VALUES (906, 56, ',2,56,906,', 3, '德累斯顿', 'Dresden', 'deleisidun', 'DRS');
INSERT INTO `crm_data_region` VALUES (907, 56, ',2,56,907,', 3, '德绍', 'Dessau', 'deshao', 'DES');
INSERT INTO `crm_data_region` VALUES (908, 56, ',2,56,908,', 3, '杜塞尔多夫', 'Dusseldorf', 'dusaierduofu', 'DUS');
INSERT INTO `crm_data_region` VALUES (909, 56, ',2,56,909,', 3, '法兰克福', 'Frankfurt', 'falankefu', 'FFO');
INSERT INTO `crm_data_region` VALUES (910, 56, ',2,56,910,', 3, '弗赖堡', 'Freiburg', 'fulaibao', 'FBG');
INSERT INTO `crm_data_region` VALUES (911, 56, ',2,56,911,', 3, '哈雷', 'Halle', 'halei', 'HAE');
INSERT INTO `crm_data_region` VALUES (912, 56, ',2,56,912,', 3, '汉堡', 'Hamburg', 'hanbao', 'HH');
INSERT INTO `crm_data_region` VALUES (913, 56, ',2,56,913,', 3, '汉诺威', 'Hannover', 'hannuowei', 'HAJ');
INSERT INTO `crm_data_region` VALUES (914, 56, ',2,56,914,', 3, '基尔', 'Kiel', 'jier', 'KEL');
INSERT INTO `crm_data_region` VALUES (915, 56, ',2,56,915,', 3, '吉森', 'GieBen', 'jisen', 'GBN');
INSERT INTO `crm_data_region` VALUES (916, 56, ',2,56,916,', 3, '卡尔斯鲁厄', 'Karlsruhe', 'kaersilue', 'KAE');
INSERT INTO `crm_data_region` VALUES (917, 56, ',2,56,917,', 3, '卡塞尔', 'Kassel', 'kasaier', 'KAS');
INSERT INTO `crm_data_region` VALUES (918, 56, ',2,56,918,', 3, '开姆尼斯', 'Chemnitz', 'kaimunisi', 'CHE');
INSERT INTO `crm_data_region` VALUES (919, 56, ',2,56,919,', 3, '科布伦次', 'Koblenz', 'kebulunci', 'KOB');
INSERT INTO `crm_data_region` VALUES (920, 56, ',2,56,920,', 3, '科隆', 'Cologne', 'kelong', 'CGN');
INSERT INTO `crm_data_region` VALUES (921, 56, ',2,56,921,', 3, '莱比锡', 'Leipzig', 'laibixi', 'LEJ');
INSERT INTO `crm_data_region` VALUES (922, 56, ',2,56,922,', 3, '兰茨胡特', 'Landshut', 'lancihute', 'LDH');
INSERT INTO `crm_data_region` VALUES (923, 56, ',2,56,923,', 3, '吕讷堡', 'Luneburg', 'lvbao', 'LBG');
INSERT INTO `crm_data_region` VALUES (924, 56, ',2,56,924,', 3, '马格德堡', 'Magdeburg', 'magedebao', 'MAG');
INSERT INTO `crm_data_region` VALUES (925, 56, ',2,56,925,', 3, '曼海姆', 'Mannheim', 'manhaimu', 'MHG');
INSERT INTO `crm_data_region` VALUES (926, 56, ',2,56,926,', 3, '美因兹', 'Mainz', 'meiyinzi', 'MAI');
INSERT INTO `crm_data_region` VALUES (927, 56, ',2,56,927,', 3, '明斯特', 'Muenster', 'mingsite', 'MUN');
INSERT INTO `crm_data_region` VALUES (928, 56, ',2,56,928,', 3, '慕尼黑', 'Munich', 'munihei', 'MUC');
INSERT INTO `crm_data_region` VALUES (929, 56, ',2,56,929,', 3, '纽伦堡', 'Nuremberg', 'niulunbao', 'NUE');
INSERT INTO `crm_data_region` VALUES (930, 56, ',2,56,930,', 3, '什未林', 'Schwerin', 'shiweilin', 'SWH');
INSERT INTO `crm_data_region` VALUES (931, 56, ',2,56,931,', 3, '斯图加特', 'Stuttgart', 'situjiate', 'STR');
INSERT INTO `crm_data_region` VALUES (932, 56, ',2,56,932,', 3, '特里尔', 'Trier', 'telier', 'TRI');
INSERT INTO `crm_data_region` VALUES (933, 56, ',2,56,933,', 3, '威斯巴登', 'Wiesbaden', 'weisibadeng', 'WIB');
INSERT INTO `crm_data_region` VALUES (934, 56, ',2,56,934,', 3, '维尔茨堡', 'Wuerzburg', 'weiercibao', 'WUG');
INSERT INTO `crm_data_region` VALUES (935, 57, ',1,57,935,', 3, '阿伊莱乌', 'Aileu', 'ayilaiwu', 'AL');
INSERT INTO `crm_data_region` VALUES (936, 57, ',1,57,936,', 3, '阿伊纳罗', 'Ainaro', 'ayinaluo', 'AN');
INSERT INTO `crm_data_region` VALUES (937, 57, ',1,57,937,', 3, '埃尔梅拉', 'Ermera', 'aiermeila', 'ER');
INSERT INTO `crm_data_region` VALUES (938, 57, ',1,57,938,', 3, '安贝诺', 'Ambeno', 'anbeinuo', 'AM');
INSERT INTO `crm_data_region` VALUES (939, 57, ',1,57,939,', 3, '包考', 'Baucau', 'baokao', 'BA');
INSERT INTO `crm_data_region` VALUES (940, 57, ',1,57,940,', 3, '博博纳罗', 'Bobonaro', 'bobonaluo', 'BO');
INSERT INTO `crm_data_region` VALUES (941, 57, ',1,57,941,', 3, '帝力', 'Dili', 'dili', 'DI');
INSERT INTO `crm_data_region` VALUES (942, 57, ',1,57,942,', 3, '科瓦利马', 'Kovalima', 'kewalima', 'KO');
INSERT INTO `crm_data_region` VALUES (943, 57, ',1,57,943,', 3, '劳滕', 'Lautem', 'lao', 'LA');
INSERT INTO `crm_data_region` VALUES (944, 57, ',1,57,944,', 3, '利基卡', 'Liquica', 'lijika', 'LI');
INSERT INTO `crm_data_region` VALUES (945, 57, ',1,57,945,', 3, '马纳图托', 'Manatuto', 'manatutuo', 'MT');
INSERT INTO `crm_data_region` VALUES (946, 57, ',1,57,946,', 3, '马努法伊', 'Manofahi', 'manufayi', 'MF');
INSERT INTO `crm_data_region` VALUES (947, 57, ',1,57,947,', 3, '维克克', 'Viqueque', 'weikeke', 'VI');
INSERT INTO `crm_data_region` VALUES (948, 58, ',3,58,948,', 3, '滨海区', 'Maritime', 'binhaiqu', 'M');
INSERT INTO `crm_data_region` VALUES (949, 58, ',3,58,949,', 3, '草原区', 'Savanes', 'caoyuanqu', 'S');
INSERT INTO `crm_data_region` VALUES (950, 58, ',3,58,950,', 3, '高原区', 'Plateaux', 'gaoyuanqu', 'P');
INSERT INTO `crm_data_region` VALUES (951, 58, ',3,58,951,', 3, '卡拉区', 'Kara', 'kalaqu', 'K');
INSERT INTO `crm_data_region` VALUES (952, 58, ',3,58,952,', 3, '中部区', 'Centre', 'zhongbuqu', 'C');
INSERT INTO `crm_data_region` VALUES (953, 61, ',2,61,953,', 3, '阿巴坎', 'Abakan', 'abakan', 'ABA');
INSERT INTO `crm_data_region` VALUES (954, 61, ',2,61,954,', 3, '阿尔汉格尔斯克', 'Arkhangelsk', 'aerhangeersike', 'ARK');
INSERT INTO `crm_data_region` VALUES (955, 61, ',2,61,955,', 3, '阿金斯科耶', 'Aginskoye', 'ajinsikeye', 'AGI');
INSERT INTO `crm_data_region` VALUES (956, 61, ',2,61,956,', 3, '阿纳德尔', 'Anadyr', 'anadeer', 'DYR');
INSERT INTO `crm_data_region` VALUES (957, 61, ',2,61,957,', 3, '阿斯特拉罕', 'Astrakhan', 'asitelahan', 'AST');
INSERT INTO `crm_data_region` VALUES (958, 61, ',2,61,958,', 3, '埃利斯塔', 'Elista', 'ailisita', 'ESL');
INSERT INTO `crm_data_region` VALUES (959, 61, ',2,61,959,', 3, '奥廖尔', 'Orel', 'aoliaoer', 'ORL');
INSERT INTO `crm_data_region` VALUES (960, 61, ',2,61,960,', 3, '奥伦堡', 'Orenburg', 'aolunbao', 'ORE');
INSERT INTO `crm_data_region` VALUES (961, 61, ',2,61,961,', 3, '巴尔瑙尔', 'Barnaul', 'baerer', 'BAX');
INSERT INTO `crm_data_region` VALUES (962, 61, ',2,61,962,', 3, '奔萨', 'Penza', 'bensa', 'PNZ');
INSERT INTO `crm_data_region` VALUES (963, 61, ',2,61,963,', 3, '彼得罗巴甫洛夫斯克', 'Petropavlovsk-Kamchatskiy', 'bideluobafuluofusike', 'PKC');
INSERT INTO `crm_data_region` VALUES (964, 61, ',2,61,964,', 3, '彼得罗扎沃茨克', 'Petrozavodsk', 'bideluozhawocike', 'PES');
INSERT INTO `crm_data_region` VALUES (965, 61, ',2,61,965,', 3, '彼尔姆', 'Perm', 'biermu', 'PER');
INSERT INTO `crm_data_region` VALUES (966, 61, ',2,61,966,', 3, '比罗比詹', 'Birobidzan', 'biluobizhan', 'BBZ');
INSERT INTO `crm_data_region` VALUES (967, 61, ',2,61,967,', 3, '别尔哥罗德', 'Belgorod', 'bieergeluode', 'BEL');
INSERT INTO `crm_data_region` VALUES (968, 61, ',2,61,968,', 3, '伯力', 'Chabarovsk', 'boli', 'COK');
INSERT INTO `crm_data_region` VALUES (969, 61, ',2,61,969,', 3, '布拉戈维申斯克', 'Blagoveshchensk', 'bulageweishensike', 'BQS');
INSERT INTO `crm_data_region` VALUES (970, 61, ',2,61,970,', 3, '布良斯克', 'Bryansk', 'buliangsike', 'BRY');
INSERT INTO `crm_data_region` VALUES (971, 61, ',2,61,971,', 3, '车里雅宾斯克', 'Chelyabinsk', 'cheliyabinsike', 'CHE');
INSERT INTO `crm_data_region` VALUES (972, 61, ',2,61,972,', 3, '赤塔', 'Chita', 'chita', 'CHI');
INSERT INTO `crm_data_region` VALUES (973, 61, ',2,61,973,', 3, '顿河畔罗斯托夫', 'Rostov-na-Donu', 'dunhepanluosituofu', 'ROS');
INSERT INTO `crm_data_region` VALUES (974, 61, ',2,61,974,', 3, '鄂木斯克', 'Omsk', 'emusike', 'OMS');
INSERT INTO `crm_data_region` VALUES (975, 61, ',2,61,975,', 3, '伏尔加格勒', 'Volgograd', 'fuerjiagele', 'VOG');
INSERT INTO `crm_data_region` VALUES (976, 61, ',2,61,976,', 3, '弗拉基米尔', 'Vladimir', 'fulajimier', 'VMR');
INSERT INTO `crm_data_region` VALUES (977, 61, ',2,61,977,', 3, '弗拉季高加索', 'Vladikavkaz', 'fulajigaojiasuo', 'VLA');
INSERT INTO `crm_data_region` VALUES (978, 61, ',2,61,978,', 3, '戈尔诺－阿尔泰斯克', 'Gorno-Altajsk', 'geernuoaertaisike', 'GOA');
INSERT INTO `crm_data_region` VALUES (979, 61, ',2,61,979,', 3, '格罗兹尼', 'Grozny', 'geluozini', 'GRV');
INSERT INTO `crm_data_region` VALUES (980, 61, ',2,61,980,', 3, '海参崴', 'Vladivostok', 'haican', 'VVO');
INSERT INTO `crm_data_region` VALUES (981, 61, ',2,61,981,', 3, '汉特－曼西斯克', 'Khanty-Mansiysk', 'hantemanxisike', 'KHM');
INSERT INTO `crm_data_region` VALUES (982, 61, ',2,61,982,', 3, '基洛夫', 'Kirov', 'jiluofu', 'KIR');
INSERT INTO `crm_data_region` VALUES (983, 61, ',2,61,983,', 3, '加里宁格勒', 'Kaliningrad', 'jialininggele', 'KGD');
INSERT INTO `crm_data_region` VALUES (984, 61, ',2,61,984,', 3, '喀山', 'Kazan', 'kashan', 'KZN');
INSERT INTO `crm_data_region` VALUES (985, 61, ',2,61,985,', 3, '卡卢加', 'Kaluga', 'kalujia', 'KLF');
INSERT INTO `crm_data_region` VALUES (986, 61, ',2,61,986,', 3, '科斯特罗马', 'Kostroma', 'kesiteluoma', 'KOS');
INSERT INTO `crm_data_region` VALUES (987, 61, ',2,61,987,', 3, '克拉斯诺达尔', 'Krasnodar', 'kelasinuodaer', 'KRR');
INSERT INTO `crm_data_region` VALUES (988, 61, ',2,61,988,', 3, '克拉斯诺亚尔斯克', 'Krasnojarsk', 'kelasinuoyaersike', 'KYA');
INSERT INTO `crm_data_region` VALUES (989, 61, ',2,61,989,', 3, '克麦罗沃', 'Kemerovo', 'kemailuowo', 'KEM');
INSERT INTO `crm_data_region` VALUES (990, 61, ',2,61,990,', 3, '克孜勒', 'Kyzyl', 'kezile', 'KYZ');
INSERT INTO `crm_data_region` VALUES (991, 61, ',2,61,991,', 3, '库德姆卡尔', 'Kudymkar', 'kudemukaer', 'KUD');
INSERT INTO `crm_data_region` VALUES (992, 61, ',2,61,992,', 3, '库尔干', 'Kurgan', 'kuergan', 'KRO');
INSERT INTO `crm_data_region` VALUES (993, 61, ',2,61,993,', 3, '库尔斯克', 'Kursk', 'kuersike', 'URS');
INSERT INTO `crm_data_region` VALUES (994, 61, ',2,61,994,', 3, '利佩茨克', 'Lipeck', 'lipeicike', 'LIP');
INSERT INTO `crm_data_region` VALUES (995, 61, ',2,61,995,', 3, '梁赞', 'Ryazan', 'liangzan', 'RYA');
INSERT INTO `crm_data_region` VALUES (996, 61, ',2,61,996,', 3, '马哈奇卡拉', 'Makhachkala', 'mahaqikala', 'MCX');
INSERT INTO `crm_data_region` VALUES (997, 61, ',2,61,997,', 3, '马加丹', 'Magadan', 'majiadan', 'MAG');
INSERT INTO `crm_data_region` VALUES (998, 61, ',2,61,998,', 3, '马加斯', 'Magas', 'majiasi', 'IN');
INSERT INTO `crm_data_region` VALUES (999, 61, ',2,61,999,', 3, '迈科普', 'Maykop', 'maikepu', 'MAY');
INSERT INTO `crm_data_region` VALUES (1000, 61, ',2,61,1000,', 3, '摩尔曼斯克', 'Murmansk', 'moermansike', 'MMK');
INSERT INTO `crm_data_region` VALUES (1001, 61, ',2,61,1001,', 3, '莫斯科', 'Moscow', 'mosike', 'MOW');
INSERT INTO `crm_data_region` VALUES (1002, 61, ',2,61,1002,', 3, '纳尔奇克', 'Nalchik', 'naerqike', 'NAL');
INSERT INTO `crm_data_region` VALUES (1003, 61, ',2,61,1003,', 3, '纳里扬马尔', 'Naryan-Mar', 'naliyangmaer', 'NNM');
INSERT INTO `crm_data_region` VALUES (1004, 61, ',2,61,1004,', 3, '南萨哈林斯克', 'Juzno-Sachalinsk', 'nansahalinsike', 'JSA');
INSERT INTO `crm_data_region` VALUES (1005, 61, ',2,61,1005,', 3, '诺夫哥罗德', 'Velikij Novgorod', 'nuofugeluode', 'VUS');
INSERT INTO `crm_data_region` VALUES (1006, 61, ',2,61,1006,', 3, '帕拉纳', 'Palana', 'palana', 'PAL');
INSERT INTO `crm_data_region` VALUES (1007, 61, ',2,61,1007,', 3, '普斯科夫', 'Pskov', 'pusikefu', 'PSK');
INSERT INTO `crm_data_region` VALUES (1008, 61, ',2,61,1008,', 3, '切博克萨雷', 'Cheboksary', 'qiebokesalei', 'CSY');
INSERT INTO `crm_data_region` VALUES (1009, 61, ',2,61,1009,', 3, '切尔克斯克', 'Cherkessk', 'qieerkesike', 'CKS');
INSERT INTO `crm_data_region` VALUES (1010, 61, ',2,61,1010,', 3, '秋明', 'Tyumen', 'qiuming', 'TYU');
INSERT INTO `crm_data_region` VALUES (1011, 61, ',2,61,1011,', 3, '萨拉托夫', 'Saratov', 'salatuofu', 'SAR');
INSERT INTO `crm_data_region` VALUES (1012, 61, ',2,61,1012,', 3, '萨兰斯克', 'Saransk', 'salansike', 'SKX');
INSERT INTO `crm_data_region` VALUES (1013, 61, ',2,61,1013,', 3, '萨列哈尔德', 'Salekhard', 'saliehaerde', 'SLY');
INSERT INTO `crm_data_region` VALUES (1014, 61, ',2,61,1014,', 3, '萨马拉', 'Samara', 'samala', 'SAM');
INSERT INTO `crm_data_region` VALUES (1015, 61, ',2,61,1015,', 3, '瑟克特夫卡尔', 'Syktyvkar', 'seketefukaer', 'SCW');
INSERT INTO `crm_data_region` VALUES (1016, 61, ',2,61,1016,', 3, '圣彼得堡', 'St. Peterburg', 'shengbidebao', 'SPE');
INSERT INTO `crm_data_region` VALUES (1017, 61, ',2,61,1017,', 3, '斯摩棱斯克', 'Smolensk', 'simolengsike', 'LNX');
INSERT INTO `crm_data_region` VALUES (1018, 61, ',2,61,1018,', 3, '斯塔夫罗波尔', 'Stavropol', 'sitafuluoboer', 'STA');
INSERT INTO `crm_data_region` VALUES (1019, 61, ',2,61,1019,', 3, '坦波夫', 'Tambov', 'tanbofu', 'TAM');
INSERT INTO `crm_data_region` VALUES (1020, 61, ',2,61,1020,', 3, '特维尔', 'Tver', 'teweier', 'TVE');
INSERT INTO `crm_data_region` VALUES (1021, 61, ',2,61,1021,', 3, '图拉', 'Tula', 'tula', 'TUL');
INSERT INTO `crm_data_region` VALUES (1022, 61, ',2,61,1022,', 3, '托木斯克', 'Tomsk', 'tuomusike', 'TOM');
INSERT INTO `crm_data_region` VALUES (1023, 61, ',2,61,1023,', 3, '沃罗涅什', 'Voronezh', 'woluonieshi', 'VOR');
INSERT INTO `crm_data_region` VALUES (1024, 61, ',2,61,1024,', 3, '沃洛格达', 'Vologda', 'woluogeda', 'VLG');
INSERT INTO `crm_data_region` VALUES (1025, 61, ',2,61,1025,', 3, '乌法', 'Ufa', 'wufa', 'UFA');
INSERT INTO `crm_data_region` VALUES (1026, 61, ',2,61,1026,', 3, '乌兰乌德', 'Ulan-Ude', 'wulanwude', 'UUD');
INSERT INTO `crm_data_region` VALUES (1027, 61, ',2,61,1027,', 3, '乌里扬诺夫斯克', 'Uljanovsk', 'wuliyangnuofusike', 'ULY');
INSERT INTO `crm_data_region` VALUES (1028, 61, ',2,61,1028,', 3, '乌斯季奥尔登斯基', 'Ust-Ordynsky', 'wusijiaoerdengsiji', 'UOB');
INSERT INTO `crm_data_region` VALUES (1029, 61, ',2,61,1029,', 3, '下诺夫哥罗德', 'Niznij Novgorod', 'xianuofugeluode', 'GOJ');
INSERT INTO `crm_data_region` VALUES (1030, 61, ',2,61,1030,', 3, '新西伯利亚', 'Novosibirsk', 'xinxiboliya', 'NVS');
INSERT INTO `crm_data_region` VALUES (1031, 61, ',2,61,1031,', 3, '雅库茨克', 'Jakutsk', 'yakucike', 'JAK');
INSERT INTO `crm_data_region` VALUES (1032, 61, ',2,61,1032,', 3, '雅罗斯拉夫尔', 'Jaroslavl', 'yaluosilafuer', 'JAR');
INSERT INTO `crm_data_region` VALUES (1033, 61, ',2,61,1033,', 3, '叶卡捷林堡', 'Jekaterinburg', 'yekajielinbao', 'JEK');
INSERT INTO `crm_data_region` VALUES (1034, 61, ',2,61,1034,', 3, '伊尔库茨克', 'Irkutsk', 'yierkucike', 'IKT');
INSERT INTO `crm_data_region` VALUES (1035, 61, ',2,61,1035,', 3, '伊热夫斯克', 'Izhevsk', 'yirefusike', 'IJK');
INSERT INTO `crm_data_region` VALUES (1036, 61, ',2,61,1036,', 3, '伊万诺沃', 'Ivanovo', 'yiwannuowo', 'IVO');
INSERT INTO `crm_data_region` VALUES (1037, 61, ',2,61,1037,', 3, '约什卡尔奥拉', 'Yoshkar-Ola', 'yueshikaeraola', 'YOL');
INSERT INTO `crm_data_region` VALUES (1038, 62, ',5,62,1038,', 3, '阿苏艾', 'Azuay', 'asuai', 'A');
INSERT INTO `crm_data_region` VALUES (1039, 62, ',5,62,1039,', 3, '埃尔奥罗', 'El Oro', 'aieraoluo', 'O');
INSERT INTO `crm_data_region` VALUES (1040, 62, ',5,62,1040,', 3, '埃斯梅拉尔达斯', 'Esmeraldas', 'aisimeilaerdasi', 'E');
INSERT INTO `crm_data_region` VALUES (1041, 62, ',5,62,1041,', 3, '玻利瓦尔', 'Bolivar', 'boliwaer', 'B');
INSERT INTO `crm_data_region` VALUES (1042, 62, ',5,62,1042,', 3, '瓜亚斯', 'Guayas', 'guayasi', 'G');
INSERT INTO `crm_data_region` VALUES (1043, 62, ',5,62,1043,', 3, '加拉帕戈斯', 'Galapagos', 'jialapagesi', 'W');
INSERT INTO `crm_data_region` VALUES (1044, 62, ',5,62,1044,', 3, '卡尔奇', 'Carchi', 'kaerqi', 'C');
INSERT INTO `crm_data_region` VALUES (1045, 62, ',5,62,1045,', 3, '卡尼亚尔', 'Canar', 'kaniyaer', 'F');
INSERT INTO `crm_data_region` VALUES (1046, 62, ',5,62,1046,', 3, '科托帕希', 'Cotopaxi', 'ketuopaxi', 'X');
INSERT INTO `crm_data_region` VALUES (1047, 62, ',5,62,1047,', 3, '洛哈', 'Loja', 'luoha', 'L');
INSERT INTO `crm_data_region` VALUES (1048, 62, ',5,62,1048,', 3, '洛斯里奥斯', 'Los Rios', 'luosiliaosi', 'R');
INSERT INTO `crm_data_region` VALUES (1049, 62, ',5,62,1049,', 3, '马纳比', 'Manabi', 'manabi', 'M');
INSERT INTO `crm_data_region` VALUES (1050, 62, ',5,62,1050,', 3, '莫罗纳－圣地亚哥', 'Morona-Santiago', 'moluonashengdiyage', 'S');
INSERT INTO `crm_data_region` VALUES (1051, 62, ',5,62,1051,', 3, '纳波，奥雷利亚纳', 'Napo, Orellana', 'naboaoleiliyana', 'D');
INSERT INTO `crm_data_region` VALUES (1052, 62, ',5,62,1052,', 3, '帕斯塔萨', 'Pastaza', 'pasitasa', 'Y');
INSERT INTO `crm_data_region` VALUES (1053, 62, ',5,62,1053,', 3, '皮钦查', 'Pichincha', 'piqincha', 'P');
INSERT INTO `crm_data_region` VALUES (1054, 62, ',5,62,1054,', 3, '钦博拉索', 'Chimborazo', 'qinbolasuo', 'H');
INSERT INTO `crm_data_region` VALUES (1055, 62, ',5,62,1055,', 3, '萨莫拉－钦奇佩', 'Zamora-Chinchipe', 'samolaqinqipei', 'Z');
INSERT INTO `crm_data_region` VALUES (1056, 62, ',5,62,1056,', 3, '苏昆毕奥斯', 'Sucumbios', 'sukunbiaosi', 'U');
INSERT INTO `crm_data_region` VALUES (1057, 62, ',5,62,1057,', 3, '通古拉瓦', 'Tungurahua', 'tonggulawa', 'T');
INSERT INTO `crm_data_region` VALUES (1058, 62, ',5,62,1058,', 3, '因巴布拉', 'Imbabura', 'yinbabula', 'I');
INSERT INTO `crm_data_region` VALUES (1059, 63, ',3,63,1059,', 3, '安塞巴', 'Anseba', 'ansaiba', 'KE');
INSERT INTO `crm_data_region` VALUES (1060, 63, ',3,63,1060,', 3, '北红海', 'Semenawi Keyih Bahri', 'beihonghai', 'SK');
INSERT INTO `crm_data_region` VALUES (1061, 63, ',3,63,1061,', 3, '加什·巴尔卡', 'Gash Barka', 'jiashi', 'BR');
INSERT INTO `crm_data_region` VALUES (1062, 63, ',3,63,1062,', 3, '南部', 'Debub', 'nanbu', 'DE');
INSERT INTO `crm_data_region` VALUES (1063, 63, ',3,63,1063,', 3, '南红海', 'Debubawi Keyih Bahri', 'nanhonghai', 'DK');
INSERT INTO `crm_data_region` VALUES (1064, 63, ',3,63,1064,', 3, '中部', 'Maekel', 'zhongbu', 'MA');
INSERT INTO `crm_data_region` VALUES (1065, 64, ',2,64,1065,', 3, '阿尔勒', 'Arles', 'aerle', 'ARL');
INSERT INTO `crm_data_region` VALUES (1066, 64, ',2,64,1066,', 3, '阿雅克修', 'Ajaccio', 'ayakexiu', 'AJA');
INSERT INTO `crm_data_region` VALUES (1067, 64, ',2,64,1067,', 3, '艾克斯', 'Aix-en-Provence', 'aikesi', 'QXB');
INSERT INTO `crm_data_region` VALUES (1068, 64, ',2,64,1068,', 3, '奥尔良', 'Orleans', 'aoerliang', 'ORR');
INSERT INTO `crm_data_region` VALUES (1069, 64, ',2,64,1069,', 3, '巴黎', 'Paris', 'bali', 'PAR');
INSERT INTO `crm_data_region` VALUES (1070, 64, ',2,64,1070,', 3, '贝桑松', 'Besancon', 'beisangsong', 'BSN');
INSERT INTO `crm_data_region` VALUES (1071, 64, ',2,64,1071,', 3, '第戎', 'Dijon', 'dirong', 'DIJ');
INSERT INTO `crm_data_region` VALUES (1072, 64, ',2,64,1072,', 3, '弗雷瑞斯', 'Frejus', 'fuleiruisi', 'FRJ');
INSERT INTO `crm_data_region` VALUES (1073, 64, ',2,64,1073,', 3, '卡昂', 'Caen', 'kaang', 'CFR');
INSERT INTO `crm_data_region` VALUES (1074, 64, ',2,64,1074,', 3, '雷恩', 'Rennes', 'leien', 'RNS');
INSERT INTO `crm_data_region` VALUES (1075, 64, ',2,64,1075,', 3, '里昂', 'Lyon', 'liang', 'LIO');
INSERT INTO `crm_data_region` VALUES (1076, 64, ',2,64,1076,', 3, '里尔', 'Lille', 'lier', 'LLE');
INSERT INTO `crm_data_region` VALUES (1077, 64, ',2,64,1077,', 3, '利摩日', 'Limoges', 'limori', 'LIG');
INSERT INTO `crm_data_region` VALUES (1078, 64, ',2,64,1078,', 3, '鲁昂', 'Rouen', 'luang', 'URO');
INSERT INTO `crm_data_region` VALUES (1079, 64, ',2,64,1079,', 3, '马赛', 'Marseille', 'masai', 'MRS');
INSERT INTO `crm_data_region` VALUES (1080, 64, ',2,64,1080,', 3, '梅斯', 'Metz', 'meisi', 'MZM');
INSERT INTO `crm_data_region` VALUES (1081, 64, ',2,64,1081,', 3, '蒙彼利埃', 'Montpellier', 'mengbiliai', 'MPL');
INSERT INTO `crm_data_region` VALUES (1082, 64, ',2,64,1082,', 3, '南特', 'Nantes', 'nante', 'NTE');
INSERT INTO `crm_data_region` VALUES (1083, 64, ',2,64,1083,', 3, '尼斯', 'Nice', 'nisi', 'NCE');
INSERT INTO `crm_data_region` VALUES (1084, 64, ',2,64,1084,', 3, '沙隆', 'Chalons-en-Champagne', 'shalong', 'CSM');
INSERT INTO `crm_data_region` VALUES (1085, 64, ',2,64,1085,', 3, '图卢兹', 'Toulouse', 'tuluzi', 'TLS');
INSERT INTO `crm_data_region` VALUES (1086, 64, ',2,64,1086,', 3, '瓦朗斯', 'Valence', 'walangsi', 'VAA');
INSERT INTO `crm_data_region` VALUES (1087, 64, ',2,64,1087,', 3, '亚眠', 'Amiens', 'yamian', 'AMI');
INSERT INTO `crm_data_region` VALUES (1088, 70, ',1,70,1088,', 3, '达沃', 'Davao', 'dawo', 'DOR');
INSERT INTO `crm_data_region` VALUES (1089, 70, ',1,70,1089,', 3, '卡卢坎', 'Caloocan', 'kalukan', 'CAO');
INSERT INTO `crm_data_region` VALUES (1090, 70, ',1,70,1090,', 3, '马尼拉', 'Manila', 'manila', 'MNL');
INSERT INTO `crm_data_region` VALUES (1091, 70, ',1,70,1091,', 3, '宿务', 'Cebu', 'suwu', 'CEB');
INSERT INTO `crm_data_region` VALUES (1092, 72, ',2,72,1092,', 3, '埃斯波', 'Espoo', 'aisibo', 'ESP');
INSERT INTO `crm_data_region` VALUES (1093, 72, ',2,72,1093,', 3, '奥卢', 'Oulu', 'aolu', 'OLU');
INSERT INTO `crm_data_region` VALUES (1094, 72, ',2,72,1094,', 3, '波里', 'Pori', 'boli', 'POR');
INSERT INTO `crm_data_region` VALUES (1095, 72, ',2,72,1095,', 3, '博尔沃', 'Porvoo', 'boerwo', 'PRV');
INSERT INTO `crm_data_region` VALUES (1096, 72, ',2,72,1096,', 3, '海门林纳', 'Hameenlinna', 'haimenlinna', 'HMY');
INSERT INTO `crm_data_region` VALUES (1097, 72, ',2,72,1097,', 3, '赫尔辛基', 'Helsinki', 'heerxinji', 'HEL');
INSERT INTO `crm_data_region` VALUES (1098, 72, ',2,72,1098,', 3, '卡亚尼', 'Kajaani', 'kayani', 'KAJ');
INSERT INTO `crm_data_region` VALUES (1099, 72, ',2,72,1099,', 3, '科科拉', 'Kokkola', 'kekela', 'KOK');
INSERT INTO `crm_data_region` VALUES (1100, 72, ',2,72,1100,', 3, '科特卡', 'Kotka', 'keteka', 'KTK');
INSERT INTO `crm_data_region` VALUES (1101, 72, ',2,72,1101,', 3, '库奥皮奥', 'Kuopio', 'kuaopiao', 'KUO');
INSERT INTO `crm_data_region` VALUES (1102, 72, ',2,72,1102,', 3, '拉赫蒂', 'Lahti', 'lahedi', 'LHI');
INSERT INTO `crm_data_region` VALUES (1103, 72, ',2,72,1103,', 3, '拉彭兰塔', 'Lappeenranta', 'lapenglanta', 'LPP');
INSERT INTO `crm_data_region` VALUES (1104, 72, ',2,72,1104,', 3, '罗瓦涅米', 'Rovaniemi', 'luowaniemi', 'RVN');
INSERT INTO `crm_data_region` VALUES (1105, 72, ',2,72,1105,', 3, '玛丽港', 'Mariehamn', 'maligang', 'MHQ');
INSERT INTO `crm_data_region` VALUES (1106, 72, ',2,72,1106,', 3, '米凯利', 'Mikkeli', 'mikaili', 'MIK');
INSERT INTO `crm_data_region` VALUES (1107, 72, ',2,72,1107,', 3, '坦佩雷', 'Tampere', 'tanpeilei', 'TMP');
INSERT INTO `crm_data_region` VALUES (1108, 72, ',2,72,1108,', 3, '图尔库', 'Turku', 'tuerku', 'TKU');
INSERT INTO `crm_data_region` VALUES (1109, 72, ',2,72,1109,', 3, '瓦萨', 'Vaasa', 'wasa', 'VAA');
INSERT INTO `crm_data_region` VALUES (1110, 72, ',2,72,1110,', 3, '万塔', 'Vantaa', 'wanta', 'VAT');
INSERT INTO `crm_data_region` VALUES (1111, 72, ',2,72,1111,', 3, '约恩苏', 'Joensuu', 'yueensu', 'JOE');
INSERT INTO `crm_data_region` VALUES (1112, 73, ',3,73,1112,', 3, '保尔', 'Paul', 'baoer', 'PA');
INSERT INTO `crm_data_region` VALUES (1113, 73, ',3,73,1113,', 3, '波多诺伏', 'Porto Novo', 'boduonuofu', 'PN');
INSERT INTO `crm_data_region` VALUES (1114, 73, ',3,73,1114,', 3, '博阿维斯塔岛', 'Boa Vista', 'boaweisitadao', 'BV');
INSERT INTO `crm_data_region` VALUES (1115, 73, ',3,73,1115,', 3, '布拉瓦岛', 'Brava', 'bulawadao', 'BR');
INSERT INTO `crm_data_region` VALUES (1116, 73, ',3,73,1116,', 3, '大里贝拉', 'Ribeira Grande', 'dalibeila', 'RG');
INSERT INTO `crm_data_region` VALUES (1117, 73, ',3,73,1117,', 3, '福古岛', 'Fogo', 'fugudao', 'FO');
INSERT INTO `crm_data_region` VALUES (1118, 73, ',3,73,1118,', 3, '马尤岛', 'Maio', 'mayoudao', 'MA');
INSERT INTO `crm_data_region` VALUES (1119, 73, ',3,73,1119,', 3, '莫斯特罗', 'Mosteiros', 'mositeluo', 'MO');
INSERT INTO `crm_data_region` VALUES (1120, 73, ',3,73,1120,', 3, '普拉亚', 'Praia', 'pulaya', 'PR');
INSERT INTO `crm_data_region` VALUES (1121, 73, ',3,73,1121,', 3, '萨尔岛', 'Sal', 'saerdao', 'SL');
INSERT INTO `crm_data_region` VALUES (1122, 73, ',3,73,1122,', 3, '圣安唐岛', 'Santo Antao', 'shengantangdao', 'SA');
INSERT INTO `crm_data_region` VALUES (1123, 73, ',3,73,1123,', 3, '圣地亚哥岛', 'Santiago', 'shengdiyagedao', 'IA');
INSERT INTO `crm_data_region` VALUES (1124, 73, ',3,73,1124,', 3, '圣多明戈', 'Sao Domingos', 'shengduomingge', 'SD');
INSERT INTO `crm_data_region` VALUES (1125, 73, ',3,73,1125,', 3, '圣菲利普', 'Sao Filipe', 'shengfeilipu', 'SF');
INSERT INTO `crm_data_region` VALUES (1126, 73, ',3,73,1126,', 3, '圣卡塔琳娜', 'Santa Catarina', 'shengkatalinna', 'CA');
INSERT INTO `crm_data_region` VALUES (1127, 73, ',3,73,1127,', 3, '圣克鲁斯', 'Santa Cruz', 'shengkelusi', 'CR');
INSERT INTO `crm_data_region` VALUES (1128, 73, ',3,73,1128,', 3, '圣米戈尔', 'Sao Miguel', 'shengmigeer', 'SM');
INSERT INTO `crm_data_region` VALUES (1129, 73, ',3,73,1129,', 3, '圣尼古拉岛', 'Sao Nicolau', 'shengniguladao', 'SN');
INSERT INTO `crm_data_region` VALUES (1130, 73, ',3,73,1130,', 3, '圣维森特岛', 'Sao Vicente', 'shengweisentedao', 'SV');
INSERT INTO `crm_data_region` VALUES (1131, 73, ',3,73,1131,', 3, '塔拉法尔', 'Tarrafal', 'talafaer', 'TA');
INSERT INTO `crm_data_region` VALUES (1132, 78, ',5,78,1132,', 3, '阿劳卡', 'Arauca', 'alaoka', 'ARA');
INSERT INTO `crm_data_region` VALUES (1133, 78, ',5,78,1133,', 3, '安提奥基亚', 'Antioquia', 'antiaojiya', 'ANT');
INSERT INTO `crm_data_region` VALUES (1134, 78, ',5,78,1134,', 3, '北桑坦德', 'Norte de Santander', 'beisangtande', 'NDS');
INSERT INTO `crm_data_region` VALUES (1135, 78, ',5,78,1135,', 3, '波哥大首都区', 'Bogota', 'bogedashouduqu', 'BDC');
INSERT INTO `crm_data_region` VALUES (1136, 78, ',5,78,1136,', 3, '博利瓦尔', 'Bolivar', 'boliwaer', 'BOL');
INSERT INTO `crm_data_region` VALUES (1137, 78, ',5,78,1137,', 3, '博亚卡', 'Boyaca', 'boyaka', 'BOY');
INSERT INTO `crm_data_region` VALUES (1138, 78, ',5,78,1138,', 3, '大西洋', 'Atlantico', 'daxiyang', 'ATL');
INSERT INTO `crm_data_region` VALUES (1139, 78, ',5,78,1139,', 3, '瓜维亚雷', 'Guaviare', 'guaweiyalei', 'GVR');
INSERT INTO `crm_data_region` VALUES (1140, 78, ',5,78,1140,', 3, '瓜希拉', 'La Guajira', 'guaxila', 'GJR');
INSERT INTO `crm_data_region` VALUES (1141, 78, ',5,78,1141,', 3, '瓜伊尼亚', 'Guainia', 'guayiniya', 'GNA');
INSERT INTO `crm_data_region` VALUES (1142, 78, ',5,78,1142,', 3, '金迪奥', 'Quindio', 'jindiao', 'QUI');
INSERT INTO `crm_data_region` VALUES (1143, 78, ',5,78,1143,', 3, '卡尔达斯', 'Caldas', 'kaerdasi', 'CAL');
INSERT INTO `crm_data_region` VALUES (1144, 78, ',5,78,1144,', 3, '卡克塔', 'Caqueta', 'kaketa', 'CAQ');
INSERT INTO `crm_data_region` VALUES (1145, 78, ',5,78,1145,', 3, '卡萨纳雷', 'Casanare', 'kasanalei', 'CAS');
INSERT INTO `crm_data_region` VALUES (1146, 78, ',5,78,1146,', 3, '考卡', 'Cauca', 'kaoka', 'CAU');
INSERT INTO `crm_data_region` VALUES (1147, 78, ',5,78,1147,', 3, '考卡山谷', 'Valle del Cauca', 'kaokashangu', 'VDC');
INSERT INTO `crm_data_region` VALUES (1148, 78, ',5,78,1148,', 3, '科尔多巴', 'Cordoba', 'keerduoba', 'COR');
INSERT INTO `crm_data_region` VALUES (1149, 78, ',5,78,1149,', 3, '昆迪纳马卡', 'Cundinamarca', 'kundinamaka', 'CAM');
INSERT INTO `crm_data_region` VALUES (1150, 78, ',5,78,1150,', 3, '利萨拉尔达', 'Risaralda', 'lisalaerda', 'RIS');
INSERT INTO `crm_data_region` VALUES (1151, 78, ',5,78,1151,', 3, '马格达雷那', 'Magdalena', 'magedaleina', 'MAG');
INSERT INTO `crm_data_region` VALUES (1152, 78, ',5,78,1152,', 3, '梅塔', 'Meta', 'meita', 'MET');
INSERT INTO `crm_data_region` VALUES (1153, 78, ',5,78,1153,', 3, '纳里尼奥', 'Narino', 'naliniao', 'NAR');
INSERT INTO `crm_data_region` VALUES (1154, 78, ',5,78,1154,', 3, '普图马约', 'Putumayo', 'putumayue', 'PUT');
INSERT INTO `crm_data_region` VALUES (1155, 78, ',5,78,1155,', 3, '乔科', 'Choco', 'qiaoke', 'CHO');
INSERT INTO `crm_data_region` VALUES (1156, 78, ',5,78,1156,', 3, '塞萨尔', 'Cesar', 'saisaer', 'CES');
INSERT INTO `crm_data_region` VALUES (1157, 78, ',5,78,1157,', 3, '桑坦德', 'Santander', 'sangtande', 'SAN');
INSERT INTO `crm_data_region` VALUES (1158, 78, ',5,78,1158,', 3, '圣安德烈斯-普罗维登西亚', 'San Andres y Providencia', 'shengandeliesipuluoweidengxiya', 'SAP');
INSERT INTO `crm_data_region` VALUES (1159, 78, ',5,78,1159,', 3, '苏克雷', 'Sucre', 'sukelei', 'SUC');
INSERT INTO `crm_data_region` VALUES (1160, 78, ',5,78,1160,', 3, '托利马', 'Tolima', 'tuolima', 'TOL');
INSERT INTO `crm_data_region` VALUES (1161, 78, ',5,78,1161,', 3, '维查达', 'Vichada', 'weichada', 'VIC');
INSERT INTO `crm_data_region` VALUES (1162, 78, ',5,78,1162,', 3, '沃佩斯', 'Vaupes', 'wopeisi', 'VAU');
INSERT INTO `crm_data_region` VALUES (1163, 78, ',5,78,1163,', 3, '乌伊拉', 'Huila', 'wuyila', 'HUI');
INSERT INTO `crm_data_region` VALUES (1164, 78, ',5,78,1164,', 3, '亚马孙', 'Amazonas', 'yamasun', 'AMZ');
INSERT INTO `crm_data_region` VALUES (1165, 79, ',4,79,1165,', 3, '阿拉胡埃拉', 'Alajuela', 'alahuaila', 'A');
INSERT INTO `crm_data_region` VALUES (1166, 79, ',4,79,1166,', 3, '埃雷迪亚', 'Heredia', 'aileidiya', 'H');
INSERT INTO `crm_data_region` VALUES (1167, 79, ',4,79,1167,', 3, '瓜纳卡斯特', 'Guanacaste', 'guanakasite', 'G');
INSERT INTO `crm_data_region` VALUES (1168, 79, ',4,79,1168,', 3, '卡塔戈', 'Cartago', 'katage', 'C');
INSERT INTO `crm_data_region` VALUES (1169, 79, ',4,79,1169,', 3, '利蒙', 'Limon', 'limeng', 'L');
INSERT INTO `crm_data_region` VALUES (1170, 79, ',4,79,1170,', 3, '蓬塔雷纳斯', 'Puntarenas', 'pengtaleinasi', 'P');
INSERT INTO `crm_data_region` VALUES (1171, 79, ',4,79,1171,', 3, '圣何塞', 'San Jose', 'shenghesai', 'SJ');
INSERT INTO `crm_data_region` VALUES (1172, 83, ',4,83,1172,', 3, '奥尔金', 'Holguin', 'aoerjin', '11');
INSERT INTO `crm_data_region` VALUES (1173, 83, ',4,83,1173,', 3, '比那尔德里奥', 'Pinar del Rio', 'binaerdeliao', '1');
INSERT INTO `crm_data_region` VALUES (1174, 83, ',4,83,1174,', 3, '比亚克拉拉', 'Villa Clara', 'biyakelala', '5');
INSERT INTO `crm_data_region` VALUES (1175, 83, ',4,83,1175,', 3, '格拉玛', 'Granma', 'gelama', '12');
INSERT INTO `crm_data_region` VALUES (1176, 83, ',4,83,1176,', 3, '关塔那摩', 'Guantanamo', 'guantanamo', '14');
INSERT INTO `crm_data_region` VALUES (1177, 83, ',4,83,1177,', 3, '哈瓦那', 'La Habana', 'hawana', '2');
INSERT INTO `crm_data_region` VALUES (1178, 83, ',4,83,1178,', 3, '哈瓦那城', 'Ciudad de la Habana', 'hawanacheng', '3');
INSERT INTO `crm_data_region` VALUES (1179, 83, ',4,83,1179,', 3, '卡马圭', 'Camaguey', 'kamagui', '9');
INSERT INTO `crm_data_region` VALUES (1180, 83, ',4,83,1180,', 3, '拉斯图纳斯', 'Las Tunas', 'lasitunasi', '10');
INSERT INTO `crm_data_region` VALUES (1181, 83, ',4,83,1181,', 3, '马坦萨斯', 'Matanzas', 'matansasi', '4');
INSERT INTO `crm_data_region` VALUES (1182, 83, ',4,83,1182,', 3, '马亚里', 'Mayari', 'mayali', 'MAY');
INSERT INTO `crm_data_region` VALUES (1183, 83, ',4,83,1183,', 3, '曼萨尼罗', 'Manzanillo', 'mansaniluo', 'MZO');
INSERT INTO `crm_data_region` VALUES (1184, 83, ',4,83,1184,', 3, '青年岛特区', 'Isla de la Juventud', 'qingniandaotequ', '99');
INSERT INTO `crm_data_region` VALUES (1185, 83, ',4,83,1185,', 3, '圣地亚哥', 'Santiago de Cuba', 'shengdiyage', '13');
INSERT INTO `crm_data_region` VALUES (1186, 83, ',4,83,1186,', 3, '圣斯皮里图斯', 'Sancti Spiritus', 'shengsipilitusi', '7');
INSERT INTO `crm_data_region` VALUES (1187, 83, ',4,83,1187,', 3, '西恩富戈斯', 'Cienfuegos', 'xienfugesi', '6');
INSERT INTO `crm_data_region` VALUES (1188, 83, ',4,83,1188,', 3, '谢戈德阿维拉', 'Ciego de Avila', 'xiegedeaweila', '8');
INSERT INTO `crm_data_region` VALUES (1189, 86, ',5,86,1189,', 3, '埃塞奎博群岛-西德梅拉拉', 'Essequibo Islands-West Demerara', 'aisaikuiboqundaoxidemeilala', 'EW');
INSERT INTO `crm_data_region` VALUES (1190, 86, ',5,86,1190,', 3, '巴里马-瓦伊尼', 'Barima-Waini', 'balimawayini', 'BW');
INSERT INTO `crm_data_region` VALUES (1191, 86, ',5,86,1191,', 3, '波默伦-苏佩纳姆', 'Pomeroon-Supenaam', 'bomolunsupeinamu', 'PM');
INSERT INTO `crm_data_region` VALUES (1192, 86, ',5,86,1192,', 3, '波塔罗-锡帕鲁尼', 'Potaro-Siparuni', 'botaluoxipaluni', 'PI');
INSERT INTO `crm_data_region` VALUES (1193, 86, ',5,86,1193,', 3, '德梅拉拉-马海卡', 'Demerara-Mahaica', 'demeilalamahaika', 'DM');
INSERT INTO `crm_data_region` VALUES (1194, 86, ',5,86,1194,', 3, '东伯比斯-科兰太因', 'East Berbice-Corentyne', 'dongbobisikelantaiyin', 'EC');
INSERT INTO `crm_data_region` VALUES (1195, 86, ',5,86,1195,', 3, '库尤尼-马扎鲁尼', 'Cuyuni-Mazaruni', 'kuyounimazhaluni', 'CM');
INSERT INTO `crm_data_region` VALUES (1196, 86, ',5,86,1196,', 3, '马海卡-伯比斯', 'Mahaica-Berbice', 'mahaikabobisi', 'MB');
INSERT INTO `crm_data_region` VALUES (1197, 86, ',5,86,1197,', 3, '上德梅拉拉-伯比斯', 'Upper Demerara-Berbice', 'shangdemeilalabobisi', 'UD');
INSERT INTO `crm_data_region` VALUES (1198, 86, ',5,86,1198,', 3, '上塔库图-上埃塞奎博', 'Upper Takutu-Upper Essequibo', 'shangtakutushangaisaikuibo', 'UT');
INSERT INTO `crm_data_region` VALUES (1199, 87, ',1,87,1199,', 3, '阿尔卡累克', 'Arkalyk', 'aerkaleike', 'AYK');
INSERT INTO `crm_data_region` VALUES (1200, 87, ',1,87,1200,', 3, '阿克莫拉', 'Aqmola', 'akemola', 'AKM');
INSERT INTO `crm_data_region` VALUES (1201, 87, ',1,87,1201,', 3, '阿克苏', 'Aksu', 'akesu', 'AKS');
INSERT INTO `crm_data_region` VALUES (1202, 87, ',1,87,1202,', 3, '阿克托别', 'Aqtobe', 'aketuobie', 'AKT');
INSERT INTO `crm_data_region` VALUES (1203, 87, ',1,87,1203,', 3, '阿拉木图', 'Almaty', 'alamutu', 'ALA');
INSERT INTO `crm_data_region` VALUES (1204, 87, ',1,87,1204,', 3, '阿雷斯', 'Arys', 'aleisi', 'ARY');
INSERT INTO `crm_data_region` VALUES (1205, 87, ',1,87,1205,', 3, '阿斯塔纳市', 'Astana', 'asitanashi', 'AST');
INSERT INTO `crm_data_region` VALUES (1206, 87, ',1,87,1206,', 3, '阿特劳', 'Atyrau', 'atelao', 'ATY');
INSERT INTO `crm_data_region` VALUES (1207, 87, ',1,87,1207,', 3, '埃基巴斯图兹', 'Ekibastuz', 'aijibasituzi', 'EKB');
INSERT INTO `crm_data_region` VALUES (1208, 87, ',1,87,1208,', 3, '巴尔喀什', 'Balkhash', 'baerkashi', 'BXH');
INSERT INTO `crm_data_region` VALUES (1209, 87, ',1,87,1209,', 3, '巴甫洛达尔', 'Pavlodar', 'bafuluodaer', 'PAV');
INSERT INTO `crm_data_region` VALUES (1210, 87, ',1,87,1210,', 3, '北哈萨克斯坦', 'Soltustik Qazaqstan', 'beihasakesitan', 'SEV');
INSERT INTO `crm_data_region` VALUES (1211, 87, ',1,87,1211,', 3, '东哈萨克斯坦', 'Shyghys Qazaqstan', 'donghasakesitan', 'VOS');
INSERT INTO `crm_data_region` VALUES (1212, 87, ',1,87,1212,', 3, '济良诺夫斯克', 'Zyryanovsk', 'jiliangnuofusike', 'ZYR');
INSERT INTO `crm_data_region` VALUES (1213, 87, ',1,87,1213,', 3, '江布尔', 'Zhambyl', 'jiangbuer', 'DMB');
INSERT INTO `crm_data_region` VALUES (1214, 87, ',1,87,1214,', 3, '杰兹卡兹甘', 'Zhezkazgan', 'jiezikazigan', 'DZH');
INSERT INTO `crm_data_region` VALUES (1215, 87, ',1,87,1215,', 3, '卡拉干达', 'Qaraghandy', 'kalaganda', 'KAR');
INSERT INTO `crm_data_region` VALUES (1216, 87, ',1,87,1216,', 3, '卡拉扎尔', 'Karazhal', 'kalazhaer', 'KZO');
INSERT INTO `crm_data_region` VALUES (1217, 87, ',1,87,1217,', 3, '卡普恰盖', 'Kapchagay', 'kapuqiagai', 'KAP');
INSERT INTO `crm_data_region` VALUES (1218, 87, ',1,87,1218,', 3, '科斯塔奈', 'Qostanay', 'kesitanai', 'KST');
INSERT INTO `crm_data_region` VALUES (1219, 87, ',1,87,1219,', 3, '克孜勒奥尔达', 'Qyzylorda', 'kezileaoerda', 'KZY');
INSERT INTO `crm_data_region` VALUES (1220, 87, ',1,87,1220,', 3, '肯套', 'Kentau', 'kentao', 'KEN');
INSERT INTO `crm_data_region` VALUES (1221, 87, ',1,87,1221,', 3, '库尔恰托夫', 'Kurchatov', 'kuerqiatuofu', 'KUR');
INSERT INTO `crm_data_region` VALUES (1222, 87, ',1,87,1222,', 3, '利萨科夫斯克', 'Lisakovsk', 'lisakefusike', 'LKK');
INSERT INTO `crm_data_region` VALUES (1223, 87, ',1,87,1223,', 3, '列宁诺戈尔斯克', 'Leninogorsk', 'lieningnuogeersike', 'LEN');
INSERT INTO `crm_data_region` VALUES (1224, 87, ',1,87,1224,', 3, '鲁德内', 'Rudny', 'ludenei', 'RUD');
INSERT INTO `crm_data_region` VALUES (1225, 87, ',1,87,1225,', 3, '曼格斯套', 'Mangghystau', 'mangesitao', 'MAN');
INSERT INTO `crm_data_region` VALUES (1226, 87, ',1,87,1226,', 3, '南哈萨克斯坦', 'Ongtustik Qazaqstan', 'nanhasakesitan', 'KGT');
INSERT INTO `crm_data_region` VALUES (1227, 87, ',1,87,1227,', 3, '萨兰', 'Saran', 'salan', 'SAR');
INSERT INTO `crm_data_region` VALUES (1228, 87, ',1,87,1228,', 3, '塞梅伊', 'Semey', 'saimeiyi', 'SEM');
INSERT INTO `crm_data_region` VALUES (1229, 87, ',1,87,1229,', 3, '沙赫京斯克', 'Shakhtinsk', 'shahejingsike', 'SAK');
INSERT INTO `crm_data_region` VALUES (1230, 87, ',1,87,1230,', 3, '斯捷普诺戈尔斯克', 'Stepnogorsk', 'sijiepunuogeersike', 'STE');
INSERT INTO `crm_data_region` VALUES (1231, 87, ',1,87,1231,', 3, '铁克利', 'Tekeli', 'tiekeli', 'TEK');
INSERT INTO `crm_data_region` VALUES (1232, 87, ',1,87,1232,', 3, '铁米尔套', 'Temirtau', 'tiemiertao', 'TEM');
INSERT INTO `crm_data_region` VALUES (1233, 87, ',1,87,1233,', 3, '突厥斯坦', 'Turkestan', 'tusitan', 'TUR');
INSERT INTO `crm_data_region` VALUES (1234, 87, ',1,87,1234,', 3, '西哈萨克斯坦', 'Batys Qazaqstan', 'xihasakesitan', 'ZAP');
INSERT INTO `crm_data_region` VALUES (1235, 87, ',1,87,1235,', 3, '扎纳奥津', 'Zhanaozen', 'zhanaaojin', 'ZHA');
INSERT INTO `crm_data_region` VALUES (1236, 90, ',2,90,1236,', 3, '阿尔梅勒', 'Almere', 'aermeile', 'AER');
INSERT INTO `crm_data_region` VALUES (1237, 90, ',2,90,1237,', 3, '阿默斯福特', 'Amersfoort', 'amosifute', 'AME');
INSERT INTO `crm_data_region` VALUES (1238, 90, ',2,90,1238,', 3, '阿姆斯特丹', 'Amsterdam', 'amusitedan', 'AMS');
INSERT INTO `crm_data_region` VALUES (1239, 90, ',2,90,1239,', 3, '阿纳姆', 'Arnhem', 'anamu', 'ARN');
INSERT INTO `crm_data_region` VALUES (1240, 90, ',2,90,1240,', 3, '阿珀尔多伦', 'Apeldoorn', 'aerduolun', 'APE');
INSERT INTO `crm_data_region` VALUES (1241, 90, ',2,90,1241,', 3, '阿森', 'Assen', 'asen', 'ASS');
INSERT INTO `crm_data_region` VALUES (1242, 90, ',2,90,1242,', 3, '埃德', 'Ede', 'aide', 'EDE');
INSERT INTO `crm_data_region` VALUES (1243, 90, ',2,90,1243,', 3, '埃门', 'Emmen', 'aimen', 'EMM');
INSERT INTO `crm_data_region` VALUES (1244, 90, ',2,90,1244,', 3, '埃因霍芬', 'Eindhoven', 'aiyinhuofen', 'EIN');
INSERT INTO `crm_data_region` VALUES (1245, 90, ',2,90,1245,', 3, '布雷达', 'Breda', 'buleida', 'BRD');
INSERT INTO `crm_data_region` VALUES (1246, 90, ',2,90,1246,', 3, '蒂尔堡', 'Tilburg', 'dierbao', 'TLB');
INSERT INTO `crm_data_region` VALUES (1247, 90, ',2,90,1247,', 3, '多德雷赫特', 'Dordrecht', 'duodeleihete', 'DOR');
INSERT INTO `crm_data_region` VALUES (1248, 90, ',2,90,1248,', 3, '恩斯赫德', 'Enschede', 'ensihede', 'ENS');
INSERT INTO `crm_data_region` VALUES (1249, 90, ',2,90,1249,', 3, '格罗宁根', 'Groningen', 'geluoninggen', 'GRQ');
INSERT INTO `crm_data_region` VALUES (1250, 90, ',2,90,1250,', 3, '哈勒姆', 'Haarlem', 'halemu', 'HRA');
INSERT INTO `crm_data_region` VALUES (1251, 90, ',2,90,1251,', 3, '海牙', 'Hague', 'haiya', 'HAG');
INSERT INTO `crm_data_region` VALUES (1252, 90, ',2,90,1252,', 3, '霍夫多尔普', 'Hoofddorp', 'huofuduoerpu', 'HFD');
INSERT INTO `crm_data_region` VALUES (1253, 90, ',2,90,1253,', 3, '莱顿', 'Leiden', 'laidun', 'LID');
INSERT INTO `crm_data_region` VALUES (1254, 90, ',2,90,1254,', 3, '莱利斯塔德', 'Lelystad', 'lailisitade', 'LEY');
INSERT INTO `crm_data_region` VALUES (1255, 90, ',2,90,1255,', 3, '鹿特丹', 'Rotterdam', 'lutedan', 'RTM');
INSERT INTO `crm_data_region` VALUES (1256, 90, ',2,90,1256,', 3, '吕伐登', 'Leeuwarden', 'lvfadeng', 'LWR');
INSERT INTO `crm_data_region` VALUES (1257, 90, ',2,90,1257,', 3, '马斯特里赫特', 'Maastricht', 'masitelihete', 'MST');
INSERT INTO `crm_data_region` VALUES (1258, 90, ',2,90,1258,', 3, '米德尔堡', 'Middelburg', 'mideerbao', 'MDL');
INSERT INTO `crm_data_region` VALUES (1259, 90, ',2,90,1259,', 3, '奈梅亨', 'Nijmegen', 'naimeiheng', 'NIJ');
INSERT INTO `crm_data_region` VALUES (1260, 90, ',2,90,1260,', 3, '斯海尔托亨博思', '\'s-Hertogenbosch', 'sihaiertuohengbosi', 'HTB');
INSERT INTO `crm_data_region` VALUES (1261, 90, ',2,90,1261,', 3, '乌得勒支', 'Utrecht', 'wudelezhi', 'UTC');
INSERT INTO `crm_data_region` VALUES (1262, 90, ',2,90,1262,', 3, '兹沃勒', 'Zwolle', 'ziwole', 'ZWO');
INSERT INTO `crm_data_region` VALUES (1263, 90, ',2,90,1263,', 3, '佐特尔梅', 'Zoetermeer', 'zuoteermei', 'ZTM');
INSERT INTO `crm_data_region` VALUES (1264, 93, ',4,93,1264,', 3, '阿特兰蒂达', 'Atlantida', 'atelandida', 'AT');
INSERT INTO `crm_data_region` VALUES (1265, 93, ',4,93,1265,', 3, '埃尔帕拉伊索', 'El Paraiso', 'aierpalayisuo', 'PA');
INSERT INTO `crm_data_region` VALUES (1266, 93, ',4,93,1266,', 3, '奥科特佩克', 'Ocotepeque', 'aoketepeike', 'OC');
INSERT INTO `crm_data_region` VALUES (1267, 93, ',4,93,1267,', 3, '奥兰乔', 'Olancho', 'aolanqiao', 'OL');
INSERT INTO `crm_data_region` VALUES (1268, 93, ',4,93,1268,', 3, '弗朗西斯科-莫拉桑', 'Francisco Morazan', 'fulangxisikemolasang', 'FM');
INSERT INTO `crm_data_region` VALUES (1269, 93, ',4,93,1269,', 3, '格拉西亚斯-阿迪奥斯', 'Gracias a Dios', 'gelaxiyasiadiaosi', 'GD');
INSERT INTO `crm_data_region` VALUES (1270, 93, ',4,93,1270,', 3, '海湾群岛', 'Islas de la Bahia', 'haiwanqundao', 'IB');
INSERT INTO `crm_data_region` VALUES (1271, 93, ',4,93,1271,', 3, '科尔特斯', 'Cortes', 'keertesi', 'CR');
INSERT INTO `crm_data_region` VALUES (1272, 93, ',4,93,1272,', 3, '科隆', 'Colon', 'kelong', 'CL');
INSERT INTO `crm_data_region` VALUES (1273, 93, ',4,93,1273,', 3, '科马亚瓜', 'Comayagua', 'kemayagua', 'CM');
INSERT INTO `crm_data_region` VALUES (1274, 93, ',4,93,1274,', 3, '科潘', 'Copan', 'kepan', 'CP');
INSERT INTO `crm_data_region` VALUES (1275, 93, ',4,93,1275,', 3, '拉巴斯', 'La Paz', 'labasi', 'PZ');
INSERT INTO `crm_data_region` VALUES (1276, 93, ',4,93,1276,', 3, '伦皮拉', 'Lempira', 'lunpila', 'LE');
INSERT INTO `crm_data_region` VALUES (1277, 93, ',4,93,1277,', 3, '乔卢特卡', 'Choluteca', 'qiaoluteka', 'CH');
INSERT INTO `crm_data_region` VALUES (1278, 93, ',4,93,1278,', 3, '乔罗马', 'Choloma', 'qiaoluoma', 'CHO');
INSERT INTO `crm_data_region` VALUES (1279, 93, ',4,93,1279,', 3, '山谷', 'Valle', 'shangu', 'VA');
INSERT INTO `crm_data_region` VALUES (1280, 93, ',4,93,1280,', 3, '圣巴巴拉', 'Santa Barbara', 'shengbabala', 'SB');
INSERT INTO `crm_data_region` VALUES (1281, 93, ',4,93,1281,', 3, '因蒂布卡', 'Intibuca', 'yindibuka', 'IN');
INSERT INTO `crm_data_region` VALUES (1282, 93, ',4,93,1282,', 3, '约罗', 'Yoro', 'yueluo', 'YO');
INSERT INTO `crm_data_region` VALUES (1283, 94, ',6,94,1283,', 3, '菲尼克斯群岛', 'Phoenix Islands', 'feinikesiqundao', 'PHO');
INSERT INTO `crm_data_region` VALUES (1284, 94, ',6,94,1284,', 3, '吉尔伯特群岛', 'Gilberts Islands', 'jierbotequndao', 'GIL');
INSERT INTO `crm_data_region` VALUES (1285, 94, ',6,94,1285,', 3, '莱恩群岛', 'Line Islands', 'laienqundao', 'LIN');
INSERT INTO `crm_data_region` VALUES (1286, 95, ',3,95,1286,', 3, '阿里萨比赫区', 'Ali Sabih', 'alisabihequ', 'S');
INSERT INTO `crm_data_region` VALUES (1287, 95, ',3,95,1287,', 3, '奥博克区', 'Obock', 'aobokequ', 'O');
INSERT INTO `crm_data_region` VALUES (1288, 95, ',3,95,1288,', 3, '迪基勒区', 'Dikhil', 'dijilequ', 'K');
INSERT INTO `crm_data_region` VALUES (1289, 95, ',3,95,1289,', 3, '塔朱拉区', 'Tadjoura', 'tazhulaqu', 'T');
INSERT INTO `crm_data_region` VALUES (1290, 96, ',1,96,1290,', 3, '奥什', 'Osh', 'aoshi', 'O');
INSERT INTO `crm_data_region` VALUES (1291, 96, ',1,96,1291,', 3, '巴特肯', 'Batken', 'bateken', 'B');
INSERT INTO `crm_data_region` VALUES (1292, 96, ',1,96,1292,', 3, '比什凯克市', 'Bishkek', 'bishikaikeshi', 'GB');
INSERT INTO `crm_data_region` VALUES (1293, 96, ',1,96,1293,', 3, '楚河', 'Chuy', 'chuhe', 'C');
INSERT INTO `crm_data_region` VALUES (1294, 96, ',1,96,1294,', 3, '贾拉拉巴德', 'Jalal-Abad', 'jialalabade', 'J');
INSERT INTO `crm_data_region` VALUES (1295, 96, ',1,96,1295,', 3, '卡拉巴尔塔', 'Karabalta', 'kalabaerta', 'KBA');
INSERT INTO `crm_data_region` VALUES (1296, 96, ',1,96,1296,', 3, '卡拉库尔', 'Kara-Kol', 'kalakuer', 'KKO');
INSERT INTO `crm_data_region` VALUES (1297, 96, ',1,96,1297,', 3, '坎特', 'Kant', 'kante', 'KAN');
INSERT INTO `crm_data_region` VALUES (1298, 96, ',1,96,1298,', 3, '科克扬加克', 'Kok-Jangak', 'kekeyangjiake', 'KJ');
INSERT INTO `crm_data_region` VALUES (1299, 96, ',1,96,1299,', 3, '迈利赛', 'Mailuu-Suu', 'mailisai', 'MS');
INSERT INTO `crm_data_region` VALUES (1300, 96, ',1,96,1300,', 3, '纳伦', 'Naryn', 'nalun', 'N');
INSERT INTO `crm_data_region` VALUES (1301, 96, ',1,96,1301,', 3, '苏卢克图', 'Suluktu', 'suluketu', 'SU');
INSERT INTO `crm_data_region` VALUES (1302, 96, ',1,96,1302,', 3, '塔拉斯', 'Talas', 'talasi', 'T');
INSERT INTO `crm_data_region` VALUES (1303, 96, ',1,96,1303,', 3, '塔什库梅尔', 'Tash-Kumyr', 'tashikumeier', 'TK');
INSERT INTO `crm_data_region` VALUES (1304, 96, ',1,96,1304,', 3, '乌兹根', 'Uzgen', 'wuzigen', 'UG');
INSERT INTO `crm_data_region` VALUES (1305, 96, ',1,96,1305,', 3, '伊塞克湖', 'Ysyk-Kol', 'yisaikehu', 'Y');
INSERT INTO `crm_data_region` VALUES (1306, 97, ',3,97,1306,', 3, '博凯', 'Boke', 'bokai', 'BOK');
INSERT INTO `crm_data_region` VALUES (1307, 97, ',3,97,1307,', 3, '恩泽雷科雷', 'Nzerekore', 'enzeleikelei', 'NZR');
INSERT INTO `crm_data_region` VALUES (1308, 97, ',3,97,1308,', 3, '法拉纳', 'Faranah', 'falana', 'FRN');
INSERT INTO `crm_data_region` VALUES (1309, 97, ',3,97,1309,', 3, '金迪亚', 'Kindia', 'jindiya', 'KND');
INSERT INTO `crm_data_region` VALUES (1310, 97, ',3,97,1310,', 3, '康康', 'Kankan', 'kangkang', 'KNK');
INSERT INTO `crm_data_region` VALUES (1311, 97, ',3,97,1311,', 3, '科纳克里', 'Conakry', 'kenakeli', 'CNK');
INSERT INTO `crm_data_region` VALUES (1312, 97, ',3,97,1312,', 3, '拉贝', 'Labe', 'labei', 'LAB');
INSERT INTO `crm_data_region` VALUES (1313, 97, ',3,97,1313,', 3, '玛木', 'Mamou', 'mamu', 'MAM');
INSERT INTO `crm_data_region` VALUES (1314, 99, ',4,99,1314,', 3, '阿伯茨福', 'Abbotsford', 'abocifu', 'ABB');
INSERT INTO `crm_data_region` VALUES (1315, 99, ',4,99,1315,', 3, '埃德蒙顿', 'Edmonton', 'aidemengdun', 'EDM');
INSERT INTO `crm_data_region` VALUES (1316, 99, ',4,99,1316,', 3, '奥沙瓦', 'Oshawa', 'aoshawa', 'OSH');
INSERT INTO `crm_data_region` VALUES (1317, 99, ',4,99,1317,', 3, '巴里', 'Barrie', 'bali', 'BAR');
INSERT INTO `crm_data_region` VALUES (1318, 99, ',4,99,1318,', 3, '布列塔尼角', 'Cape Breton', 'bulietanijiao', 'CBR');
INSERT INTO `crm_data_region` VALUES (1319, 99, ',4,99,1319,', 3, '多伦多', 'Toronto', 'duolunduo', 'TOR');
INSERT INTO `crm_data_region` VALUES (1320, 99, ',4,99,1320,', 3, '弗雷德里顿', 'Fredericton', 'fuleidelidun', 'FRE');
INSERT INTO `crm_data_region` VALUES (1321, 99, ',4,99,1321,', 3, '圭尔夫', 'Guelph', 'guierfu', 'GLP');
INSERT INTO `crm_data_region` VALUES (1322, 99, ',4,99,1322,', 3, '哈利法克斯', 'Halifax', 'halifakesi', 'HAL');
INSERT INTO `crm_data_region` VALUES (1323, 99, ',4,99,1323,', 3, '哈密尔顿', 'Hamilton', 'hamierdun', 'HAM');
INSERT INTO `crm_data_region` VALUES (1324, 99, ',4,99,1324,', 3, '怀特霍斯', 'Whitehorse', 'huaitehuosi', 'YXY');
INSERT INTO `crm_data_region` VALUES (1325, 99, ',4,99,1325,', 3, '基劳纳', 'Kelowna', 'jilaona', 'KWL');
INSERT INTO `crm_data_region` VALUES (1326, 99, ',4,99,1326,', 3, '基奇纳', 'Brampton', 'jiqina', 'BRP');
INSERT INTO `crm_data_region` VALUES (1327, 99, ',4,99,1327,', 3, '金斯敦', 'Kingston', 'jinsidun', 'KGN');
INSERT INTO `crm_data_region` VALUES (1328, 99, ',4,99,1328,', 3, '卡里加里', 'Calgary', 'kalijiali', 'CAL');
INSERT INTO `crm_data_region` VALUES (1329, 99, ',4,99,1329,', 3, '魁北克', 'Quebec', 'kuibeike', 'QUE');
INSERT INTO `crm_data_region` VALUES (1330, 99, ',4,99,1330,', 3, '里贾纳', 'Regina', 'lijiana', 'REG');
INSERT INTO `crm_data_region` VALUES (1331, 99, ',4,99,1331,', 3, '伦敦', 'London', 'lundun', 'LOD');
INSERT INTO `crm_data_region` VALUES (1332, 99, ',4,99,1332,', 3, '蒙特利尔', 'Montreal', 'mengtelier', 'MTR');
INSERT INTO `crm_data_region` VALUES (1333, 99, ',4,99,1333,', 3, '萨德伯里', 'Sudbury', 'sadeboli', 'SUD');
INSERT INTO `crm_data_region` VALUES (1334, 99, ',4,99,1334,', 3, '萨斯卡通', 'Saskatoon', 'sasikatong', 'SAK');
INSERT INTO `crm_data_region` VALUES (1335, 99, ',4,99,1335,', 3, '三河城', 'Trois-Rivieres', 'sanhecheng', 'TRR');
INSERT INTO `crm_data_region` VALUES (1336, 99, ',4,99,1336,', 3, '桑德贝', 'Thunder Bay', 'sangdebei', 'THU');
INSERT INTO `crm_data_region` VALUES (1337, 99, ',4,99,1337,', 3, '舍布鲁克', 'Sherbrooke', 'shebuluke', 'SBE');
INSERT INTO `crm_data_region` VALUES (1338, 99, ',4,99,1338,', 3, '圣卡塔琳娜', 'St. Catharines', 'shengkatalinna', 'SCA');
INSERT INTO `crm_data_region` VALUES (1339, 99, ',4,99,1339,', 3, '圣约翰斯', 'Saint-John\'s', 'shengyuehansi', 'SJB');
INSERT INTO `crm_data_region` VALUES (1340, 99, ',4,99,1340,', 3, '维多利亚', 'Victoria', 'weiduoliya', 'VIC');
INSERT INTO `crm_data_region` VALUES (1341, 99, ',4,99,1341,', 3, '温哥华', 'Vancouver', 'wengehua', 'VAN');
INSERT INTO `crm_data_region` VALUES (1342, 99, ',4,99,1342,', 3, '温尼伯', 'Winnipeg', 'wennibo', 'WNP');
INSERT INTO `crm_data_region` VALUES (1343, 99, ',4,99,1343,', 3, '温莎', 'Windsor', 'wensha', 'WDR');
INSERT INTO `crm_data_region` VALUES (1344, 99, ',4,99,1344,', 3, '渥太华', 'Ottawa', 'taihua', 'OTT');
INSERT INTO `crm_data_region` VALUES (1345, 99, ',4,99,1345,', 3, '夏洛特敦', 'Charlottetown', 'xialuotedun', 'CHA');
INSERT INTO `crm_data_region` VALUES (1346, 99, ',4,99,1346,', 3, '耶洛奈夫', 'Yellowknife', 'yeluonaifu', 'YZF');
INSERT INTO `crm_data_region` VALUES (1347, 99, ',4,99,1347,', 3, '伊魁特', 'Iqaluit', 'yikuite', 'IQL');
INSERT INTO `crm_data_region` VALUES (1348, 100, ',3,100,1348,', 3, '阿散蒂', 'Ashanti', 'asandi', 'AS');
INSERT INTO `crm_data_region` VALUES (1349, 100, ',3,100,1349,', 3, '奥布阿西', 'Obuasi', 'aobuaxi', 'OBU');
INSERT INTO `crm_data_region` VALUES (1350, 100, ',3,100,1350,', 3, '北部', 'Northern', 'beibu', 'NO');
INSERT INTO `crm_data_region` VALUES (1351, 100, ',3,100,1351,', 3, '布朗阿哈福', 'Brong Ahafo', 'bulangahafu', 'BA');
INSERT INTO `crm_data_region` VALUES (1352, 100, ',3,100,1352,', 3, '大阿克拉', 'Greater Accra', 'daakela', 'GA');
INSERT INTO `crm_data_region` VALUES (1353, 100, ',3,100,1353,', 3, '东部', 'Eastern', 'dongbu', 'EA');
INSERT INTO `crm_data_region` VALUES (1354, 100, ',3,100,1354,', 3, '上东部', 'Upper East', 'shangdongbu', 'UE');
INSERT INTO `crm_data_region` VALUES (1355, 100, ',3,100,1355,', 3, '上西部', 'Upper West', 'shangxibu', 'UW');
INSERT INTO `crm_data_region` VALUES (1356, 100, ',3,100,1356,', 3, '沃尔特', 'Volta', 'woerte', 'VO');
INSERT INTO `crm_data_region` VALUES (1357, 100, ',3,100,1357,', 3, '西部', 'Western', 'xibu', 'WE');
INSERT INTO `crm_data_region` VALUES (1358, 100, ',3,100,1358,', 3, '中部', 'Central', 'zhongbu', 'CE');
INSERT INTO `crm_data_region` VALUES (1359, 101, ',3,101,1359,', 3, '奥果韦-洛洛', 'Ogooue-Lolo', 'aoguoweiluoluo', 'OL');
INSERT INTO `crm_data_region` VALUES (1360, 101, ',3,101,1360,', 3, '奥果韦-伊温多', 'Ogooue-Ivindo', 'aoguoweiyiwenduo', 'OI');
INSERT INTO `crm_data_region` VALUES (1361, 101, ',3,101,1361,', 3, '滨海奥果韦', 'Ogooue-Maritime', 'binhaiaoguowei', 'OM');
INSERT INTO `crm_data_region` VALUES (1362, 101, ',3,101,1362,', 3, '恩古涅', 'Ngounie', 'engunie', 'NG');
INSERT INTO `crm_data_region` VALUES (1363, 101, ',3,101,1363,', 3, '河口', 'Estuaire', 'hekou', 'ES');
INSERT INTO `crm_data_region` VALUES (1364, 101, ',3,101,1364,', 3, '尼扬加', 'Nyanga', 'niyangjia', 'NY');
INSERT INTO `crm_data_region` VALUES (1365, 101, ',3,101,1365,', 3, '上奥果韦', 'Haut-Ogooue', 'shangaoguowei', 'HO');
INSERT INTO `crm_data_region` VALUES (1366, 101, ',3,101,1366,', 3, '沃勒-恩特姆', 'Woleu-Ntem', 'woleentemu', 'WN');
INSERT INTO `crm_data_region` VALUES (1367, 101, ',3,101,1367,', 3, '中奥果韦', 'Moyen-Ogooue', 'zhongaoguowei', 'MO');
INSERT INTO `crm_data_region` VALUES (1368, 102, ',1,102,1368,', 3, '奥多棉吉', 'Otdar Mean Chey', 'aoduomianji', 'OC');
INSERT INTO `crm_data_region` VALUES (1369, 102, ',1,102,1369,', 3, '白马市', 'Krong Keb', 'baimashi', 'KB');
INSERT INTO `crm_data_region` VALUES (1370, 102, ',1,102,1370,', 3, '柏威夏', 'Preah Vihear', 'baiweixia', 'PR');
INSERT INTO `crm_data_region` VALUES (1371, 102, ',1,102,1371,', 3, '拜林市', 'Krong Pailin', 'bailinshi', 'PL');
INSERT INTO `crm_data_region` VALUES (1372, 102, ',1,102,1372,', 3, '班迭棉吉', 'Banteay Mean Chey', 'bandiemianji', 'BM');
INSERT INTO `crm_data_region` VALUES (1373, 102, ',1,102,1373,', 3, '磅清扬', 'Kampong Chhnang', 'bangqingyang', 'KZC');
INSERT INTO `crm_data_region` VALUES (1374, 102, ',1,102,1374,', 3, '磅士卑', 'Kampong Spoe', 'bangshibei', 'KO');
INSERT INTO `crm_data_region` VALUES (1375, 102, ',1,102,1375,', 3, '磅同', 'Kampong Thum', 'bangtong', 'KZK');
INSERT INTO `crm_data_region` VALUES (1376, 102, ',1,102,1376,', 3, '磅湛', 'Kampong Cham', 'bangzhan', 'KM');
INSERT INTO `crm_data_region` VALUES (1377, 102, ',1,102,1377,', 3, '波罗勉', 'Prey Veng', 'boluomian', 'PG');
INSERT INTO `crm_data_region` VALUES (1378, 102, ',1,102,1378,', 3, '茶胶', 'Takev', 'chajiao', 'TK');
INSERT INTO `crm_data_region` VALUES (1379, 102, ',1,102,1379,', 3, '柴桢', 'Svay Rieng', 'chai', 'SVR');
INSERT INTO `crm_data_region` VALUES (1380, 102, ',1,102,1380,', 3, '干丹', 'Kandal', 'gandan', 'KL');
INSERT INTO `crm_data_region` VALUES (1381, 102, ',1,102,1381,', 3, '戈公', 'Kaoh Kong', 'gegong', 'KKZ');
INSERT INTO `crm_data_region` VALUES (1382, 102, ',1,102,1382,', 3, '贡布', 'Kampot', 'gongbu', 'KMT');
INSERT INTO `crm_data_region` VALUES (1383, 102, ',1,102,1383,', 3, '金边市', 'Phnum Penh', 'jinbianshi', 'PNH');
INSERT INTO `crm_data_region` VALUES (1384, 102, ',1,102,1384,', 3, '桔井', 'Kracheh', 'jiejing', 'KH');
INSERT INTO `crm_data_region` VALUES (1385, 102, ',1,102,1385,', 3, '腊塔纳基里', 'Rotanak Kiri', 'latanajili', 'RBE');
INSERT INTO `crm_data_region` VALUES (1386, 102, ',1,102,1386,', 3, '马德望', 'Bat Dambang', 'madewang', 'BA');
INSERT INTO `crm_data_region` VALUES (1387, 102, ',1,102,1387,', 3, '蒙多基里', 'Mondol Kiri', 'mengduojili', 'MWV');
INSERT INTO `crm_data_region` VALUES (1388, 102, ',1,102,1388,', 3, '菩萨', 'Pouthĭsat', 'pusa', 'PO');
INSERT INTO `crm_data_region` VALUES (1389, 102, ',1,102,1389,', 3, '上丁', 'Stoeng Treng', 'shangding', 'TNX');
INSERT INTO `crm_data_region` VALUES (1390, 102, ',1,102,1390,', 3, '西哈努克市', 'Krong Preah', 'xihanukeshi', 'KA');
INSERT INTO `crm_data_region` VALUES (1391, 102, ',1,102,1391,', 3, '暹粒', 'Siem Reab', 'li', 'REP');
INSERT INTO `crm_data_region` VALUES (1392, 103, ',2,103,1392,', 3, '奥洛穆茨', 'Olomoucky', 'aoluomuci', 'OL');
INSERT INTO `crm_data_region` VALUES (1393, 103, ',2,103,1393,', 3, '比尔森', 'Plzensky', 'biersen', 'PL');
INSERT INTO `crm_data_region` VALUES (1394, 103, ',2,103,1394,', 3, '布拉格直辖市', 'Prague', 'bulagezhixiashi', 'PR');
INSERT INTO `crm_data_region` VALUES (1395, 103, ',2,103,1395,', 3, '赫拉德茨-克拉洛韦', 'Kralovehradecky', 'heladecikelaluowei', 'KR');
INSERT INTO `crm_data_region` VALUES (1396, 103, ',2,103,1396,', 3, '卡罗维发利', 'Karlovarsky', 'kaluoweifali', 'KA');
INSERT INTO `crm_data_region` VALUES (1397, 103, ',2,103,1397,', 3, '利贝雷克', 'Liberecky', 'libeileike', 'LI');
INSERT INTO `crm_data_region` VALUES (1398, 103, ',2,103,1398,', 3, '摩拉维亚-西里西亚', 'Moravskoslezsky', 'molaweiyaxilixiya', 'MO');
INSERT INTO `crm_data_region` VALUES (1399, 103, ',2,103,1399,', 3, '南摩拉维亚', 'Jihomoravsky', 'nanmolaweiya', 'JC');
INSERT INTO `crm_data_region` VALUES (1400, 103, ',2,103,1400,', 3, '帕尔杜比采', 'Pardubicky', 'paerdubicai', 'PA');
INSERT INTO `crm_data_region` VALUES (1401, 103, ',2,103,1401,', 3, '维索基纳', 'Vysocina', 'weisuojina', 'VY');
INSERT INTO `crm_data_region` VALUES (1402, 103, ',2,103,1402,', 3, '乌斯季', 'Ustecky', 'wusiji', 'US');
INSERT INTO `crm_data_region` VALUES (1403, 103, ',2,103,1403,', 3, '中捷克', 'Stredocesky', 'zhongjieke', 'ST');
INSERT INTO `crm_data_region` VALUES (1404, 103, ',2,103,1404,', 3, '兹林', 'Zlinsky', 'zilin', 'ZL');
INSERT INTO `crm_data_region` VALUES (1405, 104, ',3,104,1405,', 3, '北马塔贝莱兰', 'Matabeleland North', 'beimatabeilailan', 'MN');
INSERT INTO `crm_data_region` VALUES (1406, 104, ',3,104,1406,', 3, '布拉瓦约', 'Bulawayo', 'bulawayue', 'BU');
INSERT INTO `crm_data_region` VALUES (1407, 104, ',3,104,1407,', 3, '东马绍纳兰', 'Mashonaland East', 'dongmashaonalan', 'ME');
INSERT INTO `crm_data_region` VALUES (1408, 104, ',3,104,1408,', 3, '哈拉雷', 'Harare', 'halalei', 'HA');
INSERT INTO `crm_data_region` VALUES (1409, 104, ',3,104,1409,', 3, '马尼卡兰', 'Manicaland', 'manikalan', 'ML');
INSERT INTO `crm_data_region` VALUES (1410, 104, ',3,104,1410,', 3, '马斯温戈', 'Masvingo', 'masiwenge', 'MV');
INSERT INTO `crm_data_region` VALUES (1411, 104, ',3,104,1411,', 3, '南马塔贝莱兰', 'Matabeleland South', 'nanmatabeilailan', 'MS');
INSERT INTO `crm_data_region` VALUES (1412, 104, ',3,104,1412,', 3, '西马绍纳兰', 'Mashonaland West', 'ximashaonalan', 'MW');
INSERT INTO `crm_data_region` VALUES (1413, 104, ',3,104,1413,', 3, '中部', 'Midlands', 'zhongbu', 'MD');
INSERT INTO `crm_data_region` VALUES (1414, 104, ',3,104,1414,', 3, '中马绍纳兰', 'Mashonaland Central', 'zhongmashaonalan', 'MC');
INSERT INTO `crm_data_region` VALUES (1415, 105, ',3,105,1415,', 3, '阿达马瓦', 'Adamaoua', 'adamawa', 'ADA');
INSERT INTO `crm_data_region` VALUES (1416, 105, ',3,105,1416,', 3, '北部', 'Nord', 'beibu', 'NOR');
INSERT INTO `crm_data_region` VALUES (1417, 105, ',3,105,1417,', 3, '北端', 'Extreme-Nord', 'beiduan', 'EXN');
INSERT INTO `crm_data_region` VALUES (1418, 105, ',3,105,1418,', 3, '滨海', 'Littoral', 'binhai', 'LIT');
INSERT INTO `crm_data_region` VALUES (1419, 105, ',3,105,1419,', 3, '东部', 'Est', 'dongbu', 'EST');
INSERT INTO `crm_data_region` VALUES (1420, 105, ',3,105,1420,', 3, '南部', 'Sud', 'nanbu', 'SUD');
INSERT INTO `crm_data_region` VALUES (1421, 105, ',3,105,1421,', 3, '西北', 'Nord-Oueste', 'xibei', 'NOT');
INSERT INTO `crm_data_region` VALUES (1422, 105, ',3,105,1422,', 3, '西部', 'Ouest', 'xibu', 'OUE');
INSERT INTO `crm_data_region` VALUES (1423, 105, ',3,105,1423,', 3, '西南', 'Sud-Oueste', 'xinan', 'SOU');
INSERT INTO `crm_data_region` VALUES (1424, 105, ',3,105,1424,', 3, '中央', 'Centre', 'zhongyang', 'CEN');
INSERT INTO `crm_data_region` VALUES (1425, 106, ',1,106,1425,', 3, '北部', 'Madinat ach Shamal', 'beibu', 'MS');
INSERT INTO `crm_data_region` VALUES (1426, 106, ',1,106,1426,', 3, '多哈', 'Ad Dawhah', 'duoha', 'DW');
INSERT INTO `crm_data_region` VALUES (1427, 106, ',1,106,1427,', 3, '古韦里耶', 'Al Ghuwariyah', 'guweiliye', 'GW');
INSERT INTO `crm_data_region` VALUES (1428, 106, ',1,106,1428,', 3, '豪尔', 'Al Khawr', 'haoer', 'KR');
INSERT INTO `crm_data_region` VALUES (1429, 106, ',1,106,1429,', 3, '杰里扬拜特奈', 'Jariyan al Batnah', 'jieliyangbaitenai', 'JB');
INSERT INTO `crm_data_region` VALUES (1430, 106, ',1,106,1430,', 3, '赖扬', 'Ar Rayyan', 'laiyang', 'RN');
INSERT INTO `crm_data_region` VALUES (1431, 106, ',1,106,1431,', 3, '沃克拉', 'Al Wakrah', 'wokela', 'WK');
INSERT INTO `crm_data_region` VALUES (1432, 106, ',1,106,1432,', 3, '乌姆锡拉勒', 'Umm Salal', 'wumuxilale', 'UL');
INSERT INTO `crm_data_region` VALUES (1433, 106, ',1,106,1433,', 3, '朱迈利耶', 'Al Jumaliyah', 'zhumailiye', 'JM');
INSERT INTO `crm_data_region` VALUES (1434, 110, ',3,110,1434,', 3, '阿涅比', 'Agnebi', 'aniebi', 'AG');
INSERT INTO `crm_data_region` VALUES (1435, 110, ',3,110,1435,', 3, '巴芬', 'Bafing', 'bafen', 'BF');
INSERT INTO `crm_data_region` VALUES (1436, 110, ',3,110,1436,', 3, '邦达马河谷', 'Vallee du Bandama', 'bangdamahegu', 'VB');
INSERT INTO `crm_data_region` VALUES (1437, 110, ',3,110,1437,', 3, '登盖莱', 'Denguele', 'denggailai', 'DE');
INSERT INTO `crm_data_region` VALUES (1438, 110, ',3,110,1438,', 3, '恩济－科莫埃', 'Nzi-Comoe', 'enjikemoai', 'NC');
INSERT INTO `crm_data_region` VALUES (1439, 110, ',3,110,1439,', 3, '弗罗马格尔', 'Fromager', 'fuluomageer', 'FR');
INSERT INTO `crm_data_region` VALUES (1440, 110, ',3,110,1440,', 3, '湖泊', 'Lacs', 'hubo', 'LC');
INSERT INTO `crm_data_region` VALUES (1441, 110, ',3,110,1441,', 3, '马拉韦', 'Marahoue', 'malawei', 'MR');
INSERT INTO `crm_data_region` VALUES (1442, 110, ',3,110,1442,', 3, '南邦达马', 'Sud-Bandama', 'nanbangdama', 'SB');
INSERT INTO `crm_data_region` VALUES (1443, 110, ',3,110,1443,', 3, '南科莫埃', 'Sud-Comoe', 'nankemoai', 'SC');
INSERT INTO `crm_data_region` VALUES (1444, 110, ',3,110,1444,', 3, '萨桑德拉', 'Haut-Sassandra', 'sasangdela', 'HT');
INSERT INTO `crm_data_region` VALUES (1445, 110, ',3,110,1445,', 3, '萨瓦纳', 'Savanes', 'sawana', 'SV');
INSERT INTO `crm_data_region` VALUES (1446, 110, ',3,110,1446,', 3, '山地', 'Montagnes', 'shandi', 'DH');
INSERT INTO `crm_data_region` VALUES (1447, 110, ',3,110,1447,', 3, '沃罗杜古', 'Worodougou', 'woluodugu', 'WR');
INSERT INTO `crm_data_region` VALUES (1448, 110, ',3,110,1448,', 3, '下萨桑德拉', 'Bas-Sassandra', 'xiasasangdela', 'BS');
INSERT INTO `crm_data_region` VALUES (1449, 110, ',3,110,1449,', 3, '泻湖', 'Lagunes', 'xiehu', 'LG');
INSERT INTO `crm_data_region` VALUES (1450, 110, ',3,110,1450,', 3, '赞赞', 'Zanzan', 'zanzan', 'ZA');
INSERT INTO `crm_data_region` VALUES (1451, 110, ',3,110,1451,', 3, '中卡瓦利', 'Moyen-Cavally', 'zhongkawali', 'MV');
INSERT INTO `crm_data_region` VALUES (1452, 110, ',3,110,1452,', 3, '中科莫埃', 'Moyen-Comoe', 'zhongkemoai', 'MC');
INSERT INTO `crm_data_region` VALUES (1453, 112, ',2,112,1453,', 3, '奥西耶克-巴拉尼亚', 'Osjecko-Baranjska', 'aoxiyekebalaniya', '14');
INSERT INTO `crm_data_region` VALUES (1454, 112, ',2,112,1454,', 3, '别洛瓦尔-比洛戈拉', 'Bjelovarsko-Bilogorska', 'bieluowaerbiluogela', '7');
INSERT INTO `crm_data_region` VALUES (1455, 112, ',2,112,1455,', 3, '滨海和山区', 'Primorsko-Goranska', 'binhaiheshanqu', '8');
INSERT INTO `crm_data_region` VALUES (1456, 112, ',2,112,1456,', 3, '波热加-斯拉沃尼亚', 'Pozega-Slavonia', 'borejiasilawoniya', '11');
INSERT INTO `crm_data_region` VALUES (1457, 112, ',2,112,1457,', 3, '布罗德-波萨维纳', 'Brodsko-Posavska', 'buluodebosaweina', '12');
INSERT INTO `crm_data_region` VALUES (1458, 112, ',2,112,1458,', 3, '杜布罗夫斯克-内雷特瓦', 'Dubrovacko-Neretvanska', 'dubuluofusikeneileitewa', '19');
INSERT INTO `crm_data_region` VALUES (1459, 112, ',2,112,1459,', 3, '卡尔洛瓦茨', 'Karlovacka', 'kaerluowaci', '4');
INSERT INTO `crm_data_region` VALUES (1460, 112, ',2,112,1460,', 3, '科普里夫尼察-克里热夫齐', 'Koprivnicko-Krizevacka', 'kepulifunichakelirefuqi', '6');
INSERT INTO `crm_data_region` VALUES (1461, 112, ',2,112,1461,', 3, '克拉皮纳-扎戈列', 'Krapinsko-Zagorska', 'kelapinazhagelie', '2');
INSERT INTO `crm_data_region` VALUES (1462, 112, ',2,112,1462,', 3, '利卡-塞尼', 'Licko-Senjska', 'likasaini', '9');
INSERT INTO `crm_data_region` VALUES (1463, 112, ',2,112,1463,', 3, '梅吉穆列', 'Medimurska', 'meijimulie', '20');
INSERT INTO `crm_data_region` VALUES (1464, 112, ',2,112,1464,', 3, '萨格勒布', 'Zagrebacka', 'sagelebu', '1');
INSERT INTO `crm_data_region` VALUES (1465, 112, ',2,112,1465,', 3, '萨格勒布市', 'Grad Zagreb', 'sagelebushi', '21');
INSERT INTO `crm_data_region` VALUES (1466, 112, ',2,112,1466,', 3, '斯普利特-达尔马提亚', 'Splitsko-Dalmatinska', 'sipulitedaermatiya', '17');
INSERT INTO `crm_data_region` VALUES (1467, 112, ',2,112,1467,', 3, '瓦拉日丁', 'Varazdinska', 'walariding', '5');
INSERT INTO `crm_data_region` VALUES (1468, 112, ',2,112,1468,', 3, '维罗维蒂察-波德拉维纳', 'Viroviticko-Podravska', 'weiluoweidichabodelaweina', '10');
INSERT INTO `crm_data_region` VALUES (1469, 112, ',2,112,1469,', 3, '武科瓦尔-斯里耶姆', 'Vukovarsko-Srijemska', 'wukewaersiliyemu', '16');
INSERT INTO `crm_data_region` VALUES (1470, 112, ',2,112,1470,', 3, '希贝尼克-克宁', 'Sibensko-Kninska', 'xibeinikekening', '15');
INSERT INTO `crm_data_region` VALUES (1471, 112, ',2,112,1471,', 3, '锡萨克-莫斯拉维纳', 'Sisacko-Moslavacka', 'xisakemosilaweina', '3');
INSERT INTO `crm_data_region` VALUES (1472, 112, ',2,112,1472,', 3, '伊斯特拉', 'Istarska', 'yisitela', '18');
INSERT INTO `crm_data_region` VALUES (1473, 112, ',2,112,1473,', 3, '扎达尔', 'Zadarska', 'zhadaer', '13');
INSERT INTO `crm_data_region` VALUES (1474, 113, ',3,113,1474,', 3, '埃尔格约-马拉奎特', 'Elgeyo-Marakwet', 'aiergeyuemalakuite', 'EMA');
INSERT INTO `crm_data_region` VALUES (1475, 113, ',3,113,1475,', 3, '巴林戈', 'Baringo', 'balinge', 'BAR');
INSERT INTO `crm_data_region` VALUES (1476, 113, ',3,113,1476,', 3, '邦戈马', 'Bungoma', 'banggema', 'BUN');
INSERT INTO `crm_data_region` VALUES (1477, 113, ',3,113,1477,', 3, '博美特', 'Bomet', 'bomeite', 'BOM');
INSERT INTO `crm_data_region` VALUES (1478, 113, ',3,113,1478,', 3, '布希亚', 'Busia', 'buxiya', 'BUS');
INSERT INTO `crm_data_region` VALUES (1479, 113, ',3,113,1479,', 3, '恩布', 'Embu', 'enbu', 'EMB');
INSERT INTO `crm_data_region` VALUES (1480, 113, ',3,113,1480,', 3, '霍马湾', 'Homa Bay', 'huomawan', 'HOB');
INSERT INTO `crm_data_region` VALUES (1481, 113, ',3,113,1481,', 3, '基安布', 'Kiambu', 'jianbu', 'KIA');
INSERT INTO `crm_data_region` VALUES (1482, 113, ',3,113,1482,', 3, '基里菲', 'Kilifi', 'jilifei', 'KIL');
INSERT INTO `crm_data_region` VALUES (1483, 113, ',3,113,1483,', 3, '基里尼亚加', 'Kirinyaga', 'jiliniyajia', 'KIR');
INSERT INTO `crm_data_region` VALUES (1484, 113, ',3,113,1484,', 3, '基苏木', 'Kisumu', 'jisumu', 'KIS');
INSERT INTO `crm_data_region` VALUES (1485, 113, ',3,113,1485,', 3, '基图伊', 'Kitui', 'jituyi', 'KIT');
INSERT INTO `crm_data_region` VALUES (1486, 113, ',3,113,1486,', 3, '基西', 'Kisii', 'jixi', 'KII');
INSERT INTO `crm_data_region` VALUES (1487, 113, ',3,113,1487,', 3, '加里萨', 'Garissa', 'jialisa', 'GAS');
INSERT INTO `crm_data_region` VALUES (1488, 113, ',3,113,1488,', 3, '卡卡梅加', 'Kakamega', 'kakameijia', 'KAK');
INSERT INTO `crm_data_region` VALUES (1489, 113, ',3,113,1489,', 3, '卡耶亚多', 'Kajiado', 'kayeyaduo', 'KAJ');
INSERT INTO `crm_data_region` VALUES (1490, 113, ',3,113,1490,', 3, '凯里乔', 'Kericho', 'kailiqiao', 'KEY');
INSERT INTO `crm_data_region` VALUES (1491, 113, ',3,113,1491,', 3, '夸勒', 'Kwale', 'kuale', 'KWA');
INSERT INTO `crm_data_region` VALUES (1492, 113, ',3,113,1492,', 3, '拉木', 'Lamu', 'lamu', 'LAU');
INSERT INTO `crm_data_region` VALUES (1493, 113, ',3,113,1493,', 3, '莱基皮亚', 'Laikipia', 'laijipiya', 'LAI');
INSERT INTO `crm_data_region` VALUES (1494, 113, ',3,113,1494,', 3, '马查科斯', 'Machakos', 'machakesi', 'MAC');
INSERT INTO `crm_data_region` VALUES (1495, 113, ',3,113,1495,', 3, '马瓜尼', 'Makueni', 'maguani', 'MAK');
INSERT INTO `crm_data_region` VALUES (1496, 113, ',3,113,1496,', 3, '马萨布布', 'Marsabit', 'masabubu', 'RBT');
INSERT INTO `crm_data_region` VALUES (1497, 113, ',3,113,1497,', 3, '曼德拉', 'Mandera', 'mandela', 'MAN');
INSERT INTO `crm_data_region` VALUES (1498, 113, ',3,113,1498,', 3, '梅鲁', 'Meru', 'meilu', 'MER');
INSERT INTO `crm_data_region` VALUES (1499, 113, ',3,113,1499,', 3, '蒙巴萨', 'Mombasa', 'mengbasa', 'MOM');
INSERT INTO `crm_data_region` VALUES (1500, 113, ',3,113,1500,', 3, '米戈利', 'Migori', 'migeli', 'MIG');
INSERT INTO `crm_data_region` VALUES (1501, 113, ',3,113,1501,', 3, '穆兰卡', 'Muranga', 'mulanka', 'MUR');
INSERT INTO `crm_data_region` VALUES (1502, 113, ',3,113,1502,', 3, '纳库鲁', 'Nakuru', 'nakulu', 'NUU');
INSERT INTO `crm_data_region` VALUES (1503, 113, ',3,113,1503,', 3, '纳罗克', 'Narok', 'naluoke', 'NAR');
INSERT INTO `crm_data_region` VALUES (1504, 113, ',3,113,1504,', 3, '南迪', 'Nandi', 'nandi', 'NAN');
INSERT INTO `crm_data_region` VALUES (1505, 113, ',3,113,1505,', 3, '内罗毕', 'Nairobi', 'neiluobi', 'NA');
INSERT INTO `crm_data_region` VALUES (1506, 113, ',3,113,1506,', 3, '尼蒂', 'Nithi', 'nidi', 'NIT');
INSERT INTO `crm_data_region` VALUES (1507, 113, ',3,113,1507,', 3, '尼亚米拉', 'Nyamira', 'niyamila', 'NYM');
INSERT INTO `crm_data_region` VALUES (1508, 113, ',3,113,1508,', 3, '年达鲁阿', 'Nyandarua', 'niandalua', 'NYN');
INSERT INTO `crm_data_region` VALUES (1509, 113, ',3,113,1509,', 3, '涅里', 'Nyeri', 'nieli', 'NYE');
INSERT INTO `crm_data_region` VALUES (1510, 113, ',3,113,1510,', 3, '桑布卢', 'Samburu', 'sangbulu', 'UAS');
INSERT INTO `crm_data_region` VALUES (1511, 113, ',3,113,1511,', 3, '塔纳河', 'Tana River', 'tanahe', 'TRI');
INSERT INTO `crm_data_region` VALUES (1512, 113, ',3,113,1512,', 3, '泰塔塔维塔', 'Taita-Taveta', 'taitataweita', 'TTA');
INSERT INTO `crm_data_region` VALUES (1513, 113, ',3,113,1513,', 3, '特兰斯-恩佐亚', 'Trans-Nzoia', 'telansienzuoya', 'TNZ');
INSERT INTO `crm_data_region` VALUES (1514, 113, ',3,113,1514,', 3, '图尔卡纳', 'Turkana', 'tuerkana', 'TUR');
INSERT INTO `crm_data_region` VALUES (1515, 113, ',3,113,1515,', 3, '瓦吉尔', 'Wajir', 'wajier', 'WJR');
INSERT INTO `crm_data_region` VALUES (1516, 113, ',3,113,1516,', 3, '瓦辛基苏', 'Uasin Gishu', 'waxinjisu', 'UGI');
INSERT INTO `crm_data_region` VALUES (1517, 113, ',3,113,1517,', 3, '韦希加', 'Vihiga', 'weixijia', 'VIH');
INSERT INTO `crm_data_region` VALUES (1518, 113, ',3,113,1518,', 3, '西波克特', 'West Pokot', 'xibokete', 'WPO');
INSERT INTO `crm_data_region` VALUES (1519, 113, ',3,113,1519,', 3, '夏亚', 'Siaya', 'xiaya', 'SIA');
INSERT INTO `crm_data_region` VALUES (1520, 113, ',3,113,1520,', 3, '伊希约洛', 'Isiolo', 'yixiyueluo', 'ISI');
INSERT INTO `crm_data_region` VALUES (1521, 113, ',3,113,1521,', 3, '中央', 'Central', 'zhongyang', 'CE');
INSERT INTO `crm_data_region` VALUES (1522, 115, ',2,115,1522,', 3, '阿卢克斯内', 'Aluksnes', 'alukesinei', 'ALU');
INSERT INTO `crm_data_region` VALUES (1523, 115, ',2,115,1523,', 3, '爱兹克劳克雷', 'Aizkraukles', 'aizikelaokelei', 'AIZ');
INSERT INTO `crm_data_region` VALUES (1524, 115, ',2,115,1524,', 3, '奥格雷', 'Ogres', 'aogelei', 'OGR');
INSERT INTO `crm_data_region` VALUES (1525, 115, ',2,115,1525,', 3, '巴尔维', 'Balvu', 'baerwei', 'BAL');
INSERT INTO `crm_data_region` VALUES (1526, 115, ',2,115,1526,', 3, '包斯卡', 'Bauskas', 'baosika', 'BAU');
INSERT INTO `crm_data_region` VALUES (1527, 115, ',2,115,1527,', 3, '采西斯', 'Cesu', 'caixisi', 'CES');
INSERT INTO `crm_data_region` VALUES (1528, 115, ',2,115,1528,', 3, '多贝莱', 'Dobeles', 'duobeilai', 'DOB');
INSERT INTO `crm_data_region` VALUES (1529, 115, ',2,115,1529,', 3, '古尔贝内', 'Gulbenes', 'guerbeinei', 'GUL');
INSERT INTO `crm_data_region` VALUES (1530, 115, ',2,115,1530,', 3, '杰卡布皮尔斯', 'Jekabpils', 'jiekabupiersi', 'JEK');
INSERT INTO `crm_data_region` VALUES (1531, 115, ',2,115,1531,', 3, '克拉斯拉瓦', 'Kraslavas', 'kelasilawa', 'KRA');
INSERT INTO `crm_data_region` VALUES (1532, 115, ',2,115,1532,', 3, '库尔迪加', 'Kuldigas', 'kuerdijia', 'KUL');
INSERT INTO `crm_data_region` VALUES (1533, 115, ',2,115,1533,', 3, '雷泽克内', 'Rezeknes', 'leizekenei', 'RZR');
INSERT INTO `crm_data_region` VALUES (1534, 115, ',2,115,1534,', 3, '里加', 'Rigas', 'lijia', 'RGA');
INSERT INTO `crm_data_region` VALUES (1535, 115, ',2,115,1535,', 3, '利耶帕亚', 'Liepajas', 'liyepaya', 'LPK');
INSERT INTO `crm_data_region` VALUES (1536, 115, ',2,115,1536,', 3, '林巴济', 'Limbazu', 'linbaji', 'LIM');
INSERT INTO `crm_data_region` VALUES (1537, 115, ',2,115,1537,', 3, '卢扎', 'Ludzas', 'luzha', 'LUD');
INSERT INTO `crm_data_region` VALUES (1538, 115, ',2,115,1538,', 3, '马多纳', 'Madonas', 'maduona', 'MAD');
INSERT INTO `crm_data_region` VALUES (1539, 115, ',2,115,1539,', 3, '普雷利', 'Preilu', 'puleili', 'PRE');
INSERT INTO `crm_data_region` VALUES (1540, 115, ',2,115,1540,', 3, '萨尔杜斯', 'Saldus', 'saerdusi', 'SAL');
INSERT INTO `crm_data_region` VALUES (1541, 115, ',2,115,1541,', 3, '塔尔西', 'Talsu', 'taerxi', 'TAL');
INSERT INTO `crm_data_region` VALUES (1542, 115, ',2,115,1542,', 3, '陶格夫皮尔斯', 'Daugavpils', 'taogefupiersi', 'DGR');
INSERT INTO `crm_data_region` VALUES (1543, 115, ',2,115,1543,', 3, '图库马', 'Tukuma', 'tukuma', 'TUK');
INSERT INTO `crm_data_region` VALUES (1544, 115, ',2,115,1544,', 3, '瓦尔加', 'Valkas', 'waerjia', 'VLK');
INSERT INTO `crm_data_region` VALUES (1545, 115, ',2,115,1545,', 3, '瓦尔米耶拉', 'Valmieras', 'waermiyela', 'VLM');
INSERT INTO `crm_data_region` VALUES (1546, 115, ',2,115,1546,', 3, '文茨皮尔斯', 'Ventspils', 'wencipiersi', 'VSL');
INSERT INTO `crm_data_region` VALUES (1547, 115, ',2,115,1547,', 3, '叶尔加瓦', 'Jelgavas', 'yeerjiawa', 'JGR');
INSERT INTO `crm_data_region` VALUES (1548, 116, ',3,116,1548,', 3, '伯里亚', 'Berea', 'boliya', 'D');
INSERT INTO `crm_data_region` VALUES (1549, 116, ',3,116,1549,', 3, '布塔布泰', 'Butha-Buthe', 'butabutai', 'B');
INSERT INTO `crm_data_region` VALUES (1550, 116, ',3,116,1550,', 3, '古廷', 'Quthing', 'guting', 'G');
INSERT INTO `crm_data_region` VALUES (1551, 116, ',3,116,1551,', 3, '加查斯内克', 'Qachas Nek', 'jiachasineike', 'H');
INSERT INTO `crm_data_region` VALUES (1552, 116, ',3,116,1552,', 3, '莱里贝', 'Leribe', 'lailibei', 'C');
INSERT INTO `crm_data_region` VALUES (1553, 116, ',3,116,1553,', 3, '马费滕', 'Mafeteng', 'mafei', 'E');
INSERT INTO `crm_data_region` VALUES (1554, 116, ',3,116,1554,', 3, '马塞卢', 'Maseru', 'masailu', 'A');
INSERT INTO `crm_data_region` VALUES (1555, 116, ',3,116,1555,', 3, '莫哈莱斯胡克', 'Mohales Hoek', 'mohalaisihuke', 'F');
INSERT INTO `crm_data_region` VALUES (1556, 116, ',3,116,1556,', 3, '莫霍特隆', 'Mokhotlong', 'mohuotelong', 'J');
INSERT INTO `crm_data_region` VALUES (1557, 116, ',3,116,1557,', 3, '塔巴采卡', 'Thaba-Tseka', 'tabacaika', 'K');
INSERT INTO `crm_data_region` VALUES (1558, 117, ',1,117,1558,', 3, '阿速坡', 'Attapu', 'asupo', 'AT');
INSERT INTO `crm_data_region` VALUES (1559, 117, ',1,117,1559,', 3, '波里坎赛', 'Bolikhamxai', 'bolikansai', 'BL');
INSERT INTO `crm_data_region` VALUES (1560, 117, ',1,117,1560,', 3, '博乔', 'Bokeo', 'boqiao', 'BK');
INSERT INTO `crm_data_region` VALUES (1561, 117, ',1,117,1561,', 3, '川圹', 'Xiangkhoang', 'chuan', 'XI');
INSERT INTO `crm_data_region` VALUES (1562, 117, ',1,117,1562,', 3, '丰沙里', 'Phongsali', 'fengshali', 'PH');
INSERT INTO `crm_data_region` VALUES (1563, 117, ',1,117,1563,', 3, '甘蒙', 'Khammouan', 'ganmeng', 'KH');
INSERT INTO `crm_data_region` VALUES (1564, 117, ',1,117,1564,', 3, '华潘', 'Houaphan', 'huapan', 'HO');
INSERT INTO `crm_data_region` VALUES (1565, 117, ',1,117,1565,', 3, '琅勃拉邦', 'Louangphrabang', 'langbolabang', 'LP');
INSERT INTO `crm_data_region` VALUES (1566, 117, ',1,117,1566,', 3, '琅南塔', 'Louang Namtha', 'langnanta', 'LM');
INSERT INTO `crm_data_region` VALUES (1567, 117, ',1,117,1567,', 3, '赛宋本行政特区', 'Xaisomboun', 'saisongbenxingzhengtequ', 'XN');
INSERT INTO `crm_data_region` VALUES (1568, 117, ',1,117,1568,', 3, '色贡', 'Xekong', 'segong', 'XE');
INSERT INTO `crm_data_region` VALUES (1569, 117, ',1,117,1569,', 3, '沙拉湾', 'Saravan', 'shalawan', 'SL');
INSERT INTO `crm_data_region` VALUES (1570, 117, ',1,117,1570,', 3, '沙湾拿吉', 'Savannakhet', 'shawannaji', 'SV');
INSERT INTO `crm_data_region` VALUES (1571, 117, ',1,117,1571,', 3, '沙耶武里', 'Xaignabouri', 'shayewuli', 'XA');
INSERT INTO `crm_data_region` VALUES (1572, 117, ',1,117,1572,', 3, '万象', 'Vientiane', 'wanxiang', 'VI');
INSERT INTO `crm_data_region` VALUES (1573, 117, ',1,117,1573,', 3, '乌多姆赛', 'Oudomxai', 'wuduomusai', 'OU');
INSERT INTO `crm_data_region` VALUES (1574, 117, ',1,117,1574,', 3, '占巴塞', 'Champasak', 'zhanbasai', 'CH');
INSERT INTO `crm_data_region` VALUES (1575, 118, ',1,118,1575,', 3, '北部', 'Ash-Shamal', 'beibu', 'AS');
INSERT INTO `crm_data_region` VALUES (1576, 118, ',1,118,1576,', 3, '贝卡', 'Al-Biqa', 'beika', 'BI');
INSERT INTO `crm_data_region` VALUES (1577, 118, ',1,118,1577,', 3, '贝鲁特', 'Bayrut', 'beilute', 'BA');
INSERT INTO `crm_data_region` VALUES (1578, 118, ',1,118,1578,', 3, '黎巴嫩山', 'Jabal Lubnan', 'libanenshan', 'JL');
INSERT INTO `crm_data_region` VALUES (1579, 118, ',1,118,1579,', 3, '奈拜提耶市', 'An-Nabatiyah', 'naibaitiyeshi', 'NA');
INSERT INTO `crm_data_region` VALUES (1580, 118, ',1,118,1580,', 3, '南部', 'Al-Janub', 'nanbu', 'JA');
INSERT INTO `crm_data_region` VALUES (1581, 119, ',3,119,1581,', 3, '巴波卢', 'Gbarpolu', 'babolu', 'GBA');
INSERT INTO `crm_data_region` VALUES (1582, 119, ',3,119,1582,', 3, '邦', 'Bong', 'bang', 'BG');
INSERT INTO `crm_data_region` VALUES (1583, 119, ',3,119,1583,', 3, '博波卢', 'Bopolu', 'bobolu', 'BOP');
INSERT INTO `crm_data_region` VALUES (1584, 119, ',3,119,1584,', 3, '博米', 'Bomi', 'bomi', 'BM');
INSERT INTO `crm_data_region` VALUES (1585, 119, ',3,119,1585,', 3, '大巴萨', 'Grand Bassa', 'dabasa', 'GB');
INSERT INTO `crm_data_region` VALUES (1586, 119, ',3,119,1586,', 3, '大吉德', 'Grand Gedeh', 'dajide', 'GG');
INSERT INTO `crm_data_region` VALUES (1587, 119, ',3,119,1587,', 3, '大角山', 'Grand Cape Mount', 'dajiaoshan', 'CM');
INSERT INTO `crm_data_region` VALUES (1588, 119, ',3,119,1588,', 3, '大克鲁', 'Grand Kru', 'dakelu', 'GK');
INSERT INTO `crm_data_region` VALUES (1589, 119, ',3,119,1589,', 3, '菲什敦', 'Fish Town', 'feishidun', 'FT');
INSERT INTO `crm_data_region` VALUES (1590, 119, ',3,119,1590,', 3, '吉河', 'River Gee', 'jihe', 'RG');
INSERT INTO `crm_data_region` VALUES (1591, 119, ',3,119,1591,', 3, '里弗塞斯', 'River Cess', 'lifusaisi', 'RI');
INSERT INTO `crm_data_region` VALUES (1592, 119, ',3,119,1592,', 3, '洛法', 'Lofa', 'luofa', 'LO');
INSERT INTO `crm_data_region` VALUES (1593, 119, ',3,119,1593,', 3, '马吉比', 'Margibi', 'majibi', 'MG');
INSERT INTO `crm_data_region` VALUES (1594, 119, ',3,119,1594,', 3, '马里兰', 'Maryland', 'malilan', 'MY');
INSERT INTO `crm_data_region` VALUES (1595, 119, ',3,119,1595,', 3, '蒙特塞拉多', 'Montserrado', 'mengtesailaduo', 'MO');
INSERT INTO `crm_data_region` VALUES (1596, 119, ',3,119,1596,', 3, '宁巴', 'Nimba', 'ningba', 'NI');
INSERT INTO `crm_data_region` VALUES (1597, 119, ',3,119,1597,', 3, '锡诺', 'Sinoe', 'xinuo', 'SI');
INSERT INTO `crm_data_region` VALUES (1598, 121, ',2,121,1598,', 3, '阿利图斯', 'Alytus', 'alitusi', 'AL');
INSERT INTO `crm_data_region` VALUES (1599, 121, ',2,121,1599,', 3, '考纳斯', 'Kaunas', 'kaonasi', 'KA');
INSERT INTO `crm_data_region` VALUES (1600, 121, ',2,121,1600,', 3, '克莱佩达', 'Klaipeda', 'kelaipeida', 'KL');
INSERT INTO `crm_data_region` VALUES (1601, 121, ',2,121,1601,', 3, '马里扬泊列', 'Marijampole', 'maliyangbolie', 'MA');
INSERT INTO `crm_data_region` VALUES (1602, 121, ',2,121,1602,', 3, '帕涅韦日斯', 'Panevezys', 'panieweirisi', 'PA');
INSERT INTO `crm_data_region` VALUES (1603, 121, ',2,121,1603,', 3, '陶拉格', 'Taurages', 'taolage', 'TA');
INSERT INTO `crm_data_region` VALUES (1604, 121, ',2,121,1604,', 3, '特尔希艾', 'Telsiu', 'teerxiai', 'TE');
INSERT INTO `crm_data_region` VALUES (1605, 121, ',2,121,1605,', 3, '维尔纽斯', 'Vilnius', 'weierniusi', 'VI');
INSERT INTO `crm_data_region` VALUES (1606, 121, ',2,121,1606,', 3, '乌田纳', 'Utenos', 'wutianna', 'UT');
INSERT INTO `crm_data_region` VALUES (1607, 121, ',2,121,1607,', 3, '希奥利艾', 'Siauliai', 'xiaoliai', 'SI');
INSERT INTO `crm_data_region` VALUES (1608, 121, ',2,121,1608,', 3, '亚克曼', 'Akmenes', 'yakeman', 'AKM');
INSERT INTO `crm_data_region` VALUES (1609, 124, ',2,124,1609,', 3, '迪基希', 'Diekirch', 'dijixi', 'DD');
INSERT INTO `crm_data_region` VALUES (1610, 124, ',2,124,1610,', 3, '格雷文马赫', 'Grevenmacher', 'geleiwenmahe', 'GG');
INSERT INTO `crm_data_region` VALUES (1611, 124, ',2,124,1611,', 3, '卢森堡', 'Luxembourg', 'lusenbao', 'LL');
INSERT INTO `crm_data_region` VALUES (1612, 125, ',3,125,1612,', 3, '比温巴', 'Byumba', 'biwenba', 'BY');
INSERT INTO `crm_data_region` VALUES (1613, 125, ',3,125,1613,', 3, '布塔雷', 'Butare', 'butalei', 'BU');
INSERT INTO `crm_data_region` VALUES (1614, 125, ',3,125,1614,', 3, '恩延扎', 'Nyanza', 'enyanzha', 'NY');
INSERT INTO `crm_data_region` VALUES (1615, 125, ',3,125,1615,', 3, '基本古', 'Kibungo', 'jibengu', 'KG');
INSERT INTO `crm_data_region` VALUES (1616, 125, ',3,125,1616,', 3, '基布耶', 'Kibuye', 'jibuye', 'KY');
INSERT INTO `crm_data_region` VALUES (1617, 125, ',3,125,1617,', 3, '基加利-恩加利', 'Kigali-Ngali', 'jijialienjiali', 'KR');
INSERT INTO `crm_data_region` VALUES (1618, 125, ',3,125,1618,', 3, '基加利市', 'Kigali-Ville', 'jijialishi', 'KV');
INSERT INTO `crm_data_region` VALUES (1619, 125, ',3,125,1619,', 3, '吉孔戈罗', 'Gikongoro', 'jikonggeluo', 'GK');
INSERT INTO `crm_data_region` VALUES (1620, 125, ',3,125,1620,', 3, '吉塞尼', 'Gisenyi', 'jisaini', 'GS');
INSERT INTO `crm_data_region` VALUES (1621, 125, ',3,125,1621,', 3, '吉塔拉马', 'Gitarama', 'jitalama', 'GT');
INSERT INTO `crm_data_region` VALUES (1622, 125, ',3,125,1622,', 3, '卡布加', 'Kabuga', 'kabujia', 'KA');
INSERT INTO `crm_data_region` VALUES (1623, 125, ',3,125,1623,', 3, '卢瓦马加纳', 'Rwamagana', 'luwamajiana', 'RW');
INSERT INTO `crm_data_region` VALUES (1624, 125, ',3,125,1624,', 3, '鲁汉戈', 'Ruhango', 'luhange', 'RH');
INSERT INTO `crm_data_region` VALUES (1625, 125, ',3,125,1625,', 3, '鲁亨盖里', 'Ruhengeri', 'luhenggaili', 'RU');
INSERT INTO `crm_data_region` VALUES (1626, 125, ',3,125,1626,', 3, '尚古古', 'Cyangugu', 'shanggugu', 'CY');
INSERT INTO `crm_data_region` VALUES (1627, 125, ',3,125,1627,', 3, '乌姆塔拉', 'Umutara', 'wumutala', 'UM');
INSERT INTO `crm_data_region` VALUES (1628, 126, ',2,126,1628,', 3, '阿尔巴尤利亚', 'Alba Iulia', 'aerbayouliya', 'AL');
INSERT INTO `crm_data_region` VALUES (1629, 126, ',2,126,1629,', 3, '阿拉德', 'Arad', 'alade', 'AR');
INSERT INTO `crm_data_region` VALUES (1630, 126, ',2,126,1630,', 3, '奥拉迪亚', 'Oradea', 'aoladiya', 'OR');
INSERT INTO `crm_data_region` VALUES (1631, 126, ',2,126,1631,', 3, '巴克乌', 'Bacau', 'bakewu', 'BA');
INSERT INTO `crm_data_region` VALUES (1632, 126, ',2,126,1632,', 3, '巴亚马雷', 'Baia Mare', 'bayamalei', 'BM');
INSERT INTO `crm_data_region` VALUES (1633, 126, ',2,126,1633,', 3, '比斯特里察', 'Bistrita', 'bisitelicha', 'BN');
INSERT INTO `crm_data_region` VALUES (1634, 126, ',2,126,1634,', 3, '博托沙尼', 'Botosani', 'botuoshani', 'BO');
INSERT INTO `crm_data_region` VALUES (1635, 126, ',2,126,1635,', 3, '布加勒斯特', 'Bucuresti', 'bujialesite', 'BC');
INSERT INTO `crm_data_region` VALUES (1636, 126, ',2,126,1636,', 3, '布拉索夫', 'Brasov', 'bulasuofu', 'BS');
INSERT INTO `crm_data_region` VALUES (1637, 126, ',2,126,1637,', 3, '布勒伊拉', 'Braila', 'buleyila', 'BL');
INSERT INTO `crm_data_region` VALUES (1638, 126, ',2,126,1638,', 3, '布泽乌', 'Buzau', 'buzewu', 'BZ');
INSERT INTO `crm_data_region` VALUES (1639, 126, ',2,126,1639,', 3, '德罗贝塔-塞维林堡', 'Drobeta-Turnu Severin', 'deluobeitasaiweilinbao', 'DT');
INSERT INTO `crm_data_region` VALUES (1640, 126, ',2,126,1640,', 3, '德瓦', 'Deva', 'dewa', 'DE');
INSERT INTO `crm_data_region` VALUES (1641, 126, ',2,126,1641,', 3, '蒂米什瓦拉', 'Timisoara', 'dimishiwala', 'TI');
INSERT INTO `crm_data_region` VALUES (1642, 126, ',2,126,1642,', 3, '福克沙尼', 'Focsani', 'fukeshani', 'FO');
INSERT INTO `crm_data_region` VALUES (1643, 126, ',2,126,1643,', 3, '加拉茨', 'Galati', 'jialaci', 'GL');
INSERT INTO `crm_data_region` VALUES (1644, 126, ',2,126,1644,', 3, '久尔久', 'Giurgiu', 'jiuerjiu', 'GG');
INSERT INTO `crm_data_region` VALUES (1645, 126, ',2,126,1645,', 3, '康斯坦察', 'Constanta', 'kangsitancha', 'CT');
INSERT INTO `crm_data_region` VALUES (1646, 126, ',2,126,1646,', 3, '克拉约瓦', 'Craiova', 'kelayuewa', 'DO');
INSERT INTO `crm_data_region` VALUES (1647, 126, ',2,126,1647,', 3, '克勒拉希', 'Calarasi', 'kelelaxi', 'CR');
INSERT INTO `crm_data_region` VALUES (1648, 126, ',2,126,1648,', 3, '克卢日纳波卡', 'Cluj-Napoca', 'kelurinaboka', 'CN');
INSERT INTO `crm_data_region` VALUES (1649, 126, ',2,126,1649,', 3, '勒姆尼库沃尔恰', 'XRimnicu Vilcea', 'lemunikuwoerqia', 'VI');
INSERT INTO `crm_data_region` VALUES (1650, 126, ',2,126,1650,', 3, '雷希察', 'Resita', 'leixicha', 'RE');
INSERT INTO `crm_data_region` VALUES (1651, 126, ',2,126,1651,', 3, '梅尔库里亚丘克', 'Miercurea-Ciuc', 'meierkuliyaqiuke', 'MC');
INSERT INTO `crm_data_region` VALUES (1652, 126, ',2,126,1652,', 3, '皮特什蒂', 'Pitesti', 'piteshidi', 'PI');
INSERT INTO `crm_data_region` VALUES (1653, 126, ',2,126,1653,', 3, '皮亚特拉尼亚姆茨', 'Piatra Neamt', 'piyatelaniyamuci', 'PN');
INSERT INTO `crm_data_region` VALUES (1654, 126, ',2,126,1654,', 3, '普洛耶什蒂', 'Ploiesti', 'puluoyeshidi', 'PL');
INSERT INTO `crm_data_region` VALUES (1655, 126, ',2,126,1655,', 3, '萨图·马雷', 'Satu Mare', 'satu', 'SM');
INSERT INTO `crm_data_region` VALUES (1656, 126, ',2,126,1656,', 3, '圣格奥尔基', 'Sfantu-Gheorghe', 'shenggeaoerji', 'SG');
INSERT INTO `crm_data_region` VALUES (1657, 126, ',2,126,1657,', 3, '斯拉蒂纳', 'Slatina', 'siladina', 'ST');
INSERT INTO `crm_data_region` VALUES (1658, 126, ',2,126,1658,', 3, '斯洛博齐亚', 'Slobozia', 'siluoboqiya', 'SB');
INSERT INTO `crm_data_region` VALUES (1659, 126, ',2,126,1659,', 3, '苏恰瓦', 'Suceava', 'suqiawa', 'SU');
INSERT INTO `crm_data_region` VALUES (1660, 126, ',2,126,1660,', 3, '特尔戈维什泰', 'Targovişte', 'teergeweishitai', 'TA');
INSERT INTO `crm_data_region` VALUES (1661, 126, ',2,126,1661,', 3, '特尔古穆列什', 'Tirgu Mures', 'teergumulieshi', 'TM');
INSERT INTO `crm_data_region` VALUES (1662, 126, ',2,126,1662,', 3, '特尔古日乌', 'Tirgu-Jiu', 'teerguriwu', 'TJ');
INSERT INTO `crm_data_region` VALUES (1663, 126, ',2,126,1663,', 3, '图尔恰', 'Tulcea', 'tuerqia', 'TU');
INSERT INTO `crm_data_region` VALUES (1664, 126, ',2,126,1664,', 3, '瓦斯卢伊', 'Vaslui', 'wasiluyi', 'VA');
INSERT INTO `crm_data_region` VALUES (1665, 126, ',2,126,1665,', 3, '锡比乌', 'Sibiu', 'xibiwu', 'SO');
INSERT INTO `crm_data_region` VALUES (1666, 126, ',2,126,1666,', 3, '雅西', 'Iasi', 'yaxi', 'IS');
INSERT INTO `crm_data_region` VALUES (1667, 126, ',2,126,1667,', 3, '亚厉山德里亚', 'Alexandria', 'yalishandeliya', 'AD');
INSERT INTO `crm_data_region` VALUES (1668, 126, ',2,126,1668,', 3, '扎勒乌', 'Zalau', 'zhalewu', 'ZA');
INSERT INTO `crm_data_region` VALUES (1669, 127, ',3,127,1669,', 3, '安齐拉纳纳', 'Antsiranana', 'anqilanana', 'AS');
INSERT INTO `crm_data_region` VALUES (1670, 127, ',3,127,1670,', 3, '菲亚纳兰楚阿', 'Fianarantsoa', 'feiyanalanchua', 'FN');
INSERT INTO `crm_data_region` VALUES (1671, 127, ',3,127,1671,', 3, '马哈赞加', 'Mahajanga', 'mahazanjia', 'MJ');
INSERT INTO `crm_data_region` VALUES (1672, 127, ',3,127,1672,', 3, '塔那那利佛', 'Antananarivo', 'tananalifo', 'AN');
INSERT INTO `crm_data_region` VALUES (1673, 127, ',3,127,1673,', 3, '图阿马西拉', 'Toamasina', 'tuamaxila', 'TM');
INSERT INTO `crm_data_region` VALUES (1674, 127, ',3,127,1674,', 3, '图利亚拉', 'Toliary', 'tuliyala', 'TL');
INSERT INTO `crm_data_region` VALUES (1675, 128, ',1,128,1675,', 3, '阿杜', 'Addu Atoll', 'adu', 'ADD');
INSERT INTO `crm_data_region` VALUES (1676, 128, ',1,128,1676,', 3, '北阿里', 'North Ari Atoll', 'beiali', 'AAD');
INSERT INTO `crm_data_region` VALUES (1677, 128, ',1,128,1677,', 3, '北蒂拉杜马蒂', 'North Thiladhunmathi', 'beidiladumadi', 'THD');
INSERT INTO `crm_data_region` VALUES (1678, 128, ',1,128,1678,', 3, '北马洛斯马杜卢', 'North Maalhosmadhulu', 'beimaluosimadulu', 'MAD');
INSERT INTO `crm_data_region` VALUES (1679, 128, ',1,128,1679,', 3, '北米拉杜马杜卢', 'North Miladhunmadhulu', 'beimiladumadulu', 'MLD');
INSERT INTO `crm_data_region` VALUES (1680, 128, ',1,128,1680,', 3, '北尼兰杜', 'North Nilandhe Atoll', 'beinilandu', 'NAD');
INSERT INTO `crm_data_region` VALUES (1681, 128, ',1,128,1681,', 3, '北苏瓦迪瓦', 'North Huvadhu Atoll', 'beisuwadiwa', 'HAD');
INSERT INTO `crm_data_region` VALUES (1682, 128, ',1,128,1682,', 3, '法迪福卢', 'Faadhippolhu', 'fadifulu', 'FAA');
INSERT INTO `crm_data_region` VALUES (1683, 128, ',1,128,1683,', 3, '费利杜', 'Felidhu Atoll', 'feilidu', 'FEA');
INSERT INTO `crm_data_region` VALUES (1684, 128, ',1,128,1684,', 3, '福阿穆拉库', 'Foammulah', 'fuamulaku', 'FMU');
INSERT INTO `crm_data_region` VALUES (1685, 128, ',1,128,1685,', 3, '哈杜马蒂', 'Hadhdhunmathi', 'hadumadi', 'HDH');
INSERT INTO `crm_data_region` VALUES (1686, 128, ',1,128,1686,', 3, '科卢马杜卢', 'Kolhumadulu', 'kelumadulu', 'KLH');
INSERT INTO `crm_data_region` VALUES (1687, 128, ',1,128,1687,', 3, '马累', 'Male', 'malei', 'MAL');
INSERT INTO `crm_data_region` VALUES (1688, 128, ',1,128,1688,', 3, '马累岛', 'Male Atoll', 'maleidao', 'MAA');
INSERT INTO `crm_data_region` VALUES (1689, 128, ',1,128,1689,', 3, '穆拉库', 'Mulakatholhu', 'mulaku', 'MUA');
INSERT INTO `crm_data_region` VALUES (1690, 128, ',1,128,1690,', 3, '南阿里', 'South Ari Atoll', 'nanali', 'AAU');
INSERT INTO `crm_data_region` VALUES (1691, 128, ',1,128,1691,', 3, '南蒂拉杜马蒂', 'South Thiladhunmathi', 'nandiladumadi', 'THU');
INSERT INTO `crm_data_region` VALUES (1692, 128, ',1,128,1692,', 3, '南马洛斯马杜卢', 'South Maalhosmadulu', 'nanmaluosimadulu', 'MAU');
INSERT INTO `crm_data_region` VALUES (1693, 128, ',1,128,1693,', 3, '南米拉杜马杜卢', 'South Miladhunmadhulu', 'nanmiladumadulu', 'MLU');
INSERT INTO `crm_data_region` VALUES (1694, 128, ',1,128,1694,', 3, '南尼兰杜', 'South Nilandhe Atoll', 'nannilandu', 'NAU');
INSERT INTO `crm_data_region` VALUES (1695, 128, ',1,128,1695,', 3, '南苏瓦迪瓦', 'South Huvadhu Atoll', 'nansuwadiwa', 'HAU');
INSERT INTO `crm_data_region` VALUES (1696, 130, ',3,130,1696,', 3, '北部区', 'Northern', 'beibuqu', 'N');
INSERT INTO `crm_data_region` VALUES (1697, 130, ',3,130,1697,', 3, '南部区', 'Southern', 'nanbuqu', 'S');
INSERT INTO `crm_data_region` VALUES (1698, 130, ',3,130,1698,', 3, '中央区', 'Central', 'zhongyangqu', 'C');
INSERT INTO `crm_data_region` VALUES (1699, 132, ',3,132,1699,', 3, '巴马科首都区', 'Bamako', 'bamakeshouduqu', 'CD');
INSERT INTO `crm_data_region` VALUES (1700, 132, ',3,132,1700,', 3, '基达尔', 'Kidal', 'jidaer', 'KD');
INSERT INTO `crm_data_region` VALUES (1701, 132, ',3,132,1701,', 3, '加奥', 'Gao', 'jiaao', 'GA');
INSERT INTO `crm_data_region` VALUES (1702, 132, ',3,132,1702,', 3, '卡伊', 'Kayes', 'kayi', 'KY');
INSERT INTO `crm_data_region` VALUES (1703, 132, ',3,132,1703,', 3, '库利科罗', 'Koulikoro', 'kulikeluo', 'KL');
INSERT INTO `crm_data_region` VALUES (1704, 132, ',3,132,1704,', 3, '莫普提', 'Mopti', 'moputi', 'MP');
INSERT INTO `crm_data_region` VALUES (1705, 132, ',3,132,1705,', 3, '塞古', 'Segou', 'saigu', 'SG');
INSERT INTO `crm_data_region` VALUES (1706, 132, ',3,132,1706,', 3, '通布图', 'Tombouctou', 'tongbutu', 'TB');
INSERT INTO `crm_data_region` VALUES (1707, 132, ',3,132,1707,', 3, '锡卡索', 'Sikasso', 'xikasuo', 'SK');
INSERT INTO `crm_data_region` VALUES (1708, 139, ',3,139,1708,', 3, '阿德拉尔', 'Adrar', 'adelaer', 'AD');
INSERT INTO `crm_data_region` VALUES (1709, 139, ',3,139,1709,', 3, '阿萨巴', 'El-Acaba', 'asaba', 'AS');
INSERT INTO `crm_data_region` VALUES (1710, 139, ',3,139,1710,', 3, '卜拉克纳', 'Brakna', 'bolakena', 'BR');
INSERT INTO `crm_data_region` VALUES (1711, 139, ',3,139,1711,', 3, '东胡德', 'Hodh el-Gharbi', 'donghude', 'HG');
INSERT INTO `crm_data_region` VALUES (1712, 139, ',3,139,1712,', 3, '戈尔戈勒', 'Gorgol', 'geergele', 'GO');
INSERT INTO `crm_data_region` VALUES (1713, 139, ',3,139,1713,', 3, '吉迪马卡', 'Guidimaka', 'jidimaka', 'GM');
INSERT INTO `crm_data_region` VALUES (1714, 139, ',3,139,1714,', 3, '努瓦迪布湾', 'Dakhlet Nouadhibou', 'nuwadibuwan', 'DN');
INSERT INTO `crm_data_region` VALUES (1715, 139, ',3,139,1715,', 3, '努瓦克肖特特区', 'Nouakchott', 'nuwakexiaotetequ', 'NO');
INSERT INTO `crm_data_region` VALUES (1716, 139, ',3,139,1716,', 3, '塔甘特', 'Tagant', 'tagante', 'TA');
INSERT INTO `crm_data_region` VALUES (1717, 139, ',3,139,1717,', 3, '特拉扎', 'Trarza', 'telazha', 'TR');
INSERT INTO `crm_data_region` VALUES (1718, 139, ',3,139,1718,', 3, '提里斯-宰穆尔', 'Tiris Zemmour', 'tilisizaimuer', 'TZ');
INSERT INTO `crm_data_region` VALUES (1719, 139, ',3,139,1719,', 3, '西胡德', 'Hodh ech-Chargui', 'xihude', 'HC');
INSERT INTO `crm_data_region` VALUES (1720, 139, ',3,139,1720,', 3, '因希里', 'Inchiri', 'yinxili', 'IN');
INSERT INTO `crm_data_region` VALUES (1721, 141, ',6,141,1721,', 3, '阿纳', 'Aana', 'ana', 'AAN');
INSERT INTO `crm_data_region` VALUES (1722, 141, ',6,141,1722,', 3, '阿图阿', 'Atua', 'atua', 'ATU');
INSERT INTO `crm_data_region` VALUES (1723, 141, ',6,141,1723,', 3, '艾加伊勒泰', 'Aigaile Tai', 'aijiayiletai', 'AIT');
INSERT INTO `crm_data_region` VALUES (1724, 141, ',6,141,1724,', 3, '法塞莱莱阿加', 'Faasaleleaga', 'fasailailaiajia', 'FAA');
INSERT INTO `crm_data_region` VALUES (1725, 141, ',6,141,1725,', 3, '加盖福毛加', 'Gagaifomauga', 'jiagaifumaojia', 'GFG');
INSERT INTO `crm_data_region` VALUES (1726, 141, ',6,141,1726,', 3, '加加埃毛加', 'Gagaemauga', 'jiajiaaimaojia', 'GMG');
INSERT INTO `crm_data_region` VALUES (1727, 141, ',6,141,1727,', 3, '帕劳利', 'Palauli', 'palaoli', 'PAL');
INSERT INTO `crm_data_region` VALUES (1728, 141, ',6,141,1728,', 3, '萨图帕伊泰阿', 'Satupaitea', 'satupayitaia', 'SAT');
INSERT INTO `crm_data_region` VALUES (1729, 141, ',6,141,1729,', 3, '萨瓦伊岛', 'Savaii', 'sawayidao', 'SAV');
INSERT INTO `crm_data_region` VALUES (1730, 141, ',6,141,1730,', 3, '图阿马萨加', 'Tuamasaga', 'tuamasajia', 'TUA');
INSERT INTO `crm_data_region` VALUES (1731, 141, ',6,141,1731,', 3, '瓦奥福诺蒂', 'Vaao Fonoti', 'waaofunuodi', 'VAF');
INSERT INTO `crm_data_region` VALUES (1732, 141, ',6,141,1732,', 3, '韦西加诺', 'Vaisigano', 'weixijianuo', 'VAI');
INSERT INTO `crm_data_region` VALUES (1733, 141, ',6,141,1733,', 3, '乌波卢岛', 'Upolu', 'wuboludao', 'UPO');
INSERT INTO `crm_data_region` VALUES (1734, 143, ',1,143,1734,', 3, '巴彦洪格尔', 'Bayanhongor', 'bayanhonggeer', '69');
INSERT INTO `crm_data_region` VALUES (1735, 143, ',1,143,1735,', 3, '巴彦乌勒盖', 'Bayan-Ulgiy', 'bayanwulegai', '71');
INSERT INTO `crm_data_region` VALUES (1736, 143, ',1,143,1736,', 3, '布尔干', 'Bulgan', 'buergan', '67');
INSERT INTO `crm_data_region` VALUES (1737, 143, ',1,143,1737,', 3, '达尔汗乌勒', 'Darhan-Uul', 'daerhanwule', '37');
INSERT INTO `crm_data_region` VALUES (1738, 143, ',1,143,1738,', 3, '东方', 'Dornod', 'dongfang', '61');
INSERT INTO `crm_data_region` VALUES (1739, 143, ',1,143,1739,', 3, '东戈壁', 'Dornogovi', 'donggebi', '63');
INSERT INTO `crm_data_region` VALUES (1740, 143, ',1,143,1740,', 3, '鄂尔浑', 'Orhon', 'eerhun', '35');
INSERT INTO `crm_data_region` VALUES (1741, 143, ',1,143,1741,', 3, '戈壁阿尔泰', 'Govi-Altay', 'gebiaertai', '65');
INSERT INTO `crm_data_region` VALUES (1742, 143, ',1,143,1742,', 3, '戈壁苏木贝尔', 'Govisumber', 'gebisumubeier', '64');
INSERT INTO `crm_data_region` VALUES (1743, 143, ',1,143,1743,', 3, '后杭爱', 'Arhangay', 'houhangai', '73');
INSERT INTO `crm_data_region` VALUES (1744, 143, ',1,143,1744,', 3, '科布多', 'Hovd', 'kebuduo', '43');
INSERT INTO `crm_data_region` VALUES (1745, 143, ',1,143,1745,', 3, '肯特', 'Hentiy', 'kente', '39');
INSERT INTO `crm_data_region` VALUES (1746, 143, ',1,143,1746,', 3, '库苏古尔', 'Hovsgol', 'kusuguer', '41');
INSERT INTO `crm_data_region` VALUES (1747, 143, ',1,143,1747,', 3, '南戈壁', 'Umnogovi', 'nangebi', 'UMN');
INSERT INTO `crm_data_region` VALUES (1748, 143, ',1,143,1748,', 3, '前杭爱', 'Uvorhangay', 'qianhangai', 'UVO');
INSERT INTO `crm_data_region` VALUES (1749, 143, ',1,143,1749,', 3, '色楞格', 'Selenge', 'selengge', '49');
INSERT INTO `crm_data_region` VALUES (1750, 143, ',1,143,1750,', 3, '苏赫巴托尔', 'Suhbaatar', 'suhebatuoer', '51');
INSERT INTO `crm_data_region` VALUES (1751, 143, ',1,143,1751,', 3, '乌布苏', 'Uvs', 'wubusu', '46');
INSERT INTO `crm_data_region` VALUES (1752, 143, ',1,143,1752,', 3, '乌兰巴托市', 'Ulaanbaatar hot', 'wulanbatuoshi', '1');
INSERT INTO `crm_data_region` VALUES (1753, 143, ',1,143,1753,', 3, '扎布汗', 'Dzavhan', 'zhabuhan', '57');
INSERT INTO `crm_data_region` VALUES (1754, 143, ',1,143,1754,', 3, '中戈壁', 'Dundgovi', 'zhonggebi', '59');
INSERT INTO `crm_data_region` VALUES (1755, 143, ',1,143,1755,', 3, '中央', 'Tov', 'zhongyang', '47');
INSERT INTO `crm_data_region` VALUES (1756, 145, ',1,145,1756,', 3, '达卡', 'Dhaka', 'daka', 'DAC');
INSERT INTO `crm_data_region` VALUES (1757, 145, ',1,145,1757,', 3, '吉大港', 'Chittagong', 'jidagang', 'CGP');
INSERT INTO `crm_data_region` VALUES (1758, 145, ',1,145,1758,', 3, '库尔纳', 'Khulna', 'kuerna', 'KHL');
INSERT INTO `crm_data_region` VALUES (1759, 147, ',5,147,1759,', 3, '阿雷基帕', 'Arequipa', 'aleijipa', 'AR');
INSERT INTO `crm_data_region` VALUES (1760, 147, ',5,147,1760,', 3, '阿普里马克', 'Apurimac', 'apulimake', 'AP');
INSERT INTO `crm_data_region` VALUES (1761, 147, ',5,147,1761,', 3, '阿亚库乔', 'Ayacucho', 'ayakuqiao', 'AY');
INSERT INTO `crm_data_region` VALUES (1762, 147, ',5,147,1762,', 3, '安卡什', 'Ancash', 'ankashi', 'AN');
INSERT INTO `crm_data_region` VALUES (1763, 147, ',5,147,1763,', 3, '胡利亚卡', 'Juliaca', 'huliyaka', 'JUL');
INSERT INTO `crm_data_region` VALUES (1764, 147, ',5,147,1764,', 3, '胡宁', 'Junin', 'huning', 'JU');
INSERT INTO `crm_data_region` VALUES (1765, 147, ',5,147,1765,', 3, '卡哈马卡', 'Cajamarca', 'kahamaka', 'CJ');
INSERT INTO `crm_data_region` VALUES (1766, 147, ',5,147,1766,', 3, '卡亚俄', 'Callao', 'kayae', 'CL');
INSERT INTO `crm_data_region` VALUES (1767, 147, ',5,147,1767,', 3, '库斯科', 'Cusco', 'kusike', 'CU');
INSERT INTO `crm_data_region` VALUES (1768, 147, ',5,147,1768,', 3, '拉利伯塔德', 'La Libertad', 'lalibotade', 'LD');
INSERT INTO `crm_data_region` VALUES (1769, 147, ',5,147,1769,', 3, '兰巴耶克', 'Lambayeque', 'lanbayeke', 'LY');
INSERT INTO `crm_data_region` VALUES (1770, 147, ',5,147,1770,', 3, '利马', 'Lima', 'lima', 'LI');
INSERT INTO `crm_data_region` VALUES (1771, 147, ',5,147,1771,', 3, '洛雷托', 'Loreto', 'luoleituo', 'LO');
INSERT INTO `crm_data_region` VALUES (1772, 147, ',5,147,1772,', 3, '马德雷德迪奥斯', 'Madre de Dios', 'madeleidediaosi', 'MD');
INSERT INTO `crm_data_region` VALUES (1773, 147, ',5,147,1773,', 3, '莫克瓜', 'Moquegua', 'mokegua', 'MO');
INSERT INTO `crm_data_region` VALUES (1774, 147, ',5,147,1774,', 3, '帕斯科', 'Pasco', 'pasike', 'PA');
INSERT INTO `crm_data_region` VALUES (1775, 147, ',5,147,1775,', 3, '皮乌拉', 'Piura', 'piwula', 'PI');
INSERT INTO `crm_data_region` VALUES (1776, 147, ',5,147,1776,', 3, '普诺', 'Puno', 'punuo', 'PU');
INSERT INTO `crm_data_region` VALUES (1777, 147, ',5,147,1777,', 3, '钦博特', 'Chimbote', 'qinbote', 'CHM');
INSERT INTO `crm_data_region` VALUES (1778, 147, ',5,147,1778,', 3, '钦查阿尔塔', 'Chincha Alta', 'qinchaaerta', 'CHI');
INSERT INTO `crm_data_region` VALUES (1779, 147, ',5,147,1779,', 3, '圣马丁', 'San Martin', 'shengmading', 'SM');
INSERT INTO `crm_data_region` VALUES (1780, 147, ',5,147,1780,', 3, '苏拉纳', 'Sullana', 'sulana', 'SUL');
INSERT INTO `crm_data_region` VALUES (1781, 147, ',5,147,1781,', 3, '塔克纳', 'Tacna', 'takena', 'TA');
INSERT INTO `crm_data_region` VALUES (1782, 147, ',5,147,1782,', 3, '通贝斯', 'Tumbes', 'tongbeisi', 'TU');
INSERT INTO `crm_data_region` VALUES (1783, 147, ',5,147,1783,', 3, '瓦努科', 'Huanuco', 'wanuke', 'HO');
INSERT INTO `crm_data_region` VALUES (1784, 147, ',5,147,1784,', 3, '万卡维利卡', 'Huancavelica', 'wankaweilika', 'HV');
INSERT INTO `crm_data_region` VALUES (1785, 147, ',5,147,1785,', 3, '乌卡亚利', 'Ucayali', 'wukayali', 'UC');
INSERT INTO `crm_data_region` VALUES (1786, 147, ',5,147,1786,', 3, '亚马孙', 'Amazonas', 'yamasun', 'AM');
INSERT INTO `crm_data_region` VALUES (1787, 147, ',5,147,1787,', 3, '伊卡', 'Ica', 'yika', 'IC');
INSERT INTO `crm_data_region` VALUES (1788, 148, ',1,148,1788,', 3, '勃固省', 'Bago', 'bogusheng', 'BG');
INSERT INTO `crm_data_region` VALUES (1789, 148, ',1,148,1789,', 3, '掸邦', 'Shan', 'danbang', 'SH');
INSERT INTO `crm_data_region` VALUES (1790, 148, ',1,148,1790,', 3, '德林达依省', 'Tanintharyi', 'delindayisheng', 'TN');
INSERT INTO `crm_data_region` VALUES (1791, 148, ',1,148,1791,', 3, '克伦邦', 'Kayin', 'kelunbang', 'KN');
INSERT INTO `crm_data_region` VALUES (1792, 148, ',1,148,1792,', 3, '克钦邦', 'Kachin', 'keqinbang', 'KC');
INSERT INTO `crm_data_region` VALUES (1793, 148, ',1,148,1793,', 3, '克耶邦', 'Kayah', 'keyebang', 'KH');
INSERT INTO `crm_data_region` VALUES (1794, 148, ',1,148,1794,', 3, '马圭省', 'Magway', 'maguisheng', 'MG');
INSERT INTO `crm_data_region` VALUES (1795, 148, ',1,148,1795,', 3, '曼德勒省', 'Mandalay', 'mandelesheng', 'MD');
INSERT INTO `crm_data_region` VALUES (1796, 148, ',1,148,1796,', 3, '孟邦', 'Mon', 'mengbang', 'MN');
INSERT INTO `crm_data_region` VALUES (1797, 148, ',1,148,1797,', 3, '钦邦', 'Chin', 'qinbang', 'CH');
INSERT INTO `crm_data_region` VALUES (1798, 148, ',1,148,1798,', 3, '若开邦', 'Rakhine', 'ruokaibang', 'RK');
INSERT INTO `crm_data_region` VALUES (1799, 148, ',1,148,1799,', 3, '实皆省', 'Sagaing', 'shijiesheng', 'SG');
INSERT INTO `crm_data_region` VALUES (1800, 148, ',1,148,1800,', 3, '仰光省', 'Yangon', 'yangguangsheng', 'YG');
INSERT INTO `crm_data_region` VALUES (1801, 148, ',1,148,1801,', 3, '伊洛瓦底省', 'Ayeyarwady', 'yiluowadisheng', 'AY');
INSERT INTO `crm_data_region` VALUES (1802, 150, ',3,150,1802,', 3, '丹吉尔', 'Tangier', 'danjier', 'TGR');
INSERT INTO `crm_data_region` VALUES (1803, 150, ',3,150,1803,', 3, '得土安', 'Tetouan', 'detuan', 'TET');
INSERT INTO `crm_data_region` VALUES (1804, 150, ',3,150,1804,', 3, '非斯', 'Fes', 'feisi', 'FES');
INSERT INTO `crm_data_region` VALUES (1805, 150, ',3,150,1805,', 3, '卡萨布兰卡', 'Casablanca', 'kasabulanka', 'CBL');
INSERT INTO `crm_data_region` VALUES (1806, 150, ',3,150,1806,', 3, '拉巴特', 'Rabat', 'labate', 'RSA');
INSERT INTO `crm_data_region` VALUES (1807, 150, ',3,150,1807,', 3, '马拉喀什', 'Marrakech', 'malakashi', 'MRK');
INSERT INTO `crm_data_region` VALUES (1808, 150, ',3,150,1808,', 3, '梅克内斯', 'Meknes', 'meikeneisi', 'MKN');
INSERT INTO `crm_data_region` VALUES (1809, 150, ',3,150,1809,', 3, '乌季达', 'Oujda', 'wujida', 'OUJ');
INSERT INTO `crm_data_region` VALUES (1810, 150, ',3,150,1810,', 3, '西撒哈拉', 'Western Sahara', 'xisahala', 'WSH');
INSERT INTO `crm_data_region` VALUES (1811, 153, ',4,153,1811,', 3, '阿瓜斯卡连斯特', 'Aguascalientes', 'aguasikaliansite', 'AGU');
INSERT INTO `crm_data_region` VALUES (1812, 153, ',4,153,1812,', 3, '阿卡普尔科', 'Acapulco', 'akapuerke', 'ACA');
INSERT INTO `crm_data_region` VALUES (1813, 153, ',4,153,1813,', 3, '埃莫西约', 'Hermosillo', 'aimoxiyue', 'HMO');
INSERT INTO `crm_data_region` VALUES (1814, 153, ',4,153,1814,', 3, '埃佩切', 'Campeche', 'aipeiqie', 'CAM');
INSERT INTO `crm_data_region` VALUES (1815, 153, ',4,153,1815,', 3, '奥夫雷贡城', 'Obregon', 'aofuleigongcheng', 'OBR');
INSERT INTO `crm_data_region` VALUES (1816, 153, ',4,153,1816,', 3, '奥里萨巴', 'Orizaba', 'aolisaba', 'ORI');
INSERT INTO `crm_data_region` VALUES (1817, 153, ',4,153,1817,', 3, '巴利城', 'Valles', 'balicheng', 'VHM');
INSERT INTO `crm_data_region` VALUES (1818, 153, ',4,153,1818,', 3, '巴亚尔塔港', 'Puerto Vallarta', 'bayaertagang', 'PVR');
INSERT INTO `crm_data_region` VALUES (1819, 153, ',4,153,1819,', 3, '比利亚埃尔莫萨', 'Villahermosa', 'biliyaaiermosa', 'VSA');
INSERT INTO `crm_data_region` VALUES (1820, 153, ',4,153,1820,', 3, '波萨里卡', 'Poza Rica de Hidalgo', 'bosalika', 'PRH');
INSERT INTO `crm_data_region` VALUES (1821, 153, ',4,153,1821,', 3, '蒂华纳', 'Tijuana', 'dihuana', 'TIJ');
INSERT INTO `crm_data_region` VALUES (1822, 153, ',4,153,1822,', 3, '杜兰戈', 'Durango', 'dulange', 'DUR');
INSERT INTO `crm_data_region` VALUES (1823, 153, ',4,153,1823,', 3, '恩塞纳达', 'Ensenada', 'ensainada', 'ESE');
INSERT INTO `crm_data_region` VALUES (1824, 153, ',4,153,1824,', 3, '瓜达拉哈拉', 'Guadalajara', 'guadalahala', 'GDL');
INSERT INTO `crm_data_region` VALUES (1825, 153, ',4,153,1825,', 3, '瓜纳华托', 'Guanajuato', 'guanahuatuo', 'GUA');
INSERT INTO `crm_data_region` VALUES (1826, 153, ',4,153,1826,', 3, '哈拉帕', 'Jalapa', 'halapa', 'JAL');
INSERT INTO `crm_data_region` VALUES (1827, 153, ',4,153,1827,', 3, '华雷斯', 'Juarez', 'hualeisi', 'JUZ');
INSERT INTO `crm_data_region` VALUES (1828, 153, ',4,153,1828,', 3, '华雷斯港', 'Benito Juare', 'hualeisigang', 'BJU');
INSERT INTO `crm_data_region` VALUES (1829, 153, ',4,153,1829,', 3, '卡门', 'Carmen', 'kamen', 'CAR');
INSERT INTO `crm_data_region` VALUES (1830, 153, ',4,153,1830,', 3, '科利马', 'Colima', 'kelima', 'COL');
INSERT INTO `crm_data_region` VALUES (1831, 153, ',4,153,1831,', 3, '克雷塔罗', 'Queretaro', 'keleitaluo', 'QUE');
INSERT INTO `crm_data_region` VALUES (1832, 153, ',4,153,1832,', 3, '库埃纳瓦卡', 'Cuernavaca', 'kuainawaka', 'CVC');
INSERT INTO `crm_data_region` VALUES (1833, 153, ',4,153,1833,', 3, '库利阿坎', 'Culiacan', 'kuliakan', 'CUL');
INSERT INTO `crm_data_region` VALUES (1834, 153, ',4,153,1834,', 3, '夸察夸拉克斯', 'Coatzacoalcos', 'kuachakualakesi', 'COA');
INSERT INTO `crm_data_region` VALUES (1835, 153, ',4,153,1835,', 3, '拉巴斯', 'La Paz', 'labasi', 'LAP');
INSERT INTO `crm_data_region` VALUES (1836, 153, ',4,153,1836,', 3, '莱昂', 'Leon', 'laiang', 'LEN');
INSERT INTO `crm_data_region` VALUES (1837, 153, ',4,153,1837,', 3, '雷诺萨', 'Reynosa', 'leinuosa', 'REX');
INSERT INTO `crm_data_region` VALUES (1838, 153, ',4,153,1838,', 3, '洛斯莫奇斯', 'Los Mochis', 'luosimoqisi', 'LMM');
INSERT INTO `crm_data_region` VALUES (1839, 153, ',4,153,1839,', 3, '马萨特兰', 'Mazatlan', 'masatelan', 'MZT');
INSERT INTO `crm_data_region` VALUES (1840, 153, ',4,153,1840,', 3, '马塔莫罗斯', 'Matamoros', 'matamoluosi', 'MAM');
INSERT INTO `crm_data_region` VALUES (1841, 153, ',4,153,1841,', 3, '梅里达', 'Merida', 'meilida', 'MID');
INSERT INTO `crm_data_region` VALUES (1842, 153, ',4,153,1842,', 3, '蒙克洛瓦', 'Monclova', 'mengkeluowa', 'LOV');
INSERT INTO `crm_data_region` VALUES (1843, 153, ',4,153,1843,', 3, '蒙特雷', 'Monterrey', 'mengtelei', 'MTY');
INSERT INTO `crm_data_region` VALUES (1844, 153, ',4,153,1844,', 3, '莫雷利亚', 'Morelia', 'moleiliya', 'MLM');
INSERT INTO `crm_data_region` VALUES (1845, 153, ',4,153,1845,', 3, '墨西哥城', 'Mexico City', 'moxigecheng', 'MEX');
INSERT INTO `crm_data_region` VALUES (1846, 153, ',4,153,1846,', 3, '墨西卡利', 'Mexicali', 'moxikali', 'MXL');
INSERT INTO `crm_data_region` VALUES (1847, 153, ',4,153,1847,', 3, '诺加莱斯', 'Nogales', 'nuojialaisi', 'NOG');
INSERT INTO `crm_data_region` VALUES (1848, 153, ',4,153,1848,', 3, '帕丘卡', 'Pachuca', 'paqiuka', 'PAC');
INSERT INTO `crm_data_region` VALUES (1849, 153, ',4,153,1849,', 3, '普埃布拉', 'Puebla', 'puaibula', 'PUE');
INSERT INTO `crm_data_region` VALUES (1850, 153, ',4,153,1850,', 3, '奇尔潘辛戈', 'Chilpancingo', 'qierpanxinge', 'CHI');
INSERT INTO `crm_data_region` VALUES (1851, 153, ',4,153,1851,', 3, '奇瓦瓦', 'Chihuahua', 'qiwawa', 'CHH');
INSERT INTO `crm_data_region` VALUES (1852, 153, ',4,153,1852,', 3, '切图马尔', 'Cheturnal', 'qietumaer', 'CTM');
INSERT INTO `crm_data_region` VALUES (1853, 153, ',4,153,1853,', 3, '萨尔蒂约', 'Saltillo', 'saerdiyue', 'SLW');
INSERT INTO `crm_data_region` VALUES (1854, 153, ',4,153,1854,', 3, '萨卡特卡斯', 'Zacatecas', 'sakatekasi', 'ZAC');
INSERT INTO `crm_data_region` VALUES (1855, 153, ',4,153,1855,', 3, '塞拉亚', 'Celaya', 'sailaya', 'CLY');
INSERT INTO `crm_data_region` VALUES (1856, 153, ',4,153,1856,', 3, '圣路易斯波托亚', 'San Luis Potosi', 'shengluyisibotuoya', 'SLP');
INSERT INTO `crm_data_region` VALUES (1857, 153, ',4,153,1857,', 3, '塔帕丘拉', 'Tapachula', 'tapaqiula', 'TAP');
INSERT INTO `crm_data_region` VALUES (1858, 153, ',4,153,1858,', 3, '坦皮科', 'Tampico', 'tanpike', 'TAM');
INSERT INTO `crm_data_region` VALUES (1859, 153, ',4,153,1859,', 3, '特拉斯卡拉', 'Tlaxcala', 'telasikala', 'TLA');
INSERT INTO `crm_data_region` VALUES (1860, 153, ',4,153,1860,', 3, '特皮克', 'Tepic', 'tepike', 'TPQ');
INSERT INTO `crm_data_region` VALUES (1861, 153, ',4,153,1861,', 3, '特瓦坎', 'Tehuacan', 'tewakan', 'TCN');
INSERT INTO `crm_data_region` VALUES (1862, 153, ',4,153,1862,', 3, '图斯特拉-古铁雷斯', 'Tuxtla Gutierrez', 'tusitelagutieleisi', 'TGZ');
INSERT INTO `crm_data_region` VALUES (1863, 153, ',4,153,1863,', 3, '托雷翁', 'Torreon', 'tuoleiweng', 'TRC');
INSERT INTO `crm_data_region` VALUES (1864, 153, ',4,153,1864,', 3, '托卢卡', 'Toluca', 'tuoluka', 'TLC');
INSERT INTO `crm_data_region` VALUES (1865, 153, ',4,153,1865,', 3, '瓦哈卡', 'Oaxaca', 'wahaka', 'OAX');
INSERT INTO `crm_data_region` VALUES (1866, 153, ',4,153,1866,', 3, '维多利亚城', 'Victoria', 'weiduoliyacheng', 'VIC');
INSERT INTO `crm_data_region` VALUES (1867, 153, ',4,153,1867,', 3, '韦拉克鲁斯', 'Veracruz', 'weilakelusi', 'VER');
INSERT INTO `crm_data_region` VALUES (1868, 153, ',4,153,1868,', 3, '乌鲁阿潘', 'Uruapan', 'wuluapan', 'UPN');
INSERT INTO `crm_data_region` VALUES (1869, 153, ',4,153,1869,', 3, '新拉雷多', 'Nuevo Laredo', 'xinlaleiduo', 'NLE');
INSERT INTO `crm_data_region` VALUES (1870, 153, ',4,153,1870,', 3, '伊拉普阿托', 'Irapuato', 'yilapuatuo', 'IRP');
INSERT INTO `crm_data_region` VALUES (1871, 154, ',3,154,1871,', 3, '埃龙戈', 'Erongo', 'ailongge', 'ER');
INSERT INTO `crm_data_region` VALUES (1872, 154, ',3,154,1872,', 3, '奥汉圭纳', 'Ohangwena', 'aohanguina', 'OW');
INSERT INTO `crm_data_region` VALUES (1873, 154, ',3,154,1873,', 3, '奥卡万戈', 'Okavango', 'aokawange', 'KV');
INSERT INTO `crm_data_region` VALUES (1874, 154, ',3,154,1874,', 3, '奥马赫科', 'Omaheke', 'aomaheke', 'OK');
INSERT INTO `crm_data_region` VALUES (1875, 154, ',3,154,1875,', 3, '奥姆沙蒂', 'Omusati', 'aomushadi', 'OT');
INSERT INTO `crm_data_region` VALUES (1876, 154, ',3,154,1876,', 3, '奥乔宗蒂约巴', 'Otjozondjupa', 'aoqiaozongdiyueba', 'OJ');
INSERT INTO `crm_data_region` VALUES (1877, 154, ',3,154,1877,', 3, '奥沙纳', 'Oshana', 'aoshana', 'ON');
INSERT INTO `crm_data_region` VALUES (1878, 154, ',3,154,1878,', 3, '奥希科托', 'Oshikoto', 'aoxiketuo', 'OO');
INSERT INTO `crm_data_region` VALUES (1879, 154, ',3,154,1879,', 3, '哈达普', 'Hardap', 'hadapu', 'HA');
INSERT INTO `crm_data_region` VALUES (1880, 154, ',3,154,1880,', 3, '霍马斯', 'Khomas', 'huomasi', 'KH');
INSERT INTO `crm_data_region` VALUES (1881, 154, ',3,154,1881,', 3, '卡拉斯', 'Karas', 'kalasi', 'KR');
INSERT INTO `crm_data_region` VALUES (1882, 154, ',3,154,1882,', 3, '卡普里维', 'Caprivi', 'kapuliwei', 'CA');
INSERT INTO `crm_data_region` VALUES (1883, 154, ',3,154,1883,', 3, '库内内', 'Kunene', 'kuneinei', 'KU');
INSERT INTO `crm_data_region` VALUES (1884, 155, ',3,155,1884,', 3, '阿平顿', 'Upington', 'apingdun', 'UTN');
INSERT INTO `crm_data_region` VALUES (1885, 155, ',3,155,1885,', 3, '艾利弗山', 'Mount Ayliff', 'ailifushan', 'MAY');
INSERT INTO `crm_data_region` VALUES (1886, 155, ',3,155,1886,', 3, '彼德马里茨堡', 'Pietermaritzburg', 'bidemalicibao', 'PZB');
INSERT INTO `crm_data_region` VALUES (1887, 155, ',3,155,1887,', 3, '彼德斯堡', 'Pietersburg', 'bidesibao', 'PTG');
INSERT INTO `crm_data_region` VALUES (1888, 155, ',3,155,1888,', 3, '比勒陀利亚', 'Pretoria', 'biletuoliya', 'PRY');
INSERT INTO `crm_data_region` VALUES (1889, 155, ',3,155,1889,', 3, '比索', 'Bisho', 'bisuo', 'BIY');
INSERT INTO `crm_data_region` VALUES (1890, 155, ',3,155,1890,', 3, '布雷达斯多普', 'Bredasdorp', 'buleidasiduopu', 'BDD');
INSERT INTO `crm_data_region` VALUES (1891, 155, ',3,155,1891,', 3, '布隆方丹', 'Bloemfontein', 'bulongfangdan', 'BFN');
INSERT INTO `crm_data_region` VALUES (1892, 155, ',3,155,1892,', 3, '布隆克斯特斯普利特', 'Bronkhorstspruit', 'bulongkesitesipulite', 'BHT');
INSERT INTO `crm_data_region` VALUES (1893, 155, ',3,155,1893,', 3, '德阿尔', 'De Aar', 'deaer', 'DAA');
INSERT INTO `crm_data_region` VALUES (1894, 155, ',3,155,1894,', 3, '德班', 'Durban', 'deban', 'DUR');
INSERT INTO `crm_data_region` VALUES (1895, 155, ',3,155,1895,', 3, '邓迪', 'Dundee', 'dengdi', 'DUN');
INSERT INTO `crm_data_region` VALUES (1896, 155, ',3,155,1896,', 3, '东巴克利', 'Barkley East', 'dongbakeli', 'BAE');
INSERT INTO `crm_data_region` VALUES (1897, 155, ',3,155,1897,', 3, '东伦敦', 'East London', 'donglundun', 'ELS');
INSERT INTO `crm_data_region` VALUES (1898, 155, ',3,155,1898,', 3, '弗雷堡', 'Vryburg', 'fuleibao', 'VRU');
INSERT INTO `crm_data_region` VALUES (1899, 155, ',3,155,1899,', 3, '弗里尼欣', 'Vereeniging', 'fulinixin', 'VGG');
INSERT INTO `crm_data_region` VALUES (1900, 155, ',3,155,1900,', 3, '格罗布莱斯达尔', 'Groblersdal', 'geluobulaisidaer', 'GBD');
INSERT INTO `crm_data_region` VALUES (1901, 155, ',3,155,1901,', 3, '基雅尼', 'Giyani', 'jiyani', 'GIY');
INSERT INTO `crm_data_region` VALUES (1902, 155, ',3,155,1902,', 3, '金伯利', 'Kimberley', 'jinboli', 'KIM');
INSERT INTO `crm_data_region` VALUES (1903, 155, ',3,155,1903,', 3, '开普敦', 'Cape Town', 'kaipudun', 'CPT');
INSERT INTO `crm_data_region` VALUES (1904, 155, ',3,155,1904,', 3, '克莱克斯多普', 'Klerksdorp', 'kelaikesiduopu', 'KXE');
INSERT INTO `crm_data_region` VALUES (1905, 155, ',3,155,1905,', 3, '库鲁曼', 'Kuruman', 'kuluman', 'KMH');
INSERT INTO `crm_data_region` VALUES (1906, 155, ',3,155,1906,', 3, '昆士敦', 'Queenstown', 'kunshidun', 'UTW');
INSERT INTO `crm_data_region` VALUES (1907, 155, ',3,155,1907,', 3, '莱迪史密斯', 'Ladysmith', 'laidishimisi', 'LAY');
INSERT INTO `crm_data_region` VALUES (1908, 155, ',3,155,1908,', 3, '兰德方丹', 'Randfontein', 'landefangdan', 'RFT');
INSERT INTO `crm_data_region` VALUES (1909, 155, ',3,155,1909,', 3, '理查兹湾', 'Richards Bay', 'lichaziwan', 'RCB');
INSERT INTO `crm_data_region` VALUES (1910, 155, ',3,155,1910,', 3, '利斯滕堡', 'Rustenburg', 'lisibao', 'RSB');
INSERT INTO `crm_data_region` VALUES (1911, 155, ',3,155,1911,', 3, '米德尔堡', 'Middelburg', 'mideerbao', 'MDB');
INSERT INTO `crm_data_region` VALUES (1912, 155, ',3,155,1912,', 3, '姆库泽', 'Mkuze', 'mukuze', 'MZQ');
INSERT INTO `crm_data_region` VALUES (1913, 155, ',3,155,1913,', 3, '穆里斯堡', 'Moorreesburg', 'mulisibao', 'MOO');
INSERT INTO `crm_data_region` VALUES (1914, 155, ',3,155,1914,', 3, '内尔斯普雷特', 'Nelspruit', 'neiersipuleite', 'NLP');
INSERT INTO `crm_data_region` VALUES (1915, 155, ',3,155,1915,', 3, '尼尔斯特隆', 'Nylstroom', 'niersitelong', 'NYL');
INSERT INTO `crm_data_region` VALUES (1916, 155, ',3,155,1916,', 3, '纽卡斯尔', 'Newcastle', 'niukasier', 'NCS');
INSERT INTO `crm_data_region` VALUES (1917, 155, ',3,155,1917,', 3, '乔治', 'George', 'qiaozhi', 'GRJ');
INSERT INTO `crm_data_region` VALUES (1918, 155, ',3,155,1918,', 3, '萨索尔堡', 'Sasolburg', 'sasuoerbao', 'SAS');
INSERT INTO `crm_data_region` VALUES (1919, 155, ',3,155,1919,', 3, '瑟孔达', 'Secunda', 'sekongda', 'ZEC');
INSERT INTO `crm_data_region` VALUES (1920, 155, ',3,155,1920,', 3, '特克索波', 'Ixopo', 'tekesuobo', 'IXO');
INSERT INTO `crm_data_region` VALUES (1921, 155, ',3,155,1921,', 3, '特隆普斯堡', 'Trompsburg', 'telongpusibao', 'TPB');
INSERT INTO `crm_data_region` VALUES (1922, 155, ',3,155,1922,', 3, '跳羚', 'Springbok', 'tiaoling', 'SBU');
INSERT INTO `crm_data_region` VALUES (1923, 155, ',3,155,1923,', 3, '图拉马哈谢', 'Thulamahashe', 'tulamahaxie', 'TLH');
INSERT INTO `crm_data_region` VALUES (1924, 155, ',3,155,1924,', 3, '托霍延杜', 'Thohoyandou', 'tuohuoyandu', 'THY');
INSERT INTO `crm_data_region` VALUES (1925, 155, ',3,155,1925,', 3, '韦茨肖克', 'Witsieshoek', 'weicixiaoke', 'WSH');
INSERT INTO `crm_data_region` VALUES (1926, 155, ',3,155,1926,', 3, '韦尔科姆', 'Welkom', 'weierkemu', 'WEL');
INSERT INTO `crm_data_region` VALUES (1927, 155, ',3,155,1927,', 3, '乌伦迪', 'Ulundi', 'wulundi', 'ULD');
INSERT INTO `crm_data_region` VALUES (1928, 155, ',3,155,1928,', 3, '乌姆塔塔', 'Umtata', 'wumutata', 'UTT');
INSERT INTO `crm_data_region` VALUES (1929, 155, ',3,155,1929,', 3, '伍斯特', 'Worcester', 'wusite', 'WOR');
INSERT INTO `crm_data_region` VALUES (1930, 155, ',3,155,1930,', 3, '西博福特', 'Beaufort West', 'xibofute', 'BEW');
INSERT INTO `crm_data_region` VALUES (1931, 155, ',3,155,1931,', 3, '谢普斯通港', 'Port Shepstone', 'xiepusitonggang', 'PSS');
INSERT INTO `crm_data_region` VALUES (1932, 155, ',3,155,1932,', 3, '伊丽莎白港', 'Port Elizabeth', 'yilishabaigang', 'PLZ');
INSERT INTO `crm_data_region` VALUES (1933, 155, ',3,155,1933,', 3, '约翰内斯堡', 'Johannesburg', 'yuehanneisibao', 'JNB');
INSERT INTO `crm_data_region` VALUES (1934, 159, ',1,159,1934,', 3, '巴格马蒂', 'Bagmati', 'bagemadi', 'BA');
INSERT INTO `crm_data_region` VALUES (1935, 159, ',1,159,1935,', 3, '道拉吉里', 'Dhawalagiri', 'daolajili', 'DH');
INSERT INTO `crm_data_region` VALUES (1936, 159, ',1,159,1936,', 3, '甘达基', 'Gandaki', 'gandaji', 'GA');
INSERT INTO `crm_data_region` VALUES (1937, 159, ',1,159,1937,', 3, '戈西', 'Kosi', 'gexi', 'KO');
INSERT INTO `crm_data_region` VALUES (1938, 159, ',1,159,1938,', 3, '格尔纳利', 'Karnali', 'geernali', 'KA');
INSERT INTO `crm_data_region` VALUES (1939, 159, ',1,159,1939,', 3, '贾纳克布尔', 'Janakpur', 'jianakebuer', 'JA');
INSERT INTO `crm_data_region` VALUES (1940, 159, ',1,159,1940,', 3, '拉布蒂', 'Rapti', 'labudi', 'RA');
INSERT INTO `crm_data_region` VALUES (1941, 159, ',1,159,1941,', 3, '蓝毗尼', 'Lumbini', 'lanpini', 'LU');
INSERT INTO `crm_data_region` VALUES (1942, 159, ',1,159,1942,', 3, '马哈卡利', 'Mahakali', 'mahakali', 'MA');
INSERT INTO `crm_data_region` VALUES (1943, 159, ',1,159,1943,', 3, '梅吉', 'Mechi', 'meiji', 'ME');
INSERT INTO `crm_data_region` VALUES (1944, 159, ',1,159,1944,', 3, '纳拉亚尼', 'Narayani', 'nalayani', 'NA');
INSERT INTO `crm_data_region` VALUES (1945, 159, ',1,159,1945,', 3, '佩里', 'Bheri', 'peili', 'BH');
INSERT INTO `crm_data_region` VALUES (1946, 159, ',1,159,1946,', 3, '萨加玛塔', 'Sogarmatha', 'sajiamata', 'SA');
INSERT INTO `crm_data_region` VALUES (1947, 159, ',1,159,1947,', 3, '塞蒂', 'Seti', 'saidi', 'SE');
INSERT INTO `crm_data_region` VALUES (1948, 160, ',4,160,1948,', 3, '埃斯特利', 'Esteli', 'aisiteli', 'ES');
INSERT INTO `crm_data_region` VALUES (1949, 160, ',4,160,1949,', 3, '北大西洋', 'Atlantico Norte', 'beidaxiyang', 'AN');
INSERT INTO `crm_data_region` VALUES (1950, 160, ',4,160,1950,', 3, '博阿科', 'Boaco', 'boake', 'BO');
INSERT INTO `crm_data_region` VALUES (1951, 160, ',4,160,1951,', 3, '格拉纳达', 'Granada', 'gelanada', 'GR');
INSERT INTO `crm_data_region` VALUES (1952, 160, ',4,160,1952,', 3, '卡拉索', 'Carazo', 'kalasuo', 'CA');
INSERT INTO `crm_data_region` VALUES (1953, 160, ',4,160,1953,', 3, '莱昂', 'Leon', 'laiang', 'LE');
INSERT INTO `crm_data_region` VALUES (1954, 160, ',4,160,1954,', 3, '里瓦斯', 'Rivas', 'liwasi', 'RV');
INSERT INTO `crm_data_region` VALUES (1955, 160, ',4,160,1955,', 3, '马德里斯', 'Madriz', 'madelisi', 'MD');
INSERT INTO `crm_data_region` VALUES (1956, 160, ',4,160,1956,', 3, '马那瓜', 'Managua', 'managua', 'MN');
INSERT INTO `crm_data_region` VALUES (1957, 160, ',4,160,1957,', 3, '马萨亚', 'Masaya', 'masaya', 'MS');
INSERT INTO `crm_data_region` VALUES (1958, 160, ',4,160,1958,', 3, '马塔加尔帕', 'Matagalpa', 'matajiaerpa', 'MT');
INSERT INTO `crm_data_region` VALUES (1959, 160, ',4,160,1959,', 3, '南大西洋', 'Atlantico Sur', 'nandaxiyang', 'AS');
INSERT INTO `crm_data_region` VALUES (1960, 160, ',4,160,1960,', 3, '奇南德加', 'Chinandega', 'qinandejia', 'CD');
INSERT INTO `crm_data_region` VALUES (1961, 160, ',4,160,1961,', 3, '琼塔莱斯', 'Chontales', 'qiongtalaisi', 'CT');
INSERT INTO `crm_data_region` VALUES (1962, 160, ',4,160,1962,', 3, '圣胡安河', 'Rio San Juan', 'shenghuanhe', 'SJ');
INSERT INTO `crm_data_region` VALUES (1963, 160, ',4,160,1963,', 3, '希诺特加', 'Jinotega', 'xinuotejia', 'JI');
INSERT INTO `crm_data_region` VALUES (1964, 160, ',4,160,1964,', 3, '新塞哥维亚', 'Nueva Segovia', 'xinsaigeweiya', 'NS');
INSERT INTO `crm_data_region` VALUES (1965, 161, ',3,161,1965,', 3, '阿加德兹', 'Agadez', 'ajiadezi', 'AJY');
INSERT INTO `crm_data_region` VALUES (1966, 161, ',3,161,1966,', 3, '迪法', 'Diffa', 'difa', 'DIF');
INSERT INTO `crm_data_region` VALUES (1967, 161, ',3,161,1967,', 3, '蒂拉贝里', 'Tillaberi', 'dilabeili', 'TIL');
INSERT INTO `crm_data_region` VALUES (1968, 161, ',3,161,1968,', 3, '多索', 'Dosso', 'duosuo', 'DSS');
INSERT INTO `crm_data_region` VALUES (1969, 161, ',3,161,1969,', 3, '津德尔', 'Zinder', 'jindeer', 'ZND');
INSERT INTO `crm_data_region` VALUES (1970, 161, ',3,161,1970,', 3, '马拉迪', 'Maradi', 'maladi', 'MFQ');
INSERT INTO `crm_data_region` VALUES (1971, 161, ',3,161,1971,', 3, '尼亚美市', 'Niamey C.U.', 'niyameishi', 'NIM');
INSERT INTO `crm_data_region` VALUES (1972, 161, ',3,161,1972,', 3, '塔瓦', 'Tahoua', 'tawa', 'THZ');
INSERT INTO `crm_data_region` VALUES (1973, 162, ',3,162,1973,', 3, '阿比亚', 'Abuja', 'abiya', 'ABV');
INSERT INTO `crm_data_region` VALUES (1974, 162, ',3,162,1974,', 3, '奥博莫绍', 'Ogbomosho', 'aobomoshao', 'OGB');
INSERT INTO `crm_data_region` VALUES (1975, 162, ',3,162,1975,', 3, '卡诺', 'Kano', 'kanuo', 'KAN');
INSERT INTO `crm_data_region` VALUES (1976, 162, ',3,162,1976,', 3, '拉各斯', 'Lagos', 'lagesi', 'LOS');
INSERT INTO `crm_data_region` VALUES (1977, 162, ',3,162,1977,', 3, '伊巴丹', 'Ibadan', 'yibadan', 'IBA');
INSERT INTO `crm_data_region` VALUES (1978, 164, ',2,164,1978,', 3, '阿克什胡斯', 'Akershus', 'akeshihusi', '2');
INSERT INTO `crm_data_region` VALUES (1979, 164, ',2,164,1979,', 3, '奥普兰', 'Oppland', 'aopulan', '5');
INSERT INTO `crm_data_region` VALUES (1980, 164, ',2,164,1980,', 3, '奥斯陆市', 'Oslo', 'aosilushi', '3');
INSERT INTO `crm_data_region` VALUES (1981, 164, ',2,164,1981,', 3, '北特伦德拉格', 'Nord-Trondelag', 'beitelundelage', '17');
INSERT INTO `crm_data_region` VALUES (1982, 164, ',2,164,1982,', 3, '布斯克吕', 'Buskerud', 'busikelv', '6');
INSERT INTO `crm_data_region` VALUES (1983, 164, ',2,164,1983,', 3, '东阿格德尔', 'Aust-Agder', 'dongagedeer', '9');
INSERT INTO `crm_data_region` VALUES (1984, 164, ',2,164,1984,', 3, '东福尔', 'Ostfold', 'dongfuer', '1');
INSERT INTO `crm_data_region` VALUES (1985, 164, ',2,164,1985,', 3, '芬马克', 'Finnmark', 'fenmake', '20');
INSERT INTO `crm_data_region` VALUES (1986, 164, ',2,164,1986,', 3, '海德马克', 'Hedmark', 'haidemake', '4');
INSERT INTO `crm_data_region` VALUES (1987, 164, ',2,164,1987,', 3, '霍达兰', 'Hordaland', 'huodalan', '12');
INSERT INTO `crm_data_region` VALUES (1988, 164, ',2,164,1988,', 3, '罗加兰', 'Rogaland', 'luojialan', '11');
INSERT INTO `crm_data_region` VALUES (1989, 164, ',2,164,1989,', 3, '默勒－鲁姆斯达尔', 'More og Romsdal', 'molelumusidaer', '15');
INSERT INTO `crm_data_region` VALUES (1990, 164, ',2,164,1990,', 3, '南特伦德拉格', 'Sor-Trondelag', 'nantelundelage', '16');
INSERT INTO `crm_data_region` VALUES (1991, 164, ',2,164,1991,', 3, '诺尔兰', 'Nordland', 'nuoerlan', '18');
INSERT INTO `crm_data_region` VALUES (1992, 164, ',2,164,1992,', 3, '松恩－菲尤拉讷', 'Sogn og Fjordane', 'songenfeiyoula', '14');
INSERT INTO `crm_data_region` VALUES (1993, 164, ',2,164,1993,', 3, '泰勒马克', 'Telemark', 'tailemake', '8');
INSERT INTO `crm_data_region` VALUES (1994, 164, ',2,164,1994,', 3, '特罗姆斯', 'Troms', 'teluomusi', '19');
INSERT INTO `crm_data_region` VALUES (1995, 164, ',2,164,1995,', 3, '西阿格德尔', 'Vest-Agder', 'xiagedeer', '10');
INSERT INTO `crm_data_region` VALUES (1996, 164, ',2,164,1996,', 3, '西福尔', 'Vestfold', 'xifuer', '7');
INSERT INTO `crm_data_region` VALUES (1997, 168, ',2,168,1997,', 3, '滨海阿连特茹', 'Alentejo Litoral', 'binhaialianteru', 'ALL');
INSERT INTO `crm_data_region` VALUES (1998, 168, ',2,168,1998,', 3, '滨海皮尼亚尔', 'Pinhal Litoral', 'binhaipiniyaer', 'PLT');
INSERT INTO `crm_data_region` VALUES (1999, 168, ',2,168,1999,', 3, '波尔图', 'Porto', 'boertu', 'VDP');
INSERT INTO `crm_data_region` VALUES (2000, 168, ',2,168,2000,', 3, '杜罗', 'Douro', 'duluo', 'MDR');
INSERT INTO `crm_data_region` VALUES (2001, 168, ',2,168,2001,', 3, '恩特拉杜罗伏日', 'Entre Douro e Vouga', 'enteladuluofuri', 'EDV');
INSERT INTO `crm_data_region` VALUES (2002, 168, ',2,168,2002,', 3, '法鲁', 'Faro', 'falu', 'FAO');
INSERT INTO `crm_data_region` VALUES (2003, 168, ',2,168,2003,', 3, '丰沙尔', 'Funchal', 'fengshaer', 'FUN');
INSERT INTO `crm_data_region` VALUES (2004, 168, ',2,168,2004,', 3, '卡瓦多', 'Cavado', 'kawaduo', 'CAV');
INSERT INTO `crm_data_region` VALUES (2005, 168, ',2,168,2005,', 3, '科瓦贝拉', 'Cova da Beira', 'kewabeila', 'CLB');
INSERT INTO `crm_data_region` VALUES (2006, 168, ',2,168,2006,', 3, '里斯本', 'Lisboa', 'lisiben', 'LIS');
INSERT INTO `crm_data_region` VALUES (2007, 168, ',2,168,2007,', 3, '利巴特茹', 'Leziria do Tejo', 'libateru', 'LTE');
INSERT INTO `crm_data_region` VALUES (2008, 168, ',2,168,2008,', 3, '梅地奥特茹', 'Medio Tejo', 'meidiaoteru', 'MTE');
INSERT INTO `crm_data_region` VALUES (2009, 168, ',2,168,2009,', 3, '米尼奥-利马', 'Minho-Lima', 'miniaolima', 'MLI');
INSERT INTO `crm_data_region` VALUES (2010, 168, ',2,168,2010,', 3, '内贝拉北', 'Beira Interior Norte', 'neibeilabei', 'BIN');
INSERT INTO `crm_data_region` VALUES (2011, 168, ',2,168,2011,', 3, '内贝拉南', 'Beira Interior Sul', 'neibeilanan', 'BIS');
INSERT INTO `crm_data_region` VALUES (2012, 168, ',2,168,2012,', 3, '内皮尼亚尔北', 'Pinhal Interior Norte', 'neipiniyaerbei', 'PIN');
INSERT INTO `crm_data_region` VALUES (2013, 168, ',2,168,2013,', 3, '内皮尼亚尔南', 'Pinhal Interior Sul', 'neipiniyaernan', 'PIS');
INSERT INTO `crm_data_region` VALUES (2014, 168, ',2,168,2014,', 3, '蓬塔德尔加达', 'Ponta Delgada', 'pengtadeerjiada', 'PDL');
INSERT INTO `crm_data_region` VALUES (2015, 168, ',2,168,2015,', 3, '塞图巴尔半岛', 'Peninsula de Setubal', 'saitubaerbandao', 'PSE');
INSERT INTO `crm_data_region` VALUES (2016, 168, ',2,168,2016,', 3, '山后', 'Serra da Estrela', 'shanhou', 'SES');
INSERT INTO `crm_data_region` VALUES (2017, 168, ',2,168,2017,', 3, '上阿连特茹', 'Alto Alentejo', 'shangalianteru', 'AAT');
INSERT INTO `crm_data_region` VALUES (2018, 168, ',2,168,2018,', 3, '上特拉斯山', 'Alto Tros-os-Montes', 'shangtelasishan', 'ATM');
INSERT INTO `crm_data_region` VALUES (2019, 168, ',2,168,2019,', 3, '塔梅加', 'Tamega', 'tameijia', 'TAM');
INSERT INTO `crm_data_region` VALUES (2020, 168, ',2,168,2020,', 3, '万福', 'Ave', 'wanfu', 'AES');
INSERT INTO `crm_data_region` VALUES (2021, 168, ',2,168,2021,', 3, '西部', 'Oeste', 'xibu', 'OES');
INSERT INTO `crm_data_region` VALUES (2022, 168, ',2,168,2022,', 3, '下阿连特茹', 'Baixo Alentejo', 'xiaalianteru', 'BAL');
INSERT INTO `crm_data_region` VALUES (2023, 168, ',2,168,2023,', 3, '下伏日', 'Baixo Vouga', 'xiafuri', 'BVO');
INSERT INTO `crm_data_region` VALUES (2024, 168, ',2,168,2024,', 3, '下蒙德古', 'Baixo Mondego', 'xiamengdegu', 'BMO');
INSERT INTO `crm_data_region` VALUES (2025, 168, ',2,168,2025,', 3, '中阿连特茹', 'Alentejo Central', 'zhongalianteru', 'ALC');
INSERT INTO `crm_data_region` VALUES (2026, 170, ',1,170,2026,', 3, '爱媛', 'Ehime', 'ai', '38');
INSERT INTO `crm_data_region` VALUES (2027, 170, ',1,170,2027,', 3, '爱知', 'Aichi', 'aizhi', '23');
INSERT INTO `crm_data_region` VALUES (2028, 170, ',1,170,2028,', 3, '北海道', 'Hokkaido', 'beihaidao', '1');
INSERT INTO `crm_data_region` VALUES (2029, 170, ',1,170,2029,', 3, '兵库', 'Hyogo', 'bingku', '28');
INSERT INTO `crm_data_region` VALUES (2030, 170, ',1,170,2030,', 3, '冲绳', 'Okinawa', 'chongsheng', '47');
INSERT INTO `crm_data_region` VALUES (2031, 170, ',1,170,2031,', 3, '茨城', 'Ibaraki', 'cicheng', '8');
INSERT INTO `crm_data_region` VALUES (2032, 170, ',1,170,2032,', 3, '大阪', 'Osaka', 'da', '27');
INSERT INTO `crm_data_region` VALUES (2033, 170, ',1,170,2033,', 3, '大分', 'Oita', 'dafen', '44');
INSERT INTO `crm_data_region` VALUES (2034, 170, ',1,170,2034,', 3, '岛根', 'Shimane', 'daogen', '32');
INSERT INTO `crm_data_region` VALUES (2035, 170, ',1,170,2035,', 3, '徳岛', 'Tokushima', '', '36');
INSERT INTO `crm_data_region` VALUES (2036, 170, ',1,170,2036,', 3, '东京', 'Tokyo', 'dongjing', '13');
INSERT INTO `crm_data_region` VALUES (2037, 170, ',1,170,2037,', 3, '福岛', 'Fukushima', 'fudao', '7');
INSERT INTO `crm_data_region` VALUES (2038, 170, ',1,170,2038,', 3, '福冈', 'Fukuoka', 'fugang', '40');
INSERT INTO `crm_data_region` VALUES (2039, 170, ',1,170,2039,', 3, '福井', 'Fukui', 'fujing', '18');
INSERT INTO `crm_data_region` VALUES (2040, 170, ',1,170,2040,', 3, '富山', 'Toyama', 'fushan', '16');
INSERT INTO `crm_data_region` VALUES (2041, 170, ',1,170,2041,', 3, '冈山', 'Okayama', 'gangshan', '33');
INSERT INTO `crm_data_region` VALUES (2042, 170, ',1,170,2042,', 3, '高知', 'Kochi', 'gaozhi', '39');
INSERT INTO `crm_data_region` VALUES (2043, 170, ',1,170,2043,', 3, '宮城', 'Miyagi', '', '4');
INSERT INTO `crm_data_region` VALUES (2044, 170, ',1,170,2044,', 3, '宫崎', 'Miyazaki', 'gongqi', '45');
INSERT INTO `crm_data_region` VALUES (2045, 170, ',1,170,2045,', 3, '广岛', 'Hiroshima', 'guangdao', '34');
INSERT INTO `crm_data_region` VALUES (2046, 170, ',1,170,2046,', 3, '和歌山', 'Wakayama', 'hegeshan', '30');
INSERT INTO `crm_data_region` VALUES (2047, 170, ',1,170,2047,', 3, '京都', 'Kyoto', 'jingdu', '26');
INSERT INTO `crm_data_region` VALUES (2048, 170, ',1,170,2048,', 3, '静冈', 'Shizuoka', 'jinggang', '22');
INSERT INTO `crm_data_region` VALUES (2049, 170, ',1,170,2049,', 3, '枥木', 'Tochigi', 'mu', '9');
INSERT INTO `crm_data_region` VALUES (2050, 170, ',1,170,2050,', 3, '鹿儿岛', 'Kagoshima', 'luerdao', '46');
INSERT INTO `crm_data_region` VALUES (2051, 170, ',1,170,2051,', 3, '奈良', 'Nara', 'nailiang', '29');
INSERT INTO `crm_data_region` VALUES (2052, 170, ',1,170,2052,', 3, '鸟取', 'Tottori', 'niaoqu', '31');
INSERT INTO `crm_data_region` VALUES (2053, 170, ',1,170,2053,', 3, '岐阜', 'Gifu', 'fu', '21');
INSERT INTO `crm_data_region` VALUES (2054, 170, ',1,170,2054,', 3, '埼玉', 'Saitama', '', '11');
INSERT INTO `crm_data_region` VALUES (2055, 170, ',1,170,2055,', 3, '千叶', 'Chiba', 'qianye', '12');
INSERT INTO `crm_data_region` VALUES (2056, 170, ',1,170,2056,', 3, '青森', 'Aomori', 'qingsen', '2');
INSERT INTO `crm_data_region` VALUES (2057, 170, ',1,170,2057,', 3, '秋田', 'Akita', 'qiutian', '5');
INSERT INTO `crm_data_region` VALUES (2058, 170, ',1,170,2058,', 3, '群马', 'Gunma', 'qunma', '10');
INSERT INTO `crm_data_region` VALUES (2059, 170, ',1,170,2059,', 3, '三重', 'Mie', 'sanzhong', '24');
INSERT INTO `crm_data_region` VALUES (2060, 170, ',1,170,2060,', 3, '山口', 'Yamaguchi', 'shankou', '35');
INSERT INTO `crm_data_region` VALUES (2061, 170, ',1,170,2061,', 3, '山梨', 'Yamanashi', 'shanli', '19');
INSERT INTO `crm_data_region` VALUES (2062, 170, ',1,170,2062,', 3, '山形', 'Yamagata', 'shanxing', '6');
INSERT INTO `crm_data_region` VALUES (2063, 170, ',1,170,2063,', 3, '神奈川', 'Kanagawa', 'shennaichuan', '14');
INSERT INTO `crm_data_region` VALUES (2064, 170, ',1,170,2064,', 3, '石川', 'Ishikawa', 'shichuan', '17');
INSERT INTO `crm_data_region` VALUES (2065, 170, ',1,170,2065,', 3, '香川', 'Kagawa', 'xiangchuan', '37');
INSERT INTO `crm_data_region` VALUES (2066, 170, ',1,170,2066,', 3, '新潟', 'Niigata', 'xin', '15');
INSERT INTO `crm_data_region` VALUES (2067, 170, ',1,170,2067,', 3, '熊本', 'Kumamoto', 'xiongben', '43');
INSERT INTO `crm_data_region` VALUES (2068, 170, ',1,170,2068,', 3, '岩手', 'Iwate', 'yanshou', '3');
INSERT INTO `crm_data_region` VALUES (2069, 170, ',1,170,2069,', 3, '长崎', 'Nagasaki', 'changqi', '42');
INSERT INTO `crm_data_region` VALUES (2070, 170, ',1,170,2070,', 3, '长野', 'Nagano', 'changye', '20');
INSERT INTO `crm_data_region` VALUES (2071, 170, ',1,170,2071,', 3, '滋贺', 'Shiga', 'zihe', '25');
INSERT INTO `crm_data_region` VALUES (2072, 170, ',1,170,2072,', 3, '佐贺', 'Saga', 'zuohe', '41');
INSERT INTO `crm_data_region` VALUES (2073, 171, ',2,171,2073,', 3, '北博滕', 'Norrbottens', 'beibo', 'BD');
INSERT INTO `crm_data_region` VALUES (2074, 171, ',2,171,2074,', 3, '布莱金厄', 'Blekinge', 'bulaijine', 'K');
INSERT INTO `crm_data_region` VALUES (2075, 171, ',2,171,2075,', 3, '达拉纳', 'Dalarnas', 'dalana', 'DLN');
INSERT INTO `crm_data_region` VALUES (2076, 171, ',2,171,2076,', 3, '东约特兰', 'Ustergotland', 'dongyuetelan', 'UGL');
INSERT INTO `crm_data_region` VALUES (2077, 171, ',2,171,2077,', 3, '厄勒布鲁', 'Orebro', 'elebulu', 'T');
INSERT INTO `crm_data_region` VALUES (2078, 171, ',2,171,2078,', 3, '哥得兰', 'Gotlands', 'gedelan', 'I');
INSERT INTO `crm_data_region` VALUES (2079, 171, ',2,171,2079,', 3, '哈兰', 'Hallands', 'halan', 'N');
INSERT INTO `crm_data_region` VALUES (2080, 171, ',2,171,2080,', 3, '卡尔马', 'Kalmar', 'kaerma', 'H');
INSERT INTO `crm_data_region` VALUES (2081, 171, ',2,171,2081,', 3, '克鲁努贝里', 'Kronobergs', 'kelunubeili', 'G');
INSERT INTO `crm_data_region` VALUES (2082, 171, ',2,171,2082,', 3, '南曼兰', 'Sodermanlands', 'nanmanlan', 'D');
INSERT INTO `crm_data_region` VALUES (2083, 171, ',2,171,2083,', 3, '斯德哥尔摩', 'Stockholms', 'sidegeermo', 'AB');
INSERT INTO `crm_data_region` VALUES (2084, 171, ',2,171,2084,', 3, '斯科耐', 'Skane', 'sikenai', 'M');
INSERT INTO `crm_data_region` VALUES (2085, 171, ',2,171,2085,', 3, '韦姆兰', 'Varmlands', 'weimulan', 'S');
INSERT INTO `crm_data_region` VALUES (2086, 171, ',2,171,2086,', 3, '乌普萨拉', 'Uppsala', 'wupusala', 'C');
INSERT INTO `crm_data_region` VALUES (2087, 171, ',2,171,2087,', 3, '西博滕', 'Vasterbottens', 'xibo', 'AC');
INSERT INTO `crm_data_region` VALUES (2088, 171, ',2,171,2088,', 3, '西曼兰', 'Vastmanlands', 'ximanlan', 'U');
INSERT INTO `crm_data_region` VALUES (2089, 171, ',2,171,2089,', 3, '西诺尔兰', 'Vasternorrlands', 'xinuoerlan', 'Y');
INSERT INTO `crm_data_region` VALUES (2090, 171, ',2,171,2090,', 3, '西约特兰', 'Vastra Gotalands', 'xiyuetelan', 'O');
INSERT INTO `crm_data_region` VALUES (2091, 171, ',2,171,2091,', 3, '延雪平', 'Jonkopings', 'yanxueping', 'F');
INSERT INTO `crm_data_region` VALUES (2092, 171, ',2,171,2092,', 3, '耶夫勒堡', 'Gavleborgs', 'yefulebao', 'X');
INSERT INTO `crm_data_region` VALUES (2093, 171, ',2,171,2093,', 3, '耶姆特兰', 'Jamtlands', 'yemutelan', 'Z');
INSERT INTO `crm_data_region` VALUES (2094, 172, ',2,172,2094,', 3, '阿尔高', 'Aargau', 'aergao', 'AG');
INSERT INTO `crm_data_region` VALUES (2095, 172, ',2,172,2095,', 3, '巴塞尔城市', 'Basel－Sstadt', 'basaierchengshi', 'BS');
INSERT INTO `crm_data_region` VALUES (2096, 172, ',2,172,2096,', 3, '巴塞尔乡村', 'Basel Landschaft', 'basaierxiangcun', 'BL');
INSERT INTO `crm_data_region` VALUES (2097, 172, ',2,172,2097,', 3, '伯尔尼', 'Bern', 'boerni', 'BE');
INSERT INTO `crm_data_region` VALUES (2098, 172, ',2,172,2098,', 3, '楚格', 'Zug', 'chuge', 'ZG');
INSERT INTO `crm_data_region` VALUES (2099, 172, ',2,172,2099,', 3, '弗里堡', 'Freiburg', 'fulibao', 'FR');
INSERT INTO `crm_data_region` VALUES (2100, 172, ',2,172,2100,', 3, '格拉鲁斯', 'Glarus', 'gelalusi', 'GL');
INSERT INTO `crm_data_region` VALUES (2101, 172, ',2,172,2101,', 3, '格劳宾登', 'Graubünden', 'gelaobindeng', 'GR');
INSERT INTO `crm_data_region` VALUES (2102, 172, ',2,172,2102,', 3, '卢塞恩', 'Luzern', 'lusaien', 'LU');
INSERT INTO `crm_data_region` VALUES (2103, 172, ',2,172,2103,', 3, '洛桑', 'Lausanne', 'luosang', 'LA');
INSERT INTO `crm_data_region` VALUES (2104, 172, ',2,172,2104,', 3, '纳沙泰尔', 'Neuchatel', 'nashataier', 'NE');
INSERT INTO `crm_data_region` VALUES (2105, 172, ',2,172,2105,', 3, '内阿彭策尔', 'Appenzell Innerrhodn', 'neiapengceer', 'AI');
INSERT INTO `crm_data_region` VALUES (2106, 172, ',2,172,2106,', 3, '日内瓦', 'Geneve', 'rineiwa', 'GE');
INSERT INTO `crm_data_region` VALUES (2107, 172, ',2,172,2107,', 3, '汝拉', 'Jura', 'rula', 'JU');
INSERT INTO `crm_data_region` VALUES (2108, 172, ',2,172,2108,', 3, '沙夫豪森', 'Schaffhausen', 'shafuhaosen', 'SH');
INSERT INTO `crm_data_region` VALUES (2109, 172, ',2,172,2109,', 3, '上瓦尔登', 'Obwalden', 'shangwaerdeng', 'OW');
INSERT INTO `crm_data_region` VALUES (2110, 172, ',2,172,2110,', 3, '圣加仑', 'St.Gallen', 'shengjialun', 'SG');
INSERT INTO `crm_data_region` VALUES (2111, 172, ',2,172,2111,', 3, '施维茨', 'Schwyz', 'shiweici', 'SZ');
INSERT INTO `crm_data_region` VALUES (2112, 172, ',2,172,2112,', 3, '苏黎世', 'Zurich', 'sulishi', 'ZH');
INSERT INTO `crm_data_region` VALUES (2113, 172, ',2,172,2113,', 3, '索洛图恩', 'Solothurn', 'suoluotuen', 'SO');
INSERT INTO `crm_data_region` VALUES (2114, 172, ',2,172,2114,', 3, '提契诺', 'Ticino', 'tiqinuo', 'TI');
INSERT INTO `crm_data_region` VALUES (2115, 172, ',2,172,2115,', 3, '图尔高', 'Thurgau', 'tuergao', 'TG');
INSERT INTO `crm_data_region` VALUES (2116, 172, ',2,172,2116,', 3, '瓦莱', 'Wallis', 'walai', 'VS');
INSERT INTO `crm_data_region` VALUES (2117, 172, ',2,172,2117,', 3, '外阿彭策尔', 'Appenzell Ausserrhon', 'waiapengceer', 'AR');
INSERT INTO `crm_data_region` VALUES (2118, 172, ',2,172,2118,', 3, '沃', 'Vaud', 'wo', 'VD');
INSERT INTO `crm_data_region` VALUES (2119, 172, ',2,172,2119,', 3, '乌里', 'Uri', 'wuli', 'UR');
INSERT INTO `crm_data_region` VALUES (2120, 172, ',2,172,2120,', 3, '下瓦尔登', 'Nidwalden', 'xiawaerdeng', 'NW');
INSERT INTO `crm_data_region` VALUES (2121, 173, ',4,173,2121,', 3, '阿波帕', 'Apopa', 'abopa', 'APO');
INSERT INTO `crm_data_region` VALUES (2122, 173, ',4,173,2122,', 3, '阿瓦查潘', 'Ahuachapan', 'awachapan', 'AH');
INSERT INTO `crm_data_region` VALUES (2123, 173, ',4,173,2123,', 3, '滨海', 'Litoral', 'binhai', 'LI');
INSERT INTO `crm_data_region` VALUES (2124, 173, ',4,173,2124,', 3, '查拉特南戈', 'Chalatenango', 'chalatenange', 'CH');
INSERT INTO `crm_data_region` VALUES (2125, 173, ',4,173,2125,', 3, '德尔加多', 'Delgado', 'deerjiaduo', 'DE');
INSERT INTO `crm_data_region` VALUES (2126, 173, ',4,173,2126,', 3, '基埃-恩特姆', 'Kie-Ntem', 'jiaientemu', 'KN');
INSERT INTO `crm_data_region` VALUES (2127, 173, ',4,173,2127,', 3, '卡瓦尼亚斯', 'Cabanas', 'kawaniyasi', 'CA');
INSERT INTO `crm_data_region` VALUES (2128, 173, ',4,173,2128,', 3, '库斯卡特兰', 'Cuscatlan', 'kusikatelan', 'CU');
INSERT INTO `crm_data_region` VALUES (2129, 173, ',4,173,2129,', 3, '拉巴斯', 'La Paz', 'labasi', 'PZ');
INSERT INTO `crm_data_region` VALUES (2130, 173, ',4,173,2130,', 3, '拉利伯塔德', 'La Libertad', 'lalibotade', 'LB');
INSERT INTO `crm_data_region` VALUES (2131, 173, ',4,173,2131,', 3, '拉乌尼翁', 'La Union', 'lawuniweng', 'UN');
INSERT INTO `crm_data_region` VALUES (2132, 173, ',4,173,2132,', 3, '梅基卡诺斯', 'Mejicanos', 'meijikanuosi', 'MEJ');
INSERT INTO `crm_data_region` VALUES (2133, 173, ',4,173,2133,', 3, '莫拉桑', 'Morazan', 'molasang', 'MO');
INSERT INTO `crm_data_region` VALUES (2134, 173, ',4,173,2134,', 3, '圣安娜', 'Santa Ana', 'shenganna', 'SA');
INSERT INTO `crm_data_region` VALUES (2135, 173, ',4,173,2135,', 3, '圣米格尔', 'San Miguel', 'shengmigeer', 'SM');
INSERT INTO `crm_data_region` VALUES (2136, 173, ',4,173,2136,', 3, '圣萨尔瓦多', 'San Salvador', 'shengsaerwaduo', 'SS');
INSERT INTO `crm_data_region` VALUES (2137, 173, ',4,173,2137,', 3, '圣维森特', 'San Vicente', 'shengweisente', 'SV');
INSERT INTO `crm_data_region` VALUES (2138, 173, ',4,173,2138,', 3, '松索纳特', 'Sonsonate', 'songsuonate', 'SO');
INSERT INTO `crm_data_region` VALUES (2139, 173, ',4,173,2139,', 3, '索亚潘戈', 'Soyapango', 'suoyapange', 'SOY');
INSERT INTO `crm_data_region` VALUES (2140, 173, ',4,173,2140,', 3, '韦莱-恩萨斯', 'Wele-Nzas', 'weilaiensasi', 'WN');
INSERT INTO `crm_data_region` VALUES (2141, 173, ',4,173,2141,', 3, '乌苏卢坦', 'Usulutan', 'wusulutan', 'US');
INSERT INTO `crm_data_region` VALUES (2142, 173, ',4,173,2142,', 3, '伊洛潘戈', 'Ilopango', 'yiluopange', 'IL');
INSERT INTO `crm_data_region` VALUES (2143, 173, ',4,173,2143,', 3, '中南', 'Centro Sur', 'zhongnan', 'CS');
INSERT INTO `crm_data_region` VALUES (2144, 175, ',2,175,2144,', 3, '贝尔格莱德', 'Beograd', 'beiergelaide', 'BEG');
INSERT INTO `crm_data_region` VALUES (2145, 175, ',2,175,2145,', 3, '波德戈里察', 'Podgorica', 'bodegelicha', 'POD');
INSERT INTO `crm_data_region` VALUES (2146, 175, ',2,175,2146,', 3, '克拉古涅瓦茨', 'Kragujevac', 'kelaguniewaci', 'KGV');
INSERT INTO `crm_data_region` VALUES (2147, 175, ',2,175,2147,', 3, '尼什', 'Nis', 'nishi', 'INI');
INSERT INTO `crm_data_region` VALUES (2148, 175, ',2,175,2148,', 3, '诺维萨德', 'Novi Sad', 'nuoweisade', 'NVS');
INSERT INTO `crm_data_region` VALUES (2149, 175, ',2,175,2149,', 3, '普里什蒂纳', 'Pristina', 'pulishidina', 'PRN');
INSERT INTO `crm_data_region` VALUES (2150, 175, ',2,175,2150,', 3, '苏博蒂察', 'Subotica', 'subodicha', 'SUB');
INSERT INTO `crm_data_region` VALUES (2151, 175, ',2,175,2151,', 3, '泽蒙', 'Zemun', 'zemeng', 'ZEM');
INSERT INTO `crm_data_region` VALUES (2152, 176, ',3,176,2152,', 3, '北部', 'Northern', 'beibu', 'N');
INSERT INTO `crm_data_region` VALUES (2153, 176, ',3,176,2153,', 3, '东部', 'Eastern', 'dongbu', 'E');
INSERT INTO `crm_data_region` VALUES (2154, 176, ',3,176,2154,', 3, '南部', 'Southern', 'nanbu', 'S');
INSERT INTO `crm_data_region` VALUES (2155, 176, ',3,176,2155,', 3, '西部区', 'Western', 'xibuqu', 'W');
INSERT INTO `crm_data_region` VALUES (2156, 177, ',3,177,2156,', 3, '达喀尔', 'Dakar', 'dakaer', 'DA');
INSERT INTO `crm_data_region` VALUES (2157, 177, ',3,177,2157,', 3, '法蒂克', 'Fatick', 'fadike', 'FA');
INSERT INTO `crm_data_region` VALUES (2158, 177, ',3,177,2158,', 3, '济金绍尔', 'Ziguinchor', 'jijinshaoer', 'ZI');
INSERT INTO `crm_data_region` VALUES (2159, 177, ',3,177,2159,', 3, '捷斯', 'Thies', 'jiesi', 'TH');
INSERT INTO `crm_data_region` VALUES (2160, 177, ',3,177,2160,', 3, '久尔贝勒', 'Diourbel', 'jiuerbeile', 'DI');
INSERT INTO `crm_data_region` VALUES (2161, 177, ',3,177,2161,', 3, '考拉克', 'Kaolack', 'kaolake', 'KA');
INSERT INTO `crm_data_region` VALUES (2162, 177, ',3,177,2162,', 3, '科尔达', 'Kolda', 'keerda', 'KO');
INSERT INTO `crm_data_region` VALUES (2163, 177, ',3,177,2163,', 3, '卢加', 'Louga', 'lujia', 'LO');
INSERT INTO `crm_data_region` VALUES (2164, 177, ',3,177,2164,', 3, '马塔姆', 'Matam', 'matamu', 'MA');
INSERT INTO `crm_data_region` VALUES (2165, 177, ',3,177,2165,', 3, '圣路易', 'Saint-Louis', 'shengluyi', 'SL');
INSERT INTO `crm_data_region` VALUES (2166, 177, ',3,177,2166,', 3, '坦巴昆达', 'Tambacounda', 'tanbakunda', 'TA');
INSERT INTO `crm_data_region` VALUES (2167, 178, ',1,178,2167,', 3, '法马古斯塔', 'Famagusta', 'famagusita', '4');
INSERT INTO `crm_data_region` VALUES (2168, 178, ',1,178,2168,', 3, '凯里尼亚', 'Kyrenia', 'kailiniya', '6');
INSERT INTO `crm_data_region` VALUES (2169, 178, ',1,178,2169,', 3, '拉纳卡', 'Larnaca', 'lanaka', '3');
INSERT INTO `crm_data_region` VALUES (2170, 178, ',1,178,2170,', 3, '利马索尔', 'Limassol', 'limasuoer', '2');
INSERT INTO `crm_data_region` VALUES (2171, 178, ',1,178,2171,', 3, '尼科西亚', 'Nicosia', 'nikexiya', '1');
INSERT INTO `crm_data_region` VALUES (2172, 178, ',1,178,2172,', 3, '帕福斯', 'Pafos', 'pafusi', '5');
INSERT INTO `crm_data_region` VALUES (2173, 180, ',1,180,2173,', 3, '阿尔阿尔', 'Arar', 'aeraer', 'ARA');
INSERT INTO `crm_data_region` VALUES (2174, 180, ',1,180,2174,', 3, '艾卜哈', 'Abha', 'aiboha', 'AHB');
INSERT INTO `crm_data_region` VALUES (2175, 180, ',1,180,2175,', 3, '巴哈', 'Al Bahah', 'baha', 'BH');
INSERT INTO `crm_data_region` VALUES (2176, 180, ',1,180,2176,', 3, '布赖代', 'Buraydah', 'bulaidai', 'BUR');
INSERT INTO `crm_data_region` VALUES (2177, 180, ',1,180,2177,', 3, '达曼', 'Dammam', 'daman', 'DAM');
INSERT INTO `crm_data_region` VALUES (2178, 180, ',1,180,2178,', 3, '哈费尔巴廷', 'Hafar al-Batin', 'hafeierbating', 'HBT');
INSERT INTO `crm_data_region` VALUES (2179, 180, ',1,180,2179,', 3, '哈伊勒', 'Hail', 'hayile', 'HL');
INSERT INTO `crm_data_region` VALUES (2180, 180, ',1,180,2180,', 3, '海米斯穆谢特', 'Khamis Mushayt', 'haimisimuxiete', 'KMX');
INSERT INTO `crm_data_region` VALUES (2181, 180, ',1,180,2181,', 3, '海耶', 'Al-Kharj', 'haiye', 'AKH');
INSERT INTO `crm_data_region` VALUES (2182, 180, ',1,180,2182,', 3, '胡富夫', 'Al-Hufuf', 'hufufu', 'HFF');
INSERT INTO `crm_data_region` VALUES (2183, 180, ',1,180,2183,', 3, '吉达', 'Jiddah', 'jida', 'JED');
INSERT INTO `crm_data_region` VALUES (2184, 180, ',1,180,2184,', 3, '吉赞', 'Jizan', 'jizan', 'JZ');
INSERT INTO `crm_data_region` VALUES (2185, 180, ',1,180,2185,', 3, '利雅得', 'Riyad', 'liyade', 'RD');
INSERT INTO `crm_data_region` VALUES (2186, 180, ',1,180,2186,', 3, '麦地那', 'Medina', 'maidina', 'MED');
INSERT INTO `crm_data_region` VALUES (2187, 180, ',1,180,2187,', 3, '麦加', 'Makkah', 'maijia', 'ML');
INSERT INTO `crm_data_region` VALUES (2188, 180, ',1,180,2188,', 3, '姆巴拉兹', 'Al-Mubarraz', 'mubalazi', 'MBR');
INSERT INTO `crm_data_region` VALUES (2189, 180, ',1,180,2189,', 3, '纳季兰', 'Najran', 'najilan', 'NR');
INSERT INTO `crm_data_region` VALUES (2190, 180, ',1,180,2190,', 3, '塞卡卡', 'Sakaka', 'saikaka', 'SAK');
INSERT INTO `crm_data_region` VALUES (2191, 180, ',1,180,2191,', 3, '塔布克', 'Tabuk', 'tabuke', 'TB');
INSERT INTO `crm_data_region` VALUES (2192, 180, ',1,180,2192,', 3, '塔伊夫', 'At Tarif', 'tayifu', 'TAR');
INSERT INTO `crm_data_region` VALUES (2193, 180, ',1,180,2193,', 3, '延布', 'Yanbu al-Bahr', 'yanbu', 'YNB');
INSERT INTO `crm_data_region` VALUES (2194, 180, ',1,180,2194,', 3, '朱拜勒', 'Al-Jubayl', 'zhubaile', 'JBI');
INSERT INTO `crm_data_region` VALUES (2195, 189, ',1,189,2195,', 3, '阿努拉德普勒', 'Anuradhapura', 'anuladepule', 'ADP');
INSERT INTO `crm_data_region` VALUES (2196, 189, ',1,189,2196,', 3, '安帕赖', 'Ampara', 'anpalai', 'AMP');
INSERT INTO `crm_data_region` VALUES (2197, 189, ',1,189,2197,', 3, '巴杜勒', 'Badulla', 'badule', 'BAD');
INSERT INTO `crm_data_region` VALUES (2198, 189, ',1,189,2198,', 3, '拜蒂克洛', 'Batticaloa', 'baidikeluo', 'BTC');
INSERT INTO `crm_data_region` VALUES (2199, 189, ',1,189,2199,', 3, '波隆纳鲁沃', 'Polonnaruwa', 'bolongnaluwo', 'POL');
INSERT INTO `crm_data_region` VALUES (2200, 189, ',1,189,2200,', 3, '汉班托特', 'Hambantota', 'hanbantuote', 'HBA');
INSERT INTO `crm_data_region` VALUES (2201, 189, ',1,189,2201,', 3, '基里诺奇', 'Kilinochchi', 'jilinuoqi', 'KIL');
INSERT INTO `crm_data_region` VALUES (2202, 189, ',1,189,2202,', 3, '加勒', 'Galle', 'jiale', 'GAL');
INSERT INTO `crm_data_region` VALUES (2203, 189, ',1,189,2203,', 3, '加姆珀哈', 'Gampaha', 'jiamuha', 'GAM');
INSERT INTO `crm_data_region` VALUES (2204, 189, ',1,189,2204,', 3, '贾夫纳', 'Jaffna', 'jiafuna', 'JAF');
INSERT INTO `crm_data_region` VALUES (2205, 189, ',1,189,2205,', 3, '卡卢特勒', 'Kalutara', 'kalutele', 'KLT');
INSERT INTO `crm_data_region` VALUES (2206, 189, ',1,189,2206,', 3, '凯格勒', 'Kegalle', 'kaigele', 'KEG');
INSERT INTO `crm_data_region` VALUES (2207, 189, ',1,189,2207,', 3, '康提', 'Kandy', 'kangti', 'KAN');
INSERT INTO `crm_data_region` VALUES (2208, 189, ',1,189,2208,', 3, '科伦坡', 'Colombo', 'kelunpo', 'CMB');
INSERT INTO `crm_data_region` VALUES (2209, 189, ',1,189,2209,', 3, '库鲁内格勒', 'Kurunegala', 'kuluneigele', 'KUR');
INSERT INTO `crm_data_region` VALUES (2210, 189, ',1,189,2210,', 3, '拉特纳普勒', 'Ratnapura', 'latenapule', 'RAT');
INSERT INTO `crm_data_region` VALUES (2211, 189, ',1,189,2211,', 3, '马纳尔', 'Mannar', 'manaer', 'MAN');
INSERT INTO `crm_data_region` VALUES (2212, 189, ',1,189,2212,', 3, '马特莱', 'Matale', 'matelai', 'MAT');
INSERT INTO `crm_data_region` VALUES (2213, 189, ',1,189,2213,', 3, '马特勒', 'Matara', 'matele', 'MAA');
INSERT INTO `crm_data_region` VALUES (2214, 189, ',1,189,2214,', 3, '莫讷勒格勒', 'Monaragala', 'molegele', 'MON');
INSERT INTO `crm_data_region` VALUES (2215, 189, ',1,189,2215,', 3, '穆莱蒂武', 'Mullathivu', 'mulaidiwu', 'MUL');
INSERT INTO `crm_data_region` VALUES (2216, 189, ',1,189,2216,', 3, '努沃勒埃利耶', 'Nuwara Eliya', 'nuwoleailiye', 'NUE');
INSERT INTO `crm_data_region` VALUES (2217, 189, ',1,189,2217,', 3, '普塔勒姆', 'Puttalam', 'putalemu', 'PUT');
INSERT INTO `crm_data_region` VALUES (2218, 189, ',1,189,2218,', 3, '亭可马里', 'Trincomalee', 'tingkemali', 'TRR');
INSERT INTO `crm_data_region` VALUES (2219, 189, ',1,189,2219,', 3, '瓦武尼亚', 'Vavuniya', 'wawuniya', 'VAV');
INSERT INTO `crm_data_region` VALUES (2220, 190, ',2,190,2220,', 3, '班斯卡-比斯特里察', 'Banskobystricky', 'bansikabisitelicha', 'BBY');
INSERT INTO `crm_data_region` VALUES (2221, 190, ',2,190,2221,', 3, '布拉迪斯拉发', 'Bratislavsky', 'buladisilafa', 'BTS');
INSERT INTO `crm_data_region` VALUES (2222, 190, ',2,190,2222,', 3, '科希策', 'Koricky', 'kexice', 'KOR');
INSERT INTO `crm_data_region` VALUES (2223, 190, ',2,190,2223,', 3, '尼特拉', 'Nitriansky', 'nitela', 'NRA');
INSERT INTO `crm_data_region` VALUES (2224, 190, ',2,190,2224,', 3, '普雷绍夫', 'Prerovsky', 'puleishaofu', 'POV');
INSERT INTO `crm_data_region` VALUES (2225, 190, ',2,190,2225,', 3, '日利纳', 'Rilinsky', 'rilina', 'RIL');
INSERT INTO `crm_data_region` VALUES (2226, 190, ',2,190,2226,', 3, '特尔纳瓦', 'Trnavsky', 'teernawa', 'TNA');
INSERT INTO `crm_data_region` VALUES (2227, 190, ',2,190,2227,', 3, '特伦钦', 'Trenriansky', 'telunqin', 'TRE');
INSERT INTO `crm_data_region` VALUES (2228, 191, ',2,191,2228,', 3, '奥巴尔诺-克拉', 'Obalno-kraska', 'aobaernuokela', 'OKR');
INSERT INTO `crm_data_region` VALUES (2229, 191, ',2,191,2229,', 3, '奥斯雷德涅斯洛文', 'Osrednjeslovenska', 'aosileideniesiluowen', 'OSR');
INSERT INTO `crm_data_region` VALUES (2230, 191, ',2,191,2230,', 3, '波德拉夫', 'Podravska', 'bodelafu', 'POD');
INSERT INTO `crm_data_region` VALUES (2231, 191, ',2,191,2231,', 3, '波穆尔', 'Pomurska', 'bomuer', 'POM');
INSERT INTO `crm_data_region` VALUES (2232, 191, ',2,191,2232,', 3, '多雷尼', 'Dolenjska', 'duoleini', 'DLJ');
INSERT INTO `crm_data_region` VALUES (2233, 191, ',2,191,2233,', 3, '戈雷尼', 'Gorenjska', 'geleini', 'GSZ');
INSERT INTO `crm_data_region` VALUES (2234, 191, ',2,191,2234,', 3, '戈里', 'Goriska', 'geli', 'GSK');
INSERT INTO `crm_data_region` VALUES (2235, 191, ',2,191,2235,', 3, '科洛', 'Koroska', 'keluo', 'KOR');
INSERT INTO `crm_data_region` VALUES (2236, 191, ',2,191,2236,', 3, '诺特拉尼', 'Notranjsko-kraska', 'nuotelani', 'NKR');
INSERT INTO `crm_data_region` VALUES (2237, 191, ',2,191,2237,', 3, '萨维尼', 'Savinjska', 'saweini', 'SAV');
INSERT INTO `crm_data_region` VALUES (2238, 191, ',2,191,2238,', 3, '斯波德涅波萨夫', 'Spodnjeposavska', 'sibodeniebosafu', 'SPO');
INSERT INTO `crm_data_region` VALUES (2239, 191, ',2,191,2239,', 3, '扎萨夫', 'Zasavska', 'zhasafu', 'ZAS');
INSERT INTO `crm_data_region` VALUES (2240, 194, ',3,194,2240,', 3, '北部', 'Ash-Shamaliyah', 'beibu', 'ASH');
INSERT INTO `crm_data_region` VALUES (2241, 194, ',3,194,2241,', 3, '赤道', 'Al-Istiwaiyah', 'chidao', 'SIS');
INSERT INTO `crm_data_region` VALUES (2242, 194, ',3,194,2242,', 3, '达尔富尔', 'Darfur', 'daerfuer', 'SDA');
INSERT INTO `crm_data_region` VALUES (2243, 194, ',3,194,2243,', 3, '东部', 'Ash-Sharqiyah', 'dongbu', 'SHA');
INSERT INTO `crm_data_region` VALUES (2244, 194, ',3,194,2244,', 3, '加扎勒河', 'Bahr al-Ghazal', 'jiazhalehe', 'SBG');
INSERT INTO `crm_data_region` VALUES (2245, 194, ',3,194,2245,', 3, '喀土穆', 'Al-Khartum', 'katumu', 'KRT');
INSERT INTO `crm_data_region` VALUES (2246, 194, ',3,194,2246,', 3, '科尔多凡', 'Kurdufan', 'keerduofan', 'GKU');
INSERT INTO `crm_data_region` VALUES (2247, 194, ',3,194,2247,', 3, '上尼罗', 'Aali an-Nil', 'shangniluo', 'ANB');
INSERT INTO `crm_data_region` VALUES (2248, 194, ',3,194,2248,', 3, '中部', 'Al Wasta', 'zhongbu', 'WDH');
INSERT INTO `crm_data_region` VALUES (2249, 195, ',5,195,2249,', 3, '布罗科蓬多', 'Brokopondo', 'buluokepengduo', 'BR');
INSERT INTO `crm_data_region` VALUES (2250, 195, ',5,195,2250,', 3, '科罗尼', 'Coronie', 'keluoni', 'CR');
INSERT INTO `crm_data_region` VALUES (2251, 195, ',5,195,2251,', 3, '科默韦讷', 'Commewijne', 'kemowei', 'CM');
INSERT INTO `crm_data_region` VALUES (2252, 195, ',5,195,2252,', 3, '马罗韦讷', 'Marowijne', 'maluowei', 'MA');
INSERT INTO `crm_data_region` VALUES (2253, 195, ',5,195,2253,', 3, '尼克里', 'Nickerie', 'nikeli', 'NI');
INSERT INTO `crm_data_region` VALUES (2254, 195, ',5,195,2254,', 3, '帕拉', 'Para', 'pala', 'PA');
INSERT INTO `crm_data_region` VALUES (2255, 195, ',5,195,2255,', 3, '帕拉马里博', 'Paramaribo', 'palamalibo', 'PM');
INSERT INTO `crm_data_region` VALUES (2256, 195, ',5,195,2256,', 3, '萨拉马卡', 'Saramacca', 'salamaka', 'SA');
INSERT INTO `crm_data_region` VALUES (2257, 195, ',5,195,2257,', 3, '瓦尼卡', 'Wanica', 'wanika', 'WA');
INSERT INTO `crm_data_region` VALUES (2258, 195, ',5,195,2258,', 3, '西帕里韦尼', 'Sipaliwini', 'xipaliweini', 'SI');
INSERT INTO `crm_data_region` VALUES (2259, 196, ',6,196,2259,', 3, '瓜达尔卡纳尔', 'Guadalcanal', 'guadaerkanaer', 'GC');
INSERT INTO `crm_data_region` VALUES (2260, 196, ',6,196,2260,', 3, '霍尼亚拉', 'Honiara', 'huoniyala', 'HO');
INSERT INTO `crm_data_region` VALUES (2261, 196, ',6,196,2261,', 3, '拉纳尔和贝罗纳', 'Rennell and Bellona', 'lanaerhebeiluona', 'RB');
INSERT INTO `crm_data_region` VALUES (2262, 196, ',6,196,2262,', 3, '马基拉', 'Makira', 'majila', 'MK');
INSERT INTO `crm_data_region` VALUES (2263, 196, ',6,196,2263,', 3, '马莱塔', 'Malaita', 'malaita', 'ML');
INSERT INTO `crm_data_region` VALUES (2264, 196, ',6,196,2264,', 3, '乔伊索', 'Choiseul', 'qiaoyisuo', 'CH');
INSERT INTO `crm_data_region` VALUES (2265, 196, ',6,196,2265,', 3, '泰莫图', 'Temotu', 'taimotu', 'TM');
INSERT INTO `crm_data_region` VALUES (2266, 196, ',6,196,2266,', 3, '西部', 'Western', 'xibu', 'WE');
INSERT INTO `crm_data_region` VALUES (2267, 196, ',6,196,2267,', 3, '伊萨贝尔', 'Isabel', 'yisabeier', 'IS');
INSERT INTO `crm_data_region` VALUES (2268, 196, ',6,196,2268,', 3, '中部群岛', 'Central Islands', 'zhongbuqundao', 'CE');
INSERT INTO `crm_data_region` VALUES (2269, 198, ',1,198,2269,', 3, '杜尚别', 'Dushanbe', 'dushangbie', 'DYU');
INSERT INTO `crm_data_region` VALUES (2270, 198, ',1,198,2270,', 3, '霍罗格', 'Khorugh', 'huoluoge', 'KHO');
INSERT INTO `crm_data_region` VALUES (2271, 198, ',1,198,2271,', 3, '卡尼巴达姆', 'Kanibadam', 'kanibadamu', 'KAN');
INSERT INTO `crm_data_region` VALUES (2272, 198, ',1,198,2272,', 3, '科法尔尼洪', 'Kofarnihon', 'kefaernihong', 'KOF');
INSERT INTO `crm_data_region` VALUES (2273, 198, ',1,198,2273,', 3, '苦盏', 'Khujand', 'kuzhan', 'KHU');
INSERT INTO `crm_data_region` VALUES (2274, 198, ',1,198,2274,', 3, '库尔干-秋别', 'Kurgan-Tjube', 'kuerganqiubie', 'KTJ');
INSERT INTO `crm_data_region` VALUES (2275, 198, ',1,198,2275,', 3, '库洛布', 'Kulob', 'kuluobu', 'KLB');
INSERT INTO `crm_data_region` VALUES (2276, 198, ',1,198,2276,', 3, '洛贡', 'Rogun', 'luogong', 'RGU');
INSERT INTO `crm_data_region` VALUES (2277, 198, ',1,198,2277,', 3, '努雷克', 'Nurek', 'nuleike', 'NUR');
INSERT INTO `crm_data_region` VALUES (2278, 198, ',1,198,2278,', 3, '彭吉肯特', 'Pendzhikent', 'pengjikente', 'PJK');
INSERT INTO `crm_data_region` VALUES (2279, 198, ',1,198,2279,', 3, '萨班特', 'Sarband', 'sabante', 'SBA');
INSERT INTO `crm_data_region` VALUES (2280, 198, ',1,198,2280,', 3, '塔博沙尔', 'Taboshar', 'taboshaer', 'TBS');
INSERT INTO `crm_data_region` VALUES (2281, 198, ',1,198,2281,', 3, '图尔孙扎德', 'Tursunzade', 'tuersunzhade', 'TSZ');
INSERT INTO `crm_data_region` VALUES (2282, 198, ',1,198,2282,', 3, '乌拉秋别', 'Ura-Tjube', 'wulaqiubie', 'UTJ');
INSERT INTO `crm_data_region` VALUES (2283, 198, ',1,198,2283,', 3, '伊斯法拉', 'Isfara', 'yisifala', 'ISF');
INSERT INTO `crm_data_region` VALUES (2284, 199, ',1,199,2284,', 3, '安纳乍能', 'Amnat Charoen', 'annazhaneng', '37');
INSERT INTO `crm_data_region` VALUES (2285, 199, ',1,199,2285,', 3, '巴蜀', 'Prachuap Khiri Khan', 'bashu', '77');
INSERT INTO `crm_data_region` VALUES (2286, 199, ',1,199,2286,', 3, '巴吞他尼', 'Pathum Thani', 'batuntani', '13');
INSERT INTO `crm_data_region` VALUES (2287, 199, ',1,199,2287,', 3, '巴真', 'Prachin Buri', 'bazhen', '25');
INSERT INTO `crm_data_region` VALUES (2288, 199, ',1,199,2288,', 3, '北碧', 'Kanchanaburi', 'beibi', '71');
INSERT INTO `crm_data_region` VALUES (2289, 199, ',1,199,2289,', 3, '北标', 'Saraburi', 'beibiao', '19');
INSERT INTO `crm_data_region` VALUES (2290, 199, ',1,199,2290,', 3, '北大年', 'Pattani', 'beidanian', '94');
INSERT INTO `crm_data_region` VALUES (2291, 199, ',1,199,2291,', 3, '北揽', 'Samut Prakan', 'beilan', '11');
INSERT INTO `crm_data_region` VALUES (2292, 199, ',1,199,2292,', 3, '北榄坡', 'Nakhon Sawan', 'beipo', '60');
INSERT INTO `crm_data_region` VALUES (2293, 199, ',1,199,2293,', 3, '北柳', 'Chachoengsao', 'beiliu', '24');
INSERT INTO `crm_data_region` VALUES (2294, 199, ',1,199,2294,', 3, '碧差汶', 'Phetchabun', 'bicha', '76');
INSERT INTO `crm_data_region` VALUES (2295, 199, ',1,199,2295,', 3, '博达伦', 'Phatthalung', 'bodalun', '93');
INSERT INTO `crm_data_region` VALUES (2296, 199, ',1,199,2296,', 3, '猜那', 'Chai Nat', 'caina', '18');
INSERT INTO `crm_data_region` VALUES (2297, 199, ',1,199,2297,', 3, '猜也奔', 'Chaiyaphum', 'caiyeben', '36');
INSERT INTO `crm_data_region` VALUES (2298, 199, ',1,199,2298,', 3, '程逸', 'Uttaradit', 'chengyi', '53');
INSERT INTO `crm_data_region` VALUES (2299, 199, ',1,199,2299,', 3, '春蓬', 'Chumphon', 'chunpeng', '86');
INSERT INTO `crm_data_region` VALUES (2300, 199, ',1,199,2300,', 3, '春武里', 'Chon Buri', 'chunwuli', '20');
INSERT INTO `crm_data_region` VALUES (2301, 199, ',1,199,2301,', 3, '达', 'Tak', 'da', '63');
INSERT INTO `crm_data_region` VALUES (2302, 199, ',1,199,2302,', 3, '达叻', 'Trat', 'da', '23');
INSERT INTO `crm_data_region` VALUES (2303, 199, ',1,199,2303,', 3, '大城', 'Phra Nakhon Si Ayutthaya', 'dacheng', '14');
INSERT INTO `crm_data_region` VALUES (2304, 199, ',1,199,2304,', 3, '董里', 'Trang', 'dongli', '92');
INSERT INTO `crm_data_region` VALUES (2305, 199, ',1,199,2305,', 3, '佛丕', 'Phetchaburi', 'fo', '78');
INSERT INTO `crm_data_region` VALUES (2306, 199, ',1,199,2306,', 3, '佛统', 'Nakhon Pathom', 'fotong', '73');
INSERT INTO `crm_data_region` VALUES (2307, 199, ',1,199,2307,', 3, '甘烹碧', 'Kamphaeng Phet', 'ganpengbi', '62');
INSERT INTO `crm_data_region` VALUES (2308, 199, ',1,199,2308,', 3, '红统', 'Ang Thong', 'hongtong', '15');
INSERT INTO `crm_data_region` VALUES (2309, 199, ',1,199,2309,', 3, '华富里', 'Lop Buri', 'huafuli', '16');
INSERT INTO `crm_data_region` VALUES (2310, 199, ',1,199,2310,', 3, '加拉信', 'Kalasin', 'jialaxin', '46');
INSERT INTO `crm_data_region` VALUES (2311, 199, ',1,199,2311,', 3, '甲米', 'Krabi', 'jiami', '81');
INSERT INTO `crm_data_region` VALUES (2312, 199, ',1,199,2312,', 3, '尖竹汶', 'Chanthaburi', 'jianzhu', '22');
INSERT INTO `crm_data_region` VALUES (2313, 199, ',1,199,2313,', 3, '孔敬', 'Khon Kaen', 'kongjing', '40');
INSERT INTO `crm_data_region` VALUES (2314, 199, ',1,199,2314,', 3, '拉农', 'Rayong', 'lanong', '21');
INSERT INTO `crm_data_region` VALUES (2315, 199, ',1,199,2315,', 3, '廊开', 'Nong Khai', 'langkai', '43');
INSERT INTO `crm_data_region` VALUES (2316, 199, ',1,199,2316,', 3, '廊莫那浦', 'Nong Bua Lamphu', 'langmonapu', '39');
INSERT INTO `crm_data_region` VALUES (2317, 199, ',1,199,2317,', 3, '叻丕', 'Ratchaburi', '', '70');
INSERT INTO `crm_data_region` VALUES (2318, 199, ',1,199,2318,', 3, '黎', 'Loei', 'li', '42');
INSERT INTO `crm_data_region` VALUES (2319, 199, ',1,199,2319,', 3, '黎逸', 'Roi Et', 'liyi', '45');
INSERT INTO `crm_data_region` VALUES (2320, 199, ',1,199,2320,', 3, '龙仔厝', 'Samut Sakhon', 'longzi', '74');
INSERT INTO `crm_data_region` VALUES (2321, 199, ',1,199,2321,', 3, '罗勇', 'Ranong', 'luoyong', '85');
INSERT INTO `crm_data_region` VALUES (2322, 199, ',1,199,2322,', 3, '洛坤', 'Nakhon Si Thammarat', 'luokun', '80');
INSERT INTO `crm_data_region` VALUES (2323, 199, ',1,199,2323,', 3, '玛哈沙拉堪', 'Maha Sarakham', 'mahashalakan', '44');
INSERT INTO `crm_data_region` VALUES (2324, 199, ',1,199,2324,', 3, '曼谷', 'Bangkok', 'mangu', '10');
INSERT INTO `crm_data_region` VALUES (2325, 199, ',1,199,2325,', 3, '莫达汉', 'Mukdahan', 'modahan', '49');
INSERT INTO `crm_data_region` VALUES (2326, 199, ',1,199,2326,', 3, '那空那育', 'Nakhon Nayok', 'nakongnayu', '26');
INSERT INTO `crm_data_region` VALUES (2327, 199, ',1,199,2327,', 3, '那空帕农', 'Nakhon Phanom', 'nakongpanong', '48');
INSERT INTO `crm_data_region` VALUES (2328, 199, ',1,199,2328,', 3, '难', 'Nan', 'nan', '55');
INSERT INTO `crm_data_region` VALUES (2329, 199, ',1,199,2329,', 3, '南奔', 'Lamphun', 'nanben', '51');
INSERT INTO `crm_data_region` VALUES (2330, 199, ',1,199,2330,', 3, '暖武里', 'Nonthaburi', 'nuanwuli', '12');
INSERT INTO `crm_data_region` VALUES (2331, 199, ',1,199,2331,', 3, '帕', 'Phrae', 'pa', '54');
INSERT INTO `crm_data_region` VALUES (2332, 199, ',1,199,2332,', 3, '帕尧', 'Phayao', 'payao', '56');
INSERT INTO `crm_data_region` VALUES (2333, 199, ',1,199,2333,', 3, '攀牙', 'Phangnga', 'panya', '82');
INSERT INTO `crm_data_region` VALUES (2334, 199, ',1,199,2334,', 3, '彭世洛', 'Phitsanulok', 'pengshiluo', '65');
INSERT INTO `crm_data_region` VALUES (2335, 199, ',1,199,2335,', 3, '披集', 'Phichit', 'piji', '66');
INSERT INTO `crm_data_region` VALUES (2336, 199, ',1,199,2336,', 3, '普吉', 'Phuket', 'puji', '83');
INSERT INTO `crm_data_region` VALUES (2337, 199, ',1,199,2337,', 3, '清莱', 'Chiang Rai', 'qinglai', '57');
INSERT INTO `crm_data_region` VALUES (2338, 199, ',1,199,2338,', 3, '清迈', 'Chiang Mai', 'qingmai', '50');
INSERT INTO `crm_data_region` VALUES (2339, 199, ',1,199,2339,', 3, '色军', 'Sakon Nakhon', 'sejun', '47');
INSERT INTO `crm_data_region` VALUES (2340, 199, ',1,199,2340,', 3, '沙敦', 'Satun', 'shadun', '91');
INSERT INTO `crm_data_region` VALUES (2341, 199, ',1,199,2341,', 3, '沙缴', 'Sa Kaeo', 'shajiao', '27');
INSERT INTO `crm_data_region` VALUES (2342, 199, ',1,199,2342,', 3, '四色菊', 'Si sa ket', 'siseju', '33');
INSERT INTO `crm_data_region` VALUES (2343, 199, ',1,199,2343,', 3, '宋卡', 'Songkhla', 'songka', '90');
INSERT INTO `crm_data_region` VALUES (2344, 199, ',1,199,2344,', 3, '素可泰', 'Sukhothai', 'suketai', '64');
INSERT INTO `crm_data_region` VALUES (2345, 199, ',1,199,2345,', 3, '素叻', 'Surat Thani', 'su', '84');
INSERT INTO `crm_data_region` VALUES (2346, 199, ',1,199,2346,', 3, '素林', 'Surin', 'sulin', '32');
INSERT INTO `crm_data_region` VALUES (2347, 199, ',1,199,2347,', 3, '素攀武里', 'Suphan Buri', 'supanwuli', '72');
INSERT INTO `crm_data_region` VALUES (2348, 199, ',1,199,2348,', 3, '陶公', 'Narathiwat', 'taogong', '96');
INSERT INTO `crm_data_region` VALUES (2349, 199, ',1,199,2349,', 3, '乌隆', 'Udon Thani', 'wulong', '41');
INSERT INTO `crm_data_region` VALUES (2350, 199, ',1,199,2350,', 3, '乌泰他尼', 'Uthai Thani', 'wutaitani', '61');
INSERT INTO `crm_data_region` VALUES (2351, 199, ',1,199,2351,', 3, '乌汶', 'Ubon Ratchathani', 'wu', '34');
INSERT INTO `crm_data_region` VALUES (2352, 199, ',1,199,2352,', 3, '武里南', 'Buri Ram', 'wulinan', '31');
INSERT INTO `crm_data_region` VALUES (2353, 199, ',1,199,2353,', 3, '信武里', 'Sing Buri', 'xinwuli', '17');
INSERT INTO `crm_data_region` VALUES (2354, 199, ',1,199,2354,', 3, '耶梭通', 'Yasothon', 'yesuotong', '35');
INSERT INTO `crm_data_region` VALUES (2355, 199, ',1,199,2355,', 3, '也拉', 'Yala', 'yela', '95');
INSERT INTO `crm_data_region` VALUES (2356, 199, ',1,199,2356,', 3, '夜丰颂', 'Mae Hong Son', 'yefengsong', '58');
INSERT INTO `crm_data_region` VALUES (2357, 199, ',1,199,2357,', 3, '夜功', 'Samut Songkhram', 'yegong', '75');
INSERT INTO `crm_data_region` VALUES (2358, 200, ',3,200,2358,', 3, '阿鲁沙', 'Arusha', 'alusha', 'AR');
INSERT INTO `crm_data_region` VALUES (2359, 200, ',3,200,2359,', 3, '奔巴北', 'Kaskazini Pemba', 'benbabei', 'PN');
INSERT INTO `crm_data_region` VALUES (2360, 200, ',3,200,2360,', 3, '奔巴南', 'Kusini Pemba', 'benbanan', 'PS');
INSERT INTO `crm_data_region` VALUES (2361, 200, ',3,200,2361,', 3, '滨海', 'Pwani', 'binhai', 'PW');
INSERT INTO `crm_data_region` VALUES (2362, 200, ',3,200,2362,', 3, '达累斯萨拉姆', 'Dar es Salaam', 'daleisisalamu', 'DS');
INSERT INTO `crm_data_region` VALUES (2363, 200, ',3,200,2363,', 3, '多多马', 'Dodoma', 'duoduoma', 'DO');
INSERT INTO `crm_data_region` VALUES (2364, 200, ',3,200,2364,', 3, '基戈马', 'Kigoma', 'jigema', 'KI');
INSERT INTO `crm_data_region` VALUES (2365, 200, ',3,200,2365,', 3, '卡盖拉', 'Kagera', 'kagaila', 'KA');
INSERT INTO `crm_data_region` VALUES (2366, 200, ',3,200,2366,', 3, '林迪', 'Lindi', 'lindi', 'LN');
INSERT INTO `crm_data_region` VALUES (2367, 200, ',3,200,2367,', 3, '鲁夸', 'Rukwa', 'lukua', 'RK');
INSERT INTO `crm_data_region` VALUES (2368, 200, ',3,200,2368,', 3, '鲁伍马', 'Ruvuma', 'luwuma', 'RV');
INSERT INTO `crm_data_region` VALUES (2369, 200, ',3,200,2369,', 3, '马腊', 'Mara', 'mala', 'MR');
INSERT INTO `crm_data_region` VALUES (2370, 200, ',3,200,2370,', 3, '曼亚拉', 'Manyara', 'manyala', 'MY');
INSERT INTO `crm_data_region` VALUES (2371, 200, ',3,200,2371,', 3, '莫洛戈罗', 'Morogoro', 'moluogeluo', 'MO');
INSERT INTO `crm_data_region` VALUES (2372, 200, ',3,200,2372,', 3, '姆贝亚', 'Mbeya', 'mubeiya', 'MB');
INSERT INTO `crm_data_region` VALUES (2373, 200, ',3,200,2373,', 3, '姆特瓦拉', 'Mtwara', 'mutewala', 'MT');
INSERT INTO `crm_data_region` VALUES (2374, 200, ',3,200,2374,', 3, '姆万扎', 'Mwanza', 'muwanzha', 'MW');
INSERT INTO `crm_data_region` VALUES (2375, 200, ',3,200,2375,', 3, '乞力马扎罗', 'Kilimanjaro', 'qilimazhaluo', 'KJ');
INSERT INTO `crm_data_region` VALUES (2376, 200, ',3,200,2376,', 3, '桑给巴尔', 'Zanzibar', 'sanggeibaer', 'ZN');
INSERT INTO `crm_data_region` VALUES (2377, 200, ',3,200,2377,', 3, '桑给巴尔北', 'Kaskazini Unguja', 'sanggeibaerbei', 'UN');
INSERT INTO `crm_data_region` VALUES (2378, 200, ',3,200,2378,', 3, '桑给巴尔南', 'Kusini Unguja', 'sanggeibaernan', 'US');
INSERT INTO `crm_data_region` VALUES (2379, 200, ',3,200,2379,', 3, '桑给巴尔市和西', 'Mjini Magharibi', 'sanggeibaershihexi', 'MM');
INSERT INTO `crm_data_region` VALUES (2380, 200, ',3,200,2380,', 3, '塔波拉', 'Tabora', 'tabola', 'TB');
INSERT INTO `crm_data_region` VALUES (2381, 200, ',3,200,2381,', 3, '坦噶', 'Tanga', 'tanga', 'TN');
INSERT INTO `crm_data_region` VALUES (2382, 200, ',3,200,2382,', 3, '辛吉达', 'Singida', 'xinjida', 'SI');
INSERT INTO `crm_data_region` VALUES (2383, 200, ',3,200,2383,', 3, '欣延加', 'Shinyanga', 'xinyanjia', 'SH');
INSERT INTO `crm_data_region` VALUES (2384, 200, ',3,200,2384,', 3, '伊林加', 'Iringa', 'yilinjia', 'IR');
INSERT INTO `crm_data_region` VALUES (2385, 201, ',6,201,2385,', 3, '埃瓦', 'Eua', 'aiwa', 'E');
INSERT INTO `crm_data_region` VALUES (2386, 201, ',6,201,2386,', 3, '哈派', 'Haapai', 'hapai', 'H');
INSERT INTO `crm_data_region` VALUES (2387, 201, ',6,201,2387,', 3, '纽阿斯', 'Niuas', 'niuasi', 'N');
INSERT INTO `crm_data_region` VALUES (2388, 201, ',6,201,2388,', 3, '汤加塔布', 'Tongatapu', 'tangjiatabu', 'T');
INSERT INTO `crm_data_region` VALUES (2389, 201, ',6,201,2389,', 3, '瓦瓦乌', 'Vavau', 'wawawu', 'V');
INSERT INTO `crm_data_region` VALUES (2390, 205, ',3,205,2390,', 3, '艾尔亚奈', 'Ariana', 'aieryanai', 'AR');
INSERT INTO `crm_data_region` VALUES (2391, 205, ',3,205,2391,', 3, '巴杰', 'Beja', 'bajie', 'BJ');
INSERT INTO `crm_data_region` VALUES (2392, 205, ',3,205,2392,', 3, '本阿鲁斯', 'Ben Arous', 'benalusi', 'BA');
INSERT INTO `crm_data_region` VALUES (2393, 205, ',3,205,2393,', 3, '比塞大', 'Bizerte', 'bisaida', 'BI');
INSERT INTO `crm_data_region` VALUES (2394, 205, ',3,205,2394,', 3, '吉比利', 'Kebili', 'jibili', 'KB');
INSERT INTO `crm_data_region` VALUES (2395, 205, ',3,205,2395,', 3, '加贝斯', 'Gabes', 'jiabeisi', 'GB');
INSERT INTO `crm_data_region` VALUES (2396, 205, ',3,205,2396,', 3, '加夫萨', 'Gafsa', 'jiafusa', 'GF');
INSERT INTO `crm_data_region` VALUES (2397, 205, ',3,205,2397,', 3, '坚杜拜', 'Jendouba', 'jiandubai', 'JE');
INSERT INTO `crm_data_region` VALUES (2398, 205, ',3,205,2398,', 3, '卡夫', 'Le Kef', 'kafu', 'LK');
INSERT INTO `crm_data_region` VALUES (2399, 205, ',3,205,2399,', 3, '卡塞林', 'Kasserine', 'kasailin', 'KS');
INSERT INTO `crm_data_region` VALUES (2400, 205, ',3,205,2400,', 3, '凯鲁万', 'Kairouan', 'kailuwan', 'KR');
INSERT INTO `crm_data_region` VALUES (2401, 205, ',3,205,2401,', 3, '马赫迪耶', 'Mahdia', 'mahediye', 'MH');
INSERT INTO `crm_data_region` VALUES (2402, 205, ',3,205,2402,', 3, '马努巴', 'Manouba', 'manuba', 'MN');
INSERT INTO `crm_data_region` VALUES (2403, 205, ',3,205,2403,', 3, '梅德宁', 'Medenine', 'meidening', 'ME');
INSERT INTO `crm_data_region` VALUES (2404, 205, ',3,205,2404,', 3, '莫纳斯提尔', 'Monastir', 'monasitier', 'MO');
INSERT INTO `crm_data_region` VALUES (2405, 205, ',3,205,2405,', 3, '纳布勒', 'Nabeul', 'nabule', 'NA');
INSERT INTO `crm_data_region` VALUES (2406, 205, ',3,205,2406,', 3, '斯法克斯', 'Sfax', 'sifakesi', 'SF');
INSERT INTO `crm_data_region` VALUES (2407, 205, ',3,205,2407,', 3, '苏塞', 'Sousse', 'susai', 'SO');
INSERT INTO `crm_data_region` VALUES (2408, 205, ',3,205,2408,', 3, '泰塔温', 'Tataouine', 'taitawen', 'TA');
INSERT INTO `crm_data_region` VALUES (2409, 205, ',3,205,2409,', 3, '突尼斯', 'Tunis', 'tunisi', 'TU');
INSERT INTO `crm_data_region` VALUES (2410, 205, ',3,205,2410,', 3, '托泽尔', 'Tozeur', 'tuozeer', 'TO');
INSERT INTO `crm_data_region` VALUES (2411, 205, ',3,205,2411,', 3, '西迪布济德', 'Sidi Bouzid', 'xidibujide', 'SD');
INSERT INTO `crm_data_region` VALUES (2412, 205, ',3,205,2412,', 3, '锡勒亚奈', 'Siliana', 'xileyanai', 'SL');
INSERT INTO `crm_data_region` VALUES (2413, 205, ',3,205,2413,', 3, '宰格万', 'Zaghouan', 'zaigewan', 'ZA');
INSERT INTO `crm_data_region` VALUES (2414, 207, ',1,207,2414,', 3, '阿达纳', 'Adana', 'adana', 'ADA');
INSERT INTO `crm_data_region` VALUES (2415, 207, ',1,207,2415,', 3, '阿德亚曼', 'Adiyaman', 'adeyaman', 'ADI');
INSERT INTO `crm_data_region` VALUES (2416, 207, ',1,207,2416,', 3, '阿尔达罕', 'Ardahan', 'aerdahan', 'ARD');
INSERT INTO `crm_data_region` VALUES (2417, 207, ',1,207,2417,', 3, '阿尔特温', 'Artvin', 'aertewen', 'ART');
INSERT INTO `crm_data_region` VALUES (2418, 207, ',1,207,2418,', 3, '阿菲永', 'Afyon', 'afeiyong', 'AFY');
INSERT INTO `crm_data_region` VALUES (2419, 207, ',1,207,2419,', 3, '阿克萨赖', 'Aksaray', 'akesalai', 'AKS');
INSERT INTO `crm_data_region` VALUES (2420, 207, ',1,207,2420,', 3, '阿勒', 'Agri', 'ale', 'AGR');
INSERT INTO `crm_data_region` VALUES (2421, 207, ',1,207,2421,', 3, '阿马西亚', 'Amasya', 'amaxiya', 'AMA');
INSERT INTO `crm_data_region` VALUES (2422, 207, ',1,207,2422,', 3, '埃迪尔内', 'Edirne', 'aidiernei', 'EDI');
INSERT INTO `crm_data_region` VALUES (2423, 207, ',1,207,2423,', 3, '埃尔津詹', 'Erzincan', 'aierjinzhan', 'EZC');
INSERT INTO `crm_data_region` VALUES (2424, 207, ',1,207,2424,', 3, '埃尔祖鲁姆', 'Erzurum', 'aierzulumu', 'EZR');
INSERT INTO `crm_data_region` VALUES (2425, 207, ',1,207,2425,', 3, '埃拉泽', 'Elazig', 'ailaze', 'ELA');
INSERT INTO `crm_data_region` VALUES (2426, 207, ',1,207,2426,', 3, '埃斯基谢希尔', 'Eskisehir', 'aisijixiexier', 'ESK');
INSERT INTO `crm_data_region` VALUES (2427, 207, ',1,207,2427,', 3, '艾登', 'Aydin', 'aideng', 'AYI');
INSERT INTO `crm_data_region` VALUES (2428, 207, ',1,207,2428,', 3, '安卡拉', 'Ankara', 'ankala', 'ANK');
INSERT INTO `crm_data_region` VALUES (2429, 207, ',1,207,2429,', 3, '安塔利亚', 'Antalya', 'antaliya', 'ANT');
INSERT INTO `crm_data_region` VALUES (2430, 207, ',1,207,2430,', 3, '奥尔杜', 'Ordu', 'aoerdu', 'ORD');
INSERT INTO `crm_data_region` VALUES (2431, 207, ',1,207,2431,', 3, '巴尔腾', 'Bartin', 'baerteng', 'BAR');
INSERT INTO `crm_data_region` VALUES (2432, 207, ',1,207,2432,', 3, '巴勒克埃西尔', 'Balikesir', 'balekeaixier', 'BAL');
INSERT INTO `crm_data_region` VALUES (2433, 207, ',1,207,2433,', 3, '巴特曼', 'Batman', 'bateman', 'BAT');
INSERT INTO `crm_data_region` VALUES (2434, 207, ',1,207,2434,', 3, '巴伊布尔特', 'Bayburt', 'bayibuerte', 'BAY');
INSERT INTO `crm_data_region` VALUES (2435, 207, ',1,207,2435,', 3, '比莱吉克', 'Bilecik', 'bilaijike', 'BIL');
INSERT INTO `crm_data_region` VALUES (2436, 207, ',1,207,2436,', 3, '比特利斯', 'Bitlis', 'bitelisi', 'BIT');
INSERT INTO `crm_data_region` VALUES (2437, 207, ',1,207,2437,', 3, '宾格尔', 'Bingol', 'bingeer', 'BIN');
INSERT INTO `crm_data_region` VALUES (2438, 207, ',1,207,2438,', 3, '博卢', 'Bolu', 'bolu', 'BOL');
INSERT INTO `crm_data_region` VALUES (2439, 207, ',1,207,2439,', 3, '布尔杜尔', 'Burdur', 'buerduer', 'BRD');
INSERT INTO `crm_data_region` VALUES (2440, 207, ',1,207,2440,', 3, '布尔萨', 'Bursa', 'buersa', 'BRS');
INSERT INTO `crm_data_region` VALUES (2441, 207, ',1,207,2441,', 3, '昌克勒', 'Cankiri', 'changkele', 'CKR');
INSERT INTO `crm_data_region` VALUES (2442, 207, ',1,207,2442,', 3, '代尼兹利', 'Denizli', 'dainizili', 'DEN');
INSERT INTO `crm_data_region` VALUES (2443, 207, ',1,207,2443,', 3, '迪亚巴克尔', 'Diyarbakir', 'diyabakeer', 'DIY');
INSERT INTO `crm_data_region` VALUES (2444, 207, ',1,207,2444,', 3, '凡', 'Van', 'fan', 'VAN');
INSERT INTO `crm_data_region` VALUES (2445, 207, ',1,207,2445,', 3, '哈卡里', 'Hakkari', 'hakali', 'HKR');
INSERT INTO `crm_data_region` VALUES (2446, 207, ',1,207,2446,', 3, '哈塔伊', 'Hatay', 'hatayi', 'HTY');
INSERT INTO `crm_data_region` VALUES (2447, 207, ',1,207,2447,', 3, '基利斯', 'Kilis', 'jilisi', 'KLS');
INSERT INTO `crm_data_region` VALUES (2448, 207, ',1,207,2448,', 3, '吉雷松', 'Giresun', 'jileisong', 'GIR');
INSERT INTO `crm_data_region` VALUES (2449, 207, ',1,207,2449,', 3, '加济安泰普', 'Gaziantep', 'jiajiantaipu', 'GAZ');
INSERT INTO `crm_data_region` VALUES (2450, 207, ',1,207,2450,', 3, '居米什哈内', 'Gumushane', 'jumishihanei', 'GMS');
INSERT INTO `crm_data_region` VALUES (2451, 207, ',1,207,2451,', 3, '卡尔斯', 'Kars', 'kaersi', 'KRS');
INSERT INTO `crm_data_region` VALUES (2452, 207, ',1,207,2452,', 3, '卡赫拉曼马拉什', 'Kahraman Maras', 'kahelamanmalashi', 'KAH');
INSERT INTO `crm_data_region` VALUES (2453, 207, ',1,207,2453,', 3, '卡拉比克', 'Karabuk', 'kalabike', 'KRB');
INSERT INTO `crm_data_region` VALUES (2454, 207, ',1,207,2454,', 3, '卡拉曼', 'Karaman', 'kalaman', 'KRM');
INSERT INTO `crm_data_region` VALUES (2455, 207, ',1,207,2455,', 3, '卡斯塔莫努', 'Kastamonu', 'kasitamonu', 'KAS');
INSERT INTO `crm_data_region` VALUES (2456, 207, ',1,207,2456,', 3, '开塞利', 'Kayseri', 'kaisaili', 'KAY');
INSERT INTO `crm_data_region` VALUES (2457, 207, ',1,207,2457,', 3, '科贾埃利', 'Kocaeli', 'kejiaaili', 'KOC');
INSERT INTO `crm_data_region` VALUES (2458, 207, ',1,207,2458,', 3, '柯克拉雷利', 'Kirklareli', 'kekelaleili', 'KLR');
INSERT INTO `crm_data_region` VALUES (2459, 207, ',1,207,2459,', 3, '科尼亚', 'Konya', 'keniya', 'KON');
INSERT INTO `crm_data_region` VALUES (2460, 207, ',1,207,2460,', 3, '克尔谢希尔', 'Kirsehir', 'keerxiexier', 'KRH');
INSERT INTO `crm_data_region` VALUES (2461, 207, ',1,207,2461,', 3, '克勒克卡莱', 'Kirikkale', 'kelekekalai', 'KRK');
INSERT INTO `crm_data_region` VALUES (2462, 207, ',1,207,2462,', 3, '拉飞', 'Urfa', 'lafei', 'URF');
INSERT INTO `crm_data_region` VALUES (2463, 207, ',1,207,2463,', 3, '里泽', 'Rize', 'lize', 'RIZ');
INSERT INTO `crm_data_region` VALUES (2464, 207, ',1,207,2464,', 3, '马尔丁', 'Mardin', 'maerding', 'MAR');
INSERT INTO `crm_data_region` VALUES (2465, 207, ',1,207,2465,', 3, '马拉蒂亚', 'Malatya', 'maladiya', 'MAL');
INSERT INTO `crm_data_region` VALUES (2466, 207, ',1,207,2466,', 3, '马尼萨', 'Manisa', 'manisa', 'MAN');
INSERT INTO `crm_data_region` VALUES (2467, 207, ',1,207,2467,', 3, '穆拉', 'Mugla', 'mula', 'MUG');
INSERT INTO `crm_data_region` VALUES (2468, 207, ',1,207,2468,', 3, '穆什', 'Mus', 'mushi', 'MUS');
INSERT INTO `crm_data_region` VALUES (2469, 207, ',1,207,2469,', 3, '内夫谢希尔', 'Nevsehir', 'neifuxiexier', 'NEV');
INSERT INTO `crm_data_region` VALUES (2470, 207, ',1,207,2470,', 3, '尼代', 'Nigde', 'nidai', 'NIG');
INSERT INTO `crm_data_region` VALUES (2471, 207, ',1,207,2471,', 3, '恰纳卡莱', 'Canakkale', 'qianakalai', 'CKL');
INSERT INTO `crm_data_region` VALUES (2472, 207, ',1,207,2472,', 3, '乔鲁姆', 'Corum', 'qiaolumu', 'COR');
INSERT INTO `crm_data_region` VALUES (2473, 207, ',1,207,2473,', 3, '屈塔希亚', 'Kutahya', 'qutaxiya', 'KUT');
INSERT INTO `crm_data_region` VALUES (2474, 207, ',1,207,2474,', 3, '萨卡里亚', 'Sakarya', 'sakaliya', 'SAK');
INSERT INTO `crm_data_region` VALUES (2475, 207, ',1,207,2475,', 3, '萨姆松', 'Samsun', 'samusong', 'SAM');
INSERT INTO `crm_data_region` VALUES (2476, 207, ',1,207,2476,', 3, '泰基尔达', 'Tekirdag', 'taijierda', 'TEL');
INSERT INTO `crm_data_region` VALUES (2477, 207, ',1,207,2477,', 3, '特拉布宗', 'Trabzon', 'telabuzong', 'TRA');
INSERT INTO `crm_data_region` VALUES (2478, 207, ',1,207,2478,', 3, '通杰利', 'Tunceli', 'tongjieli', 'TUN');
INSERT INTO `crm_data_region` VALUES (2479, 207, ',1,207,2479,', 3, '托卡特', 'Tokat', 'tuokate', 'TOK');
INSERT INTO `crm_data_region` VALUES (2480, 207, ',1,207,2480,', 3, '乌萨克', 'Usak', 'wusake', 'USK');
INSERT INTO `crm_data_region` VALUES (2481, 207, ',1,207,2481,', 3, '锡尔纳克', 'Sirnak', 'xiernake', 'SIR');
INSERT INTO `crm_data_region` VALUES (2482, 207, ',1,207,2482,', 3, '锡尔特', 'Siirt', 'xierte', 'SII');
INSERT INTO `crm_data_region` VALUES (2483, 207, ',1,207,2483,', 3, '锡诺普', 'Sinop', 'xinuopu', 'SIN');
INSERT INTO `crm_data_region` VALUES (2484, 207, ',1,207,2484,', 3, '锡瓦斯', 'Sivas', 'xiwasi', 'SIV');
INSERT INTO `crm_data_region` VALUES (2485, 207, ',1,207,2485,', 3, '伊迪尔', 'Igdir', 'yidier', 'IGD');
INSERT INTO `crm_data_region` VALUES (2486, 207, ',1,207,2486,', 3, '伊切尔', 'Icel', 'yiqieer', 'ICE');
INSERT INTO `crm_data_region` VALUES (2487, 207, ',1,207,2487,', 3, '伊斯帕尔塔', 'Isparta', 'yisipaerta', 'ISP');
INSERT INTO `crm_data_region` VALUES (2488, 207, ',1,207,2488,', 3, '伊斯坦布尔', 'Istanbul', 'yisitanbuer', 'IST');
INSERT INTO `crm_data_region` VALUES (2489, 207, ',1,207,2489,', 3, '伊兹密尔', 'Izmir', 'yizimier', 'IZM');
INSERT INTO `crm_data_region` VALUES (2490, 207, ',1,207,2490,', 3, '约兹加特', 'Yozgat', 'yuezijiate', 'YOZ');
INSERT INTO `crm_data_region` VALUES (2491, 207, ',1,207,2491,', 3, '宗古尔达克', 'Zonguldak', 'zongguerdake', 'ZON');
INSERT INTO `crm_data_region` VALUES (2492, 208, ',1,208,2492,', 3, '阿哈尔', 'Ahal', 'ahaer', 'A');
INSERT INTO `crm_data_region` VALUES (2493, 208, ',1,208,2493,', 3, '阿什哈巴德市', 'Ashgabat', 'ashihabadeshi', 'ASB');
INSERT INTO `crm_data_region` VALUES (2494, 208, ',1,208,2494,', 3, '巴尔坎', 'Balkan', 'baerkan', 'B');
INSERT INTO `crm_data_region` VALUES (2495, 208, ',1,208,2495,', 3, '达沙古兹', 'Dashoguz', 'dashaguzi', 'D');
INSERT INTO `crm_data_region` VALUES (2496, 208, ',1,208,2496,', 3, '列巴普', 'Lebap', 'liebapu', 'L');
INSERT INTO `crm_data_region` VALUES (2497, 208, ',1,208,2497,', 3, '马雷', 'Mary', 'malei', 'M');
INSERT INTO `crm_data_region` VALUES (2498, 208, ',1,208,2498,', 3, '涅比特达格', 'Nebitdag', 'niebitedage', 'NEB');
INSERT INTO `crm_data_region` VALUES (2499, 211, ',6,211,2499,', 3, '马朗帕', 'Malampa', 'malangpa', 'MA');
INSERT INTO `crm_data_region` VALUES (2500, 211, ',6,211,2500,', 3, '彭纳马', 'Penama', 'pengnama', 'PE');
INSERT INTO `crm_data_region` VALUES (2501, 211, ',6,211,2501,', 3, '桑马', 'Sanma', 'sangma', 'SA');
INSERT INTO `crm_data_region` VALUES (2502, 211, ',6,211,2502,', 3, '塔菲阿', 'Tafea', 'tafeia', 'TA');
INSERT INTO `crm_data_region` VALUES (2503, 211, ',6,211,2503,', 3, '托尔巴', 'Torba', 'tuoerba', 'TO');
INSERT INTO `crm_data_region` VALUES (2504, 211, ',6,211,2504,', 3, '谢法', 'Shefa', 'xiefa', 'SH');
INSERT INTO `crm_data_region` VALUES (2505, 212, ',4,212,2505,', 3, '埃尔普罗格雷索', 'El Progreso', 'aierpuluogeleisuo', 'PR');
INSERT INTO `crm_data_region` VALUES (2506, 212, ',4,212,2506,', 3, '埃斯昆特拉', 'Escuintla', 'aisikuntela', 'ES');
INSERT INTO `crm_data_region` VALUES (2507, 212, ',4,212,2507,', 3, '哈拉帕', 'Jalapa', 'halapa', 'JA');
INSERT INTO `crm_data_region` VALUES (2508, 212, ',4,212,2508,', 3, '胡蒂亚帕', 'Jutiapa', 'hudiyapa', 'JU');
INSERT INTO `crm_data_region` VALUES (2509, 212, ',4,212,2509,', 3, '基切', 'Quiche', 'jiqie', 'QC');
INSERT INTO `crm_data_region` VALUES (2510, 212, ',4,212,2510,', 3, '克萨尔特南戈', 'Quetzaltenango', 'kesaertenange', 'QZ');
INSERT INTO `crm_data_region` VALUES (2511, 212, ',4,212,2511,', 3, '雷塔卢莱乌', 'Retalhuleu', 'leitalulaiwu', 'RE');
INSERT INTO `crm_data_region` VALUES (2512, 212, ',4,212,2512,', 3, '米克斯科', 'Mixco', 'mikesike', 'MIX');
INSERT INTO `crm_data_region` VALUES (2513, 212, ',4,212,2513,', 3, '佩滕', 'Peten', 'pei', 'PE');
INSERT INTO `crm_data_region` VALUES (2514, 212, ',4,212,2514,', 3, '奇基穆拉', 'Chiquimula', 'qijimula', 'CQ');
INSERT INTO `crm_data_region` VALUES (2515, 212, ',4,212,2515,', 3, '奇马尔特南戈', 'Chimaltenango', 'qimaertenange', 'CM');
INSERT INTO `crm_data_region` VALUES (2516, 212, ',4,212,2516,', 3, '萨卡帕', 'Zacapa', 'sakapa', 'ZA');
INSERT INTO `crm_data_region` VALUES (2517, 212, ',4,212,2517,', 3, '萨卡特佩克斯', 'Sacatepequez', 'sakatepeikesi', 'ST');
INSERT INTO `crm_data_region` VALUES (2518, 212, ',4,212,2518,', 3, '上韦拉帕斯', 'Alta Verapaz', 'shangweilapasi', 'AV');
INSERT INTO `crm_data_region` VALUES (2519, 212, ',4,212,2519,', 3, '圣罗莎', 'Santa Rosa', 'shengluosha', 'SR');
INSERT INTO `crm_data_region` VALUES (2520, 212, ',4,212,2520,', 3, '圣马科斯', 'San Marcos', 'shengmakesi', 'SM');
INSERT INTO `crm_data_region` VALUES (2521, 212, ',4,212,2521,', 3, '苏奇特佩克斯', 'Suchitepequez', 'suqitepeikesi', 'SU');
INSERT INTO `crm_data_region` VALUES (2522, 212, ',4,212,2522,', 3, '索洛拉', 'Solola', 'suoluola', 'SO');
INSERT INTO `crm_data_region` VALUES (2523, 212, ',4,212,2523,', 3, '托托尼卡潘', 'Totonicapan', 'tuotuonikapan', 'TO');
INSERT INTO `crm_data_region` VALUES (2524, 212, ',4,212,2524,', 3, '危地马拉', 'Guatemala', 'weidimala', 'GU');
INSERT INTO `crm_data_region` VALUES (2525, 212, ',4,212,2525,', 3, '韦韦特南戈', 'Huehuetenango', 'weiweitenange', 'HU');
INSERT INTO `crm_data_region` VALUES (2526, 212, ',4,212,2526,', 3, '下韦拉帕斯', 'Baja Verapaz', 'xiaweilapasi', 'BV');
INSERT INTO `crm_data_region` VALUES (2527, 212, ',4,212,2527,', 3, '新城', 'Villa Nueva', 'xincheng', 'VIN');
INSERT INTO `crm_data_region` VALUES (2528, 212, ',4,212,2528,', 3, '伊萨瓦尔', 'Izabal', 'yisawaer', 'IZ');
INSERT INTO `crm_data_region` VALUES (2529, 215, ',5,215,2529,', 3, '阿拉瓜', 'Aragua', 'alagua', 'D');
INSERT INTO `crm_data_region` VALUES (2530, 215, ',5,215,2530,', 3, '阿马库罗三角洲', 'Delta Amacuro', 'amakuluosanjiaozhou', 'Y');
INSERT INTO `crm_data_region` VALUES (2531, 215, ',5,215,2531,', 3, '阿普雷', 'Apure', 'apulei', 'C');
INSERT INTO `crm_data_region` VALUES (2532, 215, ',5,215,2532,', 3, '安索阿特吉', 'Anzoategui', 'ansuoateji', 'B');
INSERT INTO `crm_data_region` VALUES (2533, 215, ',5,215,2533,', 3, '巴里纳斯', 'Barinas', 'balinasi', 'E');
INSERT INTO `crm_data_region` VALUES (2534, 215, ',5,215,2534,', 3, '玻利瓦尔', 'Bolivar', 'boliwaer', 'F');
INSERT INTO `crm_data_region` VALUES (2535, 215, ',5,215,2535,', 3, '波图格萨', 'Portuguesa', 'botugesa', 'P');
INSERT INTO `crm_data_region` VALUES (2536, 215, ',5,215,2536,', 3, '法尔孔', 'Falcon', 'faerkong', 'I');
INSERT INTO `crm_data_region` VALUES (2537, 215, ',5,215,2537,', 3, '瓜里科', 'Guarico', 'gualike', 'J');
INSERT INTO `crm_data_region` VALUES (2538, 215, ',5,215,2538,', 3, '加拉加斯', 'Caracas', 'jialajiasi', 'A');
INSERT INTO `crm_data_region` VALUES (2539, 215, ',5,215,2539,', 3, '卡拉沃沃', 'Carabobo', 'kalawowo', 'G');
INSERT INTO `crm_data_region` VALUES (2540, 215, ',5,215,2540,', 3, '科赫德斯', 'Cojedes', 'kehedesi', 'H');
INSERT INTO `crm_data_region` VALUES (2541, 215, ',5,215,2541,', 3, '拉腊', 'Lara', 'lala', 'K');
INSERT INTO `crm_data_region` VALUES (2542, 215, ',5,215,2542,', 3, '联邦属地', 'Dependencias Federales', 'lianbangshudi', 'W');
INSERT INTO `crm_data_region` VALUES (2543, 215, ',5,215,2543,', 3, '梅里达', 'Merida', 'meilida', 'L');
INSERT INTO `crm_data_region` VALUES (2544, 215, ',5,215,2544,', 3, '米兰达', 'Miranda', 'milanda', 'M');
INSERT INTO `crm_data_region` VALUES (2545, 215, ',5,215,2545,', 3, '莫纳加斯', 'Monagas', 'monajiasi', 'N');
INSERT INTO `crm_data_region` VALUES (2546, 215, ',5,215,2546,', 3, '苏克雷', 'Sucre', 'sukelei', 'R');
INSERT INTO `crm_data_region` VALUES (2547, 215, ',5,215,2547,', 3, '苏利亚', 'Zulia', 'suliya', 'V');
INSERT INTO `crm_data_region` VALUES (2548, 215, ',5,215,2548,', 3, '塔奇拉', 'Tachira', 'taqila', 'S');
INSERT INTO `crm_data_region` VALUES (2549, 215, ',5,215,2549,', 3, '特鲁希略', 'Trujillo', 'teluxilue', 'T');
INSERT INTO `crm_data_region` VALUES (2550, 215, ',5,215,2550,', 3, '新埃斯帕塔', 'Estado Nueva Esparta', 'xinaisipata', 'O');
INSERT INTO `crm_data_region` VALUES (2551, 215, ',5,215,2551,', 3, '亚拉奎', 'Yaracuy', 'yalakui', 'U');
INSERT INTO `crm_data_region` VALUES (2552, 215, ',5,215,2552,', 3, '亚马孙', 'Amazonas', 'yamasun', 'Z');
INSERT INTO `crm_data_region` VALUES (2553, 217, ',3,217,2553,', 3, '阿鲁阿', 'Arua', 'alua', 'ARU');
INSERT INTO `crm_data_region` VALUES (2554, 217, ',3,217,2554,', 3, '阿帕克', 'Apac', 'apake', 'APC');
INSERT INTO `crm_data_region` VALUES (2555, 217, ',3,217,2555,', 3, '阿朱马尼', 'Adjumani', 'azhumani', 'ADJ');
INSERT INTO `crm_data_region` VALUES (2556, 217, ',3,217,2556,', 3, '本迪布焦', 'Bundibugyo', 'bendibujiao', 'BUN');
INSERT INTO `crm_data_region` VALUES (2557, 217, ',3,217,2557,', 3, '布吉里', 'Bugiri', 'bujili', 'BUG');
INSERT INTO `crm_data_region` VALUES (2558, 217, ',3,217,2558,', 3, '布西亚', 'Busia', 'buxiya', 'BUS');
INSERT INTO `crm_data_region` VALUES (2559, 217, ',3,217,2559,', 3, '布谢尼', 'Bushenyi', 'buxieni', 'BSH');
INSERT INTO `crm_data_region` VALUES (2560, 217, ',3,217,2560,', 3, '恩通加莫', 'Ntungamo', 'entongjiamo', 'NTU');
INSERT INTO `crm_data_region` VALUES (2561, 217, ',3,217,2561,', 3, '古卢', 'Gulu', 'gulu', 'GUL');
INSERT INTO `crm_data_region` VALUES (2562, 217, ',3,217,2562,', 3, '霍伊马', 'Hoima', 'huoyima', 'HOI');
INSERT INTO `crm_data_region` VALUES (2563, 217, ',3,217,2563,', 3, '基巴莱', 'Kibaale', 'jibalai', 'KBA');
INSERT INTO `crm_data_region` VALUES (2564, 217, ',3,217,2564,', 3, '基博加', 'Kiboga', 'jibojia', 'KIB');
INSERT INTO `crm_data_region` VALUES (2565, 217, ',3,217,2565,', 3, '基恩乔乔', 'Kyenjojo', 'jienqiaoqiao', 'KYE');
INSERT INTO `crm_data_region` VALUES (2566, 217, ',3,217,2566,', 3, '基索罗', 'Kisoro', 'jisuoluo', 'KIS');
INSERT INTO `crm_data_region` VALUES (2567, 217, ',3,217,2567,', 3, '基特古姆', 'Kitgum', 'jitegumu', 'KIT');
INSERT INTO `crm_data_region` VALUES (2568, 217, ',3,217,2568,', 3, '金贾', 'Jinja', 'jinjia', 'JIN');
INSERT INTO `crm_data_region` VALUES (2569, 217, ',3,217,2569,', 3, '卡巴莱', 'Kabale', 'kabalai', 'KBL');
INSERT INTO `crm_data_region` VALUES (2570, 217, ',3,217,2570,', 3, '卡巴罗莱', 'Kabarole', 'kabaluolai', 'KAR');
INSERT INTO `crm_data_region` VALUES (2571, 217, ',3,217,2571,', 3, '卡贝拉马伊多', 'Kaberamaido', 'kabeilamayiduo', 'KAB');
INSERT INTO `crm_data_region` VALUES (2572, 217, ',3,217,2572,', 3, '卡兰加拉', 'Kalangala', 'kalanjiala', 'KAL');
INSERT INTO `crm_data_region` VALUES (2573, 217, ',3,217,2573,', 3, '卡姆文盖', 'Kamwenge', 'kamuwengai', 'KAM');
INSERT INTO `crm_data_region` VALUES (2574, 217, ',3,217,2574,', 3, '卡穆利', 'Kamuli', 'kamuli', 'KML');
INSERT INTO `crm_data_region` VALUES (2575, 217, ',3,217,2575,', 3, '卡农古', 'Kanungu', 'kanonggu', 'KAN');
INSERT INTO `crm_data_region` VALUES (2576, 217, ',3,217,2576,', 3, '卡普乔鲁瓦', 'Kapchorwa', 'kapuqiaoluwa', 'KPC');
INSERT INTO `crm_data_region` VALUES (2577, 217, ',3,217,2577,', 3, '卡塞塞', 'Kasese', 'kasaisai', 'KAS');
INSERT INTO `crm_data_region` VALUES (2578, 217, ',3,217,2578,', 3, '卡塔奎', 'Katakwi', 'katakui', 'KTK');
INSERT INTO `crm_data_region` VALUES (2579, 217, ',3,217,2579,', 3, '卡永加', 'Kayunga', 'kayongjia', 'KAY');
INSERT INTO `crm_data_region` VALUES (2580, 217, ',3,217,2580,', 3, '坎帕拉', 'Kampala', 'kanpala', 'KMP');
INSERT INTO `crm_data_region` VALUES (2581, 217, ',3,217,2581,', 3, '科蒂多', 'Kotido', 'kediduo', 'KOT');
INSERT INTO `crm_data_region` VALUES (2582, 217, ',3,217,2582,', 3, '库米', 'Kumi', 'kumi', 'KUM');
INSERT INTO `crm_data_region` VALUES (2583, 217, ',3,217,2583,', 3, '拉卡伊', 'Rakai', 'lakayi', 'RAK');
INSERT INTO `crm_data_region` VALUES (2584, 217, ',3,217,2584,', 3, '利拉', 'Lira', 'lila', 'LIR');
INSERT INTO `crm_data_region` VALUES (2585, 217, ',3,217,2585,', 3, '卢韦罗', 'Luwero', 'luweiluo', 'LUW');
INSERT INTO `crm_data_region` VALUES (2586, 217, ',3,217,2586,', 3, '鲁昆吉里', 'Rukungiri', 'lukunjili', 'RUK');
INSERT INTO `crm_data_region` VALUES (2587, 217, ',3,217,2587,', 3, '马萨卡', 'Masaka', 'masaka', 'MAS');
INSERT INTO `crm_data_region` VALUES (2588, 217, ',3,217,2588,', 3, '马辛迪', 'Masindi', 'maxindi', 'MSN');
INSERT INTO `crm_data_region` VALUES (2589, 217, ',3,217,2589,', 3, '马尤盖', 'Mayuge', 'mayougai', 'MAY');
INSERT INTO `crm_data_region` VALUES (2590, 217, ',3,217,2590,', 3, '莫罗托', 'Moroto', 'moluotuo', 'MRT');
INSERT INTO `crm_data_region` VALUES (2591, 217, ',3,217,2591,', 3, '莫约', 'Moyo', 'moyue', 'MOY');
INSERT INTO `crm_data_region` VALUES (2592, 217, ',3,217,2592,', 3, '姆巴拉拉', 'Mbarara', 'mubalala', 'MBR');
INSERT INTO `crm_data_region` VALUES (2593, 217, ',3,217,2593,', 3, '姆巴莱', 'Mbale', 'mubalai', 'MBA');
INSERT INTO `crm_data_region` VALUES (2594, 217, ',3,217,2594,', 3, '姆皮吉', 'Mpigi', 'mupiji', 'MPI');
INSERT INTO `crm_data_region` VALUES (2595, 217, ',3,217,2595,', 3, '穆本德', 'Mubende', 'mubende', 'MUB');
INSERT INTO `crm_data_region` VALUES (2596, 217, ',3,217,2596,', 3, '穆科诺', 'Mukono', 'mukenuo', 'MUK');
INSERT INTO `crm_data_region` VALUES (2597, 217, ',3,217,2597,', 3, '纳卡皮里皮里特', 'Nakapiripirit', 'nakapilipilite', 'NAK');
INSERT INTO `crm_data_region` VALUES (2598, 217, ',3,217,2598,', 3, '纳卡松戈拉', 'Nakasongola', 'nakasonggela', 'NKS');
INSERT INTO `crm_data_region` VALUES (2599, 217, ',3,217,2599,', 3, '内比', 'Nebbi', 'neibi', 'NEB');
INSERT INTO `crm_data_region` VALUES (2600, 217, ',3,217,2600,', 3, '帕德尔', 'Pader', 'padeer', 'PAD');
INSERT INTO `crm_data_region` VALUES (2601, 217, ',3,217,2601,', 3, '帕利萨', 'Pallisa', 'palisa', 'PAL');
INSERT INTO `crm_data_region` VALUES (2602, 217, ',3,217,2602,', 3, '森巴布莱', 'Sembabule', 'senbabulai', 'SEM');
INSERT INTO `crm_data_region` VALUES (2603, 217, ',3,217,2603,', 3, '索罗提', 'Soroti', 'suoluoti', 'SOR');
INSERT INTO `crm_data_region` VALUES (2604, 217, ',3,217,2604,', 3, '托罗罗', 'Tororo', 'tuoluoluo', 'TOR');
INSERT INTO `crm_data_region` VALUES (2605, 217, ',3,217,2605,', 3, '瓦基索', 'Wakiso', 'wajisuo', 'WAK');
INSERT INTO `crm_data_region` VALUES (2606, 217, ',3,217,2606,', 3, '锡龙科', 'Sironko', 'xilongke', 'SIR');
INSERT INTO `crm_data_region` VALUES (2607, 217, ',3,217,2607,', 3, '伊甘加', 'Iganga', 'yiganjia', 'IGA');
INSERT INTO `crm_data_region` VALUES (2608, 217, ',3,217,2608,', 3, '永贝', 'Yumbe', 'yongbei', 'YUM');
INSERT INTO `crm_data_region` VALUES (2609, 218, ',2,218,2609,', 3, '敖德萨', 'Odessa', 'aodesa', '51');
INSERT INTO `crm_data_region` VALUES (2610, 218, ',2,218,2610,', 3, '波尔塔瓦', 'Poltava', 'boertawa', '53');
INSERT INTO `crm_data_region` VALUES (2611, 218, ',2,218,2611,', 3, '第聂伯罗波得罗夫斯克', 'Dnipropetrovsk', 'dinieboluobodeluofusike', '12');
INSERT INTO `crm_data_region` VALUES (2612, 218, ',2,218,2612,', 3, '顿涅茨克', 'Donetsk', 'dunniecike', '14');
INSERT INTO `crm_data_region` VALUES (2613, 218, ',2,218,2613,', 3, '哈尔科夫', 'Kharkiv', 'haerkefu', '63');
INSERT INTO `crm_data_region` VALUES (2614, 218, ',2,218,2614,', 3, '赫尔松州', 'Khersonsrka', 'heersongzhou', '65');
INSERT INTO `crm_data_region` VALUES (2615, 218, ',2,218,2615,', 3, '赫梅利尼茨基', 'Khmelnytsky', 'hemeiliniciji', '68');
INSERT INTO `crm_data_region` VALUES (2616, 218, ',2,218,2616,', 3, '基辅', 'Kyiv', 'jifu', '30');
INSERT INTO `crm_data_region` VALUES (2617, 218, ',2,218,2617,', 3, '基洛夫格勒', 'Kirovohrad', 'jiluofugele', '35');
INSERT INTO `crm_data_region` VALUES (2618, 218, ',2,218,2618,', 3, '捷尔诺波尔', 'Ternopil', 'jieernuoboer', '61');
INSERT INTO `crm_data_region` VALUES (2619, 218, ',2,218,2619,', 3, '克里米亚自治共和国', 'Respublika Krym', 'kelimiyazizhigongheguo', '43');
INSERT INTO `crm_data_region` VALUES (2620, 218, ',2,218,2620,', 3, '利沃夫', 'Lviv', 'liwofu', '46');
INSERT INTO `crm_data_region` VALUES (2621, 218, ',2,218,2621,', 3, '卢甘斯克', 'Luhansk', 'lugansike', '9');
INSERT INTO `crm_data_region` VALUES (2622, 218, ',2,218,2622,', 3, '罗夫诺', 'Rivne', 'luofunuo', '56');
INSERT INTO `crm_data_region` VALUES (2623, 218, ',2,218,2623,', 3, '尼古拉耶夫', 'Mykolayiv', 'nigulayefu', '48');
INSERT INTO `crm_data_region` VALUES (2624, 218, ',2,218,2624,', 3, '切尔卡瑟', 'Cherkasy', 'qieerkase', '71');
INSERT INTO `crm_data_region` VALUES (2625, 218, ',2,218,2625,', 3, '切尔尼戈夫', 'Chernihiv', 'qieernigefu', '74');
INSERT INTO `crm_data_region` VALUES (2626, 218, ',2,218,2626,', 3, '切尔诺夫策', 'Chernivtsi', 'qieernuofuce', '77');
INSERT INTO `crm_data_region` VALUES (2627, 218, ',2,218,2627,', 3, '日托米尔', 'Zhytomyr', 'rituomier', '18');
INSERT INTO `crm_data_region` VALUES (2628, 218, ',2,218,2628,', 3, '苏梅', 'Sumy', 'sumei', '59');
INSERT INTO `crm_data_region` VALUES (2629, 218, ',2,218,2629,', 3, '外喀尔巴阡', 'Zakarpatska', 'waikaerba', '21');
INSERT INTO `crm_data_region` VALUES (2630, 218, ',2,218,2630,', 3, '文尼察', 'Vinnytsya', 'wennicha', '5');
INSERT INTO `crm_data_region` VALUES (2631, 218, ',2,218,2631,', 3, '沃伦', 'Volyn', 'wolun', '7');
INSERT INTO `crm_data_region` VALUES (2632, 218, ',2,218,2632,', 3, '伊万－弗兰科夫州', 'Ivano-Frankivsk', 'yiwanfulankefuzhou', '26');
INSERT INTO `crm_data_region` VALUES (2633, 218, ',2,218,2633,', 3, '扎波罗热', 'Zaporizhzhya', 'zhaboluore', '23');
INSERT INTO `crm_data_region` VALUES (2634, 219, ',5,219,2634,', 3, '阿蒂加斯', 'Artigas', 'adijiasi', 'AR');
INSERT INTO `crm_data_region` VALUES (2635, 219, ',5,219,2635,', 3, '杜拉斯诺', 'Durazno', 'dulasinuo', 'DU');
INSERT INTO `crm_data_region` VALUES (2636, 219, ',5,219,2636,', 3, '佛罗里达', 'Florida', 'foluolida', 'FA');
INSERT INTO `crm_data_region` VALUES (2637, 219, ',5,219,2637,', 3, '弗洛雷斯', 'Flores', 'fuluoleisi', 'FS');
INSERT INTO `crm_data_region` VALUES (2638, 219, ',5,219,2638,', 3, '卡内洛内斯', 'Canelones', 'kaneiluoneisi', 'CA');
INSERT INTO `crm_data_region` VALUES (2639, 219, ',5,219,2639,', 3, '科洛尼亚', 'Colonia', 'keluoniya', 'CO');
INSERT INTO `crm_data_region` VALUES (2640, 219, ',5,219,2640,', 3, '拉瓦耶哈', 'Lavalleja', 'lawayeha', 'LA');
INSERT INTO `crm_data_region` VALUES (2641, 219, ',5,219,2641,', 3, '里韦拉', 'Rivera', 'liweila', 'RV');
INSERT INTO `crm_data_region` VALUES (2642, 219, ',5,219,2642,', 3, '罗恰', 'Rocha', 'luoqia', 'RO');
INSERT INTO `crm_data_region` VALUES (2643, 219, ',5,219,2643,', 3, '马尔多纳多', 'Maldonado', 'maerduonaduo', 'MA');
INSERT INTO `crm_data_region` VALUES (2644, 219, ',5,219,2644,', 3, '蒙得维的亚', 'Montevideo', 'mengdeweideya', 'MO');
INSERT INTO `crm_data_region` VALUES (2645, 219, ',5,219,2645,', 3, '内格罗河', 'Rio Negro', 'neigeluohe', 'RN');
INSERT INTO `crm_data_region` VALUES (2646, 219, ',5,219,2646,', 3, '派桑杜', 'Paysandu', 'paisangdu', 'PA');
INSERT INTO `crm_data_region` VALUES (2647, 219, ',5,219,2647,', 3, '萨尔托', 'Salto', 'saertuo', 'SL');
INSERT INTO `crm_data_region` VALUES (2648, 219, ',5,219,2648,', 3, '塞罗拉尔戈', 'Cerro Largo', 'sailuolaerge', 'CL');
INSERT INTO `crm_data_region` VALUES (2649, 219, ',5,219,2649,', 3, '三十三人', 'Treinta y Tres', 'sanshisanren', 'TT');
INSERT INTO `crm_data_region` VALUES (2650, 219, ',5,219,2650,', 3, '圣何塞', 'San Jose', 'shenghesai', 'SJ');
INSERT INTO `crm_data_region` VALUES (2651, 219, ',5,219,2651,', 3, '索里亚诺', 'Soriano', 'suoliyanuo', 'SO');
INSERT INTO `crm_data_region` VALUES (2652, 219, ',5,219,2652,', 3, '塔夸伦博', 'Tacuarembo', 'takualunbo', 'TAW');
INSERT INTO `crm_data_region` VALUES (2653, 220, ',1,220,2653,', 3, '安集延', 'Andijon', 'anjiyan', 'AN');
INSERT INTO `crm_data_region` VALUES (2654, 220, ',1,220,2654,', 3, '布哈拉', 'Buxoro', 'buhala', 'BU');
INSERT INTO `crm_data_region` VALUES (2655, 220, ',1,220,2655,', 3, '费尔干纳', 'Fargona', 'feierganna', 'FA');
INSERT INTO `crm_data_region` VALUES (2656, 220, ',1,220,2656,', 3, '花拉子模', 'Xorazm', 'hualazimo', 'XO');
INSERT INTO `crm_data_region` VALUES (2657, 220, ',1,220,2657,', 3, '吉扎克', 'Jizzax', 'jizhake', 'JI');
INSERT INTO `crm_data_region` VALUES (2658, 220, ',1,220,2658,', 3, '卡拉卡尔帕克斯坦共和国', 'Qoraqalpogiston', 'kalakaerpakesitangongheguo', 'QR');
INSERT INTO `crm_data_region` VALUES (2659, 220, ',1,220,2659,', 3, '卡什卡达里亚', 'Qasqadaryo', 'kashikadaliya', 'QA');
INSERT INTO `crm_data_region` VALUES (2660, 220, ',1,220,2660,', 3, '纳曼干', 'Namangan', 'namangan', 'NG');
INSERT INTO `crm_data_region` VALUES (2661, 220, ',1,220,2661,', 3, '纳沃伊', 'Navoiy', 'nawoyi', 'NW');
INSERT INTO `crm_data_region` VALUES (2662, 220, ',1,220,2662,', 3, '撒马尔罕', 'Samarqand', 'samaerhan', 'SA');
INSERT INTO `crm_data_region` VALUES (2663, 220, ',1,220,2663,', 3, '苏尔汉河', 'Surxondaryo', 'suerhanhe', 'SU');
INSERT INTO `crm_data_region` VALUES (2664, 220, ',1,220,2664,', 3, '塔什干', 'Toshkent', 'tashigan', 'TK');
INSERT INTO `crm_data_region` VALUES (2665, 220, ',1,220,2665,', 3, '塔什干市', 'Toshkent Shahri', 'tashiganshi', 'TO');
INSERT INTO `crm_data_region` VALUES (2666, 220, ',1,220,2666,', 3, '锡尔河', 'Sirdaryo', 'xierhe', 'SI');
INSERT INTO `crm_data_region` VALUES (2667, 221, ',2,221,2667,', 3, '阿尔梅里亚', 'Almeria', 'aermeiliya', 'LEI');
INSERT INTO `crm_data_region` VALUES (2668, 221, ',2,221,2668,', 3, '阿尔瓦塞特', 'Albacete', 'aerwasaite', 'ALB');
INSERT INTO `crm_data_region` VALUES (2669, 221, ',2,221,2669,', 3, '阿拉瓦', 'Alava', 'alawa', 'ALA');
INSERT INTO `crm_data_region` VALUES (2670, 221, ',2,221,2670,', 3, '阿利坎特', 'Alicante', 'alikante', 'ALC');
INSERT INTO `crm_data_region` VALUES (2671, 221, ',2,221,2671,', 3, '阿斯图利亚斯', 'Asturias', 'asituliyasi', 'AST');
INSERT INTO `crm_data_region` VALUES (2672, 221, ',2,221,2672,', 3, '阿维拉', 'Avila', 'aweila', 'AVI');
INSERT INTO `crm_data_region` VALUES (2673, 221, ',2,221,2673,', 3, '奥伦塞', 'Orense', 'aolunsai', 'ORE');
INSERT INTO `crm_data_region` VALUES (2674, 221, ',2,221,2674,', 3, '巴达霍斯', 'Badajoz', 'badahuosi', 'BJZ');
INSERT INTO `crm_data_region` VALUES (2675, 221, ',2,221,2675,', 3, '巴利阿里', 'Baleares', 'baliali', 'BLR');
INSERT INTO `crm_data_region` VALUES (2676, 221, ',2,221,2676,', 3, '巴利亚多利德', 'Valladolid', 'baliyaduolide', 'VLL');
INSERT INTO `crm_data_region` VALUES (2677, 221, ',2,221,2677,', 3, '巴伦西亚', 'Valencia', 'balunxiya', 'VLC');
INSERT INTO `crm_data_region` VALUES (2678, 221, ',2,221,2678,', 3, '巴塞罗那', 'Barcelona', 'basailuona', 'BCN');
INSERT INTO `crm_data_region` VALUES (2679, 221, ',2,221,2679,', 3, '比斯开', 'Vizcaya', 'bisikai', 'VSE');
INSERT INTO `crm_data_region` VALUES (2680, 221, ',2,221,2680,', 3, '布尔戈斯', 'Burgos', 'buergesi', 'BUR');
INSERT INTO `crm_data_region` VALUES (2681, 221, ',2,221,2681,', 3, '格拉纳达', 'Granada', 'gelanada', 'GRX');
INSERT INTO `crm_data_region` VALUES (2682, 221, ',2,221,2682,', 3, '瓜达拉哈拉', 'Guadalajara', 'guadalahala', 'GUA');
INSERT INTO `crm_data_region` VALUES (2683, 221, ',2,221,2683,', 3, '哈恩', 'Jaen', 'haen', 'JAE');
INSERT INTO `crm_data_region` VALUES (2684, 221, ',2,221,2684,', 3, '赫罗纳', 'Gerona', 'heluona', 'GRO');
INSERT INTO `crm_data_region` VALUES (2685, 221, ',2,221,2685,', 3, '吉普斯夸', 'Guipuzcoa', 'jipusikua', 'GUI');
INSERT INTO `crm_data_region` VALUES (2686, 221, ',2,221,2686,', 3, '加的斯', 'Cadiz', 'jiadesi', 'CAD');
INSERT INTO `crm_data_region` VALUES (2687, 221, ',2,221,2687,', 3, '卡塞雷斯', 'Caceres', 'kasaileisi', 'CCS');
INSERT INTO `crm_data_region` VALUES (2688, 221, ',2,221,2688,', 3, '卡斯蒂利亚', 'Cludad Real', 'kasidiliya', 'CIR');
INSERT INTO `crm_data_region` VALUES (2689, 221, ',2,221,2689,', 3, '卡斯特利翁', 'Castellon', 'kasiteliweng', 'CAS');
INSERT INTO `crm_data_region` VALUES (2690, 221, ',2,221,2690,', 3, '科尔多瓦', 'Cordoba', 'keerduowa', 'ODB');
INSERT INTO `crm_data_region` VALUES (2691, 221, ',2,221,2691,', 3, '昆卡', 'Cuenca', 'kunka', 'CUE');
INSERT INTO `crm_data_region` VALUES (2692, 221, ',2,221,2692,', 3, '拉科鲁尼亚', 'La Coruna', 'lakeluniya', 'LCG');
INSERT INTO `crm_data_region` VALUES (2693, 221, ',2,221,2693,', 3, '拉里奥哈', 'La Rioja', 'laliaoha', 'ARL');
INSERT INTO `crm_data_region` VALUES (2694, 221, ',2,221,2694,', 3, '拉斯帕尔马斯', 'Las Palmas', 'lasipaermasi', 'LPA');
INSERT INTO `crm_data_region` VALUES (2695, 221, ',2,221,2695,', 3, '莱昂', 'Leon', 'laiang', 'LEN');
INSERT INTO `crm_data_region` VALUES (2696, 221, ',2,221,2696,', 3, '莱里达', 'Lleida', 'lailida', 'LLE');
INSERT INTO `crm_data_region` VALUES (2697, 221, ',2,221,2697,', 3, '卢戈', 'Provincia de Lugo', 'luge', 'LGO');
INSERT INTO `crm_data_region` VALUES (2698, 221, ',2,221,2698,', 3, '马德里', 'Madrid', 'madeli', 'MAD');
INSERT INTO `crm_data_region` VALUES (2699, 221, ',2,221,2699,', 3, '马拉加', 'Malaga', 'malajia', 'AGP');
INSERT INTO `crm_data_region` VALUES (2700, 221, ',2,221,2700,', 3, '穆尔西亚', 'Murcia', 'muerxiya', 'MJV');
INSERT INTO `crm_data_region` VALUES (2701, 221, ',2,221,2701,', 3, '纳瓦拉', 'Navarra', 'nawala', 'NVV');
INSERT INTO `crm_data_region` VALUES (2702, 221, ',2,221,2702,', 3, '帕伦西亚', 'Palencia', 'palunxiya', 'PAC');
INSERT INTO `crm_data_region` VALUES (2703, 221, ',2,221,2703,', 3, '蓬特韦德拉', 'Provincia de Pontevedra', 'pengteweidela', 'PEV');
INSERT INTO `crm_data_region` VALUES (2704, 221, ',2,221,2704,', 3, '萨拉戈萨', 'Zaragoza', 'salagesa', 'ZAZ');
INSERT INTO `crm_data_region` VALUES (2705, 221, ',2,221,2705,', 3, '萨拉曼卡', 'Salamanca', 'salamanka', 'SLM');
INSERT INTO `crm_data_region` VALUES (2706, 221, ',2,221,2706,', 3, '萨莫拉', 'Zamora', 'samola', 'ZMR');
INSERT INTO `crm_data_region` VALUES (2707, 221, ',2,221,2707,', 3, '塞哥维亚', 'Segovia', 'saigeweiya', 'SEG');
INSERT INTO `crm_data_region` VALUES (2708, 221, ',2,221,2708,', 3, '塞维利亚', 'Sevilla', 'saiweiliya', 'SVQ');
INSERT INTO `crm_data_region` VALUES (2709, 221, ',2,221,2709,', 3, '桑坦德', 'Santander', 'sangtande', 'SDR');
INSERT INTO `crm_data_region` VALUES (2710, 221, ',2,221,2710,', 3, '圣克鲁斯-德特内里费', 'Santa Cruz de Tenerife', 'shengkelusideteneilifei', 'SCT');
INSERT INTO `crm_data_region` VALUES (2711, 221, ',2,221,2711,', 3, '索里亚', 'Soria', 'suoliya', 'SOR');
INSERT INTO `crm_data_region` VALUES (2712, 221, ',2,221,2712,', 3, '塔拉戈纳', 'Tarragona', 'talagena', 'TAR');
INSERT INTO `crm_data_region` VALUES (2713, 221, ',2,221,2713,', 3, '特鲁埃尔', 'Teruel', 'teluaier', 'TER');
INSERT INTO `crm_data_region` VALUES (2714, 221, ',2,221,2714,', 3, '托莱多', 'Toledo', 'tuolaiduo', 'TOL');
INSERT INTO `crm_data_region` VALUES (2715, 221, ',2,221,2715,', 3, '韦尔瓦', 'Huelva', 'weierwa', 'HUV');
INSERT INTO `crm_data_region` VALUES (2716, 221, ',2,221,2716,', 3, '韦斯卡', 'Huesca', 'weisika', 'HUC');
INSERT INTO `crm_data_region` VALUES (2717, 222, ',2,222,2717,', 3, '比雷埃夫斯', 'Peiraievs', 'bileiaifusi', 'PRI');
INSERT INTO `crm_data_region` VALUES (2718, 222, ',2,222,2718,', 3, '多德卡尼斯', 'Dodecanese', 'duodekanisi', 'DO');
INSERT INTO `crm_data_region` VALUES (2719, 222, ',2,222,2719,', 3, '干尼亚', 'Chanion', 'ganniya', 'CHQ');
INSERT INTO `crm_data_region` VALUES (2720, 222, ',2,222,2720,', 3, '基克拉迪', 'Cyclades', 'jikeladi', 'CY');
INSERT INTO `crm_data_region` VALUES (2721, 222, ',2,222,2721,', 3, '拉西锡', 'Lasithiou', 'laxixi', 'LST');
INSERT INTO `crm_data_region` VALUES (2722, 222, ',2,222,2722,', 3, '莱斯博斯', 'Lesbos', 'laisibosi', 'LES');
INSERT INTO `crm_data_region` VALUES (2723, 222, ',2,222,2723,', 3, '雷西姆农', 'Rethymnis', 'leiximunong', 'RET');
INSERT INTO `crm_data_region` VALUES (2724, 222, ',2,222,2724,', 3, '萨摩斯', 'Samos', 'samosi', 'SMI');
INSERT INTO `crm_data_region` VALUES (2725, 222, ',2,222,2725,', 3, '雅典', 'Athens', 'yadian', 'ATH');
INSERT INTO `crm_data_region` VALUES (2726, 222, ',2,222,2726,', 3, '伊拉克里翁', 'Irakleiou', 'yilakeliweng', 'HER');
INSERT INTO `crm_data_region` VALUES (2727, 225, ',6,225,2727,', 3, '奥克兰', 'Auckland', 'aokelan', 'AUK');
INSERT INTO `crm_data_region` VALUES (2728, 225, ',6,225,2728,', 3, '北岸', 'North Shore', 'beian', 'NSH');
INSERT INTO `crm_data_region` VALUES (2729, 225, ',6,225,2729,', 3, '北帕默斯顿', 'Palmerston North', 'beipamosidun', 'PMR');
INSERT INTO `crm_data_region` VALUES (2730, 225, ',6,225,2730,', 3, '北远', 'Far North', 'beiyuan', 'FNR');
INSERT INTO `crm_data_region` VALUES (2731, 225, ',6,225,2731,', 3, '布莱尼姆', 'Blenheim', 'bulainimu', 'BHE');
INSERT INTO `crm_data_region` VALUES (2732, 225, ',6,225,2732,', 3, '达尼丁', 'Dunedin', 'daniding', 'DUD');
INSERT INTO `crm_data_region` VALUES (2733, 225, ',6,225,2733,', 3, '格雷茅斯', 'Greymouth', 'geleimaosi', 'GMN');
INSERT INTO `crm_data_region` VALUES (2734, 225, ',6,225,2734,', 3, '哈密尔顿', 'Hamilton', 'hamierdun', 'HLZ');
INSERT INTO `crm_data_region` VALUES (2735, 225, ',6,225,2735,', 3, '黑斯廷斯', 'Hastings', 'heisitingsi', 'HAS');
INSERT INTO `crm_data_region` VALUES (2736, 225, ',6,225,2736,', 3, '怀塔科拉', 'Waitakere', 'huaitakela', 'WAE');
INSERT INTO `crm_data_region` VALUES (2737, 225, ',6,225,2737,', 3, '吉斯伯恩', 'Gisborne', 'jisiboen', 'GIS');
INSERT INTO `crm_data_region` VALUES (2738, 225, ',6,225,2738,', 3, '凯帕拉', 'Kaipara', 'kaipala', 'KAI');
INSERT INTO `crm_data_region` VALUES (2739, 225, ',6,225,2739,', 3, '克赖斯特彻奇', 'Christchurch', 'kelaisitecheqi', 'CHC');
INSERT INTO `crm_data_region` VALUES (2740, 225, ',6,225,2740,', 3, '里士满', 'Richmond', 'lishiman', 'RMD');
INSERT INTO `crm_data_region` VALUES (2741, 225, ',6,225,2741,', 3, '马努考', 'Manukau', 'manukao', 'MNK');
INSERT INTO `crm_data_region` VALUES (2742, 225, ',6,225,2742,', 3, '纳尔逊', 'Nelson', 'naerxun', 'NSN');
INSERT INTO `crm_data_region` VALUES (2743, 225, ',6,225,2743,', 3, '内皮尔', 'Napier', 'neipier', 'NPE');
INSERT INTO `crm_data_region` VALUES (2744, 225, ',6,225,2744,', 3, '斯特拉特福德', 'Stratford', 'sitelatefude', 'STR');
INSERT INTO `crm_data_region` VALUES (2745, 225, ',6,225,2745,', 3, '陶马鲁努伊', 'Taumarunui', 'taomalunuyi', 'TAU');
INSERT INTO `crm_data_region` VALUES (2746, 225, ',6,225,2746,', 3, '瓦卡塔尼', 'Whakatane', 'wakatani', 'WHK');
INSERT INTO `crm_data_region` VALUES (2747, 225, ',6,225,2747,', 3, '旺阿雷', 'Whangarei', 'wangalei', 'WRE');
INSERT INTO `crm_data_region` VALUES (2748, 225, ',6,225,2748,', 3, '旺格努伊', 'Wanganui', 'wanggenuyi', 'WAG');
INSERT INTO `crm_data_region` VALUES (2749, 225, ',6,225,2749,', 3, '新普利茅斯', 'New Plymouth', 'xinpulimaosi', 'NPL');
INSERT INTO `crm_data_region` VALUES (2750, 225, ',6,225,2750,', 3, '因弗卡吉尔', 'Invercargill', 'yinfukajier', 'IVC');
INSERT INTO `crm_data_region` VALUES (2751, 226, ',2,226,2751,', 3, '巴兰尼亚', 'Baranya', 'balanniya', 'BA');
INSERT INTO `crm_data_region` VALUES (2752, 226, ',2,226,2752,', 3, '巴奇-基什孔', 'Bacs-Kiskun', 'baqijishikong', 'BK');
INSERT INTO `crm_data_region` VALUES (2753, 226, ',2,226,2753,', 3, '包尔绍德-奥包乌伊-曾普伦', 'Borsod-Abauj-Zemplen', 'baoershaodeaobaowuyizengpulun', 'BZ');
INSERT INTO `crm_data_region` VALUES (2754, 226, ',2,226,2754,', 3, '贝凯什', 'Bekes', 'beikaishi', 'BE');
INSERT INTO `crm_data_region` VALUES (2755, 226, ',2,226,2755,', 3, '布达佩斯', 'Budapest', 'budapeisi', 'BU');
INSERT INTO `crm_data_region` VALUES (2756, 226, ',2,226,2756,', 3, '费耶尔', 'Fejer', 'feiyeer', 'FE');
INSERT INTO `crm_data_region` VALUES (2757, 226, ',2,226,2757,', 3, '豪伊杜-比豪尔', 'Hajdu-Bihar', 'haoyidubihaoer', 'HB');
INSERT INTO `crm_data_region` VALUES (2758, 226, ',2,226,2758,', 3, '赫维什', 'Heves', 'heweishi', 'HE');
INSERT INTO `crm_data_region` VALUES (2759, 226, ',2,226,2759,', 3, '加兹-纳杰孔-索尔诺克', 'Jasz-Nagykun-Szolnok', 'jiazinajiekongsuoernuoke', 'JN');
INSERT INTO `crm_data_region` VALUES (2760, 226, ',2,226,2760,', 3, '杰尔-莫松-肖普朗', 'Gyor-Moson-Sopron', 'jieermosongxiaopulang', 'GS');
INSERT INTO `crm_data_region` VALUES (2761, 226, ',2,226,2761,', 3, '科马罗姆', 'Komarom-Esztergom', 'kemaluomu', 'KE');
INSERT INTO `crm_data_region` VALUES (2762, 226, ',2,226,2762,', 3, '诺格拉德', 'Nograd', 'nuogelade', 'NO');
INSERT INTO `crm_data_region` VALUES (2763, 226, ',2,226,2763,', 3, '佩斯', 'Pest', 'peisi', 'PE');
INSERT INTO `crm_data_region` VALUES (2764, 226, ',2,226,2764,', 3, '琼格拉德', 'Csongrad', 'qionggelade', 'CS');
INSERT INTO `crm_data_region` VALUES (2765, 226, ',2,226,2765,', 3, '绍莫吉', 'Somogy', 'shaomoji', 'SO');
INSERT INTO `crm_data_region` VALUES (2766, 226, ',2,226,2766,', 3, '索博尔奇-索特马尔-贝拉格', 'Szabolcs-Szatmar-Bereg', 'suoboerqisuotemaerbeilage', 'SZ');
INSERT INTO `crm_data_region` VALUES (2767, 226, ',2,226,2767,', 3, '托尔瑙', 'Tolna', 'tuoer', 'TO');
INSERT INTO `crm_data_region` VALUES (2768, 226, ',2,226,2768,', 3, '维斯普雷姆', 'Veszprem', 'weisipuleimu', 'VE');
INSERT INTO `crm_data_region` VALUES (2769, 226, ',2,226,2769,', 3, '沃什', 'Vas', 'woshi', 'VA');
INSERT INTO `crm_data_region` VALUES (2770, 226, ',2,226,2770,', 3, '佐洛', 'Zala', 'zuoluo', 'ZA');
INSERT INTO `crm_data_region` VALUES (2771, 227, ',1,227,2771,', 3, '阿勒颇', 'Halab', 'alepo', 'HL');
INSERT INTO `crm_data_region` VALUES (2772, 227, ',1,227,2772,', 3, '大马士革', 'Rif Dimashq', 'damashige', 'RD');
INSERT INTO `crm_data_region` VALUES (2773, 227, ',1,227,2773,', 3, '大马士革市', 'Madinat Dimashq', 'damashigeshi', 'DI');
INSERT INTO `crm_data_region` VALUES (2774, 227, ',1,227,2774,', 3, '代尔祖尔', 'Dayr az Zawr', 'daierzuer', 'DZ');
INSERT INTO `crm_data_region` VALUES (2775, 227, ',1,227,2775,', 3, '德拉', 'Dara', 'dela', 'DA');
INSERT INTO `crm_data_region` VALUES (2776, 227, ',1,227,2776,', 3, '哈马', 'Hamah', 'hama', 'HM');
INSERT INTO `crm_data_region` VALUES (2777, 227, ',1,227,2777,', 3, '哈塞克', 'Al Hasakah', 'hasaike', 'HA');
INSERT INTO `crm_data_region` VALUES (2778, 227, ',1,227,2778,', 3, '霍姆斯', 'Hims', 'huomusi', 'HI');
INSERT INTO `crm_data_region` VALUES (2779, 227, ',1,227,2779,', 3, '加布', 'Al Ghab', 'jiabu', 'GH');
INSERT INTO `crm_data_region` VALUES (2780, 227, ',1,227,2780,', 3, '卡米什利', 'Al-Qamishli', 'kamishili', 'QA');
INSERT INTO `crm_data_region` VALUES (2781, 227, ',1,227,2781,', 3, '库奈特拉', 'Al Qunaytirah', 'kunaitela', 'QU');
INSERT INTO `crm_data_region` VALUES (2782, 227, ',1,227,2782,', 3, '拉卡', 'Ar Raqqah', 'laka', 'RQ');
INSERT INTO `crm_data_region` VALUES (2783, 227, ',1,227,2783,', 3, '拉塔基亚', 'Al Ladhiqiyah', 'latajiya', 'LA');
INSERT INTO `crm_data_region` VALUES (2784, 227, ',1,227,2784,', 3, '苏韦达', 'As Suwayda', 'suweida', 'SU');
INSERT INTO `crm_data_region` VALUES (2785, 227, ',1,227,2785,', 3, '塔尔图斯', 'Tartus', 'taertusi', 'TA');
INSERT INTO `crm_data_region` VALUES (2786, 227, ',1,227,2786,', 3, '伊德利卜', 'Idlib', 'yidelibo', 'ID');
INSERT INTO `crm_data_region` VALUES (2787, 228, ',4,228,2787,', 3, '波特兰', 'Portland', 'botelan', 'POR');
INSERT INTO `crm_data_region` VALUES (2788, 228, ',4,228,2788,', 3, '汉诺威', 'Hanover', 'hannuowei', 'HAN');
INSERT INTO `crm_data_region` VALUES (2789, 228, ',4,228,2789,', 3, '金斯敦', 'Kingston', 'jinsidun', 'KIN');
INSERT INTO `crm_data_region` VALUES (2790, 228, ',4,228,2790,', 3, '克拉伦登', 'Clarendon', 'kelalundeng', 'CLA');
INSERT INTO `crm_data_region` VALUES (2791, 228, ',4,228,2791,', 3, '曼彻斯特', 'Manchester', 'manchesite', 'MAN');
INSERT INTO `crm_data_region` VALUES (2792, 228, ',4,228,2792,', 3, '圣安德鲁斯', 'St. Andrews', 'shengandelusi', 'AND');
INSERT INTO `crm_data_region` VALUES (2793, 228, ',4,228,2793,', 3, '圣安娜', 'St. Ann', 'shenganna', 'ANN');
INSERT INTO `crm_data_region` VALUES (2794, 228, ',4,228,2794,', 3, '圣凯瑟琳', 'St. Catherine', 'shengkaiselin', 'CAT');
INSERT INTO `crm_data_region` VALUES (2795, 228, ',4,228,2795,', 3, '圣玛丽', 'St. Mary', 'shengmali', 'MAR');
INSERT INTO `crm_data_region` VALUES (2796, 228, ',4,228,2796,', 3, '圣托马斯', 'St. Thomas', 'shengtuomasi', 'THO');
INSERT INTO `crm_data_region` VALUES (2797, 228, ',4,228,2797,', 3, '圣伊丽莎白', 'St. Elizabeth', 'shengyilishabai', 'ELI');
INSERT INTO `crm_data_region` VALUES (2798, 228, ',4,228,2798,', 3, '圣詹姆斯', 'St. James', 'shengzhanmusi', 'JAM');
INSERT INTO `crm_data_region` VALUES (2799, 228, ',4,228,2799,', 3, '特里洛尼', 'Trelawny', 'teliluoni', 'TRL');
INSERT INTO `crm_data_region` VALUES (2800, 228, ',4,228,2800,', 3, '西摩兰', 'Westmoreland', 'ximolan', 'WML');
INSERT INTO `crm_data_region` VALUES (2801, 229, ',1,229,2801,', 3, '阿尔马维尔', 'Armavir', 'aermaweier', 'ARM');
INSERT INTO `crm_data_region` VALUES (2802, 229, ',1,229,2802,', 3, '阿拉加措特恩', 'Aragacotn', 'alajiacuoteen', 'AGT');
INSERT INTO `crm_data_region` VALUES (2803, 229, ',1,229,2803,', 3, '阿拉拉特', 'Ararat', 'alalate', 'ARA');
INSERT INTO `crm_data_region` VALUES (2804, 229, ',1,229,2804,', 3, '埃里温市', 'Yerevan', 'ailiwenshi', 'EVN');
INSERT INTO `crm_data_region` VALUES (2805, 229, ',1,229,2805,', 3, '格加尔库尼克', 'Gelarkunik', 'gejiaerkunike', 'GEG');
INSERT INTO `crm_data_region` VALUES (2806, 229, ',1,229,2806,', 3, '科泰克', 'Kotayk', 'ketaike', 'KOT');
INSERT INTO `crm_data_region` VALUES (2807, 229, ',1,229,2807,', 3, '洛里', 'Lorri', 'luoli', 'LOR');
INSERT INTO `crm_data_region` VALUES (2808, 229, ',1,229,2808,', 3, '塔武什', 'Tavus', 'tawushi', 'TAV');
INSERT INTO `crm_data_region` VALUES (2809, 229, ',1,229,2809,', 3, '瓦约茨·佐尔', 'VayocJor', 'wayueci', 'VAY');
INSERT INTO `crm_data_region` VALUES (2810, 229, ',1,229,2810,', 3, '希拉克', 'Shirak', 'xilake', 'SHI');
INSERT INTO `crm_data_region` VALUES (2811, 229, ',1,229,2811,', 3, '休尼克', 'Syunik', 'xiunike', 'SYU');
INSERT INTO `crm_data_region` VALUES (2812, 230, ',1,230,2812,', 3, '阿比扬', 'Abyan', 'abiyang', 'AB');
INSERT INTO `crm_data_region` VALUES (2813, 230, ',1,230,2813,', 3, '阿姆兰', 'Amran Sana', 'amulan', 'AM');
INSERT INTO `crm_data_region` VALUES (2814, 230, ',1,230,2814,', 3, '贝达', 'Al-Bayda', 'beida', 'BA');
INSERT INTO `crm_data_region` VALUES (2815, 230, ',1,230,2815,', 3, '达利', 'Ad-Dali', 'dali', 'DA');
INSERT INTO `crm_data_region` VALUES (2816, 230, ',1,230,2816,', 3, '哈德拉毛', 'Hadramawt', 'hadelamao', 'HD');
INSERT INTO `crm_data_region` VALUES (2817, 230, ',1,230,2817,', 3, '哈杰', 'Hajjah', 'hajie', 'HJ');
INSERT INTO `crm_data_region` VALUES (2818, 230, ',1,230,2818,', 3, '荷台达', 'Al-Hudaydah', 'hetaida', 'HU');
INSERT INTO `crm_data_region` VALUES (2819, 230, ',1,230,2819,', 3, '焦夫', 'Al-Jawf', 'jiaofu', 'JA');
INSERT INTO `crm_data_region` VALUES (2820, 230, ',1,230,2820,', 3, '拉赫季', 'Lahij', 'laheji', 'LA');
INSERT INTO `crm_data_region` VALUES (2821, 230, ',1,230,2821,', 3, '马里卜', 'Marib', 'malibo', 'MA');
INSERT INTO `crm_data_region` VALUES (2822, 230, ',1,230,2822,', 3, '迈赫拉', 'Al-Mahrah', 'maihela', 'MR');
INSERT INTO `crm_data_region` VALUES (2823, 230, ',1,230,2823,', 3, '迈赫维特', 'Al-Mahwit', 'maiheweite', 'MW');
INSERT INTO `crm_data_region` VALUES (2824, 230, ',1,230,2824,', 3, '萨达', 'Sadah', 'sada', 'SD');
INSERT INTO `crm_data_region` VALUES (2825, 230, ',1,230,2825,', 3, '萨那', 'Sana', 'sana', 'SN');
INSERT INTO `crm_data_region` VALUES (2826, 230, ',1,230,2826,', 3, '赛文', 'Seiyun', 'saiwen', 'GXF');
INSERT INTO `crm_data_region` VALUES (2827, 230, ',1,230,2827,', 3, '舍卜沃', 'Shabwah', 'shebowo', 'SH');
INSERT INTO `crm_data_region` VALUES (2828, 230, ',1,230,2828,', 3, '塔伊兹', 'Taizz', 'tayizi', 'TA');
INSERT INTO `crm_data_region` VALUES (2829, 230, ',1,230,2829,', 3, '希赫尔', 'Ash-Shihr', 'xiheer', 'ASR');
INSERT INTO `crm_data_region` VALUES (2830, 230, ',1,230,2830,', 3, '亚丁', 'Adan', 'yading', 'AD');
INSERT INTO `crm_data_region` VALUES (2831, 230, ',1,230,2831,', 3, '伊卜', 'Ibb', 'yibo', 'IB');
INSERT INTO `crm_data_region` VALUES (2832, 230, ',1,230,2832,', 3, '扎玛尔', 'Dhamar', 'zhamaer', 'DH');
INSERT INTO `crm_data_region` VALUES (2833, 233, ',1,233,2833,', 3, '阿什杜德', 'Ashdod', 'ashidude', 'ASH');
INSERT INTO `crm_data_region` VALUES (2834, 233, ',1,233,2834,', 3, '贝尔谢巴', 'Beersheba', 'beierxieba', 'BEV');
INSERT INTO `crm_data_region` VALUES (2835, 233, ',1,233,2835,', 3, '贝特雁', 'Bat Yam', 'beiteyan', 'BAT');
INSERT INTO `crm_data_region` VALUES (2836, 233, ',1,233,2836,', 3, '海法', 'Haifa', 'haifa', 'HFA');
INSERT INTO `crm_data_region` VALUES (2837, 233, ',1,233,2837,', 3, '霍隆', 'Holon', 'huolong', 'HOL');
INSERT INTO `crm_data_region` VALUES (2838, 233, ',1,233,2838,', 3, '内坦亚', 'Netanya', 'neitanya', 'NAT');
INSERT INTO `crm_data_region` VALUES (2839, 233, ',1,233,2839,', 3, '特拉维夫', 'Tel Aviv-Yafo', 'telaweifu', 'TLV');
INSERT INTO `crm_data_region` VALUES (2840, 233, ',1,233,2840,', 3, '耶路撒冷', 'Jerusalem', 'yelusaleng', 'J');
INSERT INTO `crm_data_region` VALUES (2841, 234, ',2,234,2841,', 3, '阿斯蒂', 'Asti', 'asidi', 'AST');
INSERT INTO `crm_data_region` VALUES (2842, 234, ',2,234,2842,', 3, '阿斯科利皮切诺', 'Ascoli Piceno', 'asikelipiqienuo', 'ASP');
INSERT INTO `crm_data_region` VALUES (2843, 234, ',2,234,2843,', 3, '安科纳', 'Ancona', 'ankena', 'AOI');
INSERT INTO `crm_data_region` VALUES (2844, 234, ',2,234,2844,', 3, '奥尔比亚', 'Olbia-Tempio', 'aoerbiya', 'OLB');
INSERT INTO `crm_data_region` VALUES (2845, 234, ',2,234,2845,', 3, '奥里斯塔诺', 'Oristano', 'aolisitanuo', 'QOS');
INSERT INTO `crm_data_region` VALUES (2846, 234, ',2,234,2846,', 3, '奥斯塔', 'Aosta', 'aosita', 'AOT');
INSERT INTO `crm_data_region` VALUES (2847, 234, ',2,234,2847,', 3, '巴勒莫', 'Palermo', 'balemo', 'PMO');
INSERT INTO `crm_data_region` VALUES (2848, 234, ',2,234,2848,', 3, '巴里', 'Bari', 'bali', 'BRI');
INSERT INTO `crm_data_region` VALUES (2849, 234, ',2,234,2849,', 3, '贝加莫', 'Bergamo', 'beijiamo', 'BGO');
INSERT INTO `crm_data_region` VALUES (2850, 234, ',2,234,2850,', 3, '贝内文托', 'Benevento', 'beineiwentuo', 'BEN');
INSERT INTO `crm_data_region` VALUES (2851, 234, ',2,234,2851,', 3, '比萨', 'Pisa', 'bisa', 'PSA');
INSERT INTO `crm_data_region` VALUES (2852, 234, ',2,234,2852,', 3, '波代诺内', 'Pordenone', 'bodainuonei', 'PRD');
INSERT INTO `crm_data_region` VALUES (2853, 234, ',2,234,2853,', 3, '波坦察', 'Potenza', 'botancha', 'QPO');
INSERT INTO `crm_data_region` VALUES (2854, 234, ',2,234,2854,', 3, '博洛尼亚', 'Bologna', 'boluoniya', 'BLQ');
INSERT INTO `crm_data_region` VALUES (2855, 234, ',2,234,2855,', 3, '布拉', 'Biella', 'bula', 'BIE');
INSERT INTO `crm_data_region` VALUES (2856, 234, ',2,234,2856,', 3, '布雷西亚', 'Brescia', 'buleixiya', 'BRC');
INSERT INTO `crm_data_region` VALUES (2857, 234, ',2,234,2857,', 3, '布林迪西', 'Brindisi', 'bulindixi', 'BDS');
INSERT INTO `crm_data_region` VALUES (2858, 234, ',2,234,2858,', 3, '的里雅斯特', 'Trieste', 'deliyasite', 'TRS');
INSERT INTO `crm_data_region` VALUES (2859, 234, ',2,234,2859,', 3, '都灵', 'Turin', 'duling', 'TRN');
INSERT INTO `crm_data_region` VALUES (2860, 234, ',2,234,2860,', 3, '费拉拉', 'Ferrara', 'feilala', 'FRR');
INSERT INTO `crm_data_region` VALUES (2861, 234, ',2,234,2861,', 3, '佛罗伦萨', 'Firenze', 'foluolunsa', 'FLR');
INSERT INTO `crm_data_region` VALUES (2862, 234, ',2,234,2862,', 3, '福贾', 'Foggia', 'fujia', 'FOG');
INSERT INTO `crm_data_region` VALUES (2863, 234, ',2,234,2863,', 3, '卡利亚里', 'Cagliari', 'kaliyali', 'CAG');
INSERT INTO `crm_data_region` VALUES (2864, 234, ',2,234,2864,', 3, '卡塞塔', 'Caserta', 'kasaita', 'CST');
INSERT INTO `crm_data_region` VALUES (2865, 234, ',2,234,2865,', 3, '卡塔尼亚', 'Catania', 'kataniya', 'CTA');
INSERT INTO `crm_data_region` VALUES (2866, 234, ',2,234,2866,', 3, '卡坦扎罗', 'Catanzaro', 'katanzhaluo', 'QCZ');
INSERT INTO `crm_data_region` VALUES (2867, 234, ',2,234,2867,', 3, '坎波巴索', 'Campobasso', 'kanbobasuo', 'COB');
INSERT INTO `crm_data_region` VALUES (2868, 234, ',2,234,2868,', 3, '科摩', 'Como', 'kemo', 'CIY');
INSERT INTO `crm_data_region` VALUES (2869, 234, ',2,234,2869,', 3, '科森扎', 'Cosenza', 'kesenzha', 'QCS');
INSERT INTO `crm_data_region` VALUES (2870, 234, ',2,234,2870,', 3, '克罗托内', 'Crotone', 'keluotuonei', 'CRV');
INSERT INTO `crm_data_region` VALUES (2871, 234, ',2,234,2871,', 3, '库内奥', 'Cuneo', 'kuneiao', 'CUN');
INSERT INTO `crm_data_region` VALUES (2872, 234, ',2,234,2872,', 3, '拉奎拉', 'L\'Aquila', 'lakuila', 'LAQ');
INSERT INTO `crm_data_region` VALUES (2873, 234, ',2,234,2873,', 3, '拉斯佩齐亚', 'La Spezia', 'lasipeiqiya', 'SPE');
INSERT INTO `crm_data_region` VALUES (2874, 234, ',2,234,2874,', 3, '莱科', 'Lecco', 'laike', 'LCO');
INSERT INTO `crm_data_region` VALUES (2875, 234, ',2,234,2875,', 3, '莱切', 'Lecce', 'laiqie', 'LCC');
INSERT INTO `crm_data_region` VALUES (2876, 234, ',2,234,2876,', 3, '雷焦艾米利亚', 'Reggio Emilia', 'leijiaoaimiliya', 'RNE');
INSERT INTO `crm_data_region` VALUES (2877, 234, ',2,234,2877,', 3, '雷焦卡拉布里亚', 'Reggio Calabria', 'leijiaokalabuliya', 'REG');
INSERT INTO `crm_data_region` VALUES (2878, 234, ',2,234,2878,', 3, '里窝那', 'Livorno', 'liwona', 'LIV');
INSERT INTO `crm_data_region` VALUES (2879, 234, ',2,234,2879,', 3, '罗马', 'Roma', 'luoma', 'ROM');
INSERT INTO `crm_data_region` VALUES (2880, 234, ',2,234,2880,', 3, '马萨', 'Massa-Carrara', 'masa', 'MCR');
INSERT INTO `crm_data_region` VALUES (2881, 234, ',2,234,2881,', 3, '马泰拉', 'Matera', 'mataila', 'MTR');
INSERT INTO `crm_data_region` VALUES (2882, 234, ',2,234,2882,', 3, '蒙扎', 'Monza e Brianza', 'mengzha', 'MZA');
INSERT INTO `crm_data_region` VALUES (2883, 234, ',2,234,2883,', 3, '米兰', 'Milano', 'milan', 'MIL');
INSERT INTO `crm_data_region` VALUES (2884, 234, ',2,234,2884,', 3, '摩德纳', 'Modena', 'modena', 'MOD');
INSERT INTO `crm_data_region` VALUES (2885, 234, ',2,234,2885,', 3, '墨西拿', 'Messina', 'moxina', 'MSN');
INSERT INTO `crm_data_region` VALUES (2886, 234, ',2,234,2886,', 3, '那不勒斯', 'Naples', 'nabulesi', 'NAP');
INSERT INTO `crm_data_region` VALUES (2887, 234, ',2,234,2887,', 3, '努奥罗', 'Nuoro', 'nuaoluo', 'QNU');
INSERT INTO `crm_data_region` VALUES (2888, 234, ',2,234,2888,', 3, '诺瓦拉', 'Novara', 'nuowala', 'NVR');
INSERT INTO `crm_data_region` VALUES (2889, 234, ',2,234,2889,', 3, '帕尔马', 'Parma', 'paerma', 'PMF');
INSERT INTO `crm_data_region` VALUES (2890, 234, ',2,234,2890,', 3, '帕维亚', 'Pavia', 'paweiya', 'PAV');
INSERT INTO `crm_data_region` VALUES (2891, 234, ',2,234,2891,', 3, '佩鲁贾', 'Perugia', 'peilujia', 'PEG');
INSERT INTO `crm_data_region` VALUES (2892, 234, ',2,234,2892,', 3, '热那亚', 'Genova', 'renaya', 'CAX');
INSERT INTO `crm_data_region` VALUES (2893, 234, ',2,234,2893,', 3, '萨莱诺', 'Salerno', 'salainuo', 'SAL');
INSERT INTO `crm_data_region` VALUES (2894, 234, ',2,234,2894,', 3, '萨萨里', 'Sassari', 'sasali', 'QSS');
INSERT INTO `crm_data_region` VALUES (2895, 234, ',2,234,2895,', 3, '萨沃纳', 'Savona', 'sawona', 'SVN');
INSERT INTO `crm_data_region` VALUES (2896, 234, ',2,234,2896,', 3, '塔兰托', 'Taranto', 'talantuo', 'TAR');
INSERT INTO `crm_data_region` VALUES (2897, 234, ',2,234,2897,', 3, '特拉帕尼', 'Trapani', 'telapani', 'TPS');
INSERT INTO `crm_data_region` VALUES (2898, 234, ',2,234,2898,', 3, '特伦托', 'Trento', 'teluntuo', 'TRT');
INSERT INTO `crm_data_region` VALUES (2899, 234, ',2,234,2899,', 3, '威尼斯', 'Venice', 'weinisi', 'VCE');
INSERT INTO `crm_data_region` VALUES (2900, 234, ',2,234,2900,', 3, '韦尔切利', 'Vercelli', 'weierqieli', 'VRL');
INSERT INTO `crm_data_region` VALUES (2901, 234, ',2,234,2901,', 3, '维泰博', 'Viterbo', 'weitaibo', 'VIT');
INSERT INTO `crm_data_region` VALUES (2902, 234, ',2,234,2902,', 3, '乌迪内', 'Udine', 'wudinei', 'UDN');
INSERT INTO `crm_data_region` VALUES (2903, 234, ',2,234,2903,', 3, '锡拉库扎', 'Syracuse', 'xilakuzha', 'SYR');
INSERT INTO `crm_data_region` VALUES (2904, 234, ',2,234,2904,', 3, '锡耶纳', 'Siena', 'xiyena', 'SNA');
INSERT INTO `crm_data_region` VALUES (2905, 234, ',2,234,2905,', 3, '亚历山德里亚', 'Alessandria', 'yalishandeliya', 'ALE');
INSERT INTO `crm_data_region` VALUES (2906, 234, ',2,234,2906,', 3, '伊塞尔尼亚', 'Isernia', 'yisaierniya', 'ISE');
INSERT INTO `crm_data_region` VALUES (2907, 235, ',1,235,2907,', 3, '艾藻尔', 'Aizawl', 'aizaoer', 'AJL');
INSERT INTO `crm_data_region` VALUES (2908, 235, ',1,235,2908,', 3, '班加罗尔', 'Bangalore', 'banjialuoer', 'BLR');
INSERT INTO `crm_data_region` VALUES (2909, 235, ',1,235,2909,', 3, '本地治里', 'Pondicherry', 'bendizhili', 'PNY');
INSERT INTO `crm_data_region` VALUES (2910, 235, ',1,235,2910,', 3, '博帕尔', 'Bhopal', 'bopaer', 'BHO');
INSERT INTO `crm_data_region` VALUES (2911, 235, ',1,235,2911,', 3, '布巴内斯瓦尔', 'Bhubaneswar', 'bubaneisiwaer', 'BBI');
INSERT INTO `crm_data_region` VALUES (2912, 235, ',1,235,2912,', 3, '昌迪加尔', 'Chandigarh', 'changdijiaer', 'IXC');
INSERT INTO `crm_data_region` VALUES (2913, 235, ',1,235,2913,', 3, '达曼', 'Daman', 'daman', 'DAM');
INSERT INTO `crm_data_region` VALUES (2914, 235, ',1,235,2914,', 3, '第乌', 'Diu', 'diwu', 'DIU');
INSERT INTO `crm_data_region` VALUES (2915, 235, ',1,235,2915,', 3, '甘托克', 'Gangtok', 'gantuoke', 'GTO');
INSERT INTO `crm_data_region` VALUES (2916, 235, ',1,235,2916,', 3, '哥印拜陀', 'Coimbatore', 'geyinbaituo', 'CJB');
INSERT INTO `crm_data_region` VALUES (2917, 235, ',1,235,2917,', 3, '加尔各答', 'Calcutta', 'jiaergeda', 'CCU');
INSERT INTO `crm_data_region` VALUES (2918, 235, ',1,235,2918,', 3, '加里加尔', 'Karaikal', 'jialijiaer', 'KRK');
INSERT INTO `crm_data_region` VALUES (2919, 235, ',1,235,2919,', 3, '贾巴尔普尔', 'Jabalpur', 'jiabaerpuer', 'JLR');
INSERT INTO `crm_data_region` VALUES (2920, 235, ',1,235,2920,', 3, '贾朗达尔', 'Jalandhar', 'jialangdaer', 'JUC');
INSERT INTO `crm_data_region` VALUES (2921, 235, ',1,235,2921,', 3, '焦特布尔', 'Jodhpur', 'jiaotebuer', 'JDH');
INSERT INTO `crm_data_region` VALUES (2922, 235, ',1,235,2922,', 3, '金奈', 'Chennai', 'jinnai', 'MAA');
INSERT INTO `crm_data_region` VALUES (2923, 235, ',1,235,2923,', 3, '卡瓦拉蒂', 'Kavaratti', 'kawaladi', 'KVA');
INSERT INTO `crm_data_region` VALUES (2924, 235, ',1,235,2924,', 3, '科希马', 'Kohima', 'kexima', 'KOM');
INSERT INTO `crm_data_region` VALUES (2925, 235, ',1,235,2925,', 3, '马埃', 'Mahe', 'maai', 'MAH');
INSERT INTO `crm_data_region` VALUES (2926, 235, ',1,235,2926,', 3, '马杜赖', 'Madurai', 'madulai', 'IXM');
INSERT INTO `crm_data_region` VALUES (2927, 235, ',1,235,2927,', 3, '森伯尔布尔', 'Sambalpur', 'senboerbuer', 'SLR');
INSERT INTO `crm_data_region` VALUES (2928, 235, ',1,235,2928,', 3, '特里凡得琅', 'Trivandrum', 'telifandelang', 'TRV');
INSERT INTO `crm_data_region` VALUES (2929, 235, ',1,235,2929,', 3, '乌代布尔', 'Udaipur', 'wudaibuer', 'UDR');
INSERT INTO `crm_data_region` VALUES (2930, 235, ',1,235,2930,', 3, '西隆', 'Shillong', 'xilong', 'SHL');
INSERT INTO `crm_data_region` VALUES (2931, 235, ',1,235,2931,', 3, '锡尔萨瓦', 'Silvassa', 'xiersawa', 'SIL');
INSERT INTO `crm_data_region` VALUES (2932, 235, ',1,235,2932,', 3, '新德里', 'New Delhi', 'xindeli', 'ICD');
INSERT INTO `crm_data_region` VALUES (2933, 235, ',1,235,2933,', 3, '亚南', 'Yanam', 'yanan', 'SRV');
INSERT INTO `crm_data_region` VALUES (2934, 235, ',1,235,2934,', 3, '因帕尔', 'Imphal', 'yinpaer', 'IMF');
INSERT INTO `crm_data_region` VALUES (2935, 235, ',1,235,2935,', 3, '印多尔', 'Indore', 'yinduoer', 'IDR');
INSERT INTO `crm_data_region` VALUES (2936, 235, ',1,235,2936,', 3, '斋普尔', 'Jaipur', 'zhaipuer', 'JAI');
INSERT INTO `crm_data_region` VALUES (2937, 236, ',1,236,2937,', 3, '巴厘', 'Bali', 'bali', 'BA');
INSERT INTO `crm_data_region` VALUES (2938, 236, ',1,236,2938,', 3, '邦加－勿里洞群岛', 'Kepulauan Bangka Belitung', 'bangjiawulidongqundao', 'BB');
INSERT INTO `crm_data_region` VALUES (2939, 236, ',1,236,2939,', 3, '北苏拉威西', 'Sulawesi Utara', 'beisulaweixi', 'SA');
INSERT INTO `crm_data_region` VALUES (2940, 236, ',1,236,2940,', 3, '北苏门答腊', 'Sumatera Utara', 'beisumendala', 'SU');
INSERT INTO `crm_data_region` VALUES (2941, 236, ',1,236,2941,', 3, '大雅加达首都特区', 'Daerah Tingkat I Kalimantan Barat', 'dayajiadashoudutequ', 'KB');
INSERT INTO `crm_data_region` VALUES (2942, 236, ',1,236,2942,', 3, '东加里曼丹', 'Kalimantan Timur', 'dongjialimandan', 'KI');
INSERT INTO `crm_data_region` VALUES (2943, 236, ',1,236,2943,', 3, '东南苏拉威西', 'Sulawesi Tenggara', 'dongnansulaweixi', 'SG');
INSERT INTO `crm_data_region` VALUES (2944, 236, ',1,236,2944,', 3, '东努沙登加拉', 'Nusa Tenggara Timur', 'dongnushadengjiala', 'NT');
INSERT INTO `crm_data_region` VALUES (2945, 236, ',1,236,2945,', 3, '东爪哇', 'Java Timur', 'dongzhuawa', 'JI');
INSERT INTO `crm_data_region` VALUES (2946, 236, ',1,236,2946,', 3, '廖内', 'Riau', 'liaonei', 'RI');
INSERT INTO `crm_data_region` VALUES (2947, 236, ',1,236,2947,', 3, '马鲁古', 'Maluku', 'malugu', 'MA');
INSERT INTO `crm_data_region` VALUES (2948, 236, ',1,236,2948,', 3, '明古鲁', 'Bengkulu', 'minggulu', 'BE');
INSERT INTO `crm_data_region` VALUES (2949, 236, ',1,236,2949,', 3, '楠榜', 'Lampung', 'bang', 'LA');
INSERT INTO `crm_data_region` VALUES (2950, 236, ',1,236,2950,', 3, '南加里曼丹', 'Kalimantan Selatan', 'nanjialimandan', 'KS');
INSERT INTO `crm_data_region` VALUES (2951, 236, ',1,236,2951,', 3, '南苏拉威西', 'Sulawesi Selatan', 'nansulaweixi', 'SN');
INSERT INTO `crm_data_region` VALUES (2952, 236, ',1,236,2952,', 3, '南苏门答腊', 'Sumatera Selatan', 'nansumendala', 'SS');
INSERT INTO `crm_data_region` VALUES (2953, 236, ',1,236,2953,', 3, '日惹特区', 'Daerah Istimewa Yogyakarta', 'riretequ', 'YO');
INSERT INTO `crm_data_region` VALUES (2954, 236, ',1,236,2954,', 3, '万丹', 'Banten', 'wandan', 'BT');
INSERT INTO `crm_data_region` VALUES (2955, 236, ',1,236,2955,', 3, '西努沙登加拉', 'Nusa Tenggara Barat', 'xinushadengjiala', 'NB');
INSERT INTO `crm_data_region` VALUES (2956, 236, ',1,236,2956,', 3, '西苏门答腊', 'Sumatera Barat', 'xisumendala', 'SR');
INSERT INTO `crm_data_region` VALUES (2957, 236, ',1,236,2957,', 3, '西爪哇', 'Java Barat', 'xizhuawa', 'JB');
INSERT INTO `crm_data_region` VALUES (2958, 236, ',1,236,2958,', 3, '雅加达', 'Jakarta Raya', 'yajiada', 'JK');
INSERT INTO `crm_data_region` VALUES (2959, 236, ',1,236,2959,', 3, '亚齐', 'Aceh', 'yaqi', 'AC');
INSERT INTO `crm_data_region` VALUES (2960, 236, ',1,236,2960,', 3, '伊里安查亚', 'Irian Jaya', 'yilianchaya', 'IJ');
INSERT INTO `crm_data_region` VALUES (2961, 236, ',1,236,2961,', 3, '占碑', 'Jambi', 'zhanbei', 'JA');
INSERT INTO `crm_data_region` VALUES (2962, 236, ',1,236,2962,', 3, '中加里曼丹', 'Kalimantan Tengah', 'zhongjialimandan', 'KT');
INSERT INTO `crm_data_region` VALUES (2963, 236, ',1,236,2963,', 3, '中苏拉威西', 'Sulawesi Tengah', 'zhongsulaweixi', 'ST');
INSERT INTO `crm_data_region` VALUES (2964, 236, ',1,236,2964,', 3, '中爪哇', 'Java Tengah', 'zhongzhuawa', 'JT');
INSERT INTO `crm_data_region` VALUES (2965, 239, ',1,239,2965,', 3, '阿吉隆', 'Allun', 'ajilong', 'AJ');
INSERT INTO `crm_data_region` VALUES (2966, 239, ',1,239,2966,', 3, '安曼', 'Amman', 'anman', 'AM');
INSERT INTO `crm_data_region` VALUES (2967, 239, ',1,239,2967,', 3, '拜勒加', 'Balqa', 'bailejia', 'BA');
INSERT INTO `crm_data_region` VALUES (2968, 239, ',1,239,2968,', 3, '杰拉什', 'Jarash', 'jielashi', 'JA');
INSERT INTO `crm_data_region` VALUES (2969, 239, ',1,239,2969,', 3, '卡拉克', 'Karak', 'kalake', 'KA');
INSERT INTO `crm_data_region` VALUES (2970, 239, ',1,239,2970,', 3, '鲁赛法', 'Rusayfah', 'lusaifa', 'RU');
INSERT INTO `crm_data_region` VALUES (2971, 239, ',1,239,2971,', 3, '马安', 'Maan', 'maan', 'MN');
INSERT INTO `crm_data_region` VALUES (2972, 239, ',1,239,2972,', 3, '马德巴', 'Madaba', 'madeba', 'MD');
INSERT INTO `crm_data_region` VALUES (2973, 239, ',1,239,2973,', 3, '马夫拉克', 'Mafraq', 'mafulake', 'MF');
INSERT INTO `crm_data_region` VALUES (2974, 239, ',1,239,2974,', 3, '塔菲拉', 'Tafiela', 'tafeila', 'TA');
INSERT INTO `crm_data_region` VALUES (2975, 239, ',1,239,2975,', 3, '亚喀巴', 'Aqaba', 'yakaba', 'AQ');
INSERT INTO `crm_data_region` VALUES (2976, 239, ',1,239,2976,', 3, '伊尔比德', 'Irbid', 'yierbide', 'IR');
INSERT INTO `crm_data_region` VALUES (2977, 239, ',1,239,2977,', 3, '扎尔卡', 'Zarqa', 'zhaerka', 'ZA');
INSERT INTO `crm_data_region` VALUES (2978, 240, ',1,240,2978,', 3, '海防', 'Haiphong', 'haifang', 'HP');
INSERT INTO `crm_data_region` VALUES (2979, 240, ',1,240,2979,', 3, '河内', 'Hanoi', 'henei', 'HI');
INSERT INTO `crm_data_region` VALUES (2980, 240, ',1,240,2980,', 3, '胡志明市', 'Ho Chi Minh City', 'huzhimingshi', 'HC');
INSERT INTO `crm_data_region` VALUES (2981, 241, ',3,241,2981,', 3, '北方', 'Northern', 'beifang', 'NO');
INSERT INTO `crm_data_region` VALUES (2982, 241, ',3,241,2982,', 3, '东方', 'Eastern', 'dongfang', 'EA');
INSERT INTO `crm_data_region` VALUES (2983, 241, ',3,241,2983,', 3, '卢阿普拉', 'Luapula', 'luapula', 'LP');
INSERT INTO `crm_data_region` VALUES (2984, 241, ',3,241,2984,', 3, '卢萨卡', 'Lusaka', 'lusaka', 'LK');
INSERT INTO `crm_data_region` VALUES (2985, 241, ',3,241,2985,', 3, '南方', 'Southern', 'nanfang', 'SO');
INSERT INTO `crm_data_region` VALUES (2986, 241, ',3,241,2986,', 3, '铜带', 'Copperbelt', 'tongdai', 'CB');
INSERT INTO `crm_data_region` VALUES (2987, 241, ',3,241,2987,', 3, '西北', 'North-Western', 'xibei', 'NW');
INSERT INTO `crm_data_region` VALUES (2988, 241, ',3,241,2988,', 3, '西方', 'Western', 'xifang', 'WE');
INSERT INTO `crm_data_region` VALUES (2989, 241, ',3,241,2989,', 3, '中央', 'Central', 'zhongyang', 'CE');
INSERT INTO `crm_data_region` VALUES (2990, 245, ',5,245,2990,', 3, '阿劳卡尼亚大区', 'Region de la Araucania', 'alaokaniyadaqu', 'AR');
INSERT INTO `crm_data_region` VALUES (2991, 245, ',5,245,2991,', 3, '阿塔卡马大区', 'Region de Atacama', 'atakamadaqu', 'AT');
INSERT INTO `crm_data_region` VALUES (2992, 245, ',5,245,2992,', 3, '安托法加斯塔大区', 'Region de Antofagasta', 'antuofajiasitadaqu', 'AN');
INSERT INTO `crm_data_region` VALUES (2993, 245, ',5,245,2993,', 3, '比奥比奥大区', 'Region del Biobio', 'biaobiaodaqu', 'BI');
INSERT INTO `crm_data_region` VALUES (2994, 245, ',5,245,2994,', 3, '复活节岛', 'Libertador', 'fuhuojiedao', 'LI');
INSERT INTO `crm_data_region` VALUES (2995, 245, ',5,245,2995,', 3, '湖大区', 'Region de los Lagos', 'hudaqu', 'LL');
INSERT INTO `crm_data_region` VALUES (2996, 245, ',5,245,2996,', 3, '科金博大区', 'Region de Coquimbo', 'kejinbodaqu', 'CO');
INSERT INTO `crm_data_region` VALUES (2997, 245, ',5,245,2997,', 3, '马乌莱大区', 'Region del Maule', 'mawulaidaqu', 'ML');
INSERT INTO `crm_data_region` VALUES (2998, 245, ',5,245,2998,', 3, '麦哲伦-智利南极大区', 'Magallanes y Antartica Chilena', 'maizhelunzhilinanjidaqu', 'MA');
INSERT INTO `crm_data_region` VALUES (2999, 245, ',5,245,2999,', 3, '圣地亚哥', 'Metropolitana de Santiago', 'shengdiyage', 'RM');
INSERT INTO `crm_data_region` VALUES (3000, 245, ',5,245,3000,', 3, '塔拉帕卡大区', 'Region de Tarapaca', 'talapakadaqu', 'TA');
INSERT INTO `crm_data_region` VALUES (3001, 245, ',5,245,3001,', 3, '瓦尔帕莱索大区', 'Region de Valparaiso', 'waerpalaisuodaqu', 'VS');
INSERT INTO `crm_data_region` VALUES (3002, 245, ',5,245,3002,', 3, '伊瓦涅斯将军的艾森大区', 'Region de Alsen del General Carlos Ibanez del', 'yiwaniesijiangjundeaisendaqu', 'AI');
INSERT INTO `crm_data_region` VALUES (3003, 246, ',3,246,3003,', 3, '巴明吉-班戈兰', 'Bamingui-Bangoran', 'bamingjibangelan', 'BB');
INSERT INTO `crm_data_region` VALUES (3004, 246, ',3,246,3004,', 3, '班吉直辖市', 'Bangui', 'banjizhixiashi', 'BGF');
INSERT INTO `crm_data_region` VALUES (3005, 246, ',3,246,3005,', 3, '宾博', 'Bimbo', 'binbo', 'BI');
INSERT INTO `crm_data_region` VALUES (3006, 246, ',3,246,3006,', 3, '凯莫', 'Kemo', 'kaimo', 'KG');
INSERT INTO `crm_data_region` VALUES (3007, 246, ',3,246,3007,', 3, '洛巴伊', 'Lobaye', 'luobayi', 'LB');
INSERT INTO `crm_data_region` VALUES (3008, 246, ',3,246,3008,', 3, '曼贝雷-卡代', 'Mambere-Kadei', 'manbeileikadai', 'HS');
INSERT INTO `crm_data_region` VALUES (3009, 246, ',3,246,3009,', 3, '姆博穆', 'Mbomou', 'mubomu', 'MB');
INSERT INTO `crm_data_region` VALUES (3010, 246, ',3,246,3010,', 3, '纳纳-格里比齐', 'Nana-Gribizi', 'nanagelibiqi', 'KB');
INSERT INTO `crm_data_region` VALUES (3011, 246, ',3,246,3011,', 3, '纳纳-曼贝雷', 'Nana-Mambere', 'nanamanbeilei', 'NM');
INSERT INTO `crm_data_region` VALUES (3012, 246, ',3,246,3012,', 3, '桑加-姆巴埃雷', 'Sangha-Mbaere', 'sangjiamubaailei', 'SE');
INSERT INTO `crm_data_region` VALUES (3013, 246, ',3,246,3013,', 3, '上科托', 'Haute-Kotto', 'shangketuo', 'HK');
INSERT INTO `crm_data_region` VALUES (3014, 246, ',3,246,3014,', 3, '上姆博穆', 'Haut-Mbomou', 'shangmubomu', 'HM');
INSERT INTO `crm_data_region` VALUES (3015, 246, ',3,246,3015,', 3, '瓦卡', 'Ouaka', 'waka', 'UK');
INSERT INTO `crm_data_region` VALUES (3016, 246, ',3,246,3016,', 3, '瓦卡加', 'Vakaga', 'wakajia', 'VK');
INSERT INTO `crm_data_region` VALUES (3017, 246, ',3,246,3017,', 3, '瓦姆', 'Ouham', 'wamu', 'AC');
INSERT INTO `crm_data_region` VALUES (3018, 246, ',3,246,3018,', 3, '瓦姆-彭代', 'Ouham-Pende', 'wamupengdai', 'OP');
INSERT INTO `crm_data_region` VALUES (3019, 246, ',3,246,3019,', 3, '翁贝拉-姆波科', 'Ombella-Mpoko', 'wengbeilamuboke', 'MP');
INSERT INTO `crm_data_region` VALUES (3020, 246, ',3,246,3020,', 3, '下科托', 'Basse-Kotto', 'xiaketuo', 'BK');
INSERT INTO `crm_data_region` VALUES (3021, 247, ',1,7,247,3021,', 4, '东城', 'Dongcheng', 'dongcheng', '1');
INSERT INTO `crm_data_region` VALUES (3022, 247, ',1,7,247,3022,', 4, '西城', 'Xicheng', 'xicheng', '2');
INSERT INTO `crm_data_region` VALUES (3023, 247, ',1,7,247,3023,', 4, '朝阳', 'Chaoyang', 'chaoyang', '5');
INSERT INTO `crm_data_region` VALUES (3024, 247, ',1,7,247,3024,', 4, '丰台', 'Fengtai', 'fengtai', '6');
INSERT INTO `crm_data_region` VALUES (3025, 247, ',1,7,247,3025,', 4, '石景山', 'Shijingshan', 'shijingshan', '7');
INSERT INTO `crm_data_region` VALUES (3026, 247, ',1,7,247,3026,', 4, '海淀', 'Haidian', 'haidian', '8');
INSERT INTO `crm_data_region` VALUES (3027, 247, ',1,7,247,3027,', 4, '门头沟', 'Mentougou', 'mentougou', '9');
INSERT INTO `crm_data_region` VALUES (3028, 247, ',1,7,247,3028,', 4, '房山', 'Fangshan', 'fangshan', '11');
INSERT INTO `crm_data_region` VALUES (3029, 247, ',1,7,247,3029,', 4, '通州', 'Tongzhou', 'tongzhou', '12');
INSERT INTO `crm_data_region` VALUES (3030, 247, ',1,7,247,3030,', 4, '顺义', 'Shunyi', 'shunyi', '13');
INSERT INTO `crm_data_region` VALUES (3031, 247, ',1,7,247,3031,', 4, '昌平', 'Changping', 'changping', '21');
INSERT INTO `crm_data_region` VALUES (3032, 247, ',1,7,247,3032,', 4, '大兴', 'Daxing', 'daxing', '24');
INSERT INTO `crm_data_region` VALUES (3033, 247, ',1,7,247,3033,', 4, '平谷', 'Pinggu', 'pinggu', '26');
INSERT INTO `crm_data_region` VALUES (3034, 247, ',1,7,247,3034,', 4, '怀柔', 'Huairou', 'huairou', '27');
INSERT INTO `crm_data_region` VALUES (3035, 247, ',1,7,247,3035,', 4, '密云', 'Miyun', 'miyun', '28');
INSERT INTO `crm_data_region` VALUES (3036, 247, ',1,7,247,3036,', 4, '延庆', 'Yanqing', 'yanqing', '29');
INSERT INTO `crm_data_region` VALUES (3037, 248, ',1,7,248,3037,', 4, '和平', 'Heping', 'heping', '1');
INSERT INTO `crm_data_region` VALUES (3038, 248, ',1,7,248,3038,', 4, '河东', 'Hedong', 'hedong', '2');
INSERT INTO `crm_data_region` VALUES (3039, 248, ',1,7,248,3039,', 4, '河西', 'Hexi', 'hexi', '3');
INSERT INTO `crm_data_region` VALUES (3040, 248, ',1,7,248,3040,', 4, '南开', 'Nankai', 'nankai', '4');
INSERT INTO `crm_data_region` VALUES (3041, 248, ',1,7,248,3041,', 4, '河北', 'Hebei', 'hebei', '5');
INSERT INTO `crm_data_region` VALUES (3042, 248, ',1,7,248,3042,', 4, '红桥', 'Hongqiao', 'hongqiao', '6');
INSERT INTO `crm_data_region` VALUES (3043, 248, ',1,7,248,3043,', 4, '滨海新区', 'Binghaixinqu', 'binhaixinqu', '26');
INSERT INTO `crm_data_region` VALUES (3044, 248, ',1,7,248,3044,', 4, '东丽', 'Dongli', 'dongli', '10');
INSERT INTO `crm_data_region` VALUES (3045, 248, ',1,7,248,3045,', 4, '西青', 'Xiqing', 'xiqing', '11');
INSERT INTO `crm_data_region` VALUES (3046, 248, ',1,7,248,3046,', 4, '津南', 'Jinnan', 'jinnan', '12');
INSERT INTO `crm_data_region` VALUES (3047, 248, ',1,7,248,3047,', 4, '北辰', 'Beichen', 'beichen', '13');
INSERT INTO `crm_data_region` VALUES (3048, 248, ',1,7,248,3048,', 4, '宁河', 'Ninghe', 'ninghe', '21');
INSERT INTO `crm_data_region` VALUES (3049, 248, ',1,7,248,3049,', 4, '武清', 'Wuqing', 'wuqing', '22');
INSERT INTO `crm_data_region` VALUES (3050, 248, ',1,7,248,3050,', 4, '静海', 'Jinghai', 'jinghai', '23');
INSERT INTO `crm_data_region` VALUES (3051, 248, ',1,7,248,3051,', 4, '宝坻', 'Baodi', 'bao', '24');
INSERT INTO `crm_data_region` VALUES (3052, 248, ',1,7,248,3052,', 4, '蓟县', 'Jixian', 'jixian', '25');
INSERT INTO `crm_data_region` VALUES (3053, 249, ',1,7,249,3053,', 4, '石家庄', 'Shijiazhuang', 'shijiazhuang', '1');
INSERT INTO `crm_data_region` VALUES (3054, 249, ',1,7,249,3054,', 4, '唐山', 'Tangshan', 'tangshan', '2');
INSERT INTO `crm_data_region` VALUES (3055, 249, ',1,7,249,3055,', 4, '秦皇岛', 'Qinhuangdao', 'qinhuangdao', '3');
INSERT INTO `crm_data_region` VALUES (3056, 249, ',1,7,249,3056,', 4, '邯郸', 'Handan', 'handan', '4');
INSERT INTO `crm_data_region` VALUES (3057, 249, ',1,7,249,3057,', 4, '邢台', 'Xingtai', 'xingtai', '5');
INSERT INTO `crm_data_region` VALUES (3058, 249, ',1,7,249,3058,', 4, '保定', 'Baoding', 'baoding', '6');
INSERT INTO `crm_data_region` VALUES (3059, 249, ',1,7,249,3059,', 4, '张家口', 'Zhangjiakou', 'zhangjiakou', '7');
INSERT INTO `crm_data_region` VALUES (3060, 249, ',1,7,249,3060,', 4, '承德', 'Chengde', 'chengde', '8');
INSERT INTO `crm_data_region` VALUES (3061, 249, ',1,7,249,3061,', 4, '沧州', 'Cangzhou', 'cangzhou', '9');
INSERT INTO `crm_data_region` VALUES (3062, 249, ',1,7,249,3062,', 4, '廊坊', 'Langfang', 'langfang', '10');
INSERT INTO `crm_data_region` VALUES (3063, 249, ',1,7,249,3063,', 4, '衡水', 'Hengshui', 'hengshui', '11');
INSERT INTO `crm_data_region` VALUES (3064, 250, ',1,7,250,3064,', 4, '太原', 'Taiyuan', 'taiyuan', '1');
INSERT INTO `crm_data_region` VALUES (3065, 250, ',1,7,250,3065,', 4, '大同', 'Datong', 'datong', '2');
INSERT INTO `crm_data_region` VALUES (3066, 250, ',1,7,250,3066,', 4, '阳泉', 'Yangquan', 'yangquan', '3');
INSERT INTO `crm_data_region` VALUES (3067, 250, ',1,7,250,3067,', 4, '长治', 'Changzhi', 'changzhi', '4');
INSERT INTO `crm_data_region` VALUES (3068, 250, ',1,7,250,3068,', 4, '晋城', 'Jincheng', 'jincheng', '5');
INSERT INTO `crm_data_region` VALUES (3069, 250, ',1,7,250,3069,', 4, '朔州', 'Shuozhou', 'shuozhou', '6');
INSERT INTO `crm_data_region` VALUES (3070, 250, ',1,7,250,3070,', 4, '晋中', 'Jinzhong', 'jinzhong', '7');
INSERT INTO `crm_data_region` VALUES (3071, 250, ',1,7,250,3071,', 4, '运城', 'Yuncheng', 'yuncheng', '8');
INSERT INTO `crm_data_region` VALUES (3072, 250, ',1,7,250,3072,', 4, '忻州', 'Xinzhou', 'xinzhou', '9');
INSERT INTO `crm_data_region` VALUES (3073, 250, ',1,7,250,3073,', 4, '临汾', 'Linfen', 'linfen', '10');
INSERT INTO `crm_data_region` VALUES (3074, 250, ',1,7,250,3074,', 4, '吕梁', 'luliang', 'lvliang', '11');
INSERT INTO `crm_data_region` VALUES (3075, 251, ',1,7,251,3075,', 4, '呼和浩特', 'Hohhot', 'huhehaote', '1');
INSERT INTO `crm_data_region` VALUES (3076, 251, ',1,7,251,3076,', 4, '包头', 'Baotou', 'baotou', '2');
INSERT INTO `crm_data_region` VALUES (3077, 251, ',1,7,251,3077,', 4, '乌海', 'Wuhai', 'wuhai', '3');
INSERT INTO `crm_data_region` VALUES (3078, 251, ',1,7,251,3078,', 4, '赤峰', 'Chifeng', 'chifeng', '4');
INSERT INTO `crm_data_region` VALUES (3079, 251, ',1,7,251,3079,', 4, '通辽', 'Tongliao', 'tongliao', '5');
INSERT INTO `crm_data_region` VALUES (3080, 251, ',1,7,251,3080,', 4, '鄂尔多斯', 'Ordos', 'eerduosi', '6');
INSERT INTO `crm_data_region` VALUES (3081, 251, ',1,7,251,3081,', 4, '呼伦贝尔', 'Hulun Buir', 'hulunbeier', '7');
INSERT INTO `crm_data_region` VALUES (3082, 251, ',1,7,251,3082,', 4, '巴彦淖尔', 'Bayannur', 'bayannaoer', '8');
INSERT INTO `crm_data_region` VALUES (3083, 251, ',1,7,251,3083,', 4, '乌兰察布', 'Ulan Qab', 'wulanchabu', '9');
INSERT INTO `crm_data_region` VALUES (3084, 251, ',1,7,251,3084,', 4, '兴安', 'Xing\'an', 'xingan', '22');
INSERT INTO `crm_data_region` VALUES (3085, 251, ',1,7,251,3085,', 4, '锡林郭勒', 'Xilin Gol', 'xilinguole', '25');
INSERT INTO `crm_data_region` VALUES (3086, 251, ',1,7,251,3086,', 4, '阿拉善', 'Alxa', 'alashan', '29');
INSERT INTO `crm_data_region` VALUES (3087, 252, ',1,7,252,3087,', 4, '沈阳', 'Shenyang', 'shenyang', '1');
INSERT INTO `crm_data_region` VALUES (3088, 252, ',1,7,252,3088,', 4, '大连', 'Dalian', 'dalian', '2');
INSERT INTO `crm_data_region` VALUES (3089, 252, ',1,7,252,3089,', 4, '鞍山', 'Anshan', 'anshan', '3');
INSERT INTO `crm_data_region` VALUES (3090, 252, ',1,7,252,3090,', 4, '抚顺', 'Fushun', 'fushun', '4');
INSERT INTO `crm_data_region` VALUES (3091, 252, ',1,7,252,3091,', 4, '本溪', 'Benxi', 'benxi', '5');
INSERT INTO `crm_data_region` VALUES (3092, 252, ',1,7,252,3092,', 4, '丹东', 'Dandong', 'dandong', '6');
INSERT INTO `crm_data_region` VALUES (3093, 252, ',1,7,252,3093,', 4, '锦州', 'Jinzhou', 'jinzhou', '7');
INSERT INTO `crm_data_region` VALUES (3094, 252, ',1,7,252,3094,', 4, '营口', 'Yingkou', 'yingkou', '8');
INSERT INTO `crm_data_region` VALUES (3095, 252, ',1,7,252,3095,', 4, '阜新', 'Fuxin', 'fuxin', '9');
INSERT INTO `crm_data_region` VALUES (3096, 252, ',1,7,252,3096,', 4, '辽阳', 'Liaoyang', 'liaoyang', '10');
INSERT INTO `crm_data_region` VALUES (3097, 252, ',1,7,252,3097,', 4, '盘锦', 'Panjin', 'panjin', '11');
INSERT INTO `crm_data_region` VALUES (3098, 252, ',1,7,252,3098,', 4, '铁岭', 'Tieling', 'tieling', '12');
INSERT INTO `crm_data_region` VALUES (3099, 252, ',1,7,252,3099,', 4, '朝阳', 'Chaoyang', 'chaoyang', '13');
INSERT INTO `crm_data_region` VALUES (3100, 252, ',1,7,252,3100,', 4, '葫芦岛', 'Huludao', 'huludao', '14');
INSERT INTO `crm_data_region` VALUES (3101, 253, ',1,7,253,3101,', 4, '长春', 'Changchun', 'changchun', '1');
INSERT INTO `crm_data_region` VALUES (3102, 253, ',1,7,253,3102,', 4, '吉林', 'Jilin', 'jilin', '2');
INSERT INTO `crm_data_region` VALUES (3103, 253, ',1,7,253,3103,', 4, '四平', 'Siping', 'siping', '3');
INSERT INTO `crm_data_region` VALUES (3104, 253, ',1,7,253,3104,', 4, '辽源', 'Liaoyuan', 'liaoyuan', '4');
INSERT INTO `crm_data_region` VALUES (3105, 253, ',1,7,253,3105,', 4, '通化', 'Tonghua', 'tonghua', '5');
INSERT INTO `crm_data_region` VALUES (3106, 253, ',1,7,253,3106,', 4, '白山', 'Baishan', 'baishan', '6');
INSERT INTO `crm_data_region` VALUES (3107, 253, ',1,7,253,3107,', 4, '松原', 'Songyuan', 'songyuan', '7');
INSERT INTO `crm_data_region` VALUES (3108, 253, ',1,7,253,3108,', 4, '白城', 'Baicheng', 'baicheng', '8');
INSERT INTO `crm_data_region` VALUES (3109, 253, ',1,7,253,3109,', 4, '延边', 'Yanbian Korean Autonomous Prefecture', 'yanbian', '24');
INSERT INTO `crm_data_region` VALUES (3110, 254, ',1,7,254,3110,', 4, '哈尔滨', 'Harbin', 'haerbin', '1');
INSERT INTO `crm_data_region` VALUES (3111, 254, ',1,7,254,3111,', 4, '齐齐哈尔', 'Qiqihar', 'qiqihaer', '2');
INSERT INTO `crm_data_region` VALUES (3112, 254, ',1,7,254,3112,', 4, '鸡西', 'Jixi', 'jixi', '3');
INSERT INTO `crm_data_region` VALUES (3113, 254, ',1,7,254,3113,', 4, '鹤岗', 'Hegang', 'hegang', '4');
INSERT INTO `crm_data_region` VALUES (3114, 254, ',1,7,254,3114,', 4, '双鸭山', 'Shuangyashan', 'shuangyashan', '5');
INSERT INTO `crm_data_region` VALUES (3115, 254, ',1,7,254,3115,', 4, '大庆', 'Daqing', 'daqing', '6');
INSERT INTO `crm_data_region` VALUES (3116, 254, ',1,7,254,3116,', 4, '伊春', 'Yichun', 'yichun', '7');
INSERT INTO `crm_data_region` VALUES (3117, 254, ',1,7,254,3117,', 4, '佳木斯', 'Jiamusi', 'jiamusi', '8');
INSERT INTO `crm_data_region` VALUES (3118, 254, ',1,7,254,3118,', 4, '七台河', 'Qitaihe', 'qitaihe', '9');
INSERT INTO `crm_data_region` VALUES (3119, 254, ',1,7,254,3119,', 4, '牡丹江', 'Mudanjiang', 'mudanjiang', '10');
INSERT INTO `crm_data_region` VALUES (3120, 254, ',1,7,254,3120,', 4, '黑河', 'Heihe', 'heihe', '11');
INSERT INTO `crm_data_region` VALUES (3121, 254, ',1,7,254,3121,', 4, '绥化', 'Suihua', 'suihua', '12');
INSERT INTO `crm_data_region` VALUES (3122, 254, ',1,7,254,3122,', 4, '大兴安岭', 'Da Hinggan Ling', 'daxinganling', '27');
INSERT INTO `crm_data_region` VALUES (3123, 255, ',1,7,255,3123,', 4, '黄浦', 'Huangpu', 'huangpu', '1');
INSERT INTO `crm_data_region` VALUES (3124, 255, ',1,7,255,3124,', 4, '卢湾', 'Luwan', 'luwan', '3');
INSERT INTO `crm_data_region` VALUES (3125, 255, ',1,7,255,3125,', 4, '徐汇', 'Xuhui', 'xuhui', '4');
INSERT INTO `crm_data_region` VALUES (3126, 255, ',1,7,255,3126,', 4, '长宁', 'Changning', 'changning', '5');
INSERT INTO `crm_data_region` VALUES (3127, 255, ',1,7,255,3127,', 4, '静安', 'Jing\'an', 'jingan', '6');
INSERT INTO `crm_data_region` VALUES (3128, 255, ',1,7,255,3128,', 4, '普陀', 'Putuo', 'putuo', '7');
INSERT INTO `crm_data_region` VALUES (3129, 255, ',1,7,255,3129,', 4, '闸北', 'Zhabei', 'zhabei', '8');
INSERT INTO `crm_data_region` VALUES (3130, 255, ',1,7,255,3130,', 4, '虹口', 'Hongkou', 'hongkou', '9');
INSERT INTO `crm_data_region` VALUES (3131, 255, ',1,7,255,3131,', 4, '杨浦', 'Yangpu', 'yangpu', '11');
INSERT INTO `crm_data_region` VALUES (3132, 255, ',1,7,255,3132,', 4, '闵行', 'Minhang', 'xing', '12');
INSERT INTO `crm_data_region` VALUES (3133, 255, ',1,7,255,3133,', 4, '宝山', 'Baoshan', 'baoshan', '13');
INSERT INTO `crm_data_region` VALUES (3134, 255, ',1,7,255,3134,', 4, '嘉定', 'Jiading', 'jiading', '14');
INSERT INTO `crm_data_region` VALUES (3135, 255, ',1,7,255,3135,', 4, '浦东新区', 'Pudong New Area', 'pudongxinqu', '15');
INSERT INTO `crm_data_region` VALUES (3136, 255, ',1,7,255,3136,', 4, '金山', 'Jinshan', 'jinshan', '16');
INSERT INTO `crm_data_region` VALUES (3137, 255, ',1,7,255,3137,', 4, '松江', 'Songjiang', 'songjiang', '17');
INSERT INTO `crm_data_region` VALUES (3138, 255, ',1,7,255,3138,', 4, '奉贤', 'Fengxian', 'fengxian', '26');
INSERT INTO `crm_data_region` VALUES (3139, 255, ',1,7,255,3139,', 4, '青浦', 'Qingpu', 'qingpu', '29');
INSERT INTO `crm_data_region` VALUES (3140, 255, ',1,7,255,3140,', 4, '崇明', 'Chongming', 'chongming', '30');
INSERT INTO `crm_data_region` VALUES (3141, 256, ',1,7,256,3141,', 4, '南京', 'Nanjing', 'nanjing', '1');
INSERT INTO `crm_data_region` VALUES (3142, 256, ',1,7,256,3142,', 4, '无锡', 'Wuxi', 'wuxi', '2');
INSERT INTO `crm_data_region` VALUES (3143, 256, ',1,7,256,3143,', 4, '徐州', 'Xuzhou', 'xuzhou', '3');
INSERT INTO `crm_data_region` VALUES (3144, 256, ',1,7,256,3144,', 4, '常州', 'Changzhou', 'changzhou', '4');
INSERT INTO `crm_data_region` VALUES (3145, 256, ',1,7,256,3145,', 4, '苏州', 'Suzhou', 'suzhou', '5');
INSERT INTO `crm_data_region` VALUES (3146, 256, ',1,7,256,3146,', 4, '南通', 'Nantong', 'nantong', '6');
INSERT INTO `crm_data_region` VALUES (3147, 256, ',1,7,256,3147,', 4, '连云港', 'Lianyungang', 'lianyungang', '7');
INSERT INTO `crm_data_region` VALUES (3148, 256, ',1,7,256,3148,', 4, '淮安', 'Huai\'an', 'huaian', '8');
INSERT INTO `crm_data_region` VALUES (3149, 256, ',1,7,256,3149,', 4, '盐城', 'Yancheng', 'yancheng', '9');
INSERT INTO `crm_data_region` VALUES (3150, 256, ',1,7,256,3150,', 4, '扬州', 'Yangzhou', 'yangzhou', '10');
INSERT INTO `crm_data_region` VALUES (3151, 256, ',1,7,256,3151,', 4, '镇江', 'Zhenjiang', 'zhenjiang', '11');
INSERT INTO `crm_data_region` VALUES (3152, 256, ',1,7,256,3152,', 4, '泰州', 'Taizhou', 'taizhou', '12');
INSERT INTO `crm_data_region` VALUES (3153, 256, ',1,7,256,3153,', 4, '宿迁', 'Suqian', 'suqian', '13');
INSERT INTO `crm_data_region` VALUES (3154, 257, ',1,7,257,3154,', 4, '杭州', 'Hangzhou', 'hangzhou', '1');
INSERT INTO `crm_data_region` VALUES (3155, 257, ',1,7,257,3155,', 4, '宁波', 'Ningbo', 'ningbo', '2');
INSERT INTO `crm_data_region` VALUES (3156, 257, ',1,7,257,3156,', 4, '温州', 'Wenzhou', 'wenzhou', '3');
INSERT INTO `crm_data_region` VALUES (3157, 257, ',1,7,257,3157,', 4, '嘉兴', 'Jiaxing', 'jiaxing', '4');
INSERT INTO `crm_data_region` VALUES (3158, 257, ',1,7,257,3158,', 4, '湖州', 'Huzhou', 'huzhou', '5');
INSERT INTO `crm_data_region` VALUES (3159, 257, ',1,7,257,3159,', 4, '绍兴', 'Shaoxing', 'shaoxing', '6');
INSERT INTO `crm_data_region` VALUES (3160, 257, ',1,7,257,3160,', 4, '金华', 'Jinhua', 'jinhua', '7');
INSERT INTO `crm_data_region` VALUES (3161, 257, ',1,7,257,3161,', 4, '衢州', 'Quzhou', 'zhou', '8');
INSERT INTO `crm_data_region` VALUES (3162, 257, ',1,7,257,3162,', 4, '舟山', 'Zhoushan', 'zhoushan', '9');
INSERT INTO `crm_data_region` VALUES (3163, 257, ',1,7,257,3163,', 4, '台州', 'Taizhou', 'taizhou', '10');
INSERT INTO `crm_data_region` VALUES (3164, 257, ',1,7,257,3164,', 4, '丽水', 'Lishui', 'lishui', '11');
INSERT INTO `crm_data_region` VALUES (3165, 258, ',1,7,258,3165,', 4, '合肥', 'Hefei', 'hefei', '1');
INSERT INTO `crm_data_region` VALUES (3166, 258, ',1,7,258,3166,', 4, '芜湖', 'Wuhu', 'wuhu', '2');
INSERT INTO `crm_data_region` VALUES (3167, 258, ',1,7,258,3167,', 4, '蚌埠', 'Bengbu', 'bangbu', '3');
INSERT INTO `crm_data_region` VALUES (3168, 258, ',1,7,258,3168,', 4, '淮南', 'Huainan', 'huainan', '4');
INSERT INTO `crm_data_region` VALUES (3169, 258, ',1,7,258,3169,', 4, '马鞍山', 'Ma\'anshan', 'maanshan', '5');
INSERT INTO `crm_data_region` VALUES (3170, 258, ',1,7,258,3170,', 4, '淮北', 'Huaibei', 'huaibei', '6');
INSERT INTO `crm_data_region` VALUES (3171, 258, ',1,7,258,3171,', 4, '铜陵', 'Tongling', 'tongling', '7');
INSERT INTO `crm_data_region` VALUES (3172, 258, ',1,7,258,3172,', 4, '安庆', 'Anqing', 'anqing', '8');
INSERT INTO `crm_data_region` VALUES (3173, 258, ',1,7,258,3173,', 4, '黄山', 'Huangshan', 'huangshan', '10');
INSERT INTO `crm_data_region` VALUES (3174, 258, ',1,7,258,3174,', 4, '滁州', 'Chuzhou', 'chuzhou', '11');
INSERT INTO `crm_data_region` VALUES (3175, 258, ',1,7,258,3175,', 4, '阜阳', 'Fuyang', 'fuyang', '12');
INSERT INTO `crm_data_region` VALUES (3176, 258, ',1,7,258,3176,', 4, '宿州', 'Suzhou', 'suzhou', '13');
INSERT INTO `crm_data_region` VALUES (3177, 258, ',1,7,258,3177,', 4, '六安', 'Lu\'an', 'liuan', '15');
INSERT INTO `crm_data_region` VALUES (3178, 258, ',1,7,258,3178,', 4, '亳州', 'Bozhou', 'zhou', '16');
INSERT INTO `crm_data_region` VALUES (3179, 258, ',1,7,258,3179,', 4, '池州', 'Chizhou', 'chizhou', '17');
INSERT INTO `crm_data_region` VALUES (3180, 258, ',1,7,258,3180,', 4, '宣城', 'Xuancheng', 'xuancheng', '18');
INSERT INTO `crm_data_region` VALUES (3181, 259, ',1,7,259,3181,', 4, '福州', 'Fuzhou', 'fuzhou', '1');
INSERT INTO `crm_data_region` VALUES (3182, 259, ',1,7,259,3182,', 4, '厦门', 'Xiamen', 'xiamen', '2');
INSERT INTO `crm_data_region` VALUES (3183, 259, ',1,7,259,3183,', 4, '莆田', 'Putian', 'putian', '3');
INSERT INTO `crm_data_region` VALUES (3184, 259, ',1,7,259,3184,', 4, '三明', 'Sanming', 'sanming', '4');
INSERT INTO `crm_data_region` VALUES (3185, 259, ',1,7,259,3185,', 4, '泉州', 'Quanzhou', 'quanzhou', '5');
INSERT INTO `crm_data_region` VALUES (3186, 259, ',1,7,259,3186,', 4, '漳州', 'Zhangzhou', 'zhangzhou', '6');
INSERT INTO `crm_data_region` VALUES (3187, 259, ',1,7,259,3187,', 4, '南平', 'Nanping', 'nanping', '7');
INSERT INTO `crm_data_region` VALUES (3188, 259, ',1,7,259,3188,', 4, '龙岩', 'Longyan', 'longyan', '8');
INSERT INTO `crm_data_region` VALUES (3189, 259, ',1,7,259,3189,', 4, '宁德', 'Ningde', 'ningde', '9');
INSERT INTO `crm_data_region` VALUES (3190, 260, ',1,7,260,3190,', 4, '南昌', 'Nanchang', 'nanchang', '1');
INSERT INTO `crm_data_region` VALUES (3191, 260, ',1,7,260,3191,', 4, '景德镇', 'Jingdezhen', 'jingdezhen', '2');
INSERT INTO `crm_data_region` VALUES (3192, 260, ',1,7,260,3192,', 4, '萍乡', 'Pingxiang', 'pingxiang', '3');
INSERT INTO `crm_data_region` VALUES (3193, 260, ',1,7,260,3193,', 4, '九江', 'Jiujiang', 'jiujiang', '4');
INSERT INTO `crm_data_region` VALUES (3194, 260, ',1,7,260,3194,', 4, '新余', 'Xinyu', 'xinyu', '5');
INSERT INTO `crm_data_region` VALUES (3195, 260, ',1,7,260,3195,', 4, '鹰潭', 'Yingtan', 'yingtan', '6');
INSERT INTO `crm_data_region` VALUES (3196, 260, ',1,7,260,3196,', 4, '赣州', 'Ganzhou', 'ganzhou', '7');
INSERT INTO `crm_data_region` VALUES (3197, 260, ',1,7,260,3197,', 4, '吉安', 'Ji\'an', 'jian', '8');
INSERT INTO `crm_data_region` VALUES (3198, 260, ',1,7,260,3198,', 4, '宜春', 'Yichun', 'yichun', '9');
INSERT INTO `crm_data_region` VALUES (3199, 260, ',1,7,260,3199,', 4, '抚州', 'Fuzhou', 'fuzhou', '10');
INSERT INTO `crm_data_region` VALUES (3200, 260, ',1,7,260,3200,', 4, '上饶', 'Shangrao', 'shangrao', '11');
INSERT INTO `crm_data_region` VALUES (3201, 261, ',1,7,261,3201,', 4, '济南', 'Jinan', 'jinan', '1');
INSERT INTO `crm_data_region` VALUES (3202, 261, ',1,7,261,3202,', 4, '青岛', 'Qingdao', 'qingdao', '2');
INSERT INTO `crm_data_region` VALUES (3203, 261, ',1,7,261,3203,', 4, '淄博', 'Zibo', 'zibo', '3');
INSERT INTO `crm_data_region` VALUES (3204, 261, ',1,7,261,3204,', 4, '枣庄', 'Zaozhuang', 'zaozhuang', '4');
INSERT INTO `crm_data_region` VALUES (3205, 261, ',1,7,261,3205,', 4, '东营', 'Dongying', 'dongying', '5');
INSERT INTO `crm_data_region` VALUES (3206, 261, ',1,7,261,3206,', 4, '烟台', 'Yantai', 'yantai', '6');
INSERT INTO `crm_data_region` VALUES (3207, 261, ',1,7,261,3207,', 4, '潍坊', 'Weifang', 'weifang', '7');
INSERT INTO `crm_data_region` VALUES (3208, 261, ',1,7,261,3208,', 4, '济宁', 'Jining', 'jining', '8');
INSERT INTO `crm_data_region` VALUES (3209, 261, ',1,7,261,3209,', 4, '泰安', 'Tai\'an', 'taian', '9');
INSERT INTO `crm_data_region` VALUES (3210, 261, ',1,7,261,3210,', 4, '威海', 'Weihai', 'weihai', '10');
INSERT INTO `crm_data_region` VALUES (3211, 261, ',1,7,261,3211,', 4, '日照', 'Rizhao', 'rizhao', '11');
INSERT INTO `crm_data_region` VALUES (3212, 261, ',1,7,261,3212,', 4, '莱芜', 'Laiwu', 'laiwu', '12');
INSERT INTO `crm_data_region` VALUES (3213, 261, ',1,7,261,3213,', 4, '临沂', 'Linyi', 'linyi', '13');
INSERT INTO `crm_data_region` VALUES (3214, 261, ',1,7,261,3214,', 4, '德州', 'Dezhou', 'dezhou', '14');
INSERT INTO `crm_data_region` VALUES (3215, 261, ',1,7,261,3215,', 4, '聊城', 'Liaocheng', 'liaocheng', '15');
INSERT INTO `crm_data_region` VALUES (3216, 261, ',1,7,261,3216,', 4, '滨州', 'Binzhou', 'binzhou', '16');
INSERT INTO `crm_data_region` VALUES (3217, 261, ',1,7,261,3217,', 4, '菏泽', 'Heze', 'heze', '17');
INSERT INTO `crm_data_region` VALUES (3218, 262, ',1,7,262,3218,', 4, '郑州', 'Zhengzhou', 'zhengzhou', '1');
INSERT INTO `crm_data_region` VALUES (3219, 262, ',1,7,262,3219,', 4, '开封', 'Kaifeng', 'kaifeng', '2');
INSERT INTO `crm_data_region` VALUES (3220, 262, ',1,7,262,3220,', 4, '洛阳', 'Luoyang', 'luoyang', '3');
INSERT INTO `crm_data_region` VALUES (3221, 262, ',1,7,262,3221,', 4, '平顶山', 'Pingdingshan', 'pingdingshan', '4');
INSERT INTO `crm_data_region` VALUES (3222, 262, ',1,7,262,3222,', 4, '安阳', 'Anyang', 'anyang', '5');
INSERT INTO `crm_data_region` VALUES (3223, 262, ',1,7,262,3223,', 4, '鹤壁', 'Hebi', 'hebi', '6');
INSERT INTO `crm_data_region` VALUES (3224, 262, ',1,7,262,3224,', 4, '新乡', 'Xinxiang', 'xinxiang', '7');
INSERT INTO `crm_data_region` VALUES (3225, 262, ',1,7,262,3225,', 4, '焦作', 'Jiaozuo', 'jiaozuo', '8');
INSERT INTO `crm_data_region` VALUES (3226, 262, ',1,7,262,3226,', 4, '濮阳', 'Puyang', 'yang', '9');
INSERT INTO `crm_data_region` VALUES (3227, 262, ',1,7,262,3227,', 4, '许昌', 'Xuchang', 'xuchang', '10');
INSERT INTO `crm_data_region` VALUES (3228, 262, ',1,7,262,3228,', 4, '漯河', 'Luohe', 'he', '11');
INSERT INTO `crm_data_region` VALUES (3229, 262, ',1,7,262,3229,', 4, '三门峡', 'Sanmenxia', 'sanmenxia', '12');
INSERT INTO `crm_data_region` VALUES (3230, 262, ',1,7,262,3230,', 4, '南阳', 'Nanyang', 'nanyang', '13');
INSERT INTO `crm_data_region` VALUES (3231, 262, ',1,7,262,3231,', 4, '商丘', 'Shangqiu', 'shangqiu', '14');
INSERT INTO `crm_data_region` VALUES (3232, 262, ',1,7,262,3232,', 4, '信阳', 'Xinyang', 'xinyang', '15');
INSERT INTO `crm_data_region` VALUES (3233, 262, ',1,7,262,3233,', 4, '周口', 'Zhoukou', 'zhoukou', '16');
INSERT INTO `crm_data_region` VALUES (3234, 262, ',1,7,262,3234,', 4, '驻马店', 'Zhumadian', 'zhumadian', '17');
INSERT INTO `crm_data_region` VALUES (3235, 262, ',1,7,262,3235,', 4, '济源', 'Jiyuan', 'jiyuan', '18');
INSERT INTO `crm_data_region` VALUES (3236, 263, ',1,7,263,3236,', 4, '武汉', 'Wuhan', 'wuhan', '1');
INSERT INTO `crm_data_region` VALUES (3237, 263, ',1,7,263,3237,', 4, '黄石', 'Huangshi', 'huangshi', '2');
INSERT INTO `crm_data_region` VALUES (3238, 263, ',1,7,263,3238,', 4, '十堰', 'Shiyan', 'shiyan', '3');
INSERT INTO `crm_data_region` VALUES (3239, 263, ',1,7,263,3239,', 4, '宜昌', 'Yichang', 'yichang', '5');
INSERT INTO `crm_data_region` VALUES (3240, 263, ',1,7,263,3240,', 4, '襄阳', 'Xiangyang', 'xiangyang', '6');
INSERT INTO `crm_data_region` VALUES (3241, 263, ',1,7,263,3241,', 4, '鄂州', 'Ezhou', 'ezhou', '7');
INSERT INTO `crm_data_region` VALUES (3242, 263, ',1,7,263,3242,', 4, '荆门', 'Jingmen', 'jingmen', '8');
INSERT INTO `crm_data_region` VALUES (3243, 263, ',1,7,263,3243,', 4, '孝感', 'Xiaogan', 'xiaogan', '9');
INSERT INTO `crm_data_region` VALUES (3244, 263, ',1,7,263,3244,', 4, '荆州', 'Jingzhou', 'jingzhou', '10');
INSERT INTO `crm_data_region` VALUES (3245, 263, ',1,7,263,3245,', 4, '黄冈', 'Huanggang', 'huanggang', '11');
INSERT INTO `crm_data_region` VALUES (3246, 263, ',1,7,263,3246,', 4, '咸宁', 'Xianning', 'xianning', '12');
INSERT INTO `crm_data_region` VALUES (3247, 263, ',1,7,263,3247,', 4, '随州', 'Suizhou', 'suizhou', '13');
INSERT INTO `crm_data_region` VALUES (3248, 263, ',1,7,263,3248,', 4, '恩施', 'Enshi Tujia-Miao Autonomous Prefecture', 'enshi', '28');
INSERT INTO `crm_data_region` VALUES (3249, 263, ',1,7,263,3249,', 4, '仙桃', 'Xiantao', 'xiantao', '94');
INSERT INTO `crm_data_region` VALUES (3250, 263, ',1,7,263,3250,', 4, '潜江', 'Qianjiang', 'qianjiang', '95');
INSERT INTO `crm_data_region` VALUES (3251, 263, ',1,7,263,3251,', 4, '天门', 'Tianmen', 'tianmen', '96');
INSERT INTO `crm_data_region` VALUES (3252, 263, ',1,7,263,3252,', 4, '神农架', 'Shennongjia', 'shennongjia', 'A21');
INSERT INTO `crm_data_region` VALUES (3253, 264, ',1,7,264,3253,', 4, '长沙', 'Changsha', 'changsha', '1');
INSERT INTO `crm_data_region` VALUES (3254, 264, ',1,7,264,3254,', 4, '株洲', 'Zhuzhou', 'zhuzhou', '2');
INSERT INTO `crm_data_region` VALUES (3255, 264, ',1,7,264,3255,', 4, '湘潭', 'Xiangtan', 'xiangtan', '3');
INSERT INTO `crm_data_region` VALUES (3256, 264, ',1,7,264,3256,', 4, '衡阳', 'Hengyang', 'hengyang', '4');
INSERT INTO `crm_data_region` VALUES (3257, 264, ',1,7,264,3257,', 4, '邵阳', 'Shaoyang', 'shaoyang', '5');
INSERT INTO `crm_data_region` VALUES (3258, 264, ',1,7,264,3258,', 4, '岳阳', 'Yueyang', 'yueyang', '6');
INSERT INTO `crm_data_region` VALUES (3259, 264, ',1,7,264,3259,', 4, '常德', 'Changde', 'changde', '7');
INSERT INTO `crm_data_region` VALUES (3260, 264, ',1,7,264,3260,', 4, '张家界', 'Zhangjiajie', 'zhangjiajie', '8');
INSERT INTO `crm_data_region` VALUES (3261, 264, ',1,7,264,3261,', 4, '益阳', 'Yiyang', 'yiyang', '9');
INSERT INTO `crm_data_region` VALUES (3262, 264, ',1,7,264,3262,', 4, '郴州', 'Chenzhou', 'chenzhou', '10');
INSERT INTO `crm_data_region` VALUES (3263, 264, ',1,7,264,3263,', 4, '永州', 'Yongzhou', 'yongzhou', '11');
INSERT INTO `crm_data_region` VALUES (3264, 264, ',1,7,264,3264,', 4, '怀化', 'Huaihua', 'huaihua', '12');
INSERT INTO `crm_data_region` VALUES (3265, 264, ',1,7,264,3265,', 4, '娄底', 'Loudi', 'loudi', '13');
INSERT INTO `crm_data_region` VALUES (3266, 264, ',1,7,264,3266,', 4, '湘西', 'Xiangxi Tujia-Miao Autonomous Prefecture', 'xiangxi', '31');
INSERT INTO `crm_data_region` VALUES (3267, 265, ',1,7,265,3267,', 4, '广州', 'Guangzhou', 'guangzhou', '1');
INSERT INTO `crm_data_region` VALUES (3268, 265, ',1,7,265,3268,', 4, '韶关', 'Shaoguan', 'shaoguan', '2');
INSERT INTO `crm_data_region` VALUES (3269, 265, ',1,7,265,3269,', 4, '深圳', 'Shenzhen', 'shen', '3');
INSERT INTO `crm_data_region` VALUES (3270, 265, ',1,7,265,3270,', 4, '珠海', 'Zhuhai', 'zhuhai', '4');
INSERT INTO `crm_data_region` VALUES (3271, 265, ',1,7,265,3271,', 4, '汕头', 'Shantou', 'shantou', '5');
INSERT INTO `crm_data_region` VALUES (3272, 265, ',1,7,265,3272,', 4, '佛山', 'Foshan', 'foshan', '6');
INSERT INTO `crm_data_region` VALUES (3273, 265, ',1,7,265,3273,', 4, '江门', 'Jiangmen', 'jiangmen', '7');
INSERT INTO `crm_data_region` VALUES (3274, 265, ',1,7,265,3274,', 4, '湛江', 'Zhanjiang', 'zhanjiang', '8');
INSERT INTO `crm_data_region` VALUES (3275, 265, ',1,7,265,3275,', 4, '茂名', 'Maoming', 'maoming', '9');
INSERT INTO `crm_data_region` VALUES (3276, 265, ',1,7,265,3276,', 4, '肇庆', 'Zhaoqing', 'zhaoqing', '12');
INSERT INTO `crm_data_region` VALUES (3277, 265, ',1,7,265,3277,', 4, '惠州', 'Huizhou', 'huizhou', '13');
INSERT INTO `crm_data_region` VALUES (3278, 265, ',1,7,265,3278,', 4, '梅州', 'Meizhou', 'meizhou', '14');
INSERT INTO `crm_data_region` VALUES (3279, 265, ',1,7,265,3279,', 4, '汕尾', 'Shanwei', 'shanwei', '15');
INSERT INTO `crm_data_region` VALUES (3280, 265, ',1,7,265,3280,', 4, '河源', 'Heyuan', 'heyuan', '16');
INSERT INTO `crm_data_region` VALUES (3281, 265, ',1,7,265,3281,', 4, '阳江', 'Yangjiang', 'yangjiang', '17');
INSERT INTO `crm_data_region` VALUES (3282, 265, ',1,7,265,3282,', 4, '清远', 'Qingyuan', 'qingyuan', '18');
INSERT INTO `crm_data_region` VALUES (3283, 265, ',1,7,265,3283,', 4, '东莞', 'Dongguan', 'dong', '19');
INSERT INTO `crm_data_region` VALUES (3284, 265, ',1,7,265,3284,', 4, '中山', 'Zhongshan', 'zhongshan', '20');
INSERT INTO `crm_data_region` VALUES (3285, 265, ',1,7,265,3285,', 4, '潮州', 'Chaozhou', 'chaozhou', '51');
INSERT INTO `crm_data_region` VALUES (3286, 265, ',1,7,265,3286,', 4, '揭阳', 'Jieyang', 'jieyang', '52');
INSERT INTO `crm_data_region` VALUES (3287, 265, ',1,7,265,3287,', 4, '云浮', 'Yunfu', 'yunfu', '53');
INSERT INTO `crm_data_region` VALUES (3288, 266, ',1,7,266,3288,', 4, '南宁', 'Nanning', 'nanning', '1');
INSERT INTO `crm_data_region` VALUES (3289, 266, ',1,7,266,3289,', 4, '柳州', 'Liuzhou', 'liuzhou', '2');
INSERT INTO `crm_data_region` VALUES (3290, 266, ',1,7,266,3290,', 4, '桂林', 'Guilin', 'guilin', '3');
INSERT INTO `crm_data_region` VALUES (3291, 266, ',1,7,266,3291,', 4, '梧州', 'Wuzhou', 'wuzhou', '4');
INSERT INTO `crm_data_region` VALUES (3292, 266, ',1,7,266,3292,', 4, '北海', 'Beihai', 'beihai', '5');
INSERT INTO `crm_data_region` VALUES (3293, 266, ',1,7,266,3293,', 4, '防城港', 'Fangchenggang', 'fangchenggang', '6');
INSERT INTO `crm_data_region` VALUES (3294, 266, ',1,7,266,3294,', 4, '钦州', 'Qinzhou', 'qinzhou', '7');
INSERT INTO `crm_data_region` VALUES (3295, 266, ',1,7,266,3295,', 4, '贵港', 'Guigang', 'guigang', '8');
INSERT INTO `crm_data_region` VALUES (3296, 266, ',1,7,266,3296,', 4, '玉林', 'Yulin', 'yulin', '9');
INSERT INTO `crm_data_region` VALUES (3297, 266, ',1,7,266,3297,', 4, '百色', 'Baise', 'baise', '10');
INSERT INTO `crm_data_region` VALUES (3298, 266, ',1,7,266,3298,', 4, '贺州', 'Hezhou', 'hezhou', '11');
INSERT INTO `crm_data_region` VALUES (3299, 266, ',1,7,266,3299,', 4, '河池', 'Hechi', 'hechi', '12');
INSERT INTO `crm_data_region` VALUES (3300, 266, ',1,7,266,3300,', 4, '来宾', 'Laibin', 'laibin', '13');
INSERT INTO `crm_data_region` VALUES (3301, 266, ',1,7,266,3301,', 4, '崇左', 'Chongzuo', 'chongzuo', '14');
INSERT INTO `crm_data_region` VALUES (3302, 267, ',1,7,267,3302,', 4, '海口', 'Haikou', 'haikou', '1');
INSERT INTO `crm_data_region` VALUES (3303, 267, ',1,7,267,3303,', 4, '三亚', 'Sanya', 'sanya', '2');
INSERT INTO `crm_data_region` VALUES (3304, 267, ',1,7,267,3304,', 4, '三沙', 'Shansha', 'sansha', '3');
INSERT INTO `crm_data_region` VALUES (3305, 267, ',1,7,267,3305,', 4, '五指山', 'Wuzhishan', 'wuzhishan', '91');
INSERT INTO `crm_data_region` VALUES (3306, 267, ',1,7,267,3306,', 4, '琼海', 'Qionghai', 'qionghai', '92');
INSERT INTO `crm_data_region` VALUES (3307, 267, ',1,7,267,3307,', 4, '儋州', 'Danzhou', 'zhou', '93');
INSERT INTO `crm_data_region` VALUES (3308, 267, ',1,7,267,3308,', 4, '文昌', 'Wenchang', 'wenchang', '95');
INSERT INTO `crm_data_region` VALUES (3309, 267, ',1,7,267,3309,', 4, '万宁', 'Wanning', 'wanning', '96');
INSERT INTO `crm_data_region` VALUES (3310, 267, ',1,7,267,3310,', 4, '东方', 'Dongfang', 'dongfang', '97');
INSERT INTO `crm_data_region` VALUES (3311, 267, ',1,7,267,3311,', 4, '定安', 'Ding\'an', 'dingan', 'A25');
INSERT INTO `crm_data_region` VALUES (3312, 267, ',1,7,267,3312,', 4, '屯昌', 'Tunchang', 'tunchang', 'A26');
INSERT INTO `crm_data_region` VALUES (3313, 267, ',1,7,267,3313,', 4, '澄迈', 'Cengmai', 'chengmai', 'A27');
INSERT INTO `crm_data_region` VALUES (3314, 267, ',1,7,267,3314,', 4, '临高', 'Lingao', 'lingao', 'A28');
INSERT INTO `crm_data_region` VALUES (3315, 267, ',1,7,267,3315,', 4, '白沙', 'Baisha Li Autonomous County', 'baisha', 'A30');
INSERT INTO `crm_data_region` VALUES (3316, 267, ',1,7,267,3316,', 4, '昌江', 'Jiang Li Autonomous County', 'changjiang', 'A31');
INSERT INTO `crm_data_region` VALUES (3317, 267, ',1,7,267,3317,', 4, '乐东', 'Ledong Li Autonomous County', 'ledong', 'A33');
INSERT INTO `crm_data_region` VALUES (3318, 267, ',1,7,267,3318,', 4, '陵水', 'Lingshui Li Autonomous County', 'lingshui', 'A34');
INSERT INTO `crm_data_region` VALUES (3319, 267, ',1,7,267,3319,', 4, '保亭', 'Baoting Li-Miao Autonomous County', 'baoting', 'A35');
INSERT INTO `crm_data_region` VALUES (3320, 267, ',1,7,267,3320,', 4, '琼中', 'Qiongzhong Li-Miao Autonomous County', 'qiongzhong', 'A36');
INSERT INTO `crm_data_region` VALUES (3321, 268, ',1,7,268,3321,', 4, '万州', 'Wanzhou', 'wanzhou', '1');
INSERT INTO `crm_data_region` VALUES (3322, 268, ',1,7,268,3322,', 4, '涪陵', 'Fuling', 'fuling', '2');
INSERT INTO `crm_data_region` VALUES (3323, 268, ',1,7,268,3323,', 4, '渝中', 'Yuzhong', 'yuzhong', '3');
INSERT INTO `crm_data_region` VALUES (3324, 268, ',1,7,268,3324,', 4, '大渡口', 'Dadukou', 'dadukou', '4');
INSERT INTO `crm_data_region` VALUES (3325, 268, ',1,7,268,3325,', 4, '江北', 'Jiangbei', 'jiangbei', '5');
INSERT INTO `crm_data_region` VALUES (3326, 268, ',1,7,268,3326,', 4, '沙坪坝', 'Shapingba', 'shapingba', '6');
INSERT INTO `crm_data_region` VALUES (3327, 268, ',1,7,268,3327,', 4, '九龙坡', 'Jiulongpo', 'jiulongpo', '7');
INSERT INTO `crm_data_region` VALUES (3328, 268, ',1,7,268,3328,', 4, '南岸', 'Nan\'an', 'nanan', '8');
INSERT INTO `crm_data_region` VALUES (3329, 268, ',1,7,268,3329,', 4, '北碚', 'Beibei', 'bei', '9');
INSERT INTO `crm_data_region` VALUES (3330, 268, ',1,7,268,3330,', 4, '两江新区', 'Kaixian', 'liangjiangxinqu', '85');
INSERT INTO `crm_data_region` VALUES (3331, 268, ',1,7,268,3331,', 4, '万盛', 'Wansheng', 'wansheng', '10');
INSERT INTO `crm_data_region` VALUES (3332, 268, ',1,7,268,3332,', 4, '双桥', 'Shuangqiao', 'shuangqiao', '11');
INSERT INTO `crm_data_region` VALUES (3333, 268, ',1,7,268,3333,', 4, '渝北', 'Yubei', 'yubei', '12');
INSERT INTO `crm_data_region` VALUES (3334, 268, ',1,7,268,3334,', 4, '巴南', 'Ba\'nan', 'banan', '13');
INSERT INTO `crm_data_region` VALUES (3335, 268, ',1,7,268,3335,', 4, '长寿', 'Changshou', 'changshou', '21');
INSERT INTO `crm_data_region` VALUES (3336, 268, ',1,7,268,3336,', 4, '綦江', 'Qijiang', 'jiang', '22');
INSERT INTO `crm_data_region` VALUES (3337, 268, ',1,7,268,3337,', 4, '潼南', 'Tongnan', 'nan', '23');
INSERT INTO `crm_data_region` VALUES (3338, 268, ',1,7,268,3338,', 4, '铜梁', 'Tongliang', 'tongliang', '24');
INSERT INTO `crm_data_region` VALUES (3339, 268, ',1,7,268,3339,', 4, '大足', 'Dazu', 'dazu', '25');
INSERT INTO `crm_data_region` VALUES (3340, 268, ',1,7,268,3340,', 4, '荣昌', 'Rongchang', 'rongchang', '26');
INSERT INTO `crm_data_region` VALUES (3341, 268, ',1,7,268,3341,', 4, '璧山', 'Bishan', 'shan', '27');
INSERT INTO `crm_data_region` VALUES (3342, 268, ',1,7,268,3342,', 4, '梁平', 'Liangping', 'liangping', '28');
INSERT INTO `crm_data_region` VALUES (3343, 268, ',1,7,268,3343,', 4, '城口', 'Chengkou', 'chengkou', '29');
INSERT INTO `crm_data_region` VALUES (3344, 268, ',1,7,268,3344,', 4, '丰都', 'Fengdu', 'fengdu', '30');
INSERT INTO `crm_data_region` VALUES (3345, 268, ',1,7,268,3345,', 4, '垫江', 'Dianjiang', 'dianjiang', '31');
INSERT INTO `crm_data_region` VALUES (3346, 268, ',1,7,268,3346,', 4, '武隆', 'Wulong', 'wulong', '32');
INSERT INTO `crm_data_region` VALUES (3347, 268, ',1,7,268,3347,', 4, '忠县', 'Zhongxian', 'zhongxian', '33');
INSERT INTO `crm_data_region` VALUES (3348, 268, ',1,7,268,3348,', 4, '开县', 'Kaixian', 'kaixian', '34');
INSERT INTO `crm_data_region` VALUES (3349, 268, ',1,7,268,3349,', 4, '云阳', 'Yunyang', 'yunyang', '35');
INSERT INTO `crm_data_region` VALUES (3350, 268, ',1,7,268,3350,', 4, '奉节', 'Fengjie', 'fengjie', '36');
INSERT INTO `crm_data_region` VALUES (3351, 268, ',1,7,268,3351,', 4, '巫山', 'Wushan', 'wushan', '37');
INSERT INTO `crm_data_region` VALUES (3352, 268, ',1,7,268,3352,', 4, '巫溪', 'Wuxi', 'wuxi', '38');
INSERT INTO `crm_data_region` VALUES (3353, 268, ',1,7,268,3353,', 4, '黔江', 'Qianjiang', 'qianjiang', '39');
INSERT INTO `crm_data_region` VALUES (3354, 268, ',1,7,268,3354,', 4, '石柱', 'Shizhu Tujia Autonomous Country', 'shizhu', '40');
INSERT INTO `crm_data_region` VALUES (3355, 268, ',1,7,268,3355,', 4, '秀山', 'Xiushan Tujia-Miao Autonomous Country', 'xiushan', '41');
INSERT INTO `crm_data_region` VALUES (3356, 268, ',1,7,268,3356,', 4, '酉阳', 'Youyang Tujia-Miao Autonomous Country', 'youyang', '42');
INSERT INTO `crm_data_region` VALUES (3357, 268, ',1,7,268,3357,', 4, '彭水', 'Pengshui Miao-Tujia Autonomous Country', 'pengshui', '43');
INSERT INTO `crm_data_region` VALUES (3358, 268, ',1,7,268,3358,', 4, '江津', 'Jiangjin', 'jiangjin', '81');
INSERT INTO `crm_data_region` VALUES (3359, 268, ',1,7,268,3359,', 4, '合川', 'Hechuan', 'hechuan', '82');
INSERT INTO `crm_data_region` VALUES (3360, 268, ',1,7,268,3360,', 4, '永川', 'Yongchuan', 'yongchuan', '83');
INSERT INTO `crm_data_region` VALUES (3361, 268, ',1,7,268,3361,', 4, '南川', 'Liangjiangxinqu', 'nanchuan', '84');
INSERT INTO `crm_data_region` VALUES (3362, 269, ',1,7,269,3362,', 4, '成都', 'Chengdu', 'chengdu', '1');
INSERT INTO `crm_data_region` VALUES (3363, 269, ',1,7,269,3363,', 4, '自贡', 'Zigong', 'zigong', '3');
INSERT INTO `crm_data_region` VALUES (3364, 269, ',1,7,269,3364,', 4, '攀枝花', 'Panzhihua', 'panzhihua', '4');
INSERT INTO `crm_data_region` VALUES (3365, 269, ',1,7,269,3365,', 4, '泸州', 'Luzhou', 'zhou', '5');
INSERT INTO `crm_data_region` VALUES (3366, 269, ',1,7,269,3366,', 4, '德阳', 'Deyang', 'deyang', '6');
INSERT INTO `crm_data_region` VALUES (3367, 269, ',1,7,269,3367,', 4, '绵阳', 'Mianyang', 'mianyang', '7');
INSERT INTO `crm_data_region` VALUES (3368, 269, ',1,7,269,3368,', 4, '广元', 'Guangyuan', 'guangyuan', '8');
INSERT INTO `crm_data_region` VALUES (3369, 269, ',1,7,269,3369,', 4, '遂宁', 'Suining', 'suining', '9');
INSERT INTO `crm_data_region` VALUES (3370, 269, ',1,7,269,3370,', 4, '内江', 'Neijiang', 'neijiang', '10');
INSERT INTO `crm_data_region` VALUES (3371, 269, ',1,7,269,3371,', 4, '乐山', 'Leshan', 'leshan', '11');
INSERT INTO `crm_data_region` VALUES (3372, 269, ',1,7,269,3372,', 4, '南充', 'Nanchong', 'nanchong', '13');
INSERT INTO `crm_data_region` VALUES (3373, 269, ',1,7,269,3373,', 4, '眉山', 'Meishan', 'meishan', '14');
INSERT INTO `crm_data_region` VALUES (3374, 269, ',1,7,269,3374,', 4, '宜宾', 'Yibin', 'yibin', '15');
INSERT INTO `crm_data_region` VALUES (3375, 269, ',1,7,269,3375,', 4, '广安', 'Guang\'an', 'guangan', '16');
INSERT INTO `crm_data_region` VALUES (3376, 269, ',1,7,269,3376,', 4, '达州', 'Dazhou', 'dazhou', '17');
INSERT INTO `crm_data_region` VALUES (3377, 269, ',1,7,269,3377,', 4, '雅安', 'Ya\'an', 'yaan', '18');
INSERT INTO `crm_data_region` VALUES (3378, 269, ',1,7,269,3378,', 4, '巴中', 'Bazhong', 'bazhong', '19');
INSERT INTO `crm_data_region` VALUES (3379, 269, ',1,7,269,3379,', 4, '资阳', 'Ziyang', 'ziyang', '20');
INSERT INTO `crm_data_region` VALUES (3380, 269, ',1,7,269,3380,', 4, '阿坝', 'Aba Tibetan-Qiang Autonomous Prefecture', 'aba', '32');
INSERT INTO `crm_data_region` VALUES (3381, 269, ',1,7,269,3381,', 4, '甘孜', 'Garze Tibetan Autonomous Prefecture', 'ganzi', '33');
INSERT INTO `crm_data_region` VALUES (3382, 269, ',1,7,269,3382,', 4, '凉山', 'Liangshan Yi Autonomous Prefecture', 'liangshan', '34');
INSERT INTO `crm_data_region` VALUES (3383, 270, ',1,7,270,3383,', 4, '贵阳', 'Guiyang', 'guiyang', '1');
INSERT INTO `crm_data_region` VALUES (3384, 270, ',1,7,270,3384,', 4, '六盘水', 'Liupanshui', 'liupanshui', '2');
INSERT INTO `crm_data_region` VALUES (3385, 270, ',1,7,270,3385,', 4, '遵义', 'Zunyi', 'zunyi', '3');
INSERT INTO `crm_data_region` VALUES (3386, 270, ',1,7,270,3386,', 4, '安顺', 'Anshun', 'anshun', '4');
INSERT INTO `crm_data_region` VALUES (3387, 270, ',1,7,270,3387,', 4, '铜仁', 'Tongren', 'tongren', '22');
INSERT INTO `crm_data_region` VALUES (3388, 270, ',1,7,270,3388,', 4, '黔西南', 'Qianxinan Buyi-Miao Autonomous Prefecture', 'qianxinan', '23');
INSERT INTO `crm_data_region` VALUES (3389, 270, ',1,7,270,3389,', 4, '毕节', 'Bijie', 'bijie', '24');
INSERT INTO `crm_data_region` VALUES (3390, 270, ',1,7,270,3390,', 4, '黔东南', 'Qiandongnan Miao-Dong Autonomous Prefecture', 'qiandongnan', '26');
INSERT INTO `crm_data_region` VALUES (3391, 270, ',1,7,270,3391,', 4, '黔南', 'Qiannan Buyi Autonomous Prefecture', 'qiannan', '27');
INSERT INTO `crm_data_region` VALUES (3392, 271, ',1,7,271,3392,', 4, '昆明', 'Kunming', 'kunming', '1');
INSERT INTO `crm_data_region` VALUES (3393, 271, ',1,7,271,3393,', 4, '曲靖', 'Qujing', 'qujing', '3');
INSERT INTO `crm_data_region` VALUES (3394, 271, ',1,7,271,3394,', 4, '玉溪', 'Yuxi', 'yuxi', '4');
INSERT INTO `crm_data_region` VALUES (3395, 271, ',1,7,271,3395,', 4, '保山', 'Baoshan', 'baoshan', '5');
INSERT INTO `crm_data_region` VALUES (3396, 271, ',1,7,271,3396,', 4, '昭通', 'Zhaotong', 'zhaotong', '6');
INSERT INTO `crm_data_region` VALUES (3397, 271, ',1,7,271,3397,', 4, '丽江', 'Lijiang', 'lijiang', '7');
INSERT INTO `crm_data_region` VALUES (3398, 271, ',1,7,271,3398,', 4, '普洱', 'Pu\'er', 'puer', '8');
INSERT INTO `crm_data_region` VALUES (3399, 271, ',1,7,271,3399,', 4, '临沧', 'Lincang', 'lincang', '9');
INSERT INTO `crm_data_region` VALUES (3400, 271, ',1,7,271,3400,', 4, '楚雄', 'Chuxiong Yi Autonomous Prefecture', 'chuxiong', '23');
INSERT INTO `crm_data_region` VALUES (3401, 271, ',1,7,271,3401,', 4, '红河', 'Honghe Hani-Yi Autonomous Prefecture', 'honghe', '25');
INSERT INTO `crm_data_region` VALUES (3402, 271, ',1,7,271,3402,', 4, '文山', 'Wenshan Zhuang-Miao Autonomous Prefecture', 'wenshan', '26');
INSERT INTO `crm_data_region` VALUES (3403, 271, ',1,7,271,3403,', 4, '西双版纳', 'Xishuangbanna Dai Autonomous Prefecture', 'xishuangbanna', '28');
INSERT INTO `crm_data_region` VALUES (3404, 271, ',1,7,271,3404,', 4, '大理', 'Dali Bai Autonomous Prefecture', 'dali', '29');
INSERT INTO `crm_data_region` VALUES (3405, 271, ',1,7,271,3405,', 4, '德宏', 'Dehong Dai-Jingpo Autonomous Prefecture', 'dehong', '31');
INSERT INTO `crm_data_region` VALUES (3406, 271, ',1,7,271,3406,', 4, '怒江', 'Nujiang Lisu Autonomous Prefecture', 'nujiang', '33');
INSERT INTO `crm_data_region` VALUES (3407, 271, ',1,7,271,3407,', 4, '迪庆', 'Diqing Tibetan Autonomous Prefecture', 'diqing', '34');
INSERT INTO `crm_data_region` VALUES (3408, 272, ',1,7,272,3408,', 4, '拉萨', 'Lhasa', 'lasa', '1');
INSERT INTO `crm_data_region` VALUES (3409, 272, ',1,7,272,3409,', 4, '昌都', 'Qamdo', 'changdu', '21');
INSERT INTO `crm_data_region` VALUES (3410, 272, ',1,7,272,3410,', 4, '山南', 'Shannan', 'shannan', '22');
INSERT INTO `crm_data_region` VALUES (3411, 272, ',1,7,272,3411,', 4, '日喀则', 'Xigaze', 'rikaze', '23');
INSERT INTO `crm_data_region` VALUES (3412, 272, ',1,7,272,3412,', 4, '那曲', 'Nagqu', 'naqu', '24');
INSERT INTO `crm_data_region` VALUES (3413, 272, ',1,7,272,3413,', 4, '阿里', 'Ngari', 'ali', '25');
INSERT INTO `crm_data_region` VALUES (3414, 272, ',1,7,272,3414,', 4, '林芝', 'Nyingchi', 'linzhi', '26');
INSERT INTO `crm_data_region` VALUES (3415, 273, ',1,7,273,3415,', 4, '西安', 'Xi\'an', 'xian', '1');
INSERT INTO `crm_data_region` VALUES (3416, 273, ',1,7,273,3416,', 4, '铜川', 'Tongchuan', 'tongchuan', '2');
INSERT INTO `crm_data_region` VALUES (3417, 273, ',1,7,273,3417,', 4, '宝鸡', 'Baoji', 'baoji', '3');
INSERT INTO `crm_data_region` VALUES (3418, 273, ',1,7,273,3418,', 4, '咸阳', 'Xianyang', 'xianyang', '4');
INSERT INTO `crm_data_region` VALUES (3419, 273, ',1,7,273,3419,', 4, '渭南', 'Weinan', 'weinan', '5');
INSERT INTO `crm_data_region` VALUES (3420, 273, ',1,7,273,3420,', 4, '延安', 'Yan\'an', 'yanan', '6');
INSERT INTO `crm_data_region` VALUES (3421, 273, ',1,7,273,3421,', 4, '汉中', 'Hanzhong', 'hanzhong', '7');
INSERT INTO `crm_data_region` VALUES (3422, 273, ',1,7,273,3422,', 4, '榆林', 'Yulin', 'yulin', '8');
INSERT INTO `crm_data_region` VALUES (3423, 273, ',1,7,273,3423,', 4, '安康', 'Ankang', 'ankang', '9');
INSERT INTO `crm_data_region` VALUES (3424, 273, ',1,7,273,3424,', 4, '商洛', 'Shangluo', 'shangluo', '10');
INSERT INTO `crm_data_region` VALUES (3425, 274, ',1,7,274,3425,', 4, '兰州市', 'Lanzhou', 'lanzhoushi', '1');
INSERT INTO `crm_data_region` VALUES (3426, 274, ',1,7,274,3426,', 4, '嘉峪关', 'Jinchang', 'jiayuguan', '2');
INSERT INTO `crm_data_region` VALUES (3427, 274, ',1,7,274,3427,', 4, '金昌', 'Baiyin', 'jinchang', '3');
INSERT INTO `crm_data_region` VALUES (3428, 274, ',1,7,274,3428,', 4, '白银', 'Tianshui', 'baiyin', '4');
INSERT INTO `crm_data_region` VALUES (3429, 274, ',1,7,274,3429,', 4, '天水', 'Jiayuguan', 'tianshui', '5');
INSERT INTO `crm_data_region` VALUES (3430, 274, ',1,7,274,3430,', 4, '武威', 'Wuwei', 'wuwei', '6');
INSERT INTO `crm_data_region` VALUES (3431, 274, ',1,7,274,3431,', 4, '张掖', 'Zhangye', 'zhangye', '7');
INSERT INTO `crm_data_region` VALUES (3432, 274, ',1,7,274,3432,', 4, '平凉', 'Pingliang', 'pingliang', '8');
INSERT INTO `crm_data_region` VALUES (3433, 274, ',1,7,274,3433,', 4, '酒泉', 'Jiuquan', 'jiuquan', '9');
INSERT INTO `crm_data_region` VALUES (3434, 274, ',1,7,274,3434,', 4, '庆阳', 'Qingyang', 'qingyang', '10');
INSERT INTO `crm_data_region` VALUES (3435, 274, ',1,7,274,3435,', 4, '定西', 'Dingxi', 'dingxi', '11');
INSERT INTO `crm_data_region` VALUES (3436, 274, ',1,7,274,3436,', 4, '陇南', 'Longnan', 'longnan', '12');
INSERT INTO `crm_data_region` VALUES (3437, 274, ',1,7,274,3437,', 4, '临夏', 'Linxia Hui Autonomous Prefecture', 'linxia', '29');
INSERT INTO `crm_data_region` VALUES (3438, 274, ',1,7,274,3438,', 4, '甘南', 'Gannan Tibetan Autonomous Prefecture', 'gannan', '30');
INSERT INTO `crm_data_region` VALUES (3439, 275, ',1,7,275,3439,', 4, '西宁', 'Xining', 'xining', '1');
INSERT INTO `crm_data_region` VALUES (3440, 275, ',1,7,275,3440,', 4, '海东', 'Haidong', 'haidong', '21');
INSERT INTO `crm_data_region` VALUES (3441, 275, ',1,7,275,3441,', 4, '海北', 'Haibei Tibetan Autonomous Prefecture', 'haibei', '22');
INSERT INTO `crm_data_region` VALUES (3442, 275, ',1,7,275,3442,', 4, '黄南', 'Huangnan Tibetan Autonomous Prefecture', 'huangnan', '23');
INSERT INTO `crm_data_region` VALUES (3443, 275, ',1,7,275,3443,', 4, '海南', 'Hainan Tibetan Autonomous Prefecture', 'hainan', '25');
INSERT INTO `crm_data_region` VALUES (3444, 275, ',1,7,275,3444,', 4, '果洛', 'Guoluo Tibetan Autonomous Prefecture', 'guoluo', '26');
INSERT INTO `crm_data_region` VALUES (3445, 275, ',1,7,275,3445,', 4, '玉树', 'Yushu Tibetan Autonomous Prefecture', 'yushu', '27');
INSERT INTO `crm_data_region` VALUES (3446, 275, ',1,7,275,3446,', 4, '海西', 'Haixi Mongol-Tibetan Autonomous Prefecture', 'haixi', '28');
INSERT INTO `crm_data_region` VALUES (3447, 276, ',1,7,276,3447,', 4, '银川', 'Yinchuan', 'yinchuan', '1');
INSERT INTO `crm_data_region` VALUES (3448, 276, ',1,7,276,3448,', 4, '石嘴山', 'Shizuishan', 'shizuishan', '2');
INSERT INTO `crm_data_region` VALUES (3449, 276, ',1,7,276,3449,', 4, '吴忠', 'Wuzhong', 'wuzhong', '3');
INSERT INTO `crm_data_region` VALUES (3450, 276, ',1,7,276,3450,', 4, '固原', 'Guyuan', 'guyuan', '4');
INSERT INTO `crm_data_region` VALUES (3451, 276, ',1,7,276,3451,', 4, '中卫', 'Zhongwei', 'zhongwei', '5');
INSERT INTO `crm_data_region` VALUES (3452, 277, ',1,7,277,3452,', 4, '乌鲁木齐', 'Urumqi', 'wulumuqi', '1');
INSERT INTO `crm_data_region` VALUES (3453, 277, ',1,7,277,3453,', 4, '克拉玛依', 'Karamay', 'kelamayi', '2');
INSERT INTO `crm_data_region` VALUES (3454, 277, ',1,7,277,3454,', 4, '吐鲁番', 'Turpan', 'tulufan', '21');
INSERT INTO `crm_data_region` VALUES (3455, 277, ',1,7,277,3455,', 4, '哈密', 'Hami', 'hami', '22');
INSERT INTO `crm_data_region` VALUES (3456, 277, ',1,7,277,3456,', 4, '昌吉', 'Changji Hui Autonomous Prefecture', 'changji', '23');
INSERT INTO `crm_data_region` VALUES (3457, 277, ',1,7,277,3457,', 4, '博尔塔拉', 'Bortala Mongol Autonomous Prefecture', 'boertala', '27');
INSERT INTO `crm_data_region` VALUES (3458, 277, ',1,7,277,3458,', 4, '巴音郭楞', 'Bayingolin Mongol Autonomous Prefecture', 'bayinguoleng', '28');
INSERT INTO `crm_data_region` VALUES (3459, 277, ',1,7,277,3459,', 4, '阿克苏', 'Aksu', 'akesu', '29');
INSERT INTO `crm_data_region` VALUES (3460, 277, ',1,7,277,3460,', 4, '克孜勒苏', 'Kizilsu Kirgiz Autonomous Prefecture', 'kezilesu', '30');
INSERT INTO `crm_data_region` VALUES (3461, 277, ',1,7,277,3461,', 4, '喀什', 'Kashi', 'kashi', '31');
INSERT INTO `crm_data_region` VALUES (3462, 277, ',1,7,277,3462,', 4, '和田', 'Hotan', 'hetian', '32');
INSERT INTO `crm_data_region` VALUES (3463, 277, ',1,7,277,3463,', 4, '伊犁', 'Ili Kazakh Autonomous Prefecture', 'yili', '40');
INSERT INTO `crm_data_region` VALUES (3464, 277, ',1,7,277,3464,', 4, '塔城', 'Tacheng', 'tacheng', '42');
INSERT INTO `crm_data_region` VALUES (3465, 277, ',1,7,277,3465,', 4, '阿勒泰', 'Altay', 'aletai', '43');
INSERT INTO `crm_data_region` VALUES (3466, 277, ',1,7,277,3466,', 4, '石河子', 'Shihezi', 'shihezi', '91');
INSERT INTO `crm_data_region` VALUES (3467, 277, ',1,7,277,3467,', 4, '阿拉尔', 'Alar', 'alaer', '92');
INSERT INTO `crm_data_region` VALUES (3468, 277, ',1,7,277,3468,', 4, '图木舒克', 'Tumsuk', 'tumushuke', '93');
INSERT INTO `crm_data_region` VALUES (3469, 277, ',1,7,277,3469,', 4, '五家渠', 'Wujiaqu', 'wujiaqu', '94');
INSERT INTO `crm_data_region` VALUES (3470, 277, ',1,7,277,3470,', 4, '北屯', 'Beitun', 'beitun', '95');
INSERT INTO `crm_data_region` VALUES (3471, 278, ',1,7,278,3471,', 4, '台北市', 'Taipei City', 'taibeishi', '1');
INSERT INTO `crm_data_region` VALUES (3472, 278, ',1,7,278,3472,', 4, '高雄市', 'Kaohsiung City', 'gaoxiongshi', '2');
INSERT INTO `crm_data_region` VALUES (3473, 278, ',1,7,278,3473,', 4, '基隆市', 'Keelung City', 'jilongshi', '3');
INSERT INTO `crm_data_region` VALUES (3474, 278, ',1,7,278,3474,', 4, '台中市', 'Taichung City', 'taizhongshi', '4');
INSERT INTO `crm_data_region` VALUES (3475, 278, ',1,7,278,3475,', 4, '台南市', 'Tainan City', 'tainanshi', '5');
INSERT INTO `crm_data_region` VALUES (3476, 278, ',1,7,278,3476,', 4, '新竹市', 'Hsinchu City', 'xinzhushi', '6');
INSERT INTO `crm_data_region` VALUES (3477, 278, ',1,7,278,3477,', 4, '嘉义市', 'Chiayi City', 'jiayishi', '7');
INSERT INTO `crm_data_region` VALUES (3478, 278, ',1,7,278,3478,', 4, '台北县', 'Taipei County', 'taibeixian', '8');
INSERT INTO `crm_data_region` VALUES (3479, 278, ',1,7,278,3479,', 4, '宜兰县', 'Ilan County', 'yilanxian', '9');
INSERT INTO `crm_data_region` VALUES (3480, 278, ',1,7,278,3480,', 4, '桃园县', 'Taoyuan County', 'taoyuanxian', '10');
INSERT INTO `crm_data_region` VALUES (3481, 278, ',1,7,278,3481,', 4, '新竹县', 'Hsinchu County', 'xinzhuxian', '11');
INSERT INTO `crm_data_region` VALUES (3482, 278, ',1,7,278,3482,', 4, '苗栗县', 'Miaoli County', 'miaolixian', '12');
INSERT INTO `crm_data_region` VALUES (3483, 278, ',1,7,278,3483,', 4, '台中县', 'Taichung County', 'taizhongxian', '13');
INSERT INTO `crm_data_region` VALUES (3484, 278, ',1,7,278,3484,', 4, '彰化县', 'Changhwa County', 'zhanghuaxian', '14');
INSERT INTO `crm_data_region` VALUES (3485, 278, ',1,7,278,3485,', 4, '南投县', 'Nantou County', 'nantouxian', '15');
INSERT INTO `crm_data_region` VALUES (3486, 278, ',1,7,278,3486,', 4, '云林县', 'Yunnlin County', 'yunlinxian', '16');
INSERT INTO `crm_data_region` VALUES (3487, 278, ',1,7,278,3487,', 4, '嘉义县', 'Chiayi County', 'jiayixian', '17');
INSERT INTO `crm_data_region` VALUES (3488, 278, ',1,7,278,3488,', 4, '台南县', 'Tainan County', 'tainanxian', '18');
INSERT INTO `crm_data_region` VALUES (3489, 278, ',1,7,278,3489,', 4, '高雄县', 'Kaohsiung County', 'gaoxiongxian', '19');
INSERT INTO `crm_data_region` VALUES (3490, 278, ',1,7,278,3490,', 4, '屏东县', 'Pingtung County', 'pingdongxian', '20');
INSERT INTO `crm_data_region` VALUES (3491, 278, ',1,7,278,3491,', 4, '台东县', 'Taitung County', 'taidongxian', '22');
INSERT INTO `crm_data_region` VALUES (3492, 278, ',1,7,278,3492,', 4, '花莲县', 'Hualian County', 'hualianxian', '23');
INSERT INTO `crm_data_region` VALUES (3493, 278, ',1,7,278,3493,', 4, '澎湖县', 'Penghu County', 'penghuxian', '21');
INSERT INTO `crm_data_region` VALUES (3494, 279, ',1,7,279,3494,', 4, '中西区', 'NaN', 'zhongxiqu', 'HCW');
INSERT INTO `crm_data_region` VALUES (3495, 279, ',1,7,279,3495,', 4, '东区', 'NaN', 'dongqu', 'HEA');
INSERT INTO `crm_data_region` VALUES (3496, 279, ',1,7,279,3496,', 4, '九龙城区', 'NaN', 'jiulongchengqu', 'KKC');
INSERT INTO `crm_data_region` VALUES (3497, 279, ',1,7,279,3497,', 4, '观塘区', 'NaN', 'guantangqu', 'KKT');
INSERT INTO `crm_data_region` VALUES (3498, 279, ',1,7,279,3498,', 4, '南区', 'NaN', 'nanqu', 'HSO');
INSERT INTO `crm_data_region` VALUES (3499, 279, ',1,7,279,3499,', 4, '深水埗区', 'NaN', 'shenshui', 'KSS');
INSERT INTO `crm_data_region` VALUES (3500, 279, ',1,7,279,3500,', 4, '黄大仙区', 'NaN', 'huangdaxianqu', 'KWT');
INSERT INTO `crm_data_region` VALUES (3501, 279, ',1,7,279,3501,', 4, '湾仔区', 'NaN', 'wanziqu', 'HWC');
INSERT INTO `crm_data_region` VALUES (3502, 279, ',1,7,279,3502,', 4, '油尖旺区', 'NaN', 'youjianwangqu', 'KYT');
INSERT INTO `crm_data_region` VALUES (3503, 279, ',1,7,279,3503,', 4, '离岛区', 'NaN', 'lidaoqu', 'NIS');
INSERT INTO `crm_data_region` VALUES (3504, 279, ',1,7,279,3504,', 4, '葵青区', 'NaN', 'kuiqingqu', 'NKT');
INSERT INTO `crm_data_region` VALUES (3505, 279, ',1,7,279,3505,', 4, '北区', 'NaN', 'beiqu', 'NNO');
INSERT INTO `crm_data_region` VALUES (3506, 279, ',1,7,279,3506,', 4, '西贡区', 'NaN', 'xigongqu', 'NSK');
INSERT INTO `crm_data_region` VALUES (3507, 279, ',1,7,279,3507,', 4, '沙田区', 'NaN', 'shatianqu', 'NST');
INSERT INTO `crm_data_region` VALUES (3508, 279, ',1,7,279,3508,', 4, '屯门区', 'NaN', 'tunmenqu', 'NTM');
INSERT INTO `crm_data_region` VALUES (3509, 279, ',1,7,279,3509,', 4, '大埔区', 'NaN', 'dapuqu', 'NTP');
INSERT INTO `crm_data_region` VALUES (3510, 279, ',1,7,279,3510,', 4, '荃湾区', 'NaN', 'wanqu', 'NTW');
INSERT INTO `crm_data_region` VALUES (3511, 279, ',1,7,279,3511,', 4, '元朗区', 'NaN', 'yuanlangqu', 'NYL');
INSERT INTO `crm_data_region` VALUES (3512, 280, ',1,7,280,3512,', 4, '花地玛堂区', 'NaN', 'huadimatangqu', 'OLF');
INSERT INTO `crm_data_region` VALUES (3513, 280, ',1,7,280,3513,', 4, '圣安多尼堂区', 'NaN', 'shenganduonitangqu', 'ANT');
INSERT INTO `crm_data_region` VALUES (3514, 280, ',1,7,280,3514,', 4, '大堂区', 'NaN', 'datangqu', 'CAT');
INSERT INTO `crm_data_region` VALUES (3515, 280, ',1,7,280,3515,', 4, '望德堂区', 'NaN', 'wangdetangqu', 'LAW');
INSERT INTO `crm_data_region` VALUES (3516, 280, ',1,7,280,3516,', 4, '风顺堂区', 'NaN', 'fengshuntangqu', 'LAZ');
INSERT INTO `crm_data_region` VALUES (3517, 280, ',1,7,280,3517,', 4, '氹仔', 'NaN', '', 'TPA');
INSERT INTO `crm_data_region` VALUES (3518, 280, ',1,7,280,3518,', 4, '路环', 'NaN', 'luhuan', 'CLN');
INSERT INTO `crm_data_region` VALUES (3519, 281, ',6,25,281,3519,', 4, '北帕默斯顿', 'Palmerston', 'beipamosidun', 'PAL');
INSERT INTO `crm_data_region` VALUES (3520, 281, ',6,25,281,3520,', 4, '达尔文', 'Darwin', 'daerwen', 'DRW');
INSERT INTO `crm_data_region` VALUES (3521, 282, ',6,25,282,3521,', 4, '堪培拉', 'Canberra', 'kanpeila', 'CBR');
INSERT INTO `crm_data_region` VALUES (3522, 283, ',6,25,283,3522,', 4, '布里斯班', 'Brisbane', 'bulisiban', 'BNE');
INSERT INTO `crm_data_region` VALUES (3523, 283, ',6,25,283,3523,', 4, '黄金海岸', 'Gold Coast', 'huangjinhaian', 'OOL');
INSERT INTO `crm_data_region` VALUES (3524, 283, ',6,25,283,3524,', 4, '凯恩斯', 'Cairns', 'kaiensi', 'CNS');
INSERT INTO `crm_data_region` VALUES (3525, 283, ',6,25,283,3525,', 4, '日光海岸', 'Caloundra', 'riguanghaian', 'CUD');
INSERT INTO `crm_data_region` VALUES (3526, 283, ',6,25,283,3526,', 4, '汤斯维尔', 'Townsville', 'tangsiweier', 'TSV');
INSERT INTO `crm_data_region` VALUES (3527, 283, ',6,25,283,3527,', 4, '图文巴', 'Toowoomba', 'tuwenba', 'TWB');
INSERT INTO `crm_data_region` VALUES (3528, 284, ',6,25,284,3528,', 4, '阿德莱德', 'Adelaide', 'adelaide', 'ADL');
INSERT INTO `crm_data_region` VALUES (3529, 284, ',6,25,284,3529,', 4, '奥古斯塔港', 'Port Augusta', 'aogusitagang', 'PUG');
INSERT INTO `crm_data_region` VALUES (3530, 284, ',6,25,284,3530,', 4, '甘比亚山', 'Mount Gambier', 'ganbiyashan', 'MGB');
INSERT INTO `crm_data_region` VALUES (3531, 284, ',6,25,284,3531,', 4, '怀阿拉', 'Whyalla', 'huaiala', 'WAY');
INSERT INTO `crm_data_region` VALUES (3532, 284, ',6,25,284,3532,', 4, '林肯港', 'Port Lincoln', 'linkengang', 'PLO');
INSERT INTO `crm_data_region` VALUES (3533, 284, ',6,25,284,3533,', 4, '默里布里奇', 'Murray Bridge', 'molibuliqi', 'MYB');
INSERT INTO `crm_data_region` VALUES (3534, 284, ',6,25,284,3534,', 4, '皮里港', 'Port Pirie', 'piligang', 'PPI');
INSERT INTO `crm_data_region` VALUES (3535, 284, ',6,25,284,3535,', 4, '维克托港', 'Victor Harbor', 'weiketuogang', 'VHA');
INSERT INTO `crm_data_region` VALUES (3536, 285, ',6,25,285,3536,', 4, '伯尼港', 'Burnie', 'bonigang', 'BWT');
INSERT INTO `crm_data_region` VALUES (3537, 285, ',6,25,285,3537,', 4, '德文波特', 'Devonport', 'dewenbote', 'DPO');
INSERT INTO `crm_data_region` VALUES (3538, 285, ',6,25,285,3538,', 4, '霍巴特', 'Hobart', 'huobate', 'HBA');
INSERT INTO `crm_data_region` VALUES (3539, 285, ',6,25,285,3539,', 4, '朗塞斯顿', 'Launceston', 'langsaisidun', 'LST');
INSERT INTO `crm_data_region` VALUES (3540, 286, ',6,25,286,3540,', 4, '吉朗', 'Geelong', 'jilang', 'GEX');
INSERT INTO `crm_data_region` VALUES (3541, 286, ',6,25,286,3541,', 4, '墨尔本', 'Melbourne', 'moerben', 'MEL');
INSERT INTO `crm_data_region` VALUES (3542, 287, ',6,25,287,3542,', 4, '奥尔巴尼', 'Albany', 'aoerbani', 'ALH');
INSERT INTO `crm_data_region` VALUES (3543, 287, ',6,25,287,3543,', 4, '班伯里', 'Bunbury', 'banboli', 'BUY');
INSERT INTO `crm_data_region` VALUES (3544, 287, ',6,25,287,3544,', 4, '弗里曼特尔港', 'Fremantle', 'fulimanteergang', 'FRE');
INSERT INTO `crm_data_region` VALUES (3545, 287, ',6,25,287,3545,', 4, '杰拉尔顿', 'Geraldton', 'jielaerdun', 'GET');
INSERT INTO `crm_data_region` VALUES (3546, 287, ',6,25,287,3546,', 4, '卡尔古利', 'Kalgoorlie', 'kaerguli', 'KGI');
INSERT INTO `crm_data_region` VALUES (3547, 287, ',6,25,287,3547,', 4, '曼哲拉', 'Mandurah', 'manzhela', 'MDU');
INSERT INTO `crm_data_region` VALUES (3548, 287, ',6,25,287,3548,', 4, '珀斯', 'Perth', 'si', 'PER');
INSERT INTO `crm_data_region` VALUES (3549, 288, ',6,25,288,3549,', 4, '纽卡斯尔', 'Newcastle', 'niukasier', 'NTL');
INSERT INTO `crm_data_region` VALUES (3550, 288, ',6,25,288,3550,', 4, '伍伦贡', 'Wollongong', 'wulungong', 'WOL');
INSERT INTO `crm_data_region` VALUES (3551, 288, ',6,25,288,3551,', 4, '悉尼', 'Sydney', 'xini', 'HBS');
INSERT INTO `crm_data_region` VALUES (3552, 289, ',1,89,289,3552,', 4, '达城郡', 'Dalseong-gun', 'dachengjun', 'DSG');
INSERT INTO `crm_data_region` VALUES (3553, 289, ',1,89,289,3553,', 4, '大邱', 'Daegu', 'daqiu', 'TAE');
INSERT INTO `crm_data_region` VALUES (3554, 289, ',1,89,289,3554,', 4, '寿城区', 'Suseong-gu', 'shouchengqu', 'SUS');
INSERT INTO `crm_data_region` VALUES (3555, 294, ',1,89,294,3555,', 4, '春川市', 'Chuncheon', 'chunchuanshi', 'CHC');
INSERT INTO `crm_data_region` VALUES (3556, 294, ',1,89,294,3556,', 4, '东海市', 'Donghae', 'donghaishi', 'TGH');
INSERT INTO `crm_data_region` VALUES (3557, 294, ',1,89,294,3557,', 4, '高城郡', 'Goseong County', 'gaochengjun', 'GSG');
INSERT INTO `crm_data_region` VALUES (3558, 294, ',1,89,294,3558,', 4, '横城郡', 'Hoengseong County', 'hengchengjun', 'HSG');
INSERT INTO `crm_data_region` VALUES (3559, 294, ',1,89,294,3559,', 4, '洪川郡', 'Hongcheon County', 'hongchuanjun', 'HCN');
INSERT INTO `crm_data_region` VALUES (3560, 294, ',1,89,294,3560,', 4, '华川郡', 'Hwacheon County', 'huachuanjun', 'HCH');
INSERT INTO `crm_data_region` VALUES (3561, 294, ',1,89,294,3561,', 4, '江陵市', 'Gangneung', 'jianglingshi', 'KAG');
INSERT INTO `crm_data_region` VALUES (3562, 294, ',1,89,294,3562,', 4, '旌善郡', 'Jeongseon County', 'shanjun', 'JSE');
INSERT INTO `crm_data_region` VALUES (3563, 294, ',1,89,294,3563,', 4, '麟蹄郡', 'Inje County', 'tijun', 'IJE');
INSERT INTO `crm_data_region` VALUES (3564, 294, ',1,89,294,3564,', 4, '宁越郡', 'Yeongwol County', 'ningyuejun', 'YWL');
INSERT INTO `crm_data_region` VALUES (3565, 294, ',1,89,294,3565,', 4, '平昌郡', 'Pyeongchang County', 'pingchangjun', 'POG');
INSERT INTO `crm_data_region` VALUES (3566, 294, ',1,89,294,3566,', 4, '三陟市', 'Samcheok', 'sanshi', 'SUK');
INSERT INTO `crm_data_region` VALUES (3567, 294, ',1,89,294,3567,', 4, '束草市', 'Sokcho', 'shucaoshi', 'SHO');
INSERT INTO `crm_data_region` VALUES (3568, 294, ',1,89,294,3568,', 4, '太白市', 'Taebaek', 'taibaishi', 'TBK');
INSERT INTO `crm_data_region` VALUES (3569, 294, ',1,89,294,3569,', 4, '铁原郡', 'Cheorwon County', 'tieyuanjun', 'CWN');
INSERT INTO `crm_data_region` VALUES (3570, 294, ',1,89,294,3570,', 4, '襄阳郡', 'Yangyang County', 'xiangyangjun', 'YNY');
INSERT INTO `crm_data_region` VALUES (3571, 294, ',1,89,294,3571,', 4, '杨口郡', 'Yanggu County', 'yangkoujun', 'YGU');
INSERT INTO `crm_data_region` VALUES (3572, 294, ',1,89,294,3572,', 4, '原州市', 'Wonju', 'yuanzhoushi', 'WJU');
INSERT INTO `crm_data_region` VALUES (3573, 295, ',1,89,295,3573,', 4, '安城市', 'Anseong', 'anchengshi', 'ASG');
INSERT INTO `crm_data_region` VALUES (3574, 295, ',1,89,295,3574,', 4, '安山市', 'Ansan', 'anshanshi', 'ASN');
INSERT INTO `crm_data_region` VALUES (3575, 295, ',1,89,295,3575,', 4, '安养市', 'Anyang', 'anyangshi', 'ANY');
INSERT INTO `crm_data_region` VALUES (3576, 295, ',1,89,295,3576,', 4, '抱川市', 'Pocheon', 'baochuanshi', 'POC');
INSERT INTO `crm_data_region` VALUES (3577, 295, ',1,89,295,3577,', 4, '城南市', 'Seongnam', 'chengnanshi', 'SEO');
INSERT INTO `crm_data_region` VALUES (3578, 295, ',1,89,295,3578,', 4, '东豆川市', 'Dongducheon', 'dongdouchuanshi', 'DDC');
INSERT INTO `crm_data_region` VALUES (3579, 295, ',1,89,295,3579,', 4, '富川市', 'Bucheon', 'fuchuanshi', 'BCN');
INSERT INTO `crm_data_region` VALUES (3580, 295, ',1,89,295,3580,', 4, '高阳市', 'Goyang', 'gaoyangshi', 'GYG');
INSERT INTO `crm_data_region` VALUES (3581, 295, ',1,89,295,3581,', 4, '光明市', 'Gwangmyeong', 'guangmingshi', 'GMG');
INSERT INTO `crm_data_region` VALUES (3582, 295, ',1,89,295,3582,', 4, '广州市', 'Gwangju', 'guangzhoushi', 'KWU');
INSERT INTO `crm_data_region` VALUES (3583, 295, ',1,89,295,3583,', 4, '果川市', 'Gwacheon', 'guochuanshi', 'GCN');
INSERT INTO `crm_data_region` VALUES (3584, 295, ',1,89,295,3584,', 4, '河南市', 'Hanam', 'henanshi', 'HNM');
INSERT INTO `crm_data_region` VALUES (3585, 295, ',1,89,295,3585,', 4, '华城市', 'Hwaseong', 'huachengshi', 'HCH');
INSERT INTO `crm_data_region` VALUES (3586, 295, ',1,89,295,3586,', 4, '加平郡', 'Gapyeong County', 'jiapingjun', 'GPG');
INSERT INTO `crm_data_region` VALUES (3587, 295, ',1,89,295,3587,', 4, '金浦市', 'Gimpo', 'jinpushi', 'GMP');
INSERT INTO `crm_data_region` VALUES (3588, 295, ',1,89,295,3588,', 4, '九里市', 'Guri', 'jiulishi', 'GRI');
INSERT INTO `crm_data_region` VALUES (3589, 295, ',1,89,295,3589,', 4, '军浦市', 'Gunpo', 'junpushi', 'GUN');
INSERT INTO `crm_data_region` VALUES (3590, 295, ',1,89,295,3590,', 4, '骊州郡', 'Yeoju County', 'zhoujun', 'YJU');
INSERT INTO `crm_data_region` VALUES (3591, 295, ',1,89,295,3591,', 4, '利川市', 'Icheon', 'lichuanshi', 'ICE');
INSERT INTO `crm_data_region` VALUES (3592, 295, ',1,89,295,3592,', 4, '涟川郡', 'Yeoncheon County', 'lianchuanjun', 'YCN');
INSERT INTO `crm_data_region` VALUES (3593, 295, ',1,89,295,3593,', 4, '龙仁市', 'Yongin', 'longrenshi', 'YNG');
INSERT INTO `crm_data_region` VALUES (3594, 295, ',1,89,295,3594,', 4, '南杨州市', 'Namyangju', 'nanyangzhoushi', 'NYU');
INSERT INTO `crm_data_region` VALUES (3595, 295, ',1,89,295,3595,', 4, '平泽市', 'Pyeongtaek', 'pingzeshi', 'PTK');
INSERT INTO `crm_data_region` VALUES (3596, 295, ',1,89,295,3596,', 4, '坡州市', 'Paju', 'pozhoushi', 'PJU');
INSERT INTO `crm_data_region` VALUES (3597, 295, ',1,89,295,3597,', 4, '始兴市', 'Siheung', 'shixingshi', 'SHE');
INSERT INTO `crm_data_region` VALUES (3598, 295, ',1,89,295,3598,', 4, '水原市', 'Suwon', 'shuiyuanshi', 'SUO');
INSERT INTO `crm_data_region` VALUES (3599, 295, ',1,89,295,3599,', 4, '乌山市', 'Osan', 'wushanshi', 'OSN');
INSERT INTO `crm_data_region` VALUES (3600, 295, ',1,89,295,3600,', 4, '扬平郡', 'Yangpyeong County', 'yangpingjun', 'YPG');
INSERT INTO `crm_data_region` VALUES (3601, 295, ',1,89,295,3601,', 4, '杨州市', 'Yangju', 'yangzhoushi', 'YYU');
INSERT INTO `crm_data_region` VALUES (3602, 295, ',1,89,295,3602,', 4, '仪旺市', 'Uiwang', 'yiwangshi', 'UWN');
INSERT INTO `crm_data_region` VALUES (3603, 295, ',1,89,295,3603,', 4, '议政府市', 'Uijeongbu', 'yizhengfushi', 'UIJ');
INSERT INTO `crm_data_region` VALUES (3604, 296, ',1,89,296,3604,', 4, '安东市', 'Andong', 'andongshi', 'ADG');
INSERT INTO `crm_data_region` VALUES (3605, 296, ',1,89,296,3605,', 4, '奉化郡', 'Bonghwa County', 'fenghuajun', 'BHA');
INSERT INTO `crm_data_region` VALUES (3606, 296, ',1,89,296,3606,', 4, '高灵郡', 'Goryeong County', 'gaolingjun', 'GRG');
INSERT INTO `crm_data_region` VALUES (3607, 296, ',1,89,296,3607,', 4, '龟尾市', 'Gumi', 'guiweishi', 'KUM');
INSERT INTO `crm_data_region` VALUES (3608, 296, ',1,89,296,3608,', 4, '金泉市', 'Gimcheon', 'jinquanshi', 'KMC');
INSERT INTO `crm_data_region` VALUES (3609, 296, ',1,89,296,3609,', 4, '军威郡', 'Gunwi County', 'junweijun', 'GWI');
INSERT INTO `crm_data_region` VALUES (3610, 296, ',1,89,296,3610,', 4, '醴泉郡', 'Yecheon County', 'quanjun', 'YEC');
INSERT INTO `crm_data_region` VALUES (3611, 296, ',1,89,296,3611,', 4, '浦项市', 'Pohang', 'puxiangshi', 'KPO');
INSERT INTO `crm_data_region` VALUES (3612, 296, ',1,89,296,3612,', 4, '漆谷郡', 'Chilgok County', 'qigujun', 'CGK');
INSERT INTO `crm_data_region` VALUES (3613, 296, ',1,89,296,3613,', 4, '淸道郡', 'Cheongdo County', '', 'CDO');
INSERT INTO `crm_data_region` VALUES (3614, 296, ',1,89,296,3614,', 4, '靑松郡', 'Cheongsong County', '', 'CSG');
INSERT INTO `crm_data_region` VALUES (3615, 296, ',1,89,296,3615,', 4, '庆山市', 'Gyeongsan', 'qingshanshi', 'GYS');
INSERT INTO `crm_data_region` VALUES (3616, 296, ',1,89,296,3616,', 4, '庆州市', 'Gyeongju', 'qingzhoushi', 'GJU');
INSERT INTO `crm_data_region` VALUES (3617, 296, ',1,89,296,3617,', 4, '荣州市', 'Yeongju', 'rongzhoushi', 'YEJ');
INSERT INTO `crm_data_region` VALUES (3618, 296, ',1,89,296,3618,', 4, '尙州市', 'Sangju', '', 'SJU');
INSERT INTO `crm_data_region` VALUES (3619, 296, ',1,89,296,3619,', 4, '蔚珍郡', 'Uljin County', 'weizhenjun', 'UJN');
INSERT INTO `crm_data_region` VALUES (3620, 296, ',1,89,296,3620,', 4, '闻庆市', 'Mungyeong', 'wenqingshi', 'MGG');
INSERT INTO `crm_data_region` VALUES (3621, 296, ',1,89,296,3621,', 4, '星州郡', 'Seongju County', 'xingzhoujun', 'SEJ');
INSERT INTO `crm_data_region` VALUES (3622, 296, ',1,89,296,3622,', 4, '义城郡', 'Uiseong County', 'yichengjun', 'USG');
INSERT INTO `crm_data_region` VALUES (3623, 296, ',1,89,296,3623,', 4, '英阳郡', 'Yeongyang County', 'yingyangjun', 'YYG');
INSERT INTO `crm_data_region` VALUES (3624, 296, ',1,89,296,3624,', 4, '盈德郡', 'Yeongdeok County', 'yingdejun', 'YDK');
INSERT INTO `crm_data_region` VALUES (3625, 296, ',1,89,296,3625,', 4, '永川市', 'Yeongcheon', 'yongchuanshi', 'YCH');
INSERT INTO `crm_data_region` VALUES (3626, 296, ',1,89,296,3626,', 4, '郁陵郡', 'Ulleung County', 'yulingjun', 'ULG');
INSERT INTO `crm_data_region` VALUES (3627, 297, ',1,89,297,3627,', 4, '昌宁郡', 'Changnyeong County', 'changningjun', 'CNG');
INSERT INTO `crm_data_region` VALUES (3628, 297, ',1,89,297,3628,', 4, '昌原市', 'Changwon', 'changyuanshi', 'CHW');
INSERT INTO `crm_data_region` VALUES (3629, 297, ',1,89,297,3629,', 4, '固城郡', 'Goseong County', 'guchengjun', 'GSO');
INSERT INTO `crm_data_region` VALUES (3630, 297, ',1,89,297,3630,', 4, '河东郡', 'Hadong County', 'hedongjun', 'HDG');
INSERT INTO `crm_data_region` VALUES (3631, 297, ',1,89,297,3631,', 4, '金海市', 'Gimhae', 'jinhaishi', 'KMH');
INSERT INTO `crm_data_region` VALUES (3632, 297, ',1,89,297,3632,', 4, '晋州市', 'Jinju', 'jinzhoushi', 'HIN');
INSERT INTO `crm_data_region` VALUES (3633, 297, ',1,89,297,3633,', 4, '居昌郡', 'Geochang County', 'juchangjun', 'GCH');
INSERT INTO `crm_data_region` VALUES (3634, 297, ',1,89,297,3634,', 4, '巨济市', 'Geoje', 'jujishi', 'KJE');
INSERT INTO `crm_data_region` VALUES (3635, 297, ',1,89,297,3635,', 4, '梁山市', 'Yangsan', 'liangshanshi', 'YSN');
INSERT INTO `crm_data_region` VALUES (3636, 297, ',1,89,297,3636,', 4, '马山市', 'Masan', 'mashanshi', 'MAS');
INSERT INTO `crm_data_region` VALUES (3637, 297, ',1,89,297,3637,', 4, '密阳市', 'Miryang', 'miyangshi', 'MIR');
INSERT INTO `crm_data_region` VALUES (3638, 297, ',1,89,297,3638,', 4, '南海郡', 'Namhae County', 'nanhaijun', 'NHE');
INSERT INTO `crm_data_region` VALUES (3639, 297, ',1,89,297,3639,', 4, '山淸郡', 'Sancheong County', 'shan', 'SCH');
INSERT INTO `crm_data_region` VALUES (3640, 297, ',1,89,297,3640,', 4, '泗川市', 'Sacheon', 'chuanshi', 'SAH');
INSERT INTO `crm_data_region` VALUES (3641, 297, ',1,89,297,3641,', 4, '统营市', 'Tongyeong', 'tongyingshi', 'TYG');
INSERT INTO `crm_data_region` VALUES (3642, 297, ',1,89,297,3642,', 4, '陜川郡', 'Hapcheon County', '', 'HCE');
INSERT INTO `crm_data_region` VALUES (3643, 297, ',1,89,297,3643,', 4, '咸安郡', 'Haman County', 'xiananjun', 'HAN');
INSERT INTO `crm_data_region` VALUES (3644, 297, ',1,89,297,3644,', 4, '咸阳郡', 'Hamyang County', 'xianyangjun', 'HYG');
INSERT INTO `crm_data_region` VALUES (3645, 297, ',1,89,297,3645,', 4, '宜宁郡', 'Uiryeong County', 'yiningjun', 'URG');
INSERT INTO `crm_data_region` VALUES (3646, 297, ',1,89,297,3646,', 4, '鎭海市', 'Jinhae', '', 'CHF');
INSERT INTO `crm_data_region` VALUES (3647, 298, ',1,89,298,3647,', 4, '淳昌郡', 'Sunchang County', 'chunchangjun', 'SCG');
INSERT INTO `crm_data_region` VALUES (3648, 298, ',1,89,298,3648,', 4, '扶安郡', 'Buan County', 'fuanjun', 'PUS');
INSERT INTO `crm_data_region` VALUES (3649, 298, ',1,89,298,3649,', 4, '高敞郡', 'Gochang County', 'gaochangjun', 'GCG');
INSERT INTO `crm_data_region` VALUES (3650, 298, ',1,89,298,3650,', 4, '金堤市', 'Gimje', 'jindishi', 'GJE');
INSERT INTO `crm_data_region` VALUES (3651, 298, ',1,89,298,3651,', 4, '井邑市', 'Jeongeup', 'jingyishi', 'JEO');
INSERT INTO `crm_data_region` VALUES (3652, 298, ',1,89,298,3652,', 4, '茂朱郡', 'Muju County', 'maozhujun', 'MJU');
INSERT INTO `crm_data_region` VALUES (3653, 298, ',1,89,298,3653,', 4, '南原市', 'Namwon', 'nanyuanshi', 'NWN');
INSERT INTO `crm_data_region` VALUES (3654, 298, ',1,89,298,3654,', 4, '全州市', 'Jeonju', 'quanzhoushi', 'JNJ');
INSERT INTO `crm_data_region` VALUES (3655, 298, ',1,89,298,3655,', 4, '群山市', 'Gunsan', 'qunshanshi', 'KUV');
INSERT INTO `crm_data_region` VALUES (3656, 298, ',1,89,298,3656,', 4, '任实郡', 'Imsil County', 'renshijun', 'ISL');
INSERT INTO `crm_data_region` VALUES (3657, 298, ',1,89,298,3657,', 4, '完州郡', 'Wanju County', 'wanzhoujun', 'WAJ');
INSERT INTO `crm_data_region` VALUES (3658, 298, ',1,89,298,3658,', 4, '益山市', 'Iksan', 'yishanshi', 'IKS');
INSERT INTO `crm_data_region` VALUES (3659, 298, ',1,89,298,3659,', 4, '长水郡', 'Jangsu County', 'changshuijun', 'JSU');
INSERT INTO `crm_data_region` VALUES (3660, 298, ',1,89,298,3660,', 4, '鎭安郡', 'Jinan County', '', 'JAN');
INSERT INTO `crm_data_region` VALUES (3661, 299, ',1,89,299,3661,', 4, '宝城郡', 'Boseong County', 'baochengjun', 'BSG');
INSERT INTO `crm_data_region` VALUES (3662, 299, ',1,89,299,3662,', 4, '高兴郡', 'Goheung County', 'gaoxingjun', 'GHG');
INSERT INTO `crm_data_region` VALUES (3663, 299, ',1,89,299,3663,', 4, '谷城郡', 'Gokseong County', 'guchengjun', 'GSE');
INSERT INTO `crm_data_region` VALUES (3664, 299, ',1,89,299,3664,', 4, '莞岛郡', 'Wando County', 'daojun', 'WND');
INSERT INTO `crm_data_region` VALUES (3665, 299, ',1,89,299,3665,', 4, '光阳市', 'Gwangyang', 'guangyangshi', 'KAN');
INSERT INTO `crm_data_region` VALUES (3666, 299, ',1,89,299,3666,', 4, '海南郡', 'Haenam County', 'hainanjun', 'HAE');
INSERT INTO `crm_data_region` VALUES (3667, 299, ',1,89,299,3667,', 4, '和顺郡', 'Hwasun County', 'heshunjun', 'HSN');
INSERT INTO `crm_data_region` VALUES (3668, 299, ',1,89,299,3668,', 4, '康津郡', 'Gangjin County', 'kangjinjun', 'GJN');
INSERT INTO `crm_data_region` VALUES (3669, 299, ',1,89,299,3669,', 4, '丽水市', 'Yeosu', 'lishuishi', 'YOS');
INSERT INTO `crm_data_region` VALUES (3670, 299, ',1,89,299,3670,', 4, '灵光郡', 'Yeonggwang County', 'lingguangjun', 'YGG');
INSERT INTO `crm_data_region` VALUES (3671, 299, ',1,89,299,3671,', 4, '灵岩郡', 'Yeongam County', 'lingyanjun', 'YAM');
INSERT INTO `crm_data_region` VALUES (3672, 299, ',1,89,299,3672,', 4, '罗州市', 'Naju', 'luozhoushi', 'NJU');
INSERT INTO `crm_data_region` VALUES (3673, 299, ',1,89,299,3673,', 4, '木浦市', 'Mokpo', 'mupushi', 'MOK');
INSERT INTO `crm_data_region` VALUES (3674, 299, ',1,89,299,3674,', 4, '求礼郡', 'Gurye County', 'qiulijun', 'GRE');
INSERT INTO `crm_data_region` VALUES (3675, 299, ',1,89,299,3675,', 4, '顺天市', 'Suncheon', 'shuntianshi', 'SYS');
INSERT INTO `crm_data_region` VALUES (3676, 299, ',1,89,299,3676,', 4, '潭阳郡', 'Damyang County', 'tanyangjun', 'DYA');
INSERT INTO `crm_data_region` VALUES (3677, 299, ',1,89,299,3677,', 4, '务安郡', 'Muan County', 'wuanjun', 'MAN');
INSERT INTO `crm_data_region` VALUES (3678, 299, ',1,89,299,3678,', 4, '咸平郡', 'Hampyeong County', 'xianpingjun', 'HPG');
INSERT INTO `crm_data_region` VALUES (3679, 299, ',1,89,299,3679,', 4, '新安郡', 'Sinan County', 'xinanjun', 'SAN');
INSERT INTO `crm_data_region` VALUES (3680, 299, ',1,89,299,3680,', 4, '长城郡', 'Jangseong County', 'changchengjun', 'JSN');
INSERT INTO `crm_data_region` VALUES (3681, 299, ',1,89,299,3681,', 4, '长兴郡', 'Jangheung County', 'changxingjun', 'JHG');
INSERT INTO `crm_data_region` VALUES (3682, 299, ',1,89,299,3682,', 4, '珍岛郡', 'Jindo County', 'zhendaojun', 'JDO');
INSERT INTO `crm_data_region` VALUES (3683, 303, ',1,89,303,3683,', 4, '报恩郡', 'Boeun County', 'baoenjun', 'BEN');
INSERT INTO `crm_data_region` VALUES (3684, 303, ',1,89,303,3684,', 4, '曾坪郡', 'Jeungpyeong County', 'zengpingjun', 'JYG');
INSERT INTO `crm_data_region` VALUES (3685, 303, ',1,89,303,3685,', 4, '丹阳郡', 'Danyang County', 'danyangjun', 'DYG');
INSERT INTO `crm_data_region` VALUES (3686, 303, ',1,89,303,3686,', 4, '堤川市', 'Jecheon', 'dichuanshi', 'JCH');
INSERT INTO `crm_data_region` VALUES (3687, 303, ',1,89,303,3687,', 4, '槐山郡', 'Goesan County', 'huaishanjun', 'GSN');
INSERT INTO `crm_data_region` VALUES (3688, 303, ',1,89,303,3688,', 4, '淸原郡', 'Cheongwon County', '', 'CWO');
INSERT INTO `crm_data_region` VALUES (3689, 303, ',1,89,303,3689,', 4, '淸州市', 'Cheongju', '', 'CJJ');
INSERT INTO `crm_data_region` VALUES (3690, 303, ',1,89,303,3690,', 4, '沃川郡', 'Okcheon County', 'wochuanjun', 'OCN');
INSERT INTO `crm_data_region` VALUES (3691, 303, ',1,89,303,3691,', 4, '阴城郡', 'Eumseong County', 'yinchengjun', 'ESG');
INSERT INTO `crm_data_region` VALUES (3692, 303, ',1,89,303,3692,', 4, '永同郡', 'Yeongdong County', 'yongtongjun', 'YDG');
INSERT INTO `crm_data_region` VALUES (3693, 303, ',1,89,303,3693,', 4, '鎭川郡', 'Jincheon County', '', 'JCN');
INSERT INTO `crm_data_region` VALUES (3694, 303, ',1,89,303,3694,', 4, '忠州市', 'Chungju', 'zhongzhoushi', 'CHU');
INSERT INTO `crm_data_region` VALUES (3695, 304, ',1,89,304,3695,', 4, '保宁市', 'Boryeong', 'baoningshi', 'BOR');
INSERT INTO `crm_data_region` VALUES (3696, 304, ',1,89,304,3696,', 4, '扶余郡', 'Buyeo County', 'fuyujun', 'BYO');
INSERT INTO `crm_data_region` VALUES (3697, 304, ',1,89,304,3697,', 4, '公州市', 'Gongju', 'gongzhoushi', 'GOJ');
INSERT INTO `crm_data_region` VALUES (3698, 304, ',1,89,304,3698,', 4, '洪城郡', 'Hongseong County', 'hongchengjun', 'HSE');
INSERT INTO `crm_data_region` VALUES (3699, 304, ',1,89,304,3699,', 4, '鸡龙市', 'Gyeryong', 'jilongshi', 'GYE');
INSERT INTO `crm_data_region` VALUES (3700, 304, ',1,89,304,3700,', 4, '锦山郡', 'Geumsan County', 'jinshanjun', 'GSA');
INSERT INTO `crm_data_region` VALUES (3701, 304, ',1,89,304,3701,', 4, '礼山郡', 'Yesan County', 'lishanjun', 'YOS');
INSERT INTO `crm_data_region` VALUES (3702, 304, ',1,89,304,3702,', 4, '论山市', 'Nonsan', 'lunshanshi', 'NSN');
INSERT INTO `crm_data_region` VALUES (3703, 304, ',1,89,304,3703,', 4, '青阳郡', 'Cheongyang County', 'qingyangjun', 'CYG');
INSERT INTO `crm_data_region` VALUES (3704, 304, ',1,89,304,3704,', 4, '瑞山市', 'Seosan', 'ruishanshi', 'SSA');
INSERT INTO `crm_data_region` VALUES (3705, 304, ',1,89,304,3705,', 4, '舒川郡', 'Seocheon County', 'shuchuanjun', 'SCE');
INSERT INTO `crm_data_region` VALUES (3706, 304, ',1,89,304,3706,', 4, '泰安郡', 'Taean County', 'taianjun', 'TAN');
INSERT INTO `crm_data_region` VALUES (3707, 304, ',1,89,304,3707,', 4, '唐津郡', 'Dangjin County', 'tangjinjun', 'TJI');
INSERT INTO `crm_data_region` VALUES (3708, 304, ',1,89,304,3708,', 4, '天安市', 'Cheonan', 'tiananshi', 'CHO');
INSERT INTO `crm_data_region` VALUES (3709, 304, ',1,89,304,3709,', 4, '牙山市', 'Asan', 'yashanshi', 'ASA');
INSERT INTO `crm_data_region` VALUES (3710, 304, ',1,89,304,3710,', 4, '燕岐郡', 'Yeongi County', 'yanjun', 'YGI');
INSERT INTO `crm_data_region` VALUES (3711, 305, ',1,131,305,3711,', 4, '北海', 'Butterworth', 'beihai', 'BWH');
INSERT INTO `crm_data_region` VALUES (3712, 305, ',1,131,305,3712,', 4, '槟城', 'George Town', 'cheng', 'PEN');
INSERT INTO `crm_data_region` VALUES (3713, 305, ',1,131,305,3713,', 4, '大山脚', 'Bukit Mertajam', 'dashanjiao', 'BMJ');
INSERT INTO `crm_data_region` VALUES (3714, 305, ',1,131,305,3714,', 4, '高渊', 'Nibong Tebal', 'gaoyuan', 'NTE');
INSERT INTO `crm_data_region` VALUES (3715, 306, ',1,131,306,3715,', 4, '加央', 'Kangar', 'jiayang', 'KGR');
INSERT INTO `crm_data_region` VALUES (3716, 307, ',1,131,307,3716,', 4, '甘马挽', 'Kemaman', 'ganmawan', 'KEM');
INSERT INTO `crm_data_region` VALUES (3717, 307, ',1,131,307,3717,', 4, '瓜拉丁加奴', 'Kuala Terengganu', 'gualadingjianu', 'TGG');
INSERT INTO `crm_data_region` VALUES (3718, 307, ',1,131,307,3718,', 4, '龙运', 'Dungun', 'longyun', 'DGN');
INSERT INTO `crm_data_region` VALUES (3719, 307, ',1,131,307,3719,', 4, '马江', 'Marang', 'majiang', 'MAR');
INSERT INTO `crm_data_region` VALUES (3720, 307, ',1,131,307,3720,', 4, '实兆', 'Setiu', 'shizhao', 'SET');
INSERT INTO `crm_data_region` VALUES (3721, 307, ',1,131,307,3721,', 4, '乌鲁', 'Hulu', 'wulu', 'HUL');
INSERT INTO `crm_data_region` VALUES (3722, 307, ',1,131,307,3722,', 4, '勿述', 'Besut', 'wushu', 'BES');
INSERT INTO `crm_data_region` VALUES (3723, 308, ',1,131,308,3723,', 4, '巴东得腊', 'Padang Terap', 'badongdela', 'PGT');
INSERT INTO `crm_data_region` VALUES (3724, 308, ',1,131,308,3724,', 4, '笨筒', 'Pendang', 'bentong', 'PEN');
INSERT INTO `crm_data_region` VALUES (3725, 308, ',1,131,308,3725,', 4, '浮罗交怡', 'Langkawi', 'fuluojiao', 'LGK');
INSERT INTO `crm_data_region` VALUES (3726, 308, ',1,131,308,3726,', 4, '哥打士打', 'Kota Setar', 'gedashida', 'KOR');
INSERT INTO `crm_data_region` VALUES (3727, 308, ',1,131,308,3727,', 4, '古邦巴素', 'Kubang Pasu', 'gubangbasu', 'KPA');
INSERT INTO `crm_data_region` VALUES (3728, 308, ',1,131,308,3728,', 4, '瓜拉姆达', 'Kuala Muda', 'gualamuda', 'KMU');
INSERT INTO `crm_data_region` VALUES (3729, 308, ',1,131,308,3729,', 4, '华玲', 'Baling', 'hualing', 'BLZ');
INSERT INTO `crm_data_region` VALUES (3730, 308, ',1,131,308,3730,', 4, '居林', 'Kulim', 'julin', 'KLM');
INSERT INTO `crm_data_region` VALUES (3731, 308, ',1,131,308,3731,', 4, '万拉峇鲁', 'Bandar Baharu', 'wanla', 'BMA');
INSERT INTO `crm_data_region` VALUES (3732, 309, ',1,131,309,3732,', 4, '巴西富地', 'Pasir Putih', 'baxifudi', 'PPU');
INSERT INTO `crm_data_region` VALUES (3733, 309, ',1,131,309,3733,', 4, '巴西马', 'Pasir Mas', 'baxima', 'PMA');
INSERT INTO `crm_data_region` VALUES (3734, 309, ',1,131,309,3734,', 4, '丹那美拉', 'Tanah Merah', 'dannameila', 'TMR');
INSERT INTO `crm_data_region` VALUES (3735, 309, ',1,131,309,3735,', 4, '道北', 'Tumpat', 'daobei', 'TUM');
INSERT INTO `crm_data_region` VALUES (3736, 309, ',1,131,309,3736,', 4, '登卓', 'Bachok', 'dengzhuo', 'BAC');
INSERT INTO `crm_data_region` VALUES (3737, 309, ',1,131,309,3737,', 4, '哥打巴鲁', 'Kota Bharu', 'gedabalu', 'KBR');
INSERT INTO `crm_data_region` VALUES (3738, 309, ',1,131,309,3738,', 4, '瓜拉吉赖', 'Kuala Krai', 'gualajilai', 'KUG');
INSERT INTO `crm_data_region` VALUES (3739, 309, ',1,131,309,3739,', 4, '话望生', 'Gua Musang', 'huawangsheng', 'GMU');
INSERT INTO `crm_data_region` VALUES (3740, 309, ',1,131,309,3740,', 4, '马樟', 'Machang', 'mazhang', 'MAC');
INSERT INTO `crm_data_region` VALUES (3741, 309, ',1,131,309,3741,', 4, '日里', 'Jeli', 'rili', 'JEL');
INSERT INTO `crm_data_region` VALUES (3742, 310, ',1,131,310,3742,', 4, '吉隆坡', 'Kuala Lumpur', 'jilongpo', 'KUL');
INSERT INTO `crm_data_region` VALUES (3743, 311, ',1,131,311,3743,', 4, '马六甲市', 'Melaka', 'maliujiashi', 'MEL');
INSERT INTO `crm_data_region` VALUES (3744, 311, ',1,131,311,3744,', 4, '亚罗牙也', 'Alor Gajah', 'yaluoyaye', 'AOG');
INSERT INTO `crm_data_region` VALUES (3745, 311, ',1,131,311,3745,', 4, '野新', 'Jasin', 'yexin', 'JAS');
INSERT INTO `crm_data_region` VALUES (3746, 312, ',1,131,312,3746,', 4, '纳闽', 'Labuan', 'namin', 'LBU');
INSERT INTO `crm_data_region` VALUES (3747, 312, ',1,131,312,3747,', 4, '维多利亚', 'Victoria', 'weiduoliya', 'VIC');
INSERT INTO `crm_data_region` VALUES (3748, 313, ',1,131,313,3748,', 4, '百乐', 'Bera', 'baile', 'BER');
INSERT INTO `crm_data_region` VALUES (3749, 313, ',1,131,313,3749,', 4, '北根', 'Pekan', 'beigen', 'PEK');
INSERT INTO `crm_data_region` VALUES (3750, 313, ',1,131,313,3750,', 4, '淡马鲁', 'Temerloh', 'danmalu', 'TEM');
INSERT INTO `crm_data_region` VALUES (3751, 313, ',1,131,313,3751,', 4, '而连突', 'Jerantut', 'erliantu', 'JER');
INSERT INTO `crm_data_region` VALUES (3752, 313, ',1,131,313,3752,', 4, '关丹', 'Kuantan', 'guandan', 'KUA');
INSERT INTO `crm_data_region` VALUES (3753, 313, ',1,131,313,3753,', 4, '金马仑高原', 'Cameron Highlands', 'jinmalungaoyuan', 'CAH');
INSERT INTO `crm_data_region` VALUES (3754, 313, ',1,131,313,3754,', 4, '劳勿', 'Raub', 'laowu', 'RAU');
INSERT INTO `crm_data_region` VALUES (3755, 313, ',1,131,313,3755,', 4, '立卑', 'Kuala Lipis', 'libei', 'KUL');
INSERT INTO `crm_data_region` VALUES (3756, 313, ',1,131,313,3756,', 4, '马兰', 'Maran', 'malan', 'MAR');
INSERT INTO `crm_data_region` VALUES (3757, 313, ',1,131,313,3757,', 4, '文冬', 'Bentong', 'wendong', 'BEN');
INSERT INTO `crm_data_region` VALUES (3758, 313, ',1,131,313,3758,', 4, '云冰', 'Rompin', 'yunbing', 'TOM');
INSERT INTO `crm_data_region` VALUES (3759, 314, ',1,131,314,3759,', 4, '安顺', 'Teluk Intan', 'anshun', 'TAS');
INSERT INTO `crm_data_region` VALUES (3760, 314, ',1,131,314,3760,', 4, '丹绒马', 'Tanjung Malim', 'danrongma', 'TAM');
INSERT INTO `crm_data_region` VALUES (3761, 314, ',1,131,314,3761,', 4, '和丰', 'Sungai Siput', 'hefeng', 'SSP');
INSERT INTO `crm_data_region` VALUES (3762, 314, ',1,131,314,3762,', 4, '紅土坎', 'Lumut', '', 'LUM');
INSERT INTO `crm_data_region` VALUES (3763, 314, ',1,131,314,3763,', 4, '华都牙也', 'Batu Gajah', 'huaduyaye', 'BGA');
INSERT INTO `crm_data_region` VALUES (3764, 314, ',1,131,314,3764,', 4, '江沙', 'Kuala Kangsar', 'jiangsha', 'KAR');
INSERT INTO `crm_data_region` VALUES (3765, 314, ',1,131,314,3765,', 4, '太平', 'Taiping', 'taiping', 'TPG');
INSERT INTO `crm_data_region` VALUES (3766, 314, ',1,131,314,3766,', 4, '怡保', 'Ipoh', 'bao', 'IPH');
INSERT INTO `crm_data_region` VALUES (3767, 315, ',1,131,315,3767,', 4, '笨珍', 'Pontian', 'benzhen', 'POW');
INSERT INTO `crm_data_region` VALUES (3768, 315, ',1,131,315,3768,', 4, '丰盛港', 'Mersing', 'fengshenggang', 'MEP');
INSERT INTO `crm_data_region` VALUES (3769, 315, ',1,131,315,3769,', 4, '哥打丁宜', 'Kota Tinggi', 'gedadingyi', 'KTI');
INSERT INTO `crm_data_region` VALUES (3770, 315, ',1,131,315,3770,', 4, '居銮', 'Kluang', 'ju', 'KLA');
INSERT INTO `crm_data_region` VALUES (3771, 315, ',1,131,315,3771,', 4, '峇株巴辖', 'Batu Pahat', '', 'BAT');
INSERT INTO `crm_data_region` VALUES (3772, 315, ',1,131,315,3772,', 4, '麻坡', 'Muar', 'mapo', 'MUA');
INSERT INTO `crm_data_region` VALUES (3773, 315, ',1,131,315,3773,', 4, '昔加末', 'Segamat', 'xijiamo', 'SGM');
INSERT INTO `crm_data_region` VALUES (3774, 315, ',1,131,315,3774,', 4, '新山', 'Johor Bahru', 'xinshan', 'JHB');
INSERT INTO `crm_data_region` VALUES (3775, 316, ',1,131,316,3775,', 4, '波德申', 'Port Dickson', 'bodeshen', 'PDI');
INSERT INTO `crm_data_region` VALUES (3776, 316, ',1,131,316,3776,', 4, '淡边', 'Tampin', 'danbian', 'TAI');
INSERT INTO `crm_data_region` VALUES (3777, 316, ',1,131,316,3777,', 4, '芙蓉', 'Seremban', 'rong', 'SRB');
INSERT INTO `crm_data_region` VALUES (3778, 316, ',1,131,316,3778,', 4, '瓜拉庇劳', 'Kuala Pilah', 'gualabilao', 'KPI');
INSERT INTO `crm_data_region` VALUES (3779, 316, ',1,131,316,3779,', 4, '林茂', 'Rembau', 'linmao', 'REM');
INSERT INTO `crm_data_region` VALUES (3780, 316, ',1,131,316,3780,', 4, '仁保', 'Jempol', 'renbao', 'JEP');
INSERT INTO `crm_data_region` VALUES (3781, 316, ',1,131,316,3781,', 4, '日叻务', 'Jelebu', 'riwu', 'JEL');
INSERT INTO `crm_data_region` VALUES (3782, 317, ',1,131,317,3782,', 4, '吧巴', 'Papar', 'baba', 'PAP');
INSERT INTO `crm_data_region` VALUES (3783, 317, ',1,131,317,3783,', 4, '保佛', 'Beaufort', 'baofo', 'BEF');
INSERT INTO `crm_data_region` VALUES (3784, 317, ',1,131,317,3784,', 4, '比鲁兰', 'Beluran', 'bilulan', 'BEL');
INSERT INTO `crm_data_region` VALUES (3785, 317, ',1,131,317,3785,', 4, '必达士', 'Pitas', 'bidashi', 'PIT');
INSERT INTO `crm_data_region` VALUES (3786, 317, ',1,131,317,3786,', 4, '兵南邦', 'Penampang', 'bingnanbang', 'PMP');
INSERT INTO `crm_data_region` VALUES (3787, 317, ',1,131,317,3787,', 4, '担布南', 'Tambunan', 'danbunan', 'TAB');
INSERT INTO `crm_data_region` VALUES (3788, 317, ',1,131,317,3788,', 4, '丹南', 'Tenom', 'dannan', 'TEN');
INSERT INTO `crm_data_region` VALUES (3789, 317, ',1,131,317,3789,', 4, '斗湖', 'Tawau', 'douhu', 'TAW');
INSERT INTO `crm_data_region` VALUES (3790, 317, ',1,131,317,3790,', 4, '斗亚兰', 'Tuaran', 'douyalan', 'TUR');
INSERT INTO `crm_data_region` VALUES (3791, 317, ',1,131,317,3791,', 4, '哥打基纳巴鲁', 'Kota Kinabalu', 'gedajinabalu', 'BKI');
INSERT INTO `crm_data_region` VALUES (3792, 317, ',1,131,317,3792,', 4, '哥打马鲁都', 'Kota Marudu', 'gedamaludu', 'KMU');
INSERT INTO `crm_data_region` VALUES (3793, 317, ',1,131,317,3793,', 4, '根地咬', 'Keningau', 'gendiyao', 'KEG');
INSERT INTO `crm_data_region` VALUES (3794, 317, ',1,131,317,3794,', 4, '古达', 'Kudat', 'guda', 'KUD');
INSERT INTO `crm_data_region` VALUES (3795, 317, ',1,131,317,3795,', 4, '古打毛律', 'Kota Belud', 'gudamaolv', 'KBD');
INSERT INTO `crm_data_region` VALUES (3796, 317, ',1,131,317,3796,', 4, '古纳', 'Kunak', 'guna', 'KUN');
INSERT INTO `crm_data_region` VALUES (3797, 317, ',1,131,317,3797,', 4, '瓜拉班尤', 'Kuala Penyu', 'gualabanyou', 'KPU');
INSERT INTO `crm_data_region` VALUES (3798, 317, ',1,131,317,3798,', 4, '京那巴登岸', 'Kinabatangan', 'jingnabadengan', 'KBT');
INSERT INTO `crm_data_region` VALUES (3799, 317, ',1,131,317,3799,', 4, '兰脑', 'Ranau', 'lannao', 'RNU');
INSERT INTO `crm_data_region` VALUES (3800, 317, ',1,131,317,3800,', 4, '拿笃', 'Lahad Datu', 'na', 'LDU');
INSERT INTO `crm_data_region` VALUES (3801, 317, ',1,131,317,3801,', 4, '纳巴湾', 'Nabawan', 'nabawan', 'NAB');
INSERT INTO `crm_data_region` VALUES (3802, 317, ',1,131,317,3802,', 4, '山打根', 'Sandakan', 'shandagen', 'SDK');
INSERT INTO `crm_data_region` VALUES (3803, 317, ',1,131,317,3803,', 4, '西比陶', 'Sipitang', 'xibitao', 'SPT');
INSERT INTO `crm_data_region` VALUES (3804, 317, ',1,131,317,3804,', 4, '仙本那', 'Semporna', 'xianbenna', 'SMM');
INSERT INTO `crm_data_region` VALUES (3805, 318, ',1,131,318,3805,', 4, '古晋', 'Kuching', 'gujin', 'KCH');
INSERT INTO `crm_data_region` VALUES (3806, 318, ',1,131,318,3806,', 4, '加帛', 'Kapit', 'jiabo', 'KPI');
INSERT INTO `crm_data_region` VALUES (3807, 318, ',1,131,318,3807,', 4, '林梦', 'Limbang', 'linmeng', 'LMN');
INSERT INTO `crm_data_region` VALUES (3808, 318, ',1,131,318,3808,', 4, '美里', 'Miri', 'meili', 'MYY');
INSERT INTO `crm_data_region` VALUES (3809, 318, ',1,131,318,3809,', 4, '民都鲁', 'Bintulu', 'mindulu', 'BTU');
INSERT INTO `crm_data_region` VALUES (3810, 318, ',1,131,318,3810,', 4, '木胶', 'Mukah', 'mujiao', 'MKM');
INSERT INTO `crm_data_region` VALUES (3811, 318, ',1,131,318,3811,', 4, '木中', 'Betong', 'muzhong', 'BTG');
INSERT INTO `crm_data_region` VALUES (3812, 318, ',1,131,318,3812,', 4, '三马拉汉', 'Samarahan', 'sanmalahan', 'SMH');
INSERT INTO `crm_data_region` VALUES (3813, 318, ',1,131,318,3813,', 4, '斯里阿曼', 'Sri Aman', 'siliaman', 'SAM');
INSERT INTO `crm_data_region` VALUES (3814, 318, ',1,131,318,3814,', 4, '泗里街', 'Sarikei', 'lijie', 'SAR');
INSERT INTO `crm_data_region` VALUES (3815, 318, ',1,131,318,3815,', 4, '泗务', 'Sibu', 'wu', 'SBW');
INSERT INTO `crm_data_region` VALUES (3816, 319, ',1,131,319,3816,', 4, '八打灵', 'Petaling', 'badaling', 'PJA');
INSERT INTO `crm_data_region` VALUES (3817, 319, ',1,131,319,3817,', 4, '鹅麦', 'Gombak', 'emai', 'GOM');
INSERT INTO `crm_data_region` VALUES (3818, 319, ',1,131,319,3818,', 4, '瓜拉冷岳', 'Kuala Langat', 'gualalengyue', 'KLG');
INSERT INTO `crm_data_region` VALUES (3819, 319, ',1,131,319,3819,', 4, '瓜拉雪兰莪', 'Kuala Selangor', 'gualaxuelan', 'KSL');
INSERT INTO `crm_data_region` VALUES (3820, 319, ',1,131,319,3820,', 4, '沙白安南', 'Sabak Bernam', 'shabaiannan', 'SBM');
INSERT INTO `crm_data_region` VALUES (3821, 319, ',1,131,319,3821,', 4, '乌鲁冷岳', 'Hulu Langat', 'wululengyue', 'HUL');
INSERT INTO `crm_data_region` VALUES (3822, 319, ',1,131,319,3822,', 4, '乌鲁雪兰莪', 'Hulu Selangor', 'wuluxuelan', 'HUS');
INSERT INTO `crm_data_region` VALUES (3823, 319, ',1,131,319,3823,', 4, '雪邦', 'Sepang', 'xuebang', 'SEP');
INSERT INTO `crm_data_region` VALUES (3824, 320, ',4,140,320,3824,', 4, '费耶特维尔', 'Fayetteville', 'feiyeteweier', 'FYV');
INSERT INTO `crm_data_region` VALUES (3825, 320, ',4,140,320,3825,', 4, '史密斯堡', 'Fort Smith', 'shimisibao', 'FSM');
INSERT INTO `crm_data_region` VALUES (3826, 320, ',4,140,320,3826,', 4, '小石城', 'Little Rock', 'xiaoshicheng', 'LIT');
INSERT INTO `crm_data_region` VALUES (3827, 321, ',4,140,321,3827,', 4, '伯明罕', 'Birmingham', 'bominghan', 'BHM');
INSERT INTO `crm_data_region` VALUES (3828, 321, ',4,140,321,3828,', 4, '蒙哥马利', 'Montgomery', 'menggemali', 'MGM');
INSERT INTO `crm_data_region` VALUES (3829, 321, ',4,140,321,3829,', 4, '莫比尔', 'Mobile', 'mobier', 'MOB');
INSERT INTO `crm_data_region` VALUES (3830, 322, ',4,140,322,3830,', 4, '安克雷奇', 'Anchorage', 'ankeleiqi', 'ANC');
INSERT INTO `crm_data_region` VALUES (3831, 322, ',4,140,322,3831,', 4, '费尔班克斯', 'Fairbanks', 'feierbankesi', 'FAI');
INSERT INTO `crm_data_region` VALUES (3832, 322, ',4,140,322,3832,', 4, '朱诺', 'Juneau', 'zhunuo', 'JNU');
INSERT INTO `crm_data_region` VALUES (3833, 323, ',4,140,323,3833,', 4, '爱达荷福尔斯', 'Idaho Falls', 'aidahefuersi', 'IDA');
INSERT INTO `crm_data_region` VALUES (3834, 323, ',4,140,323,3834,', 4, '波卡特洛', 'Pocatello', 'bokateluo', 'PIH');
INSERT INTO `crm_data_region` VALUES (3835, 323, ',4,140,323,3835,', 4, '博伊西', 'Boise', 'boyixi', 'BOI');
INSERT INTO `crm_data_region` VALUES (3836, 323, ',4,140,323,3836,', 4, '布莱克富特', 'Blackfoot', 'bulaikefute', 'BLK');
INSERT INTO `crm_data_region` VALUES (3837, 323, ',4,140,323,3837,', 4, '科达伦', 'Coeur d\'Alene', 'kedalun', 'COE');
INSERT INTO `crm_data_region` VALUES (3838, 323, ',4,140,323,3838,', 4, '刘易斯顿', 'Lewiston', 'liuyisidun', 'LWS');
INSERT INTO `crm_data_region` VALUES (3839, 323, ',4,140,323,3839,', 4, '莫斯科', 'Moscow', 'mosike', 'MJL');
INSERT INTO `crm_data_region` VALUES (3840, 323, ',4,140,323,3840,', 4, '墨菲', 'Murphy', 'mofei', 'ZMU');
INSERT INTO `crm_data_region` VALUES (3841, 323, ',4,140,323,3841,', 4, '楠帕', 'Nampa', 'pa', 'NPA');
INSERT INTO `crm_data_region` VALUES (3842, 323, ',4,140,323,3842,', 4, '岂彻姆', 'Ketchum', 'qichemu', 'QKM');
INSERT INTO `crm_data_region` VALUES (3843, 323, ',4,140,323,3843,', 4, '森瓦利', 'Sun Valley', 'senwali', 'SVY');
INSERT INTO `crm_data_region` VALUES (3844, 323, ',4,140,323,3844,', 4, '亚美利加瀑布城', 'American Falls', 'yameilijiapubucheng', 'YAF');
INSERT INTO `crm_data_region` VALUES (3845, 324, ',4,140,324,3845,', 4, '达文波特', 'Davenport', 'dawenbote', 'DVN');
INSERT INTO `crm_data_region` VALUES (3846, 324, ',4,140,324,3846,', 4, '得梅因', 'Des Moines', 'demeiyin', 'DSM');
INSERT INTO `crm_data_region` VALUES (3847, 324, ',4,140,324,3847,', 4, '锡达拉皮兹', 'Cedar Rapids', 'xidalapizi', 'CID');
INSERT INTO `crm_data_region` VALUES (3848, 325, ',4,140,325,3848,', 4, '俾斯麦', 'Bismarck', 'simai', 'BIS');
INSERT INTO `crm_data_region` VALUES (3849, 325, ',4,140,325,3849,', 4, '大福克斯', 'Grand Forks', 'dafukesi', 'GFK');
INSERT INTO `crm_data_region` VALUES (3850, 325, ',4,140,325,3850,', 4, '法戈', 'Fargo', 'fage', 'FAR');
INSERT INTO `crm_data_region` VALUES (3851, 325, ',4,140,325,3851,', 4, '迈诺特', 'Minot', 'mainuote', 'MOT');
INSERT INTO `crm_data_region` VALUES (3852, 326, ',4,140,326,3852,', 4, '艾许维尔', 'Asheville', 'aixuweier', 'AEV');
INSERT INTO `crm_data_region` VALUES (3853, 326, ',4,140,326,3853,', 4, '杜罕', 'Durham', 'duhan', 'DHH');
INSERT INTO `crm_data_region` VALUES (3854, 326, ',4,140,326,3854,', 4, '格林斯伯勒', 'Greensboro', 'gelinsibole', 'GBO');
INSERT INTO `crm_data_region` VALUES (3855, 326, ',4,140,326,3855,', 4, '教堂山', 'Chapel Hill', 'jiaotangshan', 'CHE');
INSERT INTO `crm_data_region` VALUES (3856, 326, ',4,140,326,3856,', 4, '罗利', 'Raleigh', 'luoli', 'RAG');
INSERT INTO `crm_data_region` VALUES (3857, 326, ',4,140,326,3857,', 4, '洛利杜罕都会区', 'Raleigh-Durham', 'luoliduhanduhuiqu', 'RDU');
INSERT INTO `crm_data_region` VALUES (3858, 326, ',4,140,326,3858,', 4, '夏洛特', 'Charlotte', 'xialuote', 'CRQ');
INSERT INTO `crm_data_region` VALUES (3859, 327, ',4,140,327,3859,', 4, '阿伦敦', 'Allentown', 'alundun', 'AEW');
INSERT INTO `crm_data_region` VALUES (3860, 327, ',4,140,327,3860,', 4, '费城', 'Philadephia', 'feicheng', 'PHL');
INSERT INTO `crm_data_region` VALUES (3861, 327, ',4,140,327,3861,', 4, '匹兹堡', 'Pittsburgh', 'pizibao', 'PIT');
INSERT INTO `crm_data_region` VALUES (3862, 328, ',4,140,328,3862,', 4, '埃尔帕索', 'El Paso', 'aierpasuo', 'ELP');
INSERT INTO `crm_data_region` VALUES (3863, 328, ',4,140,328,3863,', 4, '奥斯汀', 'Austin', 'aositing', 'AUS');
INSERT INTO `crm_data_region` VALUES (3864, 328, ',4,140,328,3864,', 4, '达拉斯', 'Dallas', 'dalasi', 'DAL');
INSERT INTO `crm_data_region` VALUES (3865, 328, ',4,140,328,3865,', 4, '哥帕斯基斯蒂', 'Corpus Christi', 'gepasijisidi', 'CRP');
INSERT INTO `crm_data_region` VALUES (3866, 328, ',4,140,328,3866,', 4, '交维斯顿', 'Galveston', 'jiaoweisidun', 'GLS');
INSERT INTO `crm_data_region` VALUES (3867, 328, ',4,140,328,3867,', 4, '拉雷多', 'Laredo', 'laleiduo', 'LRD');
INSERT INTO `crm_data_region` VALUES (3868, 328, ',4,140,328,3868,', 4, '麦亚伦', 'McAllen', 'maiyalun', 'TXC');
INSERT INTO `crm_data_region` VALUES (3869, 328, ',4,140,328,3869,', 4, '圣安东尼奥', 'San Antonio', 'shengandongniao', 'SAT');
INSERT INTO `crm_data_region` VALUES (3870, 328, ',4,140,328,3870,', 4, '休斯敦', 'Houston', 'xiusidun', 'HOU');
INSERT INTO `crm_data_region` VALUES (3871, 329, ',4,140,329,3871,', 4, '代顿', 'Dayton', 'daidun', 'DYT');
INSERT INTO `crm_data_region` VALUES (3872, 329, ',4,140,329,3872,', 4, '哥伦布', 'Columbus', 'gelunbu', 'CZX');
INSERT INTO `crm_data_region` VALUES (3873, 329, ',4,140,329,3873,', 4, '克利夫兰', 'Cleveland', 'kelifulan', 'CLE');
INSERT INTO `crm_data_region` VALUES (3874, 329, ',4,140,329,3874,', 4, '托莱多', 'Toledo', 'tuolaiduo', 'TOL');
INSERT INTO `crm_data_region` VALUES (3875, 329, ',4,140,329,3875,', 4, '辛辛那提', 'Cincinnati', 'xinxinnati', 'CVG');
INSERT INTO `crm_data_region` VALUES (3876, 330, ',4,140,330,3876,', 4, '俄克拉荷马城', 'Oklahoma City', 'ekelahemacheng', 'OKC');
INSERT INTO `crm_data_region` VALUES (3877, 330, ',4,140,330,3877,', 4, '诺曼', 'Norman', 'nuoman', 'OUN');
INSERT INTO `crm_data_region` VALUES (3878, 330, ',4,140,330,3878,', 4, '塔尔萨', 'Tulsa', 'taersa', 'TUL');
INSERT INTO `crm_data_region` VALUES (3879, 331, ',4,140,331,3879,', 4, '本德', 'Bend', 'bende', 'BZO');
INSERT INTO `crm_data_region` VALUES (3880, 331, ',4,140,331,3880,', 4, '波特兰', 'Portland', 'botelan', 'PDX');
INSERT INTO `crm_data_region` VALUES (3881, 331, ',4,140,331,3881,', 4, '达尔斯', 'The Dalles', 'daersi', 'DLS');
INSERT INTO `crm_data_region` VALUES (3882, 331, ',4,140,331,3882,', 4, '达拉斯', 'Dallas', 'dalasi', 'DAC');
INSERT INTO `crm_data_region` VALUES (3883, 331, ',4,140,331,3883,', 4, '蒂拉穆克', 'Tillamook', 'dilamuke', 'TLM');
INSERT INTO `crm_data_region` VALUES (3884, 331, ',4,140,331,3884,', 4, '格兰茨帕斯', 'Grant\'s Pass', 'gelancipasi', 'XFX');
INSERT INTO `crm_data_region` VALUES (3885, 331, ',4,140,331,3885,', 4, '胡德里弗', 'Hood River', 'hudelifu', 'HDX');
INSERT INTO `crm_data_region` VALUES (3886, 331, ',4,140,331,3886,', 4, '火山口湖', 'Crater Lake', 'huoshankouhu', 'CTR');
INSERT INTO `crm_data_region` VALUES (3887, 331, ',4,140,331,3887,', 4, '科瓦利斯', 'Corvallis', 'kewalisi', 'YCV');
INSERT INTO `crm_data_region` VALUES (3888, 331, ',4,140,331,3888,', 4, '库斯贝', 'Coos Bay', 'kusibei', 'COB');
INSERT INTO `crm_data_region` VALUES (3889, 331, ',4,140,331,3889,', 4, '梅德福', 'Medford', 'meidefu', 'MFR');
INSERT INTO `crm_data_region` VALUES (3890, 331, ',4,140,331,3890,', 4, '塞勒姆', 'Salem', 'sailemu', 'SLE');
INSERT INTO `crm_data_region` VALUES (3891, 331, ',4,140,331,3891,', 4, '圣海伦斯', 'St Helens', 'shenghailunsi', 'STH');
INSERT INTO `crm_data_region` VALUES (3892, 331, ',4,140,331,3892,', 4, '斯普林菲尔德', 'Springfield', 'sipulinfeierde', 'SPY');
INSERT INTO `crm_data_region` VALUES (3893, 331, ',4,140,331,3893,', 4, '尤金', 'Eugene', 'youjin', 'EUG');
INSERT INTO `crm_data_region` VALUES (3894, 332, ',4,140,332,3894,', 4, '奥兰多', 'Orlando', 'aolanduo', 'ORL');
INSERT INTO `crm_data_region` VALUES (3895, 332, ',4,140,332,3895,', 4, '基韦斯特', 'Key West', 'jiweisite', 'EYW');
INSERT INTO `crm_data_region` VALUES (3896, 332, ',4,140,332,3896,', 4, '杰克逊维尔', 'Jacksonville', 'jiekexunweier', 'JAX');
INSERT INTO `crm_data_region` VALUES (3897, 332, ',4,140,332,3897,', 4, '卡纳维尔角', 'Cape Canaveral', 'kanaweierjiao', 'CPV');
INSERT INTO `crm_data_region` VALUES (3898, 332, ',4,140,332,3898,', 4, '罗德岱堡', 'Fort Lauderdale', 'luodebao', 'FLL');
INSERT INTO `crm_data_region` VALUES (3899, 332, ',4,140,332,3899,', 4, '迈阿密', 'Miami', 'maiami', 'MIA');
INSERT INTO `crm_data_region` VALUES (3900, 332, ',4,140,332,3900,', 4, '圣彼德斯堡市', 'St. Petersburg', 'shengbidesibaoshi', 'PIE');
INSERT INTO `crm_data_region` VALUES (3901, 332, ',4,140,332,3901,', 4, '塔拉哈西', 'Tallahassee', 'talahaxi', 'TLH');
INSERT INTO `crm_data_region` VALUES (3902, 332, ',4,140,332,3902,', 4, '坦帕', 'Tampa', 'tanpa', 'TPA');
INSERT INTO `crm_data_region` VALUES (3903, 333, ',4,140,333,3903,', 4, '伯灵顿', 'Burlington', 'bolingdun', 'BTV');
INSERT INTO `crm_data_region` VALUES (3904, 333, ',4,140,333,3904,', 4, '拉特兰', 'Rutland', 'latelan', 'RUT');
INSERT INTO `crm_data_region` VALUES (3905, 333, ',4,140,333,3905,', 4, '南伯灵顿', 'South Burlington', 'nanbolingdun', 'ZBR');
INSERT INTO `crm_data_region` VALUES (3906, 334, ',4,140,334,3906,', 4, '华盛顿哥伦比亚特区', 'Washington D.C.', 'huashengdungelunbiyatequ', 'WAS');
INSERT INTO `crm_data_region` VALUES (3907, 335, ',4,140,335,3907,', 4, '斯波坎', 'Spokane', 'sibokan', 'GEG');
INSERT INTO `crm_data_region` VALUES (3908, 335, ',4,140,335,3908,', 4, '塔科马', 'Tacoma', 'takema', 'TTW');
INSERT INTO `crm_data_region` VALUES (3909, 335, ',4,140,335,3909,', 4, '西雅图', 'Seattle', 'xiyatu', 'SEA');
INSERT INTO `crm_data_region` VALUES (3910, 336, ',4,140,336,3910,', 4, '埃文斯顿', 'Evanston', 'aiwensidun', 'EVD');
INSERT INTO `crm_data_region` VALUES (3911, 336, ',4,140,336,3911,', 4, '卡斯珀', 'Casper', 'kasi', 'CPR');
INSERT INTO `crm_data_region` VALUES (3912, 336, ',4,140,336,3912,', 4, '拉勒米', 'Laramie', 'lalemi', 'LAR');
INSERT INTO `crm_data_region` VALUES (3913, 336, ',4,140,336,3913,', 4, '罗克斯普林斯', 'Rock Springs', 'luokesipulinsi', 'RKS');
INSERT INTO `crm_data_region` VALUES (3914, 336, ',4,140,336,3914,', 4, '夏延', 'Cheyenne', 'xiayan', 'CYS');
INSERT INTO `crm_data_region` VALUES (3915, 336, ',4,140,336,3915,', 4, '谢里登', 'Sheridan', 'xielideng', 'SHR');
INSERT INTO `crm_data_region` VALUES (3916, 337, ',4,140,337,3916,', 4, '旧金山', 'San Francisco', 'jiujinshan', 'SFO');
INSERT INTO `crm_data_region` VALUES (3917, 337, ',4,140,337,3917,', 4, '洛杉矶', 'Los Angeles', 'luoshan', 'LAX');
INSERT INTO `crm_data_region` VALUES (3918, 337, ',4,140,337,3918,', 4, '圣迭戈', 'San Diego', 'shengdiege', 'SAN');
INSERT INTO `crm_data_region` VALUES (3919, 337, ',4,140,337,3919,', 4, '圣何塞', 'San Jose', 'shenghesai', 'SJC');
INSERT INTO `crm_data_region` VALUES (3920, 338, ',4,140,338,3920,', 4, '阿比林', 'Abilene', 'abilin', 'ABZ');
INSERT INTO `crm_data_region` VALUES (3921, 338, ',4,140,338,3921,', 4, '奥弗兰公园', 'Overland Park', 'aofulangongyuan', 'OVL');
INSERT INTO `crm_data_region` VALUES (3922, 338, ',4,140,338,3922,', 4, '哈钦森', 'Hutchinson', 'haqinsen', 'HCH');
INSERT INTO `crm_data_region` VALUES (3923, 338, ',4,140,338,3923,', 4, '堪萨斯城', 'Kansas City', 'kansasicheng', 'KCK');
INSERT INTO `crm_data_region` VALUES (3924, 338, ',4,140,338,3924,', 4, '莱文沃思', 'Leavenworth', 'laiwenwosi', 'XIA');
INSERT INTO `crm_data_region` VALUES (3925, 338, ',4,140,338,3925,', 4, '劳伦斯', 'Lawrence', 'laolunsi', 'LWC');
INSERT INTO `crm_data_region` VALUES (3926, 338, ',4,140,338,3926,', 4, '曼哈顿', 'Manhattan', 'manhadun', 'MHK');
INSERT INTO `crm_data_region` VALUES (3927, 338, ',4,140,338,3927,', 4, '托皮卡', 'Topeka', 'tuopika', 'TOP');
INSERT INTO `crm_data_region` VALUES (3928, 338, ',4,140,338,3928,', 4, '威奇托', 'Wichita', 'weiqituo', 'ICT');
INSERT INTO `crm_data_region` VALUES (3929, 339, ',4,140,339,3929,', 4, '布里奇波特', 'Bridgeport', 'buliqibote', 'BDR');
INSERT INTO `crm_data_region` VALUES (3930, 339, ',4,140,339,3930,', 4, '达里恩', 'Darien', 'dalien', 'DAQ');
INSERT INTO `crm_data_region` VALUES (3931, 339, ',4,140,339,3931,', 4, '格林尼治', 'Greenwich', 'gelinnizhi', 'GRH');
INSERT INTO `crm_data_region` VALUES (3932, 339, ',4,140,339,3932,', 4, '哈特福德', 'Hartford', 'hatefude', 'HFD');
INSERT INTO `crm_data_region` VALUES (3933, 339, ',4,140,339,3933,', 4, '米德尔顿', 'Middletown', 'mideerdun', 'XIN');
INSERT INTO `crm_data_region` VALUES (3934, 339, ',4,140,339,3934,', 4, '纽黑文', 'New Haven', 'niuheiwen', 'HVN');
INSERT INTO `crm_data_region` VALUES (3935, 339, ',4,140,339,3935,', 4, '韦斯特波特', 'Westport', 'weisitebote', 'WPT');
INSERT INTO `crm_data_region` VALUES (3936, 339, ',4,140,339,3936,', 4, '沃特伯里', 'Waterbury', 'woteboli', 'WAT');
INSERT INTO `crm_data_region` VALUES (3937, 339, ',4,140,339,3937,', 4, '新不列颠', 'New Britain', 'xinbuliedian', 'NWT');
INSERT INTO `crm_data_region` VALUES (3938, 340, ',4,140,340,3938,', 4, '阿斯彭', 'Aspen', 'asipeng', 'ASE');
INSERT INTO `crm_data_region` VALUES (3939, 340, ',4,140,340,3939,', 4, '奥罗拉', 'Aurora', 'aoluola', 'AUX');
INSERT INTO `crm_data_region` VALUES (3940, 340, ',4,140,340,3940,', 4, '博尔德', 'Boulder', 'boerde', 'WBU');
INSERT INTO `crm_data_region` VALUES (3941, 340, ',4,140,340,3941,', 4, '大章克申', 'Grand Junction', 'dazhangkeshen', 'GJT');
INSERT INTO `crm_data_region` VALUES (3942, 340, ',4,140,340,3942,', 4, '丹佛', 'Denver', 'danfo', 'DEN');
INSERT INTO `crm_data_region` VALUES (3943, 340, ',4,140,340,3943,', 4, '柯林斯堡', 'Fort Collins', 'kelinsibao', 'FNL');
INSERT INTO `crm_data_region` VALUES (3944, 340, ',4,140,340,3944,', 4, '科罗拉多斯普林斯', 'Colorado Springs', 'keluoladuosipulinsi', 'COS');
INSERT INTO `crm_data_region` VALUES (3945, 340, ',4,140,340,3945,', 4, '韦尔', 'Vail', 'weier', 'VAC');
INSERT INTO `crm_data_region` VALUES (3946, 341, ',4,140,341,3946,', 4, '列克星敦', 'Lexington', 'liekexingdun', 'LEX');
INSERT INTO `crm_data_region` VALUES (3947, 341, ',4,140,341,3947,', 4, '路易斯维尔', 'Louisville', 'luyisiweier', 'LUI');
INSERT INTO `crm_data_region` VALUES (3948, 341, ',4,140,341,3948,', 4, '欧文斯伯勒', 'Owensboro', 'ouwensibole', 'OWB');
INSERT INTO `crm_data_region` VALUES (3949, 342, ',4,140,342,3949,', 4, '巴吞鲁日', 'Baton Rouge', 'batunluri', 'BTR');
INSERT INTO `crm_data_region` VALUES (3950, 342, ',4,140,342,3950,', 4, '什里夫波特', 'Shreveport', 'shilifubote', 'SHV');
INSERT INTO `crm_data_region` VALUES (3951, 342, ',4,140,342,3951,', 4, '新奥尔良', 'New Orleans', 'xinaoerliang', 'MSY');
INSERT INTO `crm_data_region` VALUES (3952, 343, ',4,140,343,3952,', 4, '波塔基特', 'Pawtucket', 'botajite', 'PAW');
INSERT INTO `crm_data_region` VALUES (3953, 343, ',4,140,343,3953,', 4, '克兰斯顿', 'Cranston', 'kelansidun', 'CQH');
INSERT INTO `crm_data_region` VALUES (3954, 343, ',4,140,343,3954,', 4, '纽波特', 'Newport', 'niubote', 'NPO');
INSERT INTO `crm_data_region` VALUES (3955, 343, ',4,140,343,3955,', 4, '普罗维登斯', 'Providence', 'puluoweidengsi', 'PVD');
INSERT INTO `crm_data_region` VALUES (3956, 343, ',4,140,343,3956,', 4, '韦斯特利', 'Westerly', 'weisiteli', 'WST');
INSERT INTO `crm_data_region` VALUES (3957, 343, ',4,140,343,3957,', 4, '文索基特', 'Woonsocket', 'wensuojite', 'SFN');
INSERT INTO `crm_data_region` VALUES (3958, 343, ',4,140,343,3958,', 4, '沃威克', 'Warwick', 'woweike', 'UZO');
INSERT INTO `crm_data_region` VALUES (3959, 344, ',4,140,344,3959,', 4, '巴尔的摩', 'Balitmore', 'baerdemo', 'BAL');
INSERT INTO `crm_data_region` VALUES (3960, 344, ',4,140,344,3960,', 4, '盖瑟斯堡', 'Gaithersburg', 'gaisesibao', 'GAI');
INSERT INTO `crm_data_region` VALUES (3961, 344, ',4,140,344,3961,', 4, '罗克维尔', 'Rockville', 'luokeweier', 'RKV');
INSERT INTO `crm_data_region` VALUES (3962, 345, ',4,140,345,3962,', 4, '波士顿', 'Boston', 'boshidun', 'BZD');
INSERT INTO `crm_data_region` VALUES (3963, 345, ',4,140,345,3963,', 4, '斯普林菲尔德', 'Springfield', 'sipulinfeierde', 'SFY');
INSERT INTO `crm_data_region` VALUES (3964, 345, ',4,140,345,3964,', 4, '伍斯特', 'Worcester', 'wusite', 'ORH');
INSERT INTO `crm_data_region` VALUES (3965, 346, ',4,140,346,3965,', 4, '比灵斯', 'Billings', 'bilingsi', 'BGS');
INSERT INTO `crm_data_region` VALUES (3966, 346, ',4,140,346,3966,', 4, '大瀑布村', 'Great Falls', 'dapubucun', 'GTF');
INSERT INTO `crm_data_region` VALUES (3967, 346, ',4,140,346,3967,', 4, '米苏拉', 'Missoula', 'misula', 'MSO');
INSERT INTO `crm_data_region` VALUES (3968, 347, ',4,140,347,3968,', 4, '哥伦比亚', 'Columbia', 'gelunbiya', 'COV');
INSERT INTO `crm_data_region` VALUES (3969, 347, ',4,140,347,3969,', 4, '杰佛逊市', 'Jefferson City', 'jiefoxunshi', 'JEF');
INSERT INTO `crm_data_region` VALUES (3970, 347, ',4,140,347,3970,', 4, '堪萨斯城', 'Kansas City', 'kansasicheng', 'MKC');
INSERT INTO `crm_data_region` VALUES (3971, 347, ',4,140,347,3971,', 4, '圣路易斯', 'Sanit Louis', 'shengluyisi', 'STL');
INSERT INTO `crm_data_region` VALUES (3972, 347, ',4,140,347,3972,', 4, '斯普林菲尔德', 'Springfield', 'sipulinfeierde', 'SGF');
INSERT INTO `crm_data_region` VALUES (3973, 348, ',4,140,348,3973,', 4, '比洛克西', 'Biloxi', 'biluokexi', 'BIX');
INSERT INTO `crm_data_region` VALUES (3974, 348, ',4,140,348,3974,', 4, '格尔夫波特', 'Gulfport', 'geerfubote', 'GPT');
INSERT INTO `crm_data_region` VALUES (3975, 348, ',4,140,348,3975,', 4, '格林维尔', 'Greenville', 'gelinweier', 'GLH');
INSERT INTO `crm_data_region` VALUES (3976, 348, ',4,140,348,3976,', 4, '哈蒂斯堡', 'Hattiesburg', 'hadisibao', 'HBG');
INSERT INTO `crm_data_region` VALUES (3977, 348, ',4,140,348,3977,', 4, '杰克逊', 'Jackson', 'jiekexun', 'JAN');
INSERT INTO `crm_data_region` VALUES (3978, 348, ',4,140,348,3978,', 4, '默里迪恩', 'Meridian', 'molidien', 'MEI');
INSERT INTO `crm_data_region` VALUES (3979, 348, ',4,140,348,3979,', 4, '维克斯堡', 'Vicksburg', 'weikesibao', 'VKS');
INSERT INTO `crm_data_region` VALUES (3980, 349, ',4,140,349,3980,', 4, '安娜堡', 'Ann Arbor', 'annabao', 'ARB');
INSERT INTO `crm_data_region` VALUES (3981, 349, ',4,140,349,3981,', 4, '巴特尔克里克', 'Battle Creek', 'bateerkelike', 'BTL');
INSERT INTO `crm_data_region` VALUES (3982, 349, ',4,140,349,3982,', 4, '贝城', 'Bay City', 'beicheng', 'BCY');
INSERT INTO `crm_data_region` VALUES (3983, 349, ',4,140,349,3983,', 4, '大急流城', 'Grand Rapids', 'dajiliucheng', 'GRR');
INSERT INTO `crm_data_region` VALUES (3984, 349, ',4,140,349,3984,', 4, '迪尔伯恩', 'Dearborn', 'dierboen', 'DEO');
INSERT INTO `crm_data_region` VALUES (3985, 349, ',4,140,349,3985,', 4, '底特律', 'Detroit', 'ditelv', 'DET');
INSERT INTO `crm_data_region` VALUES (3986, 349, ',4,140,349,3986,', 4, '弗林特', 'Flint', 'fulinte', 'FNT');
INSERT INTO `crm_data_region` VALUES (3987, 349, ',4,140,349,3987,', 4, '怀恩多特', 'Wyandotte', 'huaienduote', 'WYD');
INSERT INTO `crm_data_region` VALUES (3988, 349, ',4,140,349,3988,', 4, '卡拉马袓', 'Kalamazoo', 'kalama', 'AZO');
INSERT INTO `crm_data_region` VALUES (3989, 349, ',4,140,349,3989,', 4, '兰辛', 'Lansing', 'lanxin', 'LAN');
INSERT INTO `crm_data_region` VALUES (3990, 349, ',4,140,349,3990,', 4, '马斯基根', 'Muskegon', 'masijigen', 'MKG');
INSERT INTO `crm_data_region` VALUES (3991, 349, ',4,140,349,3991,', 4, '庞菷亚克', 'Pontiac', 'pang', 'PTK');
INSERT INTO `crm_data_region` VALUES (3992, 349, ',4,140,349,3992,', 4, '萨吉诺', 'Saginaw', 'sajinuo', 'SGM');
INSERT INTO `crm_data_region` VALUES (3993, 349, ',4,140,349,3993,', 4, '苏圣玛丽', 'Sault Ste Marie', 'sushengmali', 'SSM');
INSERT INTO `crm_data_region` VALUES (3994, 349, ',4,140,349,3994,', 4, '沃伦', 'Warren', 'wolun', 'WAM');
INSERT INTO `crm_data_region` VALUES (3995, 349, ',4,140,349,3995,', 4, '休伦港', 'Port Huron', 'xiulungang', 'PHN');
INSERT INTO `crm_data_region` VALUES (3996, 350, ',4,140,350,3996,', 4, '班戈', 'Bangor', 'bange', 'BNQ');
INSERT INTO `crm_data_region` VALUES (3997, 350, ',4,140,350,3997,', 4, '波特兰', 'Portland', 'botelan', 'POL');
INSERT INTO `crm_data_region` VALUES (3998, 350, ',4,140,350,3998,', 4, '刘易斯顿', 'Lewiston', 'liuyisidun', 'QLW');
INSERT INTO `crm_data_region` VALUES (3999, 351, ',4,140,351,3999,', 4, '罗切斯特', 'Rochester', 'luoqiesite', 'RST');
INSERT INTO `crm_data_region` VALUES (4000, 351, ',4,140,351,4000,', 4, '明尼阿波利斯', 'Minneapolis', 'mingniabolisi', 'MES');
INSERT INTO `crm_data_region` VALUES (4001, 351, ',4,140,351,4001,', 4, '圣保罗', 'Saint Paul', 'shengbaoluo', 'STP');
INSERT INTO `crm_data_region` VALUES (4002, 352, ',4,140,352,4002,', 4, '阿伯丁', 'Aberdeen', 'aboding', 'ABK');
INSERT INTO `crm_data_region` VALUES (4003, 352, ',4,140,352,4003,', 4, '拉皮德城', 'Rapid City', 'lapidecheng', 'RAP');
INSERT INTO `crm_data_region` VALUES (4004, 352, ',4,140,352,4004,', 4, '苏福尔斯', 'Sioux Falls', 'sufuersi', 'FSD');
INSERT INTO `crm_data_region` VALUES (4005, 353, ',4,140,353,4005,', 4, '北查尔斯顿', 'North Charleston', 'beichaersidun', 'NTS');
INSERT INTO `crm_data_region` VALUES (4006, 353, ',4,140,353,4006,', 4, '查尔斯顿', 'Charleston', 'chaersidun', 'CHS');
INSERT INTO `crm_data_region` VALUES (4007, 353, ',4,140,353,4007,', 4, '哥伦比亚', 'Columbia', 'gelunbiya', 'COV');
INSERT INTO `crm_data_region` VALUES (4008, 354, ',4,140,354,4008,', 4, '奥马哈', 'Omaha', 'aomaha', 'OMA');
INSERT INTO `crm_data_region` VALUES (4009, 354, ',4,140,354,4009,', 4, '贝尔维尤', 'Bellevue', 'beierweiyou', 'XDE');
INSERT INTO `crm_data_region` VALUES (4010, 354, ',4,140,354,4010,', 4, '林肯', 'Lincoln', 'linken', 'LNK');
INSERT INTO `crm_data_region` VALUES (4011, 355, ',4,140,355,4011,', 4, '埃尔科', 'Elko', 'aierke', 'EKO');
INSERT INTO `crm_data_region` VALUES (4012, 355, ',4,140,355,4012,', 4, '北拉斯维加斯', 'North Las Vegas', 'beilasiweijiasi', 'NVS');
INSERT INTO `crm_data_region` VALUES (4013, 355, ',4,140,355,4013,', 4, '弗吉尼亚城', 'Virginia City', 'fujiniyacheng', 'VGI');
INSERT INTO `crm_data_region` VALUES (4014, 355, ',4,140,355,4014,', 4, '亨德森', 'Henderson', 'hengdesen', 'HNZ');
INSERT INTO `crm_data_region` VALUES (4015, 355, ',4,140,355,4015,', 4, '卡森城', 'Carson City', 'kasencheng', 'CSN');
INSERT INTO `crm_data_region` VALUES (4016, 355, ',4,140,355,4016,', 4, '拉斯维加斯', 'Las Vegas', 'lasiweijiasi', 'LAS');
INSERT INTO `crm_data_region` VALUES (4017, 355, ',4,140,355,4017,', 4, '里诺', 'Reno', 'linuo', 'RNO');
INSERT INTO `crm_data_region` VALUES (4018, 355, ',4,140,355,4018,', 4, '斯帕克斯', 'Sparks', 'sipakesi', 'SPK');
INSERT INTO `crm_data_region` VALUES (4019, 356, ',4,140,356,4019,', 4, '布法罗', 'Buffalo', 'bufaluo', 'FFO');
INSERT INTO `crm_data_region` VALUES (4020, 356, ',4,140,356,4020,', 4, '罗切斯特', 'Rochester', 'luoqiesite', 'ROC');
INSERT INTO `crm_data_region` VALUES (4021, 356, ',4,140,356,4021,', 4, '纽约市', 'New York', 'niuyueshi', 'QEE');
INSERT INTO `crm_data_region` VALUES (4022, 357, ',4,140,357,4022,', 4, '多佛', 'Dover', 'duofo', 'DOR');
INSERT INTO `crm_data_region` VALUES (4023, 357, ',4,140,357,4023,', 4, '纽瓦克', 'Newark', 'niuwake', 'NWK');
INSERT INTO `crm_data_region` VALUES (4024, 357, ',4,140,357,4024,', 4, '威明顿', 'Wilmington', 'weimingdun', 'ILG');
INSERT INTO `crm_data_region` VALUES (4025, 358, ',4,140,358,4025,', 4, '布利斯托', 'Bristol', 'bulisituo', 'BSJ');
INSERT INTO `crm_data_region` VALUES (4026, 358, ',4,140,358,4026,', 4, '查塔努加', 'Chattanooga', 'chatanujia', 'CHA');
INSERT INTO `crm_data_region` VALUES (4027, 358, ',4,140,358,4027,', 4, '金斯波特', 'Kingsport', 'jinsibote', 'TRI');
INSERT INTO `crm_data_region` VALUES (4028, 358, ',4,140,358,4028,', 4, '孟菲斯', 'Memphis', 'mengfeisi', 'MEM');
INSERT INTO `crm_data_region` VALUES (4029, 358, ',4,140,358,4029,', 4, '纳什维尔', 'Nashville', 'nashiweier', 'BNA');
INSERT INTO `crm_data_region` VALUES (4030, 358, ',4,140,358,4030,', 4, '诺克斯维尔', 'Knoxville', 'nuokesiweier', 'TYS');
INSERT INTO `crm_data_region` VALUES (4031, 358, ',4,140,358,4031,', 4, '三城区', 'Tri-City Area', 'sanchengqu', 'YTC');
INSERT INTO `crm_data_region` VALUES (4032, 358, ',4,140,358,4032,', 4, '士麦那', 'Smyrna', 'shimaina', 'MQY');
INSERT INTO `crm_data_region` VALUES (4033, 358, ',4,140,358,4033,', 4, '斯普林希尔', 'Spring Hill', 'sipulinxier', 'RGI');
INSERT INTO `crm_data_region` VALUES (4034, 358, ',4,140,358,4034,', 4, '约翰逊城', 'Johnson City', 'yuehanxuncheng', 'JCY');
INSERT INTO `crm_data_region` VALUES (4035, 359, ',4,140,359,4035,', 4, '阿普尓顿', 'Appleton', 'apu', 'ATW');
INSERT INTO `crm_data_region` VALUES (4036, 359, ',4,140,359,4036,', 4, '奥什科什', 'Oshkosh', 'aoshikeshi', 'OSH');
INSERT INTO `crm_data_region` VALUES (4037, 359, ',4,140,359,4037,', 4, '格林贝', 'Green Bay', 'gelinbei', 'GBK');
INSERT INTO `crm_data_region` VALUES (4038, 359, ',4,140,359,4038,', 4, '基诺沙', 'Kenosha', 'jinuosha', 'ENW');
INSERT INTO `crm_data_region` VALUES (4039, 359, ',4,140,359,4039,', 4, '拉克罗斯', 'LaCrosse', 'lakeluosi', 'LSE');
INSERT INTO `crm_data_region` VALUES (4040, 359, ',4,140,359,4040,', 4, '拉辛', 'Racine', 'laxin', 'RAC');
INSERT INTO `crm_data_region` VALUES (4041, 359, ',4,140,359,4041,', 4, '马尼托沃克', 'Manitowoc', 'manituowoke', 'MTW');
INSERT INTO `crm_data_region` VALUES (4042, 359, ',4,140,359,4042,', 4, '迈迪逊', 'Madison', 'maidixun', 'QMD');
INSERT INTO `crm_data_region` VALUES (4043, 359, ',4,140,359,4043,', 4, '密尔沃基', 'Milwaukee', 'mierwoji', 'MKE');
INSERT INTO `crm_data_region` VALUES (4044, 359, ',4,140,359,4044,', 4, '欧克莱尓', 'Eau Claire', 'oukelai', 'EAU');
INSERT INTO `crm_data_region` VALUES (4045, 359, ',4,140,359,4045,', 4, '沃索', 'Wausau', 'wosuo', 'AUW');
INSERT INTO `crm_data_region` VALUES (4046, 359, ',4,140,359,4046,', 4, '希博伊根', 'Sheboygan', 'xiboyigen', 'SBM');
INSERT INTO `crm_data_region` VALUES (4047, 360, ',4,140,360,4047,', 4, '弗吉尼亚比奇', 'Virginia Beach', 'fujiniyabiqi', 'VAB');
INSERT INTO `crm_data_region` VALUES (4048, 360, ',4,140,360,4048,', 4, '诺福克', 'Norfolk', 'nuofuke', 'ORF');
INSERT INTO `crm_data_region` VALUES (4049, 360, ',4,140,360,4049,', 4, '切萨皮克', 'Chesapeake', 'qiesapike', 'HTW');
INSERT INTO `crm_data_region` VALUES (4050, 361, ',4,140,361,4050,', 4, '查尔斯顿', 'Charleston', 'chaersidun', 'CRW');
INSERT INTO `crm_data_region` VALUES (4051, 361, ',4,140,361,4051,', 4, '亨廷顿', 'Huntington', 'hengtingdun', 'HNU');
INSERT INTO `crm_data_region` VALUES (4052, 361, ',4,140,361,4052,', 4, '帕克斯堡', 'Parkersburg', 'pakesibao', 'PKB');
INSERT INTO `crm_data_region` VALUES (4053, 362, ',4,140,362,4053,', 4, '凯卢阿', 'Kailua', 'kailua', 'KHH');
INSERT INTO `crm_data_region` VALUES (4054, 362, ',4,140,362,4054,', 4, '檀香山', 'Honolulu', 'tanxiangshan', 'HNL');
INSERT INTO `crm_data_region` VALUES (4055, 362, ',4,140,362,4055,', 4, '希洛', 'Hilo', 'xiluo', 'ITO');
INSERT INTO `crm_data_region` VALUES (4056, 363, ',4,140,363,4056,', 4, '康科德', 'Concord', 'kangkede', 'CON');
INSERT INTO `crm_data_region` VALUES (4057, 363, ',4,140,363,4057,', 4, '曼彻斯特', 'Manchester', 'manchesite', 'MHT');
INSERT INTO `crm_data_region` VALUES (4058, 363, ',4,140,363,4058,', 4, '纳舒厄', 'Nashua', 'nashue', 'ASH');
INSERT INTO `crm_data_region` VALUES (4059, 364, ',4,140,364,4059,', 4, '阿尔伯克基', 'Albuquerque', 'aerbokeji', 'ABQ');
INSERT INTO `crm_data_region` VALUES (4060, 364, ',4,140,364,4060,', 4, '拉斯克鲁塞斯', 'Las Cruces', 'lasikelusaisi', 'LRU');
INSERT INTO `crm_data_region` VALUES (4061, 364, ',4,140,364,4061,', 4, '罗斯韦尔', 'Roswell', 'luosiweier', 'ROW');
INSERT INTO `crm_data_region` VALUES (4062, 364, ',4,140,364,4062,', 4, '圣菲', 'Santa Fe', 'shengfei', 'SAF');
INSERT INTO `crm_data_region` VALUES (4063, 365, ',4,140,365,4063,', 4, '纽瓦克', 'Newark', 'niuwake', 'NRK');
INSERT INTO `crm_data_region` VALUES (4064, 365, ',4,140,365,4064,', 4, '帕特森', 'Paterson', 'patesen', 'PAT');
INSERT INTO `crm_data_region` VALUES (4065, 365, ',4,140,365,4065,', 4, '泽西城', 'Jersey City', 'zexicheng', 'JEC');
INSERT INTO `crm_data_region` VALUES (4066, 366, ',4,140,366,4066,', 4, '凤凰城', 'Phoenix', 'fenghuangcheng', 'PHX');
INSERT INTO `crm_data_region` VALUES (4067, 366, ',4,140,366,4067,', 4, '格兰代尔', 'Glendale', 'gelandaier', 'GDA');
INSERT INTO `crm_data_region` VALUES (4068, 366, ',4,140,366,4068,', 4, '梅萨', 'Mesa', 'meisa', 'MQA');
INSERT INTO `crm_data_region` VALUES (4069, 366, ',4,140,366,4069,', 4, '史卡兹代尔', 'Scottsdale', 'shikazidaier', 'STZ');
INSERT INTO `crm_data_region` VALUES (4070, 366, ',4,140,366,4070,', 4, '坦普', 'Tempe', 'tanpu', 'TPE');
INSERT INTO `crm_data_region` VALUES (4071, 366, ',4,140,366,4071,', 4, '图森', 'Tucson', 'tusen', 'TUC');
INSERT INTO `crm_data_region` VALUES (4072, 366, ',4,140,366,4072,', 4, '优玛', 'Yuma', 'youma', 'YUM');
INSERT INTO `crm_data_region` VALUES (4073, 367, ',4,140,367,4073,', 4, '奥尔顿', 'Alton', 'aoerdun', 'ALN');
INSERT INTO `crm_data_region` VALUES (4074, 367, ',4,140,367,4074,', 4, '奥罗拉', 'Aurora', 'aoluola', 'AUZ');
INSERT INTO `crm_data_region` VALUES (4075, 367, ',4,140,367,4075,', 4, '布卢明顿', 'Bloomington', 'bulumingdun', 'BLO');
INSERT INTO `crm_data_region` VALUES (4076, 367, ',4,140,367,4076,', 4, '丹维尓', 'Danville', 'danwei', 'DVI');
INSERT INTO `crm_data_region` VALUES (4077, 367, ',4,140,367,4077,', 4, '迪卡尔布', 'De Kalb', 'dikaerbu', 'DEK');
INSERT INTO `crm_data_region` VALUES (4078, 367, ',4,140,367,4078,', 4, '迪凯持', 'Decatur', 'dikaichi', 'DEC');
INSERT INTO `crm_data_region` VALUES (4079, 367, ',4,140,367,4079,', 4, '东圣路易斯', 'East St Louis', 'dongshengluyisi', 'ESL');
INSERT INTO `crm_data_region` VALUES (4080, 367, ',4,140,367,4080,', 4, '厄巴纳-香槟', 'Champaign-Urbana', 'ebanaxiang', 'CMI');
INSERT INTO `crm_data_region` VALUES (4081, 367, ',4,140,367,4081,', 4, '盖尔斯堡', 'Galesburg', 'gaiersibao', 'GSU');
INSERT INTO `crm_data_region` VALUES (4082, 367, ',4,140,367,4082,', 4, '卡本代尔', 'Carbondale', 'kabendaier', 'MDH');
INSERT INTO `crm_data_region` VALUES (4083, 367, ',4,140,367,4083,', 4, '罗克艾兰', 'Rock Island', 'luokeailan', 'RKI');
INSERT INTO `crm_data_region` VALUES (4084, 367, ',4,140,367,4084,', 4, '罗克福德', 'Rockford', 'luokefude', 'RFD');
INSERT INTO `crm_data_region` VALUES (4085, 367, ',4,140,367,4085,', 4, '诺黙尔', 'Normal', 'nuo', 'NOM');
INSERT INTO `crm_data_region` VALUES (4086, 367, ',4,140,367,4086,', 4, '皮奥里亚', 'Peoria', 'piaoliya', 'PLA');
INSERT INTO `crm_data_region` VALUES (4087, 367, ',4,140,367,4087,', 4, '森特勒利亚', 'Centralia', 'senteleliya', 'CRA');
INSERT INTO `crm_data_region` VALUES (4088, 367, ',4,140,367,4088,', 4, '斯普林菲尔德', 'Springfield', 'sipulinfeierde', 'SPI');
INSERT INTO `crm_data_region` VALUES (4089, 367, ',4,140,367,4089,', 4, '沃其根', 'Waukegan', 'woqigen', 'UGN');
INSERT INTO `crm_data_region` VALUES (4090, 367, ',4,140,367,4090,', 4, '芝加哥', 'Chicago', 'zhijiage', 'CHI');
INSERT INTO `crm_data_region` VALUES (4091, 368, ',4,140,368,4091,', 4, '埃文斯维尔', 'Evansville', 'aiwensiweier', 'EVV');
INSERT INTO `crm_data_region` VALUES (4092, 368, ',4,140,368,4092,', 4, '韦恩堡', 'Fort Wayne', 'weienbao', 'FWA');
INSERT INTO `crm_data_region` VALUES (4093, 368, ',4,140,368,4093,', 4, '印第安纳波利斯', 'Indianapolis', 'yindiannabolisi', 'IND');
INSERT INTO `crm_data_region` VALUES (4094, 369, ',4,140,369,4094,', 4, '奥格登', 'Ogden', 'aogedeng', 'OGD');
INSERT INTO `crm_data_region` VALUES (4095, 369, ',4,140,369,4095,', 4, '雷登', 'Layton', 'leideng', 'LTJ');
INSERT INTO `crm_data_region` VALUES (4096, 369, ',4,140,369,4096,', 4, '欧仁', 'Orem', 'ouren', 'OEU');
INSERT INTO `crm_data_region` VALUES (4097, 369, ',4,140,369,4097,', 4, '帕克城', 'Park City', 'pakecheng', 'PAC');
INSERT INTO `crm_data_region` VALUES (4098, 369, ',4,140,369,4098,', 4, '普罗沃', 'Provo', 'puluowo', 'PVU');
INSERT INTO `crm_data_region` VALUES (4099, 369, ',4,140,369,4099,', 4, '圣乔治', 'St.George', 'shengqiaozhi', 'SGU');
INSERT INTO `crm_data_region` VALUES (4100, 369, ',4,140,369,4100,', 4, '西瓦利城', 'West Valley City', 'xiwalicheng', 'WVC');
INSERT INTO `crm_data_region` VALUES (4101, 369, ',4,140,369,4101,', 4, '盐湖城', 'Salt Lake City', 'yanhucheng', 'SLC');
INSERT INTO `crm_data_region` VALUES (4102, 370, ',4,140,370,4102,', 4, '奥古斯塔', 'Augusta', 'aogusita', 'AUT');
INSERT INTO `crm_data_region` VALUES (4103, 370, ',4,140,370,4103,', 4, '哥伦布', 'Columbus', 'gelunbu', 'CZX');
INSERT INTO `crm_data_region` VALUES (4104, 370, ',4,140,370,4104,', 4, '梅肯', 'Macon', 'meiken', 'MCN');
INSERT INTO `crm_data_region` VALUES (4105, 370, ',4,140,370,4105,', 4, '沙瓦纳', 'Savannah', 'shawana', 'SAV');
INSERT INTO `crm_data_region` VALUES (4106, 370, ',4,140,370,4106,', 4, '亚特兰大', 'Atlanta', 'yatelanda', 'TAT');
INSERT INTO `crm_data_region` VALUES (4107, 371, ',2,237,371,4107,', 4, '贝尔法斯特', 'Belfast', 'beierfasite', 'BFS');
INSERT INTO `crm_data_region` VALUES (4108, 371, ',2,237,371,4108,', 4, '德里', 'Derry', 'deli', 'DRY');
INSERT INTO `crm_data_region` VALUES (4109, 371, ',2,237,371,4109,', 4, '利斯本', 'Lisburn', 'lisiben', 'LSB');
INSERT INTO `crm_data_region` VALUES (4110, 371, ',2,237,371,4110,', 4, '纽里', 'Newry', 'niuli', 'NYM');
INSERT INTO `crm_data_region` VALUES (4111, 372, ',2,237,372,4111,', 4, '阿伯丁', 'Aberdeen', 'aboding', 'ABD');
INSERT INTO `crm_data_region` VALUES (4112, 372, ',2,237,372,4112,', 4, '爱丁堡', 'Edinburgh', 'aidingbao', 'EDH');
INSERT INTO `crm_data_region` VALUES (4113, 372, ',2,237,372,4113,', 4, '丹迪', 'Dundee', 'dandi', 'DND');
INSERT INTO `crm_data_region` VALUES (4114, 372, ',2,237,372,4114,', 4, '格拉斯哥', 'Glasgow', 'gelasige', 'GLG');
INSERT INTO `crm_data_region` VALUES (4115, 372, ',2,237,372,4115,', 4, '斯特灵', 'Stirling', 'siteling', 'STG');
INSERT INTO `crm_data_region` VALUES (4116, 372, ',2,237,372,4116,', 4, '因弗内斯', 'Inverness', 'yinfuneisi', 'INV');
INSERT INTO `crm_data_region` VALUES (4117, 373, ',2,237,373,4117,', 4, '班戈', 'Bangor', 'bange', 'BAN');
INSERT INTO `crm_data_region` VALUES (4118, 373, ',2,237,373,4118,', 4, '卡迪夫', 'Cardiff', 'kadifu', 'CDF');
INSERT INTO `crm_data_region` VALUES (4119, 373, ',2,237,373,4119,', 4, '纽波特', 'Newport', 'niubote', 'NWP');
INSERT INTO `crm_data_region` VALUES (4120, 373, ',2,237,373,4120,', 4, '斯旺西', 'Swansea', 'siwangxi', 'SWA');
INSERT INTO `crm_data_region` VALUES (4121, 374, ',2,237,374,4121,', 4, '埃克塞特', 'Exeter', 'aikesaite', 'EXE');
INSERT INTO `crm_data_region` VALUES (4122, 374, ',2,237,374,4122,', 4, '巴斯', 'Bath', 'basi', 'BAS');
INSERT INTO `crm_data_region` VALUES (4123, 374, ',2,237,374,4123,', 4, '彼得伯勒', 'Peterborough', 'bidebole', 'PTE');
INSERT INTO `crm_data_region` VALUES (4124, 374, ',2,237,374,4124,', 4, '伯明翰', 'Birmingham', 'bominghan', 'BIR');
INSERT INTO `crm_data_region` VALUES (4125, 374, ',2,237,374,4125,', 4, '布拉德福德', 'Bradford', 'buladefude', 'BRD');
INSERT INTO `crm_data_region` VALUES (4126, 374, ',2,237,374,4126,', 4, '布莱顿与赫福', 'Brighton & Hove', 'bulaidunyuhefu', 'BNH');
INSERT INTO `crm_data_region` VALUES (4127, 374, ',2,237,374,4127,', 4, '布里斯托尔', 'Bristol', 'bulisituoer', 'BST');
INSERT INTO `crm_data_region` VALUES (4128, 374, ',2,237,374,4128,', 4, '德比', 'Derby', 'debi', 'DER');
INSERT INTO `crm_data_region` VALUES (4129, 374, ',2,237,374,4129,', 4, '德罕', 'Durham', 'dehan', 'DUR');
INSERT INTO `crm_data_region` VALUES (4130, 374, ',2,237,374,4130,', 4, '格洛斯特', 'Gloucester', 'geluosite', 'GLO');
INSERT INTO `crm_data_region` VALUES (4131, 374, ',2,237,374,4131,', 4, '赫尔河畔京斯敦', 'Kingston upon Hull', 'heerhepanjingsidun', 'KUH');
INSERT INTO `crm_data_region` VALUES (4132, 374, ',2,237,374,4132,', 4, '赫里福德', 'Hereford', 'helifude', 'HAF');
INSERT INTO `crm_data_region` VALUES (4133, 374, ',2,237,374,4133,', 4, '剑桥', 'Cambridge', 'jianqiao', 'CAM');
INSERT INTO `crm_data_region` VALUES (4134, 374, ',2,237,374,4134,', 4, '卡莱尔', 'Carlisle', 'kalaier', 'CAX');
INSERT INTO `crm_data_region` VALUES (4135, 374, ',2,237,374,4135,', 4, '坎特伯雷', 'Canterbury', 'kantebolei', 'CNG');
INSERT INTO `crm_data_region` VALUES (4136, 374, ',2,237,374,4136,', 4, '考文垂', 'Coventry', 'kaowenchui', 'COV');
INSERT INTO `crm_data_region` VALUES (4137, 374, ',2,237,374,4137,', 4, '兰开斯特', 'Lancaster', 'lankaisite', 'LAN');
INSERT INTO `crm_data_region` VALUES (4138, 374, ',2,237,374,4138,', 4, '里彭', 'Ripon', 'lipeng', 'RIP');
INSERT INTO `crm_data_region` VALUES (4139, 374, ',2,237,374,4139,', 4, '利奇菲尔德', 'Lichfield', 'liqifeierde', 'LHF');
INSERT INTO `crm_data_region` VALUES (4140, 374, ',2,237,374,4140,', 4, '利物浦', 'Liverpool', 'liwupu', 'LIV');
INSERT INTO `crm_data_region` VALUES (4141, 374, ',2,237,374,4141,', 4, '利茲', 'Leeds', 'li', 'LDS');
INSERT INTO `crm_data_region` VALUES (4142, 374, ',2,237,374,4142,', 4, '列斯特', 'Leicester', 'liesite', 'LCE');
INSERT INTO `crm_data_region` VALUES (4143, 374, ',2,237,374,4143,', 4, '林肯', 'Lincoln', 'linken', 'LCN');
INSERT INTO `crm_data_region` VALUES (4144, 374, ',2,237,374,4144,', 4, '伦敦', 'London', 'lundun', 'LND');
INSERT INTO `crm_data_region` VALUES (4145, 374, ',2,237,374,4145,', 4, '曼彻斯特', 'Manchester', 'manchesite', 'MAN');
INSERT INTO `crm_data_region` VALUES (4146, 374, ',2,237,374,4146,', 4, '南安普敦', 'Southampton', 'nananpudun', 'STH');
INSERT INTO `crm_data_region` VALUES (4147, 374, ',2,237,374,4147,', 4, '牛津', 'Oxford', 'niujin', 'OXF');
INSERT INTO `crm_data_region` VALUES (4148, 374, ',2,237,374,4148,', 4, '纽卡斯尔', 'Newcastle', 'niukasier', 'NCL');
INSERT INTO `crm_data_region` VALUES (4149, 374, ',2,237,374,4149,', 4, '诺丁汉', 'Nottingham', 'nuodinghan', 'NGM');
INSERT INTO `crm_data_region` VALUES (4150, 374, ',2,237,374,4150,', 4, '诺里奇', 'Norwich', 'nuoliqi', 'NRW');
INSERT INTO `crm_data_region` VALUES (4151, 374, ',2,237,374,4151,', 4, '朴茨茅斯', 'Portsmouth', 'pucimaosi', 'POR');
INSERT INTO `crm_data_region` VALUES (4152, 374, ',2,237,374,4152,', 4, '普雷斯顿', 'Preston', 'puleisidun', 'PRE');
INSERT INTO `crm_data_region` VALUES (4153, 374, ',2,237,374,4153,', 4, '普利茅斯', 'Plymouth', 'pulimaosi', 'PLY');
INSERT INTO `crm_data_region` VALUES (4154, 374, ',2,237,374,4154,', 4, '奇切斯特', 'Chichester', 'qiqiesite', 'CST');
INSERT INTO `crm_data_region` VALUES (4155, 374, ',2,237,374,4155,', 4, '切斯特', 'Chester', 'qiesite', 'CEG');
INSERT INTO `crm_data_region` VALUES (4156, 374, ',2,237,374,4156,', 4, '桑德兰', 'Sunderland', 'sangdelan', 'SUN');
INSERT INTO `crm_data_region` VALUES (4157, 374, ',2,237,374,4157,', 4, '圣阿本斯', 'Saint Albans', 'shengabensi', 'TBL');
INSERT INTO `crm_data_region` VALUES (4158, 374, ',2,237,374,4158,', 4, '索尔斯堡', 'Salisbury', 'suoersibao', 'SLS');
INSERT INTO `crm_data_region` VALUES (4159, 374, ',2,237,374,4159,', 4, '索福特', 'Salford', 'suofute', 'SLF');
INSERT INTO `crm_data_region` VALUES (4160, 374, ',2,237,374,4160,', 4, '特鲁罗', 'Truro', 'teluluo', 'TRU');
INSERT INTO `crm_data_region` VALUES (4161, 374, ',2,237,374,4161,', 4, '特伦特河畔斯多克', 'Stoke-on-Trent', 'teluntehepansiduoke', 'SOT');
INSERT INTO `crm_data_region` VALUES (4162, 374, ',2,237,374,4162,', 4, '威尔斯', 'Wells', 'weiersi', 'WLS');
INSERT INTO `crm_data_region` VALUES (4163, 374, ',2,237,374,4163,', 4, '韦克菲尔德', 'Wakefield', 'weikefeierde', 'WKF');
INSERT INTO `crm_data_region` VALUES (4164, 374, ',2,237,374,4164,', 4, '温彻斯特', 'Winchester', 'wenchesite', 'WNE');
INSERT INTO `crm_data_region` VALUES (4165, 374, ',2,237,374,4165,', 4, '伍尔弗汉普顿', 'Wolverhampton', 'wuerfuhanpudun', 'WOV');
INSERT INTO `crm_data_region` VALUES (4166, 374, ',2,237,374,4166,', 4, '伍斯特', 'Worcester', 'wusite', 'WOR');
INSERT INTO `crm_data_region` VALUES (4167, 374, ',2,237,374,4167,', 4, '谢菲尔德', 'Sheffield', 'xiefeierde', 'SHE');
INSERT INTO `crm_data_region` VALUES (4168, 374, ',2,237,374,4168,', 4, '伊利', 'Ely', 'yili', 'ELY');
INSERT INTO `crm_data_region` VALUES (4169, 374, ',2,237,374,4169,', 4, '约克', 'York', 'yueke', 'YOR');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'crm_data_region', '全球地区库', '', '', 'CrmDataRegion', 'crud', 'com.hx.system', 'system', 'region', '全球地区', 'lusifer', '0', '/', '{\"treeCode\":\"id\",\"treeName\":\"name\",\"treeParentCode\":\"pid\",\"parentMenuId\":2013}', 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'id', '主键', 'int(11) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58');
INSERT INTO `gen_table_column` VALUES (2, '1', 'pid', '父ID', 'int(11) unsigned', 'Long', 'pid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58');
INSERT INTO `gen_table_column` VALUES (3, '1', 'path', '路径', 'varchar(255)', 'String', 'path', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58');
INSERT INTO `gen_table_column` VALUES (4, '1', 'level', '层级', 'int(11) unsigned', 'Long', 'level', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58');
INSERT INTO `gen_table_column` VALUES (5, '1', 'name', '中文名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58');
INSERT INTO `gen_table_column` VALUES (6, '1', 'name_en', '英文名称', 'varchar(255)', 'String', 'nameEn', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58');
INSERT INTO `gen_table_column` VALUES (7, '1', 'name_pinyin', '中文拼音', 'varchar(255)', 'String', 'namePinyin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58');
INSERT INTO `gen_table_column` VALUES (8, '1', 'code', '代码', 'varchar(50)', 'String', 'code', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2022-08-12 09:32:51', '', '2022-08-12 09:38:58');

-- ----------------------------
-- Table structure for hx_formula
-- ----------------------------
DROP TABLE IF EXISTS `hx_formula`;
CREATE TABLE `hx_formula`  (
  `research_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '研发ID',
  `taste_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '销售派发单ID',
  `start_date` datetime(0) NULL DEFAULT NULL COMMENT '研发开始时间',
  `end_date` datetime(0) NULL DEFAULT NULL COMMENT '研发结束时间',
  `rd_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '研发代码(无)',
  `formula_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配方类别 (字典)',
  `vg` int(20) NULL DEFAULT NULL COMMENT 'VG',
  `pg` int(20) NULL DEFAULT NULL COMMENT 'PG',
  `nic_type` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NIC类别',
  `FNicDanwei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'NIC单位',
  `FNicAZhanbi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'nic占比A(无)',
  `FNicBZhanbi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'nic占比B(无)',
  `FKehubianma` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户编码',
  `FYanfadaima` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '研发代码',
  `FKouweimingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味名称',
  `FBanben` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本',
  `FShoukongKwmingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '受控口味名称',
  `FShoukongbianma` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '受控编码',
  `FGuanlianPeifangFID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联配方子表ID(暂时没有用)',
  `FYanfaqufen` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '研发区分',
  `FYanfaYuanFID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '研发',
  `FMaterialErpId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'erp',
  `FKouweidalei` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味大类',
  `FBOMErpId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'BOMEerp',
  `deleted` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志(0 正常   2已删除)',
  `status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态 (-1作废,0正常,1审核)',
  `follower` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟进人',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`research_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hx_formula
-- ----------------------------

-- ----------------------------
-- Table structure for hx_taste
-- ----------------------------
DROP TABLE IF EXISTS `hx_taste`;
CREATE TABLE `hx_taste`  (
  `taste_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '口味申请单ID',
  `dept_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门Id',
  `taste_copy_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被复制的口味申请单ID',
  `sp_no` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信审批编码',
  `business_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务姓名',
  `business_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '业务代码',
  `customers_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户名称',
  `customers_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '客户代码',
  `taste_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味数量',
  `referee_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上次申请单号',
  `send_num` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '第几次送样',
  `is_supply` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味专供（是，否）',
  `is_try` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '现场试用（是，否）',
  `visit_time` datetime(0) NULL DEFAULT NULL COMMENT '来访日期',
  `is_smoking` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自带烟具（是，否）',
  `smoking_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '烟具类型（一次性，换弹式)',
  `heating_wire_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发热丝类型（网芯,横发,竖发,棉芯,陶瓷）',
  `heating_wire_resistance` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发热丝阻值',
  `capacity` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '烟油仓容量',
  `oil_guide_cotton_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导游棉类型（PC,PCTG,其他)',
  `is_recycling_smoking` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否回收烟具（是，否）',
  `oil_ring_material` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '油环材质类型 (有机棉,亚麻棉,木浆棉,海藻绵,无纺布,其他)',
  `vg` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'VG',
  `sweetness` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '甜度(1-10)',
  `coolness` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '凉度(1-10)',
  `viscosity` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '粘稠度',
  `expected_completion_time` datetime(0) NULL DEFAULT NULL COMMENT '期望完成时间',
  `sample_request_time` datetime(0) NULL DEFAULT NULL COMMENT '样品需求时间',
  `estimated_finish_time` datetime(0) NULL DEFAULT NULL COMMENT '预计完成时间',
  `match_market` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '匹配市场（待定内容）',
  `samples_num` int(100) NULL DEFAULT NULL COMMENT '样品数量（单位ml）',
  `mailing_information` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮寄信息',
  `deleted` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志(0 正常   2已删除)',
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态 (-1作废,0正常,1审核)',
  `follower` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '跟进人',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`taste_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '口味申请单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hx_taste
-- ----------------------------
INSERT INTO `hx_taste` VALUES ('1212', 'dfa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '-1', NULL, '', NULL, 'admin', '2022-08-16 09:35:44', '');
INSERT INTO `hx_taste` VALUES ('1559001978615480320', '国内业务一组', NULL, NULL, '12', '12', '12', '12', '12', NULL, '12', '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, '2', '0', NULL, 'admin', '2022-08-15 10:20:11', '', NULL, '');
INSERT INTO `hx_taste` VALUES ('1559043682160730112', '国内业务二组', NULL, NULL, '1212', '12', '12', '12', '12', NULL, '12', '1', '1', '2022-08-09 00:00:00', '0', '0000000001', '网芯', '12', '12', '有机棉', '1', 'PCTG', NULL, NULL, '12', '12', '2022-08-15 00:00:00', '2022-08-16 00:00:00', '2022-08-15 00:00:00', '[[\"亚洲\",\"中国\"],[\"亚洲\",\"阿富汗\"]]', 12, '12', '2', '0', NULL, 'admin', '2022-08-15 13:05:54', 'admin', '2022-08-15 17:25:26', '');
INSERT INTO `hx_taste` VALUES ('1559116270354415616', '国内业务二组', NULL, NULL, '123', '12', '12321', '12', '12', NULL, '4134', '0', '是', '2022-08-23 00:00:00', '是', '一次性', '网芯', '423', '12', '有机棉', '是', 'PC', NULL, '323', '12', '12', '2022-08-15 00:00:00', '2022-08-15 00:00:00', '2022-08-09 00:00:00', '[[\"亚洲\",\"阿富汗\"]]', NULL, '1212', '2', '-1', NULL, 'admin', '2022-08-15 17:54:20', 'admin', '2022-08-15 19:02:37', '12');
INSERT INTO `hx_taste` VALUES ('1559136036448120832', '国内业务一组', NULL, NULL, '口味1', '12', '12', '12', '12', NULL, '12', '1', '是', '2022-08-16 00:00:00', '是', '一次性', '网芯', '12', '12', '有机棉', '是', 'PC', NULL, '12', '12', '12', '2022-08-15 00:00:00', '2022-08-16 00:00:00', '2022-08-16 00:00:00', '[[\"亚洲\",\"中国\"]]', 12, '1212', '0', '-1', 'test', 'admin', '2022-08-15 19:12:53', 'admin', '2022-08-17 10:46:03', '12');
INSERT INTO `hx_taste` VALUES ('1559138101152985088', '国内业务二组', NULL, '202208200016', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '3', '研发昵称', 'admin', '2022-08-15 19:21:05', 'admin', '2022-08-20 18:11:55', '11');
INSERT INTO `hx_taste` VALUES ('1559379267094069248', '国内业务二组', NULL, NULL, '1111', '11', '1', '1', '1', NULL, '1', '是', '否', '2022-08-16 00:00:00', '是', '一次性', '网芯', '11', '1', '有机棉', '否', 'PC', NULL, '12', '1', '1', '2022-08-16 00:00:00', '2022-08-02 00:00:00', '2022-08-16 00:00:00', '[[\"亚洲\",\"中国\"]]', 1, '1', '0', '0', 'test', 'admin', '2022-08-16 11:20:51', 'admin', '2022-08-16 17:21:50', '1');
INSERT INTO `hx_taste` VALUES ('1559403965001502720', '国内业务一组', NULL, '202208200014', '肖李奎', '11', '1', '11', '11', NULL, '1', '是', '是', '2022-08-16 00:00:00', '是', '换弹式', '网芯', '1', '1', '有机棉', '是', 'PC', NULL, '1', '1', '1', '2022-08-16 00:00:00', '2022-08-23 00:00:00', '2022-08-16 00:00:00', '[[\"亚洲\",\"中国\"]]', 11, '11', '0', '1', '销售昵称', '销售账号', '2022-08-16 12:57:32', 'admin', '2022-08-20 17:51:11', '');
INSERT INTO `hx_taste` VALUES ('1559488860650479616', '国内业务二组', NULL, NULL, '111', '11', '11', '11', '11', NULL, '11', '是', '是', '2022-08-16 00:00:00', '是', '一次性', '网芯', '1111', '11', '有机棉', '是', 'PC', NULL, '11', '11', '12', '2022-08-16 00:00:00', '2022-08-16 00:00:00', '2022-08-16 00:00:00', '[[\"亚洲\",\"中国\"]]', 11, '111', '0', '0', NULL, 'admin', '2022-08-16 18:34:53', '', NULL, '11');
INSERT INTO `hx_taste` VALUES ('1559737488057049088', '国内业务一组', NULL, '202208200015', '口味1', '12', '12', '12', '12', NULL, '12', '1', '是', '2022-08-16 00:00:00', '是', '一次性', '网芯', '12', '12', '有机棉', '是', 'PC', NULL, '12', '12', '12', '2022-08-15 00:00:00', '2022-08-16 00:00:00', '2022-08-16 00:00:00', '[[\"亚洲\",\"中国\"]]', 12, '1212', '0', '2', 'test', 'admin', '2022-08-17 11:02:50', 'admin', '2022-08-20 18:19:07', '12');
INSERT INTO `hx_taste` VALUES ('1559757769123307520', '国内业务一组', NULL, NULL, '口味1', '12', '12', '12', '12', NULL, '12', '1', '是', '2022-08-16 00:00:00', '是', '一次性', '网芯', '12', '12', '有机棉', '是', 'PC', NULL, '12', '12', '12', '2022-08-15 00:00:00', '2022-08-16 00:00:00', '2022-08-16 00:00:00', '[[\"亚洲\",\"中国\"]]', 12, '1212', '0', '0', 'test', 'admin', '2022-08-17 12:23:26', 'admin', '2022-08-17 10:46:03', '12');
INSERT INTO `hx_taste` VALUES ('1559761643306446848', '国内业务一组', '1559136036448120832', NULL, '口味1', '12', '12', '12', '12', NULL, '12', '1', '是', '2022-08-16 00:00:00', '是', '一次性', '网芯', '12', '12', '有机棉', '是', 'PC', NULL, '12', '12', '12', '2022-08-15 00:00:00', '2022-08-16 00:00:00', '2022-08-16 00:00:00', '[[\"亚洲\",\"中国\"]]', 12, '1212', '0', '6', 'test', 'admin', '2022-08-17 12:38:49', 'admin', '2022-08-18 17:45:26', '12');
INSERT INTO `hx_taste` VALUES ('1559762840042041344', '国内业务一组', '1559761643306446848', NULL, '口味1', '12', '12', '12', '12', NULL, '12', '1', '是', '2022-08-16 00:00:00', '是', '一次性', '网芯', '12', '12', '有机棉', '是', 'PC', NULL, '12', '12', '12', '2022-08-15 00:00:00', '2022-08-16 00:00:00', '2022-08-16 00:00:00', '[[\"亚洲\",\"中国\"]]', 12, '1212', '0', '0', 'test', 'admin', '2022-08-17 12:43:35', 'admin', '2022-08-17 10:46:03', '12');
INSERT INTO `hx_taste` VALUES ('1559799350720163840', '国内业务一组', NULL, NULL, 'uuuu', 'fgfg', '1', 'rwe', '12', NULL, '1', '是', '是', '2022-08-10 00:00:00', '是', '换弹式', '棉芯', '12', '1212', '亚麻棉', '是', 'PCTG', NULL, '1', '1212', '13', '2022-08-17 00:00:00', '2022-08-10 00:00:00', '2022-08-17 00:00:00', '[[\"亚洲\",\"中国\"]]', 12, '1231231231', '0', '-1', NULL, 'admin', '2022-08-17 15:08:40', 'admin', '2022-08-18 15:28:21', '');
INSERT INTO `hx_taste` VALUES ('1559802560683929600', '国内业务一组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[[\"亚洲\",\"中国\"]]', NULL, NULL, '2', '0', NULL, 'admin', '2022-08-17 15:21:25', '', NULL, '');
INSERT INTO `hx_taste` VALUES ('1559805069636890624', '国内业务一组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[[\"亚洲\",\"中国\"]]', NULL, NULL, '2', '0', NULL, 'admin', '2022-08-17 15:31:23', '', NULL, '');
INSERT INTO `hx_taste` VALUES ('1559807230672334848', '国内业务二组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[]', NULL, NULL, '2', '0', NULL, 'admin', '2022-08-17 15:39:58', '', NULL, '');
INSERT INTO `hx_taste` VALUES ('1559808228153323520', '国内业务二组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[[\"亚洲\",\"中国\"],[\"亚洲\",\"阿富汗\"],[\"欧洲\",\"阿尔巴尼亚\"],[\"欧洲\",\"爱尔兰\"],[\"欧洲\",\"爱沙尼亚\"],[\"欧洲\",\"安道尔\"],[\"欧洲\",\"奥地利\"],[\"非洲\",\"埃及\"]]', NULL, NULL, '2', '0', NULL, 'admin', '2022-08-17 15:43:56', '', NULL, '');
INSERT INTO `hx_taste` VALUES ('1559825081529495552', '国内业务二组', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[[\"亚洲\",\"中国\"],[\"亚洲\",\"阿富汗\"],[\"亚洲\",\"阿拉伯联合酋长国\"]]', NULL, NULL, '2', '0', NULL, 'admin', '2022-08-17 16:50:54', '', NULL, '');
INSERT INTO `hx_taste` VALUES ('1559825536259158016', '外贸业务部', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[[\"亚洲\",\"中国\"],[\"亚洲\",\"阿富汗\"],[\"亚洲\",\"阿拉伯联合酋长国\"]]', NULL, NULL, '2', '0', NULL, 'admin', '2022-08-17 16:52:43', '', NULL, '');
INSERT INTO `hx_taste` VALUES ('1560183446977839104', '国内业务二组', '1559138101152985088', '202208220001', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '1', '研发昵称', 'admin', '2022-08-18 16:34:55', 'admin', '2022-08-22 09:41:49', '11');
INSERT INTO `hx_taste` VALUES ('1560187482862989312', '国内业务二组', '1560183446977839104', NULL, '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '0', '研发昵称', 'admin', '2022-08-18 16:50:57', 'admin', '2022-08-18 16:38:33', '11');
INSERT INTO `hx_taste` VALUES ('1560801416210190336', '国内业务二组', '1559138101152985088', '202208200013', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '2', NULL, 'admin', '2022-08-20 09:30:31', 'admin', '2022-08-22 16:09:30', '11');
INSERT INTO `hx_taste` VALUES ('1563064522951757824', '国内业务二组', '1560801416210190336', '202208260005', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '1', NULL, 'admin', '2022-08-26 15:23:17', 'admin', '2022-08-26 15:46:32', '11');
INSERT INTO `hx_taste` VALUES ('1563070297828913152', '国内业务二组', '1563064522951757824', '202208260006', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '1', NULL, 'admin', '2022-08-26 15:46:14', 'admin', '2022-08-26 15:53:42', '11');
INSERT INTO `hx_taste` VALUES ('1563073749611151360', '国内业务二组', '1563064522951757824', '202208260007', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '0', NULL, 'admin', '2022-08-26 15:59:57', 'admin', '2022-08-26 16:00:05', '11');
INSERT INTO `hx_taste` VALUES ('1563078085930090496', '国内业务二组', '1563073749611151360', '202208260008', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '1', NULL, 'admin', '2022-08-26 16:17:11', 'admin', '2022-08-26 17:30:50', '11');
INSERT INTO `hx_taste` VALUES ('1563080723862093824', '国内业务二组', '1563078085930090496', '202208260009', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '0', NULL, 'admin', '2022-08-26 16:27:40', 'admin', '2022-08-26 16:28:24', '11');
INSERT INTO `hx_taste` VALUES ('1563081691441889280', '国内业务二组', '1563080723862093824', '202208260010', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '0', NULL, 'admin', '2022-08-26 16:31:31', 'admin', '2022-08-26 16:31:49', '11');
INSERT INTO `hx_taste` VALUES ('1563082158779629568', '国内业务二组', '1563081691441889280', 'K2022-08-31-001', '111', '1', '11', '11', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '0', '0', NULL, 'admin', '2022-08-26 16:33:22', 'admin', '2022-08-26 16:33:31', '11');
INSERT INTO `hx_taste` VALUES ('1564146408453394431', '国内业务二组', '1563082158779629568', 'K2022-08-30-001', '测试名', '测试', '测试', '测试', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '2', '0', NULL, 'admin', '2022-08-29 15:02:19', 'admin', '2022-08-30 16:41:47', '11');
INSERT INTO `hx_taste` VALUES ('1564529884922912768', '国内业务二组', '1564146408453394431', 'K2022-08-30-001', '测试名', '测试', '测试', '测试', '1', NULL, '1', '是', '是', '2022-08-08 00:00:00', '是', '一次性', '网芯', '11', '11', '亚麻棉', '是', 'PC', NULL, '1', '11', '11', '2022-08-08 00:00:00', '2022-08-16 00:00:00', '2022-08-08 00:00:00', '[[\"欧洲\",\"爱尔兰\"]]', 11, '1111', '2', '1', NULL, 'admin', '2022-08-30 16:26:07', 'admin', '2022-08-30 16:45:17', '11');

-- ----------------------------
-- Table structure for hx_taste_detail
-- ----------------------------
DROP TABLE IF EXISTS `hx_taste_detail`;
CREATE TABLE `hx_taste_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '口味明细ID',
  `taste_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味名称',
  `taste_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '管理口味表ID',
  `taste_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味描述',
  `is_basic_taste` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '有基础口味（0:是，1：否）',
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
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '口味申请单明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hx_taste_detail
-- ----------------------------
INSERT INTO `hx_taste_detail` VALUES (115, '测试数据1', '1559488860650479616', '测试数据1', '', '123', '123', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (116, '测试数据2', '1559488860650479616', '测试数据2', '', '123', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (117, '测试数据3', '1559488860650479616', '测试数据3', '', '123', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (118, '', '1559136036448120832', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (119, '', '1559136036448120832', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (120, '', '1559136036448120832', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (121, '', '1559136036448120832', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (122, '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (123, '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (124, '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (125, '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (126, '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (127, '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (128, '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (129, '', NULL, '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (134, '1212', '1559757769123307520', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (135, '', '1559757769123307520', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (136, '', '1559757769123307520', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (137, '', '1559757769123307520', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (138, '', '1559761643306446848', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (139, '', '1559761643306446848', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (140, '', '1559761643306446848', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (141, '', '1559761643306446848', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (142, '', '1559762840042041344', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (143, '', '1559762840042041344', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (144, '', '1559762840042041344', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (145, '', '1559762840042041344', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (146, '12', '1559799350720163840', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');
INSERT INTO `hx_taste_detail` VALUES (147, '12', '1559799350720163840', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '');

-- ----------------------------
-- Table structure for hx_user_wxuser
-- ----------------------------
DROP TABLE IF EXISTS `hx_user_wxuser`;
CREATE TABLE `hx_user_wxuser`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `wx_user_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业微信绑定的ID',
  `wx_dept_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业微信部门ID',
  `wx_info` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业微信的所有个人信息',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hx_user_wxuser
-- ----------------------------
INSERT INTO `hx_user_wxuser` VALUES (1, '1', NULL, NULL);
INSERT INTO `hx_user_wxuser` VALUES (100, '2', NULL, NULL);
INSERT INTO `hx_user_wxuser` VALUES (101, '3', NULL, NULL);
INSERT INTO `hx_user_wxuser` VALUES (102, '3', NULL, NULL);

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
  `config_value` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2022-05-24 17:11:23', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2022-05-24 17:11:23', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2022-05-24 17:11:23', 'admin', '2022-05-25 12:27:27', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaOnOff', 'false', 'Y', 'admin', '2022-05-24 17:11:23', 'admin', '2022-05-26 13:09:06', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2022-05-24 17:11:23', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '企业微信ACCESS_TOKEN', 'wx.work.accessToken', '5H8Kc9mAGrFDRSphO7oIBft9fiCh8B7y9QlMvQn3GV3EFNPEzI-_t15uRCe10E3iQFn4Yib35uEQ60xYmQZ58GN66MbuEFEh8N4Y5YcPWUMcCfruNRWggTsxkxkSzESjwZ8wzBNsjTFdom4vCADP-BBVOPZkzLS_Lyfy32PaL0MUNS6lUyToMyc2M08hEhcbfsO9r-OAEHiLcwsJyFfBfg', 'Y', 'admin', '2022-06-30 16:49:09', '', '2022-08-31 11:57:18', NULL);
INSERT INTO `sys_config` VALUES (7, '企业微信票据jsapi_ticket', 'wx.work.jsapiTicket', 'HoagFKDcsGMVCIY2vOjf9qgYNtNw2pvB7MhBKIbYA512D_Uim0orChZIANLZ-ihxvSltGCtK-1UoRKr4rKVy8g', 'Y', 'admin', '2022-06-30 16:49:18', '', '2022-08-31 11:57:18', NULL);
INSERT INTO `sys_config` VALUES (8, '企业微信票据获取应用的jsapi_ticket', 'wx.work.jsapiTicket.app', 'mwJwOk1q9od8ikGG20sGVA==', 'Y', 'admin', '2022-06-30 16:49:24', '', '2022-08-31 11:57:18', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '恒信科技', 0, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:04:27');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳公司', 1, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:02:18');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '东莞公司', 2, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:02:36');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部', 1, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:02:58');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '销售部', 2, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:03:10');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部', 3, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:04:50');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部', 4, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:04:54');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, 'admin', '15700001234', '123@qq.com', '0', '2', 'admin', '2022-05-24 17:11:23', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '研发部', 1, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:03:33');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '销售部', 2, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 10:03:56');
INSERT INTO `sys_dept` VALUES (110, 102, '0,100,102', '财务部', 3, 'admin', '15700001234', '123@qq.com', '0', '0', 'admin', '2022-08-16 10:04:07', 'admin', '2022-08-16 10:04:13');
INSERT INTO `sys_dept` VALUES (111, 104, '0,100,101,104', '一组', 1, '一组组长', '17633651234', '11@qq.com', '0', '0', 'admin', '2022-08-16 12:49:27', '', NULL);
INSERT INTO `sys_dept` VALUES (112, 104, '0,100,101,104', '二组', 2, '二组组长', '15612341234', 'qq@qq.com', '0', '0', 'admin', '2022-08-16 12:50:07', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
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
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_dict_data` VALUES (104, 0, 'auit', 'puIN-aH6EtjwvcdAefEPr8hJTxVbVSKcyo4JZgvpF3G2Kd0ScBJPDshuwqO7dDghP4rjgVX2wQ7UeDeKtokDtf7_zntLFeKQk5BuXoTyjeYjZGF6_5pEHDy8uqz4-4AJI4pjHFCQNJfRz7vMpEDQ6XRqw9pUUzEEF6RgeCYoZIe7Br0kSst7TTdtpjwzYh1bPMCssYq6kOp9d3qujRiVig', 'hx_work_wx_token', NULL, 'default', 'N', '0', 'admin', '2022-08-20 11:20:50', 'admin', '2022-08-20 11:23:54', '企业微信审批模块授权token');

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
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_dict_type` VALUES (102, '企业微信Token', 'hx_work_wx_token', '1', 'admin', '2022-08-20 11:16:19', 'admin', '2022-08-23 10:10:55', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 329 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

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
INSERT INTO `sys_logininfor` VALUES (154, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-28 09:10:07');
INSERT INTO `sys_logininfor` VALUES (155, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-28 10:55:36');
INSERT INTO `sys_logininfor` VALUES (156, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-28 14:09:48');
INSERT INTO `sys_logininfor` VALUES (157, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-28 14:46:46');
INSERT INTO `sys_logininfor` VALUES (158, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-28 15:31:13');
INSERT INTO `sys_logininfor` VALUES (159, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 09:09:24');
INSERT INTO `sys_logininfor` VALUES (160, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-05-30 09:17:09');
INSERT INTO `sys_logininfor` VALUES (161, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 09:17:11');
INSERT INTO `sys_logininfor` VALUES (162, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 10:33:10');
INSERT INTO `sys_logininfor` VALUES (163, 'test', '10.10.7.141', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2022-05-30 12:30:04');
INSERT INTO `sys_logininfor` VALUES (164, 'test', '10.10.7.141', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 12:34:28');
INSERT INTO `sys_logininfor` VALUES (165, 'test', '10.10.7.137', '内网IP', 'Apple WebKit', 'Mac OS X (iPhone)', '0', '登录成功', '2022-05-30 13:08:24');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 13:09:27');
INSERT INTO `sys_logininfor` VALUES (167, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 13:12:12');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 14:13:29');
INSERT INTO `sys_logininfor` VALUES (169, 'test', '10.10.7.141', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 15:54:10');
INSERT INTO `sys_logininfor` VALUES (170, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 17:31:45');
INSERT INTO `sys_logininfor` VALUES (171, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-30 17:57:14');
INSERT INTO `sys_logininfor` VALUES (172, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-31 09:06:36');
INSERT INTO `sys_logininfor` VALUES (173, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-05-31 15:19:56');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-06-29 18:02:29');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-29 18:02:32');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-06-30 16:48:46');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-07 12:58:14');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-07-07 16:42:33');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-02 17:04:27');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-02 17:04:31');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-02 17:19:10');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-03 09:52:28');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-03 18:08:16');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-04 16:36:09');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-05 09:35:53');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-05 11:52:02');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-05 15:20:35');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-05 15:20:39');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-12 09:32:20');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-12 09:32:27');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-15 10:07:43');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-15 14:15:38');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-15 14:15:41');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-15 14:15:44');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-15 15:40:52');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-15 15:40:57');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-15 16:15:36');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-15 16:15:39');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-16 09:07:11');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-16 09:07:20');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-16 11:19:33');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-16 11:19:40');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-16 12:12:54');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-16 12:12:58');
INSERT INTO `sys_logininfor` VALUES (205, '研发账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-16 12:17:12');
INSERT INTO `sys_logininfor` VALUES (206, '销售账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-16 12:54:28');
INSERT INTO `sys_logininfor` VALUES (207, '销售账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '退出成功', '2022-08-16 12:55:17');
INSERT INTO `sys_logininfor` VALUES (208, '销售账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-16 12:55:28');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-16 14:36:27');
INSERT INTO `sys_logininfor` VALUES (210, '销售账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-16 14:40:28');
INSERT INTO `sys_logininfor` VALUES (211, '销售账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-16 15:54:43');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-17 08:57:49');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-17 08:57:53');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-17 14:26:19');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-17 14:26:23');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-17 14:26:26');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-17 14:51:02');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-17 14:51:06');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-17 18:02:32');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-17 18:02:49');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-18 09:16:06');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-18 09:16:10');
INSERT INTO `sys_logininfor` VALUES (223, 'test', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-18 09:29:36');
INSERT INTO `sys_logininfor` VALUES (224, 'test', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '退出成功', '2022-08-18 09:29:56');
INSERT INTO `sys_logininfor` VALUES (225, '研发账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-18 09:30:02');
INSERT INTO `sys_logininfor` VALUES (226, '销售账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-18 11:41:33');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-18 15:28:01');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-18 15:28:05');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-19 12:01:20');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-19 12:01:28');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-19 12:01:39');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-19 14:35:43');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-19 17:10:00');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-19 17:10:05');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-19 18:40:52');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-20 09:20:35');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-20 09:20:39');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-20 11:14:19');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-20 11:27:50');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-20 11:37:07');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-20 11:37:14');
INSERT INTO `sys_logininfor` VALUES (242, '销售账号', '127.0.0.1', '内网IP', 'Apple WebKit', 'iOS 10 (iPhone)', '0', '登录成功', '2022-08-20 12:16:24');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-20 13:30:14');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '192.168.1.11', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-20 18:23:26');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '192.168.1.11', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-20 18:26:43');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '192.168.1.11', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 09:25:55');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 09:42:55');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 09:42:57');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 09:43:01');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 09:43:08');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '192.168.1.11', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 13:21:14');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 14:01:34');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 14:01:36');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 14:01:42');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 14:22:48');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 14:39:55');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 14:48:14');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 14:48:17');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '10.10.7.59', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2022-08-22 14:57:35');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '10.10.7.60', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 15:39:42');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '10.10.7.60', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 15:39:46');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 16:00:48');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 16:00:52');
INSERT INTO `sys_logininfor` VALUES (264, '123', '10.10.7.60', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：123 不存在', '2022-08-22 17:35:19');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '10.10.7.60', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2022-08-22 17:35:37');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '10.10.7.60', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 17:35:41');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-22 18:42:52');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 09:22:01');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 10:10:31');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 10:12:36');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 10:27:57');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 10:38:53');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '10.10.7.59', '内网IP', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2022-08-23 11:49:48');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 11:51:54');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 12:12:20');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 16:22:49');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-23 16:30:34');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 16:32:55');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-23 16:38:47');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 16:39:15');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-23 16:41:50');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 16:47:58');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-23 17:11:35');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 17:12:03');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-23 17:15:40');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 17:16:02');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-23 17:20:22');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 17:20:46');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 17:29:57');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 17:30:36');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-23 17:30:58');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-23 17:33:00');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 17:33:45');
INSERT INTO `sys_logininfor` VALUES (294, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 17:38:03');
INSERT INTO `sys_logininfor` VALUES (295, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-23 17:47:44');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-24 10:41:37');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-24 10:57:29');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-24 12:19:03');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-24 12:37:49');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-24 13:04:04');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-24 14:27:40');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-24 15:06:56');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-24 15:09:10');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-24 16:08:24');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-24 16:10:50');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-26 16:48:52');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-26 16:49:20');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-26 17:23:22');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '10.10.7.72', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-26 17:23:55');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-29 13:13:54');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-29 14:27:19');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-29 14:47:45');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-29 15:16:18');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-29 15:18:59');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-29 15:40:17');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-29 17:33:55');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-29 18:28:00');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-30 10:34:24');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-30 12:41:13');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-30 12:42:56');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-30 12:46:31');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-30 12:56:32');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-30 15:14:42');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '10.10.7.24', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-30 15:30:46');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-31 09:09:20');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '10.10.7.85', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-31 09:11:12');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2022-08-31 09:39:34');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2022-08-31 10:55:03');

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
) ENGINE = InnoDB AUTO_INCREMENT = 2027 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 2014, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-16 18:04:09', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 2014, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '1', '', 'monitor', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-20 18:05:58', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 2014, 3, 'tool', NULL, '', 1, 0, 'M', '0', '1', '', 'tool', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-20 18:06:02', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '百度', 2014, 4, 'http://baidu.com', NULL, '', 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-17 08:58:08', '');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2022-05-24 17:11:23', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2022-05-24 17:11:23', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-20 18:06:20', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2022-05-24 17:11:23', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2022-05-24 17:11:23', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2022-05-24 17:11:23', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '1', 'system:config:list', 'edit', 'admin', '2022-05-24 17:11:23', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '1', 'system:notice:list', 'message', 'admin', '2022-05-24 17:11:23', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '1', '', 'log', 'admin', '2022-05-24 17:11:23', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2022-05-24 17:11:23', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '1', 'monitor:job:list', 'job', 'admin', '2022-05-24 17:11:23', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2022-05-24 17:11:23', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2022-05-24 17:11:23', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2022-05-24 17:11:23', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2022-05-24 17:11:23', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2022-05-24 17:11:23', 'admin', '2022-08-20 18:05:51', '代码生成菜单');
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
INSERT INTO `sys_menu` VALUES (2000, '口味申请单', 2013, 1, 'taste', 'system/taste/index', NULL, 1, 0, 'C', '0', '0', 'system:taste:list', 'build', 'admin', '2022-05-25 11:15:01', 'admin', '2022-08-04 16:38:51', '口味申请单菜单');
INSERT INTO `sys_menu` VALUES (2001, '口味申请单详情/打印', 2006, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:query', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '口味申请单新增', 2000, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:add', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '口味申请单修改', 2006, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:edit', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '口味申请单删除', 2006, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:remove', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '口味申请单导出', 2006, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:export', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '口味列表', 2013, 1, 'tasteList', 'system/taste/list', NULL, 1, 0, 'C', '0', '0', 'taste:list', 'clipboard', 'admin', '2022-05-30 13:12:01', 'admin', '2022-08-04 16:38:43', '');
INSERT INTO `sys_menu` VALUES (2007, '口味申请单作废', 2006, 6, '#', NULL, NULL, 1, 0, 'f', '0', '0', 'taste:waste', '#', 'admin', '2022-06-29 18:11:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '口味申请单审核', 2006, 6, '#', NULL, NULL, 1, 0, 'f', '0', '0', 'taste:audit', '#', 'admin', '2022-06-29 18:11:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '口味申请单分配跟进人', 2006, 7, '#', NULL, NULL, 1, 0, 'f', '0', '0', 'taste:distribution', '#', 'admin', '2022-06-29 18:11:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '口味跟进列表', 2013, 1, 'followList', 'system/taste/followList', NULL, 1, 0, 'C', '0', '0', 'taste:list', 'drag', 'admin', '2022-05-30 13:12:01', 'admin', '2022-08-04 16:38:43', '');
INSERT INTO `sys_menu` VALUES (2011, '通讯测试', 2013, 1, 'test', 'system/test/showtongxun', NULL, 1, 0, 'C', '0', '1', 'system:taste:list', 'build', 'admin', '2022-05-25 11:15:01', 'admin', '2022-08-17 10:13:32', '口味申请单菜单');
INSERT INTO `sys_menu` VALUES (2013, '口味', 0, 1, 'kouwei', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'button', 'admin', '2022-08-04 16:38:26', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '系统配置', 0, 3, '/sys', NULL, NULL, 1, 0, 'M', '0', '0', '', 'tab', 'admin', '2022-08-16 18:03:58', 'admin', '2022-08-16 18:05:14', '');
INSERT INTO `sys_menu` VALUES (2016, '退回分配', 2010, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle1', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '退回业务', 2010, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle2', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '调整', 2010, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle3', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '开始', 2010, 6, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle4', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '提交研发', 2010, 7, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle5', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '确认配方', 2010, 8, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle6', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '反确认配方', 2010, 9, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle7', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '打印配方确认单', 2010, 10, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle8', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '完成跟进', 2010, 11, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle9', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '详细日志', 2010, 12, '#', '', NULL, 1, 0, 'F', '0', '0', 'taste:handle10', '#', 'admin', '2022-05-25 11:15:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '打印', 0, 6, 'print', 'system/taste/print', NULL, 1, 0, 'C', '0', '0', '', 'clipboard', 'admin', '2022-08-30 16:51:05', 'admin', '2022-08-30 17:02:12', '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559136036448120832', '127.0.0.1', '内网IP', '{tasteId=1559136036448120832}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:36:55');
INSERT INTO `sys_oper_log` VALUES (2, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559136036448120832', '127.0.0.1', '内网IP', '{tasteId=1559136036448120832}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:37:36');
INSERT INTO `sys_oper_log` VALUES (3, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559136036448120832', '127.0.0.1', '内网IP', '{tasteId=1559136036448120832}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:37:39');
INSERT INTO `sys_oper_log` VALUES (4, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559138101152985088', '127.0.0.1', '内网IP', '{tasteId=1559138101152985088}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 11:37:42');
INSERT INTO `sys_oper_log` VALUES (5, '用户管理', 3, 'com.hx.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{userIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:13:37');
INSERT INTO `sys_oper_log` VALUES (6, '用户管理', 2, 'com.hx.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1653981596000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"test\",\"sex\":\"0\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"测试部\",\"leader\":\"admin\",\"deptId\":105,\"orderNum\":3,\"params\":{},\"parentId\":101,\"children\":[],\"ancestors\":\"0,100,101\",\"status\":\"0\"},\"params\":{},\"userName\":\"test\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1653452942000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:14:00');
INSERT INTO `sys_oper_log` VALUES (7, '用户管理', 1, 'com.hx.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$nrlIQqoNKBchj5AlDO/5Ee2U9qwosyVCn3XR7VkRJSPd.D5Kl/7sK\",\"postIds\":[4],\"nickName\":\"研发昵称\",\"sex\":\"0\",\"deptId\":103,\"params\":{},\"userName\":\"研发账号\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:15:08');
INSERT INTO `sys_oper_log` VALUES (8, '用户管理', 1, 'com.hx.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$F2kYYq8l2d9LASor3j47s.PEAmYzDemGBpzSp0YFeIYwgWYISJU62\",\"postIds\":[4],\"nickName\":\"销售昵称\",\"sex\":\"1\",\"deptId\":104,\"params\":{},\"userName\":\"销售账号\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:16:28');
INSERT INTO `sys_oper_log` VALUES (9, '个人信息', 2, 'com.hx.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":1,\"admin\":true,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"status\":\"0\"}],\"phonenumber\":\"15888888888\",\"admin\":true,\"loginDate\":1660619981000,\"remark\":\"管理员\",\"delFlag\":\"0\",\"loginIp\":\"127.0.0.1\",\"email\":\"test@qq.com\",\"nickName\":\"lusifer\",\"sex\":\"1\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部\",\"leader\":\"admin\",\"deptId\":103,\"orderNum\":1,\"params\":{},\"parentId\":101,\"children\":[],\"ancestors\":\"0,100,101\",\"status\":\"0\"},\"params\":{},\"userName\":\"admin\",\"userId\":1,\"createBy\":\"admin\",\"createTime\":1653383483000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:18:32');
INSERT INTO `sys_oper_log` VALUES (10, '口味申请单', 5, 'com.hx.web.controller.system.HxTasteController.export()', 'POST', 1, 'admin', NULL, '/system/taste/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2022-08-16 12:41:18');
INSERT INTO `sys_oper_log` VALUES (11, '角色管理', 1, 'com.hx.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"sales\",\"roleName\":\"销售\",\"deptIds\":[],\"menuIds\":[2013,2006,2000,2002,2001,2003,2007,2008],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:46:23');
INSERT INTO `sys_oper_log` VALUES (12, '部门管理', 1, 'com.hx.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"一组\",\"leader\":\"一组组长\",\"orderNum\":1,\"params\":{},\"parentId\":104,\"createBy\":\"admin\",\"children\":[],\"phone\":\"17633651234\",\"ancestors\":\"0,100,101,104\",\"email\":\"11@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:49:27');
INSERT INTO `sys_oper_log` VALUES (13, '部门管理', 1, 'com.hx.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"二组\",\"leader\":\"二组组长\",\"orderNum\":2,\"params\":{},\"parentId\":104,\"createBy\":\"admin\",\"children\":[],\"phone\":\"15612341234\",\"ancestors\":\"0,100,101,104\",\"email\":\"qq@qq.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:50:07');
INSERT INTO `sys_oper_log` VALUES (14, '用户管理', 2, 'com.hx.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"销售昵称\",\"sex\":\"1\",\"deptId\":111,\"avatar\":\"\",\"dept\":{\"deptName\":\"销售部\",\"leader\":\"admin\",\"deptId\":104,\"orderNum\":2,\"params\":{},\"parentId\":101,\"children\":[],\"ancestors\":\"0,100,101\",\"status\":\"0\"},\"params\":{},\"userName\":\"销售账号\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1660623388000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:51:16');
INSERT INTO `sys_oper_log` VALUES (15, '用户管理', 2, 'com.hx.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1660625668000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[4],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"销售昵称\",\"sex\":\"1\",\"deptId\":111,\"avatar\":\"\",\"dept\":{\"deptName\":\"一组\",\"leader\":\"一组组长\",\"deptId\":111,\"orderNum\":1,\"params\":{},\"parentId\":104,\"children\":[],\"ancestors\":\"0,100,101,104\",\"status\":\"0\"},\"params\":{},\"userName\":\"销售账号\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[3],\"createTime\":1660623388000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:54:56');
INSERT INTO `sys_oper_log` VALUES (16, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, '销售账号', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"换弹式\",\"businessName\":\"肖李奎\",\"remark\":\"\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"1\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"1\",\"coolness\":\"1\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660579200000,\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1661184000000,\"sweetness\":\"1\",\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559403965001502720\",\"createBy\":\"销售账号\",\"viscosity\":\"1\",\"visitTime\":1660579200000,\"oilRingMaterial\":\"PC\",\"createTime\":1660625852238,\"isSupply\":\"是\",\"mailingInformation\":\"11\",\"tasteNum\":\"11\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 12:57:32');
INSERT INTO `sys_oper_log` VALUES (17, '岗位管理', 1, 'com.hx.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"5\",\"flag\":false,\"postId\":5,\"params\":{},\"createBy\":\"admin\",\"postName\":\"调香师\",\"postCode\":\"RD\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 14:36:58');
INSERT INTO `sys_oper_log` VALUES (18, '岗位管理', 2, 'com.hx.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"5\",\"flag\":false,\"postId\":5,\"params\":{},\"createBy\":\"admin\",\"createTime\":1660631818000,\"updateBy\":\"admin\",\"postName\":\"调香师\",\"postCode\":\"rd\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 14:37:05');
INSERT INTO `sys_oper_log` VALUES (19, '岗位管理', 1, 'com.hx.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"0\",\"flag\":false,\"postId\":6,\"params\":{},\"createBy\":\"admin\",\"postName\":\"销售\",\"postCode\":\"sales\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 14:37:41');
INSERT INTO `sys_oper_log` VALUES (20, '岗位管理', 2, 'com.hx.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"6\",\"flag\":false,\"postId\":6,\"params\":{},\"createBy\":\"admin\",\"createTime\":1660631861000,\"updateBy\":\"admin\",\"postName\":\"销售\",\"postCode\":\"sales\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 14:37:51');
INSERT INTO `sys_oper_log` VALUES (21, '用户管理', 2, 'com.hx.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"sales\",\"roleName\":\"销售\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1660625729000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[6],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"销售昵称\",\"sex\":\"1\",\"deptId\":111,\"avatar\":\"\",\"dept\":{\"deptName\":\"一组\",\"leader\":\"一组组长\",\"deptId\":111,\"orderNum\":1,\"params\":{},\"parentId\":104,\"children\":[],\"ancestors\":\"0,100,101,104\",\"status\":\"0\"},\"params\":{},\"userName\":\"销售账号\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[3],\"createTime\":1660623388000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 14:38:10');
INSERT INTO `sys_oper_log` VALUES (22, '用户管理', 2, 'com.hx.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":2,\"admin\":false,\"dataScope\":\"2\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"status\":\"0\"}],\"phonenumber\":\"\",\"admin\":false,\"loginDate\":1660623432000,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[5],\"loginIp\":\"127.0.0.1\",\"email\":\"\",\"nickName\":\"研发昵称\",\"sex\":\"0\",\"deptId\":103,\"avatar\":\"\",\"dept\":{\"deptName\":\"研发部\",\"leader\":\"admin\",\"deptId\":103,\"orderNum\":1,\"params\":{},\"parentId\":101,\"children\":[],\"ancestors\":\"0,100,101\",\"status\":\"0\"},\"params\":{},\"userName\":\"研发账号\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1660623308000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 14:38:20');
INSERT INTO `sys_oper_log` VALUES (23, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"换弹式\",\"businessName\":\"肖李奎\",\"remark\":\"\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"1\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"1\",\"updateBy\":\"admin\",\"coolness\":\"1\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"测试数据1\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"测试数据1\",\"tasteId\":\"1559403965001502720\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"测试数据1\",\"nicType\":\"\",\"tasteDetail\":\"测试数据1\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"测试数据2\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"测试数据2\",\"tasteId\":\"1559403965001502720\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"测试数据2\",\"nicType\":\"\",\"tasteDetail\":\"测试数据2\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"测试数据3\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"测试数据3\",\"tasteId\":\"1559403965001502720\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"测试数据3\",\"nicType\":\"\",\"tasteDetail\":\"测试数据3\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660579200000,\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1661184000000,\"sweetness\":\"1\",\"updateTime\":1660633441189,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559403965001502720\",\"createBy\":\"销售账号\",\"viscosity\":\"1\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660625852000,\"isSupply\":\"是\",\"mailingInformation\":\"11\",\"tasteNum\":\"11\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 15:04:01');
INSERT INTO `sys_oper_log` VALUES (24, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559138101152985088', '127.0.0.1', '内网IP', '{tasteId=1559138101152985088}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 16:51:17');
INSERT INTO `sys_oper_log` VALUES (25, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559138101152985088', '127.0.0.1', '内网IP', '{tasteId=1559138101152985088}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 16:51:47');
INSERT INTO `sys_oper_log` VALUES (26, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"hxTasteDetailList\":[],\"follower\":\"\",\"isRecyclingSmoking\":\"0\",\"params\":{},\"tasteId\":\"1559464503127588864\",\"createBy\":\"admin\",\"createTime\":1660640285654,\"isSupply\":\"0\",\"status\":\"0\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.hx.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( taste_id,                                                                                                                     is_supply,             is_try,                          is_smoking,                                                                              is_recycling_smoking,                                                                 status,                                                                                                                     create_by,             create_time )           values ( ?,                                                                                                                     ?,             ?,                          ?,                                                                              ?,                                                                 ?,                                                                                                                     ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\n; Field \'dept_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value', '2022-08-16 16:58:05');
INSERT INTO `sys_oper_log` VALUES (27, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"hxTasteDetailList\":[],\"follower\":\"\",\"isRecyclingSmoking\":\"0\",\"params\":{},\"tasteId\":\"1559464505530925056\",\"createBy\":\"admin\",\"createTime\":1660640286225,\"isSupply\":\"0\",\"status\":\"0\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.hx.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( taste_id,                                                                                                                     is_supply,             is_try,                          is_smoking,                                                                              is_recycling_smoking,                                                                 status,                                                                                                                     create_by,             create_time )           values ( ?,                                                                                                                     ?,             ?,                          ?,                                                                              ?,                                                                 ?,                                                                                                                     ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\n; Field \'dept_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value', '2022-08-16 16:58:06');
INSERT INTO `sys_oper_log` VALUES (28, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"hxTasteDetailList\":[],\"follower\":\"\",\"isRecyclingSmoking\":\"0\",\"params\":{},\"tasteId\":\"1559465845309063168\",\"createBy\":\"admin\",\"createTime\":1660640605653,\"isSupply\":\"0\",\"status\":\"0\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.hx.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( taste_id,                                                                                                                     is_supply,             is_try,                          is_smoking,                                                                              is_recycling_smoking,                                                                 status,                                                                                                                     create_by,             create_time )           values ( ?,                                                                                                                     ?,             ?,                          ?,                                                                              ?,                                                                 ?,                                                                                                                     ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\n; Field \'dept_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value', '2022-08-16 17:03:25');
INSERT INTO `sys_oper_log` VALUES (29, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"hxTasteDetailList\":[],\"follower\":\"\",\"isRecyclingSmoking\":\"0\",\"params\":{},\"tasteId\":\"1559465887524732928\",\"createBy\":\"admin\",\"createTime\":1660640615718,\"isSupply\":\"0\",\"status\":\"0\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.hx.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( taste_id,                                                                                                                     is_supply,             is_try,                          is_smoking,                                                                              is_recycling_smoking,                                                                 status,                                                                                                                     create_by,             create_time )           values ( ?,                                                                                                                     ?,             ?,                          ?,                                                                              ?,                                                                 ?,                                                                                                                     ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\n; Field \'dept_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value', '2022-08-16 17:03:35');
INSERT INTO `sys_oper_log` VALUES (30, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"hxTasteDetailList\":[],\"follower\":\"\",\"isRecyclingSmoking\":\"0\",\"params\":{},\"tasteId\":\"1559466176277397504\",\"createBy\":\"admin\",\"createTime\":1660640684562,\"isSupply\":\"0\",\"status\":\"0\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.hx.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( taste_id,                                                                                                                     is_supply,             is_try,                          is_smoking,                                                                              is_recycling_smoking,                                                                 status,                                                                                                                     create_by,             create_time )           values ( ?,                                                                                                                     ?,             ?,                          ?,                                                                              ?,                                                                 ?,                                                                                                                     ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\n; Field \'dept_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value', '2022-08-16 17:04:44');
INSERT INTO `sys_oper_log` VALUES (31, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"换弹式\",\"businessName\":\"肖李奎\",\"remark\":\"\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"1\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"1\",\"updateBy\":\"admin\",\"coolness\":\"1\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660579200000,\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1661184000000,\"sweetness\":\"1\",\"updateTime\":1660640743550,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559403965001502720\",\"createBy\":\"销售账号\",\"viscosity\":\"1\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660625852000,\"isSupply\":\"是\",\"mailingInformation\":\"11\",\"tasteNum\":\"11\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:05:43');
INSERT INTO `sys_oper_log` VALUES (32, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"换弹式\",\"businessName\":\"肖李奎\",\"remark\":\"\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"1\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"1\",\"updateBy\":\"admin\",\"coolness\":\"1\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660579200000,\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1661184000000,\"sweetness\":\"1\",\"updateTime\":1660640764283,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559403965001502720\",\"createBy\":\"销售账号\",\"viscosity\":\"1\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660625852000,\"isSupply\":\"是\",\"mailingInformation\":\"11\",\"tasteNum\":\"11\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:06:04');
INSERT INTO `sys_oper_log` VALUES (33, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"换弹式\",\"businessName\":\"肖李奎\",\"remark\":\"\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"1\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"1\",\"updateBy\":\"admin\",\"coolness\":\"1\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660579200000,\"follower\":\"销售昵称\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1661184000000,\"sweetness\":\"1\",\"updateTime\":1660640905641,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559403965001502720\",\"createBy\":\"销售账号\",\"viscosity\":\"1\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660625852000,\"isSupply\":\"是\",\"mailingInformation\":\"11\",\"tasteNum\":\"11\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:08:25');
INSERT INTO `sys_oper_log` VALUES (34, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"一次性\",\"businessName\":\"1111\",\"remark\":\"1\",\"isTry\":\"否\",\"isSmoking\":\"是\",\"capacity\":\"1\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660579200000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"否\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1659369600000,\"sweetness\":\"12\",\"updateTime\":1660640927973,\"samplesNum\":1,\"params\":{},\"tasteId\":\"1559379267094069248\",\"createBy\":\"admin\",\"viscosity\":\"1\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660620051000,\"isSupply\":\"是\",\"mailingInformation\":\"1\",\"tasteNum\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:08:48');
INSERT INTO `sys_oper_log` VALUES (35, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"follower\":\"研发昵称\",\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1660641457694,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559138101152985088\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660562465000,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\",\"status\":\"-1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:17:37');
INSERT INTO `sys_oper_log` VALUES (36, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660492800000,\"follower\":\"lusifer\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660641461817,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559136036448120832\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\",\"status\":\"-1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:17:41');
INSERT INTO `sys_oper_log` VALUES (37, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"一次性\",\"businessName\":\"1111\",\"remark\":\"1\",\"isTry\":\"否\",\"isSmoking\":\"是\",\"capacity\":\"1\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660579200000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"否\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1659369600000,\"sweetness\":\"12\",\"updateTime\":1660641685107,\"samplesNum\":1,\"params\":{},\"tasteId\":\"1559379267094069248\",\"createBy\":\"admin\",\"viscosity\":\"1\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660620051000,\"isSupply\":\"是\",\"mailingInformation\":\"1\",\"tasteNum\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:21:25');
INSERT INTO `sys_oper_log` VALUES (38, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"一次性\",\"businessName\":\"1111\",\"remark\":\"1\",\"isTry\":\"否\",\"isSmoking\":\"是\",\"capacity\":\"1\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"1\",\"customersCode\":\"1\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660579200000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"否\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1659369600000,\"sweetness\":\"12\",\"updateTime\":1660641709969,\"samplesNum\":1,\"params\":{},\"tasteId\":\"1559379267094069248\",\"createBy\":\"admin\",\"viscosity\":\"1\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660620051000,\"isSupply\":\"是\",\"mailingInformation\":\"1\",\"tasteNum\":\"1\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:21:50');
INSERT INTO `sys_oper_log` VALUES (39, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660492800000,\"follower\":\"销售昵称\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660641779774,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559136036448120832\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\",\"status\":\"7\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:22:59');
INSERT INTO `sys_oper_log` VALUES (40, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"follower\":\"研发昵称\",\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1660641794990,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559138101152985088\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660562465000,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\",\"status\":\"7\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:23:15');
INSERT INTO `sys_oper_log` VALUES (41, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660492800000,\"follower\":\"研发昵称\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660642824235,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559136036448120832\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\",\"status\":\"7\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:40:24');
INSERT INTO `sys_oper_log` VALUES (42, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"7\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660643803270,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559136036448120832\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:56:43');
INSERT INTO `sys_oper_log` VALUES (43, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"7\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"follower\":\"销售昵称\",\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1660643808363,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559138101152985088\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660562465000,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 17:56:48');
INSERT INTO `sys_oper_log` VALUES (44, '菜单管理', 1, 'com.hx.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":3,\"menuName\":\"系统配置\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"/sys\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 18:03:58');
INSERT INTO `sys_oper_log` VALUES (45, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"system\",\"orderNum\":1,\"menuName\":\"系统管理\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 18:04:09');
INSERT INTO `sys_oper_log` VALUES (46, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"monitor\",\"orderNum\":2,\"menuName\":\"系统监控\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 18:04:20');
INSERT INTO `sys_oper_log` VALUES (47, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":3,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 18:04:27');
INSERT INTO `sys_oper_log` VALUES (48, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tab\",\"orderNum\":3,\"menuName\":\"系统配置\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"/sys\",\"children\":[],\"createTime\":1660644238000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 18:05:14');
INSERT INTO `sys_oper_log` VALUES (49, '口味申请单', 3, 'com.hx.web.controller.system.HxTasteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/taste/1559136036448120832', '127.0.0.1', '内网IP', '{tasteIds=1559136036448120832}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 18:14:12');
INSERT INTO `sys_oper_log` VALUES (50, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"businessCode\":\"11\",\"heatingWireResistance\":\"1111\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"11\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"123\",\"tasteName\":\"测试数据1\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559488860650479616\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"123\",\"nicType\":\"\",\"tasteDetail\":\"测试数据1\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"测试数据2\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559488860650479616\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"123\",\"nicType\":\"\",\"tasteDetail\":\"测试数据2\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"测试数据3\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559488860650479616\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"123\",\"nicType\":\"\",\"tasteDetail\":\"测试数据3\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660579200000,\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"11\",\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559488860650479616\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"oilRingMaterial\":\"PC\",\"createTime\":1660646092950,\"isSupply\":\"是\",\"mailingInformation\":\"111\",\"tasteNum\":\"11\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-16 18:34:52');
INSERT INTO `sys_oper_log` VALUES (51, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"guide\",\"orderNum\":4,\"menuName\":\"百度\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"path\":\"http://baidu.com\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 08:58:08');
INSERT INTO `sys_oper_log` VALUES (52, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559403965001502720', '127.0.0.1', '内网IP', '{tasteId=1559403965001502720}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 08:59:56');
INSERT INTO `sys_oper_log` VALUES (53, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"7\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660698579703,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559136036448120832\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 09:09:39');
INSERT INTO `sys_oper_log` VALUES (54, '口味申请单', 3, 'com.hx.web.controller.system.HxTasteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/taste/1559138101152985088', '127.0.0.1', '内网IP', '{tasteIds=1559138101152985088}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 10:09:07');
INSERT INTO `sys_oper_log` VALUES (55, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":1,\"menuName\":\"通讯测试\",\"params\":{},\"parentId\":2013,\"isCache\":\"0\",\"path\":\"test\",\"component\":\"system/test/showtongxun\",\"children\":[],\"createTime\":1653448501000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"C\",\"perms\":\"system:taste:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 10:13:32');
INSERT INTO `sys_oper_log` VALUES (56, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559136036448120832', '127.0.0.1', '内网IP', '{tasteId=1559136036448120832}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 10:14:03');
INSERT INTO `sys_oper_log` VALUES (57, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":118,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":119,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":120,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":121,\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704269016,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559136036448120832\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 10:44:29');
INSERT INTO `sys_oper_log` VALUES (58, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":118,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":119,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":120,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559136036448120832\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":121,\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704363018,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559136036448120832\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 10:46:03');
INSERT INTO `sys_oper_log` VALUES (59, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":118,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":119,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":120,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":121,\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704468453,\"samplesNum\":12,\"params\":{},\"tasteId\":\"\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste_detail( id, taste_name, taste_id, taste_detail, is_basic_taste, basic_taste_name, basic_taste_improvement_ideas, capacity, vg, nic_type, nic_concentration, nic_unit, perfumer, version, create_by, create_time, update_by, update_time, remark) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\n; Duplicate entry \'118\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'', '2022-08-17 10:47:48');
INSERT INTO `sys_oper_log` VALUES (60, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":118,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":119,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":120,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":121,\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704720214,\"samplesNum\":12,\"params\":{},\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste_detail( id, taste_name, taste_id, taste_detail, is_basic_taste, basic_taste_name, basic_taste_improvement_ideas, capacity, vg, nic_type, nic_concentration, nic_unit, perfumer, version, create_by, create_time, update_by, update_time, remark) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\n; Duplicate entry \'118\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'', '2022-08-17 10:52:00');
INSERT INTO `sys_oper_log` VALUES (61, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":118,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":119,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":120,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":121,\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704768398,\"samplesNum\":12,\"params\":{},\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste_detail( id, taste_name, taste_id, taste_detail, is_basic_taste, basic_taste_name, basic_taste_improvement_ideas, capacity, vg, nic_type, nic_concentration, nic_unit, perfumer, version, create_by, create_time, update_by, update_time, remark) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\n; Duplicate entry \'118\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'', '2022-08-17 10:52:48');
INSERT INTO `sys_oper_log` VALUES (62, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":118,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":119,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":120,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":121,\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704908640,\"samplesNum\":12,\"params\":{},\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste_detail( id, taste_name, taste_id, taste_detail, is_basic_taste, basic_taste_name, basic_taste_improvement_ideas, capacity, vg, nic_type, nic_concentration, nic_unit, perfumer, version, create_by, create_time, update_by, update_time, remark) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\n; Duplicate entry \'118\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'', '2022-08-17 10:55:08');
INSERT INTO `sys_oper_log` VALUES (63, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":118,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":119,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":120,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":121,\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660705028595,\"samplesNum\":12,\"params\":{},\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste_detail( id, taste_name, taste_id, taste_detail, is_basic_taste, basic_taste_name, basic_taste_improvement_ideas, capacity, vg, nic_type, nic_concentration, nic_unit, perfumer, version, create_by, create_time, update_by, update_time, remark) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\n; Duplicate entry \'118\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'', '2022-08-17 10:57:08');
INSERT INTO `sys_oper_log` VALUES (64, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":118,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":119,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":120,\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"id\":121,\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660705054950,\"samplesNum\":12,\"params\":{},\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste_detail( id, taste_name, taste_id, taste_detail, is_basic_taste, basic_taste_name, basic_taste_improvement_ideas, capacity, vg, nic_type, nic_concentration, nic_unit, perfumer, version, create_by, create_time, update_by, update_time, remark) values                        ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)          ,              ( ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'\n; Duplicate entry \'118\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'118\' for key \'PRIMARY\'', '2022-08-17 10:57:34');
INSERT INTO `sys_oper_log` VALUES (65, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660705095447,\"samplesNum\":12,\"params\":{},\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-08-17 10:58:15');
INSERT INTO `sys_oper_log` VALUES (66, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"-1\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660705189599,\"samplesNum\":12,\"params\":{},\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660561973000,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2022-08-17 10:59:49');
INSERT INTO `sys_oper_log` VALUES (67, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"0\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559737488057049088\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559737488057049088\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559737488057049088\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559737488057049088\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704363000,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559737488057049088\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660705370331,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 11:02:50');
INSERT INTO `sys_oper_log` VALUES (68, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"0\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"1212\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559757769123307520\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559757769123307520\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559757769123307520\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559757769123307520\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704363000,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559757769123307520\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660710205714,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 12:23:25');
INSERT INTO `sys_oper_log` VALUES (69, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1559136036448120832\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"0\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559761643306446848\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559761643306446848\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559761643306446848\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559761643306446848\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704363000,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559761643306446848\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660711129394,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 12:38:49');
INSERT INTO `sys_oper_log` VALUES (70, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"12\",\"smokingType\":\"一次性\",\"businessName\":\"口味1\",\"remark\":\"12\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"12\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1559761643306446848\",\"businessCode\":\"12\",\"heatingWireResistance\":\"12\",\"updateBy\":\"admin\",\"coolness\":\"12\",\"state\":\"0\",\"customersCode\":\"12\",\"sendNum\":\"12\",\"estimatedFinishTime\":1660579200000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559762840042041344\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559762840042041344\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559762840042041344\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559762840042041344\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660492800000,\"follower\":\"test\",\"oilGuideCottonType\":\"有机棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"12\",\"updateTime\":1660704363000,\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559762840042041344\",\"createBy\":\"admin\",\"viscosity\":\"12\",\"visitTime\":1660579200000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660711414715,\"isSupply\":\"1\",\"mailingInformation\":\"1212\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 12:43:34');
INSERT INTO `sys_oper_log` VALUES (71, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"1\",\"smokingType\":\"换弹式\",\"businessName\":\"uuuu\",\"remark\":\"\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"1212\",\"heatingWireType\":\"棉芯\",\"businessCode\":\"fgfg\",\"heatingWireResistance\":\"12\",\"coolness\":\"1212\",\"state\":\"0\",\"customersCode\":\"rwe\",\"sendNum\":\"1\",\"estimatedFinishTime\":1660665600000,\"hxTasteDetailList\":[{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"12\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559799350720163840\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"},{\"basicTasteImprovementIdeas\":\"\",\"tasteName\":\"12\",\"remark\":\"\",\"params\":{},\"version\":\"\",\"capacity\":\"\",\"tasteId\":\"1559799350720163840\",\"vg\":\"\",\"nicConcentration\":\"\",\"basicTasteName\":\"\",\"nicType\":\"\",\"tasteDetail\":\"\",\"nicUnit\":\"\",\"isBasicTaste\":\"\",\"perfumer\":\"\"}],\"expectedCompletionTime\":1660665600000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"sampleRequestTime\":1660060800000,\"sweetness\":\"1\",\"samplesNum\":12,\"params\":{},\"tasteId\":\"1559799350720163840\",\"createBy\":\"admin\",\"viscosity\":\"13\",\"visitTime\":1660060800000,\"oilRingMaterial\":\"PCTG\",\"createTime\":1660720119539,\"isSupply\":\"是\",\"mailingInformation\":\"1231231231\",\"tasteNum\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 15:08:39');
INSERT INTO `sys_oper_log` VALUES (72, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"state\":\"0\",\"hxTasteDetailList\":[],\"isRecyclingSmoking\":\"0\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"params\":{},\"tasteId\":\"1559802533630668800\",\"createBy\":\"admin\",\"createTime\":1660720878404,\"isSupply\":\"0\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\r\n### The error may exist in file [C:\\work\\code\\demo\\20220530172420\\HX\\hx-system\\target\\classes\\mapper\\system\\HxTasteMapper.xml]\r\n### The error may involve com.hx.system.mapper.HxTasteMapper.insertHxTaste-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into hx_taste          ( taste_id,                                                                                                                                  is_supply,             is_try,                          is_smoking,                                                                              is_recycling_smoking,                                                                 state,                                                                              match_market,                                       create_by,             create_time )           values ( ?,                                                                                                                                  ?,             ?,                          ?,                                                                              ?,                                                                 ?,                                                                              ?,                                       ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value\n; Field \'dept_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'dept_id\' doesn\'t have a default value', '2022-08-17 15:21:18');
INSERT INTO `sys_oper_log` VALUES (73, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"state\":\"0\",\"hxTasteDetailList\":[],\"isRecyclingSmoking\":\"0\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"params\":{},\"tasteId\":\"1559802560683929600\",\"createBy\":\"admin\",\"createTime\":1660720884854,\"isSupply\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 15:21:24');
INSERT INTO `sys_oper_log` VALUES (74, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"state\":\"0\",\"hxTasteDetailList\":[],\"isRecyclingSmoking\":\"0\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"]]\",\"deptId\":\"国内业务一组\",\"params\":{},\"tasteId\":\"1559805069636890624\",\"createBy\":\"admin\",\"createTime\":1660721483035,\"isSupply\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 15:31:23');
INSERT INTO `sys_oper_log` VALUES (75, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"state\":\"0\",\"hxTasteDetailList\":[],\"isRecyclingSmoking\":\"0\",\"matchMarket\":\"[]\",\"deptId\":\"国内业务二组\",\"params\":{},\"tasteId\":\"1559807230672334848\",\"createBy\":\"admin\",\"createTime\":1660721998266,\"isSupply\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 15:39:58');
INSERT INTO `sys_oper_log` VALUES (76, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"state\":\"0\",\"hxTasteDetailList\":[],\"isRecyclingSmoking\":\"0\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"],[\\\"亚洲\\\",\\\"阿富汗\\\"],[\\\"欧洲\\\",\\\"阿尔巴尼亚\\\"],[\\\"欧洲\\\",\\\"爱尔兰\\\"],[\\\"欧洲\\\",\\\"爱沙尼亚\\\"],[\\\"欧洲\\\",\\\"安道尔\\\"],[\\\"欧洲\\\",\\\"奥地利\\\"],[\\\"非洲\\\",\\\"埃及\\\"]]\",\"deptId\":\"国内业务二组\",\"params\":{},\"tasteId\":\"1559808228153323520\",\"createBy\":\"admin\",\"createTime\":1660722236084,\"isSupply\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 15:43:56');
INSERT INTO `sys_oper_log` VALUES (77, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"state\":\"0\",\"hxTasteDetailList\":[],\"isRecyclingSmoking\":\"0\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"],[\\\"亚洲\\\",\\\"阿富汗\\\"],[\\\"亚洲\\\",\\\"阿拉伯联合酋长国\\\"]]\",\"deptId\":\"国内业务二组\",\"params\":{},\"tasteId\":\"1559825081529495552\",\"createBy\":\"admin\",\"createTime\":1660726254242,\"isSupply\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 16:50:54');
INSERT INTO `sys_oper_log` VALUES (78, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"remark\":\"\",\"isTry\":\"0\",\"isSmoking\":\"0\",\"state\":\"0\",\"hxTasteDetailList\":[],\"isRecyclingSmoking\":\"0\",\"matchMarket\":\"[[\\\"亚洲\\\",\\\"中国\\\"],[\\\"亚洲\\\",\\\"阿富汗\\\"],[\\\"亚洲\\\",\\\"阿拉伯联合酋长国\\\"]]\",\"deptId\":\"外贸业务部\",\"params\":{},\"tasteId\":\"1559825536259158016\",\"createBy\":\"admin\",\"createTime\":1660726362659,\"isSupply\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 16:52:42');
INSERT INTO `sys_oper_log` VALUES (79, '口味申请单', 3, 'com.hx.web.controller.system.HxTasteController.remove()', 'DELETE', 1, 'admin', NULL, '/system/taste/1559825536259158016,1559825081529495552,1559808228153323520,1559807230672334848,1559805069636890624,1559802560683929600', '127.0.0.1', '内网IP', '{tasteIds=1559825536259158016,1559825081529495552,1559808228153323520,1559807230672334848,1559805069636890624,1559802560683929600}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 17:30:09');
INSERT INTO `sys_oper_log` VALUES (80, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', NULL, '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"7\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"follower\":\"销售昵称\",\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1660729759703,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559138101152985088\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660562465000,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-17 17:49:19');
INSERT INTO `sys_oper_log` VALUES (81, '用户管理', 4, 'com.hx.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '101 [3]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 09:30:25');
INSERT INTO `sys_oper_log` VALUES (82, '角色管理', 2, 'com.hx.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1660625183000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"sales\",\"roleName\":\"销售\",\"menuIds\":[2013,2006,2000,2002,2001,2003,2007,2008,2010],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 09:31:18');
INSERT INTO `sys_oper_log` VALUES (83, '角色管理', 2, 'com.hx.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1660625183000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"sales\",\"roleName\":\"销售\",\"menuIds\":[2013,2006,2000,2002,2001,2003,2007,2008,2010,2015],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 09:36:50');
INSERT INTO `sys_oper_log` VALUES (84, '角色管理', 2, 'com.hx.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":3,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1660625183000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"sales\",\"roleName\":\"销售\",\"menuIds\":[2013,2006,2000,2002,2001,2003,2007,2008,2010,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 11:40:42');
INSERT INTO `sys_oper_log` VALUES (85, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', NULL, '/system/taste/waste/1559799350720163840', '127.0.0.1', '内网IP', '{tasteId=1559799350720163840}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 15:28:21');
INSERT INTO `sys_oper_log` VALUES (86, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', '103', '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"7\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"follower\":\"研发昵称\",\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1660811678034,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1559138101152985088\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660562465000,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 16:34:38');
INSERT INTO `sys_oper_log` VALUES (87, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1559138101152985088\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"follower\":\"研发昵称\",\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1660811678000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1560183446977839104\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660811695224,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 16:34:55');
INSERT INTO `sys_oper_log` VALUES (88, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', '103', '/system/taste/waste/1560183446977839104', '127.0.0.1', '内网IP', '{tasteId=1560183446977839104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 16:37:55');
INSERT INTO `sys_oper_log` VALUES (89, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', '103', '/system/taste/waste/1560183446977839104', '127.0.0.1', '内网IP', '{tasteId=1560183446977839104}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 16:38:33');
INSERT INTO `sys_oper_log` VALUES (90, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1560183446977839104\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"follower\":\"研发昵称\",\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1660811913000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1560187482862989312\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660812657455,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 16:50:57');
INSERT INTO `sys_oper_log` VALUES (91, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', '103', '/system/taste/waste/1559799350720163840', '127.0.0.1', '内网IP', '{tasteId=1559799350720163840}', NULL, 1, '该单已作废不可重复作废', '2022-08-18 17:40:24');
INSERT INTO `sys_oper_log` VALUES (92, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', '103', '/system/taste/waste/1559799350720163840', '127.0.0.1', '内网IP', '{tasteId=1559799350720163840}', NULL, 1, '该单已作废不可重复作废', '2022-08-18 17:42:17');
INSERT INTO `sys_oper_log` VALUES (93, '口味申请单强制审核通过', 2, 'com.hx.web.controller.system.HxTasteController.audit()', 'GET', 1, 'admin', '103', '/system/taste/audit/1559761643306446848', '127.0.0.1', '内网IP', '{tasteId=1559761643306446848}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 17:42:27');
INSERT INTO `sys_oper_log` VALUES (94, '口味申请单作废', 2, 'com.hx.web.controller.system.HxTasteController.waste()', 'GET', 1, 'admin', '103', '/system/taste/waste/1559761643306446848', '127.0.0.1', '内网IP', '{tasteId=1559761643306446848}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 17:44:02');
INSERT INTO `sys_oper_log` VALUES (95, '口味申请单强制审核通过', 2, 'com.hx.web.controller.system.HxTasteController.audit()', 'GET', 1, 'admin', '103', '/system/taste/audit/1559761643306446848', '127.0.0.1', '内网IP', '{tasteId=1559761643306446848}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-18 17:45:26');
INSERT INTO `sys_oper_log` VALUES (96, '口味申请单强制审核通过', 2, 'com.hx.web.controller.system.HxTasteController.audit()', 'GET', 1, 'admin', '103', '/system/taste/audit/1559761643306446848', '127.0.0.1', '内网IP', '{tasteId=1559761643306446848}', NULL, 1, '该单已审核通过不可重复审核', '2022-08-18 17:45:31');
INSERT INTO `sys_oper_log` VALUES (97, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '127.0.0.1', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1559138101152985088\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1660811678000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1560801416210190336\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1660959030569,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 09:30:30');
INSERT INTO `sys_oper_log` VALUES (98, '字典类型', 1, 'com.hx.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', '103', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"企业微信Token\",\"params\":{},\"dictType\":\"hx_work_wx_token\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 11:16:19');
INSERT INTO `sys_oper_log` VALUES (99, '字典数据', 1, 'com.hx.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', '103', '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"puIN-aH6EtjwvcdAefEPr8hJTxVbVSKcyo4JZgvpF3G2Kd0ScBJPDshuwqO7dDghP4rjgVX2wQ7UeDeKtokDtf7_zntLFeKQk5BuXoTyjeYjZGF6_5pEHDy8uqz4-4AJI4pjHFCQNJfRz7vMpEDQ6XRqw9pUUzEEF6RgeCYoZIe7Br0kSst7TTdtpjwzYh1bPMCssYq6kOp9d3qujRiVig\",\"listClass\":\"default\",\"dictSort\":0,\"params\":{},\"dictType\":\"hx_work_wx_token\",\"dictLabel\":\"auit\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 11:20:50');
INSERT INTO `sys_oper_log` VALUES (100, '字典数据', 2, 'com.hx.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', '103', '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"puIN-aH6EtjwvcdAefEPr8hJTxVbVSKcyo4JZgvpF3G2Kd0ScBJPDshuwqO7dDghP4rjgVX2wQ7UeDeKtokDtf7_zntLFeKQk5BuXoTyjeYjZGF6_5pEHDy8uqz4-4AJI4pjHFCQNJfRz7vMpEDQ6XRqw9pUUzEEF6RgeCYoZIe7Br0kSst7TTdtpjwzYh1bPMCssYq6kOp9d3qujRiVig\",\"listClass\":\"default\",\"dictSort\":0,\"remark\":\"企业微信审批模块授权token\",\"params\":{},\"dictType\":\"hx_work_wx_token\",\"dictLabel\":\"auit\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1660965650000,\"dictCode\":104,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 11:23:54');
INSERT INTO `sys_oper_log` VALUES (101, '参数管理', 3, 'com.hx.web.controller.system.SysConfigController.remove()', 'DELETE', 1, 'admin', '103', '/system/config/6', '127.0.0.1', '内网IP', '{configIds=6}', NULL, 1, '内置参数【1】不能删除 ', '2022-08-20 11:35:30');
INSERT INTO `sys_oper_log` VALUES (102, '用户头像', 2, 'com.hx.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', '103', '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2022/08/20/blob_20220820113654A001.jpeg\",\"code\":200}', 0, NULL, '2022-08-20 11:36:54');
INSERT INTO `sys_oper_log` VALUES (103, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1559737488057049088', '127.0.0.1', '内网IP', '{tasteId=1559737488057049088}', '{\"msg\":\"已保存审核单号\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208200015\\\"}\"}', 0, NULL, '2022-08-20 18:02:48');
INSERT INTO `sys_oper_log` VALUES (104, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200015', '127.0.0.1', '内网IP', '{spNo=202208200015}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200,\"data\":1}', 0, NULL, '2022-08-20 18:03:17');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '103', '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"code\",\"orderNum\":2,\"menuName\":\"代码生成\",\"params\":{},\"parentId\":3,\"isCache\":\"0\",\"path\":\"gen\",\"component\":\"tool/gen/index\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":115,\"menuType\":\"C\",\"perms\":\"tool:gen:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 18:05:38');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '103', '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"code\",\"orderNum\":2,\"menuName\":\"代码生成\",\"params\":{},\"parentId\":3,\"isCache\":\"0\",\"path\":\"gen\",\"component\":\"tool/gen/index\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":115,\"menuType\":\"C\",\"perms\":\"tool:gen:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 18:05:51');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '103', '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"monitor\",\"orderNum\":2,\"menuName\":\"系统监控\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 18:05:58');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '103', '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tool\",\"orderNum\":3,\"menuName\":\"系统工具\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 18:06:02');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '103', '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"query\":\"\",\"icon\":\"tree-table\",\"orderNum\":3,\"menuName\":\"菜单管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"menu\",\"component\":\"system/menu/index\",\"children\":[],\"createTime\":1653383483000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":102,\"menuType\":\"C\",\"perms\":\"system:menu:list\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-20 18:06:20');
INSERT INTO `sys_oper_log` VALUES (110, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1559138101152985088', '127.0.0.1', '内网IP', '{tasteId=1559138101152985088}', '{\"msg\":\"已保存审核单号\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208200016\\\"}\"}', 0, NULL, '2022-08-20 18:07:19');
INSERT INTO `sys_oper_log` VALUES (111, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200016', '127.0.0.1', '内网IP', '{spNo=202208200016}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200,\"data\":1}', 0, NULL, '2022-08-20 18:08:12');
INSERT INTO `sys_oper_log` VALUES (112, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1559138101152985088', '127.0.0.1', '内网IP', '{tasteId=1559138101152985088}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新状态', '2022-08-20 18:09:58');
INSERT INTO `sys_oper_log` VALUES (113, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200016', '127.0.0.1', '内网IP', '{spNo=202208200016}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200,\"data\":1}', 0, NULL, '2022-08-20 18:10:13');
INSERT INTO `sys_oper_log` VALUES (114, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200016', '127.0.0.1', '内网IP', '{spNo=202208200016}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200,\"data\":1}', 0, NULL, '2022-08-20 18:10:20');
INSERT INTO `sys_oper_log` VALUES (115, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200016', '127.0.0.1', '内网IP', '{spNo=202208200016}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200,\"data\":1}', 0, NULL, '2022-08-20 18:11:55');
INSERT INTO `sys_oper_log` VALUES (116, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200016', '127.0.0.1', '内网IP', '{spNo=202208200016}', NULL, 1, '该单已提交审批,状态与研发系统一致,不能强制同步更新状态', '2022-08-20 18:12:46');
INSERT INTO `sys_oper_log` VALUES (117, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200016', '127.0.0.1', '内网IP', '{spNo=202208200016}', NULL, 1, '该单已提交审批,状态与研发系统一致,不能强制同步更新状态', '2022-08-20 18:12:54');
INSERT INTO `sys_oper_log` VALUES (118, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200016', '127.0.0.1', '内网IP', '{spNo=202208200016}', NULL, 1, '该单已提交审批,状态与研发系统一致,不能强制同步更新状态', '2022-08-20 18:13:07');
INSERT INTO `sys_oper_log` VALUES (119, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1559138101152985088', '127.0.0.1', '内网IP', '{tasteId=1559138101152985088}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新状态', '2022-08-20 18:14:25');
INSERT INTO `sys_oper_log` VALUES (120, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200015', '127.0.0.1', '内网IP', '{spNo=202208200015}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200}', 0, NULL, '2022-08-20 18:19:07');
INSERT INTO `sys_oper_log` VALUES (121, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1560801416210190336', '127.0.0.1', '内网IP', '{tasteId=1560801416210190336}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新状态', '2022-08-20 18:20:27');
INSERT INTO `sys_oper_log` VALUES (122, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1559737488057049088', '192.168.1.11', '内网IP', '{tasteId=1559737488057049088}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新状态', '2022-08-20 18:24:28');
INSERT INTO `sys_oper_log` VALUES (123, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1560801416210190336', '192.168.1.11', '内网IP', '{tasteId=1560801416210190336}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新状态', '2022-08-22 09:29:09');
INSERT INTO `sys_oper_log` VALUES (124, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1560183446977839104', '192.168.1.11', '内网IP', '{tasteId=1560183446977839104}', '{\"msg\":\"已保存审核单号\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208220001\\\"}\"}', 0, NULL, '2022-08-22 09:38:58');
INSERT INTO `sys_oper_log` VALUES (125, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208220001', '192.168.1.11', '内网IP', '{spNo=202208220001}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200}', 0, NULL, '2022-08-22 09:39:17');
INSERT INTO `sys_oper_log` VALUES (126, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208220001', '192.168.1.11', '内网IP', '{spNo=202208220001}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200}', 0, NULL, '2022-08-22 09:41:49');
INSERT INTO `sys_oper_log` VALUES (127, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208220001', '192.168.1.11', '内网IP', '{spNo=202208220001}', NULL, 1, '该单已提交审批,状态与研发系统一致,不能强制同步更新状态', '2022-08-22 09:42:08');
INSERT INTO `sys_oper_log` VALUES (128, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200013', '10.10.7.60', '内网IP', '{spNo=202208200013}', '{\"msg\":\"状态不一致,已更新审核单状态\",\"code\":200}', 0, NULL, '2022-08-22 16:09:29');
INSERT INTO `sys_oper_log` VALUES (129, '字典类型', 2, 'com.hx.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', '103', '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1660965379000,\"updateBy\":\"admin\",\"dictName\":\"企业微信Token\",\"dictId\":102,\"params\":{},\"dictType\":\"hx_work_wx_token\",\"status\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-23 10:10:55');
INSERT INTO `sys_oper_log` VALUES (130, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.WxCallback.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wx/callback/updateAuitDetail/202208200013', '10.10.7.72', '内网IP', '{spNo=202208200013}', NULL, 1, '状态与研发系统一致,不能重复强制同步更新状态', '2022-08-23 12:35:16');
INSERT INTO `sys_oper_log` VALUES (131, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.WxCallback.push()', 'GET', 1, 'admin', '103', '/system/wx/callback/push/1560801416210190336', '10.10.7.72', '内网IP', '{tasteId=1560801416210190336}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-23 16:25:26');
INSERT INTO `sys_oper_log` VALUES (132, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563055332841725952', '10.10.7.72', '内网IP', '{tasteId=1563055332841725952}', NULL, 1, '', '2022-08-26 15:22:50');
INSERT INTO `sys_oper_log` VALUES (133, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.72', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1560801416210190336\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661155770000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1563064522951757824\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661498597265,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-26 15:23:17');
INSERT INTO `sys_oper_log` VALUES (134, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563064522951757824', '10.10.7.72', '内网IP', '{tasteId=1563064522951757824}', '{\"msg\":\"{\\\"errcode\\\":40014,\\\"errmsg\\\":\\\"invalid access_token\\\"}\",\"code\":503}', 0, NULL, '2022-08-26 15:25:04');
INSERT INTO `sys_oper_log` VALUES (135, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563064522951757824', '10.10.7.72', '内网IP', '{tasteId=1563064522951757824}', '{\"msg\":\"{\\\"errcode\\\":40014,\\\"errmsg\\\":\\\"invalid access_token\\\"}\",\"code\":503}', 0, NULL, '2022-08-26 15:25:35');
INSERT INTO `sys_oper_log` VALUES (136, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563064522951757824', '10.10.7.72', '内网IP', '{tasteId=1563064522951757824}', '{\"msg\":\"提交审核成功\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208260004\\\"}\"}', 0, NULL, '2022-08-26 15:28:13');
INSERT INTO `sys_oper_log` VALUES (137, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563064522951757824', '10.10.7.72', '内网IP', '{tasteId=1563064522951757824}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 15:46:10');
INSERT INTO `sys_oper_log` VALUES (138, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.72', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563064522951757824\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661498893000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1563070297828913152\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661499974101,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-26 15:46:14');
INSERT INTO `sys_oper_log` VALUES (139, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/202208260005', '10.10.7.72', '内网IP', '{spNo=202208260005}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-26 15:46:32');
INSERT INTO `sys_oper_log` VALUES (140, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563070297828913152', '10.10.7.72', '内网IP', '{tasteId=1563070297828913152}', '{\"msg\":\"提交审核成功\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208260006\\\"}\"}', 0, NULL, '2022-08-26 15:47:24');
INSERT INTO `sys_oper_log` VALUES (141, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563070297828913152', '10.10.7.72', '内网IP', '{tasteId=1563070297828913152}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 15:53:38');
INSERT INTO `sys_oper_log` VALUES (142, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/202208260006', '10.10.7.72', '内网IP', '{spNo=202208260006}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-26 15:53:42');
INSERT INTO `sys_oper_log` VALUES (143, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563064522951757824', '10.10.7.72', '内网IP', '{tasteId=1563064522951757824}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 15:59:54');
INSERT INTO `sys_oper_log` VALUES (144, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.72', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563064522951757824\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661499992000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1563073749611151360\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661500797070,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-26 15:59:57');
INSERT INTO `sys_oper_log` VALUES (145, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563073749611151360', '10.10.7.72', '内网IP', '{tasteId=1563073749611151360}', '{\"msg\":\"提交审核成功\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208260007\\\"}\"}', 0, NULL, '2022-08-26 16:00:05');
INSERT INTO `sys_oper_log` VALUES (146, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.72', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563073749611151360\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661500805000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1563078085930090496\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661501830929,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-26 16:17:10');
INSERT INTO `sys_oper_log` VALUES (147, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563078085930090496', '10.10.7.72', '内网IP', '{tasteId=1563078085930090496}', '{\"msg\":\"提交审核成功\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208260008\\\"}\"}', 0, NULL, '2022-08-26 16:24:46');
INSERT INTO `sys_oper_log` VALUES (148, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563078085930090496', '10.10.7.72', '内网IP', '{tasteId=1563078085930090496}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 16:27:33');
INSERT INTO `sys_oper_log` VALUES (149, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.72', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563078085930090496\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661502286000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1563080723862093824\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661502459861,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-26 16:27:39');
INSERT INTO `sys_oper_log` VALUES (150, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563080723862093824', '10.10.7.72', '内网IP', '{tasteId=1563080723862093824}', '{\"msg\":\"提交审核成功\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208260009\\\"}\"}', 0, NULL, '2022-08-26 16:28:24');
INSERT INTO `sys_oper_log` VALUES (151, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.72', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563080723862093824\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661502504000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1563081691441889280\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661502690550,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-26 16:31:30');
INSERT INTO `sys_oper_log` VALUES (152, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563081691441889280', '10.10.7.72', '内网IP', '{tasteId=1563081691441889280}', '{\"msg\":\"提交审核成功\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208260010\\\"}\"}', 0, NULL, '2022-08-26 16:31:49');
INSERT INTO `sys_oper_log` VALUES (153, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563081691441889280', '10.10.7.72', '内网IP', '{tasteId=1563081691441889280}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 16:32:05');
INSERT INTO `sys_oper_log` VALUES (154, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563081691441889280', '10.10.7.72', '内网IP', '{tasteId=1563081691441889280}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 16:32:13');
INSERT INTO `sys_oper_log` VALUES (155, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563081691441889280', '10.10.7.72', '内网IP', '{tasteId=1563081691441889280}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 16:33:03');
INSERT INTO `sys_oper_log` VALUES (156, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563081691441889280', '10.10.7.72', '内网IP', '{tasteId=1563081691441889280}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 16:33:10');
INSERT INTO `sys_oper_log` VALUES (157, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.72', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563081691441889280\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661502709000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1563082158779629568\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661502801972,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-26 16:33:22');
INSERT INTO `sys_oper_log` VALUES (158, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563082158779629568', '10.10.7.72', '内网IP', '{tasteId=1563082158779629568}', '{\"msg\":\"提交审核成功\",\"code\":200,\"data\":\"{\\\"errcode\\\":0,\\\"errmsg\\\":\\\"ok\\\",\\\"sp_no\\\":\\\"202208260011\\\"}\"}', 0, NULL, '2022-08-26 16:33:31');
INSERT INTO `sys_oper_log` VALUES (159, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563082158779629568', '10.10.7.72', '内网IP', '{tasteId=1563082158779629568}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 16:33:36');
INSERT INTO `sys_oper_log` VALUES (160, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563073749611151360', '10.10.7.72', '内网IP', '{tasteId=1563073749611151360}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-26 17:30:21');
INSERT INTO `sys_oper_log` VALUES (161, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/202208260008', '10.10.7.72', '内网IP', '{spNo=202208260008}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-26 17:30:50');
INSERT INTO `sys_oper_log` VALUES (162, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563082158779629568', '10.10.7.72', '内网IP', '{tasteId=1563082158779629568}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'params.dataScope\'. Cause: org.apache.ibatis.ognl.NoSuchPropertyException: java.lang.String.dataScope', '2022-08-26 17:35:25');
INSERT INTO `sys_oper_log` VALUES (163, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563082158779629568', '10.10.7.72', '内网IP', '{tasteId=1563082158779629568}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: Error evaluating expression \'params.dataScope\'. Cause: org.apache.ibatis.ognl.NoSuchPropertyException: java.lang.String.dataScope', '2022-08-26 17:35:33');
INSERT INTO `sys_oper_log` VALUES (164, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1563082158779629568', '10.10.7.24', '内网IP', '{tasteId=1563082158779629568}', NULL, 1, '该单已提交审批不可重复审批,若状态未更新请点击更新审批结果', '2022-08-29 15:01:49');
INSERT INTO `sys_oper_log` VALUES (165, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.24', '内网IP', '{\"customersName\":\"11\",\"smokingType\":\"一次性\",\"businessName\":\"111\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563082158779629568\",\"businessCode\":\"1\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"11\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661502811000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1564146408453394432\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661756538867,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-29 15:02:18');
INSERT INTO `sys_oper_log` VALUES (166, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1564146408453394432', '10.10.7.24', '内网IP', '{tasteId=1564146408453394432}', '{\"msg\":\"{\\\"errcode\\\":301025,\\\"errmsg\\\":\\\"get approval param error:invalid template_id\\\"}\",\"code\":503}', 0, NULL, '2022-08-29 15:02:34');
INSERT INTO `sys_oper_log` VALUES (167, '口味申请单-增加微信审批单号', 1, 'com.hx.web.controller.wx.v1.WxOwnAuit.push()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/push/1564146408453394432', '10.10.7.24', '内网IP', '{tasteId=1564146408453394432}', '{\"msg\":\"{\\\"errcode\\\":301025,\\\"errmsg\\\":\\\"get approval param error:invalid template_id\\\"}\",\"code\":503}', 0, NULL, '2022-08-29 15:02:49');
INSERT INTO `sys_oper_log` VALUES (168, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', '103', '/system/taste', '10.10.7.24', '内网IP', '{\"customersName\":\"测试\",\"smokingType\":\"一次性\",\"businessName\":\"测试名\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563082158779629568\",\"businessCode\":\"测试\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"测试\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661831278318,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1564146408453394432\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661756539000,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-30 11:47:58');
INSERT INTO `sys_oper_log` VALUES (169, '口味申请单', 2, 'com.hx.web.controller.system.HxTasteController.edit()', 'PUT', 1, 'admin', '103', '/system/taste', '10.10.7.24', '内网IP', '{\"customersName\":\"测试\",\"smokingType\":\"一次性\",\"businessName\":\"测试名\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1563082158779629568\",\"businessCode\":\"测试\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"测试\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661831289889,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1564146408453394432\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661756539000,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-30 11:48:09');
INSERT INTO `sys_oper_log` VALUES (170, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/K2022-08-30-001', '10.10.7.24', '内网IP', '{spNo=K2022-08-30-001}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:20:38');
INSERT INTO `sys_oper_log` VALUES (171, '口味申请单', 1, 'com.hx.web.controller.system.HxTasteController.add()', 'POST', 1, 'admin', '103', '/system/taste', '10.10.7.24', '内网IP', '{\"customersName\":\"测试\",\"smokingType\":\"一次性\",\"businessName\":\"测试名\",\"remark\":\"11\",\"isTry\":\"是\",\"isSmoking\":\"是\",\"capacity\":\"11\",\"heatingWireType\":\"网芯\",\"tasteCopyId\":\"1564146408453394431\",\"businessCode\":\"测试\",\"heatingWireResistance\":\"11\",\"updateBy\":\"admin\",\"coolness\":\"11\",\"state\":\"0\",\"customersCode\":\"测试\",\"sendNum\":\"1\",\"estimatedFinishTime\":1659888000000,\"hxTasteDetailList\":[],\"expectedCompletionTime\":1659888000000,\"oilGuideCottonType\":\"亚麻棉\",\"isRecyclingSmoking\":\"是\",\"matchMarket\":\"[[\\\"欧洲\\\",\\\"爱尔兰\\\"]]\",\"deptId\":\"国内业务二组\",\"sampleRequestTime\":1660579200000,\"sweetness\":\"1\",\"updateTime\":1661831290000,\"samplesNum\":11,\"params\":{},\"tasteId\":\"1564529884922912768\",\"createBy\":\"admin\",\"viscosity\":\"11\",\"visitTime\":1659888000000,\"deleted\":\"0\",\"oilRingMaterial\":\"PC\",\"createTime\":1661847966782,\"isSupply\":\"是\",\"mailingInformation\":\"1111\",\"tasteNum\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-30 16:26:06');
INSERT INTO `sys_oper_log` VALUES (172, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/K2022-08-30-001', '10.10.7.24', '内网IP', '{spNo=K2022-08-30-001}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:29:30');
INSERT INTO `sys_oper_log` VALUES (173, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/K2022-08-30-001', '10.10.7.24', '内网IP', '{spNo=K2022-08-30-001}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:29:36');
INSERT INTO `sys_oper_log` VALUES (174, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/K2022-08-30-001', '10.10.7.24', '内网IP', '{spNo=K2022-08-30-001}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:29:41');
INSERT INTO `sys_oper_log` VALUES (175, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/K2022-08-30-001', '10.10.7.24', '内网IP', '{spNo=K2022-08-30-001}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:36:13');
INSERT INTO `sys_oper_log` VALUES (176, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/K2022-08-30-001', '10.10.7.24', '内网IP', '{spNo=K2022-08-30-001}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:36:16');
INSERT INTO `sys_oper_log` VALUES (177, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/K2022-08-30-001', '10.10.7.24', '内网IP', '{spNo=K2022-08-30-001}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:40:03');
INSERT INTO `sys_oper_log` VALUES (178, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/K2022-08-30-001', '10.10.7.24', '内网IP', '{spNo=K2022-08-30-001}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:41:47');
INSERT INTO `sys_oper_log` VALUES (179, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/1564529884922912768', '10.10.7.24', '内网IP', '{spNo=1564529884922912768}', '{\"msg\":\"审核状态不一致,已同步最新审核单状态\",\"code\":200}', 0, NULL, '2022-08-30 16:45:17');
INSERT INTO `sys_oper_log` VALUES (180, '口味申请单-更新审批状态', 2, 'com.hx.web.controller.wx.v1.WxOwnAuit.updateAuitDetail()', 'GET', 1, 'admin', '103', '/system/wxOwn/callback/updateAuitDetail/1564529884922912768', '10.10.7.24', '内网IP', '{spNo=1564529884922912768}', NULL, 1, '企业微信审批状态与研发系统状态一致,请勿重复更新状态', '2022-08-30 16:45:28');
INSERT INTO `sys_oper_log` VALUES (181, '口味申请单', 3, 'com.hx.web.controller.system.HxTasteController.remove()', 'DELETE', 1, 'admin', '103', '/system/taste/1564529884922912768', '10.10.7.24', '内网IP', '{tasteIds=1564529884922912768}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-30 16:49:09');
INSERT INTO `sys_oper_log` VALUES (182, '口味申请单', 3, 'com.hx.web.controller.system.HxTasteController.remove()', 'DELETE', 1, 'admin', '103', '/system/taste/1564146408453394431', '10.10.7.24', '内网IP', '{tasteIds=1564146408453394431}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-30 16:49:12');
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 1, 'com.hx.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', '103', '/system/menu', '10.10.7.24', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":6,\"menuName\":\"打印\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"sys/print\",\"component\":\"system/taste/print\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-30 16:51:05');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '103', '/system/menu', '10.10.7.24', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":6,\"menuName\":\"打印\",\"params\":{},\"parentId\":2013,\"isCache\":\"0\",\"path\":\"sys/print\",\"component\":\"system/taste/print\",\"children\":[],\"createTime\":1661849465000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-30 16:51:16');
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 2, 'com.hx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', '103', '/system/menu', '10.10.7.24', '内网IP', '{\"visible\":\"0\",\"icon\":\"clipboard\",\"orderNum\":6,\"menuName\":\"打印\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"print\",\"component\":\"system/taste/print\",\"children\":[],\"createTime\":1661849465000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2026,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2022-08-30 17:02:12');

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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2022-05-24 17:11:23', '', NULL, '');
INSERT INTO `sys_post` VALUES (5, 'rd', '调香师', 5, '0', 'admin', '2022-08-16 14:36:58', 'admin', '2022-08-16 14:37:04', NULL);
INSERT INTO `sys_post` VALUES (6, 'sales', '销售', 6, '0', 'admin', '2022-08-16 14:37:41', 'admin', '2022-08-16 14:37:51', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2022-05-24 17:11:23', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2022-05-24 17:11:23', 'admin', '2022-05-30 15:15:32', '普通角色');
INSERT INTO `sys_role` VALUES (3, '销售', 'sales', 2, '1', 1, 1, '0', '0', 'admin', '2022-08-16 12:46:23', 'admin', '2022-08-18 11:40:42', NULL);

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
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2002);
INSERT INTO `sys_role_menu` VALUES (2, 2003);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (3, 2000);
INSERT INTO `sys_role_menu` VALUES (3, 2001);
INSERT INTO `sys_role_menu` VALUES (3, 2002);
INSERT INTO `sys_role_menu` VALUES (3, 2003);
INSERT INTO `sys_role_menu` VALUES (3, 2006);
INSERT INTO `sys_role_menu` VALUES (3, 2007);
INSERT INTO `sys_role_menu` VALUES (3, 2008);
INSERT INTO `sys_role_menu` VALUES (3, 2010);
INSERT INTO `sys_role_menu` VALUES (3, 2013);
INSERT INTO `sys_role_menu` VALUES (3, 2016);
INSERT INTO `sys_role_menu` VALUES (3, 2017);
INSERT INTO `sys_role_menu` VALUES (3, 2018);
INSERT INTO `sys_role_menu` VALUES (3, 2019);
INSERT INTO `sys_role_menu` VALUES (3, 2020);
INSERT INTO `sys_role_menu` VALUES (3, 2021);
INSERT INTO `sys_role_menu` VALUES (3, 2022);
INSERT INTO `sys_role_menu` VALUES (3, 2023);
INSERT INTO `sys_role_menu` VALUES (3, 2024);
INSERT INTO `sys_role_menu` VALUES (3, 2025);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `wx_user_id` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业微信绑定的userID',
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
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'hanlele', 'admin', 'lusifer', '00', 'test@qq.com', '15888888888', '1', '/profile/avatar/2022/08/20/blob_20220820113654A001.jpeg', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2022-08-31 10:55:03', 'admin', '2022-05-24 17:11:23', '', '2022-08-31 10:55:03', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, NULL, 'tt', 'test', '00', 'test@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2022-05-24 17:11:23', 'admin', '2022-05-24 17:11:23', 'admin', '2022-05-25 12:28:18', '测试员');
INSERT INTO `sys_user` VALUES (100, 105, NULL, 'test', 'test', '00', '', '', '0', '', '$2a$10$QjkwmcEAicj4i6y7rhg5WuFC.jHfe2YYzf3ZnucmR4JLQlP6UvrR2', '0', '0', '127.0.0.1', '2022-08-18 09:29:36', 'admin', '2022-05-25 12:29:02', 'admin', '2022-08-18 09:29:36', NULL);
INSERT INTO `sys_user` VALUES (101, 103, NULL, '研发账号', '研发昵称', '00', '', '', '0', '', '$2a$10$nrlIQqoNKBchj5AlDO/5Ee2U9qwosyVCn3XR7VkRJSPd.D5Kl/7sK', '0', '0', '127.0.0.1', '2022-08-18 09:30:02', 'admin', '2022-08-16 12:15:08', 'admin', '2022-08-18 09:30:02', NULL);
INSERT INTO `sys_user` VALUES (102, 111, NULL, '销售账号', '销售昵称', '00', '', '', '1', '', '$2a$10$F2kYYq8l2d9LASor3j47s.PEAmYzDemGBpzSp0YFeIYwgWYISJU62', '0', '0', '127.0.0.1', '2022-08-20 12:16:24', 'admin', '2022-08-16 12:16:28', 'admin', '2022-08-20 12:16:24', NULL);

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
INSERT INTO `sys_user_post` VALUES (100, 4);
INSERT INTO `sys_user_post` VALUES (101, 5);
INSERT INTO `sys_user_post` VALUES (102, 6);

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
INSERT INTO `sys_user_role` VALUES (100, 2);
INSERT INTO `sys_user_role` VALUES (101, 3);
INSERT INTO `sys_user_role` VALUES (102, 3);

SET FOREIGN_KEY_CHECKS = 1;
