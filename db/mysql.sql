DROP DATABASE IF EXISTS ssmn01m8;

CREATE DATABASE ssmn01m8 default character set utf8mb4 collate utf8mb4_general_ci;

USE ssmn01m8;

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xuehao` varchar(200) NOT NULL UNIQUE   COMMENT '学号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xueshengxingming` varchar(200) NOT NULL   COMMENT '学生姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`nianji` varchar(200)    COMMENT '年级',
	`xueyuan` varchar(200)    COMMENT '学院',
	`banji` varchar(200)    COMMENT '班级',
	`shoujihao` varchar(200)    COMMENT '手机号',
	`zhaopian` varchar(200)    COMMENT '照片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生';

INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianji,xueyuan,banji,shoujihao,zhaopian) VALUES(11,'学生1','123456','学生姓名1','男','大一','学院1','班级1','13823888881','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian1.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianji,xueyuan,banji,shoujihao,zhaopian) VALUES(12,'学生2','123456','学生姓名2','男','大一','学院2','班级2','13823888882','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian2.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianji,xueyuan,banji,shoujihao,zhaopian) VALUES(13,'学生3','123456','学生姓名3','男','大一','学院3','班级3','13823888883','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian3.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianji,xueyuan,banji,shoujihao,zhaopian) VALUES(14,'学生4','123456','学生姓名4','男','大一','学院4','班级4','13823888884','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian4.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianji,xueyuan,banji,shoujihao,zhaopian) VALUES(15,'学生5','123456','学生姓名5','男','大一','学院5','班级5','13823888885','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian5.jpg');
INSERT INTO xuesheng(id,xuehao,mima,xueshengxingming,xingbie,nianji,xueyuan,banji,shoujihao,zhaopian) VALUES(16,'学生6','123456','学生姓名6','男','大一','学院6','班级6','13823888886','http://localhost:8080/ssmn01m8/upload/xuesheng_zhaopian6.jpg');

DROP TABLE IF EXISTS `xueyuanxinxi`;

CREATE TABLE `xueyuanxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`xueyuan` varchar(200)    COMMENT '学院',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学院信息';

INSERT INTO xueyuanxinxi(id,xueyuan) VALUES(21,'学院1');
INSERT INTO xueyuanxinxi(id,xueyuan) VALUES(22,'学院2');
INSERT INTO xueyuanxinxi(id,xueyuan) VALUES(23,'学院3');
INSERT INTO xueyuanxinxi(id,xueyuan) VALUES(24,'学院4');
INSERT INTO xueyuanxinxi(id,xueyuan) VALUES(25,'学院5');
INSERT INTO xueyuanxinxi(id,xueyuan) VALUES(26,'学院6');

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gonghao` varchar(200) NOT NULL UNIQUE   COMMENT '工号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`jiaoshixingming` varchar(200) NOT NULL   COMMENT '教师姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`zhaopian` varchar(200)    COMMENT '照片',
	`zhicheng` varchar(200)    COMMENT '职称',
	`lianxidianhua` varchar(200)    COMMENT '联系电话',
	`jiaoshiyouxiang` varchar(200)    COMMENT '教师邮箱',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='教师';

INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES(31,'教师1','123456','教师姓名1','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian1.jpg','高级讲师','13823888881','773890001@qq.com');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES(32,'教师2','123456','教师姓名2','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian2.jpg','高级讲师','13823888882','773890002@qq.com');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES(33,'教师3','123456','教师姓名3','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian3.jpg','高级讲师','13823888883','773890003@qq.com');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES(34,'教师4','123456','教师姓名4','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian4.jpg','高级讲师','13823888884','773890004@qq.com');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES(35,'教师5','123456','教师姓名5','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian5.jpg','高级讲师','13823888885','773890005@qq.com');
INSERT INTO jiaoshi(id,gonghao,mima,jiaoshixingming,xingbie,zhaopian,zhicheng,lianxidianhua,jiaoshiyouxiang) VALUES(36,'教师6','123456','教师姓名6','男','http://localhost:8080/ssmn01m8/upload/jiaoshi_zhaopian6.jpg','高级讲师','13823888886','773890006@qq.com');

DROP TABLE IF EXISTS `tiwenshangbao`;

