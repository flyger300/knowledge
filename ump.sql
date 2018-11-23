/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50614
Source Host           : localhost:3306
Source Database       : ump

Target Server Type    : MYSQL
Target Server Version : 50614
File Encoding         : 65001

Date: 2018-02-02 15:59:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for asset
-- ----------------------------
DROP TABLE IF EXISTS `asset`;
CREATE TABLE `asset` (
  `id` varchar(32) NOT NULL,
  `asttemplate_id` varchar(32) DEFAULT NULL,
  `type` varchar(64) DEFAULT NULL,
  `serial` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `model` varchar(64) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(256) DEFAULT NULL,
  `snmp_port` varchar(256) DEFAULT NULL,
  `snmp_version` varchar(256) DEFAULT NULL,
  `snmp_community` varchar(256) DEFAULT NULL,
  `cn_name` varchar(32) DEFAULT NULL,
  `poll_interval` int(11) DEFAULT NULL,
  `mfsrmd_id` varchar(32) DEFAULT NULL,
  `collector_id` varchar(32) DEFAULT NULL,
  `system_type` varchar(64) DEFAULT NULL,
  `database_type` varchar(64) DEFAULT NULL,
  `middleware_type` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asset
-- ----------------------------
INSERT INTO `asset` VALUES ('28dd508db069456eb6f1d5aa354d4863', '07cd2b9380f848d3a7ad3929e0593028', '服务器', null, '10.1.9.100', '10.1.9.100', null, '2018-02-01 10:12:51', '', null, null, null, null, null, '', '', null, null, null);
INSERT INTO `asset` VALUES ('748f0bad2b1041138b348c51820d3414', '0bec64981b7e48b7ba8634fbd37070ec', '交换机', null, '10.10.10.1', '10.10.10.1', null, '2018-01-30 16:08:35', '', '161', 'SNMPv2', 'public', null, '300', '17', '464638dcf09e415aaa8e99733af0b0ee', null, null, null);
INSERT INTO `asset` VALUES ('9357038f39f94f548fee2f5bfebfc834', '3b5df086e80e49a4ae49dafcf9507dbf', '交换机', null, '10.10.10.3', null, null, '2017-09-29 11:18:57', 'abc', null, '2c', 'public', null, null, null, null, null, null, null);
INSERT INTO `asset` VALUES ('96b049238eea4b609b638f1b3cc5b360', '3b5df086e80e49a4ae49dafcf9507dbf', '交换机', null, '10.10.10.4', null, null, '2017-09-29 11:19:02', '交换机监控', null, 'v1', 'public', null, null, null, null, null, null, null);
INSERT INTO `asset` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '07cd2b9380f848d3a7ad3929e0593028', '服务器', null, '192.168.2.200', '192.168.2.200', null, '2018-01-30 16:05:07', '', '161', 'SNMPv2', 'public', null, null, '133', 'be249531b0304227b477db38e8e62a22', 'Linux', 'Mysql', 'Tomcat');
INSERT INTO `asset` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '07cd2b9380f848d3a7ad3929e0593028', '服务器', null, '192.168.2.2', '192.168.2.2', null, '2018-01-29 17:32:19', '', '', '', '', null, null, '', 'be249531b0304227b477db38e8e62a22', 'Windows', 'Mysql', '');
INSERT INTO `asset` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', '0bec64981b7e48b7ba8634fbd37070ec', '交换机', null, '10.10.10.9', '10.10.10.9', null, '2018-01-30 16:59:31', '', '161', 'SNMPv2', 'public', null, '300', '17', '464638dcf09e415aaa8e99733af0b0ee', null, null, null);
INSERT INTO `asset` VALUES ('d0581d95e5294b14a4a493fc1319d2f4', 'b7b286fabd36405bb0b6ccfb0614430f', '服务器', '', '网管服务器', '10.10.10.106', '', '2017-09-29 11:30:46', '', '161', '2c', 'public', null, '30', null, null, null, null, null);
INSERT INTO `asset` VALUES ('e37b241dc58c48a4b9fc29564e0bfd51', 'b7b286fabd36405bb0b6ccfb0614430f', '服务器', '', '测试服务器', '10.10.10.108', '', '2017-09-29 11:31:37', '', '161', '2c', 'public', null, '30', null, null, null, null, null);

