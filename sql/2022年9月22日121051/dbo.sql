/*
 Navicat Premium Data Transfer

 Source Server         : docker
 Source Server Type    : SQL Server
 Source Server Version : 15004073
 Source Host           : localhost:1433
 Source Catalog        : vuesqlserver
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15004073
 File Encoding         : 65001

 Date: 22/09/2022 12:10:59
*/


-- ----------------------------
-- Table structure for crm_data_region
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[crm_data_region]') AND type IN ('U'))
	DROP TABLE [dbo].[crm_data_region]
GO

CREATE TABLE [dbo].[crm_data_region] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [pid] int  NULL,
  [path] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [level] int  NULL,
  [name] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name_en] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name_pinyin] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [code] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[crm_data_region] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'主键',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region',
'COLUMN', N'id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父ID',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region',
'COLUMN', N'pid'
GO

EXEC sp_addextendedproperty
'MS_Description', N'路径',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region',
'COLUMN', N'path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'层级',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region',
'COLUMN', N'level'
GO

EXEC sp_addextendedproperty
'MS_Description', N'中文名称',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region',
'COLUMN', N'name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'英文名称',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region',
'COLUMN', N'name_en'
GO

EXEC sp_addextendedproperty
'MS_Description', N'中文拼音',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region',
'COLUMN', N'name_pinyin'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region',
'COLUMN', N'code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'全球地区库，采集自腾讯QQ国内+国际版.ADD.JENA.20141221',
'SCHEMA', N'dbo',
'TABLE', N'crm_data_region'
GO


-- ----------------------------
-- Records of crm_data_region
-- ----------------------------
SET IDENTITY_INSERT [dbo].[crm_data_region] ON
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1', N'0', N',1,', N'1', N'亚洲', N'Asia', N'yazhou', NULL)
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2', N'0', N',2,', N'1', N'欧洲', N'Europe', N'ouzhou', NULL)
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3', N'0', N',3,', N'1', N'非洲', N'Africa', N'feizhou', NULL)
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4', N'0', N',4,', N'1', N'北美', N'North America', N'beimei', NULL)
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'5', N'0', N',5,', N'1', N'南美', N'South America', N'nanmei', NULL)
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'6', N'0', N',6,', N'1', N'大洋洲', N'Oceania', N'dayangzhou', NULL)
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'7', N'1', N',1,7,', N'2', N'中国', N'China', N'zhongguo', N'CN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'8', N'2', N',2,8,', N'2', N'阿尔巴尼亚', N'Albania', N'aerbaniya', N'ALB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'9', N'3', N',3,9,', N'2', N'阿尔及利亚', N'Algeria', N'aerjiliya', N'DZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'10', N'1', N',1,10,', N'2', N'阿富汗', N'Afghanistan', N'afuhan', N'AFG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'11', N'5', N',5,11,', N'2', N'阿根廷', N'Argentina', N'agenting', N'ARG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'12', N'1', N',1,12,', N'2', N'阿拉伯联合酋长国', N'United Arab Emirates', N'alabolianheqiuchangguo', N'ARE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'13', N'5', N',5,13,', N'2', N'阿鲁巴', N'Aruba', N'aluba', N'ABW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'14', N'1', N',1,14,', N'2', N'阿曼', N'Oman', N'aman', N'OMN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'15', N'1', N',1,15,', N'2', N'阿塞拜疆', N'Azerbaijan', N'asaibaijiang', N'AZE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'16', N'3', N',3,16,', N'2', N'阿森松岛', N'Ascension Island', N'asensongdao', N'ASC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'17', N'3', N',3,17,', N'2', N'埃及', N'Egypt', N'aiji', N'EGY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'18', N'3', N',3,18,', N'2', N'埃塞俄比亚', N'Ethiopia', N'aisaiebiya', N'ETH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'19', N'2', N',2,19,', N'2', N'爱尔兰', N'Ireland', N'aierlan', N'IRL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'20', N'2', N',2,20,', N'2', N'爱沙尼亚', N'Estonia', N'aishaniya', N'EST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'21', N'2', N',2,21,', N'2', N'安道尔', N'Andorra', N'andaoer', N'AND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'22', N'3', N',3,22,', N'2', N'安哥拉', N'Angola', N'angela', N'AGO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'23', N'5', N',5,23,', N'2', N'安圭拉', N'Anguilla', N'anguila', N'AIA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'24', N'4', N',4,24,', N'2', N'安提瓜岛和巴布达', N'Antigua and Barbuda', N'antiguadaohebabuda', N'ATG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'25', N'6', N',6,25,', N'2', N'澳大利亚', N'Australia', N'aodaliya', N'AUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'26', N'2', N',2,26,', N'2', N'奥地利', N'Austria', N'aodili', N'AUT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'27', N'2', N',2,27,', N'2', N'奥兰群岛', N'Aland lslands', N'aolanqundao', N'ALA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'28', N'5', N',5,28,', N'2', N'巴巴多斯岛', N'Barbados', N'babaduosidao', N'BRB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'29', N'6', N',6,29,', N'2', N'巴布亚新几内亚', N'Papua New Guinea', N'babuyaxinjineiya', N'PNG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'30', N'4', N',4,30,', N'2', N'巴哈马', N'Bahamas', N'bahama', N'BHS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'31', N'1', N',1,31,', N'2', N'巴基斯坦', N'Pakistan', N'bajisitan', N'PAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'32', N'5', N',5,32,', N'2', N'巴拉圭', N'Paraguay', N'balagui', N'PRY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'33', N'1', N',1,33,', N'2', N'巴勒斯坦', N'Palestinian Authority', N'balesitan', N'PSE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'34', N'1', N',1,34,', N'2', N'巴林', N'Bahrain', N'balin', N'BHR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'35', N'4', N',4,35,', N'2', N'巴拿马', N'Panama', N'banama', N'PAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'36', N'5', N',5,36,', N'2', N'巴西', N'Brazil', N'baxi', N'BRA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'37', N'2', N',2,37,', N'2', N'白俄罗斯', N'White Russia', N'baieluosi', N'BLR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'38', N'4', N',4,38,', N'2', N'百慕大', N'Bermuda', N'baimuda', N'BMU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'39', N'2', N',2,39,', N'2', N'保加利亚', N'Bulgaria', N'baojialiya', N'BGR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'40', N'4', N',4,40,', N'2', N'北马里亚纳群岛', N'Northern Mariana Islands', N'beimaliyanaqundao', N'MNP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'41', N'3', N',3,41,', N'2', N'贝宁', N'Benin', N'beining', N'BEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'42', N'2', N',2,42,', N'2', N'比利时', N'Belgium', N'bilishi', N'BEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'43', N'2', N',2,43,', N'2', N'冰岛', N'Iceland', N'bingdao', N'ISL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'44', N'4', N',4,44,', N'2', N'波多黎各', N'Puerto Rico', N'boduolige', N'PRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'45', N'2', N',2,45,', N'2', N'波兰', N'Poland', N'bolan', N'POL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'46', N'5', N',5,46,', N'2', N'玻利维亚', N'Bolivia', N'boliweiya', N'BOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'47', N'2', N',2,47,', N'2', N'波斯尼亚和黑塞哥维那', N'Bosnia and Herzegovina', N'bosiniyaheheisaigeweina', N'BIH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'48', N'3', N',3,48,', N'2', N'博茨瓦纳', N'Botswana', N'bociwana', N'BWA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'49', N'4', N',4,49,', N'2', N'伯利兹', N'Belize', N'bolizi', N'BLZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'50', N'1', N',1,50,', N'2', N'不丹', N'Bhutan', N'budan', N'BTN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'51', N'3', N',3,51,', N'2', N'布基纳法索', N'Burkina Faso', N'bujinafasuo', N'BFA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'52', N'3', N',3,52,', N'2', N'布隆迪', N'Burundi', N'bulongdi', N'BDI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'53', N'2', N',2,53,', N'2', N'布韦岛', N'Bouvet Island', N'buweidao', N'BVT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'54', N'1', N',1,54,', N'2', N'朝鲜', N'North Korea', N'chaoxian', N'PRK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'55', N'2', N',2,55,', N'2', N'丹麦', N'Denmark', N'danmai', N'DNK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'56', N'2', N',2,56,', N'2', N'德国', N'Germany', N'deguo', N'DEU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'57', N'1', N',1,57,', N'2', N'东帝汶', N'Timor-Leste', N'dongdi', N'TLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'58', N'3', N',3,58,', N'2', N'多哥', N'Togo', N'duoge', N'TGO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'59', N'4', N',4,59,', N'2', N'多米尼加', N'Dominica', N'duominijia', N'DMA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'60', N'4', N',4,60,', N'2', N'多米尼加共和国', N'Dominican Republic', N'duominijiagongheguo', N'DOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'61', N'2', N',2,61,', N'2', N'俄罗斯', N'Russia', N'eluosi', N'RUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'62', N'5', N',5,62,', N'2', N'厄瓜多尔', N'Ecuador', N'eguaduoer', N'ECU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'63', N'3', N',3,63,', N'2', N'厄立特里亚', N'Eritrea', N'eliteliya', N'ERI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'64', N'2', N',2,64,', N'2', N'法国', N'France', N'faguo', N'FRA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'65', N'2', N',2,65,', N'2', N'法罗群岛', N'Faroe Islands', N'faluoqundao', N'FRO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'66', N'6', N',6,66,', N'2', N'法属波利尼西亚', N'Frech Polynesia', N'fashubolinixiya', N'PYF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'67', N'5', N',5,67,', N'2', N'法属圭亚那', N'French Guiana', N'fashuguiyana', N'GUF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'68', N'2', N',2,68,', N'2', N'法属南部领地', N'French Southern and Antarctic Lands', N'fashunanbulingdi', N'ATF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'69', N'2', N',2,69,', N'2', N'梵蒂冈', N'Vatican City', N'digang', N'VAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'70', N'1', N',1,70,', N'2', N'菲律宾', N'Philippines', N'feilvbin', N'PHL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'71', N'6', N',6,71,', N'2', N'斐济', N'Fiji Islands', N'ji', N'FJI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'72', N'2', N',2,72,', N'2', N'芬兰', N'Finland', N'fenlan', N'FIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'73', N'3', N',3,73,', N'2', N'佛得角', N'Cape Verde', N'fodejiao', N'CPV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'74', N'2', N',2,74,', N'2', N'弗兰克群岛', N'Falkland Islands', N'fulankequndao', N'FLK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'75', N'3', N',3,75,', N'2', N'冈比亚', N'Gambia', N'gangbiya', N'GMB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'76', N'3', N',3,76,', N'2', N'刚果', N'Congo', N'gangguo', N'COG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'77', N'3', N',3,77,', N'2', N'刚果民主共和国', N'Congo(DRC)', N'gangguominzhugongheguo', N'COD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'78', N'5', N',5,78,', N'2', N'哥伦比亚', N'Colombia', N'gelunbiya', N'COL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'79', N'4', N',4,79,', N'2', N'哥斯达黎加', N'Costa Rica', N'gesidalijia', N'CRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'80', N'2', N',2,80,', N'2', N'格恩西岛', N'Guernsey', N'geenxidao', N'GGY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'81', N'4', N',4,81,', N'2', N'格林纳达', N'Grenada', N'gelinnada', N'GRD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'82', N'4', N',4,82,', N'2', N'格陵兰', N'Greenland', N'gelinglan', N'GRL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'83', N'4', N',4,83,', N'2', N'古巴', N'Cuba', N'guba', N'CUB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'84', N'4', N',4,84,', N'2', N'瓜德罗普', N'Guadeloupe', N'guadeluopu', N'GLP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'85', N'6', N',6,85,', N'2', N'关岛', N'Guam', N'guandao', N'GUM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'86', N'5', N',5,86,', N'2', N'圭亚那', N'Guyana', N'guiyana', N'GUY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'87', N'1', N',1,87,', N'2', N'哈萨克斯坦', N'Kazakhstan', N'hasakesitan', N'KAZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'88', N'4', N',4,88,', N'2', N'海地', N'Haiti', N'haidi', N'HTI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'89', N'1', N',1,89,', N'2', N'韩国', N'Korea', N'hanguo', N'KOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'90', N'2', N',2,90,', N'2', N'荷兰', N'Netherlands', N'helan', N'NLD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'91', N'5', N',5,91,', N'2', N'荷属安地列斯', N'Netherlands Antilles', N'heshuandiliesi', N'ANT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'92', N'6', N',6,92,', N'2', N'赫德和麦克唐纳群岛', N'Heard Island and McDonald Islands', N'hedehemaiketangnaqundao', N'HMD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'93', N'4', N',4,93,', N'2', N'洪都拉斯', N'Honduras', N'hongdulasi', N'HND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'94', N'6', N',6,94,', N'2', N'基里巴斯', N'Kiribati', N'jilibasi', N'KIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'95', N'3', N',3,95,', N'2', N'吉布提', N'Djibouti', N'jibuti', N'DJI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'96', N'1', N',1,96,', N'2', N'吉尔吉斯斯坦', N'Kyrgyzstan', N'jierjisisitan', N'KGZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'97', N'3', N',3,97,', N'2', N'几内亚', N'Guinea', N'jineiya', N'GIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'98', N'3', N',3,98,', N'2', N'几内亚比绍', N'Guinea-Bissau', N'jineiyabishao', N'GNB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'99', N'4', N',4,99,', N'2', N'加拿大', N'Canada', N'jianada', N'CAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'100', N'3', N',3,100,', N'2', N'加纳', N'Ghana', N'jiana', N'GHA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'101', N'3', N',3,101,', N'2', N'加蓬', N'Gabon', N'jiapeng', N'GAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'102', N'1', N',1,102,', N'2', N'柬埔寨', N'Cambodia', N'jianpuzhai', N'KHM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'103', N'2', N',2,103,', N'2', N'捷克共和国', N'Czech Republic', N'jiekegongheguo', N'CZE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'104', N'3', N',3,104,', N'2', N'津巴布韦', N'Zimbabwe', N'jinbabuwei', N'ZWE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'105', N'3', N',3,105,', N'2', N'喀麦隆', N'Cameroon', N'kamailong', N'CMR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'106', N'1', N',1,106,', N'2', N'卡塔尔', N'Qatar', N'kataer', N'QAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'107', N'4', N',4,107,', N'2', N'开曼群岛', N'Cayman Islands', N'kaimanqundao', N'CYM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'108', N'6', N',6,108,', N'2', N'科科斯群岛', N'Cocos(Keeling)Islands', N'kekesiqundao', N'CCK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'109', N'3', N',3,109,', N'2', N'科摩罗', N'Comoros', N'kemoluo', N'COM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'110', N'3', N',3,110,', N'2', N'科特迪瓦', N'Cote d''Ivoire', N'ketediwa', N'CIV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'111', N'1', N',1,111,', N'2', N'科威特', N'Kuwait', N'keweite', N'KWT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'112', N'2', N',2,112,', N'2', N'克罗地亚', N'Croatia', N'keluodiya', N'HRV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'113', N'3', N',3,113,', N'2', N'肯尼亚', N'Kenya', N'kenniya', N'KEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'114', N'6', N',6,114,', N'2', N'库克群岛', N'Cook Islands', N'kukequndao', N'COK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'115', N'2', N',2,115,', N'2', N'拉脱维亚', N'Latvia', N'latuoweiya', N'LVA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'116', N'3', N',3,116,', N'2', N'莱索托', N'Lesotho', N'laisuotuo', N'LSO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'117', N'1', N',1,117,', N'2', N'老挝', N'Laos', N'laowo', N'LAO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'118', N'1', N',1,118,', N'2', N'黎巴嫩', N'Lebanon', N'libanen', N'LBN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'119', N'3', N',3,119,', N'2', N'利比里亚', N'Liberia', N'libiliya', N'LBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'120', N'3', N',3,120,', N'2', N'利比亚', N'Libya', N'libiya', N'LBY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'121', N'2', N',2,121,', N'2', N'立陶宛', N'Lithuania', N'litaowan', N'LTU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'122', N'2', N',2,122,', N'2', N'列支敦士登', N'Liechtenstein', N'liezhidunshideng', N'LIE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'123', N'2', N',2,123,', N'2', N'留尼旺岛', N'Reunion', N'liuniwangdao', N'REU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'124', N'2', N',2,124,', N'2', N'卢森堡', N'Luxembourg', N'lusenbao', N'LUX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'125', N'3', N',3,125,', N'2', N'卢旺达', N'Rwanda', N'luwangda', N'RWA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'126', N'2', N',2,126,', N'2', N'罗马尼亚', N'Romania', N'luomaniya', N'ROU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'127', N'3', N',3,127,', N'2', N'马达加斯加', N'Madagascar', N'madajiasijia', N'MDG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'128', N'1', N',1,128,', N'2', N'马尔代夫', N'Maldives', N'maerdaifu', N'MDV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'129', N'2', N',2,129,', N'2', N'马耳他', N'Malta', N'maerta', N'MLT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'130', N'3', N',3,130,', N'2', N'马拉维', N'Malawi', N'malawei', N'MWI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'131', N'1', N',1,131,', N'2', N'马来西亚', N'Malaysia', N'malaixiya', N'MYS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'132', N'3', N',3,132,', N'2', N'马里', N'Mali', N'mali', N'MLI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'133', N'2', N',2,133,', N'2', N'马其顿', N'Macedonia,Former Yugoslav Republic of', N'maqidun', N'MKD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'134', N'6', N',6,134,', N'2', N'马绍尔群岛', N'Marshall Islands', N'mashaoerqundao', N'MHL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'135', N'4', N',4,135,', N'2', N'马提尼克', N'Martinique', N'matinike', N'MTQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'136', N'3', N',3,136,', N'2', N'马约特岛', N'Mayotte', N'mayuetedao', N'MYT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'137', N'2', N',2,137,', N'2', N'曼岛', N'Isle of Man', N'mandao', N'IMN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'138', N'3', N',3,138,', N'2', N'毛里求斯', N'Mauritius', N'maoliqiusi', N'MUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'139', N'3', N',3,139,', N'2', N'毛里塔尼亚', N'Mauritania', N'maolitaniya', N'MRT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'140', N'4', N',4,140,', N'2', N'美国', N'United States', N'meiguo', N'USA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'141', N'6', N',6,141,', N'2', N'美属萨摩亚', N'American Samoa', N'meishusamoya', N'ASM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'142', N'4', N',4,142,', N'2', N'美属外岛', N'United States Minor Outlying Islands', N'meishuwaidao', N'UMI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'143', N'1', N',1,143,', N'2', N'蒙古', N'Mongolia', N'menggu', N'MNG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'144', N'4', N',4,144,', N'2', N'蒙特塞拉特', N'Montserrat', N'mengtesailate', N'MSR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'145', N'1', N',1,145,', N'2', N'孟加拉', N'Bangladesh', N'mengjiala', N'BGD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'146', N'6', N',6,146,', N'2', N'密克罗尼西亚', N'Micronesia', N'mikeluonixiya', N'FSM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'147', N'5', N',5,147,', N'2', N'秘鲁', N'Peru', N'milu', N'PER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'148', N'1', N',1,148,', N'2', N'缅甸', N'Myanmar', N'miandian', N'MMR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'149', N'2', N',2,149,', N'2', N'摩尔多瓦', N'Moldova', N'moerduowa', N'MDA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'150', N'3', N',3,150,', N'2', N'摩洛哥', N'Morocco', N'moluoge', N'MAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'151', N'2', N',2,151,', N'2', N'摩纳哥', N'Monaco', N'monage', N'MCO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'152', N'3', N',3,152,', N'2', N'莫桑比克', N'Mozambique', N'mosangbike', N'MOZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'153', N'4', N',4,153,', N'2', N'墨西哥', N'Mexico', N'moxige', N'MEX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'154', N'3', N',3,154,', N'2', N'纳米比亚', N'Namibia', N'namibiya', N'NAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'155', N'3', N',3,155,', N'2', N'南非', N'South Africa', N'nanfei', N'ZAF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'156', N'0', N',156,', N'1', N'南极洲', N'Antarctica', N'nanjizhou', N'ATA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'157', N'156', N',156,157,', N'2', N'南乔治亚和南桑德威奇群岛', N'South Georgia and South Sandwich Islands', N'nanqiaozhiyahenansangdeweiqiqundao', N'SGS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'158', N'6', N',6,158,', N'2', N'瑙鲁', N'Nauru', N'lu', N'NRU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'159', N'1', N',1,159,', N'2', N'尼泊尔', N'Nepal', N'niboer', N'NPL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'160', N'4', N',4,160,', N'2', N'尼加拉瓜', N'Nicaragua', N'nijialagua', N'NIC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'161', N'3', N',3,161,', N'2', N'尼日尔', N'Niger', N'nirier', N'NER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'162', N'3', N',3,162,', N'2', N'尼日利亚', N'Nigeria', N'niriliya', N'NGA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'163', N'6', N',6,163,', N'2', N'纽埃', N'Niue', N'niuai', N'NIU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'164', N'2', N',2,164,', N'2', N'挪威', N'Norway', N'nuowei', N'NOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'165', N'4', N',4,165,', N'2', N'诺福克', N'Norfolk Island', N'nuofuke', N'NFK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'166', N'6', N',6,166,', N'2', N'帕劳群岛', N'Palau', N'palaoqundao', N'PLW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'167', N'6', N',6,167,', N'2', N'皮特凯恩', N'Pitcairn Islands', N'pitekaien', N'PCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'168', N'2', N',2,168,', N'2', N'葡萄牙', N'Portugal', N'putaoya', N'PRT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'169', N'156', N',156,169,', N'2', N'乔治亚', N'Georgia', N'qiaozhiya', N'GEO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'170', N'1', N',1,170,', N'2', N'日本', N'Japan', N'riben', N'JPN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'171', N'2', N',2,171,', N'2', N'瑞典', N'Sweden', N'ruidian', N'SWE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'172', N'2', N',2,172,', N'2', N'瑞士', N'Switzerland', N'ruishi', N'CHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'173', N'4', N',4,173,', N'2', N'萨尔瓦多', N'El Salvador', N'saerwaduo', N'SLV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'174', N'6', N',6,174,', N'2', N'萨摩亚', N'Samoa', N'samoya', N'WSM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'175', N'2', N',2,175,', N'2', N'塞尔维亚,黑山', N'Serbia,Montenegro', N'saierweiyaheishan', N'SCG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'176', N'3', N',3,176,', N'2', N'塞拉利昂', N'Sierra Leone', N'sailaliang', N'SLE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'177', N'3', N',3,177,', N'2', N'塞内加尔', N'Senegal', N'saineijiaer', N'SEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'178', N'1', N',1,178,', N'2', N'塞浦路斯', N'Cyprus', N'saipulusi', N'CYP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'179', N'3', N',3,179,', N'2', N'塞舌尔', N'Seychelles', N'saisheer', N'SYC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'180', N'1', N',1,180,', N'2', N'沙特阿拉伯', N'Saudi Arabia', N'shatealabo', N'SAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'181', N'6', N',6,181,', N'2', N'圣诞岛', N'Christmas Island', N'shengdandao', N'CXR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'182', N'3', N',3,182,', N'2', N'圣多美和普林西比', N'Sao Tome and Principe', N'shengduomeihepulinxibi', N'STP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'183', N'3', N',3,183,', N'2', N'圣赫勒拿', N'St.Helena', N'shenghelena', N'SHN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'184', N'4', N',4,184,', N'2', N'圣基茨和尼维斯', N'St.Kitts and Nevis', N'shengjiciheniweisi', N'KNA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'185', N'4', N',4,185,', N'2', N'圣卢西亚', N'St.Lucia', N'shengluxiya', N'LCA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'186', N'2', N',2,186,', N'2', N'圣马力诺', N'San Marino', N'shengmalinuo', N'SMR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'187', N'4', N',4,187,', N'2', N'圣皮埃尔和米克隆群岛', N'St.Pierre and Miquelon', N'shengpiaierhemikelongqundao', N'SPM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'188', N'4', N',4,188,', N'2', N'圣文森特和格林纳丁斯', N'St.Vincent and the Grenadines', N'shengwensentehegelinnadingsi', N'VCT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'189', N'1', N',1,189,', N'2', N'斯里兰卡', N'Sri Lanka', N'sililanka', N'LKA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'190', N'2', N',2,190,', N'2', N'斯洛伐克', N'Slovakia', N'siluofake', N'SVK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'191', N'2', N',2,191,', N'2', N'斯洛文尼亚', N'Slovenia', N'siluowenniya', N'SVN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'192', N'2', N',2,192,', N'2', N'斯瓦尔巴和扬马廷', N'Svalbard and Jan Mayen', N'siwaerbaheyangmating', N'SJM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'193', N'3', N',3,193,', N'2', N'斯威士兰', N'Swaziland', N'siweishilan', N'SWZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'194', N'3', N',3,194,', N'2', N'苏丹', N'Sudan', N'sudan', N'SDN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'195', N'5', N',5,195,', N'2', N'苏里南', N'Suriname', N'sulinan', N'SUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'196', N'6', N',6,196,', N'2', N'所罗门群岛', N'Solomon Islands', N'suoluomenqundao', N'SLB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'197', N'3', N',3,197,', N'2', N'索马里', N'Somalia', N'suomali', N'SOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'198', N'1', N',1,198,', N'2', N'塔吉克斯坦', N'Tajikistan', N'tajikesitan', N'TJK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'199', N'1', N',1,199,', N'2', N'泰国', N'Thailand', N'taiguo', N'THA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'200', N'3', N',3,200,', N'2', N'坦桑尼亚', N'Tanzania', N'tansangniya', N'TZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'201', N'6', N',6,201,', N'2', N'汤加', N'Tonga', N'tangjia', N'TON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'202', N'4', N',4,202,', N'2', N'特克斯和凯克特斯群岛', N'Turks and Caicos Islands', N'tekesihekaiketesiqundao', N'TCA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'203', N'5', N',5,203,', N'2', N'特里斯坦达昆哈', N'Tristan da Cunha', N'telisitandakunha', N'TAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'204', N'4', N',4,204,', N'2', N'特立尼达和多巴哥', N'Trinidad and Tobago', N'telinidaheduobage', N'TTO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'205', N'3', N',3,205,', N'2', N'突尼斯', N'Tunisia', N'tunisi', N'TUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'206', N'6', N',6,206,', N'2', N'图瓦卢', N'Tuvalu', N'tuwalu', N'TUV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'207', N'1', N',1,207,', N'2', N'土耳其', N'Turkey', N'tuerqi', N'TUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'208', N'1', N',1,208,', N'2', N'土库曼斯坦', N'Turkmenistan', N'tukumansitan', N'TKM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'209', N'6', N',6,209,', N'2', N'托克劳', N'Tokelau', N'tuokelao', N'TKL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'210', N'6', N',6,210,', N'2', N'瓦利斯和福图纳', N'Wallis and Futuna', N'walisihefutuna', N'WLF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'211', N'6', N',6,211,', N'2', N'瓦努阿图', N'Vanuatu', N'wanuatu', N'VUT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'212', N'4', N',4,212,', N'2', N'危地马拉', N'Guatemala', N'weidimala', N'GTM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'213', N'4', N',4,213,', N'2', N'维尔京群岛，美属', N'Virgin Islands', N'weierjingqundaomeishu', N'VIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'214', N'4', N',4,214,', N'2', N'维尔京群岛，英属', N'Virgin Islands,British', N'weierjingqundaoyingshu', N'VGB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'215', N'5', N',5,215,', N'2', N'委内瑞拉', N'Venezuela', N'weineiruila', N'VEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'216', N'1', N',1,216,', N'2', N'文莱', N'Brunei', N'wenlai', N'BRN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'217', N'3', N',3,217,', N'2', N'乌干达', N'Uganda', N'wuganda', N'UGA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'218', N'2', N',2,218,', N'2', N'乌克兰', N'Ukraine', N'wukelan', N'UKR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'219', N'5', N',5,219,', N'2', N'乌拉圭', N'Uruguay', N'wulagui', N'URY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'220', N'1', N',1,220,', N'2', N'乌兹别克斯坦', N'Uzbekistan', N'wuzibiekesitan', N'UZB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'221', N'2', N',2,221,', N'2', N'西班牙', N'Spain', N'xibanya', N'ESP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'222', N'2', N',2,222,', N'2', N'希腊', N'Greece', N'xila', N'GRC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'223', N'1', N',1,223,', N'2', N'新加坡', N'Singapore', N'xinjiapo', N'SGP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'224', N'6', N',6,224,', N'2', N'新喀里多尼亚', N'New Caledonia', N'xinkaliduoniya', N'NCL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'225', N'6', N',6,225,', N'2', N'新西兰', N'New Zealand', N'xinxilan', N'NZL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'226', N'2', N',2,226,', N'2', N'匈牙利', N'Hungary', N'xiongyali', N'HUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'227', N'1', N',1,227,', N'2', N'叙利亚', N'Syria', N'xuliya', N'SYR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'228', N'4', N',4,228,', N'2', N'牙买加', N'Jamaica', N'yamaijia', N'JAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'229', N'1', N',1,229,', N'2', N'亚美尼亚', N'Armenia', N'yameiniya', N'ARM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'230', N'1', N',1,230,', N'2', N'也门', N'Yemen', N'yemen', N'YEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'231', N'1', N',1,231,', N'2', N'伊拉克', N'Iraq', N'yilake', N'IRQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'232', N'1', N',1,232,', N'2', N'伊朗', N'Iran', N'yilang', N'IRN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'233', N'1', N',1,233,', N'2', N'以色列', N'Israel', N'yiselie', N'ISR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'234', N'2', N',2,234,', N'2', N'意大利', N'Italy', N'yidali', N'ITA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'235', N'1', N',1,235,', N'2', N'印度', N'India', N'yindu', N'IND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'236', N'1', N',1,236,', N'2', N'印度尼西亚', N'Indonesia', N'yindunixiya', N'IDN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'237', N'2', N',2,237,', N'2', N'英国', N'United Kingdom', N'yingguo', N'GBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'238', N'3', N',3,238,', N'2', N'英属印度洋领地', N'British Indian Ocean Territory', N'yingshuyinduyanglingdi', N'IOT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'239', N'1', N',1,239,', N'2', N'约旦', N'Jordan', N'yuedan', N'JOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'240', N'1', N',1,240,', N'2', N'越南', N'Vietnam', N'yuenan', N'VNM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'241', N'3', N',3,241,', N'2', N'赞比亚', N'Zambia', N'zanbiya', N'ZMB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'242', N'2', N',2,242,', N'2', N'泽西岛', N'Jersey', N'zexidao', N'JEY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'243', N'3', N',3,243,', N'2', N'乍得', N'Chad', N'zhade', N'TCD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'244', N'3', N',3,244,', N'2', N'直布罗陀', N'Gibraltar', N'zhibuluotuo', N'GIB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'245', N'5', N',5,245,', N'2', N'智利', N'Chile', N'zhili', N'CHL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'246', N'3', N',3,246,', N'2', N'中非共和国', N'Central African Republic', N'zhongfeigongheguo', N'CAF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'247', N'7', N',1,7,247,', N'3', N'北京', N'Beijing', N'beijing', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'248', N'7', N',1,7,248,', N'3', N'天津', N'Tianjin', N'tianjin', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'249', N'7', N',1,7,249,', N'3', N'河北', N'Hebei', N'hebei', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'250', N'7', N',1,7,250,', N'3', N'山西', N'Shanxi', N'shanxi', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'251', N'7', N',1,7,251,', N'3', N'内蒙古', N'Inner Mongolia', N'neimenggu', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'252', N'7', N',1,7,252,', N'3', N'辽宁', N'Liaoning', N'liaoning', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'253', N'7', N',1,7,253,', N'3', N'吉林', N'Jilin', N'jilin', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'254', N'7', N',1,7,254,', N'3', N'黑龙江', N'Heilongjiang', N'heilongjiang', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'255', N'7', N',1,7,255,', N'3', N'上海', N'Shanghai', N'shanghai', N'31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'256', N'7', N',1,7,256,', N'3', N'江苏', N'Jiangsu', N'jiangsu', N'32')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'257', N'7', N',1,7,257,', N'3', N'浙江', N'Zhejiang', N'zhejiang', N'33')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'258', N'7', N',1,7,258,', N'3', N'安徽', N'Anhui', N'anhui', N'34')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'259', N'7', N',1,7,259,', N'3', N'福建', N'Fujian', N'fujian', N'35')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'260', N'7', N',1,7,260,', N'3', N'江西', N'Jiangxi', N'jiangxi', N'36')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'261', N'7', N',1,7,261,', N'3', N'山东', N'Shandong', N'shandong', N'37')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'262', N'7', N',1,7,262,', N'3', N'河南', N'Henan', N'henan', N'41')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'263', N'7', N',1,7,263,', N'3', N'湖北', N'Hubei', N'hubei', N'42')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'264', N'7', N',1,7,264,', N'3', N'湖南', N'Hunan', N'hunan', N'43')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'265', N'7', N',1,7,265,', N'3', N'广东', N'Guangdong', N'guangdong', N'44')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'266', N'7', N',1,7,266,', N'3', N'广西', N'Guangxi', N'guangxi', N'45')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'267', N'7', N',1,7,267,', N'3', N'海南', N'Hainan', N'hainan', N'46')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'268', N'7', N',1,7,268,', N'3', N'重庆', N'Chongqing', N'zhongqing', N'50')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'269', N'7', N',1,7,269,', N'3', N'四川', N'Sichuan', N'sichuan', N'51')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'270', N'7', N',1,7,270,', N'3', N'贵州', N'Guizhou', N'guizhou', N'52')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'271', N'7', N',1,7,271,', N'3', N'云南', N'Yunnan', N'yunnan', N'53')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'272', N'7', N',1,7,272,', N'3', N'西藏', N'Tibet', N'xicang', N'54')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'273', N'7', N',1,7,273,', N'3', N'陕西', N'Shaanxi', N'shanxi', N'61')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'274', N'7', N',1,7,274,', N'3', N'甘肃', N'Gansu', N'gansu', N'62')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'275', N'7', N',1,7,275,', N'3', N'青海', N'Qinghai', N'qinghai', N'63')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'276', N'7', N',1,7,276,', N'3', N'宁夏', N'Ningxia', N'ningxia', N'64')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'277', N'7', N',1,7,277,', N'3', N'新疆', N'Xinjiang', N'xinjiang', N'65')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'278', N'7', N',1,7,278,', N'3', N'台湾', N'Taiwan', N'taiwan', N'71')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'279', N'7', N',1,7,279,', N'3', N'香港', N'Hongkong SAR', N'xianggang', N'81')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'280', N'7', N',1,7,280,', N'3', N'澳门', N'Macao SAR', N'aomen', N'82')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'281', N'25', N',6,25,281,', N'3', N'北部地区', N'Northern Territory', N'beibudiqu', N'NT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'282', N'25', N',6,25,282,', N'3', N'堪培拉', N'Canberra', N'kanpeila', N'ACT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'283', N'25', N',6,25,283,', N'3', N'昆士兰', N'Queensland', N'kunshilan', N'QLD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'284', N'25', N',6,25,284,', N'3', N'南澳大利亚', N'South Australia', N'nanaodaliya', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'285', N'25', N',6,25,285,', N'3', N'塔斯马尼亚', N'Tasmania', N'tasimaniya', N'TAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'286', N'25', N',6,25,286,', N'3', N'维多利亚', N'Victoria', N'weiduoliya', N'VIC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'287', N'25', N',6,25,287,', N'3', N'西澳大利亚', N'Western Australia', N'xiaodaliya', N'WA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'288', N'25', N',6,25,288,', N'3', N'新南威尔士', N'New South Wales', N'xinnanweiershi', N'NSW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'289', N'89', N',1,89,289,', N'3', N'大邱', N'Daegu', N'daqiu', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'290', N'89', N',1,89,290,', N'3', N'大田', N'Daejeon', N'datian', N'30')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'291', N'89', N',1,89,291,', N'3', N'釜山', N'Busan', N'fushan', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'292', N'89', N',1,89,292,', N'3', N'光州', N'Gwangju', N'guangzhou', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'293', N'89', N',1,89,293,', N'3', N'济州特别自治道', N'Jeju-do', N'jizhoutebiezizhidao', N'41')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'294', N'89', N',1,89,294,', N'3', N'江原道', N'Gangwon-do', N'jiangyuandao', N'42')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'295', N'89', N',1,89,295,', N'3', N'京畿道', N'Gyeonggi-do', N'jingdao', N'49')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'296', N'89', N',1,89,296,', N'3', N'庆尚北道', N'Chungcheongbuk-do', N'qingshangbeidao', N'43')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'297', N'89', N',1,89,297,', N'3', N'庆尚南道', N'Chungcheongnam-do', N'qingshangnandao', N'44')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'298', N'89', N',1,89,298,', N'3', N'全罗北道', N'Gyeongsangbuk-do', N'quanluobeidao', N'47')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'299', N'89', N',1,89,299,', N'3', N'全罗南道', N'Gyeongsangnam-do', N'quanluonandao', N'48')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'300', N'89', N',1,89,300,', N'3', N'仁川', N'Incheon', N'renchuan', N'28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'301', N'89', N',1,89,301,', N'3', N'首尔', N'Seoul', N'shouer', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'302', N'89', N',1,89,302,', N'3', N'蔚山', N'Ulsan', N'weishan', N'31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'303', N'89', N',1,89,303,', N'3', N'忠清北道', N'Jeollabuk-do', N'zhongqingbeidao', N'45')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'304', N'89', N',1,89,304,', N'3', N'忠清南道', N'Jeollanam-do', N'zhongqingnandao', N'46')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'305', N'131', N',1,131,305,', N'3', N'槟榔屿', N'Pulau Pinang', N'langyu', N'PH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'306', N'131', N',1,131,306,', N'3', N'玻璃市', N'Perlis', N'bolishi', N'PS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'307', N'131', N',1,131,307,', N'3', N'丁加奴', N'Terengganu', N'dingjianu', N'TR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'308', N'131', N',1,131,308,', N'3', N'吉打', N'Kedah', N'jida', N'KD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'309', N'131', N',1,131,309,', N'3', N'吉兰丹', N'Kelantan', N'jilandan', N'KN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'310', N'131', N',1,131,310,', N'3', N'吉隆坡', N'Kuala Lumpur', N'jilongpo', N'KL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'311', N'131', N',1,131,311,', N'3', N'马六甲', N'Malacca', N'maliujia', N'ML')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'312', N'131', N',1,131,312,', N'3', N'纳闽', N'Labuan', N'namin', N'LB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'313', N'131', N',1,131,313,', N'3', N'彭亨', N'Pahang', N'pengheng', N'PG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'314', N'131', N',1,131,314,', N'3', N'霹雳', N'Perak', N'pi', N'PK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'315', N'131', N',1,131,315,', N'3', N'柔佛', N'Johor', N'roufo', N'JH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'316', N'131', N',1,131,316,', N'3', N'森美兰', N'Negeri Sembilan', N'senmeilan', N'NS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'317', N'131', N',1,131,317,', N'3', N'沙巴', N'Sabah', N'shaba', N'SB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'318', N'131', N',1,131,318,', N'3', N'沙捞越', N'Sarawak', N'shalaoyue', N'SR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'319', N'131', N',1,131,319,', N'3', N'雪兰莪', N'Selangor', N'xuelan', N'SL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'320', N'140', N',4,140,320,', N'3', N'阿肯色', N'Arkansas', N'akense', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'321', N'140', N',4,140,321,', N'3', N'阿拉巴马', N'Alabama', N'alabama', N'AL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'322', N'140', N',4,140,322,', N'3', N'阿拉斯加', N'Alaska', N'alasijia', N'AK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'323', N'140', N',4,140,323,', N'3', N'爱达荷', N'Idaho', N'aidahe', N'ID')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'324', N'140', N',4,140,324,', N'3', N'爱荷华', N'Iowa', N'aihehua', N'IA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'325', N'140', N',4,140,325,', N'3', N'北达科他', N'North Dakota', N'beidaketa', N'ND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'326', N'140', N',4,140,326,', N'3', N'北卡罗来纳', N'North Carolina', N'beikaluolaina', N'NC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'327', N'140', N',4,140,327,', N'3', N'宾夕法尼亚', N'Pennsylvania', N'binxifaniya', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'328', N'140', N',4,140,328,', N'3', N'德克萨斯', N'Texas', N'dekesasi', N'TX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'329', N'140', N',4,140,329,', N'3', N'俄亥俄', N'Ohio', N'ehaie', N'OH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'330', N'140', N',4,140,330,', N'3', N'俄克拉荷马', N'Oklahoma', N'ekelahema', N'OK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'331', N'140', N',4,140,331,', N'3', N'俄勒冈', N'Oregon', N'elegang', N'OR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'332', N'140', N',4,140,332,', N'3', N'佛罗里达', N'Florida', N'foluolida', N'FL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'333', N'140', N',4,140,333,', N'3', N'佛蒙特', N'Vermont', N'fomengte', N'VT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'334', N'140', N',4,140,334,', N'3', N'哥伦比亚特区', N'District of Columbia', N'gelunbiyatequ', N'DC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'335', N'140', N',4,140,335,', N'3', N'华盛顿', N'Washington', N'huashengdun', N'WA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'336', N'140', N',4,140,336,', N'3', N'怀俄明', N'Wyoming', N'huaieming', N'WY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'337', N'140', N',4,140,337,', N'3', N'加利福尼亚', N'California', N'jialifuniya', N'CA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'338', N'140', N',4,140,338,', N'3', N'堪萨斯', N'Kansas', N'kansasi', N'KS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'339', N'140', N',4,140,339,', N'3', N'康涅狄格', N'Connecticut', N'kangniedige', N'CT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'340', N'140', N',4,140,340,', N'3', N'科罗拉多', N'Colorado', N'keluoladuo', N'CO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'341', N'140', N',4,140,341,', N'3', N'肯塔基', N'Kentucky', N'kentaji', N'KY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'342', N'140', N',4,140,342,', N'3', N'路易斯安那', N'Louisiana', N'luyisianna', N'LA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'343', N'140', N',4,140,343,', N'3', N'罗德岛', N'Rhode Island', N'luodedao', N'RI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'344', N'140', N',4,140,344,', N'3', N'马里兰', N'Maryland', N'malilan', N'MD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'345', N'140', N',4,140,345,', N'3', N'马萨诸塞', N'Massachusetts', N'masazhusai', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'346', N'140', N',4,140,346,', N'3', N'蒙大拿', N'Montana', N'mengdana', N'MT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'347', N'140', N',4,140,347,', N'3', N'密苏里', N'Missouri', N'misuli', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'348', N'140', N',4,140,348,', N'3', N'密西西比', N'Mississippi', N'mixixibi', N'MS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'349', N'140', N',4,140,349,', N'3', N'密歇根', N'Michigan', N'mixiegen', N'MI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'350', N'140', N',4,140,350,', N'3', N'缅因', N'Maine', N'mianyin', N'ME')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'351', N'140', N',4,140,351,', N'3', N'明尼苏达', N'Minnesota', N'mingnisuda', N'MN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'352', N'140', N',4,140,352,', N'3', N'南达科他', N'South Dakota', N'nandaketa', N'SD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'353', N'140', N',4,140,353,', N'3', N'南卡罗来纳', N'South Carolina', N'nankaluolaina', N'SC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'354', N'140', N',4,140,354,', N'3', N'内布拉斯加', N'Nebraska', N'neibulasijia', N'NE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'355', N'140', N',4,140,355,', N'3', N'内华达', N'Nevada', N'neihuada', N'NV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'356', N'140', N',4,140,356,', N'3', N'纽约', N'New York', N'niuyue', N'NY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'357', N'140', N',4,140,357,', N'3', N'特拉华', N'Delaware', N'telahua', N'DE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'358', N'140', N',4,140,358,', N'3', N'田纳西', N'Tennessee', N'tiannaxi', N'TN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'359', N'140', N',4,140,359,', N'3', N'威斯康星', N'Wisconsin', N'weisikangxing', N'WI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'360', N'140', N',4,140,360,', N'3', N'维吉尼亚', N'Virginia', N'weijiniya', N'VA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'361', N'140', N',4,140,361,', N'3', N'西佛吉尼亚', N'West Virginia', N'xifojiniya', N'WV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'362', N'140', N',4,140,362,', N'3', N'夏威夷', N'Hawaii', N'xiaweiyi', N'HI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'363', N'140', N',4,140,363,', N'3', N'新罕布什尔', N'New Hampshire', N'xinhanbushier', N'NH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'364', N'140', N',4,140,364,', N'3', N'新墨西哥', N'New Mexico', N'xinmoxige', N'NM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'365', N'140', N',4,140,365,', N'3', N'新泽西', N'New Jersey', N'xinzexi', N'NJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'366', N'140', N',4,140,366,', N'3', N'亚利桑那', N'Arizona', N'yalisangna', N'AZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'367', N'140', N',4,140,367,', N'3', N'伊利诺斯', N'Illinois', N'yilinuosi', N'IL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'368', N'140', N',4,140,368,', N'3', N'印第安那', N'Indiana', N'yindianna', N'IN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'369', N'140', N',4,140,369,', N'3', N'犹他', N'Utah', N'youta', N'UT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'370', N'140', N',4,140,370,', N'3', N'佐治亚', N'Georgia', N'zuozhiya', N'GA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'371', N'237', N',2,237,371,', N'3', N'北爱尔兰', N'Northern Ireland', N'beiaierlan', N'NIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'372', N'237', N',2,237,372,', N'3', N'苏格兰', N'Scotland', N'sugelan', N'SCT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'373', N'237', N',2,237,373,', N'3', N'威尔士', N'Wales', N'weiershi', N'WLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'374', N'237', N',2,237,374,', N'3', N'英格兰', N'England', N'yinggelan', N'ENG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'375', N'8', N',2,8,375,', N'3', N'爱尔巴桑', N'Elbasan', N'aierbasang', N'EL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'376', N'8', N',2,8,376,', N'3', N'迪勃拉', N'Diber', N'dibola', N'DI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'377', N'8', N',2,8,377,', N'3', N'地拉那', N'Tirane', N'dilana', N'TR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'378', N'8', N',2,8,378,', N'3', N'都拉斯', N'Durres', N'dulasi', N'DR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'379', N'8', N',2,8,379,', N'3', N'发罗拉', N'Vlore', N'faluola', N'VL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'380', N'8', N',2,8,380,', N'3', N'费里', N'Fier', N'feili', N'FR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'381', N'8', N',2,8,381,', N'3', N'吉诺卡斯特', N'Gjirokaster', N'jinuokasite', N'GJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'382', N'8', N',2,8,382,', N'3', N'科尔察', N'Korce', N'keercha', N'KO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'383', N'8', N',2,8,383,', N'3', N'库克斯', N'Kukes', N'kukesi', N'KU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'384', N'8', N',2,8,384,', N'3', N'莱什', N'Lezhe', N'laishi', N'LE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'385', N'8', N',2,8,385,', N'3', N'培拉特', N'Berat', N'peilate', N'BR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'386', N'8', N',2,8,386,', N'3', N'斯库台', N'Shkoder', N'sikutai', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'387', N'9', N',3,9,387,', N'3', N'阿德拉尔', N'Adrar', N'adelaer', N'ADR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'388', N'9', N',3,9,388,', N'3', N'阿尔及尔', N'Alger', N'aerjier', N'ALG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'389', N'9', N',3,9,389,', N'3', N'艾因·德夫拉', N'Ain Defla', N'aiyin', N'ADE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'390', N'9', N',3,9,390,', N'3', N'艾因·蒂姆尚特', N'Ain Temouchent', N'aiyin', N'ATE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'391', N'9', N',3,9,391,', N'3', N'安纳巴', N'Annaba', N'annaba', N'AAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'392', N'9', N',3,9,392,', N'3', N'奥兰', N'Oran', N'aolan', N'ORA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'393', N'9', N',3,9,393,', N'3', N'巴特纳', N'Batna', N'batena', N'BAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'394', N'9', N',3,9,394,', N'3', N'贝贾亚', N'Bejaia', N'beijiaya', N'BJA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'395', N'9', N',3,9,395,', N'3', N'贝沙尔', N'Bechar', N'beishaer', N'BEC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'396', N'9', N',3,9,396,', N'3', N'贝伊德', N'El Bayadh', N'beiyide', N'EBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'397', N'9', N',3,9,397,', N'3', N'比斯克拉', N'Biskra', N'bisikela', N'BIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'398', N'9', N',3,9,398,', N'3', N'布尔吉·布阿雷里吉', N'Bordj Bou Arreridj', N'buerji', N'BOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'399', N'9', N',3,9,399,', N'3', N'布利达', N'Blida', N'bulida', N'BLI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'400', N'9', N',3,9,400,', N'3', N'布迈德斯', N'Boumerdes', N'bumaidesi', N'BOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'401', N'9', N',3,9,401,', N'3', N'布依拉', N'Bouira', N'buyila', N'BOA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'402', N'9', N',3,9,402,', N'3', N'蒂巴扎', N'Tipaza', N'dibazha', N'TIP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'403', N'9', N',3,9,403,', N'3', N'蒂斯姆西勒特', N'Tissemsilt', N'disimuxilete', N'TIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'404', N'9', N',3,9,404,', N'3', N'盖尔达耶', N'Ghardaia', N'gaierdaye', N'GHA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'405', N'9', N',3,9,405,', N'3', N'盖尔马', N'Guelma', N'gaierma', N'GUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'406', N'9', N',3,9,406,', N'3', N'罕西拉', N'Khenchela', N'hanxila', N'KHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'407', N'9', N',3,9,407,', N'3', N'赫利赞', N'Relizane', N'helizan', N'REL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'408', N'9', N',3,9,408,', N'3', N'吉杰尔', N'Jijel', N'jijieer', N'JIJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'409', N'9', N',3,9,409,', N'3', N'杰勒法', N'Djelfa', N'jielefa', N'DJE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'410', N'9', N',3,9,410,', N'3', N'君士坦丁', N'Constantine', N'junshitanding', N'CZL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'411', N'9', N',3,9,411,', N'3', N'拉格瓦特', N'Laghouat', N'lagewate', N'LAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'412', N'9', N',3,9,412,', N'3', N'马斯卡拉', N'Mascara', N'masikala', N'MUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'413', N'9', N',3,9,413,', N'3', N'麦迪亚', N'Medea', N'maidiya', N'MED')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'414', N'9', N',3,9,414,', N'3', N'密拉', N'Mila', N'mila', N'MIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'415', N'9', N',3,9,415,', N'3', N'莫斯塔加纳姆', N'Mostaganem', N'mositajianamu', N'MOS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'416', N'9', N',3,9,416,', N'3', N'姆西拉', N'Msila', N'muxila', N'MSI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'417', N'9', N',3,9,417,', N'3', N'纳阿马', N'Naama', N'naama', N'NAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'418', N'9', N',3,9,418,', N'3', N'塞蒂夫', N'Setif', N'saidifu', N'SET')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'419', N'9', N',3,9,419,', N'3', N'赛伊达', N'Saida', N'saiyida', N'SAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'420', N'9', N',3,9,420,', N'3', N'斯基克达', N'Skikda', N'sijikeda', N'SKI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'421', N'9', N',3,9,421,', N'3', N'苏克·阿赫拉斯', N'Souk Ahras', N'suke', N'SAH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'422', N'9', N',3,9,422,', N'3', N'塔里夫', N'El Tarf', N'talifu', N'ETA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'423', N'9', N',3,9,423,', N'3', N'塔曼拉塞特', N'Tamanghasset', N'tamanlasaite', N'TAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'424', N'9', N',3,9,424,', N'3', N'特贝萨', N'Tebessa', N'tebeisa', N'TEB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'425', N'9', N',3,9,425,', N'3', N'特莱姆森', N'Tlemcen', N'telaimusen', N'TLE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'426', N'9', N',3,9,426,', N'3', N'提济乌祖', N'Tizi Ouzou', N'tijiwuzu', N'IOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'427', N'9', N',3,9,427,', N'3', N'提亚雷特', N'Tiaret', N'tiyaleite', N'TIA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'428', N'9', N',3,9,428,', N'3', N'廷杜夫', N'Tindouf', N'tingdufu', N'TIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'429', N'9', N',3,9,429,', N'3', N'瓦德', N'El Oued', N'wade', N'EOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'430', N'9', N',3,9,430,', N'3', N'瓦尔格拉', N'Ouargla', N'waergela', N'OUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'431', N'9', N',3,9,431,', N'3', N'乌姆布阿基', N'Oum el Bouaghi', N'wumubuaji', N'OEB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'432', N'9', N',3,9,432,', N'3', N'西迪贝勒阿贝斯', N'Sidi Bel Abbes', N'xidibeileabeisi', N'SBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'433', N'9', N',3,9,433,', N'3', N'谢里夫', N'Chlef', N'xielifu', N'CHL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'434', N'9', N',3,9,434,', N'3', N'伊利齐', N'Illizi', N'yiliqi', N'ILL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'435', N'10', N',1,10,435,', N'3', N'赫拉特', N'Herat', N'helate', N'HEA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'436', N'10', N',1,10,436,', N'3', N'喀布尔', N'Kabul', N'kabuer', N'KBL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'437', N'10', N',1,10,437,', N'3', N'坎大哈', N'Kandahar', N'kandaha', N'KDH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'438', N'10', N',1,10,438,', N'3', N'马扎里沙里夫', N'Mazar-i Sharif', N'mazhalishalifu', N'MZR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'439', N'11', N',5,11,439,', N'3', N'巴拉那', N'Parana', N'balana', N'PRA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'440', N'11', N',5,11,440,', N'3', N'别德马', N'Viedma', N'biedema', N'VDM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'441', N'11', N',5,11,441,', N'3', N'波萨达斯', N'Posadas', N'bosadasi', N'PSS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'442', N'11', N',5,11,442,', N'3', N'布兰卡港', N'Bahia Blanca', N'bulankagang', N'BHI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'443', N'11', N',5,11,443,', N'3', N'布宜诺斯艾利斯', N'Buenos Aires', N'buyinuosiailisi', N'BUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'444', N'11', N',5,11,444,', N'3', N'福莫萨', N'Formosa', N'fumosa', N'FMA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'445', N'11', N',5,11,445,', N'3', N'胡胡伊', N'Jujuy', N'huhuyi', N'JUJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'446', N'11', N',5,11,446,', N'3', N'卡塔马卡', N'Catamarca', N'katamaka', N'CTC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'447', N'11', N',5,11,447,', N'3', N'科尔多瓦', N'Cordoba', N'keerduowa', N'COR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'448', N'11', N',5,11,448,', N'3', N'科连特斯', N'Corrientes', N'keliantesi', N'CNQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'449', N'11', N',5,11,449,', N'3', N'克劳斯城', N'Villa Krause', N'kelaosicheng', N'VLK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'450', N'11', N',5,11,450,', N'3', N'肯考迪娅', N'Concordia', N'kenkaodi', N'COC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'451', N'11', N',5,11,451,', N'3', N'拉里奥哈', N'La Rioja', N'laliaoha', N'IRJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'452', N'11', N',5,11,452,', N'3', N'拉普拉塔', N'La Plata', N'lapulata', N'LPG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'453', N'11', N',5,11,453,', N'3', N'雷西斯滕匹亚', N'Resistencia', N'leixisipiya', N'RES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'454', N'11', N',5,11,454,', N'3', N'里奥加耶戈斯', N'Rio Gallegos', N'liaojiayegesi', N'RGL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'455', N'11', N',5,11,455,', N'3', N'里奥夸尔托', N'Rio Cuarto', N'liaokuaertuo', N'RCU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'456', N'11', N',5,11,456,', N'3', N'里瓦达维亚海军准将城', N'Comodoro Rivadavia', N'liwadaweiyahaijunzhunjiangcheng', N'CRD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'457', N'11', N',5,11,457,', N'3', N'罗萨里奥', N'Rosario', N'luosaliao', N'ROS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'458', N'11', N',5,11,458,', N'3', N'罗森', N'Rawson', N'luosen', N'RWO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'459', N'11', N',5,11,459,', N'3', N'马德普拉塔', N'Mar del Plata', N'madepulata', N'MDQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'460', N'11', N',5,11,460,', N'3', N'门多萨', N'Mendoza', N'menduosa', N'MDZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'461', N'11', N',5,11,461,', N'3', N'内乌肯', N'Neuquen', N'neiwuken', N'NQN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'462', N'11', N',5,11,462,', N'3', N'萨尔塔', N'Salta', N'saerta', N'SLA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'463', N'11', N',5,11,463,', N'3', N'圣地亚哥-德尔埃斯特罗', N'Santiago del Estero', N'shengdiyagedeeraisiteluo', N'SDE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'464', N'11', N',5,11,464,', N'3', N'圣菲', N'Santa Fe', N'shengfei', N'SFN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'465', N'11', N',5,11,465,', N'3', N'圣胡安', N'San Juan', N'shenghuan', N'UAQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'466', N'11', N',5,11,466,', N'3', N'圣拉斐尔', N'San Rafael', N'shenglaer', N'AFA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'467', N'11', N',5,11,467,', N'3', N'圣路易斯', N'San Luis', N'shengluyisi', N'LUQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'468', N'11', N',5,11,468,', N'3', N'圣罗莎', N'Santa Rosa', N'shengluosha', N'RSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'469', N'11', N',5,11,469,', N'3', N'圣米格尔-德图库曼', N'San Miguel de Tucuman', N'shengmigeerdetukuman', N'SMC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'470', N'11', N',5,11,470,', N'3', N'圣尼古拉斯', N'San Nicolas', N'shengnigulasi', N'SNS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'471', N'11', N',5,11,471,', N'3', N'特雷利乌', N'Trelew', N'teleiliwu', N'REL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'472', N'11', N',5,11,472,', N'3', N'乌斯怀亚', N'Ushuaia', N'wusihuaiya', N'USH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'473', N'12', N',1,12,473,', N'3', N'阿布扎比', N'Abu Dhabi', N'abuzhabi', N'AZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'474', N'12', N',1,12,474,', N'3', N'艾因', N'Al l''Ayn', N'aiyin', N'AL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'475', N'12', N',1,12,475,', N'3', N'迪拜', N'Dubai', N'dibai', N'DU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'476', N'12', N',1,12,476,', N'3', N'沙迦', N'Ash Shariqah', N'sha', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'477', N'14', N',1,14,477,', N'3', N'巴提奈地区', N'Al-Batinah', N'batinaidiqu', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'478', N'14', N',1,14,478,', N'3', N'达希莱地区', N'Az-Zahirah', N'daxilaidiqu', N'ZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'479', N'14', N',1,14,479,', N'3', N'东部地区', N'Ash-Sharqiyah', N'dongbudiqu', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'480', N'14', N',1,14,480,', N'3', N'马斯喀特省', N'Masqat', N'masikatesheng', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'481', N'14', N',1,14,481,', N'3', N'穆桑达姆省', N'Musandam', N'musangdamusheng', N'MU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'482', N'14', N',1,14,482,', N'3', N'内地地区', N'Ad-Dakhiliyah', N'neididiqu', N'DA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'483', N'14', N',1,14,483,', N'3', N'中部地区', N'Al-Wusta', N'zhongbudiqu', N'WU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'484', N'14', N',1,14,484,', N'3', N'佐法尔省', N'Zufar', N'zuofaersheng', N'ZU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'485', N'15', N',1,15,485,', N'3', N'阿布歇隆', N'Abseron', N'abuxielong', N'ABS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'486', N'15', N',1,15,486,', N'3', N'哈奇马斯', N'Xacmaz', N'haqimasi', N'XAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'487', N'15', N',1,15,487,', N'3', N'卡尔巴卡尔', N'Kalbacar', N'kaerbakaer', N'KAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'488', N'15', N',1,15,488,', N'3', N'卡扎赫', N'Qazax', N'kazhahe', N'QAZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'489', N'15', N',1,15,489,', N'3', N'连科兰', N'Lankaran', N'liankelan', N'LAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'490', N'15', N',1,15,490,', N'3', N'密尔-卡拉巴赫', N'Mil-Qarabax', N'mierkalabahe', N'MQA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'491', N'15', N',1,15,491,', N'3', N'穆甘-萨连', N'Mugan-Salyan', N'mugansalian', N'MSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'492', N'15', N',1,15,492,', N'3', N'纳戈尔诺－卡拉巴赫', N'Nagorni-Qarabax', N'nageernuokalabahe', N'NQA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'493', N'15', N',1,15,493,', N'3', N'纳希切万', N'Naxcivan', N'naxiqiewan', N'NX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'494', N'15', N',1,15,494,', N'3', N'普利亚拉克斯', N'Priaraks', N'puliyalakesi', N'PRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'495', N'15', N',1,15,495,', N'3', N'舍基', N'Saki', N'sheji', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'496', N'15', N',1,15,496,', N'3', N'苏姆盖特', N'Sumqayit', N'sumugaite', N'SMC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'497', N'15', N',1,15,497,', N'3', N'锡尔万', N'Sirvan', N'xierwan', N'SIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'498', N'15', N',1,15,498,', N'3', N'占贾', N'Ganca', N'zhanjia', N'GA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'499', N'17', N',3,17,499,', N'3', N'阿斯旺', N'Aswan', N'asiwang', N'ASW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'500', N'17', N',3,17,500,', N'3', N'古尔代盖', N'Al Ghurdaqah', N'guerdaigai', N'GBY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'501', N'17', N',3,17,501,', N'3', N'开罗', N'Cairo', N'kailuo', N'CAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'502', N'17', N',3,17,502,', N'3', N'苏布拉开马', N'Shubra al Khaymah', N'subulakaima', N'SKH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'503', N'17', N',3,17,503,', N'3', N'亚历山大', N'Alexandria', N'yalishanda', N'ALY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'504', N'18', N',3,18,504,', N'3', N'阿法尔', N'Afar', N'afaer', N'AF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'505', N'18', N',3,18,505,', N'3', N'阿姆哈拉', N'Amara', N'amuhala', N'AH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'506', N'18', N',3,18,506,', N'3', N'奥罗米亚', N'Oromiya', N'aoluomiya', N'OR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'507', N'18', N',3,18,507,', N'3', N'宾香古尔', N'Binshangul Gumuz', N'binxiangguer', N'BG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'508', N'18', N',3,18,508,', N'3', N'德雷达瓦', N'Dire Dawa', N'deleidawa', N'DD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'509', N'18', N',3,18,509,', N'3', N'甘贝拉各族', N'Gambela Hizboch', N'ganbeilagezu', N'GB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'510', N'18', N',3,18,510,', N'3', N'哈勒里民族', N'Hareri  Hizb', N'haleliminzu', N'HR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'511', N'18', N',3,18,511,', N'3', N'南方各族', N'YeDebub Biheroch', N'nanfanggezu', N'SN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'512', N'18', N',3,18,512,', N'3', N'索马里', N'Sumale', N'suomali', N'SM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'513', N'18', N',3,18,513,', N'3', N'提格雷', N'Tigray', N'tigelei', N'TG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'514', N'18', N',3,18,514,', N'3', N'亚的斯亚贝巴', N'Adis abeba', N'yadesiyabeiba', N'AA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'515', N'19', N',2,19,515,', N'3', N'奥法利', N'Offaly', N'aofali', N'OF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'516', N'19', N',2,19,516,', N'3', N'蒂珀雷里', N'Tipperary', N'dileili', N'TP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'517', N'19', N',2,19,517,', N'3', N'都柏林', N'Dublin', N'dubailin', N'DB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'518', N'19', N',2,19,518,', N'3', N'多内加尔', N'Donegal', N'duoneijiaer', N'DG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'519', N'19', N',2,19,519,', N'3', N'戈尔韦', N'Galway', N'geerwei', N'GW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'520', N'19', N',2,19,520,', N'3', N'基尔代尔', N'Kildare', N'jierdaier', N'KD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'521', N'19', N',2,19,521,', N'3', N'基尔肯尼', N'Kilkenny', N'jierkenni', N'KK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'522', N'19', N',2,19,522,', N'3', N'卡范', N'Cavan', N'kafan', N'CV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'523', N'19', N',2,19,523,', N'3', N'卡洛', N'Carlow', N'kaluo', N'CW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'524', N'19', N',2,19,524,', N'3', N'凯里', N'Kerry', N'kaili', N'KR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'525', N'19', N',2,19,525,', N'3', N'科克', N'Cork', N'keke', N'CK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'526', N'19', N',2,19,526,', N'3', N'克莱尔', N'Clare', N'kelaier', N'CL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'527', N'19', N',2,19,527,', N'3', N'朗福德', N'Longford', N'langfude', N'LF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'528', N'19', N',2,19,528,', N'3', N'劳斯', N'Louth', N'laosi', N'LT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'529', N'19', N',2,19,529,', N'3', N'崂斯', N'Laois', N'si', N'LA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'530', N'19', N',2,19,530,', N'3', N'利默里克', N'Limerick', N'limolike', N'LM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'531', N'19', N',2,19,531,', N'3', N'利特里姆', N'Leitrim', N'litelimu', N'LR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'532', N'19', N',2,19,532,', N'3', N'罗斯康芒', N'Roscommon', N'luosikangmang', N'RC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'533', N'19', N',2,19,533,', N'3', N'梅奥', N'Mayo', N'meiao', N'MY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'534', N'19', N',2,19,534,', N'3', N'米斯', N'Meath', N'misi', N'MT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'535', N'19', N',2,19,535,', N'3', N'莫内根', N'Monaghan', N'moneigen', N'MG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'536', N'19', N',2,19,536,', N'3', N'斯莱戈', N'Sligo', N'silaige', N'SL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'537', N'19', N',2,19,537,', N'3', N'威克洛', N'Wicklow', N'weikeluo', N'WK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'538', N'19', N',2,19,538,', N'3', N'韦克斯福德', N'Wexford', N'weikesifude', N'WX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'539', N'19', N',2,19,539,', N'3', N'沃特福德', N'Waterford', N'wotefude', N'WF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'540', N'19', N',2,19,540,', N'3', N'西米斯', N'Westmeath', N'ximisi', N'WM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'541', N'20', N',2,20,541,', N'3', N'贝尔瓦', N'Polva', N'beierwa', N'65')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'542', N'20', N',2,20,542,', N'3', N'哈留', N'Harju', N'haliu', N'37')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'543', N'20', N',2,20,543,', N'3', N'拉普拉', N'Rapla', N'lapula', N'70')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'544', N'20', N',2,20,544,', N'3', N'里亚内', N'Laane', N'liyanei', N'57')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'545', N'20', N',2,20,545,', N'3', N'帕尔努', N'Parnu', N'paernu', N'67')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'546', N'20', N',2,20,546,', N'3', N'萨雷', N'Saare', N'salei', N'74')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'547', N'20', N',2,20,547,', N'3', N'塔尔图', N'Tartu', N'taertu', N'78')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'548', N'20', N',2,20,548,', N'3', N'瓦尔加', N'Valga', N'waerjia', N'82')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'549', N'20', N',2,20,549,', N'3', N'维良地', N'Viljandi', N'weiliangdi', N'84')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'550', N'20', N',2,20,550,', N'3', N'维鲁', N'Laane-Viru', N'weilu', N'59')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'551', N'20', N',2,20,551,', N'3', N'沃鲁', N'Voru', N'wolu', N'86')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'552', N'20', N',2,20,552,', N'3', N'希尤', N'Hiiu', N'xiyou', N'39')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'553', N'20', N',2,20,553,', N'3', N'耶尔韦', N'Jarva', N'yeerwei', N'51')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'554', N'20', N',2,20,554,', N'3', N'耶盖瓦', N'Jogeva', N'yegaiwa', N'49')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'555', N'20', N',2,20,555,', N'3', N'依达－维鲁', N'Ida-Viru', N'yidaweilu', N'44')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'556', N'21', N',2,21,556,', N'3', N'安道尔城', N'Andorra la Vella', N'andaoercheng', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'557', N'21', N',2,21,557,', N'3', N'奥尔迪诺', N'Ordino', N'aoerdinuo', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'558', N'21', N',2,21,558,', N'3', N'恩坎普', N'Encamp', N'enkanpu', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'559', N'21', N',2,21,559,', N'3', N'卡尼略', N'Canillo', N'kanilue', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'560', N'21', N',2,21,560,', N'3', N'莱塞斯卡尔德－恩戈尔达', N'Escaldes-Engordany', N'laisaisikaerdeengeerda', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'561', N'21', N',2,21,561,', N'3', N'马萨纳', N'La Massana', N'masana', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'562', N'21', N',2,21,562,', N'3', N'圣胡利娅－德洛里亚', N'Sant Julia de Laria', N'shenghulideluoliya', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'563', N'22', N',3,22,563,', N'3', N'北宽扎', N'Cuanza Norte', N'beikuanzha', N'CNO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'564', N'22', N',3,22,564,', N'3', N'北隆达', N'Lunda Norte', N'beilongda', N'LNO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'565', N'22', N',3,22,565,', N'3', N'本戈', N'Bengo', N'benge', N'BGO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'566', N'22', N',3,22,566,', N'3', N'本格拉', N'Benguela', N'bengela', N'BGU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'567', N'22', N',3,22,567,', N'3', N'比耶', N'Bie', N'biye', N'BIE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'568', N'22', N',3,22,568,', N'3', N'卡宾达', N'Cabinda', N'kabinda', N'CAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'569', N'22', N',3,22,569,', N'3', N'库内内', N'Cunene', N'kuneinei', N'CNN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'570', N'22', N',3,22,570,', N'3', N'宽多库邦戈', N'Cuando Cubango', N'kuanduokubangge', N'CCU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'571', N'22', N',3,22,571,', N'3', N'罗安达', N'Luanda', N'luoanda', N'LUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'572', N'22', N',3,22,572,', N'3', N'马兰热', N'Malanje', N'malanre', N'MAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'573', N'22', N',3,22,573,', N'3', N'莫希科', N'Moxico', N'moxike', N'MOX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'574', N'22', N',3,22,574,', N'3', N'纳米贝', N'Namibe', N'namibei', N'NAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'575', N'22', N',3,22,575,', N'3', N'南宽扎', N'Cuanza Sul', N'nankuanzha', N'CUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'576', N'22', N',3,22,576,', N'3', N'南隆达', N'Lunda Sul', N'nanlongda', N'LSU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'577', N'22', N',3,22,577,', N'3', N'万博', N'Huambo', N'wanbo', N'HUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'578', N'22', N',3,22,578,', N'3', N'威拉', N'Huila', N'weila', N'HUI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'579', N'22', N',3,22,579,', N'3', N'威热', N'Uige', N'weire', N'UIG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'580', N'22', N',3,22,580,', N'3', N'扎伊尔', N'Zaire', N'zhayier', N'ZAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'581', N'26', N',2,26,581,', N'3', N'布尔根兰', N'Burgenland', N'buergenlan', N'BUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'582', N'26', N',2,26,582,', N'3', N'蒂罗尔', N'Tyrol', N'diluoer', N'TYR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'583', N'26', N',2,26,583,', N'3', N'福拉尔贝格', N'Vorarlberg', N'fulaerbeige', N'VOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'584', N'26', N',2,26,584,', N'3', N'克恩顿', N'Carinthia', N'keendun', N'CAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'585', N'26', N',2,26,585,', N'3', N'萨尔茨堡', N'Salzburg', N'saercibao', N'SZG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'586', N'26', N',2,26,586,', N'3', N'上奥地利', N'Upper Austria', N'shangaodili', N'UAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'587', N'26', N',2,26,587,', N'3', N'施蒂利亚', N'Styria', N'shidiliya', N'STY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'588', N'26', N',2,26,588,', N'3', N'维也纳', N'Vienna', N'weiyena', N'VDD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'589', N'26', N',2,26,589,', N'3', N'下奥地利', N'Lower Austria', N'xiaaodili', N'LAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'590', N'29', N',6,29,590,', N'3', N'北部', N'Northern', N'beibu', N'NO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'591', N'29', N',6,29,591,', N'3', N'布干维尔', N'Bougainville', N'buganweier', N'BV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'592', N'29', N',6,29,592,', N'3', N'东部高地', N'Eastern Highlands', N'dongbugaodi', N'EH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'593', N'29', N',6,29,593,', N'3', N'东塞皮克', N'East Sepik', N'dongsaipike', N'ES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'594', N'29', N',6,29,594,', N'3', N'东新不列颠', N'East New Britain', N'dongxinbuliedian', N'EB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'595', N'29', N',6,29,595,', N'3', N'恩加', N'Enga', N'enjia', N'EN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'596', N'29', N',6,29,596,', N'3', N'海湾', N'Gulf', N'haiwan', N'GU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'597', N'29', N',6,29,597,', N'3', N'马当', N'Madang', N'madang', N'MD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'598', N'29', N',6,29,598,', N'3', N'马努斯', N'Manus', N'manusi', N'MN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'599', N'29', N',6,29,599,', N'3', N'米尔恩湾', N'Milne Bay', N'mierenwan', N'MB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'600', N'29', N',6,29,600,', N'3', N'莫尔兹比港', N'Port Moresby', N'moerzibigang', N'NC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'601', N'29', N',6,29,601,', N'3', N'莫罗贝', N'Morobe', N'moluobei', N'MR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'602', N'29', N',6,29,602,', N'3', N'南部高地', N'Southern Highlands', N'nanbugaodi', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'603', N'29', N',6,29,603,', N'3', N'钦布', N'Simbu', N'qinbu', N'SI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'604', N'29', N',6,29,604,', N'3', N'桑道恩', N'Sandaun', N'sangdaoen', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'605', N'29', N',6,29,605,', N'3', N'西部', N'Western', N'xibu', N'WE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'606', N'29', N',6,29,606,', N'3', N'西部高地', N'Western Highlands', N'xibugaodi', N'WH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'607', N'29', N',6,29,607,', N'3', N'西新不列颠', N'West New Britain', N'xixinbuliedian', N'WB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'608', N'29', N',6,29,608,', N'3', N'新爱尔兰', N'New Ireland', N'xinaierlan', N'NI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'609', N'31', N',1,31,609,', N'3', N'白沙瓦', N'Peshawar', N'baishawa', N'PEW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'610', N'31', N',1,31,610,', N'3', N'费萨拉巴德', N'Faisalabad', N'feisalabade', N'LYP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'611', N'31', N',1,31,611,', N'3', N'故吉软瓦拉', N'Gujranwala', N'gujiruanwala', N'GUJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'612', N'31', N',1,31,612,', N'3', N'海德拉巴', N'Hyderabad', N'haidelaba', N'HDD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'613', N'31', N',1,31,613,', N'3', N'卡拉奇', N'Karachi', N'kalaqi', N'KCT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'614', N'31', N',1,31,614,', N'3', N'拉合尔', N'Lahore', N'laheer', N'LHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'615', N'31', N',1,31,615,', N'3', N'拉瓦尔品第', N'Rawalpindi', N'lawaerpindi', N'RWP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'616', N'31', N',1,31,616,', N'3', N'木尔坦', N'Multan', N'muertan', N'MUX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'617', N'31', N',1,31,617,', N'3', N'伊斯兰堡', N'Islamabad', N'yisilanbao', N'ISB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'618', N'32', N',5,32,618,', N'3', N'阿曼拜', N'Amambay', N'amanbai', N'AM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'619', N'32', N',5,32,619,', N'3', N'阿耶斯总统省', N'Presidente Hayes', N'ayesizongtongsheng', N'PH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'620', N'32', N',5,32,620,', N'3', N'巴拉瓜里', N'Paraguari', N'balaguali', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'621', N'32', N',5,32,621,', N'3', N'博克龙', N'Boqueron', N'bokelong', N'BO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'622', N'32', N',5,32,622,', N'3', N'瓜伊拉', N'Guaira', N'guayila', N'GU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'623', N'32', N',5,32,623,', N'3', N'卡瓜苏', N'Caaguazu', N'kaguasu', N'CG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'624', N'32', N',5,32,624,', N'3', N'卡嫩迪尤', N'Canindeyu', N'kanendiyou', N'CN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'625', N'32', N',5,32,625,', N'3', N'卡萨帕', N'Caazapa', N'kasapa', N'CZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'626', N'32', N',5,32,626,', N'3', N'康塞普西翁', N'Concepcion', N'kangsaipuxiweng', N'CC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'627', N'32', N',5,32,627,', N'3', N'科迪勒拉', N'Cordillera', N'kedilela', N'CD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'628', N'32', N',5,32,628,', N'3', N'米西奥内斯', N'Misiones', N'mixiaoneisi', N'MI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'629', N'32', N',5,32,629,', N'3', N'涅恩布库', N'Neembucu', N'nieenbuku', N'NE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'630', N'32', N',5,32,630,', N'3', N'上巴拉圭', N'Alto Paraguay', N'shangbalagui', N'AG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'631', N'32', N',5,32,631,', N'3', N'上巴拉那', N'Alto Parana', N'shangbalana', N'AN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'632', N'32', N',5,32,632,', N'3', N'圣佩德罗', N'San Pedro', N'shengpeideluo', N'SP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'633', N'32', N',5,32,633,', N'3', N'亚松森特别区', N'Asuncion', N'yasongsentebiequ', N'AS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'634', N'32', N',5,32,634,', N'3', N'伊塔普亚', N'Itapua', N'yitapuya', N'IT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'635', N'32', N',5,32,635,', N'3', N'中央', N'Central', N'zhongyang', N'CE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'636', N'33', N',1,33,636,', N'3', N'加沙地带', N'Gaza Strip', N'jiashadidai', N'GZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'637', N'33', N',1,33,637,', N'3', N'西岸', N'West Bank', N'xian', N'WE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'638', N'34', N',1,34,638,', N'3', N'北部', N'Ash-Shamaliyah', N'beibu', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'639', N'34', N',1,34,639,', N'3', N'哈德', N'Al-Hadd', N'hade', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'640', N'34', N',1,34,640,', N'3', N'哈马德', N'Hammad', N'hamade', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'641', N'34', N',1,34,641,', N'3', N'里法', N'Ar-Rifa', N'lifa', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'642', N'34', N',1,34,642,', N'3', N'麦纳麦', N'Al-Manamah', N'mainamai', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'643', N'34', N',1,34,643,', N'3', N'穆哈拉格', N'Al-Muharraq', N'muhalage', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'644', N'34', N',1,34,644,', N'3', N'西部', N'Al-Gharbiyah', N'xibu', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'645', N'34', N',1,34,645,', N'3', N'伊萨城', N'Isa', N'yisacheng', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'646', N'34', N',1,34,646,', N'3', N'中部', N'Al-Wusta', N'zhongbu', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'647', N'36', N',5,36,647,', N'3', N'阿克里', N'Acre', N'akeli', N'AC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'648', N'36', N',5,36,648,', N'3', N'阿拉戈斯', N'Alagoas', N'alagesi', N'AL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'649', N'36', N',5,36,649,', N'3', N'阿马帕', N'Amapa', N'amapa', N'AP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'650', N'36', N',5,36,650,', N'3', N'巴拉那', N'Parana', N'balana', N'PR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'651', N'36', N',5,36,651,', N'3', N'巴西利亚', N'Brasilia', N'baxiliya', N'BSB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'652', N'36', N',5,36,652,', N'3', N'巴伊亚', N'Bahia', N'bayiya', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'653', N'36', N',5,36,653,', N'3', N'北里奥格兰德', N'Rio Grande do Norte', N'beiliaogelande', N'RN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'654', N'36', N',5,36,654,', N'3', N'伯南布哥', N'Pernambuco', N'bonanbuge', N'PE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'655', N'36', N',5,36,655,', N'3', N'戈亚斯', N'Goias', N'geyasi', N'GO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'656', N'36', N',5,36,656,', N'3', N'朗多尼亚', N'Rondonia', N'langduoniya', N'RO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'657', N'36', N',5,36,657,', N'3', N'里约热内卢', N'Rio de Janeiro', N'liyuereneilu', N'RJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'658', N'36', N',5,36,658,', N'3', N'罗赖马', N'Roraima', N'luolaima', N'RR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'659', N'36', N',5,36,659,', N'3', N'马拉尼昂', N'Maranhao', N'malaniang', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'660', N'36', N',5,36,660,', N'3', N'马托格罗索', N'Mato Grosso', N'matuogeluosuo', N'MT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'661', N'36', N',5,36,661,', N'3', N'米纳斯吉拉斯', N'Minas Gerais', N'minasijilasi', N'MG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'662', N'36', N',5,36,662,', N'3', N'南里奥格兰德', N'Rio Grande do Sul', N'nanliaogelande', N'RS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'663', N'36', N',5,36,663,', N'3', N'南马托格罗索', N'Mato Grosso do Sul', N'nanmatuogeluosuo', N'MS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'664', N'36', N',5,36,664,', N'3', N'帕拉', N'Para', N'pala', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'665', N'36', N',5,36,665,', N'3', N'帕拉伊巴', N'Paraiba', N'palayiba', N'PB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'666', N'36', N',5,36,666,', N'3', N'皮奥伊', N'Piaui', N'piaoyi', N'PI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'667', N'36', N',5,36,667,', N'3', N'塞阿拉', N'Ceara', N'saiala', N'CE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'668', N'36', N',5,36,668,', N'3', N'塞尔希培', N'Sergipe', N'saierxipei', N'SE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'669', N'36', N',5,36,669,', N'3', N'圣埃斯皮里图', N'Espirito Santo', N'shengaisipilitu', N'ES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'670', N'36', N',5,36,670,', N'3', N'圣保罗', N'Sao Paulo', N'shengbaoluo', N'SP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'671', N'36', N',5,36,671,', N'3', N'圣卡塔琳娜', N'Santa Catarina', N'shengkatalinna', N'SC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'672', N'36', N',5,36,672,', N'3', N'托坎廷斯', N'Tocantins', N'tuokantingsi', N'TO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'673', N'36', N',5,36,673,', N'3', N'亚马孙', N'Amazonas', N'yamasun', N'AM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'674', N'37', N',2,37,674,', N'3', N'布列斯特', N'Bresckaja', N'buliesite', N'BR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'675', N'37', N',2,37,675,', N'3', N'戈梅利', N'Homelskaja', N'gemeili', N'HO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'676', N'37', N',2,37,676,', N'3', N'格罗德诺', N'Hrodzenskaja', N'geluodenuo', N'HR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'677', N'37', N',2,37,677,', N'3', N'明斯克市', N'Minsk', N'mingsikeshi', N'MI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'678', N'37', N',2,37,678,', N'3', N'莫吉廖夫', N'Mahileuskaja', N'mojiliaofu', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'679', N'37', N',2,37,679,', N'3', N'维捷布斯克', N'Vicebskaja', N'weijiebusike', N'VI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'680', N'39', N',2,39,680,', N'3', N'布尔加斯', N'Burgas', N'buerjiasi', N'BOJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'681', N'39', N',2,39,681,', N'3', N'卡斯科伏', N'Khaskovo', N'kasikefu', N'KHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'682', N'39', N',2,39,682,', N'3', N'鲁塞', N'Ruse', N'lusai', N'ROU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'683', N'39', N',2,39,683,', N'3', N'洛维奇', N'Lovech', N'luoweiqi', N'LVP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'684', N'39', N',2,39,684,', N'3', N'蒙塔纳', N'Montana', N'mengtana', N'OZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'685', N'39', N',2,39,685,', N'3', N'普罗夫迪夫', N'Plovdiv', N'puluofudifu', N'PDV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'686', N'39', N',2,39,686,', N'3', N'索非亚', N'Sofiya', N'suofeiya', N'SOF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'687', N'39', N',2,39,687,', N'3', N'索非亚市', N'Grad Sofiya', N'suofeiyashi', N'GSO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'688', N'39', N',2,39,688,', N'3', N'瓦尔纳', N'Varna', N'waerna', N'VAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'689', N'41', N',3,41,689,', N'3', N'阿黎博里', N'Alibori', N'aliboli', N'AL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'690', N'41', N',3,41,690,', N'3', N'阿塔科拉', N'Atakora', N'atakela', N'AK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'691', N'41', N',3,41,691,', N'3', N'滨海', N'Littoral', N'binhai', N'LI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'692', N'41', N',3,41,692,', N'3', N'波希康市', N'Bohicon', N'boxikangshi', N'BOH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'693', N'41', N',3,41,693,', N'3', N'博尔古', N'Borgou', N'boergu', N'BO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'694', N'41', N',3,41,694,', N'3', N'大西洋', N'Atlantique', N'daxiyang', N'AQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'695', N'41', N',3,41,695,', N'3', N'高原', N'Plateau', N'gaoyuan', N'PL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'696', N'41', N',3,41,696,', N'3', N'库福', N'Kouffo', N'kufu', N'KO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'697', N'41', N',3,41,697,', N'3', N'莫诺', N'Mono', N'monuo', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'698', N'41', N',3,41,698,', N'3', N'丘陵', N'Collines', N'qiuling', N'CO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'699', N'41', N',3,41,699,', N'3', N'韦梅', N'Oueme', N'weimei', N'OU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'700', N'41', N',3,41,700,', N'3', N'峡谷', N'Donga', N'xiagu', N'DO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'701', N'41', N',3,41,701,', N'3', N'祖', N'Zou', N'zu', N'ZO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'702', N'42', N',2,42,702,', N'3', N'埃诺', N'Hainaut', N'ainuo', N'WHT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'703', N'42', N',2,42,703,', N'3', N'安特卫普', N'Antwerpen', N'anteweipu', N'VAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'704', N'42', N',2,42,704,', N'3', N'布拉班特-瓦隆', N'Brabant-Wallone', N'bulabantewalong', N'WBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'705', N'42', N',2,42,705,', N'3', N'布鲁塞尔', N'Brussels', N'bulusaier', N'BRU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'706', N'42', N',2,42,706,', N'3', N'东佛兰德', N'Oost-Vlaanderen', N'dongfolande', N'VOV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'707', N'42', N',2,42,707,', N'3', N'佛兰芒-布拉班特', N'Vlaams-Brabant', N'folanmangbulabante', N'VBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'708', N'42', N',2,42,708,', N'3', N'列日', N'Liege', N'lieri', N'WLG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'709', N'42', N',2,42,709,', N'3', N'林堡', N'Limburg', N'linbao', N'VLI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'710', N'42', N',2,42,710,', N'3', N'卢森堡', N'Luxembourg', N'lusenbao', N'WLX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'711', N'42', N',2,42,711,', N'3', N'那慕尔', N'Namur', N'namuer', N'WNA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'712', N'42', N',2,42,712,', N'3', N'西佛兰德', N'West-Vlaanderen', N'xifolande', N'VWV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'713', N'45', N',2,45,713,', N'3', N'埃尔布隆格', N'Elbląg', N'aierbulongge', N'ELB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'714', N'45', N',2,45,714,', N'3', N'奥尔什丁', N'Olsztyn', N'aoershiding', N'OLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'715', N'45', N',2,45,715,', N'3', N'奥斯特罗文卡', N'Ostrołeka', N'aositeluowenka', N'OSS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'716', N'45', N',2,45,716,', N'3', N'比得哥什', N'Bydgoszcz', N'bidegeshi', N'BZG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'717', N'45', N',2,45,717,', N'3', N'彼得库夫', N'Piotrkow', N'bidekufu', N'PIO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'718', N'45', N',2,45,718,', N'3', N'比托姆', N'Bytom', N'bituomu', N'BYT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'719', N'45', N',2,45,719,', N'3', N'比亚瓦波德拉斯卡', N'Biała Podlaska', N'biyawabodelasika', N'BAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'720', N'45', N',2,45,720,', N'3', N'比亚维斯托克', N'Białystok', N'biyaweisituoke', N'BIA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'721', N'45', N',2,45,721,', N'3', N'波莱', N'Opole', N'bolai', N'OPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'722', N'45', N',2,45,722,', N'3', N'波兹南', N'Poznan', N'bozinan', N'POZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'723', N'45', N',2,45,723,', N'3', N'达布罗瓦戈尼察', N'Dabrowa Gornicza', N'dabuluowagenicha', N'DAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'724', N'45', N',2,45,724,', N'3', N'大波兰地区戈茹夫', N'Gorzow Wlkp', N'dabolandiqugerufu', N'GOW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'725', N'45', N',2,45,725,', N'3', N'弗罗茨瓦夫', N'Wroclaw', N'fuluociwafu', N'WRO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'726', N'45', N',2,45,726,', N'3', N'弗沃茨瓦韦克', N'Wlocławek', N'fuwociwaweike', N'WLO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'727', N'45', N',2,45,727,', N'3', N'格但斯克', N'Gdansk', N'gedansike', N'GDN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'728', N'45', N',2,45,728,', N'3', N'格丁尼亚', N'Gdynia', N'gedingniya', N'GDY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'729', N'45', N',2,45,729,', N'3', N'格利维采', N'Gliwice', N'geliweicai', N'GWC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'730', N'45', N',2,45,730,', N'3', N'格鲁琼兹', N'Grudziadz', N'geluqiongzi', N'GRU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'731', N'45', N',2,45,731,', N'3', N'海乌姆', N'Chełm', N'haiwumu', N'CHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'732', N'45', N',2,45,732,', N'3', N'华沙', N'Warszawa', N'huasha', N'WAW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'733', N'45', N',2,45,733,', N'3', N'霍茹夫', N'Chorzow', N'huorufu', N'CHZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'734', N'45', N',2,45,734,', N'3', N'卡利什', N'Kalisz', N'kalishi', N'KAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'735', N'45', N',2,45,735,', N'3', N'卡托维兹', N'Katowice', N'katuoweizi', N'KTW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'736', N'45', N',2,45,736,', N'3', N'凯尔采', N'Kielce', N'kaiercai', N'KLC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'737', N'45', N',2,45,737,', N'3', N'科宁', N'Konin', N'kening', N'KON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'738', N'45', N',2,45,738,', N'3', N'科沙林', N'Koszalin', N'keshalin', N'OSZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'739', N'45', N',2,45,739,', N'3', N'克拉科夫', N'Krakow', N'kelakefu', N'KRK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'740', N'45', N',2,45,740,', N'3', N'克罗斯诺', N'Krosno', N'keluosinuo', N'KRO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'741', N'45', N',2,45,741,', N'3', N'拉多姆', N'Radom', N'laduomu', N'RDM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'742', N'45', N',2,45,742,', N'3', N'莱格尼察', N'Legnica', N'laigenicha', N'LEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'743', N'45', N',2,45,743,', N'3', N'莱什诺', N'Leszno', N'laishinuo', N'LEZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'744', N'45', N',2,45,744,', N'3', N'卢布林', N'Lublin', N'lubulin', N'LUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'745', N'45', N',2,45,745,', N'3', N'鲁达', N'Ruda Sl', N'luda', N'RDS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'746', N'45', N',2,45,746,', N'3', N'罗兹', N'Lodz', N'luozi', N'LOD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'747', N'45', N',2,45,747,', N'3', N'绿山城', N'Zielona Gora', N'lvshancheng', N'IEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'748', N'45', N',2,45,748,', N'3', N'米什洛维采', N'Mysłowice', N'mishiluoweicai', N'MYL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'749', N'45', N',2,45,749,', N'3', N'皮瓦', N'Piła', N'piwa', N'PIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'750', N'45', N',2,45,750,', N'3', N'普热梅希尔', N'Przemysl', N'puremeixier', N'PRZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'751', N'45', N',2,45,751,', N'3', N'普沃茨克', N'Plock', N'puwocike', N'PLO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'752', N'45', N',2,45,752,', N'3', N'切哈努夫', N'Ciechanow', N'qiehanufu', N'CIE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'753', N'45', N',2,45,753,', N'3', N'热舒夫', N'Rzeszow', N'reshufu', N'RZE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'754', N'45', N',2,45,754,', N'3', N'什切青', N'Szczecin', N'shiqieqing', N'SZZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'755', N'45', N',2,45,755,', N'3', N'斯凯尔涅维采', N'Skierniewice', N'sikaiernieweicai', N'SKI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'756', N'45', N',2,45,756,', N'3', N'斯武普斯克', N'Slupsk', N'siwupusike', N'SLP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'757', N'45', N',2,45,757,', N'3', N'苏瓦乌基', N'Suwałki', N'suwawuji', N'SWL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'758', N'45', N',2,45,758,', N'3', N'索波特', N'Sopot', N'suobote', N'SOP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'759', N'45', N',2,45,759,', N'3', N'索斯诺维茨', N'Sosnowiec', N'suosinuoweici', N'SWC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'760', N'45', N',2,45,760,', N'3', N'塔尔努夫', N'Tarnow', N'taernufu', N'TAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'761', N'45', N',2,45,761,', N'3', N'塔尔诺布热格', N'Tarnobrzeg', N'taernuoburege', N'QEP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'762', N'45', N',2,45,762,', N'3', N'特切', N'Tychy', N'teqie', N'TYY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'763', N'45', N',2,45,763,', N'3', N'托伦', N'Torun', N'tuolun', N'TOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'764', N'45', N',2,45,764,', N'3', N'瓦乌布日赫', N'Walbrzych', N'wawuburihe', N'WZH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'765', N'45', N',2,45,765,', N'3', N'沃姆扎', N'Lomza', N'womuzha', N'QOY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'766', N'45', N',2,45,766,', N'3', N'希米亚诺维采', N'Siemianowice Sl', N'ximiyanuoweicai', N'SOW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'767', N'45', N',2,45,767,', N'3', N'希维诺乌伊希切', N'Swinoujscie', N'xiweinuowuyixiqie', N'SWI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'768', N'45', N',2,45,768,', N'3', N'希维托赫洛维采', N'Swietochłowice', N'xiweituoheluoweicai', N'SWT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'769', N'45', N',2,45,769,', N'3', N'谢德尔采', N'Siedlce', N'xiedeercai', N'SDC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'770', N'45', N',2,45,770,', N'3', N'谢拉兹', N'Sieradz', N'xielazi', N'SIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'771', N'45', N',2,45,771,', N'3', N'新松奇', N'Nowy Sacz', N'xinsongqi', N'NOW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'772', N'45', N',2,45,772,', N'3', N'雅沃兹诺', N'Jaworzno', N'yawozinuo', N'JAW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'773', N'45', N',2,45,773,', N'3', N'耶莱尼亚古拉', N'Jelenia Gora', N'yelainiyagula', N'JEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'774', N'45', N',2,45,774,', N'3', N'扎布热', N'Zabrze', N'zhabure', N'ZAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'775', N'45', N',2,45,775,', N'3', N'扎莫希奇', N'Zamosc', N'zhamoxiqi', N'ZAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'776', N'46', N',5,46,776,', N'3', N'奥尔托', N'El Alto', N'aoertuo', N'ALT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'777', N'46', N',5,46,777,', N'3', N'奥鲁罗', N'Oruro', N'aoluluo', N'ORU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'778', N'46', N',5,46,778,', N'3', N'贝尼', N'El Beni', N'beini', N'BEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'779', N'46', N',5,46,779,', N'3', N'波多西', N'Potosi', N'boduoxi', N'POI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'780', N'46', N',5,46,780,', N'3', N'基拉科洛', N'Quillacollo', N'jilakeluo', N'QUI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'781', N'46', N',5,46,781,', N'3', N'科恰班巴', N'Cochabamba', N'keqiabanba', N'CBB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'782', N'46', N',5,46,782,', N'3', N'拉巴斯', N'La Paz', N'labasi', N'LPB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'783', N'46', N',5,46,783,', N'3', N'潘多', N'Pando', N'panduo', N'PAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'784', N'46', N',5,46,784,', N'3', N'丘基萨卡', N'Chuquisaca', N'qiujisaka', N'CHU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'785', N'46', N',5,46,785,', N'3', N'萨卡巴', N'Sacaba', N'sakaba', N'SAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'786', N'46', N',5,46,786,', N'3', N'圣克鲁斯', N'Santa Cruz', N'shengkelusi', N'SRZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'787', N'46', N',5,46,787,', N'3', N'塔里哈', N'Tarija', N'taliha', N'TJA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'788', N'47', N',2,47,788,', N'3', N'波萨维纳', N'Posavski', N'bosaweina', N'FPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'789', N'47', N',2,47,789,', N'3', N'波斯尼亚－波德里涅', N'Bosansko-Podrinjski', N'bosiniyabodelinie', N'FBP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'790', N'47', N',2,47,790,', N'3', N'多米斯拉夫格勒', N'Tomislavgrad', N'duomisilafugele', N'FTO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'791', N'47', N',2,47,791,', N'3', N'黑塞哥维那－涅雷特瓦', N'Hercegovacko-Neretvanski', N'heisaigeweinanieleitewa', N'FHN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'792', N'47', N',2,47,792,', N'3', N'萨拉热窝', N'Sarajevo', N'salarewo', N'FSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'793', N'47', N',2,47,793,', N'3', N'图兹拉－波德里涅', N'Tuzlanski-Podrinjski', N'tuzilabodelinie', N'FTU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'794', N'47', N',2,47,794,', N'3', N'乌纳－萨纳', N'Unsko-Sanski', N'wunasana', N'FUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'795', N'47', N',2,47,795,', N'3', N'西波斯尼亚', N'Hercegovacko-Bosanski', N'xibosiniya', N'FHB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'796', N'47', N',2,47,796,', N'3', N'西黑塞哥维那', N'Zapadno-Hercegovaki', N'xiheisaigeweina', N'FZH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'797', N'47', N',2,47,797,', N'3', N'泽尼察－多博伊', N'Zenicko-Dobojski', N'zenichaduoboyi', N'FZE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'798', N'47', N',2,47,798,', N'3', N'中波斯尼亚', N'Srednjo-Bosanski', N'zhongbosiniya', N'FSB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'799', N'49', N',4,49,799,', N'3', N'伯利兹', N'Belize', N'bolizi', N'BZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'800', N'49', N',4,49,800,', N'3', N'橘园', N'Orange Walk', N'yuan', N'OW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'801', N'49', N',4,49,801,', N'3', N'卡约', N'Cayo', N'kayue', N'CY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'802', N'49', N',4,49,802,', N'3', N'科罗萨尔', N'Corozal', N'keluosaer', N'CR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'803', N'49', N',4,49,803,', N'3', N'斯坦港', N'Stann Creek', N'sitangang', N'SC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'804', N'49', N',4,49,804,', N'3', N'托莱多', N'Toledo', N'tuolaiduo', N'TO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'805', N'51', N',3,51,805,', N'3', N'巴雷', N'Bale', N'balei', N'BAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'806', N'51', N',3,51,806,', N'3', N'巴姆', N'Bam', N'bamu', N'BAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'807', N'51', N',3,51,807,', N'3', N'巴瓦', N'Banwa', N'bawa', N'BAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'808', N'51', N',3,51,808,', N'3', N'巴泽加', N'Bazega', N'bazejia', N'BAZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'809', N'51', N',3,51,809,', N'3', N'波尼', N'Poni', N'boni', N'PON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'810', N'51', N',3,51,810,', N'3', N'布尔古', N'Boulgou', N'buergu', N'BLG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'811', N'51', N',3,51,811,', N'3', N'布尔基恩德', N'Boulkiemde', N'buerjiende', N'BOK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'812', N'51', N',3,51,812,', N'3', N'布古里巴', N'Bougouriba', N'buguliba', N'BOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'813', N'51', N',3,51,813,', N'3', N'冈祖尔古', N'Ganzourgou', N'gangzuergu', N'GAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'814', N'51', N',3,51,814,', N'3', N'古尔马', N'Gourma', N'guerma', N'GOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'815', N'51', N',3,51,815,', N'3', N'济罗', N'Ziro', N'jiluo', N'ZIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'816', N'51', N',3,51,816,', N'3', N'卡焦戈', N'Kadiogo', N'kajiaoge', N'KAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'817', N'51', N',3,51,817,', N'3', N'凯内杜古', N'Kenedougou', N'kaineidugu', N'KEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'818', N'51', N',3,51,818,', N'3', N'科蒙加里', N'Komondjari', N'kemengjiali', N'KOO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'819', N'51', N',3,51,819,', N'3', N'科莫埃', N'Comoe', N'kemoai', N'COM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'820', N'51', N',3,51,820,', N'3', N'孔皮恩加', N'Kompienga', N'kongpienjia', N'KOP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'821', N'51', N',3,51,821,', N'3', N'孔西', N'Kossi', N'kongxi', N'KOS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'822', N'51', N',3,51,822,', N'3', N'库尔佩罗戈', N'Koulpelogo', N'kuerpeiluoge', N'KOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'823', N'51', N',3,51,823,', N'3', N'库尔维奥戈', N'Kourweogo', N'kuerweiaoge', N'KOW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'824', N'51', N',3,51,824,', N'3', N'库里滕加', N'Kouritenga', N'kulijia', N'KOT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'825', N'51', N',3,51,825,', N'3', N'雷拉巴', N'Leraba', N'leilaba', N'LER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'826', N'51', N',3,51,826,', N'3', N'罗卢姆', N'Loroum', N'luolumu', N'LOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'827', N'51', N',3,51,827,', N'3', N'穆翁', N'Mouhoun', N'muweng', N'MOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'828', N'51', N',3,51,828,', N'3', N'纳门滕加', N'Namentenga', N'namenjia', N'NAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'829', N'51', N',3,51,829,', N'3', N'纳乌里', N'Nahouri', N'nawuli', N'NAH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'830', N'51', N',3,51,830,', N'3', N'纳亚拉', N'Nayala', N'nayala', N'NAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'831', N'51', N',3,51,831,', N'3', N'尼亚尼亚', N'Gnagna', N'niyaniya', N'GNA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'832', N'51', N',3,51,832,', N'3', N'努姆比埃尔', N'Noumbiel', N'numubiaier', N'NOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'833', N'51', N',3,51,833,', N'3', N'帕索雷', N'Passore', N'pasuolei', N'PAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'834', N'51', N',3,51,834,', N'3', N'塞诺', N'Seno', N'sainuo', N'SEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'835', N'51', N',3,51,835,', N'3', N'桑吉', N'Sanguie', N'sangji', N'SAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'836', N'51', N',3,51,836,', N'3', N'桑马滕加', N'Sanmatenga', N'sangmajia', N'SAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'837', N'51', N',3,51,837,', N'3', N'苏鲁', N'Sourou', N'sulu', N'SOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'838', N'51', N',3,51,838,', N'3', N'苏姆', N'Soum', N'sumu', N'SOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'839', N'51', N',3,51,839,', N'3', N'塔波阿', N'Tapoa', N'taboa', N'TAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'840', N'51', N',3,51,840,', N'3', N'图伊', N'Tuy', N'tuyi', N'TUY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'841', N'51', N',3,51,841,', N'3', N'乌埃', N'Houet', N'wuai', N'HOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'842', N'51', N',3,51,842,', N'3', N'乌布里滕加', N'Oubritenga', N'wubulijia', N'OUB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'843', N'51', N',3,51,843,', N'3', N'乌达兰', N'Oudalan', N'wudalan', N'OUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'844', N'51', N',3,51,844,', N'3', N'锡西里', N'Sissili', N'xixili', N'SIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'845', N'51', N',3,51,845,', N'3', N'亚加', N'Yagha', N'yajia', N'YAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'846', N'51', N',3,51,846,', N'3', N'亚滕加', N'Yatenga', N'yajia', N'YAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'847', N'51', N',3,51,847,', N'3', N'伊奥巴', N'Ioba', N'yiaoba', N'IOA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'848', N'51', N',3,51,848,', N'3', N'宗德韦奥戈', N'Zoundweogo', N'zongdeweiaoge', N'ZOW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'849', N'51', N',3,51,849,', N'3', N'宗多马', N'Zondoma', N'zongduoma', N'ZOD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'850', N'52', N',3,52,850,', N'3', N'布班扎', N'Bubanza', N'bubanzha', N'BB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'851', N'52', N',3,52,851,', N'3', N'布鲁里', N'Bururi', N'bululi', N'BR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'852', N'52', N',3,52,852,', N'3', N'布琼布拉城市', N'Bujumbura Mairie', N'buqiongbulachengshi', N'BM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'853', N'52', N',3,52,853,', N'3', N'布琼布拉乡村', N'Bujumbura Rural', N'buqiongbulaxiangcun', N'BU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'854', N'52', N',3,52,854,', N'3', N'恩戈齐', N'Ngozi', N'engeqi', N'NG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'855', N'52', N',3,52,855,', N'3', N'基龙多', N'Kirundo', N'jilongduo', N'KI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'856', N'52', N',3,52,856,', N'3', N'基特加', N'Gitega', N'jitejia', N'GI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'857', N'52', N',3,52,857,', N'3', N'卡鲁济', N'Karuzi', N'kaluji', N'KR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'858', N'52', N',3,52,858,', N'3', N'卡扬扎', N'Kayanza', N'kayangzha', N'KY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'859', N'52', N',3,52,859,', N'3', N'坎库佐', N'Cankuzo', N'kankuzuo', N'CA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'860', N'52', N',3,52,860,', N'3', N'鲁塔纳', N'Rutana', N'lutana', N'RT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'861', N'52', N',3,52,861,', N'3', N'鲁伊吉', N'Ruyigi', N'luyiji', N'RY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'862', N'52', N',3,52,862,', N'3', N'马坎巴', N'Makamba', N'makanba', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'863', N'52', N',3,52,863,', N'3', N'穆拉姆维亚', N'Muramvya', N'mulamuweiya', N'MU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'864', N'52', N',3,52,864,', N'3', N'穆瓦洛', N'Mwaro', N'muwaluo', N'MW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'865', N'52', N',3,52,865,', N'3', N'穆因加', N'Muyinga', N'muyinjia', N'MY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'866', N'52', N',3,52,866,', N'3', N'锡比托凯', N'Cibitoke', N'xibituokai', N'CI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'867', N'54', N',1,54,867,', N'3', N'海州', N'Haeju', N'haizhou', N'HAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'868', N'54', N',1,54,868,', N'3', N'惠山', N'Hyesan', N'huishan', N'HYE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'869', N'54', N',1,54,869,', N'3', N'江界', N'Kanggye', N'jiangjie', N'KAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'870', N'54', N',1,54,870,', N'3', N'开城', N'Kaesong', N'kaicheng', N'KSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'871', N'54', N',1,54,871,', N'3', N'罗先', N'Naseon', N'luoxian', N'NAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'872', N'54', N',1,54,872,', N'3', N'南浦', N'Namp''o', N'nanpu', N'NAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'873', N'54', N',1,54,873,', N'3', N'平壤', N'Pyongyang', N'pingrang', N'FNJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'874', N'54', N',1,54,874,', N'3', N'清津', N'Ch''ongjin', N'qingjin', N'CHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'875', N'54', N',1,54,875,', N'3', N'沙里院', N'Sariwon', N'shaliyuan', N'SAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'876', N'54', N',1,54,876,', N'3', N'咸兴', N'Hamhung', N'xianxing', N'HAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'877', N'54', N',1,54,877,', N'3', N'新义州', N'Sinuiju', N'xinyizhou', N'SII')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'878', N'54', N',1,54,878,', N'3', N'元山', N'Wonsan', N'yuanshan', N'WON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'879', N'55', N',2,55,879,', N'3', N'奥胡斯', N'Aarhus', N'aohusi', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'880', N'55', N',2,55,880,', N'3', N'北日德兰', N'Nordjylland', N'beiridelan', N'VSV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'881', N'55', N',2,55,881,', N'3', N'博恩霍尔姆', N'Bornholm', N'boenhuoermu', N'BO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'882', N'55', N',2,55,882,', N'3', N'菲特烈堡', N'Frederiksborg', N'feiteliebao', N'FRE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'883', N'55', N',2,55,883,', N'3', N'菲茵', N'Fyn', N'feiyin', N'FY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'884', N'55', N',2,55,884,', N'3', N'哥本哈根', N'Copenhagen', N'gebenhagen', N'CPH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'885', N'55', N',2,55,885,', N'3', N'里伯', N'Ribe', N'libo', N'RIB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'886', N'55', N',2,55,886,', N'3', N'灵克宾', N'Ringkoebing', N'lingkebin', N'RKG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'887', N'55', N',2,55,887,', N'3', N'罗斯基勒', N'Roskilde', N'luosijile', N'RKE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'888', N'55', N',2,55,888,', N'3', N'南日德兰', N'Soenderjylland', N'nanridelan', N'VBI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'889', N'55', N',2,55,889,', N'3', N'斯多斯特姆', N'Storstroem', N'siduositemu', N'ST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'890', N'55', N',2,55,890,', N'3', N'维堡', N'Viborg', N'weibao', N'VIB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'891', N'55', N',2,55,891,', N'3', N'维厄勒', N'Vejle', N'weiele', N'VEJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'892', N'55', N',2,55,892,', N'3', N'西希兰', N'Vestsjaelland', N'xixilan', N'VS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'893', N'56', N',2,56,893,', N'3', N'阿恩斯贝格', N'Arnsberg', N'aensibeige', N'ARN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'894', N'56', N',2,56,894,', N'3', N'爱尔福特', N'Erfurt', N'aierfute', N'ERF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'895', N'56', N',2,56,895,', N'3', N'安斯巴格', N'Ansbach', N'ansibage', N'ANS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'896', N'56', N',2,56,896,', N'3', N'奥格斯堡', N'Augsburg', N'aogesibao', N'AGB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'897', N'56', N',2,56,897,', N'3', N'柏林', N'Berlin', N'bailin', N'BE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'898', N'56', N',2,56,898,', N'3', N'拜伊罗特', N'Bayreuth', N'baiyiluote', N'BYU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'899', N'56', N',2,56,899,', N'3', N'比勒费尔德', N'Bielefeld', N'bilefeierde', N'BFE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'900', N'56', N',2,56,900,', N'3', N'波茨坦', N'Potsdam', N'bocitan', N'POT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'901', N'56', N',2,56,901,', N'3', N'波鸿', N'Bochum', N'bohong', N'BOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'902', N'56', N',2,56,902,', N'3', N'不来梅', N'Bremen', N'bulaimei', N'HB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'903', N'56', N',2,56,903,', N'3', N'不伦瑞克', N'Brunswick', N'bulunruike', N'BRW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'904', N'56', N',2,56,904,', N'3', N'达姆施塔特', N'Darmstadt', N'damushitate', N'DAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'905', N'56', N',2,56,905,', N'3', N'代特莫尔特', N'Detmold', N'daitemoerte', N'DET')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'906', N'56', N',2,56,906,', N'3', N'德累斯顿', N'Dresden', N'deleisidun', N'DRS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'907', N'56', N',2,56,907,', N'3', N'德绍', N'Dessau', N'deshao', N'DES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'908', N'56', N',2,56,908,', N'3', N'杜塞尔多夫', N'Dusseldorf', N'dusaierduofu', N'DUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'909', N'56', N',2,56,909,', N'3', N'法兰克福', N'Frankfurt', N'falankefu', N'FFO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'910', N'56', N',2,56,910,', N'3', N'弗赖堡', N'Freiburg', N'fulaibao', N'FBG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'911', N'56', N',2,56,911,', N'3', N'哈雷', N'Halle', N'halei', N'HAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'912', N'56', N',2,56,912,', N'3', N'汉堡', N'Hamburg', N'hanbao', N'HH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'913', N'56', N',2,56,913,', N'3', N'汉诺威', N'Hannover', N'hannuowei', N'HAJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'914', N'56', N',2,56,914,', N'3', N'基尔', N'Kiel', N'jier', N'KEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'915', N'56', N',2,56,915,', N'3', N'吉森', N'GieBen', N'jisen', N'GBN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'916', N'56', N',2,56,916,', N'3', N'卡尔斯鲁厄', N'Karlsruhe', N'kaersilue', N'KAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'917', N'56', N',2,56,917,', N'3', N'卡塞尔', N'Kassel', N'kasaier', N'KAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'918', N'56', N',2,56,918,', N'3', N'开姆尼斯', N'Chemnitz', N'kaimunisi', N'CHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'919', N'56', N',2,56,919,', N'3', N'科布伦次', N'Koblenz', N'kebulunci', N'KOB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'920', N'56', N',2,56,920,', N'3', N'科隆', N'Cologne', N'kelong', N'CGN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'921', N'56', N',2,56,921,', N'3', N'莱比锡', N'Leipzig', N'laibixi', N'LEJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'922', N'56', N',2,56,922,', N'3', N'兰茨胡特', N'Landshut', N'lancihute', N'LDH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'923', N'56', N',2,56,923,', N'3', N'吕讷堡', N'Luneburg', N'lvbao', N'LBG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'924', N'56', N',2,56,924,', N'3', N'马格德堡', N'Magdeburg', N'magedebao', N'MAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'925', N'56', N',2,56,925,', N'3', N'曼海姆', N'Mannheim', N'manhaimu', N'MHG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'926', N'56', N',2,56,926,', N'3', N'美因兹', N'Mainz', N'meiyinzi', N'MAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'927', N'56', N',2,56,927,', N'3', N'明斯特', N'Muenster', N'mingsite', N'MUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'928', N'56', N',2,56,928,', N'3', N'慕尼黑', N'Munich', N'munihei', N'MUC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'929', N'56', N',2,56,929,', N'3', N'纽伦堡', N'Nuremberg', N'niulunbao', N'NUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'930', N'56', N',2,56,930,', N'3', N'什未林', N'Schwerin', N'shiweilin', N'SWH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'931', N'56', N',2,56,931,', N'3', N'斯图加特', N'Stuttgart', N'situjiate', N'STR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'932', N'56', N',2,56,932,', N'3', N'特里尔', N'Trier', N'telier', N'TRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'933', N'56', N',2,56,933,', N'3', N'威斯巴登', N'Wiesbaden', N'weisibadeng', N'WIB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'934', N'56', N',2,56,934,', N'3', N'维尔茨堡', N'Wuerzburg', N'weiercibao', N'WUG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'935', N'57', N',1,57,935,', N'3', N'阿伊莱乌', N'Aileu', N'ayilaiwu', N'AL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'936', N'57', N',1,57,936,', N'3', N'阿伊纳罗', N'Ainaro', N'ayinaluo', N'AN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'937', N'57', N',1,57,937,', N'3', N'埃尔梅拉', N'Ermera', N'aiermeila', N'ER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'938', N'57', N',1,57,938,', N'3', N'安贝诺', N'Ambeno', N'anbeinuo', N'AM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'939', N'57', N',1,57,939,', N'3', N'包考', N'Baucau', N'baokao', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'940', N'57', N',1,57,940,', N'3', N'博博纳罗', N'Bobonaro', N'bobonaluo', N'BO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'941', N'57', N',1,57,941,', N'3', N'帝力', N'Dili', N'dili', N'DI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'942', N'57', N',1,57,942,', N'3', N'科瓦利马', N'Kovalima', N'kewalima', N'KO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'943', N'57', N',1,57,943,', N'3', N'劳滕', N'Lautem', N'lao', N'LA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'944', N'57', N',1,57,944,', N'3', N'利基卡', N'Liquica', N'lijika', N'LI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'945', N'57', N',1,57,945,', N'3', N'马纳图托', N'Manatuto', N'manatutuo', N'MT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'946', N'57', N',1,57,946,', N'3', N'马努法伊', N'Manofahi', N'manufayi', N'MF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'947', N'57', N',1,57,947,', N'3', N'维克克', N'Viqueque', N'weikeke', N'VI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'948', N'58', N',3,58,948,', N'3', N'滨海区', N'Maritime', N'binhaiqu', N'M')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'949', N'58', N',3,58,949,', N'3', N'草原区', N'Savanes', N'caoyuanqu', N'S')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'950', N'58', N',3,58,950,', N'3', N'高原区', N'Plateaux', N'gaoyuanqu', N'P')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'951', N'58', N',3,58,951,', N'3', N'卡拉区', N'Kara', N'kalaqu', N'K')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'952', N'58', N',3,58,952,', N'3', N'中部区', N'Centre', N'zhongbuqu', N'C')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'953', N'61', N',2,61,953,', N'3', N'阿巴坎', N'Abakan', N'abakan', N'ABA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'954', N'61', N',2,61,954,', N'3', N'阿尔汉格尔斯克', N'Arkhangelsk', N'aerhangeersike', N'ARK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'955', N'61', N',2,61,955,', N'3', N'阿金斯科耶', N'Aginskoye', N'ajinsikeye', N'AGI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'956', N'61', N',2,61,956,', N'3', N'阿纳德尔', N'Anadyr', N'anadeer', N'DYR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'957', N'61', N',2,61,957,', N'3', N'阿斯特拉罕', N'Astrakhan', N'asitelahan', N'AST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'958', N'61', N',2,61,958,', N'3', N'埃利斯塔', N'Elista', N'ailisita', N'ESL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'959', N'61', N',2,61,959,', N'3', N'奥廖尔', N'Orel', N'aoliaoer', N'ORL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'960', N'61', N',2,61,960,', N'3', N'奥伦堡', N'Orenburg', N'aolunbao', N'ORE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'961', N'61', N',2,61,961,', N'3', N'巴尔瑙尔', N'Barnaul', N'baerer', N'BAX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'962', N'61', N',2,61,962,', N'3', N'奔萨', N'Penza', N'bensa', N'PNZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'963', N'61', N',2,61,963,', N'3', N'彼得罗巴甫洛夫斯克', N'Petropavlovsk-Kamchatskiy', N'bideluobafuluofusike', N'PKC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'964', N'61', N',2,61,964,', N'3', N'彼得罗扎沃茨克', N'Petrozavodsk', N'bideluozhawocike', N'PES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'965', N'61', N',2,61,965,', N'3', N'彼尔姆', N'Perm', N'biermu', N'PER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'966', N'61', N',2,61,966,', N'3', N'比罗比詹', N'Birobidzan', N'biluobizhan', N'BBZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'967', N'61', N',2,61,967,', N'3', N'别尔哥罗德', N'Belgorod', N'bieergeluode', N'BEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'968', N'61', N',2,61,968,', N'3', N'伯力', N'Chabarovsk', N'boli', N'COK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'969', N'61', N',2,61,969,', N'3', N'布拉戈维申斯克', N'Blagoveshchensk', N'bulageweishensike', N'BQS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'970', N'61', N',2,61,970,', N'3', N'布良斯克', N'Bryansk', N'buliangsike', N'BRY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'971', N'61', N',2,61,971,', N'3', N'车里雅宾斯克', N'Chelyabinsk', N'cheliyabinsike', N'CHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'972', N'61', N',2,61,972,', N'3', N'赤塔', N'Chita', N'chita', N'CHI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'973', N'61', N',2,61,973,', N'3', N'顿河畔罗斯托夫', N'Rostov-na-Donu', N'dunhepanluosituofu', N'ROS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'974', N'61', N',2,61,974,', N'3', N'鄂木斯克', N'Omsk', N'emusike', N'OMS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'975', N'61', N',2,61,975,', N'3', N'伏尔加格勒', N'Volgograd', N'fuerjiagele', N'VOG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'976', N'61', N',2,61,976,', N'3', N'弗拉基米尔', N'Vladimir', N'fulajimier', N'VMR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'977', N'61', N',2,61,977,', N'3', N'弗拉季高加索', N'Vladikavkaz', N'fulajigaojiasuo', N'VLA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'978', N'61', N',2,61,978,', N'3', N'戈尔诺－阿尔泰斯克', N'Gorno-Altajsk', N'geernuoaertaisike', N'GOA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'979', N'61', N',2,61,979,', N'3', N'格罗兹尼', N'Grozny', N'geluozini', N'GRV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'980', N'61', N',2,61,980,', N'3', N'海参崴', N'Vladivostok', N'haican', N'VVO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'981', N'61', N',2,61,981,', N'3', N'汉特－曼西斯克', N'Khanty-Mansiysk', N'hantemanxisike', N'KHM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'982', N'61', N',2,61,982,', N'3', N'基洛夫', N'Kirov', N'jiluofu', N'KIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'983', N'61', N',2,61,983,', N'3', N'加里宁格勒', N'Kaliningrad', N'jialininggele', N'KGD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'984', N'61', N',2,61,984,', N'3', N'喀山', N'Kazan', N'kashan', N'KZN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'985', N'61', N',2,61,985,', N'3', N'卡卢加', N'Kaluga', N'kalujia', N'KLF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'986', N'61', N',2,61,986,', N'3', N'科斯特罗马', N'Kostroma', N'kesiteluoma', N'KOS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'987', N'61', N',2,61,987,', N'3', N'克拉斯诺达尔', N'Krasnodar', N'kelasinuodaer', N'KRR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'988', N'61', N',2,61,988,', N'3', N'克拉斯诺亚尔斯克', N'Krasnojarsk', N'kelasinuoyaersike', N'KYA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'989', N'61', N',2,61,989,', N'3', N'克麦罗沃', N'Kemerovo', N'kemailuowo', N'KEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'990', N'61', N',2,61,990,', N'3', N'克孜勒', N'Kyzyl', N'kezile', N'KYZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'991', N'61', N',2,61,991,', N'3', N'库德姆卡尔', N'Kudymkar', N'kudemukaer', N'KUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'992', N'61', N',2,61,992,', N'3', N'库尔干', N'Kurgan', N'kuergan', N'KRO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'993', N'61', N',2,61,993,', N'3', N'库尔斯克', N'Kursk', N'kuersike', N'URS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'994', N'61', N',2,61,994,', N'3', N'利佩茨克', N'Lipeck', N'lipeicike', N'LIP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'995', N'61', N',2,61,995,', N'3', N'梁赞', N'Ryazan', N'liangzan', N'RYA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'996', N'61', N',2,61,996,', N'3', N'马哈奇卡拉', N'Makhachkala', N'mahaqikala', N'MCX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'997', N'61', N',2,61,997,', N'3', N'马加丹', N'Magadan', N'majiadan', N'MAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'998', N'61', N',2,61,998,', N'3', N'马加斯', N'Magas', N'majiasi', N'IN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'999', N'61', N',2,61,999,', N'3', N'迈科普', N'Maykop', N'maikepu', N'MAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1000', N'61', N',2,61,1000,', N'3', N'摩尔曼斯克', N'Murmansk', N'moermansike', N'MMK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1001', N'61', N',2,61,1001,', N'3', N'莫斯科', N'Moscow', N'mosike', N'MOW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1002', N'61', N',2,61,1002,', N'3', N'纳尔奇克', N'Nalchik', N'naerqike', N'NAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1003', N'61', N',2,61,1003,', N'3', N'纳里扬马尔', N'Naryan-Mar', N'naliyangmaer', N'NNM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1004', N'61', N',2,61,1004,', N'3', N'南萨哈林斯克', N'Juzno-Sachalinsk', N'nansahalinsike', N'JSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1005', N'61', N',2,61,1005,', N'3', N'诺夫哥罗德', N'Velikij Novgorod', N'nuofugeluode', N'VUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1006', N'61', N',2,61,1006,', N'3', N'帕拉纳', N'Palana', N'palana', N'PAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1007', N'61', N',2,61,1007,', N'3', N'普斯科夫', N'Pskov', N'pusikefu', N'PSK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1008', N'61', N',2,61,1008,', N'3', N'切博克萨雷', N'Cheboksary', N'qiebokesalei', N'CSY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1009', N'61', N',2,61,1009,', N'3', N'切尔克斯克', N'Cherkessk', N'qieerkesike', N'CKS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1010', N'61', N',2,61,1010,', N'3', N'秋明', N'Tyumen', N'qiuming', N'TYU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1011', N'61', N',2,61,1011,', N'3', N'萨拉托夫', N'Saratov', N'salatuofu', N'SAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1012', N'61', N',2,61,1012,', N'3', N'萨兰斯克', N'Saransk', N'salansike', N'SKX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1013', N'61', N',2,61,1013,', N'3', N'萨列哈尔德', N'Salekhard', N'saliehaerde', N'SLY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1014', N'61', N',2,61,1014,', N'3', N'萨马拉', N'Samara', N'samala', N'SAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1015', N'61', N',2,61,1015,', N'3', N'瑟克特夫卡尔', N'Syktyvkar', N'seketefukaer', N'SCW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1016', N'61', N',2,61,1016,', N'3', N'圣彼得堡', N'St. Peterburg', N'shengbidebao', N'SPE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1017', N'61', N',2,61,1017,', N'3', N'斯摩棱斯克', N'Smolensk', N'simolengsike', N'LNX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1018', N'61', N',2,61,1018,', N'3', N'斯塔夫罗波尔', N'Stavropol', N'sitafuluoboer', N'STA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1019', N'61', N',2,61,1019,', N'3', N'坦波夫', N'Tambov', N'tanbofu', N'TAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1020', N'61', N',2,61,1020,', N'3', N'特维尔', N'Tver', N'teweier', N'TVE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1021', N'61', N',2,61,1021,', N'3', N'图拉', N'Tula', N'tula', N'TUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1022', N'61', N',2,61,1022,', N'3', N'托木斯克', N'Tomsk', N'tuomusike', N'TOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1023', N'61', N',2,61,1023,', N'3', N'沃罗涅什', N'Voronezh', N'woluonieshi', N'VOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1024', N'61', N',2,61,1024,', N'3', N'沃洛格达', N'Vologda', N'woluogeda', N'VLG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1025', N'61', N',2,61,1025,', N'3', N'乌法', N'Ufa', N'wufa', N'UFA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1026', N'61', N',2,61,1026,', N'3', N'乌兰乌德', N'Ulan-Ude', N'wulanwude', N'UUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1027', N'61', N',2,61,1027,', N'3', N'乌里扬诺夫斯克', N'Uljanovsk', N'wuliyangnuofusike', N'ULY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1028', N'61', N',2,61,1028,', N'3', N'乌斯季奥尔登斯基', N'Ust-Ordynsky', N'wusijiaoerdengsiji', N'UOB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1029', N'61', N',2,61,1029,', N'3', N'下诺夫哥罗德', N'Niznij Novgorod', N'xianuofugeluode', N'GOJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1030', N'61', N',2,61,1030,', N'3', N'新西伯利亚', N'Novosibirsk', N'xinxiboliya', N'NVS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1031', N'61', N',2,61,1031,', N'3', N'雅库茨克', N'Jakutsk', N'yakucike', N'JAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1032', N'61', N',2,61,1032,', N'3', N'雅罗斯拉夫尔', N'Jaroslavl', N'yaluosilafuer', N'JAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1033', N'61', N',2,61,1033,', N'3', N'叶卡捷林堡', N'Jekaterinburg', N'yekajielinbao', N'JEK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1034', N'61', N',2,61,1034,', N'3', N'伊尔库茨克', N'Irkutsk', N'yierkucike', N'IKT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1035', N'61', N',2,61,1035,', N'3', N'伊热夫斯克', N'Izhevsk', N'yirefusike', N'IJK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1036', N'61', N',2,61,1036,', N'3', N'伊万诺沃', N'Ivanovo', N'yiwannuowo', N'IVO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1037', N'61', N',2,61,1037,', N'3', N'约什卡尔奥拉', N'Yoshkar-Ola', N'yueshikaeraola', N'YOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1038', N'62', N',5,62,1038,', N'3', N'阿苏艾', N'Azuay', N'asuai', N'A')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1039', N'62', N',5,62,1039,', N'3', N'埃尔奥罗', N'El Oro', N'aieraoluo', N'O')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1040', N'62', N',5,62,1040,', N'3', N'埃斯梅拉尔达斯', N'Esmeraldas', N'aisimeilaerdasi', N'E')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1041', N'62', N',5,62,1041,', N'3', N'玻利瓦尔', N'Bolivar', N'boliwaer', N'B')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1042', N'62', N',5,62,1042,', N'3', N'瓜亚斯', N'Guayas', N'guayasi', N'G')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1043', N'62', N',5,62,1043,', N'3', N'加拉帕戈斯', N'Galapagos', N'jialapagesi', N'W')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1044', N'62', N',5,62,1044,', N'3', N'卡尔奇', N'Carchi', N'kaerqi', N'C')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1045', N'62', N',5,62,1045,', N'3', N'卡尼亚尔', N'Canar', N'kaniyaer', N'F')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1046', N'62', N',5,62,1046,', N'3', N'科托帕希', N'Cotopaxi', N'ketuopaxi', N'X')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1047', N'62', N',5,62,1047,', N'3', N'洛哈', N'Loja', N'luoha', N'L')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1048', N'62', N',5,62,1048,', N'3', N'洛斯里奥斯', N'Los Rios', N'luosiliaosi', N'R')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1049', N'62', N',5,62,1049,', N'3', N'马纳比', N'Manabi', N'manabi', N'M')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1050', N'62', N',5,62,1050,', N'3', N'莫罗纳－圣地亚哥', N'Morona-Santiago', N'moluonashengdiyage', N'S')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1051', N'62', N',5,62,1051,', N'3', N'纳波，奥雷利亚纳', N'Napo, Orellana', N'naboaoleiliyana', N'D')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1052', N'62', N',5,62,1052,', N'3', N'帕斯塔萨', N'Pastaza', N'pasitasa', N'Y')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1053', N'62', N',5,62,1053,', N'3', N'皮钦查', N'Pichincha', N'piqincha', N'P')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1054', N'62', N',5,62,1054,', N'3', N'钦博拉索', N'Chimborazo', N'qinbolasuo', N'H')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1055', N'62', N',5,62,1055,', N'3', N'萨莫拉－钦奇佩', N'Zamora-Chinchipe', N'samolaqinqipei', N'Z')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1056', N'62', N',5,62,1056,', N'3', N'苏昆毕奥斯', N'Sucumbios', N'sukunbiaosi', N'U')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1057', N'62', N',5,62,1057,', N'3', N'通古拉瓦', N'Tungurahua', N'tonggulawa', N'T')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1058', N'62', N',5,62,1058,', N'3', N'因巴布拉', N'Imbabura', N'yinbabula', N'I')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1059', N'63', N',3,63,1059,', N'3', N'安塞巴', N'Anseba', N'ansaiba', N'KE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1060', N'63', N',3,63,1060,', N'3', N'北红海', N'Semenawi Keyih Bahri', N'beihonghai', N'SK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1061', N'63', N',3,63,1061,', N'3', N'加什·巴尔卡', N'Gash Barka', N'jiashi', N'BR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1062', N'63', N',3,63,1062,', N'3', N'南部', N'Debub', N'nanbu', N'DE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1063', N'63', N',3,63,1063,', N'3', N'南红海', N'Debubawi Keyih Bahri', N'nanhonghai', N'DK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1064', N'63', N',3,63,1064,', N'3', N'中部', N'Maekel', N'zhongbu', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1065', N'64', N',2,64,1065,', N'3', N'阿尔勒', N'Arles', N'aerle', N'ARL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1066', N'64', N',2,64,1066,', N'3', N'阿雅克修', N'Ajaccio', N'ayakexiu', N'AJA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1067', N'64', N',2,64,1067,', N'3', N'艾克斯', N'Aix-en-Provence', N'aikesi', N'QXB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1068', N'64', N',2,64,1068,', N'3', N'奥尔良', N'Orleans', N'aoerliang', N'ORR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1069', N'64', N',2,64,1069,', N'3', N'巴黎', N'Paris', N'bali', N'PAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1070', N'64', N',2,64,1070,', N'3', N'贝桑松', N'Besancon', N'beisangsong', N'BSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1071', N'64', N',2,64,1071,', N'3', N'第戎', N'Dijon', N'dirong', N'DIJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1072', N'64', N',2,64,1072,', N'3', N'弗雷瑞斯', N'Frejus', N'fuleiruisi', N'FRJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1073', N'64', N',2,64,1073,', N'3', N'卡昂', N'Caen', N'kaang', N'CFR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1074', N'64', N',2,64,1074,', N'3', N'雷恩', N'Rennes', N'leien', N'RNS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1075', N'64', N',2,64,1075,', N'3', N'里昂', N'Lyon', N'liang', N'LIO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1076', N'64', N',2,64,1076,', N'3', N'里尔', N'Lille', N'lier', N'LLE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1077', N'64', N',2,64,1077,', N'3', N'利摩日', N'Limoges', N'limori', N'LIG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1078', N'64', N',2,64,1078,', N'3', N'鲁昂', N'Rouen', N'luang', N'URO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1079', N'64', N',2,64,1079,', N'3', N'马赛', N'Marseille', N'masai', N'MRS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1080', N'64', N',2,64,1080,', N'3', N'梅斯', N'Metz', N'meisi', N'MZM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1081', N'64', N',2,64,1081,', N'3', N'蒙彼利埃', N'Montpellier', N'mengbiliai', N'MPL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1082', N'64', N',2,64,1082,', N'3', N'南特', N'Nantes', N'nante', N'NTE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1083', N'64', N',2,64,1083,', N'3', N'尼斯', N'Nice', N'nisi', N'NCE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1084', N'64', N',2,64,1084,', N'3', N'沙隆', N'Chalons-en-Champagne', N'shalong', N'CSM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1085', N'64', N',2,64,1085,', N'3', N'图卢兹', N'Toulouse', N'tuluzi', N'TLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1086', N'64', N',2,64,1086,', N'3', N'瓦朗斯', N'Valence', N'walangsi', N'VAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1087', N'64', N',2,64,1087,', N'3', N'亚眠', N'Amiens', N'yamian', N'AMI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1088', N'70', N',1,70,1088,', N'3', N'达沃', N'Davao', N'dawo', N'DOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1089', N'70', N',1,70,1089,', N'3', N'卡卢坎', N'Caloocan', N'kalukan', N'CAO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1090', N'70', N',1,70,1090,', N'3', N'马尼拉', N'Manila', N'manila', N'MNL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1091', N'70', N',1,70,1091,', N'3', N'宿务', N'Cebu', N'suwu', N'CEB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1092', N'72', N',2,72,1092,', N'3', N'埃斯波', N'Espoo', N'aisibo', N'ESP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1093', N'72', N',2,72,1093,', N'3', N'奥卢', N'Oulu', N'aolu', N'OLU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1094', N'72', N',2,72,1094,', N'3', N'波里', N'Pori', N'boli', N'POR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1095', N'72', N',2,72,1095,', N'3', N'博尔沃', N'Porvoo', N'boerwo', N'PRV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1096', N'72', N',2,72,1096,', N'3', N'海门林纳', N'Hameenlinna', N'haimenlinna', N'HMY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1097', N'72', N',2,72,1097,', N'3', N'赫尔辛基', N'Helsinki', N'heerxinji', N'HEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1098', N'72', N',2,72,1098,', N'3', N'卡亚尼', N'Kajaani', N'kayani', N'KAJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1099', N'72', N',2,72,1099,', N'3', N'科科拉', N'Kokkola', N'kekela', N'KOK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1100', N'72', N',2,72,1100,', N'3', N'科特卡', N'Kotka', N'keteka', N'KTK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1101', N'72', N',2,72,1101,', N'3', N'库奥皮奥', N'Kuopio', N'kuaopiao', N'KUO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1102', N'72', N',2,72,1102,', N'3', N'拉赫蒂', N'Lahti', N'lahedi', N'LHI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1103', N'72', N',2,72,1103,', N'3', N'拉彭兰塔', N'Lappeenranta', N'lapenglanta', N'LPP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1104', N'72', N',2,72,1104,', N'3', N'罗瓦涅米', N'Rovaniemi', N'luowaniemi', N'RVN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1105', N'72', N',2,72,1105,', N'3', N'玛丽港', N'Mariehamn', N'maligang', N'MHQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1106', N'72', N',2,72,1106,', N'3', N'米凯利', N'Mikkeli', N'mikaili', N'MIK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1107', N'72', N',2,72,1107,', N'3', N'坦佩雷', N'Tampere', N'tanpeilei', N'TMP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1108', N'72', N',2,72,1108,', N'3', N'图尔库', N'Turku', N'tuerku', N'TKU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1109', N'72', N',2,72,1109,', N'3', N'瓦萨', N'Vaasa', N'wasa', N'VAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1110', N'72', N',2,72,1110,', N'3', N'万塔', N'Vantaa', N'wanta', N'VAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1111', N'72', N',2,72,1111,', N'3', N'约恩苏', N'Joensuu', N'yueensu', N'JOE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1112', N'73', N',3,73,1112,', N'3', N'保尔', N'Paul', N'baoer', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1113', N'73', N',3,73,1113,', N'3', N'波多诺伏', N'Porto Novo', N'boduonuofu', N'PN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1114', N'73', N',3,73,1114,', N'3', N'博阿维斯塔岛', N'Boa Vista', N'boaweisitadao', N'BV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1115', N'73', N',3,73,1115,', N'3', N'布拉瓦岛', N'Brava', N'bulawadao', N'BR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1116', N'73', N',3,73,1116,', N'3', N'大里贝拉', N'Ribeira Grande', N'dalibeila', N'RG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1117', N'73', N',3,73,1117,', N'3', N'福古岛', N'Fogo', N'fugudao', N'FO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1118', N'73', N',3,73,1118,', N'3', N'马尤岛', N'Maio', N'mayoudao', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1119', N'73', N',3,73,1119,', N'3', N'莫斯特罗', N'Mosteiros', N'mositeluo', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1120', N'73', N',3,73,1120,', N'3', N'普拉亚', N'Praia', N'pulaya', N'PR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1121', N'73', N',3,73,1121,', N'3', N'萨尔岛', N'Sal', N'saerdao', N'SL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1122', N'73', N',3,73,1122,', N'3', N'圣安唐岛', N'Santo Antao', N'shengantangdao', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1123', N'73', N',3,73,1123,', N'3', N'圣地亚哥岛', N'Santiago', N'shengdiyagedao', N'IA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1124', N'73', N',3,73,1124,', N'3', N'圣多明戈', N'Sao Domingos', N'shengduomingge', N'SD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1125', N'73', N',3,73,1125,', N'3', N'圣菲利普', N'Sao Filipe', N'shengfeilipu', N'SF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1126', N'73', N',3,73,1126,', N'3', N'圣卡塔琳娜', N'Santa Catarina', N'shengkatalinna', N'CA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1127', N'73', N',3,73,1127,', N'3', N'圣克鲁斯', N'Santa Cruz', N'shengkelusi', N'CR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1128', N'73', N',3,73,1128,', N'3', N'圣米戈尔', N'Sao Miguel', N'shengmigeer', N'SM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1129', N'73', N',3,73,1129,', N'3', N'圣尼古拉岛', N'Sao Nicolau', N'shengniguladao', N'SN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1130', N'73', N',3,73,1130,', N'3', N'圣维森特岛', N'Sao Vicente', N'shengweisentedao', N'SV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1131', N'73', N',3,73,1131,', N'3', N'塔拉法尔', N'Tarrafal', N'talafaer', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1132', N'78', N',5,78,1132,', N'3', N'阿劳卡', N'Arauca', N'alaoka', N'ARA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1133', N'78', N',5,78,1133,', N'3', N'安提奥基亚', N'Antioquia', N'antiaojiya', N'ANT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1134', N'78', N',5,78,1134,', N'3', N'北桑坦德', N'Norte de Santander', N'beisangtande', N'NDS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1135', N'78', N',5,78,1135,', N'3', N'波哥大首都区', N'Bogota', N'bogedashouduqu', N'BDC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1136', N'78', N',5,78,1136,', N'3', N'博利瓦尔', N'Bolivar', N'boliwaer', N'BOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1137', N'78', N',5,78,1137,', N'3', N'博亚卡', N'Boyaca', N'boyaka', N'BOY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1138', N'78', N',5,78,1138,', N'3', N'大西洋', N'Atlantico', N'daxiyang', N'ATL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1139', N'78', N',5,78,1139,', N'3', N'瓜维亚雷', N'Guaviare', N'guaweiyalei', N'GVR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1140', N'78', N',5,78,1140,', N'3', N'瓜希拉', N'La Guajira', N'guaxila', N'GJR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1141', N'78', N',5,78,1141,', N'3', N'瓜伊尼亚', N'Guainia', N'guayiniya', N'GNA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1142', N'78', N',5,78,1142,', N'3', N'金迪奥', N'Quindio', N'jindiao', N'QUI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1143', N'78', N',5,78,1143,', N'3', N'卡尔达斯', N'Caldas', N'kaerdasi', N'CAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1144', N'78', N',5,78,1144,', N'3', N'卡克塔', N'Caqueta', N'kaketa', N'CAQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1145', N'78', N',5,78,1145,', N'3', N'卡萨纳雷', N'Casanare', N'kasanalei', N'CAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1146', N'78', N',5,78,1146,', N'3', N'考卡', N'Cauca', N'kaoka', N'CAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1147', N'78', N',5,78,1147,', N'3', N'考卡山谷', N'Valle del Cauca', N'kaokashangu', N'VDC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1148', N'78', N',5,78,1148,', N'3', N'科尔多巴', N'Cordoba', N'keerduoba', N'COR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1149', N'78', N',5,78,1149,', N'3', N'昆迪纳马卡', N'Cundinamarca', N'kundinamaka', N'CAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1150', N'78', N',5,78,1150,', N'3', N'利萨拉尔达', N'Risaralda', N'lisalaerda', N'RIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1151', N'78', N',5,78,1151,', N'3', N'马格达雷那', N'Magdalena', N'magedaleina', N'MAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1152', N'78', N',5,78,1152,', N'3', N'梅塔', N'Meta', N'meita', N'MET')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1153', N'78', N',5,78,1153,', N'3', N'纳里尼奥', N'Narino', N'naliniao', N'NAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1154', N'78', N',5,78,1154,', N'3', N'普图马约', N'Putumayo', N'putumayue', N'PUT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1155', N'78', N',5,78,1155,', N'3', N'乔科', N'Choco', N'qiaoke', N'CHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1156', N'78', N',5,78,1156,', N'3', N'塞萨尔', N'Cesar', N'saisaer', N'CES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1157', N'78', N',5,78,1157,', N'3', N'桑坦德', N'Santander', N'sangtande', N'SAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1158', N'78', N',5,78,1158,', N'3', N'圣安德烈斯-普罗维登西亚', N'San Andres y Providencia', N'shengandeliesipuluoweidengxiya', N'SAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1159', N'78', N',5,78,1159,', N'3', N'苏克雷', N'Sucre', N'sukelei', N'SUC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1160', N'78', N',5,78,1160,', N'3', N'托利马', N'Tolima', N'tuolima', N'TOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1161', N'78', N',5,78,1161,', N'3', N'维查达', N'Vichada', N'weichada', N'VIC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1162', N'78', N',5,78,1162,', N'3', N'沃佩斯', N'Vaupes', N'wopeisi', N'VAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1163', N'78', N',5,78,1163,', N'3', N'乌伊拉', N'Huila', N'wuyila', N'HUI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1164', N'78', N',5,78,1164,', N'3', N'亚马孙', N'Amazonas', N'yamasun', N'AMZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1165', N'79', N',4,79,1165,', N'3', N'阿拉胡埃拉', N'Alajuela', N'alahuaila', N'A')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1166', N'79', N',4,79,1166,', N'3', N'埃雷迪亚', N'Heredia', N'aileidiya', N'H')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1167', N'79', N',4,79,1167,', N'3', N'瓜纳卡斯特', N'Guanacaste', N'guanakasite', N'G')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1168', N'79', N',4,79,1168,', N'3', N'卡塔戈', N'Cartago', N'katage', N'C')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1169', N'79', N',4,79,1169,', N'3', N'利蒙', N'Limon', N'limeng', N'L')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1170', N'79', N',4,79,1170,', N'3', N'蓬塔雷纳斯', N'Puntarenas', N'pengtaleinasi', N'P')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1171', N'79', N',4,79,1171,', N'3', N'圣何塞', N'San Jose', N'shenghesai', N'SJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1172', N'83', N',4,83,1172,', N'3', N'奥尔金', N'Holguin', N'aoerjin', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1173', N'83', N',4,83,1173,', N'3', N'比那尔德里奥', N'Pinar del Rio', N'binaerdeliao', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1174', N'83', N',4,83,1174,', N'3', N'比亚克拉拉', N'Villa Clara', N'biyakelala', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1175', N'83', N',4,83,1175,', N'3', N'格拉玛', N'Granma', N'gelama', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1176', N'83', N',4,83,1176,', N'3', N'关塔那摩', N'Guantanamo', N'guantanamo', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1177', N'83', N',4,83,1177,', N'3', N'哈瓦那', N'La Habana', N'hawana', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1178', N'83', N',4,83,1178,', N'3', N'哈瓦那城', N'Ciudad de la Habana', N'hawanacheng', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1179', N'83', N',4,83,1179,', N'3', N'卡马圭', N'Camaguey', N'kamagui', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1180', N'83', N',4,83,1180,', N'3', N'拉斯图纳斯', N'Las Tunas', N'lasitunasi', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1181', N'83', N',4,83,1181,', N'3', N'马坦萨斯', N'Matanzas', N'matansasi', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1182', N'83', N',4,83,1182,', N'3', N'马亚里', N'Mayari', N'mayali', N'MAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1183', N'83', N',4,83,1183,', N'3', N'曼萨尼罗', N'Manzanillo', N'mansaniluo', N'MZO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1184', N'83', N',4,83,1184,', N'3', N'青年岛特区', N'Isla de la Juventud', N'qingniandaotequ', N'99')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1185', N'83', N',4,83,1185,', N'3', N'圣地亚哥', N'Santiago de Cuba', N'shengdiyage', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1186', N'83', N',4,83,1186,', N'3', N'圣斯皮里图斯', N'Sancti Spiritus', N'shengsipilitusi', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1187', N'83', N',4,83,1187,', N'3', N'西恩富戈斯', N'Cienfuegos', N'xienfugesi', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1188', N'83', N',4,83,1188,', N'3', N'谢戈德阿维拉', N'Ciego de Avila', N'xiegedeaweila', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1189', N'86', N',5,86,1189,', N'3', N'埃塞奎博群岛-西德梅拉拉', N'Essequibo Islands-West Demerara', N'aisaikuiboqundaoxidemeilala', N'EW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1190', N'86', N',5,86,1190,', N'3', N'巴里马-瓦伊尼', N'Barima-Waini', N'balimawayini', N'BW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1191', N'86', N',5,86,1191,', N'3', N'波默伦-苏佩纳姆', N'Pomeroon-Supenaam', N'bomolunsupeinamu', N'PM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1192', N'86', N',5,86,1192,', N'3', N'波塔罗-锡帕鲁尼', N'Potaro-Siparuni', N'botaluoxipaluni', N'PI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1193', N'86', N',5,86,1193,', N'3', N'德梅拉拉-马海卡', N'Demerara-Mahaica', N'demeilalamahaika', N'DM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1194', N'86', N',5,86,1194,', N'3', N'东伯比斯-科兰太因', N'East Berbice-Corentyne', N'dongbobisikelantaiyin', N'EC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1195', N'86', N',5,86,1195,', N'3', N'库尤尼-马扎鲁尼', N'Cuyuni-Mazaruni', N'kuyounimazhaluni', N'CM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1196', N'86', N',5,86,1196,', N'3', N'马海卡-伯比斯', N'Mahaica-Berbice', N'mahaikabobisi', N'MB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1197', N'86', N',5,86,1197,', N'3', N'上德梅拉拉-伯比斯', N'Upper Demerara-Berbice', N'shangdemeilalabobisi', N'UD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1198', N'86', N',5,86,1198,', N'3', N'上塔库图-上埃塞奎博', N'Upper Takutu-Upper Essequibo', N'shangtakutushangaisaikuibo', N'UT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1199', N'87', N',1,87,1199,', N'3', N'阿尔卡累克', N'Arkalyk', N'aerkaleike', N'AYK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1200', N'87', N',1,87,1200,', N'3', N'阿克莫拉', N'Aqmola', N'akemola', N'AKM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1201', N'87', N',1,87,1201,', N'3', N'阿克苏', N'Aksu', N'akesu', N'AKS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1202', N'87', N',1,87,1202,', N'3', N'阿克托别', N'Aqtobe', N'aketuobie', N'AKT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1203', N'87', N',1,87,1203,', N'3', N'阿拉木图', N'Almaty', N'alamutu', N'ALA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1204', N'87', N',1,87,1204,', N'3', N'阿雷斯', N'Arys', N'aleisi', N'ARY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1205', N'87', N',1,87,1205,', N'3', N'阿斯塔纳市', N'Astana', N'asitanashi', N'AST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1206', N'87', N',1,87,1206,', N'3', N'阿特劳', N'Atyrau', N'atelao', N'ATY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1207', N'87', N',1,87,1207,', N'3', N'埃基巴斯图兹', N'Ekibastuz', N'aijibasituzi', N'EKB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1208', N'87', N',1,87,1208,', N'3', N'巴尔喀什', N'Balkhash', N'baerkashi', N'BXH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1209', N'87', N',1,87,1209,', N'3', N'巴甫洛达尔', N'Pavlodar', N'bafuluodaer', N'PAV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1210', N'87', N',1,87,1210,', N'3', N'北哈萨克斯坦', N'Soltustik Qazaqstan', N'beihasakesitan', N'SEV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1211', N'87', N',1,87,1211,', N'3', N'东哈萨克斯坦', N'Shyghys Qazaqstan', N'donghasakesitan', N'VOS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1212', N'87', N',1,87,1212,', N'3', N'济良诺夫斯克', N'Zyryanovsk', N'jiliangnuofusike', N'ZYR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1213', N'87', N',1,87,1213,', N'3', N'江布尔', N'Zhambyl', N'jiangbuer', N'DMB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1214', N'87', N',1,87,1214,', N'3', N'杰兹卡兹甘', N'Zhezkazgan', N'jiezikazigan', N'DZH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1215', N'87', N',1,87,1215,', N'3', N'卡拉干达', N'Qaraghandy', N'kalaganda', N'KAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1216', N'87', N',1,87,1216,', N'3', N'卡拉扎尔', N'Karazhal', N'kalazhaer', N'KZO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1217', N'87', N',1,87,1217,', N'3', N'卡普恰盖', N'Kapchagay', N'kapuqiagai', N'KAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1218', N'87', N',1,87,1218,', N'3', N'科斯塔奈', N'Qostanay', N'kesitanai', N'KST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1219', N'87', N',1,87,1219,', N'3', N'克孜勒奥尔达', N'Qyzylorda', N'kezileaoerda', N'KZY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1220', N'87', N',1,87,1220,', N'3', N'肯套', N'Kentau', N'kentao', N'KEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1221', N'87', N',1,87,1221,', N'3', N'库尔恰托夫', N'Kurchatov', N'kuerqiatuofu', N'KUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1222', N'87', N',1,87,1222,', N'3', N'利萨科夫斯克', N'Lisakovsk', N'lisakefusike', N'LKK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1223', N'87', N',1,87,1223,', N'3', N'列宁诺戈尔斯克', N'Leninogorsk', N'lieningnuogeersike', N'LEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1224', N'87', N',1,87,1224,', N'3', N'鲁德内', N'Rudny', N'ludenei', N'RUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1225', N'87', N',1,87,1225,', N'3', N'曼格斯套', N'Mangghystau', N'mangesitao', N'MAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1226', N'87', N',1,87,1226,', N'3', N'南哈萨克斯坦', N'Ongtustik Qazaqstan', N'nanhasakesitan', N'KGT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1227', N'87', N',1,87,1227,', N'3', N'萨兰', N'Saran', N'salan', N'SAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1228', N'87', N',1,87,1228,', N'3', N'塞梅伊', N'Semey', N'saimeiyi', N'SEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1229', N'87', N',1,87,1229,', N'3', N'沙赫京斯克', N'Shakhtinsk', N'shahejingsike', N'SAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1230', N'87', N',1,87,1230,', N'3', N'斯捷普诺戈尔斯克', N'Stepnogorsk', N'sijiepunuogeersike', N'STE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1231', N'87', N',1,87,1231,', N'3', N'铁克利', N'Tekeli', N'tiekeli', N'TEK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1232', N'87', N',1,87,1232,', N'3', N'铁米尔套', N'Temirtau', N'tiemiertao', N'TEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1233', N'87', N',1,87,1233,', N'3', N'突厥斯坦', N'Turkestan', N'tusitan', N'TUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1234', N'87', N',1,87,1234,', N'3', N'西哈萨克斯坦', N'Batys Qazaqstan', N'xihasakesitan', N'ZAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1235', N'87', N',1,87,1235,', N'3', N'扎纳奥津', N'Zhanaozen', N'zhanaaojin', N'ZHA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1236', N'90', N',2,90,1236,', N'3', N'阿尔梅勒', N'Almere', N'aermeile', N'AER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1237', N'90', N',2,90,1237,', N'3', N'阿默斯福特', N'Amersfoort', N'amosifute', N'AME')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1238', N'90', N',2,90,1238,', N'3', N'阿姆斯特丹', N'Amsterdam', N'amusitedan', N'AMS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1239', N'90', N',2,90,1239,', N'3', N'阿纳姆', N'Arnhem', N'anamu', N'ARN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1240', N'90', N',2,90,1240,', N'3', N'阿珀尔多伦', N'Apeldoorn', N'aerduolun', N'APE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1241', N'90', N',2,90,1241,', N'3', N'阿森', N'Assen', N'asen', N'ASS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1242', N'90', N',2,90,1242,', N'3', N'埃德', N'Ede', N'aide', N'EDE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1243', N'90', N',2,90,1243,', N'3', N'埃门', N'Emmen', N'aimen', N'EMM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1244', N'90', N',2,90,1244,', N'3', N'埃因霍芬', N'Eindhoven', N'aiyinhuofen', N'EIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1245', N'90', N',2,90,1245,', N'3', N'布雷达', N'Breda', N'buleida', N'BRD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1246', N'90', N',2,90,1246,', N'3', N'蒂尔堡', N'Tilburg', N'dierbao', N'TLB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1247', N'90', N',2,90,1247,', N'3', N'多德雷赫特', N'Dordrecht', N'duodeleihete', N'DOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1248', N'90', N',2,90,1248,', N'3', N'恩斯赫德', N'Enschede', N'ensihede', N'ENS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1249', N'90', N',2,90,1249,', N'3', N'格罗宁根', N'Groningen', N'geluoninggen', N'GRQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1250', N'90', N',2,90,1250,', N'3', N'哈勒姆', N'Haarlem', N'halemu', N'HRA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1251', N'90', N',2,90,1251,', N'3', N'海牙', N'Hague', N'haiya', N'HAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1252', N'90', N',2,90,1252,', N'3', N'霍夫多尔普', N'Hoofddorp', N'huofuduoerpu', N'HFD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1253', N'90', N',2,90,1253,', N'3', N'莱顿', N'Leiden', N'laidun', N'LID')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1254', N'90', N',2,90,1254,', N'3', N'莱利斯塔德', N'Lelystad', N'lailisitade', N'LEY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1255', N'90', N',2,90,1255,', N'3', N'鹿特丹', N'Rotterdam', N'lutedan', N'RTM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1256', N'90', N',2,90,1256,', N'3', N'吕伐登', N'Leeuwarden', N'lvfadeng', N'LWR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1257', N'90', N',2,90,1257,', N'3', N'马斯特里赫特', N'Maastricht', N'masitelihete', N'MST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1258', N'90', N',2,90,1258,', N'3', N'米德尔堡', N'Middelburg', N'mideerbao', N'MDL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1259', N'90', N',2,90,1259,', N'3', N'奈梅亨', N'Nijmegen', N'naimeiheng', N'NIJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1260', N'90', N',2,90,1260,', N'3', N'斯海尔托亨博思', N'''s-Hertogenbosch', N'sihaiertuohengbosi', N'HTB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1261', N'90', N',2,90,1261,', N'3', N'乌得勒支', N'Utrecht', N'wudelezhi', N'UTC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1262', N'90', N',2,90,1262,', N'3', N'兹沃勒', N'Zwolle', N'ziwole', N'ZWO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1263', N'90', N',2,90,1263,', N'3', N'佐特尔梅', N'Zoetermeer', N'zuoteermei', N'ZTM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1264', N'93', N',4,93,1264,', N'3', N'阿特兰蒂达', N'Atlantida', N'atelandida', N'AT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1265', N'93', N',4,93,1265,', N'3', N'埃尔帕拉伊索', N'El Paraiso', N'aierpalayisuo', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1266', N'93', N',4,93,1266,', N'3', N'奥科特佩克', N'Ocotepeque', N'aoketepeike', N'OC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1267', N'93', N',4,93,1267,', N'3', N'奥兰乔', N'Olancho', N'aolanqiao', N'OL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1268', N'93', N',4,93,1268,', N'3', N'弗朗西斯科-莫拉桑', N'Francisco Morazan', N'fulangxisikemolasang', N'FM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1269', N'93', N',4,93,1269,', N'3', N'格拉西亚斯-阿迪奥斯', N'Gracias a Dios', N'gelaxiyasiadiaosi', N'GD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1270', N'93', N',4,93,1270,', N'3', N'海湾群岛', N'Islas de la Bahia', N'haiwanqundao', N'IB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1271', N'93', N',4,93,1271,', N'3', N'科尔特斯', N'Cortes', N'keertesi', N'CR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1272', N'93', N',4,93,1272,', N'3', N'科隆', N'Colon', N'kelong', N'CL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1273', N'93', N',4,93,1273,', N'3', N'科马亚瓜', N'Comayagua', N'kemayagua', N'CM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1274', N'93', N',4,93,1274,', N'3', N'科潘', N'Copan', N'kepan', N'CP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1275', N'93', N',4,93,1275,', N'3', N'拉巴斯', N'La Paz', N'labasi', N'PZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1276', N'93', N',4,93,1276,', N'3', N'伦皮拉', N'Lempira', N'lunpila', N'LE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1277', N'93', N',4,93,1277,', N'3', N'乔卢特卡', N'Choluteca', N'qiaoluteka', N'CH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1278', N'93', N',4,93,1278,', N'3', N'乔罗马', N'Choloma', N'qiaoluoma', N'CHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1279', N'93', N',4,93,1279,', N'3', N'山谷', N'Valle', N'shangu', N'VA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1280', N'93', N',4,93,1280,', N'3', N'圣巴巴拉', N'Santa Barbara', N'shengbabala', N'SB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1281', N'93', N',4,93,1281,', N'3', N'因蒂布卡', N'Intibuca', N'yindibuka', N'IN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1282', N'93', N',4,93,1282,', N'3', N'约罗', N'Yoro', N'yueluo', N'YO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1283', N'94', N',6,94,1283,', N'3', N'菲尼克斯群岛', N'Phoenix Islands', N'feinikesiqundao', N'PHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1284', N'94', N',6,94,1284,', N'3', N'吉尔伯特群岛', N'Gilberts Islands', N'jierbotequndao', N'GIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1285', N'94', N',6,94,1285,', N'3', N'莱恩群岛', N'Line Islands', N'laienqundao', N'LIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1286', N'95', N',3,95,1286,', N'3', N'阿里萨比赫区', N'Ali Sabih', N'alisabihequ', N'S')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1287', N'95', N',3,95,1287,', N'3', N'奥博克区', N'Obock', N'aobokequ', N'O')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1288', N'95', N',3,95,1288,', N'3', N'迪基勒区', N'Dikhil', N'dijilequ', N'K')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1289', N'95', N',3,95,1289,', N'3', N'塔朱拉区', N'Tadjoura', N'tazhulaqu', N'T')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1290', N'96', N',1,96,1290,', N'3', N'奥什', N'Osh', N'aoshi', N'O')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1291', N'96', N',1,96,1291,', N'3', N'巴特肯', N'Batken', N'bateken', N'B')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1292', N'96', N',1,96,1292,', N'3', N'比什凯克市', N'Bishkek', N'bishikaikeshi', N'GB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1293', N'96', N',1,96,1293,', N'3', N'楚河', N'Chuy', N'chuhe', N'C')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1294', N'96', N',1,96,1294,', N'3', N'贾拉拉巴德', N'Jalal-Abad', N'jialalabade', N'J')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1295', N'96', N',1,96,1295,', N'3', N'卡拉巴尔塔', N'Karabalta', N'kalabaerta', N'KBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1296', N'96', N',1,96,1296,', N'3', N'卡拉库尔', N'Kara-Kol', N'kalakuer', N'KKO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1297', N'96', N',1,96,1297,', N'3', N'坎特', N'Kant', N'kante', N'KAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1298', N'96', N',1,96,1298,', N'3', N'科克扬加克', N'Kok-Jangak', N'kekeyangjiake', N'KJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1299', N'96', N',1,96,1299,', N'3', N'迈利赛', N'Mailuu-Suu', N'mailisai', N'MS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1300', N'96', N',1,96,1300,', N'3', N'纳伦', N'Naryn', N'nalun', N'N')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1301', N'96', N',1,96,1301,', N'3', N'苏卢克图', N'Suluktu', N'suluketu', N'SU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1302', N'96', N',1,96,1302,', N'3', N'塔拉斯', N'Talas', N'talasi', N'T')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1303', N'96', N',1,96,1303,', N'3', N'塔什库梅尔', N'Tash-Kumyr', N'tashikumeier', N'TK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1304', N'96', N',1,96,1304,', N'3', N'乌兹根', N'Uzgen', N'wuzigen', N'UG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1305', N'96', N',1,96,1305,', N'3', N'伊塞克湖', N'Ysyk-Kol', N'yisaikehu', N'Y')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1306', N'97', N',3,97,1306,', N'3', N'博凯', N'Boke', N'bokai', N'BOK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1307', N'97', N',3,97,1307,', N'3', N'恩泽雷科雷', N'Nzerekore', N'enzeleikelei', N'NZR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1308', N'97', N',3,97,1308,', N'3', N'法拉纳', N'Faranah', N'falana', N'FRN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1309', N'97', N',3,97,1309,', N'3', N'金迪亚', N'Kindia', N'jindiya', N'KND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1310', N'97', N',3,97,1310,', N'3', N'康康', N'Kankan', N'kangkang', N'KNK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1311', N'97', N',3,97,1311,', N'3', N'科纳克里', N'Conakry', N'kenakeli', N'CNK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1312', N'97', N',3,97,1312,', N'3', N'拉贝', N'Labe', N'labei', N'LAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1313', N'97', N',3,97,1313,', N'3', N'玛木', N'Mamou', N'mamu', N'MAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1314', N'99', N',4,99,1314,', N'3', N'阿伯茨福', N'Abbotsford', N'abocifu', N'ABB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1315', N'99', N',4,99,1315,', N'3', N'埃德蒙顿', N'Edmonton', N'aidemengdun', N'EDM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1316', N'99', N',4,99,1316,', N'3', N'奥沙瓦', N'Oshawa', N'aoshawa', N'OSH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1317', N'99', N',4,99,1317,', N'3', N'巴里', N'Barrie', N'bali', N'BAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1318', N'99', N',4,99,1318,', N'3', N'布列塔尼角', N'Cape Breton', N'bulietanijiao', N'CBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1319', N'99', N',4,99,1319,', N'3', N'多伦多', N'Toronto', N'duolunduo', N'TOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1320', N'99', N',4,99,1320,', N'3', N'弗雷德里顿', N'Fredericton', N'fuleidelidun', N'FRE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1321', N'99', N',4,99,1321,', N'3', N'圭尔夫', N'Guelph', N'guierfu', N'GLP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1322', N'99', N',4,99,1322,', N'3', N'哈利法克斯', N'Halifax', N'halifakesi', N'HAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1323', N'99', N',4,99,1323,', N'3', N'哈密尔顿', N'Hamilton', N'hamierdun', N'HAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1324', N'99', N',4,99,1324,', N'3', N'怀特霍斯', N'Whitehorse', N'huaitehuosi', N'YXY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1325', N'99', N',4,99,1325,', N'3', N'基劳纳', N'Kelowna', N'jilaona', N'KWL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1326', N'99', N',4,99,1326,', N'3', N'基奇纳', N'Brampton', N'jiqina', N'BRP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1327', N'99', N',4,99,1327,', N'3', N'金斯敦', N'Kingston', N'jinsidun', N'KGN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1328', N'99', N',4,99,1328,', N'3', N'卡里加里', N'Calgary', N'kalijiali', N'CAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1329', N'99', N',4,99,1329,', N'3', N'魁北克', N'Quebec', N'kuibeike', N'QUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1330', N'99', N',4,99,1330,', N'3', N'里贾纳', N'Regina', N'lijiana', N'REG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1331', N'99', N',4,99,1331,', N'3', N'伦敦', N'London', N'lundun', N'LOD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1332', N'99', N',4,99,1332,', N'3', N'蒙特利尔', N'Montreal', N'mengtelier', N'MTR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1333', N'99', N',4,99,1333,', N'3', N'萨德伯里', N'Sudbury', N'sadeboli', N'SUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1334', N'99', N',4,99,1334,', N'3', N'萨斯卡通', N'Saskatoon', N'sasikatong', N'SAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1335', N'99', N',4,99,1335,', N'3', N'三河城', N'Trois-Rivieres', N'sanhecheng', N'TRR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1336', N'99', N',4,99,1336,', N'3', N'桑德贝', N'Thunder Bay', N'sangdebei', N'THU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1337', N'99', N',4,99,1337,', N'3', N'舍布鲁克', N'Sherbrooke', N'shebuluke', N'SBE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1338', N'99', N',4,99,1338,', N'3', N'圣卡塔琳娜', N'St. Catharines', N'shengkatalinna', N'SCA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1339', N'99', N',4,99,1339,', N'3', N'圣约翰斯', N'Saint-John''s', N'shengyuehansi', N'SJB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1340', N'99', N',4,99,1340,', N'3', N'维多利亚', N'Victoria', N'weiduoliya', N'VIC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1341', N'99', N',4,99,1341,', N'3', N'温哥华', N'Vancouver', N'wengehua', N'VAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1342', N'99', N',4,99,1342,', N'3', N'温尼伯', N'Winnipeg', N'wennibo', N'WNP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1343', N'99', N',4,99,1343,', N'3', N'温莎', N'Windsor', N'wensha', N'WDR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1344', N'99', N',4,99,1344,', N'3', N'渥太华', N'Ottawa', N'taihua', N'OTT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1345', N'99', N',4,99,1345,', N'3', N'夏洛特敦', N'Charlottetown', N'xialuotedun', N'CHA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1346', N'99', N',4,99,1346,', N'3', N'耶洛奈夫', N'Yellowknife', N'yeluonaifu', N'YZF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1347', N'99', N',4,99,1347,', N'3', N'伊魁特', N'Iqaluit', N'yikuite', N'IQL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1348', N'100', N',3,100,1348,', N'3', N'阿散蒂', N'Ashanti', N'asandi', N'AS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1349', N'100', N',3,100,1349,', N'3', N'奥布阿西', N'Obuasi', N'aobuaxi', N'OBU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1350', N'100', N',3,100,1350,', N'3', N'北部', N'Northern', N'beibu', N'NO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1351', N'100', N',3,100,1351,', N'3', N'布朗阿哈福', N'Brong Ahafo', N'bulangahafu', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1352', N'100', N',3,100,1352,', N'3', N'大阿克拉', N'Greater Accra', N'daakela', N'GA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1353', N'100', N',3,100,1353,', N'3', N'东部', N'Eastern', N'dongbu', N'EA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1354', N'100', N',3,100,1354,', N'3', N'上东部', N'Upper East', N'shangdongbu', N'UE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1355', N'100', N',3,100,1355,', N'3', N'上西部', N'Upper West', N'shangxibu', N'UW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1356', N'100', N',3,100,1356,', N'3', N'沃尔特', N'Volta', N'woerte', N'VO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1357', N'100', N',3,100,1357,', N'3', N'西部', N'Western', N'xibu', N'WE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1358', N'100', N',3,100,1358,', N'3', N'中部', N'Central', N'zhongbu', N'CE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1359', N'101', N',3,101,1359,', N'3', N'奥果韦-洛洛', N'Ogooue-Lolo', N'aoguoweiluoluo', N'OL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1360', N'101', N',3,101,1360,', N'3', N'奥果韦-伊温多', N'Ogooue-Ivindo', N'aoguoweiyiwenduo', N'OI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1361', N'101', N',3,101,1361,', N'3', N'滨海奥果韦', N'Ogooue-Maritime', N'binhaiaoguowei', N'OM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1362', N'101', N',3,101,1362,', N'3', N'恩古涅', N'Ngounie', N'engunie', N'NG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1363', N'101', N',3,101,1363,', N'3', N'河口', N'Estuaire', N'hekou', N'ES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1364', N'101', N',3,101,1364,', N'3', N'尼扬加', N'Nyanga', N'niyangjia', N'NY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1365', N'101', N',3,101,1365,', N'3', N'上奥果韦', N'Haut-Ogooue', N'shangaoguowei', N'HO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1366', N'101', N',3,101,1366,', N'3', N'沃勒-恩特姆', N'Woleu-Ntem', N'woleentemu', N'WN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1367', N'101', N',3,101,1367,', N'3', N'中奥果韦', N'Moyen-Ogooue', N'zhongaoguowei', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1368', N'102', N',1,102,1368,', N'3', N'奥多棉吉', N'Otdar Mean Chey', N'aoduomianji', N'OC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1369', N'102', N',1,102,1369,', N'3', N'白马市', N'Krong Keb', N'baimashi', N'KB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1370', N'102', N',1,102,1370,', N'3', N'柏威夏', N'Preah Vihear', N'baiweixia', N'PR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1371', N'102', N',1,102,1371,', N'3', N'拜林市', N'Krong Pailin', N'bailinshi', N'PL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1372', N'102', N',1,102,1372,', N'3', N'班迭棉吉', N'Banteay Mean Chey', N'bandiemianji', N'BM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1373', N'102', N',1,102,1373,', N'3', N'磅清扬', N'Kampong Chhnang', N'bangqingyang', N'KZC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1374', N'102', N',1,102,1374,', N'3', N'磅士卑', N'Kampong Spoe', N'bangshibei', N'KO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1375', N'102', N',1,102,1375,', N'3', N'磅同', N'Kampong Thum', N'bangtong', N'KZK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1376', N'102', N',1,102,1376,', N'3', N'磅湛', N'Kampong Cham', N'bangzhan', N'KM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1377', N'102', N',1,102,1377,', N'3', N'波罗勉', N'Prey Veng', N'boluomian', N'PG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1378', N'102', N',1,102,1378,', N'3', N'茶胶', N'Takev', N'chajiao', N'TK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1379', N'102', N',1,102,1379,', N'3', N'柴桢', N'Svay Rieng', N'chai', N'SVR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1380', N'102', N',1,102,1380,', N'3', N'干丹', N'Kandal', N'gandan', N'KL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1381', N'102', N',1,102,1381,', N'3', N'戈公', N'Kaoh Kong', N'gegong', N'KKZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1382', N'102', N',1,102,1382,', N'3', N'贡布', N'Kampot', N'gongbu', N'KMT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1383', N'102', N',1,102,1383,', N'3', N'金边市', N'Phnum Penh', N'jinbianshi', N'PNH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1384', N'102', N',1,102,1384,', N'3', N'桔井', N'Kracheh', N'jiejing', N'KH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1385', N'102', N',1,102,1385,', N'3', N'腊塔纳基里', N'Rotanak Kiri', N'latanajili', N'RBE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1386', N'102', N',1,102,1386,', N'3', N'马德望', N'Bat Dambang', N'madewang', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1387', N'102', N',1,102,1387,', N'3', N'蒙多基里', N'Mondol Kiri', N'mengduojili', N'MWV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1388', N'102', N',1,102,1388,', N'3', N'菩萨', N'Pouthĭsat', N'pusa', N'PO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1389', N'102', N',1,102,1389,', N'3', N'上丁', N'Stoeng Treng', N'shangding', N'TNX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1390', N'102', N',1,102,1390,', N'3', N'西哈努克市', N'Krong Preah', N'xihanukeshi', N'KA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1391', N'102', N',1,102,1391,', N'3', N'暹粒', N'Siem Reab', N'li', N'REP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1392', N'103', N',2,103,1392,', N'3', N'奥洛穆茨', N'Olomoucky', N'aoluomuci', N'OL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1393', N'103', N',2,103,1393,', N'3', N'比尔森', N'Plzensky', N'biersen', N'PL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1394', N'103', N',2,103,1394,', N'3', N'布拉格直辖市', N'Prague', N'bulagezhixiashi', N'PR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1395', N'103', N',2,103,1395,', N'3', N'赫拉德茨-克拉洛韦', N'Kralovehradecky', N'heladecikelaluowei', N'KR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1396', N'103', N',2,103,1396,', N'3', N'卡罗维发利', N'Karlovarsky', N'kaluoweifali', N'KA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1397', N'103', N',2,103,1397,', N'3', N'利贝雷克', N'Liberecky', N'libeileike', N'LI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1398', N'103', N',2,103,1398,', N'3', N'摩拉维亚-西里西亚', N'Moravskoslezsky', N'molaweiyaxilixiya', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1399', N'103', N',2,103,1399,', N'3', N'南摩拉维亚', N'Jihomoravsky', N'nanmolaweiya', N'JC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1400', N'103', N',2,103,1400,', N'3', N'帕尔杜比采', N'Pardubicky', N'paerdubicai', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1401', N'103', N',2,103,1401,', N'3', N'维索基纳', N'Vysocina', N'weisuojina', N'VY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1402', N'103', N',2,103,1402,', N'3', N'乌斯季', N'Ustecky', N'wusiji', N'US')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1403', N'103', N',2,103,1403,', N'3', N'中捷克', N'Stredocesky', N'zhongjieke', N'ST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1404', N'103', N',2,103,1404,', N'3', N'兹林', N'Zlinsky', N'zilin', N'ZL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1405', N'104', N',3,104,1405,', N'3', N'北马塔贝莱兰', N'Matabeleland North', N'beimatabeilailan', N'MN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1406', N'104', N',3,104,1406,', N'3', N'布拉瓦约', N'Bulawayo', N'bulawayue', N'BU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1407', N'104', N',3,104,1407,', N'3', N'东马绍纳兰', N'Mashonaland East', N'dongmashaonalan', N'ME')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1408', N'104', N',3,104,1408,', N'3', N'哈拉雷', N'Harare', N'halalei', N'HA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1409', N'104', N',3,104,1409,', N'3', N'马尼卡兰', N'Manicaland', N'manikalan', N'ML')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1410', N'104', N',3,104,1410,', N'3', N'马斯温戈', N'Masvingo', N'masiwenge', N'MV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1411', N'104', N',3,104,1411,', N'3', N'南马塔贝莱兰', N'Matabeleland South', N'nanmatabeilailan', N'MS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1412', N'104', N',3,104,1412,', N'3', N'西马绍纳兰', N'Mashonaland West', N'ximashaonalan', N'MW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1413', N'104', N',3,104,1413,', N'3', N'中部', N'Midlands', N'zhongbu', N'MD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1414', N'104', N',3,104,1414,', N'3', N'中马绍纳兰', N'Mashonaland Central', N'zhongmashaonalan', N'MC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1415', N'105', N',3,105,1415,', N'3', N'阿达马瓦', N'Adamaoua', N'adamawa', N'ADA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1416', N'105', N',3,105,1416,', N'3', N'北部', N'Nord', N'beibu', N'NOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1417', N'105', N',3,105,1417,', N'3', N'北端', N'Extreme-Nord', N'beiduan', N'EXN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1418', N'105', N',3,105,1418,', N'3', N'滨海', N'Littoral', N'binhai', N'LIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1419', N'105', N',3,105,1419,', N'3', N'东部', N'Est', N'dongbu', N'EST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1420', N'105', N',3,105,1420,', N'3', N'南部', N'Sud', N'nanbu', N'SUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1421', N'105', N',3,105,1421,', N'3', N'西北', N'Nord-Oueste', N'xibei', N'NOT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1422', N'105', N',3,105,1422,', N'3', N'西部', N'Ouest', N'xibu', N'OUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1423', N'105', N',3,105,1423,', N'3', N'西南', N'Sud-Oueste', N'xinan', N'SOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1424', N'105', N',3,105,1424,', N'3', N'中央', N'Centre', N'zhongyang', N'CEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1425', N'106', N',1,106,1425,', N'3', N'北部', N'Madinat ach Shamal', N'beibu', N'MS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1426', N'106', N',1,106,1426,', N'3', N'多哈', N'Ad Dawhah', N'duoha', N'DW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1427', N'106', N',1,106,1427,', N'3', N'古韦里耶', N'Al Ghuwariyah', N'guweiliye', N'GW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1428', N'106', N',1,106,1428,', N'3', N'豪尔', N'Al Khawr', N'haoer', N'KR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1429', N'106', N',1,106,1429,', N'3', N'杰里扬拜特奈', N'Jariyan al Batnah', N'jieliyangbaitenai', N'JB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1430', N'106', N',1,106,1430,', N'3', N'赖扬', N'Ar Rayyan', N'laiyang', N'RN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1431', N'106', N',1,106,1431,', N'3', N'沃克拉', N'Al Wakrah', N'wokela', N'WK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1432', N'106', N',1,106,1432,', N'3', N'乌姆锡拉勒', N'Umm Salal', N'wumuxilale', N'UL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1433', N'106', N',1,106,1433,', N'3', N'朱迈利耶', N'Al Jumaliyah', N'zhumailiye', N'JM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1434', N'110', N',3,110,1434,', N'3', N'阿涅比', N'Agnebi', N'aniebi', N'AG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1435', N'110', N',3,110,1435,', N'3', N'巴芬', N'Bafing', N'bafen', N'BF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1436', N'110', N',3,110,1436,', N'3', N'邦达马河谷', N'Vallee du Bandama', N'bangdamahegu', N'VB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1437', N'110', N',3,110,1437,', N'3', N'登盖莱', N'Denguele', N'denggailai', N'DE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1438', N'110', N',3,110,1438,', N'3', N'恩济－科莫埃', N'Nzi-Comoe', N'enjikemoai', N'NC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1439', N'110', N',3,110,1439,', N'3', N'弗罗马格尔', N'Fromager', N'fuluomageer', N'FR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1440', N'110', N',3,110,1440,', N'3', N'湖泊', N'Lacs', N'hubo', N'LC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1441', N'110', N',3,110,1441,', N'3', N'马拉韦', N'Marahoue', N'malawei', N'MR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1442', N'110', N',3,110,1442,', N'3', N'南邦达马', N'Sud-Bandama', N'nanbangdama', N'SB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1443', N'110', N',3,110,1443,', N'3', N'南科莫埃', N'Sud-Comoe', N'nankemoai', N'SC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1444', N'110', N',3,110,1444,', N'3', N'萨桑德拉', N'Haut-Sassandra', N'sasangdela', N'HT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1445', N'110', N',3,110,1445,', N'3', N'萨瓦纳', N'Savanes', N'sawana', N'SV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1446', N'110', N',3,110,1446,', N'3', N'山地', N'Montagnes', N'shandi', N'DH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1447', N'110', N',3,110,1447,', N'3', N'沃罗杜古', N'Worodougou', N'woluodugu', N'WR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1448', N'110', N',3,110,1448,', N'3', N'下萨桑德拉', N'Bas-Sassandra', N'xiasasangdela', N'BS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1449', N'110', N',3,110,1449,', N'3', N'泻湖', N'Lagunes', N'xiehu', N'LG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1450', N'110', N',3,110,1450,', N'3', N'赞赞', N'Zanzan', N'zanzan', N'ZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1451', N'110', N',3,110,1451,', N'3', N'中卡瓦利', N'Moyen-Cavally', N'zhongkawali', N'MV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1452', N'110', N',3,110,1452,', N'3', N'中科莫埃', N'Moyen-Comoe', N'zhongkemoai', N'MC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1453', N'112', N',2,112,1453,', N'3', N'奥西耶克-巴拉尼亚', N'Osjecko-Baranjska', N'aoxiyekebalaniya', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1454', N'112', N',2,112,1454,', N'3', N'别洛瓦尔-比洛戈拉', N'Bjelovarsko-Bilogorska', N'bieluowaerbiluogela', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1455', N'112', N',2,112,1455,', N'3', N'滨海和山区', N'Primorsko-Goranska', N'binhaiheshanqu', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1456', N'112', N',2,112,1456,', N'3', N'波热加-斯拉沃尼亚', N'Pozega-Slavonia', N'borejiasilawoniya', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1457', N'112', N',2,112,1457,', N'3', N'布罗德-波萨维纳', N'Brodsko-Posavska', N'buluodebosaweina', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1458', N'112', N',2,112,1458,', N'3', N'杜布罗夫斯克-内雷特瓦', N'Dubrovacko-Neretvanska', N'dubuluofusikeneileitewa', N'19')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1459', N'112', N',2,112,1459,', N'3', N'卡尔洛瓦茨', N'Karlovacka', N'kaerluowaci', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1460', N'112', N',2,112,1460,', N'3', N'科普里夫尼察-克里热夫齐', N'Koprivnicko-Krizevacka', N'kepulifunichakelirefuqi', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1461', N'112', N',2,112,1461,', N'3', N'克拉皮纳-扎戈列', N'Krapinsko-Zagorska', N'kelapinazhagelie', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1462', N'112', N',2,112,1462,', N'3', N'利卡-塞尼', N'Licko-Senjska', N'likasaini', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1463', N'112', N',2,112,1463,', N'3', N'梅吉穆列', N'Medimurska', N'meijimulie', N'20')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1464', N'112', N',2,112,1464,', N'3', N'萨格勒布', N'Zagrebacka', N'sagelebu', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1465', N'112', N',2,112,1465,', N'3', N'萨格勒布市', N'Grad Zagreb', N'sagelebushi', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1466', N'112', N',2,112,1466,', N'3', N'斯普利特-达尔马提亚', N'Splitsko-Dalmatinska', N'sipulitedaermatiya', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1467', N'112', N',2,112,1467,', N'3', N'瓦拉日丁', N'Varazdinska', N'walariding', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1468', N'112', N',2,112,1468,', N'3', N'维罗维蒂察-波德拉维纳', N'Viroviticko-Podravska', N'weiluoweidichabodelaweina', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1469', N'112', N',2,112,1469,', N'3', N'武科瓦尔-斯里耶姆', N'Vukovarsko-Srijemska', N'wukewaersiliyemu', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1470', N'112', N',2,112,1470,', N'3', N'希贝尼克-克宁', N'Sibensko-Kninska', N'xibeinikekening', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1471', N'112', N',2,112,1471,', N'3', N'锡萨克-莫斯拉维纳', N'Sisacko-Moslavacka', N'xisakemosilaweina', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1472', N'112', N',2,112,1472,', N'3', N'伊斯特拉', N'Istarska', N'yisitela', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1473', N'112', N',2,112,1473,', N'3', N'扎达尔', N'Zadarska', N'zhadaer', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1474', N'113', N',3,113,1474,', N'3', N'埃尔格约-马拉奎特', N'Elgeyo-Marakwet', N'aiergeyuemalakuite', N'EMA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1475', N'113', N',3,113,1475,', N'3', N'巴林戈', N'Baringo', N'balinge', N'BAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1476', N'113', N',3,113,1476,', N'3', N'邦戈马', N'Bungoma', N'banggema', N'BUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1477', N'113', N',3,113,1477,', N'3', N'博美特', N'Bomet', N'bomeite', N'BOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1478', N'113', N',3,113,1478,', N'3', N'布希亚', N'Busia', N'buxiya', N'BUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1479', N'113', N',3,113,1479,', N'3', N'恩布', N'Embu', N'enbu', N'EMB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1480', N'113', N',3,113,1480,', N'3', N'霍马湾', N'Homa Bay', N'huomawan', N'HOB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1481', N'113', N',3,113,1481,', N'3', N'基安布', N'Kiambu', N'jianbu', N'KIA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1482', N'113', N',3,113,1482,', N'3', N'基里菲', N'Kilifi', N'jilifei', N'KIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1483', N'113', N',3,113,1483,', N'3', N'基里尼亚加', N'Kirinyaga', N'jiliniyajia', N'KIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1484', N'113', N',3,113,1484,', N'3', N'基苏木', N'Kisumu', N'jisumu', N'KIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1485', N'113', N',3,113,1485,', N'3', N'基图伊', N'Kitui', N'jituyi', N'KIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1486', N'113', N',3,113,1486,', N'3', N'基西', N'Kisii', N'jixi', N'KII')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1487', N'113', N',3,113,1487,', N'3', N'加里萨', N'Garissa', N'jialisa', N'GAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1488', N'113', N',3,113,1488,', N'3', N'卡卡梅加', N'Kakamega', N'kakameijia', N'KAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1489', N'113', N',3,113,1489,', N'3', N'卡耶亚多', N'Kajiado', N'kayeyaduo', N'KAJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1490', N'113', N',3,113,1490,', N'3', N'凯里乔', N'Kericho', N'kailiqiao', N'KEY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1491', N'113', N',3,113,1491,', N'3', N'夸勒', N'Kwale', N'kuale', N'KWA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1492', N'113', N',3,113,1492,', N'3', N'拉木', N'Lamu', N'lamu', N'LAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1493', N'113', N',3,113,1493,', N'3', N'莱基皮亚', N'Laikipia', N'laijipiya', N'LAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1494', N'113', N',3,113,1494,', N'3', N'马查科斯', N'Machakos', N'machakesi', N'MAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1495', N'113', N',3,113,1495,', N'3', N'马瓜尼', N'Makueni', N'maguani', N'MAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1496', N'113', N',3,113,1496,', N'3', N'马萨布布', N'Marsabit', N'masabubu', N'RBT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1497', N'113', N',3,113,1497,', N'3', N'曼德拉', N'Mandera', N'mandela', N'MAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1498', N'113', N',3,113,1498,', N'3', N'梅鲁', N'Meru', N'meilu', N'MER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1499', N'113', N',3,113,1499,', N'3', N'蒙巴萨', N'Mombasa', N'mengbasa', N'MOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1500', N'113', N',3,113,1500,', N'3', N'米戈利', N'Migori', N'migeli', N'MIG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1501', N'113', N',3,113,1501,', N'3', N'穆兰卡', N'Muranga', N'mulanka', N'MUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1502', N'113', N',3,113,1502,', N'3', N'纳库鲁', N'Nakuru', N'nakulu', N'NUU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1503', N'113', N',3,113,1503,', N'3', N'纳罗克', N'Narok', N'naluoke', N'NAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1504', N'113', N',3,113,1504,', N'3', N'南迪', N'Nandi', N'nandi', N'NAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1505', N'113', N',3,113,1505,', N'3', N'内罗毕', N'Nairobi', N'neiluobi', N'NA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1506', N'113', N',3,113,1506,', N'3', N'尼蒂', N'Nithi', N'nidi', N'NIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1507', N'113', N',3,113,1507,', N'3', N'尼亚米拉', N'Nyamira', N'niyamila', N'NYM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1508', N'113', N',3,113,1508,', N'3', N'年达鲁阿', N'Nyandarua', N'niandalua', N'NYN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1509', N'113', N',3,113,1509,', N'3', N'涅里', N'Nyeri', N'nieli', N'NYE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1510', N'113', N',3,113,1510,', N'3', N'桑布卢', N'Samburu', N'sangbulu', N'UAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1511', N'113', N',3,113,1511,', N'3', N'塔纳河', N'Tana River', N'tanahe', N'TRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1512', N'113', N',3,113,1512,', N'3', N'泰塔塔维塔', N'Taita-Taveta', N'taitataweita', N'TTA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1513', N'113', N',3,113,1513,', N'3', N'特兰斯-恩佐亚', N'Trans-Nzoia', N'telansienzuoya', N'TNZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1514', N'113', N',3,113,1514,', N'3', N'图尔卡纳', N'Turkana', N'tuerkana', N'TUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1515', N'113', N',3,113,1515,', N'3', N'瓦吉尔', N'Wajir', N'wajier', N'WJR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1516', N'113', N',3,113,1516,', N'3', N'瓦辛基苏', N'Uasin Gishu', N'waxinjisu', N'UGI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1517', N'113', N',3,113,1517,', N'3', N'韦希加', N'Vihiga', N'weixijia', N'VIH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1518', N'113', N',3,113,1518,', N'3', N'西波克特', N'West Pokot', N'xibokete', N'WPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1519', N'113', N',3,113,1519,', N'3', N'夏亚', N'Siaya', N'xiaya', N'SIA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1520', N'113', N',3,113,1520,', N'3', N'伊希约洛', N'Isiolo', N'yixiyueluo', N'ISI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1521', N'113', N',3,113,1521,', N'3', N'中央', N'Central', N'zhongyang', N'CE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1522', N'115', N',2,115,1522,', N'3', N'阿卢克斯内', N'Aluksnes', N'alukesinei', N'ALU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1523', N'115', N',2,115,1523,', N'3', N'爱兹克劳克雷', N'Aizkraukles', N'aizikelaokelei', N'AIZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1524', N'115', N',2,115,1524,', N'3', N'奥格雷', N'Ogres', N'aogelei', N'OGR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1525', N'115', N',2,115,1525,', N'3', N'巴尔维', N'Balvu', N'baerwei', N'BAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1526', N'115', N',2,115,1526,', N'3', N'包斯卡', N'Bauskas', N'baosika', N'BAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1527', N'115', N',2,115,1527,', N'3', N'采西斯', N'Cesu', N'caixisi', N'CES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1528', N'115', N',2,115,1528,', N'3', N'多贝莱', N'Dobeles', N'duobeilai', N'DOB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1529', N'115', N',2,115,1529,', N'3', N'古尔贝内', N'Gulbenes', N'guerbeinei', N'GUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1530', N'115', N',2,115,1530,', N'3', N'杰卡布皮尔斯', N'Jekabpils', N'jiekabupiersi', N'JEK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1531', N'115', N',2,115,1531,', N'3', N'克拉斯拉瓦', N'Kraslavas', N'kelasilawa', N'KRA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1532', N'115', N',2,115,1532,', N'3', N'库尔迪加', N'Kuldigas', N'kuerdijia', N'KUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1533', N'115', N',2,115,1533,', N'3', N'雷泽克内', N'Rezeknes', N'leizekenei', N'RZR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1534', N'115', N',2,115,1534,', N'3', N'里加', N'Rigas', N'lijia', N'RGA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1535', N'115', N',2,115,1535,', N'3', N'利耶帕亚', N'Liepajas', N'liyepaya', N'LPK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1536', N'115', N',2,115,1536,', N'3', N'林巴济', N'Limbazu', N'linbaji', N'LIM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1537', N'115', N',2,115,1537,', N'3', N'卢扎', N'Ludzas', N'luzha', N'LUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1538', N'115', N',2,115,1538,', N'3', N'马多纳', N'Madonas', N'maduona', N'MAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1539', N'115', N',2,115,1539,', N'3', N'普雷利', N'Preilu', N'puleili', N'PRE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1540', N'115', N',2,115,1540,', N'3', N'萨尔杜斯', N'Saldus', N'saerdusi', N'SAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1541', N'115', N',2,115,1541,', N'3', N'塔尔西', N'Talsu', N'taerxi', N'TAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1542', N'115', N',2,115,1542,', N'3', N'陶格夫皮尔斯', N'Daugavpils', N'taogefupiersi', N'DGR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1543', N'115', N',2,115,1543,', N'3', N'图库马', N'Tukuma', N'tukuma', N'TUK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1544', N'115', N',2,115,1544,', N'3', N'瓦尔加', N'Valkas', N'waerjia', N'VLK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1545', N'115', N',2,115,1545,', N'3', N'瓦尔米耶拉', N'Valmieras', N'waermiyela', N'VLM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1546', N'115', N',2,115,1546,', N'3', N'文茨皮尔斯', N'Ventspils', N'wencipiersi', N'VSL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1547', N'115', N',2,115,1547,', N'3', N'叶尔加瓦', N'Jelgavas', N'yeerjiawa', N'JGR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1548', N'116', N',3,116,1548,', N'3', N'伯里亚', N'Berea', N'boliya', N'D')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1549', N'116', N',3,116,1549,', N'3', N'布塔布泰', N'Butha-Buthe', N'butabutai', N'B')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1550', N'116', N',3,116,1550,', N'3', N'古廷', N'Quthing', N'guting', N'G')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1551', N'116', N',3,116,1551,', N'3', N'加查斯内克', N'Qachas Nek', N'jiachasineike', N'H')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1552', N'116', N',3,116,1552,', N'3', N'莱里贝', N'Leribe', N'lailibei', N'C')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1553', N'116', N',3,116,1553,', N'3', N'马费滕', N'Mafeteng', N'mafei', N'E')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1554', N'116', N',3,116,1554,', N'3', N'马塞卢', N'Maseru', N'masailu', N'A')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1555', N'116', N',3,116,1555,', N'3', N'莫哈莱斯胡克', N'Mohales Hoek', N'mohalaisihuke', N'F')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1556', N'116', N',3,116,1556,', N'3', N'莫霍特隆', N'Mokhotlong', N'mohuotelong', N'J')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1557', N'116', N',3,116,1557,', N'3', N'塔巴采卡', N'Thaba-Tseka', N'tabacaika', N'K')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1558', N'117', N',1,117,1558,', N'3', N'阿速坡', N'Attapu', N'asupo', N'AT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1559', N'117', N',1,117,1559,', N'3', N'波里坎赛', N'Bolikhamxai', N'bolikansai', N'BL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1560', N'117', N',1,117,1560,', N'3', N'博乔', N'Bokeo', N'boqiao', N'BK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1561', N'117', N',1,117,1561,', N'3', N'川圹', N'Xiangkhoang', N'chuan', N'XI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1562', N'117', N',1,117,1562,', N'3', N'丰沙里', N'Phongsali', N'fengshali', N'PH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1563', N'117', N',1,117,1563,', N'3', N'甘蒙', N'Khammouan', N'ganmeng', N'KH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1564', N'117', N',1,117,1564,', N'3', N'华潘', N'Houaphan', N'huapan', N'HO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1565', N'117', N',1,117,1565,', N'3', N'琅勃拉邦', N'Louangphrabang', N'langbolabang', N'LP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1566', N'117', N',1,117,1566,', N'3', N'琅南塔', N'Louang Namtha', N'langnanta', N'LM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1567', N'117', N',1,117,1567,', N'3', N'赛宋本行政特区', N'Xaisomboun', N'saisongbenxingzhengtequ', N'XN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1568', N'117', N',1,117,1568,', N'3', N'色贡', N'Xekong', N'segong', N'XE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1569', N'117', N',1,117,1569,', N'3', N'沙拉湾', N'Saravan', N'shalawan', N'SL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1570', N'117', N',1,117,1570,', N'3', N'沙湾拿吉', N'Savannakhet', N'shawannaji', N'SV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1571', N'117', N',1,117,1571,', N'3', N'沙耶武里', N'Xaignabouri', N'shayewuli', N'XA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1572', N'117', N',1,117,1572,', N'3', N'万象', N'Vientiane', N'wanxiang', N'VI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1573', N'117', N',1,117,1573,', N'3', N'乌多姆赛', N'Oudomxai', N'wuduomusai', N'OU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1574', N'117', N',1,117,1574,', N'3', N'占巴塞', N'Champasak', N'zhanbasai', N'CH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1575', N'118', N',1,118,1575,', N'3', N'北部', N'Ash-Shamal', N'beibu', N'AS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1576', N'118', N',1,118,1576,', N'3', N'贝卡', N'Al-Biqa', N'beika', N'BI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1577', N'118', N',1,118,1577,', N'3', N'贝鲁特', N'Bayrut', N'beilute', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1578', N'118', N',1,118,1578,', N'3', N'黎巴嫩山', N'Jabal Lubnan', N'libanenshan', N'JL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1579', N'118', N',1,118,1579,', N'3', N'奈拜提耶市', N'An-Nabatiyah', N'naibaitiyeshi', N'NA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1580', N'118', N',1,118,1580,', N'3', N'南部', N'Al-Janub', N'nanbu', N'JA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1581', N'119', N',3,119,1581,', N'3', N'巴波卢', N'Gbarpolu', N'babolu', N'GBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1582', N'119', N',3,119,1582,', N'3', N'邦', N'Bong', N'bang', N'BG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1583', N'119', N',3,119,1583,', N'3', N'博波卢', N'Bopolu', N'bobolu', N'BOP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1584', N'119', N',3,119,1584,', N'3', N'博米', N'Bomi', N'bomi', N'BM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1585', N'119', N',3,119,1585,', N'3', N'大巴萨', N'Grand Bassa', N'dabasa', N'GB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1586', N'119', N',3,119,1586,', N'3', N'大吉德', N'Grand Gedeh', N'dajide', N'GG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1587', N'119', N',3,119,1587,', N'3', N'大角山', N'Grand Cape Mount', N'dajiaoshan', N'CM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1588', N'119', N',3,119,1588,', N'3', N'大克鲁', N'Grand Kru', N'dakelu', N'GK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1589', N'119', N',3,119,1589,', N'3', N'菲什敦', N'Fish Town', N'feishidun', N'FT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1590', N'119', N',3,119,1590,', N'3', N'吉河', N'River Gee', N'jihe', N'RG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1591', N'119', N',3,119,1591,', N'3', N'里弗塞斯', N'River Cess', N'lifusaisi', N'RI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1592', N'119', N',3,119,1592,', N'3', N'洛法', N'Lofa', N'luofa', N'LO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1593', N'119', N',3,119,1593,', N'3', N'马吉比', N'Margibi', N'majibi', N'MG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1594', N'119', N',3,119,1594,', N'3', N'马里兰', N'Maryland', N'malilan', N'MY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1595', N'119', N',3,119,1595,', N'3', N'蒙特塞拉多', N'Montserrado', N'mengtesailaduo', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1596', N'119', N',3,119,1596,', N'3', N'宁巴', N'Nimba', N'ningba', N'NI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1597', N'119', N',3,119,1597,', N'3', N'锡诺', N'Sinoe', N'xinuo', N'SI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1598', N'121', N',2,121,1598,', N'3', N'阿利图斯', N'Alytus', N'alitusi', N'AL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1599', N'121', N',2,121,1599,', N'3', N'考纳斯', N'Kaunas', N'kaonasi', N'KA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1600', N'121', N',2,121,1600,', N'3', N'克莱佩达', N'Klaipeda', N'kelaipeida', N'KL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1601', N'121', N',2,121,1601,', N'3', N'马里扬泊列', N'Marijampole', N'maliyangbolie', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1602', N'121', N',2,121,1602,', N'3', N'帕涅韦日斯', N'Panevezys', N'panieweirisi', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1603', N'121', N',2,121,1603,', N'3', N'陶拉格', N'Taurages', N'taolage', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1604', N'121', N',2,121,1604,', N'3', N'特尔希艾', N'Telsiu', N'teerxiai', N'TE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1605', N'121', N',2,121,1605,', N'3', N'维尔纽斯', N'Vilnius', N'weierniusi', N'VI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1606', N'121', N',2,121,1606,', N'3', N'乌田纳', N'Utenos', N'wutianna', N'UT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1607', N'121', N',2,121,1607,', N'3', N'希奥利艾', N'Siauliai', N'xiaoliai', N'SI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1608', N'121', N',2,121,1608,', N'3', N'亚克曼', N'Akmenes', N'yakeman', N'AKM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1609', N'124', N',2,124,1609,', N'3', N'迪基希', N'Diekirch', N'dijixi', N'DD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1610', N'124', N',2,124,1610,', N'3', N'格雷文马赫', N'Grevenmacher', N'geleiwenmahe', N'GG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1611', N'124', N',2,124,1611,', N'3', N'卢森堡', N'Luxembourg', N'lusenbao', N'LL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1612', N'125', N',3,125,1612,', N'3', N'比温巴', N'Byumba', N'biwenba', N'BY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1613', N'125', N',3,125,1613,', N'3', N'布塔雷', N'Butare', N'butalei', N'BU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1614', N'125', N',3,125,1614,', N'3', N'恩延扎', N'Nyanza', N'enyanzha', N'NY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1615', N'125', N',3,125,1615,', N'3', N'基本古', N'Kibungo', N'jibengu', N'KG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1616', N'125', N',3,125,1616,', N'3', N'基布耶', N'Kibuye', N'jibuye', N'KY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1617', N'125', N',3,125,1617,', N'3', N'基加利-恩加利', N'Kigali-Ngali', N'jijialienjiali', N'KR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1618', N'125', N',3,125,1618,', N'3', N'基加利市', N'Kigali-Ville', N'jijialishi', N'KV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1619', N'125', N',3,125,1619,', N'3', N'吉孔戈罗', N'Gikongoro', N'jikonggeluo', N'GK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1620', N'125', N',3,125,1620,', N'3', N'吉塞尼', N'Gisenyi', N'jisaini', N'GS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1621', N'125', N',3,125,1621,', N'3', N'吉塔拉马', N'Gitarama', N'jitalama', N'GT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1622', N'125', N',3,125,1622,', N'3', N'卡布加', N'Kabuga', N'kabujia', N'KA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1623', N'125', N',3,125,1623,', N'3', N'卢瓦马加纳', N'Rwamagana', N'luwamajiana', N'RW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1624', N'125', N',3,125,1624,', N'3', N'鲁汉戈', N'Ruhango', N'luhange', N'RH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1625', N'125', N',3,125,1625,', N'3', N'鲁亨盖里', N'Ruhengeri', N'luhenggaili', N'RU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1626', N'125', N',3,125,1626,', N'3', N'尚古古', N'Cyangugu', N'shanggugu', N'CY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1627', N'125', N',3,125,1627,', N'3', N'乌姆塔拉', N'Umutara', N'wumutala', N'UM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1628', N'126', N',2,126,1628,', N'3', N'阿尔巴尤利亚', N'Alba Iulia', N'aerbayouliya', N'AL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1629', N'126', N',2,126,1629,', N'3', N'阿拉德', N'Arad', N'alade', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1630', N'126', N',2,126,1630,', N'3', N'奥拉迪亚', N'Oradea', N'aoladiya', N'OR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1631', N'126', N',2,126,1631,', N'3', N'巴克乌', N'Bacau', N'bakewu', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1632', N'126', N',2,126,1632,', N'3', N'巴亚马雷', N'Baia Mare', N'bayamalei', N'BM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1633', N'126', N',2,126,1633,', N'3', N'比斯特里察', N'Bistrita', N'bisitelicha', N'BN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1634', N'126', N',2,126,1634,', N'3', N'博托沙尼', N'Botosani', N'botuoshani', N'BO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1635', N'126', N',2,126,1635,', N'3', N'布加勒斯特', N'Bucuresti', N'bujialesite', N'BC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1636', N'126', N',2,126,1636,', N'3', N'布拉索夫', N'Brasov', N'bulasuofu', N'BS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1637', N'126', N',2,126,1637,', N'3', N'布勒伊拉', N'Braila', N'buleyila', N'BL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1638', N'126', N',2,126,1638,', N'3', N'布泽乌', N'Buzau', N'buzewu', N'BZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1639', N'126', N',2,126,1639,', N'3', N'德罗贝塔-塞维林堡', N'Drobeta-Turnu Severin', N'deluobeitasaiweilinbao', N'DT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1640', N'126', N',2,126,1640,', N'3', N'德瓦', N'Deva', N'dewa', N'DE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1641', N'126', N',2,126,1641,', N'3', N'蒂米什瓦拉', N'Timisoara', N'dimishiwala', N'TI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1642', N'126', N',2,126,1642,', N'3', N'福克沙尼', N'Focsani', N'fukeshani', N'FO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1643', N'126', N',2,126,1643,', N'3', N'加拉茨', N'Galati', N'jialaci', N'GL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1644', N'126', N',2,126,1644,', N'3', N'久尔久', N'Giurgiu', N'jiuerjiu', N'GG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1645', N'126', N',2,126,1645,', N'3', N'康斯坦察', N'Constanta', N'kangsitancha', N'CT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1646', N'126', N',2,126,1646,', N'3', N'克拉约瓦', N'Craiova', N'kelayuewa', N'DO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1647', N'126', N',2,126,1647,', N'3', N'克勒拉希', N'Calarasi', N'kelelaxi', N'CR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1648', N'126', N',2,126,1648,', N'3', N'克卢日纳波卡', N'Cluj-Napoca', N'kelurinaboka', N'CN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1649', N'126', N',2,126,1649,', N'3', N'勒姆尼库沃尔恰', N'XRimnicu Vilcea', N'lemunikuwoerqia', N'VI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1650', N'126', N',2,126,1650,', N'3', N'雷希察', N'Resita', N'leixicha', N'RE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1651', N'126', N',2,126,1651,', N'3', N'梅尔库里亚丘克', N'Miercurea-Ciuc', N'meierkuliyaqiuke', N'MC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1652', N'126', N',2,126,1652,', N'3', N'皮特什蒂', N'Pitesti', N'piteshidi', N'PI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1653', N'126', N',2,126,1653,', N'3', N'皮亚特拉尼亚姆茨', N'Piatra Neamt', N'piyatelaniyamuci', N'PN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1654', N'126', N',2,126,1654,', N'3', N'普洛耶什蒂', N'Ploiesti', N'puluoyeshidi', N'PL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1655', N'126', N',2,126,1655,', N'3', N'萨图·马雷', N'Satu Mare', N'satu', N'SM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1656', N'126', N',2,126,1656,', N'3', N'圣格奥尔基', N'Sfantu-Gheorghe', N'shenggeaoerji', N'SG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1657', N'126', N',2,126,1657,', N'3', N'斯拉蒂纳', N'Slatina', N'siladina', N'ST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1658', N'126', N',2,126,1658,', N'3', N'斯洛博齐亚', N'Slobozia', N'siluoboqiya', N'SB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1659', N'126', N',2,126,1659,', N'3', N'苏恰瓦', N'Suceava', N'suqiawa', N'SU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1660', N'126', N',2,126,1660,', N'3', N'特尔戈维什泰', N'Targovişte', N'teergeweishitai', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1661', N'126', N',2,126,1661,', N'3', N'特尔古穆列什', N'Tirgu Mures', N'teergumulieshi', N'TM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1662', N'126', N',2,126,1662,', N'3', N'特尔古日乌', N'Tirgu-Jiu', N'teerguriwu', N'TJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1663', N'126', N',2,126,1663,', N'3', N'图尔恰', N'Tulcea', N'tuerqia', N'TU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1664', N'126', N',2,126,1664,', N'3', N'瓦斯卢伊', N'Vaslui', N'wasiluyi', N'VA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1665', N'126', N',2,126,1665,', N'3', N'锡比乌', N'Sibiu', N'xibiwu', N'SO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1666', N'126', N',2,126,1666,', N'3', N'雅西', N'Iasi', N'yaxi', N'IS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1667', N'126', N',2,126,1667,', N'3', N'亚厉山德里亚', N'Alexandria', N'yalishandeliya', N'AD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1668', N'126', N',2,126,1668,', N'3', N'扎勒乌', N'Zalau', N'zhalewu', N'ZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1669', N'127', N',3,127,1669,', N'3', N'安齐拉纳纳', N'Antsiranana', N'anqilanana', N'AS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1670', N'127', N',3,127,1670,', N'3', N'菲亚纳兰楚阿', N'Fianarantsoa', N'feiyanalanchua', N'FN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1671', N'127', N',3,127,1671,', N'3', N'马哈赞加', N'Mahajanga', N'mahazanjia', N'MJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1672', N'127', N',3,127,1672,', N'3', N'塔那那利佛', N'Antananarivo', N'tananalifo', N'AN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1673', N'127', N',3,127,1673,', N'3', N'图阿马西拉', N'Toamasina', N'tuamaxila', N'TM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1674', N'127', N',3,127,1674,', N'3', N'图利亚拉', N'Toliary', N'tuliyala', N'TL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1675', N'128', N',1,128,1675,', N'3', N'阿杜', N'Addu Atoll', N'adu', N'ADD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1676', N'128', N',1,128,1676,', N'3', N'北阿里', N'North Ari Atoll', N'beiali', N'AAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1677', N'128', N',1,128,1677,', N'3', N'北蒂拉杜马蒂', N'North Thiladhunmathi', N'beidiladumadi', N'THD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1678', N'128', N',1,128,1678,', N'3', N'北马洛斯马杜卢', N'North Maalhosmadhulu', N'beimaluosimadulu', N'MAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1679', N'128', N',1,128,1679,', N'3', N'北米拉杜马杜卢', N'North Miladhunmadhulu', N'beimiladumadulu', N'MLD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1680', N'128', N',1,128,1680,', N'3', N'北尼兰杜', N'North Nilandhe Atoll', N'beinilandu', N'NAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1681', N'128', N',1,128,1681,', N'3', N'北苏瓦迪瓦', N'North Huvadhu Atoll', N'beisuwadiwa', N'HAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1682', N'128', N',1,128,1682,', N'3', N'法迪福卢', N'Faadhippolhu', N'fadifulu', N'FAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1683', N'128', N',1,128,1683,', N'3', N'费利杜', N'Felidhu Atoll', N'feilidu', N'FEA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1684', N'128', N',1,128,1684,', N'3', N'福阿穆拉库', N'Foammulah', N'fuamulaku', N'FMU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1685', N'128', N',1,128,1685,', N'3', N'哈杜马蒂', N'Hadhdhunmathi', N'hadumadi', N'HDH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1686', N'128', N',1,128,1686,', N'3', N'科卢马杜卢', N'Kolhumadulu', N'kelumadulu', N'KLH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1687', N'128', N',1,128,1687,', N'3', N'马累', N'Male', N'malei', N'MAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1688', N'128', N',1,128,1688,', N'3', N'马累岛', N'Male Atoll', N'maleidao', N'MAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1689', N'128', N',1,128,1689,', N'3', N'穆拉库', N'Mulakatholhu', N'mulaku', N'MUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1690', N'128', N',1,128,1690,', N'3', N'南阿里', N'South Ari Atoll', N'nanali', N'AAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1691', N'128', N',1,128,1691,', N'3', N'南蒂拉杜马蒂', N'South Thiladhunmathi', N'nandiladumadi', N'THU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1692', N'128', N',1,128,1692,', N'3', N'南马洛斯马杜卢', N'South Maalhosmadulu', N'nanmaluosimadulu', N'MAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1693', N'128', N',1,128,1693,', N'3', N'南米拉杜马杜卢', N'South Miladhunmadhulu', N'nanmiladumadulu', N'MLU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1694', N'128', N',1,128,1694,', N'3', N'南尼兰杜', N'South Nilandhe Atoll', N'nannilandu', N'NAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1695', N'128', N',1,128,1695,', N'3', N'南苏瓦迪瓦', N'South Huvadhu Atoll', N'nansuwadiwa', N'HAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1696', N'130', N',3,130,1696,', N'3', N'北部区', N'Northern', N'beibuqu', N'N')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1697', N'130', N',3,130,1697,', N'3', N'南部区', N'Southern', N'nanbuqu', N'S')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1698', N'130', N',3,130,1698,', N'3', N'中央区', N'Central', N'zhongyangqu', N'C')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1699', N'132', N',3,132,1699,', N'3', N'巴马科首都区', N'Bamako', N'bamakeshouduqu', N'CD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1700', N'132', N',3,132,1700,', N'3', N'基达尔', N'Kidal', N'jidaer', N'KD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1701', N'132', N',3,132,1701,', N'3', N'加奥', N'Gao', N'jiaao', N'GA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1702', N'132', N',3,132,1702,', N'3', N'卡伊', N'Kayes', N'kayi', N'KY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1703', N'132', N',3,132,1703,', N'3', N'库利科罗', N'Koulikoro', N'kulikeluo', N'KL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1704', N'132', N',3,132,1704,', N'3', N'莫普提', N'Mopti', N'moputi', N'MP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1705', N'132', N',3,132,1705,', N'3', N'塞古', N'Segou', N'saigu', N'SG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1706', N'132', N',3,132,1706,', N'3', N'通布图', N'Tombouctou', N'tongbutu', N'TB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1707', N'132', N',3,132,1707,', N'3', N'锡卡索', N'Sikasso', N'xikasuo', N'SK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1708', N'139', N',3,139,1708,', N'3', N'阿德拉尔', N'Adrar', N'adelaer', N'AD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1709', N'139', N',3,139,1709,', N'3', N'阿萨巴', N'El-Acaba', N'asaba', N'AS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1710', N'139', N',3,139,1710,', N'3', N'卜拉克纳', N'Brakna', N'bolakena', N'BR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1711', N'139', N',3,139,1711,', N'3', N'东胡德', N'Hodh el-Gharbi', N'donghude', N'HG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1712', N'139', N',3,139,1712,', N'3', N'戈尔戈勒', N'Gorgol', N'geergele', N'GO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1713', N'139', N',3,139,1713,', N'3', N'吉迪马卡', N'Guidimaka', N'jidimaka', N'GM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1714', N'139', N',3,139,1714,', N'3', N'努瓦迪布湾', N'Dakhlet Nouadhibou', N'nuwadibuwan', N'DN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1715', N'139', N',3,139,1715,', N'3', N'努瓦克肖特特区', N'Nouakchott', N'nuwakexiaotetequ', N'NO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1716', N'139', N',3,139,1716,', N'3', N'塔甘特', N'Tagant', N'tagante', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1717', N'139', N',3,139,1717,', N'3', N'特拉扎', N'Trarza', N'telazha', N'TR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1718', N'139', N',3,139,1718,', N'3', N'提里斯-宰穆尔', N'Tiris Zemmour', N'tilisizaimuer', N'TZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1719', N'139', N',3,139,1719,', N'3', N'西胡德', N'Hodh ech-Chargui', N'xihude', N'HC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1720', N'139', N',3,139,1720,', N'3', N'因希里', N'Inchiri', N'yinxili', N'IN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1721', N'141', N',6,141,1721,', N'3', N'阿纳', N'Aana', N'ana', N'AAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1722', N'141', N',6,141,1722,', N'3', N'阿图阿', N'Atua', N'atua', N'ATU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1723', N'141', N',6,141,1723,', N'3', N'艾加伊勒泰', N'Aigaile Tai', N'aijiayiletai', N'AIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1724', N'141', N',6,141,1724,', N'3', N'法塞莱莱阿加', N'Faasaleleaga', N'fasailailaiajia', N'FAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1725', N'141', N',6,141,1725,', N'3', N'加盖福毛加', N'Gagaifomauga', N'jiagaifumaojia', N'GFG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1726', N'141', N',6,141,1726,', N'3', N'加加埃毛加', N'Gagaemauga', N'jiajiaaimaojia', N'GMG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1727', N'141', N',6,141,1727,', N'3', N'帕劳利', N'Palauli', N'palaoli', N'PAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1728', N'141', N',6,141,1728,', N'3', N'萨图帕伊泰阿', N'Satupaitea', N'satupayitaia', N'SAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1729', N'141', N',6,141,1729,', N'3', N'萨瓦伊岛', N'Savaii', N'sawayidao', N'SAV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1730', N'141', N',6,141,1730,', N'3', N'图阿马萨加', N'Tuamasaga', N'tuamasajia', N'TUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1731', N'141', N',6,141,1731,', N'3', N'瓦奥福诺蒂', N'Vaao Fonoti', N'waaofunuodi', N'VAF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1732', N'141', N',6,141,1732,', N'3', N'韦西加诺', N'Vaisigano', N'weixijianuo', N'VAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1733', N'141', N',6,141,1733,', N'3', N'乌波卢岛', N'Upolu', N'wuboludao', N'UPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1734', N'143', N',1,143,1734,', N'3', N'巴彦洪格尔', N'Bayanhongor', N'bayanhonggeer', N'69')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1735', N'143', N',1,143,1735,', N'3', N'巴彦乌勒盖', N'Bayan-Ulgiy', N'bayanwulegai', N'71')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1736', N'143', N',1,143,1736,', N'3', N'布尔干', N'Bulgan', N'buergan', N'67')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1737', N'143', N',1,143,1737,', N'3', N'达尔汗乌勒', N'Darhan-Uul', N'daerhanwule', N'37')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1738', N'143', N',1,143,1738,', N'3', N'东方', N'Dornod', N'dongfang', N'61')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1739', N'143', N',1,143,1739,', N'3', N'东戈壁', N'Dornogovi', N'donggebi', N'63')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1740', N'143', N',1,143,1740,', N'3', N'鄂尔浑', N'Orhon', N'eerhun', N'35')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1741', N'143', N',1,143,1741,', N'3', N'戈壁阿尔泰', N'Govi-Altay', N'gebiaertai', N'65')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1742', N'143', N',1,143,1742,', N'3', N'戈壁苏木贝尔', N'Govisumber', N'gebisumubeier', N'64')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1743', N'143', N',1,143,1743,', N'3', N'后杭爱', N'Arhangay', N'houhangai', N'73')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1744', N'143', N',1,143,1744,', N'3', N'科布多', N'Hovd', N'kebuduo', N'43')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1745', N'143', N',1,143,1745,', N'3', N'肯特', N'Hentiy', N'kente', N'39')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1746', N'143', N',1,143,1746,', N'3', N'库苏古尔', N'Hovsgol', N'kusuguer', N'41')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1747', N'143', N',1,143,1747,', N'3', N'南戈壁', N'Umnogovi', N'nangebi', N'UMN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1748', N'143', N',1,143,1748,', N'3', N'前杭爱', N'Uvorhangay', N'qianhangai', N'UVO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1749', N'143', N',1,143,1749,', N'3', N'色楞格', N'Selenge', N'selengge', N'49')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1750', N'143', N',1,143,1750,', N'3', N'苏赫巴托尔', N'Suhbaatar', N'suhebatuoer', N'51')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1751', N'143', N',1,143,1751,', N'3', N'乌布苏', N'Uvs', N'wubusu', N'46')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1752', N'143', N',1,143,1752,', N'3', N'乌兰巴托市', N'Ulaanbaatar hot', N'wulanbatuoshi', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1753', N'143', N',1,143,1753,', N'3', N'扎布汗', N'Dzavhan', N'zhabuhan', N'57')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1754', N'143', N',1,143,1754,', N'3', N'中戈壁', N'Dundgovi', N'zhonggebi', N'59')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1755', N'143', N',1,143,1755,', N'3', N'中央', N'Tov', N'zhongyang', N'47')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1756', N'145', N',1,145,1756,', N'3', N'达卡', N'Dhaka', N'daka', N'DAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1757', N'145', N',1,145,1757,', N'3', N'吉大港', N'Chittagong', N'jidagang', N'CGP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1758', N'145', N',1,145,1758,', N'3', N'库尔纳', N'Khulna', N'kuerna', N'KHL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1759', N'147', N',5,147,1759,', N'3', N'阿雷基帕', N'Arequipa', N'aleijipa', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1760', N'147', N',5,147,1760,', N'3', N'阿普里马克', N'Apurimac', N'apulimake', N'AP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1761', N'147', N',5,147,1761,', N'3', N'阿亚库乔', N'Ayacucho', N'ayakuqiao', N'AY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1762', N'147', N',5,147,1762,', N'3', N'安卡什', N'Ancash', N'ankashi', N'AN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1763', N'147', N',5,147,1763,', N'3', N'胡利亚卡', N'Juliaca', N'huliyaka', N'JUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1764', N'147', N',5,147,1764,', N'3', N'胡宁', N'Junin', N'huning', N'JU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1765', N'147', N',5,147,1765,', N'3', N'卡哈马卡', N'Cajamarca', N'kahamaka', N'CJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1766', N'147', N',5,147,1766,', N'3', N'卡亚俄', N'Callao', N'kayae', N'CL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1767', N'147', N',5,147,1767,', N'3', N'库斯科', N'Cusco', N'kusike', N'CU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1768', N'147', N',5,147,1768,', N'3', N'拉利伯塔德', N'La Libertad', N'lalibotade', N'LD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1769', N'147', N',5,147,1769,', N'3', N'兰巴耶克', N'Lambayeque', N'lanbayeke', N'LY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1770', N'147', N',5,147,1770,', N'3', N'利马', N'Lima', N'lima', N'LI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1771', N'147', N',5,147,1771,', N'3', N'洛雷托', N'Loreto', N'luoleituo', N'LO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1772', N'147', N',5,147,1772,', N'3', N'马德雷德迪奥斯', N'Madre de Dios', N'madeleidediaosi', N'MD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1773', N'147', N',5,147,1773,', N'3', N'莫克瓜', N'Moquegua', N'mokegua', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1774', N'147', N',5,147,1774,', N'3', N'帕斯科', N'Pasco', N'pasike', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1775', N'147', N',5,147,1775,', N'3', N'皮乌拉', N'Piura', N'piwula', N'PI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1776', N'147', N',5,147,1776,', N'3', N'普诺', N'Puno', N'punuo', N'PU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1777', N'147', N',5,147,1777,', N'3', N'钦博特', N'Chimbote', N'qinbote', N'CHM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1778', N'147', N',5,147,1778,', N'3', N'钦查阿尔塔', N'Chincha Alta', N'qinchaaerta', N'CHI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1779', N'147', N',5,147,1779,', N'3', N'圣马丁', N'San Martin', N'shengmading', N'SM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1780', N'147', N',5,147,1780,', N'3', N'苏拉纳', N'Sullana', N'sulana', N'SUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1781', N'147', N',5,147,1781,', N'3', N'塔克纳', N'Tacna', N'takena', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1782', N'147', N',5,147,1782,', N'3', N'通贝斯', N'Tumbes', N'tongbeisi', N'TU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1783', N'147', N',5,147,1783,', N'3', N'瓦努科', N'Huanuco', N'wanuke', N'HO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1784', N'147', N',5,147,1784,', N'3', N'万卡维利卡', N'Huancavelica', N'wankaweilika', N'HV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1785', N'147', N',5,147,1785,', N'3', N'乌卡亚利', N'Ucayali', N'wukayali', N'UC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1786', N'147', N',5,147,1786,', N'3', N'亚马孙', N'Amazonas', N'yamasun', N'AM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1787', N'147', N',5,147,1787,', N'3', N'伊卡', N'Ica', N'yika', N'IC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1788', N'148', N',1,148,1788,', N'3', N'勃固省', N'Bago', N'bogusheng', N'BG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1789', N'148', N',1,148,1789,', N'3', N'掸邦', N'Shan', N'danbang', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1790', N'148', N',1,148,1790,', N'3', N'德林达依省', N'Tanintharyi', N'delindayisheng', N'TN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1791', N'148', N',1,148,1791,', N'3', N'克伦邦', N'Kayin', N'kelunbang', N'KN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1792', N'148', N',1,148,1792,', N'3', N'克钦邦', N'Kachin', N'keqinbang', N'KC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1793', N'148', N',1,148,1793,', N'3', N'克耶邦', N'Kayah', N'keyebang', N'KH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1794', N'148', N',1,148,1794,', N'3', N'马圭省', N'Magway', N'maguisheng', N'MG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1795', N'148', N',1,148,1795,', N'3', N'曼德勒省', N'Mandalay', N'mandelesheng', N'MD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1796', N'148', N',1,148,1796,', N'3', N'孟邦', N'Mon', N'mengbang', N'MN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1797', N'148', N',1,148,1797,', N'3', N'钦邦', N'Chin', N'qinbang', N'CH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1798', N'148', N',1,148,1798,', N'3', N'若开邦', N'Rakhine', N'ruokaibang', N'RK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1799', N'148', N',1,148,1799,', N'3', N'实皆省', N'Sagaing', N'shijiesheng', N'SG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1800', N'148', N',1,148,1800,', N'3', N'仰光省', N'Yangon', N'yangguangsheng', N'YG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1801', N'148', N',1,148,1801,', N'3', N'伊洛瓦底省', N'Ayeyarwady', N'yiluowadisheng', N'AY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1802', N'150', N',3,150,1802,', N'3', N'丹吉尔', N'Tangier', N'danjier', N'TGR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1803', N'150', N',3,150,1803,', N'3', N'得土安', N'Tetouan', N'detuan', N'TET')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1804', N'150', N',3,150,1804,', N'3', N'非斯', N'Fes', N'feisi', N'FES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1805', N'150', N',3,150,1805,', N'3', N'卡萨布兰卡', N'Casablanca', N'kasabulanka', N'CBL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1806', N'150', N',3,150,1806,', N'3', N'拉巴特', N'Rabat', N'labate', N'RSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1807', N'150', N',3,150,1807,', N'3', N'马拉喀什', N'Marrakech', N'malakashi', N'MRK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1808', N'150', N',3,150,1808,', N'3', N'梅克内斯', N'Meknes', N'meikeneisi', N'MKN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1809', N'150', N',3,150,1809,', N'3', N'乌季达', N'Oujda', N'wujida', N'OUJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1810', N'150', N',3,150,1810,', N'3', N'西撒哈拉', N'Western Sahara', N'xisahala', N'WSH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1811', N'153', N',4,153,1811,', N'3', N'阿瓜斯卡连斯特', N'Aguascalientes', N'aguasikaliansite', N'AGU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1812', N'153', N',4,153,1812,', N'3', N'阿卡普尔科', N'Acapulco', N'akapuerke', N'ACA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1813', N'153', N',4,153,1813,', N'3', N'埃莫西约', N'Hermosillo', N'aimoxiyue', N'HMO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1814', N'153', N',4,153,1814,', N'3', N'埃佩切', N'Campeche', N'aipeiqie', N'CAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1815', N'153', N',4,153,1815,', N'3', N'奥夫雷贡城', N'Obregon', N'aofuleigongcheng', N'OBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1816', N'153', N',4,153,1816,', N'3', N'奥里萨巴', N'Orizaba', N'aolisaba', N'ORI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1817', N'153', N',4,153,1817,', N'3', N'巴利城', N'Valles', N'balicheng', N'VHM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1818', N'153', N',4,153,1818,', N'3', N'巴亚尔塔港', N'Puerto Vallarta', N'bayaertagang', N'PVR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1819', N'153', N',4,153,1819,', N'3', N'比利亚埃尔莫萨', N'Villahermosa', N'biliyaaiermosa', N'VSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1820', N'153', N',4,153,1820,', N'3', N'波萨里卡', N'Poza Rica de Hidalgo', N'bosalika', N'PRH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1821', N'153', N',4,153,1821,', N'3', N'蒂华纳', N'Tijuana', N'dihuana', N'TIJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1822', N'153', N',4,153,1822,', N'3', N'杜兰戈', N'Durango', N'dulange', N'DUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1823', N'153', N',4,153,1823,', N'3', N'恩塞纳达', N'Ensenada', N'ensainada', N'ESE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1824', N'153', N',4,153,1824,', N'3', N'瓜达拉哈拉', N'Guadalajara', N'guadalahala', N'GDL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1825', N'153', N',4,153,1825,', N'3', N'瓜纳华托', N'Guanajuato', N'guanahuatuo', N'GUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1826', N'153', N',4,153,1826,', N'3', N'哈拉帕', N'Jalapa', N'halapa', N'JAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1827', N'153', N',4,153,1827,', N'3', N'华雷斯', N'Juarez', N'hualeisi', N'JUZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1828', N'153', N',4,153,1828,', N'3', N'华雷斯港', N'Benito Juare', N'hualeisigang', N'BJU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1829', N'153', N',4,153,1829,', N'3', N'卡门', N'Carmen', N'kamen', N'CAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1830', N'153', N',4,153,1830,', N'3', N'科利马', N'Colima', N'kelima', N'COL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1831', N'153', N',4,153,1831,', N'3', N'克雷塔罗', N'Queretaro', N'keleitaluo', N'QUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1832', N'153', N',4,153,1832,', N'3', N'库埃纳瓦卡', N'Cuernavaca', N'kuainawaka', N'CVC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1833', N'153', N',4,153,1833,', N'3', N'库利阿坎', N'Culiacan', N'kuliakan', N'CUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1834', N'153', N',4,153,1834,', N'3', N'夸察夸拉克斯', N'Coatzacoalcos', N'kuachakualakesi', N'COA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1835', N'153', N',4,153,1835,', N'3', N'拉巴斯', N'La Paz', N'labasi', N'LAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1836', N'153', N',4,153,1836,', N'3', N'莱昂', N'Leon', N'laiang', N'LEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1837', N'153', N',4,153,1837,', N'3', N'雷诺萨', N'Reynosa', N'leinuosa', N'REX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1838', N'153', N',4,153,1838,', N'3', N'洛斯莫奇斯', N'Los Mochis', N'luosimoqisi', N'LMM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1839', N'153', N',4,153,1839,', N'3', N'马萨特兰', N'Mazatlan', N'masatelan', N'MZT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1840', N'153', N',4,153,1840,', N'3', N'马塔莫罗斯', N'Matamoros', N'matamoluosi', N'MAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1841', N'153', N',4,153,1841,', N'3', N'梅里达', N'Merida', N'meilida', N'MID')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1842', N'153', N',4,153,1842,', N'3', N'蒙克洛瓦', N'Monclova', N'mengkeluowa', N'LOV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1843', N'153', N',4,153,1843,', N'3', N'蒙特雷', N'Monterrey', N'mengtelei', N'MTY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1844', N'153', N',4,153,1844,', N'3', N'莫雷利亚', N'Morelia', N'moleiliya', N'MLM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1845', N'153', N',4,153,1845,', N'3', N'墨西哥城', N'Mexico City', N'moxigecheng', N'MEX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1846', N'153', N',4,153,1846,', N'3', N'墨西卡利', N'Mexicali', N'moxikali', N'MXL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1847', N'153', N',4,153,1847,', N'3', N'诺加莱斯', N'Nogales', N'nuojialaisi', N'NOG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1848', N'153', N',4,153,1848,', N'3', N'帕丘卡', N'Pachuca', N'paqiuka', N'PAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1849', N'153', N',4,153,1849,', N'3', N'普埃布拉', N'Puebla', N'puaibula', N'PUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1850', N'153', N',4,153,1850,', N'3', N'奇尔潘辛戈', N'Chilpancingo', N'qierpanxinge', N'CHI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1851', N'153', N',4,153,1851,', N'3', N'奇瓦瓦', N'Chihuahua', N'qiwawa', N'CHH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1852', N'153', N',4,153,1852,', N'3', N'切图马尔', N'Cheturnal', N'qietumaer', N'CTM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1853', N'153', N',4,153,1853,', N'3', N'萨尔蒂约', N'Saltillo', N'saerdiyue', N'SLW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1854', N'153', N',4,153,1854,', N'3', N'萨卡特卡斯', N'Zacatecas', N'sakatekasi', N'ZAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1855', N'153', N',4,153,1855,', N'3', N'塞拉亚', N'Celaya', N'sailaya', N'CLY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1856', N'153', N',4,153,1856,', N'3', N'圣路易斯波托亚', N'San Luis Potosi', N'shengluyisibotuoya', N'SLP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1857', N'153', N',4,153,1857,', N'3', N'塔帕丘拉', N'Tapachula', N'tapaqiula', N'TAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1858', N'153', N',4,153,1858,', N'3', N'坦皮科', N'Tampico', N'tanpike', N'TAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1859', N'153', N',4,153,1859,', N'3', N'特拉斯卡拉', N'Tlaxcala', N'telasikala', N'TLA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1860', N'153', N',4,153,1860,', N'3', N'特皮克', N'Tepic', N'tepike', N'TPQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1861', N'153', N',4,153,1861,', N'3', N'特瓦坎', N'Tehuacan', N'tewakan', N'TCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1862', N'153', N',4,153,1862,', N'3', N'图斯特拉-古铁雷斯', N'Tuxtla Gutierrez', N'tusitelagutieleisi', N'TGZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1863', N'153', N',4,153,1863,', N'3', N'托雷翁', N'Torreon', N'tuoleiweng', N'TRC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1864', N'153', N',4,153,1864,', N'3', N'托卢卡', N'Toluca', N'tuoluka', N'TLC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1865', N'153', N',4,153,1865,', N'3', N'瓦哈卡', N'Oaxaca', N'wahaka', N'OAX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1866', N'153', N',4,153,1866,', N'3', N'维多利亚城', N'Victoria', N'weiduoliyacheng', N'VIC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1867', N'153', N',4,153,1867,', N'3', N'韦拉克鲁斯', N'Veracruz', N'weilakelusi', N'VER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1868', N'153', N',4,153,1868,', N'3', N'乌鲁阿潘', N'Uruapan', N'wuluapan', N'UPN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1869', N'153', N',4,153,1869,', N'3', N'新拉雷多', N'Nuevo Laredo', N'xinlaleiduo', N'NLE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1870', N'153', N',4,153,1870,', N'3', N'伊拉普阿托', N'Irapuato', N'yilapuatuo', N'IRP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1871', N'154', N',3,154,1871,', N'3', N'埃龙戈', N'Erongo', N'ailongge', N'ER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1872', N'154', N',3,154,1872,', N'3', N'奥汉圭纳', N'Ohangwena', N'aohanguina', N'OW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1873', N'154', N',3,154,1873,', N'3', N'奥卡万戈', N'Okavango', N'aokawange', N'KV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1874', N'154', N',3,154,1874,', N'3', N'奥马赫科', N'Omaheke', N'aomaheke', N'OK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1875', N'154', N',3,154,1875,', N'3', N'奥姆沙蒂', N'Omusati', N'aomushadi', N'OT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1876', N'154', N',3,154,1876,', N'3', N'奥乔宗蒂约巴', N'Otjozondjupa', N'aoqiaozongdiyueba', N'OJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1877', N'154', N',3,154,1877,', N'3', N'奥沙纳', N'Oshana', N'aoshana', N'ON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1878', N'154', N',3,154,1878,', N'3', N'奥希科托', N'Oshikoto', N'aoxiketuo', N'OO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1879', N'154', N',3,154,1879,', N'3', N'哈达普', N'Hardap', N'hadapu', N'HA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1880', N'154', N',3,154,1880,', N'3', N'霍马斯', N'Khomas', N'huomasi', N'KH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1881', N'154', N',3,154,1881,', N'3', N'卡拉斯', N'Karas', N'kalasi', N'KR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1882', N'154', N',3,154,1882,', N'3', N'卡普里维', N'Caprivi', N'kapuliwei', N'CA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1883', N'154', N',3,154,1883,', N'3', N'库内内', N'Kunene', N'kuneinei', N'KU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1884', N'155', N',3,155,1884,', N'3', N'阿平顿', N'Upington', N'apingdun', N'UTN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1885', N'155', N',3,155,1885,', N'3', N'艾利弗山', N'Mount Ayliff', N'ailifushan', N'MAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1886', N'155', N',3,155,1886,', N'3', N'彼德马里茨堡', N'Pietermaritzburg', N'bidemalicibao', N'PZB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1887', N'155', N',3,155,1887,', N'3', N'彼德斯堡', N'Pietersburg', N'bidesibao', N'PTG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1888', N'155', N',3,155,1888,', N'3', N'比勒陀利亚', N'Pretoria', N'biletuoliya', N'PRY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1889', N'155', N',3,155,1889,', N'3', N'比索', N'Bisho', N'bisuo', N'BIY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1890', N'155', N',3,155,1890,', N'3', N'布雷达斯多普', N'Bredasdorp', N'buleidasiduopu', N'BDD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1891', N'155', N',3,155,1891,', N'3', N'布隆方丹', N'Bloemfontein', N'bulongfangdan', N'BFN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1892', N'155', N',3,155,1892,', N'3', N'布隆克斯特斯普利特', N'Bronkhorstspruit', N'bulongkesitesipulite', N'BHT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1893', N'155', N',3,155,1893,', N'3', N'德阿尔', N'De Aar', N'deaer', N'DAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1894', N'155', N',3,155,1894,', N'3', N'德班', N'Durban', N'deban', N'DUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1895', N'155', N',3,155,1895,', N'3', N'邓迪', N'Dundee', N'dengdi', N'DUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1896', N'155', N',3,155,1896,', N'3', N'东巴克利', N'Barkley East', N'dongbakeli', N'BAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1897', N'155', N',3,155,1897,', N'3', N'东伦敦', N'East London', N'donglundun', N'ELS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1898', N'155', N',3,155,1898,', N'3', N'弗雷堡', N'Vryburg', N'fuleibao', N'VRU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1899', N'155', N',3,155,1899,', N'3', N'弗里尼欣', N'Vereeniging', N'fulinixin', N'VGG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1900', N'155', N',3,155,1900,', N'3', N'格罗布莱斯达尔', N'Groblersdal', N'geluobulaisidaer', N'GBD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1901', N'155', N',3,155,1901,', N'3', N'基雅尼', N'Giyani', N'jiyani', N'GIY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1902', N'155', N',3,155,1902,', N'3', N'金伯利', N'Kimberley', N'jinboli', N'KIM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1903', N'155', N',3,155,1903,', N'3', N'开普敦', N'Cape Town', N'kaipudun', N'CPT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1904', N'155', N',3,155,1904,', N'3', N'克莱克斯多普', N'Klerksdorp', N'kelaikesiduopu', N'KXE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1905', N'155', N',3,155,1905,', N'3', N'库鲁曼', N'Kuruman', N'kuluman', N'KMH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1906', N'155', N',3,155,1906,', N'3', N'昆士敦', N'Queenstown', N'kunshidun', N'UTW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1907', N'155', N',3,155,1907,', N'3', N'莱迪史密斯', N'Ladysmith', N'laidishimisi', N'LAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1908', N'155', N',3,155,1908,', N'3', N'兰德方丹', N'Randfontein', N'landefangdan', N'RFT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1909', N'155', N',3,155,1909,', N'3', N'理查兹湾', N'Richards Bay', N'lichaziwan', N'RCB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1910', N'155', N',3,155,1910,', N'3', N'利斯滕堡', N'Rustenburg', N'lisibao', N'RSB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1911', N'155', N',3,155,1911,', N'3', N'米德尔堡', N'Middelburg', N'mideerbao', N'MDB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1912', N'155', N',3,155,1912,', N'3', N'姆库泽', N'Mkuze', N'mukuze', N'MZQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1913', N'155', N',3,155,1913,', N'3', N'穆里斯堡', N'Moorreesburg', N'mulisibao', N'MOO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1914', N'155', N',3,155,1914,', N'3', N'内尔斯普雷特', N'Nelspruit', N'neiersipuleite', N'NLP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1915', N'155', N',3,155,1915,', N'3', N'尼尔斯特隆', N'Nylstroom', N'niersitelong', N'NYL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1916', N'155', N',3,155,1916,', N'3', N'纽卡斯尔', N'Newcastle', N'niukasier', N'NCS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1917', N'155', N',3,155,1917,', N'3', N'乔治', N'George', N'qiaozhi', N'GRJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1918', N'155', N',3,155,1918,', N'3', N'萨索尔堡', N'Sasolburg', N'sasuoerbao', N'SAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1919', N'155', N',3,155,1919,', N'3', N'瑟孔达', N'Secunda', N'sekongda', N'ZEC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1920', N'155', N',3,155,1920,', N'3', N'特克索波', N'Ixopo', N'tekesuobo', N'IXO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1921', N'155', N',3,155,1921,', N'3', N'特隆普斯堡', N'Trompsburg', N'telongpusibao', N'TPB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1922', N'155', N',3,155,1922,', N'3', N'跳羚', N'Springbok', N'tiaoling', N'SBU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1923', N'155', N',3,155,1923,', N'3', N'图拉马哈谢', N'Thulamahashe', N'tulamahaxie', N'TLH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1924', N'155', N',3,155,1924,', N'3', N'托霍延杜', N'Thohoyandou', N'tuohuoyandu', N'THY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1925', N'155', N',3,155,1925,', N'3', N'韦茨肖克', N'Witsieshoek', N'weicixiaoke', N'WSH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1926', N'155', N',3,155,1926,', N'3', N'韦尔科姆', N'Welkom', N'weierkemu', N'WEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1927', N'155', N',3,155,1927,', N'3', N'乌伦迪', N'Ulundi', N'wulundi', N'ULD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1928', N'155', N',3,155,1928,', N'3', N'乌姆塔塔', N'Umtata', N'wumutata', N'UTT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1929', N'155', N',3,155,1929,', N'3', N'伍斯特', N'Worcester', N'wusite', N'WOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1930', N'155', N',3,155,1930,', N'3', N'西博福特', N'Beaufort West', N'xibofute', N'BEW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1931', N'155', N',3,155,1931,', N'3', N'谢普斯通港', N'Port Shepstone', N'xiepusitonggang', N'PSS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1932', N'155', N',3,155,1932,', N'3', N'伊丽莎白港', N'Port Elizabeth', N'yilishabaigang', N'PLZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1933', N'155', N',3,155,1933,', N'3', N'约翰内斯堡', N'Johannesburg', N'yuehanneisibao', N'JNB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1934', N'159', N',1,159,1934,', N'3', N'巴格马蒂', N'Bagmati', N'bagemadi', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1935', N'159', N',1,159,1935,', N'3', N'道拉吉里', N'Dhawalagiri', N'daolajili', N'DH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1936', N'159', N',1,159,1936,', N'3', N'甘达基', N'Gandaki', N'gandaji', N'GA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1937', N'159', N',1,159,1937,', N'3', N'戈西', N'Kosi', N'gexi', N'KO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1938', N'159', N',1,159,1938,', N'3', N'格尔纳利', N'Karnali', N'geernali', N'KA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1939', N'159', N',1,159,1939,', N'3', N'贾纳克布尔', N'Janakpur', N'jianakebuer', N'JA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1940', N'159', N',1,159,1940,', N'3', N'拉布蒂', N'Rapti', N'labudi', N'RA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1941', N'159', N',1,159,1941,', N'3', N'蓝毗尼', N'Lumbini', N'lanpini', N'LU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1942', N'159', N',1,159,1942,', N'3', N'马哈卡利', N'Mahakali', N'mahakali', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1943', N'159', N',1,159,1943,', N'3', N'梅吉', N'Mechi', N'meiji', N'ME')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1944', N'159', N',1,159,1944,', N'3', N'纳拉亚尼', N'Narayani', N'nalayani', N'NA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1945', N'159', N',1,159,1945,', N'3', N'佩里', N'Bheri', N'peili', N'BH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1946', N'159', N',1,159,1946,', N'3', N'萨加玛塔', N'Sogarmatha', N'sajiamata', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1947', N'159', N',1,159,1947,', N'3', N'塞蒂', N'Seti', N'saidi', N'SE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1948', N'160', N',4,160,1948,', N'3', N'埃斯特利', N'Esteli', N'aisiteli', N'ES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1949', N'160', N',4,160,1949,', N'3', N'北大西洋', N'Atlantico Norte', N'beidaxiyang', N'AN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1950', N'160', N',4,160,1950,', N'3', N'博阿科', N'Boaco', N'boake', N'BO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1951', N'160', N',4,160,1951,', N'3', N'格拉纳达', N'Granada', N'gelanada', N'GR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1952', N'160', N',4,160,1952,', N'3', N'卡拉索', N'Carazo', N'kalasuo', N'CA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1953', N'160', N',4,160,1953,', N'3', N'莱昂', N'Leon', N'laiang', N'LE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1954', N'160', N',4,160,1954,', N'3', N'里瓦斯', N'Rivas', N'liwasi', N'RV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1955', N'160', N',4,160,1955,', N'3', N'马德里斯', N'Madriz', N'madelisi', N'MD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1956', N'160', N',4,160,1956,', N'3', N'马那瓜', N'Managua', N'managua', N'MN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1957', N'160', N',4,160,1957,', N'3', N'马萨亚', N'Masaya', N'masaya', N'MS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1958', N'160', N',4,160,1958,', N'3', N'马塔加尔帕', N'Matagalpa', N'matajiaerpa', N'MT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1959', N'160', N',4,160,1959,', N'3', N'南大西洋', N'Atlantico Sur', N'nandaxiyang', N'AS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1960', N'160', N',4,160,1960,', N'3', N'奇南德加', N'Chinandega', N'qinandejia', N'CD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1961', N'160', N',4,160,1961,', N'3', N'琼塔莱斯', N'Chontales', N'qiongtalaisi', N'CT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1962', N'160', N',4,160,1962,', N'3', N'圣胡安河', N'Rio San Juan', N'shenghuanhe', N'SJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1963', N'160', N',4,160,1963,', N'3', N'希诺特加', N'Jinotega', N'xinuotejia', N'JI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1964', N'160', N',4,160,1964,', N'3', N'新塞哥维亚', N'Nueva Segovia', N'xinsaigeweiya', N'NS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1965', N'161', N',3,161,1965,', N'3', N'阿加德兹', N'Agadez', N'ajiadezi', N'AJY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1966', N'161', N',3,161,1966,', N'3', N'迪法', N'Diffa', N'difa', N'DIF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1967', N'161', N',3,161,1967,', N'3', N'蒂拉贝里', N'Tillaberi', N'dilabeili', N'TIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1968', N'161', N',3,161,1968,', N'3', N'多索', N'Dosso', N'duosuo', N'DSS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1969', N'161', N',3,161,1969,', N'3', N'津德尔', N'Zinder', N'jindeer', N'ZND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1970', N'161', N',3,161,1970,', N'3', N'马拉迪', N'Maradi', N'maladi', N'MFQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1971', N'161', N',3,161,1971,', N'3', N'尼亚美市', N'Niamey C.U.', N'niyameishi', N'NIM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1972', N'161', N',3,161,1972,', N'3', N'塔瓦', N'Tahoua', N'tawa', N'THZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1973', N'162', N',3,162,1973,', N'3', N'阿比亚', N'Abuja', N'abiya', N'ABV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1974', N'162', N',3,162,1974,', N'3', N'奥博莫绍', N'Ogbomosho', N'aobomoshao', N'OGB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1975', N'162', N',3,162,1975,', N'3', N'卡诺', N'Kano', N'kanuo', N'KAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1976', N'162', N',3,162,1976,', N'3', N'拉各斯', N'Lagos', N'lagesi', N'LOS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1977', N'162', N',3,162,1977,', N'3', N'伊巴丹', N'Ibadan', N'yibadan', N'IBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1978', N'164', N',2,164,1978,', N'3', N'阿克什胡斯', N'Akershus', N'akeshihusi', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1979', N'164', N',2,164,1979,', N'3', N'奥普兰', N'Oppland', N'aopulan', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1980', N'164', N',2,164,1980,', N'3', N'奥斯陆市', N'Oslo', N'aosilushi', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1981', N'164', N',2,164,1981,', N'3', N'北特伦德拉格', N'Nord-Trondelag', N'beitelundelage', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1982', N'164', N',2,164,1982,', N'3', N'布斯克吕', N'Buskerud', N'busikelv', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1983', N'164', N',2,164,1983,', N'3', N'东阿格德尔', N'Aust-Agder', N'dongagedeer', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1984', N'164', N',2,164,1984,', N'3', N'东福尔', N'Ostfold', N'dongfuer', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1985', N'164', N',2,164,1985,', N'3', N'芬马克', N'Finnmark', N'fenmake', N'20')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1986', N'164', N',2,164,1986,', N'3', N'海德马克', N'Hedmark', N'haidemake', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1987', N'164', N',2,164,1987,', N'3', N'霍达兰', N'Hordaland', N'huodalan', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1988', N'164', N',2,164,1988,', N'3', N'罗加兰', N'Rogaland', N'luojialan', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1989', N'164', N',2,164,1989,', N'3', N'默勒－鲁姆斯达尔', N'More og Romsdal', N'molelumusidaer', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1990', N'164', N',2,164,1990,', N'3', N'南特伦德拉格', N'Sor-Trondelag', N'nantelundelage', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1991', N'164', N',2,164,1991,', N'3', N'诺尔兰', N'Nordland', N'nuoerlan', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1992', N'164', N',2,164,1992,', N'3', N'松恩－菲尤拉讷', N'Sogn og Fjordane', N'songenfeiyoula', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1993', N'164', N',2,164,1993,', N'3', N'泰勒马克', N'Telemark', N'tailemake', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1994', N'164', N',2,164,1994,', N'3', N'特罗姆斯', N'Troms', N'teluomusi', N'19')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1995', N'164', N',2,164,1995,', N'3', N'西阿格德尔', N'Vest-Agder', N'xiagedeer', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1996', N'164', N',2,164,1996,', N'3', N'西福尔', N'Vestfold', N'xifuer', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1997', N'168', N',2,168,1997,', N'3', N'滨海阿连特茹', N'Alentejo Litoral', N'binhaialianteru', N'ALL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1998', N'168', N',2,168,1998,', N'3', N'滨海皮尼亚尔', N'Pinhal Litoral', N'binhaipiniyaer', N'PLT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'1999', N'168', N',2,168,1999,', N'3', N'波尔图', N'Porto', N'boertu', N'VDP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2000', N'168', N',2,168,2000,', N'3', N'杜罗', N'Douro', N'duluo', N'MDR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2001', N'168', N',2,168,2001,', N'3', N'恩特拉杜罗伏日', N'Entre Douro e Vouga', N'enteladuluofuri', N'EDV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2002', N'168', N',2,168,2002,', N'3', N'法鲁', N'Faro', N'falu', N'FAO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2003', N'168', N',2,168,2003,', N'3', N'丰沙尔', N'Funchal', N'fengshaer', N'FUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2004', N'168', N',2,168,2004,', N'3', N'卡瓦多', N'Cavado', N'kawaduo', N'CAV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2005', N'168', N',2,168,2005,', N'3', N'科瓦贝拉', N'Cova da Beira', N'kewabeila', N'CLB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2006', N'168', N',2,168,2006,', N'3', N'里斯本', N'Lisboa', N'lisiben', N'LIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2007', N'168', N',2,168,2007,', N'3', N'利巴特茹', N'Leziria do Tejo', N'libateru', N'LTE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2008', N'168', N',2,168,2008,', N'3', N'梅地奥特茹', N'Medio Tejo', N'meidiaoteru', N'MTE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2009', N'168', N',2,168,2009,', N'3', N'米尼奥-利马', N'Minho-Lima', N'miniaolima', N'MLI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2010', N'168', N',2,168,2010,', N'3', N'内贝拉北', N'Beira Interior Norte', N'neibeilabei', N'BIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2011', N'168', N',2,168,2011,', N'3', N'内贝拉南', N'Beira Interior Sul', N'neibeilanan', N'BIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2012', N'168', N',2,168,2012,', N'3', N'内皮尼亚尔北', N'Pinhal Interior Norte', N'neipiniyaerbei', N'PIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2013', N'168', N',2,168,2013,', N'3', N'内皮尼亚尔南', N'Pinhal Interior Sul', N'neipiniyaernan', N'PIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2014', N'168', N',2,168,2014,', N'3', N'蓬塔德尔加达', N'Ponta Delgada', N'pengtadeerjiada', N'PDL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2015', N'168', N',2,168,2015,', N'3', N'塞图巴尔半岛', N'Peninsula de Setubal', N'saitubaerbandao', N'PSE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2016', N'168', N',2,168,2016,', N'3', N'山后', N'Serra da Estrela', N'shanhou', N'SES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2017', N'168', N',2,168,2017,', N'3', N'上阿连特茹', N'Alto Alentejo', N'shangalianteru', N'AAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2018', N'168', N',2,168,2018,', N'3', N'上特拉斯山', N'Alto Tros-os-Montes', N'shangtelasishan', N'ATM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2019', N'168', N',2,168,2019,', N'3', N'塔梅加', N'Tamega', N'tameijia', N'TAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2020', N'168', N',2,168,2020,', N'3', N'万福', N'Ave', N'wanfu', N'AES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2021', N'168', N',2,168,2021,', N'3', N'西部', N'Oeste', N'xibu', N'OES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2022', N'168', N',2,168,2022,', N'3', N'下阿连特茹', N'Baixo Alentejo', N'xiaalianteru', N'BAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2023', N'168', N',2,168,2023,', N'3', N'下伏日', N'Baixo Vouga', N'xiafuri', N'BVO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2024', N'168', N',2,168,2024,', N'3', N'下蒙德古', N'Baixo Mondego', N'xiamengdegu', N'BMO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2025', N'168', N',2,168,2025,', N'3', N'中阿连特茹', N'Alentejo Central', N'zhongalianteru', N'ALC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2026', N'170', N',1,170,2026,', N'3', N'爱媛', N'Ehime', N'ai', N'38')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2027', N'170', N',1,170,2027,', N'3', N'爱知', N'Aichi', N'aizhi', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2028', N'170', N',1,170,2028,', N'3', N'北海道', N'Hokkaido', N'beihaidao', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2029', N'170', N',1,170,2029,', N'3', N'兵库', N'Hyogo', N'bingku', N'28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2030', N'170', N',1,170,2030,', N'3', N'冲绳', N'Okinawa', N'chongsheng', N'47')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2031', N'170', N',1,170,2031,', N'3', N'茨城', N'Ibaraki', N'cicheng', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2032', N'170', N',1,170,2032,', N'3', N'大阪', N'Osaka', N'da', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2033', N'170', N',1,170,2033,', N'3', N'大分', N'Oita', N'dafen', N'44')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2034', N'170', N',1,170,2034,', N'3', N'岛根', N'Shimane', N'daogen', N'32')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2035', N'170', N',1,170,2035,', N'3', N'徳岛', N'Tokushima', N'', N'36')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2036', N'170', N',1,170,2036,', N'3', N'东京', N'Tokyo', N'dongjing', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2037', N'170', N',1,170,2037,', N'3', N'福岛', N'Fukushima', N'fudao', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2038', N'170', N',1,170,2038,', N'3', N'福冈', N'Fukuoka', N'fugang', N'40')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2039', N'170', N',1,170,2039,', N'3', N'福井', N'Fukui', N'fujing', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2040', N'170', N',1,170,2040,', N'3', N'富山', N'Toyama', N'fushan', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2041', N'170', N',1,170,2041,', N'3', N'冈山', N'Okayama', N'gangshan', N'33')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2042', N'170', N',1,170,2042,', N'3', N'高知', N'Kochi', N'gaozhi', N'39')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2043', N'170', N',1,170,2043,', N'3', N'宮城', N'Miyagi', N'', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2044', N'170', N',1,170,2044,', N'3', N'宫崎', N'Miyazaki', N'gongqi', N'45')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2045', N'170', N',1,170,2045,', N'3', N'广岛', N'Hiroshima', N'guangdao', N'34')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2046', N'170', N',1,170,2046,', N'3', N'和歌山', N'Wakayama', N'hegeshan', N'30')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2047', N'170', N',1,170,2047,', N'3', N'京都', N'Kyoto', N'jingdu', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2048', N'170', N',1,170,2048,', N'3', N'静冈', N'Shizuoka', N'jinggang', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2049', N'170', N',1,170,2049,', N'3', N'枥木', N'Tochigi', N'mu', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2050', N'170', N',1,170,2050,', N'3', N'鹿儿岛', N'Kagoshima', N'luerdao', N'46')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2051', N'170', N',1,170,2051,', N'3', N'奈良', N'Nara', N'nailiang', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2052', N'170', N',1,170,2052,', N'3', N'鸟取', N'Tottori', N'niaoqu', N'31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2053', N'170', N',1,170,2053,', N'3', N'岐阜', N'Gifu', N'fu', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2054', N'170', N',1,170,2054,', N'3', N'埼玉', N'Saitama', N'', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2055', N'170', N',1,170,2055,', N'3', N'千叶', N'Chiba', N'qianye', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2056', N'170', N',1,170,2056,', N'3', N'青森', N'Aomori', N'qingsen', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2057', N'170', N',1,170,2057,', N'3', N'秋田', N'Akita', N'qiutian', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2058', N'170', N',1,170,2058,', N'3', N'群马', N'Gunma', N'qunma', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2059', N'170', N',1,170,2059,', N'3', N'三重', N'Mie', N'sanzhong', N'24')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2060', N'170', N',1,170,2060,', N'3', N'山口', N'Yamaguchi', N'shankou', N'35')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2061', N'170', N',1,170,2061,', N'3', N'山梨', N'Yamanashi', N'shanli', N'19')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2062', N'170', N',1,170,2062,', N'3', N'山形', N'Yamagata', N'shanxing', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2063', N'170', N',1,170,2063,', N'3', N'神奈川', N'Kanagawa', N'shennaichuan', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2064', N'170', N',1,170,2064,', N'3', N'石川', N'Ishikawa', N'shichuan', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2065', N'170', N',1,170,2065,', N'3', N'香川', N'Kagawa', N'xiangchuan', N'37')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2066', N'170', N',1,170,2066,', N'3', N'新潟', N'Niigata', N'xin', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2067', N'170', N',1,170,2067,', N'3', N'熊本', N'Kumamoto', N'xiongben', N'43')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2068', N'170', N',1,170,2068,', N'3', N'岩手', N'Iwate', N'yanshou', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2069', N'170', N',1,170,2069,', N'3', N'长崎', N'Nagasaki', N'changqi', N'42')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2070', N'170', N',1,170,2070,', N'3', N'长野', N'Nagano', N'changye', N'20')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2071', N'170', N',1,170,2071,', N'3', N'滋贺', N'Shiga', N'zihe', N'25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2072', N'170', N',1,170,2072,', N'3', N'佐贺', N'Saga', N'zuohe', N'41')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2073', N'171', N',2,171,2073,', N'3', N'北博滕', N'Norrbottens', N'beibo', N'BD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2074', N'171', N',2,171,2074,', N'3', N'布莱金厄', N'Blekinge', N'bulaijine', N'K')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2075', N'171', N',2,171,2075,', N'3', N'达拉纳', N'Dalarnas', N'dalana', N'DLN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2076', N'171', N',2,171,2076,', N'3', N'东约特兰', N'Ustergotland', N'dongyuetelan', N'UGL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2077', N'171', N',2,171,2077,', N'3', N'厄勒布鲁', N'Orebro', N'elebulu', N'T')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2078', N'171', N',2,171,2078,', N'3', N'哥得兰', N'Gotlands', N'gedelan', N'I')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2079', N'171', N',2,171,2079,', N'3', N'哈兰', N'Hallands', N'halan', N'N')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2080', N'171', N',2,171,2080,', N'3', N'卡尔马', N'Kalmar', N'kaerma', N'H')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2081', N'171', N',2,171,2081,', N'3', N'克鲁努贝里', N'Kronobergs', N'kelunubeili', N'G')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2082', N'171', N',2,171,2082,', N'3', N'南曼兰', N'Sodermanlands', N'nanmanlan', N'D')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2083', N'171', N',2,171,2083,', N'3', N'斯德哥尔摩', N'Stockholms', N'sidegeermo', N'AB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2084', N'171', N',2,171,2084,', N'3', N'斯科耐', N'Skane', N'sikenai', N'M')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2085', N'171', N',2,171,2085,', N'3', N'韦姆兰', N'Varmlands', N'weimulan', N'S')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2086', N'171', N',2,171,2086,', N'3', N'乌普萨拉', N'Uppsala', N'wupusala', N'C')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2087', N'171', N',2,171,2087,', N'3', N'西博滕', N'Vasterbottens', N'xibo', N'AC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2088', N'171', N',2,171,2088,', N'3', N'西曼兰', N'Vastmanlands', N'ximanlan', N'U')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2089', N'171', N',2,171,2089,', N'3', N'西诺尔兰', N'Vasternorrlands', N'xinuoerlan', N'Y')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2090', N'171', N',2,171,2090,', N'3', N'西约特兰', N'Vastra Gotalands', N'xiyuetelan', N'O')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2091', N'171', N',2,171,2091,', N'3', N'延雪平', N'Jonkopings', N'yanxueping', N'F')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2092', N'171', N',2,171,2092,', N'3', N'耶夫勒堡', N'Gavleborgs', N'yefulebao', N'X')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2093', N'171', N',2,171,2093,', N'3', N'耶姆特兰', N'Jamtlands', N'yemutelan', N'Z')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2094', N'172', N',2,172,2094,', N'3', N'阿尔高', N'Aargau', N'aergao', N'AG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2095', N'172', N',2,172,2095,', N'3', N'巴塞尔城市', N'Basel－Sstadt', N'basaierchengshi', N'BS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2096', N'172', N',2,172,2096,', N'3', N'巴塞尔乡村', N'Basel Landschaft', N'basaierxiangcun', N'BL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2097', N'172', N',2,172,2097,', N'3', N'伯尔尼', N'Bern', N'boerni', N'BE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2098', N'172', N',2,172,2098,', N'3', N'楚格', N'Zug', N'chuge', N'ZG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2099', N'172', N',2,172,2099,', N'3', N'弗里堡', N'Freiburg', N'fulibao', N'FR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2100', N'172', N',2,172,2100,', N'3', N'格拉鲁斯', N'Glarus', N'gelalusi', N'GL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2101', N'172', N',2,172,2101,', N'3', N'格劳宾登', N'Graubünden', N'gelaobindeng', N'GR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2102', N'172', N',2,172,2102,', N'3', N'卢塞恩', N'Luzern', N'lusaien', N'LU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2103', N'172', N',2,172,2103,', N'3', N'洛桑', N'Lausanne', N'luosang', N'LA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2104', N'172', N',2,172,2104,', N'3', N'纳沙泰尔', N'Neuchatel', N'nashataier', N'NE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2105', N'172', N',2,172,2105,', N'3', N'内阿彭策尔', N'Appenzell Innerrhodn', N'neiapengceer', N'AI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2106', N'172', N',2,172,2106,', N'3', N'日内瓦', N'Geneve', N'rineiwa', N'GE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2107', N'172', N',2,172,2107,', N'3', N'汝拉', N'Jura', N'rula', N'JU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2108', N'172', N',2,172,2108,', N'3', N'沙夫豪森', N'Schaffhausen', N'shafuhaosen', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2109', N'172', N',2,172,2109,', N'3', N'上瓦尔登', N'Obwalden', N'shangwaerdeng', N'OW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2110', N'172', N',2,172,2110,', N'3', N'圣加仑', N'St.Gallen', N'shengjialun', N'SG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2111', N'172', N',2,172,2111,', N'3', N'施维茨', N'Schwyz', N'shiweici', N'SZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2112', N'172', N',2,172,2112,', N'3', N'苏黎世', N'Zurich', N'sulishi', N'ZH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2113', N'172', N',2,172,2113,', N'3', N'索洛图恩', N'Solothurn', N'suoluotuen', N'SO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2114', N'172', N',2,172,2114,', N'3', N'提契诺', N'Ticino', N'tiqinuo', N'TI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2115', N'172', N',2,172,2115,', N'3', N'图尔高', N'Thurgau', N'tuergao', N'TG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2116', N'172', N',2,172,2116,', N'3', N'瓦莱', N'Wallis', N'walai', N'VS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2117', N'172', N',2,172,2117,', N'3', N'外阿彭策尔', N'Appenzell Ausserrhon', N'waiapengceer', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2118', N'172', N',2,172,2118,', N'3', N'沃', N'Vaud', N'wo', N'VD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2119', N'172', N',2,172,2119,', N'3', N'乌里', N'Uri', N'wuli', N'UR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2120', N'172', N',2,172,2120,', N'3', N'下瓦尔登', N'Nidwalden', N'xiawaerdeng', N'NW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2121', N'173', N',4,173,2121,', N'3', N'阿波帕', N'Apopa', N'abopa', N'APO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2122', N'173', N',4,173,2122,', N'3', N'阿瓦查潘', N'Ahuachapan', N'awachapan', N'AH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2123', N'173', N',4,173,2123,', N'3', N'滨海', N'Litoral', N'binhai', N'LI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2124', N'173', N',4,173,2124,', N'3', N'查拉特南戈', N'Chalatenango', N'chalatenange', N'CH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2125', N'173', N',4,173,2125,', N'3', N'德尔加多', N'Delgado', N'deerjiaduo', N'DE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2126', N'173', N',4,173,2126,', N'3', N'基埃-恩特姆', N'Kie-Ntem', N'jiaientemu', N'KN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2127', N'173', N',4,173,2127,', N'3', N'卡瓦尼亚斯', N'Cabanas', N'kawaniyasi', N'CA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2128', N'173', N',4,173,2128,', N'3', N'库斯卡特兰', N'Cuscatlan', N'kusikatelan', N'CU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2129', N'173', N',4,173,2129,', N'3', N'拉巴斯', N'La Paz', N'labasi', N'PZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2130', N'173', N',4,173,2130,', N'3', N'拉利伯塔德', N'La Libertad', N'lalibotade', N'LB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2131', N'173', N',4,173,2131,', N'3', N'拉乌尼翁', N'La Union', N'lawuniweng', N'UN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2132', N'173', N',4,173,2132,', N'3', N'梅基卡诺斯', N'Mejicanos', N'meijikanuosi', N'MEJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2133', N'173', N',4,173,2133,', N'3', N'莫拉桑', N'Morazan', N'molasang', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2134', N'173', N',4,173,2134,', N'3', N'圣安娜', N'Santa Ana', N'shenganna', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2135', N'173', N',4,173,2135,', N'3', N'圣米格尔', N'San Miguel', N'shengmigeer', N'SM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2136', N'173', N',4,173,2136,', N'3', N'圣萨尔瓦多', N'San Salvador', N'shengsaerwaduo', N'SS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2137', N'173', N',4,173,2137,', N'3', N'圣维森特', N'San Vicente', N'shengweisente', N'SV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2138', N'173', N',4,173,2138,', N'3', N'松索纳特', N'Sonsonate', N'songsuonate', N'SO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2139', N'173', N',4,173,2139,', N'3', N'索亚潘戈', N'Soyapango', N'suoyapange', N'SOY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2140', N'173', N',4,173,2140,', N'3', N'韦莱-恩萨斯', N'Wele-Nzas', N'weilaiensasi', N'WN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2141', N'173', N',4,173,2141,', N'3', N'乌苏卢坦', N'Usulutan', N'wusulutan', N'US')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2142', N'173', N',4,173,2142,', N'3', N'伊洛潘戈', N'Ilopango', N'yiluopange', N'IL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2143', N'173', N',4,173,2143,', N'3', N'中南', N'Centro Sur', N'zhongnan', N'CS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2144', N'175', N',2,175,2144,', N'3', N'贝尔格莱德', N'Beograd', N'beiergelaide', N'BEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2145', N'175', N',2,175,2145,', N'3', N'波德戈里察', N'Podgorica', N'bodegelicha', N'POD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2146', N'175', N',2,175,2146,', N'3', N'克拉古涅瓦茨', N'Kragujevac', N'kelaguniewaci', N'KGV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2147', N'175', N',2,175,2147,', N'3', N'尼什', N'Nis', N'nishi', N'INI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2148', N'175', N',2,175,2148,', N'3', N'诺维萨德', N'Novi Sad', N'nuoweisade', N'NVS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2149', N'175', N',2,175,2149,', N'3', N'普里什蒂纳', N'Pristina', N'pulishidina', N'PRN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2150', N'175', N',2,175,2150,', N'3', N'苏博蒂察', N'Subotica', N'subodicha', N'SUB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2151', N'175', N',2,175,2151,', N'3', N'泽蒙', N'Zemun', N'zemeng', N'ZEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2152', N'176', N',3,176,2152,', N'3', N'北部', N'Northern', N'beibu', N'N')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2153', N'176', N',3,176,2153,', N'3', N'东部', N'Eastern', N'dongbu', N'E')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2154', N'176', N',3,176,2154,', N'3', N'南部', N'Southern', N'nanbu', N'S')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2155', N'176', N',3,176,2155,', N'3', N'西部区', N'Western', N'xibuqu', N'W')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2156', N'177', N',3,177,2156,', N'3', N'达喀尔', N'Dakar', N'dakaer', N'DA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2157', N'177', N',3,177,2157,', N'3', N'法蒂克', N'Fatick', N'fadike', N'FA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2158', N'177', N',3,177,2158,', N'3', N'济金绍尔', N'Ziguinchor', N'jijinshaoer', N'ZI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2159', N'177', N',3,177,2159,', N'3', N'捷斯', N'Thies', N'jiesi', N'TH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2160', N'177', N',3,177,2160,', N'3', N'久尔贝勒', N'Diourbel', N'jiuerbeile', N'DI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2161', N'177', N',3,177,2161,', N'3', N'考拉克', N'Kaolack', N'kaolake', N'KA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2162', N'177', N',3,177,2162,', N'3', N'科尔达', N'Kolda', N'keerda', N'KO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2163', N'177', N',3,177,2163,', N'3', N'卢加', N'Louga', N'lujia', N'LO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2164', N'177', N',3,177,2164,', N'3', N'马塔姆', N'Matam', N'matamu', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2165', N'177', N',3,177,2165,', N'3', N'圣路易', N'Saint-Louis', N'shengluyi', N'SL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2166', N'177', N',3,177,2166,', N'3', N'坦巴昆达', N'Tambacounda', N'tanbakunda', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2167', N'178', N',1,178,2167,', N'3', N'法马古斯塔', N'Famagusta', N'famagusita', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2168', N'178', N',1,178,2168,', N'3', N'凯里尼亚', N'Kyrenia', N'kailiniya', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2169', N'178', N',1,178,2169,', N'3', N'拉纳卡', N'Larnaca', N'lanaka', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2170', N'178', N',1,178,2170,', N'3', N'利马索尔', N'Limassol', N'limasuoer', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2171', N'178', N',1,178,2171,', N'3', N'尼科西亚', N'Nicosia', N'nikexiya', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2172', N'178', N',1,178,2172,', N'3', N'帕福斯', N'Pafos', N'pafusi', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2173', N'180', N',1,180,2173,', N'3', N'阿尔阿尔', N'Arar', N'aeraer', N'ARA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2174', N'180', N',1,180,2174,', N'3', N'艾卜哈', N'Abha', N'aiboha', N'AHB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2175', N'180', N',1,180,2175,', N'3', N'巴哈', N'Al Bahah', N'baha', N'BH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2176', N'180', N',1,180,2176,', N'3', N'布赖代', N'Buraydah', N'bulaidai', N'BUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2177', N'180', N',1,180,2177,', N'3', N'达曼', N'Dammam', N'daman', N'DAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2178', N'180', N',1,180,2178,', N'3', N'哈费尔巴廷', N'Hafar al-Batin', N'hafeierbating', N'HBT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2179', N'180', N',1,180,2179,', N'3', N'哈伊勒', N'Hail', N'hayile', N'HL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2180', N'180', N',1,180,2180,', N'3', N'海米斯穆谢特', N'Khamis Mushayt', N'haimisimuxiete', N'KMX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2181', N'180', N',1,180,2181,', N'3', N'海耶', N'Al-Kharj', N'haiye', N'AKH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2182', N'180', N',1,180,2182,', N'3', N'胡富夫', N'Al-Hufuf', N'hufufu', N'HFF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2183', N'180', N',1,180,2183,', N'3', N'吉达', N'Jiddah', N'jida', N'JED')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2184', N'180', N',1,180,2184,', N'3', N'吉赞', N'Jizan', N'jizan', N'JZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2185', N'180', N',1,180,2185,', N'3', N'利雅得', N'Riyad', N'liyade', N'RD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2186', N'180', N',1,180,2186,', N'3', N'麦地那', N'Medina', N'maidina', N'MED')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2187', N'180', N',1,180,2187,', N'3', N'麦加', N'Makkah', N'maijia', N'ML')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2188', N'180', N',1,180,2188,', N'3', N'姆巴拉兹', N'Al-Mubarraz', N'mubalazi', N'MBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2189', N'180', N',1,180,2189,', N'3', N'纳季兰', N'Najran', N'najilan', N'NR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2190', N'180', N',1,180,2190,', N'3', N'塞卡卡', N'Sakaka', N'saikaka', N'SAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2191', N'180', N',1,180,2191,', N'3', N'塔布克', N'Tabuk', N'tabuke', N'TB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2192', N'180', N',1,180,2192,', N'3', N'塔伊夫', N'At Tarif', N'tayifu', N'TAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2193', N'180', N',1,180,2193,', N'3', N'延布', N'Yanbu al-Bahr', N'yanbu', N'YNB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2194', N'180', N',1,180,2194,', N'3', N'朱拜勒', N'Al-Jubayl', N'zhubaile', N'JBI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2195', N'189', N',1,189,2195,', N'3', N'阿努拉德普勒', N'Anuradhapura', N'anuladepule', N'ADP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2196', N'189', N',1,189,2196,', N'3', N'安帕赖', N'Ampara', N'anpalai', N'AMP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2197', N'189', N',1,189,2197,', N'3', N'巴杜勒', N'Badulla', N'badule', N'BAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2198', N'189', N',1,189,2198,', N'3', N'拜蒂克洛', N'Batticaloa', N'baidikeluo', N'BTC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2199', N'189', N',1,189,2199,', N'3', N'波隆纳鲁沃', N'Polonnaruwa', N'bolongnaluwo', N'POL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2200', N'189', N',1,189,2200,', N'3', N'汉班托特', N'Hambantota', N'hanbantuote', N'HBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2201', N'189', N',1,189,2201,', N'3', N'基里诺奇', N'Kilinochchi', N'jilinuoqi', N'KIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2202', N'189', N',1,189,2202,', N'3', N'加勒', N'Galle', N'jiale', N'GAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2203', N'189', N',1,189,2203,', N'3', N'加姆珀哈', N'Gampaha', N'jiamuha', N'GAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2204', N'189', N',1,189,2204,', N'3', N'贾夫纳', N'Jaffna', N'jiafuna', N'JAF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2205', N'189', N',1,189,2205,', N'3', N'卡卢特勒', N'Kalutara', N'kalutele', N'KLT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2206', N'189', N',1,189,2206,', N'3', N'凯格勒', N'Kegalle', N'kaigele', N'KEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2207', N'189', N',1,189,2207,', N'3', N'康提', N'Kandy', N'kangti', N'KAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2208', N'189', N',1,189,2208,', N'3', N'科伦坡', N'Colombo', N'kelunpo', N'CMB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2209', N'189', N',1,189,2209,', N'3', N'库鲁内格勒', N'Kurunegala', N'kuluneigele', N'KUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2210', N'189', N',1,189,2210,', N'3', N'拉特纳普勒', N'Ratnapura', N'latenapule', N'RAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2211', N'189', N',1,189,2211,', N'3', N'马纳尔', N'Mannar', N'manaer', N'MAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2212', N'189', N',1,189,2212,', N'3', N'马特莱', N'Matale', N'matelai', N'MAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2213', N'189', N',1,189,2213,', N'3', N'马特勒', N'Matara', N'matele', N'MAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2214', N'189', N',1,189,2214,', N'3', N'莫讷勒格勒', N'Monaragala', N'molegele', N'MON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2215', N'189', N',1,189,2215,', N'3', N'穆莱蒂武', N'Mullathivu', N'mulaidiwu', N'MUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2216', N'189', N',1,189,2216,', N'3', N'努沃勒埃利耶', N'Nuwara Eliya', N'nuwoleailiye', N'NUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2217', N'189', N',1,189,2217,', N'3', N'普塔勒姆', N'Puttalam', N'putalemu', N'PUT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2218', N'189', N',1,189,2218,', N'3', N'亭可马里', N'Trincomalee', N'tingkemali', N'TRR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2219', N'189', N',1,189,2219,', N'3', N'瓦武尼亚', N'Vavuniya', N'wawuniya', N'VAV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2220', N'190', N',2,190,2220,', N'3', N'班斯卡-比斯特里察', N'Banskobystricky', N'bansikabisitelicha', N'BBY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2221', N'190', N',2,190,2221,', N'3', N'布拉迪斯拉发', N'Bratislavsky', N'buladisilafa', N'BTS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2222', N'190', N',2,190,2222,', N'3', N'科希策', N'Koricky', N'kexice', N'KOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2223', N'190', N',2,190,2223,', N'3', N'尼特拉', N'Nitriansky', N'nitela', N'NRA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2224', N'190', N',2,190,2224,', N'3', N'普雷绍夫', N'Prerovsky', N'puleishaofu', N'POV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2225', N'190', N',2,190,2225,', N'3', N'日利纳', N'Rilinsky', N'rilina', N'RIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2226', N'190', N',2,190,2226,', N'3', N'特尔纳瓦', N'Trnavsky', N'teernawa', N'TNA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2227', N'190', N',2,190,2227,', N'3', N'特伦钦', N'Trenriansky', N'telunqin', N'TRE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2228', N'191', N',2,191,2228,', N'3', N'奥巴尔诺-克拉', N'Obalno-kraska', N'aobaernuokela', N'OKR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2229', N'191', N',2,191,2229,', N'3', N'奥斯雷德涅斯洛文', N'Osrednjeslovenska', N'aosileideniesiluowen', N'OSR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2230', N'191', N',2,191,2230,', N'3', N'波德拉夫', N'Podravska', N'bodelafu', N'POD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2231', N'191', N',2,191,2231,', N'3', N'波穆尔', N'Pomurska', N'bomuer', N'POM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2232', N'191', N',2,191,2232,', N'3', N'多雷尼', N'Dolenjska', N'duoleini', N'DLJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2233', N'191', N',2,191,2233,', N'3', N'戈雷尼', N'Gorenjska', N'geleini', N'GSZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2234', N'191', N',2,191,2234,', N'3', N'戈里', N'Goriska', N'geli', N'GSK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2235', N'191', N',2,191,2235,', N'3', N'科洛', N'Koroska', N'keluo', N'KOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2236', N'191', N',2,191,2236,', N'3', N'诺特拉尼', N'Notranjsko-kraska', N'nuotelani', N'NKR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2237', N'191', N',2,191,2237,', N'3', N'萨维尼', N'Savinjska', N'saweini', N'SAV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2238', N'191', N',2,191,2238,', N'3', N'斯波德涅波萨夫', N'Spodnjeposavska', N'sibodeniebosafu', N'SPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2239', N'191', N',2,191,2239,', N'3', N'扎萨夫', N'Zasavska', N'zhasafu', N'ZAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2240', N'194', N',3,194,2240,', N'3', N'北部', N'Ash-Shamaliyah', N'beibu', N'ASH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2241', N'194', N',3,194,2241,', N'3', N'赤道', N'Al-Istiwaiyah', N'chidao', N'SIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2242', N'194', N',3,194,2242,', N'3', N'达尔富尔', N'Darfur', N'daerfuer', N'SDA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2243', N'194', N',3,194,2243,', N'3', N'东部', N'Ash-Sharqiyah', N'dongbu', N'SHA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2244', N'194', N',3,194,2244,', N'3', N'加扎勒河', N'Bahr al-Ghazal', N'jiazhalehe', N'SBG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2245', N'194', N',3,194,2245,', N'3', N'喀土穆', N'Al-Khartum', N'katumu', N'KRT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2246', N'194', N',3,194,2246,', N'3', N'科尔多凡', N'Kurdufan', N'keerduofan', N'GKU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2247', N'194', N',3,194,2247,', N'3', N'上尼罗', N'Aali an-Nil', N'shangniluo', N'ANB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2248', N'194', N',3,194,2248,', N'3', N'中部', N'Al Wasta', N'zhongbu', N'WDH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2249', N'195', N',5,195,2249,', N'3', N'布罗科蓬多', N'Brokopondo', N'buluokepengduo', N'BR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2250', N'195', N',5,195,2250,', N'3', N'科罗尼', N'Coronie', N'keluoni', N'CR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2251', N'195', N',5,195,2251,', N'3', N'科默韦讷', N'Commewijne', N'kemowei', N'CM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2252', N'195', N',5,195,2252,', N'3', N'马罗韦讷', N'Marowijne', N'maluowei', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2253', N'195', N',5,195,2253,', N'3', N'尼克里', N'Nickerie', N'nikeli', N'NI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2254', N'195', N',5,195,2254,', N'3', N'帕拉', N'Para', N'pala', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2255', N'195', N',5,195,2255,', N'3', N'帕拉马里博', N'Paramaribo', N'palamalibo', N'PM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2256', N'195', N',5,195,2256,', N'3', N'萨拉马卡', N'Saramacca', N'salamaka', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2257', N'195', N',5,195,2257,', N'3', N'瓦尼卡', N'Wanica', N'wanika', N'WA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2258', N'195', N',5,195,2258,', N'3', N'西帕里韦尼', N'Sipaliwini', N'xipaliweini', N'SI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2259', N'196', N',6,196,2259,', N'3', N'瓜达尔卡纳尔', N'Guadalcanal', N'guadaerkanaer', N'GC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2260', N'196', N',6,196,2260,', N'3', N'霍尼亚拉', N'Honiara', N'huoniyala', N'HO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2261', N'196', N',6,196,2261,', N'3', N'拉纳尔和贝罗纳', N'Rennell and Bellona', N'lanaerhebeiluona', N'RB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2262', N'196', N',6,196,2262,', N'3', N'马基拉', N'Makira', N'majila', N'MK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2263', N'196', N',6,196,2263,', N'3', N'马莱塔', N'Malaita', N'malaita', N'ML')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2264', N'196', N',6,196,2264,', N'3', N'乔伊索', N'Choiseul', N'qiaoyisuo', N'CH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2265', N'196', N',6,196,2265,', N'3', N'泰莫图', N'Temotu', N'taimotu', N'TM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2266', N'196', N',6,196,2266,', N'3', N'西部', N'Western', N'xibu', N'WE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2267', N'196', N',6,196,2267,', N'3', N'伊萨贝尔', N'Isabel', N'yisabeier', N'IS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2268', N'196', N',6,196,2268,', N'3', N'中部群岛', N'Central Islands', N'zhongbuqundao', N'CE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2269', N'198', N',1,198,2269,', N'3', N'杜尚别', N'Dushanbe', N'dushangbie', N'DYU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2270', N'198', N',1,198,2270,', N'3', N'霍罗格', N'Khorugh', N'huoluoge', N'KHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2271', N'198', N',1,198,2271,', N'3', N'卡尼巴达姆', N'Kanibadam', N'kanibadamu', N'KAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2272', N'198', N',1,198,2272,', N'3', N'科法尔尼洪', N'Kofarnihon', N'kefaernihong', N'KOF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2273', N'198', N',1,198,2273,', N'3', N'苦盏', N'Khujand', N'kuzhan', N'KHU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2274', N'198', N',1,198,2274,', N'3', N'库尔干-秋别', N'Kurgan-Tjube', N'kuerganqiubie', N'KTJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2275', N'198', N',1,198,2275,', N'3', N'库洛布', N'Kulob', N'kuluobu', N'KLB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2276', N'198', N',1,198,2276,', N'3', N'洛贡', N'Rogun', N'luogong', N'RGU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2277', N'198', N',1,198,2277,', N'3', N'努雷克', N'Nurek', N'nuleike', N'NUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2278', N'198', N',1,198,2278,', N'3', N'彭吉肯特', N'Pendzhikent', N'pengjikente', N'PJK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2279', N'198', N',1,198,2279,', N'3', N'萨班特', N'Sarband', N'sabante', N'SBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2280', N'198', N',1,198,2280,', N'3', N'塔博沙尔', N'Taboshar', N'taboshaer', N'TBS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2281', N'198', N',1,198,2281,', N'3', N'图尔孙扎德', N'Tursunzade', N'tuersunzhade', N'TSZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2282', N'198', N',1,198,2282,', N'3', N'乌拉秋别', N'Ura-Tjube', N'wulaqiubie', N'UTJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2283', N'198', N',1,198,2283,', N'3', N'伊斯法拉', N'Isfara', N'yisifala', N'ISF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2284', N'199', N',1,199,2284,', N'3', N'安纳乍能', N'Amnat Charoen', N'annazhaneng', N'37')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2285', N'199', N',1,199,2285,', N'3', N'巴蜀', N'Prachuap Khiri Khan', N'bashu', N'77')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2286', N'199', N',1,199,2286,', N'3', N'巴吞他尼', N'Pathum Thani', N'batuntani', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2287', N'199', N',1,199,2287,', N'3', N'巴真', N'Prachin Buri', N'bazhen', N'25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2288', N'199', N',1,199,2288,', N'3', N'北碧', N'Kanchanaburi', N'beibi', N'71')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2289', N'199', N',1,199,2289,', N'3', N'北标', N'Saraburi', N'beibiao', N'19')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2290', N'199', N',1,199,2290,', N'3', N'北大年', N'Pattani', N'beidanian', N'94')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2291', N'199', N',1,199,2291,', N'3', N'北揽', N'Samut Prakan', N'beilan', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2292', N'199', N',1,199,2292,', N'3', N'北榄坡', N'Nakhon Sawan', N'beipo', N'60')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2293', N'199', N',1,199,2293,', N'3', N'北柳', N'Chachoengsao', N'beiliu', N'24')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2294', N'199', N',1,199,2294,', N'3', N'碧差汶', N'Phetchabun', N'bicha', N'76')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2295', N'199', N',1,199,2295,', N'3', N'博达伦', N'Phatthalung', N'bodalun', N'93')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2296', N'199', N',1,199,2296,', N'3', N'猜那', N'Chai Nat', N'caina', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2297', N'199', N',1,199,2297,', N'3', N'猜也奔', N'Chaiyaphum', N'caiyeben', N'36')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2298', N'199', N',1,199,2298,', N'3', N'程逸', N'Uttaradit', N'chengyi', N'53')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2299', N'199', N',1,199,2299,', N'3', N'春蓬', N'Chumphon', N'chunpeng', N'86')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2300', N'199', N',1,199,2300,', N'3', N'春武里', N'Chon Buri', N'chunwuli', N'20')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2301', N'199', N',1,199,2301,', N'3', N'达', N'Tak', N'da', N'63')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2302', N'199', N',1,199,2302,', N'3', N'达叻', N'Trat', N'da', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2303', N'199', N',1,199,2303,', N'3', N'大城', N'Phra Nakhon Si Ayutthaya', N'dacheng', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2304', N'199', N',1,199,2304,', N'3', N'董里', N'Trang', N'dongli', N'92')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2305', N'199', N',1,199,2305,', N'3', N'佛丕', N'Phetchaburi', N'fo', N'78')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2306', N'199', N',1,199,2306,', N'3', N'佛统', N'Nakhon Pathom', N'fotong', N'73')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2307', N'199', N',1,199,2307,', N'3', N'甘烹碧', N'Kamphaeng Phet', N'ganpengbi', N'62')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2308', N'199', N',1,199,2308,', N'3', N'红统', N'Ang Thong', N'hongtong', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2309', N'199', N',1,199,2309,', N'3', N'华富里', N'Lop Buri', N'huafuli', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2310', N'199', N',1,199,2310,', N'3', N'加拉信', N'Kalasin', N'jialaxin', N'46')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2311', N'199', N',1,199,2311,', N'3', N'甲米', N'Krabi', N'jiami', N'81')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2312', N'199', N',1,199,2312,', N'3', N'尖竹汶', N'Chanthaburi', N'jianzhu', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2313', N'199', N',1,199,2313,', N'3', N'孔敬', N'Khon Kaen', N'kongjing', N'40')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2314', N'199', N',1,199,2314,', N'3', N'拉农', N'Rayong', N'lanong', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2315', N'199', N',1,199,2315,', N'3', N'廊开', N'Nong Khai', N'langkai', N'43')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2316', N'199', N',1,199,2316,', N'3', N'廊莫那浦', N'Nong Bua Lamphu', N'langmonapu', N'39')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2317', N'199', N',1,199,2317,', N'3', N'叻丕', N'Ratchaburi', N'', N'70')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2318', N'199', N',1,199,2318,', N'3', N'黎', N'Loei', N'li', N'42')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2319', N'199', N',1,199,2319,', N'3', N'黎逸', N'Roi Et', N'liyi', N'45')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2320', N'199', N',1,199,2320,', N'3', N'龙仔厝', N'Samut Sakhon', N'longzi', N'74')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2321', N'199', N',1,199,2321,', N'3', N'罗勇', N'Ranong', N'luoyong', N'85')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2322', N'199', N',1,199,2322,', N'3', N'洛坤', N'Nakhon Si Thammarat', N'luokun', N'80')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2323', N'199', N',1,199,2323,', N'3', N'玛哈沙拉堪', N'Maha Sarakham', N'mahashalakan', N'44')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2324', N'199', N',1,199,2324,', N'3', N'曼谷', N'Bangkok', N'mangu', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2325', N'199', N',1,199,2325,', N'3', N'莫达汉', N'Mukdahan', N'modahan', N'49')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2326', N'199', N',1,199,2326,', N'3', N'那空那育', N'Nakhon Nayok', N'nakongnayu', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2327', N'199', N',1,199,2327,', N'3', N'那空帕农', N'Nakhon Phanom', N'nakongpanong', N'48')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2328', N'199', N',1,199,2328,', N'3', N'难', N'Nan', N'nan', N'55')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2329', N'199', N',1,199,2329,', N'3', N'南奔', N'Lamphun', N'nanben', N'51')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2330', N'199', N',1,199,2330,', N'3', N'暖武里', N'Nonthaburi', N'nuanwuli', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2331', N'199', N',1,199,2331,', N'3', N'帕', N'Phrae', N'pa', N'54')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2332', N'199', N',1,199,2332,', N'3', N'帕尧', N'Phayao', N'payao', N'56')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2333', N'199', N',1,199,2333,', N'3', N'攀牙', N'Phangnga', N'panya', N'82')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2334', N'199', N',1,199,2334,', N'3', N'彭世洛', N'Phitsanulok', N'pengshiluo', N'65')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2335', N'199', N',1,199,2335,', N'3', N'披集', N'Phichit', N'piji', N'66')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2336', N'199', N',1,199,2336,', N'3', N'普吉', N'Phuket', N'puji', N'83')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2337', N'199', N',1,199,2337,', N'3', N'清莱', N'Chiang Rai', N'qinglai', N'57')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2338', N'199', N',1,199,2338,', N'3', N'清迈', N'Chiang Mai', N'qingmai', N'50')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2339', N'199', N',1,199,2339,', N'3', N'色军', N'Sakon Nakhon', N'sejun', N'47')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2340', N'199', N',1,199,2340,', N'3', N'沙敦', N'Satun', N'shadun', N'91')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2341', N'199', N',1,199,2341,', N'3', N'沙缴', N'Sa Kaeo', N'shajiao', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2342', N'199', N',1,199,2342,', N'3', N'四色菊', N'Si sa ket', N'siseju', N'33')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2343', N'199', N',1,199,2343,', N'3', N'宋卡', N'Songkhla', N'songka', N'90')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2344', N'199', N',1,199,2344,', N'3', N'素可泰', N'Sukhothai', N'suketai', N'64')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2345', N'199', N',1,199,2345,', N'3', N'素叻', N'Surat Thani', N'su', N'84')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2346', N'199', N',1,199,2346,', N'3', N'素林', N'Surin', N'sulin', N'32')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2347', N'199', N',1,199,2347,', N'3', N'素攀武里', N'Suphan Buri', N'supanwuli', N'72')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2348', N'199', N',1,199,2348,', N'3', N'陶公', N'Narathiwat', N'taogong', N'96')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2349', N'199', N',1,199,2349,', N'3', N'乌隆', N'Udon Thani', N'wulong', N'41')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2350', N'199', N',1,199,2350,', N'3', N'乌泰他尼', N'Uthai Thani', N'wutaitani', N'61')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2351', N'199', N',1,199,2351,', N'3', N'乌汶', N'Ubon Ratchathani', N'wu', N'34')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2352', N'199', N',1,199,2352,', N'3', N'武里南', N'Buri Ram', N'wulinan', N'31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2353', N'199', N',1,199,2353,', N'3', N'信武里', N'Sing Buri', N'xinwuli', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2354', N'199', N',1,199,2354,', N'3', N'耶梭通', N'Yasothon', N'yesuotong', N'35')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2355', N'199', N',1,199,2355,', N'3', N'也拉', N'Yala', N'yela', N'95')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2356', N'199', N',1,199,2356,', N'3', N'夜丰颂', N'Mae Hong Son', N'yefengsong', N'58')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2357', N'199', N',1,199,2357,', N'3', N'夜功', N'Samut Songkhram', N'yegong', N'75')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2358', N'200', N',3,200,2358,', N'3', N'阿鲁沙', N'Arusha', N'alusha', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2359', N'200', N',3,200,2359,', N'3', N'奔巴北', N'Kaskazini Pemba', N'benbabei', N'PN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2360', N'200', N',3,200,2360,', N'3', N'奔巴南', N'Kusini Pemba', N'benbanan', N'PS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2361', N'200', N',3,200,2361,', N'3', N'滨海', N'Pwani', N'binhai', N'PW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2362', N'200', N',3,200,2362,', N'3', N'达累斯萨拉姆', N'Dar es Salaam', N'daleisisalamu', N'DS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2363', N'200', N',3,200,2363,', N'3', N'多多马', N'Dodoma', N'duoduoma', N'DO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2364', N'200', N',3,200,2364,', N'3', N'基戈马', N'Kigoma', N'jigema', N'KI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2365', N'200', N',3,200,2365,', N'3', N'卡盖拉', N'Kagera', N'kagaila', N'KA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2366', N'200', N',3,200,2366,', N'3', N'林迪', N'Lindi', N'lindi', N'LN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2367', N'200', N',3,200,2367,', N'3', N'鲁夸', N'Rukwa', N'lukua', N'RK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2368', N'200', N',3,200,2368,', N'3', N'鲁伍马', N'Ruvuma', N'luwuma', N'RV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2369', N'200', N',3,200,2369,', N'3', N'马腊', N'Mara', N'mala', N'MR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2370', N'200', N',3,200,2370,', N'3', N'曼亚拉', N'Manyara', N'manyala', N'MY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2371', N'200', N',3,200,2371,', N'3', N'莫洛戈罗', N'Morogoro', N'moluogeluo', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2372', N'200', N',3,200,2372,', N'3', N'姆贝亚', N'Mbeya', N'mubeiya', N'MB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2373', N'200', N',3,200,2373,', N'3', N'姆特瓦拉', N'Mtwara', N'mutewala', N'MT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2374', N'200', N',3,200,2374,', N'3', N'姆万扎', N'Mwanza', N'muwanzha', N'MW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2375', N'200', N',3,200,2375,', N'3', N'乞力马扎罗', N'Kilimanjaro', N'qilimazhaluo', N'KJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2376', N'200', N',3,200,2376,', N'3', N'桑给巴尔', N'Zanzibar', N'sanggeibaer', N'ZN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2377', N'200', N',3,200,2377,', N'3', N'桑给巴尔北', N'Kaskazini Unguja', N'sanggeibaerbei', N'UN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2378', N'200', N',3,200,2378,', N'3', N'桑给巴尔南', N'Kusini Unguja', N'sanggeibaernan', N'US')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2379', N'200', N',3,200,2379,', N'3', N'桑给巴尔市和西', N'Mjini Magharibi', N'sanggeibaershihexi', N'MM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2380', N'200', N',3,200,2380,', N'3', N'塔波拉', N'Tabora', N'tabola', N'TB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2381', N'200', N',3,200,2381,', N'3', N'坦噶', N'Tanga', N'tanga', N'TN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2382', N'200', N',3,200,2382,', N'3', N'辛吉达', N'Singida', N'xinjida', N'SI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2383', N'200', N',3,200,2383,', N'3', N'欣延加', N'Shinyanga', N'xinyanjia', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2384', N'200', N',3,200,2384,', N'3', N'伊林加', N'Iringa', N'yilinjia', N'IR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2385', N'201', N',6,201,2385,', N'3', N'埃瓦', N'Eua', N'aiwa', N'E')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2386', N'201', N',6,201,2386,', N'3', N'哈派', N'Haapai', N'hapai', N'H')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2387', N'201', N',6,201,2387,', N'3', N'纽阿斯', N'Niuas', N'niuasi', N'N')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2388', N'201', N',6,201,2388,', N'3', N'汤加塔布', N'Tongatapu', N'tangjiatabu', N'T')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2389', N'201', N',6,201,2389,', N'3', N'瓦瓦乌', N'Vavau', N'wawawu', N'V')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2390', N'205', N',3,205,2390,', N'3', N'艾尔亚奈', N'Ariana', N'aieryanai', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2391', N'205', N',3,205,2391,', N'3', N'巴杰', N'Beja', N'bajie', N'BJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2392', N'205', N',3,205,2392,', N'3', N'本阿鲁斯', N'Ben Arous', N'benalusi', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2393', N'205', N',3,205,2393,', N'3', N'比塞大', N'Bizerte', N'bisaida', N'BI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2394', N'205', N',3,205,2394,', N'3', N'吉比利', N'Kebili', N'jibili', N'KB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2395', N'205', N',3,205,2395,', N'3', N'加贝斯', N'Gabes', N'jiabeisi', N'GB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2396', N'205', N',3,205,2396,', N'3', N'加夫萨', N'Gafsa', N'jiafusa', N'GF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2397', N'205', N',3,205,2397,', N'3', N'坚杜拜', N'Jendouba', N'jiandubai', N'JE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2398', N'205', N',3,205,2398,', N'3', N'卡夫', N'Le Kef', N'kafu', N'LK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2399', N'205', N',3,205,2399,', N'3', N'卡塞林', N'Kasserine', N'kasailin', N'KS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2400', N'205', N',3,205,2400,', N'3', N'凯鲁万', N'Kairouan', N'kailuwan', N'KR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2401', N'205', N',3,205,2401,', N'3', N'马赫迪耶', N'Mahdia', N'mahediye', N'MH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2402', N'205', N',3,205,2402,', N'3', N'马努巴', N'Manouba', N'manuba', N'MN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2403', N'205', N',3,205,2403,', N'3', N'梅德宁', N'Medenine', N'meidening', N'ME')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2404', N'205', N',3,205,2404,', N'3', N'莫纳斯提尔', N'Monastir', N'monasitier', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2405', N'205', N',3,205,2405,', N'3', N'纳布勒', N'Nabeul', N'nabule', N'NA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2406', N'205', N',3,205,2406,', N'3', N'斯法克斯', N'Sfax', N'sifakesi', N'SF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2407', N'205', N',3,205,2407,', N'3', N'苏塞', N'Sousse', N'susai', N'SO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2408', N'205', N',3,205,2408,', N'3', N'泰塔温', N'Tataouine', N'taitawen', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2409', N'205', N',3,205,2409,', N'3', N'突尼斯', N'Tunis', N'tunisi', N'TU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2410', N'205', N',3,205,2410,', N'3', N'托泽尔', N'Tozeur', N'tuozeer', N'TO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2411', N'205', N',3,205,2411,', N'3', N'西迪布济德', N'Sidi Bouzid', N'xidibujide', N'SD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2412', N'205', N',3,205,2412,', N'3', N'锡勒亚奈', N'Siliana', N'xileyanai', N'SL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2413', N'205', N',3,205,2413,', N'3', N'宰格万', N'Zaghouan', N'zaigewan', N'ZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2414', N'207', N',1,207,2414,', N'3', N'阿达纳', N'Adana', N'adana', N'ADA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2415', N'207', N',1,207,2415,', N'3', N'阿德亚曼', N'Adiyaman', N'adeyaman', N'ADI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2416', N'207', N',1,207,2416,', N'3', N'阿尔达罕', N'Ardahan', N'aerdahan', N'ARD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2417', N'207', N',1,207,2417,', N'3', N'阿尔特温', N'Artvin', N'aertewen', N'ART')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2418', N'207', N',1,207,2418,', N'3', N'阿菲永', N'Afyon', N'afeiyong', N'AFY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2419', N'207', N',1,207,2419,', N'3', N'阿克萨赖', N'Aksaray', N'akesalai', N'AKS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2420', N'207', N',1,207,2420,', N'3', N'阿勒', N'Agri', N'ale', N'AGR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2421', N'207', N',1,207,2421,', N'3', N'阿马西亚', N'Amasya', N'amaxiya', N'AMA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2422', N'207', N',1,207,2422,', N'3', N'埃迪尔内', N'Edirne', N'aidiernei', N'EDI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2423', N'207', N',1,207,2423,', N'3', N'埃尔津詹', N'Erzincan', N'aierjinzhan', N'EZC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2424', N'207', N',1,207,2424,', N'3', N'埃尔祖鲁姆', N'Erzurum', N'aierzulumu', N'EZR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2425', N'207', N',1,207,2425,', N'3', N'埃拉泽', N'Elazig', N'ailaze', N'ELA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2426', N'207', N',1,207,2426,', N'3', N'埃斯基谢希尔', N'Eskisehir', N'aisijixiexier', N'ESK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2427', N'207', N',1,207,2427,', N'3', N'艾登', N'Aydin', N'aideng', N'AYI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2428', N'207', N',1,207,2428,', N'3', N'安卡拉', N'Ankara', N'ankala', N'ANK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2429', N'207', N',1,207,2429,', N'3', N'安塔利亚', N'Antalya', N'antaliya', N'ANT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2430', N'207', N',1,207,2430,', N'3', N'奥尔杜', N'Ordu', N'aoerdu', N'ORD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2431', N'207', N',1,207,2431,', N'3', N'巴尔腾', N'Bartin', N'baerteng', N'BAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2432', N'207', N',1,207,2432,', N'3', N'巴勒克埃西尔', N'Balikesir', N'balekeaixier', N'BAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2433', N'207', N',1,207,2433,', N'3', N'巴特曼', N'Batman', N'bateman', N'BAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2434', N'207', N',1,207,2434,', N'3', N'巴伊布尔特', N'Bayburt', N'bayibuerte', N'BAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2435', N'207', N',1,207,2435,', N'3', N'比莱吉克', N'Bilecik', N'bilaijike', N'BIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2436', N'207', N',1,207,2436,', N'3', N'比特利斯', N'Bitlis', N'bitelisi', N'BIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2437', N'207', N',1,207,2437,', N'3', N'宾格尔', N'Bingol', N'bingeer', N'BIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2438', N'207', N',1,207,2438,', N'3', N'博卢', N'Bolu', N'bolu', N'BOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2439', N'207', N',1,207,2439,', N'3', N'布尔杜尔', N'Burdur', N'buerduer', N'BRD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2440', N'207', N',1,207,2440,', N'3', N'布尔萨', N'Bursa', N'buersa', N'BRS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2441', N'207', N',1,207,2441,', N'3', N'昌克勒', N'Cankiri', N'changkele', N'CKR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2442', N'207', N',1,207,2442,', N'3', N'代尼兹利', N'Denizli', N'dainizili', N'DEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2443', N'207', N',1,207,2443,', N'3', N'迪亚巴克尔', N'Diyarbakir', N'diyabakeer', N'DIY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2444', N'207', N',1,207,2444,', N'3', N'凡', N'Van', N'fan', N'VAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2445', N'207', N',1,207,2445,', N'3', N'哈卡里', N'Hakkari', N'hakali', N'HKR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2446', N'207', N',1,207,2446,', N'3', N'哈塔伊', N'Hatay', N'hatayi', N'HTY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2447', N'207', N',1,207,2447,', N'3', N'基利斯', N'Kilis', N'jilisi', N'KLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2448', N'207', N',1,207,2448,', N'3', N'吉雷松', N'Giresun', N'jileisong', N'GIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2449', N'207', N',1,207,2449,', N'3', N'加济安泰普', N'Gaziantep', N'jiajiantaipu', N'GAZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2450', N'207', N',1,207,2450,', N'3', N'居米什哈内', N'Gumushane', N'jumishihanei', N'GMS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2451', N'207', N',1,207,2451,', N'3', N'卡尔斯', N'Kars', N'kaersi', N'KRS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2452', N'207', N',1,207,2452,', N'3', N'卡赫拉曼马拉什', N'Kahraman Maras', N'kahelamanmalashi', N'KAH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2453', N'207', N',1,207,2453,', N'3', N'卡拉比克', N'Karabuk', N'kalabike', N'KRB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2454', N'207', N',1,207,2454,', N'3', N'卡拉曼', N'Karaman', N'kalaman', N'KRM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2455', N'207', N',1,207,2455,', N'3', N'卡斯塔莫努', N'Kastamonu', N'kasitamonu', N'KAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2456', N'207', N',1,207,2456,', N'3', N'开塞利', N'Kayseri', N'kaisaili', N'KAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2457', N'207', N',1,207,2457,', N'3', N'科贾埃利', N'Kocaeli', N'kejiaaili', N'KOC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2458', N'207', N',1,207,2458,', N'3', N'柯克拉雷利', N'Kirklareli', N'kekelaleili', N'KLR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2459', N'207', N',1,207,2459,', N'3', N'科尼亚', N'Konya', N'keniya', N'KON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2460', N'207', N',1,207,2460,', N'3', N'克尔谢希尔', N'Kirsehir', N'keerxiexier', N'KRH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2461', N'207', N',1,207,2461,', N'3', N'克勒克卡莱', N'Kirikkale', N'kelekekalai', N'KRK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2462', N'207', N',1,207,2462,', N'3', N'拉飞', N'Urfa', N'lafei', N'URF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2463', N'207', N',1,207,2463,', N'3', N'里泽', N'Rize', N'lize', N'RIZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2464', N'207', N',1,207,2464,', N'3', N'马尔丁', N'Mardin', N'maerding', N'MAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2465', N'207', N',1,207,2465,', N'3', N'马拉蒂亚', N'Malatya', N'maladiya', N'MAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2466', N'207', N',1,207,2466,', N'3', N'马尼萨', N'Manisa', N'manisa', N'MAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2467', N'207', N',1,207,2467,', N'3', N'穆拉', N'Mugla', N'mula', N'MUG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2468', N'207', N',1,207,2468,', N'3', N'穆什', N'Mus', N'mushi', N'MUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2469', N'207', N',1,207,2469,', N'3', N'内夫谢希尔', N'Nevsehir', N'neifuxiexier', N'NEV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2470', N'207', N',1,207,2470,', N'3', N'尼代', N'Nigde', N'nidai', N'NIG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2471', N'207', N',1,207,2471,', N'3', N'恰纳卡莱', N'Canakkale', N'qianakalai', N'CKL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2472', N'207', N',1,207,2472,', N'3', N'乔鲁姆', N'Corum', N'qiaolumu', N'COR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2473', N'207', N',1,207,2473,', N'3', N'屈塔希亚', N'Kutahya', N'qutaxiya', N'KUT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2474', N'207', N',1,207,2474,', N'3', N'萨卡里亚', N'Sakarya', N'sakaliya', N'SAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2475', N'207', N',1,207,2475,', N'3', N'萨姆松', N'Samsun', N'samusong', N'SAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2476', N'207', N',1,207,2476,', N'3', N'泰基尔达', N'Tekirdag', N'taijierda', N'TEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2477', N'207', N',1,207,2477,', N'3', N'特拉布宗', N'Trabzon', N'telabuzong', N'TRA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2478', N'207', N',1,207,2478,', N'3', N'通杰利', N'Tunceli', N'tongjieli', N'TUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2479', N'207', N',1,207,2479,', N'3', N'托卡特', N'Tokat', N'tuokate', N'TOK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2480', N'207', N',1,207,2480,', N'3', N'乌萨克', N'Usak', N'wusake', N'USK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2481', N'207', N',1,207,2481,', N'3', N'锡尔纳克', N'Sirnak', N'xiernake', N'SIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2482', N'207', N',1,207,2482,', N'3', N'锡尔特', N'Siirt', N'xierte', N'SII')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2483', N'207', N',1,207,2483,', N'3', N'锡诺普', N'Sinop', N'xinuopu', N'SIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2484', N'207', N',1,207,2484,', N'3', N'锡瓦斯', N'Sivas', N'xiwasi', N'SIV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2485', N'207', N',1,207,2485,', N'3', N'伊迪尔', N'Igdir', N'yidier', N'IGD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2486', N'207', N',1,207,2486,', N'3', N'伊切尔', N'Icel', N'yiqieer', N'ICE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2487', N'207', N',1,207,2487,', N'3', N'伊斯帕尔塔', N'Isparta', N'yisipaerta', N'ISP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2488', N'207', N',1,207,2488,', N'3', N'伊斯坦布尔', N'Istanbul', N'yisitanbuer', N'IST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2489', N'207', N',1,207,2489,', N'3', N'伊兹密尔', N'Izmir', N'yizimier', N'IZM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2490', N'207', N',1,207,2490,', N'3', N'约兹加特', N'Yozgat', N'yuezijiate', N'YOZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2491', N'207', N',1,207,2491,', N'3', N'宗古尔达克', N'Zonguldak', N'zongguerdake', N'ZON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2492', N'208', N',1,208,2492,', N'3', N'阿哈尔', N'Ahal', N'ahaer', N'A')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2493', N'208', N',1,208,2493,', N'3', N'阿什哈巴德市', N'Ashgabat', N'ashihabadeshi', N'ASB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2494', N'208', N',1,208,2494,', N'3', N'巴尔坎', N'Balkan', N'baerkan', N'B')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2495', N'208', N',1,208,2495,', N'3', N'达沙古兹', N'Dashoguz', N'dashaguzi', N'D')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2496', N'208', N',1,208,2496,', N'3', N'列巴普', N'Lebap', N'liebapu', N'L')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2497', N'208', N',1,208,2497,', N'3', N'马雷', N'Mary', N'malei', N'M')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2498', N'208', N',1,208,2498,', N'3', N'涅比特达格', N'Nebitdag', N'niebitedage', N'NEB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2499', N'211', N',6,211,2499,', N'3', N'马朗帕', N'Malampa', N'malangpa', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2500', N'211', N',6,211,2500,', N'3', N'彭纳马', N'Penama', N'pengnama', N'PE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2501', N'211', N',6,211,2501,', N'3', N'桑马', N'Sanma', N'sangma', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2502', N'211', N',6,211,2502,', N'3', N'塔菲阿', N'Tafea', N'tafeia', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2503', N'211', N',6,211,2503,', N'3', N'托尔巴', N'Torba', N'tuoerba', N'TO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2504', N'211', N',6,211,2504,', N'3', N'谢法', N'Shefa', N'xiefa', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2505', N'212', N',4,212,2505,', N'3', N'埃尔普罗格雷索', N'El Progreso', N'aierpuluogeleisuo', N'PR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2506', N'212', N',4,212,2506,', N'3', N'埃斯昆特拉', N'Escuintla', N'aisikuntela', N'ES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2507', N'212', N',4,212,2507,', N'3', N'哈拉帕', N'Jalapa', N'halapa', N'JA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2508', N'212', N',4,212,2508,', N'3', N'胡蒂亚帕', N'Jutiapa', N'hudiyapa', N'JU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2509', N'212', N',4,212,2509,', N'3', N'基切', N'Quiche', N'jiqie', N'QC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2510', N'212', N',4,212,2510,', N'3', N'克萨尔特南戈', N'Quetzaltenango', N'kesaertenange', N'QZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2511', N'212', N',4,212,2511,', N'3', N'雷塔卢莱乌', N'Retalhuleu', N'leitalulaiwu', N'RE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2512', N'212', N',4,212,2512,', N'3', N'米克斯科', N'Mixco', N'mikesike', N'MIX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2513', N'212', N',4,212,2513,', N'3', N'佩滕', N'Peten', N'pei', N'PE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2514', N'212', N',4,212,2514,', N'3', N'奇基穆拉', N'Chiquimula', N'qijimula', N'CQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2515', N'212', N',4,212,2515,', N'3', N'奇马尔特南戈', N'Chimaltenango', N'qimaertenange', N'CM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2516', N'212', N',4,212,2516,', N'3', N'萨卡帕', N'Zacapa', N'sakapa', N'ZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2517', N'212', N',4,212,2517,', N'3', N'萨卡特佩克斯', N'Sacatepequez', N'sakatepeikesi', N'ST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2518', N'212', N',4,212,2518,', N'3', N'上韦拉帕斯', N'Alta Verapaz', N'shangweilapasi', N'AV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2519', N'212', N',4,212,2519,', N'3', N'圣罗莎', N'Santa Rosa', N'shengluosha', N'SR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2520', N'212', N',4,212,2520,', N'3', N'圣马科斯', N'San Marcos', N'shengmakesi', N'SM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2521', N'212', N',4,212,2521,', N'3', N'苏奇特佩克斯', N'Suchitepequez', N'suqitepeikesi', N'SU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2522', N'212', N',4,212,2522,', N'3', N'索洛拉', N'Solola', N'suoluola', N'SO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2523', N'212', N',4,212,2523,', N'3', N'托托尼卡潘', N'Totonicapan', N'tuotuonikapan', N'TO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2524', N'212', N',4,212,2524,', N'3', N'危地马拉', N'Guatemala', N'weidimala', N'GU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2525', N'212', N',4,212,2525,', N'3', N'韦韦特南戈', N'Huehuetenango', N'weiweitenange', N'HU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2526', N'212', N',4,212,2526,', N'3', N'下韦拉帕斯', N'Baja Verapaz', N'xiaweilapasi', N'BV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2527', N'212', N',4,212,2527,', N'3', N'新城', N'Villa Nueva', N'xincheng', N'VIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2528', N'212', N',4,212,2528,', N'3', N'伊萨瓦尔', N'Izabal', N'yisawaer', N'IZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2529', N'215', N',5,215,2529,', N'3', N'阿拉瓜', N'Aragua', N'alagua', N'D')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2530', N'215', N',5,215,2530,', N'3', N'阿马库罗三角洲', N'Delta Amacuro', N'amakuluosanjiaozhou', N'Y')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2531', N'215', N',5,215,2531,', N'3', N'阿普雷', N'Apure', N'apulei', N'C')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2532', N'215', N',5,215,2532,', N'3', N'安索阿特吉', N'Anzoategui', N'ansuoateji', N'B')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2533', N'215', N',5,215,2533,', N'3', N'巴里纳斯', N'Barinas', N'balinasi', N'E')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2534', N'215', N',5,215,2534,', N'3', N'玻利瓦尔', N'Bolivar', N'boliwaer', N'F')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2535', N'215', N',5,215,2535,', N'3', N'波图格萨', N'Portuguesa', N'botugesa', N'P')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2536', N'215', N',5,215,2536,', N'3', N'法尔孔', N'Falcon', N'faerkong', N'I')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2537', N'215', N',5,215,2537,', N'3', N'瓜里科', N'Guarico', N'gualike', N'J')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2538', N'215', N',5,215,2538,', N'3', N'加拉加斯', N'Caracas', N'jialajiasi', N'A')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2539', N'215', N',5,215,2539,', N'3', N'卡拉沃沃', N'Carabobo', N'kalawowo', N'G')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2540', N'215', N',5,215,2540,', N'3', N'科赫德斯', N'Cojedes', N'kehedesi', N'H')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2541', N'215', N',5,215,2541,', N'3', N'拉腊', N'Lara', N'lala', N'K')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2542', N'215', N',5,215,2542,', N'3', N'联邦属地', N'Dependencias Federales', N'lianbangshudi', N'W')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2543', N'215', N',5,215,2543,', N'3', N'梅里达', N'Merida', N'meilida', N'L')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2544', N'215', N',5,215,2544,', N'3', N'米兰达', N'Miranda', N'milanda', N'M')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2545', N'215', N',5,215,2545,', N'3', N'莫纳加斯', N'Monagas', N'monajiasi', N'N')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2546', N'215', N',5,215,2546,', N'3', N'苏克雷', N'Sucre', N'sukelei', N'R')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2547', N'215', N',5,215,2547,', N'3', N'苏利亚', N'Zulia', N'suliya', N'V')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2548', N'215', N',5,215,2548,', N'3', N'塔奇拉', N'Tachira', N'taqila', N'S')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2549', N'215', N',5,215,2549,', N'3', N'特鲁希略', N'Trujillo', N'teluxilue', N'T')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2550', N'215', N',5,215,2550,', N'3', N'新埃斯帕塔', N'Estado Nueva Esparta', N'xinaisipata', N'O')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2551', N'215', N',5,215,2551,', N'3', N'亚拉奎', N'Yaracuy', N'yalakui', N'U')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2552', N'215', N',5,215,2552,', N'3', N'亚马孙', N'Amazonas', N'yamasun', N'Z')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2553', N'217', N',3,217,2553,', N'3', N'阿鲁阿', N'Arua', N'alua', N'ARU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2554', N'217', N',3,217,2554,', N'3', N'阿帕克', N'Apac', N'apake', N'APC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2555', N'217', N',3,217,2555,', N'3', N'阿朱马尼', N'Adjumani', N'azhumani', N'ADJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2556', N'217', N',3,217,2556,', N'3', N'本迪布焦', N'Bundibugyo', N'bendibujiao', N'BUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2557', N'217', N',3,217,2557,', N'3', N'布吉里', N'Bugiri', N'bujili', N'BUG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2558', N'217', N',3,217,2558,', N'3', N'布西亚', N'Busia', N'buxiya', N'BUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2559', N'217', N',3,217,2559,', N'3', N'布谢尼', N'Bushenyi', N'buxieni', N'BSH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2560', N'217', N',3,217,2560,', N'3', N'恩通加莫', N'Ntungamo', N'entongjiamo', N'NTU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2561', N'217', N',3,217,2561,', N'3', N'古卢', N'Gulu', N'gulu', N'GUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2562', N'217', N',3,217,2562,', N'3', N'霍伊马', N'Hoima', N'huoyima', N'HOI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2563', N'217', N',3,217,2563,', N'3', N'基巴莱', N'Kibaale', N'jibalai', N'KBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2564', N'217', N',3,217,2564,', N'3', N'基博加', N'Kiboga', N'jibojia', N'KIB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2565', N'217', N',3,217,2565,', N'3', N'基恩乔乔', N'Kyenjojo', N'jienqiaoqiao', N'KYE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2566', N'217', N',3,217,2566,', N'3', N'基索罗', N'Kisoro', N'jisuoluo', N'KIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2567', N'217', N',3,217,2567,', N'3', N'基特古姆', N'Kitgum', N'jitegumu', N'KIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2568', N'217', N',3,217,2568,', N'3', N'金贾', N'Jinja', N'jinjia', N'JIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2569', N'217', N',3,217,2569,', N'3', N'卡巴莱', N'Kabale', N'kabalai', N'KBL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2570', N'217', N',3,217,2570,', N'3', N'卡巴罗莱', N'Kabarole', N'kabaluolai', N'KAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2571', N'217', N',3,217,2571,', N'3', N'卡贝拉马伊多', N'Kaberamaido', N'kabeilamayiduo', N'KAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2572', N'217', N',3,217,2572,', N'3', N'卡兰加拉', N'Kalangala', N'kalanjiala', N'KAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2573', N'217', N',3,217,2573,', N'3', N'卡姆文盖', N'Kamwenge', N'kamuwengai', N'KAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2574', N'217', N',3,217,2574,', N'3', N'卡穆利', N'Kamuli', N'kamuli', N'KML')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2575', N'217', N',3,217,2575,', N'3', N'卡农古', N'Kanungu', N'kanonggu', N'KAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2576', N'217', N',3,217,2576,', N'3', N'卡普乔鲁瓦', N'Kapchorwa', N'kapuqiaoluwa', N'KPC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2577', N'217', N',3,217,2577,', N'3', N'卡塞塞', N'Kasese', N'kasaisai', N'KAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2578', N'217', N',3,217,2578,', N'3', N'卡塔奎', N'Katakwi', N'katakui', N'KTK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2579', N'217', N',3,217,2579,', N'3', N'卡永加', N'Kayunga', N'kayongjia', N'KAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2580', N'217', N',3,217,2580,', N'3', N'坎帕拉', N'Kampala', N'kanpala', N'KMP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2581', N'217', N',3,217,2581,', N'3', N'科蒂多', N'Kotido', N'kediduo', N'KOT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2582', N'217', N',3,217,2582,', N'3', N'库米', N'Kumi', N'kumi', N'KUM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2583', N'217', N',3,217,2583,', N'3', N'拉卡伊', N'Rakai', N'lakayi', N'RAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2584', N'217', N',3,217,2584,', N'3', N'利拉', N'Lira', N'lila', N'LIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2585', N'217', N',3,217,2585,', N'3', N'卢韦罗', N'Luwero', N'luweiluo', N'LUW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2586', N'217', N',3,217,2586,', N'3', N'鲁昆吉里', N'Rukungiri', N'lukunjili', N'RUK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2587', N'217', N',3,217,2587,', N'3', N'马萨卡', N'Masaka', N'masaka', N'MAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2588', N'217', N',3,217,2588,', N'3', N'马辛迪', N'Masindi', N'maxindi', N'MSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2589', N'217', N',3,217,2589,', N'3', N'马尤盖', N'Mayuge', N'mayougai', N'MAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2590', N'217', N',3,217,2590,', N'3', N'莫罗托', N'Moroto', N'moluotuo', N'MRT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2591', N'217', N',3,217,2591,', N'3', N'莫约', N'Moyo', N'moyue', N'MOY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2592', N'217', N',3,217,2592,', N'3', N'姆巴拉拉', N'Mbarara', N'mubalala', N'MBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2593', N'217', N',3,217,2593,', N'3', N'姆巴莱', N'Mbale', N'mubalai', N'MBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2594', N'217', N',3,217,2594,', N'3', N'姆皮吉', N'Mpigi', N'mupiji', N'MPI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2595', N'217', N',3,217,2595,', N'3', N'穆本德', N'Mubende', N'mubende', N'MUB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2596', N'217', N',3,217,2596,', N'3', N'穆科诺', N'Mukono', N'mukenuo', N'MUK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2597', N'217', N',3,217,2597,', N'3', N'纳卡皮里皮里特', N'Nakapiripirit', N'nakapilipilite', N'NAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2598', N'217', N',3,217,2598,', N'3', N'纳卡松戈拉', N'Nakasongola', N'nakasonggela', N'NKS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2599', N'217', N',3,217,2599,', N'3', N'内比', N'Nebbi', N'neibi', N'NEB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2600', N'217', N',3,217,2600,', N'3', N'帕德尔', N'Pader', N'padeer', N'PAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2601', N'217', N',3,217,2601,', N'3', N'帕利萨', N'Pallisa', N'palisa', N'PAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2602', N'217', N',3,217,2602,', N'3', N'森巴布莱', N'Sembabule', N'senbabulai', N'SEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2603', N'217', N',3,217,2603,', N'3', N'索罗提', N'Soroti', N'suoluoti', N'SOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2604', N'217', N',3,217,2604,', N'3', N'托罗罗', N'Tororo', N'tuoluoluo', N'TOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2605', N'217', N',3,217,2605,', N'3', N'瓦基索', N'Wakiso', N'wajisuo', N'WAK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2606', N'217', N',3,217,2606,', N'3', N'锡龙科', N'Sironko', N'xilongke', N'SIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2607', N'217', N',3,217,2607,', N'3', N'伊甘加', N'Iganga', N'yiganjia', N'IGA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2608', N'217', N',3,217,2608,', N'3', N'永贝', N'Yumbe', N'yongbei', N'YUM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2609', N'218', N',2,218,2609,', N'3', N'敖德萨', N'Odessa', N'aodesa', N'51')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2610', N'218', N',2,218,2610,', N'3', N'波尔塔瓦', N'Poltava', N'boertawa', N'53')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2611', N'218', N',2,218,2611,', N'3', N'第聂伯罗波得罗夫斯克', N'Dnipropetrovsk', N'dinieboluobodeluofusike', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2612', N'218', N',2,218,2612,', N'3', N'顿涅茨克', N'Donetsk', N'dunniecike', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2613', N'218', N',2,218,2613,', N'3', N'哈尔科夫', N'Kharkiv', N'haerkefu', N'63')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2614', N'218', N',2,218,2614,', N'3', N'赫尔松州', N'Khersonsrka', N'heersongzhou', N'65')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2615', N'218', N',2,218,2615,', N'3', N'赫梅利尼茨基', N'Khmelnytsky', N'hemeiliniciji', N'68')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2616', N'218', N',2,218,2616,', N'3', N'基辅', N'Kyiv', N'jifu', N'30')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2617', N'218', N',2,218,2617,', N'3', N'基洛夫格勒', N'Kirovohrad', N'jiluofugele', N'35')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2618', N'218', N',2,218,2618,', N'3', N'捷尔诺波尔', N'Ternopil', N'jieernuoboer', N'61')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2619', N'218', N',2,218,2619,', N'3', N'克里米亚自治共和国', N'Respublika Krym', N'kelimiyazizhigongheguo', N'43')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2620', N'218', N',2,218,2620,', N'3', N'利沃夫', N'Lviv', N'liwofu', N'46')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2621', N'218', N',2,218,2621,', N'3', N'卢甘斯克', N'Luhansk', N'lugansike', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2622', N'218', N',2,218,2622,', N'3', N'罗夫诺', N'Rivne', N'luofunuo', N'56')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2623', N'218', N',2,218,2623,', N'3', N'尼古拉耶夫', N'Mykolayiv', N'nigulayefu', N'48')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2624', N'218', N',2,218,2624,', N'3', N'切尔卡瑟', N'Cherkasy', N'qieerkase', N'71')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2625', N'218', N',2,218,2625,', N'3', N'切尔尼戈夫', N'Chernihiv', N'qieernigefu', N'74')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2626', N'218', N',2,218,2626,', N'3', N'切尔诺夫策', N'Chernivtsi', N'qieernuofuce', N'77')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2627', N'218', N',2,218,2627,', N'3', N'日托米尔', N'Zhytomyr', N'rituomier', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2628', N'218', N',2,218,2628,', N'3', N'苏梅', N'Sumy', N'sumei', N'59')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2629', N'218', N',2,218,2629,', N'3', N'外喀尔巴阡', N'Zakarpatska', N'waikaerba', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2630', N'218', N',2,218,2630,', N'3', N'文尼察', N'Vinnytsya', N'wennicha', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2631', N'218', N',2,218,2631,', N'3', N'沃伦', N'Volyn', N'wolun', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2632', N'218', N',2,218,2632,', N'3', N'伊万－弗兰科夫州', N'Ivano-Frankivsk', N'yiwanfulankefuzhou', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2633', N'218', N',2,218,2633,', N'3', N'扎波罗热', N'Zaporizhzhya', N'zhaboluore', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2634', N'219', N',5,219,2634,', N'3', N'阿蒂加斯', N'Artigas', N'adijiasi', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2635', N'219', N',5,219,2635,', N'3', N'杜拉斯诺', N'Durazno', N'dulasinuo', N'DU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2636', N'219', N',5,219,2636,', N'3', N'佛罗里达', N'Florida', N'foluolida', N'FA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2637', N'219', N',5,219,2637,', N'3', N'弗洛雷斯', N'Flores', N'fuluoleisi', N'FS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2638', N'219', N',5,219,2638,', N'3', N'卡内洛内斯', N'Canelones', N'kaneiluoneisi', N'CA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2639', N'219', N',5,219,2639,', N'3', N'科洛尼亚', N'Colonia', N'keluoniya', N'CO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2640', N'219', N',5,219,2640,', N'3', N'拉瓦耶哈', N'Lavalleja', N'lawayeha', N'LA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2641', N'219', N',5,219,2641,', N'3', N'里韦拉', N'Rivera', N'liweila', N'RV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2642', N'219', N',5,219,2642,', N'3', N'罗恰', N'Rocha', N'luoqia', N'RO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2643', N'219', N',5,219,2643,', N'3', N'马尔多纳多', N'Maldonado', N'maerduonaduo', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2644', N'219', N',5,219,2644,', N'3', N'蒙得维的亚', N'Montevideo', N'mengdeweideya', N'MO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2645', N'219', N',5,219,2645,', N'3', N'内格罗河', N'Rio Negro', N'neigeluohe', N'RN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2646', N'219', N',5,219,2646,', N'3', N'派桑杜', N'Paysandu', N'paisangdu', N'PA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2647', N'219', N',5,219,2647,', N'3', N'萨尔托', N'Salto', N'saertuo', N'SL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2648', N'219', N',5,219,2648,', N'3', N'塞罗拉尔戈', N'Cerro Largo', N'sailuolaerge', N'CL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2649', N'219', N',5,219,2649,', N'3', N'三十三人', N'Treinta y Tres', N'sanshisanren', N'TT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2650', N'219', N',5,219,2650,', N'3', N'圣何塞', N'San Jose', N'shenghesai', N'SJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2651', N'219', N',5,219,2651,', N'3', N'索里亚诺', N'Soriano', N'suoliyanuo', N'SO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2652', N'219', N',5,219,2652,', N'3', N'塔夸伦博', N'Tacuarembo', N'takualunbo', N'TAW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2653', N'220', N',1,220,2653,', N'3', N'安集延', N'Andijon', N'anjiyan', N'AN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2654', N'220', N',1,220,2654,', N'3', N'布哈拉', N'Buxoro', N'buhala', N'BU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2655', N'220', N',1,220,2655,', N'3', N'费尔干纳', N'Fargona', N'feierganna', N'FA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2656', N'220', N',1,220,2656,', N'3', N'花拉子模', N'Xorazm', N'hualazimo', N'XO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2657', N'220', N',1,220,2657,', N'3', N'吉扎克', N'Jizzax', N'jizhake', N'JI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2658', N'220', N',1,220,2658,', N'3', N'卡拉卡尔帕克斯坦共和国', N'Qoraqalpogiston', N'kalakaerpakesitangongheguo', N'QR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2659', N'220', N',1,220,2659,', N'3', N'卡什卡达里亚', N'Qasqadaryo', N'kashikadaliya', N'QA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2660', N'220', N',1,220,2660,', N'3', N'纳曼干', N'Namangan', N'namangan', N'NG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2661', N'220', N',1,220,2661,', N'3', N'纳沃伊', N'Navoiy', N'nawoyi', N'NW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2662', N'220', N',1,220,2662,', N'3', N'撒马尔罕', N'Samarqand', N'samaerhan', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2663', N'220', N',1,220,2663,', N'3', N'苏尔汉河', N'Surxondaryo', N'suerhanhe', N'SU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2664', N'220', N',1,220,2664,', N'3', N'塔什干', N'Toshkent', N'tashigan', N'TK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2665', N'220', N',1,220,2665,', N'3', N'塔什干市', N'Toshkent Shahri', N'tashiganshi', N'TO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2666', N'220', N',1,220,2666,', N'3', N'锡尔河', N'Sirdaryo', N'xierhe', N'SI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2667', N'221', N',2,221,2667,', N'3', N'阿尔梅里亚', N'Almeria', N'aermeiliya', N'LEI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2668', N'221', N',2,221,2668,', N'3', N'阿尔瓦塞特', N'Albacete', N'aerwasaite', N'ALB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2669', N'221', N',2,221,2669,', N'3', N'阿拉瓦', N'Alava', N'alawa', N'ALA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2670', N'221', N',2,221,2670,', N'3', N'阿利坎特', N'Alicante', N'alikante', N'ALC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2671', N'221', N',2,221,2671,', N'3', N'阿斯图利亚斯', N'Asturias', N'asituliyasi', N'AST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2672', N'221', N',2,221,2672,', N'3', N'阿维拉', N'Avila', N'aweila', N'AVI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2673', N'221', N',2,221,2673,', N'3', N'奥伦塞', N'Orense', N'aolunsai', N'ORE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2674', N'221', N',2,221,2674,', N'3', N'巴达霍斯', N'Badajoz', N'badahuosi', N'BJZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2675', N'221', N',2,221,2675,', N'3', N'巴利阿里', N'Baleares', N'baliali', N'BLR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2676', N'221', N',2,221,2676,', N'3', N'巴利亚多利德', N'Valladolid', N'baliyaduolide', N'VLL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2677', N'221', N',2,221,2677,', N'3', N'巴伦西亚', N'Valencia', N'balunxiya', N'VLC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2678', N'221', N',2,221,2678,', N'3', N'巴塞罗那', N'Barcelona', N'basailuona', N'BCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2679', N'221', N',2,221,2679,', N'3', N'比斯开', N'Vizcaya', N'bisikai', N'VSE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2680', N'221', N',2,221,2680,', N'3', N'布尔戈斯', N'Burgos', N'buergesi', N'BUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2681', N'221', N',2,221,2681,', N'3', N'格拉纳达', N'Granada', N'gelanada', N'GRX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2682', N'221', N',2,221,2682,', N'3', N'瓜达拉哈拉', N'Guadalajara', N'guadalahala', N'GUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2683', N'221', N',2,221,2683,', N'3', N'哈恩', N'Jaen', N'haen', N'JAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2684', N'221', N',2,221,2684,', N'3', N'赫罗纳', N'Gerona', N'heluona', N'GRO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2685', N'221', N',2,221,2685,', N'3', N'吉普斯夸', N'Guipuzcoa', N'jipusikua', N'GUI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2686', N'221', N',2,221,2686,', N'3', N'加的斯', N'Cadiz', N'jiadesi', N'CAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2687', N'221', N',2,221,2687,', N'3', N'卡塞雷斯', N'Caceres', N'kasaileisi', N'CCS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2688', N'221', N',2,221,2688,', N'3', N'卡斯蒂利亚', N'Cludad Real', N'kasidiliya', N'CIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2689', N'221', N',2,221,2689,', N'3', N'卡斯特利翁', N'Castellon', N'kasiteliweng', N'CAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2690', N'221', N',2,221,2690,', N'3', N'科尔多瓦', N'Cordoba', N'keerduowa', N'ODB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2691', N'221', N',2,221,2691,', N'3', N'昆卡', N'Cuenca', N'kunka', N'CUE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2692', N'221', N',2,221,2692,', N'3', N'拉科鲁尼亚', N'La Coruna', N'lakeluniya', N'LCG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2693', N'221', N',2,221,2693,', N'3', N'拉里奥哈', N'La Rioja', N'laliaoha', N'ARL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2694', N'221', N',2,221,2694,', N'3', N'拉斯帕尔马斯', N'Las Palmas', N'lasipaermasi', N'LPA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2695', N'221', N',2,221,2695,', N'3', N'莱昂', N'Leon', N'laiang', N'LEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2696', N'221', N',2,221,2696,', N'3', N'莱里达', N'Lleida', N'lailida', N'LLE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2697', N'221', N',2,221,2697,', N'3', N'卢戈', N'Provincia de Lugo', N'luge', N'LGO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2698', N'221', N',2,221,2698,', N'3', N'马德里', N'Madrid', N'madeli', N'MAD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2699', N'221', N',2,221,2699,', N'3', N'马拉加', N'Malaga', N'malajia', N'AGP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2700', N'221', N',2,221,2700,', N'3', N'穆尔西亚', N'Murcia', N'muerxiya', N'MJV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2701', N'221', N',2,221,2701,', N'3', N'纳瓦拉', N'Navarra', N'nawala', N'NVV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2702', N'221', N',2,221,2702,', N'3', N'帕伦西亚', N'Palencia', N'palunxiya', N'PAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2703', N'221', N',2,221,2703,', N'3', N'蓬特韦德拉', N'Provincia de Pontevedra', N'pengteweidela', N'PEV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2704', N'221', N',2,221,2704,', N'3', N'萨拉戈萨', N'Zaragoza', N'salagesa', N'ZAZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2705', N'221', N',2,221,2705,', N'3', N'萨拉曼卡', N'Salamanca', N'salamanka', N'SLM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2706', N'221', N',2,221,2706,', N'3', N'萨莫拉', N'Zamora', N'samola', N'ZMR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2707', N'221', N',2,221,2707,', N'3', N'塞哥维亚', N'Segovia', N'saigeweiya', N'SEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2708', N'221', N',2,221,2708,', N'3', N'塞维利亚', N'Sevilla', N'saiweiliya', N'SVQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2709', N'221', N',2,221,2709,', N'3', N'桑坦德', N'Santander', N'sangtande', N'SDR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2710', N'221', N',2,221,2710,', N'3', N'圣克鲁斯-德特内里费', N'Santa Cruz de Tenerife', N'shengkelusideteneilifei', N'SCT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2711', N'221', N',2,221,2711,', N'3', N'索里亚', N'Soria', N'suoliya', N'SOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2712', N'221', N',2,221,2712,', N'3', N'塔拉戈纳', N'Tarragona', N'talagena', N'TAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2713', N'221', N',2,221,2713,', N'3', N'特鲁埃尔', N'Teruel', N'teluaier', N'TER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2714', N'221', N',2,221,2714,', N'3', N'托莱多', N'Toledo', N'tuolaiduo', N'TOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2715', N'221', N',2,221,2715,', N'3', N'韦尔瓦', N'Huelva', N'weierwa', N'HUV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2716', N'221', N',2,221,2716,', N'3', N'韦斯卡', N'Huesca', N'weisika', N'HUC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2717', N'222', N',2,222,2717,', N'3', N'比雷埃夫斯', N'Peiraievs', N'bileiaifusi', N'PRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2718', N'222', N',2,222,2718,', N'3', N'多德卡尼斯', N'Dodecanese', N'duodekanisi', N'DO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2719', N'222', N',2,222,2719,', N'3', N'干尼亚', N'Chanion', N'ganniya', N'CHQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2720', N'222', N',2,222,2720,', N'3', N'基克拉迪', N'Cyclades', N'jikeladi', N'CY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2721', N'222', N',2,222,2721,', N'3', N'拉西锡', N'Lasithiou', N'laxixi', N'LST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2722', N'222', N',2,222,2722,', N'3', N'莱斯博斯', N'Lesbos', N'laisibosi', N'LES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2723', N'222', N',2,222,2723,', N'3', N'雷西姆农', N'Rethymnis', N'leiximunong', N'RET')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2724', N'222', N',2,222,2724,', N'3', N'萨摩斯', N'Samos', N'samosi', N'SMI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2725', N'222', N',2,222,2725,', N'3', N'雅典', N'Athens', N'yadian', N'ATH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2726', N'222', N',2,222,2726,', N'3', N'伊拉克里翁', N'Irakleiou', N'yilakeliweng', N'HER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2727', N'225', N',6,225,2727,', N'3', N'奥克兰', N'Auckland', N'aokelan', N'AUK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2728', N'225', N',6,225,2728,', N'3', N'北岸', N'North Shore', N'beian', N'NSH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2729', N'225', N',6,225,2729,', N'3', N'北帕默斯顿', N'Palmerston North', N'beipamosidun', N'PMR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2730', N'225', N',6,225,2730,', N'3', N'北远', N'Far North', N'beiyuan', N'FNR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2731', N'225', N',6,225,2731,', N'3', N'布莱尼姆', N'Blenheim', N'bulainimu', N'BHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2732', N'225', N',6,225,2732,', N'3', N'达尼丁', N'Dunedin', N'daniding', N'DUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2733', N'225', N',6,225,2733,', N'3', N'格雷茅斯', N'Greymouth', N'geleimaosi', N'GMN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2734', N'225', N',6,225,2734,', N'3', N'哈密尔顿', N'Hamilton', N'hamierdun', N'HLZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2735', N'225', N',6,225,2735,', N'3', N'黑斯廷斯', N'Hastings', N'heisitingsi', N'HAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2736', N'225', N',6,225,2736,', N'3', N'怀塔科拉', N'Waitakere', N'huaitakela', N'WAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2737', N'225', N',6,225,2737,', N'3', N'吉斯伯恩', N'Gisborne', N'jisiboen', N'GIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2738', N'225', N',6,225,2738,', N'3', N'凯帕拉', N'Kaipara', N'kaipala', N'KAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2739', N'225', N',6,225,2739,', N'3', N'克赖斯特彻奇', N'Christchurch', N'kelaisitecheqi', N'CHC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2740', N'225', N',6,225,2740,', N'3', N'里士满', N'Richmond', N'lishiman', N'RMD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2741', N'225', N',6,225,2741,', N'3', N'马努考', N'Manukau', N'manukao', N'MNK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2742', N'225', N',6,225,2742,', N'3', N'纳尔逊', N'Nelson', N'naerxun', N'NSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2743', N'225', N',6,225,2743,', N'3', N'内皮尔', N'Napier', N'neipier', N'NPE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2744', N'225', N',6,225,2744,', N'3', N'斯特拉特福德', N'Stratford', N'sitelatefude', N'STR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2745', N'225', N',6,225,2745,', N'3', N'陶马鲁努伊', N'Taumarunui', N'taomalunuyi', N'TAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2746', N'225', N',6,225,2746,', N'3', N'瓦卡塔尼', N'Whakatane', N'wakatani', N'WHK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2747', N'225', N',6,225,2747,', N'3', N'旺阿雷', N'Whangarei', N'wangalei', N'WRE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2748', N'225', N',6,225,2748,', N'3', N'旺格努伊', N'Wanganui', N'wanggenuyi', N'WAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2749', N'225', N',6,225,2749,', N'3', N'新普利茅斯', N'New Plymouth', N'xinpulimaosi', N'NPL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2750', N'225', N',6,225,2750,', N'3', N'因弗卡吉尔', N'Invercargill', N'yinfukajier', N'IVC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2751', N'226', N',2,226,2751,', N'3', N'巴兰尼亚', N'Baranya', N'balanniya', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2752', N'226', N',2,226,2752,', N'3', N'巴奇-基什孔', N'Bacs-Kiskun', N'baqijishikong', N'BK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2753', N'226', N',2,226,2753,', N'3', N'包尔绍德-奥包乌伊-曾普伦', N'Borsod-Abauj-Zemplen', N'baoershaodeaobaowuyizengpulun', N'BZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2754', N'226', N',2,226,2754,', N'3', N'贝凯什', N'Bekes', N'beikaishi', N'BE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2755', N'226', N',2,226,2755,', N'3', N'布达佩斯', N'Budapest', N'budapeisi', N'BU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2756', N'226', N',2,226,2756,', N'3', N'费耶尔', N'Fejer', N'feiyeer', N'FE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2757', N'226', N',2,226,2757,', N'3', N'豪伊杜-比豪尔', N'Hajdu-Bihar', N'haoyidubihaoer', N'HB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2758', N'226', N',2,226,2758,', N'3', N'赫维什', N'Heves', N'heweishi', N'HE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2759', N'226', N',2,226,2759,', N'3', N'加兹-纳杰孔-索尔诺克', N'Jasz-Nagykun-Szolnok', N'jiazinajiekongsuoernuoke', N'JN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2760', N'226', N',2,226,2760,', N'3', N'杰尔-莫松-肖普朗', N'Gyor-Moson-Sopron', N'jieermosongxiaopulang', N'GS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2761', N'226', N',2,226,2761,', N'3', N'科马罗姆', N'Komarom-Esztergom', N'kemaluomu', N'KE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2762', N'226', N',2,226,2762,', N'3', N'诺格拉德', N'Nograd', N'nuogelade', N'NO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2763', N'226', N',2,226,2763,', N'3', N'佩斯', N'Pest', N'peisi', N'PE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2764', N'226', N',2,226,2764,', N'3', N'琼格拉德', N'Csongrad', N'qionggelade', N'CS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2765', N'226', N',2,226,2765,', N'3', N'绍莫吉', N'Somogy', N'shaomoji', N'SO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2766', N'226', N',2,226,2766,', N'3', N'索博尔奇-索特马尔-贝拉格', N'Szabolcs-Szatmar-Bereg', N'suoboerqisuotemaerbeilage', N'SZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2767', N'226', N',2,226,2767,', N'3', N'托尔瑙', N'Tolna', N'tuoer', N'TO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2768', N'226', N',2,226,2768,', N'3', N'维斯普雷姆', N'Veszprem', N'weisipuleimu', N'VE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2769', N'226', N',2,226,2769,', N'3', N'沃什', N'Vas', N'woshi', N'VA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2770', N'226', N',2,226,2770,', N'3', N'佐洛', N'Zala', N'zuoluo', N'ZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2771', N'227', N',1,227,2771,', N'3', N'阿勒颇', N'Halab', N'alepo', N'HL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2772', N'227', N',1,227,2772,', N'3', N'大马士革', N'Rif Dimashq', N'damashige', N'RD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2773', N'227', N',1,227,2773,', N'3', N'大马士革市', N'Madinat Dimashq', N'damashigeshi', N'DI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2774', N'227', N',1,227,2774,', N'3', N'代尔祖尔', N'Dayr az Zawr', N'daierzuer', N'DZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2775', N'227', N',1,227,2775,', N'3', N'德拉', N'Dara', N'dela', N'DA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2776', N'227', N',1,227,2776,', N'3', N'哈马', N'Hamah', N'hama', N'HM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2777', N'227', N',1,227,2777,', N'3', N'哈塞克', N'Al Hasakah', N'hasaike', N'HA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2778', N'227', N',1,227,2778,', N'3', N'霍姆斯', N'Hims', N'huomusi', N'HI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2779', N'227', N',1,227,2779,', N'3', N'加布', N'Al Ghab', N'jiabu', N'GH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2780', N'227', N',1,227,2780,', N'3', N'卡米什利', N'Al-Qamishli', N'kamishili', N'QA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2781', N'227', N',1,227,2781,', N'3', N'库奈特拉', N'Al Qunaytirah', N'kunaitela', N'QU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2782', N'227', N',1,227,2782,', N'3', N'拉卡', N'Ar Raqqah', N'laka', N'RQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2783', N'227', N',1,227,2783,', N'3', N'拉塔基亚', N'Al Ladhiqiyah', N'latajiya', N'LA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2784', N'227', N',1,227,2784,', N'3', N'苏韦达', N'As Suwayda', N'suweida', N'SU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2785', N'227', N',1,227,2785,', N'3', N'塔尔图斯', N'Tartus', N'taertusi', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2786', N'227', N',1,227,2786,', N'3', N'伊德利卜', N'Idlib', N'yidelibo', N'ID')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2787', N'228', N',4,228,2787,', N'3', N'波特兰', N'Portland', N'botelan', N'POR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2788', N'228', N',4,228,2788,', N'3', N'汉诺威', N'Hanover', N'hannuowei', N'HAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2789', N'228', N',4,228,2789,', N'3', N'金斯敦', N'Kingston', N'jinsidun', N'KIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2790', N'228', N',4,228,2790,', N'3', N'克拉伦登', N'Clarendon', N'kelalundeng', N'CLA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2791', N'228', N',4,228,2791,', N'3', N'曼彻斯特', N'Manchester', N'manchesite', N'MAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2792', N'228', N',4,228,2792,', N'3', N'圣安德鲁斯', N'St. Andrews', N'shengandelusi', N'AND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2793', N'228', N',4,228,2793,', N'3', N'圣安娜', N'St. Ann', N'shenganna', N'ANN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2794', N'228', N',4,228,2794,', N'3', N'圣凯瑟琳', N'St. Catherine', N'shengkaiselin', N'CAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2795', N'228', N',4,228,2795,', N'3', N'圣玛丽', N'St. Mary', N'shengmali', N'MAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2796', N'228', N',4,228,2796,', N'3', N'圣托马斯', N'St. Thomas', N'shengtuomasi', N'THO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2797', N'228', N',4,228,2797,', N'3', N'圣伊丽莎白', N'St. Elizabeth', N'shengyilishabai', N'ELI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2798', N'228', N',4,228,2798,', N'3', N'圣詹姆斯', N'St. James', N'shengzhanmusi', N'JAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2799', N'228', N',4,228,2799,', N'3', N'特里洛尼', N'Trelawny', N'teliluoni', N'TRL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2800', N'228', N',4,228,2800,', N'3', N'西摩兰', N'Westmoreland', N'ximolan', N'WML')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2801', N'229', N',1,229,2801,', N'3', N'阿尔马维尔', N'Armavir', N'aermaweier', N'ARM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2802', N'229', N',1,229,2802,', N'3', N'阿拉加措特恩', N'Aragacotn', N'alajiacuoteen', N'AGT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2803', N'229', N',1,229,2803,', N'3', N'阿拉拉特', N'Ararat', N'alalate', N'ARA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2804', N'229', N',1,229,2804,', N'3', N'埃里温市', N'Yerevan', N'ailiwenshi', N'EVN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2805', N'229', N',1,229,2805,', N'3', N'格加尔库尼克', N'Gelarkunik', N'gejiaerkunike', N'GEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2806', N'229', N',1,229,2806,', N'3', N'科泰克', N'Kotayk', N'ketaike', N'KOT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2807', N'229', N',1,229,2807,', N'3', N'洛里', N'Lorri', N'luoli', N'LOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2808', N'229', N',1,229,2808,', N'3', N'塔武什', N'Tavus', N'tawushi', N'TAV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2809', N'229', N',1,229,2809,', N'3', N'瓦约茨·佐尔', N'VayocJor', N'wayueci', N'VAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2810', N'229', N',1,229,2810,', N'3', N'希拉克', N'Shirak', N'xilake', N'SHI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2811', N'229', N',1,229,2811,', N'3', N'休尼克', N'Syunik', N'xiunike', N'SYU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2812', N'230', N',1,230,2812,', N'3', N'阿比扬', N'Abyan', N'abiyang', N'AB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2813', N'230', N',1,230,2813,', N'3', N'阿姆兰', N'Amran Sana', N'amulan', N'AM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2814', N'230', N',1,230,2814,', N'3', N'贝达', N'Al-Bayda', N'beida', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2815', N'230', N',1,230,2815,', N'3', N'达利', N'Ad-Dali', N'dali', N'DA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2816', N'230', N',1,230,2816,', N'3', N'哈德拉毛', N'Hadramawt', N'hadelamao', N'HD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2817', N'230', N',1,230,2817,', N'3', N'哈杰', N'Hajjah', N'hajie', N'HJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2818', N'230', N',1,230,2818,', N'3', N'荷台达', N'Al-Hudaydah', N'hetaida', N'HU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2819', N'230', N',1,230,2819,', N'3', N'焦夫', N'Al-Jawf', N'jiaofu', N'JA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2820', N'230', N',1,230,2820,', N'3', N'拉赫季', N'Lahij', N'laheji', N'LA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2821', N'230', N',1,230,2821,', N'3', N'马里卜', N'Marib', N'malibo', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2822', N'230', N',1,230,2822,', N'3', N'迈赫拉', N'Al-Mahrah', N'maihela', N'MR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2823', N'230', N',1,230,2823,', N'3', N'迈赫维特', N'Al-Mahwit', N'maiheweite', N'MW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2824', N'230', N',1,230,2824,', N'3', N'萨达', N'Sadah', N'sada', N'SD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2825', N'230', N',1,230,2825,', N'3', N'萨那', N'Sana', N'sana', N'SN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2826', N'230', N',1,230,2826,', N'3', N'赛文', N'Seiyun', N'saiwen', N'GXF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2827', N'230', N',1,230,2827,', N'3', N'舍卜沃', N'Shabwah', N'shebowo', N'SH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2828', N'230', N',1,230,2828,', N'3', N'塔伊兹', N'Taizz', N'tayizi', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2829', N'230', N',1,230,2829,', N'3', N'希赫尔', N'Ash-Shihr', N'xiheer', N'ASR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2830', N'230', N',1,230,2830,', N'3', N'亚丁', N'Adan', N'yading', N'AD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2831', N'230', N',1,230,2831,', N'3', N'伊卜', N'Ibb', N'yibo', N'IB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2832', N'230', N',1,230,2832,', N'3', N'扎玛尔', N'Dhamar', N'zhamaer', N'DH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2833', N'233', N',1,233,2833,', N'3', N'阿什杜德', N'Ashdod', N'ashidude', N'ASH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2834', N'233', N',1,233,2834,', N'3', N'贝尔谢巴', N'Beersheba', N'beierxieba', N'BEV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2835', N'233', N',1,233,2835,', N'3', N'贝特雁', N'Bat Yam', N'beiteyan', N'BAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2836', N'233', N',1,233,2836,', N'3', N'海法', N'Haifa', N'haifa', N'HFA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2837', N'233', N',1,233,2837,', N'3', N'霍隆', N'Holon', N'huolong', N'HOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2838', N'233', N',1,233,2838,', N'3', N'内坦亚', N'Netanya', N'neitanya', N'NAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2839', N'233', N',1,233,2839,', N'3', N'特拉维夫', N'Tel Aviv-Yafo', N'telaweifu', N'TLV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2840', N'233', N',1,233,2840,', N'3', N'耶路撒冷', N'Jerusalem', N'yelusaleng', N'J')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2841', N'234', N',2,234,2841,', N'3', N'阿斯蒂', N'Asti', N'asidi', N'AST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2842', N'234', N',2,234,2842,', N'3', N'阿斯科利皮切诺', N'Ascoli Piceno', N'asikelipiqienuo', N'ASP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2843', N'234', N',2,234,2843,', N'3', N'安科纳', N'Ancona', N'ankena', N'AOI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2844', N'234', N',2,234,2844,', N'3', N'奥尔比亚', N'Olbia-Tempio', N'aoerbiya', N'OLB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2845', N'234', N',2,234,2845,', N'3', N'奥里斯塔诺', N'Oristano', N'aolisitanuo', N'QOS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2846', N'234', N',2,234,2846,', N'3', N'奥斯塔', N'Aosta', N'aosita', N'AOT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2847', N'234', N',2,234,2847,', N'3', N'巴勒莫', N'Palermo', N'balemo', N'PMO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2848', N'234', N',2,234,2848,', N'3', N'巴里', N'Bari', N'bali', N'BRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2849', N'234', N',2,234,2849,', N'3', N'贝加莫', N'Bergamo', N'beijiamo', N'BGO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2850', N'234', N',2,234,2850,', N'3', N'贝内文托', N'Benevento', N'beineiwentuo', N'BEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2851', N'234', N',2,234,2851,', N'3', N'比萨', N'Pisa', N'bisa', N'PSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2852', N'234', N',2,234,2852,', N'3', N'波代诺内', N'Pordenone', N'bodainuonei', N'PRD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2853', N'234', N',2,234,2853,', N'3', N'波坦察', N'Potenza', N'botancha', N'QPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2854', N'234', N',2,234,2854,', N'3', N'博洛尼亚', N'Bologna', N'boluoniya', N'BLQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2855', N'234', N',2,234,2855,', N'3', N'布拉', N'Biella', N'bula', N'BIE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2856', N'234', N',2,234,2856,', N'3', N'布雷西亚', N'Brescia', N'buleixiya', N'BRC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2857', N'234', N',2,234,2857,', N'3', N'布林迪西', N'Brindisi', N'bulindixi', N'BDS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2858', N'234', N',2,234,2858,', N'3', N'的里雅斯特', N'Trieste', N'deliyasite', N'TRS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2859', N'234', N',2,234,2859,', N'3', N'都灵', N'Turin', N'duling', N'TRN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2860', N'234', N',2,234,2860,', N'3', N'费拉拉', N'Ferrara', N'feilala', N'FRR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2861', N'234', N',2,234,2861,', N'3', N'佛罗伦萨', N'Firenze', N'foluolunsa', N'FLR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2862', N'234', N',2,234,2862,', N'3', N'福贾', N'Foggia', N'fujia', N'FOG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2863', N'234', N',2,234,2863,', N'3', N'卡利亚里', N'Cagliari', N'kaliyali', N'CAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2864', N'234', N',2,234,2864,', N'3', N'卡塞塔', N'Caserta', N'kasaita', N'CST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2865', N'234', N',2,234,2865,', N'3', N'卡塔尼亚', N'Catania', N'kataniya', N'CTA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2866', N'234', N',2,234,2866,', N'3', N'卡坦扎罗', N'Catanzaro', N'katanzhaluo', N'QCZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2867', N'234', N',2,234,2867,', N'3', N'坎波巴索', N'Campobasso', N'kanbobasuo', N'COB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2868', N'234', N',2,234,2868,', N'3', N'科摩', N'Como', N'kemo', N'CIY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2869', N'234', N',2,234,2869,', N'3', N'科森扎', N'Cosenza', N'kesenzha', N'QCS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2870', N'234', N',2,234,2870,', N'3', N'克罗托内', N'Crotone', N'keluotuonei', N'CRV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2871', N'234', N',2,234,2871,', N'3', N'库内奥', N'Cuneo', N'kuneiao', N'CUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2872', N'234', N',2,234,2872,', N'3', N'拉奎拉', N'L''Aquila', N'lakuila', N'LAQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2873', N'234', N',2,234,2873,', N'3', N'拉斯佩齐亚', N'La Spezia', N'lasipeiqiya', N'SPE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2874', N'234', N',2,234,2874,', N'3', N'莱科', N'Lecco', N'laike', N'LCO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2875', N'234', N',2,234,2875,', N'3', N'莱切', N'Lecce', N'laiqie', N'LCC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2876', N'234', N',2,234,2876,', N'3', N'雷焦艾米利亚', N'Reggio Emilia', N'leijiaoaimiliya', N'RNE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2877', N'234', N',2,234,2877,', N'3', N'雷焦卡拉布里亚', N'Reggio Calabria', N'leijiaokalabuliya', N'REG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2878', N'234', N',2,234,2878,', N'3', N'里窝那', N'Livorno', N'liwona', N'LIV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2879', N'234', N',2,234,2879,', N'3', N'罗马', N'Roma', N'luoma', N'ROM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2880', N'234', N',2,234,2880,', N'3', N'马萨', N'Massa-Carrara', N'masa', N'MCR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2881', N'234', N',2,234,2881,', N'3', N'马泰拉', N'Matera', N'mataila', N'MTR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2882', N'234', N',2,234,2882,', N'3', N'蒙扎', N'Monza e Brianza', N'mengzha', N'MZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2883', N'234', N',2,234,2883,', N'3', N'米兰', N'Milano', N'milan', N'MIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2884', N'234', N',2,234,2884,', N'3', N'摩德纳', N'Modena', N'modena', N'MOD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2885', N'234', N',2,234,2885,', N'3', N'墨西拿', N'Messina', N'moxina', N'MSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2886', N'234', N',2,234,2886,', N'3', N'那不勒斯', N'Naples', N'nabulesi', N'NAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2887', N'234', N',2,234,2887,', N'3', N'努奥罗', N'Nuoro', N'nuaoluo', N'QNU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2888', N'234', N',2,234,2888,', N'3', N'诺瓦拉', N'Novara', N'nuowala', N'NVR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2889', N'234', N',2,234,2889,', N'3', N'帕尔马', N'Parma', N'paerma', N'PMF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2890', N'234', N',2,234,2890,', N'3', N'帕维亚', N'Pavia', N'paweiya', N'PAV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2891', N'234', N',2,234,2891,', N'3', N'佩鲁贾', N'Perugia', N'peilujia', N'PEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2892', N'234', N',2,234,2892,', N'3', N'热那亚', N'Genova', N'renaya', N'CAX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2893', N'234', N',2,234,2893,', N'3', N'萨莱诺', N'Salerno', N'salainuo', N'SAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2894', N'234', N',2,234,2894,', N'3', N'萨萨里', N'Sassari', N'sasali', N'QSS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2895', N'234', N',2,234,2895,', N'3', N'萨沃纳', N'Savona', N'sawona', N'SVN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2896', N'234', N',2,234,2896,', N'3', N'塔兰托', N'Taranto', N'talantuo', N'TAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2897', N'234', N',2,234,2897,', N'3', N'特拉帕尼', N'Trapani', N'telapani', N'TPS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2898', N'234', N',2,234,2898,', N'3', N'特伦托', N'Trento', N'teluntuo', N'TRT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2899', N'234', N',2,234,2899,', N'3', N'威尼斯', N'Venice', N'weinisi', N'VCE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2900', N'234', N',2,234,2900,', N'3', N'韦尔切利', N'Vercelli', N'weierqieli', N'VRL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2901', N'234', N',2,234,2901,', N'3', N'维泰博', N'Viterbo', N'weitaibo', N'VIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2902', N'234', N',2,234,2902,', N'3', N'乌迪内', N'Udine', N'wudinei', N'UDN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2903', N'234', N',2,234,2903,', N'3', N'锡拉库扎', N'Syracuse', N'xilakuzha', N'SYR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2904', N'234', N',2,234,2904,', N'3', N'锡耶纳', N'Siena', N'xiyena', N'SNA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2905', N'234', N',2,234,2905,', N'3', N'亚历山德里亚', N'Alessandria', N'yalishandeliya', N'ALE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2906', N'234', N',2,234,2906,', N'3', N'伊塞尔尼亚', N'Isernia', N'yisaierniya', N'ISE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2907', N'235', N',1,235,2907,', N'3', N'艾藻尔', N'Aizawl', N'aizaoer', N'AJL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2908', N'235', N',1,235,2908,', N'3', N'班加罗尔', N'Bangalore', N'banjialuoer', N'BLR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2909', N'235', N',1,235,2909,', N'3', N'本地治里', N'Pondicherry', N'bendizhili', N'PNY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2910', N'235', N',1,235,2910,', N'3', N'博帕尔', N'Bhopal', N'bopaer', N'BHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2911', N'235', N',1,235,2911,', N'3', N'布巴内斯瓦尔', N'Bhubaneswar', N'bubaneisiwaer', N'BBI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2912', N'235', N',1,235,2912,', N'3', N'昌迪加尔', N'Chandigarh', N'changdijiaer', N'IXC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2913', N'235', N',1,235,2913,', N'3', N'达曼', N'Daman', N'daman', N'DAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2914', N'235', N',1,235,2914,', N'3', N'第乌', N'Diu', N'diwu', N'DIU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2915', N'235', N',1,235,2915,', N'3', N'甘托克', N'Gangtok', N'gantuoke', N'GTO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2916', N'235', N',1,235,2916,', N'3', N'哥印拜陀', N'Coimbatore', N'geyinbaituo', N'CJB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2917', N'235', N',1,235,2917,', N'3', N'加尔各答', N'Calcutta', N'jiaergeda', N'CCU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2918', N'235', N',1,235,2918,', N'3', N'加里加尔', N'Karaikal', N'jialijiaer', N'KRK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2919', N'235', N',1,235,2919,', N'3', N'贾巴尔普尔', N'Jabalpur', N'jiabaerpuer', N'JLR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2920', N'235', N',1,235,2920,', N'3', N'贾朗达尔', N'Jalandhar', N'jialangdaer', N'JUC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2921', N'235', N',1,235,2921,', N'3', N'焦特布尔', N'Jodhpur', N'jiaotebuer', N'JDH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2922', N'235', N',1,235,2922,', N'3', N'金奈', N'Chennai', N'jinnai', N'MAA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2923', N'235', N',1,235,2923,', N'3', N'卡瓦拉蒂', N'Kavaratti', N'kawaladi', N'KVA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2924', N'235', N',1,235,2924,', N'3', N'科希马', N'Kohima', N'kexima', N'KOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2925', N'235', N',1,235,2925,', N'3', N'马埃', N'Mahe', N'maai', N'MAH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2926', N'235', N',1,235,2926,', N'3', N'马杜赖', N'Madurai', N'madulai', N'IXM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2927', N'235', N',1,235,2927,', N'3', N'森伯尔布尔', N'Sambalpur', N'senboerbuer', N'SLR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2928', N'235', N',1,235,2928,', N'3', N'特里凡得琅', N'Trivandrum', N'telifandelang', N'TRV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2929', N'235', N',1,235,2929,', N'3', N'乌代布尔', N'Udaipur', N'wudaibuer', N'UDR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2930', N'235', N',1,235,2930,', N'3', N'西隆', N'Shillong', N'xilong', N'SHL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2931', N'235', N',1,235,2931,', N'3', N'锡尔萨瓦', N'Silvassa', N'xiersawa', N'SIL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2932', N'235', N',1,235,2932,', N'3', N'新德里', N'New Delhi', N'xindeli', N'ICD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2933', N'235', N',1,235,2933,', N'3', N'亚南', N'Yanam', N'yanan', N'SRV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2934', N'235', N',1,235,2934,', N'3', N'因帕尔', N'Imphal', N'yinpaer', N'IMF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2935', N'235', N',1,235,2935,', N'3', N'印多尔', N'Indore', N'yinduoer', N'IDR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2936', N'235', N',1,235,2936,', N'3', N'斋普尔', N'Jaipur', N'zhaipuer', N'JAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2937', N'236', N',1,236,2937,', N'3', N'巴厘', N'Bali', N'bali', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2938', N'236', N',1,236,2938,', N'3', N'邦加－勿里洞群岛', N'Kepulauan Bangka Belitung', N'bangjiawulidongqundao', N'BB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2939', N'236', N',1,236,2939,', N'3', N'北苏拉威西', N'Sulawesi Utara', N'beisulaweixi', N'SA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2940', N'236', N',1,236,2940,', N'3', N'北苏门答腊', N'Sumatera Utara', N'beisumendala', N'SU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2941', N'236', N',1,236,2941,', N'3', N'大雅加达首都特区', N'Daerah Tingkat I Kalimantan Barat', N'dayajiadashoudutequ', N'KB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2942', N'236', N',1,236,2942,', N'3', N'东加里曼丹', N'Kalimantan Timur', N'dongjialimandan', N'KI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2943', N'236', N',1,236,2943,', N'3', N'东南苏拉威西', N'Sulawesi Tenggara', N'dongnansulaweixi', N'SG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2944', N'236', N',1,236,2944,', N'3', N'东努沙登加拉', N'Nusa Tenggara Timur', N'dongnushadengjiala', N'NT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2945', N'236', N',1,236,2945,', N'3', N'东爪哇', N'Java Timur', N'dongzhuawa', N'JI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2946', N'236', N',1,236,2946,', N'3', N'廖内', N'Riau', N'liaonei', N'RI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2947', N'236', N',1,236,2947,', N'3', N'马鲁古', N'Maluku', N'malugu', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2948', N'236', N',1,236,2948,', N'3', N'明古鲁', N'Bengkulu', N'minggulu', N'BE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2949', N'236', N',1,236,2949,', N'3', N'楠榜', N'Lampung', N'bang', N'LA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2950', N'236', N',1,236,2950,', N'3', N'南加里曼丹', N'Kalimantan Selatan', N'nanjialimandan', N'KS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2951', N'236', N',1,236,2951,', N'3', N'南苏拉威西', N'Sulawesi Selatan', N'nansulaweixi', N'SN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2952', N'236', N',1,236,2952,', N'3', N'南苏门答腊', N'Sumatera Selatan', N'nansumendala', N'SS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2953', N'236', N',1,236,2953,', N'3', N'日惹特区', N'Daerah Istimewa Yogyakarta', N'riretequ', N'YO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2954', N'236', N',1,236,2954,', N'3', N'万丹', N'Banten', N'wandan', N'BT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2955', N'236', N',1,236,2955,', N'3', N'西努沙登加拉', N'Nusa Tenggara Barat', N'xinushadengjiala', N'NB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2956', N'236', N',1,236,2956,', N'3', N'西苏门答腊', N'Sumatera Barat', N'xisumendala', N'SR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2957', N'236', N',1,236,2957,', N'3', N'西爪哇', N'Java Barat', N'xizhuawa', N'JB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2958', N'236', N',1,236,2958,', N'3', N'雅加达', N'Jakarta Raya', N'yajiada', N'JK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2959', N'236', N',1,236,2959,', N'3', N'亚齐', N'Aceh', N'yaqi', N'AC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2960', N'236', N',1,236,2960,', N'3', N'伊里安查亚', N'Irian Jaya', N'yilianchaya', N'IJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2961', N'236', N',1,236,2961,', N'3', N'占碑', N'Jambi', N'zhanbei', N'JA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2962', N'236', N',1,236,2962,', N'3', N'中加里曼丹', N'Kalimantan Tengah', N'zhongjialimandan', N'KT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2963', N'236', N',1,236,2963,', N'3', N'中苏拉威西', N'Sulawesi Tengah', N'zhongsulaweixi', N'ST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2964', N'236', N',1,236,2964,', N'3', N'中爪哇', N'Java Tengah', N'zhongzhuawa', N'JT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2965', N'239', N',1,239,2965,', N'3', N'阿吉隆', N'Allun', N'ajilong', N'AJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2966', N'239', N',1,239,2966,', N'3', N'安曼', N'Amman', N'anman', N'AM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2967', N'239', N',1,239,2967,', N'3', N'拜勒加', N'Balqa', N'bailejia', N'BA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2968', N'239', N',1,239,2968,', N'3', N'杰拉什', N'Jarash', N'jielashi', N'JA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2969', N'239', N',1,239,2969,', N'3', N'卡拉克', N'Karak', N'kalake', N'KA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2970', N'239', N',1,239,2970,', N'3', N'鲁赛法', N'Rusayfah', N'lusaifa', N'RU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2971', N'239', N',1,239,2971,', N'3', N'马安', N'Maan', N'maan', N'MN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2972', N'239', N',1,239,2972,', N'3', N'马德巴', N'Madaba', N'madeba', N'MD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2973', N'239', N',1,239,2973,', N'3', N'马夫拉克', N'Mafraq', N'mafulake', N'MF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2974', N'239', N',1,239,2974,', N'3', N'塔菲拉', N'Tafiela', N'tafeila', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2975', N'239', N',1,239,2975,', N'3', N'亚喀巴', N'Aqaba', N'yakaba', N'AQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2976', N'239', N',1,239,2976,', N'3', N'伊尔比德', N'Irbid', N'yierbide', N'IR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2977', N'239', N',1,239,2977,', N'3', N'扎尔卡', N'Zarqa', N'zhaerka', N'ZA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2978', N'240', N',1,240,2978,', N'3', N'海防', N'Haiphong', N'haifang', N'HP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2979', N'240', N',1,240,2979,', N'3', N'河内', N'Hanoi', N'henei', N'HI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2980', N'240', N',1,240,2980,', N'3', N'胡志明市', N'Ho Chi Minh City', N'huzhimingshi', N'HC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2981', N'241', N',3,241,2981,', N'3', N'北方', N'Northern', N'beifang', N'NO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2982', N'241', N',3,241,2982,', N'3', N'东方', N'Eastern', N'dongfang', N'EA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2983', N'241', N',3,241,2983,', N'3', N'卢阿普拉', N'Luapula', N'luapula', N'LP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2984', N'241', N',3,241,2984,', N'3', N'卢萨卡', N'Lusaka', N'lusaka', N'LK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2985', N'241', N',3,241,2985,', N'3', N'南方', N'Southern', N'nanfang', N'SO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2986', N'241', N',3,241,2986,', N'3', N'铜带', N'Copperbelt', N'tongdai', N'CB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2987', N'241', N',3,241,2987,', N'3', N'西北', N'North-Western', N'xibei', N'NW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2988', N'241', N',3,241,2988,', N'3', N'西方', N'Western', N'xifang', N'WE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2989', N'241', N',3,241,2989,', N'3', N'中央', N'Central', N'zhongyang', N'CE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2990', N'245', N',5,245,2990,', N'3', N'阿劳卡尼亚大区', N'Region de la Araucania', N'alaokaniyadaqu', N'AR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2991', N'245', N',5,245,2991,', N'3', N'阿塔卡马大区', N'Region de Atacama', N'atakamadaqu', N'AT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2992', N'245', N',5,245,2992,', N'3', N'安托法加斯塔大区', N'Region de Antofagasta', N'antuofajiasitadaqu', N'AN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2993', N'245', N',5,245,2993,', N'3', N'比奥比奥大区', N'Region del Biobio', N'biaobiaodaqu', N'BI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2994', N'245', N',5,245,2994,', N'3', N'复活节岛', N'Libertador', N'fuhuojiedao', N'LI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2995', N'245', N',5,245,2995,', N'3', N'湖大区', N'Region de los Lagos', N'hudaqu', N'LL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2996', N'245', N',5,245,2996,', N'3', N'科金博大区', N'Region de Coquimbo', N'kejinbodaqu', N'CO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2997', N'245', N',5,245,2997,', N'3', N'马乌莱大区', N'Region del Maule', N'mawulaidaqu', N'ML')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2998', N'245', N',5,245,2998,', N'3', N'麦哲伦-智利南极大区', N'Magallanes y Antartica Chilena', N'maizhelunzhilinanjidaqu', N'MA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'2999', N'245', N',5,245,2999,', N'3', N'圣地亚哥', N'Metropolitana de Santiago', N'shengdiyage', N'RM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3000', N'245', N',5,245,3000,', N'3', N'塔拉帕卡大区', N'Region de Tarapaca', N'talapakadaqu', N'TA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3001', N'245', N',5,245,3001,', N'3', N'瓦尔帕莱索大区', N'Region de Valparaiso', N'waerpalaisuodaqu', N'VS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3002', N'245', N',5,245,3002,', N'3', N'伊瓦涅斯将军的艾森大区', N'Region de Alsen del General Carlos Ibanez del', N'yiwaniesijiangjundeaisendaqu', N'AI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3003', N'246', N',3,246,3003,', N'3', N'巴明吉-班戈兰', N'Bamingui-Bangoran', N'bamingjibangelan', N'BB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3004', N'246', N',3,246,3004,', N'3', N'班吉直辖市', N'Bangui', N'banjizhixiashi', N'BGF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3005', N'246', N',3,246,3005,', N'3', N'宾博', N'Bimbo', N'binbo', N'BI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3006', N'246', N',3,246,3006,', N'3', N'凯莫', N'Kemo', N'kaimo', N'KG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3007', N'246', N',3,246,3007,', N'3', N'洛巴伊', N'Lobaye', N'luobayi', N'LB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3008', N'246', N',3,246,3008,', N'3', N'曼贝雷-卡代', N'Mambere-Kadei', N'manbeileikadai', N'HS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3009', N'246', N',3,246,3009,', N'3', N'姆博穆', N'Mbomou', N'mubomu', N'MB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3010', N'246', N',3,246,3010,', N'3', N'纳纳-格里比齐', N'Nana-Gribizi', N'nanagelibiqi', N'KB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3011', N'246', N',3,246,3011,', N'3', N'纳纳-曼贝雷', N'Nana-Mambere', N'nanamanbeilei', N'NM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3012', N'246', N',3,246,3012,', N'3', N'桑加-姆巴埃雷', N'Sangha-Mbaere', N'sangjiamubaailei', N'SE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3013', N'246', N',3,246,3013,', N'3', N'上科托', N'Haute-Kotto', N'shangketuo', N'HK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3014', N'246', N',3,246,3014,', N'3', N'上姆博穆', N'Haut-Mbomou', N'shangmubomu', N'HM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3015', N'246', N',3,246,3015,', N'3', N'瓦卡', N'Ouaka', N'waka', N'UK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3016', N'246', N',3,246,3016,', N'3', N'瓦卡加', N'Vakaga', N'wakajia', N'VK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3017', N'246', N',3,246,3017,', N'3', N'瓦姆', N'Ouham', N'wamu', N'AC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3018', N'246', N',3,246,3018,', N'3', N'瓦姆-彭代', N'Ouham-Pende', N'wamupengdai', N'OP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3019', N'246', N',3,246,3019,', N'3', N'翁贝拉-姆波科', N'Ombella-Mpoko', N'wengbeilamuboke', N'MP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3020', N'246', N',3,246,3020,', N'3', N'下科托', N'Basse-Kotto', N'xiaketuo', N'BK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3021', N'247', N',1,7,247,3021,', N'4', N'东城', N'Dongcheng', N'dongcheng', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3022', N'247', N',1,7,247,3022,', N'4', N'西城', N'Xicheng', N'xicheng', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3023', N'247', N',1,7,247,3023,', N'4', N'朝阳', N'Chaoyang', N'chaoyang', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3024', N'247', N',1,7,247,3024,', N'4', N'丰台', N'Fengtai', N'fengtai', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3025', N'247', N',1,7,247,3025,', N'4', N'石景山', N'Shijingshan', N'shijingshan', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3026', N'247', N',1,7,247,3026,', N'4', N'海淀', N'Haidian', N'haidian', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3027', N'247', N',1,7,247,3027,', N'4', N'门头沟', N'Mentougou', N'mentougou', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3028', N'247', N',1,7,247,3028,', N'4', N'房山', N'Fangshan', N'fangshan', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3029', N'247', N',1,7,247,3029,', N'4', N'通州', N'Tongzhou', N'tongzhou', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3030', N'247', N',1,7,247,3030,', N'4', N'顺义', N'Shunyi', N'shunyi', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3031', N'247', N',1,7,247,3031,', N'4', N'昌平', N'Changping', N'changping', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3032', N'247', N',1,7,247,3032,', N'4', N'大兴', N'Daxing', N'daxing', N'24')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3033', N'247', N',1,7,247,3033,', N'4', N'平谷', N'Pinggu', N'pinggu', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3034', N'247', N',1,7,247,3034,', N'4', N'怀柔', N'Huairou', N'huairou', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3035', N'247', N',1,7,247,3035,', N'4', N'密云', N'Miyun', N'miyun', N'28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3036', N'247', N',1,7,247,3036,', N'4', N'延庆', N'Yanqing', N'yanqing', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3037', N'248', N',1,7,248,3037,', N'4', N'和平', N'Heping', N'heping', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3038', N'248', N',1,7,248,3038,', N'4', N'河东', N'Hedong', N'hedong', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3039', N'248', N',1,7,248,3039,', N'4', N'河西', N'Hexi', N'hexi', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3040', N'248', N',1,7,248,3040,', N'4', N'南开', N'Nankai', N'nankai', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3041', N'248', N',1,7,248,3041,', N'4', N'河北', N'Hebei', N'hebei', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3042', N'248', N',1,7,248,3042,', N'4', N'红桥', N'Hongqiao', N'hongqiao', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3043', N'248', N',1,7,248,3043,', N'4', N'滨海新区', N'Binghaixinqu', N'binhaixinqu', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3044', N'248', N',1,7,248,3044,', N'4', N'东丽', N'Dongli', N'dongli', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3045', N'248', N',1,7,248,3045,', N'4', N'西青', N'Xiqing', N'xiqing', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3046', N'248', N',1,7,248,3046,', N'4', N'津南', N'Jinnan', N'jinnan', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3047', N'248', N',1,7,248,3047,', N'4', N'北辰', N'Beichen', N'beichen', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3048', N'248', N',1,7,248,3048,', N'4', N'宁河', N'Ninghe', N'ninghe', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3049', N'248', N',1,7,248,3049,', N'4', N'武清', N'Wuqing', N'wuqing', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3050', N'248', N',1,7,248,3050,', N'4', N'静海', N'Jinghai', N'jinghai', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3051', N'248', N',1,7,248,3051,', N'4', N'宝坻', N'Baodi', N'bao', N'24')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3052', N'248', N',1,7,248,3052,', N'4', N'蓟县', N'Jixian', N'jixian', N'25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3053', N'249', N',1,7,249,3053,', N'4', N'石家庄', N'Shijiazhuang', N'shijiazhuang', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3054', N'249', N',1,7,249,3054,', N'4', N'唐山', N'Tangshan', N'tangshan', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3055', N'249', N',1,7,249,3055,', N'4', N'秦皇岛', N'Qinhuangdao', N'qinhuangdao', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3056', N'249', N',1,7,249,3056,', N'4', N'邯郸', N'Handan', N'handan', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3057', N'249', N',1,7,249,3057,', N'4', N'邢台', N'Xingtai', N'xingtai', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3058', N'249', N',1,7,249,3058,', N'4', N'保定', N'Baoding', N'baoding', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3059', N'249', N',1,7,249,3059,', N'4', N'张家口', N'Zhangjiakou', N'zhangjiakou', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3060', N'249', N',1,7,249,3060,', N'4', N'承德', N'Chengde', N'chengde', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3061', N'249', N',1,7,249,3061,', N'4', N'沧州', N'Cangzhou', N'cangzhou', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3062', N'249', N',1,7,249,3062,', N'4', N'廊坊', N'Langfang', N'langfang', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3063', N'249', N',1,7,249,3063,', N'4', N'衡水', N'Hengshui', N'hengshui', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3064', N'250', N',1,7,250,3064,', N'4', N'太原', N'Taiyuan', N'taiyuan', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3065', N'250', N',1,7,250,3065,', N'4', N'大同', N'Datong', N'datong', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3066', N'250', N',1,7,250,3066,', N'4', N'阳泉', N'Yangquan', N'yangquan', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3067', N'250', N',1,7,250,3067,', N'4', N'长治', N'Changzhi', N'changzhi', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3068', N'250', N',1,7,250,3068,', N'4', N'晋城', N'Jincheng', N'jincheng', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3069', N'250', N',1,7,250,3069,', N'4', N'朔州', N'Shuozhou', N'shuozhou', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3070', N'250', N',1,7,250,3070,', N'4', N'晋中', N'Jinzhong', N'jinzhong', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3071', N'250', N',1,7,250,3071,', N'4', N'运城', N'Yuncheng', N'yuncheng', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3072', N'250', N',1,7,250,3072,', N'4', N'忻州', N'Xinzhou', N'xinzhou', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3073', N'250', N',1,7,250,3073,', N'4', N'临汾', N'Linfen', N'linfen', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3074', N'250', N',1,7,250,3074,', N'4', N'吕梁', N'luliang', N'lvliang', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3075', N'251', N',1,7,251,3075,', N'4', N'呼和浩特', N'Hohhot', N'huhehaote', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3076', N'251', N',1,7,251,3076,', N'4', N'包头', N'Baotou', N'baotou', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3077', N'251', N',1,7,251,3077,', N'4', N'乌海', N'Wuhai', N'wuhai', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3078', N'251', N',1,7,251,3078,', N'4', N'赤峰', N'Chifeng', N'chifeng', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3079', N'251', N',1,7,251,3079,', N'4', N'通辽', N'Tongliao', N'tongliao', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3080', N'251', N',1,7,251,3080,', N'4', N'鄂尔多斯', N'Ordos', N'eerduosi', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3081', N'251', N',1,7,251,3081,', N'4', N'呼伦贝尔', N'Hulun Buir', N'hulunbeier', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3082', N'251', N',1,7,251,3082,', N'4', N'巴彦淖尔', N'Bayannur', N'bayannaoer', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3083', N'251', N',1,7,251,3083,', N'4', N'乌兰察布', N'Ulan Qab', N'wulanchabu', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3084', N'251', N',1,7,251,3084,', N'4', N'兴安', N'Xing''an', N'xingan', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3085', N'251', N',1,7,251,3085,', N'4', N'锡林郭勒', N'Xilin Gol', N'xilinguole', N'25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3086', N'251', N',1,7,251,3086,', N'4', N'阿拉善', N'Alxa', N'alashan', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3087', N'252', N',1,7,252,3087,', N'4', N'沈阳', N'Shenyang', N'shenyang', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3088', N'252', N',1,7,252,3088,', N'4', N'大连', N'Dalian', N'dalian', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3089', N'252', N',1,7,252,3089,', N'4', N'鞍山', N'Anshan', N'anshan', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3090', N'252', N',1,7,252,3090,', N'4', N'抚顺', N'Fushun', N'fushun', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3091', N'252', N',1,7,252,3091,', N'4', N'本溪', N'Benxi', N'benxi', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3092', N'252', N',1,7,252,3092,', N'4', N'丹东', N'Dandong', N'dandong', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3093', N'252', N',1,7,252,3093,', N'4', N'锦州', N'Jinzhou', N'jinzhou', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3094', N'252', N',1,7,252,3094,', N'4', N'营口', N'Yingkou', N'yingkou', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3095', N'252', N',1,7,252,3095,', N'4', N'阜新', N'Fuxin', N'fuxin', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3096', N'252', N',1,7,252,3096,', N'4', N'辽阳', N'Liaoyang', N'liaoyang', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3097', N'252', N',1,7,252,3097,', N'4', N'盘锦', N'Panjin', N'panjin', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3098', N'252', N',1,7,252,3098,', N'4', N'铁岭', N'Tieling', N'tieling', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3099', N'252', N',1,7,252,3099,', N'4', N'朝阳', N'Chaoyang', N'chaoyang', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3100', N'252', N',1,7,252,3100,', N'4', N'葫芦岛', N'Huludao', N'huludao', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3101', N'253', N',1,7,253,3101,', N'4', N'长春', N'Changchun', N'changchun', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3102', N'253', N',1,7,253,3102,', N'4', N'吉林', N'Jilin', N'jilin', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3103', N'253', N',1,7,253,3103,', N'4', N'四平', N'Siping', N'siping', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3104', N'253', N',1,7,253,3104,', N'4', N'辽源', N'Liaoyuan', N'liaoyuan', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3105', N'253', N',1,7,253,3105,', N'4', N'通化', N'Tonghua', N'tonghua', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3106', N'253', N',1,7,253,3106,', N'4', N'白山', N'Baishan', N'baishan', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3107', N'253', N',1,7,253,3107,', N'4', N'松原', N'Songyuan', N'songyuan', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3108', N'253', N',1,7,253,3108,', N'4', N'白城', N'Baicheng', N'baicheng', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3109', N'253', N',1,7,253,3109,', N'4', N'延边', N'Yanbian Korean Autonomous Prefecture', N'yanbian', N'24')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3110', N'254', N',1,7,254,3110,', N'4', N'哈尔滨', N'Harbin', N'haerbin', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3111', N'254', N',1,7,254,3111,', N'4', N'齐齐哈尔', N'Qiqihar', N'qiqihaer', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3112', N'254', N',1,7,254,3112,', N'4', N'鸡西', N'Jixi', N'jixi', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3113', N'254', N',1,7,254,3113,', N'4', N'鹤岗', N'Hegang', N'hegang', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3114', N'254', N',1,7,254,3114,', N'4', N'双鸭山', N'Shuangyashan', N'shuangyashan', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3115', N'254', N',1,7,254,3115,', N'4', N'大庆', N'Daqing', N'daqing', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3116', N'254', N',1,7,254,3116,', N'4', N'伊春', N'Yichun', N'yichun', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3117', N'254', N',1,7,254,3117,', N'4', N'佳木斯', N'Jiamusi', N'jiamusi', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3118', N'254', N',1,7,254,3118,', N'4', N'七台河', N'Qitaihe', N'qitaihe', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3119', N'254', N',1,7,254,3119,', N'4', N'牡丹江', N'Mudanjiang', N'mudanjiang', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3120', N'254', N',1,7,254,3120,', N'4', N'黑河', N'Heihe', N'heihe', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3121', N'254', N',1,7,254,3121,', N'4', N'绥化', N'Suihua', N'suihua', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3122', N'254', N',1,7,254,3122,', N'4', N'大兴安岭', N'Da Hinggan Ling', N'daxinganling', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3123', N'255', N',1,7,255,3123,', N'4', N'黄浦', N'Huangpu', N'huangpu', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3124', N'255', N',1,7,255,3124,', N'4', N'卢湾', N'Luwan', N'luwan', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3125', N'255', N',1,7,255,3125,', N'4', N'徐汇', N'Xuhui', N'xuhui', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3126', N'255', N',1,7,255,3126,', N'4', N'长宁', N'Changning', N'changning', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3127', N'255', N',1,7,255,3127,', N'4', N'静安', N'Jing''an', N'jingan', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3128', N'255', N',1,7,255,3128,', N'4', N'普陀', N'Putuo', N'putuo', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3129', N'255', N',1,7,255,3129,', N'4', N'闸北', N'Zhabei', N'zhabei', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3130', N'255', N',1,7,255,3130,', N'4', N'虹口', N'Hongkou', N'hongkou', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3131', N'255', N',1,7,255,3131,', N'4', N'杨浦', N'Yangpu', N'yangpu', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3132', N'255', N',1,7,255,3132,', N'4', N'闵行', N'Minhang', N'xing', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3133', N'255', N',1,7,255,3133,', N'4', N'宝山', N'Baoshan', N'baoshan', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3134', N'255', N',1,7,255,3134,', N'4', N'嘉定', N'Jiading', N'jiading', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3135', N'255', N',1,7,255,3135,', N'4', N'浦东新区', N'Pudong New Area', N'pudongxinqu', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3136', N'255', N',1,7,255,3136,', N'4', N'金山', N'Jinshan', N'jinshan', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3137', N'255', N',1,7,255,3137,', N'4', N'松江', N'Songjiang', N'songjiang', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3138', N'255', N',1,7,255,3138,', N'4', N'奉贤', N'Fengxian', N'fengxian', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3139', N'255', N',1,7,255,3139,', N'4', N'青浦', N'Qingpu', N'qingpu', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3140', N'255', N',1,7,255,3140,', N'4', N'崇明', N'Chongming', N'chongming', N'30')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3141', N'256', N',1,7,256,3141,', N'4', N'南京', N'Nanjing', N'nanjing', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3142', N'256', N',1,7,256,3142,', N'4', N'无锡', N'Wuxi', N'wuxi', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3143', N'256', N',1,7,256,3143,', N'4', N'徐州', N'Xuzhou', N'xuzhou', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3144', N'256', N',1,7,256,3144,', N'4', N'常州', N'Changzhou', N'changzhou', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3145', N'256', N',1,7,256,3145,', N'4', N'苏州', N'Suzhou', N'suzhou', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3146', N'256', N',1,7,256,3146,', N'4', N'南通', N'Nantong', N'nantong', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3147', N'256', N',1,7,256,3147,', N'4', N'连云港', N'Lianyungang', N'lianyungang', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3148', N'256', N',1,7,256,3148,', N'4', N'淮安', N'Huai''an', N'huaian', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3149', N'256', N',1,7,256,3149,', N'4', N'盐城', N'Yancheng', N'yancheng', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3150', N'256', N',1,7,256,3150,', N'4', N'扬州', N'Yangzhou', N'yangzhou', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3151', N'256', N',1,7,256,3151,', N'4', N'镇江', N'Zhenjiang', N'zhenjiang', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3152', N'256', N',1,7,256,3152,', N'4', N'泰州', N'Taizhou', N'taizhou', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3153', N'256', N',1,7,256,3153,', N'4', N'宿迁', N'Suqian', N'suqian', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3154', N'257', N',1,7,257,3154,', N'4', N'杭州', N'Hangzhou', N'hangzhou', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3155', N'257', N',1,7,257,3155,', N'4', N'宁波', N'Ningbo', N'ningbo', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3156', N'257', N',1,7,257,3156,', N'4', N'温州', N'Wenzhou', N'wenzhou', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3157', N'257', N',1,7,257,3157,', N'4', N'嘉兴', N'Jiaxing', N'jiaxing', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3158', N'257', N',1,7,257,3158,', N'4', N'湖州', N'Huzhou', N'huzhou', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3159', N'257', N',1,7,257,3159,', N'4', N'绍兴', N'Shaoxing', N'shaoxing', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3160', N'257', N',1,7,257,3160,', N'4', N'金华', N'Jinhua', N'jinhua', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3161', N'257', N',1,7,257,3161,', N'4', N'衢州', N'Quzhou', N'zhou', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3162', N'257', N',1,7,257,3162,', N'4', N'舟山', N'Zhoushan', N'zhoushan', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3163', N'257', N',1,7,257,3163,', N'4', N'台州', N'Taizhou', N'taizhou', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3164', N'257', N',1,7,257,3164,', N'4', N'丽水', N'Lishui', N'lishui', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3165', N'258', N',1,7,258,3165,', N'4', N'合肥', N'Hefei', N'hefei', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3166', N'258', N',1,7,258,3166,', N'4', N'芜湖', N'Wuhu', N'wuhu', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3167', N'258', N',1,7,258,3167,', N'4', N'蚌埠', N'Bengbu', N'bangbu', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3168', N'258', N',1,7,258,3168,', N'4', N'淮南', N'Huainan', N'huainan', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3169', N'258', N',1,7,258,3169,', N'4', N'马鞍山', N'Ma''anshan', N'maanshan', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3170', N'258', N',1,7,258,3170,', N'4', N'淮北', N'Huaibei', N'huaibei', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3171', N'258', N',1,7,258,3171,', N'4', N'铜陵', N'Tongling', N'tongling', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3172', N'258', N',1,7,258,3172,', N'4', N'安庆', N'Anqing', N'anqing', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3173', N'258', N',1,7,258,3173,', N'4', N'黄山', N'Huangshan', N'huangshan', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3174', N'258', N',1,7,258,3174,', N'4', N'滁州', N'Chuzhou', N'chuzhou', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3175', N'258', N',1,7,258,3175,', N'4', N'阜阳', N'Fuyang', N'fuyang', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3176', N'258', N',1,7,258,3176,', N'4', N'宿州', N'Suzhou', N'suzhou', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3177', N'258', N',1,7,258,3177,', N'4', N'六安', N'Lu''an', N'liuan', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3178', N'258', N',1,7,258,3178,', N'4', N'亳州', N'Bozhou', N'zhou', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3179', N'258', N',1,7,258,3179,', N'4', N'池州', N'Chizhou', N'chizhou', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3180', N'258', N',1,7,258,3180,', N'4', N'宣城', N'Xuancheng', N'xuancheng', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3181', N'259', N',1,7,259,3181,', N'4', N'福州', N'Fuzhou', N'fuzhou', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3182', N'259', N',1,7,259,3182,', N'4', N'厦门', N'Xiamen', N'xiamen', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3183', N'259', N',1,7,259,3183,', N'4', N'莆田', N'Putian', N'putian', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3184', N'259', N',1,7,259,3184,', N'4', N'三明', N'Sanming', N'sanming', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3185', N'259', N',1,7,259,3185,', N'4', N'泉州', N'Quanzhou', N'quanzhou', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3186', N'259', N',1,7,259,3186,', N'4', N'漳州', N'Zhangzhou', N'zhangzhou', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3187', N'259', N',1,7,259,3187,', N'4', N'南平', N'Nanping', N'nanping', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3188', N'259', N',1,7,259,3188,', N'4', N'龙岩', N'Longyan', N'longyan', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3189', N'259', N',1,7,259,3189,', N'4', N'宁德', N'Ningde', N'ningde', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3190', N'260', N',1,7,260,3190,', N'4', N'南昌', N'Nanchang', N'nanchang', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3191', N'260', N',1,7,260,3191,', N'4', N'景德镇', N'Jingdezhen', N'jingdezhen', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3192', N'260', N',1,7,260,3192,', N'4', N'萍乡', N'Pingxiang', N'pingxiang', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3193', N'260', N',1,7,260,3193,', N'4', N'九江', N'Jiujiang', N'jiujiang', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3194', N'260', N',1,7,260,3194,', N'4', N'新余', N'Xinyu', N'xinyu', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3195', N'260', N',1,7,260,3195,', N'4', N'鹰潭', N'Yingtan', N'yingtan', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3196', N'260', N',1,7,260,3196,', N'4', N'赣州', N'Ganzhou', N'ganzhou', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3197', N'260', N',1,7,260,3197,', N'4', N'吉安', N'Ji''an', N'jian', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3198', N'260', N',1,7,260,3198,', N'4', N'宜春', N'Yichun', N'yichun', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3199', N'260', N',1,7,260,3199,', N'4', N'抚州', N'Fuzhou', N'fuzhou', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3200', N'260', N',1,7,260,3200,', N'4', N'上饶', N'Shangrao', N'shangrao', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3201', N'261', N',1,7,261,3201,', N'4', N'济南', N'Jinan', N'jinan', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3202', N'261', N',1,7,261,3202,', N'4', N'青岛', N'Qingdao', N'qingdao', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3203', N'261', N',1,7,261,3203,', N'4', N'淄博', N'Zibo', N'zibo', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3204', N'261', N',1,7,261,3204,', N'4', N'枣庄', N'Zaozhuang', N'zaozhuang', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3205', N'261', N',1,7,261,3205,', N'4', N'东营', N'Dongying', N'dongying', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3206', N'261', N',1,7,261,3206,', N'4', N'烟台', N'Yantai', N'yantai', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3207', N'261', N',1,7,261,3207,', N'4', N'潍坊', N'Weifang', N'weifang', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3208', N'261', N',1,7,261,3208,', N'4', N'济宁', N'Jining', N'jining', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3209', N'261', N',1,7,261,3209,', N'4', N'泰安', N'Tai''an', N'taian', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3210', N'261', N',1,7,261,3210,', N'4', N'威海', N'Weihai', N'weihai', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3211', N'261', N',1,7,261,3211,', N'4', N'日照', N'Rizhao', N'rizhao', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3212', N'261', N',1,7,261,3212,', N'4', N'莱芜', N'Laiwu', N'laiwu', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3213', N'261', N',1,7,261,3213,', N'4', N'临沂', N'Linyi', N'linyi', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3214', N'261', N',1,7,261,3214,', N'4', N'德州', N'Dezhou', N'dezhou', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3215', N'261', N',1,7,261,3215,', N'4', N'聊城', N'Liaocheng', N'liaocheng', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3216', N'261', N',1,7,261,3216,', N'4', N'滨州', N'Binzhou', N'binzhou', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3217', N'261', N',1,7,261,3217,', N'4', N'菏泽', N'Heze', N'heze', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3218', N'262', N',1,7,262,3218,', N'4', N'郑州', N'Zhengzhou', N'zhengzhou', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3219', N'262', N',1,7,262,3219,', N'4', N'开封', N'Kaifeng', N'kaifeng', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3220', N'262', N',1,7,262,3220,', N'4', N'洛阳', N'Luoyang', N'luoyang', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3221', N'262', N',1,7,262,3221,', N'4', N'平顶山', N'Pingdingshan', N'pingdingshan', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3222', N'262', N',1,7,262,3222,', N'4', N'安阳', N'Anyang', N'anyang', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3223', N'262', N',1,7,262,3223,', N'4', N'鹤壁', N'Hebi', N'hebi', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3224', N'262', N',1,7,262,3224,', N'4', N'新乡', N'Xinxiang', N'xinxiang', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3225', N'262', N',1,7,262,3225,', N'4', N'焦作', N'Jiaozuo', N'jiaozuo', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3226', N'262', N',1,7,262,3226,', N'4', N'濮阳', N'Puyang', N'yang', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3227', N'262', N',1,7,262,3227,', N'4', N'许昌', N'Xuchang', N'xuchang', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3228', N'262', N',1,7,262,3228,', N'4', N'漯河', N'Luohe', N'he', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3229', N'262', N',1,7,262,3229,', N'4', N'三门峡', N'Sanmenxia', N'sanmenxia', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3230', N'262', N',1,7,262,3230,', N'4', N'南阳', N'Nanyang', N'nanyang', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3231', N'262', N',1,7,262,3231,', N'4', N'商丘', N'Shangqiu', N'shangqiu', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3232', N'262', N',1,7,262,3232,', N'4', N'信阳', N'Xinyang', N'xinyang', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3233', N'262', N',1,7,262,3233,', N'4', N'周口', N'Zhoukou', N'zhoukou', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3234', N'262', N',1,7,262,3234,', N'4', N'驻马店', N'Zhumadian', N'zhumadian', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3235', N'262', N',1,7,262,3235,', N'4', N'济源', N'Jiyuan', N'jiyuan', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3236', N'263', N',1,7,263,3236,', N'4', N'武汉', N'Wuhan', N'wuhan', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3237', N'263', N',1,7,263,3237,', N'4', N'黄石', N'Huangshi', N'huangshi', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3238', N'263', N',1,7,263,3238,', N'4', N'十堰', N'Shiyan', N'shiyan', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3239', N'263', N',1,7,263,3239,', N'4', N'宜昌', N'Yichang', N'yichang', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3240', N'263', N',1,7,263,3240,', N'4', N'襄阳', N'Xiangyang', N'xiangyang', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3241', N'263', N',1,7,263,3241,', N'4', N'鄂州', N'Ezhou', N'ezhou', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3242', N'263', N',1,7,263,3242,', N'4', N'荆门', N'Jingmen', N'jingmen', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3243', N'263', N',1,7,263,3243,', N'4', N'孝感', N'Xiaogan', N'xiaogan', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3244', N'263', N',1,7,263,3244,', N'4', N'荆州', N'Jingzhou', N'jingzhou', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3245', N'263', N',1,7,263,3245,', N'4', N'黄冈', N'Huanggang', N'huanggang', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3246', N'263', N',1,7,263,3246,', N'4', N'咸宁', N'Xianning', N'xianning', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3247', N'263', N',1,7,263,3247,', N'4', N'随州', N'Suizhou', N'suizhou', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3248', N'263', N',1,7,263,3248,', N'4', N'恩施', N'Enshi Tujia-Miao Autonomous Prefecture', N'enshi', N'28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3249', N'263', N',1,7,263,3249,', N'4', N'仙桃', N'Xiantao', N'xiantao', N'94')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3250', N'263', N',1,7,263,3250,', N'4', N'潜江', N'Qianjiang', N'qianjiang', N'95')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3251', N'263', N',1,7,263,3251,', N'4', N'天门', N'Tianmen', N'tianmen', N'96')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3252', N'263', N',1,7,263,3252,', N'4', N'神农架', N'Shennongjia', N'shennongjia', N'A21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3253', N'264', N',1,7,264,3253,', N'4', N'长沙', N'Changsha', N'changsha', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3254', N'264', N',1,7,264,3254,', N'4', N'株洲', N'Zhuzhou', N'zhuzhou', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3255', N'264', N',1,7,264,3255,', N'4', N'湘潭', N'Xiangtan', N'xiangtan', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3256', N'264', N',1,7,264,3256,', N'4', N'衡阳', N'Hengyang', N'hengyang', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3257', N'264', N',1,7,264,3257,', N'4', N'邵阳', N'Shaoyang', N'shaoyang', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3258', N'264', N',1,7,264,3258,', N'4', N'岳阳', N'Yueyang', N'yueyang', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3259', N'264', N',1,7,264,3259,', N'4', N'常德', N'Changde', N'changde', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3260', N'264', N',1,7,264,3260,', N'4', N'张家界', N'Zhangjiajie', N'zhangjiajie', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3261', N'264', N',1,7,264,3261,', N'4', N'益阳', N'Yiyang', N'yiyang', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3262', N'264', N',1,7,264,3262,', N'4', N'郴州', N'Chenzhou', N'chenzhou', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3263', N'264', N',1,7,264,3263,', N'4', N'永州', N'Yongzhou', N'yongzhou', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3264', N'264', N',1,7,264,3264,', N'4', N'怀化', N'Huaihua', N'huaihua', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3265', N'264', N',1,7,264,3265,', N'4', N'娄底', N'Loudi', N'loudi', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3266', N'264', N',1,7,264,3266,', N'4', N'湘西', N'Xiangxi Tujia-Miao Autonomous Prefecture', N'xiangxi', N'31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3267', N'265', N',1,7,265,3267,', N'4', N'广州', N'Guangzhou', N'guangzhou', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3268', N'265', N',1,7,265,3268,', N'4', N'韶关', N'Shaoguan', N'shaoguan', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3269', N'265', N',1,7,265,3269,', N'4', N'深圳', N'Shenzhen', N'shen', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3270', N'265', N',1,7,265,3270,', N'4', N'珠海', N'Zhuhai', N'zhuhai', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3271', N'265', N',1,7,265,3271,', N'4', N'汕头', N'Shantou', N'shantou', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3272', N'265', N',1,7,265,3272,', N'4', N'佛山', N'Foshan', N'foshan', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3273', N'265', N',1,7,265,3273,', N'4', N'江门', N'Jiangmen', N'jiangmen', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3274', N'265', N',1,7,265,3274,', N'4', N'湛江', N'Zhanjiang', N'zhanjiang', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3275', N'265', N',1,7,265,3275,', N'4', N'茂名', N'Maoming', N'maoming', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3276', N'265', N',1,7,265,3276,', N'4', N'肇庆', N'Zhaoqing', N'zhaoqing', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3277', N'265', N',1,7,265,3277,', N'4', N'惠州', N'Huizhou', N'huizhou', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3278', N'265', N',1,7,265,3278,', N'4', N'梅州', N'Meizhou', N'meizhou', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3279', N'265', N',1,7,265,3279,', N'4', N'汕尾', N'Shanwei', N'shanwei', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3280', N'265', N',1,7,265,3280,', N'4', N'河源', N'Heyuan', N'heyuan', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3281', N'265', N',1,7,265,3281,', N'4', N'阳江', N'Yangjiang', N'yangjiang', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3282', N'265', N',1,7,265,3282,', N'4', N'清远', N'Qingyuan', N'qingyuan', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3283', N'265', N',1,7,265,3283,', N'4', N'东莞', N'Dongguan', N'dong', N'19')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3284', N'265', N',1,7,265,3284,', N'4', N'中山', N'Zhongshan', N'zhongshan', N'20')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3285', N'265', N',1,7,265,3285,', N'4', N'潮州', N'Chaozhou', N'chaozhou', N'51')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3286', N'265', N',1,7,265,3286,', N'4', N'揭阳', N'Jieyang', N'jieyang', N'52')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3287', N'265', N',1,7,265,3287,', N'4', N'云浮', N'Yunfu', N'yunfu', N'53')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3288', N'266', N',1,7,266,3288,', N'4', N'南宁', N'Nanning', N'nanning', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3289', N'266', N',1,7,266,3289,', N'4', N'柳州', N'Liuzhou', N'liuzhou', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3290', N'266', N',1,7,266,3290,', N'4', N'桂林', N'Guilin', N'guilin', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3291', N'266', N',1,7,266,3291,', N'4', N'梧州', N'Wuzhou', N'wuzhou', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3292', N'266', N',1,7,266,3292,', N'4', N'北海', N'Beihai', N'beihai', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3293', N'266', N',1,7,266,3293,', N'4', N'防城港', N'Fangchenggang', N'fangchenggang', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3294', N'266', N',1,7,266,3294,', N'4', N'钦州', N'Qinzhou', N'qinzhou', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3295', N'266', N',1,7,266,3295,', N'4', N'贵港', N'Guigang', N'guigang', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3296', N'266', N',1,7,266,3296,', N'4', N'玉林', N'Yulin', N'yulin', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3297', N'266', N',1,7,266,3297,', N'4', N'百色', N'Baise', N'baise', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3298', N'266', N',1,7,266,3298,', N'4', N'贺州', N'Hezhou', N'hezhou', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3299', N'266', N',1,7,266,3299,', N'4', N'河池', N'Hechi', N'hechi', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3300', N'266', N',1,7,266,3300,', N'4', N'来宾', N'Laibin', N'laibin', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3301', N'266', N',1,7,266,3301,', N'4', N'崇左', N'Chongzuo', N'chongzuo', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3302', N'267', N',1,7,267,3302,', N'4', N'海口', N'Haikou', N'haikou', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3303', N'267', N',1,7,267,3303,', N'4', N'三亚', N'Sanya', N'sanya', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3304', N'267', N',1,7,267,3304,', N'4', N'三沙', N'Shansha', N'sansha', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3305', N'267', N',1,7,267,3305,', N'4', N'五指山', N'Wuzhishan', N'wuzhishan', N'91')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3306', N'267', N',1,7,267,3306,', N'4', N'琼海', N'Qionghai', N'qionghai', N'92')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3307', N'267', N',1,7,267,3307,', N'4', N'儋州', N'Danzhou', N'zhou', N'93')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3308', N'267', N',1,7,267,3308,', N'4', N'文昌', N'Wenchang', N'wenchang', N'95')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3309', N'267', N',1,7,267,3309,', N'4', N'万宁', N'Wanning', N'wanning', N'96')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3310', N'267', N',1,7,267,3310,', N'4', N'东方', N'Dongfang', N'dongfang', N'97')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3311', N'267', N',1,7,267,3311,', N'4', N'定安', N'Ding''an', N'dingan', N'A25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3312', N'267', N',1,7,267,3312,', N'4', N'屯昌', N'Tunchang', N'tunchang', N'A26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3313', N'267', N',1,7,267,3313,', N'4', N'澄迈', N'Cengmai', N'chengmai', N'A27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3314', N'267', N',1,7,267,3314,', N'4', N'临高', N'Lingao', N'lingao', N'A28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3315', N'267', N',1,7,267,3315,', N'4', N'白沙', N'Baisha Li Autonomous County', N'baisha', N'A30')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3316', N'267', N',1,7,267,3316,', N'4', N'昌江', N'Jiang Li Autonomous County', N'changjiang', N'A31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3317', N'267', N',1,7,267,3317,', N'4', N'乐东', N'Ledong Li Autonomous County', N'ledong', N'A33')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3318', N'267', N',1,7,267,3318,', N'4', N'陵水', N'Lingshui Li Autonomous County', N'lingshui', N'A34')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3319', N'267', N',1,7,267,3319,', N'4', N'保亭', N'Baoting Li-Miao Autonomous County', N'baoting', N'A35')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3320', N'267', N',1,7,267,3320,', N'4', N'琼中', N'Qiongzhong Li-Miao Autonomous County', N'qiongzhong', N'A36')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3321', N'268', N',1,7,268,3321,', N'4', N'万州', N'Wanzhou', N'wanzhou', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3322', N'268', N',1,7,268,3322,', N'4', N'涪陵', N'Fuling', N'fuling', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3323', N'268', N',1,7,268,3323,', N'4', N'渝中', N'Yuzhong', N'yuzhong', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3324', N'268', N',1,7,268,3324,', N'4', N'大渡口', N'Dadukou', N'dadukou', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3325', N'268', N',1,7,268,3325,', N'4', N'江北', N'Jiangbei', N'jiangbei', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3326', N'268', N',1,7,268,3326,', N'4', N'沙坪坝', N'Shapingba', N'shapingba', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3327', N'268', N',1,7,268,3327,', N'4', N'九龙坡', N'Jiulongpo', N'jiulongpo', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3328', N'268', N',1,7,268,3328,', N'4', N'南岸', N'Nan''an', N'nanan', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3329', N'268', N',1,7,268,3329,', N'4', N'北碚', N'Beibei', N'bei', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3330', N'268', N',1,7,268,3330,', N'4', N'两江新区', N'Kaixian', N'liangjiangxinqu', N'85')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3331', N'268', N',1,7,268,3331,', N'4', N'万盛', N'Wansheng', N'wansheng', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3332', N'268', N',1,7,268,3332,', N'4', N'双桥', N'Shuangqiao', N'shuangqiao', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3333', N'268', N',1,7,268,3333,', N'4', N'渝北', N'Yubei', N'yubei', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3334', N'268', N',1,7,268,3334,', N'4', N'巴南', N'Ba''nan', N'banan', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3335', N'268', N',1,7,268,3335,', N'4', N'长寿', N'Changshou', N'changshou', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3336', N'268', N',1,7,268,3336,', N'4', N'綦江', N'Qijiang', N'jiang', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3337', N'268', N',1,7,268,3337,', N'4', N'潼南', N'Tongnan', N'nan', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3338', N'268', N',1,7,268,3338,', N'4', N'铜梁', N'Tongliang', N'tongliang', N'24')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3339', N'268', N',1,7,268,3339,', N'4', N'大足', N'Dazu', N'dazu', N'25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3340', N'268', N',1,7,268,3340,', N'4', N'荣昌', N'Rongchang', N'rongchang', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3341', N'268', N',1,7,268,3341,', N'4', N'璧山', N'Bishan', N'shan', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3342', N'268', N',1,7,268,3342,', N'4', N'梁平', N'Liangping', N'liangping', N'28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3343', N'268', N',1,7,268,3343,', N'4', N'城口', N'Chengkou', N'chengkou', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3344', N'268', N',1,7,268,3344,', N'4', N'丰都', N'Fengdu', N'fengdu', N'30')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3345', N'268', N',1,7,268,3345,', N'4', N'垫江', N'Dianjiang', N'dianjiang', N'31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3346', N'268', N',1,7,268,3346,', N'4', N'武隆', N'Wulong', N'wulong', N'32')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3347', N'268', N',1,7,268,3347,', N'4', N'忠县', N'Zhongxian', N'zhongxian', N'33')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3348', N'268', N',1,7,268,3348,', N'4', N'开县', N'Kaixian', N'kaixian', N'34')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3349', N'268', N',1,7,268,3349,', N'4', N'云阳', N'Yunyang', N'yunyang', N'35')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3350', N'268', N',1,7,268,3350,', N'4', N'奉节', N'Fengjie', N'fengjie', N'36')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3351', N'268', N',1,7,268,3351,', N'4', N'巫山', N'Wushan', N'wushan', N'37')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3352', N'268', N',1,7,268,3352,', N'4', N'巫溪', N'Wuxi', N'wuxi', N'38')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3353', N'268', N',1,7,268,3353,', N'4', N'黔江', N'Qianjiang', N'qianjiang', N'39')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3354', N'268', N',1,7,268,3354,', N'4', N'石柱', N'Shizhu Tujia Autonomous Country', N'shizhu', N'40')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3355', N'268', N',1,7,268,3355,', N'4', N'秀山', N'Xiushan Tujia-Miao Autonomous Country', N'xiushan', N'41')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3356', N'268', N',1,7,268,3356,', N'4', N'酉阳', N'Youyang Tujia-Miao Autonomous Country', N'youyang', N'42')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3357', N'268', N',1,7,268,3357,', N'4', N'彭水', N'Pengshui Miao-Tujia Autonomous Country', N'pengshui', N'43')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3358', N'268', N',1,7,268,3358,', N'4', N'江津', N'Jiangjin', N'jiangjin', N'81')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3359', N'268', N',1,7,268,3359,', N'4', N'合川', N'Hechuan', N'hechuan', N'82')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3360', N'268', N',1,7,268,3360,', N'4', N'永川', N'Yongchuan', N'yongchuan', N'83')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3361', N'268', N',1,7,268,3361,', N'4', N'南川', N'Liangjiangxinqu', N'nanchuan', N'84')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3362', N'269', N',1,7,269,3362,', N'4', N'成都', N'Chengdu', N'chengdu', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3363', N'269', N',1,7,269,3363,', N'4', N'自贡', N'Zigong', N'zigong', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3364', N'269', N',1,7,269,3364,', N'4', N'攀枝花', N'Panzhihua', N'panzhihua', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3365', N'269', N',1,7,269,3365,', N'4', N'泸州', N'Luzhou', N'zhou', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3366', N'269', N',1,7,269,3366,', N'4', N'德阳', N'Deyang', N'deyang', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3367', N'269', N',1,7,269,3367,', N'4', N'绵阳', N'Mianyang', N'mianyang', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3368', N'269', N',1,7,269,3368,', N'4', N'广元', N'Guangyuan', N'guangyuan', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3369', N'269', N',1,7,269,3369,', N'4', N'遂宁', N'Suining', N'suining', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3370', N'269', N',1,7,269,3370,', N'4', N'内江', N'Neijiang', N'neijiang', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3371', N'269', N',1,7,269,3371,', N'4', N'乐山', N'Leshan', N'leshan', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3372', N'269', N',1,7,269,3372,', N'4', N'南充', N'Nanchong', N'nanchong', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3373', N'269', N',1,7,269,3373,', N'4', N'眉山', N'Meishan', N'meishan', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3374', N'269', N',1,7,269,3374,', N'4', N'宜宾', N'Yibin', N'yibin', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3375', N'269', N',1,7,269,3375,', N'4', N'广安', N'Guang''an', N'guangan', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3376', N'269', N',1,7,269,3376,', N'4', N'达州', N'Dazhou', N'dazhou', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3377', N'269', N',1,7,269,3377,', N'4', N'雅安', N'Ya''an', N'yaan', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3378', N'269', N',1,7,269,3378,', N'4', N'巴中', N'Bazhong', N'bazhong', N'19')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3379', N'269', N',1,7,269,3379,', N'4', N'资阳', N'Ziyang', N'ziyang', N'20')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3380', N'269', N',1,7,269,3380,', N'4', N'阿坝', N'Aba Tibetan-Qiang Autonomous Prefecture', N'aba', N'32')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3381', N'269', N',1,7,269,3381,', N'4', N'甘孜', N'Garze Tibetan Autonomous Prefecture', N'ganzi', N'33')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3382', N'269', N',1,7,269,3382,', N'4', N'凉山', N'Liangshan Yi Autonomous Prefecture', N'liangshan', N'34')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3383', N'270', N',1,7,270,3383,', N'4', N'贵阳', N'Guiyang', N'guiyang', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3384', N'270', N',1,7,270,3384,', N'4', N'六盘水', N'Liupanshui', N'liupanshui', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3385', N'270', N',1,7,270,3385,', N'4', N'遵义', N'Zunyi', N'zunyi', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3386', N'270', N',1,7,270,3386,', N'4', N'安顺', N'Anshun', N'anshun', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3387', N'270', N',1,7,270,3387,', N'4', N'铜仁', N'Tongren', N'tongren', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3388', N'270', N',1,7,270,3388,', N'4', N'黔西南', N'Qianxinan Buyi-Miao Autonomous Prefecture', N'qianxinan', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3389', N'270', N',1,7,270,3389,', N'4', N'毕节', N'Bijie', N'bijie', N'24')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3390', N'270', N',1,7,270,3390,', N'4', N'黔东南', N'Qiandongnan Miao-Dong Autonomous Prefecture', N'qiandongnan', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3391', N'270', N',1,7,270,3391,', N'4', N'黔南', N'Qiannan Buyi Autonomous Prefecture', N'qiannan', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3392', N'271', N',1,7,271,3392,', N'4', N'昆明', N'Kunming', N'kunming', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3393', N'271', N',1,7,271,3393,', N'4', N'曲靖', N'Qujing', N'qujing', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3394', N'271', N',1,7,271,3394,', N'4', N'玉溪', N'Yuxi', N'yuxi', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3395', N'271', N',1,7,271,3395,', N'4', N'保山', N'Baoshan', N'baoshan', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3396', N'271', N',1,7,271,3396,', N'4', N'昭通', N'Zhaotong', N'zhaotong', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3397', N'271', N',1,7,271,3397,', N'4', N'丽江', N'Lijiang', N'lijiang', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3398', N'271', N',1,7,271,3398,', N'4', N'普洱', N'Pu''er', N'puer', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3399', N'271', N',1,7,271,3399,', N'4', N'临沧', N'Lincang', N'lincang', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3400', N'271', N',1,7,271,3400,', N'4', N'楚雄', N'Chuxiong Yi Autonomous Prefecture', N'chuxiong', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3401', N'271', N',1,7,271,3401,', N'4', N'红河', N'Honghe Hani-Yi Autonomous Prefecture', N'honghe', N'25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3402', N'271', N',1,7,271,3402,', N'4', N'文山', N'Wenshan Zhuang-Miao Autonomous Prefecture', N'wenshan', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3403', N'271', N',1,7,271,3403,', N'4', N'西双版纳', N'Xishuangbanna Dai Autonomous Prefecture', N'xishuangbanna', N'28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3404', N'271', N',1,7,271,3404,', N'4', N'大理', N'Dali Bai Autonomous Prefecture', N'dali', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3405', N'271', N',1,7,271,3405,', N'4', N'德宏', N'Dehong Dai-Jingpo Autonomous Prefecture', N'dehong', N'31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3406', N'271', N',1,7,271,3406,', N'4', N'怒江', N'Nujiang Lisu Autonomous Prefecture', N'nujiang', N'33')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3407', N'271', N',1,7,271,3407,', N'4', N'迪庆', N'Diqing Tibetan Autonomous Prefecture', N'diqing', N'34')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3408', N'272', N',1,7,272,3408,', N'4', N'拉萨', N'Lhasa', N'lasa', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3409', N'272', N',1,7,272,3409,', N'4', N'昌都', N'Qamdo', N'changdu', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3410', N'272', N',1,7,272,3410,', N'4', N'山南', N'Shannan', N'shannan', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3411', N'272', N',1,7,272,3411,', N'4', N'日喀则', N'Xigaze', N'rikaze', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3412', N'272', N',1,7,272,3412,', N'4', N'那曲', N'Nagqu', N'naqu', N'24')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3413', N'272', N',1,7,272,3413,', N'4', N'阿里', N'Ngari', N'ali', N'25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3414', N'272', N',1,7,272,3414,', N'4', N'林芝', N'Nyingchi', N'linzhi', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3415', N'273', N',1,7,273,3415,', N'4', N'西安', N'Xi''an', N'xian', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3416', N'273', N',1,7,273,3416,', N'4', N'铜川', N'Tongchuan', N'tongchuan', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3417', N'273', N',1,7,273,3417,', N'4', N'宝鸡', N'Baoji', N'baoji', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3418', N'273', N',1,7,273,3418,', N'4', N'咸阳', N'Xianyang', N'xianyang', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3419', N'273', N',1,7,273,3419,', N'4', N'渭南', N'Weinan', N'weinan', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3420', N'273', N',1,7,273,3420,', N'4', N'延安', N'Yan''an', N'yanan', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3421', N'273', N',1,7,273,3421,', N'4', N'汉中', N'Hanzhong', N'hanzhong', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3422', N'273', N',1,7,273,3422,', N'4', N'榆林', N'Yulin', N'yulin', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3423', N'273', N',1,7,273,3423,', N'4', N'安康', N'Ankang', N'ankang', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3424', N'273', N',1,7,273,3424,', N'4', N'商洛', N'Shangluo', N'shangluo', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3425', N'274', N',1,7,274,3425,', N'4', N'兰州市', N'Lanzhou', N'lanzhoushi', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3426', N'274', N',1,7,274,3426,', N'4', N'嘉峪关', N'Jinchang', N'jiayuguan', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3427', N'274', N',1,7,274,3427,', N'4', N'金昌', N'Baiyin', N'jinchang', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3428', N'274', N',1,7,274,3428,', N'4', N'白银', N'Tianshui', N'baiyin', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3429', N'274', N',1,7,274,3429,', N'4', N'天水', N'Jiayuguan', N'tianshui', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3430', N'274', N',1,7,274,3430,', N'4', N'武威', N'Wuwei', N'wuwei', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3431', N'274', N',1,7,274,3431,', N'4', N'张掖', N'Zhangye', N'zhangye', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3432', N'274', N',1,7,274,3432,', N'4', N'平凉', N'Pingliang', N'pingliang', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3433', N'274', N',1,7,274,3433,', N'4', N'酒泉', N'Jiuquan', N'jiuquan', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3434', N'274', N',1,7,274,3434,', N'4', N'庆阳', N'Qingyang', N'qingyang', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3435', N'274', N',1,7,274,3435,', N'4', N'定西', N'Dingxi', N'dingxi', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3436', N'274', N',1,7,274,3436,', N'4', N'陇南', N'Longnan', N'longnan', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3437', N'274', N',1,7,274,3437,', N'4', N'临夏', N'Linxia Hui Autonomous Prefecture', N'linxia', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3438', N'274', N',1,7,274,3438,', N'4', N'甘南', N'Gannan Tibetan Autonomous Prefecture', N'gannan', N'30')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3439', N'275', N',1,7,275,3439,', N'4', N'西宁', N'Xining', N'xining', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3440', N'275', N',1,7,275,3440,', N'4', N'海东', N'Haidong', N'haidong', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3441', N'275', N',1,7,275,3441,', N'4', N'海北', N'Haibei Tibetan Autonomous Prefecture', N'haibei', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3442', N'275', N',1,7,275,3442,', N'4', N'黄南', N'Huangnan Tibetan Autonomous Prefecture', N'huangnan', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3443', N'275', N',1,7,275,3443,', N'4', N'海南', N'Hainan Tibetan Autonomous Prefecture', N'hainan', N'25')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3444', N'275', N',1,7,275,3444,', N'4', N'果洛', N'Guoluo Tibetan Autonomous Prefecture', N'guoluo', N'26')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3445', N'275', N',1,7,275,3445,', N'4', N'玉树', N'Yushu Tibetan Autonomous Prefecture', N'yushu', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3446', N'275', N',1,7,275,3446,', N'4', N'海西', N'Haixi Mongol-Tibetan Autonomous Prefecture', N'haixi', N'28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3447', N'276', N',1,7,276,3447,', N'4', N'银川', N'Yinchuan', N'yinchuan', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3448', N'276', N',1,7,276,3448,', N'4', N'石嘴山', N'Shizuishan', N'shizuishan', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3449', N'276', N',1,7,276,3449,', N'4', N'吴忠', N'Wuzhong', N'wuzhong', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3450', N'276', N',1,7,276,3450,', N'4', N'固原', N'Guyuan', N'guyuan', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3451', N'276', N',1,7,276,3451,', N'4', N'中卫', N'Zhongwei', N'zhongwei', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3452', N'277', N',1,7,277,3452,', N'4', N'乌鲁木齐', N'Urumqi', N'wulumuqi', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3453', N'277', N',1,7,277,3453,', N'4', N'克拉玛依', N'Karamay', N'kelamayi', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3454', N'277', N',1,7,277,3454,', N'4', N'吐鲁番', N'Turpan', N'tulufan', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3455', N'277', N',1,7,277,3455,', N'4', N'哈密', N'Hami', N'hami', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3456', N'277', N',1,7,277,3456,', N'4', N'昌吉', N'Changji Hui Autonomous Prefecture', N'changji', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3457', N'277', N',1,7,277,3457,', N'4', N'博尔塔拉', N'Bortala Mongol Autonomous Prefecture', N'boertala', N'27')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3458', N'277', N',1,7,277,3458,', N'4', N'巴音郭楞', N'Bayingolin Mongol Autonomous Prefecture', N'bayinguoleng', N'28')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3459', N'277', N',1,7,277,3459,', N'4', N'阿克苏', N'Aksu', N'akesu', N'29')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3460', N'277', N',1,7,277,3460,', N'4', N'克孜勒苏', N'Kizilsu Kirgiz Autonomous Prefecture', N'kezilesu', N'30')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3461', N'277', N',1,7,277,3461,', N'4', N'喀什', N'Kashi', N'kashi', N'31')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3462', N'277', N',1,7,277,3462,', N'4', N'和田', N'Hotan', N'hetian', N'32')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3463', N'277', N',1,7,277,3463,', N'4', N'伊犁', N'Ili Kazakh Autonomous Prefecture', N'yili', N'40')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3464', N'277', N',1,7,277,3464,', N'4', N'塔城', N'Tacheng', N'tacheng', N'42')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3465', N'277', N',1,7,277,3465,', N'4', N'阿勒泰', N'Altay', N'aletai', N'43')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3466', N'277', N',1,7,277,3466,', N'4', N'石河子', N'Shihezi', N'shihezi', N'91')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3467', N'277', N',1,7,277,3467,', N'4', N'阿拉尔', N'Alar', N'alaer', N'92')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3468', N'277', N',1,7,277,3468,', N'4', N'图木舒克', N'Tumsuk', N'tumushuke', N'93')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3469', N'277', N',1,7,277,3469,', N'4', N'五家渠', N'Wujiaqu', N'wujiaqu', N'94')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3470', N'277', N',1,7,277,3470,', N'4', N'北屯', N'Beitun', N'beitun', N'95')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3471', N'278', N',1,7,278,3471,', N'4', N'台北市', N'Taipei City', N'taibeishi', N'1')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3472', N'278', N',1,7,278,3472,', N'4', N'高雄市', N'Kaohsiung City', N'gaoxiongshi', N'2')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3473', N'278', N',1,7,278,3473,', N'4', N'基隆市', N'Keelung City', N'jilongshi', N'3')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3474', N'278', N',1,7,278,3474,', N'4', N'台中市', N'Taichung City', N'taizhongshi', N'4')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3475', N'278', N',1,7,278,3475,', N'4', N'台南市', N'Tainan City', N'tainanshi', N'5')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3476', N'278', N',1,7,278,3476,', N'4', N'新竹市', N'Hsinchu City', N'xinzhushi', N'6')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3477', N'278', N',1,7,278,3477,', N'4', N'嘉义市', N'Chiayi City', N'jiayishi', N'7')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3478', N'278', N',1,7,278,3478,', N'4', N'台北县', N'Taipei County', N'taibeixian', N'8')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3479', N'278', N',1,7,278,3479,', N'4', N'宜兰县', N'Ilan County', N'yilanxian', N'9')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3480', N'278', N',1,7,278,3480,', N'4', N'桃园县', N'Taoyuan County', N'taoyuanxian', N'10')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3481', N'278', N',1,7,278,3481,', N'4', N'新竹县', N'Hsinchu County', N'xinzhuxian', N'11')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3482', N'278', N',1,7,278,3482,', N'4', N'苗栗县', N'Miaoli County', N'miaolixian', N'12')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3483', N'278', N',1,7,278,3483,', N'4', N'台中县', N'Taichung County', N'taizhongxian', N'13')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3484', N'278', N',1,7,278,3484,', N'4', N'彰化县', N'Changhwa County', N'zhanghuaxian', N'14')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3485', N'278', N',1,7,278,3485,', N'4', N'南投县', N'Nantou County', N'nantouxian', N'15')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3486', N'278', N',1,7,278,3486,', N'4', N'云林县', N'Yunnlin County', N'yunlinxian', N'16')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3487', N'278', N',1,7,278,3487,', N'4', N'嘉义县', N'Chiayi County', N'jiayixian', N'17')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3488', N'278', N',1,7,278,3488,', N'4', N'台南县', N'Tainan County', N'tainanxian', N'18')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3489', N'278', N',1,7,278,3489,', N'4', N'高雄县', N'Kaohsiung County', N'gaoxiongxian', N'19')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3490', N'278', N',1,7,278,3490,', N'4', N'屏东县', N'Pingtung County', N'pingdongxian', N'20')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3491', N'278', N',1,7,278,3491,', N'4', N'台东县', N'Taitung County', N'taidongxian', N'22')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3492', N'278', N',1,7,278,3492,', N'4', N'花莲县', N'Hualian County', N'hualianxian', N'23')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3493', N'278', N',1,7,278,3493,', N'4', N'澎湖县', N'Penghu County', N'penghuxian', N'21')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3494', N'279', N',1,7,279,3494,', N'4', N'中西区', N'NaN', N'zhongxiqu', N'HCW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3495', N'279', N',1,7,279,3495,', N'4', N'东区', N'NaN', N'dongqu', N'HEA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3496', N'279', N',1,7,279,3496,', N'4', N'九龙城区', N'NaN', N'jiulongchengqu', N'KKC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3497', N'279', N',1,7,279,3497,', N'4', N'观塘区', N'NaN', N'guantangqu', N'KKT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3498', N'279', N',1,7,279,3498,', N'4', N'南区', N'NaN', N'nanqu', N'HSO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3499', N'279', N',1,7,279,3499,', N'4', N'深水埗区', N'NaN', N'shenshui', N'KSS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3500', N'279', N',1,7,279,3500,', N'4', N'黄大仙区', N'NaN', N'huangdaxianqu', N'KWT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3501', N'279', N',1,7,279,3501,', N'4', N'湾仔区', N'NaN', N'wanziqu', N'HWC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3502', N'279', N',1,7,279,3502,', N'4', N'油尖旺区', N'NaN', N'youjianwangqu', N'KYT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3503', N'279', N',1,7,279,3503,', N'4', N'离岛区', N'NaN', N'lidaoqu', N'NIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3504', N'279', N',1,7,279,3504,', N'4', N'葵青区', N'NaN', N'kuiqingqu', N'NKT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3505', N'279', N',1,7,279,3505,', N'4', N'北区', N'NaN', N'beiqu', N'NNO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3506', N'279', N',1,7,279,3506,', N'4', N'西贡区', N'NaN', N'xigongqu', N'NSK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3507', N'279', N',1,7,279,3507,', N'4', N'沙田区', N'NaN', N'shatianqu', N'NST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3508', N'279', N',1,7,279,3508,', N'4', N'屯门区', N'NaN', N'tunmenqu', N'NTM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3509', N'279', N',1,7,279,3509,', N'4', N'大埔区', N'NaN', N'dapuqu', N'NTP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3510', N'279', N',1,7,279,3510,', N'4', N'荃湾区', N'NaN', N'wanqu', N'NTW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3511', N'279', N',1,7,279,3511,', N'4', N'元朗区', N'NaN', N'yuanlangqu', N'NYL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3512', N'280', N',1,7,280,3512,', N'4', N'花地玛堂区', N'NaN', N'huadimatangqu', N'OLF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3513', N'280', N',1,7,280,3513,', N'4', N'圣安多尼堂区', N'NaN', N'shenganduonitangqu', N'ANT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3514', N'280', N',1,7,280,3514,', N'4', N'大堂区', N'NaN', N'datangqu', N'CAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3515', N'280', N',1,7,280,3515,', N'4', N'望德堂区', N'NaN', N'wangdetangqu', N'LAW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3516', N'280', N',1,7,280,3516,', N'4', N'风顺堂区', N'NaN', N'fengshuntangqu', N'LAZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3517', N'280', N',1,7,280,3517,', N'4', N'氹仔', N'NaN', N'', N'TPA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3518', N'280', N',1,7,280,3518,', N'4', N'路环', N'NaN', N'luhuan', N'CLN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3519', N'281', N',6,25,281,3519,', N'4', N'北帕默斯顿', N'Palmerston', N'beipamosidun', N'PAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3520', N'281', N',6,25,281,3520,', N'4', N'达尔文', N'Darwin', N'daerwen', N'DRW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3521', N'282', N',6,25,282,3521,', N'4', N'堪培拉', N'Canberra', N'kanpeila', N'CBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3522', N'283', N',6,25,283,3522,', N'4', N'布里斯班', N'Brisbane', N'bulisiban', N'BNE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3523', N'283', N',6,25,283,3523,', N'4', N'黄金海岸', N'Gold Coast', N'huangjinhaian', N'OOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3524', N'283', N',6,25,283,3524,', N'4', N'凯恩斯', N'Cairns', N'kaiensi', N'CNS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3525', N'283', N',6,25,283,3525,', N'4', N'日光海岸', N'Caloundra', N'riguanghaian', N'CUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3526', N'283', N',6,25,283,3526,', N'4', N'汤斯维尔', N'Townsville', N'tangsiweier', N'TSV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3527', N'283', N',6,25,283,3527,', N'4', N'图文巴', N'Toowoomba', N'tuwenba', N'TWB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3528', N'284', N',6,25,284,3528,', N'4', N'阿德莱德', N'Adelaide', N'adelaide', N'ADL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3529', N'284', N',6,25,284,3529,', N'4', N'奥古斯塔港', N'Port Augusta', N'aogusitagang', N'PUG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3530', N'284', N',6,25,284,3530,', N'4', N'甘比亚山', N'Mount Gambier', N'ganbiyashan', N'MGB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3531', N'284', N',6,25,284,3531,', N'4', N'怀阿拉', N'Whyalla', N'huaiala', N'WAY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3532', N'284', N',6,25,284,3532,', N'4', N'林肯港', N'Port Lincoln', N'linkengang', N'PLO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3533', N'284', N',6,25,284,3533,', N'4', N'默里布里奇', N'Murray Bridge', N'molibuliqi', N'MYB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3534', N'284', N',6,25,284,3534,', N'4', N'皮里港', N'Port Pirie', N'piligang', N'PPI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3535', N'284', N',6,25,284,3535,', N'4', N'维克托港', N'Victor Harbor', N'weiketuogang', N'VHA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3536', N'285', N',6,25,285,3536,', N'4', N'伯尼港', N'Burnie', N'bonigang', N'BWT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3537', N'285', N',6,25,285,3537,', N'4', N'德文波特', N'Devonport', N'dewenbote', N'DPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3538', N'285', N',6,25,285,3538,', N'4', N'霍巴特', N'Hobart', N'huobate', N'HBA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3539', N'285', N',6,25,285,3539,', N'4', N'朗塞斯顿', N'Launceston', N'langsaisidun', N'LST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3540', N'286', N',6,25,286,3540,', N'4', N'吉朗', N'Geelong', N'jilang', N'GEX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3541', N'286', N',6,25,286,3541,', N'4', N'墨尔本', N'Melbourne', N'moerben', N'MEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3542', N'287', N',6,25,287,3542,', N'4', N'奥尔巴尼', N'Albany', N'aoerbani', N'ALH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3543', N'287', N',6,25,287,3543,', N'4', N'班伯里', N'Bunbury', N'banboli', N'BUY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3544', N'287', N',6,25,287,3544,', N'4', N'弗里曼特尔港', N'Fremantle', N'fulimanteergang', N'FRE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3545', N'287', N',6,25,287,3545,', N'4', N'杰拉尔顿', N'Geraldton', N'jielaerdun', N'GET')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3546', N'287', N',6,25,287,3546,', N'4', N'卡尔古利', N'Kalgoorlie', N'kaerguli', N'KGI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3547', N'287', N',6,25,287,3547,', N'4', N'曼哲拉', N'Mandurah', N'manzhela', N'MDU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3548', N'287', N',6,25,287,3548,', N'4', N'珀斯', N'Perth', N'si', N'PER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3549', N'288', N',6,25,288,3549,', N'4', N'纽卡斯尔', N'Newcastle', N'niukasier', N'NTL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3550', N'288', N',6,25,288,3550,', N'4', N'伍伦贡', N'Wollongong', N'wulungong', N'WOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3551', N'288', N',6,25,288,3551,', N'4', N'悉尼', N'Sydney', N'xini', N'HBS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3552', N'289', N',1,89,289,3552,', N'4', N'达城郡', N'Dalseong-gun', N'dachengjun', N'DSG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3553', N'289', N',1,89,289,3553,', N'4', N'大邱', N'Daegu', N'daqiu', N'TAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3554', N'289', N',1,89,289,3554,', N'4', N'寿城区', N'Suseong-gu', N'shouchengqu', N'SUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3555', N'294', N',1,89,294,3555,', N'4', N'春川市', N'Chuncheon', N'chunchuanshi', N'CHC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3556', N'294', N',1,89,294,3556,', N'4', N'东海市', N'Donghae', N'donghaishi', N'TGH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3557', N'294', N',1,89,294,3557,', N'4', N'高城郡', N'Goseong County', N'gaochengjun', N'GSG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3558', N'294', N',1,89,294,3558,', N'4', N'横城郡', N'Hoengseong County', N'hengchengjun', N'HSG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3559', N'294', N',1,89,294,3559,', N'4', N'洪川郡', N'Hongcheon County', N'hongchuanjun', N'HCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3560', N'294', N',1,89,294,3560,', N'4', N'华川郡', N'Hwacheon County', N'huachuanjun', N'HCH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3561', N'294', N',1,89,294,3561,', N'4', N'江陵市', N'Gangneung', N'jianglingshi', N'KAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3562', N'294', N',1,89,294,3562,', N'4', N'旌善郡', N'Jeongseon County', N'shanjun', N'JSE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3563', N'294', N',1,89,294,3563,', N'4', N'麟蹄郡', N'Inje County', N'tijun', N'IJE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3564', N'294', N',1,89,294,3564,', N'4', N'宁越郡', N'Yeongwol County', N'ningyuejun', N'YWL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3565', N'294', N',1,89,294,3565,', N'4', N'平昌郡', N'Pyeongchang County', N'pingchangjun', N'POG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3566', N'294', N',1,89,294,3566,', N'4', N'三陟市', N'Samcheok', N'sanshi', N'SUK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3567', N'294', N',1,89,294,3567,', N'4', N'束草市', N'Sokcho', N'shucaoshi', N'SHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3568', N'294', N',1,89,294,3568,', N'4', N'太白市', N'Taebaek', N'taibaishi', N'TBK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3569', N'294', N',1,89,294,3569,', N'4', N'铁原郡', N'Cheorwon County', N'tieyuanjun', N'CWN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3570', N'294', N',1,89,294,3570,', N'4', N'襄阳郡', N'Yangyang County', N'xiangyangjun', N'YNY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3571', N'294', N',1,89,294,3571,', N'4', N'杨口郡', N'Yanggu County', N'yangkoujun', N'YGU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3572', N'294', N',1,89,294,3572,', N'4', N'原州市', N'Wonju', N'yuanzhoushi', N'WJU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3573', N'295', N',1,89,295,3573,', N'4', N'安城市', N'Anseong', N'anchengshi', N'ASG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3574', N'295', N',1,89,295,3574,', N'4', N'安山市', N'Ansan', N'anshanshi', N'ASN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3575', N'295', N',1,89,295,3575,', N'4', N'安养市', N'Anyang', N'anyangshi', N'ANY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3576', N'295', N',1,89,295,3576,', N'4', N'抱川市', N'Pocheon', N'baochuanshi', N'POC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3577', N'295', N',1,89,295,3577,', N'4', N'城南市', N'Seongnam', N'chengnanshi', N'SEO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3578', N'295', N',1,89,295,3578,', N'4', N'东豆川市', N'Dongducheon', N'dongdouchuanshi', N'DDC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3579', N'295', N',1,89,295,3579,', N'4', N'富川市', N'Bucheon', N'fuchuanshi', N'BCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3580', N'295', N',1,89,295,3580,', N'4', N'高阳市', N'Goyang', N'gaoyangshi', N'GYG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3581', N'295', N',1,89,295,3581,', N'4', N'光明市', N'Gwangmyeong', N'guangmingshi', N'GMG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3582', N'295', N',1,89,295,3582,', N'4', N'广州市', N'Gwangju', N'guangzhoushi', N'KWU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3583', N'295', N',1,89,295,3583,', N'4', N'果川市', N'Gwacheon', N'guochuanshi', N'GCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3584', N'295', N',1,89,295,3584,', N'4', N'河南市', N'Hanam', N'henanshi', N'HNM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3585', N'295', N',1,89,295,3585,', N'4', N'华城市', N'Hwaseong', N'huachengshi', N'HCH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3586', N'295', N',1,89,295,3586,', N'4', N'加平郡', N'Gapyeong County', N'jiapingjun', N'GPG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3587', N'295', N',1,89,295,3587,', N'4', N'金浦市', N'Gimpo', N'jinpushi', N'GMP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3588', N'295', N',1,89,295,3588,', N'4', N'九里市', N'Guri', N'jiulishi', N'GRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3589', N'295', N',1,89,295,3589,', N'4', N'军浦市', N'Gunpo', N'junpushi', N'GUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3590', N'295', N',1,89,295,3590,', N'4', N'骊州郡', N'Yeoju County', N'zhoujun', N'YJU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3591', N'295', N',1,89,295,3591,', N'4', N'利川市', N'Icheon', N'lichuanshi', N'ICE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3592', N'295', N',1,89,295,3592,', N'4', N'涟川郡', N'Yeoncheon County', N'lianchuanjun', N'YCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3593', N'295', N',1,89,295,3593,', N'4', N'龙仁市', N'Yongin', N'longrenshi', N'YNG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3594', N'295', N',1,89,295,3594,', N'4', N'南杨州市', N'Namyangju', N'nanyangzhoushi', N'NYU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3595', N'295', N',1,89,295,3595,', N'4', N'平泽市', N'Pyeongtaek', N'pingzeshi', N'PTK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3596', N'295', N',1,89,295,3596,', N'4', N'坡州市', N'Paju', N'pozhoushi', N'PJU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3597', N'295', N',1,89,295,3597,', N'4', N'始兴市', N'Siheung', N'shixingshi', N'SHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3598', N'295', N',1,89,295,3598,', N'4', N'水原市', N'Suwon', N'shuiyuanshi', N'SUO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3599', N'295', N',1,89,295,3599,', N'4', N'乌山市', N'Osan', N'wushanshi', N'OSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3600', N'295', N',1,89,295,3600,', N'4', N'扬平郡', N'Yangpyeong County', N'yangpingjun', N'YPG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3601', N'295', N',1,89,295,3601,', N'4', N'杨州市', N'Yangju', N'yangzhoushi', N'YYU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3602', N'295', N',1,89,295,3602,', N'4', N'仪旺市', N'Uiwang', N'yiwangshi', N'UWN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3603', N'295', N',1,89,295,3603,', N'4', N'议政府市', N'Uijeongbu', N'yizhengfushi', N'UIJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3604', N'296', N',1,89,296,3604,', N'4', N'安东市', N'Andong', N'andongshi', N'ADG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3605', N'296', N',1,89,296,3605,', N'4', N'奉化郡', N'Bonghwa County', N'fenghuajun', N'BHA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3606', N'296', N',1,89,296,3606,', N'4', N'高灵郡', N'Goryeong County', N'gaolingjun', N'GRG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3607', N'296', N',1,89,296,3607,', N'4', N'龟尾市', N'Gumi', N'guiweishi', N'KUM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3608', N'296', N',1,89,296,3608,', N'4', N'金泉市', N'Gimcheon', N'jinquanshi', N'KMC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3609', N'296', N',1,89,296,3609,', N'4', N'军威郡', N'Gunwi County', N'junweijun', N'GWI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3610', N'296', N',1,89,296,3610,', N'4', N'醴泉郡', N'Yecheon County', N'quanjun', N'YEC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3611', N'296', N',1,89,296,3611,', N'4', N'浦项市', N'Pohang', N'puxiangshi', N'KPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3612', N'296', N',1,89,296,3612,', N'4', N'漆谷郡', N'Chilgok County', N'qigujun', N'CGK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3613', N'296', N',1,89,296,3613,', N'4', N'淸道郡', N'Cheongdo County', N'', N'CDO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3614', N'296', N',1,89,296,3614,', N'4', N'靑松郡', N'Cheongsong County', N'', N'CSG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3615', N'296', N',1,89,296,3615,', N'4', N'庆山市', N'Gyeongsan', N'qingshanshi', N'GYS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3616', N'296', N',1,89,296,3616,', N'4', N'庆州市', N'Gyeongju', N'qingzhoushi', N'GJU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3617', N'296', N',1,89,296,3617,', N'4', N'荣州市', N'Yeongju', N'rongzhoushi', N'YEJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3618', N'296', N',1,89,296,3618,', N'4', N'尙州市', N'Sangju', N'', N'SJU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3619', N'296', N',1,89,296,3619,', N'4', N'蔚珍郡', N'Uljin County', N'weizhenjun', N'UJN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3620', N'296', N',1,89,296,3620,', N'4', N'闻庆市', N'Mungyeong', N'wenqingshi', N'MGG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3621', N'296', N',1,89,296,3621,', N'4', N'星州郡', N'Seongju County', N'xingzhoujun', N'SEJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3622', N'296', N',1,89,296,3622,', N'4', N'义城郡', N'Uiseong County', N'yichengjun', N'USG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3623', N'296', N',1,89,296,3623,', N'4', N'英阳郡', N'Yeongyang County', N'yingyangjun', N'YYG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3624', N'296', N',1,89,296,3624,', N'4', N'盈德郡', N'Yeongdeok County', N'yingdejun', N'YDK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3625', N'296', N',1,89,296,3625,', N'4', N'永川市', N'Yeongcheon', N'yongchuanshi', N'YCH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3626', N'296', N',1,89,296,3626,', N'4', N'郁陵郡', N'Ulleung County', N'yulingjun', N'ULG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3627', N'297', N',1,89,297,3627,', N'4', N'昌宁郡', N'Changnyeong County', N'changningjun', N'CNG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3628', N'297', N',1,89,297,3628,', N'4', N'昌原市', N'Changwon', N'changyuanshi', N'CHW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3629', N'297', N',1,89,297,3629,', N'4', N'固城郡', N'Goseong County', N'guchengjun', N'GSO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3630', N'297', N',1,89,297,3630,', N'4', N'河东郡', N'Hadong County', N'hedongjun', N'HDG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3631', N'297', N',1,89,297,3631,', N'4', N'金海市', N'Gimhae', N'jinhaishi', N'KMH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3632', N'297', N',1,89,297,3632,', N'4', N'晋州市', N'Jinju', N'jinzhoushi', N'HIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3633', N'297', N',1,89,297,3633,', N'4', N'居昌郡', N'Geochang County', N'juchangjun', N'GCH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3634', N'297', N',1,89,297,3634,', N'4', N'巨济市', N'Geoje', N'jujishi', N'KJE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3635', N'297', N',1,89,297,3635,', N'4', N'梁山市', N'Yangsan', N'liangshanshi', N'YSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3636', N'297', N',1,89,297,3636,', N'4', N'马山市', N'Masan', N'mashanshi', N'MAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3637', N'297', N',1,89,297,3637,', N'4', N'密阳市', N'Miryang', N'miyangshi', N'MIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3638', N'297', N',1,89,297,3638,', N'4', N'南海郡', N'Namhae County', N'nanhaijun', N'NHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3639', N'297', N',1,89,297,3639,', N'4', N'山淸郡', N'Sancheong County', N'shan', N'SCH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3640', N'297', N',1,89,297,3640,', N'4', N'泗川市', N'Sacheon', N'chuanshi', N'SAH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3641', N'297', N',1,89,297,3641,', N'4', N'统营市', N'Tongyeong', N'tongyingshi', N'TYG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3642', N'297', N',1,89,297,3642,', N'4', N'陜川郡', N'Hapcheon County', N'', N'HCE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3643', N'297', N',1,89,297,3643,', N'4', N'咸安郡', N'Haman County', N'xiananjun', N'HAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3644', N'297', N',1,89,297,3644,', N'4', N'咸阳郡', N'Hamyang County', N'xianyangjun', N'HYG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3645', N'297', N',1,89,297,3645,', N'4', N'宜宁郡', N'Uiryeong County', N'yiningjun', N'URG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3646', N'297', N',1,89,297,3646,', N'4', N'鎭海市', N'Jinhae', N'', N'CHF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3647', N'298', N',1,89,298,3647,', N'4', N'淳昌郡', N'Sunchang County', N'chunchangjun', N'SCG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3648', N'298', N',1,89,298,3648,', N'4', N'扶安郡', N'Buan County', N'fuanjun', N'PUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3649', N'298', N',1,89,298,3649,', N'4', N'高敞郡', N'Gochang County', N'gaochangjun', N'GCG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3650', N'298', N',1,89,298,3650,', N'4', N'金堤市', N'Gimje', N'jindishi', N'GJE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3651', N'298', N',1,89,298,3651,', N'4', N'井邑市', N'Jeongeup', N'jingyishi', N'JEO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3652', N'298', N',1,89,298,3652,', N'4', N'茂朱郡', N'Muju County', N'maozhujun', N'MJU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3653', N'298', N',1,89,298,3653,', N'4', N'南原市', N'Namwon', N'nanyuanshi', N'NWN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3654', N'298', N',1,89,298,3654,', N'4', N'全州市', N'Jeonju', N'quanzhoushi', N'JNJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3655', N'298', N',1,89,298,3655,', N'4', N'群山市', N'Gunsan', N'qunshanshi', N'KUV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3656', N'298', N',1,89,298,3656,', N'4', N'任实郡', N'Imsil County', N'renshijun', N'ISL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3657', N'298', N',1,89,298,3657,', N'4', N'完州郡', N'Wanju County', N'wanzhoujun', N'WAJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3658', N'298', N',1,89,298,3658,', N'4', N'益山市', N'Iksan', N'yishanshi', N'IKS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3659', N'298', N',1,89,298,3659,', N'4', N'长水郡', N'Jangsu County', N'changshuijun', N'JSU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3660', N'298', N',1,89,298,3660,', N'4', N'鎭安郡', N'Jinan County', N'', N'JAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3661', N'299', N',1,89,299,3661,', N'4', N'宝城郡', N'Boseong County', N'baochengjun', N'BSG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3662', N'299', N',1,89,299,3662,', N'4', N'高兴郡', N'Goheung County', N'gaoxingjun', N'GHG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3663', N'299', N',1,89,299,3663,', N'4', N'谷城郡', N'Gokseong County', N'guchengjun', N'GSE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3664', N'299', N',1,89,299,3664,', N'4', N'莞岛郡', N'Wando County', N'daojun', N'WND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3665', N'299', N',1,89,299,3665,', N'4', N'光阳市', N'Gwangyang', N'guangyangshi', N'KAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3666', N'299', N',1,89,299,3666,', N'4', N'海南郡', N'Haenam County', N'hainanjun', N'HAE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3667', N'299', N',1,89,299,3667,', N'4', N'和顺郡', N'Hwasun County', N'heshunjun', N'HSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3668', N'299', N',1,89,299,3668,', N'4', N'康津郡', N'Gangjin County', N'kangjinjun', N'GJN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3669', N'299', N',1,89,299,3669,', N'4', N'丽水市', N'Yeosu', N'lishuishi', N'YOS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3670', N'299', N',1,89,299,3670,', N'4', N'灵光郡', N'Yeonggwang County', N'lingguangjun', N'YGG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3671', N'299', N',1,89,299,3671,', N'4', N'灵岩郡', N'Yeongam County', N'lingyanjun', N'YAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3672', N'299', N',1,89,299,3672,', N'4', N'罗州市', N'Naju', N'luozhoushi', N'NJU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3673', N'299', N',1,89,299,3673,', N'4', N'木浦市', N'Mokpo', N'mupushi', N'MOK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3674', N'299', N',1,89,299,3674,', N'4', N'求礼郡', N'Gurye County', N'qiulijun', N'GRE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3675', N'299', N',1,89,299,3675,', N'4', N'顺天市', N'Suncheon', N'shuntianshi', N'SYS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3676', N'299', N',1,89,299,3676,', N'4', N'潭阳郡', N'Damyang County', N'tanyangjun', N'DYA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3677', N'299', N',1,89,299,3677,', N'4', N'务安郡', N'Muan County', N'wuanjun', N'MAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3678', N'299', N',1,89,299,3678,', N'4', N'咸平郡', N'Hampyeong County', N'xianpingjun', N'HPG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3679', N'299', N',1,89,299,3679,', N'4', N'新安郡', N'Sinan County', N'xinanjun', N'SAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3680', N'299', N',1,89,299,3680,', N'4', N'长城郡', N'Jangseong County', N'changchengjun', N'JSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3681', N'299', N',1,89,299,3681,', N'4', N'长兴郡', N'Jangheung County', N'changxingjun', N'JHG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3682', N'299', N',1,89,299,3682,', N'4', N'珍岛郡', N'Jindo County', N'zhendaojun', N'JDO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3683', N'303', N',1,89,303,3683,', N'4', N'报恩郡', N'Boeun County', N'baoenjun', N'BEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3684', N'303', N',1,89,303,3684,', N'4', N'曾坪郡', N'Jeungpyeong County', N'zengpingjun', N'JYG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3685', N'303', N',1,89,303,3685,', N'4', N'丹阳郡', N'Danyang County', N'danyangjun', N'DYG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3686', N'303', N',1,89,303,3686,', N'4', N'堤川市', N'Jecheon', N'dichuanshi', N'JCH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3687', N'303', N',1,89,303,3687,', N'4', N'槐山郡', N'Goesan County', N'huaishanjun', N'GSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3688', N'303', N',1,89,303,3688,', N'4', N'淸原郡', N'Cheongwon County', N'', N'CWO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3689', N'303', N',1,89,303,3689,', N'4', N'淸州市', N'Cheongju', N'', N'CJJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3690', N'303', N',1,89,303,3690,', N'4', N'沃川郡', N'Okcheon County', N'wochuanjun', N'OCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3691', N'303', N',1,89,303,3691,', N'4', N'阴城郡', N'Eumseong County', N'yinchengjun', N'ESG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3692', N'303', N',1,89,303,3692,', N'4', N'永同郡', N'Yeongdong County', N'yongtongjun', N'YDG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3693', N'303', N',1,89,303,3693,', N'4', N'鎭川郡', N'Jincheon County', N'', N'JCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3694', N'303', N',1,89,303,3694,', N'4', N'忠州市', N'Chungju', N'zhongzhoushi', N'CHU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3695', N'304', N',1,89,304,3695,', N'4', N'保宁市', N'Boryeong', N'baoningshi', N'BOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3696', N'304', N',1,89,304,3696,', N'4', N'扶余郡', N'Buyeo County', N'fuyujun', N'BYO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3697', N'304', N',1,89,304,3697,', N'4', N'公州市', N'Gongju', N'gongzhoushi', N'GOJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3698', N'304', N',1,89,304,3698,', N'4', N'洪城郡', N'Hongseong County', N'hongchengjun', N'HSE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3699', N'304', N',1,89,304,3699,', N'4', N'鸡龙市', N'Gyeryong', N'jilongshi', N'GYE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3700', N'304', N',1,89,304,3700,', N'4', N'锦山郡', N'Geumsan County', N'jinshanjun', N'GSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3701', N'304', N',1,89,304,3701,', N'4', N'礼山郡', N'Yesan County', N'lishanjun', N'YOS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3702', N'304', N',1,89,304,3702,', N'4', N'论山市', N'Nonsan', N'lunshanshi', N'NSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3703', N'304', N',1,89,304,3703,', N'4', N'青阳郡', N'Cheongyang County', N'qingyangjun', N'CYG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3704', N'304', N',1,89,304,3704,', N'4', N'瑞山市', N'Seosan', N'ruishanshi', N'SSA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3705', N'304', N',1,89,304,3705,', N'4', N'舒川郡', N'Seocheon County', N'shuchuanjun', N'SCE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3706', N'304', N',1,89,304,3706,', N'4', N'泰安郡', N'Taean County', N'taianjun', N'TAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3707', N'304', N',1,89,304,3707,', N'4', N'唐津郡', N'Dangjin County', N'tangjinjun', N'TJI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3708', N'304', N',1,89,304,3708,', N'4', N'天安市', N'Cheonan', N'tiananshi', N'CHO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3709', N'304', N',1,89,304,3709,', N'4', N'牙山市', N'Asan', N'yashanshi', N'ASA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3710', N'304', N',1,89,304,3710,', N'4', N'燕岐郡', N'Yeongi County', N'yanjun', N'YGI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3711', N'305', N',1,131,305,3711,', N'4', N'北海', N'Butterworth', N'beihai', N'BWH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3712', N'305', N',1,131,305,3712,', N'4', N'槟城', N'George Town', N'cheng', N'PEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3713', N'305', N',1,131,305,3713,', N'4', N'大山脚', N'Bukit Mertajam', N'dashanjiao', N'BMJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3714', N'305', N',1,131,305,3714,', N'4', N'高渊', N'Nibong Tebal', N'gaoyuan', N'NTE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3715', N'306', N',1,131,306,3715,', N'4', N'加央', N'Kangar', N'jiayang', N'KGR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3716', N'307', N',1,131,307,3716,', N'4', N'甘马挽', N'Kemaman', N'ganmawan', N'KEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3717', N'307', N',1,131,307,3717,', N'4', N'瓜拉丁加奴', N'Kuala Terengganu', N'gualadingjianu', N'TGG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3718', N'307', N',1,131,307,3718,', N'4', N'龙运', N'Dungun', N'longyun', N'DGN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3719', N'307', N',1,131,307,3719,', N'4', N'马江', N'Marang', N'majiang', N'MAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3720', N'307', N',1,131,307,3720,', N'4', N'实兆', N'Setiu', N'shizhao', N'SET')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3721', N'307', N',1,131,307,3721,', N'4', N'乌鲁', N'Hulu', N'wulu', N'HUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3722', N'307', N',1,131,307,3722,', N'4', N'勿述', N'Besut', N'wushu', N'BES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3723', N'308', N',1,131,308,3723,', N'4', N'巴东得腊', N'Padang Terap', N'badongdela', N'PGT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3724', N'308', N',1,131,308,3724,', N'4', N'笨筒', N'Pendang', N'bentong', N'PEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3725', N'308', N',1,131,308,3725,', N'4', N'浮罗交怡', N'Langkawi', N'fuluojiao', N'LGK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3726', N'308', N',1,131,308,3726,', N'4', N'哥打士打', N'Kota Setar', N'gedashida', N'KOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3727', N'308', N',1,131,308,3727,', N'4', N'古邦巴素', N'Kubang Pasu', N'gubangbasu', N'KPA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3728', N'308', N',1,131,308,3728,', N'4', N'瓜拉姆达', N'Kuala Muda', N'gualamuda', N'KMU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3729', N'308', N',1,131,308,3729,', N'4', N'华玲', N'Baling', N'hualing', N'BLZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3730', N'308', N',1,131,308,3730,', N'4', N'居林', N'Kulim', N'julin', N'KLM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3731', N'308', N',1,131,308,3731,', N'4', N'万拉峇鲁', N'Bandar Baharu', N'wanla', N'BMA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3732', N'309', N',1,131,309,3732,', N'4', N'巴西富地', N'Pasir Putih', N'baxifudi', N'PPU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3733', N'309', N',1,131,309,3733,', N'4', N'巴西马', N'Pasir Mas', N'baxima', N'PMA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3734', N'309', N',1,131,309,3734,', N'4', N'丹那美拉', N'Tanah Merah', N'dannameila', N'TMR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3735', N'309', N',1,131,309,3735,', N'4', N'道北', N'Tumpat', N'daobei', N'TUM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3736', N'309', N',1,131,309,3736,', N'4', N'登卓', N'Bachok', N'dengzhuo', N'BAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3737', N'309', N',1,131,309,3737,', N'4', N'哥打巴鲁', N'Kota Bharu', N'gedabalu', N'KBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3738', N'309', N',1,131,309,3738,', N'4', N'瓜拉吉赖', N'Kuala Krai', N'gualajilai', N'KUG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3739', N'309', N',1,131,309,3739,', N'4', N'话望生', N'Gua Musang', N'huawangsheng', N'GMU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3740', N'309', N',1,131,309,3740,', N'4', N'马樟', N'Machang', N'mazhang', N'MAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3741', N'309', N',1,131,309,3741,', N'4', N'日里', N'Jeli', N'rili', N'JEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3742', N'310', N',1,131,310,3742,', N'4', N'吉隆坡', N'Kuala Lumpur', N'jilongpo', N'KUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3743', N'311', N',1,131,311,3743,', N'4', N'马六甲市', N'Melaka', N'maliujiashi', N'MEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3744', N'311', N',1,131,311,3744,', N'4', N'亚罗牙也', N'Alor Gajah', N'yaluoyaye', N'AOG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3745', N'311', N',1,131,311,3745,', N'4', N'野新', N'Jasin', N'yexin', N'JAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3746', N'312', N',1,131,312,3746,', N'4', N'纳闽', N'Labuan', N'namin', N'LBU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3747', N'312', N',1,131,312,3747,', N'4', N'维多利亚', N'Victoria', N'weiduoliya', N'VIC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3748', N'313', N',1,131,313,3748,', N'4', N'百乐', N'Bera', N'baile', N'BER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3749', N'313', N',1,131,313,3749,', N'4', N'北根', N'Pekan', N'beigen', N'PEK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3750', N'313', N',1,131,313,3750,', N'4', N'淡马鲁', N'Temerloh', N'danmalu', N'TEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3751', N'313', N',1,131,313,3751,', N'4', N'而连突', N'Jerantut', N'erliantu', N'JER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3752', N'313', N',1,131,313,3752,', N'4', N'关丹', N'Kuantan', N'guandan', N'KUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3753', N'313', N',1,131,313,3753,', N'4', N'金马仑高原', N'Cameron Highlands', N'jinmalungaoyuan', N'CAH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3754', N'313', N',1,131,313,3754,', N'4', N'劳勿', N'Raub', N'laowu', N'RAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3755', N'313', N',1,131,313,3755,', N'4', N'立卑', N'Kuala Lipis', N'libei', N'KUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3756', N'313', N',1,131,313,3756,', N'4', N'马兰', N'Maran', N'malan', N'MAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3757', N'313', N',1,131,313,3757,', N'4', N'文冬', N'Bentong', N'wendong', N'BEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3758', N'313', N',1,131,313,3758,', N'4', N'云冰', N'Rompin', N'yunbing', N'TOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3759', N'314', N',1,131,314,3759,', N'4', N'安顺', N'Teluk Intan', N'anshun', N'TAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3760', N'314', N',1,131,314,3760,', N'4', N'丹绒马', N'Tanjung Malim', N'danrongma', N'TAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3761', N'314', N',1,131,314,3761,', N'4', N'和丰', N'Sungai Siput', N'hefeng', N'SSP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3762', N'314', N',1,131,314,3762,', N'4', N'紅土坎', N'Lumut', N'', N'LUM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3763', N'314', N',1,131,314,3763,', N'4', N'华都牙也', N'Batu Gajah', N'huaduyaye', N'BGA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3764', N'314', N',1,131,314,3764,', N'4', N'江沙', N'Kuala Kangsar', N'jiangsha', N'KAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3765', N'314', N',1,131,314,3765,', N'4', N'太平', N'Taiping', N'taiping', N'TPG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3766', N'314', N',1,131,314,3766,', N'4', N'怡保', N'Ipoh', N'bao', N'IPH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3767', N'315', N',1,131,315,3767,', N'4', N'笨珍', N'Pontian', N'benzhen', N'POW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3768', N'315', N',1,131,315,3768,', N'4', N'丰盛港', N'Mersing', N'fengshenggang', N'MEP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3769', N'315', N',1,131,315,3769,', N'4', N'哥打丁宜', N'Kota Tinggi', N'gedadingyi', N'KTI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3770', N'315', N',1,131,315,3770,', N'4', N'居銮', N'Kluang', N'ju', N'KLA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3771', N'315', N',1,131,315,3771,', N'4', N'峇株巴辖', N'Batu Pahat', N'', N'BAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3772', N'315', N',1,131,315,3772,', N'4', N'麻坡', N'Muar', N'mapo', N'MUA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3773', N'315', N',1,131,315,3773,', N'4', N'昔加末', N'Segamat', N'xijiamo', N'SGM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3774', N'315', N',1,131,315,3774,', N'4', N'新山', N'Johor Bahru', N'xinshan', N'JHB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3775', N'316', N',1,131,316,3775,', N'4', N'波德申', N'Port Dickson', N'bodeshen', N'PDI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3776', N'316', N',1,131,316,3776,', N'4', N'淡边', N'Tampin', N'danbian', N'TAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3777', N'316', N',1,131,316,3777,', N'4', N'芙蓉', N'Seremban', N'rong', N'SRB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3778', N'316', N',1,131,316,3778,', N'4', N'瓜拉庇劳', N'Kuala Pilah', N'gualabilao', N'KPI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3779', N'316', N',1,131,316,3779,', N'4', N'林茂', N'Rembau', N'linmao', N'REM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3780', N'316', N',1,131,316,3780,', N'4', N'仁保', N'Jempol', N'renbao', N'JEP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3781', N'316', N',1,131,316,3781,', N'4', N'日叻务', N'Jelebu', N'riwu', N'JEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3782', N'317', N',1,131,317,3782,', N'4', N'吧巴', N'Papar', N'baba', N'PAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3783', N'317', N',1,131,317,3783,', N'4', N'保佛', N'Beaufort', N'baofo', N'BEF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3784', N'317', N',1,131,317,3784,', N'4', N'比鲁兰', N'Beluran', N'bilulan', N'BEL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3785', N'317', N',1,131,317,3785,', N'4', N'必达士', N'Pitas', N'bidashi', N'PIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3786', N'317', N',1,131,317,3786,', N'4', N'兵南邦', N'Penampang', N'bingnanbang', N'PMP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3787', N'317', N',1,131,317,3787,', N'4', N'担布南', N'Tambunan', N'danbunan', N'TAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3788', N'317', N',1,131,317,3788,', N'4', N'丹南', N'Tenom', N'dannan', N'TEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3789', N'317', N',1,131,317,3789,', N'4', N'斗湖', N'Tawau', N'douhu', N'TAW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3790', N'317', N',1,131,317,3790,', N'4', N'斗亚兰', N'Tuaran', N'douyalan', N'TUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3791', N'317', N',1,131,317,3791,', N'4', N'哥打基纳巴鲁', N'Kota Kinabalu', N'gedajinabalu', N'BKI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3792', N'317', N',1,131,317,3792,', N'4', N'哥打马鲁都', N'Kota Marudu', N'gedamaludu', N'KMU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3793', N'317', N',1,131,317,3793,', N'4', N'根地咬', N'Keningau', N'gendiyao', N'KEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3794', N'317', N',1,131,317,3794,', N'4', N'古达', N'Kudat', N'guda', N'KUD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3795', N'317', N',1,131,317,3795,', N'4', N'古打毛律', N'Kota Belud', N'gudamaolv', N'KBD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3796', N'317', N',1,131,317,3796,', N'4', N'古纳', N'Kunak', N'guna', N'KUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3797', N'317', N',1,131,317,3797,', N'4', N'瓜拉班尤', N'Kuala Penyu', N'gualabanyou', N'KPU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3798', N'317', N',1,131,317,3798,', N'4', N'京那巴登岸', N'Kinabatangan', N'jingnabadengan', N'KBT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3799', N'317', N',1,131,317,3799,', N'4', N'兰脑', N'Ranau', N'lannao', N'RNU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3800', N'317', N',1,131,317,3800,', N'4', N'拿笃', N'Lahad Datu', N'na', N'LDU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3801', N'317', N',1,131,317,3801,', N'4', N'纳巴湾', N'Nabawan', N'nabawan', N'NAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3802', N'317', N',1,131,317,3802,', N'4', N'山打根', N'Sandakan', N'shandagen', N'SDK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3803', N'317', N',1,131,317,3803,', N'4', N'西比陶', N'Sipitang', N'xibitao', N'SPT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3804', N'317', N',1,131,317,3804,', N'4', N'仙本那', N'Semporna', N'xianbenna', N'SMM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3805', N'318', N',1,131,318,3805,', N'4', N'古晋', N'Kuching', N'gujin', N'KCH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3806', N'318', N',1,131,318,3806,', N'4', N'加帛', N'Kapit', N'jiabo', N'KPI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3807', N'318', N',1,131,318,3807,', N'4', N'林梦', N'Limbang', N'linmeng', N'LMN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3808', N'318', N',1,131,318,3808,', N'4', N'美里', N'Miri', N'meili', N'MYY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3809', N'318', N',1,131,318,3809,', N'4', N'民都鲁', N'Bintulu', N'mindulu', N'BTU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3810', N'318', N',1,131,318,3810,', N'4', N'木胶', N'Mukah', N'mujiao', N'MKM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3811', N'318', N',1,131,318,3811,', N'4', N'木中', N'Betong', N'muzhong', N'BTG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3812', N'318', N',1,131,318,3812,', N'4', N'三马拉汉', N'Samarahan', N'sanmalahan', N'SMH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3813', N'318', N',1,131,318,3813,', N'4', N'斯里阿曼', N'Sri Aman', N'siliaman', N'SAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3814', N'318', N',1,131,318,3814,', N'4', N'泗里街', N'Sarikei', N'lijie', N'SAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3815', N'318', N',1,131,318,3815,', N'4', N'泗务', N'Sibu', N'wu', N'SBW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3816', N'319', N',1,131,319,3816,', N'4', N'八打灵', N'Petaling', N'badaling', N'PJA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3817', N'319', N',1,131,319,3817,', N'4', N'鹅麦', N'Gombak', N'emai', N'GOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3818', N'319', N',1,131,319,3818,', N'4', N'瓜拉冷岳', N'Kuala Langat', N'gualalengyue', N'KLG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3819', N'319', N',1,131,319,3819,', N'4', N'瓜拉雪兰莪', N'Kuala Selangor', N'gualaxuelan', N'KSL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3820', N'319', N',1,131,319,3820,', N'4', N'沙白安南', N'Sabak Bernam', N'shabaiannan', N'SBM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3821', N'319', N',1,131,319,3821,', N'4', N'乌鲁冷岳', N'Hulu Langat', N'wululengyue', N'HUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3822', N'319', N',1,131,319,3822,', N'4', N'乌鲁雪兰莪', N'Hulu Selangor', N'wuluxuelan', N'HUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3823', N'319', N',1,131,319,3823,', N'4', N'雪邦', N'Sepang', N'xuebang', N'SEP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3824', N'320', N',4,140,320,3824,', N'4', N'费耶特维尔', N'Fayetteville', N'feiyeteweier', N'FYV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3825', N'320', N',4,140,320,3825,', N'4', N'史密斯堡', N'Fort Smith', N'shimisibao', N'FSM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3826', N'320', N',4,140,320,3826,', N'4', N'小石城', N'Little Rock', N'xiaoshicheng', N'LIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3827', N'321', N',4,140,321,3827,', N'4', N'伯明罕', N'Birmingham', N'bominghan', N'BHM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3828', N'321', N',4,140,321,3828,', N'4', N'蒙哥马利', N'Montgomery', N'menggemali', N'MGM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3829', N'321', N',4,140,321,3829,', N'4', N'莫比尔', N'Mobile', N'mobier', N'MOB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3830', N'322', N',4,140,322,3830,', N'4', N'安克雷奇', N'Anchorage', N'ankeleiqi', N'ANC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3831', N'322', N',4,140,322,3831,', N'4', N'费尔班克斯', N'Fairbanks', N'feierbankesi', N'FAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3832', N'322', N',4,140,322,3832,', N'4', N'朱诺', N'Juneau', N'zhunuo', N'JNU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3833', N'323', N',4,140,323,3833,', N'4', N'爱达荷福尔斯', N'Idaho Falls', N'aidahefuersi', N'IDA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3834', N'323', N',4,140,323,3834,', N'4', N'波卡特洛', N'Pocatello', N'bokateluo', N'PIH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3835', N'323', N',4,140,323,3835,', N'4', N'博伊西', N'Boise', N'boyixi', N'BOI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3836', N'323', N',4,140,323,3836,', N'4', N'布莱克富特', N'Blackfoot', N'bulaikefute', N'BLK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3837', N'323', N',4,140,323,3837,', N'4', N'科达伦', N'Coeur d''Alene', N'kedalun', N'COE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3838', N'323', N',4,140,323,3838,', N'4', N'刘易斯顿', N'Lewiston', N'liuyisidun', N'LWS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3839', N'323', N',4,140,323,3839,', N'4', N'莫斯科', N'Moscow', N'mosike', N'MJL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3840', N'323', N',4,140,323,3840,', N'4', N'墨菲', N'Murphy', N'mofei', N'ZMU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3841', N'323', N',4,140,323,3841,', N'4', N'楠帕', N'Nampa', N'pa', N'NPA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3842', N'323', N',4,140,323,3842,', N'4', N'岂彻姆', N'Ketchum', N'qichemu', N'QKM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3843', N'323', N',4,140,323,3843,', N'4', N'森瓦利', N'Sun Valley', N'senwali', N'SVY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3844', N'323', N',4,140,323,3844,', N'4', N'亚美利加瀑布城', N'American Falls', N'yameilijiapubucheng', N'YAF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3845', N'324', N',4,140,324,3845,', N'4', N'达文波特', N'Davenport', N'dawenbote', N'DVN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3846', N'324', N',4,140,324,3846,', N'4', N'得梅因', N'Des Moines', N'demeiyin', N'DSM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3847', N'324', N',4,140,324,3847,', N'4', N'锡达拉皮兹', N'Cedar Rapids', N'xidalapizi', N'CID')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3848', N'325', N',4,140,325,3848,', N'4', N'俾斯麦', N'Bismarck', N'simai', N'BIS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3849', N'325', N',4,140,325,3849,', N'4', N'大福克斯', N'Grand Forks', N'dafukesi', N'GFK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3850', N'325', N',4,140,325,3850,', N'4', N'法戈', N'Fargo', N'fage', N'FAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3851', N'325', N',4,140,325,3851,', N'4', N'迈诺特', N'Minot', N'mainuote', N'MOT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3852', N'326', N',4,140,326,3852,', N'4', N'艾许维尔', N'Asheville', N'aixuweier', N'AEV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3853', N'326', N',4,140,326,3853,', N'4', N'杜罕', N'Durham', N'duhan', N'DHH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3854', N'326', N',4,140,326,3854,', N'4', N'格林斯伯勒', N'Greensboro', N'gelinsibole', N'GBO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3855', N'326', N',4,140,326,3855,', N'4', N'教堂山', N'Chapel Hill', N'jiaotangshan', N'CHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3856', N'326', N',4,140,326,3856,', N'4', N'罗利', N'Raleigh', N'luoli', N'RAG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3857', N'326', N',4,140,326,3857,', N'4', N'洛利杜罕都会区', N'Raleigh-Durham', N'luoliduhanduhuiqu', N'RDU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3858', N'326', N',4,140,326,3858,', N'4', N'夏洛特', N'Charlotte', N'xialuote', N'CRQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3859', N'327', N',4,140,327,3859,', N'4', N'阿伦敦', N'Allentown', N'alundun', N'AEW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3860', N'327', N',4,140,327,3860,', N'4', N'费城', N'Philadephia', N'feicheng', N'PHL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3861', N'327', N',4,140,327,3861,', N'4', N'匹兹堡', N'Pittsburgh', N'pizibao', N'PIT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3862', N'328', N',4,140,328,3862,', N'4', N'埃尔帕索', N'El Paso', N'aierpasuo', N'ELP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3863', N'328', N',4,140,328,3863,', N'4', N'奥斯汀', N'Austin', N'aositing', N'AUS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3864', N'328', N',4,140,328,3864,', N'4', N'达拉斯', N'Dallas', N'dalasi', N'DAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3865', N'328', N',4,140,328,3865,', N'4', N'哥帕斯基斯蒂', N'Corpus Christi', N'gepasijisidi', N'CRP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3866', N'328', N',4,140,328,3866,', N'4', N'交维斯顿', N'Galveston', N'jiaoweisidun', N'GLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3867', N'328', N',4,140,328,3867,', N'4', N'拉雷多', N'Laredo', N'laleiduo', N'LRD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3868', N'328', N',4,140,328,3868,', N'4', N'麦亚伦', N'McAllen', N'maiyalun', N'TXC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3869', N'328', N',4,140,328,3869,', N'4', N'圣安东尼奥', N'San Antonio', N'shengandongniao', N'SAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3870', N'328', N',4,140,328,3870,', N'4', N'休斯敦', N'Houston', N'xiusidun', N'HOU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3871', N'329', N',4,140,329,3871,', N'4', N'代顿', N'Dayton', N'daidun', N'DYT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3872', N'329', N',4,140,329,3872,', N'4', N'哥伦布', N'Columbus', N'gelunbu', N'CZX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3873', N'329', N',4,140,329,3873,', N'4', N'克利夫兰', N'Cleveland', N'kelifulan', N'CLE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3874', N'329', N',4,140,329,3874,', N'4', N'托莱多', N'Toledo', N'tuolaiduo', N'TOL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3875', N'329', N',4,140,329,3875,', N'4', N'辛辛那提', N'Cincinnati', N'xinxinnati', N'CVG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3876', N'330', N',4,140,330,3876,', N'4', N'俄克拉荷马城', N'Oklahoma City', N'ekelahemacheng', N'OKC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3877', N'330', N',4,140,330,3877,', N'4', N'诺曼', N'Norman', N'nuoman', N'OUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3878', N'330', N',4,140,330,3878,', N'4', N'塔尔萨', N'Tulsa', N'taersa', N'TUL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3879', N'331', N',4,140,331,3879,', N'4', N'本德', N'Bend', N'bende', N'BZO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3880', N'331', N',4,140,331,3880,', N'4', N'波特兰', N'Portland', N'botelan', N'PDX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3881', N'331', N',4,140,331,3881,', N'4', N'达尔斯', N'The Dalles', N'daersi', N'DLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3882', N'331', N',4,140,331,3882,', N'4', N'达拉斯', N'Dallas', N'dalasi', N'DAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3883', N'331', N',4,140,331,3883,', N'4', N'蒂拉穆克', N'Tillamook', N'dilamuke', N'TLM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3884', N'331', N',4,140,331,3884,', N'4', N'格兰茨帕斯', N'Grant''s Pass', N'gelancipasi', N'XFX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3885', N'331', N',4,140,331,3885,', N'4', N'胡德里弗', N'Hood River', N'hudelifu', N'HDX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3886', N'331', N',4,140,331,3886,', N'4', N'火山口湖', N'Crater Lake', N'huoshankouhu', N'CTR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3887', N'331', N',4,140,331,3887,', N'4', N'科瓦利斯', N'Corvallis', N'kewalisi', N'YCV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3888', N'331', N',4,140,331,3888,', N'4', N'库斯贝', N'Coos Bay', N'kusibei', N'COB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3889', N'331', N',4,140,331,3889,', N'4', N'梅德福', N'Medford', N'meidefu', N'MFR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3890', N'331', N',4,140,331,3890,', N'4', N'塞勒姆', N'Salem', N'sailemu', N'SLE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3891', N'331', N',4,140,331,3891,', N'4', N'圣海伦斯', N'St Helens', N'shenghailunsi', N'STH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3892', N'331', N',4,140,331,3892,', N'4', N'斯普林菲尔德', N'Springfield', N'sipulinfeierde', N'SPY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3893', N'331', N',4,140,331,3893,', N'4', N'尤金', N'Eugene', N'youjin', N'EUG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3894', N'332', N',4,140,332,3894,', N'4', N'奥兰多', N'Orlando', N'aolanduo', N'ORL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3895', N'332', N',4,140,332,3895,', N'4', N'基韦斯特', N'Key West', N'jiweisite', N'EYW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3896', N'332', N',4,140,332,3896,', N'4', N'杰克逊维尔', N'Jacksonville', N'jiekexunweier', N'JAX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3897', N'332', N',4,140,332,3897,', N'4', N'卡纳维尔角', N'Cape Canaveral', N'kanaweierjiao', N'CPV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3898', N'332', N',4,140,332,3898,', N'4', N'罗德岱堡', N'Fort Lauderdale', N'luodebao', N'FLL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3899', N'332', N',4,140,332,3899,', N'4', N'迈阿密', N'Miami', N'maiami', N'MIA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3900', N'332', N',4,140,332,3900,', N'4', N'圣彼德斯堡市', N'St. Petersburg', N'shengbidesibaoshi', N'PIE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3901', N'332', N',4,140,332,3901,', N'4', N'塔拉哈西', N'Tallahassee', N'talahaxi', N'TLH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3902', N'332', N',4,140,332,3902,', N'4', N'坦帕', N'Tampa', N'tanpa', N'TPA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3903', N'333', N',4,140,333,3903,', N'4', N'伯灵顿', N'Burlington', N'bolingdun', N'BTV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3904', N'333', N',4,140,333,3904,', N'4', N'拉特兰', N'Rutland', N'latelan', N'RUT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3905', N'333', N',4,140,333,3905,', N'4', N'南伯灵顿', N'South Burlington', N'nanbolingdun', N'ZBR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3906', N'334', N',4,140,334,3906,', N'4', N'华盛顿哥伦比亚特区', N'Washington D.C.', N'huashengdungelunbiyatequ', N'WAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3907', N'335', N',4,140,335,3907,', N'4', N'斯波坎', N'Spokane', N'sibokan', N'GEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3908', N'335', N',4,140,335,3908,', N'4', N'塔科马', N'Tacoma', N'takema', N'TTW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3909', N'335', N',4,140,335,3909,', N'4', N'西雅图', N'Seattle', N'xiyatu', N'SEA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3910', N'336', N',4,140,336,3910,', N'4', N'埃文斯顿', N'Evanston', N'aiwensidun', N'EVD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3911', N'336', N',4,140,336,3911,', N'4', N'卡斯珀', N'Casper', N'kasi', N'CPR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3912', N'336', N',4,140,336,3912,', N'4', N'拉勒米', N'Laramie', N'lalemi', N'LAR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3913', N'336', N',4,140,336,3913,', N'4', N'罗克斯普林斯', N'Rock Springs', N'luokesipulinsi', N'RKS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3914', N'336', N',4,140,336,3914,', N'4', N'夏延', N'Cheyenne', N'xiayan', N'CYS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3915', N'336', N',4,140,336,3915,', N'4', N'谢里登', N'Sheridan', N'xielideng', N'SHR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3916', N'337', N',4,140,337,3916,', N'4', N'旧金山', N'San Francisco', N'jiujinshan', N'SFO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3917', N'337', N',4,140,337,3917,', N'4', N'洛杉矶', N'Los Angeles', N'luoshan', N'LAX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3918', N'337', N',4,140,337,3918,', N'4', N'圣迭戈', N'San Diego', N'shengdiege', N'SAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3919', N'337', N',4,140,337,3919,', N'4', N'圣何塞', N'San Jose', N'shenghesai', N'SJC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3920', N'338', N',4,140,338,3920,', N'4', N'阿比林', N'Abilene', N'abilin', N'ABZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3921', N'338', N',4,140,338,3921,', N'4', N'奥弗兰公园', N'Overland Park', N'aofulangongyuan', N'OVL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3922', N'338', N',4,140,338,3922,', N'4', N'哈钦森', N'Hutchinson', N'haqinsen', N'HCH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3923', N'338', N',4,140,338,3923,', N'4', N'堪萨斯城', N'Kansas City', N'kansasicheng', N'KCK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3924', N'338', N',4,140,338,3924,', N'4', N'莱文沃思', N'Leavenworth', N'laiwenwosi', N'XIA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3925', N'338', N',4,140,338,3925,', N'4', N'劳伦斯', N'Lawrence', N'laolunsi', N'LWC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3926', N'338', N',4,140,338,3926,', N'4', N'曼哈顿', N'Manhattan', N'manhadun', N'MHK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3927', N'338', N',4,140,338,3927,', N'4', N'托皮卡', N'Topeka', N'tuopika', N'TOP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3928', N'338', N',4,140,338,3928,', N'4', N'威奇托', N'Wichita', N'weiqituo', N'ICT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3929', N'339', N',4,140,339,3929,', N'4', N'布里奇波特', N'Bridgeport', N'buliqibote', N'BDR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3930', N'339', N',4,140,339,3930,', N'4', N'达里恩', N'Darien', N'dalien', N'DAQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3931', N'339', N',4,140,339,3931,', N'4', N'格林尼治', N'Greenwich', N'gelinnizhi', N'GRH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3932', N'339', N',4,140,339,3932,', N'4', N'哈特福德', N'Hartford', N'hatefude', N'HFD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3933', N'339', N',4,140,339,3933,', N'4', N'米德尔顿', N'Middletown', N'mideerdun', N'XIN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3934', N'339', N',4,140,339,3934,', N'4', N'纽黑文', N'New Haven', N'niuheiwen', N'HVN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3935', N'339', N',4,140,339,3935,', N'4', N'韦斯特波特', N'Westport', N'weisitebote', N'WPT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3936', N'339', N',4,140,339,3936,', N'4', N'沃特伯里', N'Waterbury', N'woteboli', N'WAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3937', N'339', N',4,140,339,3937,', N'4', N'新不列颠', N'New Britain', N'xinbuliedian', N'NWT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3938', N'340', N',4,140,340,3938,', N'4', N'阿斯彭', N'Aspen', N'asipeng', N'ASE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3939', N'340', N',4,140,340,3939,', N'4', N'奥罗拉', N'Aurora', N'aoluola', N'AUX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3940', N'340', N',4,140,340,3940,', N'4', N'博尔德', N'Boulder', N'boerde', N'WBU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3941', N'340', N',4,140,340,3941,', N'4', N'大章克申', N'Grand Junction', N'dazhangkeshen', N'GJT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3942', N'340', N',4,140,340,3942,', N'4', N'丹佛', N'Denver', N'danfo', N'DEN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3943', N'340', N',4,140,340,3943,', N'4', N'柯林斯堡', N'Fort Collins', N'kelinsibao', N'FNL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3944', N'340', N',4,140,340,3944,', N'4', N'科罗拉多斯普林斯', N'Colorado Springs', N'keluoladuosipulinsi', N'COS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3945', N'340', N',4,140,340,3945,', N'4', N'韦尔', N'Vail', N'weier', N'VAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3946', N'341', N',4,140,341,3946,', N'4', N'列克星敦', N'Lexington', N'liekexingdun', N'LEX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3947', N'341', N',4,140,341,3947,', N'4', N'路易斯维尔', N'Louisville', N'luyisiweier', N'LUI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3948', N'341', N',4,140,341,3948,', N'4', N'欧文斯伯勒', N'Owensboro', N'ouwensibole', N'OWB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3949', N'342', N',4,140,342,3949,', N'4', N'巴吞鲁日', N'Baton Rouge', N'batunluri', N'BTR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3950', N'342', N',4,140,342,3950,', N'4', N'什里夫波特', N'Shreveport', N'shilifubote', N'SHV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3951', N'342', N',4,140,342,3951,', N'4', N'新奥尔良', N'New Orleans', N'xinaoerliang', N'MSY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3952', N'343', N',4,140,343,3952,', N'4', N'波塔基特', N'Pawtucket', N'botajite', N'PAW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3953', N'343', N',4,140,343,3953,', N'4', N'克兰斯顿', N'Cranston', N'kelansidun', N'CQH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3954', N'343', N',4,140,343,3954,', N'4', N'纽波特', N'Newport', N'niubote', N'NPO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3955', N'343', N',4,140,343,3955,', N'4', N'普罗维登斯', N'Providence', N'puluoweidengsi', N'PVD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3956', N'343', N',4,140,343,3956,', N'4', N'韦斯特利', N'Westerly', N'weisiteli', N'WST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3957', N'343', N',4,140,343,3957,', N'4', N'文索基特', N'Woonsocket', N'wensuojite', N'SFN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3958', N'343', N',4,140,343,3958,', N'4', N'沃威克', N'Warwick', N'woweike', N'UZO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3959', N'344', N',4,140,344,3959,', N'4', N'巴尔的摩', N'Balitmore', N'baerdemo', N'BAL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3960', N'344', N',4,140,344,3960,', N'4', N'盖瑟斯堡', N'Gaithersburg', N'gaisesibao', N'GAI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3961', N'344', N',4,140,344,3961,', N'4', N'罗克维尔', N'Rockville', N'luokeweier', N'RKV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3962', N'345', N',4,140,345,3962,', N'4', N'波士顿', N'Boston', N'boshidun', N'BZD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3963', N'345', N',4,140,345,3963,', N'4', N'斯普林菲尔德', N'Springfield', N'sipulinfeierde', N'SFY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3964', N'345', N',4,140,345,3964,', N'4', N'伍斯特', N'Worcester', N'wusite', N'ORH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3965', N'346', N',4,140,346,3965,', N'4', N'比灵斯', N'Billings', N'bilingsi', N'BGS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3966', N'346', N',4,140,346,3966,', N'4', N'大瀑布村', N'Great Falls', N'dapubucun', N'GTF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3967', N'346', N',4,140,346,3967,', N'4', N'米苏拉', N'Missoula', N'misula', N'MSO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3968', N'347', N',4,140,347,3968,', N'4', N'哥伦比亚', N'Columbia', N'gelunbiya', N'COV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3969', N'347', N',4,140,347,3969,', N'4', N'杰佛逊市', N'Jefferson City', N'jiefoxunshi', N'JEF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3970', N'347', N',4,140,347,3970,', N'4', N'堪萨斯城', N'Kansas City', N'kansasicheng', N'MKC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3971', N'347', N',4,140,347,3971,', N'4', N'圣路易斯', N'Sanit Louis', N'shengluyisi', N'STL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3972', N'347', N',4,140,347,3972,', N'4', N'斯普林菲尔德', N'Springfield', N'sipulinfeierde', N'SGF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3973', N'348', N',4,140,348,3973,', N'4', N'比洛克西', N'Biloxi', N'biluokexi', N'BIX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3974', N'348', N',4,140,348,3974,', N'4', N'格尔夫波特', N'Gulfport', N'geerfubote', N'GPT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3975', N'348', N',4,140,348,3975,', N'4', N'格林维尔', N'Greenville', N'gelinweier', N'GLH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3976', N'348', N',4,140,348,3976,', N'4', N'哈蒂斯堡', N'Hattiesburg', N'hadisibao', N'HBG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3977', N'348', N',4,140,348,3977,', N'4', N'杰克逊', N'Jackson', N'jiekexun', N'JAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3978', N'348', N',4,140,348,3978,', N'4', N'默里迪恩', N'Meridian', N'molidien', N'MEI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3979', N'348', N',4,140,348,3979,', N'4', N'维克斯堡', N'Vicksburg', N'weikesibao', N'VKS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3980', N'349', N',4,140,349,3980,', N'4', N'安娜堡', N'Ann Arbor', N'annabao', N'ARB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3981', N'349', N',4,140,349,3981,', N'4', N'巴特尔克里克', N'Battle Creek', N'bateerkelike', N'BTL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3982', N'349', N',4,140,349,3982,', N'4', N'贝城', N'Bay City', N'beicheng', N'BCY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3983', N'349', N',4,140,349,3983,', N'4', N'大急流城', N'Grand Rapids', N'dajiliucheng', N'GRR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3984', N'349', N',4,140,349,3984,', N'4', N'迪尔伯恩', N'Dearborn', N'dierboen', N'DEO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3985', N'349', N',4,140,349,3985,', N'4', N'底特律', N'Detroit', N'ditelv', N'DET')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3986', N'349', N',4,140,349,3986,', N'4', N'弗林特', N'Flint', N'fulinte', N'FNT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3987', N'349', N',4,140,349,3987,', N'4', N'怀恩多特', N'Wyandotte', N'huaienduote', N'WYD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3988', N'349', N',4,140,349,3988,', N'4', N'卡拉马袓', N'Kalamazoo', N'kalama', N'AZO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3989', N'349', N',4,140,349,3989,', N'4', N'兰辛', N'Lansing', N'lanxin', N'LAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3990', N'349', N',4,140,349,3990,', N'4', N'马斯基根', N'Muskegon', N'masijigen', N'MKG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3991', N'349', N',4,140,349,3991,', N'4', N'庞菷亚克', N'Pontiac', N'pang', N'PTK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3992', N'349', N',4,140,349,3992,', N'4', N'萨吉诺', N'Saginaw', N'sajinuo', N'SGM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3993', N'349', N',4,140,349,3993,', N'4', N'苏圣玛丽', N'Sault Ste Marie', N'sushengmali', N'SSM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3994', N'349', N',4,140,349,3994,', N'4', N'沃伦', N'Warren', N'wolun', N'WAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3995', N'349', N',4,140,349,3995,', N'4', N'休伦港', N'Port Huron', N'xiulungang', N'PHN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3996', N'350', N',4,140,350,3996,', N'4', N'班戈', N'Bangor', N'bange', N'BNQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3997', N'350', N',4,140,350,3997,', N'4', N'波特兰', N'Portland', N'botelan', N'POL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3998', N'350', N',4,140,350,3998,', N'4', N'刘易斯顿', N'Lewiston', N'liuyisidun', N'QLW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'3999', N'351', N',4,140,351,3999,', N'4', N'罗切斯特', N'Rochester', N'luoqiesite', N'RST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4000', N'351', N',4,140,351,4000,', N'4', N'明尼阿波利斯', N'Minneapolis', N'mingniabolisi', N'MES')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4001', N'351', N',4,140,351,4001,', N'4', N'圣保罗', N'Saint Paul', N'shengbaoluo', N'STP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4002', N'352', N',4,140,352,4002,', N'4', N'阿伯丁', N'Aberdeen', N'aboding', N'ABK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4003', N'352', N',4,140,352,4003,', N'4', N'拉皮德城', N'Rapid City', N'lapidecheng', N'RAP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4004', N'352', N',4,140,352,4004,', N'4', N'苏福尔斯', N'Sioux Falls', N'sufuersi', N'FSD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4005', N'353', N',4,140,353,4005,', N'4', N'北查尔斯顿', N'North Charleston', N'beichaersidun', N'NTS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4006', N'353', N',4,140,353,4006,', N'4', N'查尔斯顿', N'Charleston', N'chaersidun', N'CHS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4007', N'353', N',4,140,353,4007,', N'4', N'哥伦比亚', N'Columbia', N'gelunbiya', N'COV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4008', N'354', N',4,140,354,4008,', N'4', N'奥马哈', N'Omaha', N'aomaha', N'OMA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4009', N'354', N',4,140,354,4009,', N'4', N'贝尔维尤', N'Bellevue', N'beierweiyou', N'XDE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4010', N'354', N',4,140,354,4010,', N'4', N'林肯', N'Lincoln', N'linken', N'LNK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4011', N'355', N',4,140,355,4011,', N'4', N'埃尔科', N'Elko', N'aierke', N'EKO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4012', N'355', N',4,140,355,4012,', N'4', N'北拉斯维加斯', N'North Las Vegas', N'beilasiweijiasi', N'NVS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4013', N'355', N',4,140,355,4013,', N'4', N'弗吉尼亚城', N'Virginia City', N'fujiniyacheng', N'VGI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4014', N'355', N',4,140,355,4014,', N'4', N'亨德森', N'Henderson', N'hengdesen', N'HNZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4015', N'355', N',4,140,355,4015,', N'4', N'卡森城', N'Carson City', N'kasencheng', N'CSN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4016', N'355', N',4,140,355,4016,', N'4', N'拉斯维加斯', N'Las Vegas', N'lasiweijiasi', N'LAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4017', N'355', N',4,140,355,4017,', N'4', N'里诺', N'Reno', N'linuo', N'RNO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4018', N'355', N',4,140,355,4018,', N'4', N'斯帕克斯', N'Sparks', N'sipakesi', N'SPK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4019', N'356', N',4,140,356,4019,', N'4', N'布法罗', N'Buffalo', N'bufaluo', N'FFO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4020', N'356', N',4,140,356,4020,', N'4', N'罗切斯特', N'Rochester', N'luoqiesite', N'ROC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4021', N'356', N',4,140,356,4021,', N'4', N'纽约市', N'New York', N'niuyueshi', N'QEE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4022', N'357', N',4,140,357,4022,', N'4', N'多佛', N'Dover', N'duofo', N'DOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4023', N'357', N',4,140,357,4023,', N'4', N'纽瓦克', N'Newark', N'niuwake', N'NWK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4024', N'357', N',4,140,357,4024,', N'4', N'威明顿', N'Wilmington', N'weimingdun', N'ILG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4025', N'358', N',4,140,358,4025,', N'4', N'布利斯托', N'Bristol', N'bulisituo', N'BSJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4026', N'358', N',4,140,358,4026,', N'4', N'查塔努加', N'Chattanooga', N'chatanujia', N'CHA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4027', N'358', N',4,140,358,4027,', N'4', N'金斯波特', N'Kingsport', N'jinsibote', N'TRI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4028', N'358', N',4,140,358,4028,', N'4', N'孟菲斯', N'Memphis', N'mengfeisi', N'MEM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4029', N'358', N',4,140,358,4029,', N'4', N'纳什维尔', N'Nashville', N'nashiweier', N'BNA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4030', N'358', N',4,140,358,4030,', N'4', N'诺克斯维尔', N'Knoxville', N'nuokesiweier', N'TYS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4031', N'358', N',4,140,358,4031,', N'4', N'三城区', N'Tri-City Area', N'sanchengqu', N'YTC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4032', N'358', N',4,140,358,4032,', N'4', N'士麦那', N'Smyrna', N'shimaina', N'MQY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4033', N'358', N',4,140,358,4033,', N'4', N'斯普林希尔', N'Spring Hill', N'sipulinxier', N'RGI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4034', N'358', N',4,140,358,4034,', N'4', N'约翰逊城', N'Johnson City', N'yuehanxuncheng', N'JCY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4035', N'359', N',4,140,359,4035,', N'4', N'阿普尓顿', N'Appleton', N'apu', N'ATW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4036', N'359', N',4,140,359,4036,', N'4', N'奥什科什', N'Oshkosh', N'aoshikeshi', N'OSH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4037', N'359', N',4,140,359,4037,', N'4', N'格林贝', N'Green Bay', N'gelinbei', N'GBK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4038', N'359', N',4,140,359,4038,', N'4', N'基诺沙', N'Kenosha', N'jinuosha', N'ENW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4039', N'359', N',4,140,359,4039,', N'4', N'拉克罗斯', N'LaCrosse', N'lakeluosi', N'LSE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4040', N'359', N',4,140,359,4040,', N'4', N'拉辛', N'Racine', N'laxin', N'RAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4041', N'359', N',4,140,359,4041,', N'4', N'马尼托沃克', N'Manitowoc', N'manituowoke', N'MTW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4042', N'359', N',4,140,359,4042,', N'4', N'迈迪逊', N'Madison', N'maidixun', N'QMD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4043', N'359', N',4,140,359,4043,', N'4', N'密尔沃基', N'Milwaukee', N'mierwoji', N'MKE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4044', N'359', N',4,140,359,4044,', N'4', N'欧克莱尓', N'Eau Claire', N'oukelai', N'EAU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4045', N'359', N',4,140,359,4045,', N'4', N'沃索', N'Wausau', N'wosuo', N'AUW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4046', N'359', N',4,140,359,4046,', N'4', N'希博伊根', N'Sheboygan', N'xiboyigen', N'SBM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4047', N'360', N',4,140,360,4047,', N'4', N'弗吉尼亚比奇', N'Virginia Beach', N'fujiniyabiqi', N'VAB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4048', N'360', N',4,140,360,4048,', N'4', N'诺福克', N'Norfolk', N'nuofuke', N'ORF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4049', N'360', N',4,140,360,4049,', N'4', N'切萨皮克', N'Chesapeake', N'qiesapike', N'HTW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4050', N'361', N',4,140,361,4050,', N'4', N'查尔斯顿', N'Charleston', N'chaersidun', N'CRW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4051', N'361', N',4,140,361,4051,', N'4', N'亨廷顿', N'Huntington', N'hengtingdun', N'HNU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4052', N'361', N',4,140,361,4052,', N'4', N'帕克斯堡', N'Parkersburg', N'pakesibao', N'PKB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4053', N'362', N',4,140,362,4053,', N'4', N'凯卢阿', N'Kailua', N'kailua', N'KHH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4054', N'362', N',4,140,362,4054,', N'4', N'檀香山', N'Honolulu', N'tanxiangshan', N'HNL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4055', N'362', N',4,140,362,4055,', N'4', N'希洛', N'Hilo', N'xiluo', N'ITO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4056', N'363', N',4,140,363,4056,', N'4', N'康科德', N'Concord', N'kangkede', N'CON')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4057', N'363', N',4,140,363,4057,', N'4', N'曼彻斯特', N'Manchester', N'manchesite', N'MHT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4058', N'363', N',4,140,363,4058,', N'4', N'纳舒厄', N'Nashua', N'nashue', N'ASH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4059', N'364', N',4,140,364,4059,', N'4', N'阿尔伯克基', N'Albuquerque', N'aerbokeji', N'ABQ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4060', N'364', N',4,140,364,4060,', N'4', N'拉斯克鲁塞斯', N'Las Cruces', N'lasikelusaisi', N'LRU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4061', N'364', N',4,140,364,4061,', N'4', N'罗斯韦尔', N'Roswell', N'luosiweier', N'ROW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4062', N'364', N',4,140,364,4062,', N'4', N'圣菲', N'Santa Fe', N'shengfei', N'SAF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4063', N'365', N',4,140,365,4063,', N'4', N'纽瓦克', N'Newark', N'niuwake', N'NRK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4064', N'365', N',4,140,365,4064,', N'4', N'帕特森', N'Paterson', N'patesen', N'PAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4065', N'365', N',4,140,365,4065,', N'4', N'泽西城', N'Jersey City', N'zexicheng', N'JEC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4066', N'366', N',4,140,366,4066,', N'4', N'凤凰城', N'Phoenix', N'fenghuangcheng', N'PHX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4067', N'366', N',4,140,366,4067,', N'4', N'格兰代尔', N'Glendale', N'gelandaier', N'GDA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4068', N'366', N',4,140,366,4068,', N'4', N'梅萨', N'Mesa', N'meisa', N'MQA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4069', N'366', N',4,140,366,4069,', N'4', N'史卡兹代尔', N'Scottsdale', N'shikazidaier', N'STZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4070', N'366', N',4,140,366,4070,', N'4', N'坦普', N'Tempe', N'tanpu', N'TPE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4071', N'366', N',4,140,366,4071,', N'4', N'图森', N'Tucson', N'tusen', N'TUC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4072', N'366', N',4,140,366,4072,', N'4', N'优玛', N'Yuma', N'youma', N'YUM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4073', N'367', N',4,140,367,4073,', N'4', N'奥尔顿', N'Alton', N'aoerdun', N'ALN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4074', N'367', N',4,140,367,4074,', N'4', N'奥罗拉', N'Aurora', N'aoluola', N'AUZ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4075', N'367', N',4,140,367,4075,', N'4', N'布卢明顿', N'Bloomington', N'bulumingdun', N'BLO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4076', N'367', N',4,140,367,4076,', N'4', N'丹维尓', N'Danville', N'danwei', N'DVI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4077', N'367', N',4,140,367,4077,', N'4', N'迪卡尔布', N'De Kalb', N'dikaerbu', N'DEK')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4078', N'367', N',4,140,367,4078,', N'4', N'迪凯持', N'Decatur', N'dikaichi', N'DEC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4079', N'367', N',4,140,367,4079,', N'4', N'东圣路易斯', N'East St Louis', N'dongshengluyisi', N'ESL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4080', N'367', N',4,140,367,4080,', N'4', N'厄巴纳-香槟', N'Champaign-Urbana', N'ebanaxiang', N'CMI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4081', N'367', N',4,140,367,4081,', N'4', N'盖尔斯堡', N'Galesburg', N'gaiersibao', N'GSU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4082', N'367', N',4,140,367,4082,', N'4', N'卡本代尔', N'Carbondale', N'kabendaier', N'MDH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4083', N'367', N',4,140,367,4083,', N'4', N'罗克艾兰', N'Rock Island', N'luokeailan', N'RKI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4084', N'367', N',4,140,367,4084,', N'4', N'罗克福德', N'Rockford', N'luokefude', N'RFD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4085', N'367', N',4,140,367,4085,', N'4', N'诺黙尔', N'Normal', N'nuo', N'NOM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4086', N'367', N',4,140,367,4086,', N'4', N'皮奥里亚', N'Peoria', N'piaoliya', N'PLA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4087', N'367', N',4,140,367,4087,', N'4', N'森特勒利亚', N'Centralia', N'senteleliya', N'CRA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4088', N'367', N',4,140,367,4088,', N'4', N'斯普林菲尔德', N'Springfield', N'sipulinfeierde', N'SPI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4089', N'367', N',4,140,367,4089,', N'4', N'沃其根', N'Waukegan', N'woqigen', N'UGN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4090', N'367', N',4,140,367,4090,', N'4', N'芝加哥', N'Chicago', N'zhijiage', N'CHI')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4091', N'368', N',4,140,368,4091,', N'4', N'埃文斯维尔', N'Evansville', N'aiwensiweier', N'EVV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4092', N'368', N',4,140,368,4092,', N'4', N'韦恩堡', N'Fort Wayne', N'weienbao', N'FWA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4093', N'368', N',4,140,368,4093,', N'4', N'印第安纳波利斯', N'Indianapolis', N'yindiannabolisi', N'IND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4094', N'369', N',4,140,369,4094,', N'4', N'奥格登', N'Ogden', N'aogedeng', N'OGD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4095', N'369', N',4,140,369,4095,', N'4', N'雷登', N'Layton', N'leideng', N'LTJ')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4096', N'369', N',4,140,369,4096,', N'4', N'欧仁', N'Orem', N'ouren', N'OEU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4097', N'369', N',4,140,369,4097,', N'4', N'帕克城', N'Park City', N'pakecheng', N'PAC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4098', N'369', N',4,140,369,4098,', N'4', N'普罗沃', N'Provo', N'puluowo', N'PVU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4099', N'369', N',4,140,369,4099,', N'4', N'圣乔治', N'St.George', N'shengqiaozhi', N'SGU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4100', N'369', N',4,140,369,4100,', N'4', N'西瓦利城', N'West Valley City', N'xiwalicheng', N'WVC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4101', N'369', N',4,140,369,4101,', N'4', N'盐湖城', N'Salt Lake City', N'yanhucheng', N'SLC')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4102', N'370', N',4,140,370,4102,', N'4', N'奥古斯塔', N'Augusta', N'aogusita', N'AUT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4103', N'370', N',4,140,370,4103,', N'4', N'哥伦布', N'Columbus', N'gelunbu', N'CZX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4104', N'370', N',4,140,370,4104,', N'4', N'梅肯', N'Macon', N'meiken', N'MCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4105', N'370', N',4,140,370,4105,', N'4', N'沙瓦纳', N'Savannah', N'shawana', N'SAV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4106', N'370', N',4,140,370,4106,', N'4', N'亚特兰大', N'Atlanta', N'yatelanda', N'TAT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4107', N'371', N',2,237,371,4107,', N'4', N'贝尔法斯特', N'Belfast', N'beierfasite', N'BFS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4108', N'371', N',2,237,371,4108,', N'4', N'德里', N'Derry', N'deli', N'DRY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4109', N'371', N',2,237,371,4109,', N'4', N'利斯本', N'Lisburn', N'lisiben', N'LSB')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4110', N'371', N',2,237,371,4110,', N'4', N'纽里', N'Newry', N'niuli', N'NYM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4111', N'372', N',2,237,372,4111,', N'4', N'阿伯丁', N'Aberdeen', N'aboding', N'ABD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4112', N'372', N',2,237,372,4112,', N'4', N'爱丁堡', N'Edinburgh', N'aidingbao', N'EDH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4113', N'372', N',2,237,372,4113,', N'4', N'丹迪', N'Dundee', N'dandi', N'DND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4114', N'372', N',2,237,372,4114,', N'4', N'格拉斯哥', N'Glasgow', N'gelasige', N'GLG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4115', N'372', N',2,237,372,4115,', N'4', N'斯特灵', N'Stirling', N'siteling', N'STG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4116', N'372', N',2,237,372,4116,', N'4', N'因弗内斯', N'Inverness', N'yinfuneisi', N'INV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4117', N'373', N',2,237,373,4117,', N'4', N'班戈', N'Bangor', N'bange', N'BAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4118', N'373', N',2,237,373,4118,', N'4', N'卡迪夫', N'Cardiff', N'kadifu', N'CDF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4119', N'373', N',2,237,373,4119,', N'4', N'纽波特', N'Newport', N'niubote', N'NWP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4120', N'373', N',2,237,373,4120,', N'4', N'斯旺西', N'Swansea', N'siwangxi', N'SWA')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4121', N'374', N',2,237,374,4121,', N'4', N'埃克塞特', N'Exeter', N'aikesaite', N'EXE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4122', N'374', N',2,237,374,4122,', N'4', N'巴斯', N'Bath', N'basi', N'BAS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4123', N'374', N',2,237,374,4123,', N'4', N'彼得伯勒', N'Peterborough', N'bidebole', N'PTE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4124', N'374', N',2,237,374,4124,', N'4', N'伯明翰', N'Birmingham', N'bominghan', N'BIR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4125', N'374', N',2,237,374,4125,', N'4', N'布拉德福德', N'Bradford', N'buladefude', N'BRD')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4126', N'374', N',2,237,374,4126,', N'4', N'布莱顿与赫福', N'Brighton & Hove', N'bulaidunyuhefu', N'BNH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4127', N'374', N',2,237,374,4127,', N'4', N'布里斯托尔', N'Bristol', N'bulisituoer', N'BST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4128', N'374', N',2,237,374,4128,', N'4', N'德比', N'Derby', N'debi', N'DER')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4129', N'374', N',2,237,374,4129,', N'4', N'德罕', N'Durham', N'dehan', N'DUR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4130', N'374', N',2,237,374,4130,', N'4', N'格洛斯特', N'Gloucester', N'geluosite', N'GLO')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4131', N'374', N',2,237,374,4131,', N'4', N'赫尔河畔京斯敦', N'Kingston upon Hull', N'heerhepanjingsidun', N'KUH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4132', N'374', N',2,237,374,4132,', N'4', N'赫里福德', N'Hereford', N'helifude', N'HAF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4133', N'374', N',2,237,374,4133,', N'4', N'剑桥', N'Cambridge', N'jianqiao', N'CAM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4134', N'374', N',2,237,374,4134,', N'4', N'卡莱尔', N'Carlisle', N'kalaier', N'CAX')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4135', N'374', N',2,237,374,4135,', N'4', N'坎特伯雷', N'Canterbury', N'kantebolei', N'CNG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4136', N'374', N',2,237,374,4136,', N'4', N'考文垂', N'Coventry', N'kaowenchui', N'COV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4137', N'374', N',2,237,374,4137,', N'4', N'兰开斯特', N'Lancaster', N'lankaisite', N'LAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4138', N'374', N',2,237,374,4138,', N'4', N'里彭', N'Ripon', N'lipeng', N'RIP')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4139', N'374', N',2,237,374,4139,', N'4', N'利奇菲尔德', N'Lichfield', N'liqifeierde', N'LHF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4140', N'374', N',2,237,374,4140,', N'4', N'利物浦', N'Liverpool', N'liwupu', N'LIV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4141', N'374', N',2,237,374,4141,', N'4', N'利茲', N'Leeds', N'li', N'LDS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4142', N'374', N',2,237,374,4142,', N'4', N'列斯特', N'Leicester', N'liesite', N'LCE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4143', N'374', N',2,237,374,4143,', N'4', N'林肯', N'Lincoln', N'linken', N'LCN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4144', N'374', N',2,237,374,4144,', N'4', N'伦敦', N'London', N'lundun', N'LND')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4145', N'374', N',2,237,374,4145,', N'4', N'曼彻斯特', N'Manchester', N'manchesite', N'MAN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4146', N'374', N',2,237,374,4146,', N'4', N'南安普敦', N'Southampton', N'nananpudun', N'STH')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4147', N'374', N',2,237,374,4147,', N'4', N'牛津', N'Oxford', N'niujin', N'OXF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4148', N'374', N',2,237,374,4148,', N'4', N'纽卡斯尔', N'Newcastle', N'niukasier', N'NCL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4149', N'374', N',2,237,374,4149,', N'4', N'诺丁汉', N'Nottingham', N'nuodinghan', N'NGM')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4150', N'374', N',2,237,374,4150,', N'4', N'诺里奇', N'Norwich', N'nuoliqi', N'NRW')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4151', N'374', N',2,237,374,4151,', N'4', N'朴茨茅斯', N'Portsmouth', N'pucimaosi', N'POR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4152', N'374', N',2,237,374,4152,', N'4', N'普雷斯顿', N'Preston', N'puleisidun', N'PRE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4153', N'374', N',2,237,374,4153,', N'4', N'普利茅斯', N'Plymouth', N'pulimaosi', N'PLY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4154', N'374', N',2,237,374,4154,', N'4', N'奇切斯特', N'Chichester', N'qiqiesite', N'CST')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4155', N'374', N',2,237,374,4155,', N'4', N'切斯特', N'Chester', N'qiesite', N'CEG')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4156', N'374', N',2,237,374,4156,', N'4', N'桑德兰', N'Sunderland', N'sangdelan', N'SUN')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4157', N'374', N',2,237,374,4157,', N'4', N'圣阿本斯', N'Saint Albans', N'shengabensi', N'TBL')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4158', N'374', N',2,237,374,4158,', N'4', N'索尔斯堡', N'Salisbury', N'suoersibao', N'SLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4159', N'374', N',2,237,374,4159,', N'4', N'索福特', N'Salford', N'suofute', N'SLF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4160', N'374', N',2,237,374,4160,', N'4', N'特鲁罗', N'Truro', N'teluluo', N'TRU')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4161', N'374', N',2,237,374,4161,', N'4', N'特伦特河畔斯多克', N'Stoke-on-Trent', N'teluntehepansiduoke', N'SOT')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4162', N'374', N',2,237,374,4162,', N'4', N'威尔斯', N'Wells', N'weiersi', N'WLS')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4163', N'374', N',2,237,374,4163,', N'4', N'韦克菲尔德', N'Wakefield', N'weikefeierde', N'WKF')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4164', N'374', N',2,237,374,4164,', N'4', N'温彻斯特', N'Winchester', N'wenchesite', N'WNE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4165', N'374', N',2,237,374,4165,', N'4', N'伍尔弗汉普顿', N'Wolverhampton', N'wuerfuhanpudun', N'WOV')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4166', N'374', N',2,237,374,4166,', N'4', N'伍斯特', N'Worcester', N'wusite', N'WOR')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4167', N'374', N',2,237,374,4167,', N'4', N'谢菲尔德', N'Sheffield', N'xiefeierde', N'SHE')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4168', N'374', N',2,237,374,4168,', N'4', N'伊利', N'Ely', N'yili', N'ELY')
GO

INSERT INTO [dbo].[crm_data_region] ([id], [pid], [path], [level], [name], [name_en], [name_pinyin], [code]) VALUES (N'4169', N'374', N',2,237,374,4169,', N'4', N'约克', N'York', N'yueke', N'YOR')
GO

SET IDENTITY_INSERT [dbo].[crm_data_region] OFF
GO


-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_table]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_table]
GO

CREATE TABLE [dbo].[gen_table] (
  [table_id] bigint  IDENTITY(1,1) NOT NULL,
  [table_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [table_comment] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sub_table_name] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sub_table_fk_name] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [class_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [tpl_category] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [package_name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [module_name] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [business_name] nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [function_name] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [function_author] nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [gen_type] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT ('0') NULL,
  [gen_path] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT ('/') NULL,
  [options] nvarchar(1000) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_by] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(0)  NULL,
  [update_by] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(0)  NULL,
  [remark] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[gen_table] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'table_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表名称',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表描述',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'table_comment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'关联子表的表名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'sub_table_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'子表关联的外键名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'sub_table_fk_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'实体类名称',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'class_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'使用的模板（crud单表操作 tree树表操作）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'tpl_category'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成包路径',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'package_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成模块名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'module_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成业务名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'business_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成功能名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'function_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成功能作者',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'function_author'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成代码方式（0zip压缩包 1自定义路径）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'gen_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'生成路径（不填默认项目路径）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'gen_path'
GO

EXEC sp_addextendedproperty
'MS_Description', N'其它生成选项',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'options'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新者',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'gen_table',
'COLUMN', N'remark'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成业务表',
'SCHEMA', N'dbo',
'TABLE', N'gen_table'
GO


-- ----------------------------
-- Records of gen_table
-- ----------------------------
SET IDENTITY_INSERT [dbo].[gen_table] ON
GO

INSERT INTO [dbo].[gen_table] ([table_id], [table_name], [table_comment], [sub_table_name], [sub_table_fk_name], [class_name], [tpl_category], [package_name], [module_name], [business_name], [function_name], [function_author], [gen_type], [gen_path], [options], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'crm_data_region', N'全球地区库', N'', N'', N'CrmDataRegion', N'crud', N'com.hx.system', N'system', N'region', N'全球地区', N'lusifer', N'0', N'/', N'{"treeCode":"id","treeName":"name","treeParentCode":"pid","parentMenuId":2013}', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58', NULL)
GO

INSERT INTO [dbo].[gen_table] ([table_id], [table_name], [table_comment], [sub_table_name], [sub_table_fk_name], [class_name], [tpl_category], [package_name], [module_name], [business_name], [function_name], [function_author], [gen_type], [gen_path], [options], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N't_rd_peifang', N'测试-多数据源', NULL, NULL, N'TRdPeifang', N'crud', N'com.hx.system', N'system', N'peifang', N'测试-多数据源', N'lusifer', N'0', N'/', N'{"parentMenuId":2013}', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09', NULL)
GO

SET IDENTITY_INSERT [dbo].[gen_table] OFF
GO


-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_table_column]') AND type IN ('U'))
	DROP TABLE [dbo].[gen_table_column]
GO

CREATE TABLE [dbo].[gen_table_column] (
  [column_id] bigint  IDENTITY(1,1) NOT NULL,
  [table_id] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [column_name] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [column_comment] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [column_type] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [java_type] nvarchar(500) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [java_field] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_pk] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_increment] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_required] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_insert] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_edit] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_list] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_query] nchar(1) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [query_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS DEFAULT ('EQ') NULL,
  [html_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [dict_type] nvarchar(200) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [sort] int  NULL,
  [create_by] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_time] datetime2(0)  NULL,
  [update_by] nvarchar(64) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_time] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[gen_table_column] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'编号',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'column_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'归属表编号',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'table_id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列名称',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'column_name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列描述',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'column_comment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'列类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'column_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'JAVA类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'java_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'JAVA字段名',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'java_field'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否主键（1是）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'is_pk'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否自增（1是）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'is_increment'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否必填（1是）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'is_required'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否为插入字段（1是）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'is_insert'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否编辑字段（1是）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'is_edit'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否列表字段（1是）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'is_list'
GO

EXEC sp_addextendedproperty
'MS_Description', N'是否查询字段（1是）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'is_query'
GO

EXEC sp_addextendedproperty
'MS_Description', N'查询方式（等于、不等于、大于、小于、范围）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'query_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'html_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'字典类型',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'dict_type'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建者',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'create_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'create_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新者',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'update_by'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column',
'COLUMN', N'update_time'
GO

EXEC sp_addextendedproperty
'MS_Description', N'代码生成业务表字段',
'SCHEMA', N'dbo',
'TABLE', N'gen_table_column'
GO


-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
SET IDENTITY_INSERT [dbo].[gen_table_column] ON
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'1', N'1', N'id', N'主键', N'int(11) unsigned', N'Long', N'id', N'1', N'1', NULL, N'1', NULL, NULL, NULL, N'EQ', N'input', N'', N'1', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'2', N'1', N'pid', N'父ID', N'int(11) unsigned', N'Long', N'pid', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'2', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'3', N'1', N'path', N'路径', N'varchar(255)', N'String', N'path', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'3', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'4', N'1', N'level', N'层级', N'int(11) unsigned', N'Long', N'level', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'4', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'5', N'1', N'name', N'中文名称', N'varchar(255)', N'String', N'name', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'LIKE', N'input', N'', N'5', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'6', N'1', N'name_en', N'英文名称', N'varchar(255)', N'String', N'nameEn', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'6', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'7', N'1', N'name_pinyin', N'中文拼音', N'varchar(255)', N'String', N'namePinyin', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'7', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'8', N'1', N'code', N'代码', N'varchar(50)', N'String', N'code', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'8', N'admin', N'2022-08-12 09:32:51', N'', N'2022-08-12 09:38:58')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'9', N'2', N'ID', NULL, N'bigint(20)', N'Long', N'id', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'1', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'10', N'2', N'FID', NULL, N'varchar(50)', N'String', N'fid', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'2', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'11', N'2', N'FBillNo', NULL, N'varchar(50)', N'String', N'fbillno', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'3', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'12', N'2', N'FDate', NULL, N'date', N'Date', N'fdate', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'datetime', N'', N'4', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'13', N'2', N'FRDCode', NULL, N'varchar(50)', N'String', N'frdcode', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'5', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'14', N'2', N'FStatus', NULL, N'int(11)', N'Long', N'fstatus', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'EQ', N'radio', N'', N'6', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'15', N'2', N'FTiaoxiangshi', NULL, N'varchar(20)', N'String', N'ftiaoxiangshi', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'7', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'16', N'2', N'FPeifangleibie', NULL, N'varchar(10)', N'String', N'fpeifangleibie', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'8', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'17', N'2', N'FTxsqdh', NULL, N'varchar(20)', N'String', N'ftxsqdh', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'9', N'admin', N'2022-09-13 16:47:15', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'18', N'2', N'FVG', NULL, N'double', N'Long', N'fvg', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'10', N'admin', N'2022-09-13 16:47:16', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'19', N'2', N'FPG', NULL, N'double', N'Long', N'fpg', N'0', N'0', N'1', N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'11', N'admin', N'2022-09-13 16:47:16', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'20', N'2', N'FNicLeibie', NULL, N'varchar(50)', N'String', N'fnicleibie', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'12', N'admin', N'2022-09-13 16:47:16', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'21', N'2', N'FNicDanwei', NULL, N'varchar(50)', N'String', N'fnicdanwei', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'13', N'admin', N'2022-09-13 16:47:16', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'22', N'2', N'FNicAZhanbi', NULL, N'char(10)', N'String', N'fnicazhanbi', N'0', N'0', NULL, N'1', N'1', N'1', N'1', N'EQ', N'input', N'', N'14', N'admin', N'2022-09-13 16:47:16', N'', N'2022-09-13 16:48:09')
GO

INSERT INTO [dbo].[gen_table_column] ([column_id], [table_id], [column_name], [column_comment], [column_type], [java_type], [java_field], [is_pk], [is_increment], [is_required], [is_insert], [is_edit], [is_list], [is_query], [query_type], [html_type], [dict_type], [sort], [create_by], [create_time], [update_by], [update_time]) VALUES (N'23', N'2', N'FNicBZhanbi', NULL, N'char(10)', N'Str