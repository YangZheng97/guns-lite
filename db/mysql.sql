DROP TABLE IF EXISTS `t_sys_cfg`;
CREATE TABLE `t_sys_cfg` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `cfg_name` varchar(100) DEFAULT NULL COMMENT '参数名',
  `cfg_value` varchar(3000) DEFAULT NULL COMMENT '参数值',
  `cfg_desc` varchar(200) DEFAULT NULL COMMENT '参数描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8 COMMENT='系统参数';

-- ----------------------------
-- Records of t_sys_cfg
-- ----------------------------
INSERT INTO `t_sys_cfg` VALUES ('1', 'JS_API_TICKET', 'test', '微信JSAPI_TICKET(produt:kgt8ON7yVITDhtdwci0qeYBa_xOxkaEccepDVZel0heq1M9pKgrfFWOlX2MfHEt122psCpElf4V5eePHPouJPg)');
INSERT INTO `t_sys_cfg` VALUES ('2', 'ACCESS_TOKEN', 'test', '微信Token');

-- ----------------------------
-- Table structure for `t_sys_dept`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dept`;
CREATE TABLE `t_sys_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父部门id',
  `pids` varchar(255) DEFAULT NULL COMMENT '父级ids',
  `simplename` varchar(45) DEFAULT NULL COMMENT '简称',
  `fullname` varchar(255) DEFAULT NULL COMMENT '全称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '版本（乐观锁保留字段）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of t_sys_dept
-- ----------------------------
INSERT INTO `t_sys_dept` VALUES ('24', '1', '0', '[0],', '总公司', '总公司', '', null);
INSERT INTO `t_sys_dept` VALUES ('25', '2', '24', '[0],[24],', '开发部', '开发部', '', null);
INSERT INTO `t_sys_dept` VALUES ('26', '3', '24', '[0],[24],', '运营部', '运营部', '', null);
INSERT INTO `t_sys_dept` VALUES ('27', '4', '24', '[0],[24],', '战略部', '战略部', '', null);

-- ----------------------------
-- Table structure for `t_sys_dict`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dict`;
CREATE TABLE `t_sys_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` varchar(32) DEFAULT NULL COMMENT '排序',
  `pid` int(11) DEFAULT NULL COMMENT '父级字典',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of t_sys_dict
-- ----------------------------
INSERT INTO `t_sys_dict` VALUES ('16', '0', '0', '状态', null);
INSERT INTO `t_sys_dict` VALUES ('17', '1', '16', '启用', null);
INSERT INTO `t_sys_dict` VALUES ('18', '2', '16', '禁用', null);
INSERT INTO `t_sys_dict` VALUES ('29', '0', '0', '性别', null);
INSERT INTO `t_sys_dict` VALUES ('30', '1', '29', '男', null);
INSERT INTO `t_sys_dict` VALUES ('31', '2', '29', '女', null);
INSERT INTO `t_sys_dict` VALUES ('35', '0', '0', '账号状态', null);
INSERT INTO `t_sys_dict` VALUES ('36', '1', '35', '启用', null);
INSERT INTO `t_sys_dict` VALUES ('37', '2', '35', '冻结', null);
INSERT INTO `t_sys_dict` VALUES ('38', '3', '35', '已删除', null);
INSERT INTO `t_sys_dict` VALUES ('39', '0', '0', '银行卡类型', null);
INSERT INTO `t_sys_dict` VALUES ('40', '0', '39', '借记卡', null);
INSERT INTO `t_sys_dict` VALUES ('41', '1', '39', '信用卡', null);
INSERT INTO `t_sys_dict` VALUES ('44', '0', '0', '联系人关系', null);
INSERT INTO `t_sys_dict` VALUES ('45', '1', '44', '父子', null);
INSERT INTO `t_sys_dict` VALUES ('46', '2', '44', '母子', null);
INSERT INTO `t_sys_dict` VALUES ('47', '3', '44', '配偶', null);
INSERT INTO `t_sys_dict` VALUES ('48', '4', '44', '朋友', null);
INSERT INTO `t_sys_dict` VALUES ('49', '5', '44', '子女', null);
INSERT INTO `t_sys_dict` VALUES ('50', '6', '44', '兄弟姐妹', null);
INSERT INTO `t_sys_dict` VALUES ('53', '0', '0', '证件类型', null);
INSERT INTO `t_sys_dict` VALUES ('54', '1', '53', '身份证', null);
INSERT INTO `t_sys_dict` VALUES ('55', '2', '53', '护照', null);
INSERT INTO `t_sys_dict` VALUES ('56', '0', '0', '学历类型', null);
INSERT INTO `t_sys_dict` VALUES ('57', '1', '56', '博士', null);
INSERT INTO `t_sys_dict` VALUES ('58', '2', '56', '硕士', null);
INSERT INTO `t_sys_dict` VALUES ('59', '3', '56', '本科', null);
INSERT INTO `t_sys_dict` VALUES ('60', '4', '56', '专科', null);
INSERT INTO `t_sys_dict` VALUES ('61', '5', '56', '高中及以下', null);

-- ----------------------------
-- Table structure for `t_sys_expense`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_expense`;
CREATE TABLE `t_sys_expense` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `money` decimal(20,2) DEFAULT NULL COMMENT '报销金额',
  `desc` varchar(255) DEFAULT '' COMMENT '描述',
  `createtime` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL COMMENT '状态: 1.待提交  2:待审核   3.审核通过 4:驳回',
  `userid` int(11) DEFAULT NULL COMMENT '用户id',
  `processId` varchar(255) DEFAULT NULL COMMENT '流程定义id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='报销表';