-- ----------------------------
-- Table structure for asset_item
-- ----------------------------
DROP TABLE IF EXISTS `asset_item`;
CREATE TABLE `asset_item` (
  `asset_id` varchar(32) NOT NULL DEFAULT '',
  `item_id` varchar(32) NOT NULL DEFAULT '',
  `montemplate_id` varchar(32) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT '0',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`asset_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asset_item
-- ----------------------------
INSERT INTO `asset_item` VALUES ('748f0bad2b1041138b348c51820d3414', '062f0543587044a8a203f48a448d3eb1', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:08:52');
INSERT INTO `asset_item` VALUES ('748f0bad2b1041138b348c51820d3414', '4ad6de3d4f104d8aafe91c2dee02b402', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:08:52');
INSERT INTO `asset_item` VALUES ('748f0bad2b1041138b348c51820d3414', '66d10c458f1248d4ad766a71d84970e3', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:08:52');
INSERT INTO `asset_item` VALUES ('748f0bad2b1041138b348c51820d3414', '869ff0268b384dd2b722468f3017b3e3', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:08:52');
INSERT INTO `asset_item` VALUES ('748f0bad2b1041138b348c51820d3414', 'ae37d09c6e664e8293b2fbcc9cb175a4', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:08:52');
INSERT INTO `asset_item` VALUES ('748f0bad2b1041138b348c51820d3414', 'b6c972a63ecf49b89ed7f282fa77fa95', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:08:52');
INSERT INTO `asset_item` VALUES ('748f0bad2b1041138b348c51820d3414', 'e815e26bc8ac4e06921183d16ce1ffa7', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:08:52');
INSERT INTO `asset_item` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', '062f0543587044a8a203f48a448d3eb1', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:02:24');
INSERT INTO `asset_item` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', '4ad6de3d4f104d8aafe91c2dee02b402', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:02:24');
INSERT INTO `asset_item` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', '66d10c458f1248d4ad766a71d84970e3', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:02:24');
INSERT INTO `asset_item` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', '869ff0268b384dd2b722468f3017b3e3', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:02:24');
INSERT INTO `asset_item` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'ae37d09c6e664e8293b2fbcc9cb175a4', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:02:24');
INSERT INTO `asset_item` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'b6c972a63ecf49b89ed7f282fa77fa95', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:02:24');
INSERT INTO `asset_item` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'e815e26bc8ac4e06921183d16ce1ffa7', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:02:24');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '062f0543587044a8a203f48a448d3eba', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '4ad6de3d4f104d8aafe91c2dee02b401', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '4ca8937cd3c04265a0f8af5f1e8f67ac', '04497aa28dbe40f8995ec3e45f4ab3ae', '0', '2018-01-30 14:24:44');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '560a1b051acd45359667ac1390080285', '66537e8cc4884a2aa0441385f45b8499', '0', '2018-01-29 15:44:02');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '66d10c458f1248d4ad766a71d84970e2', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '7a1923b153b4432d8df9670d3adf621e', '66537e8cc4884a2aa0441385f45b8499', '1', '2018-01-29 15:43:59');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '869ff0268b384dd2b722468f3017b3e2', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'ae37d09c6e664e8293b2fbcc9cb175af', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'b6c972a63ecf49b89ed7f282fa77fa91', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'c093799ac1ee45d0962992959485bb93', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'c4e688644fb1462abc35c4f4a876c83b', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'd95cb815e79d47208183bfb1192855dd', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'e174d4b466f04192b1702cf3d8bd3dce', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'e815e26bc8ac4e06921183d16ce1ffa6', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'ea273fd5aeb04ae49776c603ea6f0676', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-30 14:24:32');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '062f0543587044a8a203f48a448d3eba', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '0cf71c5a647a41f78d5692bb5adedd11', 'e0f404c7c7724fcc846221aaac66adc0', '1', '2018-01-30 14:33:38');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '1000d5f5d6744bf0908a5cb5174af9e6', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '1c2b864a433e477f91fdf0ec01d89c7d', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '21f7ff37fc34425b99248d476b355825', '52b63e233cbe49f586f5aaeb4f9bad2d', '0', '2018-01-30 14:25:12');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '4a15af2666af4a99b4d3d331af15fcfe', '52b63e233cbe49f586f5aaeb4f9bad2d', '0', '2018-01-30 14:25:11');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '4ad6de3d4f104d8aafe91c2dee02b401', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '4ca8937cd3c04265a0f8af5f1e8f67ac', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '4e0a6b6fce1e43cebb0867517611e2e4', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '50d8043e13b545398a5b4bafb3f5d47d', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '52f0a2126e784c7c8c8304ed6e158ba7', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '66d10c458f1248d4ad766a71d84970e2', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '68f6bca9ccac4a88bd960ee28dc5f4bf', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '7af90d858eac4c7eb1926633640df557', 'e0f404c7c7724fcc846221aaac66adc0', '1', '2018-01-30 14:33:38');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '869ff0268b384dd2b722468f3017b3e2', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'ae37d09c6e664e8293b2fbcc9cb175af', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'b6c972a63ecf49b89ed7f282fa77fa91', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'bb3b7f6714194d1a8c033a395636bfeb', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'c093799ac1ee45d0962992959485bb93', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'c3eee52620e94613b60e138349be0861', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'c4e688644fb1462abc35c4f4a876c83b', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'c82e103fe15b4e8095548049a10c8040', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'd95cb815e79d47208183bfb1192855dd', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'dcbb6deba04d4b46a656b4f2d296e65d', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'ddd1f935ecae48b2bafba8d6b1b8df17', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'e174d4b466f04192b1702cf3d8bd3dce', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'e815e26bc8ac4e06921183d16ce1ffa6', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'ea26d614c1fa4049b4c055415d837264', '52b63e233cbe49f586f5aaeb4f9bad2d', '1', '2018-01-30 14:25:09');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'ea273fd5aeb04ae49776c603ea6f0676', '04497aa28dbe40f8995ec3e45f4ab3ae', '1', '2018-01-31 17:11:29');
INSERT INTO `asset_item` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'efbfe6751287467faf117fd444845c94', 'e0f404c7c7724fcc846221aaac66adc0', '1', '2018-01-30 14:33:38');
INSERT INTO `asset_item` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', '062f0543587044a8a203f48a448d3eb1', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:59:37');
INSERT INTO `asset_item` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', '4ad6de3d4f104d8aafe91c2dee02b402', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:59:37');
INSERT INTO `asset_item` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', '66d10c458f1248d4ad766a71d84970e3', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:59:37');
INSERT INTO `asset_item` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', '869ff0268b384dd2b722468f3017b3e3', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:59:37');
INSERT INTO `asset_item` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'ae37d09c6e664e8293b2fbcc9cb175a4', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:59:37');
INSERT INTO `asset_item` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'b6c972a63ecf49b89ed7f282fa77fa95', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:59:37');
INSERT INTO `asset_item` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'e52a3a0c596d453394714efd8019873a', '1c889a6c91c54ce48bd1f105d5800182', '1', '2018-02-01 10:05:51');
INSERT INTO `asset_item` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'e815e26bc8ac4e06921183d16ce1ffa7', '75830e1df57548eebb0fde25ab32fca7', '1', '2018-01-30 16:59:37');

-- ----------------------------
-- Table structure for asset_maintenance
-- ----------------------------
DROP TABLE IF EXISTS `asset_maintenance`;
CREATE TABLE `asset_maintenance` (
  `asset_id` varchar(32) NOT NULL,
  `maintenance_id` varchar(32) NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`asset_id`,`maintenance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asset_maintenance
-- ----------------------------
INSERT INTO `asset_maintenance` VALUES ('19d04c34b6f54a9fb7fdb5153c79bda3', '8e7acd347128449caf6c1fb2d681eabf', '2017-12-06 14:41:53');
INSERT INTO `asset_maintenance` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', '8e7acd347128449caf6c1fb2d681eabf', '2017-12-06 14:41:50');
INSERT INTO `asset_maintenance` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', '8e7acd347128449caf6c1fb2d681eabf', '2017-12-06 14:41:48');

-- ----------------------------
-- Table structure for asset_montemplate
-- ----------------------------
DROP TABLE IF EXISTS `asset_montemplate`;
CREATE TABLE `asset_montemplate` (
  `asset_id` varchar(32) NOT NULL,
  `montemplate_id` varchar(32) NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`asset_id`,`montemplate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asset_montemplate
-- ----------------------------
INSERT INTO `asset_montemplate` VALUES ('18939c6d43c943da95740e077ce0bcf2', '04497aa28dbe40f8995ec3e45f4ab3ae', '2017-12-06 14:43:06');
INSERT INTO `asset_montemplate` VALUES ('19d04c34b6f54a9fb7fdb5153c79bda3', 'e0f404c7c7724fcc846221aaac66adc0', '2017-12-05 13:29:18');
INSERT INTO `asset_montemplate` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', '04497aa28dbe40f8995ec3e45f4ab3ae', '2017-10-27 12:33:06');
INSERT INTO `asset_montemplate` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', '1c889a6c91c54ce48bd1f105d5800182', '2018-01-10 17:39:58');
INSERT INTO `asset_montemplate` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', '52b63e233cbe49f586f5aaeb4f9bad2d', '2018-01-02 17:26:26');
INSERT INTO `asset_montemplate` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', '66537e8cc4884a2aa0441385f45b8499', '2017-10-27 12:33:09');
INSERT INTO `asset_montemplate` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', '9bf4d41da08c4cb68c7f8816ad633fed', '2017-10-27 12:33:10');
INSERT INTO `asset_montemplate` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', 'e0f404c7c7724fcc846221aaac66adc0', '2017-10-27 15:18:36');
INSERT INTO `asset_montemplate` VALUES ('36', '14', '2017-07-28 14:07:52');
INSERT INTO `asset_montemplate` VALUES ('748f0bad2b1041138b348c51820d3414', '75830e1df57548eebb0fde25ab32fca7', '2018-01-30 16:08:52');
INSERT INTO `asset_montemplate` VALUES ('a843c10f57aa4ea88be0661fc2028c23', '52b63e233cbe49f586f5aaeb4f9bad2d', '2018-01-02 13:50:25');
INSERT INTO `asset_montemplate` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', '', '2017-10-24 10:19:23');
INSERT INTO `asset_montemplate` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', '75830e1df57548eebb0fde25ab32fca7', '2018-01-30 16:02:24');
INSERT INTO `asset_montemplate` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '04497aa28dbe40f8995ec3e45f4ab3ae', '2018-01-30 14:24:32');
INSERT INTO `asset_montemplate` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', '66537e8cc4884a2aa0441385f45b8499', '2018-01-29 15:43:59');
INSERT INTO `asset_montemplate` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '04497aa28dbe40f8995ec3e45f4ab3ae', '2018-01-31 17:11:29');
INSERT INTO `asset_montemplate` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', '52b63e233cbe49f586f5aaeb4f9bad2d', '2018-01-30 14:25:09');
INSERT INTO `asset_montemplate` VALUES ('c8d0c07c7d0b4f12889eddf7f51ac0de', 'e0f404c7c7724fcc846221aaac66adc0', '2018-01-30 14:33:38');
INSERT INTO `asset_montemplate` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', '1c889a6c91c54ce48bd1f105d5800182', '2018-02-01 10:05:51');
INSERT INTO `asset_montemplate` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', '75830e1df57548eebb0fde25ab32fca7', '2018-01-30 16:59:37');
INSERT INTO `asset_montemplate` VALUES ('d0581d95e5294b14a4a493fc1319d2f4', '66537e8cc4884a2aa0441385f45b8499', '2017-10-15 11:31:53');

-- ----------------------------
-- Table structure for asset_set
-- ----------------------------
DROP TABLE IF EXISTS `asset_set`;
CREATE TABLE `asset_set` (
  `id` varchar(32) NOT NULL,
  `asset_id` varchar(32) DEFAULT '',
  `method` varchar(32) DEFAULT '',
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(16) DEFAULT '0',
  `port` int(11) DEFAULT NULL,
  `community` varchar(255) DEFAULT NULL,
  `contextName` varchar(255) DEFAULT NULL,
  `contextEngine` varchar(255) DEFAULT NULL,
  `authentication` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT NULL,
  `privacyPassword` varchar(255) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asset_set
-- ----------------------------
INSERT INTO `asset_set` VALUES ('0607b961aa04436a81fe2f53906517e9', 'c8d0c07c7d0b4f12889eddf7f51ac0de', 'SNMPv2', null, null, '161', 'public', null, null, null, null, null, '2018-02-01 10:00:15');
INSERT INTO `asset_set` VALUES ('2d20e3dfba7f4f15979b2807bf1cf9c9', '748f0bad2b1041138b348c51820d3414', 'SNMPv2', null, null, '161', 'public', null, null, null, null, null, '2018-02-01 10:04:50');
INSERT INTO `asset_set` VALUES ('4989e8e41fcd42eeacfd6bbf3cfed0fa', 'ce2f3b54819e47c9a69adf782a98b8e6', 'SSH', 'root', 'root', '22', null, null, null, null, null, null, '2018-02-01 10:05:12');
INSERT INTO `asset_set` VALUES ('6c4eaaa270b943f8b69b5319a297a5cf', 'ce2f3b54819e47c9a69adf782a98b8e6', 'SNMPv2', null, null, '161', 'public', null, null, null, null, null, '2018-02-01 10:05:12');
INSERT INTO `asset_set` VALUES ('c0fbb0a8e41f4ba3b51dced3a45338a3', 'c8d0c07c7d0b4f12889eddf7f51ac0de', 'Mysql', 'root', 'root', '3306', null, null, null, null, null, null, '2018-02-01 10:00:15');

-- ----------------------------
-- Table structure for asttemplate
-- ----------------------------
DROP TABLE IF EXISTS `asttemplate`;
CREATE TABLE `asttemplate` (
  `id` varchar(32) NOT NULL,
  `pid` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `remark` varchar(256) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(2) DEFAULT NULL,
  `content` varchar(1024) DEFAULT NULL,
  `flag` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asttemplate
-- ----------------------------
INSERT INTO `asttemplate` VALUES ('07cd2b9380f848d3a7ad3929e0593028', '1', '服务器', '设备', '服务器资产模板', '2018-01-22 15:11:49', '2018-01-29 14:23:51', null, null, '0');
INSERT INTO `asttemplate` VALUES ('0bec64981b7e48b7ba8634fbd37070ec', '1', '交换机', '设备', '交换机资产模板', '2018-01-22 15:12:04', '2018-01-30 16:56:38', null, null, '0');
INSERT INTO `asttemplate` VALUES ('1', '0', '设备模板', '设备', '根模板作为所有模板的根，它包含一些基本字段', '2017-10-09 10:11:36', '2017-12-14 14:23:58', null, null, '1');
INSERT INTO `asttemplate` VALUES ('2', '0', '合同模板', '合同', null, '2017-10-26 15:54:01', '2017-12-14 14:24:03', null, null, '1');
INSERT INTO `asttemplate` VALUES ('3', '0', '人员模板', '人员', null, '2017-10-26 15:54:01', '2017-12-14 14:24:10', null, null, '1');
INSERT INTO `asttemplate` VALUES ('3b61bacffb48416f9a6f7f77233ca197', '1', '防火墙', '设备', '防火墙资产模板', '2018-01-22 15:11:38', '2018-01-30 16:56:39', null, null, '0');
INSERT INTO `asttemplate` VALUES ('9da5bbca75744fd1a9ece5597fee002c', '1', '路由器', '设备', '路由器资产模板', '2018-01-22 15:11:17', '2018-01-30 16:56:41', null, null, '0');

-- ----------------------------
-- Table structure for asttemplate_field
-- ----------------------------
DROP TABLE IF EXISTS `asttemplate_field`;
CREATE TABLE `asttemplate_field` (
  `asttemplate_id` varchar(32) NOT NULL,
  `field_id` varchar(32) NOT NULL,
  `cn_name` varchar(128) DEFAULT NULL,
  `control_type` varchar(255) DEFAULT NULL,
  `datasource_type` varchar(16) DEFAULT NULL,
  `content` varchar(512) DEFAULT NULL,
  `is_readonly` varchar(16) DEFAULT '可写',
  `is_null` varchar(16) DEFAULT '否',
  `is_show` varchar(16) DEFAULT '是',
  `default_value` varchar(512) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_number` int(3) DEFAULT NULL,
  PRIMARY KEY (`asttemplate_id`,`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of asttemplate_field
-- ----------------------------
INSERT INTO `asttemplate_field` VALUES ('07cd2b9380f848d3a7ad3929e0593028', '12db50a6a9824dd49ae706dc1475a50d', '厂商/序列/型号', '下拉树', 'sql', 'select id,parent_id parentId,name text from tree_base where type = 1 or type = 2 or type = 3', '可写', '否', '是', '', '2018-01-09 15:07:56', '3');
INSERT INTO `asttemplate_field` VALUES ('07cd2b9380f848d3a7ad3929e0593028', '2fdd3245cbd645179f6857efd7bdc2ed', '修改时间', '日期控件', null, '', '只读', '否', '是', '', '2018-01-31 16:22:28', '6');
INSERT INTO `asttemplate_field` VALUES ('07cd2b9380f848d3a7ad3929e0593028', '50e35524b99d48f2babc69c9588f2b88', '描述', '文本控件', null, '', '可写', '否', '否', '', '2018-01-31 16:22:28', '5');
INSERT INTO `asttemplate_field` VALUES ('07cd2b9380f848d3a7ad3929e0593028', '7cf9909ef4384b2bbff0d4790f4719a0', '采集机', '下拉列表', 'sql', 'select id,name text from collector', '可写', '否', '是', '', '2018-01-31 16:22:28', '4');
INSERT INTO `asttemplate_field` VALUES ('07cd2b9380f848d3a7ad3929e0593028', 'd84cf9a85f504a278506e2470a35619c', '名称', '文本控件', null, '', '可写', '是', '是', '', '2018-01-09 15:08:21', '0');
INSERT INTO `asttemplate_field` VALUES ('07cd2b9380f848d3a7ad3929e0593028', 'd9f3658de81e48d489163670d5240a56', '设备类型', '文本控件', null, '', '只读', '是', '否', '服务器', '2018-01-22 16:08:45', '1');
INSERT INTO `asttemplate_field` VALUES ('07cd2b9380f848d3a7ad3929e0593028', 'f015543e55e44830bd273361fbdca8a9', 'IP地址', '文本控件', null, '', '可写', '是', '是', '', '2018-01-09 15:07:56', '2');
INSERT INTO `asttemplate_field` VALUES ('0bec64981b7e48b7ba8634fbd37070ec', '12db50a6a9824dd49ae706dc1475a50d', '厂商/系列/型号', '下拉树', 'sql', 'select id,parent_id parentId,name text from tree_base where type = 1 or type = 2 or type = 3', '可写', '否', '是', '', '2018-01-30 16:04:05', '3');
INSERT INTO `asttemplate_field` VALUES ('0bec64981b7e48b7ba8634fbd37070ec', '2fdd3245cbd645179f6857efd7bdc2ed', '修改时间', '日期控件', null, '', '只读', '否', '是', '', '2018-01-31 16:29:53', '6');
INSERT INTO `asttemplate_field` VALUES ('0bec64981b7e48b7ba8634fbd37070ec', '50e35524b99d48f2babc69c9588f2b88', '描述', '文本控件', null, '', '可写', '否', '是', '', '2018-01-31 16:29:53', '5');
INSERT INTO `asttemplate_field` VALUES ('0bec64981b7e48b7ba8634fbd37070ec', '7cf9909ef4384b2bbff0d4790f4719a0', '采集机', '下拉列表', 'sql', 'select id,name text from collector', '可写', '否', '是', '', '2018-01-31 16:29:53', '4');
INSERT INTO `asttemplate_field` VALUES ('0bec64981b7e48b7ba8634fbd37070ec', 'd84cf9a85f504a278506e2470a35619c', '名称', '文本控件', null, '', '可写', '是', '是', '', '2018-01-30 16:04:05', '1');
INSERT INTO `asttemplate_field` VALUES ('0bec64981b7e48b7ba8634fbd37070ec', 'd9f3658de81e48d489163670d5240a56', '设备类型', '文本控件', null, '', '只读', '否', '否', '交换机', '2018-01-30 16:07:20', '0');
INSERT INTO `asttemplate_field` VALUES ('0bec64981b7e48b7ba8634fbd37070ec', 'f015543e55e44830bd273361fbdca8a9', 'IP地址', '文本控件', null, '', '可写', '是', '是', '', '2018-01-30 16:04:05', '2');
INSERT INTO `asttemplate_field` VALUES ('1', '12db50a6a9824dd49ae706dc1475a50d', '厂商/系列/型号', '下拉树', 'sql', 'select id,parent_id parentId,name text from tree_base where type = 1 or type = 2 or type = 3', null, '否', '是', '', '2017-10-26 15:49:01', '2');
INSERT INTO `asttemplate_field` VALUES ('1', '2fdd3245cbd645179f6857efd7bdc2ed', '修改时间', '时间控件', null, '', '只读', '是', '是', '', '2017-10-26 15:47:58', '5');
INSERT INTO `asttemplate_field` VALUES ('1', '50e35524b99d48f2babc69c9588f2b88', '描述', '文本控件', null, '', null, '否', '是', '', '2017-10-26 15:48:21', '4');
INSERT INTO `asttemplate_field` VALUES ('1', '7cf9909ef4384b2bbff0d4790f4719a0', '采集机', '下拉列表', 'sql', 'select id,name text from collector', null, '否', '是', '', '2017-10-26 15:48:38', '3');
INSERT INTO `asttemplate_field` VALUES ('1', 'd84cf9a85f504a278506e2470a35619c', '名称', '文本控件', null, '', null, '是', '是', '', '2017-10-26 15:48:10', '0');
INSERT INTO `asttemplate_field` VALUES ('1', 'f015543e55e44830bd273361fbdca8a9', 'IP地址', '文本控件', null, '', null, '否', '是', '', '2017-10-26 15:49:09', '1');
INSERT INTO `asttemplate_field` VALUES ('2', '0ada44bbcedb40cc9f17b54fb8bb13ed', '数据库类型', '文本控件', null, '', null, null, '是', '', '2018-01-09 14:44:49', '2');
INSERT INTO `asttemplate_field` VALUES ('2', '2fdd3245cbd645179f6857efd7bdc2ed', '最后修改时间', '文本控件', null, '', null, null, '是', '', '2018-01-09 14:44:49', '3');
INSERT INTO `asttemplate_field` VALUES ('2', '7fbf319339024bca804194397f7ad4ee', null, null, null, null, null, null, '是', null, '2018-01-09 14:44:49', '0');
INSERT INTO `asttemplate_field` VALUES ('2', 'd84cf9a85f504a278506e2470a35619a', null, null, null, null, null, null, '是', null, '2018-01-09 14:44:49', '1');
INSERT INTO `asttemplate_field` VALUES ('3b61bacffb48416f9a6f7f77233ca197', '12db50a6a9824dd49ae706dc1475a50d', '厂商/系列/型号', null, null, null, null, '否', '是', '', '2018-01-31 16:31:29', '3');
INSERT INTO `asttemplate_field` VALUES ('3b61bacffb48416f9a6f7f77233ca197', '2fdd3245cbd645179f6857efd7bdc2ed', '修改时间', null, null, null, null, '是', '是', '', '2018-01-31 16:31:29', '6');
INSERT INTO `asttemplate_field` VALUES ('3b61bacffb48416f9a6f7f77233ca197', '50e35524b99d48f2babc69c9588f2b88', '描述', null, null, null, null, '否', '是', '', '2018-01-31 16:31:29', '5');
INSERT INTO `asttemplate_field` VALUES ('3b61bacffb48416f9a6f7f77233ca197', '7cf9909ef4384b2bbff0d4790f4719a0', '采集机', null, null, null, null, '否', '是', '', '2018-01-31 16:31:29', '4');
INSERT INTO `asttemplate_field` VALUES ('3b61bacffb48416f9a6f7f77233ca197', 'd84cf9a85f504a278506e2470a35619c', '名称', null, null, null, null, '是', '是', '', '2018-01-31 16:31:29', '0');
INSERT INTO `asttemplate_field` VALUES ('3b61bacffb48416f9a6f7f77233ca197', 'd9f3658de81e48d489163670d5240a56', '设备类型', '文本控件', null, '', '只读', '是', '否', '防火墙', '2018-01-31 16:31:29', '2');
INSERT INTO `asttemplate_field` VALUES ('3b61bacffb48416f9a6f7f77233ca197', 'f015543e55e44830bd273361fbdca8a9', 'IP地址', null, null, null, null, '否', '是', '', '2018-01-31 16:31:29', '1');
INSERT INTO `asttemplate_field` VALUES ('9da5bbca75744fd1a9ece5597fee002c', '12db50a6a9824dd49ae706dc1475a50d', '厂商/系列/型号', null, null, null, null, '否', '是', '', '2018-01-22 15:11:17', null);
INSERT INTO `asttemplate_field` VALUES ('9da5bbca75744fd1a9ece5597fee002c', '2fdd3245cbd645179f6857efd7bdc2ed', '修改时间', null, null, null, null, '是', '是', '', '2018-01-22 15:11:17', null);
INSERT INTO `asttemplate_field` VALUES ('9da5bbca75744fd1a9ece5597fee002c', '50e35524b99d48f2babc69c9588f2b88', '描述', null, null, null, null, '否', '是', '', '2018-01-22 15:11:17', null);
INSERT INTO `asttemplate_field` VALUES ('9da5bbca75744fd1a9ece5597fee002c', '7cf9909ef4384b2bbff0d4790f4719a0', '采集机', null, null, null, null, '否', '是', '', '2018-01-22 15:11:17', null);
INSERT INTO `asttemplate_field` VALUES ('9da5bbca75744fd1a9ece5597fee002c', 'd84cf9a85f504a278506e2470a35619c', '名称', null, null, null, null, '是', '是', '', '2018-01-22 15:11:17', null);
INSERT INTO `asttemplate_field` VALUES ('9da5bbca75744fd1a9ece5597fee002c', 'f015543e55e44830bd273361fbdca8a9', 'IP地址', null, null, null, null, '否', '是', '', '2018-01-22 15:11:17', null);

-- ----------------------------
-- Table structure for button
-- ----------------------------
DROP TABLE IF EXISTS `button`;
CREATE TABLE `button` (
  `id` varchar(32) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `menu_id` varchar(32) DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of button
-- ----------------------------

-- ----------------------------
-- Table structure for collector
-- ----------------------------
DROP TABLE IF EXISTS `collector`;
CREATE TABLE `collector` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `sftp_user` varchar(64) DEFAULT NULL,
  `sftp_pass` varchar(64) DEFAULT NULL,
  `sftp_port` int(8) DEFAULT NULL,
  `fams_user` varchar(64) DEFAULT NULL,
  `fams_pass` varchar(64) DEFAULT NULL,
  `fams_port` int(8) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collector
-- ----------------------------
INSERT INTO `collector` VALUES ('464638dcf09e415aaa8e99733af0b0ee', '10.1.9.100', '10.1.9.100', null, null, null, 'root', 'VqSiuxkwohgoWDMWDKVw51', '6500', '', '2018-01-30 16:12:00');
INSERT INTO `collector` VALUES ('be249531b0304227b477db38e8e62a22', '192.168.2.200', '192.168.2.200', null, null, null, 'root', 'VqSiuxkwohgoWDMWDKVw51', '6500', '', '2018-01-30 11:41:11');

-- ----------------------------
-- Table structure for dashboard
-- ----------------------------
DROP TABLE IF EXISTS `dashboard`;
CREATE TABLE `dashboard` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `content` text,
  `creator_id` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dashboard
-- ----------------------------
INSERT INTO `dashboard` VALUES ('d3dfb303a57b47deb549dcaf3e9a7f2a', '大屏B', '', null, '', '2017-11-12 14:47:17');

-- ----------------------------
-- Table structure for event_key
-- ----------------------------
DROP TABLE IF EXISTS `event_key`;
CREATE TABLE `event_key` (
  `name` varchar(128) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `order_num` int(3) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of event_key
-- ----------------------------
INSERT INTO `event_key` VALUES ('node', null, null, '2017-12-21 10:45:59');
INSERT INTO `event_key` VALUES ('summary', null, null, '2017-12-20 17:05:50');

-- ----------------------------
-- Table structure for field
-- ----------------------------
DROP TABLE IF EXISTS `field`;
CREATE TABLE `field` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `length` int(16) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` varchar(1) DEFAULT '2',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fieldname` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of field
-- ----------------------------
INSERT INTO `field` VALUES ('0ada44bbcedb40cc9f17b54fb8bb13ed', 'database_type', 'varchar', '64', '2018-01-09 11:30:52', null);
INSERT INTO `field` VALUES ('12db50a6a9824dd49ae706dc1475a50d', 'mfsrmd_id', 'varchar', '32', '2017-10-25 12:43:41', '1');
INSERT INTO `field` VALUES ('158024793e504930822ee9389a38e36d', 'poll_interval', 'varchar', '256', '2017-10-11 09:24:11', '2');
INSERT INTO `field` VALUES ('1ab49e5f83e64221b1e54614cc4749ad', 'snmp_port', 'varchar', '256', '2017-10-11 09:24:14', '2');
INSERT INTO `field` VALUES ('205359eafa3647559098351b67ce82ed', 'snmp_community', 'varchar', '256', '2017-10-11 09:24:17', '2');
INSERT INTO `field` VALUES ('2fdd3245cbd645179f6857efd7bdc2ed', 'modify_time', 'varchar', '256', '2017-10-25 12:44:20', '1');
INSERT INTO `field` VALUES ('421328e33a534294baefc86cf98e9e60', 'system_type', 'varchar', '64', '2018-01-09 11:29:48', null);
INSERT INTO `field` VALUES ('50e35524b99d48f2babc69c9588f2b88', 'remark', 'varchar', '256', '2017-10-26 15:28:12', '1');
INSERT INTO `field` VALUES ('6d3daac188864126812d4e5b607257f3', 'middleware_type', 'varchar', '64', '2018-01-09 11:31:43', null);
INSERT INTO `field` VALUES ('7cf9909ef4384b2bbff0d4790f4719a0', 'collector_id', 'varchar', '32', '2017-10-25 12:44:02', '1');
INSERT INTO `field` VALUES ('7fbf319339024bca804194397f7ad4ee', 'snmp_version', 'varchar', '256', '2017-10-11 09:24:27', '2');
INSERT INTO `field` VALUES ('d84cf9a85f504a278506e2470a35619a', 'serial', 'varchar', '32', '2014-12-05 01:57:57', '1');
INSERT INTO `field` VALUES ('d84cf9a85f504a278506e2470a35619b', 'model', 'varchar', '32', '2017-10-26 15:28:09', '2');
INSERT INTO `field` VALUES ('d84cf9a85f504a278506e2470a35619c', 'name', 'varchar', '32', '2014-12-05 01:57:57', '1');
INSERT INTO `field` VALUES ('d9f3658de81e48d489163670d5240a56', 'type', 'varchar', '64', '2017-10-26 15:27:55', '2');
INSERT INTO `field` VALUES ('db4fcfc6de304f7184beb0020a66730e', 'node', 'varchar', '32', '2017-10-11 09:24:33', '2');
INSERT INTO `field` VALUES ('f015543e55e44830bd273361fbdca8a9', 'ip', 'varchar', '32', '2017-10-25 12:46:16', '1');

-- ----------------------------
-- Table structure for graph
-- ----------------------------
DROP TABLE IF EXISTS `graph`;
CREATE TABLE `graph` (
  `id` varchar(32) NOT NULL,
  `name` varchar(128) DEFAULT '',
  `yaxismin` double(16,4) DEFAULT '0.0000',
  `yaxismax` double(16,4) DEFAULT '100.0000',
  `montemplate_id` varchar(32) DEFAULT NULL,
  `type` varchar(64) DEFAULT '0',
  `show_legend` int(11) DEFAULT '1',
  `percent_left` double(16,4) DEFAULT '0.0000',
  `percent_right` double(16,4) DEFAULT '0.0000',
  `ymin_type` int(11) DEFAULT '0',
  `ymax_type` int(11) DEFAULT '0',
  `ymin_itemid` varchar(32) DEFAULT NULL,
  `ymax_itemid` varchar(32) DEFAULT NULL,
  `modify_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of graph
-- ----------------------------
INSERT INTO `graph` VALUES ('030742ae9ba84e8e9d980e3893ba8a00', '进出丢包率', null, null, '75830e1df57548eebb0fde25ab32fca7', '折线', null, null, null, null, null, null, null, '2018-01-30 16:50:37');
INSERT INTO `graph` VALUES ('2890aea68aaf4f83b33a3c410f7beb7c', '进出流量率', null, null, '75830e1df57548eebb0fde25ab32fca7', '折线', null, null, null, null, null, null, null, '2018-01-30 16:47:54');
INSERT INTO `graph` VALUES ('4dbaf1eade6141759eb0acf78d422cf3', '响应时延', null, null, 'e0f404c7c7724fcc846221aaac66adc0', '折线', null, null, null, null, null, null, null, '2018-01-30 14:33:03');
INSERT INTO `graph` VALUES ('5185b3aa4e7e49a995fe31ae73566015', '内存使用率', null, null, '04497aa28dbe40f8995ec3e45f4ab3ae', '折线', null, null, null, null, null, null, null, '2018-01-30 14:31:01');
INSERT INTO `graph` VALUES ('58a2f3c527ef43ea88438d87696d3b37', 'Cpu使用率', null, null, '04497aa28dbe40f8995ec3e45f4ab3ae', '折线', null, null, null, null, null, null, null, '2018-01-30 14:30:45');
INSERT INTO `graph` VALUES ('909edde75d034192a442bc3c2b1095e3', '进出流量率', null, null, '04497aa28dbe40f8995ec3e45f4ab3ae', '折线', null, null, null, null, null, null, null, '2018-01-30 14:31:41');
INSERT INTO `graph` VALUES ('9a20e40e5c254e7da5450c01c84f2138', '进出错报率', null, null, '75830e1df57548eebb0fde25ab32fca7', '折线', null, null, null, null, null, null, null, '2018-01-30 16:50:26');

-- ----------------------------
-- Table structure for graph_item
-- ----------------------------
DROP TABLE IF EXISTS `graph_item`;
CREATE TABLE `graph_item` (
  `graph_id` varchar(32) NOT NULL,
  `item_id` varchar(32) NOT NULL DEFAULT '',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`graph_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of graph_item
-- ----------------------------
INSERT INTO `graph_item` VALUES ('030742ae9ba84e8e9d980e3893ba8a00', '062f0543587044a8a203f48a448d3eb1', '2018-01-30 16:50:37');
INSERT INTO `graph_item` VALUES ('030742ae9ba84e8e9d980e3893ba8a00', '4ad6de3d4f104d8aafe91c2dee02b402', '2018-01-30 16:50:37');
INSERT INTO `graph_item` VALUES ('2890aea68aaf4f83b33a3c410f7beb7c', '869ff0268b384dd2b722468f3017b3e3', '2018-01-30 16:47:54');
INSERT INTO `graph_item` VALUES ('2890aea68aaf4f83b33a3c410f7beb7c', 'e815e26bc8ac4e06921183d16ce1ffa7', '2018-01-30 16:47:54');
INSERT INTO `graph_item` VALUES ('4dbaf1eade6141759eb0acf78d422cf3', '0cf71c5a647a41f78d5692bb5adedd11', '2018-01-30 14:33:03');
INSERT INTO `graph_item` VALUES ('4dbaf1eade6141759eb0acf78d422cf3', '7af90d858eac4c7eb1926633640df557', '2018-01-30 14:33:03');
INSERT INTO `graph_item` VALUES ('4dbaf1eade6141759eb0acf78d422cf3', 'efbfe6751287467faf117fd444845c94', '2018-01-30 14:33:03');
INSERT INTO `graph_item` VALUES ('5185b3aa4e7e49a995fe31ae73566015', 'e174d4b466f04192b1702cf3d8bd3dce', '2018-01-30 14:31:01');
INSERT INTO `graph_item` VALUES ('58a2f3c527ef43ea88438d87696d3b37', 'ea273fd5aeb04ae49776c603ea6f0676', '2018-01-30 14:30:45');
INSERT INTO `graph_item` VALUES ('909edde75d034192a442bc3c2b1095e3', '869ff0268b384dd2b722468f3017b3e2', '2018-01-30 14:31:41');
INSERT INTO `graph_item` VALUES ('909edde75d034192a442bc3c2b1095e3', 'e815e26bc8ac4e06921183d16ce1ffa6', '2018-01-30 14:31:41');
INSERT INTO `graph_item` VALUES ('9a20e40e5c254e7da5450c01c84f2138', '66d10c458f1248d4ad766a71d84970e3', '2018-01-30 16:50:26');
INSERT INTO `graph_item` VALUES ('9a20e40e5c254e7da5450c01c84f2138', 'ae37d09c6e664e8293b2fbcc9cb175a4', '2018-01-30 16:50:26');

-- ----------------------------
-- Table structure for interface
-- ----------------------------
DROP TABLE IF EXISTS `interface`;
CREATE TABLE `interface` (
  `asset_id` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `status` varchar(16) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `is_monitor` int(2) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ifindex` varchar(32) NOT NULL,
  PRIMARY KEY (`name`,`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of interface
-- ----------------------------
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', '10/100 utp ethernet (cat 3/5)', '10.10.10.2', null, null, '0', '2017-10-24 17:20:29', '98');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'aggregated interface', '10.10.10.2', null, null, null, '2017-10-17 17:22:21', '258');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Control Plane Interface', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '101');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Control Plane Interface', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '101');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'EOBC0/0', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '59');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'EOBC0/0', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '59');
INSERT INTO `interface` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', 'eth0', '192.168.2.200', null, null, '1', '2017-10-19 11:32:37', '2');
INSERT INTO `interface` VALUES ('28dd508db069456eb6f1d5aa354d4863', 'eth0', '10.1.9.100', null, null, null, '2018-02-01 10:37:58', '2');
INSERT INTO `interface` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'eth0', '192.168.2.200', null, null, '1', '2018-01-29 11:45:14', '2');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/1', '10.10.10.9', null, null, '1', '2017-10-24 10:19:47', '1');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/1', '10.10.10.9', null, null, null, '2018-01-30 16:59:41', '1');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/10', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '10');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/10', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '10');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/11', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '11');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/11', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '11');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/12', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '12');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/12', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '12');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/13', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '13');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/13', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '13');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/14', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '14');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/14', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '14');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/15', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '15');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/15', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '15');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/16', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '16');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/16', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '16');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/17', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '17');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/17', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '17');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/18', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '18');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/18', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '18');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/19', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '19');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/19', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '19');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/2', '10.10.10.9', null, null, '1', '2017-10-24 10:19:48', '2');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/2', '10.10.10.9', null, null, null, '2018-01-30 16:59:41', '2');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/20', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '20');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/20', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '20');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/21', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '21');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/21', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '21');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/22', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '22');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/22', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '22');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/23', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '23');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/23', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '23');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/24', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '24');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/24', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '24');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/25', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '25');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/25', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '25');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/26', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '26');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/26', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '26');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/27', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '27');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/27', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '27');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/28', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '28');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/28', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '28');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/29', '10.10.10.9', null, null, null, '2017-10-24 09:50:13', '29');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/29', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '29');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/3', '10.10.10.9', null, null, null, '2017-10-24 09:50:11', '3');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/3', '10.10.10.9', null, null, null, '2018-01-30 16:59:41', '3');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/30', '10.10.10.9', null, null, null, '2017-10-24 09:50:14', '30');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/30', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '30');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/31', '10.10.10.9', null, null, null, '2017-10-24 09:50:14', '31');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/31', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '31');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/32', '10.10.10.9', null, null, null, '2017-10-24 09:50:14', '32');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/32', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '32');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/33', '10.10.10.9', null, null, null, '2017-10-24 09:50:14', '33');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/33', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '33');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/34', '10.10.10.9', null, null, null, '2017-10-24 09:50:14', '34');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/34', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '34');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/35', '10.10.10.9', null, null, null, '2017-10-24 09:50:14', '35');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/35', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '35');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/36', '10.10.10.9', null, null, null, '2017-10-24 09:50:14', '36');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/36', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '36');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/37', '10.10.10.9', null, null, null, '2017-10-24 09:50:15', '37');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/37', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '37');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/38', '10.10.10.9', null, null, null, '2017-10-24 09:50:15', '38');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/38', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '38');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/39', '10.10.10.9', null, null, null, '2017-10-24 09:50:15', '39');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/39', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '39');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/4', '10.10.10.9', null, null, null, '2017-10-24 09:50:11', '4');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/4', '10.10.10.9', null, null, null, '2018-01-30 16:59:41', '4');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/40', '10.10.10.9', null, null, null, '2017-10-24 09:50:15', '40');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/40', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '40');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/41', '10.10.10.9', null, null, null, '2017-10-24 09:50:15', '41');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/41', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '41');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/42', '10.10.10.9', null, null, null, '2017-10-24 09:50:15', '42');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/42', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '42');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/43', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '43');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/43', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '43');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/44', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '44');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/44', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '44');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/45', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '45');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/45', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '45');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/46', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '46');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/46', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '46');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/47', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '47');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/47', '10.10.10.9', null, null, '0', '2018-01-30 16:59:52', '47');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/48', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '48');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/48', '10.10.10.9', null, null, '1', '2018-01-30 16:59:48', '48');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/5', '10.10.10.9', null, null, '1', '2017-10-24 10:19:49', '5');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/5', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '5');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/6', '10.10.10.9', null, null, null, '2017-10-24 09:50:11', '6');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/6', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '6');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/7', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '7');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/7', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '7');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/8', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '8');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/8', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '8');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'FastEthernet0/9', '10.10.10.9', null, null, null, '2017-10-24 09:50:12', '9');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'FastEthernet0/9', '10.10.10.9', null, null, null, '2018-01-30 16:59:42', '9');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'gigabit ethernet without GBIC installed', '10.10.10.2', null, null, null, '2017-10-17 17:22:14', '66');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'GigabitEthernet0/1', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '49');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'GigabitEthernet0/1', '10.10.10.9', null, null, '1', '2018-01-30 16:59:51', '49');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'GigabitEthernet0/2', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '50');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'GigabitEthernet0/2', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '50');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/1', '10.10.10.1', null, null, '1', '2018-01-30 16:09:32', '1');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/1', '10.10.10.1', null, null, '1', '2017-10-24 10:19:54', '1');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/10', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '10');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/10', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '10');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/11', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '11');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/11', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '11');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/12', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '12');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/12', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '12');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/13', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '13');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/13', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '13');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/14', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '14');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/14', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '14');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/15', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '15');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/15', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '15');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/16', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '16');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/16', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '16');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/17', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '17');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/17', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '17');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/18', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '18');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/18', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '18');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/19', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '19');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/19', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '19');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/2', '10.10.10.1', null, null, '1', '2018-01-30 16:09:33', '2');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/2', '10.10.10.1', null, null, '1', '2017-10-24 10:19:55', '2');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/20', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '20');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/20', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '20');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/21', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '21');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/21', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '21');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/22', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '22');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/22', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '22');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/23', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '23');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/23', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '23');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/24', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '24');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/24', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '24');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/25', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '25');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/25', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '25');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/26', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '26');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/26', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '26');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/27', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '27');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/27', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '27');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/28', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '28');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/28', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '28');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/29', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '29');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/29', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '29');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/3', '10.10.10.1', null, null, '1', '2018-01-30 16:09:37', '3');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/3', '10.10.10.1', null, null, '1', '2017-10-24 10:19:55', '3');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/30', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '30');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/30', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '30');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/31', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '31');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/31', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '31');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/32', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '32');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/32', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '32');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/33', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '33');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/33', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '33');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/34', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '34');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/34', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '34');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/35', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '35');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/35', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '35');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/36', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '36');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/36', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '36');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/37', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '37');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/37', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '37');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/38', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '38');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/38', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '38');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/39', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '39');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/39', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '39');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/4', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '4');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/4', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '4');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/40', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '40');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/40', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '40');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/41', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '41');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/41', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '41');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/42', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '42');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/42', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '42');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/43', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '43');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/43', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '43');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/44', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '44');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/44', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '44');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/45', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '45');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/45', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '45');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/46', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '46');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/46', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '46');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/47', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '47');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/47', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '47');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/48', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '48');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/48', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '48');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/5', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '5');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/5', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '5');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/6', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '6');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/6', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '6');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/7', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '7');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/7', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '7');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/8', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '8');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/8', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '8');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet2/9', '10.10.10.1', null, null, null, '2018-01-30 16:09:06', '9');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet2/9', '10.10.10.1', null, null, null, '2017-10-24 09:49:12', '9');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/1', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '49');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/1', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '49');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/2', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '50');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/2', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '50');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/3', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '51');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/3', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '51');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/4', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '52');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/4', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '52');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/5', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '53');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/5', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '53');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/6', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '54');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/6', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '54');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/7', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '55');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/7', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '55');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/8', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '56');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/8', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '56');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'GigabitEthernet5/9', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '57');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'GigabitEthernet5/9', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '57');
INSERT INTO `interface` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', 'lo', '192.168.2.200', null, null, null, '2017-10-17 12:59:48', '1');
INSERT INTO `interface` VALUES ('28dd508db069456eb6f1d5aa354d4863', 'lo', '10.1.9.100', null, null, null, '2018-02-01 10:37:58', '1');
INSERT INTO `interface` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'lo', '192.168.2.200', null, null, null, '2018-01-29 11:45:10', '1');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'me1', '10.10.10.2', null, null, '1', '2017-10-24 17:24:45', '3');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Null0', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '60');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'Null0', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '51');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'Null0', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '51');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Null0', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '60');
INSERT INTO `interface` VALUES ('20534ab88997471ea1f6e5a554bdf4e1', 'pan0', '192.168.2.200', null, null, null, '2017-10-17 12:59:48', '3');
INSERT INTO `interface` VALUES ('bcdbb95bd40549ceb2b089afe77b47ba', 'pan0', '192.168.2.200', null, null, null, '2018-01-29 11:45:10', '3');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Port-channel1', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '63');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'Port-channel1', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '53');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'Port-channel1', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '53');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Port-channel1', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '63');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'Port-channel2', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '54');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'Port-channel2', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '54');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Port-channel36', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '64');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Port-channel36', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '64');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'sc0', '10.10.10.2', null, null, '1', '2017-10-24 10:19:41', '1');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'short wave fiber gigabit ethernet', '10.10.10.2', null, null, null, '2017-10-17 17:22:10', '5');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'sl0', '10.10.10.2', null, null, '1', '2017-10-24 17:24:44', '2');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'SPAN RP Interface', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '61');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'SPAN RP Interface', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '61');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'SPAN SP Interface', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '62');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'SPAN SP Interface', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '62');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 1', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '102');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 1', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '102');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 10', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '125');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 10', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '125');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 1002', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '103');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 1002', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '103');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 1003', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '106');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 1003', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '106');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 1004', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '104');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 1004', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '104');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 1005', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '105');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 1005', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '105');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 102', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '107');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 102', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '107');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 103', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '108');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 103', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '108');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 104', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '109');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 104', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '109');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 105', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '110');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 105', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '110');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 106', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '131');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 106', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '131');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 11', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '126');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 11', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '126');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 110', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '111');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 110', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '111');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 12', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '127');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 12', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '127');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 120', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '112');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 120', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '112');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 130', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '113');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 130', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '113');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 140', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '114');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 140', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '114');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 150', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '115');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 150', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '115');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 160', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '116');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 160', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '116');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 168', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '132');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 168', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '132');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 169', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '133');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 169', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '133');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 170', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '117');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 170', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '117');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 180', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '118');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 180', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '118');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 190', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '119');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 190', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '119');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 2', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '121');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 2', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '121');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 207', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '134');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 207', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '134');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 208', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '135');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 208', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '135');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 209', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '136');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 209', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '136');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 21', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '128');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 21', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '128');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 210', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '120');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 210', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '120');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 212', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '137');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 212', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '137');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 213', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '138');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 213', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '138');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 214', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '139');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 214', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '139');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 215', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '140');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 215', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '140');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 216', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '141');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 216', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '141');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 220', '10.10.10.1', null, null, null, '2018-01-30 16:09:10', '142');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 220', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '142');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 222', '10.10.10.1', null, null, null, '2018-01-30 16:09:10', '143');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 222', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '143');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 3', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '122');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 3', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '122');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 31', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '129');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 31', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '129');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 32', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '130');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 32', '10.10.10.1', null, null, null, '2017-10-24 09:49:17', '130');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 8', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '123');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 8', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '123');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'unrouted VLAN 9', '10.10.10.1', null, null, null, '2018-01-30 16:09:09', '124');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'unrouted VLAN 9', '10.10.10.1', null, null, null, '2017-10-24 09:49:16', '124');
INSERT INTO `interface` VALUES ('28dd508db069456eb6f1d5aa354d4863', 'virbr0', '10.1.9.100', null, null, null, '2018-02-01 10:37:58', '3');
INSERT INTO `interface` VALUES ('28dd508db069456eb6f1d5aa354d4863', 'virbr0-nic', '10.1.9.100', null, null, null, '2018-02-01 10:37:58', '4');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 1', '10.10.10.2', null, null, '1', '2017-10-24 17:24:47', '6');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 10', '10.10.10.2', null, null, '0', '2017-10-24 17:20:28', '190');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 1002', '10.10.10.2', null, null, '1', '2017-10-25 14:40:21', '7');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 1003', '10.10.10.2', null, null, null, '2017-10-17 17:22:11', '10');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 1004', '10.10.10.2', null, null, '1', '2017-10-25 14:40:22', '8');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 1005', '10.10.10.2', null, null, null, '2017-10-17 17:22:11', '9');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 102', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '207');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 103', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '204');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 104', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '205');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 105', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '206');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 106', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '249');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 11', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '217');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 110', '10.10.10.2', null, null, '0', '2017-10-24 17:20:28', '157');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 12', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '250');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 120', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '196');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 130', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '197');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 140', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '198');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 150', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '199');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 160', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '200');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 168', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '255');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 169', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '256');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 170', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '201');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 180', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '202');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 190', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '203');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 2', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '209');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 207', '10.10.10.2', null, null, '0', '2017-10-24 17:20:27', '191');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 208', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '192');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 209', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '193');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 21', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '218');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 210', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '194');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 212', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '241');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 213', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '242');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 214', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '243');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 215', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '244');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 216', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '245');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 220', '10.10.10.2', null, null, null, '2017-10-17 17:22:18', '195');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 222', '10.10.10.2', null, null, null, '2017-10-17 17:22:20', '252');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 3', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '208');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 31', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '239');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 32', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '240');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 8', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '212');
INSERT INTO `interface` VALUES ('b95f10dc5a954ec49b1b457d57bf02eb', 'VLAN 9', '10.10.10.2', null, null, null, '2017-10-17 17:22:19', '216');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan1', '10.10.10.1', null, null, null, '2018-01-30 16:09:07', '58');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'Vlan1', '10.10.10.9', null, null, null, '2017-10-24 09:50:16', '52');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'Vlan1', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '52');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan1', '10.10.10.1', null, null, null, '2017-10-24 09:49:13', '58');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan10', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '69');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan10', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '69');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan101', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '75');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan101', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '75');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan102', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '76');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan102', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '76');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan103', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '77');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan103', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '77');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan104', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '78');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan104', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '78');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan105', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '79');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan105', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '79');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan106', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '80');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan106', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '80');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan11', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '70');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan11', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '70');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan110', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '81');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan110', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '81');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan12', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '71');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan12', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '71');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan120', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '82');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan120', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '82');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan130', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '83');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan130', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '83');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan140', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '84');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan140', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '84');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan150', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '85');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan150', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '85');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan160', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '86');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan160', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '86');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan170', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '87');
INSERT INTO `interface` VALUES ('7f0b0e8285214a2c84bd124d8f1244f7', 'Vlan170', '10.10.10.9', null, null, null, '2017-10-24 09:50:17', '55');
INSERT INTO `interface` VALUES ('ce2f3b54819e47c9a69adf782a98b8e6', 'Vlan170', '10.10.10.9', null, null, null, '2018-01-30 16:59:43', '55');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan170', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '87');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan180', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '88');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan180', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '88');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan190', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '89');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan190', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '89');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan2', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '65');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan2', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '65');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan207', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '90');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan207', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '90');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan208', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '91');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan208', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '91');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan209', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '92');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan209', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '92');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan21', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '72');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan21', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '72');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan210', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '93');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan210', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '93');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan212', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '94');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan212', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '94');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan213', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '95');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan213', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '95');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan214', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '96');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan214', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '96');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan215', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '97');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan215', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '97');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan216', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '98');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan216', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '98');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan220', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '99');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan220', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '99');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan222', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '100');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan222', '10.10.10.1', null, null, null, '2017-10-24 09:49:15', '100');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan3', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '66');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan3', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '66');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan31', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '73');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan31', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '73');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan32', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '74');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan32', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '74');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan8', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '67');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan8', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '67');
INSERT INTO `interface` VALUES ('748f0bad2b1041138b348c51820d3414', 'Vlan9', '10.10.10.1', null, null, null, '2018-01-30 16:09:08', '68');
INSERT INTO `interface` VALUES ('f0485c7b1bca4715a2112ab90106f66d', 'Vlan9', '10.10.10.1', null, null, null, '2017-10-24 09:49:14', '68');

-- ----------------------------
-- Table structure for item_original
-- ----------------------------
DROP TABLE IF EXISTS `item_original`;
CREATE TABLE `item_original` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` bigint(20) NOT NULL,
  `original_id` bigint(20) NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_original
-- ----------------------------
INSERT INTO `item_original` VALUES ('46', '46', '45', '2017-07-28 15:16:52');
INSERT INTO `item_original` VALUES ('47', '46', '37', '2017-07-28 15:17:43');
INSERT INTO `item_original` VALUES ('48', '45', '38', '2017-07-28 15:23:10');
INSERT INTO `item_original` VALUES ('49', '45', '37', '2017-07-28 15:23:18');
INSERT INTO `item_original` VALUES ('54', '60', '39', '2017-07-28 17:26:56');
INSERT INTO `item_original` VALUES ('55', '60', '37', '2017-07-28 17:26:56');

-- ----------------------------
-- Table structure for item_threshold
-- ----------------------------
DROP TABLE IF EXISTS `item_threshold`;
CREATE TABLE `item_threshold` (
  `id` varchar(32) NOT NULL,
  `item_id` varchar(32) NOT NULL,
  `expression` varchar(512) NOT NULL,
  `severity` int(2) NOT NULL DEFAULT '0',
  `status` varchar(16) DEFAULT NULL,
  `summary` varchar(1024) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of item_threshold
-- ----------------------------
INSERT INTO `item_threshold` VALUES ('0f4f81f87288464a8de783fa500ea0b8', '03ff6b1d6e0843a0bc8b1efc6f4cbd75', ' cpuUsageReal >= 80', '5', null, 'cpu使用率超阀值', '2017-09-30 14:02:48');
INSERT INTO `item_threshold` VALUES ('1c1674550c034cdaabae4105fe0351a3', 'c4e688644fb1462abc35c4f4a876c83b', ' dskUsage  >= 95', '5', null, '根目录磁盘使用超阈值，请及时清理磁盘空间', '2017-10-18 16:19:34');
INSERT INTO `item_threshold` VALUES ('510d0f1375654d259763626f1c34d103', '560a1b051acd45359667ac1390080285', ' memUsage >= 20 && memUsage < 90', '4', null, '内存使用超阈值', '2017-12-20 10:41:09');
INSERT INTO `item_threshold` VALUES ('616ca042cc5140f799df7b1fbf8dfb1c', 'b6c972a63ecf49b89ed7f282fa77fa91', ' IfOperStatus${n}  == 2', '5', null, '接口down', '2017-10-18 15:32:41');
INSERT INTO `item_threshold` VALUES ('9b35ce4e54444883bf60829c47c6dce7', '44', ' memUsageReal  >= 90', '4', null, '内存使用率超阀值', '2017-09-30 13:17:17');
INSERT INTO `item_threshold` VALUES ('b795882dcd224005bf451bf406be4bb1', '7a1923b153b4432d8df9670d3adf621e', ' cpuUage  >= 20', '5', null, 'cpu使用率严重超阀值', '2017-12-20 10:40:49');
INSERT INTO `item_threshold` VALUES ('ba4b8a537ce0421f8a99f013cde3217b', '03ff6b1d6e0843a0bc8b1efc6f4cbd75', ' cpuUsageReal  == 95', '6', null, 'cpu使用率严重超阀值', '2017-09-30 14:16:59');
INSERT INTO `item_threshold` VALUES ('ec01ee2e04f8437a908c063674ed77df', '062f0543587044a8a203f48a448d3eba', ' ifOutDiscards${n} >= 0.03', '5', null, '出丢包率大于万分之三', '2017-10-18 15:40:16');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `id` varchar(32) NOT NULL,
  `title` varchar(128) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `question` longtext,
  `project` longtext,
  `creator` int(11) NOT NULL DEFAULT '10',
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge
-- ----------------------------
INSERT INTO `knowledge` VALUES ('1', 'maven-将Maven项目导入到MyEclipse10 pom.xml一直报错', null, null, '问题描述\r\n将Maven项目导入到MyEclipse10 pom.xml一直报错\r\n之前在网上查了下，有说是MyEclipse10的JDK版本错了，（之前我用的是JDK1.7，导入Maven项目后pom.xml一直报错），后来换成JDK1.6后pom.xml依旧报错。Maven的包都是放在Maven的本地库里的，MyEclipse10也是配置好了路径的。但是就是一直提示错误。\r\n\r\n解决方案\r\nmaven 项目 pom.xml报错\r\n\r\n解决方案二：\r\n报啥错贴出来啊,不然谁知道哪里错?我也是醉了!\r\n\r\n解决方案三：\r\n<!-- 配置参数信息 -->\r\n<properties>\r\n    <!-- 系统编码 -->\r\n    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>\r\n    <!-- JAVA版本 -->\r\n    <jdk.compiler.version>1.7</jdk.compiler.version>\r\n    <!-- WEB服务器端口 -->\r\n192.168.2.200    去看看pom里有没有配置jdk版本的', '10', '2017-12-21 10:47:46');
INSERT INTO `knowledge` VALUES ('2', '如何将maven项目导入MyEclipse', null, null, '一、安装maven\r\n第一步：下载一个免安装版的apache-maven-3.0.3.zip解压后，配置环境变量\r\n\r\n新建M2_HOME:\r\n\r\n \r\n在path后面添加  %M2_HOME%\\bin;\r\n\r\n \r\n第二步：编译检查环境是否配置正确;  mvn -v\r\n\r\n \r\n二、更改maven配置文件并将maven与MyEclipse相关联\r\n1、修改apache-maven-3.0.3\\conf\\settings.xml中的<settings>节点中添加下面这句\r\n<localRepository>C:\\Users\\[username]\\.m2\\repository</localRepository>\r\n其中，username是指你使用的电脑的当前用户名。\r\n2、打开mycelipse，接着把刚刚添加的保存本地jar包的地址关联进myeclipse\r\n\r\n \r\n3、Window-->Preferences-->Myeclipse--> Maven4Meclipse 选中Enable\r\n\r\n \r\n4、Window-->Preferences-->Myeclipse--> Maven4Meclipse -->Maven-->Installations\r\n单击add把我们自己安装的maven添加进去，并且勾上。\r\n\r\n \r\n5、Window-->Preferences-->Myeclipse--> Maven4Meclipse -->Maven-->User Settings\r\n\r\n至此maven已经关联上了myelipse;\r\n \r\n三、从MyEclipse导入maven项目\r\n1、File----> Import --->Maven4MyEclipse--->Exsiting Maven Projects\r\n\r\n2、浏览你的maven项目所在根目录（即包含pom.xml的目录），Finish即可。\r\n上述内容大量参考：http://blog.sina.com.cn/s/blog_77cb836301015r9b.html', '10', '2017-12-19 14:12:56');

-- ----------------------------
-- Table structure for knowledge_key
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_key`;
CREATE TABLE `knowledge_key` (
  `id` varchar(32) NOT NULL,
  `knowledge_id` varchar(32) NOT NULL,
  `keys` varchar(128) NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of knowledge_key
-- ----------------------------

-- ----------------------------
-- Table structure for list_base
-- ----------------------------
DROP TABLE IF EXISTS `list_base`;
CREATE TABLE `list_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `code` int(8) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list_base
-- ----------------------------
INSERT INTO `list_base` VALUES ('1', '路由器', 'router', '1', '设备类型', '2', '2017-06-28 09:19:24');
INSERT INTO `list_base` VALUES ('2', '交换机', 'switch', '2', '设备类型', '2', '2017-06-28 09:19:26');
INSERT INTO `list_base` VALUES ('3', '服务器', 'server', '3', '设备类型', '2', '2017-06-28 09:19:28');
INSERT INTO `list_base` VALUES ('4', '防火墙', 'firewall', '4', '设备类型', '2', '2017-06-28 09:19:30');
INSERT INTO `list_base` VALUES ('5', '入侵检测', 'ids', '5', '设备类型', '2', '2017-06-28 09:19:32');
INSERT INTO `list_base` VALUES ('31', 'SNMPv1/v2', 'SNMPv1/v2', '1', '监控方式', '1', '2017-06-28 09:19:35');
INSERT INTO `list_base` VALUES ('32', 'SNMPv3', 'SNMPv3', '2', '监控方式', '1', '2017-06-28 09:19:37');
INSERT INTO `list_base` VALUES ('33', 'ICMP', 'ICMP', '3', '监控方式', '1', '2017-06-28 09:19:39');
INSERT INTO `list_base` VALUES ('34', 'SSH', 'SSH', '4', '监控方式', '1', '2017-06-28 09:19:40');
INSERT INTO `list_base` VALUES ('35', 'TELNET', 'TELNET', '5', '监控方式', '1', '2017-06-28 09:19:42');
INSERT INTO `list_base` VALUES ('36', 'WMI', 'WMI', '6', '监控方式', '1', '2017-06-28 09:19:47');

-- ----------------------------
-- Table structure for maintenance
-- ----------------------------
DROP TABLE IF EXISTS `maintenance`;
CREATE TABLE `maintenance` (
  `id` varchar(32) CHARACTER SET latin1 NOT NULL,
  `name` varchar(128) NOT NULL DEFAULT '',
  `type` varchar(32) DEFAULT '0',
  `description` varchar(128) DEFAULT NULL,
  `active_since` int(11) NOT NULL DEFAULT '0',
  `active_till` int(11) NOT NULL DEFAULT '0',
  `status` varchar(16) CHARACTER SET latin1 DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of maintenance
-- ----------------------------
INSERT INTO `maintenance` VALUES ('8e7acd347128449caf6c1fb2d681eabf', 'AA中', null, 'abc', '1512632699', '1513323904', null, '2017-12-06 14:49:29');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `page_id` varchar(32) DEFAULT NULL,
  `user_id` varchar(32) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `order_num` int(3) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, '呈现', null, null, null, null, 'res/system/images/menu/view.png', '1', null);
INSERT INTO `menu` VALUES ('2', null, '资产', null, null, null, null, 'res/system/images/menu/money.png', '2', null);
INSERT INTO `menu` VALUES ('4', null, '管理', null, null, null, null, 'res/system/images/menu/account.png', '5', null);
INSERT INTO `menu` VALUES ('5', null, '工具', null, null, null, null, 'res/system/images/menu/alert_side.png', '6', null);
INSERT INTO `menu` VALUES ('11', null, '配置', null, null, null, null, ' res/system/images/menu/setting.png', '4', null);
INSERT INTO `menu` VALUES ('18', '17', '测试B', null, null, null, '', '', null, '2017-07-17 14:57:08');
INSERT INTO `menu` VALUES ('37', '4', '用户管理', '1', '2f51f442d2174c97a01731b6fe18a363', null, 'sys/user/user.html', null, null, '2018-01-05 16:57:29');
INSERT INTO `menu` VALUES ('38', '4', '角色管理', '1', '5df788cd4b574ab2ba92513918fd7886', null, 'sys/role/role.html', null, null, '2018-01-05 16:57:24');
INSERT INTO `menu` VALUES ('39', '4', '菜单管理', '1', '948f0ef0fb2849e592fcc00aebf94adf', null, 'sys/menu/menu.html', null, null, '2018-01-05 16:57:22');
INSERT INTO `menu` VALUES ('43', '2', '资产字段管理', '1', '6eaa7527bf4a4537bbad9d3e9a3ade7a', null, 'asset/field/field.html', null, null, '2018-01-05 16:57:21');
INSERT INTO `menu` VALUES ('44', '2', '资产模板', '1', '26dd027f60d44325b705fad8138c7040', null, 'asset/asttemplate/asttemplate.html', null, null, '2018-01-05 16:57:20');
INSERT INTO `menu` VALUES ('45', '2', '资产管理', '1', '3474f8a749d6444dad3789d7dc9948d8', null, 'asset/device/device.html', null, null, '2018-01-05 16:57:19');
INSERT INTO `menu` VALUES ('46', '1', '告警中心', '1', null, null, 'monitor/event/event.html', '', null, null);
INSERT INTO `menu` VALUES ('48', '11', '监控模板', '1', 'ed09939c8bb64fc8b202b47d6f94c0be', null, 'monitor/montemplate.html', null, null, '2018-01-05 16:58:00');
INSERT INTO `menu` VALUES ('49', '11', 'oid管理', '1', '6c18ad26ead449e4aea32317db1b8a44', null, 'monitor/original/original.html', null, null, '2018-01-05 16:58:02');
INSERT INTO `menu` VALUES ('51', '11', '采集机管理', '1', '1a002a8e1ccc464f898c00c7265bc161', null, 'monitor/collector/collector.html', null, null, '2018-01-05 16:58:03');
INSERT INTO `menu` VALUES ('52', '1', '设备视图', '1', null, null, 'monitor/view/view.html', '', null, null);
INSERT INTO `menu` VALUES ('53', '1', '性能呈现', '1', '3d8613d6692843c7aa3624836bfbd9bc', null, 'monitor/performance/performance.html', null, null, '2018-01-05 16:58:05');
INSERT INTO `menu` VALUES ('54', '4', '大屏定义', '1', '038bf445f2ad4ec0bef433dd5698750f', null, 'dashboard/dashboard.html', null, null, '2018-01-05 16:58:07');
INSERT INTO `menu` VALUES ('55', '4', '页面定义', '1', 'cacecba4696d40dab01c6e80b2897428', null, 'sys/portal/cfgportal.html', null, null, '2018-01-05 16:58:22');
INSERT INTO `menu` VALUES ('56', '5', 'mib工具', '1', '1138d70d46594fa98990073fad2e94a7', null, 'operation/mibtool/mibtool.html', null, null, '2018-01-05 16:58:22');
INSERT INTO `menu` VALUES ('57', '1', '大屏呈现', '1', '1647e5af40354fe08dd9fdc52b4fa3be', null, 'db.html', null, null, '2018-01-05 16:58:22');
INSERT INTO `menu` VALUES ('58', '5', '拓扑工具', '1', '414caeb099cc4b3caedfbfd88365fe94', null, 'topo/topo.html', null, null, '2018-01-05 16:58:22');
INSERT INTO `menu` VALUES ('63', '11', '维护期', '1', '729797c0e48e4cf599ed62d157f47686', null, 'monitor/maintenance/maintenance.html', null, null, '2018-01-05 16:58:22');
INSERT INTO `menu` VALUES ('64', '5', '知识库', '1', '906976a3f11c491f9df0d0ab40aadb6c', null, 'knowledge/knowledge.html', null, null, '2018-01-05 16:58:22');
INSERT INTO `menu` VALUES ('65', '11', '知识库', '1', '456d9e4123314a6aa53d29031069d985', null, 'knowledge/knowledge.html', null, null, '2018-01-05 16:58:22');
INSERT INTO `menu` VALUES ('66', '1', '全网拓扑', '5', '349feb67bc61425586fbcf9107c75424', null, 'eb7185f763074e3ba946164c47a7cb8b', null, null, '2018-01-05 17:01:58');
INSERT INTO `menu` VALUES ('67', null, '报表', null, null, null, null, 'res/system/images/menu/statistics1.png', '2', null);
INSERT INTO `menu` VALUES ('68', '11', '事件关键字', '1', 'db5b2a25bdf34ce88222fc90f7fa636f', null, 'monitor/event/eventkey.html', null, null, '2018-01-05 16:58:31');
INSERT INTO `menu` VALUES ('69', '1', '测试', '4', null, null, 'http://www.baidu.com', '', '1', null);
INSERT INTO `menu` VALUES ('70', '1', '测试B', '2', null, null, '23', '', '2', null);
INSERT INTO `menu` VALUES ('71', '1', '测试C', '5', null, null, 'eb7185f763074e3ba946164c47a7cb8b', '', '3', null);

-- ----------------------------
-- Table structure for montemplate
-- ----------------------------
DROP TABLE IF EXISTS `montemplate`;
CREATE TABLE `montemplate` (
  `id` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `method` varchar(32) NOT NULL DEFAULT '1',
  `mfsrmd_id` varchar(32) DEFAULT NULL,
  `timeout` int(11) NOT NULL DEFAULT '10',
  `retries` int(11) NOT NULL DEFAULT '1',
  `poll` int(11) DEFAULT '300',
  `description` varchar(256) DEFAULT NULL,
  `failureretests` int(11) unsigned zerofill DEFAULT '00000000001',
  `retestinterval` int(11) unsigned zerofill DEFAULT '00000000060',
  `status` varchar(16) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of montemplate
-- ----------------------------
INSERT INTO `montemplate` VALUES ('04497aa28dbe40f8995ec3e45f4ab3ae', 'Template_redhat', null, 'SNMPv2', '133', '60', '2', '300', '', null, null, '启用', '2018-01-30 14:13:39');
INSERT INTO `montemplate` VALUES ('1c889a6c91c54ce48bd1f105d5800182', 'Template_linux', null, 'SSH', null, '60', '2', '300', '', null, null, '启用', '2018-01-31 16:41:50');
INSERT INTO `montemplate` VALUES ('52b63e233cbe49f586f5aaeb4f9bad2d', 'Template_mysql', null, 'Mysql', '', '60', '2', '300', '', null, null, '启用', '2018-01-30 14:01:42');
INSERT INTO `montemplate` VALUES ('75830e1df57548eebb0fde25ab32fca7', 'Template_interface', null, 'SNMPv2', '17', '60', '2', '300', '', null, null, '启用', '2018-01-30 16:41:26');
INSERT INTO `montemplate` VALUES ('9504b20954a5458eabe0ec65bd688949', 'route_template', null, 'SNMPv2', null, '60', '1', '300', '路由器通用监控模板', null, null, '启用', '2018-01-31 16:36:53');
INSERT INTO `montemplate` VALUES ('e0f404c7c7724fcc846221aaac66adc0', 'Template_icmp', null, 'ICMP', '', '60', '2', '300', '', null, null, '启用', '2018-01-30 14:04:46');

-- ----------------------------
-- Table structure for montemplate_item
-- ----------------------------
DROP TABLE IF EXISTS `montemplate_item`;
CREATE TABLE `montemplate_item` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `en_name` varchar(128) NOT NULL,
  `montemplate_id` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `history` int(11) DEFAULT '90',
  `trends` int(11) DEFAULT '365',
  `status` varchar(8) DEFAULT '0',
  `units` varchar(255) DEFAULT '',
  `delta` int(11) DEFAULT '0',
  `formula` varchar(255) DEFAULT '',
  `description` varchar(256) DEFAULT NULL,
  `value_type` varchar(255) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of montemplate_item
-- ----------------------------
INSERT INTO `montemplate_item` VALUES ('03ff6b1d6e0843a0bc8b1efc6f4cbd75', 'CPU使用率', 'cpuUsageReal', '9504b20954a5458eabe0ec65bd688949', null, '30', '360', null, '%', null, 'v[\'cpmCPUTotal5min\']', 'cpu使用率', '数字', '2017-09-30 14:00:15');
INSERT INTO `montemplate_item` VALUES ('062f0543587044a8a203f48a448d3eb1', '出丢包率', 'ifOutDiscards${n}', '75830e1df57548eebb0fde25ab32fca7', '接口', '30', '365', null, '%', null, '(v[\'ifOutDiscards${n}\'] - o[\'ifOutDiscards${n}\'])*100/(v[\'ifOutUcastPkts${n}\']-o[\'ifOutUcastPkts${n}\'])', '', '数字', '2017-10-25 11:15:24');
INSERT INTO `montemplate_item` VALUES ('062f0543587044a8a203f48a448d3eba', '出丢包率', 'ifOutDiscards${n}', '04497aa28dbe40f8995ec3e45f4ab3ae', '接口', '30', '365', null, '%', null, '(v[\'ifOutDiscards${n}\'] - o[\'ifOutDiscards${n}\'])*100/(v[\'ifOutUcastPkts${n}\']-o[\'ifOutUcastPkts${n}\'])', '', '数字', '2018-01-30 14:07:00');
INSERT INTO `montemplate_item` VALUES ('0cf71c5a647a41f78d5692bb5adedd11', '最大响应时延', 'maxRTT', 'e0f404c7c7724fcc846221aaac66adc0', '时延', '30', '365', null, 's', null, 'v[\'maxRTT\']', '', '数字', '2017-10-26 14:07:43');
INSERT INTO `montemplate_item` VALUES ('1000d5f5d6744bf0908a5cb5174af9e6', 'MySQL begin operations per second', 'Com_begin', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Com_begin\']', '', '数字', '2018-01-08 15:38:02');
INSERT INTO `montemplate_item` VALUES ('1c2b864a433e477f91fdf0ec01d89c7d', '数据库状态', 'mysqlStatus', '52b63e233cbe49f586f5aaeb4f9bad2d', '系统', '30', '365', null, '', null, 'v[\'mysqlStatus\']', 'It requires user parameter mysql.ping, which is defined in userparameter_mysql.conf.0 - MySQL server is down1 - MySQL server is up', '数字', '2018-01-02 17:24:37');
INSERT INTO `montemplate_item` VALUES ('21f7ff37fc34425b99248d476b355825', 'MySQL select operations per second', 'Com_select', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Com_select\']', '', '数字', '2018-01-08 15:42:50');
INSERT INTO `montemplate_item` VALUES ('4a15af2666af4a99b4d3d331af15fcfe', 'MySQL bytes sent per second', 'Bytes_sent', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'Bps', null, 'v[\'Bytes_sent\']', '', '数字', '2018-01-08 15:39:20');
INSERT INTO `montemplate_item` VALUES ('4ad6de3d4f104d8aafe91c2dee02b401', '进丢包率', 'ifInDiscards${n}', '04497aa28dbe40f8995ec3e45f4ab3ae', '接口', '30', '365', null, '%', null, '(v[\'ifInDiscards${n}\'] - o[\'ifInDiscards${n}\'])*100/(v[\'ifInUcastPkts${n}\'] - o[\'ifInUcastPkts${n}\'])', '', '数字', '2018-01-30 14:07:00');
INSERT INTO `montemplate_item` VALUES ('4ad6de3d4f104d8aafe91c2dee02b402', '进丢包率', 'ifInDiscards${n}', '75830e1df57548eebb0fde25ab32fca7', '接口', '30', '365', null, '%', null, '(v[\'ifInDiscards${n}\'] - o[\'ifInDiscards${n}\'])*100/(v[\'ifInUcastPkts${n}\'] - o[\'ifInUcastPkts${n}\'])', '', '数字', '2017-10-25 11:15:32');
INSERT INTO `montemplate_item` VALUES ('4ca8937cd3c04265a0f8af5f1e8f67ac', '系统启动时间', 'sysUptime', '04497aa28dbe40f8995ec3e45f4ab3ae', '系统', '30', '365', null, '天', null, 'v[\'sysUptime\']/(24*3600*100)', '', '数字', '2017-10-19 13:19:18');
INSERT INTO `montemplate_item` VALUES ('4e0a6b6fce1e43cebb0867517611e2e4', 'MySQL slow queries', 'Slow_queries', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Slow_queries\']', '', '数字', '2018-01-08 15:43:18');
INSERT INTO `montemplate_item` VALUES ('50d8043e13b545398a5b4bafb3f5d47d', 'MySQL rollback operations per second', 'Com_rollback', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Com_rollback\']', '', '数字', '2018-01-08 15:42:15');
INSERT INTO `montemplate_item` VALUES ('52f0a2126e784c7c8c8304ed6e158ba7', 'MySQL insert operations per second', 'Com_insert', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Com_insert\']', '', '数字', '2018-01-08 15:41:10');
INSERT INTO `montemplate_item` VALUES ('560a1b051acd45359667ac1390080285', '内存使用率', 'memUsage', '66537e8cc4884a2aa0441385f45b8499', '内存', '30', '350', null, '%', null, 'v[\'hrStorageUsed\']*100/v[\'hrMemorySize\']', '', '数字', '2017-10-27 09:33:54');
INSERT INTO `montemplate_item` VALUES ('66d10c458f1248d4ad766a71d84970e2', '进错包率', 'ifInErrors${n}', '04497aa28dbe40f8995ec3e45f4ab3ae', '接口', '30', '365', null, '%', null, '(v[\'ifInErrors${n}\'] - o[\'ifInErrors${n}\'])*100/(v[\'ifInUcastPkts${n}\'] - o[\'ifInUcastPkts${n}\']) ', '', '数字', '2018-01-30 14:07:00');
INSERT INTO `montemplate_item` VALUES ('66d10c458f1248d4ad766a71d84970e3', '进错包率', 'ifInErrors${n}', '75830e1df57548eebb0fde25ab32fca7', '接口', '30', '365', null, '%', null, ' (v[\'ifInErrors${n}\'] - o[\'ifInErrors${n}\'])*100/(v[\'ifInUcastPkts${n}\'] - o[\'ifInUcastPkts${n}\'])', '', '数字', '2017-10-25 11:15:44');
INSERT INTO `montemplate_item` VALUES ('68f6bca9ccac4a88bd960ee28dc5f4bf', '连接数', 'connectNum', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, '个', null, 'v[\'connectNum\']', '', '数字', '2018-01-02 13:48:51');
INSERT INTO `montemplate_item` VALUES ('7a1923b153b4432d8df9670d3adf621e', 'Cpu使用率', 'ssCpuUser', '66537e8cc4884a2aa0441385f45b8499', 'Cpu', '30', '365', null, '%', null, 'v[\'ssCpuUser\']', '', '数字', '2017-10-27 09:33:59');
INSERT INTO `montemplate_item` VALUES ('7af90d858eac4c7eb1926633640df557', '最小响应时延', 'minRTT', 'e0f404c7c7724fcc846221aaac66adc0', '时延', '30', '365', null, 's', null, 'v[\'minRTT\']', '', '数字', '2017-10-26 14:07:38');
INSERT INTO `montemplate_item` VALUES ('7ba61de2690f409694d664fc8efd5b65', '最大响应时延', 'maxRTT', '7a258909e129427dadbc7af74338aa35', '', '30', '365', null, 's', null, 'v[\'maxRTT\']', '', '数字', '2017-10-26 11:38:47');
INSERT INTO `montemplate_item` VALUES ('869ff0268b384dd2b722468f3017b3e2', '进流量比率', 'ifInUtile${n}', '04497aa28dbe40f8995ec3e45f4ab3ae', '接口', '30', '365', null, '%', null, ' (v[\'ifInOctets${n}\'] - o[\'ifInOctets${n}\'])*100/v[\'ifSpeed${n}\']', '', '数字', '2018-01-30 14:07:00');
INSERT INTO `montemplate_item` VALUES ('869ff0268b384dd2b722468f3017b3e3', '进流量比率', 'ifInUtile${n}', '75830e1df57548eebb0fde25ab32fca7', '接口', '30', '365', null, '%', null, '(v[\'ifInOctets${n}\'] - o[\'ifInOctets${n}\'])*100/v[\'ifSpeed${n}\']', '', '数字', '2017-10-25 11:15:51');
INSERT INTO `montemplate_item` VALUES ('ae37d09c6e664e8293b2fbcc9cb175a4', '出错包率', 'ifOutErrors${n}', '75830e1df57548eebb0fde25ab32fca7', '接口', '30', '365', null, '%', null, ' (v[\'ifOutErrors${n}\'] - o[\'ifOutErrors${n}\'])*100/(v[\'ifOutUcastPkts${n}\']-o[\'ifOutUcastPkts${n}\']) ', '', '数字', '2017-10-25 11:16:00');
INSERT INTO `montemplate_item` VALUES ('ae37d09c6e664e8293b2fbcc9cb175af', '出错包率', 'ifOutErrors${n}', '04497aa28dbe40f8995ec3e45f4ab3ae', '接口', '30', '365', null, '%', null, ' (v[\'ifOutErrors${n}\'] - o[\'ifOutErrors${n}\'])*100/(v[\'ifOutUcastPkts${n}\']-o[\'ifOutUcastPkts${n}\'])', '', '数字', '2018-01-30 14:07:00');
INSERT INTO `montemplate_item` VALUES ('b6c972a63ecf49b89ed7f282fa77fa91', '接口状态', 'IfOperStatus${n}', '04497aa28dbe40f8995ec3e45f4ab3ae', '接口', '30', '365', null, '', null, 'v[\'IfOperStatus${n}\']', '', '数字', '2018-01-30 14:07:00');
INSERT INTO `montemplate_item` VALUES ('b6c972a63ecf49b89ed7f282fa77fa95', '接口状态', 'IfOperStatus${n}', '75830e1df57548eebb0fde25ab32fca7', '接口', '30', '365', null, '', null, 'v[\'IfOperStatus${n}\']', '', '数字', '2017-10-25 11:16:06');
INSERT INTO `montemplate_item` VALUES ('bb3b7f6714194d1a8c033a395636bfeb', 'MySQL update operations per second', 'Com_update', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Com_update\']', '', '数字', '2018-01-08 15:43:46');
INSERT INTO `montemplate_item` VALUES ('c093799ac1ee45d0962992959485bb93', '根目录磁盘总量', 'dskTotal', '04497aa28dbe40f8995ec3e45f4ab3ae', '磁盘', '30', '365', null, 'KB', null, 'v[\'dskTotal\']', '', '数字', '2017-10-19 13:19:24');
INSERT INTO `montemplate_item` VALUES ('c3eee52620e94613b60e138349be0861', 'MySQL queries per second', 'Questions', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Questions\']', '', '数字', '2018-01-08 15:41:45');
INSERT INTO `montemplate_item` VALUES ('c4e688644fb1462abc35c4f4a876c83b', '根目录磁盘使用率', 'dskUsage', '04497aa28dbe40f8995ec3e45f4ab3ae', '磁盘', '30', '365', null, '%', null, 'v[\'dskUsed\']*100/v[\'dskTotal\']', '', '数字', '2017-10-19 13:19:05');
INSERT INTO `montemplate_item` VALUES ('c82e103fe15b4e8095548049a10c8040', 'MySQL delete operations per second', 'Com_delete', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Com_delete\']', '', '数字', '2018-01-08 15:40:37');
INSERT INTO `montemplate_item` VALUES ('d95cb815e79d47208183bfb1192855dd', '根目录磁盘使用量', 'dskUsed', '04497aa28dbe40f8995ec3e45f4ab3ae', '磁盘', '30', '365', null, 'KB', null, 'v[\'dskUsed\']', '', '数字', '2017-10-19 13:19:30');
INSERT INTO `montemplate_item` VALUES ('dcbb6deba04d4b46a656b4f2d296e65d', 'MySQL bytes received per second', 'Bytes_received', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'Bps', null, 'v[\'Bytes_received\']', '', '数字', '2018-01-08 15:38:46');
INSERT INTO `montemplate_item` VALUES ('ddd1f935ecae48b2bafba8d6b1b8df17', '线程数', 'threadNum', '52b63e233cbe49f586f5aaeb4f9bad2d', 'Mysql', '30', '365', null, '个', null, 'v[\'threadNum\']', '', '数字', '2018-01-02 16:08:03');
INSERT INTO `montemplate_item` VALUES ('e174d4b466f04192b1702cf3d8bd3dce', '内存使用率', 'memUsage', '04497aa28dbe40f8995ec3e45f4ab3ae', '内存', '30', '365', null, '%', null, 'v[\'hrStorageUsed\']*100/v[\'hrMemorySize\']', '', '数字', '2018-01-30 14:03:05');
INSERT INTO `montemplate_item` VALUES ('e52a3a0c596d453394714efd8019873a', 'boot空间', 'disk(/boot)', '1c889a6c91c54ce48bd1f105d5800182', '', '30', '365', null, '%', null, 'v[\'disk(/boot)\']', '', '数字', '2018-01-10 17:39:09');
INSERT INTO `montemplate_item` VALUES ('e815e26bc8ac4e06921183d16ce1ffa6', '出流量比率', 'ifOutUtile${n}', '04497aa28dbe40f8995ec3e45f4ab3ae', '接口', '30', '365', null, '%', null, ' (v[\'ifOutOctets${n}\'] - o[\'ifOutOctets${n}\'])*100/v[\'ifSpeed${n}\']', '', '数字', '2018-01-30 14:07:00');
INSERT INTO `montemplate_item` VALUES ('e815e26bc8ac4e06921183d16ce1ffa7', '出流量比率', 'ifOutUtile${n}', '75830e1df57548eebb0fde25ab32fca7', '接口', '30', '365', null, '%', null, '(v[\'ifOutOctets${n}\'] - o[\'ifOutOctets${n}\'])*100/v[\'ifSpeed${n}\']', '', '数字', '2017-10-25 11:16:15');
INSERT INTO `montemplate_item` VALUES ('ea26d614c1fa4049b4c055415d837264', 'MySQL commit operations per second', 'Com_commit', '52b63e233cbe49f586f5aaeb4f9bad2d', 'mysql', '30', '365', null, 'qps', null, 'v[\'Com_commit\']', '', '数字', '2018-01-08 15:40:02');
INSERT INTO `montemplate_item` VALUES ('ea273fd5aeb04ae49776c603ea6f0676', 'Cpu使用率', 'ssCpuUser', '04497aa28dbe40f8995ec3e45f4ab3ae', 'Cpu', '30', '365', null, '%', null, 'v[\'ssCpuUser\']', '', '数字', '2018-01-30 14:04:01');
INSERT INTO `montemplate_item` VALUES ('efbfe6751287467faf117fd444845c94', '平均响应时延', 'avgRTT', 'e0f404c7c7724fcc846221aaac66adc0', '时延', '30', '365', null, 's', null, 'v[\'avgRTT\']', '', '数字', '2017-10-26 14:07:49');

-- ----------------------------
-- Table structure for original
-- ----------------------------
DROP TABLE IF EXISTS `original`;
CREATE TABLE `original` (
  `id` varchar(32) NOT NULL,
  `type` varchar(32) DEFAULT NULL,
  `mfsrmd_id` varchar(32) DEFAULT NULL,
  `oidname` varchar(255) NOT NULL DEFAULT '',
  `oidvalue` varchar(255) NOT NULL,
  `value_type` varchar(255) NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `remark` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of original
-- ----------------------------
INSERT INTO `original` VALUES ('1', 'Cpu', '116', 'cpmCPUTotal5min', '.1.3.6.1.4.1.9.9.109.1.1.1.1.5.1', '数字', '2017-06-29 13:22:47', null);
INSERT INTO `original` VALUES ('13', '接口', '133', 'ifOutErrors${n}', '.1.3.6.1.2.1.2.2.1.20.${n}', 'Number', '2017-10-18 14:57:37', '');
INSERT INTO `original` VALUES ('14', '接口', '133', 'ifInDiscards${n}', '.1.3.6.1.2.1.2.2.1.13.${n}', 'Number', '2017-10-19 13:57:02', '');
INSERT INTO `original` VALUES ('15', '接口', '133', 'ifOutDiscards${n}', '.1.3.6.1.2.1.2.2.1.19.${n}', 'Number', '2017-10-19 13:56:47', '');
INSERT INTO `original` VALUES ('16', '接口', '133', 'ifInUcastPkts${n}', '.1.3.6.1.2.1.2.2.1.11.${n}', 'Number', '2017-10-19 13:56:54', '');
INSERT INTO `original` VALUES ('17', '接口', '133', 'ifOutUcastPkts${n}', '.1.3.6.1.2.1.2.2.1.17.${n}', 'Number', '2017-10-19 13:57:10', '');
INSERT INTO `original` VALUES ('2', '接口', '116', 'ifInDiscards', '.1.3.6.1.2.1.2.2.1.13.1', '数字', '2017-06-29 13:22:47', null);
INSERT INTO `original` VALUES ('22', '内存', '133', 'hrMemorySize', '.1.3.6.1.2.1.25.2.2.0', 'Number', '2017-10-18 15:14:34', '内存总量');
INSERT INTO `original` VALUES ('23b17728025940e08809b97f0c0cf50d', '接口', '133', 'ifInErrors${n}', '1.3.6.1.2.1.2.2.1.14.${n}', 'Number', '2017-10-18 15:50:42', '进错包数');
INSERT INTO `original` VALUES ('24', 'Cpu', '133', 'ssCpuUser', '.1.3.6.1.4.1.2021.11.9.0', 'Number', '2017-10-18 14:59:20', '用户CPU百分比');
INSERT INTO `original` VALUES ('24e03b3e9bd94de58fa767989da8d66b', '内存', '133', 'hrStorageUsed', '.1.3.6.1.2.1.25.2.3.1.6.1', 'Number', '2017-10-18 15:13:51', '用户内存使用量');
INSERT INTO `original` VALUES ('26', '内存', '134', 'ciscoMemoryPoolFree', '.1.3.6.1.4.1.9.9.48.1.1.1.6.1', '数字', '2017-07-26 14:13:00', null);
INSERT INTO `original` VALUES ('27', '内存', '134', 'ciscoMemoryPoolUsed', '.1.3.6.1.4.1.9.9.48.1.1.1.5.1', '数字', '2017-07-26 14:13:03', null);
INSERT INTO `original` VALUES ('28', 'Cpu', '134', 'cpmCPUTotal5min', '.1.3.6.1.4.1.9.9.109.1.1.1.1.5.1', '数字', '2017-07-26 14:37:12', null);
INSERT INTO `original` VALUES ('29', '接口', '134', 'ifInOctets', '.1.3.6.1.2.1.2.2.1.10.2', '数字', '2017-07-04 12:57:55', null);
INSERT INTO `original` VALUES ('2954da66ccdc45989e449d2adb3c0625', '接口', '133', 'ifSpeed${n}', '1.3.6.1.2.1.2.2.1.5.${n}', 'Number', '2017-10-18 15:18:13', '接口带宽');
INSERT INTO `original` VALUES ('3', '接口', '116', 'ifHCInUcastPkts', '.1.3.6.1.2.1.31.1.1.1.7.1', '数字', '2017-06-29 13:22:47', null);
INSERT INTO `original` VALUES ('30', '接口', '134', 'ifOutOctets', '.1.3.6.1.2.1.2.2.1.16.2', '数字', '2017-07-04 12:57:55', null);
INSERT INTO `original` VALUES ('31', '接口', '134', 'ifSpeed', '.1.3.6.1.2.1.2.2.1.5.2', '数字', '2017-07-04 12:57:55', null);
INSERT INTO `original` VALUES ('32', '内存', null, 'ciscoMemoryPoolFree', '.1.3.6.1.4.1.9.9.48.1.1.1.6.1', '数字', '2017-07-27 14:05:45', null);
INSERT INTO `original` VALUES ('33', '内存', null, 'ciscoMemoryPoolFree', '.1.3.6.1.4.1.9.9.48.1.1.1.6.1', '数字', '2017-07-27 14:13:04', null);
INSERT INTO `original` VALUES ('37', '接口', '17', 'ifSpeed${n}', '.1.3.6.1.2.1.2.2.1.5.${n}', 'Number', '2017-10-24 10:06:48', '');
INSERT INTO `original` VALUES ('38', '接口', '17', 'ifInOctets${n}', '.1.3.6.1.2.1.2.2.1.10.${n}', 'Number', '2017-10-24 10:06:31', '');
INSERT INTO `original` VALUES ('39', '接口', '17', 'ifOutOctets${n}', '.1.3.6.1.2.1.2.2.1.16.${n}', 'Number', '2017-10-24 10:06:22', '');
INSERT INTO `original` VALUES ('4', '接口', '116', 'ifHCInMulticastPkts', '.1.3.6.1.2.1.31.1.1.1.8.1', '数字', '2017-06-29 13:22:47', null);
INSERT INTO `original` VALUES ('40', '接口', '17', 'ifInErrors${n}', '.1.3.6.1.2.1.2.2.1.14.${n}', 'Number', '2017-10-24 10:05:14', '');
INSERT INTO `original` VALUES ('41', '接口', '17', 'ifOutErrors${n}', '.1.3.6.1.2.1.2.2.1.20.${n}', 'Number', '2017-10-24 10:02:44', '');
INSERT INTO `original` VALUES ('42', '接口', '17', 'ifInDiscards${n}', '.1.3.6.1.2.1.2.2.1.13.${n}', 'Number', '2017-10-24 10:04:00', '');
INSERT INTO `original` VALUES ('43', '接口', '17', 'ifOutDiscards${n}', '.1.3.6.1.2.1.2.2.1.19.${n}', 'Number', '2017-10-24 10:04:59', '');
INSERT INTO `original` VALUES ('44', '接口', '32', 'ifInOctets', '.1.3.6.1.2.1.2.2.1.10.3.3.3.3', 'Number', '2017-07-31 15:52:41', null);
INSERT INTO `original` VALUES ('45', '接口', '135', 'ifInOctets', '.1.3.6.1.2.1.2.2.1.10.4.4.4.4', 'Number', '2017-07-31 15:52:32', null);
INSERT INTO `original` VALUES ('5', '接口', '116', 'ifHCInBroadcastPkts', '.1.3.6.1.2.1.31.1.1.1.9.1', '数字', '2017-06-29 13:22:47', null);
INSERT INTO `original` VALUES ('6', '内存', '116', 'memPoolUsed', '.1.3.6.1.4.1.9.9.48.1.1.1.5.1', '数字', '2017-06-29 13:22:47', null);
INSERT INTO `original` VALUES ('6ce07d12ad6e4b4ea1e3be1821f9c59e', '磁盘', '133', 'dskTotal', '.1.3.6.1.4.1.2021.9.1.6.1', 'Number', '2017-10-19 13:44:27', '根目录磁盘总量');
INSERT INTO `original` VALUES ('7', '内存', '116', 'memPoolFree', '.1.3.6.1.4.1.9.9.48.1.1.1.6.1', '数字', '2017-06-29 13:22:47', null);
INSERT INTO `original` VALUES ('8', '接口', '133', 'ifInOctets${n}', '.1.3.6.1.2.1.2.2.1.10.${n}', 'Number', '2017-10-19 13:57:24', '接口收到的字节数');
INSERT INTO `original` VALUES ('8043122e5eb24c13855a587f25bd5697', '磁盘', '133', 'dskUsed', '.1.3.6.1.4.1.2021.9.1.8.1', 'Number', '2017-10-19 13:44:03', '根目录磁盘使用量');
INSERT INTO `original` VALUES ('9', '接口', '133', 'ifOutOctets${n}', '.1.3.6.1.2.1.2.2.1.16.${n}', 'Number', '2017-10-19 13:57:31', '接口发送的字节数');
INSERT INTO `original` VALUES ('9fc4c1d1275047e9b8d4ccf282b13242', '接口', '17', 'ifOutUcastPkts${n}', '.1.3.6.1.2.1.2.2.1.17.${n}', 'Number', '2017-10-24 10:09:56', '');
INSERT INTO `original` VALUES ('b277d9ee24424de2af298bb7a205f3ba', '系统', '133', 'sysUptime', '.1.3.6.1.2.1.1.3.0', 'Number', '2017-10-18 15:54:11', '');
INSERT INTO `original` VALUES ('cfea1af4d1254eafa4b6ffa63f7509cd', '接口', '133', 'IfOperStatus${n}', '.1.3.6.1.2.1.2.2.1.8.${n}', 'Number', '2017-10-19 14:25:26', '接口当前操作状态[1:up|2:down]');
INSERT INTO `original` VALUES ('dd39d42f936f434e941a68f0692331cc', '接口', '17', 'IfOperStatus${n}', '.1.3.6.1.2.1.2.2.1.8.${n}', 'Number', '2017-10-24 10:10:31', '');
INSERT INTO `original` VALUES ('ee5517f714c44288a529027691d8d1c6', '接口', '17', 'ifInUcastPkts${n}', '.1.3.6.1.2.1.2.2.1.11.${n}', 'Number', '2017-10-24 10:09:12', '');

-- ----------------------------
-- Table structure for page
-- ----------------------------
DROP TABLE IF EXISTS `page`;
CREATE TABLE `page` (
  `id` varchar(32) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `url` varchar(1024) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `buttons` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of page
-- ----------------------------
INSERT INTO `page` VALUES ('0c3cf97356a844449be99042a29ca05c', '告警中心', '1', 'monitor/event/event.html', '', '2017-10-12 12:51:06', null);
INSERT INTO `page` VALUES ('1138d70d46594fa98990073fad2e94a7', 'mib工具', '1', 'operation/mibtool/mibtool.html', '', '2017-10-31 15:50:26', null);
INSERT INTO `page` VALUES ('1647e5af40354fe08dd9fdc52b4fa3be', '大屏呈现', '3', 'db.html', '', '2017-11-07 10:28:42', null);
INSERT INTO `page` VALUES ('1a002a8e1ccc464f898c00c7265bc161', '采集机', '1', 'monitor/collector/collector.html', '', '2017-12-14 10:47:38', null);
INSERT INTO `page` VALUES ('26dd027f60d44325b705fad8138c7040', '资产模板', '1', 'asset/asttemplate/asttemplate.html', '', '2017-09-27 10:13:27', null);
INSERT INTO `page` VALUES ('2f51f442d2174c97a01731b6fe18a363', '用户管理', '1', 'sys/user/user.html', '', '2017-09-26 14:47:19', null);
INSERT INTO `page` VALUES ('3474f8a749d6444dad3789d7dc9948d8', '资产管理', '1', 'asset/asset/asset.html', '', '2017-09-28 14:21:19', null);
INSERT INTO `page` VALUES ('349feb67bc61425586fbcf9107c75424', '全网拓扑', '5', 'eb7185f763074e3ba946164c47a7cb8b', '', '2017-11-20 15:41:22', null);
INSERT INTO `page` VALUES ('3d8613d6692843c7aa3624836bfbd9bc', '性能呈现', '1', 'monitor/performance/performance.html', '', '2017-10-23 09:38:50', null);
INSERT INTO `page` VALUES ('414caeb099cc4b3caedfbfd88365fe94', '拓扑工具', '1', 'operation/topology/topology.html', '', '2017-11-12 14:51:12', null);
INSERT INTO `page` VALUES ('456d9e4123314a6aa53d29031069d985', '知识库', '1', 'knowledge/knowledge.html', '', '2017-12-13 10:29:18', null);
INSERT INTO `page` VALUES ('59d13be8dd9d4252b9f0b445da3659de', '设备视图', '1', 'monitor/view/view.html', '', '2017-10-23 09:39:04', null);
INSERT INTO `page` VALUES ('5df788cd4b574ab2ba92513918fd7886', '角色管理', '1', 'sys/role/role.html', '', '2017-09-26 14:47:25', null);
INSERT INTO `page` VALUES ('6671385e2d834b3591e5539c8aeb391b', '大屏B', '3', 'd3dfb303a57b47deb549dcaf3e9a7f2a', '', '2017-12-05 13:48:30', null);
INSERT INTO `page` VALUES ('6c18ad26ead449e4aea32317db1b8a44', 'oid管理', '1', 'monitor/original/original.html', '', '2017-10-11 16:58:37', null);
INSERT INTO `page` VALUES ('6eaa7527bf4a4537bbad9d3e9a3ade7a', '资产字段', '1', 'asset/field/field.html', '', '2017-09-27 10:12:50', null);
INSERT INTO `page` VALUES ('729797c0e48e4cf599ed62d157f47686', '维护期', '1', 'monitor/maintenance/maintenance.html', '', '2017-11-24 17:24:32', null);
INSERT INTO `page` VALUES ('948f0ef0fb2849e592fcc00aebf94adf', '菜单管理', '1', 'sys/menu/menu.html', '', '2017-09-26 14:47:21', null);
INSERT INTO `page` VALUES ('aefd062a3aa244b4ac97fad072cc0615', '子网A', '5', 'c590192fa2c7417ebefa85d72ac0cfa7', '', '2017-11-21 16:59:18', null);
INSERT INTO `page` VALUES ('b8661ec47c2b403790a479b0a7556287', '百度搜索', '4', 'http://www.baidu.com', '', '2017-09-26 14:49:41', null);
INSERT INTO `page` VALUES ('b9a2f109bb554471a04e0ae2368a11e8', '测试A', '2', '8a70affc7d9d4cad9d36fbb8580cd982', '', '2017-12-05 14:00:15', null);
INSERT INTO `page` VALUES ('c55caeee866a496da431042e9302d9cd', '性能呈现', '1', 'performance/performance.html', '', '2017-09-29 10:56:48', null);
INSERT INTO `page` VALUES ('cacecba4696d40dab01c6e80b2897428', '页面定义', '1', 'sys/portal/portal.html', '', '2017-11-12 11:22:03', null);
INSERT INTO `page` VALUES ('d07ffd87a5c6482b9471947e839a6ad6', '页面注册', '1', 'sys/page/page.html', '', '2017-09-26 14:47:27', null);
INSERT INTO `page` VALUES ('db5b2a25bdf34ce88222fc90f7fa636f', '事件关键字', '1', 'monitor/event/eventkey.html', '', '2017-12-20 16:00:15', null);
INSERT INTO `page` VALUES ('ed09939c8bb64fc8b202b47d6f94c0be', '监控模板', '1', 'monitor/montemplate/montemplate.html', '', '2017-10-10 16:14:45', null);
INSERT INTO `page` VALUES ('edaac0bf30dd4579b9aec46ed36695f1', '综合视图', '2', '23', '', '2017-12-07 10:01:18', null);

-- ----------------------------
-- Table structure for performance_detail
-- ----------------------------
DROP TABLE IF EXISTS `performance_detail`;
CREATE TABLE `performance_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `node` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `oidgroup` varchar(32) DEFAULT NULL,
  `unit` varchar(32) DEFAULT NULL,
  `value` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=322141 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of performance_detail
-- ----------------------------
INSERT INTO `performance_detail` VALUES ('320622', '192.168.2.200', 'sysUptime', null, null, '0.13234224537037', '1', '1517208924');
INSERT INTO `performance_detail` VALUES ('320623', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517208924');
INSERT INTO `performance_detail` VALUES ('320624', '192.168.2.200', 'dskUsage', null, null, '86.544177779609', '1', '1517208924');
INSERT INTO `performance_detail` VALUES ('320625', '192.168.2.200', 'dskUsed', null, null, '14112856', '1', '1517208924');
INSERT INTO `performance_detail` VALUES ('320626', '192.168.2.200', 'sysUptime', null, null, '0.13234236111111', '1', '1517208924');
INSERT INTO `performance_detail` VALUES ('320627', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517208924');
INSERT INTO `performance_detail` VALUES ('320628', '192.168.2.200', 'dskUsage', null, null, '86.544251367134', '1', '1517208924');
INSERT INTO `performance_detail` VALUES ('320629', '192.168.2.200', 'dskUsed', null, null, '14112868', '1', '1517208924');
INSERT INTO `performance_detail` VALUES ('320630', '192.168.2.200', 'sysUptime', null, null, '0.13274768518519', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320631', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320632', '192.168.2.200', 'dskUsage', null, null, '86.544177779609', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320633', '192.168.2.200', 'dskUsed', null, null, '14112856', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320634', '192.168.2.200', 'ifOutUtile2', null, null, '0.0008971', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320635', '192.168.2.200', 'sysUptime', null, null, '0.13274780092593', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320636', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320637', '192.168.2.200', 'dskUsage', null, null, '86.544251367134', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320638', '192.168.2.200', 'dskUsed', null, null, '14112868', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320639', '192.168.2.200', 'ifOutUtile2', null, null, '0.0008971', '1', '1517208959');
INSERT INTO `performance_detail` VALUES ('320640', '192.168.2.200', 'sysUptime', null, null, '0.133153125', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320641', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320642', '192.168.2.200', 'dskUsage', null, null, '86.544300425483', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320643', '192.168.2.200', 'dskUsed', null, null, '14112876', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320644', '192.168.2.200', 'ifOutUtile2', null, null, '0.0011468', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320645', '192.168.2.200', 'sysUptime', null, null, '0.13315324074074', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320646', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320647', '192.168.2.200', 'dskUsage', null, null, '86.544374013007', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320648', '192.168.2.200', 'dskUsed', null, null, '14112888', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320649', '192.168.2.200', 'ifOutUtile2', null, null, '0.0011468', '1', '1517208994');
INSERT INTO `performance_detail` VALUES ('320650', '192.168.2.200', 'sysUptime', null, null, '0.13355856481481', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320651', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320652', '192.168.2.200', 'dskUsage', null, null, '86.544300425483', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320653', '192.168.2.200', 'dskUsed', null, null, '14112876', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320654', '192.168.2.200', 'ifOutUtile2', null, null, '0.0008943', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320655', '192.168.2.200', 'sysUptime', null, null, '0.13355868055556', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320656', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320657', '192.168.2.200', 'dskUsage', null, null, '86.544423071357', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320658', '192.168.2.200', 'dskUsed', null, null, '14112896', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320659', '192.168.2.200', 'ifOutUtile2', null, null, '0.0008943', '1', '1517209029');
INSERT INTO `performance_detail` VALUES ('320660', '192.168.2.200', 'sysUptime', null, null, '0.13396400462963', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320661', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320662', '192.168.2.200', 'dskUsage', null, null, '86.544423071357', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320663', '192.168.2.200', 'dskUsed', null, null, '14112896', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320664', '192.168.2.200', 'ifOutUtile2', null, null, '0.000756', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320665', '192.168.2.200', 'sysUptime', null, null, '0.13396412037037', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320666', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320667', '192.168.2.200', 'dskUsage', null, null, '86.544496658881', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320668', '192.168.2.200', 'dskUsed', null, null, '14112908', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320669', '192.168.2.200', 'ifOutUtile2', null, null, '0.000756', '1', '1517209064');
INSERT INTO `performance_detail` VALUES ('320670', '192.168.2.200', 'sysUptime', null, null, '0.1343693287037', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320671', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320672', '192.168.2.200', 'dskUsage', null, null, '86.544496658881', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320673', '192.168.2.200', 'dskUsed', null, null, '14112908', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320674', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006444', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320675', '192.168.2.200', 'sysUptime', null, null, '0.13436956018519', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320676', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320677', '192.168.2.200', 'dskUsage', null, null, '86.544496658881', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320678', '192.168.2.200', 'dskUsed', null, null, '14112908', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320679', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006444', '1', '1517209099');
INSERT INTO `performance_detail` VALUES ('320680', '192.168.2.200', 'sysUptime', null, null, '0.13477476851852', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320681', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320682', '192.168.2.200', 'dskUsage', null, null, '86.544570246405', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320683', '192.168.2.200', 'dskUsed', null, null, '14112920', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320684', '192.168.2.200', 'ifOutUtile2', null, null, '0.0007005', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320685', '192.168.2.200', 'sysUptime', null, null, '0.13477488425926', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320686', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320687', '192.168.2.200', 'dskUsage', null, null, '86.544570246405', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320688', '192.168.2.200', 'dskUsed', null, null, '14112920', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320689', '192.168.2.200', 'ifOutUtile2', null, null, '0.0007005', '1', '1517209134');
INSERT INTO `performance_detail` VALUES ('320690', '192.168.2.200', 'sysUptime', null, null, '0.13518020833333', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320691', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320692', '192.168.2.200', 'dskUsage', null, null, '86.544692892279', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320693', '192.168.2.200', 'dskUsed', null, null, '14112940', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320694', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006626', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320695', '192.168.2.200', 'sysUptime', null, null, '0.13518020833333', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320696', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320697', '192.168.2.200', 'dskUsage', null, null, '86.544692892279', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320698', '192.168.2.200', 'dskUsed', null, null, '14112940', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320699', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006626', '1', '1517209169');
INSERT INTO `performance_detail` VALUES ('320700', '192.168.2.200', 'sysUptime', null, null, '0.13558553240741', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320701', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320702', '192.168.2.200', 'dskUsage', null, null, '86.544717421454', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320703', '192.168.2.200', 'dskUsed', null, null, '14112944', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320704', '192.168.2.200', 'ifOutUtile2', null, null, '0.0008104', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320705', '192.168.2.200', 'sysUptime', null, null, '0.13558564814815', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320706', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320707', '192.168.2.200', 'dskUsage', null, null, '86.544791008978', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320708', '192.168.2.200', 'dskUsed', null, null, '14112956', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320709', '192.168.2.200', 'ifOutUtile2', null, null, '0.0008104', '1', '1517209204');
INSERT INTO `performance_detail` VALUES ('320710', '192.168.2.200', 'sysUptime', null, null, '0.13599085648148', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320711', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320712', '192.168.2.200', 'dskUsage', null, null, '86.544840067328', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320713', '192.168.2.200', 'dskUsed', null, null, '14112964', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320714', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006578', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320715', '192.168.2.200', 'sysUptime', null, null, '0.13599097222222', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320716', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320717', '192.168.2.200', 'dskUsage', null, null, '86.544913654852', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320718', '192.168.2.200', 'dskUsed', null, null, '14112976', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320719', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006578', '1', '1517209239');
INSERT INTO `performance_detail` VALUES ('320720', '192.168.2.200', 'sysUptime', null, null, '0.13639618055556', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320721', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320722', '192.168.2.200', 'dskUsage', null, null, '86.544864596502', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320723', '192.168.2.200', 'dskUsed', null, null, '14112968', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320724', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006446', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320725', '192.168.2.200', 'sysUptime', null, null, '0.1363962962963', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320726', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320727', '192.168.2.200', 'dskUsage', null, null, '86.544938184027', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320728', '192.168.2.200', 'dskUsed', null, null, '14112980', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320729', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006446', '1', '1517209274');
INSERT INTO `performance_detail` VALUES ('320730', '192.168.2.200', 'sysUptime', null, null, '0.13680162037037', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320731', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320732', '192.168.2.200', 'dskUsage', null, null, '86.544987242376', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320733', '192.168.2.200', 'dskUsed', null, null, '14112988', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320734', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006681', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320735', '192.168.2.200', 'sysUptime', null, null, '0.13680162037037', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320736', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320737', '192.168.2.200', 'dskUsage', null, null, '86.5450608299', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320738', '192.168.2.200', 'dskUsed', null, null, '14113000', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320739', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006681', '1', '1517209309');
INSERT INTO `performance_detail` VALUES ('320740', '192.168.2.200', 'sysUptime', null, null, '0.13720694444444', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320741', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320742', '192.168.2.200', 'dskUsage', null, null, '86.5450608299', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320743', '192.168.2.200', 'dskUsed', null, null, '14113000', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320744', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006466', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320745', '192.168.2.200', 'sysUptime', null, null, '0.13720706018519', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320746', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320747', '192.168.2.200', 'dskUsage', null, null, '86.545134417425', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320748', '192.168.2.200', 'dskUsed', null, null, '14113012', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320749', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006466', '1', '1517209344');
INSERT INTO `performance_detail` VALUES ('320750', '192.168.2.200', 'sysUptime', null, null, '0.13761226851852', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320751', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320752', '192.168.2.200', 'dskUsage', null, null, '86.545134417425', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320753', '192.168.2.200', 'dskUsed', null, null, '14113012', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320754', '192.168.2.200', 'ifOutUtile2', null, null, '0.000678', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320755', '192.168.2.200', 'sysUptime', null, null, '0.13761238425926', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320756', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320757', '192.168.2.200', 'dskUsage', null, null, '86.545208004949', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320758', '192.168.2.200', 'dskUsed', null, null, '14113024', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320759', '192.168.2.200', 'ifOutUtile2', null, null, '0.000678', '1', '1517209379');
INSERT INTO `performance_detail` VALUES ('320760', '192.168.2.200', 'sysUptime', null, null, '0.13790185185185', '1', '1517209404');
INSERT INTO `performance_detail` VALUES ('320761', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209404');
INSERT INTO `performance_detail` VALUES ('320762', '192.168.2.200', 'dskUsage', null, null, '86.545379709172', '1', '1517209404');
INSERT INTO `performance_detail` VALUES ('320763', '192.168.2.200', 'dskUsed', null, null, '14113052', '1', '1517209404');
INSERT INTO `performance_detail` VALUES ('320764', '192.168.2.200', 'sysUptime', null, null, '0.13790196759259', '1', '1517209404');
INSERT INTO `performance_detail` VALUES ('320765', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209404');
INSERT INTO `performance_detail` VALUES ('320766', '192.168.2.200', 'dskUsage', null, null, '86.545404238347', '1', '1517209404');
INSERT INTO `performance_detail` VALUES ('320767', '192.168.2.200', 'dskUsed', null, null, '14113056', '1', '1517209404');
INSERT INTO `performance_detail` VALUES ('320768', '192.168.2.200', 'sysUptime', null, null, '0.14143287037037', '1', '1517209709');
INSERT INTO `performance_detail` VALUES ('320769', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517209709');
INSERT INTO `performance_detail` VALUES ('320770', '192.168.2.200', 'dskUsage', null, null, '86.545404238347', '1', '1517209709');
INSERT INTO `performance_detail` VALUES ('320771', '192.168.2.200', 'dskUsed', null, null, '14113056', '1', '1517209709');
INSERT INTO `performance_detail` VALUES ('320772', '192.168.2.200', 'ifOutUtile2', null, null, '0.0045683', '1', '1517209709');
INSERT INTO `performance_detail` VALUES ('320773', '192.168.2.200', 'sysUptime', null, null, '0.14496365740741', '1', '1517210014');
INSERT INTO `performance_detail` VALUES ('320774', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517210014');
INSERT INTO `performance_detail` VALUES ('320775', '192.168.2.200', 'dskUsage', null, null, '86.545526884221', '1', '1517210014');
INSERT INTO `performance_detail` VALUES ('320776', '192.168.2.200', 'dskUsed', null, null, '14113076', '1', '1517210014');
INSERT INTO `performance_detail` VALUES ('320777', '192.168.2.200', 'ifOutUtile2', null, null, '0.0005416', '1', '1517210014');
INSERT INTO `performance_detail` VALUES ('320778', '192.168.2.200', 'sysUptime', null, null, '0.14849421296296', '1', '1517210319');
INSERT INTO `performance_detail` VALUES ('320779', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517210319');
INSERT INTO `performance_detail` VALUES ('320780', '192.168.2.200', 'dskUsage', null, null, '86.54562500092', '1', '1517210319');
INSERT INTO `performance_detail` VALUES ('320781', '192.168.2.200', 'dskUsed', null, null, '14113092', '1', '1517210319');
INSERT INTO `performance_detail` VALUES ('320782', '192.168.2.200', 'ifOutUtile2', null, null, '0.000534', '1', '1517210319');
INSERT INTO `performance_detail` VALUES ('320783', '192.168.2.200', 'sysUptime', null, null, '0.15202511574074', '1', '1517210624');
INSERT INTO `performance_detail` VALUES ('320784', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517210624');
INSERT INTO `performance_detail` VALUES ('320785', '192.168.2.200', 'dskUsage', null, null, '86.545772175968', '1', '1517210624');
INSERT INTO `performance_detail` VALUES ('320786', '192.168.2.200', 'dskUsed', null, null, '14113116', '1', '1517210624');
INSERT INTO `performance_detail` VALUES ('320787', '192.168.2.200', 'ifOutUtile2', null, null, '0.0004988', '1', '1517210624');
INSERT INTO `performance_detail` VALUES ('320788', '192.168.2.200', 'sysUptime', null, null, '0.15555902777778', '1', '1517210930');
INSERT INTO `performance_detail` VALUES ('320789', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517210930');
INSERT INTO `performance_detail` VALUES ('320790', '192.168.2.200', 'dskUsage', null, null, '86.545894821842', '1', '1517210930');
INSERT INTO `performance_detail` VALUES ('320791', '192.168.2.200', 'dskUsed', null, null, '14113136', '1', '1517210930');
INSERT INTO `performance_detail` VALUES ('320792', '192.168.2.200', 'ifOutUtile2', null, null, '0.000528', '1', '1517210930');
INSERT INTO `performance_detail` VALUES ('320793', '192.168.2.200', 'sysUptime', null, null, '0.15909282407407', '1', '1517211235');
INSERT INTO `performance_detail` VALUES ('320794', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517211235');
INSERT INTO `performance_detail` VALUES ('320795', '192.168.2.200', 'dskUsage', null, null, '86.546041996891', '1', '1517211235');
INSERT INTO `performance_detail` VALUES ('320796', '192.168.2.200', 'dskUsed', null, null, '14113160', '1', '1517211235');
INSERT INTO `performance_detail` VALUES ('320797', '192.168.2.200', 'ifOutUtile2', null, null, '0.0004449', '1', '1517211235');
INSERT INTO `performance_detail` VALUES ('320798', '192.168.2.200', 'sysUptime', null, null, '0.17056041666667', '1', '1517212226');
INSERT INTO `performance_detail` VALUES ('320799', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517212226');
INSERT INTO `performance_detail` VALUES ('320800', '192.168.2.200', 'dskUsage', null, null, '86.484473768255', '1', '1517212226');
INSERT INTO `performance_detail` VALUES ('320801', '192.168.2.200', 'dskUsed', null, null, '14103120', '1', '1517212226');
INSERT INTO `performance_detail` VALUES ('320802', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517212226');
INSERT INTO `performance_detail` VALUES ('320803', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517212226');
INSERT INTO `performance_detail` VALUES ('320804', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517212531');
INSERT INTO `performance_detail` VALUES ('320805', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517212531');
INSERT INTO `performance_detail` VALUES ('320806', '192.168.2.200', 'ifOutUtile2', null, null, '0.0028383', '1', '1517212531');
INSERT INTO `performance_detail` VALUES ('320807', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517212836');
INSERT INTO `performance_detail` VALUES ('320808', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517212836');
INSERT INTO `performance_detail` VALUES ('320809', '192.168.2.200', 'ifOutUtile2', null, null, '0.0009545', '1', '1517212836');
INSERT INTO `performance_detail` VALUES ('320810', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517213141');
INSERT INTO `performance_detail` VALUES ('320811', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517213141');
INSERT INTO `performance_detail` VALUES ('320812', '192.168.2.200', 'ifOutUtile2', null, null, '0.0005833', '1', '1517213141');
INSERT INTO `performance_detail` VALUES ('320813', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517213446');
INSERT INTO `performance_detail` VALUES ('320814', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517213446');
INSERT INTO `performance_detail` VALUES ('320815', '192.168.2.200', 'ifOutUtile2', null, null, '0.0005533', '1', '1517213446');
INSERT INTO `performance_detail` VALUES ('320816', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517213752');
INSERT INTO `performance_detail` VALUES ('320817', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517213752');
INSERT INTO `performance_detail` VALUES ('320818', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006241', '1', '1517213752');
INSERT INTO `performance_detail` VALUES ('320819', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517214058');
INSERT INTO `performance_detail` VALUES ('320820', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517214058');
INSERT INTO `performance_detail` VALUES ('320821', '192.168.2.200', 'ifOutUtile2', null, null, '0.0006199', '1', '1517214058');
INSERT INTO `performance_detail` VALUES ('320822', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517214363');
INSERT INTO `performance_detail` VALUES ('320823', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517214363');
INSERT INTO `performance_detail` VALUES ('320824', '192.168.2.200', 'ifOutUtile2', null, null, '0.0008674', '1', '1517214363');
INSERT INTO `performance_detail` VALUES ('320825', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517214669');
INSERT INTO `performance_detail` VALUES ('320826', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517214669');
INSERT INTO `performance_detail` VALUES ('320827', '192.168.2.200', 'ifOutUtile2', null, null, '0.0005961', '1', '1517214669');
INSERT INTO `performance_detail` VALUES ('320828', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517214974');
INSERT INTO `performance_detail` VALUES ('320829', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517214974');
INSERT INTO `performance_detail` VALUES ('320830', '192.168.2.200', 'ifOutUtile2', null, null, '0.000751', '1', '1517214974');
INSERT INTO `performance_detail` VALUES ('320831', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517215280');
INSERT INTO `performance_detail` VALUES ('320832', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517215280');
INSERT INTO `performance_detail` VALUES ('320833', '192.168.2.200', 'ifOutUtile2', null, null, '0.0005758', '1', '1517215280');
INSERT INTO `performance_detail` VALUES ('320834', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517215585');
INSERT INTO `performance_detail` VALUES ('320835', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517215585');
INSERT INTO `performance_detail` VALUES ('320836', '192.168.2.200', 'ifOutUtile2', null, null, '0.0005903', '1', '1517215585');
INSERT INTO `performance_detail` VALUES ('320837', '192.168.2.200', 'sysUptime', null, null, '0.21228414351852', '1', '1517215831');
INSERT INTO `performance_detail` VALUES ('320838', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517215831');
INSERT INTO `performance_detail` VALUES ('320839', '192.168.2.200', 'dskUsage', null, null, '86.484326593207', '1', '1517215831');
INSERT INTO `performance_detail` VALUES ('320840', '192.168.2.200', 'dskUsed', null, null, '14103096', '1', '1517215831');
INSERT INTO `performance_detail` VALUES ('320841', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517215891');
INSERT INTO `performance_detail` VALUES ('320842', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517215891');
INSERT INTO `performance_detail` VALUES ('320843', '192.168.2.200', 'ifOutUtile2', null, null, '0.0008724', '1', '1517215891');
INSERT INTO `performance_detail` VALUES ('320844', '192.168.2.200', 'Com_delete', null, null, '', '1', '1517216109');
INSERT INTO `performance_detail` VALUES ('320845', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517216196');
INSERT INTO `performance_detail` VALUES ('320846', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517216196');
INSERT INTO `performance_detail` VALUES ('320847', '192.168.2.200', 'ifOutUtile2', null, null, '0.0040974', '1', '1517216196');
INSERT INTO `performance_detail` VALUES ('320848', '192.168.2.200', 'avgRTT', null, null, '0.5924', '1', '1517216403');
INSERT INTO `performance_detail` VALUES ('320849', '192.168.2.200', 'sysUptime', null, null, '0.21917546296296', '1', '1517216426');
INSERT INTO `performance_detail` VALUES ('320850', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517216426');
INSERT INTO `performance_detail` VALUES ('320851', '192.168.2.200', 'dskUsage', null, null, '86.485062468449', '1', '1517216426');
INSERT INTO `performance_detail` VALUES ('320852', '192.168.2.200', 'dskUsed', null, null, '14103216', '1', '1517216426');
INSERT INTO `performance_detail` VALUES ('320853', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517216426');
INSERT INTO `performance_detail` VALUES ('320854', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517216426');
INSERT INTO `performance_detail` VALUES ('320855', '192.168.2.200', 'avgRTT', null, null, '0.0636', '1', '1517216442');
INSERT INTO `performance_detail` VALUES ('320856', '192.168.2.200', 'avgRTT', null, null, '0.0558', '1', '1517216481');
INSERT INTO `performance_detail` VALUES ('320857', '192.168.2.200', 'sysUptime', null, null, '0.21987037037037', '1', '1517216486');
INSERT INTO `performance_detail` VALUES ('320858', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517216486');
INSERT INTO `performance_detail` VALUES ('320859', '192.168.2.200', 'dskUsage', null, null, '86.485209643498', '1', '1517216486');
INSERT INTO `performance_detail` VALUES ('320860', '192.168.2.200', 'dskUsed', null, null, '14103240', '1', '1517216486');
INSERT INTO `performance_detail` VALUES ('320861', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517216486');
INSERT INTO `performance_detail` VALUES ('320862', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517216486');
INSERT INTO `performance_detail` VALUES ('320863', '192.168.2.200', 'avgRTT', null, null, '0.072', '1', '1517216520');
INSERT INTO `performance_detail` VALUES ('320864', '192.168.2.200', 'avgRTT', null, null, '0.0582', '1', '1517216529');
INSERT INTO `performance_detail` VALUES ('320865', '192.168.2.200', 'avgRTT', null, null, '0.3162', '1', '1517216568');
INSERT INTO `performance_detail` VALUES ('320866', '192.168.2.200', 'avgRTT', null, null, '0.0764', '1', '1517216607');
INSERT INTO `performance_detail` VALUES ('320867', '192.168.2.200', 'avgRTT', null, null, '0.0668', '1', '1517216646');
INSERT INTO `performance_detail` VALUES ('320868', '192.168.2.200', 'avgRTT', null, null, '0.051', '1', '1517216685');
INSERT INTO `performance_detail` VALUES ('320869', '192.168.2.200', 'avgRTT', null, null, '0.054', '1', '1517216724');
INSERT INTO `performance_detail` VALUES ('320870', '192.168.2.200', 'avgRTT', null, null, '0.0564', '1', '1517216763');
INSERT INTO `performance_detail` VALUES ('320871', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517216791');
INSERT INTO `performance_detail` VALUES ('320872', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517216791');
INSERT INTO `performance_detail` VALUES ('320873', '192.168.2.200', 'ifOutUtile2', null, null, '0.0017484', '1', '1517216791');
INSERT INTO `performance_detail` VALUES ('320874', '192.168.2.200', 'avgRTT', null, null, '0.068', '1', '1517216802');
INSERT INTO `performance_detail` VALUES ('320875', '192.168.2.200', 'avgRTT', null, null, '0.0784', '1', '1517216841');
INSERT INTO `performance_detail` VALUES ('320876', '192.168.2.200', 'avgRTT', null, null, '0.0546', '1', '1517216880');
INSERT INTO `performance_detail` VALUES ('320877', '192.168.2.200', 'avgRTT', null, null, '0.0496', '1', '1517216919');
INSERT INTO `performance_detail` VALUES ('320878', '192.168.2.200', 'avgRTT', null, null, '0.0594', '1', '1517216958');
INSERT INTO `performance_detail` VALUES ('320879', '192.168.2.200', 'avgRTT', null, null, '0.0864', '1', '1517216997');
INSERT INTO `performance_detail` VALUES ('320880', '192.168.2.200', 'avgRTT', null, null, '0.0648', '1', '1517217036');
INSERT INTO `performance_detail` VALUES ('320881', '192.168.2.200', 'avgRTT', null, null, '0.0652', '1', '1517217075');
INSERT INTO `performance_detail` VALUES ('320882', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517217097');
INSERT INTO `performance_detail` VALUES ('320883', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517217097');
INSERT INTO `performance_detail` VALUES ('320884', '192.168.2.200', 'ifOutUtile2', null, null, '0.0015062', '1', '1517217097');
INSERT INTO `performance_detail` VALUES ('320885', '192.168.2.200', 'avgRTT', null, null, '0.0606', '1', '1517217114');
INSERT INTO `performance_detail` VALUES ('320886', '192.168.2.200', 'avgRTT', null, null, '0.058', '1', '1517217153');
INSERT INTO `performance_detail` VALUES ('320887', '192.168.2.200', 'avgRTT', null, null, '0.0548', '1', '1517217192');
INSERT INTO `performance_detail` VALUES ('320888', '192.168.2.200', 'avgRTT', null, null, '0.0562', '1', '1517217231');
INSERT INTO `performance_detail` VALUES ('320889', '192.168.2.200', 'avgRTT', null, null, '0.0618', '1', '1517217270');
INSERT INTO `performance_detail` VALUES ('320890', '192.168.2.200', 'avgRTT', null, null, '0.0512', '1', '1517217309');
INSERT INTO `performance_detail` VALUES ('320891', '192.168.2.200', 'avgRTT', null, null, '0.0756', '1', '1517217348');
INSERT INTO `performance_detail` VALUES ('320892', '192.168.2.200', 'avgRTT', null, null, '0.0622', '1', '1517217387');
INSERT INTO `performance_detail` VALUES ('320893', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517217403');
INSERT INTO `performance_detail` VALUES ('320894', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517217403');
INSERT INTO `performance_detail` VALUES ('320895', '192.168.2.200', 'ifOutUtile2', null, null, '0.0015294', '1', '1517217403');
INSERT INTO `performance_detail` VALUES ('320896', '192.168.2.200', 'avgRTT', null, null, '0.0468', '1', '1517217426');
INSERT INTO `performance_detail` VALUES ('320897', '192.168.2.200', 'avgRTT', null, null, '0.058', '1', '1517217465');
INSERT INTO `performance_detail` VALUES ('320898', '192.168.2.200', 'avgRTT', null, null, '0.0632', '1', '1517217504');
INSERT INTO `performance_detail` VALUES ('320899', '192.168.2.200', 'avgRTT', null, null, '0.0586', '1', '1517217543');
INSERT INTO `performance_detail` VALUES ('320900', '192.168.2.200', 'avgRTT', null, null, '0.0602', '1', '1517217582');
INSERT INTO `performance_detail` VALUES ('320901', '192.168.2.200', 'avgRTT', null, null, '0.0724', '1', '1517217621');
INSERT INTO `performance_detail` VALUES ('320902', '192.168.2.200', 'avgRTT', null, null, '0.052', '1', '1517217661');
INSERT INTO `performance_detail` VALUES ('320903', '192.168.2.200', 'avgRTT', null, null, '0.0476', '1', '1517217700');
INSERT INTO `performance_detail` VALUES ('320904', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517217708');
INSERT INTO `performance_detail` VALUES ('320905', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517217708');
INSERT INTO `performance_detail` VALUES ('320906', '192.168.2.200', 'ifOutUtile2', null, null, '0.001638', '1', '1517217708');
INSERT INTO `performance_detail` VALUES ('320907', '192.168.2.200', 'avgRTT', null, null, '0.0918', '1', '1517217724');
INSERT INTO `performance_detail` VALUES ('320908', '192.168.2.200', 'sysUptime', null, null, '0.23447638888889', '1', '1517217748');
INSERT INTO `performance_detail` VALUES ('320909', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517217748');
INSERT INTO `performance_detail` VALUES ('320910', '192.168.2.200', 'dskUsage', null, null, '86.486534218935', '1', '1517217748');
INSERT INTO `performance_detail` VALUES ('320911', '192.168.2.200', 'dskUsed', null, null, '14103456', '1', '1517217748');
INSERT INTO `performance_detail` VALUES ('320912', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517217748');
INSERT INTO `performance_detail` VALUES ('320913', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517217748');
INSERT INTO `performance_detail` VALUES ('320914', '192.168.2.200', 'avgRTT', null, null, '0.0528', '1', '1517218033');
INSERT INTO `performance_detail` VALUES ('320915', '192.168.2.200', 'sysUptime', null, null, '0.2379005787037', '1', '1517218044');
INSERT INTO `performance_detail` VALUES ('320916', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517218044');
INSERT INTO `performance_detail` VALUES ('320917', '192.168.2.200', 'dskUsage', null, null, '86.486926685731', '1', '1517218044');
INSERT INTO `performance_detail` VALUES ('320918', '192.168.2.200', 'dskUsed', null, null, '14103520', '1', '1517218044');
INSERT INTO `performance_detail` VALUES ('320919', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517218044');
INSERT INTO `performance_detail` VALUES ('320920', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517218044');
INSERT INTO `performance_detail` VALUES ('320921', '192.168.2.200', 'avgRTT', null, null, '0.054', '1', '1517218082');
INSERT INTO `performance_detail` VALUES ('320922', '192.168.2.200', 'avgRTT', null, null, '0.0592', '1', '1517218266');
INSERT INTO `performance_detail` VALUES ('320923', '192.168.2.200', 'sysUptime', null, null, '0.24068194444444', '1', '1517218284');
INSERT INTO `performance_detail` VALUES ('320924', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517218284');
INSERT INTO `performance_detail` VALUES ('320925', '192.168.2.200', 'dskUsage', null, null, '86.487221035828', '1', '1517218284');
INSERT INTO `performance_detail` VALUES ('320926', '192.168.2.200', 'dskUsed', null, null, '14103568', '1', '1517218284');
INSERT INTO `performance_detail` VALUES ('320927', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517218284');
INSERT INTO `performance_detail` VALUES ('320928', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517218284');
INSERT INTO `performance_detail` VALUES ('320929', '192.168.2.200', 'sysUptime', null, null, '0.24207303240741', '1', '1517218405');
INSERT INTO `performance_detail` VALUES ('320930', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517218405');
INSERT INTO `performance_detail` VALUES ('320931', '192.168.2.200', 'dskUsage', null, null, '86.487515385925', '1', '1517218405');
INSERT INTO `performance_detail` VALUES ('320932', '192.168.2.200', 'dskUsed', null, null, '14103616', '1', '1517218405');
INSERT INTO `performance_detail` VALUES ('320933', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517218405');
INSERT INTO `performance_detail` VALUES ('320934', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517218405');
INSERT INTO `performance_detail` VALUES ('320935', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517293577');
INSERT INTO `performance_detail` VALUES ('320936', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517293577');
INSERT INTO `performance_detail` VALUES ('320937', '192.168.2.200', 'dskUsage', null, null, '86.4899683034', '1', '1517293577');
INSERT INTO `performance_detail` VALUES ('320938', '192.168.2.200', 'dskUsed', null, null, '14104016', '1', '1517293577');
INSERT INTO `performance_detail` VALUES ('320939', '192.168.2.200', 'memUsage', null, null, '68.788648594445', '1', '1517293577');
INSERT INTO `performance_detail` VALUES ('320940', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517293577');
INSERT INTO `performance_detail` VALUES ('320941', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320942', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320943', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320944', '192.168.2.200', 'ifInUtile2', null, null, '0.0299232', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320945', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320946', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320947', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320948', '192.168.2.200', 'dskUsage', null, null, '86.490115478449', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320949', '192.168.2.200', 'dskUsed', null, null, '14104040', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320950', '192.168.2.200', 'memUsage', null, null, '69.436900424508', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320951', '192.168.2.200', 'ifOutUtile2', null, null, '0.0119076', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320952', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517293882');
INSERT INTO `performance_detail` VALUES ('320953', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517294057');
INSERT INTO `performance_detail` VALUES ('320954', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517294057');
INSERT INTO `performance_detail` VALUES ('320955', '192.168.2.200', 'dskUsage', null, null, '86.490287182672', '1', '1517294057');
INSERT INTO `performance_detail` VALUES ('320956', '192.168.2.200', 'dskUsed', null, null, '14104068', '1', '1517294057');
INSERT INTO `performance_detail` VALUES ('320957', '192.168.2.200', 'memUsage', null, null, '70.095179997994', '1', '1517294057');
INSERT INTO `performance_detail` VALUES ('320958', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517294057');
INSERT INTO `performance_detail` VALUES ('320959', '192.168.2.2', 'maxRTT', null, null, '0.271', '1', '1517294069');
INSERT INTO `performance_detail` VALUES ('320960', '192.168.2.2', 'minRTT', null, null, '0.202', '1', '1517294069');
INSERT INTO `performance_detail` VALUES ('320961', '192.168.2.2', 'avgRTT', null, null, '0.2234', '1', '1517294069');
INSERT INTO `performance_detail` VALUES ('320962', '192.168.2.2', 'Com_begin', null, null, '1160', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320963', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320964', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320965', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320966', '192.168.2.2', 'Com_insert', null, null, '51', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320967', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320968', '192.168.2.2', 'Com_update', null, null, '838', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320969', '192.168.2.2', 'Questions', null, null, '14870', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320970', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320971', '192.168.2.2', 'Bytes_received', null, null, '1400386', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320972', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320973', '192.168.2.2', 'Com_commit', null, null, '1160', '1', '1517294342');
INSERT INTO `performance_detail` VALUES ('320974', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320975', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320976', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320977', '192.168.2.200', 'ifInUtile2', null, null, '0.0318877', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320978', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320979', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320980', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320981', '192.168.2.200', 'dskUsage', null, null, '86.490655120294', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320982', '192.168.2.200', 'dskUsed', null, null, '14104128', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320983', '192.168.2.200', 'memUsage', null, null, '70.549144299228', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320984', '192.168.2.200', 'ifOutUtile2', null, null, '0.0127917', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320985', '192.168.2.200', 'ssCpuUser', null, null, '1', '1', '1517294362');
INSERT INTO `performance_detail` VALUES ('320986', '192.168.2.2', 'maxRTT', null, null, '0.268', '1', '1517294378');
INSERT INTO `performance_detail` VALUES ('320987', '192.168.2.2', 'minRTT', null, null, '0.211', '1', '1517294378');
INSERT INTO `performance_detail` VALUES ('320988', '192.168.2.2', 'avgRTT', null, null, '0.247', '1', '1517294378');
INSERT INTO `performance_detail` VALUES ('320989', '192.168.2.2', 'Com_begin', null, null, '1227', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320990', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320991', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320992', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320993', '192.168.2.2', 'Com_insert', null, null, '54', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320994', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320995', '192.168.2.2', 'Com_update', null, null, '878', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320996', '192.168.2.2', 'Questions', null, null, '15686', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320997', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320998', '192.168.2.2', 'Bytes_received', null, null, '1480597', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('320999', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('321000', '192.168.2.2', 'Com_commit', null, null, '1227', '1', '1517294647');
INSERT INTO `performance_detail` VALUES ('321001', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321002', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321003', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321004', '192.168.2.200', 'ifInUtile2', null, null, '0.0515155', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321005', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321006', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321007', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321008', '192.168.2.200', 'dskUsage', null, null, '86.491096645439', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321009', '192.168.2.200', 'dskUsed', null, null, '14104200', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321010', '192.168.2.200', 'memUsage', null, null, '71.126366280041', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321011', '192.168.2.200', 'ifOutUtile2', null, null, '0.0349161', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321012', '192.168.2.200', 'ssCpuUser', null, null, '1', '1', '1517294667');
INSERT INTO `performance_detail` VALUES ('321013', '192.168.2.2', 'maxRTT', null, null, '1.79', '1', '1517294687');
INSERT INTO `performance_detail` VALUES ('321014', '192.168.2.2', 'minRTT', null, null, '0.305', '1', '1517294687');
INSERT INTO `performance_detail` VALUES ('321015', '192.168.2.2', 'avgRTT', null, null, '0.9134', '1', '1517294687');
INSERT INTO `performance_detail` VALUES ('321016', '192.168.2.2', 'Com_begin', null, null, '1255', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321017', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321018', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321019', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321020', '192.168.2.2', 'Com_insert', null, null, '57', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321021', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321022', '192.168.2.2', 'Com_update', null, null, '906', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321023', '192.168.2.2', 'Questions', null, null, '16113', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321024', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321025', '192.168.2.2', 'Bytes_received', null, null, '1518746', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321026', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321027', '192.168.2.2', 'Com_commit', null, null, '1255', '1', '1517294952');
INSERT INTO `performance_detail` VALUES ('321028', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321029', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321030', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321031', '192.168.2.200', 'ifInUtile2', null, null, '0.0316594', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321032', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321033', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321034', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321035', '192.168.2.200', 'dskUsage', null, null, '86.49151364141', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321036', '192.168.2.200', 'dskUsed', null, null, '14104268', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321037', '192.168.2.200', 'memUsage', null, null, '71.395861884547', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321038', '192.168.2.200', 'ifOutUtile2', null, null, '0.012016', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321039', '192.168.2.200', 'ssCpuUser', null, null, '1', '1', '1517294972');
INSERT INTO `performance_detail` VALUES ('321040', '192.168.2.2', 'maxRTT', null, null, '1.156', '1', '1517294996');
INSERT INTO `performance_detail` VALUES ('321041', '192.168.2.2', 'minRTT', null, null, '0.461', '1', '1517294996');
INSERT INTO `performance_detail` VALUES ('321042', '192.168.2.2', 'avgRTT', null, null, '0.6684', '1', '1517294996');
INSERT INTO `performance_detail` VALUES ('321043', '192.168.2.2', 'Com_begin', null, null, '1283', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321044', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321045', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321046', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321047', '192.168.2.2', 'Com_insert', null, null, '60', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321048', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321049', '192.168.2.2', 'Com_update', null, null, '934', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321050', '192.168.2.2', 'Questions', null, null, '16539', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321051', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321052', '192.168.2.2', 'Bytes_received', null, null, '1556800', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321053', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321054', '192.168.2.2', 'Com_commit', null, null, '1283', '1', '1517295257');
INSERT INTO `performance_detail` VALUES ('321055', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321056', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321057', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321058', '192.168.2.200', 'ifInUtile2', null, null, '0.0314863', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321059', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321060', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321061', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321062', '192.168.2.200', 'dskUsage', null, null, '86.491930637381', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321063', '192.168.2.200', 'dskUsed', null, null, '14104336', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321064', '192.168.2.200', 'memUsage', null, null, '71.307910218271', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321065', '192.168.2.200', 'ifOutUtile2', null, null, '0.0120225', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321066', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517295277');
INSERT INTO `performance_detail` VALUES ('321067', '192.168.2.2', 'maxRTT', null, null, '0.338', '1', '1517295305');
INSERT INTO `performance_detail` VALUES ('321068', '192.168.2.2', 'minRTT', null, null, '0.263', '1', '1517295305');
INSERT INTO `performance_detail` VALUES ('321069', '192.168.2.2', 'avgRTT', null, null, '0.2946', '1', '1517295305');
INSERT INTO `performance_detail` VALUES ('321070', '192.168.2.2', 'Com_begin', null, null, '1310', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321071', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321072', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321073', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321074', '192.168.2.2', 'Com_insert', null, null, '63', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321075', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321076', '192.168.2.2', 'Com_update', null, null, '961', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321077', '192.168.2.2', 'Questions', null, null, '16960', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321078', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321079', '192.168.2.2', 'Bytes_received', null, null, '1595878', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321080', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321081', '192.168.2.2', 'Com_commit', null, null, '1310', '1', '1517295562');
INSERT INTO `performance_detail` VALUES ('321082', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321083', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321084', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321085', '192.168.2.200', 'ifInUtile2', null, null, '0.0345195', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321086', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321087', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321088', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321089', '192.168.2.200', 'dskUsage', null, null, '86.492200458303', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321090', '192.168.2.200', 'dskUsed', null, null, '14104380', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321091', '192.168.2.200', 'memUsage', null, null, '71.226643714276', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321092', '192.168.2.200', 'ifOutUtile2', null, null, '0.0191511', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321093', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517295582');
INSERT INTO `performance_detail` VALUES ('321094', '192.168.2.2', 'maxRTT', null, null, '0.305', '1', '1517295614');
INSERT INTO `performance_detail` VALUES ('321095', '192.168.2.2', 'minRTT', null, null, '0.264', '1', '1517295614');
INSERT INTO `performance_detail` VALUES ('321096', '192.168.2.2', 'avgRTT', null, null, '0.2852', '1', '1517295614');
INSERT INTO `performance_detail` VALUES ('321097', '192.168.2.2', 'Com_begin', null, null, '1338', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321098', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321099', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321100', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321101', '192.168.2.2', 'Com_insert', null, null, '66', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321102', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321103', '192.168.2.2', 'Com_update', null, null, '989', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321104', '192.168.2.2', 'Questions', null, null, '17386', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321105', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321106', '192.168.2.2', 'Bytes_received', null, null, '1633934', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321107', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321108', '192.168.2.2', 'Com_commit', null, null, '1338', '1', '1517295867');
INSERT INTO `performance_detail` VALUES ('321109', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321110', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321111', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321112', '192.168.2.200', 'ifInUtile2', null, null, '0.0322905', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321113', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321114', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321115', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321116', '192.168.2.200', 'dskUsage', null, null, '86.492691041798', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321117', '192.168.2.200', 'dskUsed', null, null, '14104460', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321118', '192.168.2.200', 'memUsage', null, null, '72.762559748638', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321119', '192.168.2.200', 'ifOutUtile2', null, null, '0.017756', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321120', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517295887');
INSERT INTO `performance_detail` VALUES ('321121', '192.168.2.2', 'maxRTT', null, null, '0.404', '1', '1517295923');
INSERT INTO `performance_detail` VALUES ('321122', '192.168.2.2', 'minRTT', null, null, '0.28', '1', '1517295923');
INSERT INTO `performance_detail` VALUES ('321123', '192.168.2.2', 'avgRTT', null, null, '0.3486', '1', '1517295923');
INSERT INTO `performance_detail` VALUES ('321124', '192.168.2.2', 'Com_begin', null, null, '1366', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321125', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321126', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321127', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321128', '192.168.2.2', 'Com_insert', null, null, '69', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321129', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321130', '192.168.2.2', 'Com_update', null, null, '1017', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321131', '192.168.2.2', 'Questions', null, null, '17812', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321132', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321133', '192.168.2.2', 'Bytes_received', null, null, '1671988', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321134', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321135', '192.168.2.2', 'Com_commit', null, null, '1366', '1', '1517296172');
INSERT INTO `performance_detail` VALUES ('321136', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321137', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321138', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321139', '192.168.2.200', 'ifInUtile2', null, null, '0.0333184', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321140', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321141', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321142', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321143', '192.168.2.200', 'dskUsage', null, null, '86.493083508594', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321144', '192.168.2.200', 'dskUsed', null, null, '14104524', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321145', '192.168.2.200', 'memUsage', null, null, '72.982961192633', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321146', '192.168.2.200', 'ifOutUtile2', null, null, '0.0181389', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321147', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517296192');
INSERT INTO `performance_detail` VALUES ('321148', '192.168.2.2', 'maxRTT', null, null, '0.521', '1', '1517296232');
INSERT INTO `performance_detail` VALUES ('321149', '192.168.2.2', 'minRTT', null, null, '0.26', '1', '1517296232');
INSERT INTO `performance_detail` VALUES ('321150', '192.168.2.2', 'avgRTT', null, null, '0.366', '1', '1517296232');
INSERT INTO `performance_detail` VALUES ('321151', '192.168.2.2', 'Com_begin', null, null, '1393', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321152', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321153', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321154', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321155', '192.168.2.2', 'Com_insert', null, null, '72', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321156', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321157', '192.168.2.2', 'Com_update', null, null, '1044', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321158', '192.168.2.2', 'Questions', null, null, '18223', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321159', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321160', '192.168.2.2', 'Bytes_received', null, null, '1708764', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321161', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321162', '192.168.2.2', 'Com_commit', null, null, '1393', '1', '1517296477');
INSERT INTO `performance_detail` VALUES ('321163', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321164', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321165', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321166', '192.168.2.200', 'ifInUtile2', null, null, '0.0333879', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321167', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321168', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321169', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321170', '192.168.2.200', 'dskUsage', null, null, '86.49352503374', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321171', '192.168.2.200', 'dskUsed', null, null, '14104596', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321172', '192.168.2.200', 'memUsage', null, null, '73.132332787378', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321173', '192.168.2.200', 'ifOutUtile2', null, null, '0.0181633', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321174', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517296497');
INSERT INTO `performance_detail` VALUES ('321175', '192.168.2.2', 'maxRTT', null, null, '0.46', '1', '1517296541');
INSERT INTO `performance_detail` VALUES ('321176', '192.168.2.2', 'minRTT', null, null, '0.31', '1', '1517296541');
INSERT INTO `performance_detail` VALUES ('321177', '192.168.2.2', 'avgRTT', null, null, '0.3594', '1', '1517296541');
INSERT INTO `performance_detail` VALUES ('321178', '192.168.2.2', 'Com_begin', null, null, '1421', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321179', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321180', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321181', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321182', '192.168.2.2', 'Com_insert', null, null, '75', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321183', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321184', '192.168.2.2', 'Com_update', null, null, '1072', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321185', '192.168.2.2', 'Questions', null, null, '18648', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321186', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321187', '192.168.2.2', 'Bytes_received', null, null, '1746802', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321188', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321189', '192.168.2.2', 'Com_commit', null, null, '1421', '1', '1517296783');
INSERT INTO `performance_detail` VALUES ('321190', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321191', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321192', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321193', '192.168.2.200', 'ifInUtile2', null, null, '0.0335167', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321194', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321195', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321196', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321197', '192.168.2.200', 'dskUsage', null, null, '86.493966558885', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321198', '192.168.2.200', 'dskUsed', null, null, '14104668', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321199', '192.168.2.200', 'memUsage', null, null, '73.408513554167', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321200', '192.168.2.200', 'ifOutUtile2', null, null, '0.0181388', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321201', '192.168.2.200', 'ssCpuUser', null, null, '1', '1', '1517296803');
INSERT INTO `performance_detail` VALUES ('321202', '192.168.2.2', 'maxRTT', null, null, '0.453', '1', '1517296850');
INSERT INTO `performance_detail` VALUES ('321203', '192.168.2.2', 'minRTT', null, null, '0.268', '1', '1517296850');
INSERT INTO `performance_detail` VALUES ('321204', '192.168.2.2', 'avgRTT', null, null, '0.3378', '1', '1517296850');
INSERT INTO `performance_detail` VALUES ('321205', '192.168.2.2', 'Com_begin', null, null, '1449', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321206', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321207', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321208', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321209', '192.168.2.2', 'Com_insert', null, null, '78', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321210', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321211', '192.168.2.2', 'Com_update', null, null, '1100', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321212', '192.168.2.2', 'Questions', null, null, '19081', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321213', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321214', '192.168.2.2', 'Bytes_received', null, null, '1785651', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321215', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321216', '192.168.2.2', 'Com_commit', null, null, '1449', '1', '1517297088');
INSERT INTO `performance_detail` VALUES ('321217', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321218', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321219', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321220', '192.168.2.200', 'ifInUtile2', null, null, '0.0322599', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321221', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321222', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321223', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321224', '192.168.2.200', 'dskUsage', null, null, '86.494432613206', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321225', '192.168.2.200', 'dskUsed', null, null, '14104744', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321226', '192.168.2.200', 'memUsage', null, null, '73.534904903567', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321227', '192.168.2.200', 'ifOutUtile2', null, null, '0.0177309', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321228', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517297108');
INSERT INTO `performance_detail` VALUES ('321229', '192.168.2.2', 'maxRTT', null, null, '0.443', '1', '1517297159');
INSERT INTO `performance_detail` VALUES ('321230', '192.168.2.2', 'minRTT', null, null, '0.265', '1', '1517297159');
INSERT INTO `performance_detail` VALUES ('321231', '192.168.2.2', 'avgRTT', null, null, '0.34', '1', '1517297159');
INSERT INTO `performance_detail` VALUES ('321232', '192.168.2.2', 'Com_begin', null, null, '1477', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321233', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321234', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321235', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321236', '192.168.2.2', 'Com_insert', null, null, '81', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321237', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321238', '192.168.2.2', 'Com_update', null, null, '1128', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321239', '192.168.2.2', 'Questions', null, null, '19578', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321240', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321241', '192.168.2.2', 'Bytes_received', null, null, '1830399', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321242', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321243', '192.168.2.2', 'Com_commit', null, null, '1477', '1', '1517297393');
INSERT INTO `performance_detail` VALUES ('321244', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321245', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321246', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321247', '192.168.2.200', 'ifInUtile2', null, null, '0.0345319', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321248', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321249', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321250', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321251', '192.168.2.200', 'dskUsage', null, null, '86.494849609177', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321252', '192.168.2.200', 'dskUsed', null, null, '14104812', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321253', '192.168.2.200', 'memUsage', null, null, '73.774317277802', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321254', '192.168.2.200', 'ifOutUtile2', null, null, '0.0191697', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321255', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517297413');
INSERT INTO `performance_detail` VALUES ('321256', '192.168.2.2', 'maxRTT', null, null, '0.411', '1', '1517297468');
INSERT INTO `performance_detail` VALUES ('321257', '192.168.2.2', 'minRTT', null, null, '0.263', '1', '1517297468');
INSERT INTO `performance_detail` VALUES ('321258', '192.168.2.2', 'avgRTT', null, null, '0.343', '1', '1517297468');
INSERT INTO `performance_detail` VALUES ('321259', '192.168.2.2', 'Com_begin', null, null, '1505', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321260', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321261', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321262', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321263', '192.168.2.2', 'Com_insert', null, null, '84', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321264', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321265', '192.168.2.2', 'Com_update', null, null, '1156', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321266', '192.168.2.2', 'Questions', null, null, '20164', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321267', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321268', '192.168.2.2', 'Bytes_received', null, null, '1886426', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321269', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321270', '192.168.2.2', 'Com_commit', null, null, '1505', '1', '1517297698');
INSERT INTO `performance_detail` VALUES ('321271', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321272', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321273', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321274', '192.168.2.200', 'ifInUtile2', null, null, '0.0323849', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321275', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321276', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321277', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321278', '192.168.2.200', 'dskUsage', null, null, '86.495340192672', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321279', '192.168.2.200', 'dskUsed', null, null, '14104892', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321280', '192.168.2.200', 'memUsage', null, null, '74.225356820537', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321281', '192.168.2.200', 'ifOutUtile2', null, null, '0.01786', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321282', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517297718');
INSERT INTO `performance_detail` VALUES ('321283', '192.168.2.2', 'maxRTT', null, null, '0.384', '1', '1517297777');
INSERT INTO `performance_detail` VALUES ('321284', '192.168.2.2', 'minRTT', null, null, '0.267', '1', '1517297777');
INSERT INTO `performance_detail` VALUES ('321285', '192.168.2.2', 'avgRTT', null, null, '0.3172', '1', '1517297777');
INSERT INTO `performance_detail` VALUES ('321286', '192.168.2.2', 'Com_begin', null, null, '1532', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321287', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321288', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321289', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321290', '192.168.2.2', 'Com_insert', null, null, '87', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321291', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321292', '192.168.2.2', 'Com_update', null, null, '1183', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321293', '192.168.2.2', 'Questions', null, null, '20580', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321294', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321295', '192.168.2.2', 'Bytes_received', null, null, '1923438', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321296', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321297', '192.168.2.2', 'Com_commit', null, null, '1532', '1', '1517298003');
INSERT INTO `performance_detail` VALUES ('321298', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321299', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321300', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321301', '192.168.2.200', 'ifInUtile2', null, null, '0.0322713', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321302', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321303', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321304', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321305', '192.168.2.200', 'dskUsage', null, null, '86.495757188643', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321306', '192.168.2.200', 'dskUsed', null, null, '14104960', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321307', '192.168.2.200', 'memUsage', null, null, '74.361984824682', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321308', '192.168.2.200', 'ifOutUtile2', null, null, '0.0178045', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321309', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517298023');
INSERT INTO `performance_detail` VALUES ('321310', '192.168.2.2', 'maxRTT', null, null, '0.401', '1', '1517298086');
INSERT INTO `performance_detail` VALUES ('321311', '192.168.2.2', 'minRTT', null, null, '0.31', '1', '1517298086');
INSERT INTO `performance_detail` VALUES ('321312', '192.168.2.2', 'avgRTT', null, null, '0.3396', '1', '1517298086');
INSERT INTO `performance_detail` VALUES ('321313', '192.168.2.2', 'Com_begin', null, null, '1560', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321314', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321315', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321316', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321317', '192.168.2.2', 'Com_insert', null, null, '90', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321318', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321319', '192.168.2.2', 'Com_update', null, null, '1216', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321320', '192.168.2.2', 'Questions', null, null, '21047', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321321', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321322', '192.168.2.2', 'Bytes_received', null, null, '1967124', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321323', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321324', '192.168.2.2', 'Com_commit', null, null, '1560', '1', '1517298308');
INSERT INTO `performance_detail` VALUES ('321325', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321326', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321327', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321328', '192.168.2.200', 'ifInUtile2', null, null, '0.0345161', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321329', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321330', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321331', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321332', '192.168.2.200', 'dskUsage', null, null, '86.496247772138', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321333', '192.168.2.200', 'dskUsed', null, null, '14105040', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321334', '192.168.2.200', 'memUsage', null, null, '74.381413577565', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321335', '192.168.2.200', 'ifOutUtile2', null, null, '0.0185744', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321336', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517298328');
INSERT INTO `performance_detail` VALUES ('321337', '192.168.2.2', 'maxRTT', null, null, '0.326', '1', '1517298395');
INSERT INTO `performance_detail` VALUES ('321338', '192.168.2.2', 'minRTT', null, null, '0.294', '1', '1517298395');
INSERT INTO `performance_detail` VALUES ('321339', '192.168.2.2', 'avgRTT', null, null, '0.3072', '1', '1517298395');
INSERT INTO `performance_detail` VALUES ('321340', '192.168.2.2', 'Com_begin', null, null, '1588', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321341', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321342', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321343', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321344', '192.168.2.2', 'Com_insert', null, null, '93', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321345', '192.168.2.2', 'connectNum', null, null, '18', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321346', '192.168.2.2', 'Com_update', null, null, '1247', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321347', '192.168.2.2', 'Questions', null, null, '21531', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321348', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321349', '192.168.2.2', 'Bytes_received', null, null, '2013938', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321350', '192.168.2.2', 'threadNum', null, null, '14', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321351', '192.168.2.2', 'Com_commit', null, null, '1588', '1', '1517298613');
INSERT INTO `performance_detail` VALUES ('321352', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321353', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321354', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321355', '192.168.2.200', 'ifInUtile2', null, null, '0.0324569', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321356', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321357', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321358', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321359', '192.168.2.200', 'dskUsage', null, null, '86.496615709759', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321360', '192.168.2.200', 'dskUsed', null, null, '14105100', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321361', '192.168.2.200', 'memUsage', null, null, '74.329603569877', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321362', '192.168.2.200', 'ifOutUtile2', null, null, '0.0177429', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321363', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517298633');
INSERT INTO `performance_detail` VALUES ('321364', '192.168.2.2', 'maxRTT', null, null, '0.449', '1', '1517298705');
INSERT INTO `performance_detail` VALUES ('321365', '192.168.2.2', 'minRTT', null, null, '0.256', '1', '1517298705');
INSERT INTO `performance_detail` VALUES ('321366', '192.168.2.2', 'avgRTT', null, null, '0.3458', '1', '1517298705');
INSERT INTO `performance_detail` VALUES ('321367', '192.168.2.2', 'Com_begin', null, null, '1615', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321368', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321369', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321370', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321371', '192.168.2.2', 'Com_insert', null, null, '96', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321372', '192.168.2.2', 'connectNum', null, null, '22', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321373', '192.168.2.2', 'Com_update', null, null, '1274', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321374', '192.168.2.2', 'Questions', null, null, '22029', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321375', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321376', '192.168.2.2', 'Bytes_received', null, null, '2058849', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321377', '192.168.2.2', 'threadNum', null, null, '18', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321378', '192.168.2.2', 'Com_commit', null, null, '1615', '1', '1517298919');
INSERT INTO `performance_detail` VALUES ('321379', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321380', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321381', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321382', '192.168.2.200', 'ifInUtile2', null, null, '0.0323029', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321383', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321384', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321385', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321386', '192.168.2.200', 'dskUsage', null, null, '86.496910059856', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321387', '192.168.2.200', 'dskUsed', null, null, '14105148', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321388', '192.168.2.200', 'memUsage', null, null, '74.679738944413', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321389', '192.168.2.200', 'ifOutUtile2', null, null, '0.0177573', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321390', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517298938');
INSERT INTO `performance_detail` VALUES ('321391', '192.168.2.2', 'maxRTT', null, null, '0.559', '1', '1517299014');
INSERT INTO `performance_detail` VALUES ('321392', '192.168.2.2', 'minRTT', null, null, '0.292', '1', '1517299014');
INSERT INTO `performance_detail` VALUES ('321393', '192.168.2.2', 'avgRTT', null, null, '0.368', '1', '1517299014');
INSERT INTO `performance_detail` VALUES ('321394', '192.168.2.2', 'Com_begin', null, null, '1643', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321395', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321396', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321397', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321398', '192.168.2.2', 'Com_insert', null, null, '99', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321399', '192.168.2.2', 'connectNum', null, null, '22', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321400', '192.168.2.2', 'Com_update', null, null, '1302', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321401', '192.168.2.2', 'Questions', null, null, '22576', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321402', '192.168.2.2', 'Com_delete', null, null, '22', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321403', '192.168.2.2', 'Bytes_received', null, null, '2109429', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321404', '192.168.2.2', 'threadNum', null, null, '18', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321405', '192.168.2.2', 'Com_commit', null, null, '1643', '1', '1517299224');
INSERT INTO `performance_detail` VALUES ('321406', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321407', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321408', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321409', '192.168.2.200', 'ifInUtile2', null, null, '0.0342182', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321410', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321411', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321412', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321413', '192.168.2.200', 'dskUsage', null, null, '86.497253468303', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321414', '192.168.2.200', 'dskUsed', null, null, '14105204', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321415', '192.168.2.200', 'memUsage', null, null, '74.812606544774', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321416', '192.168.2.200', 'ifOutUtile2', null, null, '0.01687', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321417', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517299243');
INSERT INTO `performance_detail` VALUES ('321418', '192.168.2.2', 'maxRTT', null, null, '0.641', '1', '1517299323');
INSERT INTO `performance_detail` VALUES ('321419', '192.168.2.2', 'minRTT', null, null, '0.247', '1', '1517299323');
INSERT INTO `performance_detail` VALUES ('321420', '192.168.2.2', 'avgRTT', null, null, '0.5028', '1', '1517299323');
INSERT INTO `performance_detail` VALUES ('321421', '192.168.2.2', 'Com_begin', null, null, '1671', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321422', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321423', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321424', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321425', '192.168.2.2', 'Com_insert', null, null, '103', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321426', '192.168.2.2', 'connectNum', null, null, '24', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321427', '192.168.2.2', 'Com_update', null, null, '1346', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321428', '192.168.2.2', 'Questions', null, null, '23418', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321429', '192.168.2.2', 'Com_delete', null, null, '25', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321430', '192.168.2.2', 'Bytes_received', null, null, '2189763', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321431', '192.168.2.2', 'threadNum', null, null, '20', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321432', '192.168.2.2', 'Com_commit', null, null, '1671', '1', '1517299529');
INSERT INTO `performance_detail` VALUES ('321433', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321434', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321435', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321436', '192.168.2.200', 'ifInUtile2', null, null, '0.032341', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321437', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321438', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321439', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321440', '192.168.2.200', 'dskUsage', null, null, '86.497670464273', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321441', '192.168.2.200', 'dskUsed', null, null, '14105272', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321442', '192.168.2.200', 'memUsage', null, null, '74.838511548618', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321443', '192.168.2.200', 'ifOutUtile2', null, null, '0.0121871', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321444', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517299548');
INSERT INTO `performance_detail` VALUES ('321445', '192.168.2.2', 'Com_begin', null, null, '1674', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321446', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321447', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321448', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321449', '192.168.2.2', 'Com_insert', null, null, '105', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321450', '192.168.2.2', 'connectNum', null, null, '24', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321451', '192.168.2.2', 'Com_update', null, null, '1349', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321452', '192.168.2.2', 'Questions', null, null, '23574', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321453', '192.168.2.2', 'Com_delete', null, null, '25', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321454', '192.168.2.2', 'Bytes_received', null, null, '2208054', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321455', '192.168.2.2', 'threadNum', null, null, '20', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321456', '192.168.2.2', 'Com_commit', null, null, '1674', '1', '1517299564');
INSERT INTO `performance_detail` VALUES ('321457', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517299578');
INSERT INTO `performance_detail` VALUES ('321458', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517299578');
INSERT INTO `performance_detail` VALUES ('321459', '192.168.2.200', 'dskUsage', null, null, '86.497940285196', '1', '1517299578');
INSERT INTO `performance_detail` VALUES ('321460', '192.168.2.200', 'dskUsed', null, null, '14105316', '1', '1517299578');
INSERT INTO `performance_detail` VALUES ('321461', '192.168.2.200', 'memUsage', null, null, '74.844987799579', '1', '1517299578');
INSERT INTO `performance_detail` VALUES ('321462', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517299578');
INSERT INTO `performance_detail` VALUES ('321463', '192.168.2.2', 'maxRTT', null, null, '0.646', '1', '1517299592');
INSERT INTO `performance_detail` VALUES ('321464', '192.168.2.2', 'minRTT', null, null, '0.285', '1', '1517299592');
INSERT INTO `performance_detail` VALUES ('321465', '192.168.2.2', 'avgRTT', null, null, '0.4992', '1', '1517299592');
INSERT INTO `performance_detail` VALUES ('321466', '192.168.2.2', 'Com_begin', null, null, '1702', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321467', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321468', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321469', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321470', '192.168.2.2', 'Com_insert', null, null, '253', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321471', '192.168.2.2', 'connectNum', null, null, '24', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321472', '192.168.2.2', 'Com_update', null, null, '1405', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321473', '192.168.2.2', 'Questions', null, null, '24646', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321474', '192.168.2.2', 'Com_delete', null, null, '28', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321475', '192.168.2.2', 'Bytes_received', null, null, '2326783', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321476', '192.168.2.2', 'threadNum', null, null, '20', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321477', '192.168.2.2', 'Com_commit', null, null, '1702', '1', '1517299869');
INSERT INTO `performance_detail` VALUES ('321478', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321479', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321480', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321481', '192.168.2.200', 'ifInUtile2', null, null, '0.0315066', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321482', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321483', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321484', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321485', '192.168.2.200', 'dskUsage', null, null, '86.498283693642', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321486', '192.168.2.200', 'dskUsed', null, null, '14105372', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321487', '192.168.2.200', 'memUsage', null, null, '74.867759133603', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321488', '192.168.2.200', 'ifOutUtile2', null, null, '0.0119935', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321489', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517299883');
INSERT INTO `performance_detail` VALUES ('321490', '192.168.2.2', 'maxRTT', null, null, '0.992', '1', '1517299901');
INSERT INTO `performance_detail` VALUES ('321491', '192.168.2.2', 'minRTT', null, null, '0.57', '1', '1517299901');
INSERT INTO `performance_detail` VALUES ('321492', '192.168.2.2', 'avgRTT', null, null, '0.7188', '1', '1517299901');
INSERT INTO `performance_detail` VALUES ('321493', '192.168.2.2', 'Com_begin', null, null, '1730', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321494', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321495', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321496', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321497', '192.168.2.2', 'Com_insert', null, null, '256', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321498', '192.168.2.2', 'connectNum', null, null, '24', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321499', '192.168.2.2', 'Com_update', null, null, '1434', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321500', '192.168.2.2', 'Questions', null, null, '25128', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321501', '192.168.2.2', 'Com_delete', null, null, '28', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321502', '192.168.2.2', 'Bytes_received', null, null, '2371909', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321503', '192.168.2.2', 'threadNum', null, null, '20', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321504', '192.168.2.2', 'Com_commit', null, null, '1730', '1', '1517300174');
INSERT INTO `performance_detail` VALUES ('321505', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321506', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321507', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321508', '192.168.2.200', 'ifInUtile2', null, null, '0.0353529', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321509', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321510', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321511', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321512', '192.168.2.200', 'dskUsage', null, null, '86.498627102089', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321513', '192.168.2.200', 'dskUsed', null, null, '14105428', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321514', '192.168.2.200', 'memUsage', null, null, '75.125764615436', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321515', '192.168.2.200', 'ifOutUtile2', null, null, '0.0143036', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321516', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517300188');
INSERT INTO `performance_detail` VALUES ('321517', '192.168.2.2', 'maxRTT', null, null, '11.146', '1', '1517300210');
INSERT INTO `performance_detail` VALUES ('321518', '192.168.2.2', 'minRTT', null, null, '0.259', '1', '1517300210');
INSERT INTO `performance_detail` VALUES ('321519', '192.168.2.2', 'avgRTT', null, null, '2.5884', '1', '1517300210');
INSERT INTO `performance_detail` VALUES ('321520', '192.168.2.2', 'Com_begin', null, null, '1757', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321521', '192.168.2.2', 'mysqlStatus', null, null, '1', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321522', '192.168.2.2', 'Slow_queries', null, null, '0', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321523', '192.168.2.2', 'Com_rollback', null, null, '0 0', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321524', '192.168.2.2', 'Com_insert', null, null, '259', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321525', '192.168.2.2', 'connectNum', null, null, '24', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321526', '192.168.2.2', 'Com_update', null, null, '1461', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321527', '192.168.2.2', 'Questions', null, null, '25579', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321528', '192.168.2.2', 'Com_delete', null, null, '28', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321529', '192.168.2.2', 'Bytes_received', null, null, '2414233', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321530', '192.168.2.2', 'threadNum', null, null, '20', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321531', '192.168.2.2', 'Com_commit', null, null, '1757', '1', '1517300480');
INSERT INTO `performance_detail` VALUES ('321532', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321533', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321534', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321535', '192.168.2.200', 'ifInUtile2', null, null, '0.0320928', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321536', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321537', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321538', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321539', '192.168.2.200', 'dskUsage', null, null, '86.49899503971', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321540', '192.168.2.200', 'dskUsed', null, null, '14105488', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321541', '192.168.2.200', 'memUsage', null, null, '75.061002105826', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321542', '192.168.2.200', 'ifOutUtile2', null, null, '0.0120461', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321543', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517300493');
INSERT INTO `performance_detail` VALUES ('321544', '192.168.2.2', 'maxRTT', null, null, '0.622', '1', '1517300519');
INSERT INTO `performance_detail` VALUES ('321545', '192.168.2.2', 'minRTT', null, null, '0.269', '1', '1517300519');
INSERT INTO `performance_detail` VALUES ('321546', '192.168.2.2', 'avgRTT', null, null, '0.4808', '1', '1517300519');
INSERT INTO `performance_detail` VALUES ('321547', '192.168.2.2', 'maxRTT', null, null, '0.651', '1', '1517300828');
INSERT INTO `performance_detail` VALUES ('321548', '192.168.2.2', 'minRTT', null, null, '0.574', '1', '1517300828');
INSERT INTO `performance_detail` VALUES ('321549', '192.168.2.2', 'avgRTT', null, null, '0.6156', '1', '1517300828');
INSERT INTO `performance_detail` VALUES ('321550', '192.168.2.2', 'maxRTT', null, null, '0.764', '1', '1517301137');
INSERT INTO `performance_detail` VALUES ('321551', '192.168.2.2', 'minRTT', null, null, '0.559', '1', '1517301137');
INSERT INTO `performance_detail` VALUES ('321552', '192.168.2.2', 'avgRTT', null, null, '0.6122', '1', '1517301137');
INSERT INTO `performance_detail` VALUES ('321553', '192.168.2.2', 'maxRTT', null, null, '0.467', '1', '1517301391');
INSERT INTO `performance_detail` VALUES ('321554', '192.168.2.2', 'minRTT', null, null, '0.258', '1', '1517301391');
INSERT INTO `performance_detail` VALUES ('321555', '192.168.2.2', 'avgRTT', null, null, '0.3792', '1', '1517301391');
INSERT INTO `performance_detail` VALUES ('321556', '192.168.2.2', 'maxRTT', null, null, '0.752', '1', '1517301700');
INSERT INTO `performance_detail` VALUES ('321557', '192.168.2.2', 'minRTT', null, null, '0.361', '1', '1517301700');
INSERT INTO `performance_detail` VALUES ('321558', '192.168.2.2', 'avgRTT', null, null, '0.5622', '1', '1517301700');
INSERT INTO `performance_detail` VALUES ('321559', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517301954');
INSERT INTO `performance_detail` VALUES ('321560', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517301954');
INSERT INTO `performance_detail` VALUES ('321561', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517301954');
INSERT INTO `performance_detail` VALUES ('321562', '192.168.2.2', 'maxRTT', null, null, '1.08', '1', '1517302009');
INSERT INTO `performance_detail` VALUES ('321563', '192.168.2.2', 'minRTT', null, null, '0.365', '1', '1517302009');
INSERT INTO `performance_detail` VALUES ('321564', '192.168.2.2', 'avgRTT', null, null, '0.7092', '1', '1517302009');
INSERT INTO `performance_detail` VALUES ('321565', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321566', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321567', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321568', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321569', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321570', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321571', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321572', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321573', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321574', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321575', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321576', '10.10.10.1', 'ifInUtile3', null, null, '5.3646865', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321577', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321578', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321579', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321580', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321581', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321582', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321583', '10.10.10.1', 'ifOutUtile1', null, null, '0.1249488', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321584', '10.10.10.1', 'ifOutUtile2', null, null, '0.1250179', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321585', '10.10.10.1', 'ifOutUtile3', null, null, '2.7910907', '1', '1517302259');
INSERT INTO `performance_detail` VALUES ('321586', '192.168.2.2', 'maxRTT', null, null, '2.018', '1', '1517302319');
INSERT INTO `performance_detail` VALUES ('321587', '192.168.2.2', 'minRTT', null, null, '0.306', '1', '1517302319');
INSERT INTO `performance_detail` VALUES ('321588', '192.168.2.2', 'avgRTT', null, null, '0.7694', '1', '1517302319');
INSERT INTO `performance_detail` VALUES ('321589', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517302428');
INSERT INTO `performance_detail` VALUES ('321590', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517302428');
INSERT INTO `performance_detail` VALUES ('321591', '192.168.2.200', 'dskUsage', null, null, '86.500319615147', '1', '1517302428');
INSERT INTO `performance_detail` VALUES ('321592', '192.168.2.200', 'dskUsed', null, null, '14105704', '1', '1517302428');
INSERT INTO `performance_detail` VALUES ('321593', '192.168.2.200', 'memUsage', null, null, '74.836631346726', '1', '1517302428');
INSERT INTO `performance_detail` VALUES ('321594', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517302428');
INSERT INTO `performance_detail` VALUES ('321595', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321596', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321597', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321598', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321599', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321600', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321601', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321602', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321603', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321604', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321605', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321606', '10.10.10.1', 'ifInUtile3', null, null, '5.0949227', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321607', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321608', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321609', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321610', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321611', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321612', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321613', '10.10.10.1', 'ifOutUtile1', null, null, '0.1241688', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321614', '10.10.10.1', 'ifOutUtile2', null, null, '0.124162', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321615', '10.10.10.1', 'ifOutUtile3', null, null, '2.5996956', '1', '1517302564');
INSERT INTO `performance_detail` VALUES ('321616', '192.168.2.2', 'maxRTT', null, null, '5.199', '1', '1517302628');
INSERT INTO `performance_detail` VALUES ('321617', '192.168.2.2', 'minRTT', null, null, '0.362', '1', '1517302628');
INSERT INTO `performance_detail` VALUES ('321618', '192.168.2.2', 'avgRTT', null, null, '1.4662', '1', '1517302628');
INSERT INTO `performance_detail` VALUES ('321619', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321620', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321621', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321622', '192.168.2.200', 'ifInUtile2', null, null, '0.030039', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321623', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321624', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321625', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321626', '192.168.2.200', 'dskUsage', null, null, '86.50054037772', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321627', '192.168.2.200', 'dskUsed', null, null, '14105740', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321628', '192.168.2.200', 'memUsage', null, null, '74.79777384096', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321629', '192.168.2.200', 'ifOutUtile2', null, null, '0.0120034', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321630', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517302733');
INSERT INTO `performance_detail` VALUES ('321631', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517302854');
INSERT INTO `performance_detail` VALUES ('321632', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517302854');
INSERT INTO `performance_detail` VALUES ('321633', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517302854');
INSERT INTO `performance_detail` VALUES ('321634', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517302854');
INSERT INTO `performance_detail` VALUES ('321635', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517302854');
INSERT INTO `performance_detail` VALUES ('321636', '192.168.2.2', 'maxRTT', null, null, '2.197', '1', '1517302937');
INSERT INTO `performance_detail` VALUES ('321637', '192.168.2.2', 'minRTT', null, null, '0.228', '1', '1517302937');
INSERT INTO `performance_detail` VALUES ('321638', '192.168.2.2', 'avgRTT', null, null, '0.8512', '1', '1517302937');
INSERT INTO `performance_detail` VALUES ('321639', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321640', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321641', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321642', '192.168.2.200', 'ifInUtile2', null, null, '0.0319255', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321643', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321644', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321645', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321646', '192.168.2.200', 'dskUsage', null, null, '86.500761140293', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321647', '192.168.2.200', 'dskUsed', null, null, '14105776', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321648', '192.168.2.200', 'memUsage', null, null, '74.839973927867', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321649', '192.168.2.200', 'ifOutUtile2', null, null, '0.0125635', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321650', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517303038');
INSERT INTO `performance_detail` VALUES ('321651', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321652', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321653', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321654', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321655', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321656', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321657', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321658', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321659', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321660', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321661', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321662', '10.10.10.1', 'ifInUtile3', null, null, '4.9804987', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321663', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321664', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321665', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321666', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321667', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321668', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321669', '10.10.10.1', 'ifOutUtile1', null, null, '0.1216432', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321670', '10.10.10.1', 'ifOutUtile2', null, null, '0.1216001', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321671', '10.10.10.1', 'ifOutUtile3', null, null, '2.5876409', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321672', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321673', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321674', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321675', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321676', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321677', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321678', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321679', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321680', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321681', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321682', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321683', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321684', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321685', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517303159');
INSERT INTO `performance_detail` VALUES ('321686', '192.168.2.2', 'maxRTT', null, null, '0.343', '1', '1517303246');
INSERT INTO `performance_detail` VALUES ('321687', '192.168.2.2', 'minRTT', null, null, '0.302', '1', '1517303246');
INSERT INTO `performance_detail` VALUES ('321688', '192.168.2.2', 'avgRTT', null, null, '0.3228', '1', '1517303246');
INSERT INTO `performance_detail` VALUES ('321689', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321690', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321691', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321692', '192.168.2.200', 'ifInUtile2', null, null, '0.0298048', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321693', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321694', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321695', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321696', '192.168.2.200', 'dskUsage', null, null, '86.501030961215', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321697', '192.168.2.200', 'dskUsed', null, null, '14105820', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321698', '192.168.2.200', 'memUsage', null, null, '74.91789785072', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321699', '192.168.2.200', 'ifOutUtile2', null, null, '0.0117985', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321700', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517303343');
INSERT INTO `performance_detail` VALUES ('321701', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321702', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321703', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321704', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321705', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321706', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321707', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321708', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321709', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321710', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321711', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321712', '10.10.10.1', 'ifInUtile3', null, null, '5.3816742', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321713', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321714', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321715', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321716', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321717', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321718', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321719', '10.10.10.1', 'ifOutUtile1', null, null, '0.1248835', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321720', '10.10.10.1', 'ifOutUtile2', null, null, '0.1249504', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321721', '10.10.10.1', 'ifOutUtile3', null, null, '2.8204626', '1', '1517303464');
INSERT INTO `performance_detail` VALUES ('321722', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321723', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321724', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321725', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321726', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321727', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321728', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321729', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321730', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321731', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321732', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321733', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321734', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321735', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517303465');
INSERT INTO `performance_detail` VALUES ('321736', '192.168.2.2', 'maxRTT', null, null, '0.388', '1', '1517303555');
INSERT INTO `performance_detail` VALUES ('321737', '192.168.2.2', 'minRTT', null, null, '0.278', '1', '1517303555');
INSERT INTO `performance_detail` VALUES ('321738', '192.168.2.2', 'avgRTT', null, null, '0.3178', '1', '1517303555');
INSERT INTO `performance_detail` VALUES ('321739', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321740', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321741', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321742', '192.168.2.200', 'ifInUtile2', null, null, '0.031064', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321743', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321744', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321745', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321746', '192.168.2.200', 'dskUsage', null, null, '86.501374369662', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321747', '192.168.2.200', 'dskUsed', null, null, '14105876', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321748', '192.168.2.200', 'memUsage', null, null, '74.832870942942', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321749', '192.168.2.200', 'ifOutUtile2', null, null, '0.0123632', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321750', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517303648');
INSERT INTO `performance_detail` VALUES ('321751', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321752', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321753', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321754', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321755', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321756', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321757', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321758', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321759', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321760', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321761', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321762', '10.10.10.1', 'ifInUtile3', null, null, '5.3282662', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321763', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321764', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321765', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321766', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321767', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321768', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321769', '10.10.10.1', 'ifOutUtile1', null, null, '0.123266', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321770', '10.10.10.1', 'ifOutUtile2', null, null, '0.12323', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321771', '10.10.10.1', 'ifOutUtile3', null, null, '2.7054049', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321772', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321773', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321774', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321775', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321776', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321777', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321778', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321779', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321780', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321781', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321782', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321783', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321784', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321785', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517303770');
INSERT INTO `performance_detail` VALUES ('321786', '192.168.2.2', 'maxRTT', null, null, '0.331', '1', '1517303864');
INSERT INTO `performance_detail` VALUES ('321787', '192.168.2.2', 'minRTT', null, null, '0.265', '1', '1517303864');
INSERT INTO `performance_detail` VALUES ('321788', '192.168.2.2', 'avgRTT', null, null, '0.3', '1', '1517303864');
INSERT INTO `performance_detail` VALUES ('321789', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321790', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321791', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321792', '192.168.2.200', 'ifInUtile2', null, null, '0.0306959', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321793', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321794', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321795', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321796', '192.168.2.200', 'dskUsage', null, null, '86.501595132234', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321797', '192.168.2.200', 'dskUsed', null, null, '14105912', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321798', '192.168.2.200', 'memUsage', null, null, '74.839347193903', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321799', '192.168.2.200', 'ifOutUtile2', null, null, '0.0120775', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321800', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517303953');
INSERT INTO `performance_detail` VALUES ('321801', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321802', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321803', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321804', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321805', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321806', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321807', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321808', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321809', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321810', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321811', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321812', '10.10.10.1', 'ifInUtile3', null, null, '5.3894345', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321813', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321814', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321815', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321816', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321817', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321818', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321819', '10.10.10.1', 'ifOutUtile1', null, null, '0.125482', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321820', '10.10.10.1', 'ifOutUtile2', null, null, '0.1255373', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321821', '10.10.10.1', 'ifOutUtile3', null, null, '2.7997119', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321822', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321823', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321824', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321825', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321826', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321827', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321828', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321829', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321830', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321831', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321832', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321833', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321834', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321835', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517304075');
INSERT INTO `performance_detail` VALUES ('321836', '192.168.2.2', 'maxRTT', null, null, '0.384', '1', '1517304173');
INSERT INTO `performance_detail` VALUES ('321837', '192.168.2.2', 'minRTT', null, null, '0.246', '1', '1517304173');
INSERT INTO `performance_detail` VALUES ('321838', '192.168.2.2', 'avgRTT', null, null, '0.303', '1', '1517304173');
INSERT INTO `performance_detail` VALUES ('321839', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321840', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321841', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321842', '192.168.2.200', 'ifInUtile2', null, null, '0.0294885', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321843', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321844', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321845', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321846', '192.168.2.200', 'dskUsage', null, null, '86.501815894807', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321847', '192.168.2.200', 'dskUsed', null, null, '14105948', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321848', '192.168.2.200', 'memUsage', null, null, '74.849374937327', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321849', '192.168.2.200', 'ifOutUtile2', null, null, '0.0115358', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321850', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517304258');
INSERT INTO `performance_detail` VALUES ('321851', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321852', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321853', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321854', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321855', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321856', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321857', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321858', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321859', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321860', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321861', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321862', '10.10.10.1', 'ifInUtile3', null, null, '5.0233348', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321863', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321864', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321865', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321866', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321867', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321868', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321869', '10.10.10.1', 'ifOutUtile1', null, null, '0.1231037', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321870', '10.10.10.1', 'ifOutUtile2', null, null, '0.1230606', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321871', '10.10.10.1', 'ifOutUtile3', null, null, '2.6170045', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321872', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321873', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321874', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321875', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321876', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321877', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321878', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321879', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321880', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321881', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321882', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321883', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321884', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321885', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517304380');
INSERT INTO `performance_detail` VALUES ('321886', '192.168.2.2', 'maxRTT', null, null, '0.365', '1', '1517304482');
INSERT INTO `performance_detail` VALUES ('321887', '192.168.2.2', 'minRTT', null, null, '0.315', '1', '1517304482');
INSERT INTO `performance_detail` VALUES ('321888', '192.168.2.2', 'avgRTT', null, null, '0.3376', '1', '1517304482');
INSERT INTO `performance_detail` VALUES ('321889', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321890', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321891', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321892', '192.168.2.200', 'ifInUtile2', null, null, '0.0304925', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321893', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321894', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321895', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321896', '192.168.2.200', 'dskUsage', null, null, '86.50203665738', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321897', '192.168.2.200', 'dskUsed', null, null, '14105984', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321898', '192.168.2.200', 'memUsage', null, null, '74.855851188288', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321899', '192.168.2.200', 'ifOutUtile2', null, null, '0.0119375', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321900', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517304563');
INSERT INTO `performance_detail` VALUES ('321901', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321902', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321903', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321904', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321905', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321906', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321907', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321908', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321909', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321910', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321911', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321912', '10.10.10.1', 'ifInUtile3', null, null, '5.7965177', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321913', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321914', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321915', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321916', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321917', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321918', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321919', '10.10.10.1', 'ifOutUtile1', null, null, '0.1298212', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321920', '10.10.10.1', 'ifOutUtile2', null, null, '0.1298707', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321921', '10.10.10.1', 'ifOutUtile3', null, null, '2.9066462', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321922', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321923', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321924', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321925', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321926', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321927', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321928', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321929', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321930', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321931', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321932', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321933', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321934', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321935', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517304685');
INSERT INTO `performance_detail` VALUES ('321936', '192.168.2.2', 'maxRTT', null, null, '0.39', '1', '1517304791');
INSERT INTO `performance_detail` VALUES ('321937', '192.168.2.2', 'minRTT', null, null, '0.305', '1', '1517304791');
INSERT INTO `performance_detail` VALUES ('321938', '192.168.2.2', 'avgRTT', null, null, '0.34', '1', '1517304791');
INSERT INTO `performance_detail` VALUES ('321939', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321940', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321941', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321942', '192.168.2.200', 'ifInUtile2', null, null, '0.0306437', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321943', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321944', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321945', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321946', '192.168.2.200', 'dskUsage', null, null, '86.502306478302', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321947', '192.168.2.200', 'dskUsed', null, null, '14106028', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321948', '192.168.2.200', 'memUsage', null, null, '74.862327439249', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321949', '192.168.2.200', 'ifOutUtile2', null, null, '0.0119669', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321950', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517304868');
INSERT INTO `performance_detail` VALUES ('321951', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321952', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321953', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321954', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321955', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321956', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321957', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321958', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321959', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321960', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321961', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321962', '10.10.10.1', 'ifInUtile3', null, null, '4.9629895', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321963', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321964', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321965', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321966', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321967', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321968', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321969', '10.10.10.1', 'ifOutUtile1', null, null, '0.123905', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321970', '10.10.10.1', 'ifOutUtile2', null, null, '0.1238986', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321971', '10.10.10.1', 'ifOutUtile3', null, null, '2.5635325', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321972', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321973', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321974', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321975', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321976', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321977', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321978', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321979', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321980', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321981', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321982', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321983', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321984', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321985', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517304990');
INSERT INTO `performance_detail` VALUES ('321986', '192.168.2.2', 'maxRTT', null, null, '0.345', '1', '1517305100');
INSERT INTO `performance_detail` VALUES ('321987', '192.168.2.2', 'minRTT', null, null, '0.258', '1', '1517305100');
INSERT INTO `performance_detail` VALUES ('321988', '192.168.2.2', 'avgRTT', null, null, '0.2886', '1', '1517305100');
INSERT INTO `performance_detail` VALUES ('321989', '192.168.2.200', 'ifOutDiscards2', null, null, '0', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321990', '192.168.2.200', 'ifInDiscards2', null, null, '0', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321991', '192.168.2.200', 'ifInErrors2', null, null, '0', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321992', '192.168.2.200', 'ifInUtile2', null, null, '0.0305228', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321993', '192.168.2.200', 'ifOutErrors2', null, null, '0', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321994', '192.168.2.200', 'IfOperStatus2', null, null, '1', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321995', '192.168.2.200', 'dskTotal', null, null, '16307112', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321996', '192.168.2.200', 'dskUsage', null, null, '86.502527240875', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321997', '192.168.2.200', 'dskUsed', null, null, '14106064', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321998', '192.168.2.200', 'memUsage', null, null, '74.867968044924', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('321999', '192.168.2.200', 'ifOutUtile2', null, null, '0.0119441', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('322000', '192.168.2.200', 'ssCpuUser', null, null, '0', '1', '1517305173');
INSERT INTO `performance_detail` VALUES ('322001', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322002', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322003', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322004', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322005', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322006', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322007', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322008', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322009', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322010', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322011', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322012', '10.10.10.1', 'ifInUtile3', null, null, '5.169618', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322013', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322014', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322015', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322016', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322017', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322018', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322019', '10.10.10.1', 'ifOutUtile1', null, null, '0.1259314', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322020', '10.10.10.1', 'ifOutUtile2', null, null, '0.1259626', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322021', '10.10.10.1', 'ifOutUtile3', null, null, '2.7364107', '1', '1517305295');
INSERT INTO `performance_detail` VALUES ('322022', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322023', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322024', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322025', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322026', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322027', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322028', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322029', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322030', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322031', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322032', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322033', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322034', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322035', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517305296');
INSERT INTO `performance_detail` VALUES ('322036', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322037', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322038', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322039', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322040', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322041', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322042', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322043', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322044', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322045', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322046', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322047', '10.10.10.1', 'ifInUtile3', null, null, '5.3232088', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322048', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322049', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322050', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322051', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322052', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322053', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322054', '10.10.10.1', 'ifOutUtile1', null, null, '0.1290576', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322055', '10.10.10.1', 'ifOutUtile2', null, null, '0.1290768', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322056', '10.10.10.1', 'ifOutUtile3', null, null, '2.7536973', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322057', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322058', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322059', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322060', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322061', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322062', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322063', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322064', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322065', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322066', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322067', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322068', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322069', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322070', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517471270');
INSERT INTO `performance_detail` VALUES ('322071', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322072', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322073', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322074', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322075', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322076', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322077', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322078', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322079', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322080', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322081', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322082', '10.10.10.1', 'ifInUtile3', null, null, '5.1238503', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322083', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322084', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322085', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322086', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322087', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322088', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322089', '10.10.10.1', 'ifOutUtile1', null, null, '0.1274116', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322090', '10.10.10.1', 'ifOutUtile2', null, null, '0.1273924', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322091', '10.10.10.1', 'ifOutUtile3', null, null, '2.7800565', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322092', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322093', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322094', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322095', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322096', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322097', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322098', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322099', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322100', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322101', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322102', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322103', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322104', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322105', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517471576');
INSERT INTO `performance_detail` VALUES ('322106', '10.10.10.1', 'ifOutDiscards1', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322107', '10.10.10.1', 'ifOutDiscards2', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322108', '10.10.10.1', 'ifOutDiscards3', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322109', '10.10.10.1', 'ifInDiscards1', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322110', '10.10.10.1', 'ifInDiscards2', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322111', '10.10.10.1', 'ifInDiscards3', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322112', '10.10.10.1', 'ifInErrors1', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322113', '10.10.10.1', 'ifInErrors2', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322114', '10.10.10.1', 'ifInErrors3', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322115', '10.10.10.1', 'ifInUtile1', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322116', '10.10.10.1', 'ifInUtile2', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322117', '10.10.10.1', 'ifInUtile3', null, null, '5.1934902', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322118', '10.10.10.1', 'ifOutErrors1', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322119', '10.10.10.1', 'ifOutErrors2', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322120', '10.10.10.1', 'ifOutErrors3', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322121', '10.10.10.1', 'IfOperStatus1', null, null, '1', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322122', '10.10.10.1', 'IfOperStatus2', null, null, '1', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322123', '10.10.10.1', 'IfOperStatus3', null, null, '1', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322124', '10.10.10.1', 'ifOutUtile1', null, null, '0.12638', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322125', '10.10.10.1', 'ifOutUtile2', null, null, '0.1264301', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322126', '10.10.10.1', 'ifOutUtile3', null, null, '2.7383926', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322127', '10.10.10.9', 'ifOutDiscards48', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322128', '10.10.10.9', 'ifOutDiscards49', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322129', '10.10.10.9', 'ifInDiscards48', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322130', '10.10.10.9', 'ifInDiscards49', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322131', '10.10.10.9', 'ifInErrors48', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322132', '10.10.10.9', 'ifInErrors49', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322133', '10.10.10.9', 'ifInUtile48', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322134', '10.10.10.9', 'ifInUtile49', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322135', '10.10.10.9', 'ifOutErrors48', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322136', '10.10.10.9', 'ifOutErrors49', null, null, '-nan', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322137', '10.10.10.9', 'IfOperStatus48', null, null, '2', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322138', '10.10.10.9', 'IfOperStatus49', null, null, '2', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322139', '10.10.10.9', 'ifOutUtile48', null, null, '0', '1', '1517471881');
INSERT INTO `performance_detail` VALUES ('322140', '10.10.10.9', 'ifOutUtile49', null, null, '0', '1', '1517471881');

-- ----------------------------
-- Table structure for portal
-- ----------------------------
DROP TABLE IF EXISTS `portal`;
CREATE TABLE `portal` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `content` text,
  `creator_id` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of portal
-- ----------------------------
INSERT INTO `portal` VALUES ('23', '综合视图', 'portal/showportal.html', '{\"columnNum\":2,\"rows\":[{\"id\":\"FI-SW-05\",\"name\":\"进流量率\",\"column\":0,\"url\":\"getPerformanceListByItem.do?itemId=27\",\"height\":\"250\",\"type\":1},{\"id\":\"FI-SW-03\",\"name\":\"Cpu使用率\",\"column\":0,\"url\":\"http://www.baidu.com\",\"height\":\"250\",\"type\":2},{\"id\":\"FI-SW-06\",\"name\":\"出流量率\",\"column\":1,\"url\":\"getPerformanceListByItem.do?itemId=28\",\"height\":\"250\",\"type\":1}]}', null, '2017-07-17 16:42:05');
INSERT INTO `portal` VALUES ('24', '综合视图1', 'portal/showportal.html', '{\"columnNum\":3,\"rows\":[{\"id\":\"FI-SW-05\",\"name\":\"进流量率\",\"column\":0,\"url\":\"getPerformanceListByItem.do?itemId=27\",\"height\":\"250\",\"type\":1},{\"id\":\"FI-SW-02\",\"name\":\"监控项\",\"column\":0,\"url\":\"portlet/item.html\",\"height\":\"250\",\"type\":4,\"params\":\"deviceId=22\"},{\"id\":\"FI-SW-04\",\"name\":\"内存使用率\",\"column\":1,\"url\":\"getPerformanceListByItem.do?itemId=26\",\"height\":\"250\",\"type\":1},{\"id\":\"FI-SW-03\",\"name\":\"Cpu使用率\",\"column\":1,\"url\":\"http://www.baidu.com\",\"height\":\"250\",\"type\":2},{\"id\":\"FI-SW-06\",\"name\":\"出流量率\",\"column\":2,\"url\":\"getPerformanceListByItem.do?itemId=28\",\"height\":\"250\",\"type\":1}]}', null, '2017-07-17 16:42:05');
INSERT INTO `portal` VALUES ('369df873d2bf48a08dceccbf709d73d7', '测试C', '', '{\"columnNum\":2,\"rows\":[{\"id\":\"cd463375-5e7f-4000-aa6e-0f7c00556f63\",\"name\":\"Cpu使用率\",\"column\":0,\"url\":\"http://www.baidu.com\",\"height\":\"250\",\"type\":2}]}', '', '2017-11-13 12:39:13');
INSERT INTO `portal` VALUES ('8a70affc7d9d4cad9d36fbb8580cd982', '测试A', '', '{\"columnNum\":3,\"rows\":[{\"id\":\"502803bc-434c-46e1-bfb2-cd19724a0835\",\"name\":\"Cpu使用率\",\"column\":0,\"url\":\"http://www.baidu.com\",\"height\":\"250\",\"type\":2},{\"id\":\"f39b4852-6871-46fb-9054-377e85ab02b7\",\"name\":\"Cpu使用率\",\"column\":1,\"url\":\"http://www.baidu.com\",\"height\":\"250\",\"type\":2},{\"id\":\"fbf19296-96b5-4c6a-b993-26adfed52f3b\",\"name\":\"监控项\",\"column\":2,\"url\":\"http://www.sina.com.cn\",\"height\":\"250\",\"type\":2,\"params\":\"deviceId=22\"}]}', '', '2017-11-13 10:07:27');
INSERT INTO `portal` VALUES ('fb99edd9d9984010b7f77740c54203db', '測試b', '', '{\"columnNum\":4,\"rows\":[{\"id\":\"7eae569d-06f0-45a3-8cf9-666ebac58dfd\",\"name\":\"内存使用率\",\"column\":0,\"url\":\"http://www.sina.com.cn\",\"height\":\"250\",\"type\":2},{\"id\":\"625fad81-98b7-451f-b424-9ca33bc12e1f\",\"name\":\"监控项\",\"column\":1,\"url\":\"http://www.sina.com.cn\",\"height\":\"250\",\"type\":2,\"params\":\"deviceId=22\"},{\"id\":\"afc3ea67-4f8e-441b-bee9-e8f137782dfc\",\"name\":\"内存使用率\",\"column\":2,\"url\":\"http://www.sina.com.cn\",\"height\":\"250\",\"type\":2},{\"id\":\"9aad515a-6c16-4f6c-a2ff-8d4a844cf703\",\"name\":\"出流量率\",\"column\":3,\"url\":\"http://www.sina.com.cn\",\"height\":\"250\",\"type\":2}]}', '', '2017-11-13 11:46:50');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('7d90233c906d42df9b512548a973e68d', '操作员', '系统操作员', '2017-09-13 16:29:13');
INSERT INTO `role` VALUES ('a2aaaf19957a483f9c988e193475c78b', '管理员', '系统管理员', '2017-09-13 16:27:00');

-- ----------------------------
-- Table structure for role_button
-- ----------------------------
DROP TABLE IF EXISTS `role_button`;
CREATE TABLE `role_button` (
  `role_id` varchar(32) NOT NULL,
  `button_id` varchar(32) NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`,`button_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_button
-- ----------------------------

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `role_id` varchar(32) NOT NULL,
  `page_id` varchar(32) NOT NULL,
  `authority` varchar(1024) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('7d90233c906d42df9b512548a973e68d', '2f51f442d2174c97a01731b6fe18a363', null, '2017-09-25 17:30:36');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '038bf445f2ad4ec0bef433dd5698750f', null, '2017-10-30 17:01:07');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '0c3cf97356a844449be99042a29ca05c', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '1138d70d46594fa98990073fad2e94a7', null, '2017-10-31 15:51:16');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '1647e5af40354fe08dd9fdc52b4fa3be', null, '2017-11-07 10:29:24');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '1a002a8e1ccc464f898c00c7265bc161', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '26dd027f60d44325b705fad8138c7040', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '2f51f442d2174c97a01731b6fe18a363', null, '2017-09-14 16:05:27');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '3474f8a749d6444dad3789d7dc9948d8', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '349feb67bc61425586fbcf9107c75424', null, '2017-11-15 14:13:27');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '3d8613d6692843c7aa3624836bfbd9bc', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '414caeb099cc4b3caedfbfd88365fe94', null, '2017-11-10 12:53:04');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '456d9e4123314a6aa53d29031069d985', null, '2017-12-13 10:29:26');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '59d13be8dd9d4252b9f0b445da3659de', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '5df788cd4b574ab2ba92513918fd7886', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '6c18ad26ead449e4aea32317db1b8a44', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '6eaa7527bf4a4537bbad9d3e9a3ade7a', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '729797c0e48e4cf599ed62d157f47686', null, '2017-11-24 17:25:09');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '906976a3f11c491f9df0d0ab40aadb6c', null, '2017-12-07 10:39:44');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', '948f0ef0fb2849e592fcc00aebf94adf', null, '2017-09-14 16:05:27');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'aefd062a3aa244b4ac97fad072cc0615', null, '2017-11-15 09:40:09');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'b8661ec47c2b403790a479b0a7556287', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'b9a2f109bb554471a04e0ae2368a11e8', null, '2017-11-13 17:27:01');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'c55caeee866a496da431042e9302d9cd', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'cacecba4696d40dab01c6e80b2897428', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'd07ffd87a5c6482b9471947e839a6ad6', null, '2017-09-14 16:05:27');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'db5b2a25bdf34ce88222fc90f7fa636f', null, '2017-12-20 16:00:43');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'ed09939c8bb64fc8b202b47d6f94c0be', null, '2017-10-30 17:01:18');
INSERT INTO `role_menu` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'edaac0bf30dd4579b9aec46ed36695f1', null, '2017-10-30 17:01:07');

-- ----------------------------
-- Table structure for role_page
-- ----------------------------
DROP TABLE IF EXISTS `role_page`;
CREATE TABLE `role_page` (
  `role_id` varchar(32) NOT NULL,
  `page_id` varchar(32) NOT NULL,
  `buttons` varchar(1024) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`role_id`,`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_page
-- ----------------------------
INSERT INTO `role_page` VALUES ('7d90233c906d42df9b512548a973e68d', '2f51f442d2174c97a01731b6fe18a363', null, '2017-09-25 17:30:36');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '038bf445f2ad4ec0bef433dd5698750f', null, '2017-10-30 17:01:07');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '0c3cf97356a844449be99042a29ca05c', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '1138d70d46594fa98990073fad2e94a7', null, '2017-10-31 15:51:16');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '1647e5af40354fe08dd9fdc52b4fa3be', null, '2017-11-07 10:29:24');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '1a002a8e1ccc464f898c00c7265bc161', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '26dd027f60d44325b705fad8138c7040', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '2f51f442d2174c97a01731b6fe18a363', null, '2017-09-14 16:05:27');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '3474f8a749d6444dad3789d7dc9948d8', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '349feb67bc61425586fbcf9107c75424', null, '2017-11-15 14:13:27');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '3d8613d6692843c7aa3624836bfbd9bc', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '414caeb099cc4b3caedfbfd88365fe94', null, '2017-11-10 12:53:04');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '456d9e4123314a6aa53d29031069d985', null, '2017-12-13 10:29:26');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '59d13be8dd9d4252b9f0b445da3659de', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '5df788cd4b574ab2ba92513918fd7886', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '6c18ad26ead449e4aea32317db1b8a44', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '6eaa7527bf4a4537bbad9d3e9a3ade7a', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '729797c0e48e4cf599ed62d157f47686', null, '2017-11-24 17:25:09');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '906976a3f11c491f9df0d0ab40aadb6c', null, '2017-12-07 10:39:44');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', '948f0ef0fb2849e592fcc00aebf94adf', null, '2017-09-14 16:05:27');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'aefd062a3aa244b4ac97fad072cc0615', null, '2017-11-15 09:40:09');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'b8661ec47c2b403790a479b0a7556287', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'b9a2f109bb554471a04e0ae2368a11e8', null, '2017-11-13 17:27:01');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'c55caeee866a496da431042e9302d9cd', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'cacecba4696d40dab01c6e80b2897428', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'd07ffd87a5c6482b9471947e839a6ad6', null, '2017-09-14 16:05:27');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'db5b2a25bdf34ce88222fc90f7fa636f', null, '2017-12-20 16:00:43');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'ed09939c8bb64fc8b202b47d6f94c0be', null, '2017-10-30 17:01:18');
INSERT INTO `role_page` VALUES ('a2aaaf19957a483f9c988e193475c78b', 'edaac0bf30dd4579b9aec46ed36695f1', null, '2017-10-30 17:01:07');

