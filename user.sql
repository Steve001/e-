/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : hlmanage

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-10-23 10:20:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `user_jigou` varchar(50) DEFAULT NULL,
  `user_tjname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=867 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('65', '王花翠', '18530220555', '090629', '天顺二手房', '李兰兰');
INSERT INTO `user` VALUES ('154', '李勃', '15937368832', '1234qwer', '华龙销售部', '');
INSERT INTO `user` VALUES ('156', '刘鹏', '18837376666', '123321', '', '刘蒙');
INSERT INTO `user` VALUES ('159', '段小凤', '18749103009', '123456', '天顺房产', '李兰兰');
INSERT INTO `user` VALUES ('160', '娄亚玺', '17737312318', '88888888', '天顺房产', '李兰兰');
INSERT INTO `user` VALUES ('161', '朱正燕', '13303731976', 'zy13303731976', '天顺二手房', '李兰兰');
INSERT INTO `user` VALUES ('162', '李华', '13044759377', 'lh13044759377', '新乡市万邦房产营销策划有限公司', '张晨雪');
INSERT INTO `user` VALUES ('163', '李蓝蓝', '13781996800', 'lanlan622622', '华龙销售部', null);
INSERT INTO `user` VALUES ('165', '芦亚', '15893879166', '123456', '宜佳房产', '张习霞');
INSERT INTO `user` VALUES ('166', '聂宏宾', '15836046622', 'a12345678', ' 升城地产 ', '');
INSERT INTO `user` VALUES ('167', '闫兴阳', '15237324612', '123123', '升城地产', null);
INSERT INTO `user` VALUES ('168', '张书世', '18503886757', '1176757', '天顺中介', '');
INSERT INTO `user` VALUES ('169', '郭帅', '15516610369', '1234567890', '新乡市人人房屋中介服务有限公司', null);
INSERT INTO `user` VALUES ('171', '蔺芳', '15560206000', '100308', '华龙壹號院', null);
INSERT INTO `user` VALUES ('172', '李小翠', '18737301147', '412418', '明成房产', '李兰兰');
INSERT INTO `user` VALUES ('173', '张华', '15617159040', 'Zd123456', '天顺二手房', '李兰兰');
INSERT INTO `user` VALUES ('175', '王利勤', '13072666836', '666836', '共创二手房', '张习霞');
INSERT INTO `user` VALUES ('178', '马翠', '13523237226', 'mc127927820', '有邻房产', '刘蒙');
INSERT INTO `user` VALUES ('179', '张习霞', '18738530336', '7569815', '华龙销售部', null);
INSERT INTO `user` VALUES ('182', '张爱香', '15516560136', '123456', '好运来房产', null);
INSERT INTO `user` VALUES ('183', '胡广银', '17839880382', '123456', '售楼部', null);
INSERT INTO `user` VALUES ('184', '娄小丽', '13323808228', '123456', '家兴房产', null);
INSERT INTO `user` VALUES ('185', '陈利山', '18568732902', '850905', '越兴中介', null);
INSERT INTO `user` VALUES ('186', '张海侠', '17630163014', '7426', '共创二手房', '张习霞');
INSERT INTO `user` VALUES ('187', '林凤云', '15090375851', '15090375851', '儒房地产', null);
INSERT INTO `user` VALUES ('188', '王振方', '15649602636', '123456', '宜佳房产', null);
INSERT INTO `user` VALUES ('189', '武菁菁', '15649604968', '142536', '宜佳房产', '张习霞');
INSERT INTO `user` VALUES ('190', '陈利山', '18568732905', '850905', '明成房产', null);
INSERT INTO `user` VALUES ('192', '张瑞芳', '18695927628', '123456', '共创二手房', '张习霞');
INSERT INTO `user` VALUES ('193', '张丹', '15903860550', '19841125', '原阳县翰林房屋中介有限公司', '路蕊');
INSERT INTO `user` VALUES ('194', '刘政', '18837338708', '123123', '升城地产', null);
INSERT INTO `user` VALUES ('195', '徐珂', '17698225157', '1139486890', '个人', '薛康');
INSERT INTO `user` VALUES ('196', '马爱云', '17837318268', '521114', '天顺二手房', '李兰兰');
INSERT INTO `user` VALUES ('198', '刘亚丽', '15737355206', '123456', '个人', '薛康');
INSERT INTO `user` VALUES ('199', '李星', '15090080085', '123456', '个人', '');
INSERT INTO `user` VALUES ('201', '李玉红', '18439092723', '281914', '新家园二手房', '路蕊');
INSERT INTO `user` VALUES ('202', '张翠霞', '13569886088', '721166', '新家园二手房', '路蕊');
INSERT INTO `user` VALUES ('203', '韩有学', '15893891888', '721166', '新家园二手房', '路蕊');
INSERT INTO `user` VALUES ('204', '崔瑞鹤', '18439082729', '123456', '翰林房产中介', '路蕊');
INSERT INTO `user` VALUES ('205', '吴丹丹', '13663806357', '15516592975', '天顺二手房', '李兰兰');
INSERT INTO `user` VALUES ('207', '路中典', '15090343642', '15090343642', '幸福家置业', null);
INSERT INTO `user` VALUES ('208', '张静', '13403737665', 'z15188232568', '原阳县卓越房屋中介有限公司', null);
INSERT INTO `user` VALUES ('209', '毛垒', '18336080605', 'aaa258560', '卓越房产', null);
INSERT INTO `user` VALUES ('210', '王旭', '18737381879', 'wangxu369', '立城地产', null);
INSERT INTO `user` VALUES ('214', '宋华艳', '18303665887', 'song770910', '安家房产', null);
INSERT INTO `user` VALUES ('216', '李涵哲', '18237374764', '123456', '共创', '张习霞');
INSERT INTO `user` VALUES ('217', '李素侠', '15936577183', '123456', '共创', '张习霞');
INSERT INTO `user` VALUES ('218', '李振林', '17503836661', '1234', '共创', '张习霞');
INSERT INTO `user` VALUES ('219', '焦妍', '18303612127', '18303612127', '金顺房产', '薛康');
INSERT INTO `user` VALUES ('220', '朱俊盈', '18530710988', '123456', '东安汽车城', null);
INSERT INTO `user` VALUES ('221', '李亚', '18568237128', 'liya840713', '乔威机械', null);
INSERT INTO `user` VALUES ('222', '冯魁涛', '18638303127', '356648', '', '刘蒙');
INSERT INTO `user` VALUES ('227', '张习霞', '18738530366', '7569815', '华龙销售部', '');
INSERT INTO `user` VALUES ('228', '丁秀琴', '17516758867', '147741', '明晨二手房', '黄云贞');
INSERT INTO `user` VALUES ('229', '刘靖', '18338927888', '123456', '爱家房产', '路蕊');
INSERT INTO `user` VALUES ('230', '冷立石', '18738353385', '970711', '卓越房产', '李兰兰');
INSERT INTO `user` VALUES ('233', '李丹', '13083731778', '315315', '名门世家东门优嘉房产', '刘蒙蒙');
INSERT INTO `user` VALUES ('234', '闫然', '15649629316', '123456', '优嘉房产', '');
INSERT INTO `user` VALUES ('235', '吴娟', '18336445286', '123456', '个人', '薛康');
INSERT INTO `user` VALUES ('236', '刘纯洁', '18790557099', '150908', '升城房产', '');
INSERT INTO `user` VALUES ('237', '梁静', '15037377668', '000236', '新家园二手房', '路蕊');
INSERT INTO `user` VALUES ('238', '董文娟', '18236109285', '616729', '新家园二手房', '路蕊');
INSERT INTO `user` VALUES ('239', '袁希英', '13017603270', '654321', '新家园二手中介', '路蕊');
INSERT INTO `user` VALUES ('240', '毛贻青', '13262113265', 'm1973110300', '新家园', '路蕊');
INSERT INTO `user` VALUES ('241', '裴亚可', '18613730091', '1234567', '新家园二手房', '路蕊');
INSERT INTO `user` VALUES ('246', '冯新建', '13839095086', '356648', '个人', '刘蒙');
INSERT INTO `user` VALUES ('247', '刘艳霞', '13598658470', '13598658470', '儒房地产', '闫娇楠');
INSERT INTO `user` VALUES ('249', '郭国彬', '18860261588', '18860261588', '海洲外贸', '李勃');
INSERT INTO `user` VALUES ('250', '武朋振', '18567393199', '123456', '绿荫地产', '薛康');
INSERT INTO `user` VALUES ('251', '张蕾', '18625911123', '123456', '平安保险', '刘蒙');
INSERT INTO `user` VALUES ('252', '焦仁燕', '13353605316', '123456', '金顺房产', '张习雪');
INSERT INTO `user` VALUES ('253', '鲍天喜', '15937322210', 'BTX15937322210.', '华龙壹號院', '');
INSERT INTO `user` VALUES ('254', '鲁璐芳', '18790676800', '123456', '客服部', '路蕊');
INSERT INTO `user` VALUES ('257', '王旭', '15936598090', '123456', '华龙壹號院', '');
INSERT INTO `user` VALUES ('258', '王秀均', '18838278845', '654321', '华龙置业', '');
INSERT INTO `user` VALUES ('259', '张耘海', '13523259713', '123456', '华龙置业', '无');
INSERT INTO `user` VALUES ('260', '张翔', '18937323895', '666666', '华龙置业', '');
INSERT INTO `user` VALUES ('261', '张祥阳', '15137383176', '123456', '华龙工程部', '');
INSERT INTO `user` VALUES ('262', '毛翠翠', '18737376708', '123', '华龙置业', '');
INSERT INTO `user` VALUES ('263', '侯金刚', '15716685369', 'hougang888', '河南乾华置业有限公司', '');
INSERT INTO `user` VALUES ('264', '吴振良', '13373746990', '13373746990', '华龙置业', '');
INSERT INTO `user` VALUES ('265', '张素芳', '13183111909', '000000', '供创', '张习霞');
INSERT INTO `user` VALUES ('266', '时亚楠', '18203730850', '323323', '华龙置业', '');
INSERT INTO `user` VALUES ('267', '胡海兰', '13044755933', '147741', '全民经纪人', '黄云贞');
INSERT INTO `user` VALUES ('271', '吴志刚', '17638333803', '1992723', '升城地产', '');
INSERT INTO `user` VALUES ('274', '刘新起', '13233810892', '1993719', '升城地产华龙店', '无');
INSERT INTO `user` VALUES ('275', '聂宏宾', '15836046611', 'nie123456', '经纪机构', '张习霞');
INSERT INTO `user` VALUES ('279', '曹海玲', '13525047379', '123456', '华龙置业', '路蕊');
INSERT INTO `user` VALUES ('280', '孙彦超', '18236175758', '117118', '河南升城房地产经纪有限公司', '');
INSERT INTO `user` VALUES ('281', '陈连成', '15617150808', 'C816618', '春雷房地产', '薛康');
INSERT INTO `user` VALUES ('284', '刘蕊', '15037303730', '123456', '个人', '闫娇楠');
INSERT INTO `user` VALUES ('291', '韩文卿', '15670442007', '121420', '华龙', '');
INSERT INTO `user` VALUES ('295', '马飞', '13513732370', '504112', '', '');
INSERT INTO `user` VALUES ('296', '张旭', '15203735787', '123456', '新家园', '');
INSERT INTO `user` VALUES ('299', '王亚轲', '13569821153', '662002', '曼哈顿', '闫娇楠');
INSERT INTO `user` VALUES ('301', '吴青霞', '18790502880', '850426', '华龙壹號院', '周美丽');
INSERT INTO `user` VALUES ('302', '张会建', '13839075378', '123123', '天顺房产', '');
INSERT INTO `user` VALUES ('303', '米永会', '13353676566', '123123', '天顺房产', '');
INSERT INTO `user` VALUES ('318', '米永生', '15560279767', 'x19931022', '新乡市天顺房屋中介服务有限公司', '李蓝蓝');
INSERT INTO `user` VALUES ('325', '薛长存', '18583735115', '123456', '恋家二手房', '刘蒙');
INSERT INTO `user` VALUES ('326', '朱欢欢', '13525086148', 'sh850410', '恋家二手房', '刘蒙');
INSERT INTO `user` VALUES ('327', '薛长存', '18503735115', '123456', '恋家二手房', '刘蒙');
INSERT INTO `user` VALUES ('330', '板少华', '15937372322', '15937372322', '华龙e房通', '蔺芳');
INSERT INTO `user` VALUES ('334', '王朝阳', '18339538585', '8585', '升城地产', '宋四召');
INSERT INTO `user` VALUES ('336', '刘秋霞', '18790656444', '321321', '华龙壹號院', '路蕊');
INSERT INTO `user` VALUES ('342', '刘美玲', '15893859873', '151151', '天顺二手房', '李蓝蓝');
INSERT INTO `user` VALUES ('346', '刘保平', '15225919212', '212212', '新家园二手房', '路蕊');
INSERT INTO `user` VALUES ('349', '胡文亮', '18337339560', '000419', '卓越房产', '蓝蓝');
INSERT INTO `user` VALUES ('350', '聂营营', '15090399240', '15090399240', '升城地产', '蔺芳');
INSERT INTO `user` VALUES ('352', '杨晶晶', '13839073222', '814423', '华龙壹号院', '刘蒙蒙');
INSERT INTO `user` VALUES ('356', '娄芬', '15090333784', '150903', '共创房产', '张习霞');
INSERT INTO `user` VALUES ('357', '王浦松', '15937370691', '987654', '明成房产', '');
INSERT INTO `user` VALUES ('358', '郜鹏', '15637335533', '147741', '个人', '黄云贞');
INSERT INTO `user` VALUES ('359', '朱彦菊', '18625939908', '660829', '明成房产', '');
INSERT INTO `user` VALUES ('360', '板良辰', '13523230036', '123456', '个人', '刘蒙');
INSERT INTO `user` VALUES ('362', '刘在方', '16501332600', '123456', '个人', '刘蒙');
INSERT INTO `user` VALUES ('363', '王安', '18638309259', '123456', '天顺店', '李蓝蓝');
INSERT INTO `user` VALUES ('365', '刘帅', '13781974466', '123456', '恋家二手房', '刘蒙蒙');
INSERT INTO `user` VALUES ('367', '李佳丽', '13071075433', '123456', '个人', '无');
INSERT INTO `user` VALUES ('369', '王帅', '13525086990', '123456', '明晨二手房', '黄云贞');
INSERT INTO `user` VALUES ('371', '申换灵', '15649629363', '123456', '明成房产', '');
INSERT INTO `user` VALUES ('376', '吴艳', '13100001234', '123456', '华龙', '无');
INSERT INTO `user` VALUES ('378', '和鑫', '13262116132', '123456', '个人', '路蕊');
INSERT INTO `user` VALUES ('379', '梁秀娟', '15893839262', '890622', '升城地产', '');
INSERT INTO `user` VALUES ('380', '苗银港', '13781313407', '13781313407', '升城地产', '');
INSERT INTO `user` VALUES ('385', '王岩', '13937101348', '123789', '天顺房产', '');
INSERT INTO `user` VALUES ('387', '李绍娟', '13253501819', 'wzylsj3344', '明成房产', '');
INSERT INTO `user` VALUES ('388', '毛光', '18568224602', '123456', '个人', '薛康');
INSERT INTO `user` VALUES ('390', '范姝岩', '18903801626', '861121', '华龙', '闫娇楠');
INSERT INTO `user` VALUES ('392', '别广斌', '15137121668', '123456', '华龙', '路蕊');
INSERT INTO `user` VALUES ('394', '李宽', '15670525219', '15670525219', '升城地产', '蔺芳');
INSERT INTO `user` VALUES ('395', '李华', '15537387610', '123456', '个人', '刘蒙');
INSERT INTO `user` VALUES ('399', '孙冬梅', '15038318496', 's7561787', '华龙壹号院', '严娇楠');
INSERT INTO `user` VALUES ('401', '胡', '13083826139', '6139', '华龙', '无');
INSERT INTO `user` VALUES ('402', '郝田卫', '13569827989', '13569827989', '华龙工程部', '无');
INSERT INTO `user` VALUES ('403', '王丹阳', '18439522706', '123456', '个人', '刘蒙');
INSERT INTO `user` VALUES ('404', '王亚楠', '18738365555', 'wyn19901013', '明晨二手房', '段晓琼');
INSERT INTO `user` VALUES ('405', '周美玲', '15670537789', 'Xiao568426', '明晨二手房', '');
INSERT INTO `user` VALUES ('407', '侯振彬', '18737379089', '930910', '华龙置业', '无');
INSERT INTO `user` VALUES ('437', '徐长海', '18737399275', '19283746', '新乡市华龙置业有限公司', '无');
INSERT INTO `user` VALUES ('438', '李欢乐', '13069375521', '123456', '李欢乐', '薛康');
INSERT INTO `user` VALUES ('439', '牛新坤', '13781962799', '123456', '优嘉地产', '刘蒙');
INSERT INTO `user` VALUES ('441', '李迎春', '15660560910', '861108', '华龙', '李嘉宁');
INSERT INTO `user` VALUES ('443', '周彦东', '13838259901', '925301x', '新乡华龙置业有限公司', '');
INSERT INTO `user` VALUES ('483', '刘志洋', '15670493535', '000000', '家兴房产', '张晨雪');
INSERT INTO `user` VALUES ('484', '金召召', '18625911118', '622622', '河南安晟祥房产中介有限公司', '李海兰');
INSERT INTO `user` VALUES ('487', '张雪方', '15936534353', '123456', '爱家', '路蕊');
INSERT INTO `user` VALUES ('488', '孙建花', '13733165384', '860816', '升城地产', '宋四召');
INSERT INTO `user` VALUES ('489', '张焕', '15136798210', '123456789', '河南乾华置业有限公司', '无');
INSERT INTO `user` VALUES ('490', '王书丽', '17698221828', '123456', '金顺房产', '张习霞');
INSERT INTO `user` VALUES ('493', '段岩', '15090308837', '123456', '华龙置业', '无');
INSERT INTO `user` VALUES ('494', '李双莹', '18240678887', '123456', '原阳县翰林房屋中介', '路蕊');
INSERT INTO `user` VALUES ('500', '张玉玲', '15837385123', '123456', '华龙壹号院', '路蕊');
INSERT INTO `user` VALUES ('501', '陈芳', '15837383117', '666666', '新家园二手房', '路蕊');
INSERT INTO `user` VALUES ('504', '王聪聪', '13462228304', '123456', '新乡市新瑞房产经纪有限公司原阳分公司', '');
INSERT INTO `user` VALUES ('507', '邢慧莹', '15565275656', 'x19931022', '天顺房产', '李蓝蓝');
INSERT INTO `user` VALUES ('508', '李海红', '18337325858', '123456', '翰林', '路蕊');
INSERT INTO `user` VALUES ('519', '王新燕', '18338982482', '123456', '个人', '薛康');
INSERT INTO `user` VALUES ('521', '赵涛', '18337302555', '123456', '华龙', '路蕊');
INSERT INTO `user` VALUES ('524', '吴雪', '18937350100', '123456', '华龙', '路蕊');
INSERT INTO `user` VALUES ('542', '胡邹', '18811350127', '123456789', '普华永道', '无');
INSERT INTO `user` VALUES ('548', '陈利山', '18103736219', '850905', '越兴房产', '');
INSERT INTO `user` VALUES ('549', '鲁建娜', '18937322905', '950636', '越兴房产', '黄云贞');
INSERT INTO `user` VALUES ('550', '陈利山', '18137651829', '091106', '越兴房产', '黄云贞');
INSERT INTO `user` VALUES ('551', '陈明心', '15836127070', '749472', '河南安晟祥房产中介有限公司', '金召召');
INSERT INTO `user` VALUES ('553', '曹春蕾', '13781912430', '13781912430', '卓越房产', '李蓝蓝');
INSERT INTO `user` VALUES ('554', '毛阿倩', '18530225369', 'maoaqian7519551', '卓越房产', '毛垒');
INSERT INTO `user` VALUES ('555', '张亚芳', '15560258588', 'yafang0428', '华龙壹号院', '张晨雪');
INSERT INTO `user` VALUES ('556', '尹小娟', '13569823184', '123456', '尹小娟', '张习霞');
INSERT INTO `user` VALUES ('557', '王亚轲', '13569821153', 'wyk662002', '销售', '闫娇楠');
INSERT INTO `user` VALUES ('559', '杨婧', '18790593184', '18790593184', '阳光珑府', '闫娇楠');
INSERT INTO `user` VALUES ('560', '李阳', '13460421999', '123456', '金顺房产', '薛康');
INSERT INTO `user` VALUES ('563', '马庆福', '18738376746', '123456', '有邻房产', '刘蒙');
INSERT INTO `user` VALUES ('564', '袁莹', '15136709778', '123456', '翰林', '路蕊');
INSERT INTO `user` VALUES ('565', '李雪', '15560188622', '147741', '友邻房产', '黄云贞');
INSERT INTO `user` VALUES ('568', '杨俊', '13007661101', 'yj19900306', '华龙壹号院', '李兰兰');
INSERT INTO `user` VALUES ('569', '陈宇超', '15617160166', 'chen960220', '新乡市家兴房地产经纪有限公司', '刘志洋');
INSERT INTO `user` VALUES ('570', '张建普', '18625968880', '123456', '优嘉', '刘蒙');
INSERT INTO `user` VALUES ('571', '毛鹏飞', '15893872208', '666666', '天顺二手房', '张习霞');
INSERT INTO `user` VALUES ('575', '张云', '18695917266', '519703', '原阳县荣创房地产经纪有限公司', '无');
INSERT INTO `user` VALUES ('866', '周美丽', '15903005622', '169169', '天顺', '张习霞');
