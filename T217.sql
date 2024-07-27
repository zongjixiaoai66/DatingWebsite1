/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t217`;
CREATE DATABASE IF NOT EXISTS `t217` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t217`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'upload/1649139536965.jpg'),
	(2, 'picture2', 'upload/picture2.jpg'),
	(3, 'picture3', 'upload/picture3.jpg');

DROP TABLE IF EXISTS `discusshuiyuanxinxi`;
CREATE TABLE IF NOT EXISTS `discusshuiyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649139614882 DEFAULT CHARSET=utf8mb3 COMMENT='会员信息评论表';

DELETE FROM `discusshuiyuanxinxi`;
INSERT INTO `discusshuiyuanxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(91, '2022-04-05 06:13:35', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(92, '2022-04-05 06:13:35', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(93, '2022-04-05 06:13:35', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(94, '2022-04-05 06:13:35', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(95, '2022-04-05 06:13:35', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(96, '2022-04-05 06:13:35', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1649139614881, '2022-04-05 06:20:13', 1649139345256, 1649139288408, '11', '留下号码 我们交友1111222251', '时代发送到发送到');

DROP TABLE IF EXISTS `discusswenzhangxinxi`;
CREATE TABLE IF NOT EXISTS `discusswenzhangxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649139595827 DEFAULT CHARSET=utf8mb3 COMMENT='文章信息评论表';

DELETE FROM `discusswenzhangxinxi`;
INSERT INTO `discusswenzhangxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(101, '2022-04-05 06:13:35', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(102, '2022-04-05 06:13:35', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(103, '2022-04-05 06:13:35', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(104, '2022-04-05 06:13:35', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(105, '2022-04-05 06:13:35', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(106, '2022-04-05 06:13:35', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1649139595826, '2022-04-05 06:19:55', 1649139554991, 1649139288408, '11', '时代发多少是', NULL);

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649139321598 DEFAULT CHARSET=utf8mb3 COMMENT='交友论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(51, '2022-04-05 06:13:35', '帖子标题1', '帖子内容1', 0, 1, '用户名1', '开放'),
	(52, '2022-04-05 06:13:35', '帖子标题2', '帖子内容2', 0, 2, '用户名2', '开放'),
	(53, '2022-04-05 06:13:35', '帖子标题3', '帖子内容3', 0, 3, '用户名3', '开放'),
	(54, '2022-04-05 06:13:35', '帖子标题4', '帖子内容4', 0, 4, '用户名4', '开放'),
	(55, '2022-04-05 06:13:35', '帖子标题5', '帖子内容5', 0, 5, '用户名5', '开放'),
	(56, '2022-04-05 06:13:35', '帖子标题6', '帖子内容6', 0, 6, '用户名6', '开放'),
	(1649139321597, '2022-04-05 06:15:21', '是发送到发送到', '<p>时代发送到发送到发送到</p>\n<p><img src="../../../upload/1649139320056.jpg" /></p>', 0, 1649139288408, '11', '开放');

DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE IF NOT EXISTS `huiyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhuzhi` varchar(200) DEFAULT NULL COMMENT '住址',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `aihao` longtext COMMENT '爱好',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1649139288409 DEFAULT CHARSET=utf8mb3 COMMENT='会员';

DELETE FROM `huiyuan`;
INSERT INTO `huiyuan` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `nianling`, `xingbie`, `shouji`, `zhuzhi`, `zhaopian`, `aihao`) VALUES
	(11, '2022-04-05 06:13:35', '会员1', '123456', '姓名1', 1, '男', '13823888881', '住址1', 'upload/huiyuan_zhaopian1.jpg', '爱好1'),
	(12, '2022-04-05 06:13:35', '会员2', '123456', '姓名2', 2, '男', '13823888882', '住址2', 'upload/huiyuan_zhaopian2.jpg', '爱好2'),
	(13, '2022-04-05 06:13:35', '会员3', '123456', '姓名3', 3, '男', '13823888883', '住址3', 'upload/huiyuan_zhaopian3.jpg', '爱好3'),
	(14, '2022-04-05 06:13:35', '会员4', '123456', '姓名4', 4, '男', '13823888884', '住址4', 'upload/huiyuan_zhaopian4.jpg', '爱好4'),
	(15, '2022-04-05 06:13:35', '会员5', '123456', '姓名5', 5, '男', '13823888885', '住址5', 'upload/huiyuan_zhaopian5.jpg', '爱好5'),
	(16, '2022-04-05 06:13:35', '会员6', '123456', '姓名6', 6, '男', '13823888886', '住址6', 'upload/huiyuan_zhaopian6.jpg', '爱好6'),
	(1649139288408, '2022-04-05 06:14:48', '11', '11', '时代', 11, '', '11122233333', '是司法所发送到发送到', 'upload/1649139297967.jpg', '水电费电商发送到发送到');

DROP TABLE IF EXISTS `huiyuanxinxi`;
CREATE TABLE IF NOT EXISTS `huiyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `gongzuo` varchar(200) DEFAULT NULL COMMENT '工作',
  `aihao` longtext COMMENT '爱好',
  `gerentezhang` longtext COMMENT '个人特长',
  `ziwojieshao` longtext COMMENT '自我介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649139345257 DEFAULT CHARSET=utf8mb3 COMMENT='会员信息';

DELETE FROM `huiyuanxinxi`;
INSERT INTO `huiyuanxinxi` (`id`, `addtime`, `zhanghao`, `xingming`, `nianling`, `xingbie`, `zhaopian`, `gongzuo`, `aihao`, `gerentezhang`, `ziwojieshao`, `clicktime`, `clicknum`) VALUES
	(21, '2022-04-05 06:13:35', '账号1', '姓名1', '年龄1', '男', 'upload/huiyuanxinxi_zhaopian1.jpg', '工作1', '爱好1', '个人特长1', '自我介绍1', '2024-06-09 18:27:59', 2),
	(22, '2022-04-05 06:13:35', '账号2', '姓名2', '年龄2', '男', 'upload/huiyuanxinxi_zhaopian2.jpg', '工作2', '爱好2', '个人特长2', '自我介绍2', '2024-06-09 18:29:08', 5),
	(23, '2022-04-05 06:13:35', '账号3', '姓名3', '年龄3', '男', 'upload/huiyuanxinxi_zhaopian3.jpg', '工作3', '爱好3', '个人特长3', '自我介绍3', '2024-06-09 18:28:55', 5),
	(24, '2022-04-05 06:13:35', '账号4', '姓名4', '年龄4', '男', 'upload/huiyuanxinxi_zhaopian4.jpg', '工作4', '爱好4', '个人特长4', '自我介绍4', '2022-04-05 14:13:35', 4),
	(25, '2022-04-05 06:13:35', '账号5', '姓名5', '年龄5', '男', 'upload/huiyuanxinxi_zhaopian5.jpg', '工作5', '爱好5', '个人特长5', '自我介绍5', '2022-04-05 14:13:35', 5),
	(26, '2022-04-05 06:13:35', '账号6', '姓名6', '年龄6', '男', 'upload/huiyuanxinxi_zhaopian6.jpg', '工作6', '爱好6', '个人特长6', '自我介绍6', '2022-04-05 14:13:35', 6),
	(1649139345256, '2022-04-05 06:15:44', '11', '时代', '11', '女', 'upload/1649139297967.jpg', '时代发送到', ' 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少', ' 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少 发多少时代发多少', '<p>&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少&nbsp;发多少时代发多少</p>', '2022-04-05 14:20:50', 5);

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) DEFAULT NULL COMMENT '留言图片',
  `reply` longtext COMMENT '回复内容',
  `rpicture` varchar(200) DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1717928972699 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `cpicture`, `reply`, `rpicture`) VALUES
	(81, '2022-04-05 06:13:35', 1, '用户名1', '留言内容1', 'upload/messages_cpicture1.jpg', '回复内容1', 'upload/messages_rpicture1.jpg'),
	(82, '2022-04-05 06:13:35', 2, '用户名2', '留言内容2', 'upload/messages_cpicture2.jpg', '回复内容2', 'upload/messages_rpicture2.jpg'),
	(83, '2022-04-05 06:13:35', 3, '用户名3', '留言内容3', 'upload/messages_cpicture3.jpg', '回复内容3', 'upload/messages_rpicture3.jpg'),
	(84, '2022-04-05 06:13:35', 4, '用户名4', '留言内容4', 'upload/messages_cpicture4.jpg', '回复内容4', 'upload/messages_rpicture4.jpg'),
	(85, '2022-04-05 06:13:35', 5, '用户名5', '留言内容5', 'upload/messages_cpicture5.jpg', '回复内容5', 'upload/messages_rpicture5.jpg'),
	(86, '2022-04-05 06:13:35', 6, '用户名6', '留言内容6', 'upload/messages_cpicture6.jpg', '回复内容6', 'upload/messages_rpicture6.jpg'),
	(1649139307802, '2022-04-05 06:15:06', 1649139288408, '11', '时代水电费发送到', NULL, '时代时代水电费', NULL),
	(1717928972698, '2024-06-09 10:29:31', 11, '会员1', '6666', NULL, NULL, NULL);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='网站公告';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(71, '2022-04-05 06:13:35', '有梦想，就要努力去实现', '不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。', 'upload/news_picture1.jpg', '<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p><p><img src="http://localhost:8080/springboot2x7r5/upload/1649139528368.jpg"></p>'),
	(72, '2022-04-05 06:13:35', '又是一年毕业季', '又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。', 'upload/news_picture2.jpg', '<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),
	(73, '2022-04-05 06:13:35', '挫折路上，坚持常在心间', '回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。', 'upload/news_picture3.jpg', '<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),
	(74, '2022-04-05 06:13:35', '挫折是另一个生命的开端', '当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。', 'upload/news_picture4.jpg', '<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),
	(75, '2022-04-05 06:13:35', '你要去相信，没有到不了的明天', '有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。', 'upload/news_picture5.jpg', '<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),
	(76, '2022-04-05 06:13:35', '离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端', '无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。', 'upload/news_picture6.jpg', '<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1717928955603 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`, `type`, `inteltype`) VALUES
	(1649139590361, '2022-04-05 06:19:49', 1649139288408, 1649139554991, 'wenzhangxinxi', '时代发送到', 'upload/1649139581854.jpg', '21', NULL),
	(1717928947332, '2024-06-09 10:29:06', 11, 22, 'huiyuanxinxi', '姓名2', 'upload/huiyuanxinxi_zhaopian2.jpg', '1', NULL),
	(1717928955602, '2024-06-09 10:29:15', 11, 41, 'wenzhangxinxi', '标题1', 'upload/wenzhangxinxi_fengmian1.jpg', '1', NULL);

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1649139288408, '11', 'huiyuan', '会员', '2f4atayv3ydcrys9onii19xad3gminw7', '2022-04-05 06:14:52', '2022-04-05 07:19:20'),
	(2, 1, 'abo', 'users', '管理员', 'av68bj6hmti7lzcl1s4xafs0aww84vnb', '2022-04-05 06:18:09', '2024-06-09 11:27:47'),
	(3, 11, '会员1', 'huiyuan', '会员', 'getd046we8zv9p1rikzzzkxsr4fuedyv', '2024-06-09 09:09:36', '2024-06-09 11:28:55');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-05 06:13:35');

DROP TABLE IF EXISTS `wenzhangfenlei`;
CREATE TABLE IF NOT EXISTS `wenzhangfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenzhangfenlei` (`wenzhangfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1649139503537 DEFAULT CHARSET=utf8mb3 COMMENT='文章分类';

DELETE FROM `wenzhangfenlei`;
INSERT INTO `wenzhangfenlei` (`id`, `addtime`, `wenzhangfenlei`) VALUES
	(31, '2022-04-05 06:13:35', '生活类'),
	(32, '2022-04-05 06:13:35', '文章分类2'),
	(33, '2022-04-05 06:13:35', '文章分类3'),
	(34, '2022-04-05 06:13:35', '文章分类4'),
	(35, '2022-04-05 06:13:35', '文章分类5'),
	(36, '2022-04-05 06:13:35', '文章分类6'),
	(1649139503536, '2022-04-05 06:18:22', '旅游类');

DROP TABLE IF EXISTS `wenzhangxinxi`;
CREATE TABLE IF NOT EXISTS `wenzhangxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  `neirong` longtext COMMENT '内容',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1649139554992 DEFAULT CHARSET=utf8mb3 COMMENT='文章信息';

DELETE FROM `wenzhangxinxi`;
INSERT INTO `wenzhangxinxi` (`id`, `addtime`, `biaoti`, `wenzhangfenlei`, `neirong`, `fabushijian`, `fengmian`, `zhanghao`, `xingming`, `thumbsupnum`, `crazilynum`, `clicktime`, `clicknum`) VALUES
	(41, '2022-04-05 06:13:35', '标题1', '旅游类', '<p>内容1</p>', '2022-04-05 14:13:35', 'upload/wenzhangxinxi_fengmian1.jpg', '账号1', '姓名1', 1, 1, '2024-06-09 18:29:17', 6),
	(42, '2022-04-05 06:13:35', '标题2', '文章分类2', '内容2', '2022-04-05 14:13:35', 'upload/wenzhangxinxi_fengmian2.jpg', '账号2', '姓名2', 2, 2, '2022-04-05 14:13:35', 2),
	(43, '2022-04-05 06:13:35', '标题3', '文章分类3', '内容3', '2022-04-05 14:13:35', 'upload/wenzhangxinxi_fengmian3.jpg', '账号3', '姓名3', 3, 3, '2022-04-05 14:13:35', 3),
	(44, '2022-04-05 06:13:35', '标题4', '文章分类4', '内容4', '2022-04-05 14:13:35', 'upload/wenzhangxinxi_fengmian4.jpg', '账号4', '姓名4', 4, 4, '2022-04-05 14:13:35', 4),
	(45, '2022-04-05 06:13:35', '标题5', '文章分类5', '内容5', '2022-04-05 14:13:35', 'upload/wenzhangxinxi_fengmian5.jpg', '账号5', '姓名5', 5, 5, '2022-04-05 14:13:35', 5),
	(46, '2022-04-05 06:13:35', '标题6', '文章分类6', '内容6', '2022-04-05 14:13:35', 'upload/wenzhangxinxi_fengmian6.jpg', '账号6', '姓名6', 6, 6, '2022-04-05 14:20:23', 7),
	(1649139554991, '2022-04-05 06:19:14', '时代发送到', '旅游类', '<p>时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到时代时代发送到</p><p><img src="http://localhost:8080/springboot2x7r5/upload/1649139553288.jpg"></p>', '2022-04-05 14:19:07', 'upload/1649139581854.jpg', '11', '时代', 1, 0, '2022-04-05 14:20:45', 11);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