-- ----------------------------
-- Table structure for topology
-- ----------------------------
DROP TABLE IF EXISTS `topology`;
CREATE TABLE `topology` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `content` text,
  `creator_id` varchar(32) DEFAULT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topology
-- ----------------------------
INSERT INTO `topology` VALUES ('23da996083714d428c0ca6dce7e4df0a', '宝亮拓扑', '', null, null, '2017-12-12 11:31:47');
INSERT INTO `topology` VALUES ('5d9f2da152f14315b79e8fa41825072b', 'aaa', '', null, '', '2017-11-24 13:15:15');
INSERT INTO `topology` VALUES ('9132058a9768402e9597c19e29ed5b2e', 'cc', '', null, '', '2017-11-24 13:48:04');
INSERT INTO `topology` VALUES ('c590192fa2c7417ebefa85d72ac0cfa7', '子网A', '', '[{\"elementType\":\"node\",\"x\":238,\"y\":114,\"id\":27132,\"Image\":\"8000.jpg\",\"name\":\"路由器B\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"asset\",\"relation\":\"192.168.2.200\",\"relationId\":\"20534ab88997471ea1f6e5a554bdf4e1\"},{\"elementType\":\"node\",\"x\":238,\"y\":270,\"id\":64260,\"Image\":\"8000.jpg\",\"name\":\"路由器B\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"asset\",\"relation\":\"10.10.10.2\",\"relationId\":\"b95f10dc5a954ec49b1b457d57bf02eb\"},{\"elementType\":\"node\",\"x\":660,\"y\":269,\"id\":177540,\"Image\":\"8000.jpg\",\"name\":\"\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"\",\"relation\":\"\",\"relationId\":\"\"},{\"elementType\":\"node\",\"x\":638,\"y\":119,\"id\":75922,\"Image\":\"cloud.jpg\",\"name\":\"\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"subtopo\",\"relation\":\"子网A-子网B\",\"relationId\":\"e4d6a5a187e94be1ae4756204df0c2eb\"},{\"elementType\":\"link\",\"nodeAid\":27132,\"nodeZid\":64260,\"text\":\"\",\"fontColor\":\"0, 200, 255\"},{\"elementType\":\"link\",\"nodeAid\":64260,\"nodeZid\":177540,\"text\":\"\",\"fontColor\":\"0, 200, 255\"},{\"elementType\":\"link\",\"nodeAid\":75922,\"nodeZid\":27132,\"text\":\"\",\"fontColor\":\"0, 200, 255\"}]', '', '2017-11-20 15:37:47');
INSERT INTO `topology` VALUES ('e4d6a5a187e94be1ae4756204df0c2eb', '子网A-子网B', '', '[{\"elementType\":\"node\",\"x\":552,\"y\":78,\"id\":43056,\"Image\":\"5200.jpg\",\"name\":\"\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"asset\",\"relation\":\"192.168.2.200\",\"relationId\":\"20534ab88997471ea1f6e5a554bdf4e1\"},{\"elementType\":\"node\",\"x\":384,\"y\":327,\"id\":125568,\"Image\":\"2948.jpg\",\"name\":\"\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"\",\"relation\":\"\",\"relationId\":\"\"},{\"elementType\":\"node\",\"x\":794,\"y\":224,\"id\":177856,\"Image\":\"2948.jpg\",\"name\":\"\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"\",\"relation\":\"\",\"relationId\":\"\"},{\"elementType\":\"link\",\"nodeAid\":43056,\"nodeZid\":125568,\"text\":\"\",\"fontColor\":\"0, 200, 255\"},{\"elementType\":\"link\",\"nodeAid\":43056,\"nodeZid\":177856,\"text\":\"\",\"fontColor\":\"0, 200, 255\"}]', '', '2017-11-21 15:39:48');
INSERT INTO `topology` VALUES ('eb7185f763074e3ba946164c47a7cb8b', '全网拓扑', '', '[{\"elementType\":\"node\",\"x\":286,\"y\":299,\"id\":85514,\"Image\":\"8000.jpg\",\"name\":\"路由器B\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"asset\",\"relation\":\"192.168.2.200\",\"relationId\":\"20534ab88997471ea1f6e5a554bdf4e1\"},{\"elementType\":\"node\",\"x\":1072,\"y\":375,\"id\":402000,\"Image\":\"8000.jpg\",\"name\":\"\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"\",\"relation\":\"\",\"relationId\":\"\"},{\"elementType\":\"node\",\"x\":302,\"y\":79,\"id\":23858,\"Image\":\"cloud.jpg\",\"name\":\"子网A\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"subtopo\",\"relation\":\"子网A\",\"relationId\":\"c590192fa2c7417ebefa85d72ac0cfa7\"},{\"elementType\":\"node\",\"x\":1112,\"y\":90,\"id\":100080,\"Image\":\"8260.jpg\",\"name\":\"交换机\",\"textPosition\":\"Bottom_Center\",\"level\":2,\"type\":\"asset\",\"relation\":\"10.10.1.9\",\"relationId\":\"19d04c34b6f54a9fb7fdb5153c79bda3\"},{\"elementType\":\"link\",\"nodeAid\":85514,\"nodeZid\":402000,\"text\":\"\",\"fontColor\":\"0, 200, 255\"},{\"elementType\":\"link\",\"nodeAid\":23858,\"nodeZid\":85514,\"text\":\"\",\"fontColor\":\"0, 200, 255\"},{\"elementType\":\"link\",\"nodeAid\":100080,\"nodeZid\":23858,\"text\":\"\",\"fontColor\":\"0, 200, 255\"},{\"elementType\":\"link\",\"nodeAid\":100080,\"nodeZid\":402000,\"text\":\"\",\"fontColor\":\"0, 200, 255\"},{\"elementType\":\"link\",\"nodeAid\":402000,\"nodeZid\":23858,\"text\":\"\",\"fontColor\":\"0, 200, 255\"},{\"elementType\":\"link\",\"nodeAid\":85514,\"nodeZid\":100080,\"text\":\"\",\"fontColor\":\"0, 200, 255\"}]', '', '2017-11-20 15:23:59');

