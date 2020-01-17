/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 80017
Source Host           : localhost:3306
Source Database       : idc_base

Target Server Type    : MYSQL
Target Server Version : 80017
File Encoding         : 65001

Date: 2019-11-29 10:57:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for alarms_handle
-- ----------------------------
DROP TABLE IF EXISTS `alarms_handle`;
CREATE TABLE `alarms_handle` (
  `id` bigint(32) NOT NULL DEFAULT '0',
  `log_id` bigint(32) DEFAULT NULL COMMENT '资源id （设备id）',
  `hanle_id` bigint(32) DEFAULT NULL COMMENT '机房id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='告警日志';

-- ----------------------------
-- Records of alarms_handle
-- ----------------------------
INSERT INTO `alarms_handle` VALUES ('6481827980157911045', '6481824570482360323', '6481827980032081921');
INSERT INTO `alarms_handle` VALUES ('6481828811133419523', '6481824574173347843', '6481828811049533442');
INSERT INTO `alarms_handle` VALUES ('6481828811385077766', '6481825120858931201', '6481828811049533442');
INSERT INTO `alarms_handle` VALUES ('6481830998798499845', '6481829365410693124', '6481830998672670726');
INSERT INTO `alarms_handle` VALUES ('6481830998924328960', '6481829565688709121', '6481830998672670726');
INSERT INTO `alarms_handle` VALUES ('6481844631754506248', '6481832142711029766', '6481844631586734084');
INSERT INTO `alarms_handle` VALUES ('6484731329815511044', '6481851175036518400', '6484731329689681927');
INSERT INTO `alarms_handle` VALUES ('6484731771685437445', '6481832136587345923', '6484731771643494401');
INSERT INTO `alarms_handle` VALUES ('6490039572422983688', '6489315492610703360', '6490039572339097606');
INSERT INTO `alarms_handle` VALUES ('6490039572590755847', '6489317331771064329', '6490039572339097606');
INSERT INTO `alarms_handle` VALUES ('6490060556651724800', '6490056375853383686', '6490060556567838729');
INSERT INTO `alarms_handle` VALUES ('6490060556777553929', '6490058258424791048', '6490060556567838729');
INSERT INTO `alarms_handle` VALUES ('6492273230731018244', '6492268475187200007', '6492273230647132162');
INSERT INTO `alarms_handle` VALUES ('6492273230856847360', '6492268848522199048', '6492273230647132162');
INSERT INTO `alarms_handle` VALUES ('6492312697495879682', '6492306074102661129', '6492312697411993603');
INSERT INTO `alarms_handle` VALUES ('6492312697621708809', '6492306507542036480', '6492312697411993603');
INSERT INTO `alarms_handle` VALUES ('6496175138810101762', '6496162153706291203', '6496175138726215684');
INSERT INTO `alarms_handle` VALUES ('6496175138935930883', '6496171404663193601', '6496175138726215684');
INSERT INTO `alarms_handle` VALUES ('6496258084527144961', '6496201582848245765', '6496258084401315842');
INSERT INTO `alarms_handle` VALUES ('6496258084694917122', '6496202456144281603', '6496258084401315842');
INSERT INTO `alarms_handle` VALUES ('6496258084862689281', '6496222765425623040', '6496258084401315842');
INSERT INTO `alarms_handle` VALUES ('6496258085030461448', '6496243737910312962', '6496258084401315842');
INSERT INTO `alarms_handle` VALUES ('6496258085198233607', '6496246302307778568', '6496258084401315842');
INSERT INTO `alarms_handle` VALUES ('6496258085366005769', '6496256117650227201', '6496258084401315842');
INSERT INTO `alarms_handle` VALUES ('6496263406343946243', '6496260325124341760', '6496263406260060164');
INSERT INTO `alarms_handle` VALUES ('6496276921440010248', '6496264439359078402', '6496276921356124160');
INSERT INTO `alarms_handle` VALUES ('6496289082237255688', '6496277522819317769', '6496289082153369602');
INSERT INTO `alarms_handle` VALUES ('6496289082363084805', '6496281699716956165', '6496289082153369602');
INSERT INTO `alarms_handle` VALUES ('6496289082488913927', '6496284090302464005', '6496289082153369602');
INSERT INTO `alarms_handle` VALUES ('6496289082614743049', '6496284512584990721', '6496289082153369602');

-- ----------------------------
-- Table structure for alarms_log
-- ----------------------------
DROP TABLE IF EXISTS `alarms_log`;
CREATE TABLE `alarms_log` (
  `id` bigint(32) NOT NULL DEFAULT '0',
  `res_id` bigint(32) DEFAULT NULL COMMENT '资源id （设备id）',
  `room_id` bigint(32) DEFAULT NULL COMMENT '机房id',
  `org_id` bigint(32) DEFAULT NULL COMMENT '组织机构id',
  `state` int(1) DEFAULT NULL COMMENT '状态 0：解除 1：未解除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `action` int(1) DEFAULT NULL COMMENT '日志动作',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='告警日志';

-- ----------------------------
-- Records of alarms_log
-- ----------------------------
INSERT INTO `alarms_log` VALUES ('6492268475187200007', '6491853156253696024', '6485348785722490890', '6485235189961195520', '0', '2019-11-27 12:35:42', '0', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备010设备被带出。');
INSERT INTO `alarms_log` VALUES ('6492268848522199048', '6491853156253696024', '6488946214468321294', '6485990961179525122', '0', '2019-11-27 12:35:51', '1', '[异常][南京子机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备010设备被带入。');
INSERT INTO `alarms_log` VALUES ('6492286735131607046', '6491853156253696024', '6488946214468321294', '6485990961179525122', '2', '2019-11-27 12:42:57', '0', '[正常][南京子机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备010设备被带出:[告警处理--调拨任务]调拨任务进行中');
INSERT INTO `alarms_log` VALUES ('6492306074102661129', '6491853156253696019', '6485348785722490890', '6485235189961195520', '0', '2019-11-27 12:50:38', '0', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备009设备被带出。');
INSERT INTO `alarms_log` VALUES ('6492306507542036480', '6491853156253696019', '6488946214468321294', '6485990961179525122', '0', '2019-11-27 12:50:49', '1', '[异常][南京子机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备009设备被带入。');
INSERT INTO `alarms_log` VALUES ('6496162153706291203', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 14:22:55', '0', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带出。');
INSERT INTO `alarms_log` VALUES ('6496171404663193601', '6491853156253696000', '6488946214468321294', '6485990961179525122', '0', '2019-11-28 14:26:35', '1', '[异常][南京子机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带入。');
INSERT INTO `alarms_log` VALUES ('6496201582848245765', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 14:38:35', '1', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带入。');
INSERT INTO `alarms_log` VALUES ('6496202456144281603', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 14:38:55', '0', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带出。');
INSERT INTO `alarms_log` VALUES ('6496222765425623040', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 14:47:00', '1', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带入。');
INSERT INTO `alarms_log` VALUES ('6496243737910312962', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 14:55:20', '0', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带出。');
INSERT INTO `alarms_log` VALUES ('6496246302307778568', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 14:56:21', '1', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带入。');
INSERT INTO `alarms_log` VALUES ('6496256117650227201', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 15:00:15', '0', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带出。');
INSERT INTO `alarms_log` VALUES ('6496260325124341760', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 15:01:55', '1', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带入。');
INSERT INTO `alarms_log` VALUES ('6496264439359078402', '6491853156253696000', '6488946214468321294', '6485990961179525122', '0', '2019-11-28 15:03:33', '0', '[异常][南京子机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带出。');
INSERT INTO `alarms_log` VALUES ('6496277522819317769', '6491853156253696000', '6488946214468321294', '6485990961179525122', '0', '2019-11-28 15:08:45', '1', '[异常][南京子机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带入。');
INSERT INTO `alarms_log` VALUES ('6496281699716956165', '6491853156253696000', '6488946214468321294', '6485990961179525122', '0', '2019-11-28 15:10:25', '0', '[异常][南京子机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带出。');
INSERT INTO `alarms_log` VALUES ('6496284090302464005', '6491853156253696000', '6485348785722490890', '6485235189961195520', '0', '2019-11-28 15:11:22', '0', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带出。');
INSERT INTO `alarms_log` VALUES ('6496284512584990721', '6491853156253696000', '6488946214468321294', '6485990961179525122', '0', '2019-11-28 15:11:32', '1', '[异常][南京子机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备008设备被带入。');
INSERT INTO `alarms_log` VALUES ('6499103291358576643', '6491853156169809949', '6485348785722490890', '6485235189961195520', '1', '2019-11-29 09:51:37', '0', '[异常][南京机构机房]机房检测到，[南京机构]机构下[南京机构机房]机房中的南京设备004设备被带出。');

-- ----------------------------
-- Table structure for alarms_log_handle
-- ----------------------------
DROP TABLE IF EXISTS `alarms_log_handle`;
CREATE TABLE `alarms_log_handle` (
  `id` bigint(32) NOT NULL DEFAULT '0',
  `log_id` bigint(32) DEFAULT NULL COMMENT '资源id （设备id）',
  `hanle_state` bigint(32) DEFAULT NULL COMMENT '机房id',
  `user_id` bigint(32) DEFAULT NULL COMMENT '用户id （操作者）',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='告警日志';

-- ----------------------------
-- Records of alarms_log_handle
-- ----------------------------
INSERT INTO `alarms_log_handle` VALUES ('6481827980032081921', null, '4', '6474414408083701763', '2019-11-24 15:27:01', '测试');
INSERT INTO `alarms_log_handle` VALUES ('6481828811049533442', null, '0', '6474414408083701763', '2019-11-24 15:27:21', '处理调拨');
INSERT INTO `alarms_log_handle` VALUES ('6481830998672670726', null, '1', '6474414408083701763', '2019-11-24 15:28:13', '处理借用');
INSERT INTO `alarms_log_handle` VALUES ('6481844631586734084', null, '4', '6474414408083701763', '2019-11-24 15:33:38', '处理异常带入25');
INSERT INTO `alarms_log_handle` VALUES ('6484731329689681927', null, '4', '6474414408083701763', '2019-11-25 10:40:42', '测试');
INSERT INTO `alarms_log_handle` VALUES ('6484731771643494401', null, '4', '6474414408083701763', '2019-11-25 10:40:53', '测试');
INSERT INTO `alarms_log_handle` VALUES ('6490039572339097606', null, '4', '6485443446801694727', '2019-11-26 21:50:01', '测试');
INSERT INTO `alarms_log_handle` VALUES ('6490060556567838729', null, '0', '6485443446801694727', '2019-11-26 21:58:21', '测试bug');
INSERT INTO `alarms_log_handle` VALUES ('6492273230647132162', null, '0', '6485443446801694727', '2019-11-27 12:37:35', '告警处理调拨');
INSERT INTO `alarms_log_handle` VALUES ('6492312697411993603', null, '1', '6485443446801694727', '2019-11-27 12:53:16', '告警处理借用');
INSERT INTO `alarms_log_handle` VALUES ('6496175138726215684', null, '1', '6485443446801694727', '2019-11-28 14:28:04', '测试告警处理借用');
INSERT INTO `alarms_log_handle` VALUES ('6496258084401315842', null, '4', '6485443446801694727', '2019-11-28 15:01:02', '测试解除已带出');
INSERT INTO `alarms_log_handle` VALUES ('6496263406260060164', null, '4', '6485443446801694727', '2019-11-28 15:03:09', '测试');
INSERT INTO `alarms_log_handle` VALUES ('6496276921356124160', null, '4', '6485443446801694727', '2019-11-28 15:08:31', '测试');
INSERT INTO `alarms_log_handle` VALUES ('6496289082153369602', null, '1', '6485443446801694727', '2019-11-28 15:13:21', '告警处理借用');

-- ----------------------------
-- Table structure for allocation_task
-- ----------------------------
DROP TABLE IF EXISTS `allocation_task`;
CREATE TABLE `allocation_task` (
  `id` bigint(32) NOT NULL,
  `task_name` varchar(32) DEFAULT NULL COMMENT '任务名称',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `state` int(1) DEFAULT NULL COMMENT '0-待执行,1-执行中,2-执行完毕',
  `task_type` int(1) DEFAULT NULL COMMENT '任务类型 1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修,11-线缆贴标',
  `start_org_id` bigint(32) DEFAULT NULL COMMENT '所属机构',
  `end_org_id` bigint(32) DEFAULT NULL COMMENT '目标机构',
  `start_name` varchar(32) DEFAULT NULL COMMENT '所有者负责人',
  `end_name` varchar(32) DEFAULT NULL COMMENT '目标机构负责人',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `start_room_id` bigint(32) DEFAULT NULL COMMENT '调出部门机房',
  `end_room_id` bigint(32) DEFAULT NULL COMMENT '调入部门机房',
  `rack_id` bigint(32) DEFAULT NULL COMMENT '机架',
  `sheft` varchar(64) DEFAULT NULL COMMENT '机位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调拨任务';

-- ----------------------------
-- Records of allocation_task
-- ----------------------------
INSERT INTO `allocation_task` VALUES ('6499108400314449922', 'njdyz', '', '2', '3', '6485235189961195520', '6485247578215546880', 'nj', 'yz', '0', '2019-11-29 09:53:39', '2019-11-29 09:53:39', '6485348785722490890', '6485352719434383371', null, null);
INSERT INTO `allocation_task` VALUES ('6499117120356352000', 'yzdsq', '', '2', '3', '6485247578215546880', '6485242549538652161', 'yz', 'sq', '0', '2019-11-29 09:57:06', '2019-11-29 09:57:06', '6485352719434383371', '6485350364584345611', null, null);
INSERT INTO `allocation_task` VALUES ('6499127366579650562', 'sqdyz', '', '2', '3', '6485242549538652161', '6485247578215546880', 'sq', 'yz', '0', '2019-11-29 10:01:11', '2019-11-29 10:01:11', '6485350364584345611', '6485352719434383371', null, null);
INSERT INTO `allocation_task` VALUES ('6499158463526993923', 'yzdsq', '', '2', '3', '6485247578215546880', '6485242549538652161', 'yz', 'sq', '0', '2019-11-29 10:13:32', '2019-11-29 10:13:32', '6485352719434383371', '6485350364584345611', null, null);
INSERT INTO `allocation_task` VALUES ('6499186176048496640', 'sqdyz', 'jj', '1', '3', '6485242549538652161', '6485247578215546880', 'sq', 'yz', '0', '2019-11-29 10:24:33', '2019-11-29 10:24:33', '6485350364584345611', '6485352719434383371', null, null);

-- ----------------------------
-- Table structure for allocation_task_desc
-- ----------------------------
DROP TABLE IF EXISTS `allocation_task_desc`;
CREATE TABLE `allocation_task_desc` (
  `id` bigint(32) NOT NULL,
  `res_id` bigint(32) DEFAULT NULL COMMENT '设备id',
  `room_id` bigint(32) DEFAULT NULL COMMENT '机房id',
  `label_id` bigint(32) DEFAULT NULL COMMENT '标签id',
  `state` int(1) NOT NULL COMMENT '0-待执行,2-执行中,8-执行完毕',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `task_id` bigint(32) DEFAULT NULL COMMENT '调拨任务ID',
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调拨任务详情';

-- ----------------------------
-- Records of allocation_task_desc
-- ----------------------------
INSERT INTO `allocation_task_desc` VALUES ('6499108400985538569', '6491853156169809949', '6485348785722490890', '6499098017105182721', '2', '2019-11-29 09:53:39', '6499108400314449922', '0');
INSERT INTO `allocation_task_desc` VALUES ('6499117120859668486', '6491853156169809949', '6485352719434383371', '6499098017105182721', '2', '2019-11-29 09:57:06', '6499117120356352000', '0');
INSERT INTO `allocation_task_desc` VALUES ('6499127367082967043', '6491853156169809949', '6485350364584345611', '6499098017105182721', '2', '2019-11-29 10:01:11', '6499127366579650562', '0');
INSERT INTO `allocation_task_desc` VALUES ('6499158464114196483', '6491853156169809949', '6485352719434383371', '6499098017105182721', '2', '2019-11-29 10:13:32', '6499158463526993923', '0');
INSERT INTO `allocation_task_desc` VALUES ('6499186176677642247', '6491853156169809949', '6485350364584345611', '6499098017105182721', '1', '2019-11-29 10:24:33', '6499186176048496640', '0');

-- ----------------------------
-- Table structure for allocation_task_log
-- ----------------------------
DROP TABLE IF EXISTS `allocation_task_log`;
CREATE TABLE `allocation_task_log` (
  `id` bigint(32) NOT NULL,
  `task_name` varchar(32) DEFAULT NULL COMMENT '任务名称',
  `task_type` int(1) DEFAULT NULL COMMENT '任务类型',
  `task_id` bigint(11) DEFAULT NULL COMMENT '任务ID',
  `state` int(1) DEFAULT NULL COMMENT '任务状态',
  `start_org_id` bigint(32) DEFAULT NULL COMMENT '所属机构',
  `end_org_id` bigint(32) DEFAULT NULL COMMENT '目标机构',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `person_name` varchar(32) DEFAULT NULL COMMENT '执行人',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调拨任务日志';

-- ----------------------------
-- Records of allocation_task_log
-- ----------------------------
INSERT INTO `allocation_task_log` VALUES ('6499110361571000329', 'njdyz', '3', '6499108400314449922', '2', '6485235189961195520', '6485247578215546880', '2019-11-29 09:53:39', '2019-11-29 09:54:25', 'nj', '');
INSERT INTO `allocation_task_log` VALUES ('6499120804842700800', 'yzdsq', '3', '6499117120356352000', '2', '6485247578215546880', '6485242549538652161', '2019-11-29 09:57:06', '2019-11-29 09:58:34', 'yz', '');
INSERT INTO `allocation_task_log` VALUES ('6499135955046236168', 'sqdyz', '3', '6499127366579650562', '2', '6485242549538652161', '6485247578215546880', '2019-11-29 10:01:11', '2019-11-29 10:04:35', 'sq', '');
INSERT INTO `allocation_task_log` VALUES ('6499163828377354245', 'yzdsq', '3', '6499158463526993923', '2', '6485247578215546880', '6485242549538652161', '2019-11-29 10:13:32', '2019-11-29 10:15:40', 'yz', '');

-- ----------------------------
-- Table structure for borrow_task
-- ----------------------------
DROP TABLE IF EXISTS `borrow_task`;
CREATE TABLE `borrow_task` (
  `id` bigint(32) NOT NULL,
  `task_name` varchar(32) DEFAULT NULL COMMENT '任务名称',
  `remark` varchar(64) DEFAULT NULL COMMENT '备注',
  `task_type` int(1) DEFAULT NULL COMMENT '任务类型  1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修,11-线缆贴标''',
  `state` int(1) DEFAULT NULL COMMENT '''0-待执行,2-执行中,8-执行完毕''',
  `start_org_id` bigint(32) DEFAULT NULL COMMENT '所属机构',
  `end_org_id` bigint(32) DEFAULT NULL COMMENT '目标机构',
  `start_name` varchar(32) DEFAULT NULL COMMENT '所有者负责人',
  `end_name` varchar(32) DEFAULT NULL COMMENT '目标机构负责人',
  `is_del` int(1) DEFAULT '0',
  `create_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `start_room_id` bigint(32) DEFAULT NULL COMMENT '借用部门机房',
  `end_room_id` bigint(32) DEFAULT NULL COMMENT '借出部门机房',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow_task
-- ----------------------------

-- ----------------------------
-- Table structure for borrow_task_desc
-- ----------------------------
DROP TABLE IF EXISTS `borrow_task_desc`;
CREATE TABLE `borrow_task_desc` (
  `id` bigint(32) NOT NULL,
  `res_id` bigint(32) DEFAULT NULL COMMENT '设备id',
  `room_id` bigint(32) DEFAULT NULL COMMENT '机房id',
  `label_id` bigint(32) DEFAULT NULL COMMENT '标签id',
  `state` int(1) NOT NULL COMMENT '0-待执行,2-执行中,8-执行完毕',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `task_id` bigint(32) DEFAULT NULL COMMENT '调拨任务ID',
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='借用任务详情';

-- ----------------------------
-- Records of borrow_task_desc
-- ----------------------------

-- ----------------------------
-- Table structure for borrow_task_log
-- ----------------------------
DROP TABLE IF EXISTS `borrow_task_log`;
CREATE TABLE `borrow_task_log` (
  `id` bigint(32) NOT NULL,
  `task_name` varchar(32) DEFAULT NULL,
  `task_type` int(1) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `task_id` bigint(32) DEFAULT NULL,
  `start_org_id` bigint(32) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `end_org_id` bigint(20) DEFAULT NULL,
  `person_name` varchar(16) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='借用任务日志';

-- ----------------------------
-- Records of borrow_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for cable
-- ----------------------------
DROP TABLE IF EXISTS `cable`;
CREATE TABLE `cable` (
  `id` bigint(32) NOT NULL COMMENT 'ID',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `cable_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '线缆类型',
  `asset_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '线缆编号',
  `intf1_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '源端接口类型',
  `org1_id` bigint(32) DEFAULT NULL COMMENT '源端组织机构',
  `floor1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '源端楼层',
  `room1_id` bigint(32) DEFAULT NULL COMMENT '源端机房',
  `rack1_id` bigint(32) DEFAULT NULL COMMENT '源端机架编号',
  `rack_u1` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '源端机柜U位',
  `res1_id` bigint(32) DEFAULT NULL COMMENT '源端设备id',
  `port1_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '源端板卡/端口ID',
  `floor2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '宿端楼层',
  `room2_id` bigint(32) DEFAULT NULL COMMENT '宿端机房',
  `rack2_id` bigint(32) DEFAULT NULL COMMENT '宿端机架编号',
  `rack_u2` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '宿端U位',
  `intf2_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '宿端接口类型',
  `org2_id` bigint(32) DEFAULT NULL COMMENT '宿端组织机构',
  `res2_id` bigint(64) DEFAULT NULL COMMENT '宿端设备',
  `port2_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '宿端板卡/端口ID',
  `tid` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RFID标签',
  `serve_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '业务信息',
  `status` int(1) NOT NULL DEFAULT '0' COMMENT '0-未知,1-在线,5-故障',
  `is_pasted` int(1) NOT NULL DEFAULT '0' COMMENT '0-未贴,1-已贴',
  `tid2` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RFID标签',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除（0：未删除，1已删除）',
  `is_appBind` int(1) NOT NULL DEFAULT '0' COMMENT '是否为app绑定',
  `is_printed` int(1) NOT NULL DEFAULT '0' COMMENT '是否打印',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='线缆表';

-- ----------------------------
-- Records of cable
-- ----------------------------
INSERT INTO `cable` VALUES ('6491875822062796802', '1', '南京机构双线1', 'DJ_NJ-CABLE-86165273', '方形1', '6485235189961195520', null, '6485348785722490890', null, null, '6491853156127866884', '板卡1', null, '6485348785722490890', null, null, '圆形1', '6485235189961195520', '6491853156169809920', '宿端板卡1', null, '网络电视', '0', '0', null, '2019-11-27 09:59:41', '2019-11-27 14:19:49', '1', '0', '0');
INSERT INTO `cable` VALUES ('6491875822272512002', '1', '南京机构双线2', 'DJ_NJ-CABLE-60581621', '方形2', '6485235189961195520', null, '6485348785722490890', null, null, '6491853156127866884', '板卡2', null, '6485348785722490890', null, null, '圆形2', '6485235189961195520', '6491853156169809920', '宿端板卡2', null, '网络电视', '0', '0', null, '2019-11-27 09:59:41', '2019-11-27 14:32:40', '1', '0', '0');
INSERT INTO `cable` VALUES ('6491875822314455047', '1', '南京机构双线3', 'DJ_NJ-CABLE-49967723', '方形3', '6485235189961195520', null, '6485348785722490890', null, null, '6491853156127866884', '板卡3', null, '6485348785722490890', null, null, '圆形3', '6485235189961195520', '6491853156169809920', '宿端板卡3', null, '网络电视', '0', '0', null, '2019-11-27 09:59:41', '2019-11-29 09:20:38', '1', '0', '0');
INSERT INTO `cable` VALUES ('6491875822314455053', '1', '南京机构双线4', 'DJ_NJ-CABLE-51770361', '方形4', '6485235189961195520', null, '6485348785722490890', null, null, '6491853156127866884', '板卡4', null, '6485348785722490890', null, null, '圆形4', '6485235189961195520', '6491853156169809920', '宿端板卡4', null, '网络电视', '0', '0', null, '2019-11-27 09:59:41', '2019-11-27 19:38:25', '1', '0', '0');
INSERT INTO `cable` VALUES ('6491875822356398081', '1', '南京机构双线5', 'DJ_NJ-CABLE-43245939', '方形5', '6485235189961195520', null, '6485348785722490890', null, null, '6491853156127866884', '板卡5', null, '6485348785722490890', null, null, '圆形5', '6485235189961195520', '6491853156169809920', '宿端板卡5', null, '网络电视', '0', '0', null, '2019-11-27 09:59:41', '2019-11-27 19:41:28', '1', '0', '0');
INSERT INTO `cable` VALUES ('6496701370828062720', '1', '线缆MM1', 'DJ_YZ-CABLE-49786982', '三棱1', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID001', null, '6485353473486356495', null, null, '圆形MM1', '6485235189961195520', '6491839297728020487', 'Id001', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370870005769', '1', '线缆MM2', 'DJ_YZ-CABLE-51676625', '三棱2', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID002', null, '6485353473486356495', null, null, '圆形MM2', '6485235189961195520', '6491839297728020487', 'Id002', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370911948806', '1', '线缆MM3', 'DJ_YZ-CABLE-72791389', '三棱3', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID003', null, '6485353473486356495', null, null, '圆形MM3', '6485235189961195520', '6491839297728020487', 'Id003', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370911948819', '1', '线缆MM4', 'DJ_YZ-CABLE-03300277', '三棱4', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID004', null, '6485353473486356495', null, null, '圆形MM4', '6485235189961195520', '6491839297728020487', 'Id004', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370911948823', '1', '线缆MM5', 'DJ_YZ-CABLE-56590447', '三棱5', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID005', null, '6485353473486356495', null, null, '圆形MM5', '6485235189961195520', '6491839297728020487', 'Id005', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370953891846', '1', '线缆MM6', 'DJ_YZ-CABLE-48770822', '三棱6', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID006', null, '6485353473486356495', null, null, '圆形MM6', '6485235189961195520', '6491839297728020487', 'Id006', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370953891854', '1', '线缆MM7', 'DJ_YZ-CABLE-46739765', '三棱7', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID007', null, '6485353473486356495', null, null, '圆形MM7', '6485235189961195520', '6491839297728020487', 'Id007', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370953891867', '1', '线缆MM8', 'DJ_YZ-CABLE-44743149', '三棱8', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID008', null, '6485353473486356495', null, null, '圆形MM8', '6485235189961195520', '6491839297728020487', 'Id008', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370995834883', '1', '线缆MM9', 'DJ_YZ-CABLE-38969052', '三棱9', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID009', null, '6485353473486356495', null, null, '圆形MM9', '6485235189961195520', '6491839297728020487', 'Id009', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701370995834893', '1', '线缆MM10', 'DJ_YZ-CABLE-20988214', '三棱10', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID010', null, '6485353473486356495', null, null, '圆形MM10', '6485235189961195520', '6491839297728020487', 'Id010', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371037777928', '1', '线缆MM11', 'DJ_YZ-CABLE-56185640', '三棱11', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID011', null, '6485353473486356495', null, null, '圆形MM11', '6485235189961195520', '6491839297728020487', 'Id011', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371037777930', '1', '线缆MM12', 'DJ_YZ-CABLE-09074569', '三棱12', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID012', null, '6485353473486356495', null, null, '圆形MM12', '6485235189961195520', '6491839297728020487', 'Id012', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371037777947', '1', '线缆MM13', 'DJ_YZ-CABLE-90320431', '三棱13', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID013', null, '6485353473486356495', null, null, '圆形MM13', '6485235189961195520', '6491839297728020487', 'Id013', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371079720967', '1', '线缆MM14', 'DJ_YZ-CABLE-67260842', '三棱14', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID014', null, '6485353473486356495', null, null, '圆形MM14', '6485235189961195520', '6491839297728020487', 'Id014', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371079720971', '1', '线缆MM15', 'DJ_YZ-CABLE-16293727', '三棱15', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID015', null, '6485353473486356495', null, null, '圆形MM15', '6485235189961195520', '6491839297728020487', 'Id015', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371121664003', '1', '线缆MM16', 'DJ_YZ-CABLE-70501674', '三棱16', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID016', null, '6485353473486356495', null, null, '圆形MM16', '6485235189961195520', '6491839297728020487', 'Id016', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371121664019', '1', '线缆MM17', 'DJ_YZ-CABLE-41475693', '三棱17', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID017', null, '6485353473486356495', null, null, '圆形MM17', '6485235189961195520', '6491839297728020487', 'Id017', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371121664026', '1', '线缆MM18', 'DJ_YZ-CABLE-51733962', '三棱18', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID018', null, '6485353473486356495', null, null, '圆形MM18', '6485235189961195520', '6491839297728020487', 'Id018', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371163607048', '1', '线缆MM19', 'DJ_YZ-CABLE-82652727', '三棱19', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID019', null, '6485353473486356495', null, null, '圆形MM19', '6485235189961195520', '6491839297728020487', 'Id019', null, '交换机', '0', '0', null, null, null, '0', '0', '0');
INSERT INTO `cable` VALUES ('6496701371163607053', '1', '线缆MM20', 'DJ_YZ-CABLE-27308977', '三棱20', '6485247578215546880', null, '6485353473486356495', null, null, '6491839297518305289', 'ID020', null, '6485353473486356495', null, null, '圆形MM20', '6485235189961195520', '6491839297728020487', 'Id020', null, '交换机', '0', '0', null, null, null, '0', '0', '0');

-- ----------------------------
-- Table structure for check_task
-- ----------------------------
DROP TABLE IF EXISTS `check_task`;
CREATE TABLE `check_task` (
  `id` bigint(32) NOT NULL,
  `name` varchar(32) DEFAULT NULL COMMENT '任务名称',
  `task_type` int(1) DEFAULT NULL COMMENT '任务类型 1-设备贴标,2-设备盘点,3-设备调拨,4-设备借用,5-设备维修,11-线缆贴标',
  `state` int(1) DEFAULT NULL COMMENT '0-待执行,2-执行中,8-执行完毕',
  `org_id` bigint(32) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '任务备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '时间',
  `is_del` int(1) DEFAULT '0' COMMENT '1:删除 0：未删除',
  `user_id` bigint(32) DEFAULT NULL COMMENT '盘点责任人ID',
  `check_task_type` int(1) DEFAULT NULL COMMENT '1.设备盘点 2.部门设备盘点  3.机房设备盘点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='盘点任务表';

-- ----------------------------
-- Records of check_task
-- ----------------------------

-- ----------------------------
-- Table structure for check_task_desc
-- ----------------------------
DROP TABLE IF EXISTS `check_task_desc`;
CREATE TABLE `check_task_desc` (
  `id` bigint(32) NOT NULL COMMENT '主键id',
  `res_id` bigint(32) DEFAULT NULL COMMENT '设备id',
  `room_id` bigint(32) DEFAULT NULL,
  `res_type_code` varchar(32) DEFAULT NULL COMMENT '设备分类编码',
  `label_id` bigint(32) DEFAULT NULL COMMENT '标签id',
  `state` int(1) DEFAULT NULL COMMENT '''0-待执行,2-执行中,8-执行完毕'',',
  `task_id` bigint(32) DEFAULT NULL COMMENT '盘点任务ID',
  `org_id` bigint(32) DEFAULT NULL,
  `is_del` int(1) DEFAULT '0' COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `tid` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='盘点任务详情表';

-- ----------------------------
-- Records of check_task_desc
-- ----------------------------

-- ----------------------------
-- Table structure for check_task_log
-- ----------------------------
DROP TABLE IF EXISTS `check_task_log`;
CREATE TABLE `check_task_log` (
  `id` bigint(32) NOT NULL,
  `task_type` int(1) DEFAULT NULL COMMENT '任务类型',
  `task_name` varchar(255) DEFAULT NULL,
  `state` int(1) DEFAULT NULL COMMENT '任务状态',
  `org_id` bigint(32) DEFAULT NULL COMMENT '所属机构',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '结束时间',
  `task_id` bigint(20) DEFAULT NULL COMMENT '盘点任务ID',
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='盘点任务日志';

-- ----------------------------
-- Records of check_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for label
-- ----------------------------
DROP TABLE IF EXISTS `label`;
CREATE TABLE `label` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `is_binding` int(1) NOT NULL DEFAULT '0' COMMENT '1-已绑定,0-未绑定',
  `is_printed` int(1) NOT NULL DEFAULT '0' COMMENT '1-已打印,0-未打印',
  `is_pasted` int(1) NOT NULL DEFAULT '0' COMMENT '0-未贴,1-已贴',
  `label_type` int(1) NOT NULL COMMENT '标签分类,1-设备标签,2-线缆标签',
  `barcode` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条码',
  `epc` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'epc',
  `tid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'RFID标签',
  `uid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户ID',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除(1:已删除，0未删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='标签表';

-- ----------------------------
-- Records of label
-- ----------------------------
INSERT INTO `label` VALUES ('6499074206502748166', '1', '0', '0', '0', '1', '10024048', 'E280B0A1200000001505481D', 'E280B0A1200000001505481D', null, '2019-11-29 09:40:03', null, '0');
INSERT INTO `label` VALUES ('6499074207048007686', '1', '0', '0', '0', '1', '10024049', 'E280B0A1200000001505480F', 'E280B0A1200000001505480F', null, '2019-11-29 09:40:03', '2019-11-29 10:18:54', '1');
INSERT INTO `label` VALUES ('6499074207048007692', '1', '0', '0', '0', '1', '10024050', 'E280B0A12000000015053511', 'E280B0A12000000015053511', null, '2019-11-29 09:40:03', '2019-11-29 10:16:19', '1');
INSERT INTO `label` VALUES ('6499075461480448001', '1', '0', '0', '0', '1', '10024028', 'E280B0A1200000001504D0A9', 'E280B0A1200000001504D0A9', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461606277120', '1', '0', '0', '0', '1', '10024029', 'E280B0A1200000001504D09F', 'E280B0A1200000001504D09F', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461606277133', '1', '0', '0', '0', '1', '10024030', 'E280B0A12000000015050066', 'E280B0A12000000015050066', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461648220168', '1', '0', '0', '0', '1', '10024031', 'E280B0A1200000001504E3FF', 'E280B0A1200000001504E3FF', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461648220177', '1', '0', '0', '0', '1', '10024032', 'E280B0A1200000001504E3F5', 'E280B0A1200000001504E3F5', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461690163204', '1', '0', '0', '0', '1', '10024033', 'E280B0A12000000015050065', 'E280B0A12000000015050065', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461732106244', '1', '0', '0', '0', '1', '10024034', 'E280B0A1200000001504E3FE', 'E280B0A1200000001504E3FE', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461732106256', '1', '0', '0', '0', '1', '10024035', 'E280B0A1200000001504E3F4', 'E280B0A1200000001504E3F4', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461774049281', '1', '0', '0', '0', '1', '10024036', 'E280B0A1200000001505170D', 'E280B0A1200000001505170D', null, '2019-11-29 09:40:33', null, '0');
INSERT INTO `label` VALUES ('6499075461774049290', '1', '1', '1', '0', '1', '10024037', 'E280B0A1200000001505007C', 'E280B0A1200000001505007C', null, '2019-11-29 09:40:33', '2019-11-29 09:48:46', '0');
INSERT INTO `label` VALUES ('6499098016727695365', '1', '0', '0', '0', '1', '10024001', 'E280B0A12000000015050052', 'E280B0A12000000015050052', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017063239686', '1', '0', '0', '0', '1', '10024002', 'E280B0A1200000001505005C', 'E280B0A1200000001505005C', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017063239694', '1', '0', '0', '0', '1', '10024003', 'E280B0A12000000015050043', 'E280B0A12000000015050043', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017105182721', '1', '1', '1', '0', '1', '10024004', 'E280B0A12000000015050051', 'E280B0A12000000015050051', null, '2019-11-29 09:49:31', '2019-11-29 09:50:59', '0');
INSERT INTO `label` VALUES ('6499098017147125767', '1', '0', '0', '0', '1', '10024005', 'E280B0A1200000001505005B', 'E280B0A1200000001505005B', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017147125774', '1', '0', '0', '0', '1', '10024006', 'E280B0A1200000001504D113', 'E280B0A1200000001504D113', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017189068800', '1', '0', '0', '0', '1', '10024007', 'E280B0A1200000001504E3D4', 'E280B0A1200000001504E3D4', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017189068815', '1', '0', '0', '0', '1', '10024008', 'E280B0A1200000001504E3DE', 'E280B0A1200000001504E3DE', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017231011847', '1', '0', '0', '0', '1', '10024009', 'E280B0A1200000001504D112', 'E280B0A1200000001504D112', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017231011850', '1', '0', '0', '0', '1', '10024010', 'E280B0A1200000001504E3D3', 'E280B0A1200000001504E3D3', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017272954888', '1', '0', '0', '0', '1', '10024011', 'E280B0A1200000001504E3DD', 'E280B0A1200000001504E3DD', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017272954892', '1', '0', '0', '0', '1', '10024012', 'E280B0A1200000001504BF8B', 'E280B0A1200000001504BF8B', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017314897926', '1', '0', '0', '0', '1', '10024013', 'E280B0A1200000001504D0FD', 'E280B0A1200000001504D0FD', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017314897933', '1', '0', '0', '0', '1', '10024014', 'E280B0A1200000001504D107', 'E280B0A1200000001504D107', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017356840960', '1', '0', '0', '0', '1', '10024015', 'E280B0A1200000001504BF8C', 'E280B0A1200000001504BF8C', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017356840970', '1', '0', '0', '0', '1', '10024016', 'E280B0A1200000001504D0FE', 'E280B0A1200000001504D0FE', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017398784003', '1', '0', '0', '0', '1', '10024017', 'E280B0A1200000001504D108', 'E280B0A1200000001504D108', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017398784011', '1', '0', '0', '0', '1', '10024018', 'E280B0A1200000001504BFA7', 'E280B0A1200000001504BFA7', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017440727044', '1', '0', '0', '0', '1', '10024019', 'E280B0A1200000001504BF99', 'E280B0A1200000001504BF99', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017440727059', '1', '0', '0', '0', '1', '10024020', 'E280B0A1200000001504BF7F', 'E280B0A1200000001504BF7F', null, '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017482670082', '1', '0', '0', '0', '2', '10024021', 'E280B0A1200000001504BFA6', 'E280B0A1200000001504BFA6', 'E280B0A1200000001504BFA6', '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017482670094', '1', '0', '0', '0', '2', '10024022', 'E280B0A1200000001504BF98', 'E280B0A1200000001504BF98', 'E280B0A1200000001504BF98', '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017524613121', '1', '0', '0', '0', '2', '10024023', 'E280B0A1200000001504BF80', 'E280B0A1200000001504BF80', 'E280B0A1200000001504BF80', '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017566556161', '1', '0', '0', '0', '2', '10024024', 'E280B0A1200000001504E3E9', 'E280B0A1200000001504E3E9', 'E280B0A1200000001504E3E9', '2019-11-29 09:49:31', null, '0');
INSERT INTO `label` VALUES ('6499098017608499204', '1', '1', '0', '0', '2', '10024025', 'E280B0A1200000001504D0AA', 'E280B0A1200000001504D0AA', 'E280B0A1200000001504D0AA', '2019-11-29 09:49:31', '2019-11-29 10:27:32', '0');
INSERT INTO `label` VALUES ('6499098017608499212', '1', '1', '0', '0', '2', '10024026', 'E280B0A1200000001504D0A0', 'E280B0A1200000001504D0A0', 'E280B0A1200000001504D0A0', '2019-11-29 09:49:31', '2019-11-29 10:27:32', '0');
INSERT INTO `label` VALUES ('6499098017650442244', '1', '0', '0', '0', '1', '10024222', 'E28068102000000446769989', 'E28068102000000446769989', null, '2019-11-29 09:49:31', '2019-11-29 10:15:59', '1');
INSERT INTO `label` VALUES ('6499133619154452488', '1', '1', '1', '0', '1', '9136', 'E28011602000659CC66308F4', 'E28011602000659CC66308F4', null, '2019-11-29 10:03:40', '2019-11-29 10:05:09', '0');
INSERT INTO `label` VALUES ('6499133619238338568', '1', '1', '1', '0', '1', '9137', 'E28011602000610CC66B08F4', 'E28011602000610CC66B08F4', null, '2019-11-29 10:03:40', '2019-11-29 10:05:09', '0');

-- ----------------------------
-- Table structure for operation_log
-- ----------------------------
DROP TABLE IF EXISTS `operation_log`;
CREATE TABLE `operation_log` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `org_id` bigint(32) NOT NULL COMMENT '组织机构id',
  `user_id` bigint(32) NOT NULL COMMENT '用户id',
  `path` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `method` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `input` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='操作日志表';

-- ----------------------------
-- Records of operation_log
-- ----------------------------
INSERT INTO `operation_log` VALUES ('6499070450126028808', '6467453551651061766', '6365011668925153286', '/login', 'com.manage.idc.system.controller.LoginController.login()', '192.168.1.10', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@6477f810username:\"admin\"password:\"admin\"rememberMe:\"false\"', '2019-11-29 09:38:34', '2019-11-29 09:38:34');
INSERT INTO `operation_log` VALUES ('6499072294780928005', '6467453551651061766', '6365011668925153286', '/login', 'com.manage.idc.system.controller.LoginController.login()', '192.168.1.15', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@7e4b5707username:\"admin\"password:\"admin\"rememberMe:\"false\"', '2019-11-29 09:39:18', '2019-11-29 09:39:18');
INSERT INTO `operation_log` VALUES ('6499074209774305287', '6485248958644879368', '6496368254842306569', '/label/importlabel', 'com.manage.idc.system.controller.LabelController.importLabel()', '192.168.1.14', 'labelFile:\"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@6a41807\"', '2019-11-29 09:40:03', '2019-11-29 09:40:03');
INSERT INTO `operation_log` VALUES ('6499075464668119045', '6485248958644879368', '6496368254842306569', '/label/importlabel', 'com.manage.idc.system.controller.LabelController.importLabel()', '192.168.1.14', 'labelFile:\"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@749d7399\"', '2019-11-29 09:40:33', '2019-11-29 09:40:33');
INSERT INTO `operation_log` VALUES ('6499081039695052807', '6485248958644879368', '6496368254842306569', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.14', 'ids:\"[6496409929237135360, 6496409929488793618, 6496409929572679680]\"', '2019-11-29 09:42:46', '2019-11-29 09:42:46');
INSERT INTO `operation_log` VALUES ('6499081196603965442', '6485248958644879368', '6496368254842306569', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.14', 'ids:\"[6496409929237135360, 6496409929488793618, 6496409929572679680]\"', '2019-11-29 09:42:50', '2019-11-29 09:42:50');
INSERT INTO `operation_log` VALUES ('6499083898155171848', '6485248958644879368', '6496368254842306569', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.14', 'ids:\"[6496409929572679694, 6496409929614622721, 6496409929614622730]\"', '2019-11-29 09:43:54', '2019-11-29 09:43:54');
INSERT INTO `operation_log` VALUES ('6499088545318174729', '6485248958644879368', '6496368254842306569', '/login', 'com.manage.idc.system.controller.LoginController.login()', '192.168.1.14', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@43c1fd97username:\"zhenjiang\"password:\"zhenjiang\"rememberMe:\"false\"', '2019-11-29 09:45:45', '2019-11-29 09:45:45');
INSERT INTO `operation_log` VALUES ('6499089129207234566', '6485248958644879368', '6496368254842306569', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.14', 'ids:\"[6496471700345978880, 6496409929404907521]\"', '2019-11-29 09:45:59', '2019-11-29 09:45:59');
INSERT INTO `operation_log` VALUES ('6499089680967925768', '6485235189961195520', '6485443446801694727', '/device/deldevice/6491891078927482895', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.12', 'id:\"6491891078927482895\"', '2019-11-29 09:46:12', '2019-11-29 09:46:12');
INSERT INTO `operation_log` VALUES ('6499090935903682568', '6467453551651061766', '6365011668925153286', '/device/deldevice/6491839298818539536', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.10', 'id:\"6491839298818539536\"', '2019-11-29 09:46:42', '2019-11-29 09:46:42');
INSERT INTO `operation_log` VALUES ('6499091213021347843', '6485235189961195520', '6485443446801694727', '/device/deldevice/6491891078969425931', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.12', 'id:\"6491891078969425931\"', '2019-11-29 09:46:49', '2019-11-29 09:46:49');
INSERT INTO `operation_log` VALUES ('6499091624356741125', '6485248958644879368', '6496368254842306569', '/device/deldevice/6496409929404907532', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.14', 'id:\"6496409929404907532\"', '2019-11-29 09:46:59', '2019-11-29 09:46:59');
INSERT INTO `operation_log` VALUES ('6499092192223559680', '6467453551651061766', '6365011668925153286', '/device/deldevice/6491891078969425941', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.7', 'id:\"6491891078969425941\"', '2019-11-29 09:47:12', '2019-11-29 09:47:12');
INSERT INTO `operation_log` VALUES ('6499093349306204166', '6485248958644879368', '6496368254842306569', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.14', 'ids:\"[6496409929446850567]\"', '2019-11-29 09:47:40', '2019-11-29 09:47:40');
INSERT INTO `operation_log` VALUES ('6499094595937239047', '6485248958644879368', '6496368254842306569', '/device/importdevice', 'com.manage.idc.device.controller.DeviceController.importDevice()', '192.168.1.14', 'devFile:\"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@37f3e112\"', '2019-11-29 09:48:09', '2019-11-29 09:48:09');
INSERT INTO `operation_log` VALUES ('6499095974856622085', '6485248958644879368', '6496368254842306569', '/device/bindlabel', 'com.manage.idc.device.controller.DeviceController.bindLabel()', '192.168.1.14', 'resList:\"[Res(isAppBind=null, isValid=null, resTypeCode=null, orgId=null, regionId=null, roomId=null, roomAreaId=null, rackId=null, sheft=null, name=null, assetId=null, model=null, tid=E280B0A1200000001505007C, owner=null, operator=null, status=null, isPasted=null, isPrinted=null)]\"', '2019-11-29 09:48:42', '2019-11-29 09:48:42');
INSERT INTO `operation_log` VALUES ('6499097788641443848', '6467453551651061766', '6365011668925153286', '/device/deldevice/6491891078969425941', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.7', 'id:\"6491891078969425941\"', '2019-11-29 09:49:26', '2019-11-29 09:49:26');
INSERT INTO `operation_log` VALUES ('6499098022390005766', '6485235189961195520', '6485443446801694727', '/label/importlabel', 'com.manage.idc.system.controller.LabelController.importLabel()', '192.168.1.12', 'labelFile:\"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@37991bbb\"', '2019-11-29 09:49:31', '2019-11-29 09:49:31');
INSERT INTO `operation_log` VALUES ('6499098679176069128', '6467453551651061766', '6365011668925153286', '/login', 'com.manage.idc.system.controller.LoginController.login()', '192.168.1.7', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@6aa4fba3username:\"admin\"password:\"admin\"rememberMe:\"false\"', '2019-11-29 09:49:47', '2019-11-29 09:49:47');
INSERT INTO `operation_log` VALUES ('6499099491528867844', '6467453551651061766', '6365011668925153286', '/device/deldevice/6499094568548433925', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.7', 'id:\"6499094568548433925\"', '2019-11-29 09:50:06', '2019-11-29 09:50:06');
INSERT INTO `operation_log` VALUES ('6499101261902643208', '6485235189961195520', '6485443446801694727', '/device/bindlabel', 'com.manage.idc.device.controller.DeviceController.bindLabel()', '192.168.1.12', 'resList:\"[Res(isAppBind=null, isValid=null, resTypeCode=null, orgId=null, regionId=null, roomId=null, roomAreaId=null, rackId=null, sheft=null, name=null, assetId=null, model=null, tid=E280B0A12000000015050051, owner=null, operator=null, status=null, isPasted=null, isPrinted=null)]\"', '2019-11-29 09:50:48', '2019-11-29 09:50:48');
INSERT INTO `operation_log` VALUES ('6499102964118978567', '6467453551651061766', '6365011668925153286', '/login', 'com.manage.idc.system.controller.LoginController.login()', '192.168.1.7', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@29e29e98username:\"admin\"password:\"admin\"rememberMe:\"false\"', '2019-11-29 09:51:29', '2019-11-29 09:51:29');
INSERT INTO `operation_log` VALUES ('6499103079504281609', '6485248958644879368', '6496368254842306569', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.14', 'ids:\"[6499094569051750405, 6499094569093693447]\"', '2019-11-29 09:51:32', '2019-11-29 09:51:32');
INSERT INTO `operation_log` VALUES ('6499106757615288325', '6467453551651061766', '6365011668925153286', '/cable/delcable/6491975372064686081', 'com.manage.idc.cable.controller.CableController.delCable()', '192.168.1.7', 'id:\"6491975372064686081\"', '2019-11-29 09:52:59', '2019-11-29 09:52:59');
INSERT INTO `operation_log` VALUES ('6499108042917806080', '6467453551651061766', '6365011668925153286', '/resextcfg/updateresextcfg', 'com.manage.idc.system.controller.ResExtCfgController.updateResExtCfg()', '192.168.1.15', 'resExtCfg:ResExtCfg(isValid=null, resTypeCode=null, extGrpCode=null, itemCode=null, itemName=财务入账日期, seq=1, valType=6362335975393198082, remark=null, isQuery=0, valTypeName=null)', '2019-11-29 09:53:30', '2019-11-29 09:53:30');
INSERT INTO `operation_log` VALUES ('6499120608465387522', '6467453551651061766', '6365011668925153286', '/login', 'com.manage.idc.system.controller.LoginController.login()', '192.168.1.7', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@1689460cusername:\"admin\"password:\"admin\"rememberMe:\"false\"', '2019-11-29 09:58:30', '2019-11-29 09:58:30');
INSERT INTO `operation_log` VALUES ('6499133620999946242', '6485237645810073608', '6489353026136965120', '/label/importlabel', 'com.manage.idc.system.controller.LabelController.importLabel()', '192.168.1.12', 'labelFile:\"org.springframework.web.multipart.support.StandardMultipartHttpServletRequest$StandardMultipartFile@3a86755a\"', '2019-11-29 10:03:40', '2019-11-29 10:03:40');
INSERT INTO `operation_log` VALUES ('6499136300027740164', '6485237645810073608', '6489353026136965120', '/device/bindlabel', 'com.manage.idc.device.controller.DeviceController.bindLabel()', '192.168.1.12', 'resList:\"[Res(isAppBind=null, isValid=null, resTypeCode=null, orgId=null, regionId=null, roomId=null, roomAreaId=null, rackId=null, sheft=null, name=null, assetId=null, model=null, tid=E28011602000659CC66308F4, owner=null, operator=null, status=null, isPasted=null, isPrinted=null), Res(isAppBind=null, isValid=null, resTypeCode=null, orgId=null, regionId=null, roomId=null, roomAreaId=null, rackId=null, sheft=null, name=null, assetId=null, model=null, tid=E28011602000610CC66B08F4, owner=null, operator=null, status=null, isPasted=null, isPrinted=null)]\"', '2019-11-29 10:04:44', '2019-11-29 10:04:44');
INSERT INTO `operation_log` VALUES ('6499146708318945288', '6485248958644879368', '6496368254842306569', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.14', 'ids:\"[6499094569135636481, 6499094569135636499]\"', '2019-11-29 10:08:52', '2019-11-29 10:08:52');
INSERT INTO `operation_log` VALUES ('6499148910831861767', '6485235189961195520', '6485443446801694727', '/device/deldevice/6491891079011368961', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.12', 'id:\"6491891079011368961\"', '2019-11-29 10:09:44', '2019-11-29 10:09:44');
INSERT INTO `operation_log` VALUES ('6499150594551316488', '6485235189961195520', '6485443446801694727', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.12', 'ids:\"[6491891079011368975, 6491891079137198096]\"', '2019-11-29 10:10:25', '2019-11-29 10:10:25');
INSERT INTO `operation_log` VALUES ('6499153506992128001', '6485235189961195520', '6485443446801694727', '/cable/delcable/6491975372106629121', 'com.manage.idc.cable.controller.CableController.delCable()', '192.168.1.12', 'id:\"6491975372106629121\"', '2019-11-29 10:11:34', '2019-11-29 10:11:34');
INSERT INTO `operation_log` VALUES ('6499154369089372167', '6485235189961195520', '6485443446801694727', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.12', 'ids:\"[6491975372148572164, 6491975372190515200]\"', '2019-11-29 10:11:55', '2019-11-29 10:11:55');
INSERT INTO `operation_log` VALUES ('6499163181531791360', '6485248958644879368', '6496368254842306569', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.14', 'ids:\"[6491875822482227212, 6491875822524170245]\"', '2019-11-29 10:15:25', '2019-11-29 10:15:25');
INSERT INTO `operation_log` VALUES ('6499163455126241280', '6485235189961195520', '6485443446801694727', '/login', 'com.manage.idc.system.controller.LoginController.login()', '192.168.1.15', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@7c673efausername:\"nanjing\"password:\"nanjing\"rememberMe:\"false\"', '2019-11-29 10:15:31', '2019-11-29 10:15:31');
INSERT INTO `operation_log` VALUES ('6499164636284190724', '6467453551651061766', '6365011668925153286', '/label/dellabel/6499098017650442244', 'com.manage.idc.system.controller.LabelController.delLabel()', '192.168.1.7', 'id:\"6499098017650442244\"', '2019-11-29 10:15:59', '2019-11-29 10:15:59');
INSERT INTO `operation_log` VALUES ('6499165474809446404', '6467453551651061766', '6365011668925153286', '/label/dellabel/6499074207048007692', 'com.manage.idc.system.controller.LabelController.delLabel()', '192.168.1.7', 'id:\"6499074207048007692\"', '2019-11-29 10:16:19', '2019-11-29 10:16:19');
INSERT INTO `operation_log` VALUES ('6499171967592038405', '6485235189961195520', '6485443446801694727', '/label/dellabel/6499074207048007686', 'com.manage.idc.system.controller.LabelController.delLabel()', '192.168.1.12', 'id:\"6499074207048007686\"', '2019-11-29 10:18:54', '2019-11-29 10:18:54');
INSERT INTO `operation_log` VALUES ('6499176049195089925', '6485248958644879368', '6496368254842306569', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.14', 'ids:\"[6491875822314455053, 6491875822356398081]\"', '2019-11-29 10:20:31', '2019-11-29 10:20:31');
INSERT INTO `operation_log` VALUES ('6499177336259215362', '6485248958644879368', '6496368254842306569', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.14', 'ids:\"[6491975372316344322, 6491900702799953922]\"', '2019-11-29 10:21:02', '2019-11-29 10:21:02');
INSERT INTO `operation_log` VALUES ('6499178648153620481', '6485248958644879368', '6496368254842306569', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.14', 'ids:\"[6491975372232458241, 6491975372232458256, 6491975372274401284, 6491975372316344322, 6491900702422466562, 6491900702799953922, 6491900702841896967, 6491900703051612166, 6491900703051612179, 6491900703093555200]\"', '2019-11-29 10:21:33', '2019-11-29 10:21:33');
INSERT INTO `operation_log` VALUES ('6499180331201986564', '6485248958644879368', '6496368254842306569', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.14', 'ids:\"[6491875822062796802, 6491875822272512002, 6491875822398341123, 6491875822440284161, 6491875822482227200, 6496684585433169923, 6496684585684828162, 6496684585684828174, 6496684585726771202, 6496684585768714243]\"', '2019-11-29 10:22:13', '2019-11-29 10:22:13');
INSERT INTO `operation_log` VALUES ('6499180697071124488', '6485248958644879368', '6496368254842306569', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.14', 'ids:\"[6496684585810657282, 6496684585852600321, 6496684585894543362, 6496684585894543372, 6496684585936486402, 6496684585978429448, 6496684586020372480, 6496684586020372495, 6496684586062315522, 6496684586104258560]\"', '2019-11-29 10:22:22', '2019-11-29 10:22:22');
INSERT INTO `operation_log` VALUES ('6499181348152934401', '6485248958644879368', '6496368254842306569', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.14', 'ids:\"[6496684585894543362, 6496684585894543372]\"', '2019-11-29 10:22:38', '2019-11-29 10:22:38');
INSERT INTO `operation_log` VALUES ('6499181946428456966', '6485235189961195520', '6485443446801694727', '/device/deldevice/6491853156211752962', 'com.manage.idc.device.controller.DeviceController.delDevice()', '192.168.1.12', 'id:\"6491853156211752962\"', '2019-11-29 10:22:52', '2019-11-29 10:22:52');
INSERT INTO `operation_log` VALUES ('6499183054228029447', '6485248958644879368', '6496368254842306569', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.14', 'ids:\"[6496684586104258578, 6496684586146201601]\"', '2019-11-29 10:23:18', '2019-11-29 10:23:18');
INSERT INTO `operation_log` VALUES ('6499183268808622081', '6485235189961195520', '6485443446801694727', '/device/batchdeldevice', 'com.manage.idc.device.controller.DeviceController.batchDelDevice()', '192.168.1.12', 'ids:\"[6491853156211752972, 6491853156211752980]\"', '2019-11-29 10:23:24', '2019-11-29 10:23:24');
INSERT INTO `operation_log` VALUES ('6499185521359585288', '6467453551651061766', '6365011668925153286', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.7', 'ids:\"[6496686185266544649, 6496686185266544656]\"', '2019-11-29 10:24:17', '2019-11-29 10:24:17');
INSERT INTO `operation_log` VALUES ('6499185996364513284', '6485235189961195520', '6485443446801694727', '/cable/delcable/6496684586188144645', 'com.manage.idc.cable.controller.CableController.delCable()', '192.168.1.12', 'id:\"6496684586188144645\"', '2019-11-29 10:24:29', '2019-11-29 10:24:29');
INSERT INTO `operation_log` VALUES ('6499186798734868483', '6485235189961195520', '6485443446801694727', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.12', 'ids:\"[6496684586230087680, 6496684586230087691]\"', '2019-11-29 10:24:48', '2019-11-29 10:24:48');
INSERT INTO `operation_log` VALUES ('6499187290852556803', '6467453551651061766', '6365011668925153286', '/login', 'com.manage.idc.system.controller.LoginController.login()', '127.0.0.1', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@70cea764username:\"admin\"password:\"admin\"rememberMe:\"false\"', '2019-11-29 10:24:59', '2019-11-29 10:24:59');
INSERT INTO `operation_log` VALUES ('6499187815140556805', '6485235189961195520', '6485443446801694727', '/login', 'com.manage.idc.system.controller.LoginController.login()', '127.0.0.1', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@ce5d5dcusername:\"nanjing\"password:\"nanjing\"rememberMe:\"false\"', '2019-11-29 10:25:12', '2019-11-29 10:25:12');
INSERT INTO `operation_log` VALUES ('6499189904407265289', '6467453551651061766', '6365011668925153286', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.7', 'ids:\"[6496686185350430737, 6496686185350430748]\"', '2019-11-29 10:26:02', '2019-11-29 10:26:02');
INSERT INTO `operation_log` VALUES ('6499190983601684483', '6467453551651061766', '6365011668925153286', '/login', 'com.manage.idc.system.controller.LoginController.login()', '192.168.1.7', 'request:org.apache.shiro.web.servlet.ShiroHttpServletRequest@318b5cafusername:\"admin\"password:\"admin\"rememberMe:\"false\"', '2019-11-29 10:26:28', '2019-11-29 10:26:28');
INSERT INTO `operation_log` VALUES ('6499191456761118726', '6467453551651061766', '6365011668925153286', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.7', 'ids:\"[6496686185308487684, 6496686185308487693]\"', '2019-11-29 10:26:39', '2019-11-29 10:26:39');
INSERT INTO `operation_log` VALUES ('6499192008186265602', '6467453551651061766', '6365011668925153286', '/cable/batchdel', 'com.manage.idc.cable.controller.CableController.batchDel()', '192.168.1.7', 'ids:\"[6496686185392373761, 6496686185392373772, 6496686185434316800, 6496686185434316813]\"', '2019-11-29 10:26:52', '2019-11-29 10:26:52');
INSERT INTO `operation_log` VALUES ('6499193708724879362', '6485248958644879368', '6496368254842306569', '/cable/bindlabel', 'com.manage.idc.cable.controller.CableController.bindLabel()', '192.168.1.14', 'cable:Cable(isAppBind=null, isPrinted=null, isValid=null, cableType=null, assetId=null, intf1Type=null, org1Id=null, floor1=null, room1Id=null, rack1Id=null, rackU1=null, res1Id=null, port1Id=null, floor2=null, room2Id=null, rack2Id=null, rackU2=null, intf2Type=null, org2Id=null, res2Id=null, port2Id=null, tid=E280B0A1200000001504D0A0, serveInfo=null, status=null, isPasted=null, tid2=E280B0A1200000001504D0AA)', '2019-11-29 10:27:32', '2019-11-29 10:27:32');
INSERT INTO `operation_log` VALUES ('6499207683139174402', '6485235189961195520', '6485443446801694727', '/org/add', 'com.manage.idc.system.controller.SysOrgController.add()', '192.168.1.12', 'sysOrg:\"SysOrg(id=6499207679406243841, isValid=null, name=南京子机构11, parentId=6485235189961195520, regionId=6358606215349534727, fullCode=DJ_NJ_NJZ11, isDel=0, level=3, createTime=Fri Nov 29 10:33:06 CST 2019, updateTime=Fri Nov 29 10:33:06 CST 2019, regionName=null)\"', '2019-11-29 10:33:06', '2019-11-29 10:33:06');
INSERT INTO `operation_log` VALUES ('6499211378027397123', '6485235189961195520', '6485443446801694727', '/org/update', 'com.manage.idc.system.controller.SysOrgController.update()', '192.168.1.12', 'sysOrg:\"SysOrg(id=6499207679406243841, isValid=null, name=南京子机构1100, parentId=6499207679406243841, regionId=6358606215349534727, fullCode=DJ_NJ_NJZ11_00, isDel=0, level=4, createTime=null, updateTime=Fri Nov 29 10:34:34 CST 2019, regionName=null)\"', '2019-11-29 10:34:34', '2019-11-29 10:34:34');
INSERT INTO `operation_log` VALUES ('6499214453333032968', '6485235189961195520', '6485443446801694727', '/org/add', 'com.manage.idc.system.controller.SysOrgController.add()', '192.168.1.12', 'sysOrg:\"SysOrg(id=6499214451235880963, isValid=null, name=南京子机构22, parentId=6485235189961195520, regionId=6358606215349534727, fullCode=DJ_NJ_NJZ22, isDel=0, level=3, createTime=Fri Nov 29 10:35:47 CST 2019, updateTime=Fri Nov 29 10:35:47 CST 2019, regionName=null)\"', '2019-11-29 10:35:47', '2019-11-29 10:35:47');
INSERT INTO `operation_log` VALUES ('6499215663599452164', '6485235189961195520', '6485443446801694727', '/org/update', 'com.manage.idc.system.controller.SysOrgController.update()', '192.168.1.12', 'sysOrg:\"SysOrg(id=6499214451235880963, isValid=null, name=南京子机构2211, parentId=6485990961179525122, regionId=6358606215349534727, fullCode=DJ_NJ_NJZ_2211, isDel=0, level=4, createTime=null, updateTime=Fri Nov 29 10:36:16 CST 2019, regionName=null)\"', '2019-11-29 10:36:16', '2019-11-29 10:36:16');

-- ----------------------------
-- Table structure for rack
-- ----------------------------
DROP TABLE IF EXISTS `rack`;
CREATE TABLE `rack` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `room_id` bigint(32) NOT NULL COMMENT '机房',
  `room_area_id` int(32) DEFAULT '0' COMMENT '机房区域，没有为0',
  `_row` int(32) NOT NULL COMMENT '行',
  `_column` int(32) NOT NULL COMMENT '列',
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简名',
  `asset_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资产编号',
  `tid` bigint(32) DEFAULT NULL COMMENT 'RFID标签',
  `_width` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '宽度',
  `_height` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '高度',
  `_capacity` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '容量',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `org_id` bigint(32) NOT NULL COMMENT '组织机构',
  `region_id` bigint(32) NOT NULL COMMENT '地理区域',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除(1:已删除，0未删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='机架表';

-- ----------------------------
-- Records of rack
-- ----------------------------
INSERT INTO `rack` VALUES ('6485362381894451204', '1', '6485326006205808651', null, '11', '22', '连云港机构机房机架', 'DJ_LYG-RACK_41287510', null, '500', '600', '1000', null, '6485243813450219521', '6358604922035896325', null, null, '0');
INSERT INTO `rack` VALUES ('6485367111559413769', '1', '6485348785722490890', null, '44', '55', '南京机构机房机架', 'DJ_NJ-RACK_35057725', null, '77', '88', '2000', null, '6485235189961195520', '6358606215349534727', null, null, '0');
INSERT INTO `rack` VALUES ('6485373389845299207', '1', '6485349545017344018', null, '99', '88', '徐州机构机房机架', 'DJ_XZ-RACK_80721156', null, '55', '77', '100', null, '6485237645810073608', '6358605679359426568', null, null, '0');
INSERT INTO `rack` VALUES ('6485376086824714246', '1', '6485350364584345611', null, '44', '77', '宿迁机构机房机架', 'DJ_SQ-RACK_30716517', null, '77', '55', '1001', null, '6485242549538652161', '6358557891934289924', null, null, '0');
INSERT INTO `rack` VALUES ('6485378633186672645', '1', '6485351304276213773', null, '44', '33', '淮安机构机房机架', 'DJ_HA-RACK_23098692', null, '99', '88', '1002', null, '6485245259814010885', '6358604630154280961', null, null, '0');
INSERT INTO `rack` VALUES ('6485380945380638729', '1', '6485352140788203537', null, '33', '99', '盐城机构机房机架', 'DJ_YC-RACK_12322628', null, '76', '78', '1003', null, '6485246603207639043', '6358604359202242566', null, null, '0');
INSERT INTO `rack` VALUES ('6485382982931578882', '1', '6485352719434383371', null, '78', '98', '扬州机构机房机架', 'DJ_YZ-RACK_53562144', null, '234', '123', '1003', null, '6485247578215546880', '6358603799556259840', null, null, '0');
INSERT INTO `rack` VALUES ('6485384878043955204', '1', '6485353473486356495', null, '99', '55', '镇江机构机房机架', 'DJ_ZJ-RACK_04447468', null, '77', '33', '1004', null, '6485248958644879368', '6358570155114496007', null, null, '0');
INSERT INTO `rack` VALUES ('6485386736162570245', '1', '6485354081115176976', null, '789', '123', '常州机构机房机架', 'DJ_CZ-RACK_95521844', null, '567', '456', '1005', null, '6485250087457914881', '6358605423884369922', null, null, '0');
INSERT INTO `rack` VALUES ('6485388779208048644', '1', '6485354677880750092', null, '34', '56', '泰州机构机房机架', 'DJ_TZ-RACK_33803405', null, '67', '78', '1006', null, '6485250960376463366', '6358557916512911367', null, null, '0');
INSERT INTO `rack` VALUES ('6485390884916428809', '1', '6485355435288166419', null, '9', '24', '无锡机构机房机架', 'DJ_WX-RACK_58203931', null, '89', '09', '1007', null, '6485252880486891520', '6358605973380136967', null, '2019-11-25 21:01:40', '0');
INSERT INTO `rack` VALUES ('6485392760567234562', '1', '6485356077687767053', null, '45', '9', '苏州机构机房机架', 'DJ_SZ-RACK_39262773', null, '898', '809', '1008', null, '6485253813425930242', '6358605163795578889', null, null, '0');
INSERT INTO `rack` VALUES ('6485394971342929923', '1', '6485356656711434253', null, '787', '456', '苏州机构机房机架', 'DJ_NT-RACK_27392285', null, '546', '768', '1009', null, '6485257116733931522', '6358606215349532727', null, null, '0');
INSERT INTO `rack` VALUES ('6485789662144102405', '1', '6485773514996449293', null, '33', '43', '盐城子机构机房机架', 'DJ_YC_YCZ-002-RACK_27470171', null, '433', '4343', '2332', null, '6485770998959308808', '6358604359202242566', null, null, '0');
INSERT INTO `rack` VALUES ('6486184770823782400', '1', '6486182965721169933', null, '45', '54', '无锡子机构机房机架', 'DJ_WX_wxz-RACK_21453775', null, '444', '555', '4345', null, '6486179771716730881', '6358605973380136967', null, null, '0');
INSERT INTO `rack` VALUES ('6486187765179351045', '1', '6486182965721169933', null, '55', '44', '无锡子机构机房机架2', 'DJ_WX_wxz-RACK_90656153', null, '44', '55', '43', null, '6486179771716730881', '6358605973380136967', null, null, '0');
INSERT INTO `rack` VALUES ('6486277895487488008', '1', '6485355435288166419', null, '1', '2', '3', 'DJ_WX-RACK_04442257', null, '3', '3', '3', null, '6486179771716730881', '6358605973380136967', null, '2019-11-25 21:15:15', '1');
INSERT INTO `rack` VALUES ('6486280302011351048', '1', '6485355435288166419', null, '123', '123', '123', 'DJ_WX-RACK_78171997', null, '123', '123', '123', null, '6485252880486891520', '6358605973380136967', null, '2019-11-25 21:10:25', '1');
INSERT INTO `rack` VALUES ('6486282129763205121', '1', '6485355435288166419', null, '123', '123', '123', 'DJ_WX-RACK_69574708', null, '123', '123', '123', null, '6485252880486891520', '6358605973380136967', null, '2019-11-25 21:10:51', '1');
INSERT INTO `rack` VALUES ('6486286109989928966', '1', '6485355435288166419', null, '123', '123', '123', 'DJ_WX-RACK_60377535', null, '123', '123', '123', null, '6485252880486891520', '6358605973380136967', null, '2019-11-25 21:11:09', '1');
INSERT INTO `rack` VALUES ('6486329080508579841', '1', '6485355435288166419', null, '123', '123', '123', 'DJ_WX-RACK_56841643', null, '123', '123', '123', null, '6485252880486891520', '6358605973380136967', null, '2019-11-25 21:15:40', '1');
INSERT INTO `rack` VALUES ('6486390549879193603', '1', '6486182965721169933', null, '64', '35', '无锡子机构机房机架3', 'DJ_WX_wxz-RACK_38131309', null, '34', '43', '4242', null, '6486179771716730881', '6358605973380136967', null, null, '0');
INSERT INTO `rack` VALUES ('6486399683353640967', '1', '6486182965721169933', null, '333', '353', '无锡子机构机房机架4', 'DJ_WX_wxz-RACK_80001748', null, '343', '433', '888', null, '6486179771716730881', '6358605973380136967', null, null, '0');
INSERT INTO `rack` VALUES ('6486407909054873600', '1', '6486182965721169933', null, '43', '444', '无锡子机构机房机架5', 'DJ_WX_wxz-RACK_15177304', null, '435', '656', '545', null, '6486179771716730881', '6358605973380136967', null, null, '0');
INSERT INTO `rack` VALUES ('6488301928605286408', '1', '6488296947282083852', null, '34', '44', '苏州子机构机房机架', 'DJ_SZ_SZZ_002-RACK_07497682', null, '333', '333', '4343', null, '6488291661578240002', '6358605163795578889', null, null, '0');
INSERT INTO `rack` VALUES ('6488309398912368645', '1', '6485348785722490890', null, '123', '123', '123', 'DJ_NJ-RACK_52676978', null, '123', '123', '123', null, '6467453551651061766', '6358606215349534727', null, null, '0');
INSERT INTO `rack` VALUES ('6488313665106739207', '1', '6485356077687767053', null, '123', '123', '苏州机构机房机架A', 'DJ_SZ-RACK_98152665', null, '123', '123', '123', null, '6485253813425930242', '6358605163795578889', null, '2019-11-26 10:30:47', '0');
INSERT INTO `rack` VALUES ('6488314285150699528', '1', '6488296947282083852', null, '123', '123', '123', 'DJ_SZ_SZZ_002-RACK_47356092', null, '123', '1232123', '123123', null, '6485253813425930242', '6358605163795578889', null, '2019-11-26 10:29:21', '1');
INSERT INTO `rack` VALUES ('6488316698888765444', '1', '6488298049922662410', null, '33', '44', '苏州子机构机房机架02', 'DJ_SZ_SZZ002SZZ003-RACK_28137797', null, '54', '54', '545', null, '6488294146996961280', '6358605163795578889', null, null, '0');
INSERT INTO `rack` VALUES ('6488948256507166725', '1', '6488946214468321294', null, '32', '43', '南京子机构机房机架', 'DJ_NJ_NJZ-RACK_49613863', null, '65', '76', '1003', null, '6485990961179525122', '6358606215349534727', null, null, '0');

-- ----------------------------
-- Table structure for repair_task
-- ----------------------------
DROP TABLE IF EXISTS `repair_task`;
CREATE TABLE `repair_task` (
  `id` bigint(32) NOT NULL,
  `task_name` varchar(32) DEFAULT NULL COMMENT '任务名称',
  `task_type` int(1) DEFAULT NULL COMMENT '任务类型',
  `state` int(1) DEFAULT NULL COMMENT '0-待执行,2-执行中,8-执行完毕',
  `org_id` bigint(32) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `is_del` int(1) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建任务',
  `room_id` bigint(32) DEFAULT NULL COMMENT '负责人（执行人）',
  `user_id` bigint(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='维修任务';

-- ----------------------------
-- Records of repair_task
-- ----------------------------

-- ----------------------------
-- Table structure for repair_task_desc
-- ----------------------------
DROP TABLE IF EXISTS `repair_task_desc`;
CREATE TABLE `repair_task_desc` (
  `id` bigint(32) NOT NULL,
  `res_id` bigint(32) DEFAULT NULL COMMENT '设备id',
  `room_id` bigint(32) DEFAULT NULL COMMENT '机房id',
  `label_id` bigint(32) DEFAULT NULL COMMENT '标签id',
  `state` int(1) NOT NULL COMMENT '0-待执行,2-执行中,8-执行完毕',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `task_id` bigint(32) DEFAULT NULL COMMENT '调拨任务ID',
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='维修任务详情';

-- ----------------------------
-- Records of repair_task_desc
-- ----------------------------

-- ----------------------------
-- Table structure for repair_task_log
-- ----------------------------
DROP TABLE IF EXISTS `repair_task_log`;
CREATE TABLE `repair_task_log` (
  `id` bigint(32) NOT NULL,
  `task_name` varchar(32) DEFAULT NULL,
  `task_type` int(1) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `org_id` bigint(32) DEFAULT NULL,
  `task_id` bigint(32) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `person_name` varchar(16) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='维修任务日志';

-- ----------------------------
-- Records of repair_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for res
-- ----------------------------
DROP TABLE IF EXISTS `res`;
CREATE TABLE `res` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `res_type_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源类型编码',
  `org_id` bigint(32) NOT NULL COMMENT '组织机构',
  `region_id` bigint(32) DEFAULT NULL COMMENT '地理区域',
  `room_id` bigint(32) NOT NULL COMMENT '机房',
  `room_area_id` bigint(32) DEFAULT '0' COMMENT '机房子区域',
  `rack_id` bigint(32) DEFAULT NULL COMMENT '机架',
  `sheft` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '机位',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简名',
  `asset_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '资产编号',
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '规格型号',
  `tid` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'RFID标签',
  `owner` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '所有者',
  `operator` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '操作员',
  `status` bigint(32) NOT NULL DEFAULT '0',
  `is_pasted` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '0-未贴,1-已贴',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` int(1) NOT NULL DEFAULT '0',
  `is_appBind` int(1) NOT NULL DEFAULT '0' COMMENT '是否为app绑定',
  `is_printed` int(1) NOT NULL DEFAULT '0' COMMENT '是否打印',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='资源表';

-- ----------------------------
-- Records of res
-- ----------------------------
INSERT INTO `res` VALUES ('6491839297518305289', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '14.0', '扬州设备001', 'DJ_YZ-SERVER-90590583', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297728020487', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '0', '15.0', '扬州设备002', 'DJ_YZ-SERVER-73372046', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:39:33', '2019-11-28 11:08:52', '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297728020495', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '16.0', '扬州设备003', 'DJ_YZ-SERVER-82864506', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297769963529', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '17.0', '扬州设备004', 'DJ_YZ-SERVER-16059483', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297769963530', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '18.0', '扬州设备005', 'DJ_YZ-SERVER-35844728', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297811906563', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '19.0', '扬州设备006', 'DJ_YZ-SERVER-66881832', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297853849609', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '20.0', '扬州设备007', 'DJ_YZ-SERVER-66410427', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297853849612', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '21.0', '扬州设备008', 'DJ_YZ-SERVER-97457847', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297895792649', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '22.0', '扬州设备009', 'DJ_YZ-SERVER-53193504', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297895792652', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '23.0', '扬州设备010', 'DJ_YZ-SERVER-00817431', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297937735688', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '24.0', '扬州设备011', 'DJ_YZ-SERVER-00259262', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297937735699', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '25.0', '扬州设备012', 'DJ_YZ-SERVER-69327398', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297979678725', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '26.0', '扬州设备013', 'DJ_YZ-SERVER-61440778', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839297979678731', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '27.0', '扬州设备014', 'DJ_YZ-SERVER-91231565', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298021621767', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '28.0', '扬州设备015', 'DJ_YZ-SERVER-03968349', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298021621771', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '29.0', '扬州设备016', 'DJ_YZ-SERVER-53431096', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298063564800', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '30.0', '扬州设备017', 'DJ_YZ-SERVER-92035051', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298105507849', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '31.0', '扬州设备018', 'DJ_YZ-SERVER-98543375', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298105507859', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '32.0', '扬州设备019', 'DJ_YZ-SERVER-69832830', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298147450882', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '33.0', '扬州设备020', 'DJ_YZ-SERVER-28815577', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298147450897', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '34.0', '扬州设备021', 'DJ_YZ-SERVER-23657523', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298189393927', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '35.0', '扬州设备022', 'DJ_YZ-SERVER-17520451', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298189393935', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '36.0', '扬州设备023', 'DJ_YZ-SERVER-76583294', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298231336966', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '37.0', '扬州设备024', 'DJ_YZ-SERVER-98719896', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298231336978', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '38.0', '扬州设备025', 'DJ_YZ-SERVER-63217475', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298273280002', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '39.0', '扬州设备026', 'DJ_YZ-SERVER-34896436', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298273280019', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '40.0', '扬州设备027', 'DJ_YZ-SERVER-07740054', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:39:33', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298315223044', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '41.0', '扬州设备028', 'DJ_YZ-SERVER-07106006', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:39:33', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298357166085', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '42.0', '扬州设备029', 'DJ_YZ-SERVER-46536337', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:39:33', '2019-11-27 14:56:38', '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298357166091', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '43.0', '扬州设备030', 'DJ_YZ-SERVER-95948094', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:39:33', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298399109125', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '44.0', '扬州设备031', 'DJ_YZ-SERVER-69527104', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:39:33', '2019-11-28 20:10:21', '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298441052166', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '45.0', '扬州设备032', 'DJ_YZ-SERVER-73623332', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:37:31', '2019-11-28 20:10:59', '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298441052175', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '46.0', '扬州设备033', 'DJ_YZ-SERVER-25541584', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298482995203', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '47.0', '扬州设备034', 'DJ_YZ-SERVER-74106391', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298482995218', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '48.0', '扬州设备035', 'DJ_YZ-SERVER-05874587', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298524938245', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '49.0', '扬州设备036', 'DJ_YZ-SERVER-51096979', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298524938258', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '0', '50.0', '扬州设备037', 'DJ_YZ-SERVER-03564902', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:39:33', '2019-11-29 09:34:06', '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298566881283', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '51.0', '扬州设备038', 'DJ_YZ-SERVER-39705169', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298566881291', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '52.0', '扬州设备039', 'DJ_YZ-SERVER-58389796', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298608824321', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '53.0', '扬州设备040', 'DJ_YZ-SERVER-76005203', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298608824336', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '54.0', '扬州设备041', 'DJ_YZ-SERVER-74084099', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298650767369', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '55.0', '扬州设备042', 'DJ_YZ-SERVER-17056114', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298650767377', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '56.0', '扬州设备043', 'DJ_YZ-SERVER-52282903', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298692710406', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '57.0', '扬州设备044', 'DJ_YZ-SERVER-94973049', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298692710410', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '58.0', '扬州设备045', 'DJ_YZ-SERVER-85943835', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298734653448', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '59.0', '扬州设备046', 'DJ_YZ-SERVER-09387490', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298776596487', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '60.0', '扬州设备047', 'DJ_YZ-SERVER-78841680', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298776596495', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '61.0', '扬州设备048', 'DJ_YZ-SERVER-68319217', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298818539525', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '62.0', '扬州设备049', 'DJ_YZ-SERVER-56670621', 'xl', null, '公司', null, '0', '0', '2019-11-27 09:45:10', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491839298818539536', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '63.0', '扬州设备050', 'DJ_YZ-SERVER-33423137', 'xl', null, '公司', null, '0', '0', '2019-11-29 09:47:27', '2019-11-29 09:46:42', '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156127866884', '1', 'ZZC_SERVER', '6485242549538652161', '6358557891934289924', '6485350364584345611', '0', '0', '1.0', '南京设备001', 'DJ_NJ-SERVER-49549134', '10*10', null, '1.0', null, '0', '0', '2019-11-29 09:39:33', '2019-11-27 10:37:55', '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156169809920', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '2.0', '南京设备002', 'DJ_NJ-SERVER-37847338', '10*11', null, '2.0', '3', '0', '0', '2019-11-27 09:50:40', '2019-11-27 16:25:30', '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156169809932', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '0', '3.0', '南京设备003', 'DJ_NJ-SERVER-61793000', '10*12', null, '3.0', '434', '0', '0', '2019-11-29 09:37:31', '2019-11-28 20:11:38', '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156169809949', '1', 'ZZC_SERVER', '6485242549538652161', '6358557891934289924', '6485350364584345611', '0', '0', '4.0', '南京设备004', 'DJ_NJ-SERVER-53686006', '10*13', 'E280B0A12000000015050051', '4.0', null, '3', '1', '2019-11-29 09:39:33', null, '0', '0', '1');
INSERT INTO `res` VALUES ('6491853156211752962', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '0', '5.0', '南京设备005', 'DJ_NJ-SERVER-11907836', '10*14', null, '5.0', null, '0', '0', '2019-11-29 09:39:33', '2019-11-29 10:22:52', '1', '0', '0');
INSERT INTO `res` VALUES ('6491853156211752972', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '6.0', '南京设备006', 'DJ_NJ-SERVER-53636596', '10*15', null, '6.0', null, '0', '0', '2019-11-29 09:39:33', null, '1', '0', '0');
INSERT INTO `res` VALUES ('6491853156211752980', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '0', '7.0', '南京设备007', 'DJ_NJ-SERVER-71819712', '10*16', null, '7.0', null, '0', '0', '2019-11-29 09:39:33', '2019-11-28 13:48:48', '1', '0', '0');
INSERT INTO `res` VALUES ('6491853156253696000', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '0', '8.0', '南京设备008', 'DJ_NJ-SERVER-55691666', '10*17', null, '8.0', null, '0', '0', '2019-11-29 09:39:33', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156253696019', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '9.0', '南京设备009', 'DJ_NJ-SERVER-97962544', '10*18', null, '9.0', null, '0', '0', '2019-11-29 09:39:33', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156253696024', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '10.0', '南京设备010', 'DJ_NJ-SERVER-83882202', '10*19', null, '10.0', null, '0', '0', '2019-11-29 09:39:33', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156295639045', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '11.0', '南京设备011', 'DJ_NJ-SERVER-73451739', '10*20', null, '11.0', null, '0', '0', '2019-11-27 09:50:40', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156295639058', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '12.0', '南京设备012', 'DJ_NJ-SERVER-85866208', '10*21', null, '12.0', null, '0', '0', '2019-11-27 09:50:40', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156337582087', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '13.0', '南京设备013', 'DJ_NJ-SERVER-70313177', '10*22', null, '13.0', null, '0', '0', '2019-11-27 09:50:40', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156337582092', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '14.0', '南京设备014', 'DJ_NJ-SERVER-10437960', '10*23', null, '14.0', null, '0', '0', '2019-11-27 09:50:40', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156337582106', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '15.0', '南京设备015', 'DJ_NJ-SERVER-17730528', '10*24', null, '15.0', null, '0', '0', '2019-11-27 09:50:40', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156379525125', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '16.0', '南京设备016', 'DJ_NJ-SERVER-94318087', '10*25', null, '16.0', null, '0', '0', '2019-11-27 09:50:40', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156379525138', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '17.0', '南京设备017', 'DJ_NJ-SERVER-94074308', '10*26', null, '17.0', null, '0', '0', '2019-11-29 09:37:32', '2019-11-27 15:54:29', '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156379525141', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '18.0', '南京设备018', 'DJ_NJ-SERVER-99468683', '10*27', null, '18.0', null, '0', '0', '2019-11-29 09:37:32', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491853156421468160', '1', 'ZZC_SERVER', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '19.0', '南京设备019', 'DJ_NJ-SERVER-62131628', '10*28', null, '19.0', null, '0', '0', '2019-11-29 09:37:32', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491891078885539840', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '0', '1.0', '南京子机构设备001', 'DJ_NJ_NJZ-SERVER-55028549', '10*10', null, '1.0', null, '0', '0', '2019-11-29 09:39:33', '2019-11-28 19:38:26', '0', '0', '0');
INSERT INTO `res` VALUES ('6491891078927482883', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '2.0', '南京子机构设备002', 'DJ_NJ_NJZ-SERVER-91469985', '10*11', null, '2.0', null, '0', '0', '2019-11-29 09:39:33', '2019-11-28 20:00:46', '0', '0', '0');
INSERT INTO `res` VALUES ('6491891078927482895', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '0', '3.0', '南京子机构设备003', 'DJ_NJ_NJZ-SERVER-33181334', '10*12', null, '3.0', null, '0', '0', '2019-11-29 09:46:12', '2019-11-29 09:46:12', '1', '0', '0');
INSERT INTO `res` VALUES ('6491891078969425925', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '4.0', '南京子机构设备004', 'DJ_NJ_NJZ-SERVER-98966195', '10*13', null, '4.0', null, '0', '0', '2019-11-29 09:37:32', '2019-11-28 20:08:50', '0', '0', '0');
INSERT INTO `res` VALUES ('6491891078969425931', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '0', '5.0', '南京子机构设备005', 'DJ_NJ_NJZ-SERVER-15696021', '10*14', null, '5.0', null, '0', '0', '2019-11-29 09:46:49', '2019-11-29 09:46:49', '1', '0', '0');
INSERT INTO `res` VALUES ('6491891078969425941', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '0', '6.0', '南京子机构设备006', 'DJ_NJ_NJZ-SERVER-50238497', '10*15', null, '6.0', null, '0', '0', '2019-11-29 09:47:14', '2019-11-29 09:49:25', '1', '0', '0');
INSERT INTO `res` VALUES ('6491891079011368961', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '7.0', '南京子机构设备007', 'DJ_NJ_NJZ-SERVER-11881478', '10*16', null, '7.0', null, '0', '0', '2019-11-29 09:39:34', '2019-11-29 10:09:44', '1', '0', '0');
INSERT INTO `res` VALUES ('6491891079011368975', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '8.0', '南京子机构设备008', 'DJ_NJ_NJZ-SERVER-98664605', '10*17', null, '8.0', null, '0', '0', '2019-11-29 09:39:34', '2019-11-28 20:17:26', '1', '0', '0');
INSERT INTO `res` VALUES ('6491891079011368988', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '9.0', '南京子机构设备009', 'DJ_NJ_NJZ-SERVER-28689779', '10*18', null, '9.0', null, '0', '0', '2019-11-29 09:37:32', '2019-11-28 20:11:38', '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079053312009', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '10.0', '南京子机构设备010', 'DJ_NJ_NJZ-SERVER-45933425', '10*19', null, '10.0', null, '0', '0', '2019-11-29 09:37:32', '2019-11-28 20:11:38', '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079053312011', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '11.0', '南京子机构设备011', 'DJ_NJ_NJZ-SERVER-61526477', '10*20', null, '11.0', null, '0', '0', '2019-11-29 09:37:32', '2019-11-28 20:11:38', '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079053312022', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '12.0', '南京子机构设备012', 'DJ_NJ_NJZ-SERVER-48649393', '10*21', null, '12.0', null, '0', '0', '2019-11-29 09:37:32', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079095255040', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '13.0', '南京子机构设备013', 'DJ_NJ_NJZ-SERVER-27731601', '10*22', null, '13.0', null, '0', '0', '2019-11-29 09:37:32', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079095255050', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '14.0', '南京子机构设备014', 'DJ_NJ_NJZ-SERVER-70430415', '10*23', null, '14.0', null, '0', '0', '2019-11-27 10:05:44', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079137198083', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '15.0', '南京子机构设备015', 'DJ_NJ_NJZ-SERVER-62082325', '10*24', null, '15.0', null, '0', '0', '2019-11-27 10:05:44', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079137198096', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '16.0', '南京子机构设备016', 'DJ_NJ_NJZ-SERVER-93385978', '10*25', null, '16.0', null, '0', '0', '2019-11-29 09:39:34', '2019-11-28 20:19:40', '1', '0', '0');
INSERT INTO `res` VALUES ('6491891079137198104', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '17.0', '南京子机构设备017', 'DJ_NJ_NJZ-SERVER-52966104', '10*26', null, '17.0', null, '0', '0', '2019-11-29 09:37:32', '2019-11-28 20:11:20', '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079179141129', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '18.0', '南京子机构设备018', 'DJ_NJ_NJZ-SERVER-79526232', '10*27', null, '18.0', null, '0', '0', '2019-11-27 10:05:44', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6491891079179141133', '1', 'ZZC_SERVER', '6485990961179525122', '6358606215349534727', '6488946214468321294', '0', '6488948256507166725', '19.0', '南京子机构设备019', 'DJ_NJ_NJZ-SERVER-36555589', '10*28', null, '19.0', null, '0', '0', '2019-11-27 10:05:44', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6492103482508574722', '1', 'ZZC_interchanger', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '6485382982931578882', '88', '新建设备', 'DJ_YZ-ZZC_interchanger-22394522', null, null, '所有', '李设备', '0', '0', '2019-11-29 09:37:32', null, '0', '0', '0');
INSERT INTO `res` VALUES ('6492691967015649286', '1', 'ZZC_interchanger', '6485235189961195520', '6358606215349534727', '6485348785722490890', '0', '6485367111559413769', '44', '手动添加设备11', 'DJ_NJ-ZZC_interchanger-70484297', null, null, '666', '666', '0', '0', '2019-11-29 09:37:32', '2019-11-27 15:50:29', '0', '0', '0');
INSERT INTO `res` VALUES ('6496409929237135360', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备027', 'DJ_ZJ-SERVER-80733640', '设备v330', null, '公司', null, '0', '0', '2019-11-29 09:42:46', null, '1', '0', '0');
INSERT INTO `res` VALUES ('6496409929404907521', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备028', 'DJ_ZJ-SERVER-89791957', '设备v331', null, '公司', null, '0', '0', '2019-11-29 09:45:59', '2019-11-28 20:32:25', '1', '0', '0');
INSERT INTO `res` VALUES ('6496409929404907532', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备029', 'DJ_ZJ-SERVER-02944345', '设备v332', null, '公司', null, '0', '0', '2019-11-29 09:46:58', '2019-11-29 09:46:58', '1', '0', '0');
INSERT INTO `res` VALUES ('6496409929446850567', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备030', 'DJ_ZJ-SERVER-12224172', '设备v333', null, '公司', null, '0', '0', '2019-11-29 09:47:40', '2019-11-28 20:15:57', '1', '0', '0');
INSERT INTO `res` VALUES ('6496409929488793604', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '0', '14.0', '镇江设备031', 'DJ_ZJ-SERVER-81209910', '设备v334', null, '公司', null, '0', '0', '2019-11-29 09:39:34', '2019-11-28 20:33:23', '0', '0', '0');
INSERT INTO `res` VALUES ('6496409929488793618', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备032', 'DJ_ZJ-SERVER-72067036', '设备v335', null, '公司', null, '0', '0', '2019-11-29 09:42:46', '2019-11-28 16:17:06', '1', '0', '0');
INSERT INTO `res` VALUES ('6496409929530736644', '1', 'ZZC_SERVER', '6485247578215546880', '6358603799556259840', '6485352719434383371', '0', '0', '14.0', '镇江设备033', 'DJ_ZJ-SERVER-05173131', '设备v336', null, '公司', null, '0', '0', '2019-11-29 09:39:34', '2019-11-28 20:29:08', '0', '0', '0');
INSERT INTO `res` VALUES ('6496409929572679680', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备034', 'DJ_ZJ-SERVER-82763109', '设备v337', null, '公司', null, '0', '0', '2019-11-29 09:42:46', '2019-11-28 19:16:24', '1', '0', '0');
INSERT INTO `res` VALUES ('6496409929572679694', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备035', 'DJ_ZJ-SERVER-99227965', '设备v338', null, '公司', null, '0', '0', '2019-11-29 09:43:54', '2019-11-28 20:11:20', '1', '0', '0');
INSERT INTO `res` VALUES ('6496409929614622721', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备036', 'DJ_ZJ-SERVER-67803904', '设备v339', null, '公司', null, '0', '0', '2019-11-29 09:43:54', '2019-11-28 20:16:10', '1', '0', '0');
INSERT INTO `res` VALUES ('6496409929614622730', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备037', 'DJ_ZJ-SERVER-03617135', '设备v340', null, '公司', null, '0', '0', '2019-11-29 09:43:54', '2019-11-28 20:32:33', '1', '0', '0');
INSERT INTO `res` VALUES ('6496471700345978880', '1', 'ZZC_003', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '44', '镇江设备038', 'DJ_ZJ-ZZC_003-60332868', null, null, '公司', '李超', '0', '0', '2019-11-29 09:45:59', '2019-11-28 20:15:47', '1', '0', '0');
INSERT INTO `res` VALUES ('6496791307485184004', '1', 'ZZC_interchanger', '6485237645810073608', '6358605679359426568', '6485349545017344018', '0', '6485373389845299207', '1111', '交换机11', 'DJ_XZ-ZZC_interchanger-35091373', null, 'E28011602000659CC66308F4', '顾超燃', '顾', '1', '1', '2019-11-29 09:39:34', '2019-11-29 10:05:09', '0', '0', '1');
INSERT INTO `res` VALUES ('6496793349398200322', '1', 'ZZC_interchanger', '6485237645810073608', '6358605679359426568', '6485349545017344018', '0', '6485373389845299207', '2222', '交换机22', 'DJ_XZ-ZZC_interchanger-38368788', null, 'E28011602000610CC66B08F4', '顾超燃', '顾', '1', '1', '2019-11-29 09:39:34', '2019-11-29 10:05:09', '0', '0', '1');
INSERT INTO `res` VALUES ('6499094568548433925', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备027', 'DJ_ZJ-SERVER-66890069', '设备v330', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:50:06', '1', '0', '0');
INSERT INTO `res` VALUES ('6499094569051750405', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备028', 'DJ_ZJ-SERVER-33699129', '设备v331', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '1', '0', '0');
INSERT INTO `res` VALUES ('6499094569093693447', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备029', 'DJ_ZJ-SERVER-35680379', '设备v332', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '1', '0', '0');
INSERT INTO `res` VALUES ('6499094569135636481', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备030', 'DJ_ZJ-SERVER-55665981', '设备v333', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '1', '0', '0');
INSERT INTO `res` VALUES ('6499094569135636499', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备031', 'DJ_ZJ-SERVER-18477969', '设备v334', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '1', '0', '0');
INSERT INTO `res` VALUES ('6499094569177579520', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备032', 'DJ_ZJ-SERVER-13972257', '设备v335', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '0', '0', '0');
INSERT INTO `res` VALUES ('6499094569219522568', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备033', 'DJ_ZJ-SERVER-35534350', '设备v336', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '0', '0', '0');
INSERT INTO `res` VALUES ('6499094569219522576', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备034', 'DJ_ZJ-SERVER-76368520', '设备v337', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '0', '0', '0');
INSERT INTO `res` VALUES ('6499094569261465603', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备035', 'DJ_ZJ-SERVER-03125975', '设备v338', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '0', '0', '0');
INSERT INTO `res` VALUES ('6499094569303408640', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备036', 'DJ_ZJ-SERVER-72436604', '设备v339', null, '公司', null, '0', '0', '2019-11-29 09:48:09', '2019-11-29 09:48:09', '0', '0', '0');
INSERT INTO `res` VALUES ('6499094569303408657', '1', 'ZZC_SERVER', '6485248958644879368', '6358570155114496007', '6485353473486356495', '0', '6485384878043955204', '14.0', '镇江设备037', 'DJ_ZJ-SERVER-87973914', '设备v340', 'E280B0A1200000001505007C', '公司', null, '1', '1', '2019-11-29 09:48:09', '2019-11-29 09:48:46', '0', '0', '0');

-- ----------------------------
-- Table structure for res_ext
-- ----------------------------
DROP TABLE IF EXISTS `res_ext`;
CREATE TABLE `res_ext` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `res_id` bigint(32) NOT NULL COMMENT '设备ID',
  `item_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条目编码',
  `item_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '值',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除(0,未删除：1，已删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='资产扩展信息表';

-- ----------------------------
-- Records of res_ext
-- ----------------------------
INSERT INTO `res_ext` VALUES ('6456211295615057921', '1', '6455903097276334087', 'jbxx3946_DD4801', 'dd', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6456211297963868163', '1', '6455903097276334087', 'jbxx3946_DD6283', 'd', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6456645817875824646', '1', '6449203893480980489', 'jbxx3946_cgdw1170', '王五', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645819469660163', '1', '6449203893480980489', 'jbxx3946_sydw1394', '123', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645821231267849', '1', '6449203893480980489', 'jbxx3946_cgrq0320', 'f\'rfr', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645822992875521', '1', '6449203893480980489', 'jbxx3946_xmbh5603', '二套房', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645824754483201', '1', '6449203893480980489', 'jbxx3946_xmmc8857', '是否', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645827900211202', '1', '6449203893480980489', 'jbxx3946_htmc2022', '方法', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645829619875844', '1', '6449203893480980489', 'jbxx3946_htje8465', '颠倒', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645831381483528', '1', '6449203893480980489', 'ztxx6550_syzt8380', 'q发放', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645833143091205', '1', '6449203893480980489', 'ztxx6550_wzxxdz0673', '发啊', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645834862755841', '1', '6449203893480980489', 'ztxx6550_wzxxlybh0661', ' 发', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645836624363528', '1', '6449203893480980489', 'ztxx6550_wzxxlcbh9890', ' 安抚', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645838385971206', '1', '6449203893480980489', 'ztxx6550_wzxxcwID6190', ' 发放', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645840105635849', '1', '6449203893480980489', 'yjgg2674_bkcw8676', '打法', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645841867243527', '1', '6449203893480980489', 'yjgg2674_bklx1545', '发放', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645843628851202', '1', '6449203893480980489', 'yjgg2674_dklx17316', '方法', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645845348515848', '1', '6449203893480980489', 'yjgg2674_dksl11420', '对付', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645847110123528', '1', '6449203893480980489', 'yjgg2674_dklx23332', '二分', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645848871731200', '1', '6449203893480980489', 'yjgg2674_dksl29681', '零六', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645850591395847', '1', '6449203893480980489', 'yjgg2674_dklx30279', '发放', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645852353003521', '1', '6449203893480980489', 'yjgg2674_dksl33379', '发', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645854114611204', '1', '6449203893480980489', 'yjgg2674_dklx49891', '俄国', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645855876218887', '1', '6449203893480980489', 'yjgg2674_dksl44092', '非噶', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645857595883525', '1', '6449203893480980489', 'syxx5630_wbdqsj9006', '广发二', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645859357491207', '1', '6449203893480980489', 'cwxx0890_cwrzrq9630', '发额', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645861119098887', '1', '6449203893480980489', 'cwxx0890_zcyz5786', ' 安抚', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645862838763521', '1', '6449203893480980489', 'cwxx0890_yzjqjs3682', '啊4热', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645864600371202', '1', '6449203893480980489', 'cwxx0890_yjsyqjs1050', '发额', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645866361978881', '1', '6449203893480980489', 'cwxx0890_bqstzje16296', '法尔啊', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645868081643527', '1', '6449203893480980489', 'cwxx0890_ljzj3779', '发 ', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645869843251206', '1', '6449203893480980489', 'cwxx0890_bnljzj1695', '爱人', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645871604858885', '1', '6449203893480980489', 'cwxx0890_jz7595', '饿啊', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6456645873324523525', '1', '6449203893480980489', 'cwxx0890_zjff10247', '发额', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239690309468166', '1', '6459234831795486725', 'jbxx3946_cgdw1170', '市场部', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239691693588483', '1', '6459234831795486725', 'jbxx3946_sydw1394', '浪费电费', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239693119651847', '1', '6459234831795486725', 'jbxx3946_cgrq0320', '6788.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239694503772160', '1', '6459234831795486725', 'jbxx3946_xmbh5603', '4564.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239696936468482', '1', '6459234831795486725', 'jbxx3946_xmmc8857', '就看看你', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239698362531842', '1', '6459234831795486725', 'jbxx3946_htmc2022', '范德萨', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239699746652162', '1', '6459234831795486725', 'jbxx3946_htje8465', '4565.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239701130772481', '1', '6459234831795486725', 'ztxx6550_syzt8380', '哈借', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239702556835842', '1', '6459234831795486725', 'ztxx6550_wzxxdz0673', '路附近', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239703940956168', '1', '6459234831795486725', 'ztxx6550_wzxxlybh0661', '90987.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239705367019523', '1', '6459234831795486725', 'ztxx6550_wzxxlcbh9890', '6.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239706751139845', '1', '6459234831795486725', 'ztxx6550_wzxxcwID6190', '7756.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239708135260163', '1', '6459234831795486725', 'yjgg2674_bkcw8676', '后即可', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239709561323520', '1', '6459234831795486725', 'yjgg2674_bklx1545', '是否', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239710945443843', '1', '6459234831795486725', 'yjgg2674_dklx17316', '4765.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239712329564162', '1', '6459234831795486725', 'yjgg2674_dksl11420', '77.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239713755627527', '1', '6459234831795486725', 'yjgg2674_dklx23332', '88.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239715139747845', '1', '6459234831795486725', 'yjgg2674_dksl29681', '545.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239716523868162', '1', '6459234831795486725', 'yjgg2674_dklx30279', '3476.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239717949931520', '1', '6459234831795486725', 'yjgg2674_dksl33379', '9840.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239719334051849', '1', '6459234831795486725', 'yjgg2674_dklx49891', '5648.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239720760115205', '1', '6459234831795486725', 'yjgg2674_dksl44092', '8769.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239722144235525', '1', '6459234831795486725', 'syxx5630_wbdqsj9006', '5678.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239723528355845', '1', '6459234831795486725', 'cwxx0890_cwrzrq9630', '7635.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239724912476166', '1', '6459234831795486725', 'cwxx0890_zcyz5786', '2000.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239726338539522', '1', '6459234831795486725', 'cwxx0890_yzjqjs3682', '1000.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239727722659848', '1', '6459234831795486725', 'cwxx0890_yjsyqjs1050', '20.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239729148723203', '1', '6459234831795486725', 'cwxx0890_bqstzje16296', '78.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239730532843528', '1', '6459234831795486725', 'cwxx0890_ljzj3779', '87.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239731916963843', '1', '6459234831795486725', 'cwxx0890_bnljzj1695', '89.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239733343027208', '1', '6459234831795486725', 'cwxx0890_jz7595', '56.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459239734727147526', '1', '6459234831795486725', 'cwxx0890_zjff10247', '23243.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195528', '1', '6459264190287708169', 'jbxx3946_xmbh5603', '4564.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195531', '1', '6459264190287708169', 'ztxx6550_ywxx2803', '爱国', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195544', '1', '6459264190287708169', 'yjgg2674_dklx49891', '5648.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195552', '1', '6459264190287708169', 'jbxx3946_sydw1394', '浪费电费', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195561', '1', '6459264190287708169', 'jbxx3946_htmc2022', '范德萨', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195572', '1', '6459264190287708169', 'yjgg2674_dklx30279', '3476.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195586', '1', '6459264190287708169', 'cwxx0890_bnljzj1695', '89.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195594', '1', '6459264190287708169', 'cwxx0890_yzjqjs3682', '1000.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195607', '1', '6459264190287708169', 'ztxx6550_wzxxlybh0661', '90987.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195610', '1', '6459264190287708169', 'syxx5630_wbdqsj9006', '5678.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195627', '1', '6459264190287708169', 'jbxx3946_cgdw1170', '市场部', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195631', '1', '6459264190287708169', 'jbxx3946_htje8465', '4565.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195648', '1', '6459264190287708169', 'jbxx3946_dhrq0321', '26-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195658', '1', '6459264190287708169', 'cwxx0890_jz7595', '56.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195662', '1', '6459264190287708169', 'yjgg2674_bkcw8676', '后即可', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195673', '1', '6459264190287708169', 'ztxx6550_wzxxdz0673', '路附近', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195683', '1', '6459264190287708169', 'yjgg2674_dksl44092', '8769.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195692', '1', '6459264190287708169', 'cwxx0890_bqstzje16296', '78.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195700', '1', '6459264190287708169', 'cwxx0890_zcyz5786', '2000.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195714', '1', '6459264190287708169', 'cwxx0890_ljzj3779', '87.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195725', '1', '6459264190287708169', 'cwxx0890_cwrzrq9630', '7635.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195735', '1', '6459264190287708169', 'yjgg2674_bklx1545', '是否', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195742', '1', '6459264190287708169', 'yjgg2674_dksl33379', '9840.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195754', '1', '6459264190287708169', 'jbxx3946_cgrq0320', '6788.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195768', '1', '6459264190287708169', 'jbxx3946_cyrq3186', '27-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195774', '1', '6459264190287708169', 'jbxx3946_ccrq8145', '25-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195783', '1', '6459264190287708169', 'cwxx0890_zjff10247', '23243.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195798', '1', '6459264190287708169', 'ztxx6550_wzxxlcbh9890', '6.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195801', '1', '6459264190287708169', 'jbxx3946_zyrq5165', '28-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195817', '1', '6459264190287708169', 'cwxx0890_yjsyqjs1050', '20.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195825', '1', '6459264190287708169', 'yjgg2674_dklx17316', '4765.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195835', '1', '6459264190287708169', 'ztxx6550_syzt8380', '哈借', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195843', '1', '6459264190287708169', 'jbxx3946_xmmc8857', '就看看你', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195851', '1', '6459264190287708169', 'yjgg2674_dksl11420', '77.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195862', '1', '6459264190287708169', 'ztxx6550_wzxxcwID6190', '7756.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195873', '1', '6459264190287708169', 'yjgg2674_dksl29681', '545.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195887', '1', '6459264190287708169', 'syxx5630_wbzt2856', '骄傲', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459264190665195890', '1', '6459264190287708169', 'yjgg2674_dklx23332', '88.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6459273685562818566', '1', '6459273685227274243', 'jbxx3946_xmbh5603', '4564.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818574', '1', '6459273685227274243', 'ztxx6550_ywxx2803', '爱国', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818582', '1', '6459273685227274243', 'yjgg2674_dklx49891', '5648.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818590', '1', '6459273685227274243', 'jbxx3946_sydw1394', '浪费电费', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818605', '1', '6459273685227274243', 'jbxx3946_htmc2022', '范德萨', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818610', '1', '6459273685227274243', 'yjgg2674_dklx30279', '3476.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818621', '1', '6459273685227274243', 'cwxx0890_bnljzj1695', '89.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818635', '1', '6459273685227274243', 'cwxx0890_yzjqjs3682', '1000.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818647', '1', '6459273685227274243', 'ztxx6550_wzxxlybh0661', '90987.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818652', '1', '6459273685227274243', 'syxx5630_wbdqsj9006', '30-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818663', '1', '6459273685227274243', 'jbxx3946_cgdw1170', '市场部', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818679', '1', '6459273685227274243', 'jbxx3946_htje8465', '4565.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818685', '1', '6459273685227274243', 'jbxx3946_dhrq0321', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818697', '1', '6459273685227274243', 'cwxx0890_jz7595', '56.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818706', '1', '6459273685227274243', 'yjgg2674_bkcw8676', '后即可', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818715', '1', '6459273685227274243', 'ztxx6550_wzxxdz0673', '路附近', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818723', '1', '6459273685227274243', 'yjgg2674_dksl44092', '8769.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818730', '1', '6459273685227274243', 'cwxx0890_bqstzje16296', '78.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818748', '1', '6459273685227274243', 'cwxx0890_zcyz5786', '2000.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818756', '1', '6459273685227274243', 'cwxx0890_ljzj3779', '87.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818760', '1', '6459273685227274243', 'cwxx0890_cwrzrq9630', '7635.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818771', '1', '6459273685227274243', 'yjgg2674_bklx1545', '是否', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818785', '1', '6459273685227274243', 'yjgg2674_dksl33379', '9840.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818798', '1', '6459273685227274243', 'jbxx3946_cgrq0320', '6788.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818809', '1', '6459273685227274243', 'jbxx3946_cyrq3186', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818814', '1', '6459273685227274243', 'jbxx3946_ccrq8145', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818824', '1', '6459273685227274243', 'cwxx0890_zjff10247', '23243.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818834', '1', '6459273685227274243', 'ztxx6550_wzxxlcbh9890', '6.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818843', '1', '6459273685227274243', 'jbxx3946_zyrq5165', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818857', '1', '6459273685227274243', 'cwxx0890_yjsyqjs1050', '20.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818867', '1', '6459273685227274243', 'yjgg2674_dklx17316', '4765.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818874', '1', '6459273685227274243', 'ztxx6550_syzt8380', '哈借', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818887', '1', '6459273685227274243', 'jbxx3946_xmmc8857', '就看看你', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818895', '1', '6459273685227274243', 'yjgg2674_dksl11420', '77.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818902', '1', '6459273685227274243', 'ztxx6550_wzxxcwID6190', '7756.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818911', '1', '6459273685227274243', 'yjgg2674_dksl29681', '545.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818929', '1', '6459273685227274243', 'syxx5630_wbzt2856', '骄傲', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6459273685562818936', '1', '6459273685227274243', 'yjgg2674_dklx23332', '88.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106472963', '1', '6460509352687042567', 'jbxx3946_xmbh5603', '43434.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106472976', '1', '6460509352687042567', 'jbxx3946_htmc2022', '3243.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106472983', '1', '6460509352687042567', 'cwxx0890_bnljzj1695', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106472991', '1', '6460509352687042567', 'cwxx0890_yzjqjs3682', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473009', '1', '6460509352687042567', 'ztxx6550_wzxxlybh0661', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473014', '1', '6460509352687042567', 'jbxx3946_htje8465', '3232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473022', '1', '6460509352687042567', 'jbxx3946_DD4801', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473032', '1', '6460509352687042567', 'yjgg2674_bkcw8676', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473042', '1', '6460509352687042567', 'cwxx0890_bqstzje16296', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473055', '1', '6460509352687042567', 'cwxx0890_zcyz5786', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473062', '1', '6460509352687042567', 'cwxx0890_cwrzrq9630', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473078', '1', '6460509352687042567', 'jbxx3946_DD6283', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473081', '1', '6460509352687042567', 'yjgg2674_bklx1545', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473093', '1', '6460509352687042567', 'yjgg2674_dksl33379', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473106', '1', '6460509352687042567', 'jbxx3946_zyrq5165', '232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473113', '1', '6460509352687042567', 'cwxx0890_yjsyqjs1050', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473124', '1', '6460509352687042567', 'yjgg2674_dklx17316', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473135', '1', '6460509352687042567', 'ztxx6550_syzt8380', '323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473142', '1', '6460509352687042567', 'jbxx3946_xmmc8857', '324.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473151', '1', '6460509352687042567', 'DD1999_1233867', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473161', '1', '6460509352687042567', 'yjgg2674_dksl29681', '334.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473178', '1', '6460509352687042567', 'syxx5630_wbzt2856', '34.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473186', '1', '6460509352687042567', 'ztxx6550_ywxx2803', '23.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473198', '1', '6460509352687042567', 'yjgg2674_dklx49891', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473207', '1', '6460509352687042567', 'jbxx3946_sydw1394', '4.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473219', '1', '6460509352687042567', 'yjgg2674_dklx30279', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473228', '1', '6460509352687042567', 'syxx5630_wbdqsj9006', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473236', '1', '6460509352687042567', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473249', '1', '6460509352687042567', 'jbxx3946_dhrq0321', '3232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473255', '1', '6460509352687042567', 'cwxx0890_jz7595', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473265', '1', '6460509352687042567', 'ztxx6550_wzxxdz0673', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473277', '1', '6460509352687042567', 'yjgg2674_dksl44092', '34.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473280', '1', '6460509352687042567', 'cwxx0890_ljzj3779', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473299', '1', '6460509352687042567', 'DD1999_CCC7425', '4.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473300', '1', '6460509352687042567', 'jbxx3946_cgrq0320', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473311', '1', '6460509352687042567', 'jbxx3946_cyrq3186', '323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473326', '1', '6460509352687042567', 'jbxx3946_ccrq8145', '232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473333', '1', '6460509352687042567', 'cwxx0890_zjff10247', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473342', '1', '6460509352687042567', 'ztxx6550_wzxxlcbh9890', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473357', '1', '6460509352687042567', 'yjgg2674_dksl11420', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473360', '1', '6460509352687042567', 'ztxx6550_wzxxcwID6190', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460509353106473377', '1', '6460509352687042567', 'yjgg2674_dklx23332', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701125', '1', '6460518665300213768', 'jbxx3946_xmbh5603', '43434.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701137', '1', '6460518665300213768', 'jbxx3946_htmc2022', '3243.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701144', '1', '6460518665300213768', 'cwxx0890_bnljzj1695', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701150', '1', '6460518665300213768', 'cwxx0890_yzjqjs3682', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701166', '1', '6460518665300213768', 'ztxx6550_wzxxlybh0661', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701171', '1', '6460518665300213768', 'jbxx3946_htje8465', '3232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701187', '1', '6460518665300213768', 'jbxx3946_DD4801', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701192', '1', '6460518665300213768', 'yjgg2674_bkcw8676', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701205', '1', '6460518665300213768', 'cwxx0890_bqstzje16296', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701211', '1', '6460518665300213768', 'cwxx0890_zcyz5786', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701225', '1', '6460518665300213768', 'cwxx0890_cwrzrq9630', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701237', '1', '6460518665300213768', 'jbxx3946_DD6283', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701248', '1', '6460518665300213768', 'yjgg2674_bklx1545', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701254', '1', '6460518665300213768', 'yjgg2674_dksl33379', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701266', '1', '6460518665300213768', 'jbxx3946_zyrq5165', '232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701279', '1', '6460518665300213768', 'cwxx0890_yjsyqjs1050', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701281', '1', '6460518665300213768', 'yjgg2674_dklx17316', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701293', '1', '6460518665300213768', 'ztxx6550_syzt8380', '323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701304', '1', '6460518665300213768', 'jbxx3946_xmmc8857', '324.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701318', '1', '6460518665300213768', 'DD1999_1233867', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701322', '1', '6460518665300213768', 'yjgg2674_dksl29681', '334.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701332', '1', '6460518665300213768', 'syxx5630_wbzt2856', '34.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701347', '1', '6460518665300213768', 'ztxx6550_ywxx2803', '23.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701357', '1', '6460518665300213768', 'yjgg2674_dklx49891', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701363', '1', '6460518665300213768', 'jbxx3946_sydw1394', '4.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701378', '1', '6460518665300213768', 'yjgg2674_dklx30279', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701383', '1', '6460518665300213768', 'syxx5630_wbdqsj9006', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701397', '1', '6460518665300213768', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701404', '1', '6460518665300213768', 'jbxx3946_dhrq0321', '3232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701413', '1', '6460518665300213768', 'cwxx0890_jz7595', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701420', '1', '6460518665300213768', 'ztxx6550_wzxxdz0673', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701430', '1', '6460518665300213768', 'yjgg2674_dksl44092', '34.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701443', '1', '6460518665300213768', 'cwxx0890_ljzj3779', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701459', '1', '6460518665300213768', 'DD1999_CCC7425', '4.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701460', '1', '6460518665300213768', 'jbxx3946_cgrq0320', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701478', '1', '6460518665300213768', 'jbxx3946_cyrq3186', '323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701487', '1', '6460518665300213768', 'jbxx3946_ccrq8145', '232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701499', '1', '6460518665300213768', 'cwxx0890_zjff10247', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701506', '1', '6460518665300213768', 'ztxx6550_wzxxlcbh9890', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701513', '1', '6460518665300213768', 'yjgg2674_dksl11420', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701527', '1', '6460518665300213768', 'ztxx6550_wzxxcwID6190', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460518665677701532', '1', '6460518665300213768', 'yjgg2674_dklx23332', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452483', '1', '6460704356114104323', 'jbxx3946_xmbh5603', '43434.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452498', '1', '6460704356114104323', 'jbxx3946_htmc2022', '3243.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452504', '1', '6460704356114104323', 'cwxx0890_bnljzj1695', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452512', '1', '6460704356114104323', 'cwxx0890_yzjqjs3682', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452525', '1', '6460704356114104323', 'ztxx6550_wzxxlybh0661', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452532', '1', '6460704356114104323', 'jbxx3946_htje8465', '3232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452540', '1', '6460704356114104323', 'jbxx3946_DD4801', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452556', '1', '6460704356114104323', 'yjgg2674_bkcw8676', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452562', '1', '6460704356114104323', 'cwxx0890_bqstzje16296', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452579', '1', '6460704356114104323', 'cwxx0890_zcyz5786', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452585', '1', '6460704356114104323', 'cwxx0890_cwrzrq9630', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452590', '1', '6460704356114104323', 'jbxx3946_DD6283', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452608', '1', '6460704356114104323', 'yjgg2674_bklx1545', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452611', '1', '6460704356114104323', 'yjgg2674_dksl33379', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452622', '1', '6460704356114104323', 'jbxx3946_zyrq5165', '232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452637', '1', '6460704356114104323', 'cwxx0890_yjsyqjs1050', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452648', '1', '6460704356114104323', 'yjgg2674_dklx17316', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452658', '1', '6460704356114104323', 'ztxx6550_syzt8380', '323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452660', '1', '6460704356114104323', 'jbxx3946_xmmc8857', '324.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452676', '1', '6460704356114104323', 'DD1999_1233867', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452684', '1', '6460704356114104323', 'yjgg2674_dksl29681', '334.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452694', '1', '6460704356114104323', 'syxx5630_wbzt2856', '34.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452701', '1', '6460704356114104323', 'ztxx6550_ywxx2803', '23.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452716', '1', '6460704356114104323', 'yjgg2674_dklx49891', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452727', '1', '6460704356114104323', 'jbxx3946_sydw1394', '4.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452734', '1', '6460704356114104323', 'yjgg2674_dklx30279', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452740', '1', '6460704356114104323', 'syxx5630_wbdqsj9006', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452756', '1', '6460704356114104323', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452762', '1', '6460704356114104323', 'jbxx3946_dhrq0321', '3232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452772', '1', '6460704356114104323', 'cwxx0890_jz7595', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452783', '1', '6460704356114104323', 'ztxx6550_wzxxdz0673', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452796', '1', '6460704356114104323', 'yjgg2674_dksl44092', '34.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452804', '1', '6460704356114104323', 'cwxx0890_ljzj3779', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452810', '1', '6460704356114104323', 'DD1999_CCC7425', '4.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452829', '1', '6460704356114104323', 'jbxx3946_cgrq0320', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452830', '1', '6460704356114104323', 'jbxx3946_cyrq3186', '323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452844', '1', '6460704356114104323', 'jbxx3946_ccrq8145', '232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452857', '1', '6460704356114104323', 'cwxx0890_zjff10247', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452861', '1', '6460704356114104323', 'ztxx6550_wzxxlcbh9890', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452879', '1', '6460704356114104323', 'yjgg2674_dksl11420', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452887', '1', '6460704356114104323', 'ztxx6550_wzxxcwID6190', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6460704357330452896', '1', '6460704356114104323', 'yjgg2674_dklx23332', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991529043558406', '1', '6460506170552483849', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991530805166087', '1', '6460506170552483849', 'jbxx3946_sydw1394', '4.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991532189286401', '1', '6460506170552483849', 'jbxx3946_cgrq0320', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991533615349769', '1', '6460506170552483849', 'jbxx3946_xmbh5603', '43434.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991534999470082', '1', '6460506170552483849', 'jbxx3946_xmmc8857', '324.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991536425533441', '1', '6460506170552483849', 'jbxx3946_htmc2022', '3243.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991537809653763', '1', '6460506170552483849', 'jbxx3946_htje8465', '3232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991539571261447', '1', '6460506170552483849', 'jbxx3946_DD4801', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991541290926089', '1', '6460506170552483849', 'jbxx3946_DD6283', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991543052533761', '1', '6460506170552483849', 'ztxx6550_syzt8380', '323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991544814141444', '1', '6460506170552483849', 'ztxx6550_wzxxdz0673', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991546533806084', '1', '6460506170552483849', 'ztxx6550_wzxxlybh0661', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991548295413763', '1', '6460506170552483849', 'ztxx6550_wzxxlcbh9890', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991550392565767', '1', '6460506170552483849', 'ztxx6550_wzxxcwID6190', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991552154173447', '1', '6460506170552483849', 'yjgg2674_bkcw8676', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991553915781129', '1', '6460506170552483849', 'yjgg2674_bklx1545', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991555635445769', '1', '6460506170552483849', 'yjgg2674_dklx17316', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991557397053443', '1', '6460506170552483849', 'yjgg2674_dksl11420', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991559158661120', '1', '6460506170552483849', 'yjgg2674_dklx23332', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991560878325766', '1', '6460506170552483849', 'yjgg2674_dksl29681', '334.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991562639933446', '1', '6460506170552483849', 'yjgg2674_dklx30279', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991564401541121', '1', '6460506170552483849', 'yjgg2674_dksl33379', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991566163148804', '1', '6460506170552483849', 'yjgg2674_dklx49891', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991567882813444', '1', '6460506170552483849', 'yjgg2674_dksl44092', '34.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991569644421129', '1', '6460506170552483849', 'syxx5630_wbdqsj9006', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991571406028800', '1', '6460506170552483849', 'cwxx0890_cwrzrq9630', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991573125693445', '1', '6460506170552483849', 'cwxx0890_zcyz5786', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991574887301123', '1', '6460506170552483849', 'cwxx0890_yzjqjs3682', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991576648908806', '1', '6460506170552483849', 'cwxx0890_yjsyqjs1050', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991578368573444', '1', '6460506170552483849', 'cwxx0890_bqstzje16296', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991580130181128', '1', '6460506170552483849', 'cwxx0890_ljzj3779', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991581891788801', '1', '6460506170552483849', 'cwxx0890_bnljzj1695', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991583653396485', '1', '6460506170552483849', 'cwxx0890_jz7595', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462991585373061127', '1', '6460506170552483849', 'cwxx0890_zjff10247', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992104334295046', '1', '6460706588784066564', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992106095902729', '1', '6460706588784066564', 'jbxx3946_sydw1394', '4.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992107815567361', '1', '6460706588784066564', 'jbxx3946_cgrq0320', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992109577175048', '1', '6460706588784066564', 'jbxx3946_xmbh5603', '43434.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992112387358728', '1', '6460706588784066564', 'jbxx3946_xmmc8857', '324.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992114107023360', '1', '6460706588784066564', 'jbxx3946_htmc2022', '3243.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992115868631048', '1', '6460706588784066564', 'jbxx3946_htje8465', '3232.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992117630238724', '1', '6460706588784066564', 'jbxx3946_DD4801', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992119391846405', '1', '6460706588784066564', 'jbxx3946_DD6283', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992121111511041', '1', '6460706588784066564', 'ztxx6550_syzt8380', '323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992122873118724', '1', '6460706588784066564', 'ztxx6550_wzxxdz0673', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992124634726400', '1', '6460706588784066564', 'ztxx6550_wzxxlybh0661', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992126354391049', '1', '6460706588784066564', 'ztxx6550_wzxxlcbh9890', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992128115998721', '1', '6460706588784066564', 'ztxx6550_wzxxcwID6190', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992129877606400', '1', '6460706588784066564', 'yjgg2674_bkcw8676', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992131597271046', '1', '6460706588784066564', 'yjgg2674_bklx1545', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992133358878721', '1', '6460706588784066564', 'yjgg2674_dklx17316', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992135120486407', '1', '6460706588784066564', 'yjgg2674_dksl11420', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992136840151041', '1', '6460706588784066564', 'yjgg2674_dklx23332', '32.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992138601758727', '1', '6460706588784066564', 'yjgg2674_dksl29681', '334.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992140363366400', '1', '6460706588784066564', 'yjgg2674_dklx30279', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992142083031041', '1', '6460706588784066564', 'yjgg2674_dksl33379', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992143844638722', '1', '6460706588784066564', 'yjgg2674_dklx49891', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992145606246405', '1', '6460706588784066564', 'yjgg2674_dksl44092', '34.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992147325911041', '1', '6460706588784066564', 'syxx5630_wbdqsj9006', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992149087518727', '1', '6460706588784066564', 'cwxx0890_cwrzrq9630', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992150849126401', '1', '6460706588784066564', 'cwxx0890_zcyz5786', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992152610734080', '1', '6460706588784066564', 'cwxx0890_yzjqjs3682', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992154330398727', '1', '6460706588784066564', 'cwxx0890_yjsyqjs1050', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992156092006407', '1', '6460706588784066564', 'cwxx0890_bqstzje16296', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992157853614082', '1', '6460706588784066564', 'cwxx0890_ljzj3779', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992159573278723', '1', '6460706588784066564', 'cwxx0890_bnljzj1695', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992161334886405', '1', '6460706588784066564', 'cwxx0890_jz7595', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6462992163096494089', '1', '6460706588784066564', 'cwxx0890_zjff10247', '43.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029019074887682', '1', '6456327839510691841', 'jbxx3946_cgdw1170', '市场部', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029020459008008', '1', '6456327839510691841', 'jbxx3946_sydw1394', '浪费电费', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029021885071369', '1', '6456327839510691841', 'jbxx3946_cgrq0320', '6788.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029023269191681', '1', '6456327839510691841', 'jbxx3946_xmbh5603', '4564.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029024653312008', '1', '6456327839510691841', 'jbxx3946_xmmc8857', '就看看你', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029026079375367', '1', '6456327839510691841', 'jbxx3946_htmc2022', '范德萨', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029027463495683', '1', '6456327839510691841', 'jbxx3946_htje8465', '4565.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029028847616008', '1', '6456327839510691841', 'ztxx6550_syzt8380', '哈借', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029030273679361', '1', '6456327839510691841', 'ztxx6550_wzxxdz0673', '路附近', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029033041920007', '1', '6456327839510691841', 'ztxx6550_wzxxlybh0661', '90987.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029034467983366', '1', '6456327839510691841', 'ztxx6550_wzxxlcbh9890', '6.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029035852103686', '1', '6456327839510691841', 'ztxx6550_wzxxcwID6190', '7756.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029037949255682', '1', '6456327839510691841', 'yjgg2674_bkcw8676', '后即可', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029040423895046', '1', '6456327839510691841', 'yjgg2674_bklx1545', '是否', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029041808015362', '1', '6456327839510691841', 'yjgg2674_dklx17316', '4765.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029043192135684', '1', '6456327839510691841', 'yjgg2674_dksl11420', '77.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029044618199047', '1', '6456327839510691841', 'yjgg2674_dklx23332', '88.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029046002319361', '1', '6456327839510691841', 'yjgg2674_dksl29681', '545.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029047386439688', '1', '6456327839510691841', 'yjgg2674_dklx30279', '3476.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029048812503046', '1', '6456327839510691841', 'yjgg2674_dksl33379', '9840.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029050196623369', '1', '6456327839510691841', 'yjgg2674_dklx49891', '5648.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029051622686723', '1', '6456327839510691841', 'yjgg2674_dksl44092', '8769.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029053006807045', '1', '6456327839510691841', 'syxx5630_wbdqsj9006', '30-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029054390927367', '1', '6456327839510691841', 'cwxx0890_cwrzrq9630', '7635.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029055775047685', '1', '6456327839510691841', 'cwxx0890_zcyz5786', '2000.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029057201111046', '1', '6456327839510691841', 'cwxx0890_yzjqjs3682', '1000.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029058585231368', '1', '6456327839510691841', 'cwxx0890_yjsyqjs1050', '20.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029059969351688', '1', '6456327839510691841', 'cwxx0890_bqstzje16296', '78.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029061395415046', '1', '6456327839510691841', 'cwxx0890_ljzj3779', '87.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029062779535360', '1', '6456327839510691841', 'cwxx0890_bnljzj1695', '89.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029064205598728', '1', '6456327839510691841', 'cwxx0890_jz7595', '56.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6463029065589719040', '1', '6456327839510691841', 'cwxx0890_zjff10247', '23243.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466489388409815042', '1', '6449203893648752651', 'jbxx3946_ccrq8145', '2019-11-25', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466489389793935360', '1', '6449203893648752651', 'jbxx3946_dhrq0321', '2019-11-26', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466489391178055682', '1', '6449203893648752651', 'jbxx3946_cyrq3186', '2019-11-27', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466489392604119041', '1', '6449203893648752651', 'jbxx3946_zyrq5165', '2019-11-28', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466489393988239365', '1', '6449203893648752651', 'syxx5630_wbdqsj9006', '2019-11-29', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506066388582404', '1', '6466480532094976009', 'jbxx3946_cgdw1170', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506068108247047', '1', '6466480532094976009', 'jbxx3946_sydw1394', '华为', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506069911797768', '1', '6466480532094976009', 'jbxx3946_cgrq0320', '10-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506071631462406', '1', '6466480532094976009', 'jbxx3946_xmbh5603', '8.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506073393070081', '1', '6466480532094976009', 'jbxx3946_xmmc8857', '心相印名称', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506075154677760', '1', '6466480532094976009', 'jbxx3946_htmc2022', '心在起', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506076916285440', '1', '6466480532094976009', 'jbxx3946_htje8465', '1.0E7', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506078635950082', '1', '6466480532094976009', 'jbxx3946_ccrq8145', '15-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506080355614729', '1', '6466480532094976009', 'jbxx3946_dhrq0321', '03-五月-2020', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506082117222401', '1', '6466480532094976009', 'jbxx3946_cyrq3186', '11-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506084214374400', '1', '6466480532094976009', 'jbxx3946_zyrq5165', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506085975982080', '1', '6466480532094976009', 'jbxx3946_DD4801', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506087737589768', '1', '6466480532094976009', 'jbxx3946_DD6283', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506089457254404', '1', '6466480532094976009', 'ztxx6550_syzt8380', '已使用', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506091218862085', '1', '6466480532094976009', 'ztxx6550_wzxxdz0673', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506092980469767', '1', '6466480532094976009', 'ztxx6550_wzxxlybh0661', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506095077621764', '1', '6466480532094976009', 'ztxx6550_wzxxlcbh9890', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506096797286403', '1', '6466480532094976009', 'ztxx6550_wzxxcwID6190', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506098558894088', '1', '6466480532094976009', 'yjgg2674_bkcw8676', '槽位', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506100320501761', '1', '6466480532094976009', 'yjgg2674_bklx1545', '板卡', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506102082109443', '1', '6466480532094976009', 'yjgg2674_dklx17316', '类型一', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506103801774086', '1', '6466480532094976009', 'yjgg2674_dksl11420', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506105563381768', '1', '6466480532094976009', 'yjgg2674_dklx23332', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506107366932488', '1', '6466480532094976009', 'yjgg2674_dksl29681', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506109044654086', '1', '6466480532094976009', 'yjgg2674_dklx30279', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506110764318725', '1', '6466480532094976009', 'yjgg2674_dksl33379', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506112525926404', '1', '6466480532094976009', 'yjgg2674_dklx49891', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506114287534080', '1', '6466480532094976009', 'yjgg2674_dksl44092', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506116049141764', '1', '6466480532094976009', 'syxx5630_wbdqsj9006', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506117768806409', '1', '6466480532094976009', 'cwxx0890_cwrzrq9630', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506119530414087', '1', '6466480532094976009', 'cwxx0890_zcyz5786', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506121040363524', '1', '6466480532094976009', 'cwxx0890_yzjqjs3682', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506122088939528', '1', '6466480532094976009', 'cwxx0890_yjsyqjs1050', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506123137515525', '1', '6466480532094976009', 'cwxx0890_bqstzje16296', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506124186091527', '1', '6466480532094976009', 'cwxx0890_ljzj3779', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506125570211842', '1', '6466480532094976009', 'cwxx0890_bnljzj1695', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506126954332160', '1', '6466480532094976009', 'cwxx0890_jz7595', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466506128380395523', '1', '6466480532094976009', 'cwxx0890_zjff10247', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558358732805', '1', '6466622555674378248', 'jbxx3946_xmbh5603', '8.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675849', '1', '6466622555674378248', 'yjgg2674_dklx49891', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675859', '1', '6466622555674378248', 'jbxx3946_sydw1394', '华为', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675862', '1', '6466622555674378248', 'jbxx3946_htmc2022', '心在起', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675870', '1', '6466622555674378248', 'yjgg2674_dklx30279', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675886', '1', '6466622555674378248', 'cwxx0890_bnljzj1695', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675898', '1', '6466622555674378248', 'cwxx0890_yzjqjs3682', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675904', '1', '6466622555674378248', 'ztxx6550_wzxxlybh0661', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675916', '1', '6466622555674378248', 'syxx5630_wbdqsj9006', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675921', '1', '6466622555674378248', 'jbxx3946_cgdw1170', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675935', '1', '6466622555674378248', 'jbxx3946_htje8465', '1.0E7', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675944', '1', '6466622555674378248', 'jbxx3946_dhrq0321', '03-五月-2020', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675951', '1', '6466622555674378248', 'jbxx3946_DD4801', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675965', '1', '6466622555674378248', 'cwxx0890_jz7595', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675974', '1', '6466622555674378248', 'yjgg2674_bkcw8676', '槽位', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675987', '1', '6466622555674378248', 'ztxx6550_wzxxdz0673', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400675992', '1', '6466622555674378248', 'yjgg2674_dksl44092', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676001', '1', '6466622555674378248', 'cwxx0890_bqstzje16296', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676019', '1', '6466622555674378248', 'cwxx0890_zcyz5786', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676020', '1', '6466622555674378248', 'cwxx0890_ljzj3779', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676033', '1', '6466622555674378248', 'cwxx0890_cwrzrq9630', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676047', '1', '6466622555674378248', 'jbxx3946_DD6283', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676058', '1', '6466622555674378248', 'yjgg2674_bklx1545', '板卡', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676062', '1', '6466622555674378248', 'yjgg2674_dksl33379', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676072', '1', '6466622555674378248', 'jbxx3946_cgrq0320', '10-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676084', '1', '6466622555674378248', 'jbxx3946_cyrq3186', '11-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676092', '1', '6466622555674378248', 'jbxx3946_ccrq8145', '15-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676109', '1', '6466622555674378248', 'cwxx0890_zjff10247', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676113', '1', '6466622555674378248', 'ztxx6550_wzxxlcbh9890', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676121', '1', '6466622555674378248', 'jbxx3946_zyrq5165', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676138', '1', '6466622555674378248', 'cwxx0890_yjsyqjs1050', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676146', '1', '6466622555674378248', 'yjgg2674_dklx17316', '类型一', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676150', '1', '6466622555674378248', 'ztxx6550_syzt8380', '已使用', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676163', '1', '6466622555674378248', 'jbxx3946_xmmc8857', '心相印名称', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676174', '1', '6466622555674378248', 'yjgg2674_dksl11420', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676187', '1', '6466622555674378248', 'ztxx6550_wzxxcwID6190', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676191', '1', '6466622555674378248', 'yjgg2674_dksl29681', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466622558400676209', '1', '6466622555674378248', 'yjgg2674_dklx23332', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638481633285', '1', '6466631602158960648', 'jbxx3946_xmbh5603', '8.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576324', '1', '6466631602158960648', 'yjgg2674_dklx49891', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576332', '1', '6466631602158960648', 'jbxx3946_sydw1394', '华为', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576347', '1', '6466631602158960648', 'jbxx3946_htmc2022', '心在起', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576350', '1', '6466631602158960648', 'yjgg2674_dklx30279', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576363', '1', '6466631602158960648', 'cwxx0890_bnljzj1695', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576376', '1', '6466631602158960648', 'cwxx0890_yzjqjs3682', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576388', '1', '6466631602158960648', 'ztxx6550_wzxxlybh0661', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576395', '1', '6466631602158960648', 'syxx5630_wbdqsj9006', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576406', '1', '6466631602158960648', 'jbxx3946_cgdw1170', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576414', '1', '6466631602158960648', 'jbxx3946_htje8465', '1.0E7', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576424', '1', '6466631602158960648', 'jbxx3946_dhrq0321', '03-五月-2020', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576435', '1', '6466631602158960648', 'jbxx3946_DD4801', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576442', '1', '6466631602158960648', 'cwxx0890_jz7595', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576454', '1', '6466631602158960648', 'yjgg2674_bkcw8676', '槽位', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576468', '1', '6466631602158960648', 'ztxx6550_wzxxdz0673', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576472', '1', '6466631602158960648', 'yjgg2674_dksl44092', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576487', '1', '6466631602158960648', 'cwxx0890_bqstzje16296', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576492', '1', '6466631602158960648', 'cwxx0890_zcyz5786', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576501', '1', '6466631602158960648', 'cwxx0890_ljzj3779', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576515', '1', '6466631602158960648', 'cwxx0890_cwrzrq9630', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576522', '1', '6466631602158960648', 'jbxx3946_DD6283', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576538', '1', '6466631602158960648', 'yjgg2674_bklx1545', '板卡', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576547', '1', '6466631602158960648', 'yjgg2674_dksl33379', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576552', '1', '6466631602158960648', 'jbxx3946_cgrq0320', '10-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576565', '1', '6466631602158960648', 'jbxx3946_cyrq3186', '11-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576579', '1', '6466631602158960648', 'jbxx3946_ccrq8145', '15-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576588', '1', '6466631602158960648', 'cwxx0890_zjff10247', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576598', '1', '6466631602158960648', 'ztxx6550_wzxxlcbh9890', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576608', '1', '6466631602158960648', 'jbxx3946_zyrq5165', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576614', '1', '6466631602158960648', 'cwxx0890_yjsyqjs1050', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576621', '1', '6466631602158960648', 'yjgg2674_dklx17316', '类型一', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576634', '1', '6466631602158960648', 'ztxx6550_syzt8380', '已使用', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576642', '1', '6466631602158960648', 'jbxx3946_xmmc8857', '心相印名称', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576650', '1', '6466631602158960648', 'yjgg2674_dksl11420', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576663', '1', '6466631602158960648', 'ztxx6550_wzxxcwID6190', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576676', '1', '6466631602158960648', 'yjgg2674_dksl29681', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466631638523576680', '1', '6466631602158960648', 'yjgg2674_dklx23332', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014402', '1', '6466636513856716801', 'jbxx3946_xmbh5603', '8.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014417', '1', '6466636513856716801', 'yjgg2674_dklx49891', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014420', '1', '6466636513856716801', 'jbxx3946_sydw1394', '华为', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014438', '1', '6466636513856716801', 'jbxx3946_htmc2022', '心在起', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014443', '1', '6466636513856716801', 'yjgg2674_dklx30279', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014458', '1', '6466636513856716801', 'cwxx0890_bnljzj1695', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014468', '1', '6466636513856716801', 'cwxx0890_yzjqjs3682', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014477', '1', '6466636513856716801', 'ztxx6550_wzxxlybh0661', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014489', '1', '6466636513856716801', 'syxx5630_wbdqsj9006', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014494', '1', '6466636513856716801', 'jbxx3946_cgdw1170', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014504', '1', '6466636513856716801', 'jbxx3946_htje8465', '1.0E7', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014517', '1', '6466636513856716801', 'jbxx3946_dhrq0321', '03-五月-2020', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014523', '1', '6466636513856716801', 'jbxx3946_DD4801', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014532', '1', '6466636513856716801', 'cwxx0890_jz7595', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014545', '1', '6466636513856716801', 'yjgg2674_bkcw8676', '槽位', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014552', '1', '6466636513856716801', 'ztxx6550_wzxxdz0673', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014567', '1', '6466636513856716801', 'yjgg2674_dksl44092', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014572', '1', '6466636513856716801', 'cwxx0890_bqstzje16296', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014586', '1', '6466636513856716801', 'cwxx0890_zcyz5786', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014599', '1', '6466636513856716801', 'cwxx0890_ljzj3779', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014602', '1', '6466636513856716801', 'cwxx0890_cwrzrq9630', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014612', '1', '6466636513856716801', 'jbxx3946_DD6283', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014629', '1', '6466636513856716801', 'yjgg2674_bklx1545', '板卡', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014636', '1', '6466636513856716801', 'yjgg2674_dksl33379', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014643', '1', '6466636513856716801', 'jbxx3946_cgrq0320', '10-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014655', '1', '6466636513856716801', 'jbxx3946_cyrq3186', '11-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014664', '1', '6466636513856716801', 'jbxx3946_ccrq8145', '15-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014671', '1', '6466636513856716801', 'cwxx0890_zjff10247', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014689', '1', '6466636513856716801', 'ztxx6550_wzxxlcbh9890', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014698', '1', '6466636513856716801', 'jbxx3946_zyrq5165', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014704', '1', '6466636513856716801', 'cwxx0890_yjsyqjs1050', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014715', '1', '6466636513856716801', 'yjgg2674_dklx17316', '类型一', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014729', '1', '6466636513856716801', 'ztxx6550_syzt8380', '已使用', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014731', '1', '6466636513856716801', 'jbxx3946_xmmc8857', '心相印名称', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014745', '1', '6466636513856716801', 'yjgg2674_dksl11420', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014754', '1', '6466636513856716801', 'ztxx6550_wzxxcwID6190', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014768', '1', '6466636513856716801', 'yjgg2674_dksl29681', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466636516583014779', '1', '6466636513856716801', 'yjgg2674_dklx23332', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549124', '1', '6466644834516992006', 'jbxx3946_xmbh5603', '8.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549139', '1', '6466644834516992006', 'yjgg2674_dklx49891', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549148', '1', '6466644834516992006', 'jbxx3946_sydw1394', '华为', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549156', '1', '6466644834516992006', 'jbxx3946_htmc2022', '心在起', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549167', '1', '6466644834516992006', 'yjgg2674_dklx30279', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549175', '1', '6466644834516992006', 'cwxx0890_bnljzj1695', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549184', '1', '6466644834516992006', 'cwxx0890_yzjqjs3682', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549196', '1', '6466644834516992006', 'ztxx6550_wzxxlybh0661', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549209', '1', '6466644834516992006', 'syxx5630_wbdqsj9006', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549214', '1', '6466644834516992006', 'jbxx3946_cgdw1170', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549226', '1', '6466644834516992006', 'jbxx3946_htje8465', '1.0E7', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549234', '1', '6466644834516992006', 'jbxx3946_dhrq0321', '03-五月-2020', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549240', '1', '6466644834516992006', 'jbxx3946_DD4801', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549255', '1', '6466644834516992006', 'cwxx0890_jz7595', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549265', '1', '6466644834516992006', 'yjgg2674_bkcw8676', '槽位', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549273', '1', '6466644834516992006', 'ztxx6550_wzxxdz0673', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549282', '1', '6466644834516992006', 'yjgg2674_dksl44092', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549291', '1', '6466644834516992006', 'cwxx0890_bqstzje16296', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549304', '1', '6466644834516992006', 'cwxx0890_zcyz5786', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837788549318', '1', '6466644834516992006', 'cwxx0890_ljzj3779', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492162', '1', '6466644834516992006', 'cwxx0890_cwrzrq9630', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492178', '1', '6466644834516992006', 'jbxx3946_DD6283', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492189', '1', '6466644834516992006', 'yjgg2674_bklx1545', '板卡', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492195', '1', '6466644834516992006', 'yjgg2674_dksl33379', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492202', '1', '6466644834516992006', 'jbxx3946_cgrq0320', '10-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492215', '1', '6466644834516992006', 'jbxx3946_cyrq3186', '11-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492221', '1', '6466644834516992006', 'jbxx3946_ccrq8145', '15-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492239', '1', '6466644834516992006', 'cwxx0890_zjff10247', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492247', '1', '6466644834516992006', 'ztxx6550_wzxxlcbh9890', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492251', '1', '6466644834516992006', 'jbxx3946_zyrq5165', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492266', '1', '6466644834516992006', 'cwxx0890_yjsyqjs1050', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492279', '1', '6466644834516992006', 'yjgg2674_dklx17316', '类型一', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492280', '1', '6466644834516992006', 'ztxx6550_syzt8380', '已使用', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492297', '1', '6466644834516992006', 'jbxx3946_xmmc8857', '心相印名称', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492308', '1', '6466644834516992006', 'yjgg2674_dksl11420', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492319', '1', '6466644834516992006', 'ztxx6550_wzxxcwID6190', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492327', '1', '6466644834516992006', 'yjgg2674_dksl29681', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466644837830492339', '1', '6466644834516992006', 'yjgg2674_dklx23332', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590729', '1', '6466648974043381767', 'jbxx3946_xmbh5603', '8.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590737', '1', '6466648974043381767', 'yjgg2674_dklx49891', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590748', '1', '6466648974043381767', 'jbxx3946_sydw1394', '华为', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590752', '1', '6466648974043381767', 'jbxx3946_htmc2022', '心在起', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590769', '1', '6466648974043381767', 'yjgg2674_dklx30279', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590770', '1', '6466648974043381767', 'cwxx0890_bnljzj1695', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590783', '1', '6466648974043381767', 'cwxx0890_yzjqjs3682', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590797', '1', '6466648974043381767', 'ztxx6550_wzxxlybh0661', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590806', '1', '6466648974043381767', 'syxx5630_wbdqsj9006', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590815', '1', '6466648974043381767', 'jbxx3946_cgdw1170', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590826', '1', '6466648974043381767', 'jbxx3946_htje8465', '1.0E7', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590837', '1', '6466648974043381767', 'jbxx3946_dhrq0321', '03-五月-2020', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590843', '1', '6466648974043381767', 'jbxx3946_DD4801', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590852', '1', '6466648974043381767', 'cwxx0890_jz7595', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590865', '1', '6466648974043381767', 'yjgg2674_bkcw8676', '槽位', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590872', '1', '6466648974043381767', 'ztxx6550_wzxxdz0673', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590886', '1', '6466648974043381767', 'yjgg2674_dksl44092', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590898', '1', '6466648974043381767', 'cwxx0890_bqstzje16296', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590906', '1', '6466648974043381767', 'cwxx0890_zcyz5786', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590913', '1', '6466648974043381767', 'cwxx0890_ljzj3779', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590926', '1', '6466648974043381767', 'cwxx0890_cwrzrq9630', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590932', '1', '6466648974043381767', 'jbxx3946_DD6283', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590947', '1', '6466648974043381767', 'yjgg2674_bklx1545', '板卡', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590951', '1', '6466648974043381767', 'yjgg2674_dksl33379', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590962', '1', '6466648974043381767', 'jbxx3946_cgrq0320', '10-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590976', '1', '6466648974043381767', 'jbxx3946_cyrq3186', '11-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590984', '1', '6466648974043381767', 'jbxx3946_ccrq8145', '15-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098590995', '1', '6466648974043381767', 'cwxx0890_zjff10247', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591001', '1', '6466648974043381767', 'ztxx6550_wzxxlcbh9890', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591018', '1', '6466648974043381767', 'jbxx3946_zyrq5165', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591025', '1', '6466648974043381767', 'cwxx0890_yjsyqjs1050', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591032', '1', '6466648974043381767', 'yjgg2674_dklx17316', '类型一', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591044', '1', '6466648974043381767', 'ztxx6550_syzt8380', '已使用', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591053', '1', '6466648974043381767', 'jbxx3946_xmmc8857', '心相印名称', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591066', '1', '6466648974043381767', 'yjgg2674_dksl11420', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591075', '1', '6466648974043381767', 'ztxx6550_wzxxcwID6190', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591084', '1', '6466648974043381767', 'yjgg2674_dksl29681', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466648976098591094', '1', '6466648974043381767', 'yjgg2674_dklx23332', '19.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6466656318521344003', '1', '6466525564239872006', 'jbxx3946_dhrq0321', '2019-11-14', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470054053224120324', '1', '6467650990207139870', 'jbxx3946_DD6283', '123', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470054054776012801', '1', '6467650990207139870', 'syxx5630_wbdqsj9006', '2019-11-21', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470100698036961283', '1', '6468005045081210885', 'jbxx3946_htje8465', '12', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470100699714682889', '1', '6468005045081210885', 'jbxx3946_DD6283', '123', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470100701392404482', '1', '6468005045081210885', 'syxx5630_wbdqsj9006', '2019-11-21', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470111056122347528', '1', '6467650990081310737', 'jbxx3946_DD6283', '12', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470134131798835203', '1', '6467650990081310727', 'syxx5630_wbdqsj9006', '2019-11-21', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941121', '1', '6470352330649763841', 'jbxx3946_xmbh5603', '444343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941131', '1', '6470352330649763841', 'yjgg2674_dklx49891', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941145', '1', '6470352330649763841', 'jbxx3946_sydw1394', '菏泽', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941153', '1', '6470352330649763841', 'jbxx3946_htmc2022', '合同走势', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941169', '1', '6470352330649763841', 'yjgg2674_dklx30279', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941175', '1', '6470352330649763841', 'cwxx0890_bnljzj1695', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941187', '1', '6470352330649763841', 'cwxx0890_yzjqjs3682', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941197', '1', '6470352330649763841', 'ztxx6550_wzxxlybh0661', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941204', '1', '6470352330649763841', 'syxx5630_wbdqsj9006', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941218', '1', '6470352330649763841', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941226', '1', '6470352330649763841', 'jbxx3946_htje8465', '10000.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941230', '1', '6470352330649763841', 'jbxx3946_dhrq0321', '22-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941241', '1', '6470352330649763841', 'jbxx3946_DD4801', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941254', '1', '6470352330649763841', 'cwxx0890_jz7595', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941263', '1', '6470352330649763841', 'yjgg2674_bkcw8676', '01-二月-1900', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941270', '1', '6470352330649763841', 'ztxx6550_wzxxdz0673', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941283', '1', '6470352330649763841', 'yjgg2674_dksl44092', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941292', '1', '6470352330649763841', 'cwxx0890_bqstzje16296', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941304', '1', '6470352330649763841', 'cwxx0890_zcyz5786', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941316', '1', '6470352330649763841', 'cwxx0890_ljzj3779', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941321', '1', '6470352330649763841', 'cwxx0890_cwrzrq9630', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941337', '1', '6470352330649763841', 'jbxx3946_DD6283', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941346', '1', '6470352330649763841', 'yjgg2674_bklx1545', '类似', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941356', '1', '6470352330649763841', 'yjgg2674_dksl33379', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941363', '1', '6470352330649763841', 'jbxx3946_cgrq0320', '21-五月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941378', '1', '6470352330649763841', 'jbxx3946_cyrq3186', '23-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941385', '1', '6470352330649763841', 'jbxx3946_ccrq8145', '21-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941390', '1', '6470352330649763841', 'cwxx0890_zjff10247', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941404', '1', '6470352330649763841', 'ztxx6550_wzxxlcbh9890', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941414', '1', '6470352330649763841', 'jbxx3946_zyrq5165', '24-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941423', '1', '6470352330649763841', 'cwxx0890_yjsyqjs1050', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941435', '1', '6470352330649763841', 'yjgg2674_dklx17316', '类型', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941443', '1', '6470352330649763841', 'ztxx6550_syzt8380', '完好', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941454', '1', '6470352330649763841', 'jbxx3946_xmmc8857', '项目名', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941462', '1', '6470352330649763841', 'yjgg2674_dksl11420', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941478', '1', '6470352330649763841', 'ztxx6550_wzxxcwID6190', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941483', '1', '6470352330649763841', 'yjgg2674_dksl29681', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470352331991941494', '1', '6470352330649763841', 'yjgg2674_dklx23332', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371206', '1', '6470386272803225603', 'jbxx3946_xmbh5603', '444343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371217', '1', '6470386272803225603', 'yjgg2674_dklx49891', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371225', '1', '6470386272803225603', 'jbxx3946_sydw1394', '菏泽', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371236', '1', '6470386272803225603', 'jbxx3946_htmc2022', '合同走势', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371247', '1', '6470386272803225603', 'yjgg2674_dklx30279', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371250', '1', '6470386272803225603', 'cwxx0890_bnljzj1695', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371261', '1', '6470386272803225603', 'cwxx0890_yzjqjs3682', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371274', '1', '6470386272803225603', 'ztxx6550_wzxxlybh0661', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371285', '1', '6470386272803225603', 'syxx5630_wbdqsj9006', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371293', '1', '6470386272803225603', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371305', '1', '6470386272803225603', 'jbxx3946_htje8465', '10000.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371313', '1', '6470386272803225603', 'jbxx3946_dhrq0321', '22-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371328', '1', '6470386272803225603', 'jbxx3946_DD4801', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371338', '1', '6470386272803225603', 'cwxx0890_jz7595', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371346', '1', '6470386272803225603', 'yjgg2674_bkcw8676', '01-二月-1900', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371352', '1', '6470386272803225603', 'ztxx6550_wzxxdz0673', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371362', '1', '6470386272803225603', 'yjgg2674_dksl44092', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371371', '1', '6470386272803225603', 'cwxx0890_bqstzje16296', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371387', '1', '6470386272803225603', 'cwxx0890_zcyz5786', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371392', '1', '6470386272803225603', 'cwxx0890_ljzj3779', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371406', '1', '6470386272803225603', 'cwxx0890_cwrzrq9630', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371416', '1', '6470386272803225603', 'jbxx3946_DD6283', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371428', '1', '6470386272803225603', 'yjgg2674_bklx1545', '类似', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371436', '1', '6470386272803225603', 'yjgg2674_dksl33379', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371446', '1', '6470386272803225603', 'jbxx3946_cgrq0320', '21-五月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371455', '1', '6470386272803225603', 'jbxx3946_cyrq3186', '23-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371465', '1', '6470386272803225603', 'jbxx3946_ccrq8145', '21-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371478', '1', '6470386272803225603', 'cwxx0890_zjff10247', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371489', '1', '6470386272803225603', 'ztxx6550_wzxxlcbh9890', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371492', '1', '6470386272803225603', 'jbxx3946_zyrq5165', '24-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371506', '1', '6470386272803225603', 'cwxx0890_yjsyqjs1050', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371514', '1', '6470386272803225603', 'yjgg2674_dklx17316', '类型', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371526', '1', '6470386272803225603', 'ztxx6550_syzt8380', '完好', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371539', '1', '6470386272803225603', 'jbxx3946_xmmc8857', '项目名', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371547', '1', '6470386272803225603', 'yjgg2674_dksl11420', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371554', '1', '6470386272803225603', 'ztxx6550_wzxxcwID6190', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371564', '1', '6470386272803225603', 'yjgg2674_dksl29681', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386273432371571', '1', '6470386272803225603', 'yjgg2674_dklx23332', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513286', '1', '6470386724991139845', 'jbxx3946_xmbh5603', '444343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513298', '1', '6470386724991139845', 'yjgg2674_dklx49891', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513301', '1', '6470386724991139845', 'jbxx3946_sydw1394', '菏泽', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513318', '1', '6470386724991139845', 'jbxx3946_htmc2022', '合同走势', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513325', '1', '6470386724991139845', 'yjgg2674_dklx30279', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513336', '1', '6470386724991139845', 'cwxx0890_bnljzj1695', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513347', '1', '6470386724991139845', 'cwxx0890_yzjqjs3682', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513357', '1', '6470386724991139845', 'ztxx6550_wzxxlybh0661', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513369', '1', '6470386724991139845', 'syxx5630_wbdqsj9006', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513376', '1', '6470386724991139845', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513381', '1', '6470386724991139845', 'jbxx3946_htje8465', '10000.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513391', '1', '6470386724991139845', 'jbxx3946_dhrq0321', '22-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513404', '1', '6470386724991139845', 'jbxx3946_DD4801', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513414', '1', '6470386724991139845', 'cwxx0890_jz7595', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513424', '1', '6470386724991139845', 'yjgg2674_bkcw8676', '01-二月-1900', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513438', '1', '6470386724991139845', 'ztxx6550_wzxxdz0673', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513442', '1', '6470386724991139845', 'yjgg2674_dksl44092', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513452', '1', '6470386724991139845', 'cwxx0890_bqstzje16296', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513461', '1', '6470386724991139845', 'cwxx0890_zcyz5786', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513475', '1', '6470386724991139845', 'cwxx0890_ljzj3779', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513485', '1', '6470386724991139845', 'cwxx0890_cwrzrq9630', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513496', '1', '6470386724991139845', 'jbxx3946_DD6283', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513500', '1', '6470386724991139845', 'yjgg2674_bklx1545', '类似', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513512', '1', '6470386724991139845', 'yjgg2674_dksl33379', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513528', '1', '6470386724991139845', 'jbxx3946_cgrq0320', '21-五月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513533', '1', '6470386724991139845', 'jbxx3946_cyrq3186', '23-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513546', '1', '6470386724991139845', 'jbxx3946_ccrq8145', '21-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513553', '1', '6470386724991139845', 'cwxx0890_zjff10247', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513565', '1', '6470386724991139845', 'ztxx6550_wzxxlcbh9890', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513579', '1', '6470386724991139845', 'jbxx3946_zyrq5165', '24-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513581', '1', '6470386724991139845', 'cwxx0890_yjsyqjs1050', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513594', '1', '6470386724991139845', 'yjgg2674_dklx17316', '类型', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513604', '1', '6470386724991139845', 'ztxx6550_syzt8380', '完好', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513615', '1', '6470386724991139845', 'jbxx3946_xmmc8857', '项目名', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513624', '1', '6470386724991139845', 'yjgg2674_dksl11420', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513632', '1', '6470386724991139845', 'ztxx6550_wzxxcwID6190', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513640', '1', '6470386724991139845', 'yjgg2674_dksl29681', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470386725452513652', '1', '6470386724991139845', 'yjgg2674_dklx23332', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470423093046149121', '1', '6470423092626718723', 'jbxx3946_xmbh5603', '444343.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149131', '1', '6470423092626718723', 'yjgg2674_dklx49891', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149145', '1', '6470423092626718723', 'jbxx3946_sydw1394', '菏泽', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149150', '1', '6470423092626718723', 'jbxx3946_htmc2022', '合同走势', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149166', '1', '6470423092626718723', 'yjgg2674_dklx30279', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149172', '1', '6470423092626718723', 'cwxx0890_bnljzj1695', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149188', '1', '6470423092626718723', 'cwxx0890_yzjqjs3682', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149197', '1', '6470423092626718723', 'ztxx6550_wzxxlybh0661', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149201', '1', '6470423092626718723', 'syxx5630_wbdqsj9006', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149217', '1', '6470423092626718723', 'jbxx3946_cgdw1170', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149223', '1', '6470423092626718723', 'jbxx3946_htje8465', '10000.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149234', '1', '6470423092626718723', 'jbxx3946_dhrq0321', '22-四月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149241', '1', '6470423092626718723', 'jbxx3946_DD4801', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149255', '1', '6470423092626718723', 'cwxx0890_jz7595', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149269', '1', '6470423092626718723', 'yjgg2674_bkcw8676', '01-二月-1900', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149270', '1', '6470423092626718723', 'ztxx6550_wzxxdz0673', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149284', '1', '6470423092626718723', 'yjgg2674_dksl44092', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149291', '1', '6470423092626718723', 'cwxx0890_bqstzje16296', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149302', '1', '6470423092626718723', 'cwxx0890_zcyz5786', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149316', '1', '6470423092626718723', 'cwxx0890_ljzj3779', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149328', '1', '6470423092626718723', 'cwxx0890_cwrzrq9630', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149332', '1', '6470423092626718723', 'jbxx3946_DD6283', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149342', '1', '6470423092626718723', 'yjgg2674_bklx1545', '类似', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149352', '1', '6470423092626718723', 'yjgg2674_dksl33379', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149369', '1', '6470423092626718723', 'jbxx3946_cgrq0320', '21-五月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149371', '1', '6470423092626718723', 'jbxx3946_cyrq3186', '23-四月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149389', '1', '6470423092626718723', 'jbxx3946_ccrq8145', '21-四月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149393', '1', '6470423092626718723', 'cwxx0890_zjff10247', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149402', '1', '6470423092626718723', 'ztxx6550_wzxxlcbh9890', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149414', '1', '6470423092626718723', 'jbxx3946_zyrq5165', '24-四月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149429', '1', '6470423092626718723', 'cwxx0890_yjsyqjs1050', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149437', '1', '6470423092626718723', 'yjgg2674_dklx17316', '类型', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149441', '1', '6470423092626718723', 'ztxx6550_syzt8380', '完好', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149457', '1', '6470423092626718723', 'jbxx3946_xmmc8857', '项目名', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149465', '1', '6470423092626718723', 'yjgg2674_dksl11420', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149470', '1', '6470423092626718723', 'ztxx6550_wzxxcwID6190', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149487', '1', '6470423092626718723', 'yjgg2674_dksl29681', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470423093046149497', '1', '6470423092626718723', 'yjgg2674_dklx23332', '3.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6470435189586657289', '1', '6470435189209169921', 'jbxx3946_xmbh5603', '444343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657293', '1', '6470435189209169921', 'yjgg2674_dklx49891', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657305', '1', '6470435189209169921', 'jbxx3946_sydw1394', '菏泽', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657310', '1', '6470435189209169921', 'jbxx3946_htmc2022', '合同走势', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657325', '1', '6470435189209169921', 'yjgg2674_dklx30279', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657334', '1', '6470435189209169921', 'cwxx0890_bnljzj1695', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657344', '1', '6470435189209169921', 'cwxx0890_yzjqjs3682', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657351', '1', '6470435189209169921', 'ztxx6550_wzxxlybh0661', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657369', '1', '6470435189209169921', 'syxx5630_wbdqsj9006', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657370', '1', '6470435189209169921', 'jbxx3946_cgdw1170', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657384', '1', '6470435189209169921', 'jbxx3946_htje8465', '10000.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657396', '1', '6470435189209169921', 'jbxx3946_dhrq0321', '22-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657400', '1', '6470435189209169921', 'jbxx3946_DD4801', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657413', '1', '6470435189209169921', 'cwxx0890_jz7595', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657425', '1', '6470435189209169921', 'yjgg2674_bkcw8676', '01-二月-1900', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657433', '1', '6470435189209169921', 'ztxx6550_wzxxdz0673', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657444', '1', '6470435189209169921', 'yjgg2674_dksl44092', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657455', '1', '6470435189209169921', 'cwxx0890_bqstzje16296', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657469', '1', '6470435189209169921', 'cwxx0890_zcyz5786', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657477', '1', '6470435189209169921', 'cwxx0890_ljzj3779', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657483', '1', '6470435189209169921', 'cwxx0890_cwrzrq9630', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657494', '1', '6470435189209169921', 'jbxx3946_DD6283', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657503', '1', '6470435189209169921', 'yjgg2674_bklx1545', '类似', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657510', '1', '6470435189209169921', 'yjgg2674_dksl33379', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657527', '1', '6470435189209169921', 'jbxx3946_cgrq0320', '21-五月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657531', '1', '6470435189209169921', 'jbxx3946_cyrq3186', '23-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189586657548', '1', '6470435189209169921', 'jbxx3946_ccrq8145', '21-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600327', '1', '6470435189209169921', 'cwxx0890_zjff10247', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600334', '1', '6470435189209169921', 'ztxx6550_wzxxlcbh9890', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600341', '1', '6470435189209169921', 'jbxx3946_zyrq5165', '24-四月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600352', '1', '6470435189209169921', 'cwxx0890_yjsyqjs1050', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600363', '1', '6470435189209169921', 'yjgg2674_dklx17316', '类型', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600374', '1', '6470435189209169921', 'ztxx6550_syzt8380', '完好', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600383', '1', '6470435189209169921', 'jbxx3946_xmmc8857', '项目名', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600395', '1', '6470435189209169921', 'yjgg2674_dksl11420', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600408', '1', '6470435189209169921', 'ztxx6550_wzxxcwID6190', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600410', '1', '6470435189209169921', 'yjgg2674_dksl29681', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6470435189628600426', '1', '6470435189209169921', 'yjgg2674_dklx23332', '3.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6473739297483653123', '1', '6471340464967516167', 'jbxx3946_ccrq8145', '2019090', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6473739299245260801', '1', '6471340464967516167', 'jbxx3946_dhrq0321', '2019-11-22', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6473739301006868483', '1', '6471340464967516167', 'jbxx3946_cyrq3186', '2019-11-23', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6473739302768476161', '1', '6471340464967516167', 'jbxx3946_zyrq5165', '2019-11-24', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6473739304488140802', '1', '6471340464967516167', 'syxx5630_wbdqsj9006', '2019-11-25', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477413466935132169', '1', '6474447788116541442', 'jbxx3946_ccrq8145', '2019-11-1', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477413468696739840', '1', '6474447788116541442', 'jbxx3946_dhrq0321', '2019-11-2', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477413470080860160', '1', '6474447788116541442', 'jbxx3946_cyrq3186', '2019-11-3', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477413471464980489', '1', '6474447788116541442', 'jbxx3946_zyrq5165', '2019-11-4', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477413472891043843', '1', '6474447788116541442', 'syxx5630_wbdqsj9006', '2019-11-5', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967760230973446', '1', '6477967759434055686', 'jbxx3946_xmbh5603', '4343.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973458', '1', '6477967759434055686', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973462', '1', '6477967759434055686', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973470', '1', '6477967759434055686', 'jbxx3946_htmc2022', '4323.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973487', '1', '6477967759434055686', 'jbxx3946_cyrq3186', '', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973493', '1', '6477967759434055686', 'jbxx3946_ccrq8145', '23-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973505', '1', '6477967759434055686', 'jbxx3946_zyrq5165', '342.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973519', '1', '6477967759434055686', 'jbxx3946_xmmc8857', '4324.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973527', '1', '6477967759434055686', 'jbxx3946_htje8465', '3424.0', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760230973536', '1', '6477967759434055686', 'jbxx3946_dhrq0321', '24-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6477967760524574723', '1', '6477967759475998721', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967760524574736', '1', '6477967759475998721', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967760818176004', '1', '6477967759475998733', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967760818176011', '1', '6477967759475998733', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967761111777288', '1', '6477967759517941768', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967761111777296', '1', '6477967759517941768', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967761405378565', '1', '6477967759559884805', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967761405378577', '1', '6477967759559884805', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967761698979842', '1', '6477967759559884818', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967761698979857', '1', '6477967759559884818', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967762076467209', '1', '6477967759601827840', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967762076467212', '1', '6477967759601827840', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967762537840645', '1', '6477967759601827854', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967762537840650', '1', '6477967759601827854', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967762873384967', '1', '6477967759643770886', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967762873384972', '1', '6477967759643770886', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967763166986240', '1', '6477967759643770890', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967763166986258', '1', '6477967759643770890', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967763460587523', '1', '6477967759685713921', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6477967763460587539', '1', '6477967759685713921', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957762', '1', '6478360519303495686', 'jbxx3946_xmbh5603', '4343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957775', '1', '6478360519303495686', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957788', '1', '6478360519303495686', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957791', '1', '6478360519303495686', 'jbxx3946_htmc2022', '4323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957808', '1', '6478360519303495686', 'jbxx3946_cyrq3186', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957813', '1', '6478360519303495686', 'jbxx3946_ccrq8145', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957828', '1', '6478360519303495686', 'jbxx3946_zyrq5165', '342.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957836', '1', '6478360519303495686', 'jbxx3946_xmmc8857', '4324.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957842', '1', '6478360519303495686', 'jbxx3946_htje8465', '3424.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520435957850', '1', '6478360519303495686', 'jbxx3946_dhrq0321', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520813445120', '1', '6478360519471267843', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360520813445130', '1', '6478360519471267843', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360521148989447', '1', '6478360519513210881', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360521148989451', '1', '6478360519513210881', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360521568419848', '1', '6478360519555153925', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360521568419852', '1', '6478360519555153925', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360522071736326', '1', '6478360519555153931', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360522071736336', '1', '6478360519555153931', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360522449223689', '1', '6478360519597096964', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360522449223694', '1', '6478360519597096964', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360522742824968', '1', '6478360519639040004', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360522742824976', '1', '6478360519639040004', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360523078369280', '1', '6478360519639040019', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360523078369293', '1', '6478360519639040019', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360523413913603', '1', '6478360519680983045', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360523413913616', '1', '6478360519680983045', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360523749457922', '1', '6478360519722926088', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360523749457938', '1', '6478360519722926088', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360524043059207', '1', '6478360519722926092', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478360524043059212', '1', '6478360519722926092', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981124', '1', '6478436894307778568', 'jbxx3946_xmbh5603', '4343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981130', '1', '6478436894307778568', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981142', '1', '6478436894307778568', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981153', '1', '6478436894307778568', 'jbxx3946_htmc2022', '4323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981162', '1', '6478436894307778568', 'jbxx3946_cyrq3186', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981174', '1', '6478436894307778568', 'jbxx3946_ccrq8145', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981184', '1', '6478436894307778568', 'jbxx3946_zyrq5165', '342.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981194', '1', '6478436894307778568', 'jbxx3946_xmmc8857', '4324.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981209', '1', '6478436894307778568', 'jbxx3946_htje8465', '3424.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436894894981215', '1', '6478436894307778568', 'jbxx3946_dhrq0321', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436895188582402', '1', '6478436894307778573', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436895188582412', '1', '6478436894307778573', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436895482183685', '1', '6478436894349721607', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436895482183699', '1', '6478436894349721607', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436895817728009', '1', '6478436894349721610', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436895817728015', '1', '6478436894349721610', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436896111329285', '1', '6478436894391664645', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436896111329292', '1', '6478436894391664645', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436896404930568', '1', '6478436894391664653', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436896404930576', '1', '6478436894391664653', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436896740474881', '1', '6478436894433607688', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436896740474892', '1', '6478436894433607688', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436897076019202', '1', '6478436894433607697', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436897076019216', '1', '6478436894433607697', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436897369620481', '1', '6478436894433607703', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436897369620499', '1', '6478436894433607703', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436897705164809', '1', '6478436894475550722', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436897705164815', '1', '6478436894475550722', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436897998766085', '1', '6478436894475550738', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478436897998766095', '1', '6478436894475550738', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107200', '1', '6478452350401904640', 'jbxx3946_xmbh5603', '4343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107213', '1', '6478452350401904640', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107220', '1', '6478452350401904640', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107237', '1', '6478452350401904640', 'jbxx3946_htmc2022', '4323.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107247', '1', '6478452350401904640', 'jbxx3946_cyrq3186', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107251', '1', '6478452350401904640', 'jbxx3946_ccrq8145', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107260', '1', '6478452350401904640', 'jbxx3946_zyrq5165', '342.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107276', '1', '6478452350401904640', 'jbxx3946_xmmc8857', '4324.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107280', '1', '6478452350401904640', 'jbxx3946_htje8465', '3424.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452350989107298', '1', '6478452350401904640', 'jbxx3946_dhrq0321', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452351282708489', '1', '6478452350401904658', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452351282708494', '1', '6478452350401904658', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452351576309767', '1', '6478452350443847682', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452351576309772', '1', '6478452350443847682', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452351869911041', '1', '6478452350443847690', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452351869911058', '1', '6478452350443847690', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452352163512328', '1', '6478452350485790721', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452352163512332', '1', '6478452350485790721', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452352499056643', '1', '6478452350485790735', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452352499056653', '1', '6478452350485790735', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452352792657927', '1', '6478452350527733761', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452352792657938', '1', '6478452350527733761', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452353086259201', '1', '6478452350527733773', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452353086259216', '1', '6478452350527733773', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452353421803521', '1', '6478452350569676803', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452353421803530', '1', '6478452350569676803', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452353715404804', '1', '6478452350569676811', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452353715404810', '1', '6478452350569676811', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452354176778245', '1', '6478452350611619842', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6478452354176778250', '1', '6478452350611619842', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009072584785922', '1', '6481009071536209920', 'jbxx3946_cgrq0320', '21-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009072584785931', '1', '6481009071536209920', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009072962273283', '1', '6481009071703982084', 'jbxx3946_cgrq0320', '22-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009072962273291', '1', '6481009071703982084', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073297817607', '1', '6481009071745925126', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073297817617', '1', '6481009071745925126', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073633361924', '1', '6481009071787868162', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073633361934', '1', '6481009071787868162', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073968906248', '1', '6481009071787868174', 'jbxx3946_xmbh5603', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073968906251', '1', '6481009071787868174', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073968906266', '1', '6481009071787868174', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073968906277', '1', '6481009071787868174', 'jbxx3946_htmc2022', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073968906285', '1', '6481009071787868174', 'jbxx3946_ccrq8145', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073968906299', '1', '6481009071787868174', 'jbxx3946_xmmc8857', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073968906307', '1', '6481009071787868174', 'jbxx3946_htje8465', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009073968906314', '1', '6481009071787868174', 'jbxx3946_dhrq0321', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074304450564', '1', '6481009071829811207', 'jbxx3946_xmbh5603', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074304450579', '1', '6481009071829811207', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074304450582', '1', '6481009071829811207', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074304450590', '1', '6481009071829811207', 'jbxx3946_htmc2022', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074304450603', '1', '6481009071829811207', 'jbxx3946_ccrq8145', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074304450612', '1', '6481009071829811207', 'jbxx3946_xmmc8857', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074304450625', '1', '6481009071829811207', 'jbxx3946_htje8465', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074304450636', '1', '6481009071829811207', 'jbxx3946_dhrq0321', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074639994884', '1', '6481009071871754244', 'jbxx3946_xmbh5603', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074639994897', '1', '6481009071871754244', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074639994906', '1', '6481009071871754244', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074639994912', '1', '6481009071871754244', 'jbxx3946_htmc2022', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074639994928', '1', '6481009071871754244', 'jbxx3946_ccrq8145', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074639994935', '1', '6481009071871754244', 'jbxx3946_xmmc8857', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074639994945', '1', '6481009071871754244', 'jbxx3946_htje8465', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074639994953', '1', '6481009071871754244', 'jbxx3946_dhrq0321', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074975539200', '1', '6481009071913697281', 'jbxx3946_xmbh5603', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074975539210', '1', '6481009071913697281', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074975539223', '1', '6481009071913697281', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074975539230', '1', '6481009071913697281', 'jbxx3946_htmc2022', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074975539248', '1', '6481009071913697281', 'jbxx3946_ccrq8145', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074975539255', '1', '6481009071913697281', 'jbxx3946_xmmc8857', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074975539269', '1', '6481009071913697281', 'jbxx3946_htje8465', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009074975539271', '1', '6481009071913697281', 'jbxx3946_dhrq0321', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075269140485', '1', '6481009071913697295', 'jbxx3946_xmbh5603', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075269140499', '1', '6481009071913697295', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075269140508', '1', '6481009071913697295', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075269140516', '1', '6481009071913697295', 'jbxx3946_htmc2022', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075269140526', '1', '6481009071913697295', 'jbxx3946_ccrq8145', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075269140538', '1', '6481009071913697295', 'jbxx3946_xmmc8857', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075269140549', '1', '6481009071913697295', 'jbxx3946_htje8465', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075269140555', '1', '6481009071913697295', 'jbxx3946_dhrq0321', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075604684806', '1', '6481009071955640322', 'jbxx3946_xmbh5603', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075604684815', '1', '6481009071955640322', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075604684826', '1', '6481009071955640322', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075604684835', '1', '6481009071955640322', 'jbxx3946_htmc2022', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075604684842', '1', '6481009071955640322', 'jbxx3946_ccrq8145', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075604684850', '1', '6481009071955640322', 'jbxx3946_xmmc8857', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075604684864', '1', '6481009071955640322', 'jbxx3946_htje8465', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009075604684876', '1', '6481009071955640322', 'jbxx3946_dhrq0321', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009076066058242', '1', '6481009071997583369', 'jbxx3946_xmbh5603', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009076066058253', '1', '6481009071997583369', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009076066058266', '1', '6481009071997583369', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009076066058278', '1', '6481009071997583369', 'jbxx3946_htmc2022', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009076066058283', '1', '6481009071997583369', 'jbxx3946_ccrq8145', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009076066058294', '1', '6481009071997583369', 'jbxx3946_xmmc8857', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009076066058309', '1', '6481009071997583369', 'jbxx3946_htje8465', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481009076066058311', '1', '6481009071997583369', 'jbxx3946_dhrq0321', '', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157531023441924', '1', '6481157529177948161', 'jbxx3946_xmbh5603', '4343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157531023441933', '1', '6481157529177948161', 'jbxx3946_cgrq0320', '22-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157531023441941', '1', '6481157529177948161', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157531610644485', '1', '6481157529723207685', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157531610644497', '1', '6481157529723207685', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157532113960965', '1', '6481157529723207691', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157532113960977', '1', '6481157529723207691', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157532617277443', '1', '6481157529765150720', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157532617277453', '1', '6481157529765150720', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157533078650886', '1', '6481157529807093764', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157533078650892', '1', '6481157529807093764', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157533540024327', '1', '6481157529807093775', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157533540024333', '1', '6481157529807093775', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157534001397763', '1', '6481157529849036804', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157534001397772', '1', '6481157529849036804', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157534462771203', '1', '6481157529890979846', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157534462771216', '1', '6481157529890979846', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157534924144644', '1', '6481157529890979855', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157534924144651', '1', '6481157529890979855', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157535427461127', '1', '6481157529932922881', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157535427461135', '1', '6481157529932922881', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157535930777601', '1', '6481157529974865928', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157535930777615', '1', '6481157529974865928', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157536434094081', '1', '6481157529974865935', 'jbxx3946_xmbh5603', '4343.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157536434094099', '1', '6481157529974865935', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157536434094105', '1', '6481157529974865935', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157536853524483', '1', '6481157530016808961', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157536853524497', '1', '6481157530016808961', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157537356840965', '1', '6481157530058752009', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157537356840973', '1', '6481157530058752009', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157537776271368', '1', '6481157530058752017', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157537776271379', '1', '6481157530058752017', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157538405416965', '1', '6481157530100695048', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157538405416978', '1', '6481157530100695048', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157538908733441', '1', '6481157530100695051', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157538908733458', '1', '6481157530100695051', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157539412049929', '1', '6481157530142638080', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157539412049938', '1', '6481157530142638080', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157540041195523', '1', '6481157530142638091', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157540041195536', '1', '6481157530142638091', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157540628398086', '1', '6481157530184581120', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157540628398091', '1', '6481157530184581120', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157541047828484', '1', '6481157530226524165', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157541047828496', '1', '6481157530226524165', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157541467258884', '1', '6481157530226524173', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6481157541467258895', '1', '6481157530226524173', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862015436226568', '1', '6484862014639308802', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862015436226573', '1', '6484862014639308802', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862015729827846', '1', '6484862014807080967', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862015729827851', '1', '6484862014807080967', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862016149258241', '1', '6484862014849024004', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862016149258253', '1', '6484862014849024004', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862016526745604', '1', '6484862014849024015', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862016526745618', '1', '6484862014849024015', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862016862289924', '1', '6484862014890967042', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862016862289931', '1', '6484862014890967042', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862017155891201', '1', '6484862014890967052', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862017155891210', '1', '6484862014890967052', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862017491435520', '1', '6484862014932910083', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862017491435536', '1', '6484862014932910083', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862017785036802', '1', '6484862014932910094', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862017785036816', '1', '6484862014932910094', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862018120581121', '1', '6484862014974853124', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862018120581138', '1', '6484862014974853124', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862018623897609', '1', '6484862014974853133', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862018623897611', '1', '6484862014974853133', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862018917498882', '1', '6484862015016796166', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6484862018917498895', '1', '6484862015016796166', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472119357440008', '1', '6485472118015262721', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472119357440011', '1', '6485472118015262721', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472119692984328', '1', '6485472118560522243', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472119692984338', '1', '6485472118560522243', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472120196300802', '1', '6485472118602465287', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472120196300814', '1', '6485472118602465287', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472120699617289', '1', '6485472118644408321', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472120699617294', '1', '6485472118644408321', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472120993218562', '1', '6485472118686351369', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472120993218573', '1', '6485472118686351369', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472121328762883', '1', '6485472118686351375', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472121328762898', '1', '6485472118686351375', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472121664307209', '1', '6485472118728294407', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472121664307215', '1', '6485472118728294407', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472121999851525', '1', '6485472118728294412', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472121999851531', '1', '6485472118728294412', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472122293452801', '1', '6485472118770237445', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472122293452810', '1', '6485472118770237445', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472122587054089', '1', '6485472118812180489', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472122587054090', '1', '6485472118812180489', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472122880655364', '1', '6485472118812180491', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6485472122880655372', '1', '6485472118812180491', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001082915880967', '1', '6486001081489817602', 'jbxx3946_cgrq0320', '22-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001082915880977', '1', '6486001081489817602', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001083335311368', '1', '6486001081993134080', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001083335311376', '1', '6486001081993134080', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001083754741760', '1', '6486001082035077123', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001083754741776', '1', '6486001082035077123', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001084090286084', '1', '6486001082077020167', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001084090286093', '1', '6486001082077020167', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001084467773442', '1', '6486001082077020176', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001084467773459', '1', '6486001082077020176', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001084845260800', '1', '6486001082118963206', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001084845260819', '1', '6486001082118963206', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001085264691209', '1', '6486001082160906246', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001085264691211', '1', '6486001082160906246', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001085684121602', '1', '6486001082160906252', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001085684121610', '1', '6486001082160906252', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001086061608967', '1', '6486001082202849286', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001086061608971', '1', '6486001082202849286', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001086439096329', '1', '6486001082244792321', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001086439096333', '1', '6486001082244792321', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001086774640644', '1', '6486001082244792336', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486001086774640652', '1', '6486001082244792336', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207158969958403', '1', '6486207157585838080', 'jbxx3946_cgrq0320', '22-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207158969958411', '1', '6486207157585838080', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207159305502725', '1', '6486207158089154560', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207159305502731', '1', '6486207158089154560', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207159808819200', '1', '6486207158131097605', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207159808819217', '1', '6486207158131097605', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207160270192647', '1', '6486207158173040649', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207160270192658', '1', '6486207158173040649', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207160689623040', '1', '6486207158214983683', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207160689623053', '1', '6486207158214983683', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207161025167365', '1', '6486207158214983690', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207161025167370', '1', '6486207158214983690', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207161486540808', '1', '6486207158256926728', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207161486540817', '1', '6486207158256926728', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207161864028162', '1', '6486207158256926735', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207161864028173', '1', '6486207158256926735', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207162199572485', '1', '6486207158298869763', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207162199572492', '1', '6486207158298869763', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207162577059848', '1', '6486207158340812802', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207162577059850', '1', '6486207158340812802', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207162954547201', '1', '6486207158340812815', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486207162954547214', '1', '6486207158340812815', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297830007767049', '1', '6486297828623646721', 'jbxx3946_cgrq0320', '23-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297830007767055', '1', '6486297828623646721', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297830427197440', '1', '6486297829126963203', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297830427197453', '1', '6486297829126963203', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297830804684805', '1', '6486297829168906243', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297830804684812', '1', '6486297829168906243', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297831182172168', '1', '6486297829210849284', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297831182172173', '1', '6486297829210849284', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297831517716484', '1', '6486297829252792323', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297831517716499', '1', '6486297829252792323', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297831895203840', '1', '6486297829252792335', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297831895203852', '1', '6486297829252792335', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297832230748166', '1', '6486297829294735362', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297832230748178', '1', '6486297829294735362', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297832608235522', '1', '6486297829294735372', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297832608235539', '1', '6486297829294735372', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297832943779842', '1', '6486297829336678408', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297832943779853', '1', '6486297829336678408', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297833321267207', '1', '6486297829378621448', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297833321267215', '1', '6486297829378621448', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297833698754563', '1', '6486297829378621454', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486297833698754577', '1', '6486297829378621454', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302613863137287', '1', '6486302613192048643', 'jbxx3946_cgrq0320', '21-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302613863137294', '1', '6486302613192048643', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302614198681600', '1', '6486302613233991688', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302614198681615', '1', '6486302613233991688', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302614534225926', '1', '6486302613233991699', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302614534225933', '1', '6486302613233991699', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302614827827203', '1', '6486302613275934722', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302614827827219', '1', '6486302613275934722', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302615205314561', '1', '6486302613317877766', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302615205314576', '1', '6486302613317877766', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302615582801928', '1', '6486302613317877779', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302615582801933', '1', '6486302613317877779', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302615918346248', '1', '6486302613359820805', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302615918346252', '1', '6486302613359820805', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302616253890561', '1', '6486302613359820813', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302616253890578', '1', '6486302613359820813', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302616589434887', '1', '6486302613401763841', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302616589434891', '1', '6486302613401763841', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302616924979200', '1', '6486302613401763855', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302616924979214', '1', '6486302613401763855', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302617260523529', '1', '6486302613443706884', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6486302617260523538', '1', '6486302613443706884', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279205543936008', '1', '6488279204117872640', 'jbxx3946_cgrq0320', '21-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6488279205543936012', '1', '6488279204117872640', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6488279205921423369', '1', '6488279204663132168', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279205921423378', '1', '6488279204663132168', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279206424739849', '1', '6488279204705075201', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279206424739852', '1', '6488279204705075201', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279206886113286', '1', '6488279204705075211', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279206886113295', '1', '6488279204705075211', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279207221657606', '1', '6488279204747018248', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279207221657618', '1', '6488279204747018248', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279207515258883', '1', '6488279204747018255', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279207515258891', '1', '6488279204747018255', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279207850803200', '1', '6488279204788961281', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279207892746243', '1', '6488279204788961281', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279208521891843', '1', '6488279204830904325', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279208521891854', '1', '6488279204830904325', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279208857436164', '1', '6488279204830904337', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279208857436171', '1', '6488279204830904337', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279209318809603', '1', '6488279204872847361', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279209318809611', '1', '6488279204872847361', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279209864069124', '1', '6488279204872847372', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488279209864069138', '1', '6488279204872847372', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909341041623047', '1', '6488909339070300162', 'jbxx3946_cgrq0320', '22-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909341041623057', '1', '6488909339070300162', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909341377167366', '1', '6488909339280015365', 'jbxx3946_cgrq0320', '23-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909341377167378', '1', '6488909339280015365', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909341712711681', '1', '6488909339321958409', 'jbxx3946_cgrq0320', '24-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909341712711695', '1', '6488909339321958409', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909342048256002', '1', '6488909339363901446', 'jbxx3946_cgrq0320', '25-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909342048256015', '1', '6488909339363901446', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909342719344645', '1', '6488909339363901453', 'jbxx3946_cgrq0320', '26-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909342719344656', '1', '6488909339363901453', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909343054888964', '1', '6488909339405844483', 'jbxx3946_cgrq0320', '27-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909343054888973', '1', '6488909339405844483', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909343390433283', '1', '6488909339405844493', 'jbxx3946_cgrq0320', '28-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909343390433293', '1', '6488909339405844493', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909343684034562', '1', '6488909339447787523', 'jbxx3946_cgrq0320', '29-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909343684034572', '1', '6488909339447787523', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909343935692806', '1', '6488909339489730567', 'jbxx3946_cgrq0320', '30-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909343935692817', '1', '6488909339489730567', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909344229294087', '1', '6488909339489730578', 'jbxx3946_cgrq0320', '01-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909344229294099', '1', '6488909339489730578', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909344564838401', '1', '6488909339531673608', 'jbxx3946_cgrq0320', '02-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909344564838410', '1', '6488909339531673608', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909344858439680', '1', '6488909339531673619', 'jbxx3946_cgrq0320', '03-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909344858439696', '1', '6488909339531673619', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909345193984001', '1', '6488909339573616648', 'jbxx3946_cgrq0320', '04-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909345193984018', '1', '6488909339573616648', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909345529528328', '1', '6488909339573616652', 'jbxx3946_cgrq0320', '05-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909345529528339', '1', '6488909339573616652', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909345865072646', '1', '6488909339615559685', 'jbxx3946_cgrq0320', '06-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909345865072652', '1', '6488909339615559685', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909346200616968', '1', '6488909339657502724', 'jbxx3946_cgrq0320', '07-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909346200616974', '1', '6488909339657502724', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909346536161289', '1', '6488909339657502736', 'jbxx3946_cgrq0320', '08-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909346578104320', '1', '6488909339657502736', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909347039477768', '1', '6488909339699445769', 'jbxx3946_cgrq0320', '09-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909347039477779', '1', '6488909339699445769', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909347375022088', '1', '6488909339699445772', 'jbxx3946_cgrq0320', '10-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909347375022099', '1', '6488909339699445772', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909347710566403', '1', '6488909339741388808', 'jbxx3946_cgrq0320', '11-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909347710566413', '1', '6488909339741388808', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909348213882884', '1', '6488909339783331843', 'jbxx3946_cgrq0320', '12-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909348213882893', '1', '6488909339783331843', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909349388288004', '1', '6488909339783331854', 'jbxx3946_cgrq0320', '13-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909349388288019', '1', '6488909339783331854', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909349681889280', '1', '6488909339825274887', 'jbxx3946_cgrq0320', '14-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909349681889294', '1', '6488909339825274887', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909350017433604', '1', '6488909339825274893', 'jbxx3946_cgrq0320', '15-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909350017433611', '1', '6488909339825274893', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909350311034884', '1', '6488909339867217921', 'jbxx3946_cgrq0320', '16-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909350311034894', '1', '6488909339867217921', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909350646579206', '1', '6488909339867217935', 'jbxx3946_cgrq0320', '17-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909350646579219', '1', '6488909339867217935', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909350940180482', '1', '6488909339909160964', 'jbxx3946_cgrq0320', '18-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909350940180499', '1', '6488909339909160964', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909351275724805', '1', '6488909339951104003', 'jbxx3946_cgrq0320', '19-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909351275724810', '1', '6488909339951104003', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909351569326086', '1', '6488909339951104013', 'jbxx3946_cgrq0320', '20-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909351569326099', '1', '6488909339951104013', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909351904870400', '1', '6488909339993047049', 'jbxx3946_cgrq0320', '21-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909351904870412', '1', '6488909339993047049', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909352240414721', '1', '6488909339993047056', 'jbxx3946_cgrq0320', '22-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909352240414737', '1', '6488909339993047056', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909352534016008', '1', '6488909340034990080', 'jbxx3946_cgrq0320', '23-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909352534016016', '1', '6488909340034990080', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909352869560323', '1', '6488909340076933129', 'jbxx3946_cgrq0320', '24-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909352869560334', '1', '6488909340076933129', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909353163161603', '1', '6488909340076933139', 'jbxx3946_cgrq0320', '25-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909353163161611', '1', '6488909340076933139', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909353456762885', '1', '6488909340118876162', 'jbxx3946_cgrq0320', '26-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909353456762890', '1', '6488909340118876162', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909353792307208', '1', '6488909340118876177', 'jbxx3946_cgrq0320', '27-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909353792307213', '1', '6488909340118876177', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909354085908488', '1', '6488909340160819204', 'jbxx3946_cgrq0320', '28-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909354085908498', '1', '6488909340160819204', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909354547281927', '1', '6488909340160819219', 'jbxx3946_cgrq0320', '29-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909354547281931', '1', '6488909340160819219', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909354882826244', '1', '6488909340202762249', 'jbxx3946_cgrq0320', '30-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909354882826254', '1', '6488909340202762249', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909355218370564', '1', '6488909340202762257', 'jbxx3946_cgrq0320', '31-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909355218370575', '1', '6488909340202762257', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909355511971847', '1', '6488909340244705282', 'jbxx3946_cgrq0320', '01-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909355511971852', '1', '6488909340244705282', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909355847516168', '1', '6488909340244705293', 'jbxx3946_cgrq0320', '02-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909355847516170', '1', '6488909340244705293', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909356141117442', '1', '6488909340286648324', 'jbxx3946_cgrq0320', '03-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909356141117451', '1', '6488909340286648324', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909356434718729', '1', '6488909340328591361', 'jbxx3946_cgrq0320', '04-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909356434718731', '1', '6488909340328591361', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909356728320007', '1', '6488909340328591370', 'jbxx3946_cgrq0320', '05-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909356728320011', '1', '6488909340328591370', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909357021921283', '1', '6488909340370534403', 'jbxx3946_cgrq0320', '06-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909357021921290', '1', '6488909340370534403', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909357651066884', '1', '6488909340412477445', 'jbxx3946_cgrq0320', '08-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909357651066890', '1', '6488909340412477445', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909357986611202', '1', '6488909340412477459', 'jbxx3946_cgrq0320', '09-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6488909357986611210', '1', '6488909340412477459', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6489383544941445125', '1', '6489383544522014729', 'jbxx3946_cgrq0320', '88.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6489383544941445130', '1', '6489383544522014729', 'jbxx3946_sydw1394', '77.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6489689517992181768', '1', '6488909340454420480', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6489689519418245129', '1', '6488909340454420480', 'jbxx3946_cgrq0320', '10-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6489697207661363205', '1', '6488909340370534410', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6489697209045483524', '1', '6488909340370534410', 'jbxx3946_cgrq0320', '07-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6489722087475773444', '1', '6489693921466122242', 'jbxx3946_sydw1394', '77.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6489722088859893767', '1', '6489693921466122242', 'jbxx3946_cgrq0320', '88.0', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839299363799041', '1', '6491839297518305289', 'jbxx3946_cgrq0320', '22-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839299363799056', '1', '6491839297518305289', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839299699343362', '1', '6491839297728020487', 'jbxx3946_cgrq0320', '23-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839299699343375', '1', '6491839297728020487', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839299992944648', '1', '6491839297728020495', 'jbxx3946_cgrq0320', '24-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839299992944653', '1', '6491839297728020495', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839300328488967', '1', '6491839297769963529', 'jbxx3946_cgrq0320', '25-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839300328488975', '1', '6491839297769963529', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839300622090244', '1', '6491839297769963530', 'jbxx3946_cgrq0320', '26-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839300622090259', '1', '6491839297769963530', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839300957634565', '1', '6491839297811906563', 'jbxx3946_cgrq0320', '27-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839300957634577', '1', '6491839297811906563', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839301251235844', '1', '6491839297853849609', 'jbxx3946_cgrq0320', '28-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839301251235858', '1', '6491839297853849609', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839301544837126', '1', '6491839297853849612', 'jbxx3946_cgrq0320', '29-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839301544837136', '1', '6491839297853849612', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839301880381443', '1', '6491839297895792649', 'jbxx3946_cgrq0320', '30-九月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839301880381451', '1', '6491839297895792649', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839302173982720', '1', '6491839297895792652', 'jbxx3946_cgrq0320', '01-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839302173982739', '1', '6491839297895792652', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839302467584007', '1', '6491839297937735688', 'jbxx3946_cgrq0320', '02-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839302467584018', '1', '6491839297937735688', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839302761185285', '1', '6491839297937735699', 'jbxx3946_cgrq0320', '03-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839302761185292', '1', '6491839297937735699', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839303054786564', '1', '6491839297979678725', 'jbxx3946_cgrq0320', '04-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839303054786576', '1', '6491839297979678725', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839303390330882', '1', '6491839297979678731', 'jbxx3946_cgrq0320', '05-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839303390330897', '1', '6491839297979678731', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839303683932165', '1', '6491839298021621767', 'jbxx3946_cgrq0320', '06-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839303683932175', '1', '6491839298021621767', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839303977533443', '1', '6491839298021621771', 'jbxx3946_cgrq0320', '07-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839303977533455', '1', '6491839298021621771', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839304271134727', '1', '6491839298063564800', 'jbxx3946_cgrq0320', '08-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839304271134737', '1', '6491839298063564800', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839304564736007', '1', '6491839298105507849', 'jbxx3946_cgrq0320', '09-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839304564736012', '1', '6491839298105507849', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839304858337289', '1', '6491839298105507859', 'jbxx3946_cgrq0320', '10-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839304858337290', '1', '6491839298105507859', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839305151938569', '1', '6491839298147450882', 'jbxx3946_cgrq0320', '11-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839305151938576', '1', '6491839298147450882', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839305445539846', '1', '6491839298147450897', 'jbxx3946_cgrq0320', '12-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839305445539856', '1', '6491839298147450897', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839305781084166', '1', '6491839298189393927', 'jbxx3946_cgrq0320', '13-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839305781084172', '1', '6491839298189393927', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839306074685441', '1', '6491839298189393935', 'jbxx3946_cgrq0320', '14-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839306074685453', '1', '6491839298189393935', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839306410229768', '1', '6491839298231336966', 'jbxx3946_cgrq0320', '15-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839306410229770', '1', '6491839298231336966', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839306703831045', '1', '6491839298231336978', 'jbxx3946_cgrq0320', '16-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839306703831050', '1', '6491839298231336978', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839306997432325', '1', '6491839298273280002', 'jbxx3946_cgrq0320', '17-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839306997432332', '1', '6491839298273280002', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839307291033609', '1', '6491839298273280019', 'jbxx3946_cgrq0320', '18-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839307291033613', '1', '6491839298273280019', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839307584634888', '1', '6491839298315223044', 'jbxx3946_cgrq0320', '19-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839307584634894', '1', '6491839298315223044', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839307878236160', '1', '6491839298357166085', 'jbxx3946_cgrq0320', '20-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839307878236178', '1', '6491839298357166085', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839308213780480', '1', '6491839298357166091', 'jbxx3946_cgrq0320', '21-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839308213780494', '1', '6491839298357166091', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839308507381767', '1', '6491839298399109125', 'jbxx3946_cgrq0320', '22-十月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6491839308507381778', '1', '6491839298399109125', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6491839308800983044', '1', '6491839298441052166', 'jbxx3946_cgrq0320', '23-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839308800983053', '1', '6491839298441052166', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839309094584328', '1', '6491839298441052175', 'jbxx3946_cgrq0320', '24-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839309094584336', '1', '6491839298441052175', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839309388185602', '1', '6491839298482995203', 'jbxx3946_cgrq0320', '25-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839309388185619', '1', '6491839298482995203', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839309681786889', '1', '6491839298482995218', 'jbxx3946_cgrq0320', '26-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839309681786890', '1', '6491839298482995218', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839309975388169', '1', '6491839298524938245', 'jbxx3946_cgrq0320', '27-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839309975388177', '1', '6491839298524938245', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839310268989448', '1', '6491839298524938258', 'jbxx3946_cgrq0320', '28-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839310268989453', '1', '6491839298524938258', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839310562590722', '1', '6491839298566881283', 'jbxx3946_cgrq0320', '29-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839310562590739', '1', '6491839298566881283', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839310856192000', '1', '6491839298566881291', 'jbxx3946_cgrq0320', '30-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839310856192015', '1', '6491839298566881291', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839311149793284', '1', '6491839298608824321', 'jbxx3946_cgrq0320', '31-十月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839311149793295', '1', '6491839298608824321', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839311443394568', '1', '6491839298608824336', 'jbxx3946_cgrq0320', '01-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839311443394571', '1', '6491839298608824336', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839311736995848', '1', '6491839298650767369', 'jbxx3946_cgrq0320', '02-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839311736995855', '1', '6491839298650767369', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839312030597123', '1', '6491839298650767377', 'jbxx3946_cgrq0320', '03-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839312030597132', '1', '6491839298650767377', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839312366141444', '1', '6491839298692710406', 'jbxx3946_cgrq0320', '04-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839312366141457', '1', '6491839298692710406', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839312659742724', '1', '6491839298692710410', 'jbxx3946_cgrq0320', '05-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839312659742732', '1', '6491839298692710410', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839312953344005', '1', '6491839298734653448', 'jbxx3946_cgrq0320', '06-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839312953344017', '1', '6491839298734653448', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839313246945289', '1', '6491839298776596487', 'jbxx3946_cgrq0320', '07-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839313246945297', '1', '6491839298776596487', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839313708318728', '1', '6491839298776596495', 'jbxx3946_cgrq0320', '08-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839313708318739', '1', '6491839298776596495', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839314085806088', '1', '6491839298818539525', 'jbxx3946_cgrq0320', '09-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839314085806099', '1', '6491839298818539525', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6491839314421350403', '1', '6491839298818539536', 'jbxx3946_cgrq0320', '10-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6491839314421350412', '1', '6491839298818539536', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492755993611468809', '1', '6492691967015649286', 'jbxx3946_cgdw1170', '111', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492755995121418248', '1', '6492691967015649286', 'jbxx3946_sydw1394', '222', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492755996505538563', '1', '6492691967015649286', 'jbxx3946_cgrq0320', '2019-11-01', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492755997889658885', '1', '6492691967015649286', 'jbxx3946_xmbh5603', '333', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492755999315722245', '1', '6492691967015649286', 'jbxx3946_xmmc8857', '444', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756000699842562', '1', '6492691967015649286', 'jbxx3946_htmc2022', '555', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756002083962885', '1', '6492691967015649286', 'jbxx3946_htje8465', '666', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756003510026240', '1', '6492691967015649286', 'jbxx3946_ccrq8145', '2019-11-02', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756004894146563', '1', '6492691967015649286', 'jbxx3946_dhrq0321', '2019-11-03', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756006320209929', '1', '6492691967015649286', 'jbxx3946_cyrq3186', '2019-11-04', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756007704330245', '1', '6492691967015649286', 'jbxx3946_zyrq5165', '2019-11-05', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756009088450563', '1', '6492691967015649286', 'ztxx6550_syzt8380', '77', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756010514513928', '1', '6492691967015649286', 'ztxx6550_wzxxdz0673', '88', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756011898634247', '1', '6492691967015649286', 'ztxx6550_wzxxlybh0661', '99', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756013282754567', '1', '6492691967015649286', 'ztxx6550_wzxxlcbh9890', '00', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756014708817922', '1', '6492691967015649286', 'ztxx6550_wzxxcwID6190', '11', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756016428482568', '1', '6492691967015649286', 'yjgg2674_bkcw8676', '22', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756017854545924', '1', '6492691967015649286', 'yjgg2674_bklx1545', '33', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756019238666249', '1', '6492691967015649286', 'yjgg2674_dklx17316', '44', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756020622786560', '1', '6492691967015649286', 'yjgg2674_dksl11420', '55', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756022048849929', '1', '6492691967015649286', 'yjgg2674_dklx23332', '66', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756023432970244', '1', '6492691967015649286', 'yjgg2674_dksl29681', '77', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756024817090567', '1', '6492691967015649286', 'yjgg2674_dklx30279', '88', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756026243153920', '1', '6492691967015649286', 'yjgg2674_dksl33379', '99', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756028004761606', '1', '6492691967015649286', 'yjgg2674_dklx49891', '000', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756029724426244', '1', '6492691967015649286', 'yjgg2674_dksl44092', '999', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756031486033928', '1', '6492691967015649286', 'syxx5630_wbdqsj9006', '2019-11-6', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756033247641608', '1', '6492691967015649286', 'cwxx0890_cwrzrq9630', '12', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756034967306249', '1', '6492691967015649286', 'cwxx0890_zcyz5786', '13', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756036728913927', '1', '6492691967015649286', 'cwxx0890_yzjqjs3682', '15', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756038490521609', '1', '6492691967015649286', 'cwxx0890_yjsyqjs1050', '15', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756039874641920', '1', '6492691967015649286', 'cwxx0890_bqstzje16296', '16', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756041636249602', '1', '6492691967015649286', 'cwxx0890_ljzj3779', '17', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756043355914240', '1', '6492691967015649286', 'cwxx0890_bnljzj1695', '18', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756045117521922', '1', '6492691967015649286', 'cwxx0890_jz7595', '19', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492756046879129609', '1', '6492691967015649286', 'cwxx0890_zjff10247', '20', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6492846774875586562', '1', '6491853156169809920', 'jbxx3946_cgdw1170', '44', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6492846776343592963', '1', '6491853156169809920', 'jbxx3946_ccrq8145', '2019-11-01', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6492846778105200648', '1', '6491853156169809920', 'jbxx3946_dhrq0321', '2019-11-02', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6492846779489320967', '1', '6491853156169809920', 'jbxx3946_cyrq3186', '2019-11-03', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6492846780915384327', '1', '6491853156169809920', 'jbxx3946_zyrq5165', '2019-11-04', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6492846782299504649', '1', '6491853156169809920', 'syxx5630_wbdqsj9006', '2019-11-5', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409930159882249', '1', '6496409929237135360', 'jbxx3946_cgrq0320', '11-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409930159882259', '1', '6496409929237135360', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409930495426567', '1', '6496409929404907521', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6496409930495426573', '1', '6496409929404907521', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6496409930789027842', '1', '6496409929404907532', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6496409930789027854', '1', '6496409929404907532', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6496409931082629126', '1', '6496409929446850567', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409931082629132', '1', '6496409929446850567', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409931376230407', '1', '6496409929488793604', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6496409931376230410', '1', '6496409929488793604', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6496409931627888646', '1', '6496409929488793618', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409931627888659', '1', '6496409929488793618', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409931921489922', '1', '6496409929530736644', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409931921489933', '1', '6496409929530736644', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409932215091204', '1', '6496409929572679680', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409932215091215', '1', '6496409929572679680', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409932508692486', '1', '6496409929572679694', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409932508692493', '1', '6496409929572679694', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409932760350726', '1', '6496409929614622721', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409932760350732', '1', '6496409929614622721', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496409933179781120', '1', '6496409929614622730', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6496409933179781136', '1', '6496409929614622730', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6496725073259397128', '1', '6496725071665561605', 'jbxx3946_cgrq0320', '21-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725073259397130', '1', '6496725071665561605', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725073678827521', '1', '6496725071917219846', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725073678827539', '1', '6496725071917219846', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725074056314883', '1', '6496725071959162882', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725074056314890', '1', '6496725071959162882', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725074601574402', '1', '6496725071959162891', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725074601574418', '1', '6496725071959162891', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725075021004809', '1', '6496725072001105925', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6496725075021004810', '1', '6496725072001105925', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094569974497286', '1', '6499094568548433925', 'jbxx3946_cgrq0320', '11-十一月-2019', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6499094569974497297', '1', '6499094568548433925', 'jbxx3946_sydw1394', '三元', null, null, null, '1');
INSERT INTO `res_ext` VALUES ('6499094570393927685', '1', '6499094569051750405', 'jbxx3946_cgrq0320', '24-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094570393927692', '1', '6499094569051750405', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094570771415049', '1', '6499094569093693447', 'jbxx3946_cgrq0320', '25-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094570771415057', '1', '6499094569093693447', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094571148902409', '1', '6499094569135636481', 'jbxx3946_cgrq0320', '26-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094571148902410', '1', '6499094569135636481', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094571568332807', '1', '6499094569135636499', 'jbxx3946_cgrq0320', '27-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094571568332818', '1', '6499094569135636499', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094571945820163', '1', '6499094569177579520', 'jbxx3946_cgrq0320', '28-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094571945820174', '1', '6499094569177579520', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094572323307521', '1', '6499094569219522568', 'jbxx3946_cgrq0320', '29-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094572323307539', '1', '6499094569219522568', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094572700794888', '1', '6499094569219522576', 'jbxx3946_cgrq0320', '30-十一月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094572700794890', '1', '6499094569219522576', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094573078282240', '1', '6499094569261465603', 'jbxx3946_cgrq0320', '01-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094573078282251', '1', '6499094569261465603', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094573455769608', '1', '6499094569303408640', 'jbxx3946_cgrq0320', '02-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094573455769614', '1', '6499094569303408640', 'jbxx3946_sydw1394', '三元', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094573833256961', '1', '6499094569303408657', 'jbxx3946_cgrq0320', '03-十二月-2019', null, null, null, '0');
INSERT INTO `res_ext` VALUES ('6499094573833256978', '1', '6499094569303408657', 'jbxx3946_sydw1394', '三元', null, null, null, '0');

-- ----------------------------
-- Table structure for res_ext_cfg
-- ----------------------------
DROP TABLE IF EXISTS `res_ext_cfg`;
CREATE TABLE `res_ext_cfg` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `res_type_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备类型编码',
  `ext_grp_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分组编码',
  `item_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条目编码',
  `item_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条目名称',
  `seq` int(16) NOT NULL COMMENT '顺序',
  `val_type` bigint(32) DEFAULT NULL COMMENT '值类型',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '备注',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除(0，未删除：1，已删除)',
  `is_query` int(1) NOT NULL DEFAULT '1' COMMENT '是否为查询字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='资产扩展信息配置表';

-- ----------------------------
-- Records of res_ext_cfg
-- ----------------------------
INSERT INTO `res_ext_cfg` VALUES ('6370187088159047681', '1', 'DEV', 'jbxx3946', 'jbxx3946_cgdw1170', '采购单位', '1', '6362335975393198084', null, '2019-11-03 21:53:19', '2019-11-23 17:59:24', '0', '1');
INSERT INTO `res_ext_cfg` VALUES ('6370188372622704644', '1', 'DEV', 'jbxx3946', 'jbxx3946_sydw1394', '使用单位', '2', '6362335975393198084', null, '2019-10-24 20:05:25', '2019-11-23 17:59:34', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370189440366673922', '1', 'DEV', 'jbxx3946', 'jbxx3946_cgrq0320', '采购日期', '3', '6362335975393198082', null, '2019-10-24 20:05:50', '2019-11-23 17:59:46', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370189875483770884', '1', 'DEV', 'jbxx3946', 'jbxx3946_xmbh5603', '项目编号', '4', '6362335975393198084', null, '2019-10-24 20:06:00', '2019-11-23 17:59:57', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370190275410657286', '1', 'DEV', 'jbxx3946', 'jbxx3946_xmmc8857', '项目名称', '5', '6362335975393198084', null, '2019-10-24 20:06:10', '2019-11-23 18:00:11', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370191260065464322', '1', 'DEV', 'jbxx3946', 'jbxx3946_htmc2022', '合同名称', '7', '6362335975393198084', null, '2019-10-24 20:06:33', '2019-11-23 18:00:20', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370191638056140809', '1', 'DEV', 'jbxx3946', 'jbxx3946_htje8465', '合同金额', '8', '6362335975393198085', null, '2019-10-24 20:06:42', '2019-11-23 18:02:07', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370191992558714884', '1', 'DEV', 'jbxx3946', 'jbxx3946_ccrq8145', '出厂日期', '9', '6362335975393198082', null, '2019-10-24 20:06:51', '2019-11-23 18:02:30', '0', '1');
INSERT INTO `res_ext_cfg` VALUES ('6370192343412244487', '1', 'DEV', 'jbxx3946', 'jbxx3946_dhrq0321', '到货日期', '10', '6362335975393198082', null, '2019-10-24 20:06:59', '2019-11-23 18:02:39', '0', '1');
INSERT INTO `res_ext_cfg` VALUES ('6370192673629798402', '1', 'DEV', 'jbxx3946', 'jbxx3946_cyrq3186', '初验日期', '11', '6362335975393198082', null, '2019-10-24 20:07:07', '2019-11-23 18:02:51', '0', '1');
INSERT INTO `res_ext_cfg` VALUES ('6370192960897679365', '1', 'DEV', 'jbxx3946', 'jbxx3946_zyrq5165', '终验日期', '12', '6362335975393198082', null, '2019-10-24 20:07:14', '2019-11-23 18:03:05', '0', '1');
INSERT INTO `res_ext_cfg` VALUES ('6370194988004802566', '1', 'DEV', 'ztxx6550', 'ztxx6550_syzt8380', '使用状态', '1', '6362335975393198084', null, '2019-10-24 20:08:02', '2019-11-23 18:03:36', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370196132630364163', '1', 'DEV', 'ztxx6550', 'ztxx6550_wzxxdz0673', '位置信息-地址', '2', '6362335975393198084', null, '2019-10-26 18:11:53', '2019-11-23 18:03:48', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370196487594311685', '1', 'DEV', 'ztxx6550', 'ztxx6550_wzxxlybh0661', '位置信息-楼宇编号', '3', '6362335975393198084', null, '2019-10-26 18:11:56', '2019-11-23 18:03:57', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370196825403555847', '1', 'DEV', 'ztxx6550', 'ztxx6550_wzxxlcbh9890', '位置信息-楼层编号', '4', '6362335975393198084', null, '2019-10-26 18:12:03', '2019-11-23 18:04:07', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370197175921541126', '1', 'DEV', 'ztxx6550', 'ztxx6550_wzxxcwID6190', '位置信息-槽位ID', '5', '6362335975393198084', null, '2019-10-26 18:12:06', '2019-11-23 18:04:18', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370197525013463041', '1', 'DEV', 'ztxx6550', 'ztxx6550_ywxx2803', '业务信息', '6', null, null, '2019-10-24 20:09:03', '2019-11-14 00:56:07', '1', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370198369704345600', '1', 'DEV', 'yjgg2674', 'yjgg2674_bkcw8676', '板卡槽位', '1', '6362335975393198084', null, '2019-10-24 20:09:23', '2019-11-23 18:27:33', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370198695182336007', '1', 'DEV', 'yjgg2674', 'yjgg2674_bklx1545', '板卡类型', '2', '6362335975393198084', null, '2019-10-24 20:09:31', '2019-11-23 18:27:42', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370199173374935049', '1', 'DEV', 'yjgg2674', 'yjgg2674_dklx17316', '端口类型1', '3', '6362335975393198084', null, '2019-10-24 20:09:42', '2019-11-23 18:27:50', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370199511771381768', '1', 'DEV', 'yjgg2674', 'yjgg2674_dksl11420', '端口数量1', '4', '6362335975393198084', null, '2019-10-24 20:09:50', '2019-11-23 18:28:12', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370199883596431364', '1', 'DEV', 'yjgg2674', 'yjgg2674_dklx23332', '端口类型2', '5', '6362335975393198084', null, '2019-10-24 20:09:59', '2019-11-23 18:28:20', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370200192255262722', '1', 'DEV', 'yjgg2674', 'yjgg2674_dksl29681', '端口数量2', '6', '6362335975393198084', null, '2019-10-24 20:10:06', '2019-11-23 18:28:43', '0', '0');
INSERT INTO `res_ext_cfg` VALUES ('6370200491938283528', '1', 'DEV', 'yjgg2674', 'yjgg2674_dklx30279', '端口类型3', '7', '6362335975393198084', null, '2019-10-24 20:10:13', '2019-11-23 18:28:52', '0', '0');

-- ----------------------------
-- Table structure for res_ext_grp
-- ----------------------------
DROP TABLE IF EXISTS `res_ext_grp`;
CREATE TABLE `res_ext_grp` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `res_type_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备类型编码',
  `ext_grp_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分组编码',
  `ext_grp_name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分组名称',
  `seq` int(16) NOT NULL COMMENT '排序',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除(0未删除，1已删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='资产扩展信息分组配置表';

-- ----------------------------
-- Records of res_ext_grp
-- ----------------------------
INSERT INTO `res_ext_grp` VALUES ('6370174090220666888', '1', 'DEV', 'jbxx3946', '基本信息', '1', '2019-10-24 19:59:44', '2019-11-29 10:51:57', '0');
INSERT INTO `res_ext_grp` VALUES ('6370175164423864325', '1', 'DEV', 'ztxx6550', '状态信息', '2', '2019-10-24 20:00:10', '2019-11-29 10:52:00', '0');
INSERT INTO `res_ext_grp` VALUES ('6370176090861731840', '1', 'DEV', 'yjgg2674', '硬件规格', '3', '2019-10-24 20:00:32', '2019-11-29 10:52:02', '0');
INSERT INTO `res_ext_grp` VALUES ('6370176577652654085', '1', 'DEV', 'syxx5630', '使用信息', '4', '2019-10-24 20:00:43', '2019-11-29 10:52:04', '0');
INSERT INTO `res_ext_grp` VALUES ('6370177060123443207', '1', 'DEV', 'cwxx0890', '财务信息', '5', '2019-10-24 20:00:55', '2019-11-29 10:52:07', '0');
INSERT INTO `res_ext_grp` VALUES ('6406556528840540164', '1', 'DEV', 'DD1999', 'DD', '6', '2019-11-03 20:56:54', '2019-11-29 10:52:10', '0');

-- ----------------------------
-- Table structure for res_type
-- ----------------------------
DROP TABLE IF EXISTS `res_type`;
CREATE TABLE `res_type` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `res_type_code` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '设备类型编码',
  `res_type_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `pid` bigint(32) NOT NULL DEFAULT '0' COMMENT '父组织id',
  `full_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '全编码，格式xxxx_xxxx_xxxx',
  `level` int(16) NOT NULL DEFAULT '0' COMMENT '类别等级',
  `created_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除(0:未删除，1:已删除)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='资源分类表';

-- ----------------------------
-- Records of res_type
-- ----------------------------
INSERT INTO `res_type` VALUES ('6351400136542781442', '1', 'ZZC', '总资产类', '0', 'ZZC', '0', '2019-11-25 15:13:40', '2019-11-25 15:13:39', '0');
INSERT INTO `res_type` VALUES ('6485422824080015364', '1', 'SERVER', '服务器', '6351400136542781442', 'ZZC_SERVER', '1', '2019-11-25 15:15:29', null, '0');
INSERT INTO `res_type` VALUES ('6485425582170439688', '1', 'interchanger', '交换机', '6351400136542781442', 'ZZC_interchanger', '1', '2019-11-25 15:16:35', null, '0');
INSERT INTO `res_type` VALUES ('6492799920515317761', '1', '2', '路由器', '6351400136542781442', 'ZZC_2', '1', '2019-11-27 16:07:43', '2019-11-27 16:07:43', '1');
INSERT INTO `res_type` VALUES ('6492803964705177601', '1', '004', '机顶盒', '6351400136542781442', 'ZZC_004', '1', '2019-11-28 15:46:57', '2019-11-28 15:46:57', '1');
INSERT INTO `res_type` VALUES ('6492952071703101444', '1', '005', '路由器', '6351400136542781442', 'ZZC_005', '1', '2019-11-27 17:07:35', '2019-11-27 17:07:35', '1');
INSERT INTO `res_type` VALUES ('6496374737684398087', '1', '003', '机顶盒', '6351400136542781442', 'ZZC_003', '1', '2019-11-28 15:47:23', null, '0');
INSERT INTO `res_type` VALUES ('6496375122427904004', '1', '004', '路由器', '6351400136542781442', 'ZZC_004', '1', '2019-11-28 15:47:32', null, '0');
INSERT INTO `res_type` VALUES ('6496376030620549121', '1', '005', '手持机', '6351400136542781442', 'ZZC_005', '1', '2019-11-28 15:47:54', null, '0');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
  `id` bigint(32) NOT NULL,
  `is_valid` int(1) NOT NULL DEFAULT '1' COMMENT '1-有效,0-无效',
  `org_id` bigint(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `region_id` bigint(32) NOT NULL,
  `created_time` timestamp NULL DEFAULT NULL,
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `domain` varchar(255) DEFAULT NULL,
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除(0：未删除，1：已删除)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('6485326006205808651', '1', '6485243813450219521', '连云港机构机房', '6358604922035896325', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485334424509480976', '1', '6485243813450219521', '连云港机构机房', '6358604922035896325', null, '2019-11-25 14:41:04', 'http://www.baidu.com', '1');
INSERT INTO `room` VALUES ('6485348785722490890', '1', '6485235189961195520', '南京机构机房', '6358606215349534727', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485349545017344018', '1', '6485237645810073608', '徐州机构机房', '6358605679359426568', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485350364584345611', '1', '6485242549538652161', '宿迁机构机房', '6358557891934289924', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485351304276213773', '1', '6485245259814010885', '淮安机构机房', '6358604630154280961', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485352140788203537', '1', '6485246603207639043', '盐城机构机房', '6358604359202242566', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485352719434383371', '1', '6485247578215546880', '扬州机构机房', '6358603799556259840', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485353473486356495', '1', '6485248958644879368', '镇江机构机房', '6358570155114496007', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485354081115176976', '1', '6485250087457914881', '常州机构机房', '6358605423884369922', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485354677880750092', '1', '6485250960376463366', '泰州机构机房', '6358557916512911367', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485355435288166419', '1', '6485252880486891520', '无锡机构机房', '6358605973380136967', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485356077687767053', '1', '6485253813425930242', '苏州机构机房', '6358605163795578889', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485356656711434253', '1', '6485257116733931522', '南通机构机房', '6358606215349532727', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6485773514996449293', '1', '6485770998959308808', '盐城机构子机房', '6358604359202242566', null, null, 'http://192.168.1.52:8081/index', '0');
INSERT INTO `room` VALUES ('6486182965721169933', '1', '6486179771716730881', '无锡子机构机房', '6358605973380136967', null, null, 'http://192.168.1.52:8081/index', '0');
INSERT INTO `room` VALUES ('6488296947282083852', '1', '6488291661578240002', '苏州子机构机房', '6358605163795578889', null, null, 'http://192.168.1.52:8081/index', '0');
INSERT INTO `room` VALUES ('6488298049922662410', '1', '6488294146996961280', '苏州子机构机房2', '6358605163795578889', null, null, 'http://192.168.1.52:8081/index', '0');
INSERT INTO `room` VALUES ('6488837454278164491', '1', '6488833186154414082', '南京机构维修部门机房', '6358606215349534727', null, '2019-11-27 17:50:15', 'http://www.baidu.com', '1');
INSERT INTO `room` VALUES ('6488838080865239054', '1', '6488834984713912323', '南京机构报废部门机房', '6358606215349534727', null, '2019-11-27 17:50:33', 'http://www.baidu.com', '1');
INSERT INTO `room` VALUES ('6488946214468321294', '1', '6485990961179525122', '南京子机构机房', '6358606215349534727', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6492508014363279371', '1', '6488927037900718085', '扬州子机构机房', '6358603799556259840', null, null, 'http://192.168.1.52:8081/index', '0');
INSERT INTO `room` VALUES ('6493068998203146251', '1', '6485235189961195520', '南京机构维修机房', '6358606215349534727', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6493069770668113933', '1', '6485235189961195520', '南京机构报废机房', '6358606215349534727', null, null, 'http://www.baidu.com', '0');
INSERT INTO `room` VALUES ('6499239804041953289', '1', '6485990961179525122', '增删机房11', '6358606215349534727', null, '2019-11-29 10:52:21', 'http://www.baidu.comhttp://www.baidu.com11', '1');
INSERT INTO `room` VALUES ('6499241005584220164', '1', '6485235189961195520', '增删机房11', '6358606215349534727', null, '2019-11-29 10:46:31', 'http://www.baidu.comhttp://www.baidu.com', '1');
INSERT INTO `room` VALUES ('6499244258602516490', '1', '6485248958644879368', '镇江机构JF', '6358570155114496007', null, '2019-11-29 10:49:15', 'http://192.168.1.52:8081/index', '1');

-- ----------------------------
-- Table structure for scrap_task
-- ----------------------------
DROP TABLE IF EXISTS `scrap_task`;
CREATE TABLE `scrap_task` (
  `id` bigint(32) NOT NULL,
  `task_name` varchar(32) DEFAULT NULL COMMENT '任务名称',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `task_type` int(1) DEFAULT NULL COMMENT '任务类型',
  `state` int(1) DEFAULT NULL COMMENT '任务状态',
  `org_id` bigint(32) DEFAULT NULL COMMENT '所属机构',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp NULL DEFAULT NULL,
  `user_id` bigint(32) DEFAULT '0' COMMENT '所属责任人',
  `room_id` bigint(32) DEFAULT NULL COMMENT '存放位置机房',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报废任务表';

-- ----------------------------
-- Records of scrap_task
-- ----------------------------

-- ----------------------------
-- Table structure for scrap_task_desc
-- ----------------------------
DROP TABLE IF EXISTS `scrap_task_desc`;
CREATE TABLE `scrap_task_desc` (
  `id` bigint(32) NOT NULL,
  `res_id` bigint(32) DEFAULT NULL COMMENT '设备id',
  `room_id` bigint(32) DEFAULT NULL COMMENT '机房id',
  `label_id` bigint(32) DEFAULT NULL COMMENT '标签id',
  `state` int(1) NOT NULL COMMENT '0-待执行,2-执行中,8-执行完毕',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `task_id` bigint(32) DEFAULT NULL COMMENT '调拨任务ID',
  `is_del` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报废任务详情';

-- ----------------------------
-- Records of scrap_task_desc
-- ----------------------------

-- ----------------------------
-- Table structure for scrap_task_log
-- ----------------------------
DROP TABLE IF EXISTS `scrap_task_log`;
CREATE TABLE `scrap_task_log` (
  `id` bigint(32) NOT NULL,
  `task_name` varchar(32) DEFAULT NULL,
  `task_type` int(1) DEFAULT NULL,
  `state` int(1) DEFAULT NULL,
  `org_id` bigint(32) DEFAULT NULL,
  `task_id` bigint(32) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `person_name` varchar(16) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报废任务日志';

-- ----------------------------
-- Records of scrap_task_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_app_feedback
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_feedback`;
CREATE TABLE `sys_app_feedback` (
  `id` bigint(32) NOT NULL,
  `user_id` bigint(32) DEFAULT NULL,
  `org_id` bigint(32) DEFAULT NULL,
  `feedback` text,
  `create_time` timestamp NULL DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_app_feedback
-- ----------------------------
INSERT INTO `sys_app_feedback` VALUES ('6485584375038607363', null, null, '123', '2019-11-25 16:19:41', '2019-11-25 16:19:41');
INSERT INTO `sys_app_feedback` VALUES ('6485585534428119040', '123', '123', '123', '2019-11-25 16:20:08', '2019-11-25 16:20:08');
INSERT INTO `sys_app_feedback` VALUES ('6485652541538304006', '123', '123', '123', '2019-11-25 16:46:46', '2019-11-25 16:46:46');
INSERT INTO `sys_app_feedback` VALUES ('6485731079964590086', '6485528702196121605', '6485235189961195520', '哈哈哈哈哈哈哈哈哈哈', '2019-11-25 17:17:58', '2019-11-25 17:17:58');
INSERT INTO `sys_app_feedback` VALUES ('6485743020854476804', '6485528702196121605', '6485235189961195520', 'hdkdjdbdbdjjd', '2019-11-25 17:22:43', '2019-11-25 17:22:43');
INSERT INTO `sys_app_feedback` VALUES ('6485801714518589442', '6485528702196121605', '6485235189961195520', 'ghj', '2019-11-25 17:46:02', '2019-11-25 17:46:02');
INSERT INTO `sys_app_feedback` VALUES ('6485805678639185925', '6485528702196121605', '6485235189961195520', 'nnnn', '2019-11-25 17:47:37', '2019-11-25 17:47:37');

-- ----------------------------
-- Table structure for sys_dev_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_dev_user`;
CREATE TABLE `sys_dev_user` (
  `id` bigint(32) NOT NULL COMMENT '用户id',
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名账号',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除 1：删除 0：未删除',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `room_id` bigint(32) DEFAULT NULL,
  `login_status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='用户表';

-- ----------------------------
-- Records of sys_dev_user
-- ----------------------------
INSERT INTO `sys_dev_user` VALUES ('1', 'admin', '9270202263c095fdd20109a250c269c8', '1', '2019-11-22 15:04:15', '2019-11-26 17:05:42', '6485348785722490890', '0');
INSERT INTO `sys_dev_user` VALUES ('2', 'admin111', 'e03e69fe7254d4c4612f944fe8b8063c', '1', '2019-11-22 15:09:50', '2019-11-26 16:56:55', '6488946214468321294', '0');
INSERT INTO `sys_dev_user` VALUES ('6485364173449461765', 'admin', 'c3f6b26bddd53d259c733d1afd765456', '1', '2019-11-25 14:52:11', '2019-11-25 14:52:11', '6485348785722490890', '0');
INSERT INTO `sys_dev_user` VALUES ('6485376568540528644', 'admin', 'f0e8e1d08a3437a5e6342d37cf92f393', '1', '2019-11-25 14:57:06', '2019-11-25 14:57:06', '6485348785722490890', '0');
INSERT INTO `sys_dev_user` VALUES ('6485387729457643521', '1', '5e666b76e4bd7a6ad77385e74bf0e089', '1', '2019-11-25 15:01:32', '2019-11-25 15:01:32', '6485348785722490890', '0');
INSERT INTO `sys_dev_user` VALUES ('6488706579074908169', '11', '10c2ac6e92893377a0ed50a532034215', '1', '2019-11-26 13:00:20', '2019-11-26 13:00:20', '6485348785722490890', '0');
INSERT INTO `sys_dev_user` VALUES ('6488725687065640967', '123', '25f81082156e7158f9c3ce167e46de79', '1', '2019-11-26 13:07:55', '2019-11-26 13:07:55', '6485348785722490890', '0');
INSERT INTO `sys_dev_user` VALUES ('6489197276655779844', 'read', '5ce68b16e0b9ccc4ca15bdd55566f13e', '0', '2019-11-26 16:15:19', '2019-11-26 16:57:35', '6485349545017344018', '0');
INSERT INTO `sys_dev_user` VALUES ('6489310362893025287', 'admin', '9270202263c095fdd20109a250c269c8', '0', '2019-11-26 17:00:15', '2019-11-26 17:00:15', '6485348785722490890', '0');
INSERT INTO `sys_dev_user` VALUES ('6489312422589890560', 'admin111', 'e03e69fe7254d4c4612f944fe8b8063c', '0', '2019-11-26 17:01:04', '2019-11-26 17:01:04', '6488946214468321294', '0');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `num` varchar(16) NOT NULL DEFAULT '1' COMMENT '菜单排序',
  `name` varchar(16) DEFAULT NULL COMMENT '权限名称',
  `parent_id` bigint(16) NOT NULL COMMENT '父编号',
  `permission` varchar(255) DEFAULT NULL COMMENT '权限字符串,menu例子：role:*，button例子：role:create,role:update,role:delete,role:view',
  `type` int(1) NOT NULL COMMENT '资源类型   1:菜单    2：按钮',
  `url` varchar(255) NOT NULL COMMENT '请求URL',
  `create_time` timestamp NULL DEFAULT NULL,
  `org_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6496621496809553926 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('6376498030350172161', '6', '系统管理', '0', 'user:user', '1', 'system', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376499924078428168', '2', '用户添加', '6376502845872537605', 'user:add', '2', 'user/add', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376500586149314567', '2', '用户删除', '6376502845872537605', 'user:delete', '2', 'user/delete', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376500905839165445', '2', '用户更新', '6376502845872537605', 'user:update', '2', 'user/update', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376501242809548802', '2', '菜单添加', '6376503081256878080', 'menu:add', '2', 'menu/add', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376501510531973127', '2', '菜单删除', '6376503081256878080', 'menu:delete', '2', 'menu/delete', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376501753214402567', '2', '菜单修改', '6376503081256878080', 'menu:update', '2', 'menu/update', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376502151757168645', '2', '角色添加', '6376503338409656320', 'role:add', '2', 'role/add', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376502389406433287', '2', '角色删除', '6376503338409656320', 'role:delete', '2', 'role/delete', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376502616947425288', '2', '角色修改', '6376503338409656320', 'role:update', '2', 'role/update', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376502845872537605', '2', '用户管理', '6376498030350172161', 'user:view', '1', 'user', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376503081256878080', '2', '菜单管理', '6376498030350172161', 'menu:view', '1', 'menu', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376503338409656320', '2', '角色管理', '6376498030350172161', 'role:view', '1', 'role', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376570542274641927', '5', '日志管理', '0', 'log:log', '1', 'log', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376579561412362243', '1', '盘点任务日志', '6376570542274641927', 'checkLog:view', '1', 'checkLog', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376589621450506242', '2', '调拨任务日志', '6376570542274641927', 'allocationLog:view', '1', 'allocationLog', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376676240497049601', '3', '借用任务日志', '6376570542274641927', 'borrowLog:view', '1', 'borrowLog', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376678630956728329', '4', '维修任务日志', '6376570542274641927', 'repairLog:view', '1', 'repairLog', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376681057026048003', '5', '报废任务日志', '6376570542274641927', 'scrapLog:view', '1', 'scrapLog', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376684735892029445', '7', '告警日志', '6376570542274641927', 'alarmLog:view', '1', 'alarmLog', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376686130959482883', '6', '操作日志', '6376570542274641927', 'sysLog:view', '1', 'sysLog', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376690357140193287', '4', '任务管理', '0', 'task:task', '1', 'task', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376694948518952966', '2', '调拨任务', '6376690357140193287', 'allocationTask:view', '1', 'allocationTask', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376697197966131204', '3', '借用任务', '6376690357140193287', 'borrowTask:view', '1', 'borrowTask', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376699363149742080', '1', '盘点任务', '6376690357140193287', 'checkTask:view', '1', 'checkTask', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376701234186813440', '4', '维修任务', '6376690357140193287', 'repairTask:view', '1', 'repairTask', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376702771902545928', '5', '报废任务', '6376690357140193287', 'scrapTask:view', '1', 'scrapTask', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376741124702208005', '2', '机构管理', '6376498030350172161', 'org:view', '1', 'org', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376741124702208006', '2', '拓展信息配置', '6376498030350172161', 'resExt:view', '1', 'resExtGrp/toResExt', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376741124702208007', '2', '拓展信息删除', '6376741124702208006', 'resExtCfg:delResExtCfg', '2', 'resExtCfg/delResExtCfg/', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376741124702208008', '2', '拓展信息添加', '6376741124702208006', 'resExtCfg:addResExtCfg', '2', 'resExtCfg/addResExtCfg', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376741124702208009', '2', '拓展信息编辑', '6376741124702208006', 'resExtCfg:updateResExtCfg', '2', 'resExtCfg/updateResExtCfg', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376742276290314245', '2', '机房管理', '6376498030350172161', 'room:view', '1', 'room/toRoom', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376742276290314247', '2', '机房删除', '6376742276290314245', 'room:delRoom', '1', 'room/delRoom', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376742276290314248', '2', '机房添加', '6376742276290314245', 'room:addRoom', '2', 'room/addRoom', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376742276290314249', '2', '机房修改', '6376742276290314245', 'room:updateRoom', '2', 'room/updateRoom', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376746855547535367', '2', '机架管理', '6376498030350172161', 'rack:view', '1', 'rack/toRack', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376746855547535388', '2', '添加机架', '6376746855547535367', 'rack:addRack', '1', 'rack/addRack', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376746855547535399', '2', '修改机架', '6376746855547535367', 'rack:updateRack', '1', 'rack/updateRack', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376749492674232321', '2', '设备管理添加', '6376749492674232329', 'resType:addResType', '2', 'resType/addResType', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376749492674232322', '2', '设备管理修改', '6376749492674232329', 'resType:updateResType', '2', 'resType/updateResType', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376749492674232323', '2', '设备管理删除', '6376749492674232329', 'resType:delResType', '2', 'resType/delResType', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376749492674232329', '2', '设备分类管理', '6376498030350172161', 'resType:view', '1', 'resType/toResType', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376751149550141441', '2', '标签管理', '6376498030350172161', 'label:view', '1', 'label/toLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376751149550141442', '2', '标签管理', '6376751149550141441', 'label:delLabel', '2', 'label/delLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376751149550141448', '2', '标签删除', '6376751149550141442', 'label:delLabel', '2', 'label/delLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376751149550141449', '2', '标签导入', '6376751149550141442', 'label:importLabel', '2', 'label/importLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376757906489999322', '3', '线缆管理', '0', 'cable:view', '1', 'cable', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6376757906489999361', '2', '设备管理', '0', 'device:view', '1', 'device', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6384121967741501449', '2', '调拨任务添加', '6376694948518952966', 'allocationTask:add', '2', 'allocationTask/add', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6384176873068298248', '2', '借用任务添加', '6376697197966131204', 'borrowTask:add', '2', 'borrowTask/add', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387403138038497287', '2', '报废任务添加', '6376702771902545928', 'scrapTask:add', '2', 'scrapTask/add', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189110', '2', '设备修改', '6387827589901189155', 'device:updateDevice', '2', 'device/updateDevice', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189112', '2', '设备解绑', '6387827589901189155', 'device:untyingLabel', '2', 'device/untyingLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189122', '2', '维修任务添加', '6376701234186813440', 'repairTask:add', '2', 'repairTask/add', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189155', '2', '设备信息管理', '6376757906489999361', 'device:view', '1', 'device/toDevice', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189166', '2', '设备贴标', '6376757906489999361', 'device:bind', '1', 'device/toDeviceBind', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189176', '2', '设备添加', '6387827589901189155', 'device:addDevice', '2', 'device/addDevice', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189178', '2', '设备标签管理', '6376757906489999361', 'device:label', '1', 'device/toDeviceLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189179', '2', '设备删除', '6387827589901189155', 'device:delDevice', '2', 'device/delDevice', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189180', '2', '设备标签绑定', '6387827589901189178', 'device:bindLabel', '2', 'device/bindLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189183', '2', '设备导入', '6387827589901189155', 'device:importDevice', '2', 'device/importDevice', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189211', '2', '线缆标签管理', '6376757906489999322', 'cable:label', '1', 'cable/toCableLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189221', '2', '线缆删除', '6387827589901189222', 'cable:delCable', '1', 'cable/delCable', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189222', '2', '线缆信息管理', '6376757906489999322', 'cable:view', '1', 'cable/toCable', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189223', '2', '线缆贴标', '6376757906489999322', 'cable:bind', '1', 'cable/toCableBind', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189226', '2', '线缆批量删除', '6387827589901189222', 'cable:batchDel', '1', 'cable/batchDel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189227', '2', '线缆编辑', '6387827589901189222', 'cable:updateCable', '1', 'cable/updateCable', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189233', '2', '线缆标签绑定', '6387827589901189211', 'cable:bindLabel', '2', 'cable/bindLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6387827589901189234', '2', '线缆解绑', '6387827589901189211', 'cable:untyingLabel', '2', 'cable/untyingLabel', '2019-10-30 20:20:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6394172709797888009', '1', '盘点任务日志导出', '6376579561412362243', 'checkLog:export', '2', 'checkLog/export', '2019-10-31 11:00:48', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6394282149633064963', '1', '调拨任务日志导出', '6376589621450506242', 'allocationLog:export', '2', 'allocationLog/export', '2019-10-31 11:45:29', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6394716636032532483', '1', '借用任务日志导出', '6376676240497049601', 'borrowLog:export', '2', 'borrowLog/export', '2019-11-01 11:08:00', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6394799555828776961', '1', '报废任务日志导出', '6376681057026048003', 'scrapLog:export', '2', 'scrapLog/export', '2019-11-01 11:08:03', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6394856285593927684', '1', '系统操作日志导出', '6376686130959482883', 'sysLog:export', '2', 'sysLog/export', '2019-11-01 11:08:05', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6397614850435973128', '19', '系统参数管理', '6376498030350172161', 'param:param', '1', 'param', '2019-11-27 09:59:35', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6397822132939653120', '13', '系统参数修改', '6397614850435973128', 'param:update', '2', 'param/update', '2019-11-01 11:08:10', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6398533179875000326', '1', '系统参数添加', '6397614850435973128', 'param:add', '2', 'param/add', '2019-11-02 15:46:15', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6398633567059968000', '1', '系统参数修改', '6397614850435973128', 'param:update', '2', 'param/update', '2019-11-02 15:46:18', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6398740959235932168', '1', '系统参数删除', '6397614850435973128', 'param:delete', '2', 'param/delete', '2019-11-02 15:46:20', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6401412259989422087', '18', '机构删除', '6376741124702208005', 'org:delete', '2', 'org/delete', '2019-11-02 15:46:22', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6401861328977264642', '19', '机构添加', '6376741124702208005', 'org:add', '2', 'org/add', '2019-11-02 15:46:25', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6402009028750213123', '20', '机构修改', '6376741124702208005', 'org:update', '2', 'org/update', '2019-11-02 15:46:27', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6406517186982051847', '19', '盘点任务添加', '6376699363149742080', 'checkTask:add', '2', 'checkTask/add', '2019-11-06 17:52:42', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6406701921620459528', '19', '盘点任务撤销', '6376699363149742080', 'checkTask:delete', '2', 'checkTask/delete', '2019-11-12 17:52:46', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6409172284048670720', '19', '借用任务删除', '6376697197966131204', 'borrowTask:delete', '2', 'borrowTask/delete', '2019-11-12 17:52:49', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6412237584382033928', '19', '调拨任务删除', '6376694948518952966', 'allocationTask:delete', '2', 'allocationTask/delete', '2019-11-12 17:52:52', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6412300597550120963', '19', '维修任务删除', '6376701234186813440', ' repairTask:delete', '2', 'repairTask/delete', '2019-11-12 17:52:55', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6412303398799933441', '22', '报废任务删除', '6376702771902545928', 'scrapTask:delete', '2', 'scrapTask/add', '2019-11-12 17:52:57', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6412930474175365126', '19', '盘点任务详情导出', '6376699363149742080', 'checkTask:export', '2', 'checkTask/export', '2019-11-12 17:53:00', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6438617621809070082', '1', '维修任务日志导出', '6376678630956728329', 'repairLog:export', '2', 'repairLog/export', '2019-11-12 17:53:02', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6441947240008253441', '1', '3D机房', '6376498030350172161', '3D:room', '1', '3dRoom', '2019-11-13 15:26:42', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448474122753146884', '19', '调拨任务详情导出', '6376694948518952966', 'allocationTask:export', '2', 'allocationTask/export', '2019-11-17 10:50:52', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448477581921484800', '19', '借用任务详情导出', '6376697197966131204', 'borrowTask:export', '2', 'borrowTask/export', '2019-11-17 10:50:55', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448481152029163525', '19', '维修任务详情导出', '6376701234186813440', 'repairTask:export', '2', 'repairTask/export', '2019-11-17 10:50:58', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448483454576230401', '19', '报废任务详情导出', '6376702771902545928', 'scrapTask:export', '2', 'scrapTask/export', '2019-11-17 10:51:01', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448815684515266568', '19', '盘点任务详情查看', '6376699363149742080', 'checkTask:desc', '2', 'desc', '2019-11-17 10:51:04', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448843446361784328', '19', '调拨任务详情', '6376694948518952966', 'allocationTask:desc', '2', 'desc', '2019-11-17 10:51:06', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448872141189283845', '19', '借用任务详情', '6376697197966131204', 'borrowTask:desc', '2', 'desc', '2019-11-17 10:51:09', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448912755809320966', '19', '维修任务详情', '6376701234186813440', 'repairTask:desc', '2', 'desc', '2019-11-17 10:51:11', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6448939430114754566', '19', '报废任务详情', '6376702771902545928', 'scrapTask:desc', '2', 'desc', '2019-11-17 10:51:13', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6456728168043642887', '19', '设备导出', '6387827589901189155', 'device:exportDevice', '2', 'device/exportDevice', '2019-11-17 17:13:15', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6456731222042214408', '19', '设备批量删除', '6387827589901189155', 'device:batchDelDevice', '2', 'device/batchDelDevice', '2019-11-17 17:14:28', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6456815583085199362', '19', '设备贴标批量打印', '6387827589901189166', 'device:batchPrint', '2', 'device/batchPrint', null, '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6456865115466629120', '19', '设备贴标确认贴标完成按钮', '6387827589901189166', 'device:batchConfirm', '2', 'device/batchConfirm', '2019-11-17 18:07:40', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6456942803707494402', '1', '首页', '0', 'indexContent', '1', 'indexContent', '2019-11-17 18:38:32', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6459201659967897608', '19', '线缆添加', '6387827589901189222', 'cable:addCable', '2', 'cable/addCable', '2019-11-18 09:36:08', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6459211480930713601', '19', '线缆批量导入', '6387827589901189222', 'cable:importCable', '2', 'cable/importCable', '2019-11-18 09:40:02', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6459216611738910721', '19', '线缆批量导出', '6387827589901189222', 'cable:exportCable', '2', 'cable/exportCable', '2019-11-18 09:42:04', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6459249724300984322', '19', '线缆贴标批量打印', '6387827589901189223', 'cable:batchPrint', '2', 'cable/batchPrint', '2019-11-18 09:55:14', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6459252260261068806', '19', '线缆贴标PC端导出', '6387827589901189223', 'cable:bindPcExport', '2', 'cable/bindPcExport', '2019-11-18 09:56:14', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6459255389337681922', '19', '线缆贴标手持机端导出', '6387827589901189223', 'cable:bindPhoneExport', '2', 'cable/bindPhoneExport', '2019-11-18 09:57:29', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6459549042878709766', '19', '设备贴标打印', '6387827589901189166', 'device:print', '2', 'device/print', '2019-11-18 11:54:10', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6459555357235609604', '19', '线缆贴标打印', '6387827589901189223', 'cable:print', '2', 'cable/print', '2019-11-18 11:56:40', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6478628532225310727', '3', '添加扩展组', '6376741124702208006', 'resExtGrp:addResExtGrp', '2', 'resExtGrp/addResExtGrp', '2019-11-23 18:15:40', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6481741889971159049', '2', '机架删除', '6376746855547535367', 'rack:delRack', '2', 'rack/delRack', '2019-11-24 14:52:49', '6467453551651061766');
INSERT INTO `sys_menu` VALUES ('6496181741567344643', '1', '1', '0', '1', '1', '1', '2019-11-28 14:30:42', '6467453551651061766');

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) DEFAULT '1' COMMENT '1-有效,0-无效',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机构组织名',
  `parent_id` bigint(32) NOT NULL COMMENT '父组织ID',
  `region_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '区域字典id',
  `full_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '全编码，格式xxxx_xxxx_xxxx',
  `is_del` int(1) DEFAULT '0',
  `level` int(1) NOT NULL COMMENT '机构等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='组织机构表';

-- ----------------------------
-- Records of sys_org
-- ----------------------------
INSERT INTO `sys_org` VALUES ('6467453551651061766', '1', '江苏总公司', '0', '6358538100104232960', 'DJ', '0', '1', '2019-11-22 14:52:11', '2019-11-20 16:15:08');
INSERT INTO `sys_org` VALUES ('6485235189961195520', '1', '南京机构', '6467453551651061766', '6358606215349534727', 'DJ_NJ', '0', '2', '2019-11-25 14:00:55', '2019-11-25 14:00:55');
INSERT INTO `sys_org` VALUES ('6485237645810073608', '1', '徐州机构', '6467453551651061766', '6358605679359426568', 'DJ_XZ', '0', '2', '2019-11-25 14:03:21', '2019-11-25 14:03:21');
INSERT INTO `sys_org` VALUES ('6485242549538652161', '1', '宿迁机构', '6467453551651061766', '6358557891934289924', 'DJ_SQ', '0', '2', '2019-11-25 14:03:51', '2019-11-25 14:03:51');
INSERT INTO `sys_org` VALUES ('6485243813450219521', '1', '连云港机构', '6467453551651061766', '6358604922035896325', 'DJ_LYG', '0', '2', '2019-11-25 14:04:21', '2019-11-25 14:04:21');
INSERT INTO `sys_org` VALUES ('6485245259814010885', '1', '淮安机构', '6467453551651061766', '6358604630154280961', 'DJ_HA', '0', '2', '2019-11-25 14:05:04', '2019-11-25 14:05:04');
INSERT INTO `sys_org` VALUES ('6485246603207639043', '1', '盐城机构', '6467453551651061766', '6358604359202242566', 'DJ_YC', '0', '2', '2019-11-25 14:05:28', '2019-11-25 14:05:28');
INSERT INTO `sys_org` VALUES ('6485247578215546880', '1', '扬州机构', '6467453551651061766', '6358603799556259840', 'DJ_YZ', '0', '2', '2019-11-25 14:06:05', '2019-11-25 14:06:05');
INSERT INTO `sys_org` VALUES ('6485248958644879368', '1', '镇江机构', '6467453551651061766', '6358570155114496007', 'DJ_ZJ', '0', '2', '2019-11-25 14:06:24', '2019-11-25 14:06:24');
INSERT INTO `sys_org` VALUES ('6485250087457914881', '1', '常州机构', '6467453551651061766', '6358605423884369922', 'DJ_CZ', '0', '2', '2019-11-25 14:06:51', '2019-11-25 14:06:51');
INSERT INTO `sys_org` VALUES ('6485250960376463366', '1', '泰州机构', '6467453551651061766', '6358557916512911367', 'DJ_TZ', '0', '2', '2019-11-25 14:07:21', '2019-11-25 14:07:21');
INSERT INTO `sys_org` VALUES ('6485252880486891520', '1', '无锡机构', '6467453551651061766', '6358605973380136967', 'DJ_WX', '0', '2', '2019-11-25 14:07:57', '2019-11-25 14:07:57');
INSERT INTO `sys_org` VALUES ('6485253813425930242', '1', '苏州机构', '6467453551651061766', '6358605163795578889', 'DJ_SZ', '0', '2', '2019-11-25 14:08:19', '2019-11-25 14:08:19');
INSERT INTO `sys_org` VALUES ('6485257116733931522', '1', '南通机构', '6467453551651061766', '6358606215349532727', 'DJ_NT', '0', '2', '2019-11-25 14:09:38', '2019-11-25 14:09:38');
INSERT INTO `sys_org` VALUES ('6485677257816801282', '1', '南京测试机构A', '6485235189961195520', '6358606215349534727', 'DJ_NJ_CC', '0', '3', '2019-11-25 16:56:35', '2019-11-25 16:56:35');
INSERT INTO `sys_org` VALUES ('6485770998959308808', '1', '盐城子机构', '6485246603207639043', '6358604359202242566', 'DJ_YC_YCZ-002', '0', '3', '2019-11-25 17:33:50', '2019-11-25 17:33:50');
INSERT INTO `sys_org` VALUES ('6485990961179525122', '1', '南京子机构', '6485235189961195520', '6358606215349534727', 'DJ_NJ_NJZ', '0', '3', '2019-11-25 19:01:14', '2019-11-25 19:01:14');
INSERT INTO `sys_org` VALUES ('6486179771716730881', '1', '无锡子机构', '6485252880486891520', '6358605973380136967', 'DJ_WX_wxz', '0', '3', '2019-11-25 20:16:16', '2019-11-25 20:16:16');
INSERT INTO `sys_org` VALUES ('6488291661578240002', '1', '苏州子机构', '6485253813425930242', '6358605163795578889', 'DJ_SZ_SZZ_002', '0', '3', '2019-11-26 10:15:27', '2019-11-26 10:15:27');
INSERT INTO `sys_org` VALUES ('6488294146996961280', '1', '苏州子机构2', '6485253813425930242', '6358605163795578889', 'DJ_SZ_SZZ002SZZ003', '0', '3', '2019-11-26 10:16:50', '2019-11-26 10:16:50');
INSERT INTO `sys_org` VALUES ('6488361720841502728', '1', 'suzhouzijigou', '6488291661578240002', '6358605163795578889', 'DJ_SZ_SZZ_002_333', '0', '4', '2019-11-26 14:15:20', '2019-11-26 14:15:21');
INSERT INTO `sys_org` VALUES ('6488364831672893441', '1', '22', '6488291661578240002', '6358605163795578889', 'DJ_SZ_SZZ_002_11', '0', '4', '2019-11-26 10:44:32', '2019-11-26 10:44:32');
INSERT INTO `sys_org` VALUES ('6488833186154414082', '1', '南京机构维修部门', '6485235189961195520', '6358606215349534727', 'DJ_NJ_fix', '1', '3', '2019-11-27 17:52:57', '2019-11-26 13:50:38');
INSERT INTO `sys_org` VALUES ('6488834984713912323', '1', '南京机构报废部门', '6485235189961195520', '6358606215349534727', 'DJ_NJ_delete', '1', '3', '2019-11-27 17:53:05', '2019-11-26 13:51:21');
INSERT INTO `sys_org` VALUES ('6488927037900718085', '1', '扬州子机构A', '6485247578215546880', '6358603799556259840', 'DJ_YZ_YZZ', '0', '3', '2019-11-26 16:52:19', '2019-11-26 14:27:56');
INSERT INTO `sys_org` VALUES ('6496771110904791042', '1', '1', '6467453551651061766', '6358538100104232960', 'DJ_1', '1', '2', '2019-11-28 18:25:00', '2019-11-28 18:24:53');
INSERT INTO `sys_org` VALUES ('6496771686782730244', '1', '2', '6467453551651061766', '6358538100104232960', 'DJ_2', '0', '2', '2019-11-28 18:25:07', '2019-11-28 18:25:07');
INSERT INTO `sys_org` VALUES ('6499207679406243841', '1', '南京子机构1100', '6499207679406243841', '6358606215349534727', 'DJ_NJ_NJZ11_00', '0', '4', '2019-11-29 10:34:34', '2019-11-29 10:34:34');
INSERT INTO `sys_org` VALUES ('6499214451235880963', '1', '南京子机构2211', '6485990961179525122', '6358606215349534727', 'DJ_NJ_NJZ_2211', '0', '4', '2019-11-29 10:36:16', '2019-11-29 10:36:16');

-- ----------------------------
-- Table structure for sys_param
-- ----------------------------
DROP TABLE IF EXISTS `sys_param`;
CREATE TABLE `sys_param` (
  `id` bigint(32) NOT NULL,
  `sys_key` varchar(32) NOT NULL,
  `sys_value` varchar(32) NOT NULL,
  `type` varchar(16) DEFAULT NULL,
  `is_del` int(1) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `sys_name` varchar(32) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统参数表';

-- ----------------------------
-- Records of sys_param
-- ----------------------------
INSERT INTO `sys_param` VALUES ('6362335975393198081', 'number', '1', 'dataType', '0', '数字', '2019-10-23 16:55:13', '2019-11-01 09:57:52');
INSERT INTO `sys_param` VALUES ('6362335975393198091', 'unknown', '0', 'devStatus', '0', '初始', '2019-10-23 16:55:13', '2019-11-01 09:57:48');
INSERT INTO `sys_param` VALUES ('6362335975393198092', 'On-line', '1', 'devStatus', '0', '在线', '2019-10-23 16:55:13', '2019-11-01 09:57:48');
INSERT INTO `sys_param` VALUES ('6406035141495357443', 'Fault', '2', 'devStatus', '1', '故障', '2019-11-03 09:29:39', '2019-11-03 09:29:39');
INSERT INTO `sys_param` VALUES ('6406039478867066885', 'Task-Allocation', '3', 'devStatus', '0', '调拨中', '2019-11-03 09:31:23', '2019-11-03 09:31:23');
INSERT INTO `sys_param` VALUES ('6406041198531706886', 'Task-Repair', '4', 'devStatus', '0', '维修中', '2019-11-03 09:32:04', '2019-11-03 09:32:04');
INSERT INTO `sys_param` VALUES ('6406042752018022408', 'Task-Borrow', '5', 'devStatus', '0', '借用中', '2019-11-03 09:32:41', '2019-11-03 09:32:41');
INSERT INTO `sys_param` VALUES ('6406045218142945282', 'Task-Scrap', '6', 'devStatus', '0', '报废', '2019-11-03 09:33:39', '2019-11-03 09:33:39');
INSERT INTO `sys_param` VALUES ('6406047970864660489', 'Check-Task', '7', 'devStatus', '1', '盘点中', '2019-11-03 09:34:45', '2019-11-03 09:34:45');
INSERT INTO `sys_param` VALUES ('6362335975393198082', 'date', '2', 'dataType', '0', '日期', '2019-10-23 16:55:13', '2019-11-01 09:57:52');
INSERT INTO `sys_param` VALUES ('6362335975393198089', 'sendTime', '30', 'readDevProp', '0', '读写器发送消息时间', '2019-11-28 15:14:37', '2019-11-01 09:57:52');
INSERT INTO `sys_param` VALUES ('6362335975393198084', 'text', '3', 'dataType', '0', '文本', '2019-10-23 16:55:13', '2019-11-01 09:57:52');
INSERT INTO `sys_param` VALUES ('6362335975393198085', 'money', '4', 'dataType', '0', '金额', '2019-10-23 16:55:13', '2019-11-01 09:57:52');

-- ----------------------------
-- Table structure for sys_region
-- ----------------------------
DROP TABLE IF EXISTS `sys_region`;
CREATE TABLE `sys_region` (
  `id` bigint(32) NOT NULL COMMENT 'id',
  `is_valid` int(1) NOT NULL COMMENT '1-有效,0-无效',
  `level` int(16) NOT NULL COMMENT '城市等级',
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` bigint(32) NOT NULL,
  `rank` varchar(16) NOT NULL COMMENT '级别，0-国,1:省份province,2:市city,3:区县district',
  `region_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '地区编码',
  `yz_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `is_del` int(1) DEFAULT '0' COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='行政区域表';

-- ----------------------------
-- Records of sys_region
-- ----------------------------
INSERT INTO `sys_region` VALUES ('6358538100104232960', '1', '1', '江苏省', '0', 'province', null, null, '0', '2019-10-21 15:23:41', '2019-10-21 11:39:25');
INSERT INTO `sys_region` VALUES ('6358557891934289924', '1', '2', '宿迁市', '6358538100104232960', 'city', '0527', '223800', '0', '2019-10-21 15:21:28', '2019-10-21 11:41:15');
INSERT INTO `sys_region` VALUES ('6358557916512911367', '1', '2', '泰州市', '6358538100104232960', 'city', '0523', '225300', '0', '2019-10-21 15:21:24', '2019-10-21 11:44:37');
INSERT INTO `sys_region` VALUES ('6358570155114496007', '1', '2', '镇江市', '6358538100104232960', 'city', '0511', '212004', '0', '2019-10-21 15:21:23', '2019-10-21 11:45:36');
INSERT INTO `sys_region` VALUES ('6358603799556259840', '1', '2', '扬州市', '6358538100104232960', 'city', '0514', '225002', '0', '2019-10-21 15:22:12', '2019-10-21 11:44:19');
INSERT INTO `sys_region` VALUES ('6358604359202242566', '1', '2', '盐城市', '6358538100104232960', 'city', '0515', '224005', '0', '2019-10-21 15:22:30', '2019-10-21 11:43:40');
INSERT INTO `sys_region` VALUES ('6358604630154280961', '1', '2', '淮安市', '6358538100104232960', 'city', '0517', '223001', '0', '2019-10-21 15:22:32', '2019-10-21 11:43:12');
INSERT INTO `sys_region` VALUES ('6358604922035896325', '1', '2', '连云港市', '6358538100104232960', 'city', '0518', '222002', '0', '2019-10-21 15:22:43', '2019-10-21 11:42:35');
INSERT INTO `sys_region` VALUES ('6358605163795578889', '1', '2', '苏州市', '6358538100104232960', 'city', '0512', '215002', '0', '2019-10-21 15:22:44', '2019-10-21 11:47:12');
INSERT INTO `sys_region` VALUES ('6358605423884369922', '1', '2', '常州市', '6358538100104232960', 'city', '0519', '213000', '0', '2019-10-21 15:22:55', '2019-10-21 11:46:01');
INSERT INTO `sys_region` VALUES ('6358605679359426568', '1', '2', '徐州市', '6358538100104232960', 'city', '0516', '221003', '0', '2019-10-21 20:21:17', '2019-10-21 11:40:11');
INSERT INTO `sys_region` VALUES ('6358605973380136967', '1', '2', '无锡市', '6358538100104232960', 'city', '0510', '214000', '0', '2019-10-21 20:21:18', '2019-10-21 11:46:41');
INSERT INTO `sys_region` VALUES ('6358606215349532727', '1', '2', '南通市', '6358538100104232960', 'city', '026', '210009', '0', '2019-11-11 09:46:43', '2019-10-21 11:47:53');
INSERT INTO `sys_region` VALUES ('6358606215349534727', '1', '2', '南京市', '6358538100104232960', 'city', '025', '210008', '0', '2019-10-21 20:21:20', '2019-10-21 11:47:53');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(32) NOT NULL COMMENT '角色ID',
  `role_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '角色描述',
  `is_del` int(1) DEFAULT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '角色名称',
  `org_id` bigint(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='角色表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('6376505245727457289', '管理员角色（勿删除）', '管理员所有权限', '0', '2019-11-20 10:38:18', '2019-11-27 12:00:05', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485278641398743047', '首页', '徐州账号首页角色', '0', '2019-11-25 14:18:11', '2019-11-25 14:18:11', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485312435912704009', '系统角色', '连云港账号系统角色', '0', '2019-11-25 14:31:37', '2019-11-25 14:31:37', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485320507473264645', '设备管理', '宿迁账号设备管理角色', '0', '2019-11-25 14:34:50', '2019-11-25 14:34:50', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485323068431400966', '线缆管理', '淮安账号线缆管理角色', '0', '2019-11-25 14:35:51', '2019-11-25 14:35:51', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485325879411998722', '设备管理及任务管理', '盐城账号任务管理角色', '0', '2019-11-25 14:36:58', '2019-11-25 16:08:10', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485383915618959363', '调拨任务', '手持机账号调拨任务', '0', '2019-11-25 15:00:01', '2019-11-25 15:18:37', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485516465314201604', '盐城管理角色', '盐城管理员基本角色权限', '0', '2019-11-25 15:52:42', '2019-11-25 17:30:26', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485690947941171203', '南京自己的角色全部权限', '南京自己的角色全部权限', '1', '2019-11-25 17:02:02', '2019-11-26 14:02:29', '6485235189961195520');
INSERT INTO `sys_role` VALUES ('6485793413026283522', '盐城归属角色', '盐城自己的角色', '0', '2019-11-25 17:42:44', '2019-11-25 17:42:44', '6485246603207639043');
INSERT INTO `sys_role` VALUES ('6485827252125696000', 'lyq测试任务管理角色', '测试任务管理', '1', '2019-11-25 17:56:11', '2019-11-25 17:58:02', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485832373496709127', '泰州admin角色', 'admin创建泰州账号角色', '0', '2019-11-25 17:58:13', '2019-11-25 18:01:51', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485845884775956482', '泰州自己创建的角色', '泰州自己创建的角色全部权限', '0', '2019-11-25 18:03:36', '2019-11-25 18:03:36', '6485250960376463366');
INSERT INTO `sys_role` VALUES ('6485930912671334401', '1', '1', '1', '2019-11-25 18:37:23', '2019-11-25 18:37:23', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6485938749980016649', '2', '2', '1', '2019-11-25 18:40:30', '2019-11-25 18:40:30', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6486155495714324488', '无锡机构权限', '无锡管理员角色', '0', '2019-11-25 20:06:37', '2019-11-25 21:10:08', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6486178117692948488', '无锡所属管理角色', '无锡账号管理角色', '0', '2019-11-25 20:15:37', '2019-11-25 20:15:37', '6485252880486891520');
INSERT INTO `sys_role` VALUES ('6486214202254950408', '手持机无锡子权限', '手持机无锡子账号的权限', '0', '2019-11-25 20:29:57', '2019-11-25 20:29:57', '6486179771716730881');
INSERT INTO `sys_role` VALUES ('6488271891726336009', '苏州管理员', '苏州地区管理员角色', '0', '2019-11-26 10:07:36', '2019-11-26 10:07:36', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6488288543280988169', '苏州子机构管理', '苏州子机构管理', '0', '2019-11-26 10:14:13', '2019-11-26 10:14:13', '6485253813425930242');
INSERT INTO `sys_role` VALUES ('6488855692705792001', '123机房', '345', '1', '2019-11-26 13:59:35', '2019-11-26 13:59:35', '6485235189961195520');
INSERT INTO `sys_role` VALUES ('6488860716475351046', '扬州管理员角色', '具备扬州地区管理员的所有权限', '0', '2019-11-26 14:01:35', '2019-11-26 14:01:35', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6488865713401364481', '南京机构创建角色全部权限', 'nanjing创建角色全部权限', '0', '2019-11-26 14:03:34', '2019-11-26 14:03:34', '6485235189961195520');
INSERT INTO `sys_role` VALUES ('6489417988607836163', '徐州手持机角色', '徐州手持机角色', '0', '2019-11-26 17:43:01', '2019-11-26 17:43:01', '6485237645810073608');
INSERT INTO `sys_role` VALUES ('6492537396175831044', '扬州手持机角色', '扬州角色', '0', '2019-11-27 14:22:34', '2019-11-27 14:22:34', '6485247578215546880');
INSERT INTO `sys_role` VALUES ('6492664098885468165', '扬州子机构', '扬州子机构角色', '0', '2019-11-27 15:12:54', '2019-11-27 15:12:54', '6485247578215546880');
INSERT INTO `sys_role` VALUES ('6496369371449917448', '镇江角色', '镇江管理', '0', '2019-11-28 15:45:15', '2019-11-28 15:45:15', '6467453551651061766');
INSERT INTO `sys_role` VALUES ('6496590095984885768', '角色1100', '角色112200', '1', '2019-11-28 17:12:57', '2019-11-28 17:15:34', '6485235189961195520');
INSERT INTO `sys_role` VALUES ('6496607113618391046', '设备系统管理', '设备系统管理1', '0', '2019-11-28 17:19:43', '2019-11-28 17:19:43', '6467453551651061766');

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `menu_id` bigint(32) DEFAULT NULL COMMENT '权限id',
  `role_id` bigint(32) DEFAULT NULL COMMENT '角色id',
  `is_del` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='角色权限关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('6445481942140846080', '6455752006366658560', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6460074908524216323', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6460077324233605121', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6397614850435973128', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6398633567059968000', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6398533179875000326', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6398740959235932168', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6397822132939653120', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6460078236956098562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6459866154700636166', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6460076233714565126', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6397614850435973128', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6398633567059968000', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6398533179875000326', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6398740959235932168', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6397822132939653120', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6462854721626439686', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6397614850435973128', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6443446506933452801', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6397614850435973128', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6460127457365196803', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6397614850435973128', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6398633567059968000', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6398533179875000326', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6398740959235932168', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6397822132939653120', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6468055692560302081', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6470112943223603209', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6470758515144130562', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6470164754118737929', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6474732462197964800', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6462949383670333445', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6485278641398743047', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6478628532225310727', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6485312435912704009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6485320507473264645', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189234', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6485323068431400966', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6485383915618959363', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6485325879411998722', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189234', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6485516465314201604', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189234', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6478628532225310727', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6485793413026283522', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189234', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6485832373496709127', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189234', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6478628532225310727', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6485845884775956482', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6486178117692948488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6486214202254950408', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6486155495714324488', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6488271891726336009', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6488288543280988169', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6488860716475351046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6488865713401364481', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6489417988607836163', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6397614850435973128', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6397822132939653120', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6398533179875000326', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6398633567059968000', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6398740959235932168', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6376505245727457289', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6492537396175831044', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6492664098885468165', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6397614850435973128', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6397822132939653120', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6398533179875000326', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6398633567059968000', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6398740959235932168', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376570542274641927', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376579561412362243', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6394172709797888009', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376589621450506242', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6394282149633064963', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376676240497049601', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6394716636032532483', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376678630956728329', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6438617621809070082', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376681057026048003', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6394799555828776961', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376684735892029445', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376686130959482883', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6394856285593927684', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376690357140193287', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376694948518952966', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6384121967741501449', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6412237584382033928', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448474122753146884', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448843446361784328', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376697197966131204', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6384176873068298248', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6409172284048670720', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448477581921484800', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448872141189283845', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376699363149742080', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6406517186982051847', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6406701921620459528', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6412930474175365126', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448815684515266568', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376701234186813440', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189122', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6412300597550120963', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448481152029163525', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448912755809320966', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376702771902545928', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387403138038497287', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6412303398799933441', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448483454576230401', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6448939430114754566', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999322', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189211', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189233', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189222', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189221', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189226', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189227', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6459201659967897608', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6459211480930713601', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6459216611738910721', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189223', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6459249724300984322', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6459252260261068806', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6459255389337681922', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6459555357235609604', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6456942803707494402', '6496369371449917448', '0');
INSERT INTO `sys_role_menu` VALUES ('6376498030350172161', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502845872537605', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376499924078428168', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500586149314567', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376500905839165445', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503081256878080', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501242809548802', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501510531973127', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376501753214402567', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376503338409656320', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502151757168645', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502389406433287', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376502616947425288', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208005', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6401412259989422087', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6401861328977264642', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6402009028750213123', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208006', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208007', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208008', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376741124702208009', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314245', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314247', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314248', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376742276290314249', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535367', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535388', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376746855547535399', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6481741889971159049', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232329', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232321', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232322', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376749492674232323', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141441', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141442', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141448', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376751149550141449', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6397614850435973128', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6397822132939653120', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6398533179875000326', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6398633567059968000', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6398740959235932168', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6441947240008253441', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6376757906489999361', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189155', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189110', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189112', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189176', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189179', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189183', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456728168043642887', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456731222042214408', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189166', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456815583085199362', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6456865115466629120', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6459549042878709766', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189178', '6496607113618391046', '0');
INSERT INTO `sys_role_menu` VALUES ('6387827589901189180', '6496607113618391046', '0');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(32) NOT NULL COMMENT '用户id',
  `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名账号',
  `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名字（昵称或者真实姓名，不同系统不同定义）',
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `is_quit` int(1) NOT NULL DEFAULT '0' COMMENT '是否离职 0：在职 1：离职',
  `email` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `state` int(1) NOT NULL COMMENT '用户状态,0:创建未认证（比如没有激活，没有输入验证码等等）--等待验证的用户 , 1:正常状态,2：用户被锁定.',
  `is_del` int(1) DEFAULT '0' COMMENT '是否删除 1：删除 0：未删除',
  `org_id` bigint(32) NOT NULL COMMENT '部门id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `work_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '工号',
  `user_type` int(1) DEFAULT NULL COMMENT '用户类型 1：PC 2：手持机 3：读写器',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('6365011668925153286', 'admin', '管理员', '9270202263c095fdd20109a250c269c8', '0', 'www.www', '1', '0', '6467453551651061766', '2019-11-18 19:41:23', '2019-10-18 01:24:03', '1', '1');
INSERT INTO `sys_user` VALUES ('6485282428477767682', 'xuzhou', '徐州', 'd5a6f16f19993e48b4e4f2915c399b2f', '0', 'xuzhou@126.com', '1', '1', '6485237645810073608', '2019-11-25 14:19:42', '2019-11-25 14:19:42', '001', '1');
INSERT INTO `sys_user` VALUES ('6485290243976069124', 'xvzhou', '徐州用户', '24091389316bebcd332e234836e7ee9f', '0', 'xvzhou@126.com', '1', '0', '6485237645810073608', '2019-11-25 14:22:48', '2019-11-25 20:18:50', '001', '1');
INSERT INTO `sys_user` VALUES ('6485315006937169928', 'lianyungang', '连云港用户', '4a09ef4708dc818627339e4805be27cd', '0', 'lianyungang@163.com', '1', '0', '6485243813450219521', '2019-11-25 14:32:38', '2019-11-25 20:20:39', '002', '1');
INSERT INTO `sys_user` VALUES ('6485348499754844160', 'suqian', '宿迁用户', '210b8ce87416d839e2dd8371743de466', '0', 'suqian@163.com', '1', '0', '6485242549538652161', '2019-11-25 14:45:57', '2019-11-28 17:20:49', '003', '1');
INSERT INTO `sys_user` VALUES ('6485351149128908804', 'huaian', '淮安用户', '37ee9ffd8a81806770696386e0031ca0', '0', 'huaian@163.com', '1', '0', '6485245259814010885', '2019-11-25 14:47:00', '2019-11-25 20:21:10', '004', '1');
INSERT INTO `sys_user` VALUES ('6485356546149580805', 'yancheng', '盐城用户', '38d237719a6ccf22b17f85906ac81f84', '0', 'yancheng@163.com', '1', '0', '6485246603207639043', '2019-11-25 14:49:09', '2019-11-25 20:20:54', '005', '1');
INSERT INTO `sys_user` VALUES ('6485386931113820164', 'yc', '盐城', '517f2f521359021858821e27f4cfe8d8', '0', 'yc@163.com', '1', '0', '6485246603207639043', '2019-11-25 15:01:13', '2019-11-25 15:01:13', '001', '2');
INSERT INTO `sys_user` VALUES ('6485443446801694727', 'nanjing', '南京用户', '19f204071fe4c7f2afcf466d1a8ce7ca', '0', 'nanjing@qq.com', '1', '0', '6485235189961195520', '2019-11-25 15:23:41', '2019-11-26 14:01:38', '100', '1');
INSERT INTO `sys_user` VALUES ('6485528702196121605', 'admin123', '测试手持机', '60725c068850e0dd9e4a147652cff375', '0', '123@163.com', '1', '0', '6485235189961195520', '2019-11-25 15:57:33', '2019-11-25 16:01:35', '123', '2');
INSERT INTO `sys_user` VALUES ('6485736082762629123', 'nanjing11', '南京账号', 'ed05cde52ca1d3c50b8bb9506869cbe3', '0', 'nanjing11@qq.com', '1', '0', '6485235189961195520', '2019-11-25 17:19:58', '2019-11-25 17:19:58', '002', '2');
INSERT INTO `sys_user` VALUES ('6485798902615244803', 'yanchengzi', '盐城子公司', '1713a7f44446338c15f85e7360526bbf', '0', 'yanchengzi@163.com', '1', '1', '6485770998959308808', '2019-11-25 17:44:55', '2019-11-25 17:44:55', '0010', '2');
INSERT INTO `sys_user` VALUES ('6485827239500840963', 'ycz', '盐城子', 'acf67b74d7d116a1fee3e9d6b6f18193', '0', 'ycz@163.com', '1', '0', '6485770998959308808', '2019-11-25 17:56:11', '2019-11-25 17:56:11', '0010', '2');
INSERT INTO `sys_user` VALUES ('6485836031600885761', 'taizhou', '泰州用户', '2733db9cc8abbe4c57591dad4f6e4c83', '0', 'taizhou@qq.com', '1', '0', '6485250960376463366', '2019-11-25 17:59:41', '2019-11-26 10:14:07', '008', '1');
INSERT INTO `sys_user` VALUES ('6485846011695595524', 'lyq', 'lyq', '05700c830c460dbe8ac5a3e252dd77e1', '0', 'lyq@163.com', '1', '0', '6485257116733931522', '2019-11-25 18:03:39', '2019-11-26 13:13:25', '110', '1');
INSERT INTO `sys_user` VALUES ('6485850104287723521', 'taizhou11', '泰州手持机', '0634445de830844cb53e06ab4cf8fce2', '0', 'taizhou11@qq.com', '1', '0', '6485250960376463366', '2019-11-25 18:05:16', '2019-11-25 18:05:16', '003', '2');
INSERT INTO `sys_user` VALUES ('6485948844495339520', 'yanchengzi', '盐城子用户', '1713a7f44446338c15f85e7360526bbf', '0', 'yanchengzi@163.com', '1', '0', '6485770998959308808', '2019-11-25 18:44:30', '2019-11-25 20:22:01', '00010', '1');
INSERT INTO `sys_user` VALUES ('6485996293314314246', 'nanjingz', '南京子机构账号', 'da56fcfa163e26761ae0ed4e1d8bcb16', '0', 'nanjingz@qq.com', '1', '0', '6485990961179525122', '2019-11-25 19:03:22', '2019-11-26 14:03:53', '003', '1');
INSERT INTO `sys_user` VALUES ('6486000590756249602', 'nanjingz11', '南京子机构手持机', '26ee323974619e9fa98bd940f1c33248', '0', 'nanjingz11@qq.com', '1', '0', '6485990961179525122', '2019-11-25 19:05:04', '2019-11-25 19:05:04', '003', '2');
INSERT INTO `sys_user` VALUES ('6486174281456680965', 'wuxi', '无锡用户', 'd310b6eba22b4e828b8c8620fcaccc73', '0', 'wuxi@126.com', '1', '0', '6485252880486891520', '2019-11-25 20:14:05', '2019-11-25 20:21:47', '007', '1');
INSERT INTO `sys_user` VALUES ('6486195311948595203', 'wuxizi', '无锡子', '653ea404537d5003e45db41aa508c1c3', '0', 'wuxizi@163.com', '1', '0', '6486179771716730881', '2019-11-25 20:22:27', '2019-11-26 10:12:46', '0014', '1');
INSERT INTO `sys_user` VALUES ('6486215979717099526', 'wxz', '手持机无锡子', '472d45e6e8ade5e5c21ce877193337bc', '0', 'wxz@163.com', '1', '0', '6486179771716730881', '2019-11-25 20:30:39', '2019-11-25 20:30:39', '0021', '2');
INSERT INTO `sys_user` VALUES ('6486276686647132162', 'suqian11', '宿迁手持机调入', '13326c3870f429e7554dc4b11a1acb62', '0', 'suqian11@qq.com', '1', '0', '6485242549538652161', '2019-11-25 20:54:47', '2019-11-25 20:54:47', '003', '2');
INSERT INTO `sys_user` VALUES ('6486308991973457921', 'wx', '手持机无锡', '9dd3880e0fc9c39f20684daa73c0f505', '1', 'wx@163.com', '1', '0', '6485252880486891520', '2019-11-25 21:07:37', '2019-11-26 10:41:16', '00132', '2');
INSERT INTO `sys_user` VALUES ('6488273658996326405', 'suzhou', '苏州', '1fabb6ab13683446de75edf42a851a6f', '0', 'suzhou@163.com', '1', '0', '6485253813425930242', '2019-11-26 10:08:18', '2019-11-26 10:12:35', '11111', '1');
INSERT INTO `sys_user` VALUES ('6488319415916953607', 'szz', '苏州子', 'cf889ce97c1e91ec7e2135e96b68a791', '0', 'szz@163.com', '1', '1', '6488291661578240002', '2019-11-26 10:26:29', '2019-11-26 10:26:29', '0002', '1');
INSERT INTO `sys_user` VALUES ('6488335381451243524', 'suzhouzi', '苏州子机构', 'ffab2850f82206377e896844a97a0f08', '0', 'suzhouzi@163.com', '1', '0', '6488291661578240002', '2019-11-26 10:32:50', '2019-11-26 10:32:50', '333', '1');
INSERT INTO `sys_user` VALUES ('6488344511863848966', 'suzhouzi2', '苏州子2', '0f16db76f19f655f461ffebbcc8f4e29', '0', 'suzhouzi2@163.com', '1', '0', '6488294146996961280', '2019-11-26 10:36:27', '2019-11-26 10:36:27', '3334', '1');
INSERT INTO `sys_user` VALUES ('6488677813153955847', 'lilan', '李岚', '3590220ad6031c04e08d51d983bff1e2', '0', 'lilan@163.com', '1', '1', '6488361720841502728', '2019-11-26 12:48:54', '2019-11-26 12:48:54', '3333', '1');
INSERT INTO `sys_user` VALUES ('6488681710794833927', '123', '123', '25f81082156e7158f9c3ce167e46de79', '0', '123@163.com', '1', '1', '6485235189961195520', '2019-11-26 12:50:27', '2019-11-26 12:50:27', '123123', '2');
INSERT INTO `sys_user` VALUES ('6488684695797104643', '123', '123', '25f81082156e7158f9c3ce167e46de79', '0', '123@163.com', '1', '1', '6485235189961195520', '2019-11-26 12:51:38', '2019-11-26 12:51:38', '123', '2');
INSERT INTO `sys_user` VALUES ('6488689042647941123', '123', '123', '25f81082156e7158f9c3ce167e46de79', '0', '123@154.com', '1', '1', '6485235189961195520', '2019-11-26 12:53:22', '2019-11-26 12:53:22', '123', '1');
INSERT INTO `sys_user` VALUES ('6488690786345943047', '1233', '123', '0e34cb795b229f09d1727cd61e01ddd4', '0', '123@163.com', '1', '1', '6485677257816801282', '2019-11-26 12:54:03', '2019-11-26 12:54:03', '123', '2');
INSERT INTO `sys_user` VALUES ('6488693990165053449', '1231', '121', '90491302427255d1597c5c7bc75a668d', '0', '123@163.com', '1', '1', '6485235189961195520', '2019-11-26 12:55:20', '2019-11-26 12:55:20', '123123', '2');
INSERT INTO `sys_user` VALUES ('6488696146876170247', '12333', '123', '70b40911138868e4a46649450b7ed66e', '0', '123@163.com', '1', '1', '6485235189961195520', '2019-11-26 12:56:11', '2019-11-26 12:56:11', '123123', '2');
INSERT INTO `sys_user` VALUES ('6488698592071516163', '222', '222', '8101c07f4ff619f632cf61043909cd06', '0', '123@163.com', '1', '1', '6485235189961195520', '2019-11-26 12:57:09', '2019-11-26 12:57:09', '222', '2');
INSERT INTO `sys_user` VALUES ('6488700066201600006', '222', '11', 'e0b7bea54085cc52a82b4400ea86ab6f', '0', '123@163.com', '1', '1', '6485235189961195520', '2019-11-26 12:57:45', '2019-11-26 12:57:45', '33', '2');
INSERT INTO `sys_user` VALUES ('6488705943092592640', '12', '12', '8cf336813149fdf70711af01e605f825', '0', '123@154.com', '1', '1', '6485235189961195520', '2019-11-26 13:00:05', '2019-11-26 13:00:05', '12', '1');
INSERT INTO `sys_user` VALUES ('6488716483126886407', '11', '11', 'eb3055a433f5c3efbe6ef9dc7e48fb5e', '0', '123@154.com', '1', '1', '6485235189961195520', '2019-11-26 13:04:16', '2019-11-26 13:04:16', '11', '1');
INSERT INTO `sys_user` VALUES ('6488721168583884800', '1111', '111', '98084beb240c78afc3bf8af4fde8aac0', '0', '123@163.com', '1', '1', '6485235189961195520', '2019-11-26 13:06:08', '2019-11-26 13:06:08', '111', '2');
INSERT INTO `sys_user` VALUES ('6488858352901160962', '123', '123', '25f81082156e7158f9c3ce167e46de79', '0', '123@qq.com', '1', '1', '6485235189961195520', '2019-11-26 14:00:38', '2019-11-26 14:00:38', '009', '1');
INSERT INTO `sys_user` VALUES ('6488862866978897928', 'yangzhou', '扬州', 'fee7f0f277f70f812dd07eab91d190ff', '0', 'yangzhou@163.com', '1', '0', '6485247578215546880', '2019-11-26 14:02:26', '2019-11-26 14:02:26', '999', '1');
INSERT INTO `sys_user` VALUES ('6488873698936750089', 'nanjingfix', '南京维修部门用户', 'f4d0659bf0955ed48956b7be67dded35', '0', 'nanjingfix@qq.com', '1', '0', '6488833186154414082', '2019-11-26 14:06:44', '2019-11-26 14:06:44', '1009', '1');
INSERT INTO `sys_user` VALUES ('6488876448512737283', 'nanjingdelete', '南京报废部门用户', 'd0723af1a9e9d329e78aac5d8fff8b0f', '0', 'nanjingdelete@qq.com', '1', '0', '6488834984713912323', '2019-11-26 14:07:50', '2019-11-26 14:07:50', '1008', '1');
INSERT INTO `sys_user` VALUES ('6488928077375078402', '12342', 'rer', '3b39739829f4316601b8999d6de2b781', '0', '232@126.com', '1', '1', '6485770998959308808', '2019-11-26 14:28:21', '2019-11-26 14:28:21', '3232', '2');
INSERT INTO `sys_user` VALUES ('6488929631238881280', 'yangzhouzi', '扬州子机构', '8ec992c04afcf0f0cf2558701f00b82a', '0', '123@154.com', '1', '0', '6485247578215546880', '2019-11-26 14:28:58', '2019-11-26 14:28:58', '123', '1');
INSERT INTO `sys_user` VALUES ('6489353026136965120', '112211', '顾超燃', '08a68561bd2f6035e6696b6c083b3107', '0', 'guchaorao@qq.com', '1', '0', '6485237645810073608', '2019-11-26 17:17:12', '2019-11-26 17:17:12', '0023', '1');
INSERT INTO `sys_user` VALUES ('6489420896392970244', '1122110', '1122110', '4e5b6fef99859ae28bbcfe54b0d50f66', '0', '1122110@qq.com', '1', '0', '6485237645810073608', '2019-11-26 17:44:10', '2019-11-26 17:44:10', '009', '2');
INSERT INTO `sys_user` VALUES ('6492539662358282243', 'yz', '扬州手持机', '807a4890c8bc38d0b19cb372b809b830', '0', 'yz@163.com', '1', '0', '6485247578215546880', '2019-11-27 14:23:28', '2019-11-27 14:23:28', '0003', '2');
INSERT INTO `sys_user` VALUES ('6492726861443891204', 'yzz', '扬州子', 'd02873b8fd250e473cbbd1953feb8860', '0', 'yzz@163.com', '1', '0', '6488927037900718085', '2019-11-27 15:37:51', '2019-11-27 15:37:51', '0002', '2');
INSERT INTO `sys_user` VALUES ('6496368254842306569', 'zhenjiang', '镇江机构1128', '9cb509f7f7947ea3b87e77ab3792f959', '0', 'zhenjiang@163.com', '1', '0', '6485248958644879368', '2019-11-28 15:44:48', '2019-11-28 15:45:25', '9999', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(32) NOT NULL COMMENT '用户id',
  `role_id` bigint(32) NOT NULL COMMENT '角色id',
  `is_del` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除 1：删除 0：删除'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='用户角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('6438984498334924807', '6439027942726041609', '1');
INSERT INTO `sys_user_role` VALUES ('6439065180260270083', '6405092793248645128', '1');
INSERT INTO `sys_user_role` VALUES ('6365011668925153286', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6442496016452157448', '6405092793248645128', '0');
INSERT INTO `sys_user_role` VALUES ('6443447845084200967', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6445372893382574087', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6445610130514903042', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6446535797385461765', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6446772048646635529', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6446775574043033607', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6446845163376476166', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6448404923238318087', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6449178221110886409', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6459847996510044165', '6459866154700636166', '0');
INSERT INTO `sys_user_role` VALUES ('6460086166707240968', '6460074908524216323', '0');
INSERT INTO `sys_user_role` VALUES ('6460128949488844804', '6460127457365196803', '0');
INSERT INTO `sys_user_role` VALUES ('6460444345253232640', '6460076233714565126', '0');
INSERT INTO `sys_user_role` VALUES ('6462858622329159688', '6462854721626439686', '0');
INSERT INTO `sys_user_role` VALUES ('6462883963642839047', '6459866154700636166', '0');
INSERT INTO `sys_user_role` VALUES ('6462915118639349764', '6462854721626439686', '0');
INSERT INTO `sys_user_role` VALUES ('6463077723710423048', '6459866154700636166', '0');
INSERT INTO `sys_user_role` VALUES ('6463517876362936324', '6462854721626439686', '0');
INSERT INTO `sys_user_role` VALUES ('6463911566696775683', '6462854721626439686', '0');
INSERT INTO `sys_user_role` VALUES ('6463961347968204809', '6462854721626439686', '0');
INSERT INTO `sys_user_role` VALUES ('6466730536688680963', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6467262708638023683', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6468061736887910404', '6468055692560302081', '0');
INSERT INTO `sys_user_role` VALUES ('6468120083347537927', '6468114011756953606', '0');
INSERT INTO `sys_user_role` VALUES ('6468171515874508808', '6468114011756953606', '0');
INSERT INTO `sys_user_role` VALUES ('6468216985233653762', '6460127457365196803', '0');
INSERT INTO `sys_user_role` VALUES ('6470121723537653763', '6470112943223603209', '0');
INSERT INTO `sys_user_role` VALUES ('6470136289181040641', '6470112943223603209', '0');
INSERT INTO `sys_user_role` VALUES ('6470167273846865927', '6470164754118737929', '0');
INSERT INTO `sys_user_role` VALUES ('6470762529344716801', '6470758515144130562', '0');
INSERT INTO `sys_user_role` VALUES ('6470843603269713928', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6471127217366630403', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6471178822489210881', '6470112943223603209', '0');
INSERT INTO `sys_user_role` VALUES ('6474411939274424329', '6468055692560302081', '0');
INSERT INTO `sys_user_role` VALUES ('6474414408083701763', '6468055692560302081', '0');
INSERT INTO `sys_user_role` VALUES ('6474523408607477761', '6470164754118737929', '0');
INSERT INTO `sys_user_role` VALUES ('6474623997286809609', '6470758515144130562', '0');
INSERT INTO `sys_user_role` VALUES ('6474627343250882563', '6470758515144130562', '0');
INSERT INTO `sys_user_role` VALUES ('6474739333852037124', '6474732462197964800', '0');
INSERT INTO `sys_user_role` VALUES ('6474786222941143042', '6474732462197964800', '0');
INSERT INTO `sys_user_role` VALUES ('6474881776610181125', '6470164754118737929', '0');
INSERT INTO `sys_user_role` VALUES ('6474998600056176647', '6470164754118737929', '0');
INSERT INTO `sys_user_role` VALUES ('6475049804748554248', '6470758515144130562', '0');
INSERT INTO `sys_user_role` VALUES ('6475064529691607049', '6470758515144130562', '0');
INSERT INTO `sys_user_role` VALUES ('6481082625241907207', '6468055692560302081', '0');
INSERT INTO `sys_user_role` VALUES ('6481257143939891208', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6481259015941652489', '6470758515144130562', '0');
INSERT INTO `sys_user_role` VALUES ('6481841352815411205', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6484487822869790721', '6443446506933452801', '0');
INSERT INTO `sys_user_role` VALUES ('6485290243976069124', '6485278641398743047', '0');
INSERT INTO `sys_user_role` VALUES ('6485315006937169928', '6485312435912704009', '0');
INSERT INTO `sys_user_role` VALUES ('6485348499754844160', '6496607113618391046', '0');
INSERT INTO `sys_user_role` VALUES ('6485351149128908804', '6485323068431400966', '0');
INSERT INTO `sys_user_role` VALUES ('6485356546149580805', '6485516465314201604', '0');
INSERT INTO `sys_user_role` VALUES ('6485386931113820164', '6485383915618959363', '0');
INSERT INTO `sys_user_role` VALUES ('6485443446801694727', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6485528702196121605', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6485736082762629123', '6485690947941171203', '0');
INSERT INTO `sys_user_role` VALUES ('6485827239500840963', '6485793413026283522', '0');
INSERT INTO `sys_user_role` VALUES ('6485836031600885761', '6485832373496709127', '0');
INSERT INTO `sys_user_role` VALUES ('6485846011695595524', '6485278641398743047', '0');
INSERT INTO `sys_user_role` VALUES ('6485850104287723521', '6485845884775956482', '0');
INSERT INTO `sys_user_role` VALUES ('6485948844495339520', '6485793413026283522', '0');
INSERT INTO `sys_user_role` VALUES ('6485996293314314246', '6488865713401364481', '0');
INSERT INTO `sys_user_role` VALUES ('6486000590756249602', '6485690947941171203', '0');
INSERT INTO `sys_user_role` VALUES ('6486174281456680965', '6486155495714324488', '0');
INSERT INTO `sys_user_role` VALUES ('6486195311948595203', '6486178117692948488', '0');
INSERT INTO `sys_user_role` VALUES ('6486215979717099526', '6486214202254950408', '0');
INSERT INTO `sys_user_role` VALUES ('6486276686647132162', '6486214202254950408', '0');
INSERT INTO `sys_user_role` VALUES ('6486308991973457921', '6486178117692948488', '0');
INSERT INTO `sys_user_role` VALUES ('6488273658996326405', '6488271891726336009', '0');
INSERT INTO `sys_user_role` VALUES ('6488335381451243524', '6488288543280988169', '0');
INSERT INTO `sys_user_role` VALUES ('6488344511863848966', '6488288543280988169', '0');
INSERT INTO `sys_user_role` VALUES ('6488862866978897928', '6488860716475351046', '0');
INSERT INTO `sys_user_role` VALUES ('6488873698936750089', '6488865713401364481', '0');
INSERT INTO `sys_user_role` VALUES ('6488876448512737283', '6488865713401364481', '0');
INSERT INTO `sys_user_role` VALUES ('6488929631238881280', '6488860716475351046', '0');
INSERT INTO `sys_user_role` VALUES ('6489353026136965120', '6376505245727457289', '0');
INSERT INTO `sys_user_role` VALUES ('6489420896392970244', '6489417988607836163', '0');
INSERT INTO `sys_user_role` VALUES ('6492539662358282243', '6492537396175831044', '0');
INSERT INTO `sys_user_role` VALUES ('6492726861443891204', '6492664098885468165', '0');
INSERT INTO `sys_user_role` VALUES ('6496368254842306569', '6496369371449917448', '0');
