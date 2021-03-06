/*
Navicat MySQL Data Transfer

Source Server         : 47.90.93.77
Source Server Version : 50549
Source Host           : 47.90.93.77:3306
Source Database       : dedecmsv57utf8sp2_fudagw

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2018-04-25 15:26:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dede_addonarticle
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonarticle`;
CREATE TABLE `dede_addonarticle` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonarticle
-- ----------------------------
INSERT INTO `dede_addonarticle` VALUES ('5', '9', '<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/uploads/allimg/151009/1-1510091052491T.jpg\" style=\"width: 400px; height: 300px;\" /></div>\r\n<br />\r\n<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">这里是</span>钻探工具展示<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">的文字描述，后台发布产品时进行编辑，前台会自动调用！</span>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('6', '10', '<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/uploads/allimg/151009/1-15100910540GL.jpg\" style=\"width: 400px; height: 300px;\" /><br />\r\n	&nbsp;</div>\r\n<div>\r\n	<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">这里是荣誉资质的文字描述，后台发布产品时进行编辑，前台会自动调用！</span></div>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('7', '6', '<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	2001年12月11日，历经15年的艰难谈判之后，我国正式加入WTO，至此我国各行业全方面全球化的开放步伐已经开始。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp;&nbsp;在经济、金融全球化的今天，我国作为一个发展中的大国，自然不能脱离全球化的潮流，造成经济被边缘化。参与全球化，金融业首当其冲的成为开放、发展的先锋。在外资金融机构类型的准入上，基本是按照先银行，后保险再证券的顺序逐步开放。如今，十多年过去了，外资银行的入驻、中外合资保险公司的相继成立和发展，为我国金融市场初步和国际接轨已奠定了一定的基础。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp;&nbsp;为进一步顺应世界金融行业发展的趋势，2010年3月31日，我国A股市场正式推出了融资融券业务。&ldquo;融资融券&rdquo;业务是成熟证券市场的基本功能，存在于大部分国家和地区的证券市场,除欧美国家外，在亚洲的新加坡、日本、韩国和香港等证券市场也普遍存在。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;</p>\r\n<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp;&nbsp;融资融券作为国际证券市场一项普遍实施的成熟交易制度，引进我国有利于充分发挥证券市场的功能，亦为我国的投资者和券商提供了新的盈利模式。因此，作为证券市场基础建设的完善之举，融资融券的推出必定对我国金融行业的快速发展起到极大的推动作用，对我国证券市场的发展具有划时代的意义。 &nbsp;</p>\r\n', '', '', '123.160.235.90');
INSERT INTO `dede_addonarticle` VALUES ('8', '6', '<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	（1）目前在开展融资融券业务的券商有</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;首批6家券商（2010年3月19日）&mdash;&mdash;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;中信证券、国信证券&nbsp;、海通证券、国泰君安&nbsp;、光大证券、广发证券；&nbsp;&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;第二批5家券商（2010年6月8日）&nbsp;&mdash;&mdash;&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	<span style=\"line-height: 32px;\">&nbsp; &nbsp;&nbsp;</span>申银万国证券、东方证券、招商证券、华泰证券、银河证券&nbsp;；&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;第三批14家券商名单（2010年11月25日）&nbsp;&mdash;&mdash;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;宏源证券、国元证券、长江证券、兴业证券、安信证券、</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;平安证券、国都证券、中信建投证券、中投证券、方正证券、</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;长城证券、齐鲁证券、西南证券、中金公司&nbsp;；&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;第四批将会有44家。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	（2）券商提供的可供融资融券交易的股票</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp; 原来试运营推出时，融资融券标的股为上证50指数（50支）和深证成份指数（40支）的股票，共90支成分股。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp; 现在（从2011年12月5号起）融资融券标的股：上证180指数全部180支成分股及深证100指数成分股中除&ldquo;深圳能源&rdquo;和&ldquo;粤电力A&rdquo;的98只股票，总计278只个股。和7支交易型开放式指数基金（ETF）首次被纳为融资融券交易标的，分别是华夏上证50ETF、华安上证180ETF、华泰柏瑞上证红利ETF、交银上证180治理ETF、易方达深100ETF、华夏中小板ETF及南方深成ETF。现在一共285支。&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;股票明细，上证180指数成分股：输&ldquo;SZ180&rdquo; 深证100指数成分股：输&ldquo;SZ100&rdquo;可以查得。</p>\r\n', '', '', '123.160.235.90');
INSERT INTO `dede_addonarticle` VALUES ('9', '6', '<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	融资融券又称&ldquo;证券信用交易&rdquo;，是指投资者向特定的金融信用机构提供担保物，借入资金买入证券或借入证券并卖出的行为。它是一种到期还本付息的证券信用交易机制的表现形式。包括券商对投资者的融资、融券和其他金融机构对券商或投资者的融资、融券。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp;&nbsp;融资融券存在于大部分国家和地区的证券市场，是成熟证券市场的基本功能。简单地说，融资就是由券商或者其他专门的金融信用机构为投资者购买证券提供融资；而融券就是做空机制，客户可以从证券公司或者其他专门的金融信用机构借来证券卖出，在未来的某一时间再到市场上买回证券归还。</p>\r\n<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp; 融资融券在世界范围主要有两种模式：一是以欧美、中国香港为代表的分散信用模式，由券商等金融机构独立向客户提供；二是日本、韩国、中国台湾的集中信用模式，成立专门的证券融资公司，向客户提供融资融券。</p>\r\n', '', '', '123.160.235.90');
INSERT INTO `dede_addonarticle` VALUES ('12', '7', '<div style=\"text-align: center;\">\r\n	<img alt=\"五号\" src=\"/uploads/allimg/151009/1-151009123936141.jpg\" style=\"width: 593px; height: 445px;\" /></div>\r\n<br />\r\n<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！</span><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！</span>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('13', '8', '<div style=\"text-align: center;\">\r\n	<img alt=\"六号产\" src=\"/uploads/allimg/151009/1-151009124005J7.jpg\" style=\"width: 593px; height: 445px;\" /></div>\r\n<br />\r\n<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！</span><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！</span>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('14', '8', '<div style=\"text-align: center;\">\r\n	<img alt=\"七号\" src=\"/uploads/allimg/151009/1-151009124036339.jpg\" style=\"width: 593px; height: 445px;\" /></div>\r\n<br />\r\n<span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！</span><span style=\"color: rgb(102, 102, 102); font-family: 微软雅黑; font-size: 14px; line-height: 30px;\">这里是产品的文字描述，后台发布产品时进行编辑，前台会自动调用！</span>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('15', '6', '<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	负面消息不断，创业板今天又崩了！据统计，<strong>创业板本周跌4.9%，创近一年最大周跌幅！</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	副主席定调不允许&ldquo;炒小、炒新、炒差&rdquo;，基本上给创业板判了死刑；IPO再次加速，连续不断的给创业板输送新的&ldquo;垃圾&rdquo;，估值体系崩塌；龙头股温氏股份、网宿科技、碧水源、掌趣科技业绩大幅下滑，高增长幻象不再；神雾环保、三聚环保等环保白马，持续被媒体负面消息纠缠&hellip;&hellip;</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	最最重要的差点儿忘了，<strong>乐视网这颗潜藏的大地雷，还不知道何时引爆！</strong>曾几何时，乐视网是创业板的最牛标杆，一度数千亿市值，肩负着中国版纳斯达克的光荣使命。几年时间便分崩离析，潮水退去，董事长都跑到美国不敢回来了。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	关于创业板，转述一个朋友的观点：<strong>刘士余不是北大毕业的，他是清华工科生。理工，讲究逻辑论证，讲究实业报国，这是清华的百年传统。所以重资产涨，传媒游戏、网络等轻资产跌成狗。</strong>肖钢是湖南财经大学毕业，属于文科，所以他治理下的A股，漫天飞舞。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	创业板今天跌到前期低点附近，理论可以抄底做个反抽，但刀锋长期不碰创业板，也就不做具体推荐了。管理层提倡价值投资，打压中小创，目的就是让大家去炒上证50和白马股，顺便帮郭嘉队解套。这段时间，钢铁煤炭水泥这些夕阳产业天天大涨，代表创新未来的科技股却江河日下，想想就很悲哀。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	不过，<strong>创业板确实也没啥好股票，每年500家的IPO也基本都是垃圾，</strong><strong>中国真正牛逼的高科技公司都在国外</strong>，比如阿里巴巴，昨晚在美股大涨再创历史新高。阿里巴巴映射到国内，就是有垄断地位能在全球赚钱的白马股。因此，海康威视、格力电器这种股票，刀锋长线继续看好。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	<strong>&hellip;&hellip;</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	昨晚文章提示，锂电池回调是买入时机，结果今天开盘仅回调了几分钟就雄起了。多氟多、天齐锂业、赣锋锂业今天再次爆发，<strong>作为唯一高景气的行业，锂电行情未完。因为电动车全球普及已进入爆发期，特斯拉的model3将引爆潮流。</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	电动车迎来超高速增长是完全可以预期的，今年就是爆发元年，刀锋预测，<strong>最多两年时间，家庭轿车将以买电动车为荣，买汽油车会被人看不起。</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	目前来看，电动车下游整车，吉利汽车和北汽新能源在国内处于领先位置，但吉利汽车在港股，股价一直在涨；A股的比亚迪起了个大早，赶了个晚集，比亚迪倡导的铁电池，并没有形成通用标准，反而特斯拉的三元电池，全球风行。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	电动车中游主要是电池组装、汽车零部件等，中国已处于全球领先地位，龙头企业也会逐渐受益，比如杉杉股份、当升科技、华域汽车、一汽富维、三花智控等；<strong>电动车上游最为受益，因为门槛较高资源垄断有定价权。</strong>比如天齐锂业、赣锋锂业、雅化集团、华友钴业、洛阳钼业、先导智能、诺德股份等。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	<strong>&hellip;&hellip;</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	今天白酒股涨幅第一，酒鬼酒涨停。酒鬼酒这只股票，刀锋昨晚仔细研究了一番，主要是业绩大增迎来拐点，龙虎榜三家机构介入，其中包括深港通席位；而且比较贵州茅台泸州老窖等，相对位置较低。但今天开盘上冲太快，刀锋就放弃了，没想到尾盘能涨停。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	今天马后炮分析酒鬼酒，并不是推荐买入，而是要提示一个重要信号：<strong>即便是存量博弈的熊市阶段，公募机构和外资，也开始掌握A股市场话语权，游资兴风作浪的时代宣告结束。</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	重点券商和知名分析师的研报，在这个崇尚&ldquo;价值投资&rdquo;的年代，也突然变得有些价值了。大家平时有时间，可以多看看，尤其是新财富上榜的，或许能找到选股线索。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	<strong>&hellip;&hellip;</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	创业板指数虽然崩盘，但上证50指数今天可是又创了新高！刀锋统计发现：流通股本最大的前30只股，今天全部飘红，而流通股本倒数30只股，基本都是绿的。这说明什么？说明<strong>A股港股化正在成为现实。</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	<strong>而这一切的根本原因，就是无休无止的IPO大扩容。</strong>今晚，证监会又要发批文了。上周IPO数量仅增加了3只，结果本周次新股指数就暴跌7.94%，创业板指暴跌4.9%。按照&rdquo;钝刀子慢割肉、温水煮青蛙&ldquo;的规律，这周是不是应该适当缓和一下？</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	刚刚，爱股票APP弹出一条新闻，《贝因美：半年报由预盈修正为亏损近4亿元》，刀锋感到非常气愤，<strong>贝因美先闪崩跌停，再停牌公告巨亏，赤裸裸的内幕交易，这种套路今年在A股很流行！</strong>包括昨天的青龙管业，也是盈利变巨亏，今天一字跌停。更早之前还有正虹科技，也是如此，闪崩后公告亏损，然后连续两个跌停。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	满满的套路满满的坑，证监会除了抓游资，就不干点儿正事儿？<strong>这才是股市最大的毒瘤啊！</strong><strong>上市公司与庄家里应外合，肆意践踏三公原则，中小散户被玩弄于鼓掌之中，难怪会有人说股市连赌场都不如！</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	还有昨天的北方稀土，第二大股东在涨停板上违规&ldquo;超计划&rdquo;减持，一天套现两个亿，为了钱毫无诚信可言，追涨散户和游资被坑！证监会制定的《减持新规》形同虚设，到现在都没有一个说法。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	很可能，是证监会上次对红旗连锁老板蜻蜓点水的处罚（超额减持5亿仅罚款300万），助涨了这种嚣张气焰吧！刀锋不明白，<strong>为何能对活跃游资罚款上亿，却对违规减持的大股东如此&ldquo;格外开恩&rdquo;？难道真如传说中讲的，被打死的都是&ldquo;没背景的妖精&rdquo;？</strong></p>\r\n', '', '', '123.160.235.90');
INSERT INTO `dede_addonarticle` VALUES ('29', '11', '<p>\r\n	近期，一年一度的博鳌亚洲论坛在海南岛成功召开，本届年会吸引了来自49个国家和地区的各界政要人士，盛况空前。</p>\r\n<p>\r\n	<img src=\"/uploads/allimg/160508/1404493U0-0.jpg\" /><br />\r\n	　　会议的成功，除了靠台前星光熠熠的各界领袖，也需幕后默默保驾护航的英雄，&ldquo;公路医生&rdquo;英达就是其中一员。</p>\r\n<p>\r\n	<br />\r\n	　　&ldquo;公路医生&rdquo;临危受命：</p>\r\n<p>\r\n	<br />\r\n	　　25天29公里，质量、速度无可匹敌</p>\r\n<p>\r\n	<br />\r\n	　　海南环岛高速公路东线，是宾客通往博鳌亚洲论坛会址的必经之路，也是展示中国形象的第一张名片。2011年博鳌论坛开幕前，英达大型热再生机组就曾对其部分路段进行了治理。</p>\r\n<p>\r\n	<br />\r\n	　　4年后，博鳌论坛提前召开，未经过&ldquo;公路医生&rdquo;养护的路段则出现了松散、沉陷等局部病害，亟待治理。时间短，任务急，怎么办？海南公路局找来了曾经为环岛高速进行大修的&ldquo;公路医生&rdquo;英达。为此，英达紧急从南京调配4台&ldquo;修路王&rdquo;设备，全力支持博鳌道路治理。</p>\r\n<p>\r\n	<br />\r\n	　　&ldquo;25个工作日就完成了29公里内的路病治理，提前完成了&lsquo;不可能完成的任务&rsquo;。&rdquo; 海南省公路局相关负责人说：&ldquo;从质量上来说，英达&lsquo;修路王&rsquo;采用先进的热再生技术，新旧路面的结合处采用热粘结的方式，避免了弱接缝和弱界面的产生，路面耐久性能远远优于传统工艺。&rdquo;</p>\r\n<p>\r\n	<br />\r\n	　　高科技&ldquo;修路王&rdquo;：</p>\r\n<p>\r\n	<br />\r\n	　　施工不封路，路面材料100％再用</p>\r\n<p>\r\n	<br />\r\n	　　环岛高速为海南岛内唯一一条高速，每日旅游、货运车流量巨大，再加上博鳌论坛召开，车流量更是近乎达到峰值。现场技术人员告诉记者，通常采用传统工艺治理路面病害，需要液压镐、运料车、废料运输车、压路机&hellip;&hellip;众多设备一起上路，占道施工将带来大量车辆拥堵。</p>\r\n<p>\r\n	<br />\r\n	　　而在东线段现场，英达&ldquo;修路王&rdquo;施工只占用一股车道，其他车道车辆均可正常通行，未对交通形成干扰；修复路病后可迅速开放交通，施工30分钟后路面即可跑车。</p>\r\n<p>\r\n	<br />\r\n	　　值得一提的是，&ldquo;修路王&rdquo;另一特点是可以对原路面材料100％就地原价值循环利用，从而减少了大量新沥青混合料的成本，同时无需处理废弃沥青混合料，成本节约效果非常明显。同时，与传统工艺相比，&ldquo;修路王&rdquo;养护成本至少能节省一半。</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('30', '11', '<p>\r\n	近日，&ldquo;2015中国国际砂石技术与装备展&rdquo;和&ldquo;第二届中国砂石骨料行业技术发展(国际)论坛&rdquo;在广州闭幕，来自20多个国家的专业人士共赴此次盛宴，学习和观摩行业当前最高水平的砂石骨料技术和装备，引发参展砂石骨料企业要实现&ldquo;永续发展&rdquo;的深层次思考。作为中国砂石协会常务理事单位、砂石行业先进企业的黎明重工，携主体设备参与对话，呼吁行业、企业要集体发声，共同为绿色砂石梦的实现献策献力。</p>\r\n<p>\r\n	<br />\r\n	　　第二届中国砂石骨料行业技术发展(国际)论坛同期进行，产业研究专家及国内外技术权威、砂石骨料企业、国内外优秀的设备企业代表围绕&ldquo;绿色环保&middot;转型升级&middot;永续发展&rdquo;大主题，以《新常态下的基础原材料经济形势分析》《构建绿色矿山实现砂石骨料行业永续发展》等为分议题，对砂石骨料行业进行多维度的诠释和讨论，以帮助行业开拓思路、助推砂石骨料企业快速转型升级。</p>\r\n<p>\r\n	<br />\r\n	　　随着法制建设不断推进，砂石骨料行业环保问题与产业升级成为企业目前能否生存与永续发展的关键点。一方面，相关部门不断加大对现有砂石企业进行环保考核力度，达不到准入条件的小型砂石企业不断被关停。另一方面，相关部门大规模推广高性能混凝土，砂石骨料品质对高性能混凝土的配制具有重要影响，而传统砂石企业通过落后技术生产的砂石质量无法满足高性能混凝土的要求。而且，随着国家对生态环境保护力度的逐渐加强，节能降耗任务的逐年加重，目前砂石骨料生产作业方式早已不能满足市场需求。现阶段企业责任感缺失、生态环保意识淡薄、生产方式落后、行业缺乏自律等一系列难题仍未解决，这也严重制约了砂石骨料企业的发展。</p>\r\n<p>\r\n	<br />\r\n	　　而这些因素，对于黎明重工来说，是挑战，但也是机遇。黎明重工近年来在破碎制砂设备的研发生产与市场应用中，取得了傲人的成绩，应邀参加此次装备展，同样贡献了最具价值的产品设备及先进理念。据参展的工作人员介绍，本次携带集团公司包括HPT/HST系列液压圆锥破碎机、5X系列冲击式破碎机、VU骨料优化系统等能够展示砂石骨料装配工艺最高水平的主体设备，而这些主体设备在机制砂市场中都具有响当当的名气，不管是用于破碎的HPT/HST系列液压圆锥破随机还是用于整形的5X系列制砂机及更高标准需求的VU砂石骨料优化系统，每一道工序都能对粒型进行有效的控制，砂石质量也能得到有效的改善，最终成品在细度模数、配级、压碎指标等方面，媲美天然砂石，以此来缓解天然砂不足带来的压力，同时也满足了建筑工程对砂石骨料质量的苛刻要求。在现场，这些设备吸引了参展人员及同行的驻足，交流和切磋更深一步，借此，黎明重工的先进工艺及先进理念得以为更多的企业所了解。</p>\r\n<p>\r\n	<br />\r\n	　　除了积极参与主体展会，作为砂石行业的常务理事及骨干企业，黎明重工关注砂石产业经济政策、发展方向，着力开发砂石骨料的创新技术与装备，在节能减排、环境保护、生态恢复、建筑废弃物再生利用等方面为行业提供更多的智力支持。永续发展，此次设备展开篇明义，也是黎明在经历市场大浪淘沙后，为行业及合作伙伴带来的价值，更希望以自身的影响力，号召所有的砂石企业，共同推进中国砂石骨料朝着更好的方向发展，实现绿色砂石梦！（本文来自黎明重工)</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('31', '11', '<p>\r\n	在柴达木盆地上那抹明艳的&ldquo;徐工金&rdquo;，是徐工连续墙抓斗与徐工旋挖钻机、水平定向钻配合施工，为这里如火如荼进行的盐矿开采谱写着传奇：在盐湖平地上挖渠，渠宽1.8米，渠深30-40米，长度长达40公里左右。</p>\r\n<p>\r\n	<img src=\"/uploads/allimg/160508/14052B260-0.jpg\" /><br />\r\n	　　那么，我们就来为大家重点介绍一下XG600D连续墙液压抓斗的性能特点。</p>\r\n<p>\r\n	<br />\r\n	　　应用徐工成熟技术制造的专用超宽底盘，采用大回转支承，整机稳定可靠。</p>\r\n<p>\r\n	<br />\r\n	　　双卷扬单排绳式结构大大提高了钢丝绳的使用寿命，降低了施工成本；搭配采用编码器的控制系统，精确的保证了双卷扬的同步性，降低了同步调整的频率，提高了施工效率。</p>\r\n<p>\r\n	<br />\r\n	　　配置测斜装置，具有抓斗纠偏、触地保护等功能，记录存储抓斗的挖掘作业过程并绘制成槽曲线，可有效地保证成槽精度。</p>\r\n<p>\r\n	<br />\r\n	　　搭配采用编码器的控制系统，精确的保证了双卷扬的同步性，降低了同步调整的频率，提高了施工效率。</p>\r\n<p>\r\n	<br />\r\n	　　液压系统采用负载敏感控制技术，有效的提高了系统资源利用率、施工效率。</p>\r\n<p>\r\n	<br />\r\n	　　控制系统线路采用快速插拔式接头，降低了故障率，缩短了故障检测时间。</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('32', '11', '<p>\r\n	在2015全国两会召开前，一部《柴静雾霾调查&mdash;&mdash;穹顶之下》横空出世。&ldquo;穹顶之下，安能呼吸?&rdquo;一时间拷问着每个国人的心。面对&ldquo;同呼吸，共命运&rdquo;的公民心声，面对柴静陈述燃煤存在&ldquo;末端排放缺乏控制&rdquo;等问题的掷地有声，火电企业工业废气治理再次被推向风口浪尖。</p>\r\n<p>\r\n	<br />\r\n	　　2015年1月1日，号称&ldquo;史上最严&rdquo;的《环保法》开始实施，铁腕治理脱硫、除尘排放等环境问题势必提上日程，相对于一些火电企业的&ldquo;不淡定&rdquo;，黎明重工的客户则表现出极大的信心。</p>\r\n<p>\r\n	<br />\r\n	　　私人定制消除&ldquo;痛点&rdquo;</p>\r\n<p>\r\n	<br />\r\n	　　黎明重工广泛应用于市场的脱硫主设备即为MTW欧版磨或LM立式辊磨机，凭借占地面积小、制粉效率高、运行稳定、维修率低、节能环保等特点，全面狙击电厂污染排放。</p>\r\n<p>\r\n	<br />\r\n	　　大唐集团下属某电厂使用多台MTW175联合作业，用于石灰石脱硫剂的制备。系统全部采用自动化控制，工艺简洁。使用这套脱硫系统，大幅度减少了发电机组SO2 的排放，完全达到了&ldquo;史上最严&rdquo;环保标准。负责人张总对当初的选择感到非常满意。</p>\r\n<p>\r\n	<br />\r\n	　　洛阳某电厂一期工程脱硫石灰石制粉项目采用黎明重工最新专利产品&mdash;&mdash;欧版磨粉机，整个制粉项目为4条独立生产线，设备运行2年，在产量、质量、环保、耗能、安全性等多个指标均达到国内一流水平。</p>\r\n<p>\r\n	<br />\r\n	　　而对一些石灰石脱硫剂的供应商来说，这也是一项利好。石家庄某客户于2012年选购了5台MTW175，整个生产系统每小时产量达到70吨。&ldquo;最关键的是电厂对我们生产的脱硫剂非常满意，我们现在已经是电厂的一级供应商了。所以政策对我们来说不是压力，而是更好的市场机遇。&rdquo;客户如是说。</p>\r\n<p>\r\n	<br />\r\n	　　&ldquo;工匠精神&rdquo;雕刻极致</p>\r\n<p>\r\n	<br />\r\n	　　凭借精益求精的工匠精神，黎明重工从用户角度出发，对每款产品精雕细琢，展现极致。</p>\r\n<p>\r\n	<br />\r\n	　　MTW系列欧版磨粉机在市场中拥有&ldquo;磨机之王&rdquo;的美誉，而LM系列立式磨粉机作为&ldquo;黎明全净化&rdquo;中的一员，在电厂脱硫领域，同样表现不俗。据黎明重工用户保障中心工程师介绍，石灰石粉颗粒的粒度越小，质量比表面积就越大，石灰石颗粒的消溶性能越好，各种相关反应速率较高，脱硫效果就会更好。和MTW系列欧版磨粉机相同，LM立式磨粉机生产的石灰石粉细度和颗粒级配可以控制，而且在制粉工艺流程方面，集破碎、干燥、粉磨、分级、输送于一体，可以将脱硫、脱硝、除尘装置一体化安装。</p>\r\n<p>\r\n	<br />\r\n	　　目前，黎明重工已成功为国电、华电、中电投、华能、华润、北方联合电力等大型电厂设计建立了数十条先进的脱硫生产线，并被愈来愈多的电厂脱硫工程所青睐。</p>\r\n<p>\r\n	<br />\r\n	　　2015年是新《环保法》的实施元年，经济增速换挡的新常态下，环保再度成为两会&ldquo;强音&rdquo;。当然，黎明重工也在不遗余力地诠释着社会责任。如何让火电厂污染物排放标准&ldquo;照进现实&rdquo;，脱硫设施等环保装备将成为重中之重。除了为市场提供技术先进的石灰石粉制备工艺和设备外，黎明重工进一步拓展服务领域&mdash;&mdash;为电厂脱硫提供工程总包服务，不遗余力地使客户保持市场优势，直面绿色未来。（本文来自黎明重工)</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('33', '11', '<p>\r\n	日前，装配有潍柴发动机和林德液压系统的山推全新升级新产品SR22MC压路机在山推装配车间顺利下线，经过整车检测、调试，整车试验性能良好，目前已正式进入试验验证阶段。</p>\r\n<p>\r\n	<img src=\"/uploads/allimg/160508/14055JS5-0.jpg\" /><br />\r\n	　　山推SR22MC压路机为SR22MA系列的升级产品，配套潍柴WP6发动机和林德液压闭式振动系统。据了解，WP6发动机安装体积小、动力强劲、效率高、噪音低，而林德液压闭式振动系统有起振扭矩高、液压冲击小、反应时间短、可靠性高等优势，两者创新性的结合，打造出了独具特色的&ldquo;潍柴产品链&rdquo;，提升了山推压路机的核心竞争力。</p>\r\n<p>\r\n	<br />\r\n	　　潍柴动力控股林德液压后，通过山东重工的平台，加速并深化了与集团内部企业的全面合作，为打造民族工程机械核心竞争力开启了新篇章。（本文来自潍柴）</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('34', '10', '<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/uploads/allimg/160508/1-16050Q40A53K.jpg\" style=\"width: 200px; height: 149px;\" /></div>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('35', '10', '<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/uploads/allimg/160508/1-16050Q40G5U2.jpg\" style=\"width: 200px; height: 149px;\" /></div>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('36', '10', '<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/uploads/allimg/160508/1-16050Q40I1359.jpg\" /></div>\r\n<div>\r\n	山推SR22MC压路机为SR22MA系列的升级产品，配套潍柴WP6发动机和林德液压闭式振动系统。据了解，WP6发动机安装体积小、动力强劲、效率高、噪音低，而林德液压闭式振动系统有起振扭矩高、液压冲击小、反应时间短、可靠性高等优势，两者创新性的结合，打造出了独具特色的&ldquo;潍柴产品链&rdquo;，提升了山推压路机的核心竞争力。</div>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('37', '10', '<div style=\"text-align: center;\">\r\n	<img alt=\"\" src=\"/uploads/allimg/160508/1-16050Q40JEX.jpg\" style=\"width: 200px; height: 149px;\" /></div>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('38', '9', '<span style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑; line-height: 30px; background-color: rgb(245, 245, 245);\">这里是</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft yahei\'; font-size: 14px; line-height: 28px; background-color: rgb(245, 245, 245);\">钻探工具展示</span><span style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑; line-height: 30px; background-color: rgb(245, 245, 245);\">的文字描述，后台发布产品时进行编辑，前台会自动调用！</span>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('39', '9', '<span style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑; line-height: 30px; background-color: rgb(245, 245, 245);\">这里是</span><span style=\"color: rgb(102, 102, 102); font-family: \'Microsoft yahei\'; font-size: 14px; line-height: 28px; background-color: rgb(245, 245, 245);\">钻探工具展示</span><span style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑; line-height: 30px; background-color: rgb(245, 245, 245);\">的文字描述，后台发布产品时进行编辑，前台会自动调用！</span>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('1', '18', '<div>\r\n	1.客户资金出入监管：银联三方存管支付，客户自主出入金；</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; 2.公司账务稽查监管：2011年7月13日，鸿圣资本（香港）资本管理有限公司根据中国《合格境外机构投资者境内证券投资管理办法》（证令第36号）、《基金管理公司特定客户资产管理业务试点办法》（证令第74号）、《中国证监会行政许可申请申报规定》（2009年10月28日 ）、《证券期货业与银行间业务数据交换规则》（2009年04月16日） 、&ldquo;关于证券市场交易结算资金监控系统有关事项的公告&rdquo;（证公告[2010]6号），及中国《证券法》和证券监督管理委员会其他有关规定与中国金融行业相关管理法律法规其他规定，对鸿圣资本融资融券业务（中国大陆地区）证券监管稽查与&ldquo;代扣代缴&rdquo;结算指定之资金账户作出公示，具体&ldquo;中国证券税务稽查及其他企事业之指定对公使用资金帐户&rdquo;和&ldquo;客户信用保证金出入金与结算之指定财务专员收款账户&rdquo;，请详见网站&ldquo;公司资质&rdquo;栏目的《关于鸿圣资本融资融券业务证券监管稽查与结算之指定资金账户的公示》。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; 3.存管区别：&ldquo;三方存管&rdquo;是中国内地监管机构对国内证券市场参与商采用的一种监管机制，它是在参与市场的证券经纪商和投资者之间，建立的基于银行（独立第三方)的资金存管机制。包括股市的&ldquo;银证转账&rdquo;、现货市场的&ldquo;银商转账&rdquo;，和期货市场的&ldquo;银期转账&rdquo;。三方存管针对的都是国内的经纪商，所以境外的基金公司是无法办理该项业务。在国外没有&ldquo;三方存管&rdquo;制度，类似的资金存管采用的是&ldquo;分理账户&rdquo;的形式（独立分开理财账户的意思，每个客户独立着一个对应的资金接收、存管的银行账户）。客户出入金的资金转账，公司认可的是投资人开户时绑定的指定收款银行户头。像现今在国内普遍存在的炒外盘的外汇、黄金和国际期货的都是这种形式，客户操作资金必须换成美元出境再存入以客户名义开立的账户，而客户结束交易出金亦然。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; 4.最优流程：故我公司为了进一步确保客户的资金安全，采用的是资金&ldquo;代扣代缴&rdquo;的形式，也就是我们公司要预先在鸿圣资本公司存入一定足量的交易保证金，以供在向鸿圣资本申请客户账户和按比例产生融资交易资金时的代扣代缴。这样就避免了客户的资金在出入境情况下可能产生的风险和相关的费用与时间耽误。同时，我公司为了规范和优化业务流程，公司办理了电子商务通用的三方支付业务，由银联批准的三方支付公司统一监管客户的操作资金，客户可自主出入金，通过网银自主实时转账或提交转账指令，在正常工作日内客户出金均可100％实现当天实时到账，一般5分钟内客户则可自主完成资金的转账操作与资金支取。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp; 郑重提醒：若投资者是通过在我公司各级代理或经纪商处开立账户的，为确保您的资金安全，账户入金建议您从交易系统客户端的&ldquo;资金转账&rdquo;入口通过网银转账形式完成&ldquo;银转证&rdquo;的入金操作，而不要以任何现金交收的方式将操作资金交予代理商、经纪人及其雇员。客户出金&ldquo;证转银&rdquo;，亦是直接通过交易系统客户端的&ldquo;资金转账&rdquo;入口选择&ldquo;出金&rdquo;选项，提交&ldquo;出金&rdquo;划转的操作指令，资金将划转至客户开户时绑定的客户本人的银行账户。</div>\r\n', '', '', '115.56.138.64');
INSERT INTO `dede_addonarticle` VALUES ('2', '18', '<div>\r\n	&nbsp;&mdash;&mdash; 这只是交易机制的限定下产生的区别，在国外证券市场股票的交易普遍采用的是T+0机制，少数也有T+1和T+5的。而我国国内的现货市场和期货市场就是采用的T+0交易机制。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp;那为什么在我国股票市场统一的T+1交易机制下，QFII类基金的金牛融资融券交易能够做到T+0的即时交割平仓机制呢？</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp;其实很简单，那是因为基金公司持有大量的该标的股票而代替投资者卖出了结的。举例，假设基金公司长线持有1000万股&ldquo;四川路桥&rdquo;，您融券买入1万股该股做空，当天您即平仓卖出该股。这笔交易的转化行为，其实是基金公司把它持有的&ldquo;四川路桥&rdquo;借了1万股给你，然后你平仓卖出的不是你那1万股该股票，而是在你买入证券还给基金公司的同时，基金公司它再卖出该股里面其他同等数量的1万股从而实现了T+0交易。再打个简单的比喻，其实这种形式的T+0交易，很多股民朋友在平时的A股普通交易中也经常用到。比如，您昨天买入了5000股&ldquo;上海汽车&rdquo;，今天上午该股低开低走，您上午逢低又买入了5000股&ldquo;上海汽车&rdquo;来补仓以降低和平摊成本价，到了下午该股出现反弹价格涨到了超过您两笔分批成交的1万股该股的平均价，您见机卖出了5000股以落袋为安。那么你在T+1交易机制下是怎样把你今天买的5000股&ldquo;上海汽车&rdquo;卖出以实现了T+0交易的呢？那是因为你卖出的是昨天的5000股。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; 所以金牛融资融券实现T+0交易很简单，只需满足两点：一、金融信用机构标的股持仓量足够大，以足够满足投资者的借入量；二、持有是发生在&ldquo;过去&rdquo;而不是当天买入的。而QFII基金所持有的这千余支A股股票刚好满足这两点要求，它是长线、大量持有了这些股票来做价值投资的。</div>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('3', '18', '<p p=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	<span style=\"line-height: 2em;\">1</span><span style=\"line-height: 2em;\">、发挥价格稳定器的作用</span></p>\r\n<p p=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	<span style=\"line-height: 2em;\">2</span><span style=\"line-height: 2em;\">、有效缓解市场的资金压力</span></p>\r\n<p p=\"\" span=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	<span style=\"line-height: 2em;\">3</span><span style=\"line-height: 2em;\">、刺激A股市场活跃</span></p>\r\n<p p=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	4、改善券商生存环境</p>\r\n<p p=\"\" span=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	<span style=\"line-height: 2em;\">5</span><span style=\"line-height: 2em;\">、多层次化证券市场的基础</span></p>\r\n<p p=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	<span style=\"line-height: 2em;\"><span style=\"line-height: 32px;\"><span style=\"line-height: 32px;\">&nbsp; &nbsp;&nbsp;</span></span>（二）、一分为二来理解融资融券对证券市场可能带来的影响，则既有正面的也有负面的&mdash;&mdash;</span></p>\r\n<p p=\"\" span=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	<span style=\"line-height: 2em;\">&nbsp; &nbsp; 首先，可以为投资者提供融资，必然给证券市场带来新的资金增量,这会对证券市场产生积极的推动作用。但出于控制风险的考虑，各市场都会对融资的比例有一定的限制，中国台湾地区证券融资余额占股市总市值的比重为1.5％，欧美国家也一般不超过2％,这样按照A股3万亿的市值，新增资金可能在450亿元左右，对市场有一定积极作用，但并不是决定性的。&nbsp;</span></p>\r\n<p p=\"\" span=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	<span style=\"line-height: 32px;\">&nbsp; &nbsp;&nbsp;</span><span style=\"line-height: 2em;\">再次，融资融券的引入为投资者提供了新的盈利模式。融资使投资者可以在投资中借助杠杆，而融券可以使投资者在市场下跌的时候也能实现盈利。这为投资者带来了新的盈利模式。&nbsp;</span></p>\r\n<p p=\"\" span=\"\" style=\"color: rgb(102, 102, 102); font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 14px;\">\r\n	<span style=\"line-height: 32px;\">&nbsp; &nbsp;&nbsp;</span><span style=\"line-height: 2em;\">首先，融资融券可能助涨也可能助跌，增大市场波动，进而可能助长市场的投机气氛。&nbsp;</span></p>\r\n<span style=\"line-height: 32px;\">&nbsp; &nbsp;</span><span style=\"line-height: 2em;\">其次，可能增大金融体系的系统性风险。融资可能导致银行信贷资金进入证券市场，如果控制不力，将有可能推动市场泡沫的形成，而在经济出现衰退、市场萧条的情况下，又有可能增大市场波动，甚至引发危机。&nbsp;</span>', '', '', '222.138.67.203');
INSERT INTO `dede_addonarticle` VALUES ('4', '18', '<div>\r\n	&mdash;&mdash;&ldquo;融资融券&rdquo;又称&ldquo;证券信用交易&rdquo;，它存在于大部分国家和地区的证券市场，是成熟证券市场的基本功能。在欧美发达国家和新加坡、香港等地区的市场，融资融券业务的发展非常早且很繁荣。我国证券市场2010年3月才正式推出融资融券业务。简单地说,融资就是由券商或者其他专门的金融信用机构为投资者购买证券提供融资，而融券可以理解为做空，就是客户可以从证券公司或者向其他专门的金融信用机构借来证券卖出,在未来的某一时间再到市场上买回证券归还。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp;融资融券业务在世界范围主要有两种模式：一是集中信用模式，二是分散信用模式，也叫市场化信用模式，在国外主要国家的市场普遍采用的是市场化分散信用模式。概括起来讲，融资融券包括：券商对投资者的融资融券，和其他金融信用机构对投资者、对券商的融资融券。所以并不是只有证券公司（券商）才能提供融资融券业务的服务，一些特定的金融信用机构也可以提供融资融券服务，比如投资银行、基金公司、证券金融公司（也叫证券融资公司）等。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp;在我国，融资融券业务的发展尚属初级阶段，所以国家对融资融券业务发展的管理和控制比较集中，开放力度不够，而现实中市场对融资融券的需求却非常巨大。所以目前除了券商提供的，在我国证券市场机制下产生的融资融券业务，市场上还催生了很多商业化的融资融券行为，比如基金公司和其他大型金融投资机构提供的融资融券服务等。简单地说，就是券商的融资融券属于我国证券体系下的体制性产物，其他金融信用机构提供的融资融券服务，目前都属于商业竞争环境下的商业行为，可以概括为商业化融资融券服务（类似的衍生业务，还有像数量众多的企业和机构提供的股票配资、期货配资服务等等）。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp;鸿圣（香港）资本提供的融资融券服务，是公司在鸿圣公司下的一个代理经纪业务，并不是我们公司对投资者直接提供了融资融券。它的产生是基于基金公司将其作为资金配置而长线持有的A股优质股票交予期货公司托管，期货就把这些股票锁仓形成的独立股票池而开发出一套QFII类融资融券交易系统，再对投资者发行以提供的A股商业化融资融券服务。本公司为鸿圣资本融资融券平台在大中华地区的唯一指定服务商（限中国香港、中国澳门、中国大陆，不含台湾地区）。</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	&nbsp; &nbsp; &nbsp;总结，投资者去证券公司做融资融券，他融的资融的券就是券商借给他的，而通过我们公司做的融资融券交易，他融的资和融的券就是QFII类基金借给他的。这其实就是唯一的区别所在。</div>\r\n', '', '', '115.56.138.64');
INSERT INTO `dede_addonarticle` VALUES ('6', '6', '<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	2001年12月11日，历经15年的艰难谈判之后，我国正式加入WTO，至此我国各行业全方面全球化的开放步伐已经开始。</p>\r\n<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp; &nbsp;&nbsp;在经济、金融全球化的今天，我国作为一个发展中的大国，自然不能脱离全球化的潮流，造成经济被边缘化。参与全球化，金融业首当其冲的成为开放、发展的先锋。在外资金融机构类型的准入上，基本是按照先银行，后保险再证券的顺序逐步开放。如今，十多年过去了，外资银行的入驻、中外合资保险公司的相继成立和发展，为我国金融市场初步和国际接轨已奠定了一定的基础。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp; &nbsp;&nbsp;为进一步顺应世界金融行业发展的趋势，2010年3月31日，我国A股市场正式推出了融资融券业务。&ldquo;融资融券&rdquo;业务是成熟证券市场的基本功能，存在于大部分国家和地区的证券市场,除欧美国家外，在亚洲的新加坡、日本、韩国和香港等证券市场也普遍存在。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp; &nbsp;&nbsp;融资融券作为国际证券市场一项普遍实施的成熟交易制度，引进我国有利于充分发挥证券市场的功能，亦为我国的投资者和券商提供了新的盈利模式。因此，作为证券市场基础建设的完善之举，融资融券的推出必定对我国金融行业的快速发展起到极大的推动作用，对我国证券市场的发展具有划时代的意义</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('7', '6', '<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	2001年12月11日，历经15年的艰难谈判之后，我国正式加入WTO，至此我国各行业全方面全球化的开放步伐已经开始。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp;&nbsp;在经济、金融全球化的今天，我国作为一个发展中的大国，自然不能脱离全球化的潮流，造成经济被边缘化。参与全球化，金融业首当其冲的成为开放、发展的先锋。在外资金融机构类型的准入上，基本是按照先银行，后保险再证券的顺序逐步开放。如今，十多年过去了，外资银行的入驻、中外合资保险公司的相继成立和发展，为我国金融市场初步和国际接轨已奠定了一定的基础。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp;&nbsp;为进一步顺应世界金融行业发展的趋势，2010年3月31日，我国A股市场正式推出了融资融券业务。&ldquo;融资融券&rdquo;业务是成熟证券市场的基本功能，存在于大部分国家和地区的证券市场,除欧美国家外，在亚洲的新加坡、日本、韩国和香港等证券市场也普遍存在。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;</p>\r\n<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp;&nbsp;融资融券作为国际证券市场一项普遍实施的成熟交易制度，引进我国有利于充分发挥证券市场的功能，亦为我国的投资者和券商提供了新的盈利模式。因此，作为证券市场基础建设的完善之举，融资融券的推出必定对我国金融行业的快速发展起到极大的推动作用，对我国证券市场的发展具有划时代的意义。 &nbsp;</p>\r\n', '', '', '123.160.235.90');
INSERT INTO `dede_addonarticle` VALUES ('8', '6', '<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	（1）目前在开展融资融券业务的券商有</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;首批6家券商（2010年3月19日）&mdash;&mdash;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;中信证券、国信证券&nbsp;、海通证券、国泰君安&nbsp;、光大证券、广发证券；&nbsp;&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;第二批5家券商（2010年6月8日）&nbsp;&mdash;&mdash;&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	<span style=\"line-height: 32px;\">&nbsp; &nbsp;&nbsp;</span>申银万国证券、东方证券、招商证券、华泰证券、银河证券&nbsp;；&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;第三批14家券商名单（2010年11月25日）&nbsp;&mdash;&mdash;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;宏源证券、国元证券、长江证券、兴业证券、安信证券、</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;平安证券、国都证券、中信建投证券、中投证券、方正证券、</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;长城证券、齐鲁证券、西南证券、中金公司&nbsp;；&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;第四批将会有44家。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	（2）券商提供的可供融资融券交易的股票</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp; 原来试运营推出时，融资融券标的股为上证50指数（50支）和深证成份指数（40支）的股票，共90支成分股。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp; 现在（从2011年12月5号起）融资融券标的股：上证180指数全部180支成分股及深证100指数成分股中除&ldquo;深圳能源&rdquo;和&ldquo;粤电力A&rdquo;的98只股票，总计278只个股。和7支交易型开放式指数基金（ETF）首次被纳为融资融券交易标的，分别是华夏上证50ETF、华安上证180ETF、华泰柏瑞上证红利ETF、交银上证180治理ETF、易方达深100ETF、华夏中小板ETF及南方深成ETF。现在一共285支。&nbsp;</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;股票明细，上证180指数成分股：输&ldquo;SZ180&rdquo; 深证100指数成分股：输&ldquo;SZ100&rdquo;可以查得。</p>\r\n', '', '', '123.160.235.90');
INSERT INTO `dede_addonarticle` VALUES ('9', '6', '<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	融资融券又称&ldquo;证券信用交易&rdquo;，是指投资者向特定的金融信用机构提供担保物，借入资金买入证券或借入证券并卖出的行为。它是一种到期还本付息的证券信用交易机制的表现形式。包括券商对投资者的融资、融券和其他金融机构对券商或投资者的融资、融券。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp;&nbsp;融资融券存在于大部分国家和地区的证券市场，是成熟证券市场的基本功能。简单地说，融资就是由券商或者其他专门的金融信用机构为投资者购买证券提供融资；而融券就是做空机制，客户可以从证券公司或者其他专门的金融信用机构借来证券卖出，在未来的某一时间再到市场上买回证券归还。</p>\r\n<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px; line-height: 30px;\">\r\n	&nbsp; &nbsp; 融资融券在世界范围主要有两种模式：一是以欧美、中国香港为代表的分散信用模式，由券商等金融机构独立向客户提供；二是日本、韩国、中国台湾的集中信用模式，成立专门的证券融资公司，向客户提供融资融券。</p>\r\n', '', '', '123.160.235.90');
INSERT INTO `dede_addonarticle` VALUES ('10', '6', '<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	1.国外融资融券模式</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;融资融券在海外主要有两种模式：&nbsp;一种是全能银行体制下的&ldquo;市场化&rdquo;融资融券模式；&nbsp;另一种是以证券金融公司为主体的&ldquo;集中授信&rdquo;模式。在金融市场发达的欧美国家，市场机制完善、法制框架健全、信用基础好，因而普遍采取的是第一种融资融券模式。而在一些欠发达的国家和地区，由于市场发育时间短、监管手段滞后、信用环境薄弱等因素的存在，实施全能&ldquo;市场化&rdquo;模式的监管风险很大，因而大多采用了&ldquo;集中授信&rdquo;模式，设立具有不同程度垄断地位的证券金融公司，专门从事证券交易经纪公司资金或证券不足的转融通业务。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp;（1）市场化模式</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp; &nbsp; 以美国为代表的全市场化运作模式应该说是最成熟和最有效率的运作模式。在美国，并没有组建专门为券商转融通而设的&ldquo;证券金融公司&rdquo;，任何机构只要是资金的富裕者，就可以参与融资，只要是证券的拥有者，就可以参与融券。美国是全球最开放的金融体系，资金来去自由，法制环境完善，全世界最大的金融机构云集，资金供给充裕。</p>\r\n<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp;（2）&nbsp;集中授信模式</p>\r\n<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n	&nbsp; &nbsp; 这种模式又分为&ldquo;单轨制&rdquo;和&ldquo;双轨制&rdquo;，前一种以日本为代表，日本设立了半官方性质，具有特许权和垄断地位的证券金融公司（现有3家，&ldquo;日本证券金融公司&rdquo;占主导），专门负责办理券商申请的转融通业务，其它任何金融机构都无权直接办理。如果证券金融公司需要资金支持，它可向别的金融机构提出借贷要求。在这种模式中，证券公司与银行在证券抵押融资上被分隔，证券金融公司作为中介，形成了证券市场与货币市场之间的一座桥梁。这种模式的主要优点是：首先，有利于政府对证券市场信用总量的控制。证券金融公司是整个证券市场中证券和资金的中转枢纽。客户不可以绕过券商直接向金融公司申请融借资券，证券公司也不可以向银行等金融机构获得信用交易中所需的证券或资金。因此，日本财务省只要通过控制证券金融公司，就可以调控进出证券市场的资金和证券的流量，控制信用交易的放大倍数。其次，有利于稳定市场。证券金融公司同时还获得政府授权，可确定一定时期内全市场融资融券总额度，并将这些额度以内控的方式分配给各个证券公司。如果某个证券公司的融资融券额已达到了限额，证券金融公司将停止向其提供资券转融通。融资融券总额度是根据市场状况调整的。当市场过热时，额度会下调；而当市场过于低迷时，额度又会放宽。从而有利于防止市场的大起大落，稳定市场。这种模式的缺点有很突出：非市场化导致融资成本及效率下降。</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('11', '6', '<p style=\"margin: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	一众权重股护盘了一天，费尽心力的结果，大盘还是绿了。虽然周日我已经提醒过，这周要提防调整风险，但今天还是要再强调一下，必须得加倍小心了！股市最悲惨的事就是，等大盘调整了，才想起要买股票。</p>\r\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	1.这两天已经讲过了判断大盘要调整的方法。今天早盘跌停个股数目以及个股下跌幅度，就超过了上周，已经出现风险信号，下午个股杀跌局面进一步恶化。</p>\r\n<div class=\"img-container\" style=\"margin-top: 30px; color: rgb(0, 0, 0); font-family: arial; font-size: 12px;\">\r\n	<img class=\"normal\" src=\"http://t11.baidu.com/it/u=1202036866,3929289708&amp;fm=173&amp;s=CCE4855244A2AAB2D29F3FE60300A02A&amp;w=389&amp;h=221&amp;img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\" width=\"389px\" /></div>\r\n<p style=\"margin: 26px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	60分钟，K线和MACD形成连续背离，收盘时MACD临近死叉！结合日线形态，极有可能形成恶性循环。</p>\r\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	另外，量能放出本轮反弹的最高量，但K线创出新高之后回落了，量增价跌有点尴尬。短线向下支撑在趋势下轨和半年线。</p>\r\n<div class=\"img-container\" style=\"margin-top: 30px; color: rgb(0, 0, 0); font-family: arial; font-size: 12px;\">\r\n	<img class=\"large\" src=\"http://t11.baidu.com/it/u=1290112924,4211717018&amp;fm=173&amp;s=485133C2F3F4B2680A580C0F0300E0C2&amp;w=640&amp;h=358&amp;img.JPEG\" style=\"border: 0px; width: 537px;\" /></div>\r\n<p style=\"margin: 26px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	2.新股发行再度提速对次新股杀伤很大。股市为了新股发行服务?还是新股发行为了股市服务？这是个话题。感觉这次调整节奏的用意是试探一下情绪，情绪大说明场内心态脆弱。周日提到一个赚钱的新风口。这里再强调一下，所说的业绩增长是指新公布的，之前已经公布的不算。今天雪榕生物公布业绩同比增长超过200%，涨停了（盘中打开过），注意看形态。</p>\r\n<div class=\"img-container\" style=\"margin-top: 30px; color: rgb(0, 0, 0); font-family: arial; font-size: 12px;\">\r\n	<img class=\"large\" src=\"http://t11.baidu.com/it/u=2382570685,819959405&amp;fm=173&amp;s=41523BC2CBACB36A1E59B40F0100F0C1&amp;w=640&amp;h=358&amp;img.JPEG\" style=\"border: 0px; width: 537px;\" /></div>\r\n<p style=\"margin: 26px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	3.有粉丝问：周期性行业股票还能拿吗？上周提醒了一周，现在才反应过来。很多朋友股票赔钱的原因大都在于这里，市场赚钱风口刚刚形成的时候犹豫不决不敢买入，等到风刮了很久股票涨了很多，才看清楚并下定决心追高买入，于是就被套住了。</p>\r\n<div class=\"img-container\" style=\"margin-top: 30px; color: rgb(0, 0, 0); font-family: arial; font-size: 12px;\">\r\n	<img class=\"normal\" src=\"http://t10.baidu.com/it/u=1864065960,175197433&amp;fm=173&amp;s=D0A29D1A43FBD5ED04FCF05C030060F5&amp;w=479&amp;h=315&amp;img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\" width=\"479px\" /></div>\r\n<p style=\"margin: 26px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	从今天的个股表现看，以涨价概念为首的周期行业权重股上涨还在继续，但其中一些风险信号值得注意：比如热点扩散的有点散，一些权重个股有补的感觉，持续性让人怀疑，今天启动的券商板块甚至是整体业绩下降的；同时前期强势的板块，如石墨烯龙头方大炭素，有进入拉升尾声的嫌疑。</p>\r\n<div class=\"img-container\" style=\"margin-top: 30px; color: rgb(0, 0, 0); font-family: arial; font-size: 12px;\">\r\n	<img class=\"large\" src=\"http://t11.baidu.com/it/u=1422475957,3239628339&amp;fm=173&amp;s=41503BC2CBACB36852702C1F0100D0C1&amp;w=640&amp;h=358&amp;img.JPEG\" style=\"border: 0px; width: 537px;\" /></div>\r\n<p style=\"margin: 26px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	赶上大盘调整的时点，要介入这些个股，只能从趋势入手，寻找刚刚完成形态突破的。任何热点的参与都是一样，越到后面肯定风险越大，所以要做好止损准备。</p>\r\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	4.所以对于大多数朋友来说，顺势逢高减仓，等到大盘调整企稳之后再逢低买进才是稳健和提倡的做法。</p>\r\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	5.还有粉丝问：这个月啥时候开公益课堂？别急，等大盘稳稳。别赶上急跌，到时候我也两眼发黑，气氛容易尴尬。</p>\r\n<p style=\"margin: 22px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial;\">\r\n	6.股票池中，风华高科今天下跌，但形态还没完全走坏，还有反击可能，今天走势比较关键，而龙蟒佰利加入护盘大军，继续上涨，都留档观望。</p>\r\n<div class=\"img-container\" style=\"margin-top: 30px; margin-bottom: 4px; color: rgb(0, 0, 0); font-family: arial; font-size: 12px;\">\r\n	<img class=\"normal\" src=\"http://t11.baidu.com/it/u=2665077091,400644636&amp;fm=173&amp;s=1DFE7C965B425AD6DE9296F003004029&amp;w=522&amp;h=329&amp;img.JPEG\" style=\"border: 0px; display: block; margin: 0px auto;\" width=\"522px\" /></div>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('12', '6', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">1、【大盘分析】</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">今天喷的好，调的也好，指数一路冲高到3700点以上才震荡回落下，虽然压回来不少，但终盘报收仍然在3670点，高过各均价线以上，这进一步增强了各周期均线的上行优势，尤其是经过2周的横向扩展后，使得20日均价线向上自然抬高位置后，促使20日均线线的乖离率较小，对增量推升起到极大的助推效应。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<div class=\"slide-pic\" style=\"position: relative; display: inline-block; overflow: hidden; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">\r\n	<img alt=\"【财耕谈•收评(0711】大盘会继续向上推进\" src=\"/uploads/allimg/170712/1541194M0-0.png?imageView2/2/w/600\" style=\"vertical-align: bottom; border: 0px; max-width: 100%; margin: 0.294118em 0px 0.705882em; height: auto; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 2px; border-radius: 1px; background-color: rgb(255, 255, 255);\" title=\"【财耕谈•收评(0711】大盘会继续向上推进\" /><span class=\"slide-icon\" style=\"color: rgb(255, 255, 255); text-align: center; height: 2.5625em; width: 2.5625em; background: rgba(0, 0, 0, 0.5); display: inline-block; border-radius: 0.3125em; position: absolute; right: 0.375em; top: 0.61118em;\"><span class=\"b-ft-icon\" style=\"font-family: blog; overflow: hidden; display: inline-block; font-size: 3.575em; height: 0.72em; line-height: 0.58em;\">X</span></span></div>\r\n<br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">而且今日还有一大好处，就是成交量能的稳健释放，今日扩增量达到1451亿元，呈现明显蓄势增量的态势，既使得日单位量能高过各均量线水平，也促使各均量线扣低走高，保持各周期量潮的上涨。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<img alt=\"【财耕谈•收评(0711】大盘会继续向上推进\" src=\"/uploads/allimg/170712/1541195310-1.png?imageView2/2/w/600\" style=\"vertical-align: bottom; border: 0px; max-width: 100%; margin: 0.294118em 0px 0.705882em; height: auto; box-shadow: rgba(0, 0, 0, 0.3) 0px 1px 2px; border-radius: 1px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px;\" title=\"【财耕谈•收评(0711】大盘会继续向上推进\" /><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">并且随着各均量线扣低走高的移动势头，之前40日均量线还在60日均量线下方，而依照当前移动扣减关系，也已经可以确立周三必然会促使40日均量线向上穿越60日均量线，这意味着周三会进入量潮上的长线三叉助涨模式，也促成各均量线的有序多头排列关系。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">量增价涨的推升模式，从技术形态上完成了艺术性创作，这个结构特征是比较能够吸引投资者的关注，也能够让更多的投资者产生共鸣，这也就是我们常常所说的量价结构的涨势共振效应，比较能够获得投资者的认可，从而产生合力作用并由此助推行情顺延现有趋势的发展。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">而客观一些来看待，盘面中的分歧，也足以让我们确立，资金继续往主板市场流进，尤其是创业板这几天的下跌，再次让参与其中的投资者失望，从而继续逼使身在其中者离开创业板，这中一而再再而三的失望，会促使短时间难以得到有效的转变，需要一些时间来再次寻找投资者认可的低点，而通常就是缩量沉淀，以&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">时间来换取空间。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">所以短期来看，创业板流出的资金又会转向主板市场，这更有助于主板市场的量能扩增，而这恰恰是主板市场最渴求的部分。所以这几天我们也看到可以再一次推动大型银行股发力，这也是较为典型的特征。并且，券商股也有从底部起涨的特征，连续数日维持不小的量能扩增，也算是积极的现象。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">另外还有煤炭有色等资源型股票的上涨，这些板块出现了许多个股的翻多走势，也具有吸附资金的能力，而且上周起涨的稀土类的股票，其大量的释放，更像是场外资金的扫货行为，但由于结构性劣势，必然会带来较大的解套卖压，从而需要大量震荡，才可能会进一步推进。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">所以近来两天的大量震荡，但价格依然保持相对的优势，这增添了对上周以量破价的积极预判。从这个角度来看，也是一个比较能够吸纳许多资金的板块，而且还可以形成热络的效应，算是一个较大的板块，不同类型的资金都可以施展自己的操作能力，所以这个板块还会有轮涨的预期。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">因此，我们从主板市场中这些比较具有代表性的板块上，也能够看到继续上行的推动力较丰富，可以使力的点较多，而且都能够容纳大量的资金参与。所以，我们还是大胆的做出预判，沪深300市场将继续往3838点推进。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">2、【市场表现】</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">今天早上抡起锤子就干了券商，那跳空高开的行为，的确看起来气势不错，虽然最后没咋地，压回来小涨，但这个势头已经起来了，是个突破的架势，进攻力度也得到量能的扩增表现出来，估计大概率会有进一步的表现。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">银行股的表现要胜过券商，虽然早上起步的时候晚了些，但持续的力度和扩大的范围来讲，要强了很多。特别是龙头平安的示范效应，了不得的架势，你看，她那姿态，有几分像平安保险5月初的突破架势了，还有点像招商银行月12日那根标志性的长阳。的确很难不让人多些想法嘛。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">涨的看过了，也来看看跌的板块吧。估计最牵动股人心的，怕是今天稀土的集体下跌，的确是大比例下挫。不过我要提醒大家，不这么干，要是扛着不动，反倒危机四伏。只有这样通过大量换手后，反倒再来的时候，上的轻松。不过必须要多数几句的是，不要以为有色板块可以整体上行，我们看的是稀土，而且是稀土矿资源。明白了吗？</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">总的来说，通过大盘指数的表现，来观察相应个股的机会，显然更容易捕捉到上涨的机会。所以大家要继续围绕50、沪深300市场，寻找低位优质优势个股的交易时机。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">3、【市场展望】</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">① 观察沪深300，今日成交金额1451亿元，成交量小幅扩增，继续保持稳健状态，仍然维系各周期量潮的上涨，属于多头涨势量潮的修整量行为，其实对后续增量进攻有利。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">② 指数（沪深300指数）低开后快速拉升，并一路震荡走高，直至回盘压回作收。其增量推升的结果，进一步增强各周期均线的涨势结构，仍然可以进一步向上看高指数。预期目标往上看到3838点区域，同时关注20日周期的变动情况。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">③ 大盘（沪深300指数）周线结构上促成96周均价线扣低走高，形成五子送财的涨势结构，启动周线级别的主升模式。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">④ 大盘（沪深300指数）日线结构上，目前已经促使各均价线同步扣低走高，形成有序多头排列关系，呈五子送财的绝对多头模式。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">4、【投资建议】</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">① 大盘（沪深300指数）早盘低开后快速拉升，之后持续走高，刷新高点后折返修整，吻合短期获利盘兑现利润的需求，而且在创业板的大幅走低下，也会引发投资者的谨慎心理，小小波动不足为惧，仍然具有继续接力向上推进的预期。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">② 观察沪深300指数，明日周三，预期会进一步增量推高指数。但由于今日尾盘的压回动作，会带来周三早盘的低开，但很快就会拉上平盘之上，然后震荡走高。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">不过根据今天冲高回落的震荡行为，也存在周三拉高同样会引发盘中回落的行为，但应该不会再跌尾盘，恰恰有利于下午盘往上拔高作收。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">当然，凡事无绝对，也可能全天不涨反跌。但即便如此仍然可以期待稳定在20日均价线之上，还不会就此急转之下。真正会产生的危机，应该是下周这个时点，仍然不能向上拔出一个更高的台阶，那么就需要主动做出防守了。主要就在于对20日周期的变动预期，我们会跟踪说明。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">③ 股票的选择仍是以下几个思路，一是优质蓝筹股票的低位优势，可以大胆布局；二是进入明确的多头涨势结构的白马类股票，可以等待回调时低买的机会；三是选取周K线完成底部构建，且在日K线上呈现积极换手行为的股票，进行低位布局。</span><br style=\"line-height: 2.44em; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\" />\r\n<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, STHeiTi, &quot;Microsoft YaHei&quot;; font-size: 16.96px; background-color: rgb(251, 251, 251);\">（本栏声明：文章内容纯属人观点及理论论证说明，仅是提供您参考不应该构成投资建议；个股的分析说明不是推荐、点评，也不是建议操作，只是针对麦氏理论的量潮基础进行说明，投资者要自行研判，风险自担。）</span>', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('13', '6', '<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　<strong>一、【要闻速递】</strong></p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	<br />\r\n	　　1、新华社：退市与暂停上市齐加码 A股有进有退成常态。新华社发文称，A股市场在IPO常态化的同时，退市也日趋常态化，特别是随着退市制度执行的强化，A股上市公司&ldquo;有序进退&rdquo;有望成为现实。评：构建A股良好的市场生态需要&ldquo;有序进退&rdquo;，保证&ldquo;进口&rdquo;和&ldquo;出口&rdquo;顺畅，才能让池子里的水有序地流动起来.　　1、第5次全国金融工作会议或于近日召开。<a href=\"http://finance.china.com.cn/stock/quote/sh601211/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"国泰君安 601211\">国泰君安</a>11日发布策略报告认为，该会议是中国金融界最高规格的会议，一般5年召开一次，主要分析当前<a href=\"http://app.finance.china.com.cn/stock/cate/detail.php?symbol=400128174\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"金融改革 400128174\">金融改革</a>发展面临的新形势，同时对今后一个时期的重要金融工作做出部署。 评：本次会议有望提升风险偏好、改善流动性，进一步推动龙马行情扩散切换。会议后，对监管风险、政策风险的预期将从分歧走向一致，风险偏好或进一步提升，流动性的边际改善预计将得以延续。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　2、<a href=\"http://finance.china.com.cn/stock/quote/sz002570/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"贝因美 002570\">贝因美</a>闪崩跌停机构推荐投资者抛弃。11日下午开盘后，贝因美遭遇&ldquo;闪崩&rdquo;，跌势凶猛，期间成交额近1亿。收盘后，贝因美相关人士表示，没有找到股价突然下跌的原因。评：虽然贝因美基本面近几日并未出现明显利空消息，但目前整个市场的逻辑比较清晰，业绩好就涨，业绩不好就撑不住，贝因美业绩不理想，而股价相对较高。投资者或已不想等待业绩复苏，采取了先卖出措施。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　2、乐视发不出工资因招行超20倍查封资产？招行：与实际情况严重不符。据媒体报道，相关人士透露，乐视工资延迟发放重要原因是因招行超出债务的20倍冻结乐视财产。<a href=\"http://finance.china.com.cn/stock/quote/sh600036/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"招商银行 600036\">招商银行</a>11日晚间声明称，有关报道与实际情况严重不符。评：乐视这场牌局将如何演绎，还是个谜，只是种种不良信号或早已让人难以重复当初的信心。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　4、万科将参与雄安新区6.5平方公里项目建设。万科近日已经与雄安新区筹备工作委员会签署协议，协议中包含一个&ldquo;新安小镇&rdquo;计划，该小镇作为雄安新区落地的第一个大项目，致力于打造功能性创新型小镇新样板。评：深圳地铁相比华润来说，可以为万科带来更多实质性的帮助。如今看来，深圳国资支持万科的决心确已付诸实践。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　5、套现约338亿港币董建华家族退出香港海运业。中远海运以每股不低于78.67港元的价格收购董建华家族持有的68.7%东方海外国际股份。评：这宗交易缔造出的实体将是从亚洲到北美洲大陆航线上的最大货运公司，连根本哈根的马士基和法国的达飞集团都只能甘拜下风，还将创造出<a href=\"http://finance.china.com.cn/stock/quote/sh601099/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"太平洋 601099\">太平洋</a>里的最大海运公司。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　6、外盘：特朗普之子公布的电子邮件使困扰其特朗普任期的有关俄罗斯争议将会继续，使特朗普政策改革前景变得黯淡，美股收盘涨跌不一，科技股推动纳指连续第三日收高；黄金期货投资者等待美联储主席耶伦国会讲话以判断加息时间安排，同时美国政治不确定性因素令金价得到支撑，纽约黄金上涨0.1%报收1214.70美元；美国能源信息署预测美国2018年原油产量下降，且利比亚与尼日利亚可能参与减产谈判推动原油价格回升，纽约原油上涨1.4%报收45.04美元，重新站上45美元；欧股投资者在美联储主席耶伦讲话前保持谨慎，泛欧斯托克600收跌0.7%报379.15点，创4月21日以来最低收盘。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	<strong>　　二、【市场温度】</strong></p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　周二两市共14只涨停股，比周一少7只，涨停数创一年新低，自然涨停仅6只；12只股票跌停；涨幅超5%的个股37只，比周一少30只；跌幅超5%的个股113只，比周一少17只，连续两天超过100只。累计成交4574亿，环比缩量8.7%。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　市场调整信号更加明显，再次走出墓碑线，<a href=\"http://finance.china.com.cn/stock/quote/sz399006/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"创业板指 399006\">创业板指</a>继续大跌，一九行情。盘面上，银行与保险两大板块涨幅超过1%，成为上涨50大涨的原因，也是沪指跌幅较小的原因，相反，在<a href=\"http://finance.china.com.cn/stock/quote/sz300104/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"乐视网 300104\">乐视网</a>负面消息的冲击下，创业板指提前调整，消化乐视复牌后可能带来的压力；<a href=\"http://finance.china.com.cn/stock/quote/sh000819/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"有色金属 000819\">有色金属</a>板块尾盘跳水，<a href=\"http://finance.china.com.cn/stock/quote/sz300618/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"寒锐钴业 300618\">寒锐钴业</a>等两股跌停；中报<a href=\"http://app.finance.china.com.cn/stock/cate/detail.php?symbol=400124561\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"高送转 400124561\">高送转</a>今日回调，<a href=\"http://finance.china.com.cn/stock/quote/sz300571/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"平治信息 300571\">平治信息</a>跌停，带动前期涨幅较大的中报预增个股回调；水泥板块接替煤炭有色钢铁，成为周期性板块主力，两股涨停。截至收盘，沪指勉强守住3200点，创业板指再次大跌1%。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　沪深两市调整来临，沪指重点关注3170上下的半年线支撑；创业板放量大跌破位，需要等待短期企稳信号。整体上，本周是调整时，需要更加注意风险。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　<strong>　三、【题材掘金】</strong></p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　PVC：周二，国内PVC生产企业集体上调出厂价，乙烯料上调200元/吨，最高报价达到7000元/吨，电石料上调200-450元/吨，报价普遍在6400元/吨以上，去年同期价格约5400元/吨。此轮PVC上涨从6月中旬开始，进入7月以后涨速明显加快，部分企业10天内3次上调出厂价，涨幅在5%-8%。从国内期货价格看，PVC1709合约自6月21日低点5730元/吨反弹，周二收报6675元/吨，涨幅近16.5%。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　<a href=\"http://app.finance.china.com.cn/stock/cate/detail.php?symbol=400129776\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"人工智能 400129776\">人工智能</a>：谷歌周一表示，该公司已经启动了一项新研究计划，指在改善普通用户与人工智能的互动与协作方式。该计划名为&ldquo;人与人工智能 &rdquo; 简称 PAIR)。谷歌接下来会陆续发布一些新的工具，来让AI系统的内部工作机制变得更加透明。同时，谷歌还将启动一系列的科研计划来探索更有效的人机合作模式。亚马逊、<a href=\"http://app.finance.china.com.cn/stock/cate/detail.php?symbol=400128162\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"苹果 400128162\">苹果</a>、Facebook和微软等IT巨头过去几年一直积极投身于人工智能领域。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　钢铁：据媒体11日报道，武钢出台2017年8月份产品价格政策，对各品种钢材价格进行上调。其中，热轧上调300元/吨。冷轧方面，优碳及深冲高强钢上调200元/吨，其他上调300元/吨。同时，周二主力期货合约螺纹钢1710涨3.66%，创出年内新高，较6月初的低点涨幅超过20%。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　<a href=\"http://app.finance.china.com.cn/stock/cate/detail.php?symbol=400129980\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"3D玻璃 400129980\">3D玻璃</a>：<a href=\"http://finance.china.com.cn/stock/quote/sz002594/\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"比亚迪 002594\">比亚迪</a>7月11日接受机构调研时表示，明年大部分旗舰手机都会使用3D玻璃机壳，旗舰机大概占手机出货量的15%-20%，也就是有3亿部左右的手机前后盖都是会用3D玻璃，合计3D玻璃需求约6亿片，未来手机的趋势将会是金属中框加前后盖3D玻璃。比亚迪电子已经开始在玻璃机壳上有所布局，目前还在不断的扩充玻璃机壳产能来满足未来客户的需求，下半年公司玻璃业务就可以量产，玻璃良率也将达到较高水平。</p>\r\n<p style=\"font-size: 16px; font-family: 微软雅黑; padding: 7px 0px; margin: 0px; color: rgb(51, 51, 51); line-height: 32px;\">\r\n	　　<a href=\"http://app.finance.china.com.cn/stock/cate/detail.php?symbol=400129730\" style=\"padding: 0px; margin: 0px; color: rgb(13, 81, 156); text-decoration-line: none; outline: none;\" target=\"_blank\" title=\"军民融合 400129730\">军民融合</a>：中共上海市委常委学习会11日下午听取国防大学国防经济研究中心教授姜鲁鸣所作的《深入实施军民融合发展战略》专题辅导报告。市委书记韩正主持会议并强调，全市各级领导干部要深入学习领会习近平总书记关于军民融合发展的重要讲话精神，以改革创新的精神服务好、实施好军民融合发展国家战略，真正把军民融合思想融入和贯穿于全市经济社会发展的方方面面，为推动军民融合深度发展作出上海的更大贡献。</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('14', '6', '<p class=\"detailPic\" style=\"margin: 0px auto 10px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	<img alt=\"\" data-ratio=\"1\" data-type=\"jpeg\" data-w=\"400\" src=\"/uploads/allimg/170712/15451U520-0.jpg\" style=\"border: 0px; vertical-align: bottom; display: block; margin: 0px auto; max-width: 100%; height: auto;\" /></p>\r\n<p class=\"picIntro\" style=\"margin: 0px 0px 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43);\">\r\n	新闻配图</p>\r\n<p style=\"margin: 0px 0px 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	近期沪深A股市场热点此起彼伏，但都难以持续。上周以次新股为代表的创业板只活跃了几天，就被周期股的崛起所压制。就在市场对周期股行情再次抱有希望之际，今日周期股熄火回落，前期表现强势的以金融、消费股为主的&ldquo;漂亮50&rdquo;奋勇争先。对于这种纷乱的盘面，投资者的确很难把握。但与此同时，我们发现两市成交较之前有所放大&mdash;&mdash;沪市已经连续四天成交金额超过了2000亿元，深市也连续四天成交金额超过了2500亿元。这或许表明，近期已有资金在悄然入市。对此，我们统计了对市场较为敏感的一类资金&mdash;&mdash;近期两市个股融资动向。</p>\r\n<p style=\"margin: 0px 0px 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	统计发现，自大盘从6月19日缓慢震荡攀升以来，两市融资余额也是节节走高（见下图），除了3个交易日外，其他13个交易日都呈净流入状态。截至7月10日，两市融资余额为8827.75亿元，这也是近两个月来的新高。杠杆资金源源不断的入市，正显示了市场情绪在回暖，投资者信心在提升。&nbsp;</p>\r\n<p class=\"detailPic\" style=\"margin: 0px auto 10px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	<img alt=\"\" data-ratio=\"0.5894942\" data-type=\"png\" data-w=\"514\" src=\"/uploads/allimg/170712/15451R020-1.jpg\" style=\"border: 0px; vertical-align: bottom; display: block; margin: 0px auto; max-width: 100%; height: auto;\" /></p>\r\n<p class=\"picIntro\" style=\"margin: 0px 0px 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43);\">\r\n	制图：数据应用部</p>\r\n<p style=\"margin: 0px 0px 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	同时观察6月19日以来的个股融资情况可以发现，其间涨幅超过20%的20只个股中（见下表），除了光正集团、云铝股份、华新水泥3只个股的融资余额小幅减少外，其他17只个股的融资金额都呈净流入态势。其中，方大炭素、陕西煤业的融资余额增加了近80%，晨鸣纸业、科大讯飞增加了近50%。这表明，个股融资额增加与股价走强之间存在着较强的正相关。</p>\r\n<p class=\"detailPic\" style=\"margin: 0px auto 10px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	<img alt=\"\" data-ratio=\"0.9435897\" data-type=\"png\" data-w=\"585\" src=\"/uploads/allimg/170712/15451TL3-2.jpg\" style=\"border: 0px; vertical-align: bottom; display: block; margin: 0px auto; max-width: 100%; height: auto;\" /></p>\r\n<p class=\"picIntro\" style=\"margin: 0px 0px 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43);\">\r\n	制图：数据应用部</p>\r\n<p style=\"margin: 0px 0px 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	从行业属性来看，6月19日以来融资净流入超过2亿元的30只个股中，行业分类较为分散，同属一个行业的公司最多只有3家（见下表），这也与热点较为凌乱的近期市场格局相吻合。</p>\r\n<p class=\"detailPic\" style=\"margin: 0px auto 10px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	<img alt=\"\" data-ratio=\"0.96875\" data-type=\"png\" data-w=\"640\" src=\"/uploads/allimg/170712/15451U147-3.jpg\" style=\"border: 0px; vertical-align: bottom; display: block; margin: 0px auto; max-width: 100%; height: auto;\" /></p>\r\n<p class=\"picIntro\" style=\"margin: 0px 0px 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43);\">\r\n	制图：数据应用部</p>\r\n<p style=\"margin: 0px 0px 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	为了从近几日融资额的变化情况来观察未来的个股趋向，我们又对7月5日到7月10日这四交易日的个股融资情况进行了统计。统计发现，有58只个股在这四个交易日中融资金额呈连续净流入态势。再进一步观察，在四个交易日中融资净流入超过2亿元的方大炭素、陕西煤业、万华化学、厦门钨业都属于周期股，这与上周末和周一周期股活跃的市场表现相一致。</p>\r\n<p style=\"margin: 0px 0px 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	由于目前市场热点难以持续，我们对58只个股进行进一步筛选，以寻找短期有望走强个股。我们首先剔除了7月5日到7月10日期间涨幅大于4%的个股，在剩下的42只个股中我们再以期间融资余额增加幅度大于5%为条件进行排序，一共有20只个股符合条件（见下表）。</p>\r\n<p class=\"detailPic\" style=\"margin: 0px auto 10px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	<img alt=\"\" data-ratio=\"0.4609375\" data-type=\"png\" data-w=\"640\" src=\"/uploads/allimg/170712/15451RV1-4.jpg\" style=\"border: 0px; vertical-align: bottom; display: block; margin: 0px auto; max-width: 100%; height: auto;\" /></p>\r\n<p class=\"picIntro\" style=\"margin: 0px 0px 25px; padding: 0px; font-size: 14px; text-align: center; word-wrap: break-word; word-break: normal; font-family: 楷体_gb2312, 楷体; color: rgb(43, 43, 43);\">\r\n	制图：数据应用部</p>\r\n<p style=\"margin: 0px 0px 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	对这20只个股有不少券商进行了研究，比如，国泰君安发表研报认为，未来随着MDI销量增长、新产品投放以及八角工业园成本下行，万华化学（600309）的盈利中枢将持续上行。预计公司2017-2019年每股收益分别为2.88元、3.22元、3.44元，予&ldquo;增持&rdquo;投资评级，目标价31.68元；康美药业（600518）近期获批广东省内配方颗粒生产试点，中金公司发表研报认为公司正式打响进攻战，未来盈利能力有望得到提升。预测2017年、2018年每股盈利为0.81元、0.98元，予&ldquo;推荐&rdquo;投资评级，目标价为27.00元。</p>\r\n<p style=\"margin: 0px 0px 25px; padding: 0px; text-indent: 28px; font-size: 14px; text-align: justify; word-wrap: break-word; word-break: normal; color: rgb(43, 43, 43); font-family: simsun, arial, helvetica, clean, sans-serif;\">\r\n	我们还可以看到，这20只个股的行业属性并不集中，或预示着后市市场风格仍然难以一统。而四个交易日中融资净流入超过1亿元的万华化学、康美药业、金科股份、凯乐科技、复星医药、东阿阿胶的6股中有4股属于医药类，说明投资者开始偏向防御。</p>\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('15', '6', '<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	负面消息不断，创业板今天又崩了！据统计，<strong>创业板本周跌4.9%，创近一年最大周跌幅！</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	副主席定调不允许&ldquo;炒小、炒新、炒差&rdquo;，基本上给创业板判了死刑；IPO再次加速，连续不断的给创业板输送新的&ldquo;垃圾&rdquo;，估值体系崩塌；龙头股温氏股份、网宿科技、碧水源、掌趣科技业绩大幅下滑，高增长幻象不再；神雾环保、三聚环保等环保白马，持续被媒体负面消息纠缠&hellip;&hellip;</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	最最重要的差点儿忘了，<strong>乐视网这颗潜藏的大地雷，还不知道何时引爆！</strong>曾几何时，乐视网是创业板的最牛标杆，一度数千亿市值，肩负着中国版纳斯达克的光荣使命。几年时间便分崩离析，潮水退去，董事长都跑到美国不敢回来了。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	关于创业板，转述一个朋友的观点：<strong>刘士余不是北大毕业的，他是清华工科生。理工，讲究逻辑论证，讲究实业报国，这是清华的百年传统。所以重资产涨，传媒游戏、网络等轻资产跌成狗。</strong>肖钢是湖南财经大学毕业，属于文科，所以他治理下的A股，漫天飞舞。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	创业板今天跌到前期低点附近，理论可以抄底做个反抽，但刀锋长期不碰创业板，也就不做具体推荐了。管理层提倡价值投资，打压中小创，目的就是让大家去炒上证50和白马股，顺便帮郭嘉队解套。这段时间，钢铁煤炭水泥这些夕阳产业天天大涨，代表创新未来的科技股却江河日下，想想就很悲哀。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	不过，<strong>创业板确实也没啥好股票，每年500家的IPO也基本都是垃圾，</strong><strong>中国真正牛逼的高科技公司都在国外</strong>，比如阿里巴巴，昨晚在美股大涨再创历史新高。阿里巴巴映射到国内，就是有垄断地位能在全球赚钱的白马股。因此，海康威视、格力电器这种股票，刀锋长线继续看好。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	<strong>&hellip;&hellip;</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	昨晚文章提示，锂电池回调是买入时机，结果今天开盘仅回调了几分钟就雄起了。多氟多、天齐锂业、赣锋锂业今天再次爆发，<strong>作为唯一高景气的行业，锂电行情未完。因为电动车全球普及已进入爆发期，特斯拉的model3将引爆潮流。</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	电动车迎来超高速增长是完全可以预期的，今年就是爆发元年，刀锋预测，<strong>最多两年时间，家庭轿车将以买电动车为荣，买汽油车会被人看不起。</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	目前来看，电动车下游整车，吉利汽车和北汽新能源在国内处于领先位置，但吉利汽车在港股，股价一直在涨；A股的比亚迪起了个大早，赶了个晚集，比亚迪倡导的铁电池，并没有形成通用标准，反而特斯拉的三元电池，全球风行。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	电动车中游主要是电池组装、汽车零部件等，中国已处于全球领先地位，龙头企业也会逐渐受益，比如杉杉股份、当升科技、华域汽车、一汽富维、三花智控等；<strong>电动车上游最为受益，因为门槛较高资源垄断有定价权。</strong>比如天齐锂业、赣锋锂业、雅化集团、华友钴业、洛阳钼业、先导智能、诺德股份等。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	<strong>&hellip;&hellip;</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	今天白酒股涨幅第一，酒鬼酒涨停。酒鬼酒这只股票，刀锋昨晚仔细研究了一番，主要是业绩大增迎来拐点，龙虎榜三家机构介入，其中包括深港通席位；而且比较贵州茅台泸州老窖等，相对位置较低。但今天开盘上冲太快，刀锋就放弃了，没想到尾盘能涨停。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	今天马后炮分析酒鬼酒，并不是推荐买入，而是要提示一个重要信号：<strong>即便是存量博弈的熊市阶段，公募机构和外资，也开始掌握A股市场话语权，游资兴风作浪的时代宣告结束。</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	重点券商和知名分析师的研报，在这个崇尚&ldquo;价值投资&rdquo;的年代，也突然变得有些价值了。大家平时有时间，可以多看看，尤其是新财富上榜的，或许能找到选股线索。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	<strong>&hellip;&hellip;</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	创业板指数虽然崩盘，但上证50指数今天可是又创了新高！刀锋统计发现：流通股本最大的前30只股，今天全部飘红，而流通股本倒数30只股，基本都是绿的。这说明什么？说明<strong>A股港股化正在成为现实。</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	<strong>而这一切的根本原因，就是无休无止的IPO大扩容。</strong>今晚，证监会又要发批文了。上周IPO数量仅增加了3只，结果本周次新股指数就暴跌7.94%，创业板指暴跌4.9%。按照&rdquo;钝刀子慢割肉、温水煮青蛙&ldquo;的规律，这周是不是应该适当缓和一下？</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	刚刚，爱股票APP弹出一条新闻，《贝因美：半年报由预盈修正为亏损近4亿元》，刀锋感到非常气愤，<strong>贝因美先闪崩跌停，再停牌公告巨亏，赤裸裸的内幕交易，这种套路今年在A股很流行！</strong>包括昨天的青龙管业，也是盈利变巨亏，今天一字跌停。更早之前还有正虹科技，也是如此，闪崩后公告亏损，然后连续两个跌停。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	满满的套路满满的坑，证监会除了抓游资，就不干点儿正事儿？<strong>这才是股市最大的毒瘤啊！</strong><strong>上市公司与庄家里应外合，肆意践踏三公原则，中小散户被玩弄于鼓掌之中，难怪会有人说股市连赌场都不如！</strong></p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	还有昨天的北方稀土，第二大股东在涨停板上违规&ldquo;超计划&rdquo;减持，一天套现两个亿，为了钱毫无诚信可言，追涨散户和游资被坑！证监会制定的《减持新规》形同虚设，到现在都没有一个说法。</p>\r\n<p background-color:=\"\" font-size:=\"\" hiragino=\"\" sans=\"\" style=\"margin: 1em 0px; padding: 0px; border: 0px; list-style: none; word-wrap: break-word; word-break: normal; line-height: 1.5; font-size: 14px; text-align: justify; color: rgb(93, 93, 93); font-family: helvetica, Arial; background-color: rgb(75, 140, 202);\">\r\n	很可能，是证监会上次对红旗连锁老板蜻蜓点水的处罚（超额减持5亿仅罚款300万），助涨了这种嚣张气焰吧！刀锋不明白，<strong>为何能对活跃游资罚款上亿，却对违规减持的大股东如此&ldquo;格外开恩&rdquo;？难道真如传说中讲的，被打死的都是&ldquo;没背景的妖精&rdquo;？</strong></p>\r\n', '', '', '123.160.235.90');
INSERT INTO `dede_addonarticle` VALUES ('16', '6', '&nbsp;投资这类个股,还有几个方面要注意:<br />\r\n&nbsp;<br />\r\n　　1、除权前做横向比较<br />\r\n&nbsp;<br />\r\n　　即在高送转股除权前先按除权后的价值进行横向比较,具体分为投机价值比较和投资价值比较。<br />\r\n&nbsp;<br />\r\n　　2、股价的定位<br />\r\n&nbsp;<br />\r\n　　定位要从长远着手,从除权后的价格分析,如果一只个股除权后仍属于中高价股,投资者要注意定位偏高的风险;如果除权后进入低价股范围,同时业绩没有被严重稀释,则可积极介入。<br />\r\n&nbsp;<br />\r\n　　3、上市公司本身的业绩水平<br />\r\n&nbsp;<br />\r\n　　如果上市公司有新的利润增长点以及产业前景看好,富有成长性,则股价往往会填权;反之,则容易贴权。<br />\r\n&nbsp;<br />\r\n　　4、注意股票的新旧<br />\r\n&nbsp;<br />\r\n　　有些老股票经过多次送转以后,不仅复权价高得惊人,而且今后缺乏继续大比例送转的能力,这样的高送转题材往往会成为主力出货的良机,投资者不宜参与。而流通盘较小且首次分配的次新股有再次继续送转的潜力,容易被主力长期运作,是适宜投资的品种。<br />\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('17', '6', '0z指数<br />\r\n<br />\r\n今日两市涨幅超过3%的个股157只，其中涨停个股16只；跌幅超过3%的个股447只，其中跌停个股12只。<br />\r\n<br />\r\n今日0Z指数虽低开低走，小幅收阴，但最终收盘位置仍处于5日成本均线上方，且下方的13日成本均线也<br />\r\n<br />\r\n即将与34日成本均线形成金叉，这些现象对多方依然较为有利，说明市场大多数个股仍处于相对强势当中，<br />\r\n<br />\r\n后市行情或有继续向好的可能。不过从下方的多空资金来看，今日0Z指数的多空资金出现较大流出，资金<br />\r\n<br />\r\n流出量明显超过了上周五的资金流入量，这说明市场中的短线抛压有所增强，多方须及时予以应对<br />\r\n。<br />\r\n因为从近几周的反弹情况来看，市场中大多数个股的回暖速度极为缓慢，反映出当前投资者的做多信心并<br />\r\n<br />\r\n不充足，后市若空方力量持续加大，就会使得这原本就不足的做多信心进一步下降，届时市场主动权很可<br />\r\n<br />\r\n能会回到空方手中，并引发大多个股的再次下落。建议大家控制好手中仓位，谨慎操作。<br />\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('18', '6', '周二两市再现&ldquo;超级分化&rdquo;行情，上证50指数大幅反弹，创业板指数受次新股板块调整影响继续走弱，近一个月文中每日提示的白马龙头集体王者归来，恭喜跟上节奏的朋友！今日河长制以及全面屏概念盘中有所休整，买点再现！点击文末【阅读原文】，下载大咖问股APP，反弹中继行情已经确认，获取更多概念股详细信息，抓紧机会，提前布局！<br />\r\n&nbsp;<br />\r\n　　大盘午后受次新股指数杀跌影响午后快速回落，市场结构性分化继续加剧，50指数创新高，而创业板却在不断调整，市场上基于流动性因素已有不少声音在怀疑这里反弹的持续性并对创业板后市持悲观态度。<br />\r\n&nbsp;<br />\r\n　　对于后市老铁维持中证500指数突破6229点积极看多的观点不变，上证指数第一目标位在3250点附近，没有到达这里以前就是坚定看多。<br />\r\n', '', '', '127.0.0.1');
INSERT INTO `dede_addonarticle` VALUES ('19', '6', '在A股市场中，长期投资低价股，或许已经成为部分投资者的获胜方法。纵观多年来的A股表现，低价股往往具有较大的投资潜力，且&ldquo;股市不死鸟&rdquo;神话多发生在低价股身上。在此期间，如果投资者有幸遇上了多年不遇的牛市行情，则低价股给投资者带来的投资收益率还是非常惊人的。<br />\r\n&nbsp;<br />\r\n　　&ldquo;低买高卖&rdquo;，这是市场不变的法则。从实际情况下，在A股市场中，低价股发生&ldquo;黑天鹅&rdquo;事件乃至暴跌走势的可能性会远低于中高价股，而长期下来，那些5元以下的低价股，往往也被市场认为是低风险的投资品种。或许，在A股市场中，&ldquo;越便宜越安全&rdquo;已经成为了不少投资者的真实想法。<br />\r\n&nbsp;<br />\r\n　　确实，我们不能够否认低价股的投资魅力，但对于投资者来说，在投资低价股的同时，更需要熟悉交易规则，以及尽可能了解上市公司的真实状况，否则一旦踩中投资陷阱，则投资风险也将会是不可小觑的。<br />\r\n&nbsp;<br />\r\n　　其中，从交易规则来看，如果上市公司的股票收盘价格连续均低于每股的面值水平，则将会触发退市的风险。<br />\r\n&nbsp;<br />\r\n　　实际上，这一规则的存在，也给部分1元股带来了不少的隐忧。就目前而言，截至今年7月11日，沪深两市低于2元的股票有两家，分别是*ST海润（600401）以及*ST锐电（601558）。换言之，如果公司股票收盘价格连续20个交易日跌破面值水平，则将会触发退市的风险，而这对盲目崇拜低价股的投资者来说，也将会是一个沉重的打击。<br />\r\n&nbsp;<br />\r\n　　再者，上市公司股价虽然低廉，但股价低廉自有其自身的原因。<br />\r\n&nbsp;<br />\r\n　　其中，对于不少低于5元的低价股而言，往往属于市值庞大、流通股数较大的状况。与此同时，因这类股票机构基金扎堆持股，也很难产生快速脱离底部的行情，但对于这类股票的基本面状况，还是无需过分担忧的。<br />\r\n&nbsp;<br />\r\n　　不过，对于部分低价股而言，既有其业绩不稳定的因素，又有其自身经营风险的问题。至于极少数的低价股，还可能会存在一些特殊的原因，如财务会计报告被出具无法表示意见的审计报告、证监会立案调查、涉及欺诈上市业绩造假以及其余市场争议太大的风险等。由此一来，对于这类低价股而言，其自身潜在的投资风险不可小觑，稍有不慎，则可能会引发股价异动，乃至暂停上市、终止上市的风险。<br />\r\n&nbsp;<br />\r\n　　或许，对于热衷于投资低价股的A股投资者来说，可能还是受益于A股市场的投资环境以及交易规则。与之相比，近年来港股市场&ldquo;闪崩&rdquo;现象频繁上演，且多与低价股有关。<br />\r\n&nbsp;<br />\r\n　　究其原因，一方面是属于港股市场自身的特殊交易规则问题，而部分&ldquo;老千股&rdquo;现象也成为了港股市场的历史遗留问题；另一方面则是港股市场普遍低价股的面值极低，有的甚至低至0.1元，乃至0.01元，而这类低价股普遍存在持股集中度过高等风险，一旦存在资金异动或消息面的恶化，则部分做空机构可能巧妙借助港股市场的交易规则大举做空，达到更好的套利目的。<br />\r\n&nbsp;<br />\r\n　　值得一提的是，港股市场可以允许T+0交易，但需要实行T+2交收，同时不设涨跌幅的限制。这，与A股市场的交易规则相比，存在巨大的差别性，此举也给外部做空机构带来了套利的空间。<br />\r\n&nbsp;<br />\r\n　　由此可见，如果把A股市场投资低价股的方式照搬至港股市场，其潜在的投资风险还是不可小觑，并瞬间把风险增加好几倍。<br />\r\n&nbsp;<br />\r\n　　在A股市场中，投资低价股本来是一种较稳健的应对策略。但，在投资低价股的同时，更需要了解好市场的交易规则，充分了解好上市公司的基本状况以及潜在的问题，从本质上提升投资低价股的安全性，时刻警惕&ldquo;越便宜越安全&rdquo;的投资误区。<br />\r\n', '', '', '123.160.235.1');

-- ----------------------------
-- Table structure for dede_addonimages
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonimages`;
CREATE TABLE `dede_addonimages` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pagestyle` smallint(6) NOT NULL DEFAULT '1',
  `maxwidth` smallint(6) NOT NULL DEFAULT '600',
  `imgurls` text,
  `row` smallint(6) NOT NULL DEFAULT '0',
  `col` smallint(6) NOT NULL DEFAULT '0',
  `isrm` smallint(6) NOT NULL DEFAULT '0',
  `ddmaxwidth` smallint(6) NOT NULL DEFAULT '200',
  `pagepicnum` smallint(6) NOT NULL DEFAULT '12',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  `body` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `imagesMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonimages
-- ----------------------------

-- ----------------------------
-- Table structure for dede_addoninfos
-- ----------------------------
DROP TABLE IF EXISTS `dede_addoninfos`;
CREATE TABLE `dede_addoninfos` (
  `aid` int(11) NOT NULL DEFAULT '0',
  `typeid` int(11) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(60) NOT NULL DEFAULT '',
  `userip` varchar(15) NOT NULL DEFAULT ' ',
  `senddate` int(11) NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `nativeplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `body` mediumtext,
  `endtime` int(11) NOT NULL DEFAULT '0',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `linkman` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`,`nativeplace`,`infotype`),
  KEY `channel` (`channel`,`arcrank`,`mid`,`click`,`title`,`litpic`,`senddate`,`flag`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addoninfos
-- ----------------------------

-- ----------------------------
-- Table structure for dede_addonshop
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonshop`;
CREATE TABLE `dede_addonshop` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  `price` float NOT NULL DEFAULT '0',
  `trueprice` float NOT NULL DEFAULT '0',
  `brand` varchar(250) NOT NULL DEFAULT '',
  `units` varchar(250) NOT NULL DEFAULT '',
  `templet` varchar(30) NOT NULL,
  `userip` char(15) NOT NULL,
  `redirecturl` varchar(255) NOT NULL,
  `vocation` char(20) NOT NULL DEFAULT '0',
  `infotype` char(20) NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonshop
-- ----------------------------

-- ----------------------------
-- Table structure for dede_addonsoft
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonsoft`;
CREATE TABLE `dede_addonsoft` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filetype` varchar(10) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `softtype` varchar(10) NOT NULL DEFAULT '',
  `accredit` varchar(10) NOT NULL DEFAULT '',
  `os` varchar(30) NOT NULL DEFAULT '',
  `softrank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `officialUrl` varchar(30) NOT NULL DEFAULT '',
  `officialDemo` varchar(50) NOT NULL DEFAULT '',
  `softsize` varchar(10) NOT NULL DEFAULT '',
  `softlinks` text,
  `introduce` text,
  `daccess` smallint(5) NOT NULL DEFAULT '0',
  `needmoney` smallint(5) NOT NULL DEFAULT '0',
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `softMain` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonsoft
-- ----------------------------

-- ----------------------------
-- Table structure for dede_addonspec
-- ----------------------------
DROP TABLE IF EXISTS `dede_addonspec`;
CREATE TABLE `dede_addonspec` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `note` text,
  `templet` varchar(30) NOT NULL DEFAULT '',
  `userip` char(15) NOT NULL DEFAULT '',
  `redirecturl` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_addonspec
-- ----------------------------

-- ----------------------------
-- Table structure for dede_admin
-- ----------------------------
DROP TABLE IF EXISTS `dede_admin`;
CREATE TABLE `dede_admin` (
  `id` int(10) unsigned NOT NULL,
  `usertype` float unsigned DEFAULT '0',
  `userid` char(30) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(20) NOT NULL DEFAULT '',
  `tname` char(30) NOT NULL DEFAULT '',
  `email` char(30) NOT NULL DEFAULT '',
  `typeid` text,
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_admin
-- ----------------------------
INSERT INTO `dede_admin` VALUES ('1', '10', 'admin', 'f297a57a5a743894a0e4', 'admin', '', '', '0', '1517294863', '222.174.71.98');

-- ----------------------------
-- Table structure for dede_admintype
-- ----------------------------
DROP TABLE IF EXISTS `dede_admintype`;
CREATE TABLE `dede_admintype` (
  `rank` float NOT NULL DEFAULT '1',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `system` smallint(6) NOT NULL DEFAULT '0',
  `purviews` text,
  PRIMARY KEY (`rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_admintype
-- ----------------------------
INSERT INTO `dede_admintype` VALUES ('1', '信息发布员', '1', 't_AccList a_AccNew a_AccList a_MyList a_MyEdit a_MyDel sys_MdPwd sys_Feedback sys_MyUpload plus_留言簿模块 ');
INSERT INTO `dede_admintype` VALUES ('5', '频道管理员', '1', 't_AccList t_AccNew t_AccEdit t_AccDel a_AccNew a_AccList a_AccEdit a_AccDel a_AccCheck a_MyList a_MyEdit a_MyDel a_MyCheck co_AddNote co_EditNote co_PlayNote co_ListNote co_ViewNote spec_New spec_List spec_Edit sys_MdPwd sys_Log sys_ArcTj sys_Source sys_Writer sys_Keyword sys_MakeHtml sys_Feedback sys_Upload sys_MyUpload member_List member_Edit plus_站内新闻发布 plus_友情链接模块 plus_留言簿模块 plus_投票模块 plus_广告管理 ');
INSERT INTO `dede_admintype` VALUES ('10', '超级管理员', '1', 'admin_AllowAll ');

-- ----------------------------
-- Table structure for dede_advancedsearch
-- ----------------------------
DROP TABLE IF EXISTS `dede_advancedsearch`;
CREATE TABLE `dede_advancedsearch` (
  `mid` int(11) NOT NULL,
  `maintable` varchar(256) NOT NULL DEFAULT '',
  `mainfields` text,
  `addontable` varchar(256) DEFAULT NULL,
  `addonfields` text,
  `forms` text,
  `template` varchar(256) NOT NULL DEFAULT '',
  UNIQUE KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_advancedsearch
-- ----------------------------

-- ----------------------------
-- Table structure for dede_arcatt
-- ----------------------------
DROP TABLE IF EXISTS `dede_arcatt`;
CREATE TABLE `dede_arcatt` (
  `sortid` smallint(6) NOT NULL DEFAULT '0',
  `att` char(10) NOT NULL DEFAULT '',
  `attname` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`att`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arcatt
-- ----------------------------
INSERT INTO `dede_arcatt` VALUES ('5', 's', '滚动');
INSERT INTO `dede_arcatt` VALUES ('1', 'h', '头条');
INSERT INTO `dede_arcatt` VALUES ('3', 'f', '幻灯');
INSERT INTO `dede_arcatt` VALUES ('2', 'c', '推荐');
INSERT INTO `dede_arcatt` VALUES ('7', 'p', '图片');
INSERT INTO `dede_arcatt` VALUES ('8', 'j', '跳转');
INSERT INTO `dede_arcatt` VALUES ('4', 'a', '特荐');
INSERT INTO `dede_arcatt` VALUES ('6', 'b', '加粗');

-- ----------------------------
-- Table structure for dede_arccache
-- ----------------------------
DROP TABLE IF EXISTS `dede_arccache`;
CREATE TABLE `dede_arccache` (
  `md5hash` char(32) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `cachedata` mediumtext,
  PRIMARY KEY (`md5hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arccache
-- ----------------------------
INSERT INTO `dede_arccache` VALUES ('432530e74bc0032a9be5ae12a2665824', '1517043328', '2,4,1,3');
INSERT INTO `dede_arccache` VALUES ('5d4cf4c0a7503197d22b102029955c2f', '1517043328', '19,7,8,9,15,18,17,16,14,13');

-- ----------------------------
-- Table structure for dede_archives
-- ----------------------------
DROP TABLE IF EXISTS `dede_archives`;
CREATE TABLE `dede_archives` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid2` varchar(90) NOT NULL DEFAULT '0',
  `sortrank` int(10) unsigned NOT NULL DEFAULT '0',
  `flag` set('c','h','p','f','s','j','a','b') DEFAULT NULL,
  `ismake` smallint(6) NOT NULL DEFAULT '0',
  `channel` smallint(6) NOT NULL DEFAULT '1',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `money` smallint(6) NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `shorttitle` char(36) NOT NULL DEFAULT '',
  `color` char(7) NOT NULL DEFAULT '',
  `writer` char(20) NOT NULL DEFAULT '',
  `source` char(30) NOT NULL DEFAULT '',
  `litpic` char(100) NOT NULL DEFAULT '',
  `pubdate` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `keywords` char(30) NOT NULL DEFAULT '',
  `lastpost` int(10) unsigned NOT NULL DEFAULT '0',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `goodpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `badpost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `voteid` mediumint(8) NOT NULL,
  `notpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(40) NOT NULL DEFAULT '',
  `dutyadmin` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tackid` int(10) NOT NULL DEFAULT '0',
  `mtype` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `weight` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `mainindex` (`arcrank`,`typeid`,`channel`,`flag`,`mid`),
  KEY `lastpost` (`lastpost`,`scores`,`goodpost`,`badpost`,`notpost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_archives
-- ----------------------------
INSERT INTO `dede_archives` VALUES ('1', '18', '0', '1509964566', 'p', '1', '1', '0', '96', '0', 'QFII类融资融券不是国内券商，资金安全怎么保障', '', '', 'admin', '未知', '/uploads/170711/1-1FG11KR2C8.png', '1509964566', '1499766747', '1', '美联储,如期,加息,传递,经济,走强,信号,影响,', '0', '0', '0', '0', '0', '0', '参考消息网3月17日报道 外媒称，美联储3月15日如期提高利率，这是3个月以来的第二次、也是特朗普上台后的第一次，再次印证美国经济表现良好。 据埃菲社华盛顿3月15日报道，美联储', '', '1', '0', '0', '0');
INSERT INTO `dede_archives` VALUES ('2', '18', '0', '1515829029', 'p', '1', '1', '0', '144', '0', '金牛融资融券T+0', '', '', 'admin', '未知', '/uploads/170711/1-1FG11KR2C8.png', '1515829029', '1499768236', '1', '融资,融券,的,概念,融资,融券,又称,证券,信用,', '0', '0', '0', '0', '0', '0', '融资融券又称证券信用交易，是指投资者向特定的金融信用机构提供担保物，借入资金买入证券或借入证券并卖出的行为。它是一种到期还本付息的证券信用交易机制的表现形式。包括', '', '1', '0', '0', '1');
INSERT INTO `dede_archives` VALUES ('3', '18', '0', '1500281731', 'p', '1', '1', '0', '60', '0', '融资融券业务发展的作用与意义', '', '', 'admin', '未知', '/uploads/170711/1-1FG11KR2C8.png', '1500281731', '1499768273', '1', '相关,证券,公司和,标的,股,目前,在,开展,融资,', '0', '0', '0', '0', '0', '0', '开展证券信用交易对中国整个金融业特别是证券业的发展具有非常重要的意义，概括如下', '', '1', '0', '0', '2');
INSERT INTO `dede_archives` VALUES ('4', '18', '0', '1509964785', 'p', '1', '1', '0', '55', '0', '融资融券不是券商才能做吗/贵公司为什么能提供', '', '', 'admin', '未知', '/uploads/170711/1-1FG11KR2C8.png', '1509964785', '1499768304', '1', '融资,融券,在,我国,的,发展,与,概况,由于,', '0', '0', '0', '0', '0', '0', '由于我国证券业发展较晚，相关证券业的法律法规和管理制度尚不完善，对整个行业环境的监管体系也有待健全，所以在我国证券市场推出和运营的融资融券业务还不能完全与国外发达', '', '1', '0', '0', '3');
INSERT INTO `dede_archives` VALUES ('6', '6', '0', '1499769348', '', '1', '1', '0', '64', '0', '我国融资融券业务的发展背景', '', '', 'admin', '未知', '', '1499769348', '1499769371', '1', '我国,融资,融券,业务,的,发展,背景,2001年,12月,', '0', '0', '0', '0', '0', '0', '2001年12月11日，历经15年的艰难谈判之后，我国正式加入WTO，至此我国各行业全方面全球化的开放步伐已经开始。 在经济、金融全球化的今天，我国作为一个发展中的大国，自然不能脱', '', '1', '0', '0', '4');
INSERT INTO `dede_archives` VALUES ('7', '6', '0', '1500112432', 'p', '1', '1', '0', '143', '0', '融资融券在我国的发展与概况', '', '', 'admin', '未知', '/uploads/170711/1-1FG11KR2C8.png', '1500112432', '1499771351', '1', '融资,融券,在,我国,的,发展,与,概况,由于,', '0', '0', '0', '0', '0', '0', '由于我国证券业发展较晚，相关证券业的法律法规和管理制度尚不完善，对整个行业环境的监管体系也有待健全，所以在我国证券市场推出和运营的融资融券业务还不能完全与国外发达', '', '1', '0', '0', '5');
INSERT INTO `dede_archives` VALUES ('8', '6', '0', '1500112324', 'p', '1', '1', '0', '108', '0', '相关证券公司和标的股', '', '', 'admin', '未知', '/uploads/170711/1-1FG11KR2C8.png', '1500112324', '1499771389', '1', '相关,证券,公司和,标的,股,目前,在,开展,融资,', '0', '0', '0', '0', '0', '0', '（1）目前在开展融资融券业务的券商有 首批6家券商（2010年3月19日） 中信证券、国信证券、海通证券、国泰君安、光大证券、广发证券； 第二批5家券商（2010年6月8日） 申银万国证券', '', '1', '0', '0', '6');
INSERT INTO `dede_archives` VALUES ('9', '6', '0', '1500112296', 'p', '1', '1', '0', '151', '0', '融资融券的概念', '', '', 'admin', '未知', '/uploads/170711/1-1FG11KR2C8.png', '1500112296', '1499771426', '1', '融资,融券,的,概念,融资,融券,又称,证券,信用,', '0', '0', '0', '0', '0', '0', '融资融券又称证券信用交易，是指投资者向特定的金融信用机构提供担保物，借入资金买入证券或借入证券并卖出的行为。它是一种到期还本付息的证券信用交易机制的表现形式。包括', '', '1', '0', '0', '7');
INSERT INTO `dede_archives` VALUES ('10', '6', '0', '1499771429', 'p', '1', '1', '0', '121', '0', '我国融资融券业务的模式选择', '', '', 'admin', '未知', '/uploads/170711/1-1FG11KR2C8.png', '1499771429', '1499771458', '1', '我国,融资,融券,业务,的,模式,选择,国外,融资,', '0', '0', '0', '0', '0', '0', '1.国外融资融券模式 融资融券在海外主要有两种模式：一种是全能银行体制下的市场化融资融券模式；另一种是以证券金融公司为主体的集中授信模式。在金融市场发达的欧美国家，市', '', '1', '0', '0', '8');
INSERT INTO `dede_archives` VALUES ('11', '6', '0', '1499845039', '', '1', '1', '0', '101', '0', '警惕！量增价跌，短线面临调整！', '', '', 'admin', '未知', '', '1499845039', '1499845070', '1', '警惕,量增,价跌,短线,面临,调整,一众,权重,股,', '0', '0', '0', '0', '0', '0', '一众权重股护盘了一天，费尽心力的结果，大盘还是绿了。虽然周日我已经提醒过，这周要提防调整风险，但今天还是要再强调一下，必须得加倍小心了！股市最悲惨的事就是，等大盘', '', '1', '0', '0', '9');
INSERT INTO `dede_archives` VALUES ('12', '6', '0', '1499845262', 'p', '1', '1', '0', '128', '0', '【财耕谈•收评(0711】大盘会继续向上推进', '', '', 'admin', '未知', '/uploads/allimg/170712/1541194M0-0-lp.png', '1499845262', '1499845279', '1', '【,财耕,谈,•,收评,0711,】,大盘,会,继续,向上,', '0', '0', '0', '0', '0', '0', '1、【大盘分析】 今天喷的好，调的也好，指数一路冲高到3700点以上才震荡回落下，虽然压回来不少，但终盘报收仍然在3670点，高过各均价线以上，这进一步增强了各周期均线的上行优', '', '1', '0', '0', '10');
INSERT INTO `dede_archives` VALUES ('13', '6', '0', '1499845308', '', '1', '1', '0', '182', '0', '投资内参：7月12日证券市场要闻', '', '', 'admin', '未知', '', '1499845308', '1499845367', '1', '投资,内参,7月,12日,证券市场,要闻,一,、,【,', '0', '0', '0', '0', '0', '0', '一、【要闻速递】 1、新华社：退市与暂停上市齐加码 A股有进有退成常态。新华社发文称，A股市场在IPO常态化的同时，退市也日趋常态化，特别是随着退市制度执行的强化，A股上市公', '', '1', '0', '0', '11');
INSERT INTO `dede_archives` VALUES ('14', '6', '0', '1499845410', 'p', '1', '1', '0', '61', '0', '这项数据显示信心回暖 杠杆资金纷纷入市(20股或', '', '', 'admin', '未知', '/uploads/allimg/170712/15451U520-0-lp.jpg', '1499845410', '1499845518', '1', '这项,数据,显示,信心,回暖,杠杆,资金,纷纷,', '0', '0', '0', '0', '0', '0', '新闻配图 近期沪深A股市场热点此起彼伏，但都难以持续。上周以次新股为代表的创业板只活跃了几天，就被周期股的崛起所压制。就在市场对周期股行情再次抱有希望之际，今日周期', '', '1', '0', '0', '12');
INSERT INTO `dede_archives` VALUES ('15', '6', '0', '1500103016', '', '1', '1', '0', '193', '0', '年内最大单周跌幅，创业板能抄底了吗？', '', '', 'admin', '未知', '', '1500103016', '1499846139', '1', '权重,拉升,个股,普跌,股,调整,压力,仍待,释放,', '0', '0', '0', '0', '0', '0', '负面消息不断，创业板今天又崩了！据统计，创业板本周跌4.9%，创近一年最大周跌幅！', '', '1', '0', '0', '13');
INSERT INTO `dede_archives` VALUES ('16', '6', '0', '1499846146', '', '1', '1', '0', '128', '0', '如何识别中报高送转是馅饼还是陷阱', '', '', 'admin', '未知', '', '1499846146', '1499846208', '1', '如何,识别,中报,高送转,是,馅饼,还是,陷阱,', '0', '0', '0', '0', '0', '0', '投资这类个股,还有几个方面要注意: 1、除权前做横向比较 即在高送转股除权前先按除权后的价值进行横向比较,具体分为投机价值比较和投资价值比较。 2、股价的定位 定位要从长远着', '', '1', '0', '0', '14');
INSERT INTO `dede_archives` VALUES ('17', '6', '0', '1499846222', '', '1', '1', '0', '145', '0', '短线调整压力加大，谨慎操作', '', '', 'admin', '未知', '', '1499846222', '1499846311', '1', '短线,调整,压力,加大,谨慎,操作,指数,今日,', '0', '0', '0', '0', '0', '0', '0z指数 今日两市涨幅超过3%的个股157只，其中涨停个股16只；跌幅超过3%的个股447只，其中跌停个股12只。 今日0Z指数虽低开低走，小幅收阴，但最终收盘位置仍处于5日成本均线上方，且', '', '1', '0', '0', '15');
INSERT INTO `dede_archives` VALUES ('18', '6', '0', '1499846324', '', '1', '1', '0', '88', '0', '历史惊人相似！今天大盘这么走！', '', '', 'admin', '未知', '', '1499846324', '1499846378', '1', '历史,惊人,相似,今天,大盘,这么,走,周二,两市,', '0', '0', '0', '0', '0', '0', '周二两市再现超级分化行情，上证50指数大幅反弹，创业板指数受次新股板块调整影响继续走弱，近一个月文中每日提示的白马龙头集体王者归来，恭喜跟上节奏的朋友！今日河长制以及', '', '1', '0', '0', '16');
INSERT INTO `dede_archives` VALUES ('19', '6', '0', '1517043100', '', '1', '1', '0', '190', '0', '2018-01-27富达资本', '', '', 'admin', '未知', '', '1517043100', '1499846450', '1', '警惕,股市,“,越,便宜,安全,”,的,投资,误区,', '0', '0', '0', '0', '0', '0', '99999999999999999999999999', '', '1', '0', '0', '17');

-- ----------------------------
-- Table structure for dede_arcmulti
-- ----------------------------
DROP TABLE IF EXISTS `dede_arcmulti`;
CREATE TABLE `dede_arcmulti` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` char(60) NOT NULL DEFAULT '',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `innertext` varchar(255) NOT NULL DEFAULT '',
  `pagesize` int(11) NOT NULL DEFAULT '0',
  `arcids` text NOT NULL,
  `ordersql` varchar(255) DEFAULT NULL,
  `addfieldsSql` varchar(255) DEFAULT NULL,
  `addfieldsSqlJoin` varchar(255) DEFAULT NULL,
  `attstr` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arcmulti
-- ----------------------------
INSERT INTO `dede_arcmulti` VALUES ('1', 'tagd53801f532ccc85908a7bf25c7b20c07', '1499769943', '<div class=\"newslis\">\r\n                            <div class=\"newslistop\">\r\n                                <section><a target=\"_blank\" href=\"[field:arcurl/]\">[field:title/]</a></section>\r\n                                <section>[field:pubdate function=', '3', '6', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";i:30;s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"default\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"3\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('2', 'tag9b116c8cfd0edbfd1735198c5eb286bc', '1499769860', '<div class=\"newsbottomlist\">\r\n                        <div>\r\n                            <section class=\"font3\">[field:pubdate function=\"MyDate(\'d\',@me)\"/]</section>\r\n                            <section class=\"color1\">[field:pubdate function=\"MyDate(\'Y-m', '5', '6', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";i:30;s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"default\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"5\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('3', 'tag5fb72f49c354ebfa96120cd9bb23b8d6', '1499769943', '<div class=\"newsbottomlist\">\r\n                        <div>\r\n                            <section class=\"font3\">[field:pubdate function=\"MyDate(\'d\',@me)\"/]</section>\r\n                            <section class=\"color1\">[field:pubdate function=\"MyDate(\'Y-m', '5', '6', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";i:30;s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"default\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"5\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('4', 'taga488c26cb6d134852bf5cc10e0e7b25f', '1499847382', '<div class=\"newslis\">\r\n                            <div class=\"newslistop\">\r\n                                <section><a target=\"_blank\" href=\"[field:arcurl/]\">[field:title/]</a></section>\r\n                                <section>[field:pubdate function=', '3', '19,18,17,16,15,14,13,12,11,10', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";s:2:\"20\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"pubdate\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"3\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('5', 'tagde8a51de9b679ea0a145054d24eec2d9', '1499847382', '<div class=\"newsbottomlist\">\r\n                        <div>\r\n                            <section class=\"font3\">[field:pubdate function=\"MyDate(\'d\',@me)\"/]</section>\r\n                            <section class=\"color1\">[field:pubdate function=\"MyDate(\'Y-m', '5', '19,18,17,16,15,14,13,12,11,10', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";s:2:\"20\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"pubdate\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"5\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('6', 'tag8c7df3c673f415d525d32bf258fbc4a8', '1499847630', '<div class=\"newslis\">\r\n                            <div class=\"newslistop\">\r\n                                <section><a target=\"_blank\" href=\"[field:arcurl/]\">[field:title/]</a></section>\r\n                                <section>[field:pubdate function=', '3', '1,2,3,4', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";s:2:\"30\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"pubdate\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"3\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('7', 'tag2656b4b08b9daf531b24db0541135e33', '1499847630', '<div class=\"newsbottomlist\">\r\n                        <div>\r\n                            <section class=\"font3\">[field:pubdate function=\"MyDate(\'d\',@me)\"/]</section>\r\n                            <section class=\"color1\">[field:pubdate function=\"MyDate(\'Y-m', '5', '19,18,17,16,15,14,13,12,11,10', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";s:2:\"30\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"pubdate\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"5\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('8', 'tag432530e74bc0032a9be5ae12a2665824', '1517043328', '<div class=\"newslis\">\n                            <div class=\"newslistop\">\n                                <section><a target=\"_blank\" href=\"[field:arcurl/]\">[field:title/]</a></section>\n                                <section>[field:pubdate function=\"My', '3', '2,4,1,3', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";s:2:\"30\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"pubdate\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"3\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('9', 'tag5d4cf4c0a7503197d22b102029955c2f', '1517043328', '<div class=\"newsbottomlist\">\n                        <div>\n                            <section class=\"font3\">[field:pubdate function=\"MyDate(\'d\',@me)\"/]</section>\n                            <section class=\"color1\">[field:pubdate function=\"MyDate(\'Y-m-d\'', '5', '19,7,8,9,15,18,17,16,14,13', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";s:2:\"30\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"pubdate\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"5\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('10', 'tage5f57de12681cbfb07fbdc52da27b681', '1517016340', '<div class=\"newslis\">\n                            <div class=\"newslistop\">\n                                <section><a target=\"_blank\" href=\"[field:arcurl/]\">[field:title/]</a></section>\n                                <section>[field:pubdate function=\"My', '3', '2,4,1,3', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";s:2:\"30\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"pubdate\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"3\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');
INSERT INTO `dede_arcmulti` VALUES ('11', 'tag3107e19a84ddd1342fbb8abeb73d044e', '1517016340', '<div class=\"newsbottomlist\">\n                        <div>\n                            <section class=\"font3\">[field:pubdate function=\"MyDate(\'d\',@me)\"/]</section>\n                            <section class=\"color1\">[field:pubdate function=\"MyDate(\'Y-m-d\'', '5', '7,8,9,15,19,18,17,16,14,13', ' ORDER BY arc.sortrank desc', '', '', 'a:16:{s:3:\"row\";i:10;s:8:\"titlelen\";s:2:\"30\";s:7:\"infolen\";i:160;s:8:\"imgwidth\";i:120;s:9:\"imgheight\";i:120;s:8:\"listtype\";s:3:\"all\";s:5:\"arcid\";i:0;s:9:\"channelid\";i:0;s:7:\"orderby\";s:7:\"pubdate\";s:8:\"orderWay\";s:4:\"desc\";s:6:\"subday\";i:0;s:8:\"pagesize\";s:1:\"5\";s:7:\"keyword\";s:0:\"\";s:10:\"tablewidth\";s:4:\"100%\";s:3:\"col\";i:1;s:8:\"colWidth\";s:4:\"100%\";}');

-- ----------------------------
-- Table structure for dede_arcrank
-- ----------------------------
DROP TABLE IF EXISTS `dede_arcrank`;
CREATE TABLE `dede_arcrank` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `rank` smallint(6) NOT NULL DEFAULT '0',
  `membername` char(20) NOT NULL DEFAULT '',
  `adminrank` smallint(6) NOT NULL DEFAULT '0',
  `money` smallint(8) unsigned NOT NULL DEFAULT '500',
  `scores` mediumint(8) NOT NULL DEFAULT '0',
  `purviews` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arcrank
-- ----------------------------
INSERT INTO `dede_arcrank` VALUES ('1', '0', '开放浏览', '5', '0', '0', '');
INSERT INTO `dede_arcrank` VALUES ('2', '-1', '待审核稿件', '0', '0', '0', '');
INSERT INTO `dede_arcrank` VALUES ('3', '10', '注册会员', '5', '0', '100', '');
INSERT INTO `dede_arcrank` VALUES ('4', '50', '中级会员', '5', '300', '200', '');
INSERT INTO `dede_arcrank` VALUES ('5', '100', '高级会员', '5', '800', '500', '');
INSERT INTO `dede_arcrank` VALUES ('6', '20', '低级会员', '5', '0', '500', '');
INSERT INTO `dede_arcrank` VALUES ('7', '150', '给力会员', '5', '1000', '500', '');
INSERT INTO `dede_arcrank` VALUES ('8', '180', '超能会员', '5', '1100', '500', '');

-- ----------------------------
-- Table structure for dede_arctiny
-- ----------------------------
DROP TABLE IF EXISTS `dede_arctiny`;
CREATE TABLE `dede_arctiny` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid2` varchar(90) NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `channel` smallint(5) NOT NULL DEFAULT '1',
  `senddate` int(10) unsigned NOT NULL DEFAULT '0',
  `sortrank` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sortrank` (`sortrank`),
  KEY `idx_typeid_arcrank_sortrank` (`typeid`,`arcrank`,`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arctiny
-- ----------------------------
INSERT INTO `dede_arctiny` VALUES ('1', '18', '0', '0', '1', '1499766747', '1509964566', '1');
INSERT INTO `dede_arctiny` VALUES ('2', '18', '0', '0', '1', '1499768236', '1515829029', '1');
INSERT INTO `dede_arctiny` VALUES ('3', '18', '0', '0', '1', '1499768273', '1500281731', '1');
INSERT INTO `dede_arctiny` VALUES ('4', '18', '0', '0', '1', '1499768304', '1509964785', '1');
INSERT INTO `dede_arctiny` VALUES ('6', '6', '0', '0', '1', '1499769371', '1499769348', '1');
INSERT INTO `dede_arctiny` VALUES ('7', '6', '0', '0', '1', '1499771351', '1500112432', '1');
INSERT INTO `dede_arctiny` VALUES ('8', '6', '0', '0', '1', '1499771389', '1500112324', '1');
INSERT INTO `dede_arctiny` VALUES ('9', '6', '0', '0', '1', '1499771426', '1500112296', '1');
INSERT INTO `dede_arctiny` VALUES ('10', '6', '0', '0', '1', '1499771458', '1499771429', '1');
INSERT INTO `dede_arctiny` VALUES ('11', '6', '0', '0', '1', '1499845070', '1499845039', '1');
INSERT INTO `dede_arctiny` VALUES ('12', '6', '0', '0', '1', '1499845279', '1499845262', '1');
INSERT INTO `dede_arctiny` VALUES ('13', '6', '0', '0', '1', '1499845367', '1499845308', '1');
INSERT INTO `dede_arctiny` VALUES ('14', '6', '0', '0', '1', '1499845518', '1499845410', '1');
INSERT INTO `dede_arctiny` VALUES ('15', '6', '0', '0', '1', '1499846139', '1500103016', '1');
INSERT INTO `dede_arctiny` VALUES ('16', '6', '0', '0', '1', '1499846208', '1499846146', '1');
INSERT INTO `dede_arctiny` VALUES ('17', '6', '0', '0', '1', '1499846311', '1499846222', '1');
INSERT INTO `dede_arctiny` VALUES ('18', '6', '0', '0', '1', '1499846378', '1499846324', '1');
INSERT INTO `dede_arctiny` VALUES ('19', '6', '0', '0', '1', '1499846450', '1517043100', '1');

-- ----------------------------
-- Table structure for dede_arctype
-- ----------------------------
DROP TABLE IF EXISTS `dede_arctype`;
CREATE TABLE `dede_arctype` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `reid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `topid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sortrank` smallint(5) unsigned NOT NULL DEFAULT '50',
  `typename` char(30) NOT NULL DEFAULT '',
  `typedir` char(60) NOT NULL DEFAULT '',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `defaultname` char(15) NOT NULL DEFAULT 'index.html',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `channeltype` smallint(6) DEFAULT '1',
  `maxpage` smallint(6) NOT NULL DEFAULT '-1',
  `ispart` smallint(6) NOT NULL DEFAULT '0',
  `corank` smallint(6) NOT NULL DEFAULT '0',
  `tempindex` char(50) NOT NULL DEFAULT '',
  `templist` char(50) NOT NULL DEFAULT '',
  `temparticle` char(50) NOT NULL DEFAULT '',
  `namerule` char(50) NOT NULL DEFAULT '',
  `namerule2` char(50) NOT NULL DEFAULT '',
  `modname` char(20) NOT NULL DEFAULT '',
  `description` char(150) NOT NULL DEFAULT '',
  `keywords` varchar(60) NOT NULL DEFAULT '',
  `seotitle` varchar(80) NOT NULL DEFAULT '',
  `moresite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sitepath` char(60) NOT NULL DEFAULT '',
  `siteurl` char(50) NOT NULL DEFAULT '',
  `ishidden` smallint(6) NOT NULL DEFAULT '0',
  `cross` tinyint(1) NOT NULL DEFAULT '0',
  `crossid` text,
  `content` text,
  `smalltypes` text,
  PRIMARY KEY (`id`),
  KEY `reid` (`reid`,`isdefault`,`channeltype`,`ispart`,`corank`,`topid`,`ishidden`),
  KEY `sortrank` (`sortrank`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_arctype
-- ----------------------------
INSERT INTO `dede_arctype` VALUES ('1', '0', '0', '50', '关于我们', '{cmspath}/a/aboutus', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_caidan1.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '关于我们', '关于我们', '0', '{cmspath}/a/aboutus', '', '0', '0', '', '<div class=\"aboutus\">\r\n	<div class=\"shim\">\r\n		<div class=\"shimge\">\r\n			<div>\r\n				<img alt=\"\" src=\"../../templets/lanrui/images/AD0I4oLBBRAEGAAgpomXwAUohYSY8AYwJzg0.png\" /></div>\r\n			<div>\r\n				<section class=\"font2\">\r\n					使命</section>\r\n				<section class=\"color1\">\r\n					让财富管理更美好</section>\r\n			</div>\r\n		</div>\r\n		<div class=\"shimge\">\r\n			<div>\r\n				<img alt=\"\" src=\"../../templets/lanrui/images/AD0I4oLBBRAEGAAgiImXwAUoivaYqQIwNjg0.png\" /></div>\r\n			<div>\r\n				<section class=\"font2\">\r\n					核心价值<br />\r\n					高效、便捷的理财服务</section>\r\n				<section class=\"color1\">\r\n					&nbsp;&nbsp;</section>\r\n			</div>\r\n		</div>\r\n		<div class=\"shimge\">\r\n			<div>\r\n				<img alt=\"\" src=\"../../templets/lanrui/images/AD0I4oLBBRAEGAAg_4iXwAUoorXgJzA5ODQ.png\" /></div>\r\n			<div>\r\n				<section class=\"font2\">\r\n					主张</section>\r\n				<section class=\"color1\">\r\n					只为很久更好的您</section>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div style=\"clear:both\">\r\n		&nbsp;</div>\r\n	<div class=\"jieshao\">\r\n		<div>\r\n			<img alt=\"\" src=\"../../templets/lanrui/images/AD0I4oLBBRAEGAAgh5GXwAUoxIzJhwIwuAM43QI.png\" /></div>\r\n		<div>\r\n			<section class=\"font2 ustitle\">\r\n				关于我们</section>\r\n			<section class=\"color1\">\r\n				金牛软件科技有限公司（以下简称&ldquo;金牛软件&rdquo;）是在2010年2月20日 正式成立在香港成立，且以人为本的宗旨，服务于广大投资用户。金牛软件以&ldquo;做一家负责任的&rdquo;为使命，以&ldquo;诚信天下，稳健一生， 追求卓越&rdquo;为企业核心价值观，以&ldquo;推动和实现可持续的价值增长&rdquo;为经营理念，不断为客户、股东、员工、社会和利益相关者创造价值， 为社会和谐做出贡献。</section>\r\n		</div>\r\n	</div>\r\n	<div style=\"clear:both\">\r\n		&nbsp;</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('2', '1', '1', '50', '公司简介', '{cmspath}/a/aboutus/1', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/aboutus', '', '0', '0', '', '<div class=\"jianjie\">\r\n	<div class=\"style1\">\r\n		关于我们</div>\r\n	<div>\r\n		<section>\r\n			<img alt=\"\" src=\"/uploads/allimg/170714/1-1FG41I0131U.jpg\" style=\"width: 620px; height: 329px;\" /></section>\r\n		<section>\r\n			<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				&nbsp; &nbsp; &nbsp;</p>\r\n			<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				<strong><span style=\"color:#0000cd;\"><span style=\"font-size:12px;\">&nbsp;<span style=\"font-family: Arial, Verdana, sans-serif;\">&ldquo;金牛A股融资融券&rdquo;交易是香港金牛软件期货开发QFII类融资</span><span style=\"font-family: Arial, Verdana, sans-serif;\">融券业务，是沪深A股的金融衍生产品，可买卖沪深A股<br />\r\n				的二千余支优质</span><span style=\"font-family: Arial, Verdana, sans-serif;\">股票，交易时间、交易行情均与国内A股同步。 &nbsp; 简单的讲，它是基于基金公司将其长线持有的证券交由<br />\r\n				金牛软件期货托管，转而对投资者发行而产生的一种股票期货化交易方式的投资产品，它属于商业化形式的融资融券交易。<br />\r\n				<br />\r\n				金牛软件科技有限公司是香港金牛期货QFII类融资融券业务&ldquo;A股QFII类融资融券&rdquo;交易平台的大中华地区唯一独家代理商<br />\r\n				（仅限于中国香港、中国澳门和中国大陆不含台湾地区）。</span></span></span></strong></p>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				<strong><span style=\"font-size:12px;\">金牛软件坚持&ldquo;真诚服务、客户至上&rdquo;的宗旨，致力于为亚洲金融市场和国际金融市场接轨。</span></strong></div>\r\n			<div>\r\n				<strong><span style=\"font-size:12px;\">客户可在金牛软件融资融券平台投资股票T+0,免费注册账户，最低投资门槛1万人民币。</span></strong></div>\r\n			<div>\r\n				<strong><span style=\"font-size:12px;\">10倍资金杠杆融资；即实际充值一万元，可交易10万元股票，大大提高了资金利用率。</span></strong></div>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				<span style=\"color:#ff0000;\"><strong><span style=\"font-size:12px;\">金牛软件融资融券的创业目标：</span></strong></span></div>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				<strong><span style=\"font-size:12px;\">不断创新，勇于追求，力争领先。为广大投资者提供更便捷、更高效、更安全的交易平台。用崭新的投资理念和工具满足广大投资者在理财渠道的最新需求。</span></strong></div>\r\n			<div>\r\n				<strong><span style=\"font-size:12px;\">金牛软件将不断努力，用心为广大投者者建造一个最公正公平的交易平台。</span></strong></div>\r\n			<div>\r\n				<br />\r\n				<br />\r\n				&nbsp;</div>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;金牛软件珠海中心《外国（地区）企业/机构常驻登记证》编号0016707</strong></div>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				<strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;注册号：企外粤驻字第18686号&nbsp;</strong></div>\r\n			<div>\r\n				&nbsp;</div>\r\n			<div>\r\n				AFSL:313006</div>\r\n			<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				&nbsp;</p>\r\n			<div>\r\n				&nbsp;</div>\r\n		</section>\r\n	</div>\r\n</div>\r\n<div style=\"clear:both\">\r\n	&nbsp;</div>\r\n', '');
INSERT INTO `dede_arctype` VALUES ('3', '1', '1', '50', '我们的优势', '{cmspath}/a/aboutus/2', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/aboutus', '', '0', '0', '', '<div class=\"jianjie\">\r\n	<div class=\"style1\">\r\n		我们的优势</div>\r\n	<div>\r\n		<div style=\"clear:both\">\r\n			<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				一、最受欢迎的融资融券交易平台：</p>\r\n			<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				1.两千多支优质个股，中小企业板块多，行情活跃；</p>\r\n			<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				2.T+0的交易机制，当天买卖当天即可选择平仓，可实现当天多次波段操作；</p>\r\n			<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				3.多空双向的开仓选择，买涨买跌都可能赚钱，牛市熊市均有获利机会；</p>\r\n			<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				4.1:10适中的融资比例，实现风险可控、以小博大，让您小投资也可大收益。<br />\r\n				&nbsp;</p>\r\n			<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				&nbsp;二、一站式全方位专业服务<br />\r\n				<br />\r\n				1.手续简便、注册快速，开户入金即可交易；<br />\r\n				<br />\r\n				2.网上支付与转账快捷方便，注资即刻到账；<br />\r\n				<br />\r\n				3.正常工作日内周一至周五自由提取资金；<br />\r\n				<br />\r\n				4.专业客服，一对一，各项业务短信提醒；&nbsp;<br />\r\n				&nbsp;</p>\r\n			<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				&nbsp;三、顶级的交易系统<br />\r\n				<br />\r\n				1.全球最大在线交易软件提供商MQL5最新技术，快速稳定，100％即时成交；<br />\r\n				<br />\r\n				2.数据传输严格加密，内设双防护措施，增强系统稳定与高速；<br />\r\n				<br />\r\n				3.转化的简体中文语言显示。<br />\r\n				<br />\r\n				<br />\r\n				四、公司正规、业务规范：&nbsp;</p>\r\n			<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n				1.唯一代理QFII融资融券业务平台，真正通过基金公司实现融资；<br />\r\n				<br />\r\n				2.公司代理预先统一缴纳交收保证金，&quot;代扣代缴&quot;操作资金，客户资金更安全；<br />\r\n				<br />\r\n				3.三重监管、联合担保、国际信誉、资质齐全。&nbsp;</p>\r\n		</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('4', '1', '1', '50', '业务公告', '{cmspath}/a/aboutus/3', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/aboutus', '', '0', '0', '', '<div class=\"jianjie\">\r\n	<div class=\"style1\">\r\n		业务公告</div>\r\n	<div>\r\n		<h3 div=\"\" style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			<span style=\"font-size:20px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 业务公告 &nbsp;</span></h3>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			（一）监督与自律</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			1. 本网站为金牛软件融资融券产品在中国内地业务开展的珠海办事处唯一官方网站；</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			<br />\r\n			2. 近期有很多网站和企业冒充本公司名义开展商业融资融券业务，或模仿、抄袭本公司业务相关内容进行钓鱼式诈骗，为确保您的切实权益，敬请联系全国<br />\r\n			<br />\r\n			统一客服QQ:<span style=\"font-family: Consolas, &quot;Lucida Console&quot;, &quot;Courier New&quot;, monospace; white-space: pre-wrap;\">1289637949</span>进行核实查证；</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			<br />\r\n			3. 敬请全国各级代理商严格遵守国家证券业法规法令和本公司业务规范，加强行业自律，确保证券业健康稳定有序发展；</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			<br />\r\n			4. 欢迎全国各地客户监督我公司各级代理商之业务行为，同时及时向本部投诉举报代理商业务办理过程中产生的任何不规范的业务行为；</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			<br />\r\n			5. 对于已取消代理商资质之代理企业，本公司不再负有任何法律担保责任。如有发现相关吊销资质的代理商继续以本公司名义或本公司业务相关名义进行业<br />\r\n			务宣传、推广和经营，本公司保留相关法律追诉和其他维权权利。</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			（二）资金监管</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			1.客户资金出入监管：</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;&nbsp; 银联三方存管支付，客户自主出入金；</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			2.公司账务稽查监管：</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;&nbsp;&nbsp;2011年7月13日，金牛软件科技有限公司根据中国《合格境外机构投资者境内证券投资管理办法》（证令第36号）、<br />\r\n			<br />\r\n			《基金管理公司特定客户资产管理业务试点办法》（证令第74号）、《中国证监会行政许可申请申报规定》（2009年10月28日 ）<br />\r\n			、<br />\r\n			《证券期货业与银行间业务数据交换规则》（2009年04月16日） 、&ldquo;关于证券市场交易结算资金监控系统有关事项的公告&rdquo;（证公告[2010]6号），<br />\r\n			<br />\r\n			及中国《证券法》和证券监督管理委员会其他有关规定与中国金融行业相关管理法律法规其他规定，对金牛软件融资融券业务（中国大陆地区）<br />\r\n			<br />\r\n			证券监管稽查与&ldquo;代扣代缴&rdquo;结算指定之资金账户作出公示，具体&ldquo;中国证券税务稽查及其他企事业之指定对公使用资金帐户&rdquo;和&ldquo;客户信用保证金出<br />\r\n			<br />\r\n			入金与结算之指定财务专员收款账户&rdquo;，请详见网站&ldquo;公司资质&rdquo;栏目的《关于金牛软件资本融资融券业务证券监管稽查与结算之指定资金账户的公示》。</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102);\">\r\n			（三）取缔与警醒<br />\r\n			&nbsp;<br />\r\n			1.&nbsp;2013年11月15日，由于在业务经营过程中，多次进行虚假和不实的业务宣传，对本公司业务品牌造成负面影响，公司决定即日起取消&ldquo;浙江金源资产<br />\r\n			<br />\r\n			管理有限公司&rdquo;金牛软件融资融券业务代理商资格。<br />\r\n			&nbsp;<br />\r\n			2.&nbsp;2014年3月2号，由于客户服务怠慢、业务经营不规范，经多名客户屡次投诉，公司研究决定取消&ldquo;四川信普（上海）投资管理有限公司&rdquo;代理商资质，<br />\r\n			<br />\r\n			即日起终止与信普投资公司业务合作关系。<br />\r\n			&nbsp;<br />\r\n			3.&nbsp;2015年10月12号，据客户投诉反映，并经查实代理经纪商&ldquo;深圳科普创投&rdquo;在开展金牛软件融资融券业务规定所禁止的相关业务，公司研究决定取消<br />\r\n			<br />\r\n			&ldquo;深圳科普创投&rdquo;代理商资质，即日起终止与其业务合作关系。</p>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('5', '1', '1', '50', '业务动态', '{cmspath}/a/aboutus/4', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/aboutus', '', '0', '0', '', '<div class=\"jianjie\">\r\n	<div class=\"style1\">\r\n		<strong>业务动态</strong></div>\r\n	<div>\r\n		<h3 div=\"\" style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			<span style=\"font-size:20px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<br />\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;业务动态 </span><br />\r\n			<br />\r\n			&nbsp;</h3>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>18.2015年12月25日&mdash;&mdash;金牛软件融资融券系统内地市场全线升级更新完毕，相应国家&ldquo;大数据时代互联网+&rdquo; 的政策和规划，此次产品系统和网络的升级是基于云服务组的技术架构，全国划分五大区域兼容三大网络并线布局，让客户交易速度更快、客户体验更好；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>17.2015年4月24-25日&mdash;&mdash;王林山王总、李秘受邀参加2015（中国乌镇）配资行业大会，期间王林山作代表发言，并广邀行业伙伴考察了解鸿圣的相关金融产品，尤其大力推广了金牛软件融资融券业务，受到广大同行一致好评和强烈的了解兴趣 ；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>16. 2014年9月3日&mdash;&mdash;对金牛软件融资融券标的股票的持有量，该业务的发行与操作的基金进行了再次增持扩容，其中600余支增持近一倍，故</strong><strong>金牛软件</strong><strong>融资融券标的股票2000多支里面，有近一半增持到了超过200万RMB的持有量（即，可供融资与融券交易各达100万以上） ；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>15. 2014年6月8日&mdash;&mdash;</strong><strong>金牛软件</strong><strong>珠海中心李总和李秘在香港本部参加公司市场营销例行研讨会，并获悉香港总部应内地市场需求和申请，同意加快审核推进&ldquo;</strong><strong>金牛软件</strong><strong>商业化两融产品&rdquo;大陆区合作银行的增加。</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>14.&nbsp;&nbsp;2014年4月份&mdash;&mdash;公司积极响应国家证券市场的沪港通政策研讨和预施计划，分别参加了多次香港证券经纪商来往陆港两地的考查活动，亦分别邀请了大福证券，富泰证券、信诚证券、富昌证券、道亨证券等香港优秀券商和投行参观考查</strong><strong>金牛软件</strong><strong>香港总部和上海服务中心，并陪同参观考查了上海证券交易所和上海证监会；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>13.&nbsp;&nbsp;2013年8月1日&mdash;&mdash;</strong><strong>金牛软件</strong><strong>融资融券新加坡做市基金于6-7月A股大盘低位时陆续新增持A股市场223支中小概念板块的优质个股，新标的股票将于8月正式上线向国内外交易商提供两融交易。8月起</strong><strong>金牛软件</strong><strong>融资融券交易的标的共达2000多支优质个股；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>12.&nbsp; 2013年6月8日，公司珠海中心李总、王林山一行赴港</strong><strong>金牛软件</strong><strong>国际总部学习，并参观了香港大福证券、同亨证券，探讨了于内地市场的合作事宜；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>11. &nbsp;2013年4月1号&mdash;&mdash;本月新增持百余支A股优质股票，现</strong><strong>金牛软件</strong><strong>融资融券共可提供2000多篇支优质股票的融资融券交易。各交易商均可从全国各级代理处获取最新股票清单，亦可从本公司网站客服人员处获取；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>10.&nbsp; 2013年1月14日，</strong><strong>金牛软件</strong><strong>珠海中心李总与李秘书受香港总部之邀，出席《亚洲金融论坛2013》盛会。香港特别行政区政府举办的「亚洲金融论坛」在香港湾仔会议展览中心举行，此次论坛汇聚超过2,000 名来自世界各地的财经官员、商界领袖及学者，共同剖析当前环球金融市场的最新形势，特别聚焦亚洲地区的发展。 今年论坛的主题为「亚洲：缔造全球新形势」，集中讨论多个热门金融议题，包括2013年经济展望、亚洲在全球金融业的影响力、亚洲金融的整合与协作、区内及跨区资金流动趋势、中国金融改革、欧元区展望及风险架构管理、私人财富管理、食品业及农业的机遇及风险等。</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>9.&nbsp; 2012年11月16日，公司结束为期两个月的面向全国的&ldquo;经纪代理商推广计划&rdquo;商务策划活动，达到了预期理想的目标效果，成功签订43家企业与金融渠道的个人代理商；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>8.&nbsp; 2012年9月28日，中心李总与商务部王林山、李秘书赴甘肃兰州参加&ldquo;2012西部金融论坛&rdquo;，与众多中小金融服务机构和企业深入的交流探讨了金融行业的发展与业务创新，并达成广泛的业务合作关系，成功协定四家代理合作商；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>7.&nbsp; 2012年4月13日，深圳兴业证券投资部总监等一行四人来粤考察，与公司达成承销合作，并协定共同出资成立深圳、杭州、厦门工作室；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>6.&nbsp; 2012年2月2日，</strong><strong>金牛软件</strong><strong>珠海中心商务部王林山受邀参加国信证券上海经纪事业部&ldquo;开门红营销会&rdquo;，做了</strong><strong>金牛软件</strong><strong>融资融券产品推介报告并与国信证券达成上海辖区内的广泛渠道合作关系；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>5.&nbsp; 2011年11月20日，于上海金融博览会暨第九届理财博览会上，</strong><strong>金牛软件</strong><strong>珠海服务中心凭借着优异的投资产品和优质高效的服务，吸引了众多投资人的关注和青睐，并荣获&nbsp;&ldquo;最受欢迎理财服务奖&rdquo;。</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>4.&nbsp; 2011年7月13日，</strong><strong>金牛软件科技</strong><strong>有限公司根据中国《合格境外机构投资者境内证券投资管理办法》（证令第36号）、《基金管理公司特定客户资产管理业务试点办法》（证令第74号）、《中国证监会行政许可申请申报规定》（2009年10月28日 ）、《证券期货业与银行间业务数据交换规则》（2009年04月16日） 、&ldquo;关于证券市场交易结算资金监控系统有关事项的公告&rdquo;（证公告[2010]6号），及中国《证券法》和证券监督管理委员会其他有关规定与中国金融行业相关管理法律法规其他规定，对</strong><strong>金牛软件</strong><strong>融资融券业务（中国大陆地区）证券监管稽查与&ldquo;代扣代缴&rdquo;结算指定之资金账户作出公示，具体&ldquo;中国证券税务稽查及其他企事业之指定对公使用资金帐户&rdquo;和&ldquo;客户信用保证金出入金与结算之指定财务专员收款账户&rdquo;，请详见网站&ldquo;公司资质&rdquo;栏目的《关于</strong><strong>金牛软件</strong><strong>融资融券业务证券监管稽查与结算之指定资金账户的公示》。</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>3.&nbsp; 2011年7月初，</strong><strong>金牛软件</strong><strong>珠海中心顺利签办《外国（地区）企业/机构常驻登记证》编号<strong style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: 微软雅黑;\">0016707</strong>，注册号：<strong style=\"box-sizing: border-box; color: rgb(0, 0, 0); font-family: 微软雅黑;\">企外粤驻字第18686号&nbsp;</strong></strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>2.&nbsp; 2011年6月，</strong><strong>金牛软件</strong><strong>融资融券内地总经销珠海服务中心正式设立并运营，授权编号为&ldquo;（陆）A01&rdquo;；</strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-size: 14px; line-height: 30px; font-family: \'font-size:14px;\';\">\r\n			<strong>1.&nbsp; 2011年2月，公司总部决定于珠海设立</strong><strong>金牛软件</strong><strong>服务中心，主要负责</strong><strong>金牛软件</strong><strong>融资融券业务内地市场的承销和管理服务。</strong></p>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('6', '0', '0', '50', '行业资讯', '{cmspath}/a/information', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/information', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('7', '0', '0', '50', '业务介绍', '{cmspath}/a/business', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_caidan1.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"ywjjs\">\r\n	<div class=\"ywjj\">\r\n		<div class=\"ywjjleft\">\r\n			<img alt=\"\" src=\"../../templets/lanrui/images/AD0I4oLBBRACGAAg9b_WwAUo8NTDkwIwzAM4lAI.jpg\" /></div>\r\n		<div class=\"ywjjright\">\r\n			<section>\r\n				明星产品&mdash;&mdash;a理财</section>\r\n			<section class=\"color1\">\r\n				<strong style=\"color: rgb(102, 102, 102); font-family: &quot;font-size:14px;&quot;; font-size: 14px;\">金牛软件</strong>股票t+0</section>\r\n			<section>\r\n				投资类型：<span class=\"color1\">股票型</span></section>\r\n			<section>\r\n				投保年龄：<span class=\"color1\">18周岁-70周岁</span></section>\r\n			<section>\r\n				<a href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=8845425&amp;site=qq&amp;menu=yes\" style=\"color:#fff;\" target=\"_blank\">在线咨询</a></section>\r\n		</div>\r\n		<div style=\"clear:both\">\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('8', '7', '7', '50', '融券简介', '{cmspath}/a/business/1', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"neirong\">\r\n	<h3 style=\"font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.5; color: inherit; text-align: center;\">\r\n		融资融券简介</h3>\r\n	<div style=\"color: rgb(51, 51, 51);\">\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;(一）.什么是A股QFII类商业化融资融券交易</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&ldquo;鸿圣资本A股融资融券&rdquo;交易是香港鸿圣资本开发的QFII类融资融券业务，是沪深A股的金融衍生产品，可买卖沪深A股的二千余支优质股票，交易时间、交易行情均与国内A股同步。简单的讲，它是基于基金公司将其长线持有的证券交由鸿圣国际资本期货托管，转而对投资者发行而产生的一种股票期货化交易方式的投资产品，它属于商业化形式的融资融券交易。</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;&nbsp;鸿圣资本(香港）资本管理有限公司是香港鸿圣资本期货QFII类融资融券业务&ldquo;A股QFII类融资融券&rdquo;交易平台的大中华地区唯一独家代理商（仅限于中国香港、中国澳门和中国大陆地区，不含台湾地区）。</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;<span style=\"line-height: 2em;\">&nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;&nbsp;&nbsp;(二）.鸿圣资本融资融券平台说明</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			1、&nbsp;本系统属于鸿圣资本融资融券交易软件，以中国A股融资融券交易原则生成；</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			2、&nbsp;客户需了解且明白该平台提供的标的股均是以融资融券保证金形式交易的，保证金的杠杆效应可以小博大但也有可能导致操作风险的放大；</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			3、&nbsp;由于通讯设备或互联网络传送中断或故障，以及黑客攻击而导致的客户下单指令之传送、接收或执行出现延误、错误或不完整等问题，鸿圣资本公司并不承担相应的责任；</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			4、&nbsp;本系统除供新加坡等地区投资者使用外，亦同时为其他适用融资融券交易原则的地区投资者使用；任何地区个人和单位不得更改本软件的使用功能，或附带添加各种插件；</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			5、&nbsp;系统将根据对客户所持仓股票异动（除权、停盘等）的情况及客户保证金预留不足情况，将作出自动平仓和结算，故客户&nbsp;买卖交易过程中应及时关注个股发展和股价变化，并做好资金管理。</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			<span style=\"font-size:16px;\"><strong>&nbsp;&nbsp;&nbsp;(三）. 鸿圣资本商业化融资融券交易规则介绍</strong></span></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			<strong><span style=\"color:#000000;\"><span style=\"font-size:16px;\">1、&nbsp;交易融资比例为&nbsp;1:10，即最大资金使用量为客户信用保证金（即本金）的10倍；</span></span></strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			<strong><span style=\"color:#000000;\"><span style=\"font-size:16px;\">2、&nbsp;每笔交易均以交易金额为准下单即时扣除双向共计（含税）千分之九的交易费用（其中包括：千分之一印花税，千分之二手续费，千分之二融资利息）；</span></span></strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			<strong><span style=\"color:#000000;\"><span style=\"font-size:16px;\">3、&nbsp;留仓股票最多持仓时间为一周，节假日则顺延（举例：周一购入，最迟至下周一15:00点，系统将自动进行平仓）；</span></span></strong><br />\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			<strong><span style=\"color:#000000;\"><span style=\"font-size:16px;\">4、&nbsp;为控制交易之风险，个股每日涨（跌）幅达到百分之七，或连续两日涨（跌）百分之八时，系统将停止该股多（空）新单&nbsp;的购买，金融指数不包括在内；</span></span><br />\r\n			<br />\r\n			<span style=\"font-size: 16px; color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif;\">5、&nbsp;个股盘中任一时点（含开盘、收盘）触及涨跌停板,跳空等异常情况下单, 为保证共同利益，系统将有权自动止盈止损，均以涨跌停板价或建仓价自动平仓结算。</span></strong></p>\r\n		<p>\r\n			<strong><span style=\"color:#000000;\"><span style=\"font-size:16px;\">6、&nbsp;以股票买入的成本价计算，赢/亏额达到百分之百/之九十时，系统将自动平仓。<br />\r\n			<br />\r\n			7、&nbsp;单股每笔持仓最低交易金额为一万元以上，单仓或多仓集合竞买不超过一千万元人民币（单向同时持仓）<br />\r\n			<br />\r\n			8、每支股票单笔买入后不可分批卖出，故建议客户同一支股票可分次购入。<br />\r\n			<br />\r\n			9、为保证客户下单交易的及时和有效性，系统对每笔下单均为及时成交价,系统代为委托下单；不同板块个股将加收热门手续费用。<br />\r\n			<br />\r\n			10、新建仓之股票5分钟内系统均不允以平仓；<br />\r\n			<br />\r\n			11、系统交易时间为：A股正常交易日内的上午09:33-11:27，下午13:03-14:56.系统结算时间为A股交易日的15:00,出金时间为交易日的下午15:30-17:00。出金操作成功后24小时内转入指定银行账户。（国家法定假日延迟至银行系统正常工作日）<br />\r\n			<br />\r\n			12、一周内连续出金三次以上的客户，需扣除0.3%的转账手续费,频繁点击视为恶意操作；当日有留仓的系统不支持出金。<br />\r\n			<br />\r\n			13、本交易规则如有未尽事宜，可视状况随时调整。本公司保留规则和条款的最终解释权。</span></span></strong></p>\r\n		<div>\r\n			&nbsp;</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('9', '7', '7', '50', '融资融券由来', '{cmspath}/a/business/2', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"neirong\">\r\n	<div class=\"style1\">\r\n		融资融券由来</div>\r\n	<div class=\"tuwen\">\r\n		<div class=\"right\">\r\n			<img alt=\"\" src=\"../../../templets/lanrui/images/000010.jpg\" /></div>\r\n		<h2>\r\n			&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;融资融券的由来</h2>\r\n		<div class=\"line2\">\r\n			（一）、融资融券简介： &ldquo;融资融券&rdquo;又称&ldquo;证券信用交易&rdquo;，它存在于大部分国家和地区的证券市场,是成熟证券市场的基本功能，在国外证券市场普遍存在。而中国A股市场融资融券业务是在2010.3.31日才正式推出的。简单地说,融资就是由券商或者其他专门的金融信用机构为投资者购买证券提供融资，而融券就是客户可以从证券公司或者向其他专门的金融信用机构借来证券卖出,在未来的某一时间再到市场上买回证券归还，融券也可以理解为是一种做空机制。 融资融券在世界范围主要有两种模式:一是以欧美国家和新加坡、香港地区为代表的分散信用模式,也叫市场化信用模式，是由金融信用机构（包括券商、基金公司、投资银行等）独立向客户提供；二是日本、韩国、中国台湾的集中信用模式,成立专门的证券融资公司,向客户提供融资融券。 从融资融券的交易模式上来讲，可以说是&ldquo;股票的期货化交易&rdquo;方式，最早出现于上个世纪30年代欧洲的一些经济发达的国家，当时并未得到远在大西洋彼岸的美国认可，因为美国的股票市场本身是允许做空交易的。至70年代，由于不堪美元与黄金在汇市交易中美元不断贬值而黄金不断升值造成的损失，所以美国曾在70年代产生过阶段性的股指期货。股指期货的出现就是拥有股票发行市场的国家向众多投资者转嫁本国股票市场剧烈波动的风险。当然，投资者也可随着这个国家综合国力的提升，在股指期货方面得到均衡的收益。直至2003年，美联储主席格林斯潘首次宣布允许融资融券在美国市场运行，因为当时的美国需要来自全世界的资金支持。随后日本也加入了发行融资融券这一行列，在此之前，当时只有英国、法国等一些欧洲国家以及新加坡、香港等几个少数新兴经济体才拥有融资融券市场。随着美国融资融券市场的开闸放水，一夜之间，几乎所有的拥有股票发行的国家都建立了融资融券交易市场和交易制度。<br />\r\n			（二）、 基金公司融资融券业务是怎样产生的： 因为股票具有短时间内聚集大量生产所需的资金能力，所以各个国家都千方百计的设定了与本国经济发展相对等的股票交易制度，最明显的两条是： 1、T+1模式。T是英语中时间（Today）一词的开头字母。国外很多的国家都是T+0交易模式，即当天买入的股票当天即可卖出，市场交易非常的活跃。中国当时建立股票交易市场时，根据中国的国情，模式为T+1，即为今日买的股票最快明日方可卖出。 2、由于中小投资者对于市场风险的掌控能力较差，他们更希望进行当日交易的T+0模式，如果可以多空双向交易就更好了，因为可以不再受到老鼠仓的陷害。当然，1：10的股票期货杠杆交易制度就更受中小投资者的钟爱。而如今在美国，中小投资者一般不选择直接参与股票交易，更多的选择交易融资融券，其他一些西方主流国家的中小投资者也是如此。 那么基金公司是如何建立和产生商业化融资融券交易市场的呢？首先，由基金募集了足够的基民的资金并建立了基金持股的股票仓位。当然，坐等股票的收益和红利分配是一定的。可是除此之外，基金所持仓的股票还可以做另外一件事，为广大的基金投资者赚取丰厚的回报，那就是将该支基金购买的股票交于期货公司经营。由于资金量较大，大都是支付一笔固定费用直接将数据端口接入正确的交易中，这样除了该国的税收外，就不再有更多的交易往来费用产生。基金公司将这一数据源交由期货公司经营后，期货公司通过自身平台的系统转换，形成一定的杠杆比例，给出新的数据端口，接入外设服务器，提供给中小投资者进行股票期货交易。举例：香港鸿圣资本期货公司于2009年引入了中国A股市场沪深两市的上千支优质股票的期货交易，这是基于人民币走出国门允许境外结算的大背景前提下产生的。中国拥有大量的美元储备，而美国受次贷危机的影响，美国政府正在用&ldquo;货币宽松&rdquo;的方式使美元贬值的方法来解决他们的眼前窘况。中国政府为了保障广大国民的利益，决定启动人民币境外结算业务，自然以前从未出现过的境外基金（QFII）重仓中国沪深两市的情况也随之产生。基金公司在拥有了沪深两市大量的绩优权重股之后，交由期货公司开设沪深两市股票的T+0及1：10比例的&ldquo;融资融券&rdquo;交易，费率与中国股市同步，双向来回千分之三点六手续费，千分之一印花税，千分之二点四融资利息，合计千分之七。中国国内证券市场于2010年正式推出融资融券业务的试运营，而我们看一下证券公司的融资融券业务更是要求千分之七点八六到千分之九点三的费用，而且还要求五十万以上的资本金，另外还要通过征信调查及专业考试等等门槛。 所以，QFII基金所提供的融资融券交易的优势就不言而喻，由于提供了1：10的融资比例，即每一万元就可以投资做十万元的股票，又允许多空交易，投资者只需要下载QFII基金持有的证券所托管的期货公司的交易系统，即可完成交易，这样的机会确实非常诱人。每一万元的多空操作通过该交易系统，在基金公司的交易系统中自动产生十万元的该支股票买卖盘。留仓最长日期为一周，也就是说周一买入的股票最迟在下周一的15：00为最后平仓时间，其间盈利和亏损由客户的保证金（即股票市值的1 / 10）资本利得。客户在基金公司买入的股票将于一周之内随时由客户决定卖出，整笔交易的盈利和亏损称为寸头，当然最多一周这支股票就会被卖出。期间如遇该票上涨达到百分之十时（以买入价计）该票将由交易系统自动交易，客户也可自行交易。该股下跌百分之十时（以买入价计）该股也将由系统自动交易，相应费用在客户的保证金中扣除。空方操作也是相应如此，只不过是贵卖贱买而已的反方向操作。当日可多空连续操作，为客户提供最大的投资盈利机会，无论客户盈利亏损与基金公司并无关联，它只是把自己所长期持仓的证券借给投资者买卖，到期投资者平仓了结以作偿还。但是，基金公司只在交易中向中国证交所缴付千分之一的税金以及一笔固定的数据接入费用。一边对投资者收取千分之七的交易费用，一边只需要向中国证交所缴付千分之一的费用，这中间就产生了巨大的差价。而这一笔来自于差价的利益被期货公司、基金公司以及基民共同分配，这样做最大的好处就是投资于该基金的基民在遇到股市收益性差时，依然能够获取高额的回报。而我们中小投资者在参与股票投资的过程中，也可经常把融资融券这种股票期货化的交易作为保障自身利益和控制风险的有力武器。</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('10', '7', '7', '50', '产品优势', '{cmspath}/a/business/3', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"neirong\">\r\n	<div class=\"style1\">\r\n		产品的优势</div>\r\n	&nbsp;\r\n	<h3 style=\"font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.5; color: rgb(51, 51, 51); text-align: center;\">\r\n		产品的优势</h3>\r\n	<div style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;&nbsp;（一）、同样是买卖沪深两市的股票，QFII类金牛软件融资融券交易具有三大优势：</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			（1）、采用T+0交易规则，当天买卖，当天可以平仓交易。</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			（2）、双向交易机制，可多空双向操作，既可以买涨也可以买跌，涨跌都可能赚钱。</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			（3）、资金杠杆1：10，即采用信用授权，以小博大。比如1万元的投资，即获得10万元的资金操作，赚的钱为10万元的百分比。</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;&nbsp;（二）、QFII类金牛软件融资融券与A股普通交易的比较：</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<table border=\"1\" cellpadding=\"0\" width=\"695\">\r\n			<tbody>\r\n				<tr class=\"firstRow\">\r\n					<td width=\"162\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;类比项目</p>\r\n					</td>\r\n					<td width=\"202\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp; &nbsp; &nbsp; &nbsp;金牛软件融资融券交易</p>\r\n					</td>\r\n					<td width=\"241\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;A股普通交易</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"162\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;盈利对比</p>\r\n					</td>\r\n					<td width=\"202\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;双向都可以获利</p>\r\n					</td>\r\n					<td width=\"241\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;单向获利（涨赚跌亏）</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"162\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;盈亏对比</p>\r\n					</td>\r\n					<td width=\"202\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp; &nbsp; &nbsp;赚大亏小（10&nbsp;：1左右）</p>\r\n					</td>\r\n					<td width=\"241\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;涨跌停均10%（1：1）</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"162\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;交易时间</p>\r\n					</td>\r\n					<td colspan=\"2\" width=\"443\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;与A股同步</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"162\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;交易限制</p>\r\n					</td>\r\n					<td width=\"202\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T+0（即时成交）</p>\r\n					</td>\r\n					<td width=\"241\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T+1&nbsp;（撮合成交）</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"162\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;交易品种</p>\r\n					</td>\r\n					<td width=\"202\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;沪深两市优质个股</p>\r\n					</td>\r\n					<td width=\"241\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; A股市场所有个股</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td width=\"162\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;资金可否放大</p>\r\n					</td>\r\n					<td width=\"202\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;放大10倍</p>\r\n					</td>\r\n					<td width=\"241\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;不能放大</p>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;（三）、QFII类 &ldquo;金牛软件融资融券&rdquo;交易和国内券商A股融资融券业务对比：</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102);\">\r\n			&nbsp;</p>\r\n		<table border=\"1\" cellpadding=\"0\" width=\"695\">\r\n			<tbody>\r\n				<tr class=\"firstRow\">\r\n					<td valign=\"top\" width=\"132\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;类比项目</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"183\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;券商融资融券交易</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"297\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 金牛软件融资融券交易&nbsp;</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td valign=\"top\" width=\"132\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;资金门槛</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"183\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前50万</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"297\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;目前1万</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td valign=\"top\" width=\"132\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;标的股票</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"183\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前500支</p>\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;但绝多数为大盘股</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"297\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;两千多支优质个股</p>\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;中小企业板块为主</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td valign=\"top\" width=\"132\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;交易费用</p>\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							（含税费、利息）</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"183\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;目前千分之</p>\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;7.86-9.3</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"297\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;千分之</p>\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;5左右&nbsp;&nbsp;</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td valign=\"top\" width=\"132\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;业务手续</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"183\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;复&nbsp;&nbsp; &nbsp;杂</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"297\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;简&nbsp; &nbsp;&nbsp;单</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td valign=\"top\" width=\"132\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;融资比例</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"183\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;很&nbsp;低，1：2左右</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"297\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;适中，1:10</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td rowspan=\"2\" valign=\"top\" width=\"132\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;交易</p>\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;机制</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"183\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;双向，可做多做空</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"297\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;双向，可做多做空</p>\r\n					</td>\r\n				</tr>\r\n				<tr>\r\n					<td valign=\"top\" width=\"183\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; T+1，最快第二天卖出</p>\r\n					</td>\r\n					<td valign=\"top\" width=\"297\">\r\n						<p style=\"color: rgb(102, 102, 102);\">\r\n							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;T+0，可随时卖出、反复交易</p>\r\n						<div>\r\n							&nbsp;</div>\r\n					</td>\r\n				</tr>\r\n			</tbody>\r\n		</table>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('11', '7', '7', '50', '业务流程', '{cmspath}/a/business/4', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"neirong\">\r\n	<div class=\"style1\">\r\n		业务流程</div>\r\n	<div class=\"tuwen\">\r\n		<div class=\"right\">\r\n			<img alt=\"\" src=\"../../../templets/lanrui/images/000010.jpg\" /></div>\r\n		<div>\r\n			<br />\r\n			<h3 class=\"c_tt\" style=\"font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.5; color: inherit; font-size: 18px; text-align: center;\">\r\n				业务流程</h3>\r\n			<div class=\"cont\" style=\"transition: all 0.3s linear; margin: 0px; padding: 0px 15px 50px; border: 0px;\">\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;1.</span><span style=\"font-size: 15px; color: rgb(51, 51, 51);\">签署开户文件：</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">（1）、通过向本公司业务居间人、经纪商、代理商处索取客户申请开户协议书；</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">&nbsp;&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">（2）、填写并签署客户开户申请协议书及其相关细则后，连同所需文件一并交还一份，客户本人留存一份；</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;text-indent:24px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">（3）、本公司收到代理商所提供的有关客户开户资料之扫描件并经审核合格后，本公司将会加以确认并为客户开设交易账户。&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-size: 15px;\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;2.</span><span style=\"font-size: 15px; color: rgb(51, 51, 51);\">入金与交易：</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">客户办妥开户手续获得帐户和密码后，便可自主将操作本金转入自己于鸿圣资本融资融券平台的证券操作账户，资金到账后即可进行交易。</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;3.</span><span style=\"font-size: 15px; color: rgb(51, 51, 51);\">出金：</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<h3>\r\n					<br />\r\n					<span style=\"font-size: 14px;\"><span style=\"color:#a9a9a9;\">系统结算时间为A股交易日的15:00,出金时间为交易日的下午15:30-17:00。出金操作成功后24小时内转入指定银行账户。（国家法定假日延迟至银行系统正常工作日）</span></span></h3>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;text-indent:24px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;text-indent:24px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">注：客户在本公司各级代理商、经纪商处开立账户的，具体细则根据各级IB合规执行。</span></p>\r\n				<div>\r\n					&nbsp;</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('12', '7', '7', '50', '风险掌控', '{cmspath}/a/business/5', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"neirong\">\r\n	<div class=\"style1\">\r\n		业务流程</div>\r\n	<div class=\"tuwen\">\r\n		<div class=\"right\">\r\n			<img alt=\"\" src=\"../../../templets/lanrui/images/000018.jpg\" /></div>\r\n		<div>\r\n			<div>\r\n				&nbsp;\r\n				<h3 style=\"font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.5; color: rgb(51, 51, 51); text-align: center;\">\r\n					风险及风险管理</h3>\r\n				<div style=\"color: rgb(51, 51, 51); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;1.风险提示&nbsp;：</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						<span style=\"line-height: 2em;\">&nbsp; &nbsp;</span><span style=\"line-height: 2em;\">（1）、保证金杠杆原理：该平台提供的标的股均是以融资融券保证金形式交易的，保证金的杠杆效应可以以小搏大但也有可能导致操作风险的放大。</span></p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp; &nbsp;（2）、&nbsp;股价剧烈变动：影响股价变动的因素很多，例如重要经济指标的变动、政府政策的改&nbsp;变、汇率变动剧烈、企业经营状况等等，会使股票价格有一个较大的波动，投资者如随便入市搏手气，且不做好资金管理，会存在较大的操作风险。</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp; &nbsp;（3）、操作风险：由于投资者在投资过程中，&ldquo;贪&rdquo;、&ldquo;怕&rdquo;、&ldquo;赌&rdquo;的心理作怪，而造成的损失。因为 市场在随时变化，投资心态方显得分外重要。</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;2.风险控制&nbsp;：</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						<span style=\"line-height: 2em;\">&nbsp; （1）、严守风险控制策略：</span></p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;&nbsp;股市时时有机会，如果方向判断失误，及时止损，静待下次机会。</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;（2）、忌频繁的T+0短线操作：</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;&nbsp;频繁的T+0短线操作，会让您支付大量的交易费用,亦会直接影响您的交易净获利。</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;（3）、盈利实战策略：</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;&nbsp;顺势、轻仓、止损！</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;（4）、根据资金状况订制合理的操作计划和方案：</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;&nbsp;在操作之前根据资金量大小合理的订制资金运作的比例,为失误操作造成的损失留下回旋的空间和机会。</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;（5）、时间段控制风险概率提示：</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;&nbsp;客户下单时，应绝对控制和把握自己是否处于疲惫状态，避免操作失误造成投资亏损。</p>\r\n					<p style=\"color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;（6）、根据时间条件订制适宜的操作风格：</p>\r\n					<p style=\"transition: all 0.3s linear; color: rgb(102, 102, 102);\">\r\n						&nbsp;&nbsp;&nbsp;每个投资者拥有的操作时间是不同的。如果有足够的时间盯盘，并且具有一定的技术功底可以通过短线操作获得更多的收益机会；如果只是有很少的时间关注盘面，不适宜作短线的操作。则需要慎重寻找一个比较可靠的并且趋势较长的介入点中长线持有，累计获利较大时再予以出局套现。</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('13', '7', '7', '50', '投资说明', '{cmspath}/a/business/6', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"neirong\">\r\n	<div class=\"style1\">\r\n		投资说明</div>\r\n	<div class=\"tuwen\">\r\n		&nbsp;\r\n		<h3 style=\"font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.5; color: rgb(51, 51, 51); text-align: center;\">\r\n			投资说明</h3>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;(一）.什么是A股QFII类商业化融资融券交易</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&ldquo;金牛软件A股融资融券&rdquo;交易是香港金牛软件期货开发的QFII类融资融券业务，是沪深A股的金融衍生产品，可买卖沪深A股的二千余支优质股票，交易时间、交易行情均与国内A股同步。简单的讲，它是基于基金公司将其长线持有的证券交由兰瑞国际期货托管，转而对投资者发行而产生的一种股票期货化交易方式的投资产品，它属于商业化形式的融资融券交易。</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp; &nbsp; &nbsp;金牛软件(香港）资本管理有限公司是香港鸿圣期货QFII类融资融券业务&ldquo;A股QFII类融资融券&rdquo;交易平台的大中华地区唯一独家代理商（仅限于中国香港、中国澳门和中国大陆地区，不含台湾地区）。</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;<span style=\"line-height: 2em;\">&nbsp; &nbsp; &nbsp; &nbsp;</span></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;&nbsp;&nbsp;(二）.金牛软件融资融券平台说明</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			1、&nbsp;本系统属于金牛软件融资融券交易软件，以中国A股融资融券交易原则生成；</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			2、&nbsp;客户需了解且明白该平台提供的标的股均是以融资融券保证金形式交易的，保证金的杠杆效应可以小博大但也有可能导致操作风险的放大；</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			3、&nbsp;由于通讯设备或互联网络传送中断或故障，以及黑客攻击而导致的客户下单指令之传送、接收或执行出现延误、错误或不完整等问题，金牛软件公司并不承担相应的责任；</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			4、&nbsp;本系统除供新加坡等地区投资者使用外，亦同时为其他适用融资融券交易原则的地区投资者使用；任何地区个人和单位不得更改本软件的使用功能，或附带添加各种插件；</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			5、&nbsp;系统将根据对客户所持仓股票异动（除权、停盘等）的情况及客户保证金预留不足情况，将作出自动平仓和结算，故客户&nbsp;买卖交易过程中应及时关注个股发展和股价变化，并做好资金管理。</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;&nbsp;&nbsp;(三）.&nbsp;金牛软件商业化融资融券交易规则介绍</p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n		<p style=\"box-sizing: border-box; font-size: 14px; color: rgb(102, 102, 102); font-family: \'microsoft yahei\', \'lvetica Neue\', Helvetica, Arial, sans-serif;\">\r\n			<span style=\"color:#a9a9a9;\"><span style=\"font-size:12px;\"><strong style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">1、&nbsp;交易融资比例为&nbsp;1:10，即最大资金使用量为客户信用保证金（即本金）的10倍；</span></span></strong></span></span><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">2、&nbsp;每笔交易均以交易金额为准下单即时扣除双向共计（含税）千分之九的交易费用（其中包括：千分之一印花税，千分之二手续费，千分之二融资利息）</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">3、&nbsp;留仓股票最多持仓时间为一周，节假日则顺延（举例：周一购入，最迟至下周一15:00点，系统将自动进行平仓）；</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">4、&nbsp;为控制交易之风险，个股每日涨（跌）幅达到百分之七，或连续两日涨（跌）百分之八时，系统将停止该股多（空）新单&nbsp;的购买，金融指数不包括在内；</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-family: Arial, Verdana, sans-serif;\">5、&nbsp;个股盘中任一时点（含开盘、收盘）触及涨跌停板,跳空等异常情况下单, 为保证共同利益，系统将有权自动止盈止损，均以涨跌停板价或建仓价自动平仓结算。</span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); font-family: 微软雅黑; box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">6、&nbsp;以股票买入的成本价计算，赢/亏额达到百分之百/之九十时，系统将自动平仓。</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); font-family: 微软雅黑; box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">7、&nbsp;单股每笔持仓最低交易金额为一万元以上，单仓或多仓集合竞买不超过一千万元人民币（单向同时持仓）</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); font-family: 微软雅黑; box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">8、每支股票单笔买入后不可分批卖出，故建议客户同一支股票可分次购入。</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); font-family: 微软雅黑; box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">9、为保证客户下单交易的及时和有效性，系统对每笔下单均为及时成交价,系统代为委托下单；不同板块个股将加收热门手续费用。</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); font-family: 微软雅黑; box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">10、新建仓之股票5分钟内系统均不允以平仓；</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); font-family: 微软雅黑; box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">11、系统交易时间为：A股正常交易日内的上午09:33-11:27，下午13:03-14:56.系统结算时间为A股交易日的15:00,出金时间为交易日的下午15:30-17:00。出金操作成功后24小时内转入指定银行账户。（国家法定假日延迟至银行系统正常工作日）</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); font-family: 微软雅黑; box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">12、一周内连续出金三次以上的客户，需扣除0.3%的转账手续费,频繁点击视为恶意操作；当日有留仓的系统不支持出金。</span></span></strong><br />\r\n			<strong style=\"font-size: 12px; color: rgb(169, 169, 169); font-family: 微软雅黑; box-sizing: border-box;\"><span style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box;\">13、本交易规则如有未尽事宜，可视状况随时调整。本公司保留规则和条款的最终解释权。</span></span></strong></p>\r\n		<p style=\"color: rgb(102, 102, 102); font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">\r\n			&nbsp;</p>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('14', '7', '7', '50', 'stock index简介', '{cmspath}/a/business/7', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"neirong\">\r\n    <div class=\"style1\">\r\n        stock index简介</div>\r\n    <div class=\"tuwen\">\r\n        <div class=\"right\">\r\n            <img alt=\"\" src=\"../../../templets/lanrui/images/000010.jpg\" /></div>\r\n        <p>\r\n            <span style=\"font-size:20px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; stock index简介</span></p>\r\n        <div class=\"line2\">\r\n            <h1>\r\n                <strong><sub>股票价格指数</sub></strong></h1>\r\n            &nbsp;<br />\r\n            <h2>\r\n                <strong><sub>（描述股票市场总的价格水平变化的指标）</sub></strong></h2>\r\n            股票价格<a href=\"http://baike.baidu.com/item/%E6%8C%87%E6%95%B0\">指数</a>（stock index）是描述股票市场总的价格水平变化的指标。它是选取有代表性的一组股票，把他们的价格进行加权平均，通过一定的计算得到。各种指数具体的股票选取和\r\n            <a href=\"http://baike.baidu.com/item/%E8%AE%A1%E7%AE%97%E6%96%B9%E6%B3%95\">计算方法</a>是不同的。<br /> 2015年1月19日，因两融监管，\r\n            <a href=\"http://baike.baidu.com/item/%E5%88%B8%E5%95%86\">券商</a>板块，除宏源证券停牌外，板块内个股全线跌停。个股方面，<a href=\"http://baike.baidu.com/item/%E6%96%B9%E6%AD%A3%E8%AF%81%E5%88%B8\">方正证券</a>、\r\n            <a href=\"http://baike.baidu.com/item/%E5%B1%B1%E8%A5%BF%E8%AF%81%E5%88%B8\">山西证券</a>、<a href=\"http://baike.baidu.com/item/%E5%9B%BD%E6%B5%B7%E8%AF%81%E5%88%B8\">国海证券</a>、\r\n            <a\r\n                href=\"http://baike.baidu.com/item/%E5%9B%BD%E9%87%91%E8%AF%81%E5%88%B8\">国金证券</a>、\r\n                <a href=\"http://baike.baidu.com/item/%E4%B8%9C%E5%8C%97%E8%AF%81%E5%88%B8\">东北证券</a>、<a href=\"http://baike.baidu.com/item/%E4%B8%AD%E4%BF%A1%E8%AF%81%E5%88%B8\">中信证券</a>、\r\n                <a\r\n                    href=\"http://baike.baidu.com/item/%E6%8B%9B%E5%95%86%E8%AF%81%E5%88%B8\">招商证券</a>等19股集体跌停。沪指大跌7.7%创7年来最大单日跌幅。<br /> &nbsp;\r\n                    <br />\r\n                    <h2>\r\n                        <strong>定义</strong></h2>\r\n                    &nbsp;<br /> 股票价格指数就是用以反映整个\r\n                    <a href=\"http://baike.baidu.com/item/%E8%82%A1%E7%A5%A8%E5%B8%82%E5%9C%BA\">股票市场</a>上各种股票市场价格的总体水平及其变动情况的指标。简称为股票指数。它是由\r\n                    <a href=\"http://baike.baidu.com/item/%E8%AF%81%E5%88%B8%E4%BA%A4%E6%98%93\">证券交易</a>所或金融服务机构编制的表明股票行市变动的一种供参考的指示数字。由于\r\n                    <a\r\n                        href=\"http://baike.baidu.com/item/%E8%82%A1%E7%A5%A8%E4%BB%B7%E6%A0%BC\">股票价格</a>起伏无常，投资者必然面临市场价格风险。<br /> 对于具体某一种股票的价格变化，投资者容易了解，而对于多种股票的价格变化，要逐一了解，既不容易，也\r\n                        <a href=\"http://baike.baidu.com/item/%E4%B8%8D%E8%83%9C%E5%85%B6%E7%83%A6\">不胜其烦</a>。为了适应这种情况和需要，一些金融服务机构就利用自己的业务知识和熟悉市场的优势，编制出股票价格指数，比如道富投资，公开发布，作为市场价格变动的指标。投资者据此就可以检验自己投资的效果，并用以预测股票市场的动向。同时，新闻界、公司老板等也以此为参考指标，来观察、预测经济发展形势。<br\r\n                        /> 这种股票指数，也就是表明股票行市变动情况的价格平均数。编制股票指数，通常以某年某月为基础，以这个\r\n                        <a href=\"http://baike.baidu.com/item/%E5%9F%BA%E6%9C%9F\">基期</a>的股票价格作为100，用以后各时期的股票价格和基期价格比较，计算出升降的百分比，就是该时期的股票\r\n                        <a href=\"http://baike.baidu.com/item/%E6%8C%87%E6%95%B0\">指数</a>。投资者根据指数的升降，可以判断出股票价格的变动趋势。并且为了能实时的向投资者反映\r\n                        <a\r\n                            href=\"http://baike.baidu.com/item/%E8%82%A1%E5%B8%82\">股市</a>的动向，所有的股市几乎都是在\r\n                            <a href=\"http://baike.baidu.com/item/%E8%82%A1%E4%BB%B7\">股价</a>变化的同时即时公布股票价格指数。<br />\r\n                            <a href=\"http://baike.baidu.com/pic/%E8%82%A1%E7%A5%A8%E4%BB%B7%E6%A0%BC%E6%8C%87%E6%95%B0/81007/0/1b4c510fd9f9d72a000bcaa7d42a2834349bbb19?fr=lemma&amp;ct=single\"><img height=\"215\" src=\"../../../templets/lanrui/images/666.png\"\r\n                                    width=\"220\" /></a><br /> 计算股票指数，要考虑三个因素：一是\r\n                            <a href=\"http://baike.baidu.com/item/%E6%8A%BD%E6%A0%B7\">抽样</a>，即在众多股票中抽取少数具有代表性的<a href=\"http://baike.baidu.com/item/%E6%88%90%E4%BB%BD%E8%82%A1\">成份股</a>；二是加权，按单价或总值加权平均，或不加权平均；三是计算程序，计算\r\n                            <a href=\"http://baike.baidu.com/item/%E7%AE%97%E6%9C%AF%E5%B9%B3%E5%9D%87%E6%95%B0\">算术平均数</a>、\r\n                            <a\r\n                                href=\"http://baike.baidu.com/item/%E5%87%A0%E4%BD%95%E5%B9%B3%E5%9D%87%E6%95%B0\">几何平均数</a>，或兼顾价格与总值。<br /> 由于\r\n                                <a href=\"http://baike.baidu.com/item/%E4%B8%8A%E5%B8%82%E8%82%A1%E7%A5%A8\">上市股票</a>种类繁多，计算全部上市股票的价格平均数或指数的工作是艰巨而复杂的，因此人们常常从上市股票中选择若干种富有代表性的样本股票，并计算这些样本股票的价格平均数或指数。用以表示整个市场的股票价格总趋势及\r\n                                <a href=\"http://baike.baidu.com/item/%E6%B6%A8%E8%B7%8C\">涨跌</a>幅度。<br /> &nbsp;\r\n                                <br /> &nbsp;\r\n        </div>\r\n    </div>\r\n</div>\r\n<br />', '');
INSERT INTO `dede_arctype` VALUES ('15', '7', '7', '50', 'CFD产品由来', '{cmspath}/a/business/8', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/business', '', '0', '0', '', '<div class=\"neirong\">\r\n	<div class=\"style1\">\r\n		CFD产品由来</div>\r\n	<div class=\"tuwen\">\r\n		<div class=\"right\">\r\n			<img alt=\"\" src=\"../../../templets/lanrui/images/000010.jpg\" /></div>\r\n		<p>\r\n			<span style=\"font-size:18px;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CFD产品由来</span></p>\r\n		<div class=\"line2\">\r\n			一：什么是CFD?<br />\r\n			<br />\r\n			CFD(Contracts For Difference)这种当今最新最有潜力的金融衍生品，通常被翻译成差价合约，价差合约或区别合同。实际上就是客户和他的交易商（交易商可以为银行或是金融公司）签署执行的一个合约，是对一个金融产品未来走势的合约。客户的目的是赚取这个金融产品未来走势完成的价格和当前价格的价差。而不是真的想要拥有这种金融产品。理论上说这个金融产品（又被称为基础产品）可以是现在世界上已经存在的任何一个投资品种，只要它存在将来。具体地讲，可以是交易中的各种股票，股票市场指数，期货，债券，外汇甚至利率等等。合约只对相关的金融产品的未来价格产生约束，而不涉及相关的金融产品的实体和所有权。举个简单的例子，传统的股票交易，客户要先变成股东，然后才能享受股票价格上升或是下降的权利。而在CFD交易中，客户执行了差价合约后，就可以享受到股票价格的上升或是下降而带来的收益。<br />\r\n			<br />\r\n			二：为什么要交易CFD<br />\r\n			CFD合约对客户的好处是1：可以双向交易，既买入做多或卖出做空。这里做空的含义不是简单的平掉多头头寸。而是先卖出，然后择机买回。比如说CFD股票，因为不涉及所有权，即使客户没有股票也可以行使先行卖出的合约。而不需要去借股票来抛空。2：所有的产品都可以以保证金方式进杠杆操作，就是说不需要投入全额资金，通常只需要10%的保证金即可。3：可进行分散投资从而降低风险的小额交易。举例来说，伦敦金属交易所LME的期货铜，最小交易单位是25吨，一手合约按现在的价格大概要20万美元左右。而有的CFD公司提供最小1万美元的交易额度，大概合1。3吨铜1手，从而为中小客户投资大额品种提供可能和方便。4：因为与交易公司行使合约，所以成交快速且止损相对有保证。(有些公司给出有条件的保证止损，就是即使市场开盘时有跳空缺口，也按照客户设定的价格止损止损)许多产品24小时连续或接近连续交易。 5：客户只需要和一家公司行使合约，在一个交易平台上用一个账户通过互联网就可以自助地完成外汇，期货，股票，指数等几乎所有投资品种的交易，客户所亲自见到的价格几乎就是可以成交的价格（具体的交易品种的多寡因各个交易公司而异）。而不必每次都要打电话询价交易和不得不开设许多个账户来分别交易不同的品种。<br />\r\n			<br />\r\n			三：CFD交易中的资金安全（监管形式）<br />\r\n			无疑从事金融活动，资金安全是最最重要的，任何交易上的优势和资金安全这一项来比较，都显得微不足道。保证资金安全关键是看监管。国际上现有的监管可以分成三种形式。<br />\r\n			1：没有特别监管。主要是指在免税岛或一些小国注册的离岸公司，在那里你很容易很快就能注册个公司，而且不需要另外申请从事交易金融产品的执照。（有些地区甚至没有银监会或是证监会类似的政府部门，所以注册个离岸银行也可以）公司几乎全部收入来自不需缴纳税收的海外，当地政府没有兴趣和能力作监管。<br />\r\n			2：政府监管。要因国家政策经验而异。有些国家对金融行业中的衍生产品没有特别要求的行业执照，有些则是有要求，但碍于政府的经验和能力。比如说现在国内的相关部门就没有对外汇保证金业务相应的监管条款3：非政府组织承担连带有限责任的超级监管。政府监管的弊端，是产生官僚主义和推卸责任，或是由政府承担无限责任。怎么样让监管者自己做到尽职尽责主动地去工作，是政府制度上的创新。现在已经有国家开始采取，监管者是从政府分离出来的独立组织。超级监管的含义是对所有涉及金融活动的公司或银行等统一进行监管。就是把证监会，银监会和保监会合并为一个组织。<br />\r\n			<br />\r\n			四：CFD交易中的资金安全（赔偿制度）<br />\r\n			中国证监会等相关部门（现在预期设立的保护基金不包括银监会和保监会下监督的企业客户）也在逐步借鉴国际上现有国家的赔偿制度和经验来建立投资者赔偿基金制度。就是如果因为监管不利而不是正常的市场交易行为导致的客户资金损失。主要情况是受到监管的有执照的公司或银行破产或者是停止运行，要由基金来赔偿客户的资金。各国的赔偿制度的资金来源和管理方式由各国制定。<br />\r\n			<br />\r\n			五：CFD的交易是怎样进行的<br />\r\n			CFD是一种和B2B交易的方式。国内的银行开展的外汇交易实际上也都是这种方式。就是你交易的时候，当时买卖有一个价差的报价是由基金公司来提供，如果你觉得价格合适，实际上是立刻进行交易，也可以说是基金公司接下了你的头寸。所以成交，止损，交易时间都很方便。如何处理客户的头寸，基金公司首先看公司内部有没有其他客户作反向交易可以对冲掉。这个属于基金对冲公司内部的风险管理和监管的范畴。国内现行的股票和期货市场，就是受证监会管辖的范畴内，出于国内金融的现状和监管的能力，是暂时不允许基金公司的CFD对冲制度的。国内现行的是Broker (经纪商)制度，就是无论证券或期货公司都是客户的中介，客户买卖股票，期货都要通过中介到交易所找到其他的对手客户才能完成交易。无疑。基金CFD量化对冲的制度在许多方面都是大大优于经纪商制度的。特别针对中小客户。国内现在只有银行才有资格成为做市商。当个人去银行存钱，银行付给客户利息，客户不会去担心银行是否有能力把他的钱贷给第三方从而赚取利息差，客户也无需知道第三方是谁。因为，有执照的银行（做市商），本身就是信誉的保证。能否把这种做法推广到企业一级，也是对此国家法归是否健全和监管部门能力的考验。目前国内已经开始慢慢的推广这一交易方式，来完善中国沪深A股的交易方面的不足。在国内已经批准了部分基金公司行使类似的权利。安和便是基于此背景下由各大国际知名投行牵手成立的香港公司。英国政府有多年监管做市商制度的经验和能力。英国的交易也许多采用CFD量化对冲交易形式，比如世界最大的金属交易场所伦敦金属交易所，平稳运行多年，就是由十几个圈内做市商完成核心交易。伦敦金银交易市场同样也是。现在以CFD量化对冲交易制度为主的交易所之外的OTC市场交易迅速成长，已经机会渗透到很多的投资领域。<br />\r\n			<br />\r\n			六：CFD交易在世界上的位置<br />\r\n			互联网上的电子交易大幅度的提高了中小客户交易的反应时间，而CFD几乎提供了全球各个重要金融市场的所有重点产品。这个优势对投资人来讲无疑是巨大的，市场也是十分广阔的。可以说，对全球每个投资人特别是中小投资人，CFD将是他们首选的交易手段和品种。<br />\r\n			最近一段时期，国际上的趋势交易基金(Trading Fund)迅速发展，而通过互联网来交易CFD，使中小投资人可以和专业的基金经理一样，迅速捕捉全球市场的热点，从而实现最大化和最简单的盈利。前文谈到的超级监管就是有英国率先于2000年在世界上第一个实行。（现在多个国家甚至中国也在考虑跟进的事宜）。对待新的金融产品也是如此，所有的衍生产品都有其衍生的理由，如果在相应的政策监管方面跟上，使得客户在其交易上更安全合法，方便和可靠有效。就可以维持伦敦在世界上金融中心地位上的优势。英国的支柱产业是金融服务业，证券市场竞争不过美国，政府部门出于保持伦敦的竞争优势地位的考虑，就对新的金融衍生产品大开方便之门。创新和监管并行的优势，使伦敦成为世界上金融衍生品交易的中心。<br />\r\n			商品期货是对商品现货的衍生，而CFD是对期货的衍生。金融股指期货是对股票市场的衍生。同样，CFD也是对金融股指期货的衍生。</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('16', '0', '0', '50', '客户服务', '{cmspath}/a/customerservice', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_caidan1.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/customerservice', '', '0', '0', '', '<div class=\"zixun\">\r\n	<div class=\"qiehuanbtns\">\r\n		<div class=\"qiehuanbtn active2\">\r\n			技术保障</div>\r\n		<div class=\"qiehuanbtn\">\r\n			信息安全保障</div>\r\n		<div class=\"qiehuanbtn\">\r\n			资金安全保障</div>\r\n	</div>\r\n	<div class=\"qiehuanconts\">\r\n		<div class=\"qiehuancont active3\">\r\n			<div class=\"jishus\">\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"qiehuancont\">\r\n			<div class=\"jishus\">\r\n				<div>\r\n					<section class=\"font5\">\r\n						第yi方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"qiehuancont\">\r\n			<div class=\"jishus\">\r\n				<div>\r\n					<section class=\"font5\">\r\n						第wu方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n				<div>\r\n					<section class=\"font5\">\r\n						第三方交易资金</section>\r\n					<section class=\"color1\">\r\n						第三方交易资金第三方交易资金</section>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n	<div style=\"clear:both\">\r\n		&nbsp;</div>\r\n</div>\r\n<script>\r\n        $(\'.qiehuanbtn\').hover(function () {\r\n       $(this).addClass(\'active2\').siblings().removeClass(\'active2\');\r\n       var _index = $(this).index()\r\n       $(\'.qiehuancont\').eq(_index).addClass(\'active3\').siblings().removeClass(\'active3\');\r\n    })\r\n      </script>', '');
INSERT INTO `dede_arctype` VALUES ('17', '16', '16', '50', '软件下载', '{cmspath}/a/customerservice/1', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/customerservice', '', '0', '0', '', '<div class=\"neirong\">\r\n	<div class=\"style1\">\r\n		软件下载</div>\r\n	<div class=\"tuwen\">\r\n		<div class=\"left\">\r\n			<img alt=\"\" src=\"../../../templets/lanrui/images/ABUIABACGAAg_5b7xwUokLGctwMw6AI44QE.jpg\" /></div>\r\n		<div>\r\n			<br />\r\n			<h3 class=\"c_tt\" style=\"font-family: &quot;microsoft yahei&quot;, &quot;lvetica Neue&quot;, Helvetica, Arial, sans-serif; font-weight: 500; line-height: 1.5; color: inherit; font-size: 18px; text-align: center;\">\r\n				软件下载</h3>\r\n			<div class=\"cont\" style=\"transition: all 0.3s linear; margin: 0px; padding: 0px 15px 50px; border: 0px;\">\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;1.</span><span style=\"font-size: 15px; color: rgb(51, 51, 51);\">签署开户文件：</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">（1）、通过向本公司业务居间人、经纪商、代理商处索取客户申请开户协议书；</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">&nbsp;&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">（2）、填写并签署客户开户申请协议书及其相关细则后，连同所需文件一并交还一份，客户本人留存一份；</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;text-indent:24px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">（3）、本公司收到代理商所提供的有关客户开户资料之扫描件并经审核合格后，本公司将会加以确认并为客户开设交易账户。&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-size: 15px;\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;2.</span><span style=\"font-size: 15px; color: rgb(51, 51, 51);\">入金与交易：</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">客户办妥开户手续获得帐户和密码后，便可自主将操作本金转入自己于鸿圣资本融资融券平台的证券操作账户，资金到账后即可进行交易。</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">&nbsp;3.</span><span style=\"font-size: 15px; color: rgb(51, 51, 51);\">出金：</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 13px; color: rgb(51, 51, 51);\">每周一至周五，正常工作时间内客户均可以自由提款，但客户必须在每天下午四点前发出提款指令，出金至客户交易账号所绑定的客户本人银行账户，客户当天可收到所出金款项，晚于下午四点发出的提款指令则顺延至下个工作日到账，敬请谅解。</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;text-indent:24px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;text-indent:24px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 10px; color: rgb(51, 51, 51);\">&nbsp;&nbsp;</span></p>\r\n				<p style=\"color: rgb(102, 102, 102); font-size: 14px; font-family: 微软雅黑, &quot;font-size:12px;background-color:#F9F9F9;&quot;;\">\r\n					<span style=\"font-size: 15px; color: rgb(51, 51, 51);\">注：客户在本公司各级代理商、经纪商处开立账户的，具体细则根据各级IB合规执行。</span></p>\r\n				<div>\r\n					&nbsp;</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>\r\n<br />\r\n', '');
INSERT INTO `dede_arctype` VALUES ('18', '0', '0', '50', '疑难解答', '{cmspath}/a/troubleshooting', '1', 'index.html', '1', '1', '-1', '0', '0', '{style}/index_article.htm', '{style}/list_articleyinan.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/troubleshooting', '', '0', '0', '', '&nbsp;', '');
INSERT INTO `dede_arctype` VALUES ('19', '0', '0', '50', '联系我们', '{cmspath}/a/contactus', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_caidan2.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '{typedir}/list_{tid}_{page}.html', 'default', '', '', '', '0', '{cmspath}/a/contactus', '', '0', '0', '', '<banner>\r\n<ul>\r\n	<li>\r\n		<img src=\"../../templets/lanrui/images/001.jpg\" /></li>\r\n</ul>\r\n</banner>', '');
INSERT INTO `dede_arctype` VALUES ('21', '0', '0', '50', '在线入金', '{cmspath}/a/zaixianrujin', '1', 'index.html', '1', '1', '-1', '1', '0', '{style}/index_article.htm', '{style}/list_article.htm', '{style}/article_article.htm', '{typedir}/{Y}/{M}{D}/{aid}.html', '', 'default', '', '', '', '0', '{cmspath}/a/zaixianrujin', '', '0', '0', '', '<div style=\"margin: 0 auto;;width:960px;\">\r\n	<span style=\"color: red; font-family: 微软雅黑; font-size: 16px;\">在线入金银行卡</span><br />\r\n	<br />\r\n	<br />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 20px;\">农业银行&nbsp;</span><a a=\"\" color=\"#333333\" div=\"\" font=\"\" href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=8845425&amp;site=qq&amp;menu=yes\" span=\"\" style=\"font-family: 微软雅黑; font-size: 20px; box-sizing: border-box; text-decoration-line: none; color: rgb(51, 51, 51);\" target=\"_blank\"><font color=\"#333333\"><span style=\"box-sizing: border-box;\">&nbsp;</span></font><span style=\"box-sizing: border-box;\">：</span></a><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 20px;\">6228451838055968075&nbsp;</span>&nbsp;<br />\r\n	<br />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 20px;\">中国银行&nbsp;</span><a a=\"\" color=\"#333333\" div=\"\" font=\"\" href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=8845425&amp;site=qq&amp;menu=yes\" span=\"\" style=\"font-family: 微软雅黑; font-size: 20px; box-sizing: border-box; text-decoration-line: none; color: rgb(51, 51, 51);\" target=\"_blank\"><font color=\"#333333\"><span style=\"box-sizing: border-box;\">&nbsp;</span></font><span style=\"box-sizing: border-box;\">：</span></a><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 20px;\">6217856000071616162</span>&nbsp;<br />\r\n	<br />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 20px;\">浦发银行&nbsp;</span><a a=\"\" color=\"#333333\" div=\"\" font=\"\" href=\"http://wpa.qq.com/msgrd?v=3&amp;uin=8845425&amp;site=qq&amp;menu=yes\" span=\"\" style=\"font-family: 微软雅黑; font-size: 20px; box-sizing: border-box; text-decoration-line: none; color: rgb(51, 51, 51);\" target=\"_blank\"><font color=\"#333333\"><span style=\"box-sizing: border-box;\">&nbsp;</span></font><span style=\"box-sizing: border-box;\">：</span></a><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 20px;\">6217921752146780</span><span style=\"font-size:16px;\"><strong>&nbsp;</strong></span><br />\r\n	<br />\r\n	<div>\r\n		&nbsp;</div>\r\n	<span style=\"font-family: 微软雅黑; font-size: 20px; box-sizing: border-box; color: rgb(51, 51, 51);\">建设银行&nbsp; ：</span><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 20px;\">&nbsp;62170023000052676&nbsp;</span>&nbsp;<br />\r\n	&nbsp;</div>\r\n', '');

-- ----------------------------
-- Table structure for dede_area
-- ----------------------------
DROP TABLE IF EXISTS `dede_area`;
CREATE TABLE `dede_area` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `reid` int(10) unsigned NOT NULL DEFAULT '0',
  `disorder` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_area
-- ----------------------------
INSERT INTO `dede_area` VALUES ('1', '北京市', '0', '0');
INSERT INTO `dede_area` VALUES ('102', '西城区', '1', '2');
INSERT INTO `dede_area` VALUES ('126', '崇文区', '1', '0');
INSERT INTO `dede_area` VALUES ('104', '宣武区', '1', '0');
INSERT INTO `dede_area` VALUES ('105', '朝阳区', '1', '0');
INSERT INTO `dede_area` VALUES ('106', '海淀区', '1', '0');
INSERT INTO `dede_area` VALUES ('107', '丰台区', '1', '0');
INSERT INTO `dede_area` VALUES ('108', '石景山区', '1', '0');
INSERT INTO `dede_area` VALUES ('109', '门头沟区', '1', '0');
INSERT INTO `dede_area` VALUES ('110', '房山区', '1', '0');
INSERT INTO `dede_area` VALUES ('111', '通州区', '1', '0');
INSERT INTO `dede_area` VALUES ('112', '顺义区', '1', '0');
INSERT INTO `dede_area` VALUES ('113', '昌平区', '1', '0');
INSERT INTO `dede_area` VALUES ('114', '大兴区', '1', '0');
INSERT INTO `dede_area` VALUES ('115', '平谷县', '1', '0');
INSERT INTO `dede_area` VALUES ('116', '怀柔县', '1', '0');
INSERT INTO `dede_area` VALUES ('117', '密云县', '1', '0');
INSERT INTO `dede_area` VALUES ('118', '延庆县', '1', '0');
INSERT INTO `dede_area` VALUES ('2', '上海市', '0', '0');
INSERT INTO `dede_area` VALUES ('201', '黄浦区', '2', '0');
INSERT INTO `dede_area` VALUES ('202', '卢湾区', '2', '0');
INSERT INTO `dede_area` VALUES ('203', '徐汇区', '2', '0');
INSERT INTO `dede_area` VALUES ('204', '长宁区', '2', '0');
INSERT INTO `dede_area` VALUES ('205', '静安区', '2', '0');
INSERT INTO `dede_area` VALUES ('206', '普陀区', '2', '0');
INSERT INTO `dede_area` VALUES ('207', '闸北区', '2', '0');
INSERT INTO `dede_area` VALUES ('208', '虹口区', '2', '0');
INSERT INTO `dede_area` VALUES ('209', '杨浦区', '2', '0');
INSERT INTO `dede_area` VALUES ('210', '宝山区', '2', '0');
INSERT INTO `dede_area` VALUES ('211', '闵行区', '2', '0');
INSERT INTO `dede_area` VALUES ('212', '嘉定区', '2', '0');
INSERT INTO `dede_area` VALUES ('213', '浦东新区', '2', '0');
INSERT INTO `dede_area` VALUES ('214', '松江区', '2', '0');
INSERT INTO `dede_area` VALUES ('215', '金山区', '2', '0');
INSERT INTO `dede_area` VALUES ('216', '青浦区', '2', '0');
INSERT INTO `dede_area` VALUES ('217', '南汇区', '2', '0');
INSERT INTO `dede_area` VALUES ('218', '奉贤区', '2', '0');
INSERT INTO `dede_area` VALUES ('219', '崇明县', '2', '0');
INSERT INTO `dede_area` VALUES ('3', '天津市', '0', '0');
INSERT INTO `dede_area` VALUES ('301', '和平区', '3', '0');
INSERT INTO `dede_area` VALUES ('302', '河东区', '3', '0');
INSERT INTO `dede_area` VALUES ('303', '河西区', '3', '0');
INSERT INTO `dede_area` VALUES ('304', '南开区', '3', '0');
INSERT INTO `dede_area` VALUES ('305', '河北区', '3', '0');
INSERT INTO `dede_area` VALUES ('306', '红桥区', '3', '0');
INSERT INTO `dede_area` VALUES ('307', '塘沽区', '3', '0');
INSERT INTO `dede_area` VALUES ('308', '汉沽区', '3', '0');
INSERT INTO `dede_area` VALUES ('309', '大港区', '3', '0');
INSERT INTO `dede_area` VALUES ('310', '东丽区', '3', '0');
INSERT INTO `dede_area` VALUES ('311', '西青区', '3', '0');
INSERT INTO `dede_area` VALUES ('312', '北辰区', '3', '0');
INSERT INTO `dede_area` VALUES ('313', '津南区', '3', '0');
INSERT INTO `dede_area` VALUES ('314', '武清区', '3', '0');
INSERT INTO `dede_area` VALUES ('315', '宝坻区', '3', '0');
INSERT INTO `dede_area` VALUES ('316', '静海县', '3', '0');
INSERT INTO `dede_area` VALUES ('317', '宁河县', '3', '0');
INSERT INTO `dede_area` VALUES ('318', '蓟县', '3', '0');
INSERT INTO `dede_area` VALUES ('4', '重庆市', '0', '0');
INSERT INTO `dede_area` VALUES ('401', '渝中区', '4', '0');
INSERT INTO `dede_area` VALUES ('402', '大渡口区', '4', '0');
INSERT INTO `dede_area` VALUES ('403', '江北区', '4', '0');
INSERT INTO `dede_area` VALUES ('404', '沙坪坝区', '4', '0');
INSERT INTO `dede_area` VALUES ('405', '九龙坡区', '4', '0');
INSERT INTO `dede_area` VALUES ('406', '南岸区', '4', '0');
INSERT INTO `dede_area` VALUES ('407', '北碚区', '4', '0');
INSERT INTO `dede_area` VALUES ('408', '万盛区', '4', '0');
INSERT INTO `dede_area` VALUES ('409', '双桥区', '4', '0');
INSERT INTO `dede_area` VALUES ('410', '渝北区', '4', '0');
INSERT INTO `dede_area` VALUES ('411', '巴南区', '4', '0');
INSERT INTO `dede_area` VALUES ('412', '万州区', '4', '0');
INSERT INTO `dede_area` VALUES ('413', '涪陵区', '4', '0');
INSERT INTO `dede_area` VALUES ('414', '黔江区', '4', '0');
INSERT INTO `dede_area` VALUES ('415', '永川市', '4', '0');
INSERT INTO `dede_area` VALUES ('416', '合川市', '4', '0');
INSERT INTO `dede_area` VALUES ('417', '江津市', '4', '0');
INSERT INTO `dede_area` VALUES ('418', '南川市', '4', '0');
INSERT INTO `dede_area` VALUES ('419', '长寿县', '4', '0');
INSERT INTO `dede_area` VALUES ('420', '綦江县', '4', '0');
INSERT INTO `dede_area` VALUES ('421', '潼南县', '4', '0');
INSERT INTO `dede_area` VALUES ('422', '荣昌县', '4', '0');
INSERT INTO `dede_area` VALUES ('423', '璧山县', '4', '0');
INSERT INTO `dede_area` VALUES ('424', '大足县', '4', '0');
INSERT INTO `dede_area` VALUES ('425', '铜梁县', '4', '0');
INSERT INTO `dede_area` VALUES ('426', '梁平县', '4', '0');
INSERT INTO `dede_area` VALUES ('427', '城口县', '4', '0');
INSERT INTO `dede_area` VALUES ('428', '垫江县', '4', '0');
INSERT INTO `dede_area` VALUES ('429', '武隆县', '4', '0');
INSERT INTO `dede_area` VALUES ('430', '丰都县', '4', '0');
INSERT INTO `dede_area` VALUES ('431', '奉节县', '4', '0');
INSERT INTO `dede_area` VALUES ('432', '开县', '4', '0');
INSERT INTO `dede_area` VALUES ('433', '云阳县', '4', '0');
INSERT INTO `dede_area` VALUES ('434', '忠县', '4', '0');
INSERT INTO `dede_area` VALUES ('435', '巫溪县', '4', '0');
INSERT INTO `dede_area` VALUES ('436', '巫山县', '4', '0');
INSERT INTO `dede_area` VALUES ('437', '石柱县', '4', '0');
INSERT INTO `dede_area` VALUES ('438', '秀山县', '4', '0');
INSERT INTO `dede_area` VALUES ('439', '酉阳县', '4', '0');
INSERT INTO `dede_area` VALUES ('440', '彭水县', '4', '0');
INSERT INTO `dede_area` VALUES ('5', '广东省', '0', '0');
INSERT INTO `dede_area` VALUES ('501', '广州市', '5', '0');
INSERT INTO `dede_area` VALUES ('502', '深圳市', '5', '0');
INSERT INTO `dede_area` VALUES ('503', '珠海市', '5', '0');
INSERT INTO `dede_area` VALUES ('504', '汕头市', '5', '0');
INSERT INTO `dede_area` VALUES ('505', '韶关市', '5', '0');
INSERT INTO `dede_area` VALUES ('506', '河源市', '5', '0');
INSERT INTO `dede_area` VALUES ('507', '梅州市', '5', '0');
INSERT INTO `dede_area` VALUES ('508', '惠州市', '5', '0');
INSERT INTO `dede_area` VALUES ('509', '汕尾市', '5', '0');
INSERT INTO `dede_area` VALUES ('510', '东莞市', '5', '0');
INSERT INTO `dede_area` VALUES ('511', '中山市', '5', '0');
INSERT INTO `dede_area` VALUES ('512', '江门市', '5', '0');
INSERT INTO `dede_area` VALUES ('513', '佛山市', '5', '0');
INSERT INTO `dede_area` VALUES ('514', '阳江市', '5', '0');
INSERT INTO `dede_area` VALUES ('515', '湛江市', '5', '0');
INSERT INTO `dede_area` VALUES ('516', '茂名市', '5', '0');
INSERT INTO `dede_area` VALUES ('517', '肇庆市', '5', '0');
INSERT INTO `dede_area` VALUES ('518', '清远市', '5', '0');
INSERT INTO `dede_area` VALUES ('519', '潮州市', '5', '0');
INSERT INTO `dede_area` VALUES ('520', '揭阳市', '5', '0');
INSERT INTO `dede_area` VALUES ('521', '云浮市', '5', '0');
INSERT INTO `dede_area` VALUES ('6', '福建省', '0', '0');
INSERT INTO `dede_area` VALUES ('601', '福州市', '6', '0');
INSERT INTO `dede_area` VALUES ('602', '厦门市', '6', '0');
INSERT INTO `dede_area` VALUES ('603', '三明市', '6', '0');
INSERT INTO `dede_area` VALUES ('604', '莆田市', '6', '0');
INSERT INTO `dede_area` VALUES ('605', '泉州市', '6', '0');
INSERT INTO `dede_area` VALUES ('606', '漳州市', '6', '0');
INSERT INTO `dede_area` VALUES ('607', '南平市', '6', '0');
INSERT INTO `dede_area` VALUES ('608', '龙岩市', '6', '0');
INSERT INTO `dede_area` VALUES ('609', '宁德市', '6', '0');
INSERT INTO `dede_area` VALUES ('7', '浙江省', '0', '0');
INSERT INTO `dede_area` VALUES ('701', '杭州市', '7', '0');
INSERT INTO `dede_area` VALUES ('702', '宁波市', '7', '0');
INSERT INTO `dede_area` VALUES ('703', '温州市', '7', '0');
INSERT INTO `dede_area` VALUES ('704', '嘉兴市', '7', '0');
INSERT INTO `dede_area` VALUES ('705', '湖州市', '7', '0');
INSERT INTO `dede_area` VALUES ('706', '绍兴市', '7', '0');
INSERT INTO `dede_area` VALUES ('707', '金华市', '7', '0');
INSERT INTO `dede_area` VALUES ('708', '衢州市', '7', '0');
INSERT INTO `dede_area` VALUES ('709', '舟山市', '7', '0');
INSERT INTO `dede_area` VALUES ('710', '台州市', '7', '0');
INSERT INTO `dede_area` VALUES ('711', '丽水市', '7', '0');
INSERT INTO `dede_area` VALUES ('8', '江苏省', '0', '0');
INSERT INTO `dede_area` VALUES ('801', '南京市', '8', '0');
INSERT INTO `dede_area` VALUES ('802', '徐州市', '8', '0');
INSERT INTO `dede_area` VALUES ('803', '连云港市', '8', '0');
INSERT INTO `dede_area` VALUES ('804', '淮安市', '8', '0');
INSERT INTO `dede_area` VALUES ('805', '宿迁市', '8', '0');
INSERT INTO `dede_area` VALUES ('806', '盐城市', '8', '0');
INSERT INTO `dede_area` VALUES ('807', '扬州市', '8', '0');
INSERT INTO `dede_area` VALUES ('808', '泰州市', '8', '0');
INSERT INTO `dede_area` VALUES ('809', '南通市', '8', '0');
INSERT INTO `dede_area` VALUES ('810', '镇江市', '8', '0');
INSERT INTO `dede_area` VALUES ('811', '常州市', '8', '0');
INSERT INTO `dede_area` VALUES ('812', '无锡市', '8', '0');
INSERT INTO `dede_area` VALUES ('813', '苏州市', '8', '0');
INSERT INTO `dede_area` VALUES ('9', '山东省', '0', '0');
INSERT INTO `dede_area` VALUES ('901', '济南市', '9', '0');
INSERT INTO `dede_area` VALUES ('902', '青岛市', '9', '0');
INSERT INTO `dede_area` VALUES ('903', '淄博市', '9', '0');
INSERT INTO `dede_area` VALUES ('904', '枣庄市', '9', '0');
INSERT INTO `dede_area` VALUES ('905', '东营市', '9', '0');
INSERT INTO `dede_area` VALUES ('906', '潍坊市', '9', '0');
INSERT INTO `dede_area` VALUES ('907', '烟台市', '9', '0');
INSERT INTO `dede_area` VALUES ('908', '威海市', '9', '0');
INSERT INTO `dede_area` VALUES ('909', '济宁市', '9', '0');
INSERT INTO `dede_area` VALUES ('910', '泰安市', '9', '0');
INSERT INTO `dede_area` VALUES ('911', '日照市', '9', '0');
INSERT INTO `dede_area` VALUES ('912', '莱芜市', '9', '0');
INSERT INTO `dede_area` VALUES ('913', '德州市', '9', '0');
INSERT INTO `dede_area` VALUES ('914', '临沂市', '9', '0');
INSERT INTO `dede_area` VALUES ('915', '聊城市', '9', '0');
INSERT INTO `dede_area` VALUES ('916', '滨州市', '9', '0');
INSERT INTO `dede_area` VALUES ('917', '菏泽市', '9', '0');
INSERT INTO `dede_area` VALUES ('10', '辽宁省', '0', '0');
INSERT INTO `dede_area` VALUES ('1001', '沈阳市', '10', '0');
INSERT INTO `dede_area` VALUES ('1002', '大连市', '10', '0');
INSERT INTO `dede_area` VALUES ('1003', '鞍山市', '10', '0');
INSERT INTO `dede_area` VALUES ('1004', '抚顺市', '10', '0');
INSERT INTO `dede_area` VALUES ('1005', '本溪市', '10', '0');
INSERT INTO `dede_area` VALUES ('1006', '丹东市', '10', '0');
INSERT INTO `dede_area` VALUES ('1007', '锦州市', '10', '0');
INSERT INTO `dede_area` VALUES ('1008', '葫芦岛市', '10', '0');
INSERT INTO `dede_area` VALUES ('1009', '营口市', '10', '0');
INSERT INTO `dede_area` VALUES ('1010', '盘锦市', '10', '0');
INSERT INTO `dede_area` VALUES ('1011', '阜新市', '10', '0');
INSERT INTO `dede_area` VALUES ('1012', '辽阳市', '10', '0');
INSERT INTO `dede_area` VALUES ('1013', '铁岭市', '10', '0');
INSERT INTO `dede_area` VALUES ('1014', '朝阳市', '10', '0');
INSERT INTO `dede_area` VALUES ('11', '江西省', '0', '0');
INSERT INTO `dede_area` VALUES ('1101', '南昌市', '11', '0');
INSERT INTO `dede_area` VALUES ('1102', '景德镇市', '11', '0');
INSERT INTO `dede_area` VALUES ('1103', '萍乡市', '11', '0');
INSERT INTO `dede_area` VALUES ('1104', '新余市', '11', '0');
INSERT INTO `dede_area` VALUES ('1105', '九江市', '11', '0');
INSERT INTO `dede_area` VALUES ('1106', '鹰潭市', '11', '0');
INSERT INTO `dede_area` VALUES ('1107', '赣州市', '11', '0');
INSERT INTO `dede_area` VALUES ('1108', '吉安市', '11', '0');
INSERT INTO `dede_area` VALUES ('1109', '宜春市', '11', '0');
INSERT INTO `dede_area` VALUES ('1110', '抚州市', '11', '0');
INSERT INTO `dede_area` VALUES ('1111', '上饶市', '11', '0');
INSERT INTO `dede_area` VALUES ('12', '四川省', '0', '0');
INSERT INTO `dede_area` VALUES ('1201', '成都市', '12', '0');
INSERT INTO `dede_area` VALUES ('1202', '自贡市', '12', '0');
INSERT INTO `dede_area` VALUES ('1203', '攀枝花市', '12', '0');
INSERT INTO `dede_area` VALUES ('1204', '泸州市', '12', '0');
INSERT INTO `dede_area` VALUES ('1205', '德阳市', '12', '0');
INSERT INTO `dede_area` VALUES ('1206', '绵阳市', '12', '0');
INSERT INTO `dede_area` VALUES ('1207', '广元市', '12', '0');
INSERT INTO `dede_area` VALUES ('1208', '遂宁市', '12', '0');
INSERT INTO `dede_area` VALUES ('1209', '内江市', '12', '0');
INSERT INTO `dede_area` VALUES ('1210', '乐山市', '12', '0');
INSERT INTO `dede_area` VALUES ('1211', '南充市', '12', '0');
INSERT INTO `dede_area` VALUES ('1212', '宜宾市', '12', '0');
INSERT INTO `dede_area` VALUES ('1213', '广安市', '12', '0');
INSERT INTO `dede_area` VALUES ('1214', '达州市', '12', '0');
INSERT INTO `dede_area` VALUES ('1215', '巴中市', '12', '0');
INSERT INTO `dede_area` VALUES ('1216', '雅安市', '12', '0');
INSERT INTO `dede_area` VALUES ('1217', '眉山市', '12', '0');
INSERT INTO `dede_area` VALUES ('1218', '资阳市', '12', '0');
INSERT INTO `dede_area` VALUES ('1219', '阿坝州', '12', '0');
INSERT INTO `dede_area` VALUES ('1220', '甘孜州', '12', '0');
INSERT INTO `dede_area` VALUES ('1221', '凉山州', '12', '0');
INSERT INTO `dede_area` VALUES ('13', '陕西省', '0', '0');
INSERT INTO `dede_area` VALUES ('3114', '西安市', '13', '0');
INSERT INTO `dede_area` VALUES ('1302', '铜川市', '13', '0');
INSERT INTO `dede_area` VALUES ('1303', '宝鸡市', '13', '0');
INSERT INTO `dede_area` VALUES ('1304', '咸阳市', '13', '0');
INSERT INTO `dede_area` VALUES ('1305', '渭南市', '13', '0');
INSERT INTO `dede_area` VALUES ('1306', '延安市', '13', '0');
INSERT INTO `dede_area` VALUES ('1307', '汉中市', '13', '0');
INSERT INTO `dede_area` VALUES ('1308', '榆林市', '13', '0');
INSERT INTO `dede_area` VALUES ('1309', '安康市', '13', '0');
INSERT INTO `dede_area` VALUES ('1310', '商洛地区', '13', '0');
INSERT INTO `dede_area` VALUES ('14', '湖北省', '0', '0');
INSERT INTO `dede_area` VALUES ('1401', '武汉市', '14', '0');
INSERT INTO `dede_area` VALUES ('1402', '黄石市', '14', '0');
INSERT INTO `dede_area` VALUES ('1403', '襄樊市', '14', '0');
INSERT INTO `dede_area` VALUES ('1404', '十堰市', '14', '0');
INSERT INTO `dede_area` VALUES ('1405', '荆州市', '14', '0');
INSERT INTO `dede_area` VALUES ('1406', '宜昌市', '14', '0');
INSERT INTO `dede_area` VALUES ('1407', '荆门市', '14', '0');
INSERT INTO `dede_area` VALUES ('1408', '鄂州市', '14', '0');
INSERT INTO `dede_area` VALUES ('1409', '孝感市', '14', '0');
INSERT INTO `dede_area` VALUES ('1410', '黄冈市', '14', '0');
INSERT INTO `dede_area` VALUES ('1411', '咸宁市', '14', '0');
INSERT INTO `dede_area` VALUES ('1412', '随州市', '14', '0');
INSERT INTO `dede_area` VALUES ('1413', '仙桃市', '14', '0');
INSERT INTO `dede_area` VALUES ('1414', '天门市', '14', '0');
INSERT INTO `dede_area` VALUES ('1415', '潜江市', '14', '0');
INSERT INTO `dede_area` VALUES ('1416', '神农架', '14', '0');
INSERT INTO `dede_area` VALUES ('1417', '恩施州', '14', '0');
INSERT INTO `dede_area` VALUES ('15', '河南省', '0', '0');
INSERT INTO `dede_area` VALUES ('1501', '郑州市', '15', '0');
INSERT INTO `dede_area` VALUES ('1502', '开封市', '15', '0');
INSERT INTO `dede_area` VALUES ('1503', '洛阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1504', '平顶山市', '15', '0');
INSERT INTO `dede_area` VALUES ('1505', '焦作市', '15', '0');
INSERT INTO `dede_area` VALUES ('1506', '鹤壁市', '15', '0');
INSERT INTO `dede_area` VALUES ('1507', '新乡市', '15', '0');
INSERT INTO `dede_area` VALUES ('1508', '安阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1509', '濮阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1510', '许昌市', '15', '0');
INSERT INTO `dede_area` VALUES ('1511', '漯河市', '15', '0');
INSERT INTO `dede_area` VALUES ('1512', '三门峡市', '15', '0');
INSERT INTO `dede_area` VALUES ('1513', '南阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1514', '商丘市', '15', '0');
INSERT INTO `dede_area` VALUES ('1515', '信阳市', '15', '0');
INSERT INTO `dede_area` VALUES ('1516', '周口市', '15', '0');
INSERT INTO `dede_area` VALUES ('1517', '驻马店市', '15', '0');
INSERT INTO `dede_area` VALUES ('1518', '济源市', '15', '0');
INSERT INTO `dede_area` VALUES ('16', '河北省', '0', '0');
INSERT INTO `dede_area` VALUES ('1601', '石家庄市', '16', '0');
INSERT INTO `dede_area` VALUES ('1602', '唐山市', '16', '0');
INSERT INTO `dede_area` VALUES ('1603', '秦皇岛市', '16', '0');
INSERT INTO `dede_area` VALUES ('1604', '邯郸市', '16', '0');
INSERT INTO `dede_area` VALUES ('1605', '邢台市', '16', '0');
INSERT INTO `dede_area` VALUES ('1606', '保定市', '16', '0');
INSERT INTO `dede_area` VALUES ('1607', '张家口市', '16', '0');
INSERT INTO `dede_area` VALUES ('1608', '承德市', '16', '0');
INSERT INTO `dede_area` VALUES ('1609', '沧州市', '16', '0');
INSERT INTO `dede_area` VALUES ('1610', '廊坊市', '16', '0');
INSERT INTO `dede_area` VALUES ('1611', '衡水市', '16', '0');
INSERT INTO `dede_area` VALUES ('17', '山西省', '0', '0');
INSERT INTO `dede_area` VALUES ('1701', '太原市', '17', '0');
INSERT INTO `dede_area` VALUES ('1702', '大同市', '17', '0');
INSERT INTO `dede_area` VALUES ('1703', '阳泉市', '17', '0');
INSERT INTO `dede_area` VALUES ('1704', '长治市', '17', '0');
INSERT INTO `dede_area` VALUES ('1705', '晋城市', '17', '0');
INSERT INTO `dede_area` VALUES ('1706', '朔州市', '17', '0');
INSERT INTO `dede_area` VALUES ('1707', '晋中市', '17', '0');
INSERT INTO `dede_area` VALUES ('1708', '忻州市', '17', '0');
INSERT INTO `dede_area` VALUES ('1709', '临汾市', '17', '0');
INSERT INTO `dede_area` VALUES ('1710', '运城市', '17', '0');
INSERT INTO `dede_area` VALUES ('1711', '吕梁地区', '17', '0');
INSERT INTO `dede_area` VALUES ('18', '内蒙古', '0', '0');
INSERT INTO `dede_area` VALUES ('1801', '呼和浩特', '18', '0');
INSERT INTO `dede_area` VALUES ('1802', '包头市', '18', '0');
INSERT INTO `dede_area` VALUES ('1803', '乌海市', '18', '0');
INSERT INTO `dede_area` VALUES ('1804', '赤峰市', '18', '0');
INSERT INTO `dede_area` VALUES ('1805', '通辽市', '18', '0');
INSERT INTO `dede_area` VALUES ('1806', '鄂尔多斯', '18', '0');
INSERT INTO `dede_area` VALUES ('1807', '乌兰察布', '18', '0');
INSERT INTO `dede_area` VALUES ('1808', '锡林郭勒', '18', '0');
INSERT INTO `dede_area` VALUES ('1809', '呼伦贝尔', '18', '0');
INSERT INTO `dede_area` VALUES ('1810', '巴彦淖尔', '18', '0');
INSERT INTO `dede_area` VALUES ('1811', '阿拉善盟', '18', '0');
INSERT INTO `dede_area` VALUES ('1812', '兴安盟', '18', '0');
INSERT INTO `dede_area` VALUES ('19', '吉林省', '0', '0');
INSERT INTO `dede_area` VALUES ('1901', '长春市', '19', '0');
INSERT INTO `dede_area` VALUES ('1902', '吉林市', '19', '0');
INSERT INTO `dede_area` VALUES ('1903', '四平市', '19', '0');
INSERT INTO `dede_area` VALUES ('1904', '辽源市', '19', '0');
INSERT INTO `dede_area` VALUES ('1905', '通化市', '19', '0');
INSERT INTO `dede_area` VALUES ('1906', '白山市', '19', '0');
INSERT INTO `dede_area` VALUES ('1907', '松原市', '19', '0');
INSERT INTO `dede_area` VALUES ('1908', '白城市', '19', '0');
INSERT INTO `dede_area` VALUES ('1909', '延边州', '19', '0');
INSERT INTO `dede_area` VALUES ('20', '黑龙江', '0', '0');
INSERT INTO `dede_area` VALUES ('2001', '哈尔滨市', '20', '0');
INSERT INTO `dede_area` VALUES ('2002', '齐齐哈尔', '20', '0');
INSERT INTO `dede_area` VALUES ('2003', '鹤岗市', '20', '0');
INSERT INTO `dede_area` VALUES ('2004', '双鸭山市', '20', '0');
INSERT INTO `dede_area` VALUES ('2005', '鸡西市', '20', '0');
INSERT INTO `dede_area` VALUES ('2006', '大庆市', '20', '0');
INSERT INTO `dede_area` VALUES ('2007', '伊春市', '20', '0');
INSERT INTO `dede_area` VALUES ('2008', '牡丹江市', '20', '0');
INSERT INTO `dede_area` VALUES ('2009', '佳木斯市', '20', '0');
INSERT INTO `dede_area` VALUES ('2010', '七台河市', '20', '0');
INSERT INTO `dede_area` VALUES ('2011', '黑河市', '20', '0');
INSERT INTO `dede_area` VALUES ('2012', '绥化市', '20', '0');
INSERT INTO `dede_area` VALUES ('2013', '大兴安岭', '20', '0');
INSERT INTO `dede_area` VALUES ('21', '安徽省', '0', '0');
INSERT INTO `dede_area` VALUES ('2101', '合肥市', '21', '0');
INSERT INTO `dede_area` VALUES ('2102', '芜湖市', '21', '0');
INSERT INTO `dede_area` VALUES ('2103', '蚌埠市', '21', '0');
INSERT INTO `dede_area` VALUES ('2104', '淮南市', '21', '0');
INSERT INTO `dede_area` VALUES ('2105', '马鞍山市', '21', '0');
INSERT INTO `dede_area` VALUES ('2106', '淮北市', '21', '0');
INSERT INTO `dede_area` VALUES ('2107', '铜陵市', '21', '0');
INSERT INTO `dede_area` VALUES ('2108', '安庆市', '21', '0');
INSERT INTO `dede_area` VALUES ('2109', '黄山市', '21', '0');
INSERT INTO `dede_area` VALUES ('2110', '滁州市', '21', '0');
INSERT INTO `dede_area` VALUES ('2111', '阜阳市', '21', '0');
INSERT INTO `dede_area` VALUES ('2112', '宿州市', '21', '0');
INSERT INTO `dede_area` VALUES ('2113', '巢湖市', '21', '0');
INSERT INTO `dede_area` VALUES ('2114', '六安市', '21', '0');
INSERT INTO `dede_area` VALUES ('2115', '亳州市', '21', '0');
INSERT INTO `dede_area` VALUES ('2116', '宣城市', '21', '0');
INSERT INTO `dede_area` VALUES ('2117', '池州市', '21', '0');
INSERT INTO `dede_area` VALUES ('22', '湖南省', '0', '0');
INSERT INTO `dede_area` VALUES ('2201', '长沙市', '22', '0');
INSERT INTO `dede_area` VALUES ('2202', '株州市', '22', '0');
INSERT INTO `dede_area` VALUES ('2203', '湘潭市', '22', '0');
INSERT INTO `dede_area` VALUES ('2204', '衡阳市', '22', '0');
INSERT INTO `dede_area` VALUES ('2205', '邵阳市', '22', '0');
INSERT INTO `dede_area` VALUES ('2206', '岳阳市', '22', '0');
INSERT INTO `dede_area` VALUES ('2207', '常德市', '22', '0');
INSERT INTO `dede_area` VALUES ('2208', '张家界市', '22', '0');
INSERT INTO `dede_area` VALUES ('2209', '益阳市', '22', '0');
INSERT INTO `dede_area` VALUES ('2210', '郴州市', '22', '0');
INSERT INTO `dede_area` VALUES ('2211', '永州市', '22', '0');
INSERT INTO `dede_area` VALUES ('2212', '怀化市', '22', '0');
INSERT INTO `dede_area` VALUES ('2213', '娄底市', '22', '0');
INSERT INTO `dede_area` VALUES ('2214', '湘西州', '22', '0');
INSERT INTO `dede_area` VALUES ('23', '广西区', '0', '0');
INSERT INTO `dede_area` VALUES ('2301', '南宁市', '23', '0');
INSERT INTO `dede_area` VALUES ('2302', '柳州市', '23', '0');
INSERT INTO `dede_area` VALUES ('2303', '桂林市', '23', '0');
INSERT INTO `dede_area` VALUES ('2304', '梧州市', '23', '0');
INSERT INTO `dede_area` VALUES ('2305', '北海市', '23', '0');
INSERT INTO `dede_area` VALUES ('2306', '防城港市', '23', '0');
INSERT INTO `dede_area` VALUES ('2307', '钦州市', '23', '0');
INSERT INTO `dede_area` VALUES ('2308', '贵港市', '23', '0');
INSERT INTO `dede_area` VALUES ('2309', '玉林市', '23', '0');
INSERT INTO `dede_area` VALUES ('2310', '南宁地区', '23', '0');
INSERT INTO `dede_area` VALUES ('2311', '柳州地区', '23', '0');
INSERT INTO `dede_area` VALUES ('2312', '贺州地区', '23', '0');
INSERT INTO `dede_area` VALUES ('2313', '百色地区', '23', '0');
INSERT INTO `dede_area` VALUES ('2314', '河池地区', '23', '0');
INSERT INTO `dede_area` VALUES ('24', '海南省', '0', '0');
INSERT INTO `dede_area` VALUES ('2401', '海口市', '24', '0');
INSERT INTO `dede_area` VALUES ('2402', '三亚市', '24', '0');
INSERT INTO `dede_area` VALUES ('2403', '五指山市', '24', '0');
INSERT INTO `dede_area` VALUES ('2404', '琼海市', '24', '0');
INSERT INTO `dede_area` VALUES ('2405', '儋州市', '24', '0');
INSERT INTO `dede_area` VALUES ('2406', '琼山市', '24', '0');
INSERT INTO `dede_area` VALUES ('2407', '文昌市', '24', '0');
INSERT INTO `dede_area` VALUES ('2408', '万宁市', '24', '0');
INSERT INTO `dede_area` VALUES ('2409', '东方市', '24', '0');
INSERT INTO `dede_area` VALUES ('2410', '澄迈县', '24', '0');
INSERT INTO `dede_area` VALUES ('2411', '定安县', '24', '0');
INSERT INTO `dede_area` VALUES ('2412', '屯昌县', '24', '0');
INSERT INTO `dede_area` VALUES ('2413', '临高县', '24', '0');
INSERT INTO `dede_area` VALUES ('2414', '白沙县', '24', '0');
INSERT INTO `dede_area` VALUES ('2415', '昌江县', '24', '0');
INSERT INTO `dede_area` VALUES ('2416', '乐东县', '24', '0');
INSERT INTO `dede_area` VALUES ('2417', '陵水县', '24', '0');
INSERT INTO `dede_area` VALUES ('2418', '保亭县', '24', '0');
INSERT INTO `dede_area` VALUES ('2419', '琼中县', '24', '0');
INSERT INTO `dede_area` VALUES ('25', '云南省', '0', '0');
INSERT INTO `dede_area` VALUES ('2501', '昆明市', '25', '0');
INSERT INTO `dede_area` VALUES ('2502', '曲靖市', '25', '0');
INSERT INTO `dede_area` VALUES ('2503', '玉溪市', '25', '0');
INSERT INTO `dede_area` VALUES ('2504', '保山市', '25', '0');
INSERT INTO `dede_area` VALUES ('2505', '昭通市', '25', '0');
INSERT INTO `dede_area` VALUES ('2506', '思茅地区', '25', '0');
INSERT INTO `dede_area` VALUES ('2507', '临沧地区', '25', '0');
INSERT INTO `dede_area` VALUES ('2508', '丽江地区', '25', '0');
INSERT INTO `dede_area` VALUES ('2509', '文山州', '25', '0');
INSERT INTO `dede_area` VALUES ('2510', '红河州', '25', '0');
INSERT INTO `dede_area` VALUES ('2511', '西双版纳', '25', '0');
INSERT INTO `dede_area` VALUES ('2512', '楚雄州', '25', '0');
INSERT INTO `dede_area` VALUES ('2513', '大理州', '25', '0');
INSERT INTO `dede_area` VALUES ('2514', '德宏州', '25', '0');
INSERT INTO `dede_area` VALUES ('2515', '怒江州', '25', '0');
INSERT INTO `dede_area` VALUES ('2516', '迪庆州', '25', '0');
INSERT INTO `dede_area` VALUES ('26', '贵州省', '0', '0');
INSERT INTO `dede_area` VALUES ('2601', '贵阳市', '26', '0');
INSERT INTO `dede_area` VALUES ('2602', '六盘水市', '26', '0');
INSERT INTO `dede_area` VALUES ('2603', '遵义市', '26', '0');
INSERT INTO `dede_area` VALUES ('2604', '安顺市', '26', '0');
INSERT INTO `dede_area` VALUES ('2605', '铜仁地区', '26', '0');
INSERT INTO `dede_area` VALUES ('2606', '毕节地区', '26', '0');
INSERT INTO `dede_area` VALUES ('2607', '黔西南州', '26', '0');
INSERT INTO `dede_area` VALUES ('2608', '黔东南州', '26', '0');
INSERT INTO `dede_area` VALUES ('2609', '黔南州', '26', '0');
INSERT INTO `dede_area` VALUES ('27', '西藏区', '0', '0');
INSERT INTO `dede_area` VALUES ('2701', '拉萨市', '27', '0');
INSERT INTO `dede_area` VALUES ('2702', '那曲地区', '27', '0');
INSERT INTO `dede_area` VALUES ('2703', '昌都地区', '27', '0');
INSERT INTO `dede_area` VALUES ('2704', '山南地区', '27', '0');
INSERT INTO `dede_area` VALUES ('2705', '日喀则', '27', '0');
INSERT INTO `dede_area` VALUES ('2706', '阿里地区', '27', '0');
INSERT INTO `dede_area` VALUES ('2707', '林芝地区', '27', '0');
INSERT INTO `dede_area` VALUES ('28', '甘肃省', '0', '0');
INSERT INTO `dede_area` VALUES ('2801', '兰州市', '28', '0');
INSERT INTO `dede_area` VALUES ('2802', '金昌市', '28', '0');
INSERT INTO `dede_area` VALUES ('2803', '白银市', '28', '0');
INSERT INTO `dede_area` VALUES ('2804', '天水市', '28', '0');
INSERT INTO `dede_area` VALUES ('2805', '嘉峪关市', '28', '0');
INSERT INTO `dede_area` VALUES ('2806', '武威市', '28', '0');
INSERT INTO `dede_area` VALUES ('2807', '定西地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2808', '平凉地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2809', '庆阳地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2810', '陇南地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2811', '张掖地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2812', '酒泉地区', '28', '0');
INSERT INTO `dede_area` VALUES ('2813', '甘南州', '28', '0');
INSERT INTO `dede_area` VALUES ('2814', '临夏州', '28', '0');
INSERT INTO `dede_area` VALUES ('29', '宁夏区', '0', '0');
INSERT INTO `dede_area` VALUES ('2901', '银川市', '29', '0');
INSERT INTO `dede_area` VALUES ('2902', '石嘴山市', '29', '0');
INSERT INTO `dede_area` VALUES ('2903', '吴忠市', '29', '0');
INSERT INTO `dede_area` VALUES ('2904', '固原市', '29', '0');
INSERT INTO `dede_area` VALUES ('30', '青海省', '0', '0');
INSERT INTO `dede_area` VALUES ('3001', '西宁市', '30', '0');
INSERT INTO `dede_area` VALUES ('3002', '海东地区', '30', '0');
INSERT INTO `dede_area` VALUES ('3003', '海北州', '30', '0');
INSERT INTO `dede_area` VALUES ('3004', '黄南州', '30', '0');
INSERT INTO `dede_area` VALUES ('3005', '海南州', '30', '0');
INSERT INTO `dede_area` VALUES ('3006', '果洛州', '30', '0');
INSERT INTO `dede_area` VALUES ('3007', '玉树州', '30', '0');
INSERT INTO `dede_area` VALUES ('3008', '海西州', '30', '0');
INSERT INTO `dede_area` VALUES ('31', '新疆区', '0', '0');
INSERT INTO `dede_area` VALUES ('3101', '乌鲁木齐', '31', '0');
INSERT INTO `dede_area` VALUES ('3102', '克拉玛依', '31', '0');
INSERT INTO `dede_area` VALUES ('3103', '石河子市', '31', '0');
INSERT INTO `dede_area` VALUES ('3104', '吐鲁番', '31', '0');
INSERT INTO `dede_area` VALUES ('3105', '哈密地区', '31', '0');
INSERT INTO `dede_area` VALUES ('3106', '和田地区', '31', '0');
INSERT INTO `dede_area` VALUES ('3107', '阿克苏', '31', '0');
INSERT INTO `dede_area` VALUES ('3108', '喀什地区', '31', '0');
INSERT INTO `dede_area` VALUES ('3109', '克孜勒苏', '31', '0');
INSERT INTO `dede_area` VALUES ('3110', '巴音郭楞', '31', '0');
INSERT INTO `dede_area` VALUES ('3111', '昌吉州', '31', '0');
INSERT INTO `dede_area` VALUES ('3112', '博尔塔拉', '31', '0');
INSERT INTO `dede_area` VALUES ('3113', '伊犁州', '31', '0');
INSERT INTO `dede_area` VALUES ('3117', '东城区', '1', '0');
INSERT INTO `dede_area` VALUES ('32', '香港区', '0', '0');
INSERT INTO `dede_area` VALUES ('33', '澳门区', '0', '0');
INSERT INTO `dede_area` VALUES ('35', '台湾省', '0', '0');

-- ----------------------------
-- Table structure for dede_channeltype
-- ----------------------------
DROP TABLE IF EXISTS `dede_channeltype`;
CREATE TABLE `dede_channeltype` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `nid` varchar(20) NOT NULL DEFAULT '',
  `typename` varchar(30) NOT NULL DEFAULT '',
  `maintable` varchar(50) NOT NULL DEFAULT 'dede_archives',
  `addtable` varchar(50) NOT NULL DEFAULT '',
  `addcon` varchar(30) NOT NULL DEFAULT '',
  `mancon` varchar(30) NOT NULL DEFAULT '',
  `editcon` varchar(30) NOT NULL DEFAULT '',
  `useraddcon` varchar(30) NOT NULL DEFAULT '',
  `usermancon` varchar(30) NOT NULL DEFAULT '',
  `usereditcon` varchar(30) NOT NULL DEFAULT '',
  `fieldset` text,
  `listfields` text,
  `allfields` text,
  `issystem` smallint(6) NOT NULL DEFAULT '0',
  `isshow` smallint(6) NOT NULL DEFAULT '1',
  `issend` smallint(6) NOT NULL DEFAULT '0',
  `arcsta` smallint(6) NOT NULL DEFAULT '-1',
  `usertype` char(10) NOT NULL DEFAULT '',
  `sendrank` smallint(6) NOT NULL DEFAULT '10',
  `isdefault` smallint(6) NOT NULL DEFAULT '0',
  `needdes` tinyint(1) NOT NULL DEFAULT '1',
  `needpic` tinyint(1) NOT NULL DEFAULT '1',
  `titlename` varchar(20) NOT NULL DEFAULT '标题',
  `onlyone` smallint(6) NOT NULL DEFAULT '0',
  `dfcid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nid` (`nid`,`isshow`,`arcsta`,`sendrank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_channeltype
-- ----------------------------
INSERT INTO `dede_channeltype` VALUES ('1', 'article', '普通文章', 'dede_archives', 'dede_addonarticle', 'article_add.php', 'content_list.php', 'article_edit.php', 'article_add.php', 'content_list.php', 'article_edit.php', '<field:body itemname=\"文章内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n', '', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('2', 'image', '图片集', 'dede_archives', 'dede_addonimages', 'album_add.php', 'content_i_list.php', 'album_edit.php', 'album_add.php', 'content_list.php', 'album_edit.php', '<field:pagestyle itemname=\"页面风格\" type=\"number\" isnull=\"true\" default=\"2\" rename=\"\" notsend=\"1\" />	\n<field:imgurls itemname=\"图片集合\" type=\"img\" isnull=\"true\" default=\"\" rename=\"\" page=\"split\"/>	\n<field:body itemname=\"图集内容\" autofield=\"0\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\"></field:body>', '', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('3', 'soft', '软件', 'dede_archives', 'dede_addonsoft', 'soft_add.php', 'content_i_list.php', 'soft_edit.php', '', '', '', '<field:filetype islist=\"1\" itemname=\"文件类型\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:language islist=\"1\" itemname=\"语言\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softtype islist=\"1\" itemname=\"软件类型\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:accredit islist=\"1\" itemname=\"授权方式\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:os islist=\"1\" itemname=\"操作系统\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softrank  islist=\"1\" itemname=\"软件等级\" type=\"int\" isnull=\"true\" default=\"3\" rename=\"\" function=\"GetRankStar(@me)\" notsend=\"1\"/>	\n<field:officialUrl  itemname=\"官方网址\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:officialDemo itemname=\"演示网址\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softsize  itemname=\"软件大小\" type=\"text\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:softlinks  itemname=\"软件地址\" type=\"softlinks\" isnull=\"true\" default=\"\" rename=\"\" />	\n<field:introduce  itemname=\"详细介绍\" type=\"htmltext\" isnull=\"trnue\" default=\"\" rename=\"\" />	\n<field:daccess islist=\"1\" itemname=\"下载级别\" type=\"int\" isnull=\"true\" default=\"0\" rename=\"\" function=\"\" notsend=\"1\"/>	\n<field:needmoney islist=\"1\" itemname=\"需要金币\" type=\"int\" isnull=\"true\" default=\"0\" rename=\"\" function=\"\" notsend=\"1\" />', 'filetype,language,softtype,os,accredit,softrank', '', '1', '1', '1', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('-1', 'spec', '专题', 'dede_archives', 'dede_addonspec', 'spec_add.php', 'content_s_list.php', 'spec_edit.php', '', '', '', '<field:note type=\"specialtopic\" isnull=\"true\" default=\"\" rename=\"\"/>', '', '', '1', '1', '0', '-1', '', '10', '0', '1', '1', '标题', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('6', 'shop', '商品', 'dede_archives', 'dede_addonshop', 'archives_add.php', 'content_list.php', 'archives_edit.php', 'archives_add.php', 'content_list.php', 'archives_edit.php', '<field:body itemname=\"详细介绍\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"\" page=\"split\">	\n</field:body>	\n<field:price itemname=\"市场价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:price>	\n<field:trueprice itemname=\"优惠价\" autofield=\"1\" notsend=\"0\" type=\"float\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"\" page=\"\">	\n</field:trueprice>	\n<field:brand itemname=\"品牌\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:brand>	\n<field:units itemname=\"计量单位\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:units>	\n\n	\n\n<field:vocation itemname=\"行业\" autofield=\"1\" notsend=\"0\"type=\"stepselect\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:vocation>	\n\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:infotype>	\n\n<field:uptime itemname=\"上架时间\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:uptime>	\n', 'price,trueprice,brand,units', '', '0', '1', '1', '-1', '', '10', '0', '1', '1', '商品名称', '0', '0');
INSERT INTO `dede_channeltype` VALUES ('-8', 'infos', '分类信息', 'dede_archives', 'dede_addoninfos', 'archives_sg_add.php', 'content_sg_list.php', 'archives_sg_edit.php', 'archives_sg_add.php', 'content_sg_list.php', 'archives_sg_edit.php', '<field:channel itemname=\"频道id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:channel>	\n<field:arcrank itemname=\"浏览权限\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"5\" page=\"\"></field:arcrank>	\n<field:mid itemname=\"会员id\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:mid>	\n<field:click itemname=\"点击\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:click>	\n<field:title itemname=\"标题\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:title>	\n<field:senddate itemname=\"发布时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:senddate>	\n<field:flag itemname=\"推荐属性\" autofield=\"0\" notsend=\"0\" type=\"checkbox\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:flag>	\n<field:litpic itemname=\"缩略图\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"60\" page=\"\"></field:litpic>	\n<field:userip itemname=\"会员IP\" autofield=\"0\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"0\"  maxlength=\"15\" page=\"\"></field:userip>	\n<field:lastpost itemname=\"最后评论时间\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"10\" page=\"\"></field:lastpost>	\n<field:scores itemname=\"评论积分\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:scores>	\n<field:goodpost itemname=\"好评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:goodpost>	\n<field:badpost itemname=\"差评数\" autofield=\"0\" notsend=\"0\" type=\"int\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"8\" page=\"\"></field:badpost>	\n<field:nativeplace itemname=\"地区\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">	\n</field:nativeplace>	\n<field:infotype itemname=\"信息类型\" autofield=\"1\" notsend=\"0\" type=\"stepselect\" isnull=\"true\" islist=\"1\" default=\"0\"  maxlength=\"250\" page=\"\">	\n</field:infotype>	\n<field:body itemname=\"信息内容\" autofield=\"1\" notsend=\"0\" type=\"htmltext\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:body>	\n<field:endtime itemname=\"截止日期\" autofield=\"1\" notsend=\"0\" type=\"datetime\" isnull=\"true\" islist=\"1\" default=\"\"  maxlength=\"250\" page=\"\">	\n</field:endtime>	\n<field:linkman itemname=\"联系人\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">	\n</field:linkman>	\n<field:tel itemname=\"联系电话\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\" maxlength=\"50\" page=\"\">	\n</field:tel>	\n<field:email itemname=\"电子邮箱\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"50\" page=\"\">	\n</field:email>	\n<field:address itemname=\"地址\" autofield=\"1\" notsend=\"0\" type=\"text\" isnull=\"true\" islist=\"0\" default=\"\"  maxlength=\"100\" page=\"\">	\n</field:address>	\n', 'channel,arcrank,mid,click,title,senddate,flag,litpic,lastpost,scores,goodpost,badpost,nativeplace,infotype,endtime', '', '-1', '1', '1', '-1', '', '0', '0', '0', '1', '信息标题', '0', '0');

-- ----------------------------
-- Table structure for dede_co_htmls
-- ----------------------------
DROP TABLE IF EXISTS `dede_co_htmls`;
CREATE TABLE `dede_co_htmls` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `litpic` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `isdown` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isexport` tinyint(1) NOT NULL DEFAULT '0',
  `result` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `nid` (`nid`),
  KEY `typeid` (`typeid`,`title`,`url`,`dtime`,`isdown`,`isexport`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_co_htmls
-- ----------------------------

-- ----------------------------
-- Table structure for dede_co_mediaurls
-- ----------------------------
DROP TABLE IF EXISTS `dede_co_mediaurls`;
CREATE TABLE `dede_co_mediaurls` (
  `nid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hash` char(32) NOT NULL DEFAULT '',
  `tofile` char(60) NOT NULL DEFAULT '',
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_co_mediaurls
-- ----------------------------

-- ----------------------------
-- Table structure for dede_co_note
-- ----------------------------
DROP TABLE IF EXISTS `dede_co_note`;
CREATE TABLE `dede_co_note` (
  `nid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `channelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `notename` varchar(50) NOT NULL DEFAULT '',
  `sourcelang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `cotime` int(10) unsigned NOT NULL DEFAULT '0',
  `pnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `isok` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `usemore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listconfig` text,
  `itemconfig` text,
  PRIMARY KEY (`nid`),
  KEY `isok` (`isok`,`channelid`,`cotime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_co_note
-- ----------------------------

-- ----------------------------
-- Table structure for dede_co_onepage
-- ----------------------------
DROP TABLE IF EXISTS `dede_co_onepage`;
CREATE TABLE `dede_co_onepage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(60) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `issource` smallint(6) NOT NULL DEFAULT '1',
  `lang` varchar(10) NOT NULL DEFAULT 'gb2312',
  `rule` text,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_co_onepage
-- ----------------------------
INSERT INTO `dede_co_onepage` VALUES ('5', 'www.dedecms.com', '织梦网络', '1', 'gb2312', '<div class=\"content\">{@body}<div class=\"cupage\">');
INSERT INTO `dede_co_onepage` VALUES ('4', 'www.techweb.com.cn', 'Techweb', '1', 'gb2312', '<div class=\"content_txt\">{@body}</div>	\n');
INSERT INTO `dede_co_onepage` VALUES ('6', 'tw.news.yahoo.com', '台湾雅虎', '1', 'big5', '<div id=\"ynwsartcontent\">{@body}</div>	\n');

-- ----------------------------
-- Table structure for dede_co_urls
-- ----------------------------
DROP TABLE IF EXISTS `dede_co_urls`;
CREATE TABLE `dede_co_urls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL DEFAULT '',
  `nid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_co_urls
-- ----------------------------

-- ----------------------------
-- Table structure for dede_diyforms
-- ----------------------------
DROP TABLE IF EXISTS `dede_diyforms`;
CREATE TABLE `dede_diyforms` (
  `diyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `posttemplate` varchar(50) NOT NULL,
  `viewtemplate` varchar(50) NOT NULL,
  `listtemplate` varchar(50) NOT NULL,
  `table` varchar(50) NOT NULL DEFAULT '',
  `info` text,
  `public` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`diyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_diyforms
-- ----------------------------

-- ----------------------------
-- Table structure for dede_dl_log
-- ----------------------------
DROP TABLE IF EXISTS `dede_dl_log`;
CREATE TABLE `dede_dl_log` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(16) NOT NULL,
  `lang` char(6) NOT NULL,
  `dtype` varchar(10) NOT NULL,
  `dltime` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `dltime` (`dltime`),
  KEY `dl_ip` (`ip`,`dltime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_dl_log
-- ----------------------------

-- ----------------------------
-- Table structure for dede_downloads
-- ----------------------------
DROP TABLE IF EXISTS `dede_downloads`;
CREATE TABLE `dede_downloads` (
  `hash` char(32) NOT NULL,
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `downloads` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_downloads
-- ----------------------------

-- ----------------------------
-- Table structure for dede_erradd
-- ----------------------------
DROP TABLE IF EXISTS `dede_erradd`;
CREATE TABLE `dede_erradd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL,
  `mid` mediumint(8) unsigned DEFAULT NULL,
  `title` char(60) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `errtxt` mediumtext,
  `oktxt` mediumtext,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_erradd
-- ----------------------------

-- ----------------------------
-- Table structure for dede_feedback
-- ----------------------------
DROP TABLE IF EXISTS `dede_feedback`;
CREATE TABLE `dede_feedback` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL DEFAULT '',
  `arctitle` varchar(60) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bad` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `good` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ftype` set('feedback','good','bad') NOT NULL DEFAULT 'feedback',
  `face` smallint(5) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`,`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for dede_flink
-- ----------------------------
DROP TABLE IF EXISTS `dede_flink`;
CREATE TABLE `dede_flink` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sortrank` smallint(6) NOT NULL DEFAULT '0',
  `url` char(60) NOT NULL DEFAULT '',
  `webname` char(30) NOT NULL DEFAULT '',
  `msg` char(200) NOT NULL DEFAULT '',
  `email` char(50) NOT NULL DEFAULT '',
  `logo` char(60) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ischeck` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_flink
-- ----------------------------

-- ----------------------------
-- Table structure for dede_flinktype
-- ----------------------------
DROP TABLE IF EXISTS `dede_flinktype`;
CREATE TABLE `dede_flinktype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_flinktype
-- ----------------------------
INSERT INTO `dede_flinktype` VALUES ('1', '综合网站');
INSERT INTO `dede_flinktype` VALUES ('2', '娱乐类');
INSERT INTO `dede_flinktype` VALUES ('3', '教育类');
INSERT INTO `dede_flinktype` VALUES ('4', '计算机类');
INSERT INTO `dede_flinktype` VALUES ('5', '电子商务');
INSERT INTO `dede_flinktype` VALUES ('6', '网上信息');
INSERT INTO `dede_flinktype` VALUES ('7', '论坛类');
INSERT INTO `dede_flinktype` VALUES ('8', '其它类型');

-- ----------------------------
-- Table structure for dede_freelist
-- ----------------------------
DROP TABLE IF EXISTS `dede_freelist`;
CREATE TABLE `dede_freelist` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `namerule` varchar(50) NOT NULL DEFAULT '',
  `listdir` varchar(60) NOT NULL DEFAULT '',
  `defaultpage` varchar(20) NOT NULL DEFAULT '',
  `nodefault` smallint(6) NOT NULL DEFAULT '0',
  `templet` varchar(50) NOT NULL DEFAULT '',
  `edtime` int(11) NOT NULL DEFAULT '0',
  `maxpage` smallint(5) unsigned NOT NULL DEFAULT '100',
  `click` int(11) NOT NULL DEFAULT '1',
  `listtag` mediumtext,
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_freelist
-- ----------------------------
INSERT INTO `dede_freelist` VALUES ('1', '测试内容', '{listdir}/index_{listid}_{page}.html', '{cmspath}/freelist/', 'index.html', '1', '{style}/list_free.htm', '1289712633', '100', '0', '{dede:list  pagesize=\"30\" col=\"1\" titlelen=\"60\" orderby=\"pubdate\" orderway=\"desc\"  typeid=\"1\"  channel=\"1\" }<li>[field:imglink/] [field:textlink/] <span class=info><small>日期：</small>[field:pubdate function=\"getdatemk(@me)\"/] <small>点击：</small>[field:click/] <small>好评：</small>[field:scores/] </span>	\n<p class=intro>[field:description/]...</p></li>{/dede:list}', '阿三大厦大大', '阿三大厦大厦大撒');
INSERT INTO `dede_freelist` VALUES ('10', 'Google SiteMap 生成器', '{listdir}googlemap_{page}.xml', '{cmspath}', 'index.html', '1', '{style}/googlemap.htm', '1226884666', '100', '0', '{dede:list  pagesize=\"500\" col=\"1\" titlelen=\"60\" orderby=\"pubdate\" orderway=\"desc\" 	\n channel=\"1\"  keyword=\"\" }<url>	\n   <loc>[field:arcurl function=\"Gmapurl(@me)\"/]</loc> 	\n   <title>[field:title function=\"HtmlReplace(@me)\"/]</title>	\n   <news:news>	\n  <news:keywords>[field:keywords/]</news:keywords>	\n <news:publication_date>[field:senddate function=\"strftime(\"%Y-%m-%d\",@me)\"/]</news:publication_date>	\n </news:news>	\n</url>{/dede:list}', '', '');

-- ----------------------------
-- Table structure for dede_homepageset
-- ----------------------------
DROP TABLE IF EXISTS `dede_homepageset`;
CREATE TABLE `dede_homepageset` (
  `templet` char(50) NOT NULL DEFAULT '',
  `position` char(30) NOT NULL DEFAULT '',
  `showmod` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_homepageset
-- ----------------------------
INSERT INTO `dede_homepageset` VALUES ('lanrui/index.htm', '../index.html', '1');

-- ----------------------------
-- Table structure for dede_keywords
-- ----------------------------
DROP TABLE IF EXISTS `dede_keywords`;
CREATE TABLE `dede_keywords` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(16) NOT NULL DEFAULT '',
  `rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sta` smallint(6) NOT NULL DEFAULT '1',
  `rpurl` char(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `keyword` (`keyword`,`rank`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for dede_log
-- ----------------------------
DROP TABLE IF EXISTS `dede_log`;
CREATE TABLE `dede_log` (
  `lid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `adminid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `filename` char(60) NOT NULL DEFAULT '',
  `method` char(10) NOT NULL DEFAULT '',
  `query` char(200) NOT NULL DEFAULT '',
  `cip` char(15) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_log
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member
-- ----------------------------
DROP TABLE IF EXISTS `dede_member`;
CREATE TABLE `dede_member` (
  `mid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtype` varchar(20) NOT NULL DEFAULT '个人',
  `userid` char(20) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `uname` char(36) NOT NULL DEFAULT '',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '保密',
  `rank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `uptime` int(11) NOT NULL DEFAULT '0',
  `exptime` smallint(6) NOT NULL DEFAULT '0',
  `money` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` char(50) NOT NULL DEFAULT '',
  `scores` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `matt` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spacesta` smallint(6) NOT NULL DEFAULT '0',
  `face` char(50) NOT NULL DEFAULT '',
  `safequestion` smallint(5) unsigned NOT NULL DEFAULT '0',
  `safeanswer` char(30) NOT NULL DEFAULT '',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` char(16) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` char(16) NOT NULL DEFAULT '',
  `checkmail` smallint(6) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`mid`),
  KEY `userid` (`userid`,`sex`),
  KEY `logintime` (`logintime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member
-- ----------------------------
INSERT INTO `dede_member` VALUES ('1', '个人', 'admin', 'baa3ad6b98d91dc38304d8d4b09c8899', 'admin', '男', '100', '1500279677', '0', '0', '2261292935@qq.com', '10000', '10', '0', '', '0', '', '1499679986', '', '1517294863', '222.174.71.98', '-1');

-- ----------------------------
-- Table structure for dede_member_company
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_company`;
CREATE TABLE `dede_member_company` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `company` varchar(36) NOT NULL DEFAULT '',
  `product` varchar(50) NOT NULL DEFAULT '',
  `place` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vocation` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cosize` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tel` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `linkman` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `mobile` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `checked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `introduce` text,
  `comface` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_company
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_feed
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_feed`;
CREATE TABLE `dede_member_feed` (
  `fid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `userid` char(20) NOT NULL DEFAULT '',
  `uname` char(36) NOT NULL DEFAULT '',
  `type` char(20) CHARACTER SET gb2312 NOT NULL DEFAULT '0',
  `aid` mediumint(8) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `title` char(253) NOT NULL,
  `note` char(200) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL,
  PRIMARY KEY (`fid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_feed
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_flink
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_flink`;
CREATE TABLE `dede_member_flink` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_flink
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_friends
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_friends`;
CREATE TABLE `dede_member_friends` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `floginid` char(20) NOT NULL DEFAULT '',
  `funame` char(36) NOT NULL DEFAULT '',
  `mid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ftype` tinyint(4) NOT NULL DEFAULT '0',
  `groupid` int(8) NOT NULL DEFAULT '1',
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_friends
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_group
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_group`;
CREATE TABLE `dede_member_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL,
  `mid` int(8) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_group
-- ----------------------------
INSERT INTO `dede_member_group` VALUES ('1', '朋友', '0');

-- ----------------------------
-- Table structure for dede_member_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_guestbook`;
CREATE TABLE `dede_member_guestbook` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `gid` varchar(20) NOT NULL DEFAULT '0',
  `title` varchar(60) NOT NULL DEFAULT '',
  `uname` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `qq` varchar(50) NOT NULL DEFAULT '',
  `tel` varchar(50) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`aid`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_model
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_model`;
CREATE TABLE `dede_member_model` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `table` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `state` int(2) NOT NULL DEFAULT '0',
  `issystem` int(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_model
-- ----------------------------
INSERT INTO `dede_member_model` VALUES ('1', '个人', 'dede_member_person', '个人会员模型', '1', '1', '	\n<field:onlynet itemname=\"联系方式限制\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:onlynet>	\n	\n<field:sex itemname=\"性别\" autofield=\"1\" type=\"radio\" isnull=\"true\" default=\"男,女,保密\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:sex>	\n	\n<field:uname itemname=\"昵称/公司名称\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uname>	\n	\n<field:qq itemname=\"QQ\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"12\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:qq>	\n	\n<field:msn itemname=\"MSN\" autofield=\"1\" type=\"textchar\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:msn>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"15\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:place itemname=\"目前所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:place>	\n	\n	\n<field:oldplace itemname=\"家乡所在地\" autofield=\"1\" type=\"int\" default=\"0\"  maxlength=\"5\" issearch=\"0\" isshow=\"0\" state=\"1\">	\n</field:oldplace>	\n	\n	\n<field:birthday itemname=\"生日\" autofield=\"1\" type=\"datetime\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:birthday>	\n	\n<field:star itemname=\"星座\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"1\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:star>	\n	\n<field:income itemname=\"收入\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:income>	\n	\n<field:education itemname=\"学历\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:education>	\n	\n<field:height itemname=\"身高\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"160\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:height>	\n	\n<field:bodytype itemname=\"体重\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:bodytype>	\n	\n<field:blood itemname=\"血型\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:blood>	\n	\n<field:vocation itemname=\"职业\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:smoke itemname=\"吸烟\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:smoke>	\n	\n<field:marital itemname=\"婚姻状况\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:marital>	\n	\n<field:house itemname=\"住房\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:house>	\n	\n<field:drink itemname=\"饮酒\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:drink>	\n	\n<field:datingtype itemname=\"交友\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"6\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:datingtype>	\n	\n<field:language itemname=\"语言\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:language>	\n	\n	\n<field:nature itemname=\"性格\" autofield=\"1\" type=\"checkbox\" isnull=\"true\" default=\"性格外向,性格内向,活泼开朗,豪放不羁,患得患失,冲动,幽默,稳重,轻浮,沉默寡言,多愁善感,时喜时悲,附庸风雅,能说会道,坚强,脆弱,幼稚,成熟,快言快语,损人利己,狡猾善变,交际广泛,优柔寡断,自私,真诚,独立,依赖,难以琢磨,悲观消极,郁郁寡欢,胆小怕事,乐观向上,任性,自负,自卑,拜金,温柔体贴,小心翼翼,暴力倾向,逆来顺受,不拘小节,暴躁,倔强,豪爽,害羞,婆婆妈妈,敢做敢当,助人为乐,耿直,虚伪,孤僻,老实,守旧,敏感,迟钝,婆婆妈妈,武断,果断,刻薄\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:nature>	\n	\n<field:lovemsg itemname=\"人生格言\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"100\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:lovemsg>	\n	\n<field:address itemname=\"家庭住址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n');
INSERT INTO `dede_member_model` VALUES ('2', '企业', 'dede_member_company', '公司企业会员模型', '1', '1', '	\n<field:company itemname=\"公司名称\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"36\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:company>	\n	\n<field:product itemname=\"公司产品\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:product>	\n	\n<field:place itemname=\"所在地址\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:place>	\n	\n<field:vocation itemname=\"所属行业\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:vocation>	\n	\n<field:cosize itemname=\"公司规模\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"5\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:cosize>	\n	\n<field:tel itemname=\"电话号码\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:tel>	\n	\n<field:fax itemname=\"传真\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:fax>	\n	\n<field:linkman itemname=\"联系人\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"20\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:linkman>	\n	\n<field:address itemname=\"详细地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:address>	\n	\n<field:mobile itemname=\"手机\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"30\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:mobile>	\n	\n<field:email itemname=\"邮箱\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:email>	\n	\n<field:url itemname=\"地址\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"50\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:url>	\n	\n<field:uptime itemname=\"更新时间\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"10\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:uptime>	\n	\n<field:checked itemname=\"是否审核\" autofield=\"1\" type=\"int\" isnull=\"true\" default=\"0\"  maxlength=\"1\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:checked>	\n	\n<field:introduce itemname=\"公司简介\" autofield=\"1\" type=\"multitext\" isnull=\"true\" default=\"\"  maxlength=\"250\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:introduce>	\n	\n<field:comface itemname=\"公司标志\" autofield=\"1\" type=\"text\" isnull=\"true\" default=\"\"  maxlength=\"255\" issearch=\"\" isshow=\"\" state=\"1\">	\n</field:comface>	\n');

-- ----------------------------
-- Table structure for dede_member_msg
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_msg`;
CREATE TABLE `dede_member_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` char(20) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `ischeck` smallint(6) NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  PRIMARY KEY (`id`),
  KEY `id` (`ischeck`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_msg
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_operation
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_operation`;
CREATE TABLE `dede_member_operation` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `buyid` varchar(80) NOT NULL DEFAULT '',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `product` varchar(10) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `pid` int(11) NOT NULL DEFAULT '0',
  `mid` int(11) NOT NULL DEFAULT '0',
  `sta` int(11) NOT NULL DEFAULT '0',
  `oldinfo` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`aid`),
  KEY `buyid` (`buyid`),
  KEY `pid` (`pid`,`mid`,`sta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_operation
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_person
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_person`;
CREATE TABLE `dede_member_person` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `onlynet` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sex` enum('男','女','保密') NOT NULL DEFAULT '男',
  `uname` char(30) NOT NULL DEFAULT '',
  `qq` char(12) NOT NULL DEFAULT '',
  `msn` char(50) NOT NULL DEFAULT '',
  `tel` varchar(15) NOT NULL DEFAULT '',
  `mobile` varchar(15) NOT NULL DEFAULT '',
  `place` smallint(5) unsigned NOT NULL DEFAULT '0',
  `oldplace` smallint(5) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '1980-01-01',
  `star` smallint(6) unsigned NOT NULL DEFAULT '1',
  `income` smallint(6) NOT NULL DEFAULT '0',
  `education` smallint(6) NOT NULL DEFAULT '0',
  `height` smallint(5) unsigned NOT NULL DEFAULT '160',
  `bodytype` smallint(6) NOT NULL DEFAULT '0',
  `blood` smallint(6) NOT NULL DEFAULT '0',
  `vocation` smallint(6) NOT NULL DEFAULT '0',
  `smoke` smallint(6) NOT NULL DEFAULT '0',
  `marital` smallint(6) NOT NULL DEFAULT '0',
  `house` smallint(6) NOT NULL DEFAULT '0',
  `drink` smallint(6) NOT NULL DEFAULT '0',
  `datingtype` smallint(6) NOT NULL DEFAULT '0',
  `language` set('普通话','上海话','广东话','英语','日语','韩语','法语','意大利语','德语','西班牙语','俄语','阿拉伯语') DEFAULT NULL,
  `nature` set('性格外向','性格内向','活泼开朗','豪放不羁','患得患失','冲动','幽默','稳重','轻浮','沉默寡言','多愁善感','时喜时悲','附庸风雅','能说会道','坚强','脆弱','幼稚','成熟','快言快语','损人利己','狡猾善变','交际广泛','优柔寡断','自私','真诚','独立','依赖','难以琢磨','悲观消极','郁郁寡欢','胆小怕事','乐观向上','任性','自负','自卑','拜金','温柔体贴','小心翼翼','暴力倾向','逆来顺受','不拘小节','暴躁','倔强','豪爽','害羞','婆婆妈妈','敢做敢当','助人为乐','耿直','虚伪','孤僻','老实','守旧','敏感','迟钝','婆婆妈妈','武断','果断','刻薄') DEFAULT NULL,
  `lovemsg` varchar(100) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_person
-- ----------------------------
INSERT INTO `dede_member_person` VALUES ('1', '1', '男', 'admin', '', '', '', '', '0', '0', '1980-01-01', '1', '0', '0', '160', '0', '0', '0', '0', '0', '0', '0', '0', '', '', '', '', '0');

-- ----------------------------
-- Table structure for dede_member_pms
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_pms`;
CREATE TABLE `dede_member_pms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `floginid` varchar(20) NOT NULL DEFAULT '',
  `fromid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `toid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tologinid` char(20) NOT NULL DEFAULT '',
  `folder` enum('inbox','outbox') DEFAULT 'inbox',
  `subject` varchar(60) NOT NULL DEFAULT '',
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `writetime` int(10) unsigned NOT NULL DEFAULT '0',
  `hasview` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `message` text,
  PRIMARY KEY (`id`),
  KEY `sendtime` (`sendtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_pms
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_snsmsg
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_snsmsg`;
CREATE TABLE `dede_member_snsmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(20) NOT NULL,
  `sendtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_snsmsg
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_space
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_space`;
CREATE TABLE `dede_member_space` (
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pagesize` smallint(5) unsigned NOT NULL DEFAULT '10',
  `matt` smallint(6) NOT NULL DEFAULT '0',
  `spacename` varchar(50) NOT NULL DEFAULT '',
  `spacelogo` varchar(50) NOT NULL DEFAULT '',
  `spacestyle` varchar(20) NOT NULL DEFAULT '',
  `sign` varchar(100) NOT NULL DEFAULT '没签名',
  `spacenews` text,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_space
-- ----------------------------
INSERT INTO `dede_member_space` VALUES ('1', '10', '0', 'admin的空间', '', 'person', '', '');

-- ----------------------------
-- Table structure for dede_member_stow
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_stow`;
CREATE TABLE `dede_member_stow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_stow
-- ----------------------------

-- ----------------------------
-- Table structure for dede_member_stowtype
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_stowtype`;
CREATE TABLE `dede_member_stowtype` (
  `stowname` varchar(30) NOT NULL,
  `indexname` varchar(30) NOT NULL,
  `indexurl` varchar(50) NOT NULL,
  PRIMARY KEY (`stowname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_stowtype
-- ----------------------------
INSERT INTO `dede_member_stowtype` VALUES ('sys', '系统收藏', 'archives_do.php');
INSERT INTO `dede_member_stowtype` VALUES ('book', '小说收藏', '/book/book.php?bid');

-- ----------------------------
-- Table structure for dede_member_tj
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_tj`;
CREATE TABLE `dede_member_tj` (
  `mid` mediumint(8) NOT NULL AUTO_INCREMENT,
  `article` smallint(5) unsigned NOT NULL DEFAULT '0',
  `album` smallint(5) unsigned NOT NULL DEFAULT '0',
  `archives` smallint(5) unsigned NOT NULL DEFAULT '0',
  `homecount` int(10) unsigned NOT NULL DEFAULT '0',
  `pagecount` int(10) unsigned NOT NULL DEFAULT '0',
  `feedback` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` smallint(5) unsigned NOT NULL DEFAULT '0',
  `stow` smallint(5) unsigned NOT NULL DEFAULT '0',
  `soft` int(10) NOT NULL DEFAULT '0',
  `info` int(10) NOT NULL DEFAULT '0',
  `shop` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_tj
-- ----------------------------
INSERT INTO `dede_member_tj` VALUES ('1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for dede_member_type
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_type`;
CREATE TABLE `dede_member_type` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) NOT NULL DEFAULT '0',
  `pname` varchar(50) NOT NULL DEFAULT '',
  `money` int(11) NOT NULL DEFAULT '0',
  `exptime` int(11) NOT NULL DEFAULT '30',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_type
-- ----------------------------
INSERT INTO `dede_member_type` VALUES ('1', '50', '中级会员半年', '100', '7');

-- ----------------------------
-- Table structure for dede_member_vhistory
-- ----------------------------
DROP TABLE IF EXISTS `dede_member_vhistory`;
CREATE TABLE `dede_member_vhistory` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `loginid` char(20) NOT NULL DEFAULT '',
  `vid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vloginid` char(20) NOT NULL DEFAULT '',
  `count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `vip` char(15) NOT NULL DEFAULT '',
  `vtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `vtime` (`vtime`),
  KEY `mid` (`mid`,`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_member_vhistory
-- ----------------------------

-- ----------------------------
-- Table structure for dede_moneycard_record
-- ----------------------------
DROP TABLE IF EXISTS `dede_moneycard_record`;
CREATE TABLE `dede_moneycard_record` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `ctid` int(11) NOT NULL DEFAULT '0',
  `cardid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `isexp` smallint(6) NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `utime` int(11) NOT NULL DEFAULT '0',
  `money` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `ctid` (`ctid`),
  KEY `cardid` (`cardid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_moneycard_record
-- ----------------------------

-- ----------------------------
-- Table structure for dede_moneycard_type
-- ----------------------------
DROP TABLE IF EXISTS `dede_moneycard_type`;
CREATE TABLE `dede_moneycard_type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) NOT NULL DEFAULT '500',
  `money` int(11) NOT NULL DEFAULT '50',
  `pname` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_moneycard_type
-- ----------------------------
INSERT INTO `dede_moneycard_type` VALUES ('1', '100', '30', '100点卡');
INSERT INTO `dede_moneycard_type` VALUES ('2', '200', '55', '200点卡');
INSERT INTO `dede_moneycard_type` VALUES ('3', '300', '75', '300点卡');

-- ----------------------------
-- Table structure for dede_mtypes
-- ----------------------------
DROP TABLE IF EXISTS `dede_mtypes`;
CREATE TABLE `dede_mtypes` (
  `mtypeid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `mtypename` char(40) NOT NULL,
  `channelid` smallint(6) NOT NULL DEFAULT '1',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mtypeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_mtypes
-- ----------------------------

-- ----------------------------
-- Table structure for dede_multiserv_config
-- ----------------------------
DROP TABLE IF EXISTS `dede_multiserv_config`;
CREATE TABLE `dede_multiserv_config` (
  `remoteuploads` smallint(6) NOT NULL DEFAULT '0',
  `remoteupUrl` text NOT NULL,
  `rminfo` text,
  `servinfo` mediumtext,
  PRIMARY KEY (`remoteuploads`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_multiserv_config
-- ----------------------------
INSERT INTO `dede_multiserv_config` VALUES ('0', 'http://img.dedecms.com', '', '');

-- ----------------------------
-- Table structure for dede_myad
-- ----------------------------
DROP TABLE IF EXISTS `dede_myad`;
CREATE TABLE `dede_myad` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `clsid` smallint(5) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `adname` varchar(60) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_myad
-- ----------------------------

-- ----------------------------
-- Table structure for dede_myadtype
-- ----------------------------
DROP TABLE IF EXISTS `dede_myadtype`;
CREATE TABLE `dede_myadtype` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typename` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_myadtype
-- ----------------------------

-- ----------------------------
-- Table structure for dede_mytag
-- ----------------------------
DROP TABLE IF EXISTS `dede_mytag`;
CREATE TABLE `dede_mytag` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tagname` varchar(30) NOT NULL DEFAULT '',
  `timeset` smallint(6) NOT NULL DEFAULT '0',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `normbody` text,
  `expbody` text,
  PRIMARY KEY (`aid`),
  KEY `tagname` (`tagname`,`typeid`,`timeset`,`endtime`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_mytag
-- ----------------------------

-- ----------------------------
-- Table structure for dede_payment
-- ----------------------------
DROP TABLE IF EXISTS `dede_payment`;
CREATE TABLE `dede_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(120) NOT NULL DEFAULT '',
  `fee` varchar(10) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_payment
-- ----------------------------
INSERT INTO `dede_payment` VALUES ('3', 'alipay', '支付宝', '2', '支付宝网站(www.alipay.com) 是国内先进的网上支付平台。<br/>DedeCMS联合支付宝推出支付宝接口。<br/><a href=\"https://www.alipay.com/himalayas/practicality_customer.htm?customer_external_id=C4335994340215837114&market_type=from_agent_contract&pro_codes=6ACD133C5F350958F7F62F29651356BB \" target=\"_blank\"><font color=\"red\">立即在线申请</font></a>', '1', 'a:4:{s:14:\"alipay_account\";a:4:{s:5:\"title\";s:14:\"支付宝用户账号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:20:\"yuan12345xin@163.com\";}s:10:\"alipay_key\";a:4:{s:5:\"title\";s:14:\"交易安全校验码\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:6:\"dsfsdf\";}s:14:\"alipay_partner\";a:4:{s:5:\"title\";s:12:\"合作者身份ID\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:1:\"1\";}s:17:\"alipay_pay_method\";a:5:{s:5:\"title\";s:14:\"支付宝账号类型\";s:11:\"description\";s:52:\"请选择您最后一次跟支付宝签订的协议里面说明的接口类型\";s:4:\"type\";s:6:\"select\";s:5:\"iterm\";s:58:\"0:使用标准双接口,1:使用担保交易接口,2:使用即时到帐交易接口\";s:5:\"value\";s:1:\"1\";}}', '1', '0', '1');
INSERT INTO `dede_payment` VALUES ('2', 'bank', '银行汇款/转帐', '0', '银行名称	\n收款人信息：全称 ××× ；帐号或地址 ××× ；开户行 ×××。	\n注意事项：办理电汇时，请在电汇单“汇款用途”一栏处注明您的订单号。', '4', 'a:0:{}', '1', '1', '0');
INSERT INTO `dede_payment` VALUES ('1', 'cod', '货到付款', '0', '开通城市：×××	\n货到付款区域：×××', '3', 'a:0:{}', '1', '1', '0');
INSERT INTO `dede_payment` VALUES ('6', 'yeepay', 'YeePay易宝', '12', 'YeePay易宝（北京通融通信息技术有限公司）是专业从事多元化电子支付业务一站式服务的领跑者。在立足于网上支付的同时，YeePay易宝不断创新，将互联网、手机、固定电话整合在一个平台上，继短信支付、手机充值之后，首家推出了YeePay易宝电话支付业务，真正实现了离线支付，为更多传统行业搭建了电子支付的高速公路。YeePay易宝融合世界先进的电子支付文化，聚合众多金融、电信、IT、互联网等领域内的巨擘，旨在通过创新的支付机制，推动中国电子商务新进程。YeePay易宝致力于成为世界一流的电子支付应用和服务提供商，专注于金融增值服务和移动增值服务两大领域，创新并推广多元化、低成本的、安全有效的支付服务。<input type=\"button\" name=\"Submit\" value=\"立即注册\" onclick=\"window.open(\"https://www.yeepay.com/selfservice/requestRegister.action\")\" />', '2', 'a:2:{s:10:\"yp_account\";a:4:{s:5:\"title\";s:8:\"商户编号\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:2:\"aa\";}s:6:\"yp_key\";a:4:{s:5:\"title\";s:8:\"商户密钥\";s:11:\"description\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:5:\"value\";s:3:\"dsa\";}}', '1', '0', '1');

-- ----------------------------
-- Table structure for dede_plus
-- ----------------------------
DROP TABLE IF EXISTS `dede_plus`;
CREATE TABLE `dede_plus` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `plusname` varchar(30) NOT NULL DEFAULT '',
  `menustring` varchar(200) NOT NULL DEFAULT '',
  `mainurl` varchar(50) NOT NULL DEFAULT '',
  `writer` varchar(30) NOT NULL DEFAULT '',
  `isshow` smallint(6) NOT NULL DEFAULT '1',
  `filelist` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_plus
-- ----------------------------
INSERT INTO `dede_plus` VALUES ('27', '友情链接模块', '<m:item name=\'友情链接\' link=\'friendlink_main.php\' rank=\'plus_友情链接\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `dede_plus` VALUES ('24', '文件管理器', '<m:item name=\'文件管理器\' link=\'file_manage_main.php\' rank=\'plus_文件管理器\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `dede_plus` VALUES ('23', '百度新闻', '<m:item name=\'百度新闻\' link=\'baidunews.php\' rank=\'plus_百度新闻\' target=\'main\' />', '', '织梦团队', '1', 'baidunews.php');
INSERT INTO `dede_plus` VALUES ('28', '投票模块', '<m:item name=\'投票模块\' link=\'vote_main.php\' rank=\'plus_投票模块\' target=\'main\' />', '', '织梦团队', '1', '');
INSERT INTO `dede_plus` VALUES ('25', '广告管理', '<m:item name=\'广告管理\' link=\'ad_main.php\' rank=\'plus_广告管理\' target=\'main\' />', '', '织梦官方', '1', '');
INSERT INTO `dede_plus` VALUES ('10', '挑错管理', '<m:item name=\'挑错管理\' link=\'erraddsave.php\' rank=\'plus_挑错管理\' target=\'main\' />', '', '织梦团队', '1', '<m:item name=\'挑错管理\' link=\'catalog_do.php?dopost=erraddsave.php\' rank=\'plus_挑错管理\' target=\'main\' />');

-- ----------------------------
-- Table structure for dede_plus_mda_setting
-- ----------------------------
DROP TABLE IF EXISTS `dede_plus_mda_setting`;
CREATE TABLE `dede_plus_mda_setting` (
  `skey` varchar(255) NOT NULL DEFAULT '',
  `svalue` text NOT NULL,
  `stime` int(10) NOT NULL,
  PRIMARY KEY (`skey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_plus_mda_setting
-- ----------------------------
INSERT INTO `dede_plus_mda_setting` VALUES ('version', '0.0.1', '0');
INSERT INTO `dede_plus_mda_setting` VALUES ('channel_uuid', '', '0');
INSERT INTO `dede_plus_mda_setting` VALUES ('channel_secret', '', '0');
INSERT INTO `dede_plus_mda_setting` VALUES ('email', '', '0');

-- ----------------------------
-- Table structure for dede_plus_seoinfo
-- ----------------------------
DROP TABLE IF EXISTS `dede_plus_seoinfo`;
CREATE TABLE `dede_plus_seoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` int(11) DEFAULT NULL,
  `alexa_num` varchar(50) DEFAULT NULL,
  `alexa_area_num` varchar(50) DEFAULT NULL,
  `baidu_count` varchar(50) DEFAULT NULL,
  `sogou_count` varchar(50) DEFAULT NULL,
  `haosou360_count` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_plus_seoinfo
-- ----------------------------
INSERT INTO `dede_plus_seoinfo` VALUES ('1', '1499679997', '0', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('2', '1499753534', '0', '0', '0', '0', '0');
INSERT INTO `dede_plus_seoinfo` VALUES ('3', '1499841854', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for dede_purview
-- ----------------------------
DROP TABLE IF EXISTS `dede_purview`;
CREATE TABLE `dede_purview` (
  `mid` mediumint(8) DEFAULT '0',
  `typeid` smallint(5) DEFAULT '0',
  `rank` smallint(6) DEFAULT NULL,
  `pkey` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pvalue` text NOT NULL,
  KEY `pkey` (`pkey`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_purview
-- ----------------------------

-- ----------------------------
-- Table structure for dede_pwd_tmp
-- ----------------------------
DROP TABLE IF EXISTS `dede_pwd_tmp`;
CREATE TABLE `dede_pwd_tmp` (
  `mid` mediumint(8) NOT NULL,
  `membername` char(16) NOT NULL DEFAULT '',
  `pwd` char(32) NOT NULL DEFAULT '',
  `mailtime` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_pwd_tmp
-- ----------------------------

-- ----------------------------
-- Table structure for dede_ratings
-- ----------------------------
DROP TABLE IF EXISTS `dede_ratings`;
CREATE TABLE `dede_ratings` (
  `id` varchar(11) NOT NULL,
  `total_votes` int(11) NOT NULL DEFAULT '0',
  `total_value` int(11) NOT NULL DEFAULT '0',
  `used_ips` longtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_ratings
-- ----------------------------

-- ----------------------------
-- Table structure for dede_scores
-- ----------------------------
DROP TABLE IF EXISTS `dede_scores`;
CREATE TABLE `dede_scores` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `titles` char(15) NOT NULL,
  `icon` smallint(6) unsigned DEFAULT '0',
  `integral` int(10) NOT NULL DEFAULT '0',
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `integral` (`integral`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_scores
-- ----------------------------
INSERT INTO `dede_scores` VALUES ('2', '列兵', '1', '0', '1');
INSERT INTO `dede_scores` VALUES ('3', '班长', '2', '1000', '1');
INSERT INTO `dede_scores` VALUES ('4', '少尉', '3', '2000', '1');
INSERT INTO `dede_scores` VALUES ('5', '中尉', '4', '3000', '1');
INSERT INTO `dede_scores` VALUES ('6', '上尉', '5', '4000', '1');
INSERT INTO `dede_scores` VALUES ('7', '少校', '6', '5000', '1');
INSERT INTO `dede_scores` VALUES ('8', '中校', '7', '6000', '1');
INSERT INTO `dede_scores` VALUES ('9', '上校', '8', '9000', '1');
INSERT INTO `dede_scores` VALUES ('10', '少将', '9', '14000', '1');
INSERT INTO `dede_scores` VALUES ('11', '中将', '10', '19000', '1');
INSERT INTO `dede_scores` VALUES ('12', '上将', '11', '24000', '1');
INSERT INTO `dede_scores` VALUES ('15', '大将', '12', '29000', '1');

-- ----------------------------
-- Table structure for dede_search_cache
-- ----------------------------
DROP TABLE IF EXISTS `dede_search_cache`;
CREATE TABLE `dede_search_cache` (
  `hash` char(32) NOT NULL,
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `rsnum` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ids` mediumtext,
  PRIMARY KEY (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_search_cache
-- ----------------------------

-- ----------------------------
-- Table structure for dede_search_keywords
-- ----------------------------
DROP TABLE IF EXISTS `dede_search_keywords`;
CREATE TABLE `dede_search_keywords` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL DEFAULT '',
  `spwords` char(50) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `result` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  `channelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_search_keywords
-- ----------------------------

-- ----------------------------
-- Table structure for dede_sgpage
-- ----------------------------
DROP TABLE IF EXISTS `dede_sgpage`;
CREATE TABLE `dede_sgpage` (
  `aid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '',
  `ismake` smallint(6) NOT NULL DEFAULT '1',
  `filename` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(30) NOT NULL DEFAULT '',
  `template` varchar(30) NOT NULL DEFAULT '',
  `likeid` varchar(20) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext,
  PRIMARY KEY (`aid`),
  KEY `ismake` (`ismake`,`uptime`),
  KEY `likeid` (`likeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sgpage
-- ----------------------------

-- ----------------------------
-- Table structure for dede_shops_delivery
-- ----------------------------
DROP TABLE IF EXISTS `dede_shops_delivery`;
CREATE TABLE `dede_shops_delivery` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dname` char(80) NOT NULL,
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `des` char(255) DEFAULT NULL,
  `orders` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`),
  KEY `orders` (`orders`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_shops_delivery
-- ----------------------------
INSERT INTO `dede_shops_delivery` VALUES ('1', '送货上门', '10.21', '送货上门,领取商品时付费.', '0');
INSERT INTO `dede_shops_delivery` VALUES ('2', '特快专递（EMS）', '25.00', '特快专递（EMS）,要另收手续费.', '0');
INSERT INTO `dede_shops_delivery` VALUES ('3', '普通邮递', '5.00', '普通邮递', '0');
INSERT INTO `dede_shops_delivery` VALUES ('4', '邮局快邮', '12.00', '邮局快邮', '0');

-- ----------------------------
-- Table structure for dede_shops_orders
-- ----------------------------
DROP TABLE IF EXISTS `dede_shops_orders`;
CREATE TABLE `dede_shops_orders` (
  `oid` varchar(80) NOT NULL,
  `userid` int(10) NOT NULL,
  `pid` int(10) NOT NULL DEFAULT '0',
  `paytype` tinyint(2) NOT NULL DEFAULT '1',
  `cartcount` int(10) NOT NULL DEFAULT '0',
  `dprice` float(13,2) NOT NULL DEFAULT '0.00',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `priceCount` float(13,2) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `stime` int(10) NOT NULL DEFAULT '0',
  KEY `stime` (`stime`),
  KEY `userid` (`userid`),
  KEY `oid` (`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_shops_orders
-- ----------------------------

-- ----------------------------
-- Table structure for dede_shops_products
-- ----------------------------
DROP TABLE IF EXISTS `dede_shops_products`;
CREATE TABLE `dede_shops_products` (
  `aid` mediumint(8) NOT NULL DEFAULT '0',
  `oid` varchar(80) NOT NULL DEFAULT '',
  `userid` int(10) NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `price` float(13,2) NOT NULL DEFAULT '0.00',
  `buynum` int(10) NOT NULL DEFAULT '9',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_shops_products
-- ----------------------------

-- ----------------------------
-- Table structure for dede_shops_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `dede_shops_userinfo`;
CREATE TABLE `dede_shops_userinfo` (
  `userid` int(10) NOT NULL,
  `oid` varchar(80) NOT NULL DEFAULT '',
  `consignee` char(15) NOT NULL DEFAULT '',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zip` int(10) NOT NULL DEFAULT '0',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `des` varchar(255) NOT NULL DEFAULT '',
  KEY `oid` (`oid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_shops_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for dede_softconfig
-- ----------------------------
DROP TABLE IF EXISTS `dede_softconfig`;
CREATE TABLE `dede_softconfig` (
  `downtype` smallint(6) NOT NULL DEFAULT '0',
  `ismoresite` smallint(6) NOT NULL DEFAULT '0',
  `gotojump` smallint(6) NOT NULL DEFAULT '0',
  `islocal` smallint(5) unsigned NOT NULL DEFAULT '1',
  `sites` text,
  `downmsg` text,
  `moresitedo` smallint(5) unsigned NOT NULL DEFAULT '1',
  `dfrank` smallint(5) unsigned NOT NULL DEFAULT '0',
  `dfywboy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `argrange` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`downtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_softconfig
-- ----------------------------
INSERT INTO `dede_softconfig` VALUES ('0', '1', '1', '1', 'http://www.aaa.com | 镜像地址一	\nhttp://www.bbb.com | 镜像地址二	\nhttp://www.ccc.com | 镜像地址三	\n', '<p>?推荐使用第三方专业下载工具下载本站软件，使用 WinRAR v3.10 以上版本解压本站软件。<br />	\n?如果这个软件总是不能下载的请点击报告错误,谢谢合作!!<br />	\n?下载本站资源，如果服务器暂不能下载请过一段时间重试！<br />	\n?如果遇到什么问题，请到本站论坛去咨寻，我们将在那里提供更多 、更好的资源！<br />	\n?本站提供的一些商业软件是供学习研究之用，如用于商业用途，请购买正版。</p>', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for dede_sphinx
-- ----------------------------
DROP TABLE IF EXISTS `dede_sphinx`;
CREATE TABLE `dede_sphinx` (
  `countid` int(11) unsigned NOT NULL,
  `maxaid` int(11) unsigned NOT NULL,
  PRIMARY KEY (`countid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sphinx
-- ----------------------------

-- ----------------------------
-- Table structure for dede_stepselect
-- ----------------------------
DROP TABLE IF EXISTS `dede_stepselect`;
CREATE TABLE `dede_stepselect` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `itemname` char(30) DEFAULT NULL,
  `egroup` char(20) DEFAULT NULL,
  `issign` tinyint(1) unsigned DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_stepselect
-- ----------------------------
INSERT INTO `dede_stepselect` VALUES ('1', '血型', 'blood', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('2', '体型', 'bodytype', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('3', '公司规模', 'cosize', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('4', '交友', 'datingtype', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('5', '是否饮酒', 'drink', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('6', '教育程度', 'education', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('7', '住房', 'house', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('8', '收入', 'income', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('9', '婚姻', 'marital', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('10', '是否抽烟', 'smoke', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('11', '星座', 'star', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('12', '系统缓存标识', 'system', '1', '1');
INSERT INTO `dede_stepselect` VALUES ('13', '行业', 'vocation', '2', '0');
INSERT INTO `dede_stepselect` VALUES ('14', '地区', 'nativeplace', '2', '0');
INSERT INTO `dede_stepselect` VALUES ('15', '信息类型', 'infotype', '2', '0');

-- ----------------------------
-- Table structure for dede_sys_enum
-- ----------------------------
DROP TABLE IF EXISTS `dede_sys_enum`;
CREATE TABLE `dede_sys_enum` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `ename` char(30) NOT NULL DEFAULT '',
  `evalue` char(20) NOT NULL DEFAULT '0',
  `egroup` char(20) NOT NULL DEFAULT '',
  `disorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `issign` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20020 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sys_enum
-- ----------------------------
INSERT INTO `dede_sys_enum` VALUES ('139', 'cms制作', '503', 'vocation', '503', '0');
INSERT INTO `dede_sys_enum` VALUES ('39', '租房', '1', 'house', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('40', '一房以上', '2', 'house', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('41', '两房以上', '3', 'house', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('42', '大户/别墅', '4', 'house', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('43', '低于1000元', '1', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('44', '1000元以上', '2', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('45', '2000元以上', '3', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('46', '4000元以上', '4', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('47', '8000元以上', '5', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('48', '15000以上', '6', 'income', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('49', '初中以上', '1', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('50', '高中/中专', '2', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('51', '大学专科', '3', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('52', '大学本科', '4', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('53', '硕士', '5', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('54', '博士以上', '6', 'education', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('55', '仅用于判断缓存是否存在', '0', 'system', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('56', '白羊座', '1', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('57', '金牛座', '2', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('58', '双子座', '3', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('59', '巨蟹座', '4', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('60', '狮子座', '5', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('61', '处女座', '6', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('62', '天枰座', '7', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('63', '天蝎座', '8', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('64', '射手座', '9', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('65', '摩羯座', '10', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('66', '水瓶座', '11', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('67', '双鱼座', '12', 'star', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('68', '不吸烟', '1', 'smoke', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('69', '偶尔吸一点', '2', 'smoke', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('70', '抽得很凶', '3', 'smoke', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('71', '不喝酒', '1', 'drink', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('72', '偶尔喝一点', '2', 'drink', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('73', '喝得很凶', '3', 'drink', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('74', 'A', '1', 'blood', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('75', 'B', '2', 'blood', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('76', 'AB', '3', 'blood', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('77', 'O', '4', 'blood', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('78', '未婚', '1', 'marital', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('79', '已婚', '2', 'marital', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('80', '离异', '3', 'marital', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('81', '丧偶', '4', 'marital', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('82', '匀称', '1', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('83', '苗条', '2', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('84', '健壮', '3', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('85', '略胖', '4', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('86', '丰满', '5', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('87', '瘦小', '6', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('88', '高瘦', '7', 'bodytype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('89', '网友', '1', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('90', '恋人', '2', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('91', '玩伴', '3', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('92', '共同兴趣', '4', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('93', '男性朋友', '5', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('94', '女性朋友', '6', 'datingtype', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('95', '50人以下', '1', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('96', '50-200人', '2', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('97', '200-500人', '3', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('98', '500-2000人', '4', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('99', '2000-5000人', '5', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('100', '5000人以上', '6', 'cosize', '0', '1');
INSERT INTO `dede_sys_enum` VALUES ('20019', '澳门特别行政区', '17500', 'nativeplace', '17500', '0');
INSERT INTO `dede_sys_enum` VALUES ('20018', '香港特别行政区', '17000', 'nativeplace', '17000', '0');
INSERT INTO `dede_sys_enum` VALUES ('20017', '台湾省', '16500', 'nativeplace', '16500', '0');
INSERT INTO `dede_sys_enum` VALUES ('20016', '图木舒克市', '16015.3', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20015', '阿拉尔市', '16015.2', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20014', '石河子市', '16015.1', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20013', '省直辖行政单位', '16015', 'nativeplace', '16015', '1');
INSERT INTO `dede_sys_enum` VALUES ('20012', '吉木乃县', '16014.7', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20011', '青河县', '16014.6', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('111', '商品', '500', 'infotype', '500', '0');
INSERT INTO `dede_sys_enum` VALUES ('112', '租房', '1000', 'infotype', '1000', '0');
INSERT INTO `dede_sys_enum` VALUES ('113', '交友', '1500', 'infotype', '1500', '0');
INSERT INTO `dede_sys_enum` VALUES ('114', '招聘', '2000', 'infotype', '2000', '0');
INSERT INTO `dede_sys_enum` VALUES ('115', '求职', '2500', 'infotype', '2500', '0');
INSERT INTO `dede_sys_enum` VALUES ('116', '票务', '3000', 'infotype', '3000', '0');
INSERT INTO `dede_sys_enum` VALUES ('117', '服务', '3500', 'infotype', '3500', '0');
INSERT INTO `dede_sys_enum` VALUES ('118', '培训', '4000', 'infotype', '4000', '0');
INSERT INTO `dede_sys_enum` VALUES ('119', '出售', '501', 'infotype', '501', '1');
INSERT INTO `dede_sys_enum` VALUES ('121', '求购', '502', 'infotype', '502', '1');
INSERT INTO `dede_sys_enum` VALUES ('122', '交换', '503', 'infotype', '503', '1');
INSERT INTO `dede_sys_enum` VALUES ('123', '合作', '504', 'infotype', '504', '1');
INSERT INTO `dede_sys_enum` VALUES ('124', '出租', '1001', 'infotype', '1001', '1');
INSERT INTO `dede_sys_enum` VALUES ('125', '求租', '1002', 'infotype', '1002', '1');
INSERT INTO `dede_sys_enum` VALUES ('126', '合租', '1003', 'infotype', '1003', '1');
INSERT INTO `dede_sys_enum` VALUES ('127', '找帅哥', '1501', 'infotype', '1501', '1');
INSERT INTO `dede_sys_enum` VALUES ('128', '找美女', '1502', 'infotype', '1502', '1');
INSERT INTO `dede_sys_enum` VALUES ('129', '纯友谊', '1503', 'infotype', '1503', '1');
INSERT INTO `dede_sys_enum` VALUES ('130', '玩伴', '1504', 'infotype', '1504', '1');
INSERT INTO `dede_sys_enum` VALUES ('131', '互联网', '500', 'vocation', '500', '0');
INSERT INTO `dede_sys_enum` VALUES ('132', '网站制作', '501', 'vocation', '501', '0');
INSERT INTO `dede_sys_enum` VALUES ('133', '机械', '1000', 'vocation', '1000', '0');
INSERT INTO `dede_sys_enum` VALUES ('134', '农业机械', '1001', 'vocation', '1001', '1');
INSERT INTO `dede_sys_enum` VALUES ('135', '机床', '1002', 'vocation', '1002', '1');
INSERT INTO `dede_sys_enum` VALUES ('136', '纺织设备和器材', '1003', 'vocation', '1003', '1');
INSERT INTO `dede_sys_enum` VALUES ('137', '风机/排风设备', '1004', 'vocation', '1004', '1');
INSERT INTO `dede_sys_enum` VALUES ('138', '虚心', '502', 'vocation', '502', '0');
INSERT INTO `dede_sys_enum` VALUES ('140', '模板制作', '503.001', 'vocation', '503', '2');
INSERT INTO `dede_sys_enum` VALUES ('141', '模块开发', '503.002', 'vocation', '503', '2');
INSERT INTO `dede_sys_enum` VALUES ('142', '企业网站', '501.001', 'vocation', '501', '2');
INSERT INTO `dede_sys_enum` VALUES ('143', '门户开发', '501.002', 'vocation', '501', '2');
INSERT INTO `dede_sys_enum` VALUES ('144', '商业网站', '501.003', 'vocation', '501', '2');
INSERT INTO `dede_sys_enum` VALUES ('145', '个人博客', '501.004', 'vocation', '501', '2');
INSERT INTO `dede_sys_enum` VALUES ('166', '化工', '1500', 'vocation', '1500', '0');
INSERT INTO `dede_sys_enum` VALUES ('147', '松松散散', '502.001', 'vocation', '502', '2');
INSERT INTO `dede_sys_enum` VALUES ('148', '测试分类', '502.002', 'vocation', '502', '2');
INSERT INTO `dede_sys_enum` VALUES ('150', '塑料切割机', '1002.001', 'vocation', '1002', '2');
INSERT INTO `dede_sys_enum` VALUES ('151', '打磨机', '1002.002', 'vocation', '1002', '2');
INSERT INTO `dede_sys_enum` VALUES ('152', '水货机器', '1002.003', 'vocation', '1002', '2');
INSERT INTO `dede_sys_enum` VALUES ('153', '自动收割机', '1001.001', 'vocation', '1001', '2');
INSERT INTO `dede_sys_enum` VALUES ('154', '运输机', '1001.002', 'vocation', '1001', '2');
INSERT INTO `dede_sys_enum` VALUES ('159', '水货', '2501', 'infotype', '2501', '0');
INSERT INTO `dede_sys_enum` VALUES ('160', '水111', '2501.001', 'infotype', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('161', '水222', '2501.002', 'infotype', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('162', '有才', '2502', 'infotype', '2502', '0');
INSERT INTO `dede_sys_enum` VALUES ('163', '有才啊啊啊', '2502.001', 'infotype', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('167', '塑料化工', '1501', 'vocation', '1501', '0');
INSERT INTO `dede_sys_enum` VALUES ('168', '加工', '1501.001', 'vocation', '1501', '2');
INSERT INTO `dede_sys_enum` VALUES ('169', '生产', '1501.002', 'vocation', '1501', '2');
INSERT INTO `dede_sys_enum` VALUES ('170', '物流', '1501.003', 'vocation', '1501', '2');
INSERT INTO `dede_sys_enum` VALUES ('171', '挨踢工作者', '2000', 'vocation', '2000', '0');
INSERT INTO `dede_sys_enum` VALUES ('172', '程序员', '2001', 'vocation', '2001', '0');
INSERT INTO `dede_sys_enum` VALUES ('173', '美工设计', '2002', 'vocation', '2002', '0');
INSERT INTO `dede_sys_enum` VALUES ('174', '前端开发', '2003', 'vocation', '2003', '0');
INSERT INTO `dede_sys_enum` VALUES ('175', '配色', '2002.001', 'vocation', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('176', '美学设计', '2002.002', 'vocation', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('178', 'ddddd', '502.003', 'vocation', '502', '2');
INSERT INTO `dede_sys_enum` VALUES ('179', '学习下', '502.004', 'vocation', '502', '2');
INSERT INTO `dede_sys_enum` VALUES ('20010', '哈巴河县', '16014.5', 'nativeplace', '16015', '2');
INSERT INTO `dede_sys_enum` VALUES ('20009', '福海县', '16014.4', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20008', '富蕴县', '16014.3', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20007', '布尔津县', '16014.2', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20006', '阿勒泰市', '16014.1', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20005', '阿勒泰地区', '16014', 'nativeplace', '16014', '1');
INSERT INTO `dede_sys_enum` VALUES ('20004', '和布克赛尔蒙古自治县', '16013.7', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20003', '裕民县', '16013.6', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20002', '托里县', '16013.5', 'nativeplace', '16014', '2');
INSERT INTO `dede_sys_enum` VALUES ('20001', '沙湾县', '16013.4', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('20000', '额敏县', '16013.3', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19999', '乌苏市', '16013.2', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19998', '塔城市', '16013.1', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19997', '塔城地区', '16013', 'nativeplace', '16013', '1');
INSERT INTO `dede_sys_enum` VALUES ('19996', '尼勒克县', '16012.10', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19995', '特克斯县', '16012.9', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19994', '昭苏县', '16012.8', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19993', '新源县', '16012.7', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19992', '巩留县', '16012.6', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19991', '霍城县', '16012.5', 'nativeplace', '16013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19990', '察布查尔锡伯自治县', '16012.4', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19989', '伊宁县', '16012.3', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19988', '奎屯市', '16012.2', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19987', '伊宁市', '16012.1', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19986', '伊犁哈萨克自治州', '16012', 'nativeplace', '16012', '1');
INSERT INTO `dede_sys_enum` VALUES ('19985', '民丰县', '16011.8', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19984', '于田县', '16011.7', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19983', '策勒县', '16011.6', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19982', '洛浦县', '16011.5', 'nativeplace', '16012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19981', '皮山县', '16011.4', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19980', '墨玉县', '16011.3', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19979', '和田县', '16011.2', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19978', '和田市', '16011.1', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19977', '和田地区', '16011', 'nativeplace', '16011', '1');
INSERT INTO `dede_sys_enum` VALUES ('19976', '塔什库尔干塔吉克自治县', '16010.12', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19975', '巴楚县', '16010.11', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19974', '伽师县', '16010.10', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19973', '岳普湖县', '16010.9', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19972', '麦盖提县', '16010.8', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19971', '叶城县', '16010.7', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19970', '莎车县', '16010.6', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19969', '泽普县', '16010.5', 'nativeplace', '16011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19968', '英吉沙县', '16010.4', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19967', '疏勒县', '16010.3', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19966', '疏附县', '16010.2', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19965', '喀什市', '16010.1', 'nativeplace', '16010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19964', '喀什地区', '16010', 'nativeplace', '16010', '1');
INSERT INTO `dede_sys_enum` VALUES ('19963', '乌恰县', '16009.4', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19962', '阿合奇县', '16009.3', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19961', '阿克陶县', '16009.2', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19960', '阿图什市', '16009.1', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19959', '克孜勒苏柯尔克孜自治州', '16009', 'nativeplace', '16009', '1');
INSERT INTO `dede_sys_enum` VALUES ('19958', '柯坪县', '16008.9', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19957', '阿瓦提县', '16008.8', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19956', '乌什县', '16008.7', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19955', '拜城县', '16008.6', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19954', '新和县', '16008.5', 'nativeplace', '16009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19953', '沙雅县', '16008.4', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19952', '库车县', '16008.3', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19951', '温宿县', '16008.2', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19950', '阿克苏市', '16008.1', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19949', '阿克苏地区', '16008', 'nativeplace', '16008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19948', '博湖县', '16007.9', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19947', '和硕县', '16007.8', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19946', '和静县', '16007.7', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19945', '焉耆回族自治县', '16007.6', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19944', '且末县', '16007.5', 'nativeplace', '16008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19943', '若羌县', '16007.4', 'nativeplace', '16007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19942', '尉犁县', '16007.3', 'nativeplace', '16007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19941', '轮台县', '16007.2', 'nativeplace', '16007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19940', '库尔勒市', '16007.1', 'nativeplace', '16007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19939', '巴音郭楞蒙古自治州', '16007', 'nativeplace', '16007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19938', '温泉县', '16006.3', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19937', '精河县', '16006.2', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19936', '博乐市', '16006.1', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19935', '博尔塔拉蒙古自治州', '16006', 'nativeplace', '16006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19934', '木垒哈萨克自治县', '16005.8', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19933', '吉木萨尔县', '16005.7', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19932', '奇台县', '16005.6', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19931', '玛纳斯县', '16005.5', 'nativeplace', '16006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19930', '呼图壁县', '16005.4', 'nativeplace', '16005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19929', '米泉市', '16005.3', 'nativeplace', '16005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19928', '阜康市', '16005.2', 'nativeplace', '16005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19927', '昌吉市', '16005.1', 'nativeplace', '16005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19926', '昌吉回族自治州', '16005', 'nativeplace', '16005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19925', '伊吾县', '16004.3', 'nativeplace', '16004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19924', '巴里坤哈萨克自治县', '16004.2', 'nativeplace', '16004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19923', '哈密市', '16004.1', 'nativeplace', '16004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19922', '哈密地区', '16004', 'nativeplace', '16004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19921', '托克逊县', '16003.3', 'nativeplace', '16003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19920', '鄯善县', '16003.2', 'nativeplace', '16003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19919', '吐鲁番市', '16003.1', 'nativeplace', '16003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19918', '吐鲁番地区', '16003', 'nativeplace', '16003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19917', '乌尔禾区', '16002.4', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19916', '白碱滩区', '16002.3', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19915', '克拉玛依区', '16002.2', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19914', '独山子区', '16002.1', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19913', '克拉玛依市', '16002', 'nativeplace', '16002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19912', '乌鲁木齐县', '16001.8', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19911', '东山区', '16001.7', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19910', '达坂城区', '16001.6', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19909', '头屯河区', '16001.5', 'nativeplace', '16002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19908', '水磨沟区', '16001.4', 'nativeplace', '16001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19907', '新市区', '16001.3', 'nativeplace', '16001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19906', '沙依巴克区', '16001.2', 'nativeplace', '16001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19905', '天山区', '16001.1', 'nativeplace', '16001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19904', '乌鲁木齐市', '16001', 'nativeplace', '16001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19903', '新疆维吾尔自治区', '16000', 'nativeplace', '16000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19902', '海原县', '15505.3', 'nativeplace', '15505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19901', '中宁县', '15505.2', 'nativeplace', '15505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19900', '沙坡头区', '15505.1', 'nativeplace', '15505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19899', '中卫市', '15505', 'nativeplace', '15505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19898', '彭阳县', '15504.5', 'nativeplace', '15505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19897', '泾源县', '15504.4', 'nativeplace', '15504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19896', '隆德县', '15504.3', 'nativeplace', '15504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19895', '西吉县', '15504.2', 'nativeplace', '15504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19894', '原州区', '15504.1', 'nativeplace', '15504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19893', '固原市', '15504', 'nativeplace', '15504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19892', '青铜峡市', '15503.4', 'nativeplace', '15503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19891', '同心县', '15503.3', 'nativeplace', '15503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19890', '盐池县', '15503.2', 'nativeplace', '15503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19889', '利通区', '15503.1', 'nativeplace', '15503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19888', '吴忠市', '15503', 'nativeplace', '15503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19887', '平罗县', '15502.3', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19886', '惠农区', '15502.2', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19885', '大武口区', '15502.1', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19884', '石嘴山市', '15502', 'nativeplace', '15502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19883', '灵武市', '15501.6', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19882', '贺兰县', '15501.5', 'nativeplace', '15502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19881', '永宁县', '15501.4', 'nativeplace', '15501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19880', '金凤区', '15501.3', 'nativeplace', '15501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19879', '西夏区', '15501.2', 'nativeplace', '15501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19878', '兴庆区', '15501.1', 'nativeplace', '15501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19877', '银川市', '15501', 'nativeplace', '15501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19876', '宁夏回族自治区', '15500', 'nativeplace', '15500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19875', '天峻县', '15008.5', 'nativeplace', '15009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19874', '都兰县', '15008.4', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19873', '乌兰县', '15008.3', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19872', '德令哈市', '15008.2', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19871', '格尔木市', '15008.1', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19870', '海西蒙古族藏族自治州', '15008', 'nativeplace', '15008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19869', '曲麻莱县', '15007.6', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19868', '囊谦县', '15007.5', 'nativeplace', '15008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19867', '治多县', '15007.4', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19866', '称多县', '15007.3', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19865', '杂多县', '15007.2', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19864', '玉树县', '15007.1', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19863', '玉树藏族自治州', '15007', 'nativeplace', '15007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19862', '玛多县', '15006.6', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19861', '久治县', '15006.5', 'nativeplace', '15007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19860', '达日县', '15006.4', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19859', '甘德县', '15006.3', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19858', '班玛县', '15006.2', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19857', '玛沁县', '15006.1', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19856', '果洛藏族自治州', '15006', 'nativeplace', '15006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19855', '贵南县', '15005.5', 'nativeplace', '15006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19854', '兴海县', '15005.4', 'nativeplace', '15005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19853', '贵德县', '15005.3', 'nativeplace', '15005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19852', '同德县', '15005.2', 'nativeplace', '15005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19851', '共和县', '15005.1', 'nativeplace', '15005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19850', '海南藏族自治州', '15005', 'nativeplace', '15005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19849', '河南蒙古族自治县', '15004.4', 'nativeplace', '15004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19848', '泽库县', '15004.3', 'nativeplace', '15004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19847', '尖扎县', '15004.2', 'nativeplace', '15004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19846', '同仁县', '15004.1', 'nativeplace', '15004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19845', '黄南藏族自治州', '15004', 'nativeplace', '15004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19844', '刚察县', '15003.4', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19843', '海晏县', '15003.3', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19842', '祁连县', '15003.2', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19841', '门源回族自治县', '15003.1', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19840', '海北藏族自治州', '15003', 'nativeplace', '15003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19839', '循化撒拉族自治县', '15002.6', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19838', '化隆回族自治县', '15002.5', 'nativeplace', '15003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19837', '互助土族自治县', '15002.4', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19836', '乐都县', '15002.3', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19835', '民和回族土族自治县', '15002.2', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19834', '平安县', '15002.1', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19833', '海东地区', '15002', 'nativeplace', '15002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19832', '湟源县', '15001.7', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19831', '湟中县', '15001.6', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19830', '大通回族土族自治县', '15001.5', 'nativeplace', '15002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19829', '城北区', '15001.4', 'nativeplace', '15001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19828', '城西区', '15001.3', 'nativeplace', '15001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19827', '城中区', '15001.2', 'nativeplace', '15001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19826', '城东区', '15001.1', 'nativeplace', '15001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19825', '西宁市', '15001', 'nativeplace', '15001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19824', '青海省', '15000', 'nativeplace', '15000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19823', '夏河县', '14514.8', 'nativeplace', '14515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19822', '碌曲县', '14514.7', 'nativeplace', '14515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19821', '玛曲县', '14514.6', 'nativeplace', '14515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19820', '迭部县', '14514.5', 'nativeplace', '14515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19819', '舟曲县', '14514.4', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19818', '卓尼县', '14514.3', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19817', '临潭县', '14514.2', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19816', '合作市', '14514.1', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19815', '甘南藏族自治州', '14514', 'nativeplace', '14514', '1');
INSERT INTO `dede_sys_enum` VALUES ('19814', '积石山保安族东乡族撒拉族自治县', '14513.8', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19813', '东乡族自治县', '14513.7', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19812', '和政县', '14513.6', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19811', '广河县', '14513.5', 'nativeplace', '14514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19810', '永靖县', '14513.4', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19809', '康乐县', '14513.3', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19808', '临夏县', '14513.2', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19807', '临夏市', '14513.1', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19806', '临夏回族自治州', '14513', 'nativeplace', '14513', '1');
INSERT INTO `dede_sys_enum` VALUES ('19805', '两当县', '14512.9', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19804', '徽　县', '14512.8', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19803', '礼　县', '14512.7', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19802', '西和县', '14512.6', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19801', '康　县', '14512.5', 'nativeplace', '14513', '2');
INSERT INTO `dede_sys_enum` VALUES ('19800', '宕昌县', '14512.4', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19799', '文　县', '14512.3', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19798', '成　县', '14512.2', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19797', '武都区', '14512.1', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19796', '陇南市', '14512', 'nativeplace', '14512', '1');
INSERT INTO `dede_sys_enum` VALUES ('19795', '岷　县', '14511.7', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19794', '漳　县', '14511.6', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19793', '临洮县', '14511.5', 'nativeplace', '14512', '2');
INSERT INTO `dede_sys_enum` VALUES ('19792', '渭源县', '14511.4', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19791', '陇西县', '14511.3', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19790', '通渭县', '14511.2', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19789', '安定区', '14511.1', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19788', '定西市', '14511', 'nativeplace', '14511', '1');
INSERT INTO `dede_sys_enum` VALUES ('19787', '镇原县', '14510.8', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19786', '宁　县', '14510.7', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19785', '正宁县', '14510.6', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19784', '合水县', '14510.5', 'nativeplace', '14511', '2');
INSERT INTO `dede_sys_enum` VALUES ('19783', '华池县', '14510.4', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19782', '环　县', '14510.3', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19781', '庆城县', '14510.2', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19780', '西峰区', '14510.1', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19779', '庆阳市', '14510', 'nativeplace', '14510', '1');
INSERT INTO `dede_sys_enum` VALUES ('19778', '敦煌市', '14509.7', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19777', '玉门市', '14509.6', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19776', '阿克塞哈萨克族自治县', '14509.5', 'nativeplace', '14510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19775', '肃北蒙古族自治县', '14509.4', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19774', '安西县', '14509.3', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19773', '金塔县', '14509.2', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19772', '肃州区', '14509.1', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19771', '酒泉市', '14509', 'nativeplace', '14509', '1');
INSERT INTO `dede_sys_enum` VALUES ('19770', '静宁县', '14508.7', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19769', '庄浪县', '14508.6', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19768', '华亭县', '14508.5', 'nativeplace', '14509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19767', '崇信县', '14508.4', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19766', '灵台县', '14508.3', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19765', '泾川县', '14508.2', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19764', '崆峒区', '14508.1', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19763', '平凉市', '14508', 'nativeplace', '14508', '1');
INSERT INTO `dede_sys_enum` VALUES ('19762', '山丹县', '14507.6', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19761', '高台县', '14507.5', 'nativeplace', '14508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19760', '临泽县', '14507.4', 'nativeplace', '14507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19759', '民乐县', '14507.3', 'nativeplace', '14507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19758', '肃南裕固族自治县', '14507.2', 'nativeplace', '14507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19757', '甘州区', '14507.1', 'nativeplace', '14507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19756', '张掖市', '14507', 'nativeplace', '14507', '1');
INSERT INTO `dede_sys_enum` VALUES ('19755', '天祝藏族自治县', '14506.4', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19754', '古浪县', '14506.3', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19753', '民勤县', '14506.2', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19752', '凉州区', '14506.1', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19751', '武威市', '14506', 'nativeplace', '14506', '1');
INSERT INTO `dede_sys_enum` VALUES ('19750', '张家川回族自治县', '14505.7', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19749', '武山县', '14505.6', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19748', '甘谷县', '14505.5', 'nativeplace', '14506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19747', '秦安县', '14505.4', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19746', '清水县', '14505.3', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19745', '北道区', '14505.2', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19744', '秦城区', '14505.1', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19743', '天水市', '14505', 'nativeplace', '14505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19742', '景泰县', '14504.5', 'nativeplace', '14505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19741', '会宁县', '14504.4', 'nativeplace', '14504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19740', '靖远县', '14504.3', 'nativeplace', '14504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19739', '平川区', '14504.2', 'nativeplace', '14504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19738', '白银区', '14504.1', 'nativeplace', '14504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19737', '白银市', '14504', 'nativeplace', '14504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19736', '永昌县', '14503.2', 'nativeplace', '14503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19735', '金川区', '14503.1', 'nativeplace', '14503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19734', '金昌市', '14503', 'nativeplace', '14503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19733', '嘉峪关市', '14502', 'nativeplace', '14502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19732', '榆中县', '14501.8', 'nativeplace', '14502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19731', '皋兰县', '14501.7', 'nativeplace', '14502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19730', '永登县', '14501.6', 'nativeplace', '14502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19729', '红古区', '14501.5', 'nativeplace', '14502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19728', '安宁区', '14501.4', 'nativeplace', '14501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19727', '西固区', '14501.3', 'nativeplace', '14501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19726', '七里河区', '14501.2', 'nativeplace', '14501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19725', '城关区', '14501.1', 'nativeplace', '14501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19724', '兰州市', '14501', 'nativeplace', '14501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19723', '甘肃省', '14500', 'nativeplace', '14500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19722', '柞水县', '14010.7', 'nativeplace', '14011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19721', '镇安县', '14010.6', 'nativeplace', '14011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19720', '山阳县', '14010.5', 'nativeplace', '14011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19719', '商南县', '14010.4', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19718', '丹凤县', '14010.3', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19717', '洛南县', '14010.2', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19716', '商州区', '14010.1', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19715', '商洛市', '14010', 'nativeplace', '14010', '1');
INSERT INTO `dede_sys_enum` VALUES ('19714', '白河县', '14009.10', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19713', '旬阳县', '14009.9', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19712', '镇坪县', '14009.8', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19711', '平利县', '14009.7', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19710', '岚皋县', '14009.6', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19709', '紫阳县', '14009.5', 'nativeplace', '14010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19708', '宁陕县', '14009.4', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19707', '石泉县', '14009.3', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19706', '汉阴县', '14009.2', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19705', '汉滨区', '14009.1', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19704', '安康市', '14009', 'nativeplace', '14009', '1');
INSERT INTO `dede_sys_enum` VALUES ('19703', '子洲县', '14008.12', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19702', '清涧县', '14008.11', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19701', '吴堡县', '14008.10', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19700', '佳　县', '14008.9', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19699', '米脂县', '14008.8', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19698', '绥德县', '14008.7', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19697', '定边县', '14008.6', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19696', '靖边县', '14008.5', 'nativeplace', '14009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19695', '横山县', '14008.4', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19694', '府谷县', '14008.3', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19693', '神木县', '14008.2', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19692', '榆阳区', '14008.1', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19691', '榆林市', '14008', 'nativeplace', '14008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19690', '佛坪县', '14007.11', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19689', '留坝县', '14007.10', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19688', '镇巴县', '14007.9', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19687', '略阳县', '14007.8', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19686', '宁强县', '14007.7', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19685', '勉　县', '14007.6', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19684', '西乡县', '14007.5', 'nativeplace', '14008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19683', '洋　县', '14007.4', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19682', '城固县', '14007.3', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19681', '南郑县', '14007.2', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19680', '汉台区', '14007.1', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19679', '汉中市', '14007', 'nativeplace', '14007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19678', '黄陵县', '14006.13', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19677', '黄龙县', '14006.12', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19676', '宜川县', '14006.11', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19675', '洛川县', '14006.10', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19674', '富　县', '14006.9', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19673', '甘泉县', '14006.8', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19672', '吴旗县', '14006.7', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19671', '志丹县', '14006.6', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19670', '安塞县', '14006.5', 'nativeplace', '14007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19669', '子长县', '14006.4', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19668', '延川县', '14006.3', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19667', '延长县', '14006.2', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19666', '宝塔区', '14006.1', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19665', '延安市', '14006', 'nativeplace', '14006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19664', '华阴市', '14005.11', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19663', '韩城市', '14005.10', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19662', '富平县', '14005.9', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19661', '白水县', '14005.8', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19660', '蒲城县', '14005.7', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19659', '澄城县', '14005.6', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19658', '合阳县', '14005.5', 'nativeplace', '14006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19657', '大荔县', '14005.4', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19656', '潼关县', '14005.3', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19655', '华　县', '14005.2', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19654', '临渭区', '14005.1', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19653', '渭南市', '14005', 'nativeplace', '14005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19652', '兴平市', '14004.14', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19651', '武功县', '14004.13', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19650', '淳化县', '14004.12', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19649', '旬邑县', '14004.11', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19648', '长武县', '14004.10', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19647', '彬　县', '14004.9', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19646', '永寿县', '14004.8', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19645', '礼泉县', '14004.7', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19644', '乾　县', '14004.6', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19643', '泾阳县', '14004.5', 'nativeplace', '14005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19642', '三原县', '14004.4', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19641', '渭城区', '14004.3', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19640', '杨凌区', '14004.2', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19639', '秦都区', '14004.1', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19638', '咸阳市', '14004', 'nativeplace', '14004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19637', '太白县', '14003.12', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19636', '凤　县', '14003.11', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19635', '麟游县', '14003.10', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19634', '千阳县', '14003.9', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19633', '陇　县', '14003.8', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19632', '眉　县', '14003.7', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19631', '扶风县', '14003.6', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19630', '岐山县', '14003.5', 'nativeplace', '14004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19629', '凤翔县', '14003.4', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19628', '陈仓区', '14003.3', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19627', '金台区', '14003.2', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19626', '滨区', '14003.1', 'nativeplace', '14003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19625', '宝鸡市', '14003', 'nativeplace', '14003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19624', '宜君县', '14002.4', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19623', '耀州区', '14002.3', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19622', '印台区', '14002.2', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19621', '王益区', '14002.1', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19620', '铜川市', '14002', 'nativeplace', '14002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19619', '高陵县', '14001.13', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19618', '户　县', '14001.12', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19617', '周至县', '14001.11', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19616', '蓝田县', '14001.10', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19615', '长安区', '14001.9', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19614', '临潼区', '14001.8', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19613', '阎良区', '14001.7', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19612', '雁塔区', '14001.6', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19611', '未央区', '14001.5', 'nativeplace', '14002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19610', '灞桥区', '14001.4', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19609', '莲湖区', '14001.3', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19608', '碑林区', '14001.2', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19607', '新城区', '14001.1', 'nativeplace', '14001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19606', '西安市', '14001', 'nativeplace', '14001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19605', '陕西省', '14000', 'nativeplace', '14000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19604', '朗　县', '13507.7', 'nativeplace', '13508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19603', '察隅县', '13507.6', 'nativeplace', '13508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19602', '波密县', '13507.5', 'nativeplace', '13508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19601', '墨脱县', '13507.4', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19600', '米林县', '13507.3', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19599', '工布江达县', '13507.2', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19598', '林芝县', '13507.1', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19597', '林芝地区', '13507', 'nativeplace', '13507', '1');
INSERT INTO `dede_sys_enum` VALUES ('19596', '措勤县', '13506.7', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19595', '改则县', '13506.6', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19594', '革吉县', '13506.5', 'nativeplace', '13507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19593', '日土县', '13506.4', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19592', '噶尔县', '13506.3', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19591', '札达县', '13506.2', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19590', '普兰县', '13506.1', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19589', '阿里地区', '13506', 'nativeplace', '13506', '1');
INSERT INTO `dede_sys_enum` VALUES ('19588', '尼玛县', '13505.10', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19587', '巴青县', '13505.9', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19586', '班戈县', '13505.8', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19585', '索　县', '13505.7', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19584', '申扎县', '13505.6', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19583', '安多县', '13505.5', 'nativeplace', '13506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19582', '聂荣县', '13505.4', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19581', '比如县', '13505.3', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19580', '嘉黎县', '13505.2', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19579', '那曲县', '13505.1', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19578', '那曲地区', '13505', 'nativeplace', '13505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19577', '岗巴县', '13504.18', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19576', '萨嘎县', '13504.17', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19575', '聂拉木县', '13504.16', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19574', '吉隆县', '13504.15', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19573', '亚东县', '13504.14', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19572', '仲巴县', '13504.13', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19571', '定结县', '13504.12', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19570', '康马县', '13504.11', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19569', '仁布县', '13504.10', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19568', '白朗县', '13504.9', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19567', '谢通门县', '13504.8', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19566', '昂仁县', '13504.7', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19565', '拉孜县', '13504.6', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19564', '萨迦县', '13504.5', 'nativeplace', '13505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19563', '定日县', '13504.4', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19562', '江孜县', '13504.3', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19561', '南木林县', '13504.2', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19560', '日喀则市', '13504.1', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19559', '日喀则地区', '13504', 'nativeplace', '13504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19558', '浪卡子县', '13503.12', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19557', '错那县', '13503.11', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19556', '隆子县', '13503.10', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19555', '加查县', '13503.9', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19554', '洛扎县', '13503.8', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19553', '措美县', '13503.7', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19552', '曲松县', '13503.6', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19551', '琼结县', '13503.5', 'nativeplace', '13504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19550', '桑日县', '13503.4', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19549', '贡嘎县', '13503.3', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19548', '扎囊县', '13503.2', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19547', '乃东县', '13503.1', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19546', '山南地区', '13503', 'nativeplace', '13503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19545', '边坝县', '13502.11', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19544', '洛隆县', '13502.10', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19543', '芒康县', '13502.9', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19542', '左贡县', '13502.8', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19541', '八宿县', '13502.7', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19540', '察雅县', '13502.6', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19539', '丁青县', '13502.5', 'nativeplace', '13503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19538', '类乌齐县', '13502.4', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19537', '贡觉县', '13502.3', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19536', '江达县', '13502.2', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19535', '昌都县', '13502.1', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19534', '昌都地区', '13502', 'nativeplace', '13502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19533', '墨竹工卡县', '13501.8', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19532', '达孜县', '13501.7', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19531', '堆龙德庆县', '13501.6', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19530', '曲水县', '13501.5', 'nativeplace', '13502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19529', '尼木县', '13501.4', 'nativeplace', '13501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19528', '当雄县', '13501.3', 'nativeplace', '13501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19527', '林周县', '13501.2', 'nativeplace', '13501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19526', '城关区', '13501.1', 'nativeplace', '13501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19525', '拉萨市', '13501', 'nativeplace', '13501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19524', '西藏自治区', '13500', 'nativeplace', '13500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19523', '维西傈僳族自治县', '13016.3', 'nativeplace', '13016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19522', '德钦县', '13016.2', 'nativeplace', '13016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19521', '香格里拉县', '13016.1', 'nativeplace', '13016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19520', '迪庆藏族自治州', '13016', 'nativeplace', '13016', '1');
INSERT INTO `dede_sys_enum` VALUES ('19519', '兰坪白族普米族自治县', '13015.4', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19518', '贡山独龙族怒族自治县', '13015.3', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19517', '福贡县', '13015.2', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19516', '泸水县', '13015.1', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19515', '怒江傈僳族自治州', '13015', 'nativeplace', '13015', '1');
INSERT INTO `dede_sys_enum` VALUES ('19514', '陇川县', '13014.5', 'nativeplace', '13015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19513', '盈江县', '13014.4', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19512', '梁河县', '13014.3', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19511', '潞西市', '13014.2', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19510', '瑞丽市', '13014.1', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19509', '德宏傣族景颇族自治州', '13014', 'nativeplace', '13014', '1');
INSERT INTO `dede_sys_enum` VALUES ('19508', '鹤庆县', '13013.12', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19507', '剑川县', '13013.11', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19506', '洱源县', '13013.10', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19505', '云龙县', '13013.9', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19504', '永平县', '13013.8', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19503', '巍山彝族回族自治县', '13013.7', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19502', '南涧彝族自治县', '13013.6', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19501', '弥渡县', '13013.5', 'nativeplace', '13014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19500', '宾川县', '13013.4', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19499', '祥云县', '13013.3', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19498', '漾濞彝族自治县', '13013.2', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19497', '大理市', '13013.1', 'nativeplace', '13013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19496', '大理白族自治州', '13013', 'nativeplace', '13013', '1');
INSERT INTO `dede_sys_enum` VALUES ('19495', '勐腊县', '13012.3', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19494', '勐海县', '13012.2', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19493', '景洪市', '13012.1', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19492', '西双版纳傣族自治州', '13012', 'nativeplace', '13012', '1');
INSERT INTO `dede_sys_enum` VALUES ('19491', '富宁县', '13011.8', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19490', '广南县', '13011.7', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19489', '丘北县', '13011.6', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19488', '马关县', '13011.5', 'nativeplace', '13012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19487', '麻栗坡县', '13011.4', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19486', '西畴县', '13011.3', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19485', '砚山县', '13011.2', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19484', '文山县', '13011.1', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19483', '文山壮族苗族自治州', '13011', 'nativeplace', '13011', '1');
INSERT INTO `dede_sys_enum` VALUES ('19482', '河口瑶族自治县', '13010.12', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19481', '绿春县', '13010.11', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19480', '金平苗族瑶族傣族自治县', '13010.10', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19479', '元阳县', '13010.9', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19478', '泸西县', '13010.8', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19477', '弥勒县', '13010.7', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19476', '石屏县', '13010.6', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19475', '建水县', '13010.5', 'nativeplace', '13011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19474', '屏边苗族自治县', '13010.4', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19473', '蒙自县', '13010.3', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19472', '开远市', '13010.2', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19471', '个旧市', '13010.1', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19470', '红河哈尼族彝族自治州', '13010', 'nativeplace', '13010', '1');
INSERT INTO `dede_sys_enum` VALUES ('19469', '禄丰县', '13009.10', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19468', '武定县', '13009.9', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19467', '元谋县', '13009.8', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19466', '永仁县', '13009.7', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19465', '大姚县', '13009.6', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19464', '姚安县', '13009.5', 'nativeplace', '13010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19463', '南华县', '13009.4', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19462', '牟定县', '13009.3', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19461', '双柏县', '13009.2', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19460', '楚雄市', '13009.1', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19459', '楚雄彝族自治州', '13009', 'nativeplace', '13009', '1');
INSERT INTO `dede_sys_enum` VALUES ('19458', '沧源佤族自治县', '13008.8', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19457', '耿马傣族佤族自治县', '13008.7', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19456', '双江拉祜族佤族布朗族傣族自治县', '13008.6', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19455', '镇康县', '13008.5', 'nativeplace', '13009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19454', '永德县', '13008.4', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19453', '云　县', '13008.3', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19452', '凤庆县', '13008.2', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19451', '临翔区', '13008.1', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19450', '临沧市', '13008', 'nativeplace', '13008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19449', '西盟佤族自治县', '13007.10', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19448', '澜沧拉祜族自治县', '13007.9', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19447', '孟连傣族拉祜族佤族自治县', '13007.8', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19446', '江城哈尼族彝族自治县', '13007.7', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19445', '镇沅彝族哈尼族拉祜族自治县', '13007.6', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19444', '景谷傣族彝族自治县', '13007.5', 'nativeplace', '13008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19443', '景东彝族自治县', '13007.4', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19442', '墨江哈尼族自治县', '13007.3', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19441', '普洱哈尼族彝族自治县', '13007.2', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19440', '翠云区', '13007.1', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19439', '思茅市', '13007', 'nativeplace', '13007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19438', '宁蒗彝族自治县', '13006.5', 'nativeplace', '13007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19437', '华坪县', '13006.4', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19436', '永胜县', '13006.3', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19435', '玉龙纳西族自治县', '13006.2', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19434', '古城区', '13006.1', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19433', '丽江市', '13006', 'nativeplace', '13006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19432', '水富县', '13005.11', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19431', '威信县', '13005.10', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19430', '彝良县', '13005.9', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19429', '镇雄县', '13005.8', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19428', '绥江县', '13005.7', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19427', '永善县', '13005.6', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19426', '大关县', '13005.5', 'nativeplace', '13006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19425', '盐津县', '13005.4', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19424', '巧家县', '13005.3', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19423', '鲁甸县', '13005.2', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19422', '昭阳区', '13005.1', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19421', '昭通市', '13005', 'nativeplace', '13005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19420', '昌宁县', '13004.5', 'nativeplace', '13005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19419', '龙陵县', '13004.4', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19418', '腾冲县', '13004.3', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19417', '施甸县', '13004.2', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19416', '隆阳区', '13004.1', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19415', '保山市', '13004', 'nativeplace', '13004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19414', '元江哈尼族彝族傣族自治县', '13003.9', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19413', '新平彝族傣族自治县', '13003.8', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19412', '峨山彝族自治县', '13003.7', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19411', '易门县', '13003.6', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19410', '华宁县', '13003.5', 'nativeplace', '13004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19409', '通海县', '13003.4', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19408', '澄江县', '13003.3', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19407', '江川县', '13003.2', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19406', '红塔区', '13003.1', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19405', '玉溪市', '13003', 'nativeplace', '13003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19404', '宣威市', '13002.9', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19403', '沾益县', '13002.8', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19402', '会泽县', '13002.7', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19401', '富源县', '13002.6', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19400', '罗平县', '13002.5', 'nativeplace', '13003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19399', '师宗县', '13002.4', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19398', '陆良县', '13002.3', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19397', '马龙县', '13002.2', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19396', '麒麟区', '13002.1', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19395', '曲靖市', '13002', 'nativeplace', '13002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19394', '安宁市', '13001.14', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19393', '寻甸回族彝族自治县', '13001.13', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19392', '禄劝彝族苗族自治县', '13001.12', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19391', '嵩明县', '13001.11', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19390', '石林彝族自治县', '13001.10', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19389', '宜良县', '13001.9', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19388', '富民县', '13001.8', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19387', '晋宁县', '13001.7', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19386', '呈贡县', '13001.6', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19385', '东川区', '13001.5', 'nativeplace', '13002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19384', '西山区', '13001.4', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19383', '官渡区', '13001.3', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19382', '盘龙区', '13001.2', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19381', '五华区', '13001.1', 'nativeplace', '13001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19380', '昆明市', '13001', 'nativeplace', '13001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19379', '云南省', '13000', 'nativeplace', '13000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19378', '三都水族自治县', '12509.12', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19377', '惠水县', '12509.11', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19376', '龙里县', '12509.10', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19375', '长顺县', '12509.9', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19374', '罗甸县', '12509.8', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19373', '平塘县', '12509.7', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19372', '独山县', '12509.6', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19371', '瓮安县', '12509.5', 'nativeplace', '12510', '2');
INSERT INTO `dede_sys_enum` VALUES ('19370', '贵定县', '12509.4', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19369', '荔波县', '12509.3', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19368', '福泉市', '12509.2', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19367', '都匀市', '12509.1', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19366', '黔南布依族苗族自治州', '12509', 'nativeplace', '12509', '1');
INSERT INTO `dede_sys_enum` VALUES ('19365', '麻江县', '12508.15', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19364', '雷山县', '12508.14', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19363', '从江县', '12508.13', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19362', '榕江县', '12508.12', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19361', '黎平县', '12508.11', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19360', '台江县', '12508.10', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19359', '剑河县', '12508.9', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19358', '锦屏县', '12508.8', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19357', '天柱县', '12508.7', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19356', '岑巩县', '12508.6', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19355', '镇远县', '12508.5', 'nativeplace', '12509', '2');
INSERT INTO `dede_sys_enum` VALUES ('19354', '三穗县', '12508.4', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19353', '施秉县', '12508.3', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19352', '黄平县', '12508.2', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19351', '凯里市', '12508.1', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19350', '黔东南苗族侗族自治州', '12508', 'nativeplace', '12508', '1');
INSERT INTO `dede_sys_enum` VALUES ('19349', '赫章县', '12507.8', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19348', '威宁彝族回族苗族自治县', '12507.7', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19347', '纳雍县', '12507.6', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19346', '织金县', '12507.5', 'nativeplace', '12508', '2');
INSERT INTO `dede_sys_enum` VALUES ('19345', '金沙县', '12507.4', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19344', '黔西县', '12507.3', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19343', '大方县', '12507.2', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19342', '毕节市', '12507.1', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19341', '毕节地区', '12507', 'nativeplace', '12507', '1');
INSERT INTO `dede_sys_enum` VALUES ('19340', '安龙县', '12506.8', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19339', '册亨县', '12506.7', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19338', '望谟县', '12506.6', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19337', '贞丰县', '12506.5', 'nativeplace', '12507', '2');
INSERT INTO `dede_sys_enum` VALUES ('19336', '晴隆县', '12506.4', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19335', '普安县', '12506.3', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19334', '兴仁县', '12506.2', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19333', '兴义市', '12506.1', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19332', '黔西南布依族苗族自治州', '12506', 'nativeplace', '12506', '1');
INSERT INTO `dede_sys_enum` VALUES ('19331', '万山特区', '12505.10', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19330', '松桃苗族自治县', '12505.9', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19329', '沿河土家族自治县', '12505.8', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19328', '德江县', '12505.7', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19327', '印江土家族苗族自治县', '12505.6', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19326', '思南县', '12505.5', 'nativeplace', '12506', '2');
INSERT INTO `dede_sys_enum` VALUES ('19325', '石阡县', '12505.4', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19324', '玉屏侗族自治县', '12505.3', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19323', '江口县', '12505.2', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19322', '铜仁市', '12505.1', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19321', '铜仁地区', '12505', 'nativeplace', '12505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19320', '紫云苗族布依族自治县', '12504.6', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19319', '关岭布依族苗族自治县', '12504.5', 'nativeplace', '12505', '2');
INSERT INTO `dede_sys_enum` VALUES ('19318', '镇宁布依族苗族自治县', '12504.4', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19317', '普定县', '12504.3', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19316', '平坝县', '12504.2', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19315', '西秀区', '12504.1', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19314', '安顺市', '12504', 'nativeplace', '12504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19313', '仁怀市', '12503.14', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19312', '赤水市', '12503.13', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19311', '习水县', '12503.12', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19310', '余庆县', '12503.11', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19309', '湄潭县', '12503.10', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19308', '凤冈县', '12503.9', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19307', '务川仡佬族苗族自治县', '12503.8', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19306', '道真仡佬族苗族自治县', '12503.7', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19305', '正安县', '12503.6', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19304', '绥阳县', '12503.5', 'nativeplace', '12504', '2');
INSERT INTO `dede_sys_enum` VALUES ('19303', '桐梓县', '12503.4', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19302', '遵义县', '12503.3', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19301', '汇川区', '12503.2', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19300', '红花岗区', '12503.1', 'nativeplace', '12503', '2');
INSERT INTO `dede_sys_enum` VALUES ('19299', '遵义市', '12503', 'nativeplace', '12503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19298', '盘　县', '12502.4', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19297', '水城县', '12502.3', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19296', '六枝特区', '12502.2', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19295', '钟山区', '12502.1', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19294', '六盘水市', '12502', 'nativeplace', '12502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19293', '清镇市', '12501.10', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19292', '修文县', '12501.9', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19291', '息烽县', '12501.8', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19290', '开阳县', '12501.7', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19289', '小河区', '12501.6', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19288', '白云区', '12501.5', 'nativeplace', '12502', '2');
INSERT INTO `dede_sys_enum` VALUES ('19287', '乌当区', '12501.4', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19286', '花溪区', '12501.3', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19285', '云岩区', '12501.2', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19284', '南明区', '12501.1', 'nativeplace', '12501', '2');
INSERT INTO `dede_sys_enum` VALUES ('19283', '贵阳市', '12501', 'nativeplace', '12501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19282', '贵州省', '12500', 'nativeplace', '12500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19281', '雷波县', '12021.17', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19280', '美姑县', '12021.16', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19279', '甘洛县', '12021.15', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19278', '越西县', '12021.14', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19277', '冕宁县', '12021.13', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19276', '喜德县', '12021.12', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19275', '昭觉县', '12021.11', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19274', '金阳县', '12021.10', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19273', '布拖县', '12021.9', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19272', '普格县', '12021.8', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19271', '宁南县', '12021.7', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19270', '会东县', '12021.6', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19269', '会理县', '12021.5', 'nativeplace', '12022', '2');
INSERT INTO `dede_sys_enum` VALUES ('19268', '德昌县', '12021.4', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19267', '盐源县', '12021.3', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19266', '木里藏族自治县', '12021.2', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19265', '西昌市', '12021.1', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19264', '凉山彝族自治州', '12021', 'nativeplace', '12021', '1');
INSERT INTO `dede_sys_enum` VALUES ('19263', '得荣县', '12020.18', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19262', '稻城县', '12020.17', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19261', '乡城县', '12020.16', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19260', '巴塘县', '12020.15', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19259', '理塘县', '12020.14', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19258', '色达县', '12020.13', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19257', '石渠县', '12020.12', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19256', '白玉县', '12020.11', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19255', '德格县', '12020.10', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19254', '新龙县', '12020.9', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19253', '甘孜县', '12020.8', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19252', '炉霍县', '12020.7', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19251', '道孚县', '12020.6', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19250', '雅江县', '12020.5', 'nativeplace', '12021', '2');
INSERT INTO `dede_sys_enum` VALUES ('19249', '九龙县', '12020.4', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19248', '丹巴县', '12020.3', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19247', '泸定县', '12020.2', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19246', '康定县', '12020.1', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19245', '甘孜藏族自治州', '12020', 'nativeplace', '12020', '1');
INSERT INTO `dede_sys_enum` VALUES ('19244', '红原县', '12019.13', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19243', '若尔盖县', '12019.12', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19242', '阿坝县', '12019.11', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19241', '壤塘县', '12019.10', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19240', '马尔康县', '12019.9', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19239', '黑水县', '12019.8', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19238', '小金县', '12019.7', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19237', '金川县', '12019.6', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19236', '九寨沟县', '12019.5', 'nativeplace', '12020', '2');
INSERT INTO `dede_sys_enum` VALUES ('19235', '松潘县', '12019.4', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19234', '茂　县', '12019.3', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19233', '理　县', '12019.2', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19232', '汶川县', '12019.1', 'nativeplace', '12019', '2');
INSERT INTO `dede_sys_enum` VALUES ('19231', '阿坝藏族羌族自治州', '12019', 'nativeplace', '12019', '1');
INSERT INTO `dede_sys_enum` VALUES ('19230', '简阳市', '12018.4', 'nativeplace', '12018', '2');
INSERT INTO `dede_sys_enum` VALUES ('19229', '乐至县', '12018.3', 'nativeplace', '12018', '2');
INSERT INTO `dede_sys_enum` VALUES ('19228', '安岳县', '12018.2', 'nativeplace', '12018', '2');
INSERT INTO `dede_sys_enum` VALUES ('19227', '雁江区', '12018.1', 'nativeplace', '12018', '2');
INSERT INTO `dede_sys_enum` VALUES ('19226', '资阳市', '12018', 'nativeplace', '12018', '1');
INSERT INTO `dede_sys_enum` VALUES ('19225', '平昌县', '12017.4', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19224', '南江县', '12017.3', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19223', '通江县', '12017.2', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19222', '巴州区', '12017.1', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19221', '巴中市', '12017', 'nativeplace', '12017', '1');
INSERT INTO `dede_sys_enum` VALUES ('19220', '宝兴县', '12016.8', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19219', '芦山县', '12016.7', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19218', '天全县', '12016.6', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19217', '石棉县', '12016.5', 'nativeplace', '12017', '2');
INSERT INTO `dede_sys_enum` VALUES ('19216', '汉源县', '12016.4', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19215', '荥经县', '12016.3', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19214', '名山县', '12016.2', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19213', '雨城区', '12016.1', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19212', '雅安市', '12016', 'nativeplace', '12016', '1');
INSERT INTO `dede_sys_enum` VALUES ('19211', '万源市', '12015.7', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19210', '渠　县', '12015.6', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19209', '大竹县', '12015.5', 'nativeplace', '12016', '2');
INSERT INTO `dede_sys_enum` VALUES ('19208', '开江县', '12015.4', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19207', '宣汉县', '12015.3', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19206', '达　县', '12015.2', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19205', '通川区', '12015.1', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19204', '达州市', '12015', 'nativeplace', '12015', '1');
INSERT INTO `dede_sys_enum` VALUES ('19203', '华莹市', '12014.5', 'nativeplace', '12015', '2');
INSERT INTO `dede_sys_enum` VALUES ('19202', '邻水县', '12014.4', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19201', '武胜县', '12014.3', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19200', '岳池县', '12014.2', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19199', '广安区', '12014.1', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19198', '广安市', '12014', 'nativeplace', '12014', '1');
INSERT INTO `dede_sys_enum` VALUES ('19197', '屏山县', '12013.10', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19196', '兴文县', '12013.9', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19195', '筠连县', '12013.8', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19194', '珙　县', '12013.7', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19193', '高　县', '12013.6', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19192', '长宁县', '12013.5', 'nativeplace', '12014', '2');
INSERT INTO `dede_sys_enum` VALUES ('19191', '江安县', '12013.4', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19190', '南溪县', '12013.3', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19189', '宜宾县', '12013.2', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19188', '翠屏区', '12013.1', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19187', '宜宾市', '12013', 'nativeplace', '12013', '1');
INSERT INTO `dede_sys_enum` VALUES ('19186', '青神县', '12012.6', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19185', '丹棱县', '12012.5', 'nativeplace', '12013', '2');
INSERT INTO `dede_sys_enum` VALUES ('19184', '洪雅县', '12012.4', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19183', '彭山县', '12012.3', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19182', '仁寿县', '12012.2', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19181', '东坡区', '12012.1', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19180', '眉山市', '12012', 'nativeplace', '12012', '1');
INSERT INTO `dede_sys_enum` VALUES ('19179', '阆中市', '12011.9', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19178', '西充县', '12011.8', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19177', '仪陇县', '12011.7', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19176', '蓬安县', '12011.6', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19175', '营山县', '12011.5', 'nativeplace', '12012', '2');
INSERT INTO `dede_sys_enum` VALUES ('19174', '南部县', '12011.4', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19173', '嘉陵区', '12011.3', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19172', '高坪区', '12011.2', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19171', '顺庆区', '12011.1', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19170', '南充市', '12011', 'nativeplace', '12011', '1');
INSERT INTO `dede_sys_enum` VALUES ('19169', '峨眉山市', '12010.11', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19168', '马边彝族自治县', '12010.10', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19167', '峨边彝族自治县', '12010.9', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19166', '沐川县', '12010.8', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19165', '夹江县', '12010.7', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19164', '井研县', '12010.6', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19163', '犍为县', '12010.5', 'nativeplace', '12011', '2');
INSERT INTO `dede_sys_enum` VALUES ('19162', '金口河区', '12010.4', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19161', '五通桥区', '12010.3', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19160', '沙湾区', '12010.2', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19159', '市中区', '12010.1', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19158', '乐山市', '12010', 'nativeplace', '12010', '1');
INSERT INTO `dede_sys_enum` VALUES ('19157', '隆昌县', '12009.5', 'nativeplace', '12010', '2');
INSERT INTO `dede_sys_enum` VALUES ('19156', '资中县', '12009.4', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19155', '威远县', '12009.3', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19154', '东兴区', '12009.2', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19153', '市中区', '12009.1', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19152', '内江市', '12009', 'nativeplace', '12009', '1');
INSERT INTO `dede_sys_enum` VALUES ('19151', '大英县', '12008.5', 'nativeplace', '12009', '2');
INSERT INTO `dede_sys_enum` VALUES ('19150', '射洪县', '12008.4', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19149', '蓬溪县', '12008.3', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19148', '安居区', '12008.2', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19147', '船山区', '12008.1', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19146', '遂宁市', '12008', 'nativeplace', '12008', '1');
INSERT INTO `dede_sys_enum` VALUES ('19145', '苍溪县', '12007.7', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19144', '剑阁县', '12007.6', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19143', '青川县', '12007.5', 'nativeplace', '12008', '2');
INSERT INTO `dede_sys_enum` VALUES ('19142', '旺苍县', '12007.4', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19141', '朝天区', '12007.3', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19140', '元坝区', '12007.2', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19139', '市中区', '12007.1', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19138', '广元市', '12007', 'nativeplace', '12007', '1');
INSERT INTO `dede_sys_enum` VALUES ('19137', '江油市', '12006.9', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19136', '平武县', '12006.8', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19135', '北川羌族自治县', '12006.7', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19134', '梓潼县', '12006.6', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19133', '安　县', '12006.5', 'nativeplace', '12007', '2');
INSERT INTO `dede_sys_enum` VALUES ('19132', '盐亭县', '12006.4', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19131', '三台县', '12006.3', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19130', '游仙区', '12006.2', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19129', '涪城区', '12006.1', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19128', '绵阳市', '12006', 'nativeplace', '12006', '1');
INSERT INTO `dede_sys_enum` VALUES ('19127', '绵竹市', '12005.6', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19126', '什邡市', '12005.5', 'nativeplace', '12006', '2');
INSERT INTO `dede_sys_enum` VALUES ('19125', '广汉市', '12005.4', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19124', '罗江县', '12005.3', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19123', '中江县', '12005.2', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19122', '旌阳区', '12005.1', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19121', '德阳市', '12005', 'nativeplace', '12005', '1');
INSERT INTO `dede_sys_enum` VALUES ('19120', '古蔺县', '12004.7', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19119', '叙永县', '12004.6', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19118', '合江县', '12004.5', 'nativeplace', '12005', '2');
INSERT INTO `dede_sys_enum` VALUES ('19117', '泸　县', '12004.4', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19116', '龙马潭区', '12004.3', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19115', '纳溪区', '12004.2', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19114', '江阳区', '12004.1', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19113', '泸州市', '12004', 'nativeplace', '12004', '1');
INSERT INTO `dede_sys_enum` VALUES ('19112', '盐边县', '12003.5', 'nativeplace', '12004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19111', '米易县', '12003.4', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19110', '仁和区', '12003.3', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19109', '西　区', '12003.2', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19108', '东　区', '12003.1', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19107', '攀枝花市', '12003', 'nativeplace', '12003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19106', '富顺县', '12002.6', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19105', '荣　县', '12002.5', 'nativeplace', '12003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19104', '沿滩区', '12002.4', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19103', '大安区', '12002.3', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19102', '贡井区', '12002.2', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19101', '自流井区', '12002.1', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19100', '自贡市', '12002', 'nativeplace', '12002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19099', '崇州市', '12001.19', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19098', '邛崃市', '12001.18', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19097', '彭州市', '12001.17', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19096', '都江堰市', '12001.16', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19095', '新津县', '12001.15', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19094', '蒲江县', '12001.14', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19093', '大邑县', '12001.13', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19092', '郫　县', '12001.12', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19091', '双流县', '12001.11', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19090', '金堂县', '12001.10', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19089', '温江区', '12001.9', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19088', '新都区', '12001.8', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19087', '青白江区', '12001.7', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19086', '龙泉驿区', '12001.6', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19085', '成华区', '12001.5', 'nativeplace', '12002', '2');
INSERT INTO `dede_sys_enum` VALUES ('19084', '武侯区', '12001.4', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19083', '金牛区', '12001.3', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19082', '青羊区', '12001.2', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19081', '锦江区', '12001.1', 'nativeplace', '12001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19080', '成都市', '12001', 'nativeplace', '12001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19079', '四川省', '12000', 'nativeplace', '12000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19078', '南川市', '11540', 'nativeplace', '11540', '1');
INSERT INTO `dede_sys_enum` VALUES ('19077', '永川市', '11539', 'nativeplace', '11539', '1');
INSERT INTO `dede_sys_enum` VALUES ('19076', '合川市', '11538', 'nativeplace', '11538', '1');
INSERT INTO `dede_sys_enum` VALUES ('19075', '江津市', '11537', 'nativeplace', '11537', '1');
INSERT INTO `dede_sys_enum` VALUES ('19074', '彭水苗族土家族自治县', '11536', 'nativeplace', '11536', '1');
INSERT INTO `dede_sys_enum` VALUES ('19073', '酉阳土家族苗族自治县', '11535', 'nativeplace', '11535', '1');
INSERT INTO `dede_sys_enum` VALUES ('19072', '秀山土家族苗族自治县', '11534', 'nativeplace', '11534', '1');
INSERT INTO `dede_sys_enum` VALUES ('19071', '石柱土家族自治县', '11533', 'nativeplace', '11533', '1');
INSERT INTO `dede_sys_enum` VALUES ('19070', '巫溪县', '11532', 'nativeplace', '11532', '1');
INSERT INTO `dede_sys_enum` VALUES ('19069', '巫山县', '11531', 'nativeplace', '11531', '1');
INSERT INTO `dede_sys_enum` VALUES ('19068', '奉节县', '11530', 'nativeplace', '11530', '1');
INSERT INTO `dede_sys_enum` VALUES ('19067', '云阳县', '11529', 'nativeplace', '11529', '1');
INSERT INTO `dede_sys_enum` VALUES ('19066', '开　县', '11528', 'nativeplace', '11528', '1');
INSERT INTO `dede_sys_enum` VALUES ('19065', '忠　县', '11527', 'nativeplace', '11527', '1');
INSERT INTO `dede_sys_enum` VALUES ('19064', '武隆县', '11526', 'nativeplace', '11526', '1');
INSERT INTO `dede_sys_enum` VALUES ('19063', '垫江县', '11525', 'nativeplace', '11525', '1');
INSERT INTO `dede_sys_enum` VALUES ('19062', '丰都县', '11524', 'nativeplace', '11524', '1');
INSERT INTO `dede_sys_enum` VALUES ('19061', '城口县', '11523', 'nativeplace', '11523', '1');
INSERT INTO `dede_sys_enum` VALUES ('19060', '梁平县', '11522', 'nativeplace', '11522', '1');
INSERT INTO `dede_sys_enum` VALUES ('19059', '璧山县', '11521', 'nativeplace', '11521', '1');
INSERT INTO `dede_sys_enum` VALUES ('19058', '荣昌县', '11520', 'nativeplace', '11520', '1');
INSERT INTO `dede_sys_enum` VALUES ('19057', '大足县', '11519', 'nativeplace', '11519', '1');
INSERT INTO `dede_sys_enum` VALUES ('19056', '铜梁县', '11518', 'nativeplace', '11518', '1');
INSERT INTO `dede_sys_enum` VALUES ('19055', '潼南县', '11517', 'nativeplace', '11517', '1');
INSERT INTO `dede_sys_enum` VALUES ('19054', '綦江县', '11516', 'nativeplace', '11516', '1');
INSERT INTO `dede_sys_enum` VALUES ('19053', '长寿区', '11515', 'nativeplace', '11515', '1');
INSERT INTO `dede_sys_enum` VALUES ('19052', '黔江区', '11514', 'nativeplace', '11514', '1');
INSERT INTO `dede_sys_enum` VALUES ('19051', '巴南区', '11513', 'nativeplace', '11513', '1');
INSERT INTO `dede_sys_enum` VALUES ('19050', '渝北区', '11512', 'nativeplace', '11512', '1');
INSERT INTO `dede_sys_enum` VALUES ('19049', '双桥区', '11511', 'nativeplace', '11511', '1');
INSERT INTO `dede_sys_enum` VALUES ('19048', '万盛区', '11510', 'nativeplace', '11510', '1');
INSERT INTO `dede_sys_enum` VALUES ('19047', '北碚区', '11509', 'nativeplace', '11509', '1');
INSERT INTO `dede_sys_enum` VALUES ('19046', '南岸区', '11508', 'nativeplace', '11508', '1');
INSERT INTO `dede_sys_enum` VALUES ('19045', '九龙坡区', '11507', 'nativeplace', '11507', '1');
INSERT INTO `dede_sys_enum` VALUES ('19044', '沙坪坝区', '11506', 'nativeplace', '11506', '1');
INSERT INTO `dede_sys_enum` VALUES ('19043', '江北区', '11505', 'nativeplace', '11505', '1');
INSERT INTO `dede_sys_enum` VALUES ('19042', '大渡口区', '11504', 'nativeplace', '11504', '1');
INSERT INTO `dede_sys_enum` VALUES ('19041', '渝中区', '11503', 'nativeplace', '11503', '1');
INSERT INTO `dede_sys_enum` VALUES ('19040', '涪陵区', '11502', 'nativeplace', '11502', '1');
INSERT INTO `dede_sys_enum` VALUES ('19039', '万州区', '11501', 'nativeplace', '11501', '1');
INSERT INTO `dede_sys_enum` VALUES ('19038', '重庆市', '11500', 'nativeplace', '11500', '0');
INSERT INTO `dede_sys_enum` VALUES ('19037', '中沙群岛的岛礁及其海域', '11003.19', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19036', '南沙群岛', '11003.18', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19035', '西沙群岛', '11003.17', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19034', '琼中黎族苗族自治县', '11003.16', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19033', '保亭黎族苗族自治县', '11003.15', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19032', '陵水黎族自治县', '11003.14', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19031', '乐东黎族自治县', '11003.13', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19030', '昌江黎族自治县', '11003.12', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19029', '白沙黎族自治县', '11003.11', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19028', '临高县', '11003.10', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19027', '澄迈县', '11003.9', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19026', '屯昌县', '11003.8', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19025', '定安县', '11003.7', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19024', '东方市', '11003.6', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19023', '万宁市', '11003.5', 'nativeplace', '11004', '2');
INSERT INTO `dede_sys_enum` VALUES ('19022', '文昌市', '11003.4', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19021', '儋州市', '11003.3', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19020', '琼海市', '11003.2', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19019', '五指山市', '11003.1', 'nativeplace', '11003', '2');
INSERT INTO `dede_sys_enum` VALUES ('19018', '省直辖县级行政单位', '11003', 'nativeplace', '11003', '1');
INSERT INTO `dede_sys_enum` VALUES ('19017', '三亚市', '11002', 'nativeplace', '11002', '1');
INSERT INTO `dede_sys_enum` VALUES ('19016', '美兰区', '11001.4', 'nativeplace', '11001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19015', '琼山区', '11001.3', 'nativeplace', '11001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19014', '龙华区', '11001.2', 'nativeplace', '11001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19013', '秀英区', '11001.1', 'nativeplace', '11001', '2');
INSERT INTO `dede_sys_enum` VALUES ('19012', '海口市', '11001', 'nativeplace', '11001', '1');
INSERT INTO `dede_sys_enum` VALUES ('19011', '海南省', '11000', 'nativeplace', '11000', '0');
INSERT INTO `dede_sys_enum` VALUES ('19010', '凭祥市', '10514.7', 'nativeplace', '10515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19009', '天等县', '10514.6', 'nativeplace', '10515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19008', '大新县', '10514.5', 'nativeplace', '10515', '2');
INSERT INTO `dede_sys_enum` VALUES ('19007', '龙州县', '10514.4', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19006', '宁明县', '10514.3', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19005', '扶绥县', '10514.2', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19004', '江洲区', '10514.1', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19003', '崇左市', '10514', 'nativeplace', '10514', '1');
INSERT INTO `dede_sys_enum` VALUES ('19002', '合山市', '10513.6', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19001', '金秀瑶族自治县', '10513.5', 'nativeplace', '10514', '2');
INSERT INTO `dede_sys_enum` VALUES ('19000', '武宣县', '10513.4', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18999', '象州县', '10513.3', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18998', '忻城县', '10513.2', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18997', '兴宾区', '10513.1', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18996', '来宾市', '10513', 'nativeplace', '10513', '1');
INSERT INTO `dede_sys_enum` VALUES ('18995', '宜州市', '10512.11', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18994', '大化瑶族自治县', '10512.10', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18993', '都安瑶族自治县', '10512.9', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18992', '巴马瑶族自治县', '10512.8', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18991', '环江毛南族自治县', '10512.7', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18990', '罗城仫佬族自治县', '10512.6', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18989', '东兰县', '10512.5', 'nativeplace', '10513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18988', '凤山县', '10512.4', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18987', '天峨县', '10512.3', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18986', '南丹县', '10512.2', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18985', '金城江区', '10512.1', 'nativeplace', '10512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18984', '河池市', '10512', 'nativeplace', '10512', '1');
INSERT INTO `dede_sys_enum` VALUES ('18983', '富川瑶族自治县', '10511.4', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18982', '钟山县', '10511.3', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18981', '昭平县', '10511.2', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18980', '八步区', '10511.1', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18979', '贺州市', '10511', 'nativeplace', '10511', '1');
INSERT INTO `dede_sys_enum` VALUES ('18978', '隆林各族自治县', '10510.12', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18977', '西林县', '10510.11', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18976', '田林县', '10510.10', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18975', '乐业县', '10510.9', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18974', '凌云县', '10510.8', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18973', '那坡县', '10510.7', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18972', '靖西县', '10510.6', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18971', '德保县', '10510.5', 'nativeplace', '10511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18970', '平果县', '10510.4', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18969', '田东县', '10510.3', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18968', '田阳县', '10510.2', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18967', '右江区', '10510.1', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18966', '百色市', '10510', 'nativeplace', '10510', '1');
INSERT INTO `dede_sys_enum` VALUES ('18965', '北流市', '10509.6', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18964', '兴业县', '10509.5', 'nativeplace', '10510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18963', '博白县', '10509.4', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18962', '陆川县', '10509.3', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18961', '容　县', '10509.2', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18960', '玉州区', '10509.1', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18959', '玉林市', '10509', 'nativeplace', '10509', '1');
INSERT INTO `dede_sys_enum` VALUES ('18958', '桂平市', '10508.5', 'nativeplace', '10509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18957', '平南县', '10508.4', 'nativeplace', '10508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18956', '覃塘区', '10508.3', 'nativeplace', '10508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18955', '港南区', '10508.2', 'nativeplace', '10508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18954', '港北区', '10508.1', 'nativeplace', '10508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18953', '贵港市', '10508', 'nativeplace', '10508', '1');
INSERT INTO `dede_sys_enum` VALUES ('18952', '浦北县', '10507.4', 'nativeplace', '10507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18951', '灵山县', '10507.3', 'nativeplace', '10507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18950', '钦北区', '10507.2', 'nativeplace', '10507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18949', '钦南区', '10507.1', 'nativeplace', '10507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18948', '钦州市', '10507', 'nativeplace', '10507', '1');
INSERT INTO `dede_sys_enum` VALUES ('18947', '东兴市', '10506.4', 'nativeplace', '10506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18946', '上思县', '10506.3', 'nativeplace', '10506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18945', '防城区', '10506.2', 'nativeplace', '10506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18944', '港口区', '10506.1', 'nativeplace', '10506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18943', '防城港市', '10506', 'nativeplace', '10506', '1');
INSERT INTO `dede_sys_enum` VALUES ('18942', '合浦县', '10505.4', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18941', '铁山港区', '10505.3', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18940', '银海区', '10505.2', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18939', '海城区', '10505.1', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18938', '北海市', '10505', 'nativeplace', '10505', '1');
INSERT INTO `dede_sys_enum` VALUES ('18937', '岑溪市', '10504.7', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18936', '蒙山县', '10504.6', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18935', '藤　县', '10504.5', 'nativeplace', '10505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18934', '苍梧县', '10504.4', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18933', '长洲区', '10504.3', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18932', '蝶山区', '10504.2', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18931', '万秀区', '10504.1', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18930', '梧州市', '10504', 'nativeplace', '10504', '1');
INSERT INTO `dede_sys_enum` VALUES ('18929', '恭城瑶族自治县', '10503.17', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18928', '荔蒲县', '10503.16', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18927', '平乐县', '10503.15', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18926', '资源县', '10503.14', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18925', '龙胜各族自治县', '10503.13', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18924', '灌阳县', '10503.12', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18923', '永福县', '10503.11', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18922', '兴安县', '10503.10', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18921', '全州县', '10503.9', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18920', '灵川县', '10503.8', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18919', '临桂县', '10503.7', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18918', '阳朔县', '10503.6', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18917', '雁山区', '10503.5', 'nativeplace', '10504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18916', '七星区', '10503.4', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18915', '象山区', '10503.3', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18914', '叠彩区', '10503.2', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18913', '秀峰区', '10503.1', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18912', '桂林市', '10503', 'nativeplace', '10503', '1');
INSERT INTO `dede_sys_enum` VALUES ('18911', '三江侗族自治县', '10502.10', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18910', '融水苗族自治县', '10502.9', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18909', '融安县', '10502.8', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18908', '鹿寨县', '10502.7', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18907', '柳城县', '10502.6', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18906', '柳江县', '10502.5', 'nativeplace', '10503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18905', '柳北区', '10502.4', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18904', '柳南区', '10502.3', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18903', '鱼峰区', '10502.2', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18902', '城中区', '10502.1', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18901', '柳州市', '10502', 'nativeplace', '10502', '1');
INSERT INTO `dede_sys_enum` VALUES ('18900', '横　县', '10501.12', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18899', '宾阳县', '10501.11', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18898', '上林县', '10501.10', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18897', '马山县', '10501.9', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18896', '隆安县', '10501.8', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18895', '武鸣县', '10501.7', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18894', '邕宁区', '10501.6', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18893', '良庆区', '10501.5', 'nativeplace', '10502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18892', '西乡塘区', '10501.4', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18891', '江南区', '10501.3', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18890', '青秀区', '10501.2', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18889', '兴宁区', '10501.1', 'nativeplace', '10501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18888', '南宁市', '10501', 'nativeplace', '10501', '1');
INSERT INTO `dede_sys_enum` VALUES ('18887', '广西壮族自治区', '10500', 'nativeplace', '10500', '0');
INSERT INTO `dede_sys_enum` VALUES ('18886', '罗定市', '10021.5', 'nativeplace', '10022', '2');
INSERT INTO `dede_sys_enum` VALUES ('18885', '云安县', '10021.4', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18884', '郁南县', '10021.3', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18883', '新兴县', '10021.2', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18882', '云城区', '10021.1', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18881', '云浮市', '10021', 'nativeplace', '10021', '1');
INSERT INTO `dede_sys_enum` VALUES ('18880', '普宁市', '10020.5', 'nativeplace', '10021', '2');
INSERT INTO `dede_sys_enum` VALUES ('18879', '惠来县', '10020.4', 'nativeplace', '10020', '2');
INSERT INTO `dede_sys_enum` VALUES ('18878', '揭西县', '10020.3', 'nativeplace', '10020', '2');
INSERT INTO `dede_sys_enum` VALUES ('18877', '揭东县', '10020.2', 'nativeplace', '10020', '2');
INSERT INTO `dede_sys_enum` VALUES ('18876', '榕城区', '10020.1', 'nativeplace', '10020', '2');
INSERT INTO `dede_sys_enum` VALUES ('18875', '揭阳市', '10020', 'nativeplace', '10020', '1');
INSERT INTO `dede_sys_enum` VALUES ('18874', '饶平县', '10019.2', 'nativeplace', '10019', '2');
INSERT INTO `dede_sys_enum` VALUES ('18873', '潮安县', '10019.1', 'nativeplace', '10019', '2');
INSERT INTO `dede_sys_enum` VALUES ('18872', '潮州市', '10019', 'nativeplace', '10019', '1');
INSERT INTO `dede_sys_enum` VALUES ('18871', '中山市', '10018', 'nativeplace', '10018', '1');
INSERT INTO `dede_sys_enum` VALUES ('18870', '东莞市', '10017', 'nativeplace', '10017', '1');
INSERT INTO `dede_sys_enum` VALUES ('18869', '连州市', '10016.8', 'nativeplace', '10017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18868', '英德市', '10016.7', 'nativeplace', '10017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18867', '清新县', '10016.6', 'nativeplace', '10017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18866', '连南瑶族自治县', '10016.5', 'nativeplace', '10017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18865', '连山壮族瑶族自治县', '10016.4', 'nativeplace', '10016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18864', '阳山县', '10016.3', 'nativeplace', '10016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18863', '佛冈县', '10016.2', 'nativeplace', '10016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18862', '清城区', '10016.1', 'nativeplace', '10016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18861', '清远市', '10016', 'nativeplace', '10016', '1');
INSERT INTO `dede_sys_enum` VALUES ('18860', '阳春市', '10015.4', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18859', '阳东县', '10015.3', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18858', '阳西县', '10015.2', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18857', '江城区', '10015.1', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18856', '阳江市', '10015', 'nativeplace', '10015', '1');
INSERT INTO `dede_sys_enum` VALUES ('18855', '东源县', '10014.6', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18854', '和平县', '10014.5', 'nativeplace', '10015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18853', '连平县', '10014.4', 'nativeplace', '10014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18852', '龙川县', '10014.3', 'nativeplace', '10014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18851', '紫金县', '10014.2', 'nativeplace', '10014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18850', '源城区', '10014.1', 'nativeplace', '10014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18849', '河源市', '10014', 'nativeplace', '10014', '1');
INSERT INTO `dede_sys_enum` VALUES ('18848', '陆丰市', '10013.4', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18847', '陆河县', '10013.3', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18846', '海丰县', '10013.2', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18845', '城　区', '10013.1', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18844', '汕尾市', '10013', 'nativeplace', '10013', '1');
INSERT INTO `dede_sys_enum` VALUES ('18843', '兴宁市', '10012.8', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18842', '蕉岭县', '10012.7', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18841', '平远县', '10012.6', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18840', '五华县', '10012.5', 'nativeplace', '10013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18839', '丰顺县', '10012.4', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18838', '大埔县', '10012.3', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18837', '梅　县', '10012.2', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18836', '梅江区', '10012.1', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18835', '梅州市', '10012', 'nativeplace', '10012', '1');
INSERT INTO `dede_sys_enum` VALUES ('18834', '龙门县', '10011.5', 'nativeplace', '10012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18833', '惠东县', '10011.4', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18832', '博罗县', '10011.3', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18831', '惠阳区', '10011.2', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18830', '惠城区', '10011.1', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18829', '惠州市', '10011', 'nativeplace', '10011', '1');
INSERT INTO `dede_sys_enum` VALUES ('18828', '四会市', '10010.8', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18827', '高要市', '10010.7', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18826', '德庆县', '10010.6', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18825', '封开县', '10010.5', 'nativeplace', '10011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18824', '怀集县', '10010.4', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18823', '广宁县', '10010.3', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18822', '鼎湖区', '10010.2', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18821', '端州区', '10010.1', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18820', '肇庆市', '10010', 'nativeplace', '10010', '1');
INSERT INTO `dede_sys_enum` VALUES ('18819', '信宜市', '10009.6', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18818', '化州市', '10009.5', 'nativeplace', '10010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18817', '高州市', '10009.4', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18816', '电白县', '10009.3', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18815', '茂港区', '10009.2', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18814', '茂南区', '10009.1', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18813', '茂名市', '10009', 'nativeplace', '10009', '1');
INSERT INTO `dede_sys_enum` VALUES ('18812', '吴川市', '10008.9', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18811', '雷州市', '10008.8', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18810', '廉江市', '10008.7', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18809', '徐闻县', '10008.6', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18808', '遂溪县', '10008.5', 'nativeplace', '10009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18807', '麻章区', '10008.4', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18806', '坡头区', '10008.3', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18805', '霞山区', '10008.2', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18804', '赤坎区', '10008.1', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18803', '湛江市', '10008', 'nativeplace', '10008', '1');
INSERT INTO `dede_sys_enum` VALUES ('18802', '恩平市', '10007.7', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18801', '鹤山市', '10007.6', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18800', '开平市', '10007.5', 'nativeplace', '10008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18799', '台山市', '10007.4', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18798', '新会区', '10007.3', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18797', '江海区', '10007.2', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18796', '蓬江区', '10007.1', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18795', '江门市', '10007', 'nativeplace', '10007', '1');
INSERT INTO `dede_sys_enum` VALUES ('18794', '高明区', '10006.5', 'nativeplace', '10007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18793', '三水区', '10006.4', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18792', '顺德区', '10006.3', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18791', '南海区', '10006.2', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18790', '禅城区', '10006.1', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18789', '佛山市', '10006', 'nativeplace', '10006', '1');
INSERT INTO `dede_sys_enum` VALUES ('18788', '南澳县', '10005.7', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18787', '澄海区', '10005.6', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18786', '潮南区', '10005.5', 'nativeplace', '10006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18785', '潮阳区', '10005.4', 'nativeplace', '10005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18784', '濠江区', '10005.3', 'nativeplace', '10005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18783', '金平区', '10005.2', 'nativeplace', '10005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18782', '龙湖区', '10005.1', 'nativeplace', '10005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18781', '汕头市', '10005', 'nativeplace', '10005', '1');
INSERT INTO `dede_sys_enum` VALUES ('18780', '金湾区', '10004.3', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18779', '斗门区', '10004.2', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18778', '洲区', '10004.1', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18777', '珠海市', '10004', 'nativeplace', '10004', '1');
INSERT INTO `dede_sys_enum` VALUES ('18776', '盐田区', '10003.6', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18775', '龙岗区', '10003.5', 'nativeplace', '10004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18774', '宝安区', '10003.4', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18773', '南山区', '10003.3', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18772', '福田区', '10003.2', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18771', '罗湖区', '10003.1', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18770', '深圳市', '10003', 'nativeplace', '10003', '1');
INSERT INTO `dede_sys_enum` VALUES ('18769', '南雄市', '10002.10', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18768', '乐昌市', '10002.9', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18767', '新丰县', '10002.8', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18766', '乳源瑶族自治县', '10002.7', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18765', '翁源县', '10002.6', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18764', '仁化县', '10002.5', 'nativeplace', '10003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18763', '始兴县', '10002.4', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18762', '曲江区', '10002.3', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18761', '浈江区', '10002.2', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18760', '武江区', '10002.1', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18759', '韶关市', '10002', 'nativeplace', '10002', '1');
INSERT INTO `dede_sys_enum` VALUES ('18758', '从化市', '10001.12', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18757', '增城市', '10001.11', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18756', '花都区', '10001.10', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18755', '番禺区', '10001.9', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18754', '黄埔区', '10001.8', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18753', '白云区', '10001.7', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18752', '芳村区', '10001.6', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18751', '天河区', '10001.5', 'nativeplace', '10002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18750', '海珠区', '10001.4', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18749', '越秀区', '10001.3', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18748', '荔湾区', '10001.2', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18747', '东山区', '10001.1', 'nativeplace', '10001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18746', '广州市', '10001', 'nativeplace', '10001', '1');
INSERT INTO `dede_sys_enum` VALUES ('18745', '广东省', '10000', 'nativeplace', '10000', '0');
INSERT INTO `dede_sys_enum` VALUES ('18744', '龙山县', '9514.8', 'nativeplace', '9515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18743', '永顺县', '9514.7', 'nativeplace', '9515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18742', '古丈县', '9514.6', 'nativeplace', '9515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18741', '保靖县', '9514.5', 'nativeplace', '9515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18740', '花垣县', '9514.4', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18739', '凤凰县', '9514.3', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18738', '泸溪县', '9514.2', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18737', '吉首市', '9514.1', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18736', '湘西土家族苗族自治州', '9514', 'nativeplace', '9514', '1');
INSERT INTO `dede_sys_enum` VALUES ('18735', '涟源市', '9513.5', 'nativeplace', '9514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18734', '冷水江市', '9513.4', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18733', '新化县', '9513.3', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18732', '双峰县', '9513.2', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18731', '娄星区', '9513.1', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18730', '娄底市', '9513', 'nativeplace', '9513', '1');
INSERT INTO `dede_sys_enum` VALUES ('18729', '洪江市', '9512.12', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18728', '通道侗族自治县', '9512.11', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18727', '靖州苗族侗族自治县', '9512.10', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18726', '芷江侗族自治县', '9512.9', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18725', '新晃侗族自治县', '9512.8', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18724', '麻阳苗族自治县', '9512.7', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18723', '会同县', '9512.6', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18722', '溆浦县', '9512.5', 'nativeplace', '9513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18721', '辰溪县', '9512.4', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18720', '沅陵县', '9512.3', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18719', '中方县', '9512.2', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18718', '鹤城区', '9512.1', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18717', '怀化市', '9512', 'nativeplace', '9512', '1');
INSERT INTO `dede_sys_enum` VALUES ('18716', '江华瑶族自治县', '9511.11', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18715', '新田县', '9511.10', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18714', '蓝山县', '9511.9', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18713', '宁远县', '9511.8', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18712', '江永县', '9511.7', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18711', '道　县', '9511.6', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18710', '双牌县', '9511.5', 'nativeplace', '9512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18709', '东安县', '9511.4', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18708', '祁阳县', '9511.3', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18707', '冷水滩区', '9511.2', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18706', '芝山区', '9511.1', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18705', '永州市', '9511', 'nativeplace', '9511', '1');
INSERT INTO `dede_sys_enum` VALUES ('18704', '资兴市', '9510.11', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18703', '安仁县', '9510.10', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18702', '桂东县', '9510.9', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18701', '汝城县', '9510.8', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18700', '临武县', '9510.7', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18699', '嘉禾县', '9510.6', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18698', '永兴县', '9510.5', 'nativeplace', '9511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18697', '宜章县', '9510.4', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18696', '桂阳县', '9510.3', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18695', '苏仙区', '9510.2', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18694', '北湖区', '9510.1', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18693', '郴州市', '9510', 'nativeplace', '9510', '1');
INSERT INTO `dede_sys_enum` VALUES ('18692', '沅江市', '9509.6', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18691', '安化县', '9509.5', 'nativeplace', '9510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18690', '桃江县', '9509.4', 'nativeplace', '9509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18689', '南　县', '9509.3', 'nativeplace', '9509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18688', '赫山区', '9509.2', 'nativeplace', '9509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18687', '资阳区', '9509.1', 'nativeplace', '9509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18686', '益阳市', '9509', 'nativeplace', '9509', '1');
INSERT INTO `dede_sys_enum` VALUES ('18685', '桑植县', '9508.4', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18684', '慈利县', '9508.3', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18683', '武陵源区', '9508.2', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18682', '永定区', '9508.1', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18681', '张家界市', '9508', 'nativeplace', '9508', '1');
INSERT INTO `dede_sys_enum` VALUES ('18680', '津市市', '9507.9', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18679', '石门县', '9507.8', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18678', '桃源县', '9507.7', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18677', '临澧县', '9507.6', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18676', '澧　县', '9507.5', 'nativeplace', '9508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18675', '汉寿县', '9507.4', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18674', '安乡县', '9507.3', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18673', '鼎城区', '9507.2', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18672', '武陵区', '9507.1', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18671', '常德市', '9507', 'nativeplace', '9507', '1');
INSERT INTO `dede_sys_enum` VALUES ('18670', '临湘市', '9506.9', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18669', '汨罗市', '9506.8', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18668', '平江县', '9506.7', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18667', '湘阴县', '9506.6', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18666', '华容县', '9506.5', 'nativeplace', '9507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18665', '岳阳县', '9506.4', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18664', '君山区', '9506.3', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18663', '云溪区', '9506.2', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18662', '岳阳楼区', '9506.1', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18661', '岳阳市', '9506', 'nativeplace', '9506', '1');
INSERT INTO `dede_sys_enum` VALUES ('18660', '武冈市', '9505.12', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18659', '城步苗族自治县', '9505.11', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18658', '新宁县', '9505.10', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18657', '绥宁县', '9505.9', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18656', '洞口县', '9505.8', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18655', '隆回县', '9505.7', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18654', '邵阳县', '9505.6', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18653', '新邵县', '9505.5', 'nativeplace', '9506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18652', '邵东县', '9505.4', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18651', '北塔区', '9505.3', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18650', '大祥区', '9505.2', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18649', '双清区', '9505.1', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18648', '邵阳市', '9505', 'nativeplace', '9505', '1');
INSERT INTO `dede_sys_enum` VALUES ('18647', '常宁市', '9504.12', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18646', '耒阳市', '9504.11', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18645', '祁东县', '9504.10', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18644', '衡东县', '9504.9', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18643', '衡山县', '9504.8', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18642', '衡南县', '9504.7', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18641', '衡阳县', '9504.6', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18640', '南岳区', '9504.5', 'nativeplace', '9505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18639', '蒸湘区', '9504.4', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18638', '石鼓区', '9504.3', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18637', '雁峰区', '9504.2', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18636', '珠晖区', '9504.1', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18635', '衡阳市', '9504', 'nativeplace', '9504', '1');
INSERT INTO `dede_sys_enum` VALUES ('18634', '韶山市', '9503.5', 'nativeplace', '9504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18633', '湘乡市', '9503.4', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18632', '湘潭县', '9503.3', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18631', '岳塘区', '9503.2', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18630', '雨湖区', '9503.1', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18629', '湘潭市', '9503', 'nativeplace', '9503', '1');
INSERT INTO `dede_sys_enum` VALUES ('18628', '醴陵市', '9502.9', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18627', '炎陵县', '9502.8', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18626', '茶陵县', '9502.7', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18625', '攸　县', '9502.6', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18624', '株洲县', '9502.5', 'nativeplace', '9503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18623', '天元区', '9502.4', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18622', '石峰区', '9502.3', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18621', '芦淞区', '9502.2', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18620', '荷塘区', '9502.1', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18619', '株洲市', '9502', 'nativeplace', '9502', '1');
INSERT INTO `dede_sys_enum` VALUES ('18618', '浏阳市', '9501.9', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18617', '宁乡县', '9501.8', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18616', '望城县', '9501.7', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18615', '长沙县', '9501.6', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18614', '雨花区', '9501.5', 'nativeplace', '9502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18613', '开福区', '9501.4', 'nativeplace', '9501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18612', '岳麓区', '9501.3', 'nativeplace', '9501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18611', '天心区', '9501.2', 'nativeplace', '9501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18610', '芙蓉区', '9501.1', 'nativeplace', '9501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18609', '长沙市', '9501', 'nativeplace', '9501', '1');
INSERT INTO `dede_sys_enum` VALUES ('18608', '湖南省', '9500', 'nativeplace', '9500', '0');
INSERT INTO `dede_sys_enum` VALUES ('18607', '神农架林区', '9014.4', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18606', '天门市', '9014.3', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18605', '潜江市', '9014.2', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18604', '仙桃市', '9014.1', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18603', '省直辖行政单位', '9014', 'nativeplace', '9014', '1');
INSERT INTO `dede_sys_enum` VALUES ('18602', '鹤峰县', '9013.8', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18601', '来凤县', '9013.7', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18600', '咸丰县', '9013.6', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18599', '宣恩县', '9013.5', 'nativeplace', '9014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18598', '巴东县', '9013.4', 'nativeplace', '9013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18597', '建始县', '9013.3', 'nativeplace', '9013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18596', '利川市', '9013.2', 'nativeplace', '9013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18595', '恩施市', '9013.1', 'nativeplace', '9013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18594', '恩施土家族苗族自治州', '9013', 'nativeplace', '9013', '1');
INSERT INTO `dede_sys_enum` VALUES ('18593', '广水市', '9012.2', 'nativeplace', '9012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18592', '曾都区', '9012.1', 'nativeplace', '9012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18591', '随州市', '9012', 'nativeplace', '9012', '1');
INSERT INTO `dede_sys_enum` VALUES ('18590', '赤壁市', '9011.6', 'nativeplace', '9012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18589', '通山县', '9011.5', 'nativeplace', '9012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18588', '崇阳县', '9011.4', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18587', '通城县', '9011.3', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18586', '嘉鱼县', '9011.2', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18585', '咸安区', '9011.1', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18584', '咸宁市', '9011', 'nativeplace', '9011', '1');
INSERT INTO `dede_sys_enum` VALUES ('18583', '武穴市', '9010.10', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18582', '麻城市', '9010.9', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18581', '黄梅县', '9010.8', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18580', '蕲春县', '9010.7', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18579', '浠水县', '9010.6', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18578', '英山县', '9010.5', 'nativeplace', '9011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18577', '罗田县', '9010.4', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18576', '红安县', '9010.3', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18575', '团风县', '9010.2', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18574', '州区', '9010.1', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18573', '黄冈市', '9010', 'nativeplace', '9010', '1');
INSERT INTO `dede_sys_enum` VALUES ('18572', '松滋市', '9009.8', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18571', '洪湖市', '9009.7', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18570', '石首市', '9009.6', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18569', '江陵县', '9009.5', 'nativeplace', '9010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18568', '监利县', '9009.4', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18567', '公安县', '9009.3', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18566', '荆州区', '9009.2', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18565', '沙市区', '9009.1', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18564', '荆州市', '9009', 'nativeplace', '9009', '1');
INSERT INTO `dede_sys_enum` VALUES ('18563', '汉川市', '9008.7', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18562', '孝南区', '9008.6', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18561', '孝昌县', '9008.5', 'nativeplace', '9009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18560', '大悟县', '9008.4', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18559', '云梦县', '9008.3', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18558', '应城市', '9008.2', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18557', '安陆市', '9008.1', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18556', '孝感市', '9008', 'nativeplace', '9008', '1');
INSERT INTO `dede_sys_enum` VALUES ('18555', '东宝区', '9007.5', 'nativeplace', '9008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18554', '掇刀区', '9007.4', 'nativeplace', '9007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18553', '京山县', '9007.3', 'nativeplace', '9007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18552', '沙洋县', '9007.2', 'nativeplace', '9007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18551', '钟祥市', '9007.1', 'nativeplace', '9007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18550', '荆门市', '9007', 'nativeplace', '9007', '1');
INSERT INTO `dede_sys_enum` VALUES ('18549', '鄂城区', '9006.3', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18548', '华容区', '9006.2', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18547', '梁子湖区', '9006.1', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18546', '鄂州市', '9006', 'nativeplace', '9006', '1');
INSERT INTO `dede_sys_enum` VALUES ('18545', '宜城市', '9005.9', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18544', '枣阳市', '9005.8', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18543', '老河口市', '9005.7', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18542', '保康县', '9005.6', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18541', '谷城县', '9005.5', 'nativeplace', '9006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18540', '南漳县', '9005.4', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18539', '襄阳区', '9005.3', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18538', '樊城区', '9005.2', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18537', '襄城区', '9005.1', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18536', '襄樊市', '9005', 'nativeplace', '9005', '1');
INSERT INTO `dede_sys_enum` VALUES ('18535', '枝江市', '9004.13', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18534', '当阳市', '9004.12', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18533', '宜都市', '9004.11', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18532', '五峰土家族自治县', '9004.10', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18531', '长阳土家族自治县', '9004.9', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18530', '秭归县', '9004.8', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18529', '兴山县', '9004.7', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18528', '远安县', '9004.6', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18527', '夷陵区', '9004.5', 'nativeplace', '9005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18526', '?亭区', '9004.4', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18525', '点军区', '9004.3', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18524', '伍家岗区', '9004.2', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18523', '西陵区', '9004.1', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18522', '宜昌市', '9004', 'nativeplace', '9004', '1');
INSERT INTO `dede_sys_enum` VALUES ('18521', '丹江口市', '9003.8', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18520', '房　县', '9003.7', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18519', '竹溪县', '9003.6', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18518', '竹山县', '9003.5', 'nativeplace', '9004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18517', '郧西县', '9003.4', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18516', '郧　县', '9003.3', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18515', '张湾区', '9003.2', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18514', '茅箭区', '9003.1', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18513', '十堰市', '9003', 'nativeplace', '9003', '1');
INSERT INTO `dede_sys_enum` VALUES ('18512', '大冶市', '9002.6', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18511', '阳新县', '9002.5', 'nativeplace', '9003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18510', '铁山区', '9002.4', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18509', '下陆区', '9002.3', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18508', '西塞山区', '9002.2', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18507', '黄石港区', '9002.1', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18506', '黄石市', '9002', 'nativeplace', '9002', '1');
INSERT INTO `dede_sys_enum` VALUES ('18505', '新洲区', '9001.13', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18504', '黄陂区', '9001.12', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18503', '江夏区', '9001.11', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18502', '蔡甸区', '9001.10', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18501', '汉南区', '9001.9', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18500', '东西湖区', '9001.8', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18499', '洪山区', '9001.7', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18498', '青山区', '9001.6', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18497', '武昌区', '9001.5', 'nativeplace', '9002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18496', '汉阳区', '9001.4', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18495', '乔口区', '9001.3', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18494', '江汉区', '9001.2', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18493', '江岸区', '9001.1', 'nativeplace', '9001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18492', '武汉市', '9001', 'nativeplace', '9001', '1');
INSERT INTO `dede_sys_enum` VALUES ('18491', '湖北省', '9000', 'nativeplace', '9000', '0');
INSERT INTO `dede_sys_enum` VALUES ('18490', '新蔡县', '8517.10', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18489', '遂平县', '8517.9', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18488', '汝南县', '8517.8', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18487', '泌阳县', '8517.7', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18486', '确山县', '8517.6', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18485', '正阳县', '8517.5', 'nativeplace', '8518', '2');
INSERT INTO `dede_sys_enum` VALUES ('18484', '平舆县', '8517.4', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18483', '上蔡县', '8517.3', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18482', '西平县', '8517.2', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18481', '驿城区', '8517.1', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18480', '驻马店市', '8517', 'nativeplace', '8517', '1');
INSERT INTO `dede_sys_enum` VALUES ('18479', '项城市', '8516.10', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18478', '鹿邑县', '8516.9', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18477', '太康县', '8516.8', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18476', '淮阳县', '8516.7', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18475', '郸城县', '8516.6', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18474', '沈丘县', '8516.5', 'nativeplace', '8517', '2');
INSERT INTO `dede_sys_enum` VALUES ('18473', '商水县', '8516.4', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18472', '西华县', '8516.3', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18471', '扶沟县', '8516.2', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18470', '川汇区', '8516.1', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18469', '周口市', '8516', 'nativeplace', '8516', '1');
INSERT INTO `dede_sys_enum` VALUES ('18468', '息　县', '8515.10', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18467', '淮滨县', '8515.9', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18466', '潢川县', '8515.8', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18465', '固始县', '8515.7', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18464', '商城县', '8515.6', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18463', '新　县', '8515.5', 'nativeplace', '8516', '2');
INSERT INTO `dede_sys_enum` VALUES ('18462', '光山县', '8515.4', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18461', '罗山县', '8515.3', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18460', '平桥区', '8515.2', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18459', '师河区', '8515.1', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18458', '信阳市', '8515', 'nativeplace', '8515', '1');
INSERT INTO `dede_sys_enum` VALUES ('18457', '永城市', '8514.9', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18456', '夏邑县', '8514.8', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18455', '虞城县', '8514.7', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18454', '柘城县', '8514.6', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18453', '宁陵县', '8514.5', 'nativeplace', '8515', '2');
INSERT INTO `dede_sys_enum` VALUES ('18452', '睢　县', '8514.4', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18451', '民权县', '8514.3', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18450', '睢阳区', '8514.2', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18449', '梁园区', '8514.1', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18448', '商丘市', '8514', 'nativeplace', '8514', '1');
INSERT INTO `dede_sys_enum` VALUES ('18447', '邓州市', '8513.13', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18446', '桐柏县', '8513.12', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18445', '新野县', '8513.11', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18444', '唐河县', '8513.10', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18443', '社旗县', '8513.9', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18442', '淅川县', '8513.8', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18441', '内乡县', '8513.7', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18440', '镇平县', '8513.6', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18439', '西峡县', '8513.5', 'nativeplace', '8514', '2');
INSERT INTO `dede_sys_enum` VALUES ('18438', '方城县', '8513.4', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18437', '南召县', '8513.3', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18436', '卧龙区', '8513.2', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18435', '宛城区', '8513.1', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18434', '南阳市', '8513', 'nativeplace', '8513', '1');
INSERT INTO `dede_sys_enum` VALUES ('18433', '灵宝市', '8512.6', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18432', '义马市', '8512.5', 'nativeplace', '8513', '2');
INSERT INTO `dede_sys_enum` VALUES ('18431', '卢氏县', '8512.4', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18430', '陕　县', '8512.3', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18429', '渑池县', '8512.2', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18428', '湖滨区', '8512.1', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18427', '三门峡市', '8512', 'nativeplace', '8512', '1');
INSERT INTO `dede_sys_enum` VALUES ('18426', '临颍县', '8511.5', 'nativeplace', '8512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18425', '舞阳县', '8511.4', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18424', '召陵区', '8511.3', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18423', '郾城区', '8511.2', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18422', '源汇区', '8511.1', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18421', '漯河市', '8511', 'nativeplace', '8511', '1');
INSERT INTO `dede_sys_enum` VALUES ('18420', '长葛市', '8510.6', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18419', '禹州市', '8510.5', 'nativeplace', '8511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18418', '襄城县', '8510.4', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18417', '鄢陵县', '8510.3', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18416', '许昌县', '8510.2', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18415', '魏都区', '8510.1', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18414', '许昌市', '8510', 'nativeplace', '8510', '1');
INSERT INTO `dede_sys_enum` VALUES ('18413', '濮阳县', '8509.6', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18412', '台前县', '8509.5', 'nativeplace', '8510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18411', '范　县', '8509.4', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18410', '南乐县', '8509.3', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18409', '清丰县', '8509.2', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18408', '华龙区', '8509.1', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18407', '濮阳市', '8509', 'nativeplace', '8509', '1');
INSERT INTO `dede_sys_enum` VALUES ('18406', '孟州市', '8508.11', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18405', '沁阳市', '8508.10', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18404', '济源市', '8508.9', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18403', '温　县', '8508.8', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18402', '武陟县', '8508.7', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18401', '博爱县', '8508.6', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18400', '修武县', '8508.5', 'nativeplace', '8509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18399', '山阳区', '8508.4', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18398', '马村区', '8508.3', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18397', '中站区', '8508.2', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18396', '解放区', '8508.1', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18395', '焦作市', '8508', 'nativeplace', '8508', '1');
INSERT INTO `dede_sys_enum` VALUES ('18394', '辉县市', '8507.12', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18393', '卫辉市', '8507.11', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18392', '长垣县', '8507.10', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18391', '封丘县', '8507.9', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18390', '延津县', '8507.8', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18389', '原阳县', '8507.7', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18388', '获嘉县', '8507.6', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18387', '新乡县', '8507.5', 'nativeplace', '8508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18386', '牧野区', '8507.4', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18385', '凤泉区', '8507.3', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18384', '卫滨区', '8507.2', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18383', '红旗区', '8507.1', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18382', '新乡市', '8507', 'nativeplace', '8507', '1');
INSERT INTO `dede_sys_enum` VALUES ('18381', '淇　县', '8506.5', 'nativeplace', '8507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18380', '浚　县', '8506.4', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18379', '淇滨区', '8506.3', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18378', '山城区', '8506.2', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18377', '鹤山区', '8506.1', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18376', '鹤壁市', '8506', 'nativeplace', '8506', '1');
INSERT INTO `dede_sys_enum` VALUES ('18375', '林州市', '8505.9', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18374', '内黄县', '8505.8', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18373', '滑　县', '8505.7', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18372', '汤阴县', '8505.6', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18371', '安阳县', '8505.5', 'nativeplace', '8506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18370', '龙安区', '8505.4', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18369', '殷都区', '8505.3', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18368', '北关区', '8505.2', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18367', '文峰区', '8505.1', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18366', '安阳市', '8505', 'nativeplace', '8505', '1');
INSERT INTO `dede_sys_enum` VALUES ('18365', '汝州市', '8504.10', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18364', '舞钢市', '8504.9', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18363', '郏　县', '8504.8', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18362', '鲁山县', '8504.7', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18361', '叶　县', '8504.6', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18360', '宝丰县', '8504.5', 'nativeplace', '8505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18359', '湛河区', '8504.4', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18358', '石龙区', '8504.3', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18357', '卫东区', '8504.2', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18356', '新华区', '8504.1', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18355', '平顶山市', '8504', 'nativeplace', '8504', '1');
INSERT INTO `dede_sys_enum` VALUES ('18354', '偃师市', '8503.15', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18353', '伊川县', '8503.14', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18352', '洛宁县', '8503.13', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18351', '宜阳县', '8503.12', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18350', '汝阳县', '8503.11', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18349', '嵩　县', '8503.10', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18348', '栾川县', '8503.9', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18347', '新安县', '8503.8', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18346', '孟津县', '8503.7', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18345', '洛龙区', '8503.6', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18344', '吉利区', '8503.5', 'nativeplace', '8504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18343', '涧西区', '8503.4', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18342', '廛河回族区', '8503.3', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18341', '西工区', '8503.2', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18340', '老城区', '8503.1', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18339', '洛阳市', '8503', 'nativeplace', '8503', '1');
INSERT INTO `dede_sys_enum` VALUES ('18338', '兰考县', '8502.10', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18337', '开封县', '8502.9', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18336', '尉氏县', '8502.8', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18335', '通许县', '8502.7', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18334', '杞　县', '8502.6', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18333', '郊　区', '8502.5', 'nativeplace', '8503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18332', '南关区', '8502.4', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18331', '鼓楼区', '8502.3', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18330', '顺河回族区', '8502.2', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18329', '龙亭区', '8502.1', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18328', '开封市', '8502', 'nativeplace', '8502', '1');
INSERT INTO `dede_sys_enum` VALUES ('18327', '登封市', '8501.12', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18326', '新郑市', '8501.11', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18325', '新密市', '8501.10', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18324', '荥阳市', '8501.9', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18323', '巩义市', '8501.8', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18322', '中牟县', '8501.7', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18321', '邙山区', '8501.6', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18320', '上街区', '8501.5', 'nativeplace', '8502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18319', '金水区', '8501.4', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18318', '管城回族区', '8501.3', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18317', '二七区', '8501.2', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18316', '中原区', '8501.1', 'nativeplace', '8501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18315', '郑州市', '8501', 'nativeplace', '8501', '1');
INSERT INTO `dede_sys_enum` VALUES ('18314', '河南省', '8500', 'nativeplace', '8500', '0');
INSERT INTO `dede_sys_enum` VALUES ('18313', '东明县', '8016.9', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18312', '定陶县', '8016.8', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18311', '鄄城县', '8016.7', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18310', '郓城县', '8016.6', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18309', '巨野县', '8016.5', 'nativeplace', '8017', '2');
INSERT INTO `dede_sys_enum` VALUES ('18308', '成武县', '8016.4', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18307', '单　县', '8016.3', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18306', '曹　县', '8016.2', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18305', '牡丹区', '8016.1', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18304', '荷泽市', '8016', 'nativeplace', '8016', '1');
INSERT INTO `dede_sys_enum` VALUES ('18303', '邹平县', '8015.7', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18302', '博兴县', '8015.6', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18301', '沾化县', '8015.5', 'nativeplace', '8016', '2');
INSERT INTO `dede_sys_enum` VALUES ('18300', '无棣县', '8015.4', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18299', '阳信县', '8015.3', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18298', '惠民县', '8015.2', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18297', '滨城区', '8015.1', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18296', '滨州市', '8015', 'nativeplace', '8015', '1');
INSERT INTO `dede_sys_enum` VALUES ('18295', '临清市', '8014.8', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18294', '高唐县', '8014.7', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18293', '冠　县', '8014.6', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18292', '东阿县', '8014.5', 'nativeplace', '8015', '2');
INSERT INTO `dede_sys_enum` VALUES ('18291', '茌平县', '8014.4', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18290', '莘　县', '8014.3', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18289', '阳谷县', '8014.2', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18288', '东昌府区', '8014.1', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18287', '聊城市', '8014', 'nativeplace', '8014', '1');
INSERT INTO `dede_sys_enum` VALUES ('18286', '禹城市', '8013.11', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18285', '乐陵市', '8013.10', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18284', '武城县', '8013.9', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18283', '夏津县', '8013.8', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18282', '平原县', '8013.7', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18281', '齐河县', '8013.6', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18280', '临邑县', '8013.5', 'nativeplace', '8014', '2');
INSERT INTO `dede_sys_enum` VALUES ('18279', '庆云县', '8013.4', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18278', '宁津县', '8013.3', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18277', '陵　县', '8013.2', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18276', '德城区', '8013.1', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18275', '德州市', '8013', 'nativeplace', '8013', '1');
INSERT INTO `dede_sys_enum` VALUES ('18274', '临沭县', '8012.12', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18273', '蒙阴县', '8012.11', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18272', '莒南县', '8012.10', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18271', '平邑县', '8012.9', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18270', '费　县', '8012.8', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18269', '苍山县', '8012.7', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18268', '沂水县', '8012.6', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18267', '郯城县', '8012.5', 'nativeplace', '8013', '2');
INSERT INTO `dede_sys_enum` VALUES ('18266', '沂南县', '8012.4', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18265', '河东区', '8012.3', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18264', '罗庄区', '8012.2', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18263', '兰山区', '8012.1', 'nativeplace', '8012', '2');
INSERT INTO `dede_sys_enum` VALUES ('18262', '临沂市', '8012', 'nativeplace', '8012', '1');
INSERT INTO `dede_sys_enum` VALUES ('18261', '钢城区', '8011.2', 'nativeplace', '8011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18260', '莱城区', '8011.1', 'nativeplace', '8011', '2');
INSERT INTO `dede_sys_enum` VALUES ('18259', '莱芜市', '8011', 'nativeplace', '8011', '1');
INSERT INTO `dede_sys_enum` VALUES ('18258', '莒　县', '8010.4', 'nativeplace', '8010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18257', '五莲县', '8010.3', 'nativeplace', '8010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18256', '岚山区', '8010.2', 'nativeplace', '8010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18255', '东港区', '8010.1', 'nativeplace', '8010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18254', '日照市', '8010', 'nativeplace', '8010', '1');
INSERT INTO `dede_sys_enum` VALUES ('18253', '乳山市', '8009.4', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18252', '荣成市', '8009.3', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18251', '文登市', '8009.2', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18250', '环翠区', '8009.1', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18249', '威海市', '8009', 'nativeplace', '8009', '1');
INSERT INTO `dede_sys_enum` VALUES ('18248', '肥城市', '8008.6', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18247', '新泰市', '8008.5', 'nativeplace', '8009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18246', '东平县', '8008.4', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18245', '宁阳县', '8008.3', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18244', '岱岳区', '8008.2', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18243', '泰山区', '8008.1', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18242', '泰安市', '8008', 'nativeplace', '8008', '1');
INSERT INTO `dede_sys_enum` VALUES ('18241', '邹城市', '8007.12', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18240', '兖州市', '8007.11', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18239', '曲阜市', '8007.10', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18238', '梁山县', '8007.9', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18237', '泗水县', '8007.8', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18236', '汶上县', '8007.7', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18235', '嘉祥县', '8007.6', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18234', '金乡县', '8007.5', 'nativeplace', '8008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18233', '鱼台县', '8007.4', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18232', '微山县', '8007.3', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18231', '任城区', '8007.2', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18230', '市中区', '8007.1', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18229', '济宁市', '8007', 'nativeplace', '8007', '1');
INSERT INTO `dede_sys_enum` VALUES ('18228', '昌邑市', '8006.12', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18227', '高密市', '8006.11', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18226', '安丘市', '8006.10', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18225', '寿光市', '8006.9', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18224', '诸城市', '8006.8', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18223', '青州市', '8006.7', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18222', '昌乐县', '8006.6', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18221', '临朐县', '8006.5', 'nativeplace', '8007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18220', '奎文区', '8006.4', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18219', '坊子区', '8006.3', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18218', '寒亭区', '8006.2', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18217', '潍城区', '8006.1', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18216', '潍坊市', '8006', 'nativeplace', '8006', '1');
INSERT INTO `dede_sys_enum` VALUES ('18215', '海阳市', '8005.12', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18214', '栖霞市', '8005.11', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18213', '招远市', '8005.10', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18212', '蓬莱市', '8005.9', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18211', '莱州市', '8005.8', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18210', '莱阳市', '8005.7', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18209', '龙口市', '8005.6', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18208', '长岛县', '8005.5', 'nativeplace', '8006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18207', '莱山区', '8005.4', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18206', '牟平区', '8005.3', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18205', '福山区', '8005.2', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18204', '芝罘区', '8005.1', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18203', '烟台市', '8005', 'nativeplace', '8005', '1');
INSERT INTO `dede_sys_enum` VALUES ('18202', '滕州市', '8004.6', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18201', '山亭区', '8004.5', 'nativeplace', '8005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18200', '台儿庄区', '8004.4', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18199', '峄城区', '8004.3', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18198', '薛城区', '8004.2', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18197', '市中区', '8004.1', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18196', '枣庄市', '8004', 'nativeplace', '8004', '1');
INSERT INTO `dede_sys_enum` VALUES ('18195', '沂源县', '8003.8', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18194', '高青县', '8003.7', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18193', '桓台县', '8003.6', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18192', '周村区', '8003.5', 'nativeplace', '8004', '2');
INSERT INTO `dede_sys_enum` VALUES ('18191', '临淄区', '8003.4', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18190', '博山区', '8003.3', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18189', '张店区', '8003.2', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18188', '淄川区', '8003.1', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18187', '淄博市', '8003', 'nativeplace', '8003', '1');
INSERT INTO `dede_sys_enum` VALUES ('18186', '莱西市', '8002.12', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18185', '胶南市', '8002.11', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18184', '平度市', '8002.10', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18183', '即墨市', '8002.9', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18182', '胶州市', '8002.8', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18181', '城阳区', '8002.7', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18180', '李沧区', '8002.6', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18179', '崂山区', '8002.5', 'nativeplace', '8003', '2');
INSERT INTO `dede_sys_enum` VALUES ('18178', '黄岛区', '8002.4', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18177', '四方区', '8002.3', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18176', '市北区', '8002.2', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18175', '市南区', '8002.1', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18174', '青岛市', '8002', 'nativeplace', '8002', '1');
INSERT INTO `dede_sys_enum` VALUES ('18173', '章丘市', '8001.10', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18172', '商河县', '8001.9', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18171', '济阳县', '8001.8', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18170', '平阴县', '8001.7', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18169', '长清区', '8001.6', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18168', '历城区', '8001.5', 'nativeplace', '8002', '2');
INSERT INTO `dede_sys_enum` VALUES ('18167', '天桥区', '8001.4', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18166', '槐荫区', '8001.3', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18165', '市中区', '8001.2', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18164', '历下区', '8001.1', 'nativeplace', '8001', '2');
INSERT INTO `dede_sys_enum` VALUES ('18163', '济南市', '8001', 'nativeplace', '8001', '1');
INSERT INTO `dede_sys_enum` VALUES ('18162', '山东省', '8000', 'nativeplace', '8000', '0');
INSERT INTO `dede_sys_enum` VALUES ('18161', '德兴市', '7511.12', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18160', '婺源县', '7511.11', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18159', '万年县', '7511.10', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18158', '鄱阳县', '7511.9', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18157', '余干县', '7511.8', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18156', '弋阳县', '7511.7', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18155', '横峰县', '7511.6', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18154', '铅山县', '7511.5', 'nativeplace', '7512', '2');
INSERT INTO `dede_sys_enum` VALUES ('18153', '玉山县', '7511.4', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18152', '广丰县', '7511.3', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18151', '上饶县', '7511.2', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18150', '信州区', '7511.1', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18149', '上饶市', '7511', 'nativeplace', '7511', '1');
INSERT INTO `dede_sys_enum` VALUES ('18148', '广昌县', '7510.11', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18147', '东乡县', '7510.10', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18146', '资溪县', '7510.9', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18145', '金溪县', '7510.8', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18144', '宜黄县', '7510.7', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18143', '乐安县', '7510.6', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18142', '崇仁县', '7510.5', 'nativeplace', '7511', '2');
INSERT INTO `dede_sys_enum` VALUES ('18141', '南丰县', '7510.4', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18140', '黎川县', '7510.3', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18139', '南城县', '7510.2', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18138', '临川区', '7510.1', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18137', '抚州市', '7510', 'nativeplace', '7510', '1');
INSERT INTO `dede_sys_enum` VALUES ('18136', '高安市', '7509.10', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18135', '樟树市', '7509.9', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18134', '丰城市', '7509.8', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18133', '铜鼓县', '7509.7', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18132', '靖安县', '7509.6', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18131', '宜丰县', '7509.5', 'nativeplace', '7510', '2');
INSERT INTO `dede_sys_enum` VALUES ('18130', '上高县', '7509.4', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18129', '万载县', '7509.3', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18128', '奉新县', '7509.2', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18127', '袁州区', '7509.1', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18126', '宜春市', '7509', 'nativeplace', '7509', '1');
INSERT INTO `dede_sys_enum` VALUES ('18125', '井冈山市', '7508.13', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18124', '永新县', '7508.12', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18123', '安福县', '7508.11', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18122', '万安县', '7508.10', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18121', '遂川县', '7508.9', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18120', '泰和县', '7508.8', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18119', '永丰县', '7508.7', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18118', '新干县', '7508.6', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18117', '峡江县', '7508.5', 'nativeplace', '7509', '2');
INSERT INTO `dede_sys_enum` VALUES ('18116', '吉水县', '7508.4', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18115', '吉安县', '7508.3', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18114', '青原区', '7508.2', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18113', '吉州区', '7508.1', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18112', '吉安市', '7508', 'nativeplace', '7508', '1');
INSERT INTO `dede_sys_enum` VALUES ('18111', '南康市', '7507.18', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18110', '瑞金市', '7507.17', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18109', '石城县', '7507.16', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18108', '寻乌县', '7507.15', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18107', '会昌县', '7507.14', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18106', '兴国县', '7507.13', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18105', '于都县', '7507.12', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18104', '宁都县', '7507.11', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18103', '全南县', '7507.10', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18102', '定南县', '7507.9', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18101', '龙南县', '7507.8', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18100', '安远县', '7507.7', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18099', '崇义县', '7507.6', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18098', '上犹县', '7507.5', 'nativeplace', '7508', '2');
INSERT INTO `dede_sys_enum` VALUES ('18097', '大余县', '7507.4', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18096', '信丰县', '7507.3', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18095', '赣　县', '7507.2', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18094', '章贡区', '7507.1', 'nativeplace', '7507', '2');
INSERT INTO `dede_sys_enum` VALUES ('18093', '赣州市', '7507', 'nativeplace', '7507', '1');
INSERT INTO `dede_sys_enum` VALUES ('18092', '贵溪市', '7506.3', 'nativeplace', '7506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18091', '余江县', '7506.2', 'nativeplace', '7506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18090', '月湖区', '7506.1', 'nativeplace', '7506', '2');
INSERT INTO `dede_sys_enum` VALUES ('18089', '鹰潭市', '7506', 'nativeplace', '7506', '1');
INSERT INTO `dede_sys_enum` VALUES ('18088', '分宜县', '7505.2', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18087', '渝水区', '7505.1', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18086', '新余市', '7505', 'nativeplace', '7505', '1');
INSERT INTO `dede_sys_enum` VALUES ('18085', '瑞昌市', '7504.12', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18084', '彭泽县', '7504.11', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18083', '湖口县', '7504.10', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18082', '都昌县', '7504.9', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18081', '星子县', '7504.8', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18080', '德安县', '7504.7', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18079', '永修县', '7504.6', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18078', '修水县', '7504.5', 'nativeplace', '7505', '2');
INSERT INTO `dede_sys_enum` VALUES ('18077', '武宁县', '7504.4', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18076', '九江县', '7504.3', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18075', '浔阳区', '7504.2', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18074', '庐山区', '7504.1', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18073', '九江市', '7504', 'nativeplace', '7504', '1');
INSERT INTO `dede_sys_enum` VALUES ('18072', '芦溪县', '7503.5', 'nativeplace', '7504', '2');
INSERT INTO `dede_sys_enum` VALUES ('18071', '上栗县', '7503.4', 'nativeplace', '7503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18070', '莲花县', '7503.3', 'nativeplace', '7503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18069', '湘东区', '7503.2', 'nativeplace', '7503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18068', '安源区', '7503.1', 'nativeplace', '7503', '2');
INSERT INTO `dede_sys_enum` VALUES ('18067', '萍乡市', '7503', 'nativeplace', '7503', '1');
INSERT INTO `dede_sys_enum` VALUES ('18066', '乐平市', '7502.4', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18065', '浮梁县', '7502.3', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18064', '珠山区', '7502.2', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18063', '昌江区', '7502.1', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18062', '景德镇市', '7502', 'nativeplace', '7502', '1');
INSERT INTO `dede_sys_enum` VALUES ('18061', '进贤县', '7501.9', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18060', '安义县', '7501.8', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18059', '新建县', '7501.7', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18058', '南昌县', '7501.6', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18057', '青山湖区', '7501.5', 'nativeplace', '7502', '2');
INSERT INTO `dede_sys_enum` VALUES ('18056', '湾里区', '7501.4', 'nativeplace', '7501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18055', '青云谱区', '7501.3', 'nativeplace', '7501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18054', '西湖区', '7501.2', 'nativeplace', '7501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18053', '东湖区', '7501.1', 'nativeplace', '7501', '2');
INSERT INTO `dede_sys_enum` VALUES ('18052', '南昌市', '7501', 'nativeplace', '7501', '1');
INSERT INTO `dede_sys_enum` VALUES ('18051', '江西省', '7500', 'nativeplace', '7500', '0');
INSERT INTO `dede_sys_enum` VALUES ('18050', '福鼎市', '7009.9', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18049', '福安市', '7009.8', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18048', '柘荣县', '7009.7', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18047', '周宁县', '7009.6', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18046', '寿宁县', '7009.5', 'nativeplace', '7010', '2');
INSERT INTO `dede_sys_enum` VALUES ('18045', '屏南县', '7009.4', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18044', '古田县', '7009.3', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18043', '霞浦县', '7009.2', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18042', '蕉城区', '7009.1', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18041', '宁德市', '7009', 'nativeplace', '7009', '1');
INSERT INTO `dede_sys_enum` VALUES ('18040', '漳平市', '7008.7', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18039', '连城县', '7008.6', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18038', '武平县', '7008.5', 'nativeplace', '7009', '2');
INSERT INTO `dede_sys_enum` VALUES ('18037', '上杭县', '7008.4', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18036', '永定县', '7008.3', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18035', '长汀县', '7008.2', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18034', '新罗区', '7008.1', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18033', '龙岩市', '7008', 'nativeplace', '7008', '1');
INSERT INTO `dede_sys_enum` VALUES ('18032', '建阳市', '7007.10', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18031', '建瓯市', '7007.9', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18030', '武夷山市', '7007.8', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18029', '邵武市', '7007.7', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18028', '政和县', '7007.6', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18027', '松溪县', '7007.5', 'nativeplace', '7008', '2');
INSERT INTO `dede_sys_enum` VALUES ('18026', '光泽县', '7007.4', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18025', '浦城县', '7007.3', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18024', '顺昌县', '7007.2', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18023', '延平区', '7007.1', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18022', '南平市', '7007', 'nativeplace', '7007', '1');
INSERT INTO `dede_sys_enum` VALUES ('18021', '龙海市', '7006.11', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18020', '华安县', '7006.10', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18019', '平和县', '7006.9', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18018', '南靖县', '7006.8', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18017', '东山县', '7006.7', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18016', '长泰县', '7006.6', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18015', '诏安县', '7006.5', 'nativeplace', '7007', '2');
INSERT INTO `dede_sys_enum` VALUES ('18014', '漳浦县', '7006.4', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18013', '云霄县', '7006.3', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18012', '龙文区', '7006.2', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18011', '芗城区', '7006.1', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18010', '漳州市', '7006', 'nativeplace', '7006', '1');
INSERT INTO `dede_sys_enum` VALUES ('18009', '南安市', '7005.12', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18008', '晋江市', '7005.11', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18007', '石狮市', '7005.10', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18006', '金门县', '7005.9', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18005', '德化县', '7005.8', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18004', '永春县', '7005.7', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18003', '安溪县', '7005.6', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18002', '惠安县', '7005.5', 'nativeplace', '7006', '2');
INSERT INTO `dede_sys_enum` VALUES ('18001', '泉港区', '7005.4', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('18000', '洛江区', '7005.3', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17999', '丰泽区', '7005.2', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17998', '鲤城区', '7005.1', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17997', '泉州市', '7005', 'nativeplace', '7005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17996', '永安市', '7004.12', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17995', '建宁县', '7004.11', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17994', '泰宁县', '7004.10', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17993', '将乐县', '7004.9', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17992', '沙　县', '7004.8', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17991', '尤溪县', '7004.7', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17990', '大田县', '7004.6', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17989', '宁化县', '7004.5', 'nativeplace', '7005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17988', '清流县', '7004.4', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17987', '明溪县', '7004.3', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17986', '三元区', '7004.2', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17985', '梅列区', '7004.1', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17984', '三明市', '7004', 'nativeplace', '7004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17983', '仙游县', '7003.5', 'nativeplace', '7004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17982', '秀屿区', '7003.4', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17981', '荔城区', '7003.3', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17980', '涵江区', '7003.2', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17979', '城厢区', '7003.1', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17978', '莆田市', '7003', 'nativeplace', '7003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17977', '翔安区', '7002.6', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17976', '同安区', '7002.5', 'nativeplace', '7003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17975', '集美区', '7002.4', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17974', '湖里区', '7002.3', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17973', '海沧区', '7002.2', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17972', '思明区', '7002.1', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17971', '厦门市', '7002', 'nativeplace', '7002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17970', '长乐市', '7001.13', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17969', '福清市', '7001.12', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17968', '平潭县', '7001.11', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17967', '永泰县', '7001.10', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17966', '闽清县', '7001.9', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17965', '罗源县', '7001.8', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17964', '连江县', '7001.7', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17963', '闽侯县', '7001.6', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17962', '晋安区', '7001.5', 'nativeplace', '7002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17961', '马尾区', '7001.4', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17960', '仓山区', '7001.3', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17959', '台江区', '7001.2', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17958', '鼓楼区', '7001.1', 'nativeplace', '7001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17957', '福州市', '7001', 'nativeplace', '7001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17956', '福建省', '7000', 'nativeplace', '7000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17955', '宁国市', '6517.7', 'nativeplace', '6518', '2');
INSERT INTO `dede_sys_enum` VALUES ('17954', '旌德县', '6517.6', 'nativeplace', '6518', '2');
INSERT INTO `dede_sys_enum` VALUES ('17953', '绩溪县', '6517.5', 'nativeplace', '6518', '2');
INSERT INTO `dede_sys_enum` VALUES ('17952', '泾　县', '6517.4', 'nativeplace', '6517', '2');
INSERT INTO `dede_sys_enum` VALUES ('17951', '广德县', '6517.3', 'nativeplace', '6517', '2');
INSERT INTO `dede_sys_enum` VALUES ('17950', '郎溪县', '6517.2', 'nativeplace', '6517', '2');
INSERT INTO `dede_sys_enum` VALUES ('17949', '宣州区', '6517.1', 'nativeplace', '6517', '2');
INSERT INTO `dede_sys_enum` VALUES ('17948', '宣城市', '6517', 'nativeplace', '6517', '1');
INSERT INTO `dede_sys_enum` VALUES ('17947', '青阳县', '6516.4', 'nativeplace', '6516', '2');
INSERT INTO `dede_sys_enum` VALUES ('17946', '石台县', '6516.3', 'nativeplace', '6516', '2');
INSERT INTO `dede_sys_enum` VALUES ('17945', '东至县', '6516.2', 'nativeplace', '6516', '2');
INSERT INTO `dede_sys_enum` VALUES ('17944', '贵池区', '6516.1', 'nativeplace', '6516', '2');
INSERT INTO `dede_sys_enum` VALUES ('17943', '池州市', '6516', 'nativeplace', '6516', '1');
INSERT INTO `dede_sys_enum` VALUES ('17942', '利辛县', '6515.4', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17941', '蒙城县', '6515.3', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17940', '涡阳县', '6515.2', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17939', '谯城区', '6515.1', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17938', '亳州市', '6515', 'nativeplace', '6515', '1');
INSERT INTO `dede_sys_enum` VALUES ('17937', '霍山县', '6514.7', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17936', '金寨县', '6514.6', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17935', '舒城县', '6514.5', 'nativeplace', '6515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17934', '霍邱县', '6514.4', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17933', '寿　县', '6514.3', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17932', '裕安区', '6514.2', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17931', '金安区', '6514.1', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17930', '六安市', '6514', 'nativeplace', '6514', '1');
INSERT INTO `dede_sys_enum` VALUES ('17929', '和　县', '6513.5', 'nativeplace', '6514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17928', '含山县', '6513.4', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17927', '无为县', '6513.3', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17926', '庐江县', '6513.2', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17925', '居巢区', '6513.1', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17924', '巢湖市', '6513', 'nativeplace', '6513', '1');
INSERT INTO `dede_sys_enum` VALUES ('17923', '泗　县', '6512.5', 'nativeplace', '6513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17922', '灵璧县', '6512.4', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17921', '萧　县', '6512.3', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17920', '砀山县', '6512.2', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17919', '墉桥区', '6512.1', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17918', '宿州市', '6512', 'nativeplace', '6512', '1');
INSERT INTO `dede_sys_enum` VALUES ('17917', '界首市', '6511.8', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17916', '颍上县', '6511.7', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17915', '阜南县', '6511.6', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17914', '太和县', '6511.5', 'nativeplace', '6512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17913', '临泉县', '6511.4', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17912', '颍泉区', '6511.3', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17911', '颍东区', '6511.2', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17910', '颍州区', '6511.1', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17909', '阜阳市', '6511', 'nativeplace', '6511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17908', '明光市', '6510.8', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17907', '天长市', '6510.7', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17906', '凤阳县', '6510.6', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17905', '定远县', '6510.5', 'nativeplace', '6511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17904', '全椒县', '6510.4', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17903', '来安县', '6510.3', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17902', '南谯区', '6510.2', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17901', '琅琊区', '6510.1', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17900', '滁州市', '6510', 'nativeplace', '6510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17899', '祁门县', '6509.7', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17898', '黟　县', '6509.6', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17897', '休宁县', '6509.5', 'nativeplace', '6510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17896', '歙　县', '6509.4', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17895', '徽州区', '6509.3', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17894', '黄山区', '6509.2', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17893', '屯溪区', '6509.1', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17892', '黄山市', '6509', 'nativeplace', '6509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17891', '桐城市', '6508.11', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17890', '岳西县', '6508.10', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17889', '望江县', '6508.9', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17888', '宿松县', '6508.8', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17887', '太湖县', '6508.7', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17886', '潜山县', '6508.6', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17885', '枞阳县', '6508.5', 'nativeplace', '6509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17884', '怀宁县', '6508.4', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17883', '郊　区', '6508.3', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17882', '大观区', '6508.2', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17881', '迎江区', '6508.1', 'nativeplace', '6508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17880', '安庆市', '6508', 'nativeplace', '6508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17879', '铜陵县', '6507.4', 'nativeplace', '6507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17878', '郊　区', '6507.3', 'nativeplace', '6507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17877', '狮子山区', '6507.2', 'nativeplace', '6507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17876', '铜官山区', '6507.1', 'nativeplace', '6507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17875', '铜陵市', '6507', 'nativeplace', '6507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17874', '濉溪县', '6506.4', 'nativeplace', '6506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17873', '烈山区', '6506.3', 'nativeplace', '6506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17872', '相山区', '6506.2', 'nativeplace', '6506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17871', '杜集区', '6506.1', 'nativeplace', '6506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17870', '淮北市', '6506', 'nativeplace', '6506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17869', '当涂县', '6505.4', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17868', '雨山区', '6505.3', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17867', '花山区', '6505.2', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17866', '金家庄区', '6505.1', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17865', '马鞍山市', '6505', 'nativeplace', '6505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17864', '凤台县', '6504.6', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17863', '潘集区', '6504.5', 'nativeplace', '6505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17862', '八公山区', '6504.4', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17861', '谢家集区', '6504.3', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17860', '田家庵区', '6504.2', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17859', '大通区', '6504.1', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17858', '淮南市', '6504', 'nativeplace', '6504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17857', '固镇县', '6503.7', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17856', '五河县', '6503.6', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17855', '怀远县', '6503.5', 'nativeplace', '6504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17854', '淮上区', '6503.4', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17853', '禹会区', '6503.3', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17852', '蚌山区', '6503.2', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17851', '龙子湖区', '6503.1', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17850', '蚌埠市', '6503', 'nativeplace', '6503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17849', '南陵县', '6502.7', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17848', '繁昌县', '6502.6', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17847', '芜湖县', '6502.5', 'nativeplace', '6503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17846', '鸠江区', '6502.4', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17845', '新芜区', '6502.3', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17844', '马塘区', '6502.2', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17843', '镜湖区', '6502.1', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17842', '芜湖市', '6502', 'nativeplace', '6502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17841', '肥西县', '6501.7', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17840', '肥东县', '6501.6', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17839', '长丰县', '6501.5', 'nativeplace', '6502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17838', '包河区', '6501.4', 'nativeplace', '6501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17837', '蜀山区', '6501.3', 'nativeplace', '6501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17836', '庐阳区', '6501.2', 'nativeplace', '6501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17835', '瑶海区', '6501.1', 'nativeplace', '6501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17834', '合肥市', '6501', 'nativeplace', '6501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17833', '安徽省', '6500', 'nativeplace', '6500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17832', '龙泉市', '6011.9', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17831', '景宁畲族自治县', '6011.8', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17830', '庆元县', '6011.7', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17829', '云和县', '6011.6', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17828', '松阳县', '6011.5', 'nativeplace', '6012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17827', '遂昌县', '6011.4', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17826', '缙云县', '6011.3', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17825', '青田县', '6011.2', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17824', '莲都区', '6011.1', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17823', '丽水市', '6011', 'nativeplace', '6011', '1');
INSERT INTO `dede_sys_enum` VALUES ('17822', '临海市', '6010.9', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17821', '温岭市', '6010.8', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17820', '仙居县', '6010.7', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17819', '天台县', '6010.6', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17818', '三门县', '6010.5', 'nativeplace', '6011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17817', '玉环县', '6010.4', 'nativeplace', '6010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17816', '路桥区', '6010.3', 'nativeplace', '6010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17815', '黄岩区', '6010.2', 'nativeplace', '6010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17814', '椒江区', '6010.1', 'nativeplace', '6010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17813', '台州市', '6010', 'nativeplace', '6010', '1');
INSERT INTO `dede_sys_enum` VALUES ('17812', '嵊泗县', '6009.4', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17811', '岱山县', '6009.3', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17810', '普陀区', '6009.2', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17809', '定海区', '6009.1', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17808', '舟山市', '6009', 'nativeplace', '6009', '1');
INSERT INTO `dede_sys_enum` VALUES ('17807', '江山市', '6008.6', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17806', '龙游县', '6008.5', 'nativeplace', '6009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17805', '开化县', '6008.4', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17804', '常山县', '6008.3', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17803', '衢江区', '6008.2', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17802', '柯城区', '6008.1', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17801', '衢州市', '6008', 'nativeplace', '6008', '1');
INSERT INTO `dede_sys_enum` VALUES ('17800', '永康市', '6007.9', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17799', '东阳市', '6007.8', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17798', '义乌市', '6007.7', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17797', '兰溪市', '6007.6', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17796', '磐安县', '6007.5', 'nativeplace', '6008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17795', '浦江县', '6007.4', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17794', '武义县', '6007.3', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17793', '金东区', '6007.2', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17792', '婺城区', '6007.1', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17791', '金华市', '6007', 'nativeplace', '6007', '1');
INSERT INTO `dede_sys_enum` VALUES ('17790', '嵊州市', '6006.6', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17789', '上虞市', '6006.5', 'nativeplace', '6007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17788', '诸暨市', '6006.4', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17787', '新昌县', '6006.3', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17786', '绍兴县', '6006.2', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17785', '越城区', '6006.1', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17784', '绍兴市', '6006', 'nativeplace', '6006', '1');
INSERT INTO `dede_sys_enum` VALUES ('17783', '安吉县', '6005.5', 'nativeplace', '6006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17782', '长兴县', '6005.4', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17781', '德清县', '6005.3', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17780', '南浔区', '6005.2', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17779', '吴兴区', '6005.1', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17778', '湖州市', '6005', 'nativeplace', '6005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17777', '桐乡市', '6004.7', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17776', '平湖市', '6004.6', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17775', '海宁市', '6004.5', 'nativeplace', '6005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17774', '海盐县', '6004.4', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17773', '嘉善县', '6004.3', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17772', '秀洲区', '6004.2', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17771', '秀城区', '6004.1', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17770', '嘉兴市', '6004', 'nativeplace', '6004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17769', '乐清市', '6003.11', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17768', '瑞安市', '6003.10', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17767', '泰顺县', '6003.9', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17766', '文成县', '6003.8', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17765', '苍南县', '6003.7', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17764', '平阳县', '6003.6', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17763', '永嘉县', '6003.5', 'nativeplace', '6004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17762', '洞头县', '6003.4', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17761', '瓯海区', '6003.3', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17760', '龙湾区', '6003.2', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17759', '鹿城区', '6003.1', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17758', '温州市', '6003', 'nativeplace', '6003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17757', '奉化市', '6002.11', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17756', '慈溪市', '6002.10', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17755', '余姚市', '6002.9', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17754', '宁海县', '6002.8', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17753', '象山县', '6002.7', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17752', '鄞州区', '6002.6', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17751', '镇海区', '6002.5', 'nativeplace', '6003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17750', '北仑区', '6002.4', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17749', '江北区', '6002.3', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17748', '江东区', '6002.2', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17747', '海曙区', '6002.1', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17746', '宁波市', '6002', 'nativeplace', '6002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17745', '临安市', '6001.13', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17744', '富阳市', '6001.12', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17743', '建德市', '6001.11', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17742', '淳安县', '6001.10', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17741', '桐庐县', '6001.9', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17740', '余杭区', '6001.8', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17739', '萧山区', '6001.7', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17738', '滨江区', '6001.6', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17737', '西湖区', '6001.5', 'nativeplace', '6002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17736', '拱墅区', '6001.4', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17735', '江干区', '6001.3', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17734', '下城区', '6001.2', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17733', '上城区', '6001.1', 'nativeplace', '6001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17732', '杭州市', '6001', 'nativeplace', '6001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17731', '浙江省', '6000', 'nativeplace', '6000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17730', '泗洪县', '5513.5', 'nativeplace', '5514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17729', '泗阳县', '5513.4', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17728', '沭阳县', '5513.3', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17727', '宿豫区', '5513.2', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17726', '宿城区', '5513.1', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17725', '宿迁市', '5513', 'nativeplace', '5513', '1');
INSERT INTO `dede_sys_enum` VALUES ('17724', '姜堰市', '5512.6', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17723', '泰兴市', '5512.5', 'nativeplace', '5513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17722', '靖江市', '5512.4', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17721', '兴化市', '5512.3', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17720', '高港区', '5512.2', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17719', '海陵区', '5512.1', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17718', '泰州市', '5512', 'nativeplace', '5512', '1');
INSERT INTO `dede_sys_enum` VALUES ('17717', '句容市', '5511.6', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17716', '扬中市', '5511.5', 'nativeplace', '5512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17715', '丹阳市', '5511.4', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17714', '丹徒区', '5511.3', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17713', '润州区', '5511.2', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17712', '京口区', '5511.1', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17711', '镇江市', '5511', 'nativeplace', '5511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17710', '江都市', '5510.7', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17709', '高邮市', '5510.6', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17708', '仪征市', '5510.5', 'nativeplace', '5511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17707', '宝应县', '5510.4', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17706', '郊　区', '5510.3', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17705', '邗江区', '5510.2', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17704', '广陵区', '5510.1', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17703', '扬州市', '5510', 'nativeplace', '5510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17702', '大丰市', '5509.9', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17701', '东台市', '5509.8', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17700', '建湖县', '5509.7', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17699', '射阳县', '5509.6', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17698', '阜宁县', '5509.5', 'nativeplace', '5510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17697', '滨海县', '5509.4', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17696', '响水县', '5509.3', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17695', '盐都区', '5509.2', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17694', '亭湖区', '5509.1', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17693', '盐城市', '5509', 'nativeplace', '5509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17692', '金湖县', '5508.8', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17691', '盱眙县', '5508.7', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17690', '洪泽县', '5508.6', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17689', '涟水县', '5508.5', 'nativeplace', '5509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17688', '清浦区', '5508.4', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17687', '淮阴区', '5508.3', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17686', '楚州区', '5508.2', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17685', '清河区', '5508.1', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17684', '淮安市', '5508', 'nativeplace', '5508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17683', '灌南县', '5507.7', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17682', '灌云县', '5507.6', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17681', '东海县', '5507.5', 'nativeplace', '5508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17680', '赣榆县', '5507.4', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17679', '海州区', '5507.3', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17678', '新浦区', '5507.2', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17677', '连云区', '5507.1', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17676', '连云港市', '5507', 'nativeplace', '5507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17675', '海门市', '5506.8', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17674', '通州市', '5506.7', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17673', '如皋市', '5506.6', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17672', '启东市', '5506.5', 'nativeplace', '5507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17671', '如东县', '5506.4', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17670', '海安县', '5506.3', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17669', '港闸区', '5506.2', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17668', '崇川区', '5506.1', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17667', '南通市', '5506', 'nativeplace', '5506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17666', '太仓市', '5505.11', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17665', '吴江市', '5505.10', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17664', '昆山市', '5505.9', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17663', '张家港市', '5505.8', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17662', '常熟市', '5505.7', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17661', '相城区', '5505.6', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17660', '吴中区', '5505.5', 'nativeplace', '5506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17659', '虎丘区', '5505.4', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17658', '金阊区', '5505.3', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17657', '平江区', '5505.2', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17656', '沧浪区', '5505.1', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17655', '苏州市', '5505', 'nativeplace', '5505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17654', '金坛市', '5504.7', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17653', '溧阳市', '5504.6', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17652', '武进区', '5504.5', 'nativeplace', '5505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17651', '新北区', '5504.4', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17650', '戚墅堰区', '5504.3', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17649', '钟楼区', '5504.2', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17648', '天宁区', '5504.1', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17647', '常州市', '5504', 'nativeplace', '5504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17646', '邳州市', '5503.11', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17645', '新沂市', '5503.10', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17644', '睢宁县', '5503.9', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17643', '铜山县', '5503.8', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17642', '沛　县', '5503.7', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17641', '丰　县', '5503.6', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17640', '泉山区', '5503.5', 'nativeplace', '5504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17639', '贾汪区', '5503.4', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17638', '九里区', '5503.3', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17637', '云龙区', '5503.2', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17636', '鼓楼区', '5503.1', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17635', '徐州市', '5503', 'nativeplace', '5503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17634', '宜兴市', '5502.8', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17633', '江阴市', '5502.7', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17632', '滨湖区', '5502.6', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17631', '惠山区', '5502.5', 'nativeplace', '5503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17630', '锡山区', '5502.4', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17629', '北塘区', '5502.3', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17628', '南长区', '5502.2', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17627', '崇安区', '5502.1', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17626', '无锡市', '5502', 'nativeplace', '5502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17625', '高淳县', '5501.13', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17624', '溧水县', '5501.12', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17623', '六合区', '5501.11', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17622', '江宁区', '5501.10', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17621', '雨花台区', '5501.9', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17620', '栖霞区', '5501.8', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17619', '浦口区', '5501.7', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17618', '下关区', '5501.6', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17617', '鼓楼区', '5501.5', 'nativeplace', '5502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17616', '建邺区', '5501.4', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17615', '秦淮区', '5501.3', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17614', '白下区', '5501.2', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17613', '武区', '5501.1', 'nativeplace', '5501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17612', '南京市', '5501', 'nativeplace', '5501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17611', '江苏省', '5500', 'nativeplace', '5500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17610', '崇明县', '5019', 'nativeplace', '5019', '1');
INSERT INTO `dede_sys_enum` VALUES ('17609', '奉贤区', '5018', 'nativeplace', '5018', '1');
INSERT INTO `dede_sys_enum` VALUES ('17608', '南汇区', '5017', 'nativeplace', '5017', '1');
INSERT INTO `dede_sys_enum` VALUES ('17607', '青浦区', '5016', 'nativeplace', '5016', '1');
INSERT INTO `dede_sys_enum` VALUES ('17606', '松江区', '5015', 'nativeplace', '5015', '1');
INSERT INTO `dede_sys_enum` VALUES ('17605', '金山区', '5014', 'nativeplace', '5014', '1');
INSERT INTO `dede_sys_enum` VALUES ('17604', '浦东新区', '5013', 'nativeplace', '5013', '1');
INSERT INTO `dede_sys_enum` VALUES ('17603', '嘉定区', '5012', 'nativeplace', '5012', '1');
INSERT INTO `dede_sys_enum` VALUES ('17602', '宝山区', '5011', 'nativeplace', '5011', '1');
INSERT INTO `dede_sys_enum` VALUES ('17601', '闵行区', '5010', 'nativeplace', '5010', '1');
INSERT INTO `dede_sys_enum` VALUES ('17600', '杨浦区', '5009', 'nativeplace', '5009', '1');
INSERT INTO `dede_sys_enum` VALUES ('17599', '虹口区', '5008', 'nativeplace', '5008', '1');
INSERT INTO `dede_sys_enum` VALUES ('17598', '闸北区', '5007', 'nativeplace', '5007', '1');
INSERT INTO `dede_sys_enum` VALUES ('17597', '普陀区', '5006', 'nativeplace', '5006', '1');
INSERT INTO `dede_sys_enum` VALUES ('17596', '静安区', '5005', 'nativeplace', '5005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17595', '长宁区', '5004', 'nativeplace', '5004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17594', '徐汇区', '5003', 'nativeplace', '5003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17593', '卢湾区', '5002', 'nativeplace', '5002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17592', '黄浦区', '5001', 'nativeplace', '5001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17591', '上海市', '5000', 'nativeplace', '5000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17590', '漠河县', '4513.3', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17589', '塔河县', '4513.2', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17588', '呼玛县', '4513.1', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17587', '大兴安岭地区', '4513', 'nativeplace', '4513', '1');
INSERT INTO `dede_sys_enum` VALUES ('17586', '海伦市', '4512.10', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17585', '肇东市', '4512.9', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17584', '安达市', '4512.8', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17583', '绥棱县', '4512.7', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17582', '明水县', '4512.6', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17581', '庆安县', '4512.5', 'nativeplace', '4513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17580', '青冈县', '4512.4', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17579', '兰西县', '4512.3', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17578', '望奎县', '4512.2', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17577', '北林区', '4512.1', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17576', '绥化市', '4512', 'nativeplace', '4512', '1');
INSERT INTO `dede_sys_enum` VALUES ('17575', '五大连池市', '4511.6', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17574', '北安市', '4511.5', 'nativeplace', '4512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17573', '孙吴县', '4511.4', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17572', '逊克县', '4511.3', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17571', '嫩江县', '4511.2', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17570', '爱辉区', '4511.1', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17569', '黑河市', '4511', 'nativeplace', '4511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17568', '穆棱市', '4510.10', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17567', '宁安市', '4510.9', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17566', '海林市', '4510.8', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17565', '绥芬河市', '4510.7', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17564', '林口县', '4510.6', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17563', '东宁县', '4510.5', 'nativeplace', '4511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17562', '西安区', '4510.4', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17561', '爱民区', '4510.3', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17560', '阳明区', '4510.2', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17559', '东安区', '4510.1', 'nativeplace', '4510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17558', '牡丹江市', '4510', 'nativeplace', '4510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17557', '勃利县', '4509.4', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17556', '茄子河区', '4509.3', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17555', '桃山区', '4509.2', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17554', '新兴区', '4509.1', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17553', '七台河市', '4509', 'nativeplace', '4509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17552', '富锦市', '4508.11', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17551', '同江市', '4508.10', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17550', '抚远县', '4508.9', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17549', '汤原县', '4508.8', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17548', '桦川县', '4508.7', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17547', '桦南县', '4508.6', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17546', '郊　区', '4508.5', 'nativeplace', '4509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17545', '东风区', '4508.4', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17544', '前进区', '4508.3', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17543', '向阳区', '4508.2', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17542', '永红区', '4508.1', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17541', '佳木斯市', '4508', 'nativeplace', '4508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17540', '铁力市', '4507.17', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17539', '嘉荫县', '4507.16', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17538', '上甘岭区', '4507.15', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17537', '红星区', '4507.14', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17536', '乌伊岭区', '4507.13', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17535', '带岭区', '4507.12', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17534', '汤旺河区', '4507.11', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17533', '乌马河区', '4507.10', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17532', '五营区', '4507.9', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17531', '金山屯区', '4507.8', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17530', '美溪区', '4507.7', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17529', '新青区', '4507.6', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17528', '翠峦区', '4507.5', 'nativeplace', '4508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17527', '西林区', '4507.4', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17526', '友好区', '4507.3', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17525', '南岔区', '4507.2', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17524', '伊春区', '4507.1', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17523', '伊春市', '4507', 'nativeplace', '4507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17522', '杜尔伯特蒙古族自治县', '4506.9', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17521', '林甸县', '4506.8', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17520', '肇源县', '4506.7', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17519', '肇州县', '4506.6', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17518', '大同区', '4506.5', 'nativeplace', '4507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17517', '红岗区', '4506.4', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17516', '让胡路区', '4506.3', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17515', '龙凤区', '4506.2', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17514', '萨尔图区', '4506.1', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17513', '大庆市', '4506', 'nativeplace', '4506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17512', '饶河县', '4505.8', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17511', '宝清县', '4505.7', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17510', '友谊县', '4505.6', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17509', '集贤县', '4505.5', 'nativeplace', '4506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17508', '宝山区', '4505.4', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17507', '四方台区', '4505.3', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17506', '岭东区', '4505.2', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17505', '尖山区', '4505.1', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17504', '双鸭山市', '4505', 'nativeplace', '4505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17503', '绥滨县', '4504.8', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17502', '萝北县', '4504.7', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17501', '兴山区', '4504.6', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17500', '东山区', '4504.5', 'nativeplace', '4505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17499', '兴安区', '4504.4', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17498', '南山区', '4504.3', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17497', '工农区', '4504.2', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17496', '向阳区', '4504.1', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17495', '鹤岗市', '4504', 'nativeplace', '4504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17494', '密山市', '4503.9', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17493', '虎林市', '4503.8', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17492', '鸡东县', '4503.7', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17491', '麻山区', '4503.6', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17490', '城子河区', '4503.5', 'nativeplace', '4504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17489', '梨树区', '4503.4', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17488', '滴道区', '4503.3', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17487', '恒山区', '4503.2', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17486', '鸡冠区', '4503.1', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17485', '鸡西市', '4503', 'nativeplace', '4503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17484', '讷河市', '4502.15', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17483', '拜泉县', '4502.14', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17482', '克东县', '4502.13', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17481', '克山县', '4502.12', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17480', '富裕县', '4502.11', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17479', '甘南县', '4502.10', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17478', '泰来县', '4502.9', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17477', '龙江县 依安县', '4502.8', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17476', '梅里斯达斡尔族区', '4502.7', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17475', '碾子山区', '4502.6', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17474', '富拉尔基区', '4502.5', 'nativeplace', '4503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17473', '昂昂溪区', '4502.4', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17472', '铁锋区', '4502.3', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17471', '建华区', '4502.2', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17470', '龙沙区', '4502.1', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17469', '齐齐哈尔市', '4502', 'nativeplace', '4502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17468', '五常市', '4501.19', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17467', '尚志市', '4501.18', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17466', '双城市', '4501.17', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17465', '阿城市', '4501.16', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17464', '延寿县', '4501.15', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17463', '通河县', '4501.14', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17462', '木兰县', '4501.13', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17461', '巴彦县', '4501.12', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17460', '宾　县', '4501.11', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17459', '方正县', '4501.10', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17458', '依兰县', '4501.9', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17457', '呼兰区', '4501.8', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17456', '松北区', '4501.7', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17455', '平房区', '4501.6', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17454', '动力区', '4501.5', 'nativeplace', '4502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17453', '香坊区', '4501.4', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17452', '道外区', '4501.3', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17451', '南岗区', '4501.2', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17450', '道里区', '4501.1', 'nativeplace', '4501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17449', '哈尔滨市', '4501', 'nativeplace', '4501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17448', '黑龙江省', '4500', 'nativeplace', '4500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17447', '安图县', '4009.8', 'nativeplace', '4010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17446', '汪清县', '4009.7', 'nativeplace', '4010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17445', '和龙市', '4009.6', 'nativeplace', '4010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17444', '龙井市', '4009.5', 'nativeplace', '4010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17443', '珲春市', '4009.4', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17442', '敦化市', '4009.3', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17441', '图们市', '4009.2', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17440', '延吉市', '4009.1', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17439', '延边朝鲜族自治州', '4009', 'nativeplace', '4009', '1');
INSERT INTO `dede_sys_enum` VALUES ('17438', '大安市', '4008.5', 'nativeplace', '4009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17437', '洮南市', '4008.4', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17436', '通榆县', '4008.3', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17435', '镇赉县', '4008.2', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17434', '洮北区', '4008.1', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17433', '白城市', '4008', 'nativeplace', '4008', '1');
INSERT INTO `dede_sys_enum` VALUES ('17432', '扶余县', '4007.5', 'nativeplace', '4008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17431', '乾安县', '4007.4', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17430', '长岭县', '4007.3', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17429', '前郭尔罗斯蒙古族自治县', '4007.2', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17428', '宁江区', '4007.1', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17427', '松原市', '4007', 'nativeplace', '4007', '1');
INSERT INTO `dede_sys_enum` VALUES ('17426', '临江市', '4006.6', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17425', '江源县', '4006.5', 'nativeplace', '4007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17424', '长白朝鲜族自治县', '4006.4', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17423', '靖宇县', '4006.3', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17422', '抚松县', '4006.2', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17421', '八道江区', '4006.1', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17420', '白山市', '4006', 'nativeplace', '4006', '1');
INSERT INTO `dede_sys_enum` VALUES ('17419', '集安市', '4005.7', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17418', '梅河口市', '4005.6', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17417', '柳河县', '4005.5', 'nativeplace', '4006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17416', '辉南县', '4005.4', 'nativeplace', '4005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17415', '通化县', '4005.3', 'nativeplace', '4005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17414', '二道江区', '4005.2', 'nativeplace', '4005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17413', '东昌区', '4005.1', 'nativeplace', '4005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17412', '通化市', '4005', 'nativeplace', '4005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17411', '东辽县', '4004.4', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17410', '东丰县', '4004.3', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17409', '西安区', '4004.2', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17408', '龙山区', '4004.1', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17407', '辽源市', '4004', 'nativeplace', '4004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17406', '双辽市', '4003.6', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17405', '公主岭市', '4003.5', 'nativeplace', '4004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17404', '伊通满族自治县', '4003.4', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17403', '梨树县', '4003.3', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17402', '铁东区', '4003.2', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17401', '铁西区', '4003.1', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17400', '四平市', '4003', 'nativeplace', '4003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17399', '磐石市', '4002.9', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17398', '舒兰市', '4002.8', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17397', '桦甸市', '4002.7', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17396', '蛟河市', '4002.6', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17395', '永吉县', '4002.5', 'nativeplace', '4003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17394', '丰满区', '4002.4', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17393', '船营区', '4002.3', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17392', '龙潭区', '4002.2', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17391', '昌邑区', '4002.1', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17390', '吉林市', '4002', 'nativeplace', '4002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17389', '德惠市', '4001.10', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17388', '榆树市', '4001.9', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17387', '九台市', '4001.8', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17386', '农安县', '4001.7', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17385', '双阳区', '4001.6', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17384', '绿园区', '4001.5', 'nativeplace', '4002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17383', '二道区', '4001.4', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17382', '朝阳区', '4001.3', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17381', '宽城区', '4001.2', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17380', '南关区', '4001.1', 'nativeplace', '4001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17379', '长春市', '4001', 'nativeplace', '4001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17378', '吉林省', '4000', 'nativeplace', '4000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17377', '兴城市', '3514.6', 'nativeplace', '3515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17376', '建昌县', '3514.5', 'nativeplace', '3515', '2');
INSERT INTO `dede_sys_enum` VALUES ('17375', '绥中县', '3514.4', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17374', '南票区', '3514.3', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17373', '龙港区', '3514.2', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17372', '连山区', '3514.1', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17371', '葫芦岛市', '3514', 'nativeplace', '3514', '1');
INSERT INTO `dede_sys_enum` VALUES ('17370', '凌源市', '3513.7', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17369', '北票市', '3513.6', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17368', '喀喇沁左翼蒙古族自治县', '3513.5', 'nativeplace', '3514', '2');
INSERT INTO `dede_sys_enum` VALUES ('17367', '建平县', '3513.4', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17366', '朝阳县', '3513.3', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17365', '龙城区', '3513.2', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17364', '双塔区', '3513.1', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17363', '朝阳市', '3513', 'nativeplace', '3513', '1');
INSERT INTO `dede_sys_enum` VALUES ('17362', '开原市', '3512.7', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17361', '调兵山市', '3512.6', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17360', '昌图县', '3512.5', 'nativeplace', '3513', '2');
INSERT INTO `dede_sys_enum` VALUES ('17359', '西丰县', '3512.4', 'nativeplace', '3512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17358', '铁岭县', '3512.3', 'nativeplace', '3512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17357', '清河区', '3512.2', 'nativeplace', '3512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17356', '银州区', '3512.1', 'nativeplace', '3512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17355', '铁岭市', '3512', 'nativeplace', '3512', '1');
INSERT INTO `dede_sys_enum` VALUES ('17354', '盘山县', '3511.4', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17353', '大洼县', '3511.3', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17352', '兴隆台区', '3511.2', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17351', '双台子区', '3511.1', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17350', '盘锦市', '3511', 'nativeplace', '3511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17349', '灯塔市', '3510.7', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17348', '辽阳县', '3510.6', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17347', '太子河区', '3510.5', 'nativeplace', '3511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17346', '弓长岭区', '3510.4', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17345', '宏伟区', '3510.3', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17344', '文圣区', '3510.2', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17343', '白塔区', '3510.1', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17342', '辽阳市', '3510', 'nativeplace', '3510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17341', '彰武县', '3509.7', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17340', '阜新蒙古族自治县', '3509.6', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17339', '细河区', '3509.5', 'nativeplace', '3510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17338', '清河门区', '3509.4', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17337', '太平区', '3509.3', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17336', '新邱区', '3509.2', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17335', '海州区', '3509.1', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17334', '阜新市', '3509', 'nativeplace', '3509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17333', '大石桥市', '3508.6', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17332', '盖州市', '3508.5', 'nativeplace', '3509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17331', '老边区', '3508.4', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17330', '鲅鱼圈区', '3508.3', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17329', '西市区', '3508.2', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17328', '站前区', '3508.1', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17327', '营口市', '3508', 'nativeplace', '3508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17326', '北宁市', '3507.7', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17325', '凌海市', '3507.6', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17324', '义　县', '3507.5', 'nativeplace', '3508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17323', '黑山县', '3507.4', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17322', '太和区', '3507.3', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17321', '凌河区', '3507.2', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17320', '古塔区', '3507.1', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17319', '锦州市', '3507', 'nativeplace', '3507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17318', '凤城市', '3506.6', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17317', '东港市', '3506.5', 'nativeplace', '3507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17316', '宽甸满族自治县', '3506.4', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17315', '振安区', '3506.3', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17314', '振兴区', '3506.2', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17313', '元宝区', '3506.1', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17312', '丹东市', '3506', 'nativeplace', '3506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17311', '桓仁满族自治县', '3505.6', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17310', '本溪满族自治县', '3505.5', 'nativeplace', '3506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17309', '南芬区', '3505.4', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17308', '明山区', '3505.3', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17307', '溪湖区', '3505.2', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17306', '平山区', '3505.1', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17305', '本溪市', '3505', 'nativeplace', '3505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17304', '清原满族自治县', '3504.7', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17303', '新宾满族自治县', '3504.6', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17302', '抚顺县', '3504.5', 'nativeplace', '3505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17301', '顺城区', '3504.4', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17300', '望花区', '3504.3', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17299', '东洲区', '3504.2', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17298', '新抚区', '3504.1', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17297', '抚顺市', '3504', 'nativeplace', '3504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17296', '海城市', '3503.7', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17295', '岫岩满族自治县', '3503.6', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17294', '台安县', '3503.5', 'nativeplace', '3504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17293', '千山区', '3503.4', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17292', '立山区', '3503.3', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17291', '铁西区', '3503.2', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17290', '铁东区', '3503.1', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17289', '鞍山市', '3503', 'nativeplace', '3503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17288', '庄河市', '3502.10', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17287', '普兰店市', '3502.9', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17286', '瓦房店市', '3502.8', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17285', '长海县', '3502.7', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17284', '金州区', '3502.6', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17283', '旅顺口区', '3502.5', 'nativeplace', '3503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17282', '甘井子区', '3502.4', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17281', '沙河口区', '3502.3', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17280', '西岗区', '3502.2', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17279', '中山区', '3502.1', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17278', '大连市', '3502', 'nativeplace', '3502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17277', '新民市', '3501.13', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17276', '法库县', '3501.12', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17275', '康平县', '3501.11', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17274', '辽中县', '3501.10', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17273', '于洪区', '3501.9', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17272', '新城子区', '3501.8', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17271', '东陵区', '3501.7', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17270', '苏家屯区', '3501.6', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17269', '铁西区', '3501.5', 'nativeplace', '3502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17268', '皇姑区', '3501.4', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17267', '大东区', '3501.3', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17266', '沈河区', '3501.2', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17265', '和平区', '3501.1', 'nativeplace', '3501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17264', '沈阳市', '3501', 'nativeplace', '3501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17263', '辽宁省', '3500', 'nativeplace', '3500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17262', '额济纳旗', '3012.3', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17261', '阿拉善右旗', '3012.2', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17260', '阿拉善左旗', '3012.1', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17259', '阿拉善盟', '3012', 'nativeplace', '3012', '1');
INSERT INTO `dede_sys_enum` VALUES ('17258', '多伦县', '3011.12', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17257', '正蓝旗', '3011.11', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17256', '正镶白旗', '3011.10', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17255', '镶黄旗', '3011.9', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17254', '太仆寺旗', '3011.8', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17253', '西乌珠穆沁旗', '3011.7', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17252', '东乌珠穆沁旗', '3011.6', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17251', '苏尼特右旗', '3011.5', 'nativeplace', '3012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17250', '苏尼特左旗', '3011.4', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17249', '阿巴嘎旗', '3011.3', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17248', '锡林浩特市', '3011.2', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17247', '二连浩特市', '3011.1', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17246', '锡林郭勒盟', '3011', 'nativeplace', '3011', '1');
INSERT INTO `dede_sys_enum` VALUES ('17245', '突泉县', '3010.6', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17244', '扎赉特旗', '3010.5', 'nativeplace', '3011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17243', '科尔沁右翼中旗', '3010.4', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17242', '科尔沁右翼前旗', '3010.3', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17241', '阿尔山市', '3010.2', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17240', '乌兰浩特市', '3010.1', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17239', '兴安盟', '3010', 'nativeplace', '3010', '1');
INSERT INTO `dede_sys_enum` VALUES ('17238', '丰镇市', '3009.11', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17237', '四子王旗', '3009.10', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17236', '察哈尔右翼后旗', '3009.9', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17235', '察哈尔右翼中旗', '3009.8', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17234', '察哈尔右翼前旗', '3009.7', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17233', '凉城县', '3009.6', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17232', '兴和县', '3009.5', 'nativeplace', '3010', '2');
INSERT INTO `dede_sys_enum` VALUES ('17231', '商都县', '3009.4', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17230', '化德县', '3009.3', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17229', '卓资县', '3009.2', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17228', '集宁区', '3009.1', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17227', '乌兰察布市', '3009', 'nativeplace', '3009', '1');
INSERT INTO `dede_sys_enum` VALUES ('17226', '杭锦后旗', '3008.7', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17225', '乌拉特后旗', '3008.6', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17224', '乌拉特中旗', '3008.5', 'nativeplace', '3009', '2');
INSERT INTO `dede_sys_enum` VALUES ('17223', '乌拉特前旗', '3008.4', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17222', '磴口县', '3008.3', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17221', '五原县', '3008.2', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17220', '临河区', '3008.1', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17219', '巴彦淖尔市', '3008', 'nativeplace', '3008', '1');
INSERT INTO `dede_sys_enum` VALUES ('17218', '根河市', '3007.13', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17217', '额尔古纳市', '3007.12', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17216', '扎兰屯市', '3007.11', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17215', '牙克石市', '3007.10', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17214', '满洲里市', '3007.9', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17213', '新巴尔虎右旗', '3007.8', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17212', '新巴尔虎左旗', '3007.7', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17211', '陈巴尔虎旗', '3007.6', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17210', '鄂温克族自治旗', '3007.5', 'nativeplace', '3008', '2');
INSERT INTO `dede_sys_enum` VALUES ('17209', '鄂伦春自治旗', '3007.4', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17208', '莫力达瓦达斡尔族自治旗', '3007.3', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17207', '阿荣旗', '3007.2', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17206', '海拉尔区', '3007.1', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17205', '呼伦贝尔市', '3007', 'nativeplace', '3007', '1');
INSERT INTO `dede_sys_enum` VALUES ('17204', '伊金霍洛旗', '3006.8', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17203', '乌审旗', '3006.7', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17202', '杭锦旗', '3006.6', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17201', '鄂托克旗', '3006.5', 'nativeplace', '3007', '2');
INSERT INTO `dede_sys_enum` VALUES ('17200', '鄂托克前旗', '3006.4', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17199', '准格尔旗', '3006.3', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17198', '达拉特旗', '3006.2', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17197', '东胜区', '3006.1', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17196', '鄂尔多斯市', '3006', 'nativeplace', '3006', '1');
INSERT INTO `dede_sys_enum` VALUES ('17195', '霍林郭勒市', '3005.8', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17194', '扎鲁特旗', '3005.7', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17193', '奈曼旗', '3005.6', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17192', '库伦旗', '3005.5', 'nativeplace', '3006', '2');
INSERT INTO `dede_sys_enum` VALUES ('17191', '开鲁县', '3005.4', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17190', '科尔沁左翼后旗', '3005.3', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17189', '科尔沁左翼中旗', '3005.2', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17188', '科尔沁区', '3005.1', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17187', '通辽市', '3005', 'nativeplace', '3005', '1');
INSERT INTO `dede_sys_enum` VALUES ('17186', '敖汉旗', '3004.12', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17185', '宁城县', '3004.11', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17184', '喀喇沁旗', '3004.10', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17183', '翁牛特旗', '3004.9', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17182', '克什克腾旗', '3004.8', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17181', '林西县', '3004.7', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17180', '巴林右旗', '3004.6', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17179', '巴林左旗', '3004.5', 'nativeplace', '3005', '2');
INSERT INTO `dede_sys_enum` VALUES ('17178', '阿鲁科尔沁旗', '3004.4', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17177', '松山区', '3004.3', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17176', '元宝山区', '3004.2', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17175', '红山区', '3004.1', 'nativeplace', '3004', '2');
INSERT INTO `dede_sys_enum` VALUES ('17174', '赤峰市', '3004', 'nativeplace', '3004', '1');
INSERT INTO `dede_sys_enum` VALUES ('17173', '乌达区', '3003.3', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17172', '海南区', '3003.2', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17171', '海勃湾区', '3003.1', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17170', '乌海市', '3003', 'nativeplace', '3003', '1');
INSERT INTO `dede_sys_enum` VALUES ('17169', '达尔罕茂明安联合旗', '3002.9', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17168', '固阳县', '3002.8', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17167', '土默特右旗', '3002.7', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17166', '九原区', '3002.6', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17165', '白云矿区', '3002.5', 'nativeplace', '3003', '2');
INSERT INTO `dede_sys_enum` VALUES ('17164', '石拐区', '3002.4', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17163', '青山区', '3002.3', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17162', '昆都仑区', '3002.2', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17161', '东河区', '3002.1', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17160', '包头市', '3002', 'nativeplace', '3002', '1');
INSERT INTO `dede_sys_enum` VALUES ('17159', '武川县', '3001.9', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17158', '清水河县', '3001.8', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17157', '和林格尔县', '3001.7', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17156', '托克托县', '3001.6', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17155', '土默特左旗', '3001.5', 'nativeplace', '3002', '2');
INSERT INTO `dede_sys_enum` VALUES ('17154', '赛罕区', '3001.4', 'nativeplace', '3001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17153', '玉泉区', '3001.3', 'nativeplace', '3001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17152', '回民区', '3001.2', 'nativeplace', '3001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17151', '新城区', '3001.1', 'nativeplace', '3001', '2');
INSERT INTO `dede_sys_enum` VALUES ('17150', '呼和浩特市', '3001', 'nativeplace', '3001', '1');
INSERT INTO `dede_sys_enum` VALUES ('17149', '内蒙古自治区', '3000', 'nativeplace', '3000', '0');
INSERT INTO `dede_sys_enum` VALUES ('17148', '汾阳市', '2511.13', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17147', '孝义市', '2511.12', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17146', '交口县', '2511.11', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17145', '中阳县', '2511.10', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17144', '方山县', '2511.9', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17143', '岚　县', '2511.8', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17142', '石楼县', '2511.7', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17141', '柳林县', '2511.6', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17140', '临　县', '2511.5', 'nativeplace', '2512', '2');
INSERT INTO `dede_sys_enum` VALUES ('17139', '兴　县', '2511.4', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17138', '交城县', '2511.3', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17137', '文水县', '2511.2', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17136', '离石区', '2511.1', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17135', '吕梁市', '2511', 'nativeplace', '2511', '1');
INSERT INTO `dede_sys_enum` VALUES ('17134', '霍州市', '2510.17', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17133', '侯马市', '2510.16', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17132', '汾西县', '2510.15', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17131', '蒲　县', '2510.14', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17130', '永和县', '2510.13', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17129', '隰　县', '2510.12', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17128', '大宁县', '2510.11', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17127', '乡宁县', '2510.10', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17126', '吉　县', '2510.9', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17125', '浮山县', '2510.8', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17124', '安泽县', '2510.7', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17123', '古　县', '2510.6', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17122', '洪洞县', '2510.5', 'nativeplace', '2511', '2');
INSERT INTO `dede_sys_enum` VALUES ('17121', '襄汾县', '2510.4', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17120', '翼城县', '2510.3', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17119', '曲沃县', '2510.2', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17118', '尧都区', '2510.1', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17117', '临汾市', '2510', 'nativeplace', '2510', '1');
INSERT INTO `dede_sys_enum` VALUES ('17116', '原平市', '2509.14', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17115', '偏关县', '2509.13', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17114', '保德县', '2509.12', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17113', '河曲县', '2509.11', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17112', '岢岚县', '2509.10', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17111', '五寨县', '2509.9', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17110', '神池县', '2509.8', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17109', '静乐县', '2509.7', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17108', '宁武县', '2509.6', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17107', '繁峙县', '2509.5', 'nativeplace', '2510', '2');
INSERT INTO `dede_sys_enum` VALUES ('17106', '代　县', '2509.4', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17105', '五台县', '2509.3', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17104', '定襄县', '2509.2', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17103', '忻府区', '2509.1', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17102', '忻州市', '2509', 'nativeplace', '2509', '1');
INSERT INTO `dede_sys_enum` VALUES ('17101', '河津市', '2508.13', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17100', '永济市', '2508.12', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17099', '芮城县', '2508.11', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17098', '平陆县', '2508.10', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17097', '夏　县', '2508.9', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17096', '垣曲县', '2508.8', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17095', '绛　县', '2508.7', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17094', '新绛县', '2508.6', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17093', '稷山县', '2508.5', 'nativeplace', '2509', '2');
INSERT INTO `dede_sys_enum` VALUES ('17092', '闻喜县', '2508.4', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17091', '万荣县', '2508.3', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17090', '临猗县', '2508.2', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17089', '盐湖区', '2508.1', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17088', '运城市', '2508', 'nativeplace', '2508', '1');
INSERT INTO `dede_sys_enum` VALUES ('17087', '介休市', '2507.11', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17086', '灵石县', '2507.10', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17085', '平遥县', '2507.9', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17084', '祁　县', '2507.8', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17083', '太谷县', '2507.7', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17082', '寿阳县', '2507.6', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17081', '昔阳县', '2507.5', 'nativeplace', '2508', '2');
INSERT INTO `dede_sys_enum` VALUES ('17080', '和顺县', '2507.4', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17079', '左权县', '2507.3', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17078', '榆社县', '2507.2', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17077', '榆次区', '2507.1', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17076', '晋中市', '2507', 'nativeplace', '2507', '1');
INSERT INTO `dede_sys_enum` VALUES ('17075', '怀仁县', '2506.6', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17074', '右玉县', '2506.5', 'nativeplace', '2507', '2');
INSERT INTO `dede_sys_enum` VALUES ('17073', '应　县', '2506.4', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17072', '山阴县', '2506.3', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17071', '平鲁区', '2506.2', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17070', '朔城区', '2506.1', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17069', '朔州市', '2506', 'nativeplace', '2506', '1');
INSERT INTO `dede_sys_enum` VALUES ('17068', '高平市', '2505.6', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17067', '泽州县', '2505.5', 'nativeplace', '2506', '2');
INSERT INTO `dede_sys_enum` VALUES ('17066', '陵川县', '2505.4', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17065', '阳城县', '2505.3', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17064', '沁水县', '2505.2', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17063', '城　区', '2505.1', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17062', '晋城市', '2505', 'nativeplace', '2505', '1');
INSERT INTO `dede_sys_enum` VALUES ('17061', '潞城市', '2504.13', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17060', '沁源县', '2504.12', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17059', '沁　县', '2504.11', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17058', '武乡县', '2504.10', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17057', '长子县', '2504.9', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17056', '壶关县', '2504.8', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17055', '黎城县', '2504.7', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17054', '平顺县', '2504.6', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17053', '屯留县', '2504.5', 'nativeplace', '2505', '2');
INSERT INTO `dede_sys_enum` VALUES ('17052', '襄垣县', '2504.4', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17051', '长治县', '2504.3', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17050', '郊　区', '2504.2', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17049', '城　区', '2504.1', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17048', '长治市', '2504', 'nativeplace', '2504', '1');
INSERT INTO `dede_sys_enum` VALUES ('17047', '盂　县', '2503.5', 'nativeplace', '2504', '2');
INSERT INTO `dede_sys_enum` VALUES ('17046', '平定县', '2503.4', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17045', '郊　区', '2503.3', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17044', '矿　区', '2503.2', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17043', '城　区', '2503.1', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17042', '阳泉市', '2503', 'nativeplace', '2503', '1');
INSERT INTO `dede_sys_enum` VALUES ('17041', '南郊区', '2502.12', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17040', '矿　区', '2502.11', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17039', '城　区', '2502.10', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17038', '大同县', '2502.9', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17037', '左云县', '2502.8', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17036', '浑源县', '2502.7', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17035', '灵丘县', '2502.6', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17034', '广灵县', '2502.5', 'nativeplace', '2503', '2');
INSERT INTO `dede_sys_enum` VALUES ('17033', '天镇县', '2502.4', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17032', '阳高县', '2502.3', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17031', '新荣区', '2502.2', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17030', '南郊区', '2502.1', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17029', '大同市', '2502', 'nativeplace', '2502', '1');
INSERT INTO `dede_sys_enum` VALUES ('17028', '古交市', '2501.10', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17027', '娄烦县', '2501.9', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17026', '阳曲县', '2501.8', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17025', '清徐县', '2501.7', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17024', '晋源区', '2501.6', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17023', '万柏林区', '2501.5', 'nativeplace', '2502', '2');
INSERT INTO `dede_sys_enum` VALUES ('17022', '尖草坪区', '2501.4', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17021', '杏花岭区', '2501.3', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17020', '迎泽区', '2501.2', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17019', '小店区', '2501.1', 'nativeplace', '2501', '2');
INSERT INTO `dede_sys_enum` VALUES ('17018', '太原市', '2501', 'nativeplace', '2501', '1');
INSERT INTO `dede_sys_enum` VALUES ('17017', '山西省', '2500', 'nativeplace', '2500', '0');
INSERT INTO `dede_sys_enum` VALUES ('17016', '河间市', '2011.16', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17015', '黄骅市', '2011.15', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17014', '任丘市', '2011.14', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17013', '泊头市', '2011.13', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17012', '孟村回族自治县', '2011.12', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17011', '献　县', '2011.11', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17010', '吴桥县', '2011.10', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17009', '南皮县', '2011.9', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17008', '肃宁县', '2011.8', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17007', '盐山县', '2011.7', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17006', '海兴县', '2011.6', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17005', '东光县', '2011.5', 'nativeplace', '2012', '2');
INSERT INTO `dede_sys_enum` VALUES ('17004', '青　县', '2011.4', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17003', '沧　县', '2011.3', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17002', '运河区', '2011.2', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17001', '新华区', '2011.1', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('17000', '沧州市', '2011', 'nativeplace', '2011', '1');
INSERT INTO `dede_sys_enum` VALUES ('16999', '深州市', '2010.11', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16998', '冀州市', '2010.10', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16997', '阜城县', '2010.9', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16996', '景　县', '2010.8', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16995', '故城县', '2010.7', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16994', '安平县', '2010.6', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16993', '饶阳县', '2010.5', 'nativeplace', '2011', '2');
INSERT INTO `dede_sys_enum` VALUES ('16992', '武强县', '2010.4', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16991', '武邑县', '2010.3', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16990', '枣强县', '2010.2', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16989', '桃城区', '2010.1', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16988', '衡水市', '2010', 'nativeplace', '2010', '1');
INSERT INTO `dede_sys_enum` VALUES ('16987', '三河市', '2009.10', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16986', '霸州市', '2009.9', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16985', '大厂回族自治县', '2009.8', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16984', '文安县', '2009.7', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16983', '大城县', '2009.6', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16982', '香河县', '2009.5', 'nativeplace', '2010', '2');
INSERT INTO `dede_sys_enum` VALUES ('16981', '永清县', '2009.4', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16980', '固安县', '2009.3', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16979', '广阳区', '2009.2', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16978', '安次区', '2009.1', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16977', '廊坊市', '2009', 'nativeplace', '2009', '1');
INSERT INTO `dede_sys_enum` VALUES ('16976', ' 围场满族蒙古族自治县', '2008.11', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16975', '宽城满族自治', '2008.10', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16974', '丰宁满族自治县', '2008.9', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16973', '隆化县', '2008.8', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16972', '滦平县', '2008.7', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16971', '平泉县', '2008.6', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16970', '兴隆县', '2008.5', 'nativeplace', '2009', '2');
INSERT INTO `dede_sys_enum` VALUES ('16969', '承德县', '2008.4', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16968', '鹰手营子矿区', '2008.3', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16967', '双滦区', '2008.2', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16966', '双桥区', '2008.1', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16965', '承德市', '2008', 'nativeplace', '2008', '1');
INSERT INTO `dede_sys_enum` VALUES ('16964', '崇礼县', '2007.17', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16963', '赤城县', '2007.16', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16962', '涿鹿县', '2007.15', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16961', '怀来县', '2007.14', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16960', '万全县', '2007.13', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16959', '怀安县', '2007.12', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16958', '阳原县', '2007.11', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16957', '蔚　县', '2007.10', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16956', '尚义县', '2007.9', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16955', '沽源县', '2007.8', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16954', '康保县', '2007.7', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16953', '张北县', '2007.6', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16952', '宣化县', '2007.5', 'nativeplace', '2008', '2');
INSERT INTO `dede_sys_enum` VALUES ('16951', '下花园区', '2007.4', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16950', '宣化区', '2007.3', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16949', '桥西区', '2007.2', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16948', '桥东区', '2007.1', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16947', '张家口市', '2007', 'nativeplace', '2007', '1');
INSERT INTO `dede_sys_enum` VALUES ('16946', '高碑店市', '2006.25', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16945', '安国市', '2006.24', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16944', '定州市', '2006.23', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16943', '涿州市', '2006.22', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16942', '雄　县', '2006.21', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16941', '博野县', '2006.20', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16940', '顺平县', '2006.19', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16939', '蠡　县', '2006.18', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16938', '曲阳县', '2006.17', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16937', '易县', '2006.16', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16936', '安新县', '2006.15', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16935', '望都县', '2006.14', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16934', '涞源县', '2006.13', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16933', '容城县', '2006.12', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16932', '高阳县', '2006.11', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16931', '唐　县', '2006.10', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16930', '定兴县', '2006.9', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16929', '徐水县', '2006.8', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16928', '阜平县', '2006.7', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16927', '涞水县', '2006.6', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16926', '清苑县', '2006.5', 'nativeplace', '2007', '2');
INSERT INTO `dede_sys_enum` VALUES ('16925', '满城县', '2006.4', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16924', '南市区', '2006.3', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16923', '北市区', '2006.2', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16922', '新市区', '2006.1', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16921', '保定市', '2006', 'nativeplace', '2006', '1');
INSERT INTO `dede_sys_enum` VALUES ('16920', '沙河市', '2005.19', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16919', '南宫市', '2005.18', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16918', '临西县', '2005.17', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16917', '清河县', '2005.16', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16916', '威　县', '2005.15', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16915', '平乡县', '2005.14', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16914', '广宗县', '2005.13', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16913', '新河县', '2005.12', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16912', '巨鹿县', '2005.11', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16911', '宁晋县', '2005.10', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16910', '南和县', '2005.9', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16909', '任　县', '2005.8', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16908', '隆尧县', '2005.7', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16907', '柏乡县', '2005.6', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16906', '内丘县', '2005.5', 'nativeplace', '2006', '2');
INSERT INTO `dede_sys_enum` VALUES ('16905', '临城县', '2005.4', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16904', '邢台县', '2005.3', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16903', '桥西区', '2005.2', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16902', '桥东区', '2005.1', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16901', '邢台市', '2005', 'nativeplace', '2005', '1');
INSERT INTO `dede_sys_enum` VALUES ('16900', '武安市', '2004.20', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16899', '曲周县', '2004.19', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16898', '魏县', '2004.18', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16897', '馆陶县', '2004.17', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16896', '广平县', '2004.16', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16895', '鸡泽县', '2004.15', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16894', '邱　县', '2004.14', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16893', '永年县', '2004.13', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16892', '肥乡县', '2004.12', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16891', '磁　县', '2004.11', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16890', '涉　县', '2004.10', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16889', '大名县', '2004.9', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16888', '成安县', '2004.8', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16887', '临漳县', '2004.7', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16886', '邯郸县', '2004.6', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16885', '峰峰矿区', '2004.5', 'nativeplace', '2005', '2');
INSERT INTO `dede_sys_enum` VALUES ('16884', '复兴区', '2004.4', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16883', '丛台区', '2004.3', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16882', '邯山区', '2004.2', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16881', '市辖区', '2004.1', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16880', '邯郸市', '2004', 'nativeplace', '2004', '1');
INSERT INTO `dede_sys_enum` VALUES ('16879', '卢龙县', '2003.7', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16878', '抚宁县', '2003.6', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16877', '昌黎县', '2003.5', 'nativeplace', '2004', '2');
INSERT INTO `dede_sys_enum` VALUES ('16876', '青龙满族自治县', '2003.4', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16875', '北戴河区', '2003.3', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16874', '山海关区', '2003.2', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16873', '海港区', '2003.1', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16872', '秦皇岛市', '2003', 'nativeplace', '2003', '1');
INSERT INTO `dede_sys_enum` VALUES ('16871', '迁安市', '2002.14', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16870', '遵化市', '2002.13', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16869', '唐海县', '2002.12', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16868', '玉田县', '2002.11', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16867', '迁西县', '2002.10', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16866', '乐亭县', '2002.9', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16865', '滦南县', '2002.8', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16864', '滦　县', '2002.7', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16863', '丰润区', '2002.6', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16862', '丰南区', '2002.5', 'nativeplace', '2003', '2');
INSERT INTO `dede_sys_enum` VALUES ('16861', '开平区', '2002.4', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16860', '古冶区', '2002.3', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16859', '路北区', '2002.2', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16858', '路南区', '2002.1', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16857', '唐山市', '2002', 'nativeplace', '2002', '1');
INSERT INTO `dede_sys_enum` VALUES ('16856', '鹿泉市', '2001.23', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16855', '新乐市', '2001.22', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16854', '晋州市', '2001.21', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16853', '藁城市', '2001.20', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16852', '辛集市', '2001.19', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16851', '赵　县', '2001.18', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16850', '元氏县', '2001.17', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16849', '平山县', '2001.16', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16848', '无极县', '2001.15', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16847', '赞皇县', '2001.14', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16846', '深泽县', '2001.13', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16845', '高邑县', '2001.12', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16844', '灵寿县', '2001.11', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16843', '行唐县', '2001.10', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16842', '栾城县', '2001.9', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16841', '正定县', '2001.8', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16840', '井陉县', '2001.7', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16839', '裕华区', '2001.6', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16838', '井陉矿区', '2001.5', 'nativeplace', '2002', '2');
INSERT INTO `dede_sys_enum` VALUES ('16837', '新华区', '2001.4', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16836', '桥西区', '2001.3', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16835', '桥东区', '2001.2', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16834', '长安区', '2001.1', 'nativeplace', '2001', '2');
INSERT INTO `dede_sys_enum` VALUES ('16833', '石家庄市', '2001', 'nativeplace', '2001', '1');
INSERT INTO `dede_sys_enum` VALUES ('16832', '河北省', '2000', 'nativeplace', '2000', '0');
INSERT INTO `dede_sys_enum` VALUES ('16831', '蓟　县', '1518', 'nativeplace', '1518', '1');
INSERT INTO `dede_sys_enum` VALUES ('16830', '静海县', '1517', 'nativeplace', '1517', '1');
INSERT INTO `dede_sys_enum` VALUES ('16829', '宁河县', '1516', 'nativeplace', '1516', '1');
INSERT INTO `dede_sys_enum` VALUES ('16828', '宝坻区', '1515', 'nativeplace', '1515', '1');
INSERT INTO `dede_sys_enum` VALUES ('16827', '武清区', '1514', 'nativeplace', '1514', '1');
INSERT INTO `dede_sys_enum` VALUES ('16826', '北辰区', '1513', 'nativeplace', '1513', '1');
INSERT INTO `dede_sys_enum` VALUES ('16825', '津南区', '1512', 'nativeplace', '1512', '1');
INSERT INTO `dede_sys_enum` VALUES ('16824', '西青区', '1511', 'nativeplace', '1511', '1');
INSERT INTO `dede_sys_enum` VALUES ('16823', '东丽区', '1510', 'nativeplace', '1510', '1');
INSERT INTO `dede_sys_enum` VALUES ('16822', '大港区', '1509', 'nativeplace', '1509', '1');
INSERT INTO `dede_sys_enum` VALUES ('16821', '汉沽区', '1508', 'nativeplace', '1508', '1');
INSERT INTO `dede_sys_enum` VALUES ('16820', '塘沽区', '1507', 'nativeplace', '1507', '1');
INSERT INTO `dede_sys_enum` VALUES ('16819', '红桥区', '1506', 'nativeplace', '1506', '1');
INSERT INTO `dede_sys_enum` VALUES ('16818', '河北区', '1505', 'nativeplace', '1505', '1');
INSERT INTO `dede_sys_enum` VALUES ('16817', '南开区', '1504', 'nativeplace', '1504', '1');
INSERT INTO `dede_sys_enum` VALUES ('16816', '河西区', '1503', 'nativeplace', '1503', '1');
INSERT INTO `dede_sys_enum` VALUES ('16815', '河东区', '1502', 'nativeplace', '1502', '1');
INSERT INTO `dede_sys_enum` VALUES ('16814', '和平区', '1501', 'nativeplace', '1501', '1');
INSERT INTO `dede_sys_enum` VALUES ('16813', '天津市', '1500', 'nativeplace', '1500', '0');
INSERT INTO `dede_sys_enum` VALUES ('16812', '延庆县', '1018', 'nativeplace', '1018', '1');
INSERT INTO `dede_sys_enum` VALUES ('16811', '密云县', '1017', 'nativeplace', '1017', '1');
INSERT INTO `dede_sys_enum` VALUES ('16810', '平谷区', '1016', 'nativeplace', '1016', '1');
INSERT INTO `dede_sys_enum` VALUES ('16809', '怀柔区', '1015', 'nativeplace', '1015', '1');
INSERT INTO `dede_sys_enum` VALUES ('16808', '大兴区', '1014', 'nativeplace', '1014', '1');
INSERT INTO `dede_sys_enum` VALUES ('16807', '昌平区', '1013', 'nativeplace', '1013', '1');
INSERT INTO `dede_sys_enum` VALUES ('16806', '顺义区', '1012', 'nativeplace', '1012', '1');
INSERT INTO `dede_sys_enum` VALUES ('16805', '通州区', '1011', 'nativeplace', '1011', '1');
INSERT INTO `dede_sys_enum` VALUES ('16804', '房山区', '1010', 'nativeplace', '1010', '1');
INSERT INTO `dede_sys_enum` VALUES ('16803', '门头沟区', '1009', 'nativeplace', '1009', '1');
INSERT INTO `dede_sys_enum` VALUES ('16802', '海淀区', '1008', 'nativeplace', '1008', '1');
INSERT INTO `dede_sys_enum` VALUES ('16801', '石景山区', '1007', 'nativeplace', '1007', '1');
INSERT INTO `dede_sys_enum` VALUES ('16800', '丰台区', '1006', 'nativeplace', '1006', '1');
INSERT INTO `dede_sys_enum` VALUES ('16799', '朝阳区', '1005', 'nativeplace', '1005', '1');
INSERT INTO `dede_sys_enum` VALUES ('16798', '宣武区', '1004', 'nativeplace', '1004', '1');
INSERT INTO `dede_sys_enum` VALUES ('16797', '崇文区', '1003', 'nativeplace', '1003', '1');
INSERT INTO `dede_sys_enum` VALUES ('16796', '西城区', '1002', 'nativeplace', '1002', '1');
INSERT INTO `dede_sys_enum` VALUES ('16795', '东城区', '1001', 'nativeplace', '1001', '1');
INSERT INTO `dede_sys_enum` VALUES ('16794', '北京市', '1000', 'nativeplace', '1000', '0');

-- ----------------------------
-- Table structure for dede_sys_module
-- ----------------------------
DROP TABLE IF EXISTS `dede_sys_module`;
CREATE TABLE `dede_sys_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hashcode` char(32) NOT NULL DEFAULT '',
  `modname` varchar(30) NOT NULL DEFAULT '',
  `indexname` varchar(20) NOT NULL DEFAULT '',
  `indexurl` varchar(30) NOT NULL DEFAULT '',
  `ismember` tinyint(4) NOT NULL DEFAULT '1',
  `menustring` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sys_module
-- ----------------------------
INSERT INTO `dede_sys_module` VALUES ('1', '0cce60bc0238aa03804682c801584991', '百度新闻', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('2', '1f35620fb42d452fa2bdc1dee1690f92', '文件管理器', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('4', 'b437d85a7a7bc778c9c79b5ec36ab9aa', '友情链接', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('5', 'acb8b88eb4a6d4bfc375c18534f9439e', '投票模块', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('6', '572606600345b1a4bb8c810bbae434cc', '挑错管理', '', '', '0', '');
INSERT INTO `dede_sys_module` VALUES ('7', '533c5b843ded8752b9857cc7c8e5b455', '得德广告模块', '', '', '0', '<m:top name=\'德得广告\' display=\'block\'>\r\n<m:item name=\'德得模块\' link=\'mda_main.php\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'广告管理\' link=\'mda_main.php?dopost=place\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'查看报表\' link=\'mda_main.php?dopost=report\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'结算中心\' link=\'mda_main.php?dopost=account\' rank=\'plus_广告管理\' target=\'main\'/>\r\n<m:item name=\'德得设置\' link=\'mda_main.php?dopost=setting\' rank=\'plus_广告管理\' target=\'main\'/>\r\n</m:top>');

-- ----------------------------
-- Table structure for dede_sys_set
-- ----------------------------
DROP TABLE IF EXISTS `dede_sys_set`;
CREATE TABLE `dede_sys_set` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sname` char(20) NOT NULL DEFAULT '',
  `items` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sys_set
-- ----------------------------
INSERT INTO `dede_sys_set` VALUES ('1', 'nature', '性格外向,性格内向,活泼开朗,沉默寡言,幽默,稳重,轻浮,冲动,坚强,脆弱,幼稚,成熟,能说会道,自私,真诚,独立,依赖,任性,自负,自卑,温柔体贴,神经质,拜金,小心翼翼,暴躁,倔强,逆来顺受,不拘小节,婆婆妈妈,交际广泛,豪爽,害羞,狡猾善变,耿直,虚伪,乐观向上,悲观消极,郁郁寡欢,孤僻,难以琢磨,胆小怕事,敢做敢当,助人为乐,老实,守旧,敏感,迟钝,武断,果断,优柔寡断,暴力倾向,刻薄,损人利己,附庸风雅,时喜时悲,患得患失,快言快语,豪放不羁,多愁善感,循规蹈矩');
INSERT INTO `dede_sys_set` VALUES ('2', 'language', '普通话,上海话,广东话,英语,日语,韩语,法语,意大利语,德语,西班牙语,俄语,阿拉伯语');

-- ----------------------------
-- Table structure for dede_sys_task
-- ----------------------------
DROP TABLE IF EXISTS `dede_sys_task`;
CREATE TABLE `dede_sys_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taskname` varchar(50) NOT NULL,
  `dourl` varchar(100) NOT NULL,
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `runtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `runtime` varchar(10) DEFAULT '0000',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `freq` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `lastrun` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(250) NOT NULL,
  `parameter` text,
  `settime` int(10) unsigned NOT NULL DEFAULT '0',
  `sta` enum('运行','成功','失败') DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sys_task
-- ----------------------------

-- ----------------------------
-- Table structure for dede_sysconfig
-- ----------------------------
DROP TABLE IF EXISTS `dede_sysconfig`;
CREATE TABLE `dede_sysconfig` (
  `aid` smallint(8) unsigned NOT NULL DEFAULT '0',
  `varname` varchar(20) NOT NULL DEFAULT '',
  `info` varchar(100) NOT NULL DEFAULT '',
  `groupid` smallint(6) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'string',
  `value` text,
  PRIMARY KEY (`varname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_sysconfig
-- ----------------------------
INSERT INTO `dede_sysconfig` VALUES ('1', 'cfg_basehost', '站点根网址', '1', 'string', 'http://www.fudazb.com/');
INSERT INTO `dede_sysconfig` VALUES ('2', 'cfg_cmspath', 'DedeCMS安装目录', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('3', 'cfg_cookie_encode', 'cookie加密码', '2', 'string', 'BHpp2Vfx56ww17c5Gy4q7vhWTAd7tvB');
INSERT INTO `dede_sysconfig` VALUES ('4', 'cfg_indexurl', '网页主页链接', '1', 'string', '/');
INSERT INTO `dede_sysconfig` VALUES ('5', 'cfg_backup_dir', '数据备份目录（在data目录内）', '2', 'string', 'backupdata');
INSERT INTO `dede_sysconfig` VALUES ('6', 'cfg_indexname', '主页链接名', '1', 'string', '主页');
INSERT INTO `dede_sysconfig` VALUES ('7', 'cfg_webname', '网站名称', '1', 'string', '富达资本');
INSERT INTO `dede_sysconfig` VALUES ('8', 'cfg_adminemail', '网站发信EMAIL', '2', 'string', 'admin@lanrui.com');
INSERT INTO `dede_sysconfig` VALUES ('9', 'cfg_html_editor', 'Html编辑器（ckeditor,需要fck的用户可以去官网下载）', '2', 'string', 'ckeditor');
INSERT INTO `dede_sysconfig` VALUES ('10', 'cfg_arcdir', '文档HTML默认保存路径', '1', 'string', '/a');
INSERT INTO `dede_sysconfig` VALUES ('11', 'cfg_medias_dir', '图片/上传文件默认路径', '1', 'string', '/uploads');
INSERT INTO `dede_sysconfig` VALUES ('12', 'cfg_ddimg_width', '缩略图默认宽度', '3', 'number', '240');
INSERT INTO `dede_sysconfig` VALUES ('13', 'cfg_ddimg_height', '缩略图默认高度', '3', 'number', '180');
INSERT INTO `dede_sysconfig` VALUES ('63', 'cfg_album_width', '图集默认显示图片的大小', '3', 'number', '800');
INSERT INTO `dede_sysconfig` VALUES ('15', 'cfg_imgtype', '图片浏览器文件类型', '3', 'string', 'jpg|gif|png');
INSERT INTO `dede_sysconfig` VALUES ('16', 'cfg_softtype', '允许上传的软件类型', '3', 'bstring', 'zip|gz|rar|iso|doc|xsl|ppt|wps');
INSERT INTO `dede_sysconfig` VALUES ('17', 'cfg_mediatype', '允许的多媒体文件类型', '3', 'bstring', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov');
INSERT INTO `dede_sysconfig` VALUES ('18', 'cfg_specnote', '专题的最大节点数', '2', 'number', '6');
INSERT INTO `dede_sysconfig` VALUES ('19', 'cfg_list_symbol', '栏目位置的间隔符号', '2', 'string', ' > ');
INSERT INTO `dede_sysconfig` VALUES ('20', 'cfg_notallowstr', '禁用词语（系统将直接停止用户动作）<br/>用|分开，但不要在结尾加|', '5', 'bstring', '非典|艾滋病|阳痿');
INSERT INTO `dede_sysconfig` VALUES ('21', 'cfg_feedbackcheck', '评论及留言(是/否)需审核', '5', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('22', 'cfg_keyword_replace', '关键字替换(是/否)使用本功能会影响HTML生成速度', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('23', 'cfg_fck_xhtml', '编辑器(是/否)使用XHTML', '1', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('24', 'cfg_df_style', '模板默认风格', '1', 'string', 'lanrui');
INSERT INTO `dede_sysconfig` VALUES ('25', 'cfg_multi_site', '(是/否)支持多站点，开启此项后附件、栏目连接、arclist内容启用绝对网址', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('58', 'cfg_rm_remote', '远程图片本地化', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('27', 'cfg_dede_log', '(是/否)开启管理日志', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('28', 'cfg_powerby', '网站版权信息', '1', 'bstring', 'Copyright &copy  2002-2018富达资本 版权所有');
INSERT INTO `dede_sysconfig` VALUES ('722', 'cfg_jump_once', '跳转网址是否直接跳转？（否则显示中转页）', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('723', 'cfg_task_pwd', '系统计划任务客户端许可密码<br/>(需要客户端，通常不会太重要)', '7', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('29', 'cfg_arcsptitle', '(是/否)开启分页标题，开启会影响HTML生成速度', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('30', 'cfg_arcautosp', '(是/否)开启长文章自动分页', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('31', 'cfg_arcautosp_size', '文章自动分页大小（单位: K）', '6', 'number', '5');
INSERT INTO `dede_sysconfig` VALUES ('32', 'cfg_auot_description', '自动摘要长度（0-250，0表示不启用）', '7', 'number', '240');
INSERT INTO `dede_sysconfig` VALUES ('33', 'cfg_ftp_host', 'FTP主机', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('34', 'cfg_ftp_port', 'FTP端口', '2', 'number', '21');
INSERT INTO `dede_sysconfig` VALUES ('35', 'cfg_ftp_user', 'FTP用户名', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('36', 'cfg_ftp_pwd', 'FTP密码', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('37', 'cfg_ftp_root', '网站根在FTP中的目录', '2', 'string', '/');
INSERT INTO `dede_sysconfig` VALUES ('38', 'cfg_ftp_mkdir', '是否强制用FTP创建目录', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('39', 'cfg_feedback_ck', '评论加验证码重确认', '5', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('40', 'cfg_list_son', '上级列表是否包含子类内容', '6', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('41', 'cfg_mb_open', '是否开启会员功能', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('42', 'cfg_mb_album', '是否开启会员图集功能', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('43', 'cfg_mb_upload', '是否允许会员上传非图片附件', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('44', 'cfg_mb_upload_size', '会员上传文件大小(K)', '4', 'number', '1024');
INSERT INTO `dede_sysconfig` VALUES ('45', 'cfg_mb_sendall', '是否开放会员对自定义模型投稿', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('46', 'cfg_mb_rmdown', '是否把会员指定的远程文档下载到本地', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('47', 'cfg_cli_time', '服务器时区设置', '2', 'number', '8');
INSERT INTO `dede_sysconfig` VALUES ('48', 'cfg_mb_addontype', '会员附件许可的类型', '4', 'bstring', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|zip|rar|doc|xsl|ppt|wps');
INSERT INTO `dede_sysconfig` VALUES ('49', 'cfg_mb_max', '会员附件总大小限制(MB)', '4', 'number', '500');
INSERT INTO `dede_sysconfig` VALUES ('20', 'cfg_replacestr', '替换词语（词语会被替换成***）<br/>用|分开，但不要在结尾加|', '5', 'bstring', '她妈|它妈|他妈|你妈|去死|贱人');
INSERT INTO `dede_sysconfig` VALUES ('719', 'cfg_makeindex', '发布文章后马上更新网站主页', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('51', 'cfg_keyword_like', '使用关键词关连文章', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('52', 'cfg_index_max', '网站主页调用函数最大索引文档数<br>不适用于经常单栏目采集过多内容的网站<br>不启用本项此值设置为0即可', '6', 'number', '10000');
INSERT INTO `dede_sysconfig` VALUES ('53', 'cfg_index_cache', 'arclist标签调用缓存<br />(0 不启用，大于0值为多少秒)', '6', 'number', '86400');
INSERT INTO `dede_sysconfig` VALUES ('54', 'cfg_tplcache', '是否启用模板缓存', '6', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('55', 'cfg_tplcache_dir', '模板缓存目录', '6', 'string', '/data/tplcache');
INSERT INTO `dede_sysconfig` VALUES ('56', 'cfg_makesign_cache', '发布/修改单个文档是否使用调用缓存', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('59', 'cfg_arc_dellink', '删除非站内链接', '7', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('60', 'cfg_arc_autopic', '提取第一张图片作为缩略图', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('61', 'cfg_arc_autokeyword', '自动提取关键字', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('62', 'cfg_title_maxlen', '文档标题最大长度<br>改此参数后需要手工修改数据表', '7', 'number', '60');
INSERT INTO `dede_sysconfig` VALUES ('64', 'cfg_check_title', '发布文档时是否检测重复标题', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('65', 'cfg_album_row', '图集多行多列样式默认行数', '3', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('66', 'cfg_album_col', '图集多行多列样式默认列数', '3', 'number', '4');
INSERT INTO `dede_sysconfig` VALUES ('67', 'cfg_album_pagesize', '图集多页多图每页显示最大数', '3', 'number', '12');
INSERT INTO `dede_sysconfig` VALUES ('68', 'cfg_album_style', '图集默认样式<br />1为多页多图,2为多页单图,3为缩略图列表', '3', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('69', 'cfg_album_ddwidth', '图集默认缩略图大小', '3', 'number', '200');
INSERT INTO `dede_sysconfig` VALUES ('70', 'cfg_mb_notallow', '不允许注册的会员id', '4', 'bstring', 'www,bbs,ftp,mail,user,users,admin,administrator');
INSERT INTO `dede_sysconfig` VALUES ('71', 'cfg_mb_idmin', '用户id最小长度', '4', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('72', 'cfg_mb_pwdmin', '用户密码最小长度', '4', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('73', 'cfg_md_idurl', '是否严格限定会员登录id<br>允许会员使用二级域名必须设置此项', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('74', 'cfg_mb_rank', '注册会员默认级别<br>[会员权限管理中]查看级别代表的数字', '4', 'number', '10');
INSERT INTO `dede_sysconfig` VALUES ('76', 'cfg_feedback_time', '两次评论至少间隔时间(秒钟)', '5', 'number', '30');
INSERT INTO `dede_sysconfig` VALUES ('77', 'cfg_feedback_numip', '每个IP一小时内最大评论数', '5', 'number', '30');
INSERT INTO `dede_sysconfig` VALUES ('78', 'cfg_md_mailtest', '是否限制Email只能注册一个帐号', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('79', 'cfg_mb_spacesta', '会员使用权限开通状态<br>(-10 邮件验证 -1 手工审核, 0 没限制)', '4', 'number', '-10');
INSERT INTO `dede_sysconfig` VALUES ('728', 'cfg_mb_allowreg', '是否允许新会员注册', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('729', 'cfg_mb_adminlock', '是否禁止访问管理员帐号的空间', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('81', 'cfg_vdcode_member', '会员投稿是否使用验证码', '5', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('83', 'cfg_mb_cktitle', '会员投稿是否检测重复标题', '5', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('84', 'cfg_mb_editday', '投稿多长时间后不能再修改[天]', '5', 'number', '7');
INSERT INTO `dede_sysconfig` VALUES ('729', 'cfg_sendarc_scores', '投稿可获取积分', '5', 'number', '10');
INSERT INTO `dede_sysconfig` VALUES ('88', 'cfg_caicai_sub', '被踩扣除文章好评度', '5', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('89', 'cfg_caicai_add', '被顶扣除文章好评度', '5', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('90', 'cfg_feedback_add', '详细好评可获好评度', '5', 'number', '5');
INSERT INTO `dede_sysconfig` VALUES ('91', 'cfg_feedback_sub', '详细恶评扣除好评度', '5', 'number', '5');
INSERT INTO `dede_sysconfig` VALUES ('730', 'cfg_sendfb_scores', '参与评论可获积分', '5', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('92', 'cfg_search_max', '最大搜索检查文档数', '6', 'number', '50000');
INSERT INTO `dede_sysconfig` VALUES ('93', 'cfg_search_maxrc', '最大返回搜索结果数', '6', 'number', '300');
INSERT INTO `dede_sysconfig` VALUES ('94', 'cfg_search_time', '搜索间隔时间(秒/对网站所有用户)', '6', 'number', '3');
INSERT INTO `dede_sysconfig` VALUES ('95', 'cfg_baidunews_limit', '百度新闻xml更新新闻数量 最大100', '8', 'string', '100');
INSERT INTO `dede_sysconfig` VALUES ('223', 'cfg_smtp_port', 'smtp服务器端口', '2', 'string', '25');
INSERT INTO `dede_sysconfig` VALUES ('221', 'cfg_sendmail_bysmtp', '是否启用smtp方式发送邮件', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('222', 'cfg_smtp_server', 'smtp服务器', '2', 'string', 'smtp.qq.com');
INSERT INTO `dede_sysconfig` VALUES ('224', 'cfg_smtp_usermail', 'SMTP服务器的用户邮箱', '2', 'string', 'desdev@vip.qq.com');
INSERT INTO `dede_sysconfig` VALUES ('225', 'cfg_smtp_user', 'SMTP服务器的用户帐号', '2', 'string', 'desdev');
INSERT INTO `dede_sysconfig` VALUES ('226', 'cfg_smtp_password', 'SMTP服务器的用户密码', '2', 'string', '7260444huxiao');
INSERT INTO `dede_sysconfig` VALUES ('96', 'cfg_updateperi', '百度新闻xml更新时间 （单位：分钟）', '8', 'string', '15');
INSERT INTO `dede_sysconfig` VALUES ('227', 'cfg_online_type', '在线支付网关类型', '2', 'string', 'nps');
INSERT INTO `dede_sysconfig` VALUES ('706', 'cfg_upload_switch', '删除文章文件同时删除相关附件文件', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('708', 'cfg_rewrite', '是否使用伪静态', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('707', 'cfg_allsearch_limit', '网站全局搜索时间限制', '2', 'string', '1');
INSERT INTO `dede_sysconfig` VALUES ('709', 'cfg_delete', '文章回收站(是/否)开启', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('710', 'cfg_keywords', '站点默认关键字', '1', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('711', 'cfg_description', '站点描述', '1', 'bstring', '');
INSERT INTO `dede_sysconfig` VALUES ('712', 'cfg_beian', '网站备案号', '1', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('713', 'cfg_need_typeid2', '是否启用副栏目', '6', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('72', 'cfg_mb_pwdtype', '前台密码验证类型：默认32 — 32位md5，可选：<br />l16 — 前16位， r16 — 后16位， m16 — 中间16位', '4', 'string', '32');
INSERT INTO `dede_sysconfig` VALUES ('716', 'cfg_cache_type', 'id 文档ID，content 标签最终内容<br />(修改此变量后必须更新系统缓存)', '6', 'string', 'id');
INSERT INTO `dede_sysconfig` VALUES ('717', 'cfg_max_face', '会员上传头像大小限制(单位：KB)', '3', 'number', '50');
INSERT INTO `dede_sysconfig` VALUES ('718', 'cfg_typedir_df', '栏目网址使用目录名（不显示默认页，即是 /a/abc/ 形式）', '2', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('719', 'cfg_make_andcat', '发表文章后马上更新相关栏目', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('720', 'cfg_make_prenext', '发表文章后马上更新上下篇', '6', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('721', 'cfg_feedback_forbid', '是否禁止所有评论(将包括禁止顶踩等)', '5', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('724', 'cfg_addon_domainbind', '附件目录是否绑定为指定的二级域名', '7', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('725', 'cfg_addon_domain', '附件目录的二级域名', '7', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('726', 'cfg_df_dutyadmin', '默认责任编辑(dutyadmin)', '7', 'string', 'admin');
INSERT INTO `dede_sysconfig` VALUES ('727', 'cfg_mb_allowncarc', '是否允许用户空间显示未审核文章', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('730', 'cfg_mb_spaceallarc', '会员空间中所有文档的频道ID(不限为0)', '4', 'number', '0');
INSERT INTO `dede_sysconfig` VALUES ('731', 'cfg_face_adds', '上传头像增加积分', '5', 'number', '10');
INSERT INTO `dede_sysconfig` VALUES ('732', 'cfg_moreinfo_adds', '填写详细资料增加积分', '5', 'number', '20');
INSERT INTO `dede_sysconfig` VALUES ('733', 'cfg_money_scores', '多少积分可以兑换一个金币', '5', 'number', '50');
INSERT INTO `dede_sysconfig` VALUES ('734', 'cfg_mb_wnameone', '是否允许用户笔名/昵称重复', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('735', 'cfg_arc_dirname', '是否允许用目录作为文档文件名<br />文档命名规则需改为：{typedir}/{aid}/index.html', '7', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('736', 'cfg_puccache_time', '需缓存内容全局缓存时间(秒)', '6', 'number', '36000');
INSERT INTO `dede_sysconfig` VALUES ('737', 'cfg_arc_click', '文档默认点击数(-1表示随机50-200)', '7', 'number', '-1');
INSERT INTO `dede_sysconfig` VALUES ('738', 'cfg_addon_savetype', '附件保存形式(按data函数日期参数)', '3', 'string', 'ymd');
INSERT INTO `dede_sysconfig` VALUES ('739', 'cfg_qk_uploadlit', '异步上传缩略图(空间太不稳定的用户关闭此项)', '3', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('740', 'cfg_login_adds', '登录会员中心获积分', '5', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('741', 'cfg_userad_adds', '会员推广获积分', '5', 'number', '10');
INSERT INTO `dede_sysconfig` VALUES ('742', 'cfg_ddimg_full', '缩略图是否使用强制大小(对背景填充)', '3', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('743', 'cfg_ddimg_bgcolor', '缩略图空白背景填充颜色(0-白,1-黑)', '3', 'number', '0');
INSERT INTO `dede_sysconfig` VALUES ('744', 'cfg_replace_num', '文档内容同一关键词替换次数(0为全部替换)', '7', 'number', '2');
INSERT INTO `dede_sysconfig` VALUES ('745', 'cfg_uplitpic_cut', '上传缩略图后是否马上弹出裁剪框', '3', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('746', 'cfg_album_mark', '图集是否使用水印(小图也会受影响)', '3', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('747', 'cfg_mb_feedcheck', '会员动态是否需要审核', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('748', 'cfg_mb_msgischeck', '会员状态是否需要审核', '4', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('749', 'cfg_mb_reginfo', '注册是否需要完成详细资料的填写', '4', 'bool', 'Y');
INSERT INTO `dede_sysconfig` VALUES ('750', 'cfg_remote_site', '是否启用远程站点', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('751', 'cfg_title_site', '是否发布和编辑文档时远程发布(启用远程站点的前提下)', '2', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('752', 'cfg_mysql_type', '数据库类型（支持mysql和mysqli）', '2', 'string', 'mysql');
INSERT INTO `dede_sysconfig` VALUES ('753', 'cfg_sphinx_article', '是否启用文章全文检索功能（需配置sphinx服务器）', '7', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('754', 'cfg_sphinx_host', 'Sphinx服务器主机地址', '7', 'string', 'localhost');
INSERT INTO `dede_sysconfig` VALUES ('755', 'cfg_sphinx_port', 'Sphinx服务器端口号', '7', 'number', '9312');
INSERT INTO `dede_sysconfig` VALUES ('14', 'cfg_domain_cookie', '跨域共享cookie的域名(例如: .dedecms.com)', '2', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('756', 'cfg_memcache_enable', '是否启用memcache缓存，如果为否(N)，默认使用文件缓存', '6', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('757', 'cfg_memcache_mc_defa', '默认memcache缓存服务器地址', '6', 'string', 'memcache://127.0.0.1:11211/default127');
INSERT INTO `dede_sysconfig` VALUES ('758', 'cfg_memcache_mc_oth', '附加memcache缓存服务器地址', '6', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('759', 'cfg_cross_sectypeid', '支持交叉栏目显示副栏目内容', '7', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('760', 'cfg_digg_update', '顶踩缓存异步更新间隔（0为不缓存）', '6', 'number', '0');
INSERT INTO `dede_sysconfig` VALUES ('761', 'cfg_feedback_guest', '是否允许匿名评论', '5', 'bool', 'N');
INSERT INTO `dede_sysconfig` VALUES ('0', 'cfg_disable_funs', '模板引擎禁用PHP函数', '7', 'bstring', 'phpinfo,eval,exec,passthru,shell_exec,system,proc_open,popen,curl_exec,curl_multi_exec,parse_ini_file,show_source,file_put_contents');
INSERT INTO `dede_sysconfig` VALUES ('0', 'cfg_disable_tags', '模板引擎禁用标签', '7', 'bstring', 'php');
INSERT INTO `dede_sysconfig` VALUES ('762', 'cfg_QQ', '', '1', 'bstring', '');
INSERT INTO `dede_sysconfig` VALUES ('763', 'cfg_worktime', '工作时间', '1', 'bstring', '周一至周五：8:30-17:30 周六至周日：9:00-17:00');
INSERT INTO `dede_sysconfig` VALUES ('764', 'cfg_email', '邮箱', '1', 'string', '');
INSERT INTO `dede_sysconfig` VALUES ('765', 'cfg_addressyi', '地址一', '1', 'string', '总部：香港金融中心一期港景街1号');
INSERT INTO `dede_sysconfig` VALUES ('766', 'cfg_addresser', '地址二', '1', 'string', '珠海运营中心：拱北九洲大道与白石路交汇处');

-- ----------------------------
-- Table structure for dede_tagindex
-- ----------------------------
DROP TABLE IF EXISTS `dede_tagindex`;
CREATE TABLE `dede_tagindex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` char(12) NOT NULL DEFAULT '',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `weekcc` int(10) unsigned NOT NULL DEFAULT '0',
  `monthcc` int(10) unsigned NOT NULL DEFAULT '0',
  `weekup` int(10) unsigned NOT NULL DEFAULT '0',
  `monthup` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_tagindex
-- ----------------------------

-- ----------------------------
-- Table structure for dede_taglist
-- ----------------------------
DROP TABLE IF EXISTS `dede_taglist`;
CREATE TABLE `dede_taglist` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `arcrank` smallint(6) NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`,`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_taglist
-- ----------------------------

-- ----------------------------
-- Table structure for dede_uploads
-- ----------------------------
DROP TABLE IF EXISTS `dede_uploads`;
CREATE TABLE `dede_uploads` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `arcid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL DEFAULT '',
  `url` char(80) NOT NULL DEFAULT '',
  `mediatype` smallint(6) NOT NULL DEFAULT '1',
  `width` char(10) NOT NULL DEFAULT '',
  `height` char(10) NOT NULL DEFAULT '',
  `playtime` char(10) NOT NULL DEFAULT '',
  `filesize` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  `mid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `memberid` (`mid`),
  KEY `arcid` (`arcid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_uploads
-- ----------------------------
INSERT INTO `dede_uploads` VALUES ('1', '1', '123', '/uploads/170711/1-1FG11KR2C8.png', '1', '400', '320', '0', '7183', '1499767102', '1');
INSERT INTO `dede_uploads` VALUES ('2', '12', '【财耕谈•收评(0711】大盘会继续向上推进', '/uploads/allimg/170712/1541194M0-0.png', '1', '554', '353', '0', '56458', '1499845280', '1');
INSERT INTO `dede_uploads` VALUES ('3', '12', '【财耕谈•收评(0711】大盘会继续向上推进', '/uploads/allimg/170712/1541195310-1.png', '1', '554', '349', '0', '83875', '1499845280', '1');
INSERT INTO `dede_uploads` VALUES ('4', '14', '这项数据显示信心回暖 杠杆资金纷纷入市(20股或', '/uploads/allimg/170712/15451U520-0.jpg', '1', '400', '400', '0', '14533', '1499845518', '1');
INSERT INTO `dede_uploads` VALUES ('5', '14', '这项数据显示信心回暖 杠杆资金纷纷入市(20股或', '/uploads/allimg/170712/15451R020-1.jpg', '1', '514', '303', '0', '20612', '1499845518', '1');
INSERT INTO `dede_uploads` VALUES ('6', '14', '这项数据显示信心回暖 杠杆资金纷纷入市(20股或', '/uploads/allimg/170712/15451TL3-2.jpg', '1', '585', '552', '0', '80045', '1499845518', '1');
INSERT INTO `dede_uploads` VALUES ('7', '14', '这项数据显示信心回暖 杠杆资金纷纷入市(20股或', '/uploads/allimg/170712/15451U147-3.jpg', '1', '640', '620', '0', '89107', '1499845519', '1');
INSERT INTO `dede_uploads` VALUES ('8', '14', '这项数据显示信心回暖 杠杆资金纷纷入市(20股或', '/uploads/allimg/170712/15451RV1-4.jpg', '1', '640', '295', '0', '45432', '1499845519', '1');
INSERT INTO `dede_uploads` VALUES ('9', '0', '170714/1-1FG4164525936.jpg', '/uploads/allimg/170714/1-1FG4164525936.jpg', '1', '620', '329', '0', '60100', '1500021925', '1');
INSERT INTO `dede_uploads` VALUES ('10', '0', '170714/1-1FG41H501A3.jpg', '/uploads/allimg/170714/1-1FG41H501A3.jpg', '1', '620', '329', '0', '60100', '1500024301', '1');
INSERT INTO `dede_uploads` VALUES ('11', '0', '170714/1-1FG41I0131U.jpg', '/uploads/allimg/170714/1-1FG41I0131U.jpg', '1', '620', '329', '0', '60100', '1500024613', '1');

-- ----------------------------
-- Table structure for dede_verifies
-- ----------------------------
DROP TABLE IF EXISTS `dede_verifies`;
CREATE TABLE `dede_verifies` (
  `nameid` char(32) NOT NULL DEFAULT '',
  `cthash` varchar(32) NOT NULL DEFAULT '',
  `method` enum('local','official') NOT NULL DEFAULT 'official',
  `filename` varchar(254) NOT NULL DEFAULT '',
  PRIMARY KEY (`nameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_verifies
-- ----------------------------

-- ----------------------------
-- Table structure for dede_vote
-- ----------------------------
DROP TABLE IF EXISTS `dede_vote`;
CREATE TABLE `dede_vote` (
  `aid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `votename` varchar(50) NOT NULL DEFAULT '',
  `starttime` int(10) unsigned NOT NULL DEFAULT '0',
  `endtime` int(10) unsigned NOT NULL DEFAULT '0',
  `totalcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ismore` tinyint(6) NOT NULL DEFAULT '0',
  `isallow` tinyint(6) NOT NULL DEFAULT '0',
  `view` tinyint(6) NOT NULL DEFAULT '0',
  `spec` int(20) unsigned NOT NULL DEFAULT '0',
  `isenable` tinyint(6) NOT NULL DEFAULT '0',
  `votenote` text,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_vote
-- ----------------------------
INSERT INTO `dede_vote` VALUES ('1', '你是从哪儿得知本站的？', '1266336000', '1584547200', '0', '0', '1', '1', '0', '0', '<v:note id=\"1\" count=\"1\">朋友介绍</v:note>rn<v:note id=\"2\" count=\"0\">门户网站的搜索引擎</v:note>rn<v:note id=\"3\" count=\"2\">Google或百度搜索</v:note>rn<v:note id=\"4\" count=\"2\">别的网站上的链接</v:note>rn<v:note id=\"5\" count=\"1\">其它途径</v:note>rn');

-- ----------------------------
-- Table structure for dede_vote_member
-- ----------------------------
DROP TABLE IF EXISTS `dede_vote_member`;
CREATE TABLE `dede_vote_member` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `voteid` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` varchar(50) NOT NULL DEFAULT '',
  `uptime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dede_vote_member
-- ----------------------------