-- ----------------------------
-- Table structure for tree_base
-- ----------------------------
DROP TABLE IF EXISTS `tree_base`;
CREATE TABLE `tree_base` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `type` int(2) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `modify_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tree_base
-- ----------------------------
INSERT INTO `tree_base` VALUES ('9', '0', 'F5', 'F5', '1', '厂商', '2017-06-29 10:54:14');
INSERT INTO `tree_base` VALUES ('17', '0', 'CISCO', 'CISCO', '1', '厂商', '2017-06-29 10:54:14');
INSERT INTO `tree_base` VALUES ('18', '0', 'H3C', 'H3C', '1', '厂商', '2017-06-29 10:54:14');
INSERT INTO `tree_base` VALUES ('19', '0', 'JUNIPER', 'JUNIPER', '1', '厂商', '2017-06-29 10:54:14');
INSERT INTO `tree_base` VALUES ('23', '17', 'FASTHUB200SERIESHUBS', 'FASTHUB200SERIESHUBS', '2', '系列', '2017-06-29 10:56:49');
INSERT INTO `tree_base` VALUES ('31', '17', '1900SERIES', '1900SERIES', '2', '系列', '2017-06-29 10:56:49');
INSERT INTO `tree_base` VALUES ('32', '17', 'CATALYST4900', 'CATALYST4900', '2', '系列', '2017-07-26 17:14:34');
INSERT INTO `tree_base` VALUES ('97', '32', 'CATALYST296048TTS', 'CATALYST296048TTS', '3', '型号', '2017-06-29 11:11:22');
INSERT INTO `tree_base` VALUES ('98', '32', 'CATALYST2924CXL', 'CATALYST2924CXL', '3', '型号', '2017-06-29 11:11:22');
INSERT INTO `tree_base` VALUES ('99', '32', 'CATALYST2924MXL', 'CATALYST2924MXL', '3', '型号', '2017-06-29 11:11:22');
INSERT INTO `tree_base` VALUES ('100', '32', 'CATALYST2926SYSID', 'CATALYST2926SYSID', '3', '型号', '2017-06-29 11:11:22');
INSERT INTO `tree_base` VALUES ('113', '9', 'BIG-IP 1600 Series', 'BIG-IP 1600 Series', '2', '系列', '2017-06-29 12:39:55');
INSERT INTO `tree_base` VALUES ('114', '9', 'BIG-IP 3900 Series', 'BIG-IP 3900 Series', '2', '系列', '2017-06-29 12:40:16');
INSERT INTO `tree_base` VALUES ('115', '9', 'F5 8900  Series', 'F5 8900  Series', '2', '系列', '2017-06-29 12:40:23');
INSERT INTO `tree_base` VALUES ('116', '23', 'CISCOFASTHUB216T', 'CISCOFASTHUB216T', '3', '型号', '2017-06-29 12:41:46');
INSERT INTO `tree_base` VALUES ('117', '31', 'CATALYST1900LITEFXSYSID', 'CATALYST1900LITEFXSYSID', '3', '型号', '2017-06-29 12:42:50');
INSERT INTO `tree_base` VALUES ('118', '31', 'CATALYST1900CSYSID', 'CATALYST1900CSYSID', '3', '型号', '2017-06-29 12:42:50');
INSERT INTO `tree_base` VALUES ('119', '31', 'CATALYST1900SYSID', 'CATALYST1900SYSID', '3', '型号', '2017-06-29 12:42:50');
INSERT INTO `tree_base` VALUES ('120', '18', 'MSR50SERIES', 'MSR50SERIES', '2', '系列', '2017-06-29 12:44:34');
INSERT INTO `tree_base` VALUES ('121', '18', 'QUIDWAYAR46SERIES', 'QUIDWAYAR46SERIES', '2', '系列', '2017-06-29 12:44:34');
INSERT INTO `tree_base` VALUES ('122', '18', 'QUIDWAYS5300SERIES', 'QUIDWAYS5300SERIES', '2', '系列', '2017-06-29 12:44:34');
INSERT INTO `tree_base` VALUES ('123', '120', 'MSR5040', 'MSR5040\r\nMSR5060\r\n', '3', '型号', '2017-06-29 12:47:46');
INSERT INTO `tree_base` VALUES ('124', '120', 'MSR5060', 'MSR5060', '3', '型号', '2017-06-29 12:47:46');
INSERT INTO `tree_base` VALUES ('125', '121', 'AR4640E', 'AR4640E\r\nAR4680\r\nAR4640HUAWEI\r\n', '3', '型号', '2017-06-29 12:47:36');
INSERT INTO `tree_base` VALUES ('126', '121', 'AR4680', 'AR4640E\r\nAR4680\r\nAR4640HUAWEI\r\n', '3', '型号', '2017-06-29 12:47:36');
INSERT INTO `tree_base` VALUES ('127', '121', 'AR4640HUAWEI', 'AR4640E\r\nAR4680\r\nAR4640HUAWEI\r\n', '3', '型号', '2017-06-29 12:47:36');
INSERT INTO `tree_base` VALUES ('128', '122', 'S5300', 'S5300', '3', '型号', '2017-06-29 12:48:56');
INSERT INTO `tree_base` VALUES ('129', '122', 'S8016', 'S8016', '3', '型号', '2017-06-29 12:48:56');
INSERT INTO `tree_base` VALUES ('130', '122', 'AR1813', 'AR1813', '3', '型号', '2017-06-29 12:48:56');
INSERT INTO `tree_base` VALUES ('131', '122', 'AR1815', 'AR1815', '3', '型号', '2017-06-29 12:48:56');
INSERT INTO `tree_base` VALUES ('132', '122', 'AR1812', 'AR1812', '3', '型号', '2017-06-29 12:48:56');
INSERT INTO `tree_base` VALUES ('133', '0', '红帽', 'Redhat', '1', '厂商', '2017-07-04 12:57:19');
INSERT INTO `tree_base` VALUES ('135', '32', 'WS-C4948-E', 'WS-C4948-E', '3', '型号', '2017-07-26 17:14:38');
INSERT INTO `tree_base` VALUES ('136', '18', 'S3100', 'S3100', '2', '系列', '2017-07-26 15:47:12');
INSERT INTO `tree_base` VALUES ('137', '17', '2900SERIES', '2900SERIES', '2', '系列', '2017-07-26 17:14:07');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `flag` int(2) DEFAULT NULL,
  `login_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remark` varchar(512) DEFAULT NULL,
  `modify_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '宋江', '010-82826655-321', '18610727822', 'songjiang@163.net', null, 'songjiang', '123456', '啊啊啊啊', null);
