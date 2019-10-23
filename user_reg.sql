/*
Navicat MySQL Data Transfer

Source Server         : mysql_local
Source Server Version : 80016
Source Host           : localhost:3306
Source Database       : hlmanage

Target Server Type    : MYSQL
Target Server Version : 80016
File Encoding         : 65001

Date: 2019-10-23 10:21:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_reg
-- ----------------------------
DROP TABLE IF EXISTS `user_reg`;
CREATE TABLE `user_reg` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `user_phone` varchar(15) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `user_jigou` varchar(50) DEFAULT NULL,
  `user_tjname` varchar(50) DEFAULT NULL,
  `user_regtime` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=577 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_reg
-- ----------------------------
INSERT INTO `user_reg` VALUES ('558', '江超', '16716419333', 'a123456', '个人', '闫娇楠', '2019-09-02 10:31:54.000000');
INSERT INTO `user_reg` VALUES ('561', '杜莹莹', '15893880898', '147741', '蓝天地产', '黄云贞', '2019-09-03 13:50:01.000000');
INSERT INTO `user_reg` VALUES ('562', '李媛媛', '18567567168', '123456', '华龙', '路蕊', '2019-09-06 12:07:20.000000');
INSERT INTO `user_reg` VALUES ('572', '宋四召', '18625928269', '282800', '升城地产', '蔺芳', '2019-10-04 11:30:54.000000');
INSERT INTO `user_reg` VALUES ('573', '薛婷婷', '15737356004', '15737356004', '升城地产', '梁秀娟', '2019-10-11 10:07:34.000000');
INSERT INTO `user_reg` VALUES ('576', '周美丽', '15903005622', '169169', '天顺', '张习霞', '2019-10-22 17:34:56.000000');