CREATE TABLE `tiwenshangbao` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaose` varchar(200)    COMMENT '角色',
	`xingming` varchar(200)    COMMENT '姓名',
	`celiangtupian` varchar(200)    COMMENT '测量图片',
	`tiwen` int NOT NULL   COMMENT '体温',
	`shangbaoshijian` date NOT NULL   COMMENT '上报时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='体温上报';

INSERT INTO tiwenshangbao(id,jiaose,xingming,celiangtupian,tiwen,shangbaoshijian,userid) VALUES(41,'学生','姓名1','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian1.jpg',1,CURRENT_TIMESTAMP,1);
INSERT INTO tiwenshangbao(id,jiaose,xingming,celiangtupian,tiwen,shangbaoshijian,userid) VALUES(42,'学生','姓名2','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian2.jpg',2,CURRENT_TIMESTAMP,2);
INSERT INTO tiwenshangbao(id,jiaose,xingming,celiangtupian,tiwen,shangbaoshijian,userid) VALUES(43,'学生','姓名3','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian3.jpg',3,CURRENT_TIMESTAMP,3);
INSERT INTO tiwenshangbao(id,jiaose,xingming,celiangtupian,tiwen,shangbaoshijian,userid) VALUES(44,'学生','姓名4','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian4.jpg',4,CURRENT_TIMESTAMP,4);
INSERT INTO tiwenshangbao(id,jiaose,xingming,celiangtupian,tiwen,shangbaoshijian,userid) VALUES(45,'学生','姓名5','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian5.jpg',5,CURRENT_TIMESTAMP,5);
INSERT INTO tiwenshangbao(id,jiaose,xingming,celiangtupian,tiwen,shangbaoshijian,userid) VALUES(46,'学生','姓名6','http://localhost:8080/ssmn01m8/upload/tiwenshangbao_celiangtupian6.jpg',6,CURRENT_TIMESTAMP,6);

DROP TABLE IF EXISTS `jiankangma`;

CREATE TABLE `jiankangma` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaose` varchar(200)    COMMENT '角色',
	`xingming` varchar(200)    COMMENT '姓名',
	`jiankangma` varchar(200) NOT NULL   COMMENT '健康码',
	`shangbaoshijian` date NOT NULL   COMMENT '上报时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='健康码';

INSERT INTO jiankangma(id,jiaose,xingming,jiankangma,shangbaoshijian,userid) VALUES(51,'学生','姓名1','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma1.jpg',CURRENT_TIMESTAMP,1);
INSERT INTO jiankangma(id,jiaose,xingming,jiankangma,shangbaoshijian,userid) VALUES(52,'学生','姓名2','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma2.jpg',CURRENT_TIMESTAMP,2);
INSERT INTO jiankangma(id,jiaose,xingming,jiankangma,shangbaoshijian,userid) VALUES(53,'学生','姓名3','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma3.jpg',CURRENT_TIMESTAMP,3);
INSERT INTO jiankangma(id,jiaose,xingming,jiankangma,shangbaoshijian,userid) VALUES(54,'学生','姓名4','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma4.jpg',CURRENT_TIMESTAMP,4);
INSERT INTO jiankangma(id,jiaose,xingming,jiankangma,shangbaoshijian,userid) VALUES(55,'学生','姓名5','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma5.jpg',CURRENT_TIMESTAMP,5);
INSERT INTO jiankangma(id,jiaose,xingming,jiankangma,shangbaoshijian,userid) VALUES(56,'学生','姓名6','http://localhost:8080/ssmn01m8/upload/jiankangma_jiankangma6.jpg',CURRENT_TIMESTAMP,6);

DROP TABLE IF EXISTS `xingdongguiji`;

CREATE TABLE `xingdongguiji` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaose` varchar(200)    COMMENT '角色',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`guijitu` varchar(200)    COMMENT '轨迹图',
	`xiangxiluxian` varchar(200)    COMMENT '详细路线',
	`shijianduan` varchar(200) NOT NULL   COMMENT '时间段',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='行动轨迹';

INSERT INTO xingdongguiji(id,jiaose,xingming,guijitu,xiangxiluxian,shijianduan,userid) VALUES(61,'学生','姓名1','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu1.jpg','详细路线1','时间段1',1);
INSERT INTO xingdongguiji(id,jiaose,xingming,guijitu,xiangxiluxian,shijianduan,userid) VALUES(62,'学生','姓名2','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu2.jpg','详细路线2','时间段2',2);
INSERT INTO xingdongguiji(id,jiaose,xingming,guijitu,xiangxiluxian,shijianduan,userid) VALUES(63,'学生','姓名3','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu3.jpg','详细路线3','时间段3',3);
INSERT INTO xingdongguiji(id,jiaose,xingming,guijitu,xiangxiluxian,shijianduan,userid) VALUES(64,'学生','姓名4','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu4.jpg','详细路线4','时间段4',4);
INSERT INTO xingdongguiji(id,jiaose,xingming,guijitu,xiangxiluxian,shijianduan,userid) VALUES(65,'学生','姓名5','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu5.jpg','详细路线5','时间段5',5);
INSERT INTO xingdongguiji(id,jiaose,xingming,guijitu,xiangxiluxian,shijianduan,userid) VALUES(66,'学生','姓名6','http://localhost:8080/ssmn01m8/upload/xingdongguiji_guijitu6.jpg','详细路线6','时间段6',6);

DROP TABLE IF EXISTS `fangyicuoshi`;

CREATE TABLE `fangyicuoshi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`biaoti` varchar(200)    COMMENT '标题',
	`tupian` varchar(200)    COMMENT '图片',
	`xiangxineirong` longtext    COMMENT '详细内容',
	`fabushijian` date    COMMENT '发布时间',
	`faburen` varchar(200)    COMMENT '发布人',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='防疫措施';