INSERT INTO `user` VALUES ('10', '李逵', '010-82826655-321', '18510890032', 'likui@163.com', null, 'likui@pbin.net', '123456', 'efef1', null);
INSERT INTO `user` VALUES ('13', '武松', '010-82826655-321', '', '', '1', null, null, '', null);
INSERT INTO `user` VALUES ('14', '吴用', '010-82826655-333', '18510890031', 'wuyong@163.com', null, '2323www', '111111', '', null);
INSERT INTO `user` VALUES ('17', '晁盖', '010-82826655', '18600360501', 'chaogai@pbin.net', null, 'chaogai', '123456', '', null);
INSERT INTO `user` VALUES ('2067dc4babde4c1ea2f5789fdefce8bf', '王五', '', '18600360301', '', null, '', '', null, null);
INSERT INTO `user` VALUES ('935b8736a5c84b2594b0490f8775b171', '李四', '', '18600360301', '', null, '', '', null, null);
INSERT INTO `user` VALUES ('b46aafde92974294aefe07aeb07540f9', '杨林', '', '18600360301', '', null, '', '', '', null);
INSERT INTO `user` VALUES ('ea926e36406a4649a8a48d55d96bcbe3', '管理员', '18610390023', '18610727822', '', null, 'admin', 'admin', '', '2017-10-11 16:05:18');
INSERT INTO `user` VALUES ('ee8fc5cd1a804c5d81c72f6564e1316c', '林冲', '010-88662255', '18610727822', 'linchong@pbin.net', null, 'linchong', '123456', null, null);
INSERT INTO `user` VALUES ('fd0102a6e23e4d06b8117c4f33d67dad', '张三', '', '18600360301', '', null, '', '', null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` varchar(32) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  `modify_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '7d90233c906d42df9b512548a973e68d', '2017-09-14 16:22:24');
INSERT INTO `user_role` VALUES ('1', 'a2aaaf19957a483f9c988e193475c78b', '2017-09-14 16:22:24');
INSERT INTO `user_role` VALUES ('10', '7d90233c906d42df9b512548a973e68d', '2017-09-14 16:22:40');
INSERT INTO `user_role` VALUES ('14', '7d90233c906d42df9b512548a973e68d', '2017-11-17 14:53:28');
INSERT INTO `user_role` VALUES ('ea926e36406a4649a8a48d55d96bcbe3', 'a2aaaf19957a483f9c988e193475c78b', '2017-10-30 17:03:25');

-- ----------------------------
-- View structure for device_template_view
-- ----------------------------
DROP VIEW IF EXISTS `device_template_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `device_template_view` AS select CONCAT(d.id,"_",t.id) id,'public' communitystring,161 port,'2c' version,d.ip,t.name,t.poll,t.retries,t.timeout,t.retestinterval,t.id template_id,d.id device_id,dt.modify_time from device d,device_template dt,templates t where dt.device_id=d.id and dt.template_id=t.id ;

-- ----------------------------
-- View structure for performance_formula_view
-- ----------------------------
DROP VIEW IF EXISTS `performance_formula_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER  VIEW `performance_formula_view` AS select CONCAT(dtv.id,"_",ti.id) id,dtv.ip,dtv.name template_name,ti.formula,ti.en_name,dtv.modify_time from device_template_view dtv,template_items ti where ti.template_id = dtv.template_id ;

-- ----------------------------
-- View structure for template_original_view
-- ----------------------------
DROP VIEW IF EXISTS `template_original_view`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost`  VIEW `template_original_view` AS select o.*,ti.template_id from originals o,item_original io,template_items ti WHERE
 o.id=io.original_id and io.item_id=ti.id and ti.template_id in (select dtv.template_id from device_template_view dtv) ;
