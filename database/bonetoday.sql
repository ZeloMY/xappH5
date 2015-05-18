/*地区表*/
CREATE TABLE `tarea` (
  `ta_id` int(13) NOT NULL AUTO_INCREMENT COMMENT '主键,id',
  `ta_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地区编码',
  `ta_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地区名称',
  `ta_level` int(3) DEFAULT NULL COMMENT '地区层级',
  `updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建设计',
  `status` int(4) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`ta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*频道信息表*/
CREATE TABLE `tchannel` (
  `ch_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键,自增',
  `ch_Gid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '频道GID',
  `ch_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '频道名称',
  `ch_slogan` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '频道简介',
  `ch_avatars` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '频道头像',
  `ch_createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '频道创建时间',
  `ch_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '频道更新时间',
  `ch_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`ch_id`),
  KEY `ch_id` (`ch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*频道用户关系表*/
CREATE TABLE `tchanneluser` (
  `cu_id` int(13) NOT NULL AUTO_INCREMENT COMMENT '主键,id',
  `cu_cgid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '频道GID',
  `cu_ugid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '人员GID',
  `cu_isadmin` int(1) DEFAULT '0' COMMENT '是否管理员',
  `updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建设计',
  `status` int(4) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`cu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*会议表*/
CREATE TABLE `tconf` (
  `cf_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `cf_Gid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '会议GID',
  `cf_name` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会议名称',
  `cf_avatars` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主题图片',
  `cf_date` datetime DEFAULT NULL COMMENT '会议起始日',
  `cf_date_end` datetime DEFAULT NULL COMMENT '会议终止日',
  `cf_local` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '位置',
  `cf_localgps` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地图位置',
  `cf_localDetail` text COLLATE utf8_unicode_ci COMMENT '详细信息',
  `cf_slogan` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会议标题',
  `cf_slogan_e` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会议标题_英文',
  `cf_detail` text COLLATE utf8_unicode_ci COMMENT '会议介绍',
  `cf_Sponsor` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会议发起人',
  `cf_contact` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会议联系及联系方\r\n\r\n式',
  `cf_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cf_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `cf_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`cf_id`),
  KEY `cf_id` (`cf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*学术会议收藏表 */
CREATE TABLE `tconfinfo` (
  `cinfo_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键,自增',
  `cinfo_CGID` varchar(40) DEFAULT NULL COMMENT '会议id',
  `cinfo_userGid` varchar(40) DEFAULT NULL COMMENT '用户id',
  `cinfo_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `cinfo_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `cinfo_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`cinfo_id`),
  KEY `cinfo_id` (`cinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8
;
/*收藏表 */
CREATE TABLE `tfav` (
  `fav_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键，id',
  `fav_GID` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '全局id',
  `fav_type` int(2) DEFAULT NULL COMMENT '调用类型,1.文章、2.会议、3.帖子',
  `fav_userGID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户id',
  `fav_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fav_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `fav_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`fav_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*反馈表 */
CREATE TABLE `tfeedback` (
  `fb_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `fb_uid` int(12) DEFAULT NULL COMMENT '用户账号',
  `fb_detail` text COLLATE utf8_unicode_ci COMMENT '反馈内容',
  `fb_datetime` datetime DEFAULT NULL COMMENT '反馈时间',
  `fb_pic` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片',
  `fb_reply` text COLLATE utf8_unicode_ci COMMENT '客服回复',
  `fb_reply_time` datetime DEFAULT NULL COMMENT '客服回复时间',
  `fb_status` int(1) DEFAULT '0' COMMENT '是否接受随访',
  `fb_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fb_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `fb_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`fb_id`),
  KEY `fb_id` (`fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*医院表 */
CREATE TABLE `thospitalbase` (
  `hos_id` int(13) NOT NULL AUTO_INCREMENT COMMENT '主键,id',
  `hos_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '医院编码',
  `hos_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '医院名称',
  `hos_local` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '医院地址',
  `hos_desc` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '医院描述',
  `updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建设计',
  `status` int(4) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`hos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*未读消息提醒表 */
CREATE TABLE `tnotice` (
  `tn_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `tn_userGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `tn_pstGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主贴id',
  `tn_type` int(1) DEFAULT NULL COMMENT '提醒类型(1-发帖回复/2-回复的回复)',
  `tn_Count` int(10) DEFAULT NULL COMMENT '未读条数',
  `tn_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tn_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `tn_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`tn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*发帖表 */
CREATE TABLE `tpost` (
  `pst_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pst_Gid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发帖GID',
  `pst_chGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '频道编号',
  `pst_userGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户Gid',
  `pst_detail` text COLLATE utf8_unicode_ci COMMENT '内容',
  `pst_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pst_pic` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配图',
  `pst_vid` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '视频',
  `pst_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `pst_isdel` int(1) DEFAULT NULL COMMENT '是否删除',
  `pst_favcount` int(10) DEFAULT NULL,
  `pst_replycount` int(10) DEFAULT NULL,
  PRIMARY KEY (`pst_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*发帖点赞表 */
CREATE TABLE `tpostfav` (
  `pf_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pf_userGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `pf_pstGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主贴id',
  `pf_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `pf_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `pf_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`pf_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*病例夹表 */
CREATE TABLE `trdpatient` (
  `repa_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键、id',
  `repa_Gid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '病人GID',
  `repa_name` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '患者姓名',
  `repa_age` int(3) DEFAULT NULL COMMENT '年龄',
  `repa_gender` int(2) DEFAULT '1' COMMENT '1.男，2.女，3..',
  `repa_sick` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '疾病1',
  `repa_sick2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '疾病2',
  `repa_sick3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '疾病3',
  `repa_VisitDate` datetime DEFAULT NULL COMMENT '就诊时间',
  `repa_UserGID` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户GID',
  `repa_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `repa_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `repa_isdel` int(1) DEFAULT '1' COMMENT '是否删除',
  PRIMARY KEY (`repa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*病程表 */
CREATE TABLE `trecord` (
  `tr_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '病程记录主键',
  `th_PGid` int(12) DEFAULT NULL COMMENT '病人GID',
  `tr_title` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '病程标题',
  `tr_detail` text COLLATE utf8_unicode_ci COMMENT '病程内容',
  `tr_date` datetime DEFAULT NULL COMMENT '记录时间',
  `tr_pic` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配图',
  `tr_vid` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '视频',
  `tr_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tr_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `tr_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`tr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*发帖回复表 */
CREATE TABLE `treply` (
  `rpy_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `rpy_userGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `rpy_pstGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主贴Gid',
  `rpy_detail` text COLLATE utf8_unicode_ci COMMENT '回帖内容',
  `rpy_toUserGid` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回复回帖人',
  `rpy_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rpy_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `rpy_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`rpy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*图片表 */
CREATE TABLE `trespic` (
  `rp_id` int(15) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `rp_url` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '存放地址',
  `rp_uploaderid` int(12) DEFAULT NULL COMMENT '上传人',
  `rp_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rp_ip` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上传ip',
  `rp_quoteGID` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '引用id',
  `rp_width` int(5) DEFAULT NULL COMMENT '图片宽度',
  `rp_height` int(5) DEFAULT NULL COMMENT '图片高度',
  `rp_Angle` decimal(5,2) DEFAULT NULL COMMENT '图片角度',
  `rp_rz1` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重建地址1（缩略图）\r\n\r\n',
  `rp_rz2` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重建地址2（正图）',
  `rp_rz3` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '重建地址3',
  `rp_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `rp_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`rp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*视频表 */
CREATE TABLE `tresvid` (
  `rv_id` int(15) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `rv_url` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '存放地址',
  `rv_uid` int(12) DEFAULT NULL COMMENT '上传用户id',
  `rv_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rv_ip` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上传ip',
  `rv_protocol` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '压缩协议',
  `rv_width` int(5) DEFAULT NULL COMMENT '影像宽度',
  `rv_height` int(5) DEFAULT NULL COMMENT '影像高度',
  `rv_Angle` decimal(5,2) DEFAULT NULL COMMENT '视频角度',
  `rv_fps` decimal(10,2) DEFAULT NULL COMMENT '刷新率',
  `rv_size` int(10) DEFAULT NULL COMMENT '文件尺寸',
  `rv_newurl` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件新地址',
  `rv_thumbnail` varchar(128) COLLATE utf8_unicode_ci NOT NULL COMMENT '视频缩略图',
  `rv_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `rv_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`rv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*骨科指南表 */
CREATE TABLE `ttextbook` (
  `tb_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键。自增',
  `tb_category` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章分类',
  `tb_avatars` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片链接',
  `tb_title` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章标题',
  `tb_publish` datetime DEFAULT NULL COMMENT '发布时间',
  `tb_count` int(10) DEFAULT NULL COMMENT '浏览次数',
  `tb_author` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '作者',
  `tb_selected` int(1) NOT NULL COMMENT '编辑选择文章',
  `tb_detail` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文章内容URL',
  `tb_createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tb_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `tb_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`tb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*学术会议日程表 */
CREATE TABLE `ttopic` (
  `tpc_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键，自增',
  `tpc_Gid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '议程GID',
  `tpc_cfGid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '会议GID',
  `tpc_ParentGid` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '专题GID',
  `tpc_moderator` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主持人',
  `tpc_reviewer` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '点评人',
  `tpc_speaker` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '演讲人',
  `tpc_sponsor` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '赞助商',
  `tpc_sponsorDesc` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '赞助商详情\r\n\r\n',
  `tpc_title` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '议题',
  `tpc_title_e` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '英文议题',
  `tpc_detail` text COLLATE utf8_unicode_ci COMMENT '演讲内容',
  `tpc_detail_e` text COLLATE utf8_unicode_ci COMMENT '演讲内容英文',
  `tpc_type` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型',
  `tpc_level` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '级别（1-议题/2-\r\n\r\n议程）',
  `tpc_datetime_begin` datetime DEFAULT NULL COMMENT '开始时间',
  `tpc_datetime_end` datetime DEFAULT NULL COMMENT '结束时间',
  `tpc_createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tpc_updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `tpc_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`tpc_id`),
  KEY `tpc_id` (`tpc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*用户表 */
CREATE TABLE `tuser` (
  `User_ID` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键、自增',
  `User_GID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户GID',
  `User_Name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `User_Pwd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `User_Email` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户电子邮箱',
  `User_Phone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户手机号',
  `User_SMSverf` int(6) DEFAULT NULL COMMENT '短信验证消息',
  `User_Adddate` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `User_ChAu` int(1) DEFAULT '1' COMMENT '频道权限',
  `User_ChGId` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在频道Gid',
  `User_CfAu` int(1) DEFAULT '1' COMMENT '会议权限',
  `User_TmAu` int(1) DEFAULT '1' COMMENT '团队权限',
  `User_Online` int(1) DEFAULT '0' COMMENT '在线状态',
  `User_ipv4` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ip地址',
  `User_ipv6` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ip地址',
  `User_LoginDate` datetime DEFAULT NULL COMMENT '登录日期',
  `User_LoginTime` int(10) DEFAULT NULL COMMENT '登录次数',
  `User_OSType` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户移动端操作系统类型',
  `User_OSSN` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户移动端sn号',
  `User_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `User_isdel` int(1) NOT NULL DEFAULT '1' COMMENT '是否删除',
  PRIMARY KEY (`User_ID`,`User_isdel`),
  KEY `User_ID` (`User_ID`),
  CONSTRAINT `tuser_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `tconfinfo` (`cinfo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*用户基本信息表 */
CREATE TABLE `tuserinfo` (
  `Uinfo_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键_自增',
  `Uinfo_userGID` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT '用户GID',
  `Uinfo_sex` int(2) DEFAULT '1' COMMENT '性别:1.男，2.女，3...',
  `Uinfo_birthday` date DEFAULT NULL COMMENT '生日',
  `Uinfo_local` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '驻地编码',
  `Uinfo_Descript` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '个人简介',
  `Uinfo_Title` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '社会任职',
  `Uinfo_avatars` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像链接',
  `Uinfo_hospital` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '医院',
  `Uinfo_jobtitle` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职称',
  `Uinfo_wx` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微信号',
  `Uinfo_wb` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '微博号',
  `Uinfo_qq` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'qq号',
  `Uinfo_CreateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `Uinfo_UpdateTime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `Uinfo_isdel` int(1) DEFAULT '1' COMMENT '删除标记',
  PRIMARY KEY (`Uinfo_id`),
  KEY `Uinfo_id` (`Uinfo_id`),
  CONSTRAINT `tuserinfo_ibfk_1` FOREIGN KEY (`Uinfo_id`) REFERENCES `tuser` (`User_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*用户token表 */
CREATE TABLE `tusertoken` (
  `tk_id` int(13) NOT NULL AUTO_INCREMENT COMMENT '主键,id',
  `starttime` datetime DEFAULT NULL COMMENT '有效开始时间',
  `endtime` datetime DEFAULT NULL COMMENT '有效结束时间',
  `updatetime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `createtime` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` int(4) DEFAULT NULL COMMENT '状态',
  `tokencontent` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token内容',
  `tokentype` int(4) DEFAULT NULL COMMENT 'token类型',
  `tokenuserGID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`tk_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci
;
/*短信验证临时表 */
CREATE TABLE `tvalidtmp` (
  `vt_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `vt_gid` int(12) NOT NULL COMMENT '验证记录id',
  `vt_validtext` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT '验证号',
  `vt_phonenumber` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT '手机号',
  `vt_ipaddress` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ip地址',
  `vt_createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `vt_validtime` datetime NOT NULL COMMENT '有效时间',
  `vt_status` int(2) NOT NULL COMMENT '验证状态',
  `vt_updatetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`vt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='临时短信验证号表'
;
