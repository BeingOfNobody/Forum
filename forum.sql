/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : forum

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2012-06-02 07:52:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `managerId` int(11) NOT NULL AUTO_INCREMENT,
  `managerName` varchar(16) NOT NULL,
  `managerPassword` varchar(12) NOT NULL,
  PRIMARY KEY (`managerId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `post`
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `postId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `matter` varchar(1000) NOT NULL,
  `postTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`postId`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('12', '1', '不要问我为什么迟到', '\r\n不要问我为什么迟到？\r\n\r\n我也不过是茫茫红尘中一粒浮尘而已，这个世界上有很多东西我无法解释！', '2009-03-23 15:16:36');
INSERT INTO `post` VALUES ('13', '1', '我是一滴远方孤星的泪水', '藏在你身上已几万年！所有你的心事都被我发现，让我温暖你的脸！\r\n', '2009-03-19 09:45:14');
INSERT INTO `post` VALUES ('14', '1', '不要问我，一生曾经恨过多少人', '    你不懂我恨有多深！\r\n哎！这是为什么呢！', '2009-03-19 10:24:01');
INSERT INTO `post` VALUES ('15', '1', '有过多少往事', '仿佛就在昨天！', '2009-03-19 10:59:54');
INSERT INTO `post` VALUES ('16', '2', '雪花飘', '雪花飘，飘起了多少爱恋。雪花飞，飞起了多少情缘。烟花开在雪中间！', '2009-03-23 15:36:24');
INSERT INTO `post` VALUES ('17', '2', '在那遥远的小山村', '在那遥远的小山村，小呀小山村！', '2009-03-23 15:35:24');
INSERT INTO `post` VALUES ('18', '1', '等了好久终于等到今天', '等了好久终于把梦实现，前途茫茫任我闯，幸亏还有你，在身旁！', '2009-03-23 15:34:10');
INSERT INTO `post` VALUES ('19', '1', '曾经年少爱追梦', '一心只想入前飞，行遍千山和万水，一路走来不能回！', '2009-03-23 15:33:24');
INSERT INTO `post` VALUES ('20', '1', '如果有一天', '如果有一天，汽车与飞机再不足够，别害怕，你拥有的，天赋的，一对双脚伴你可漫游！', '2009-03-19 17:05:26');
INSERT INTO `post` VALUES ('21', '1', '难道', '难道，出生当天我已给归类做坏人。难道，爱我会毁了你一生！', '2009-03-19 17:06:32');
INSERT INTO `post` VALUES ('22', '1', '爱火烧不尽', '爱火为你烧呀烧不尽，泪水为你一生流也流不停！', '2009-03-23 15:13:57');
INSERT INTO `post` VALUES ('23', '1', '爱你等你到最后', '虽然我知道你心中从不曾爱过我，对你没有怨尤，能够陪在你的左右，做痴心的朋友，也是一种快乐！', '2009-03-19 17:11:34');
INSERT INTO `post` VALUES ('24', '1', '给我一点时间', '给我一点时间，我可以吃光整个地球！', '2009-03-23 15:15:30');
INSERT INTO `post` VALUES ('48', '1', '我有一个梦', '我有一个梦，梦见我来生，是一个很有钱的人！', '2009-03-23 15:15:46');
INSERT INTO `post` VALUES ('50', '1', '为什么迟到的总是你', ' 今天堵车了，我上车的时候才8：29，还没到8：30上班时间。', '2009-03-20 10:16:40');
INSERT INTO `post` VALUES ('51', '1', '浪子心声', '难分真与假，人面多险诈，几许有共享荣华，檐畔水滴不分差。\r\n无知井里蛙，徒望添声价，空得意目光如麻，谁料金屋变败瓦。\r\n命里有时终须有，命里无时莫强求！\r\n雷声风雨打，何用多惊怕，心公正白璧无瑕，行善积德最乐也。\r\n命里有时终须有，命里无时莫强求！\r\n人比海里沙，何用多牵挂，君可见漫天落霞，名利息间似雾化！', '2009-03-23 16:04:16');
INSERT INTO `post` VALUES ('52', '1', '跟我两辈子', '你可否啊，跟我一辈子啊，把那昨天的恩和怨，丢进东江水啊。\r\n你可否啊，跟我一辈子啊，不再夜里空守在孤灯旁呀，跟我去个好地方！', '2009-03-23 15:29:53');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(16) NOT NULL,
  `userPassword` varchar(12) NOT NULL,
  `userEmail` varchar(100) NOT NULL,
  `userNickname` varchar(20) NOT NULL,
  `userBirthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sex` int(11) NOT NULL,
  `userPoints` int(11) NOT NULL,
  `userRemark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'xiaoqi', 'xiaoqi0101', 'xiaoqi@163.com', '小起', '1985-09-01 00:00:00', '1', '102', '为什么！');
INSERT INTO `user` VALUES ('2', 'xiaoxue', '010101', 'xiaoqi@163.com', '小雪', '1985-01-24 00:00:00', '2', '12', '雪花飘');
INSERT INTO `user` VALUES ('3', 'asdasd', 'asdasd', 'xiaoqi@163.com', 'asdasd', '2008-03-17 00:00:00', '1', '0', null);
INSERT INTO `user` VALUES ('4', 's763580682', '123456', 'zhu_x_lei@sina.com', '清风艾艾', '1988-05-10 00:00:00', '1', '0', null);