INSERT INTO fangyicuoshi(id,biaoti,tupian,xiangxineirong,fabushijian,faburen) VALUES(71,'标题1','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian1.jpg','详细内容1',CURRENT_TIMESTAMP,'发布人1');
INSERT INTO fangyicuoshi(id,biaoti,tupian,xiangxineirong,fabushijian,faburen) VALUES(72,'标题2','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian2.jpg','详细内容2',CURRENT_TIMESTAMP,'发布人2');
INSERT INTO fangyicuoshi(id,biaoti,tupian,xiangxineirong,fabushijian,faburen) VALUES(73,'标题3','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian3.jpg','详细内容3',CURRENT_TIMESTAMP,'发布人3');
INSERT INTO fangyicuoshi(id,biaoti,tupian,xiangxineirong,fabushijian,faburen) VALUES(74,'标题4','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian4.jpg','详细内容4',CURRENT_TIMESTAMP,'发布人4');
INSERT INTO fangyicuoshi(id,biaoti,tupian,xiangxineirong,fabushijian,faburen) VALUES(75,'标题5','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian5.jpg','详细内容5',CURRENT_TIMESTAMP,'发布人5');
INSERT INTO fangyicuoshi(id,biaoti,tupian,xiangxineirong,fabushijian,faburen) VALUES(76,'标题6','http://localhost:8080/ssmn01m8/upload/fangyicuoshi_tupian6.jpg','详细内容6',CURRENT_TIMESTAMP,'发布人6');

DROP TABLE IF EXISTS `jinjiqingkuang`;

CREATE TABLE `jinjiqingkuang` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiaose` varchar(200)    COMMENT '角色',
	`shangbaoren` varchar(200) NOT NULL   COMMENT '上报人',
	`biaoti` varchar(200) NOT NULL   COMMENT '标题',
	`zhaopian` varchar(200)    COMMENT '照片',
	`xiangxi` longtext    COMMENT '详细',
	`userid` bigint NOT NULL   COMMENT '用户id',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='紧急情况';

INSERT INTO jinjiqingkuang(id,jiaose,shangbaoren,biaoti,zhaopian,xiangxi,userid) VALUES(81,'学生','上报人1','标题1','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian1.jpg','详细1',1);
INSERT INTO jinjiqingkuang(id,jiaose,shangbaoren,biaoti,zhaopian,xiangxi,userid) VALUES(82,'学生','上报人2','标题2','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian2.jpg','详细2',2);
INSERT INTO jinjiqingkuang(id,jiaose,shangbaoren,biaoti,zhaopian,xiangxi,userid) VALUES(83,'学生','上报人3','标题3','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian3.jpg','详细3',3);
INSERT INTO jinjiqingkuang(id,jiaose,shangbaoren,biaoti,zhaopian,xiangxi,userid) VALUES(84,'学生','上报人4','标题4','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian4.jpg','详细4',4);
INSERT INTO jinjiqingkuang(id,jiaose,shangbaoren,biaoti,zhaopian,xiangxi,userid) VALUES(85,'学生','上报人5','标题5','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian5.jpg','详细5',5);
INSERT INTO jinjiqingkuang(id,jiaose,shangbaoren,biaoti,zhaopian,xiangxi,userid) VALUES(86,'学生','上报人6','标题6','http://localhost:8080/ssmn01m8/upload/jinjiqingkuang_zhaopian6.jpg','详细6',6);

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200)    COMMENT '帖子标题',
	`content` longtext NOT NULL   COMMENT '帖子内容',
	`parentid` bigint    COMMENT '父节点id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`username` varchar(200)    COMMENT '用户名',
	`isdone` varchar(200)    COMMENT '状态',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='论坛表';

INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(91,'帖子标题1','帖子内容1',1,1,'用户名1','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(92,'帖子标题2','帖子内容2',2,2,'用户名2','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(93,'帖子标题3','帖子内容3',3,3,'用户名3','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(94,'帖子标题4','帖子内容4',4,4,'用户名4','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(95,'帖子标题5','帖子内容5',5,5,'用户名5','开放');
INSERT INTO forum(id,title,content,parentid,userid,username,isdone) VALUES(96,'帖子标题6','帖子内容6',6,6,'用户名6','开放');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/ssmn01m8/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/ssmn01m8/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/ssmn01m8/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