-- ----------------------------
-- Records of t_sys_expense
-- ----------------------------

-- ----------------------------
-- Table structure for `t_sys_login_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_login_log`;
CREATE TABLE `t_sys_login_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '管理员id',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否执行成功',
  `message` text COMMENT '具体消息',
  `ip` varchar(255) DEFAULT NULL COMMENT '登录ip',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=372 DEFAULT CHARSET=utf8 COMMENT='登录记录';

-- ----------------------------
-- Records of t_sys_login_log
-- ----------------------------
INSERT INTO `t_sys_login_log` VALUES ('360', '登录日志', '1', '2018-04-05 21:15:22', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('361', '退出日志', '1', '2018-04-05 21:17:17', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('362', '登录日志', '1', '2018-04-05 21:17:23', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('363', '登录日志', '1', '2018-04-05 21:18:26', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('364', '退出日志', '1', '2018-04-05 21:18:49', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('365', '登录日志', '1', '2018-04-05 21:18:50', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('366', '退出日志', '1', '2018-04-05 21:21:01', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('367', '登录日志', '1', '2018-04-05 21:21:02', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('368', '登录日志', '1', '2018-04-05 21:21:53', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('369', '退出日志', '1', '2018-04-05 21:24:33', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('370', '登录日志', '1', '2018-04-05 21:25:27', '成功', null, '0:0:0:0:0:0:0:1');
INSERT INTO `t_sys_login_log` VALUES ('371', '登录日志', '1', '2018-04-05 21:45:23', '成功', null, '0:0:0:0:0:0:0:1');

-- ----------------------------
-- Table structure for `t_sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_menu`;
CREATE TABLE `t_sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `code` varchar(255) DEFAULT NULL COMMENT '菜单编号',
  `pcode` varchar(255) DEFAULT NULL COMMENT '菜单父编号',
  `pcodes` varchar(255) DEFAULT NULL COMMENT '当前菜单的所有父菜单编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名称',
  `icon` varchar(255) DEFAULT NULL COMMENT '菜单图标',
  `url` varchar(255) DEFAULT NULL COMMENT 'url地址',
  `num` int(65) DEFAULT NULL COMMENT '菜单排序号',
  `levels` int(65) DEFAULT NULL COMMENT '菜单层级',
  `ismenu` int(11) DEFAULT NULL COMMENT '是否是菜单（1：是  0：不是）',
  `tips` varchar(255) DEFAULT NULL COMMENT '备注',
  `status` int(65) DEFAULT NULL COMMENT '菜单状态 :  1:启用   0:不启用',
  `isopen` int(11) DEFAULT NULL COMMENT '是否打开:    1:打开   0:不打开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of t_sys_menu
-- ----------------------------
INSERT INTO `t_sys_menu` VALUES ('105', 'system', '0', '[0],', '系统管理', 'fa-cog', '#', '4', '1', '1', null, '1', '1');
INSERT INTO `t_sys_menu` VALUES ('106', 'mgr', 'system', '[0],[system],', '用户管理', '', '/mgr', '1', '2', '1', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('107', 'mgr_add', 'mgr', '[0],[system],[mgr],', '添加用户', null, '/mgr/add', '1', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('108', 'mgr_edit', 'mgr', '[0],[system],[mgr],', '修改用户', null, '/mgr/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('109', 'mgr_delete', 'mgr', '[0],[system],[mgr],', '删除用户', null, '/mgr/delete', '3', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('110', 'mgr_reset', 'mgr', '[0],[system],[mgr],', '重置密码', null, '/mgr/reset', '4', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('111', 'mgr_freeze', 'mgr', '[0],[system],[mgr],', '冻结用户', null, '/mgr/freeze', '5', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('112', 'mgr_unfreeze', 'mgr', '[0],[system],[mgr],', '解除冻结用户', null, '/mgr/unfreeze', '6', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('113', 'mgr_setRole', 'mgr', '[0],[system],[mgr],', '分配角色', null, '/mgr/setRole', '7', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('114', 'role', 'system', '[0],[system],', '角色管理', null, '/role', '2', '2', '1', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('115', 'role_add', 'role', '[0],[system],[role],', '添加角色', null, '/role/add', '1', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('116', 'role_edit', 'role', '[0],[system],[role],', '修改角色', null, '/role/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('117', 'role_remove', 'role', '[0],[system],[role],', '删除角色', null, '/role/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('118', 'role_setAuthority', 'role', '[0],[system],[role],', '配置权限', null, '/role/setAuthority', '4', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('119', 'menu', 'system', '[0],[system],', '菜单管理', null, '/menu', '4', '2', '1', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('120', 'menu_add', 'menu', '[0],[system],[menu],', '添加菜单', null, '/menu/add', '1', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('121', 'menu_edit', 'menu', '[0],[system],[menu],', '修改菜单', null, '/menu/edit', '2', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('122', 'menu_remove', 'menu', '[0],[system],[menu],', '删除菜单', null, '/menu/remove', '3', '3', '0', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('128', 'log', 'system', '[0],[system],', '业务日志', null, '/log', '6', '2', '1', null, '1', '0');
INSERT INTO `t_sys_menu` VALUES ('130', 'druid', 'system', '[0],[system],', '监控管理', null, '/druid', '7', '2', '1', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('131', 'dept', 'system', '[0],[system],', '部门管理', null, '/dept', '3', '2', '1', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('132', 'dict', 'system', '[0],[system],', '字典管理', null, '/dict', '4', '2', '1', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('133', 'loginLog', 'system', '[0],[system],', '登录日志', null, '/loginLog', '6', '2', '1', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('134', 'log_clean', 'log', '[0],[system],[log],', '清空日志', null, '/log/delLog', '3', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('135', 'dept_add', 'dept', '[0],[system],[dept],', '添加部门', null, '/dept/add', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('136', 'dept_update', 'dept', '[0],[system],[dept],', '修改部门', null, '/dept/update', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('137', 'dept_delete', 'dept', '[0],[system],[dept],', '删除部门', null, '/dept/delete', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('138', 'dict_add', 'dict', '[0],[system],[dict],', '添加字典', null, '/dict/add', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('139', 'dict_update', 'dict', '[0],[system],[dict],', '修改字典', null, '/dict/update', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('140', 'dict_delete', 'dict', '[0],[system],[dict],', '删除字典', null, '/dict/delete', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('141', 'notice', 'system', '[0],[system],', '通知管理', null, '/notice', '9', '2', '1', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('142', 'notice_add', 'notice', '[0],[system],[notice],', '添加通知', null, '/notice/add', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('143', 'notice_update', 'notice', '[0],[system],[notice],', '修改通知', null, '/notice/update', '2', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('144', 'notice_delete', 'notice', '[0],[system],[notice],', '删除通知', null, '/notice/delete', '3', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('145', 'hello', '0', '[0],', '通知', 'fa-rocket', '/notice/hello', '1', '1', '1', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('148', 'code', '0', '[0],', '代码生成', 'fa-code', '/code', '3', '1', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('149', 'api_mgr', '0', '[0],', '接口文档', 'fa-leaf', '/swagger-ui.html', '2', '1', '1', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('150', 'to_menu_edit', 'menu', '[0],[system],[menu],', '菜单编辑跳转', '', '/menu/menu_edit', '4', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('151', 'menu_list', 'menu', '[0],[system],[menu],', '菜单列表', '', '/menu/list', '5', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('152', 'to_dept_update', 'dept', '[0],[system],[dept],', '修改部门跳转', '', '/dept/dept_update', '4', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('153', 'dept_list', 'dept', '[0],[system],[dept],', '部门列表', '', '/dept/list', '5', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('154', 'dept_detail', 'dept', '[0],[system],[dept],', '部门详情', '', '/dept/detail', '6', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('155', 'to_dict_edit', 'dict', '[0],[system],[dict],', '修改菜单跳转', '', '/dict/dict_edit', '4', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('156', 'dict_list', 'dict', '[0],[system],[dict],', '字典列表', '', '/dict/list', '5', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('157', 'dict_detail', 'dict', '[0],[system],[dict],', '字典详情', '', '/dict/detail', '6', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('158', 'log_list', 'log', '[0],[system],[log],', '日志列表', '', '/log/list', '2', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('159', 'log_detail', 'log', '[0],[system],[log],', '日志详情', '', '/log/detail', '3', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('160', 'del_login_log', 'loginLog', '[0],[system],[loginLog],', '清空登录日志', '', '/loginLog/delLoginLog', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('161', 'login_log_list', 'loginLog', '[0],[system],[loginLog],', '登录日志列表', '', '/loginLog/list', '2', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('162', 'to_role_edit', 'role', '[0],[system],[role],', '修改角色跳转', '', '/role/role_edit', '5', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('163', 'to_role_assign', 'role', '[0],[system],[role],', '角色分配跳转', '', '/role/role_assign', '6', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('164', 'role_list', 'role', '[0],[system],[role],', '角色列表', '', '/role/list', '7', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('165', 'to_assign_role', 'mgr', '[0],[system],[mgr],', '分配角色跳转', '', '/mgr/role_assign', '8', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('166', 'to_user_edit', 'mgr', '[0],[system],[mgr],', '编辑用户跳转', '', '/mgr/user_edit', '9', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('167', 'mgr_list', 'mgr', '[0],[system],[mgr],', '用户列表', '', '/mgr/list', '10', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('168', 'expense', '0', '[0],', '报销管理', 'fa-clone', '#', '5', '1', '1', null, '0', null);
INSERT INTO `t_sys_menu` VALUES ('169', 'expense_fill', 'expense', '[0],[expense],', '报销申请', '', '/expense', '1', '2', '1', null, '0', null);
INSERT INTO `t_sys_menu` VALUES ('170', 'expense_progress', 'expense', '[0],[expense],', '报销审批', '', '/process', '2', '2', '1', null, '0', null);
INSERT INTO `t_sys_menu` VALUES ('199', 'cfg_add', 'cfg', '[0],[system],[cfg],', '添加系统参数', '', '/cfg/add', '1', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('200', 'cfg_update', 'cfg', '[0],[system],[cfg],', '修改系统参数', '', '/cfg/update', '2', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('201', 'cfg_delete', 'cfg', '[0],[system],[cfg],', '删除系统参数', '', '/cfg/delete', '3', '3', '0', null, '1', null);
INSERT INTO `t_sys_menu` VALUES ('202', 'task', 'system', '[0],[system],', '任务管理', '', '/task', '11', '2', '1', '', '1', null);
INSERT INTO `t_sys_menu` VALUES ('203', 'task_add', 'task', '[0],[system],[task],', '添加任务', '', '/task/add', '1', '3', '0', '', '1', null);
INSERT INTO `t_sys_menu` VALUES ('204', 'task_update', 'task', '[0],[system],[task],', '修改任务', '', '/task/update', '2', '3', '0', '', '1', null);
INSERT INTO `t_sys_menu` VALUES ('205', 'task_delete', 'task', '[0],[system],[task],', '删除任务', '', '/task/delete', '3', '3', '0', '', '1', null);

-- ----------------------------
-- Table structure for `t_sys_notice`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_notice`;
CREATE TABLE `t_sys_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `content` text COMMENT '内容',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `creater` int(11) DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='通知表';

-- ----------------------------
-- Records of t_sys_notice
-- ----------------------------
INSERT INTO `t_sys_notice` VALUES ('6', '你好', '10', '欢迎使用guns-lite后台管理系统', '2017-01-11 08:53:20', '1');

-- ----------------------------
-- Table structure for `t_sys_operation_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_operation_log`;
CREATE TABLE `t_sys_operation_log` (
  `id` int(65) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `logtype` varchar(255) DEFAULT NULL COMMENT '日志类型',
  `logname` varchar(255) DEFAULT NULL COMMENT '日志名称',
  `userid` int(65) DEFAULT NULL COMMENT '用户id',
  `classname` varchar(255) DEFAULT NULL COMMENT '类名称',
  `method` text COMMENT '方法名称',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `succeed` varchar(255) DEFAULT NULL COMMENT '是否成功',
  `message` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='操作日志';


-- ----------------------------
-- Table structure for `t_sys_relation`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_relation`;
CREATE TABLE `t_sys_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `menuid` bigint(11) DEFAULT NULL COMMENT '菜单id',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of t_sys_relation
-- ----------------------------
INSERT INTO `t_sys_relation` VALUES ('1', '105', '1');
INSERT INTO `t_sys_relation` VALUES ('2', '106', '1');
INSERT INTO `t_sys_relation` VALUES ('3', '107', '1');
INSERT INTO `t_sys_relation` VALUES ('4', '108', '1');
INSERT INTO `t_sys_relation` VALUES ('5', '109', '1');
INSERT INTO `t_sys_relation` VALUES ('6', '110', '1');
INSERT INTO `t_sys_relation` VALUES ('7', '111', '1');
INSERT INTO `t_sys_relation` VALUES ('8', '112', '1');
INSERT INTO `t_sys_relation` VALUES ('9', '113', '1');
INSERT INTO `t_sys_relation` VALUES ('10', '165', '1');
INSERT INTO `t_sys_relation` VALUES ('11', '166', '1');
INSERT INTO `t_sys_relation` VALUES ('12', '167', '1');
INSERT INTO `t_sys_relation` VALUES ('13', '114', '1');
INSERT INTO `t_sys_relation` VALUES ('14', '115', '1');
INSERT INTO `t_sys_relation` VALUES ('15', '116', '1');
INSERT INTO `t_sys_relation` VALUES ('16', '117', '1');
INSERT INTO `t_sys_relation` VALUES ('17', '118', '1');
INSERT INTO `t_sys_relation` VALUES ('18', '162', '1');
INSERT INTO `t_sys_relation` VALUES ('19', '163', '1');
INSERT INTO `t_sys_relation` VALUES ('20', '164', '1');
INSERT INTO `t_sys_relation` VALUES ('21', '119', '1');
INSERT INTO `t_sys_relation` VALUES ('22', '120', '1');
INSERT INTO `t_sys_relation` VALUES ('23', '121', '1');
INSERT INTO `t_sys_relation` VALUES ('24', '122', '1');
INSERT INTO `t_sys_relation` VALUES ('25', '150', '1');
INSERT INTO `t_sys_relation` VALUES ('26', '151', '1');
INSERT INTO `t_sys_relation` VALUES ('27', '128', '1');
INSERT INTO `t_sys_relation` VALUES ('28', '134', '1');
INSERT INTO `t_sys_relation` VALUES ('29', '158', '1');
INSERT INTO `t_sys_relation` VALUES ('30', '159', '1');
INSERT INTO `t_sys_relation` VALUES ('31', '130', '1');
INSERT INTO `t_sys_relation` VALUES ('32', '131', '1');
INSERT INTO `t_sys_relation` VALUES ('33', '135', '1');
INSERT INTO `t_sys_relation` VALUES ('34', '136', '1');
INSERT INTO `t_sys_relation` VALUES ('35', '137', '1');
INSERT INTO `t_sys_relation` VALUES ('36', '152', '1');
INSERT INTO `t_sys_relation` VALUES ('37', '153', '1');
INSERT INTO `t_sys_relation` VALUES ('38', '154', '1');
INSERT INTO `t_sys_relation` VALUES ('39', '132', '1');
INSERT INTO `t_sys_relation` VALUES ('40', '138', '1');
INSERT INTO `t_sys_relation` VALUES ('41', '139', '1');
INSERT INTO `t_sys_relation` VALUES ('42', '140', '1');
INSERT INTO `t_sys_relation` VALUES ('43', '155', '1');
INSERT INTO `t_sys_relation` VALUES ('44', '156', '1');
INSERT INTO `t_sys_relation` VALUES ('45', '157', '1');
INSERT INTO `t_sys_relation` VALUES ('46', '133', '1');
INSERT INTO `t_sys_relation` VALUES ('47', '160', '1');
INSERT INTO `t_sys_relation` VALUES ('48', '161', '1');
INSERT INTO `t_sys_relation` VALUES ('49', '141', '1');
INSERT INTO `t_sys_relation` VALUES ('50', '142', '1');
INSERT INTO `t_sys_relation` VALUES ('51', '143', '1');
INSERT INTO `t_sys_relation` VALUES ('52', '144', '1');
INSERT INTO `t_sys_relation` VALUES ('53', '198', '1');
INSERT INTO `t_sys_relation` VALUES ('54', '199', '1');
INSERT INTO `t_sys_relation` VALUES ('55', '200', '1');
INSERT INTO `t_sys_relation` VALUES ('56', '201', '1');
INSERT INTO `t_sys_relation` VALUES ('57', '145', '1');
INSERT INTO `t_sys_relation` VALUES ('58', '148', '1');
INSERT INTO `t_sys_relation` VALUES ('59', '149', '1');
INSERT INTO `t_sys_relation` VALUES ('60', '171', '1');
INSERT INTO `t_sys_relation` VALUES ('61', '172', '1');
INSERT INTO `t_sys_relation` VALUES ('62', '173', '1');
INSERT INTO `t_sys_relation` VALUES ('63', '174', '1');
INSERT INTO `t_sys_relation` VALUES ('64', '175', '1');
INSERT INTO `t_sys_relation` VALUES ('65', '176', '1');
INSERT INTO `t_sys_relation` VALUES ('66', '177', '1');
INSERT INTO `t_sys_relation` VALUES ('67', '178', '1');
INSERT INTO `t_sys_relation` VALUES ('68', '179', '1');
INSERT INTO `t_sys_relation` VALUES ('69', '180', '1');
INSERT INTO `t_sys_relation` VALUES ('70', '181', '1');
INSERT INTO `t_sys_relation` VALUES ('71', '182', '1');
INSERT INTO `t_sys_relation` VALUES ('72', '183', '1');
INSERT INTO `t_sys_relation` VALUES ('73', '184', '1');
INSERT INTO `t_sys_relation` VALUES ('74', '185', '1');
INSERT INTO `t_sys_relation` VALUES ('75', '186', '1');
INSERT INTO `t_sys_relation` VALUES ('76', '187', '1');
INSERT INTO `t_sys_relation` VALUES ('77', '188', '1');
INSERT INTO `t_sys_relation` VALUES ('78', '189', '1');
INSERT INTO `t_sys_relation` VALUES ('79', '195', '1');
INSERT INTO `t_sys_relation` VALUES ('80', '190', '1');
INSERT INTO `t_sys_relation` VALUES ('81', '191', '1');
INSERT INTO `t_sys_relation` VALUES ('82', '192', '1');
INSERT INTO `t_sys_relation` VALUES ('83', '193', '1');
INSERT INTO `t_sys_relation` VALUES ('84', '194', '1');
INSERT INTO `t_sys_relation` VALUES ('85', '196', '1');
INSERT INTO `t_sys_relation` VALUES ('86', '197', '1');
INSERT INTO `t_sys_relation` VALUES ('87', '202', '1');
INSERT INTO `t_sys_relation` VALUES ('88', '203', '1');
INSERT INTO `t_sys_relation` VALUES ('89', '204', '1');
INSERT INTO `t_sys_relation` VALUES ('90', '205', '1');

-- ----------------------------
-- Table structure for `t_sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `num` int(11) DEFAULT NULL COMMENT '序号',
  `pid` int(11) DEFAULT NULL COMMENT '父角色id',
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `deptid` int(11) DEFAULT NULL COMMENT '部门名称',
  `tips` varchar(255) DEFAULT NULL COMMENT '提示',
  `version` int(11) DEFAULT NULL COMMENT '保留字段(暂时没用）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', '1', '0', '超级管理员', '24', 'administrator', '1');
-- ----------------------------
-- Table structure for `t_sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `account` varchar(45) DEFAULT NULL COMMENT '账号',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  `salt` varchar(45) DEFAULT NULL COMMENT 'md5密码盐',
  `name` varchar(45) DEFAULT NULL COMMENT '名字',
  `birthday` datetime DEFAULT NULL COMMENT '生日',
  `sex` int(11) DEFAULT NULL COMMENT '性别（1：男 2：女）',
  `email` varchar(45) DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(45) DEFAULT NULL COMMENT '电话',
  `roleid` varchar(255) DEFAULT NULL COMMENT '角色id',
  `deptid` int(11) DEFAULT NULL COMMENT '部门id',
  `status` int(11) DEFAULT NULL COMMENT '状态(1：启用  2：冻结  3：删除）',
  `createtime` datetime DEFAULT NULL COMMENT '创建时间',
  `version` int(11) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', null, 'admin', '6ab1f386d715cfb6be85de941d438b02', '8pgby', '管理员', '2017-05-05 00:00:00', '2', 'eniluzt@qq.com', null, '1', '27', '1', '2016-01-29 08:49:53', '25');
INSERT INTO `t_sys_user` VALUES ('2', null, 'boss', '71887a5ad666a18f709e1d4e693d5a35', '1f7bf', '老板', '2017-12-04 00:00:00', '1', '', '', '1', '24', '1', '2017-12-04 22:24:02', null);
INSERT INTO `t_sys_user` VALUES ('3', null, 'manager', 'b53cac62e7175637d4beb3b16b2f7915', 'j3cs9', '经理', '2017-12-04 00:00:00', '1', '', '', '1', '24', '1', '2017-12-04 22:24:24', null);


CREATE TABLE `t_sys_task` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) DEFAULT NULL COMMENT '任务名',
  `job_group` varchar(50) DEFAULT NULL COMMENT '任务组',
  `job_class` varchar(255) DEFAULT NULL COMMENT '执行类',
  `note` varchar(255) DEFAULT NULL COMMENT '任务说明',
  `cron` varchar(50) DEFAULT NULL COMMENT '定时规则',
  `data` text COMMENT '执行参数',
  `exec_at` datetime DEFAULT NULL COMMENT '执行时间',
  `exec_result` text COMMENT '执行结果',
  `disabled` tinyint(1) DEFAULT NULL COMMENT '是否禁用',
  `createtime` datetime DEFAULT NULL,
  `creator` bigint(20) DEFAULT NULL,
  `concurrent` tinyint(4) DEFAULT '0' COMMENT '是否允许并发',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `t_sys_task` VALUES ('1', '测试job', 'default', 'cn.enilu.guns.service.task.job.HelloJob', '测试job\n            \n            \n            \n            ', '0 7 11 * * ?', '{\n\"appname\": \"guns-lite\",\n\"version\":1\n}\n            \n            \n            \n            ', '2019-01-02 11:06:00', '执行成功', '1', '2018-12-28 09:54:00', '1', '0');


CREATE TABLE `t_sys_task_log` (
  `id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `name` varchar(50) DEFAULT NULL COMMENT '任务名',
  `exec_at` datetime DEFAULT NULL COMMENT '执行时间',
  `exec_success` int(11) DEFAULT NULL COMMENT '执行结果（成功:1、失败:0)',
  `job_exception` varchar(255) DEFAULT NULL COMMENT '抛出异常',
  `id_task` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `t_sys_task_log` VALUES ('1', '测试job', '2018-12-31 09:54:00', '1', null, '1');
INSERT INTO `t_sys_task_log` VALUES ('2', '测试job', '2018-12-31 10:04:00', '1', null, '1');
INSERT INTO `t_sys_task_log` VALUES ('3', '测试job', '2019-01-02 11:06:00', '1', null, '1');
