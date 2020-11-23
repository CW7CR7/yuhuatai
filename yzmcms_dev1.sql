/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : yzmcms_dev1

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-09-27 11:37:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for yzm_activity
-- ----------------------------
DROP TABLE IF EXISTS `yzm_activity`;
CREATE TABLE `yzm_activity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `seo_title` varchar(200) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `groupids_view` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `is_charge` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否收费 0免费 1限时免费 2收费',
  `charge_time` datetime DEFAULT NULL COMMENT '限时免费到期时间',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  `manager` varchar(100) NOT NULL DEFAULT 'tang',
  `speakers` varchar(100) NOT NULL DEFAULT 'tang',
  `kankanurl` varchar(100) NOT NULL DEFAULT 't-FvyC7xi',
  `start_time` varchar(100) NOT NULL DEFAULT '',
  `did` int(10) unsigned NOT NULL DEFAULT '0',
  `teacher` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`),
  KEY `catid` (`catid`,`status`),
  KEY `userid` (`userid`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_activity
-- ----------------------------
INSERT INTO `yzm_activity` VALUES ('4', '69', '1', 'yzmcms', '陈文婕', '西柏坡廉政教育主题活动', '西柏坡廉政教育主题活动_红研旅虚拟旅游研学平台', '', '1589737106', '1599357301', '', '西柏坡廉政教育馆位于西柏坡陈列展览馆东南侧，分为地上、地下两层，建筑面积1800多平方米，于2008年1月开工建设，2009年4月14日正式向社会...', '285', '<h1 label=\"标题居中\" style=\"font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">西柏坡廉政教育主题活动</span></h1><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; 西柏坡廉政教育馆位于西柏坡陈列展览馆东南侧，分为地上、地下两层，建筑面积1800多平方米，于2008年1月开工建设，2009年4月14日正式向社会开放。展览以“牢记‘两个务必’，永葆党的先进性”为主题，主要展示中国共产党八十多年的奋斗历程中涌现出来的杰出典范，通过他们的事迹来教育全党同志，弘扬爱国主义精神。内容上坚持党的发展史与党的廉政建设史相结合，突出廉政建设；坚持历史与现实相结合，突出现实针对性。展览内容共分为序厅、中国共产党的廉政建设史、伟人风范、人民公仆、革命先驱和千秋基业(尾厅)六个部分。展览展线长305米，陈展照片306幅，文物127件。西柏坡廉政教育馆的建成，丰富了西柏坡的红色文化资源，搭建起了廉洁勤政教育的平台。同时，也使西柏坡爱国主义教育基地更加系统、更加完善、更加亮丽。</span></p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20200518/1589737133156194.jpg\" title=\"西柏坡廉政教育主题活动\" alt=\"西柏坡廉政教育主题活动\"/></p>', '原创', '/uploads/202006/08/200608040955150.jpg', 'http://www.yht.test.com/activity/4.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'YHTZH', 'https://design.hongyanlv.com/showProPC.html?m=t-IGWJQi2', '2020-06-08 10:01:29', '5', '5');
INSERT INTO `yzm_activity` VALUES ('2', '69', '1', 'yzmcms', '曹丹妮', '华北地区战争史主题活动', '华北地区战争史主题活动_红研旅虚拟旅游研学平台', '', '1591581700', '1599357315', '', '华北革命战争纪念馆是国家发改委确定的红色旅游改扩建项目，始建于2011年3月，2011年12月底建设主体完工，此馆是在原晋察冀革命纪念馆基础...', '246', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px; color: rgb(0, 0, 0);\">华北地区战争史主题活动</span></h1><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; 华北革命战争纪念馆是国家发改委确定的红色旅游改扩建项目，始建于2011年3月，2011年12月底建设主体完工，此馆是在原晋察冀革命纪念馆基础上进行扩建的。纪念馆，高20.5米，总面积5450平方米。正面三个徽章分别是中华人民共和国&quot;八一勋章&quot;（授予参加过土地革命战争时期有关人员（1935年10月参加一方面军）陕北红军\\红25军；1936年10月前参加红二\\四方面军人员等），&quot;独立自由勋章&quot;（授予参加过抗日战争时期连营以上人员），&quot;解放勋章&quot;（授予参加过解放战争时期营团以上人员）。一楼两侧是烈士、老红军骨灰室，中间大厅（400平方米）和二层（2600平方米）为综合展厅。</span></p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20200518/1589736901204993.png\" title=\"华北地区战争史主题活动\" alt=\"华北地区战争史主题活动\"/></p>', '原创', '/uploads/ueditor/image/20200518/thumb_500_300_1589736901204993.png', 'http://www.yht.test.com/activity/2.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'YHTZH', 'https://design.hongyanlv.com/showProPC.html?m=t-dIg4g7p', '2020-05-28 00:00:00', '7', '1');
INSERT INTO `yzm_activity` VALUES ('6', '69', '1', 'yzmcms', '曹丹妮', '华北战争纪念馆文旅部', '华北战争纪念馆文旅部_红研旅虚拟旅游研学平台', '', '1589737257', '1599355918', '', '华北革命战争纪念馆是国家发改委确定的红色旅游改扩建项目，始建于2011年3月，2011年12月底建设主体完工，此馆是在原晋察冀革命纪念馆基础...', '436', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 24px; color: rgb(0, 0, 0);\">华北战争纪念馆文旅部</span></h1><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;华北革命战争纪念馆是国家发改委确定的红色旅游改扩建项目，始建于2011年3月，2011年12月底建设主体完工，此馆是在原晋察冀革命纪念馆基础上进行扩建的。纪念馆，高20.5米，总面积5450平方米。正面三个徽章分别是中华人民共和国&quot;八一勋章&quot;（授予参加过土地革命战争时期有关人员（1935年10月参加一方面军）陕北红军\\红25军；1936年10月前参加红二\\四方面军人员等），&quot;独立自由勋章&quot;（授予参加过抗日战争时期连营以上人员），&quot;解放勋章&quot;（授予参加过解放战争时期营团以上人员）。一楼两侧是烈士、老红军骨灰室，中间大厅（400平方米）和二层（2600平方米）为综合展厅。</span></p><p style=\"text-align: center;\"><img src=\"/uploads/ueditor/image/20200518/thumb_500_300_1589737412215419.png\" alt=\"thumb_500_300_1589737412215419.png\"/></p>', '原创', '/uploads/202006/04/200604104716666.png', 'http://www.yht.test.com/activity/6.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'YHTZH', 'https://design.hongyanlv.com/showProPC.html?m=t-dIg4g7p', '2020-06-08 10:00:48', '7', '1');
INSERT INTO `yzm_activity` VALUES ('8', '69', '1', 'yzmcms', '张辰', '古田会议在中国革命史地位主题活动', '古田会议在中国革命史地位主题活动_红研旅虚拟旅游研学平台', '', '1589737429', '1599357267', '', '古田会议会址是国家级文物保护单位，中共红军第四军第九次代表大会在这个偏僻的小镇里召开。会议讨论通过了毛泽东主持起草的八个决议，即著...', '525', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 24px; color: rgb(0, 0, 0);\">古田会议在中国革命史地位主题活动</span></h1><p style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">古田会议会址，原为“廖氏宗祠”，又名“万源祠”。位于福建省龙岩市上杭县古田镇采眉岭笔架山下。会址座东朝西。始建于清宣宗道光二十八年（1848年）的单层歇山四合院式砖木结构宗祠建筑。祠堂由前后厅和左右厢房组成，建筑面积826平方米。后改为和声小学校址。</span></p><div class=\"para\" label-module=\"para\" style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 28px; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">民国十八年（1929年）五月，红军第一次挺进闽西古田，改名为“曙光小学”。12月，毛泽东同志主持的红四军第九次代表大会在此召开，通过了具有历史意义的古田会议决议案。</span></div><p style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">古田会议总结了红四军成立以来军队建设方面的经验教训，确立了人民军队建设的基本原则，宣示“中国的红军是一个执行革命的政治任务的武装集团”，重申了党对红军实行绝对领导的原则，反对以任何借口削弱党对红军的领导，必须使党成为军队中的坚强领导和团结核心。</span></p><p style=\"font-size: 14px; overflow-wrap: break-word; color: rgb(51, 51, 51); margin-bottom: 15px; text-indent: 2em; line-height: 24px; zoom: 1; font-family: arial, 宋体, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"text-indent: 2em; font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">把党建设成为无产阶级先锋队，把军队建设成为无产阶级领导的新型人民军队，这是事关党的事业兴衰成败的根本性问题，在古田会议决议中得以明确，古田会议决议因此成为我党我军建设的伟大纲领及重要里程碑。</span></p><p style=\"text-align: center;\"><span style=\"text-indent: 2em; color: rgb(0, 0, 0);\"><img src=\"/uploads/ueditor/image/20200608/1591598272213991.png\" title=\"1591598272213991.png\" alt=\"image.png\"/></span></p>', '原创', '/uploads/202006/04/200604103532261.png', 'http://www.yht.test.com/activity/8.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'YHTZH', 'https://design.hongyanlv.com/showProPC.html?m=t-CLLV5', '2020-06-08 10:34:24', '4', '6');
INSERT INTO `yzm_activity` VALUES ('15', '69', '1', 'yzmcms', '谢美霞', '上海历史博物馆—上海解放70周年纪念展', '上海历史博物馆—上海解放70周年纪念展_红研旅虚拟旅游研学平台', '', '1591597428', '1599357250', '', '“重大的转折伟大的胜利——庆祝上海解放七十周年暨纪念南京杭州上海战役胜利七十周年特展” 5月27日至7月1日亮相上海市历史博物馆。展览呈现的260余件文物文献资料中，实物原件70余件，36件为首次展出。解放军战士遗物、烈士陈尔晋王曼霞夫妇的遗物、《上海概况》、《上海各种公用事业概况》、随军记者采访证、赵祖康回忆稿、1949年5月29日发行的《解放日报》等展品，为观众讲述人民解放军在解放上海时的艰辛', '817', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 24px; color: rgb(0, 0, 0);\">上海历史博物馆—上海解放70周年纪念展</span></h1><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; text-align: left;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px; color: rgb(0, 0, 0);\">今年是南京、杭州、上海解放70周年，也是中华人民共和国成立70周年。“重大的转折伟大的胜利</span><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;\">——庆祝上海解放七十周年暨纪念南京杭州上海战役胜利七十周年特展” 5月27日至7月1日亮相上</span><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;\">海市历史博物馆。展览呈现的260余件文物文献资料中，实物原件70余件，36件为首次展出。解放</span><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;\">军战士遗物、烈士陈尔晋王曼霞夫妇的遗物、《上海概况》、《上海各种公用事业概况》、随军记</span><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;\">者采访证、赵祖康回忆稿、1949年5月29日发行的《解放日报》等展品，为观众讲述人民解放军在</span><span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;\">解放上海时的艰辛历程和接管城市的重要史实。&nbsp;</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; text-align: left;\"><br/></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591597720202193.jpg\" width=\"472\" height=\"344\" style=\"font-family: sans-serif; font-size: 16px; padding: 0px; margin: 0px; border: none; width: 472px; height: 344px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; text-align: center;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　<span style=\"color: rgb(0, 0, 0); font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">“重大的转折伟大的胜利——庆祝上海解放七十周年暨纪念南京杭州上海战役胜利七十周年特展”开幕</span><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\"><br/></span></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　<strong style=\"padding: 0px; margin: 0px;\">两张解放日报保存历史真相</strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　南京、杭州、上海的解放，打破了国民党“划江而治”的企图，为解放全中国奠定了胜利基础。展览分为五大部分，“人间正道”、“解放南京”、“解放杭州”、“解放上海”和“沧桑巨变”，分别介绍解放上海南京杭州战役的背景和军民各界的准备工作；南京、杭州、上海解放的相关过程和战役中的感人故事；新中国成立以来上海、南京、杭州在社会主义现代化建设中取得的辉煌成就。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　“我们要记住历史，永远缅怀为解放上海英勇牺牲的先烈们。”在5月27日举行的革命文物捐赠仪式上，参加解放上海战役的老战士陈辉捐赠了他珍藏的解放战争纪念证和抗美援朝纪念证。“希望它们在博物馆中能够更好地传承历史，教育后代。”此次上历博获赠的革命文物还包括1949年4月陈毅等签发的解放上海命令、1947年解放军临时入党证、渡江战争胜利纪念章、陈毅等签署的革命军人优署证、解放战争时期随军照片等。上历博馆长胡江表示，上历博将珍视这些携带着市民珍贵历史记忆的珍藏物件，继续讲好上海历史故事，擦亮上海文化名片，努力传播红色文化、海派文化、江南文化之精彩。此次举办“庆祝上海解放七十周年”特展，希望通过追忆中国人民解放军英勇奋战、前仆后继的献身精神，以及战争年代人民群众的无私奉献，激励当下的我们为实现中华民族的伟</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal; text-align: left;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">大复兴、建设社会主义现代化强国而不懈奋斗。</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591597721117000.jpg\" width=\"462\" height=\"301\" style=\"text-align: center; font-family: sans-serif; font-size: 16px; padding: 0px; margin: 0px; border: none; width: 462px; height: 301px;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　<span style=\"color: rgb(0, 0, 0); font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; font-size: 18px;\">2007年，赵国通先生向上海市历史博物馆捐赠了一批文物，其中有一份手写本，题为《参加解放上海工作略述》，系其父赵祖康手书，回忆其在解放前夕担任国民党上海市政府代理市长的工作及向中国共产党交接的情况。</span></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　展览中亮相的《参加解放上海工作述略》为赵祖康的回忆稿，披露了其在解放前夕担任国民党上海市政府代理市长的工作，及向中国共产党交接的情况。赵祖康之子赵国通告诉记者，近日不少媒体在报道中称“赵祖康5月28日将旧市政府印信上交给陈毅”是不对的，根据赵祖康的日记，正式交接印信应该是在5月30日。此次展览中亮相的1949年5月29日发行的《解放日报》中透露了有关上海市人民政府成立的重要信息，从其中刊登的《上海市人民政府布告》中“奉中国人民革命军事委员会电令内开”可知，陈毅等人是通过电报任命的，“内开”则是引用电报内容的意思。“当时中央人民政府还未成立，也来不及召开人代会，所以由中国人民革命军事委员会任命。这也是唯一能证明这种任命方式的文献资料。”赵国通表示，此前是通过画册了解这一史实，但报纸原件是第一次见到。</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591597721100214.jpg\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　<span style=\"color: rgb(0, 0, 0); font-size: 18px; font-family: arial, helvetica, sans-serif;\">　<span style=\"color: rgb(0, 0, 0); font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">《解放日报》第二期，1949年5月28日，上海人民市政府宣告成立。上海解放，标志着人民自己管理城市的新时代开始了。这是《解放日报》第二期刊登的上海市人民政府成立消息。</span></span></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　红色收藏家葛卫东向上历博捐赠的1949年5月31日发行的《解放日报》也在展览中亮相。在这张报纸上，刊登了毛泽东亲自修改的新华社论《祝上海解放》，十分重要。他介绍，1949年10月1日前的报纸很难收藏，因为受到1950年以后各种政治运动的波及，大量相关报纸被销毁和处理，这份报纸是他好不容易找到的，为了支持历博建设，忍痛割爱。“很多研究人员在没有见过实物的情况下，常误以为这篇社论刊登于5月29日的《解放日报》，这份报纸是最好的佐证，报纸也具有重要的历史研究价值。”</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　作家杜宣（原名桂苍凌）曾使用的机要通行证等也在展览中亮相。捐赠人、油画家肖谷介绍，杜宣当时是情报人员，这张通行证是在刚解放时他持有的。雕塑家赵志荣再塑恩师张充仁的《无产阶级革命创造中华人民共和国》雕塑作品也在展览中亮相。解放后，上海市政府决定在外滩建造上海人民英雄纪念塔，并发布征集方案，雕塑家张充仁的方案最终胜出，并与其助手花费3年时间塑成了这座群雕，但未能翻铸成铜像。因为各种原因，纪念塔工程后来终止，张充仁一直引以为憾。赵志荣按照张充仁当年遗留下来的三张照片花费一年时间创作完成雕塑，并将其001号捐给上历博，也完成了恩师遗愿。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　此次展览由上海市历史博物馆（上海革命历史博物馆）联合渡江胜利纪念馆、杭州博物馆、中国共产党杭州历史馆和中共一大会址纪念馆举办。这是三地红色主题展览首次跨区域携手，也是五大博物馆珍贵馆藏的首次跨时空展，体现了长三角城市群积极协同协作，以文化融合力促长三角洲区域一体化发展，为联手提升区域文化软实力贡献力量。</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591597721125799.jpg\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　<span style=\"color: rgb(0, 0, 0); font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">　陈尔晋军服,王曼霞红色皮包。陈尔晋是黄埔军校八期毕业生，受妻子中共党员王曼霞的影响，他于1949年1月与中共上海局接上关系，准备与国民党五十四军、吴淞要塞舰队、装甲兵部队等策动起义。5月初，陈尔晋请中共上海地下组织派人向陈毅、粟裕汇报“策应”具体行动计划。不幸的是，他们的计划行动被特务探悉。5月9日，陈尔晋夫妇以及从事策反工作的十几人相继被捕不幸遇难。</span></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\"><br/></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　<strong style=\"padding: 0px; margin: 0px;\">身临其境感受当年上海市民惊喜</strong></span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　展览还设置了多处多媒体互动展项，构建生动的视觉场景。《上海战役》短片以双屏联动进行播放，表现人民解放军在中共地下党组织和人民群众的配合下攻占上海的辉煌战史。展厅内还有70年前上海解放时战士们露宿街头的场景，使观众身临其境地感受到当年上海市民的惊喜、敬佩之情。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　上历博同时推出一系列活动，增强公众的参与度。5月27日早上8:30，一场特别的升旗仪式在上历博东楼5楼平台举行，随后在南京西路上历博正门上演了快闪。活动邀请新普陀小学四年级学生参与，帮助学生与年轻群体铭记历史，同时也是通过这样有仪式感的方式拉近普通人与历史之间的距离。展览开幕式后，4楼展厅进行《梦想与奋斗》情景党课现场演出，以展厅为景，演绎4目剧——《庶民的胜利》《真理的味道》《李白烈士的最后告别》《永不叛党》，以实景表演和朗诵的形式引领观众一同追忆中国共产党在上海开启的伟大征程。</span></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　　5月至6月期间，上历博将持续推出配套教育体验活动，“上海1949”桌游和“寻找上海——行走南京路馆外导览”，带领参与者体验70年前上海解放的艰辛历程。</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591597721189888.jpg\" style=\"padding: 0px; margin: 0px; border: none;\"/></p><p style=\"padding: 0px; margin-top: 0px; margin-bottom: 0px; border: none; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;; font-size: 14px; white-space: normal;\"><span style=\"font-family: 微软雅黑, &quot;Microsoft YaHei&quot;; color: rgb(0, 0, 0);\">　<span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\">　<span style=\"color: rgb(0, 0, 0); font-size: 18px; font-family: 微软雅黑, &quot;Microsoft YaHei&quot;;\">陈尔晋呢船型军帽、呢腰带、皮手套。陈尔晋是黄埔军校八期毕业生，受妻子中共党员王曼霞的影响，他于1949年1月与中共上海局接上关系，准备与国民党五十四军、吴淞要塞舰队、装甲兵部队等策动起义。5月初，陈尔晋请中共上海地下组织派人向陈毅、粟裕汇报“策应”具体行动计划。不幸的是，他们的计划行动被特务探悉。5月9日，陈尔晋夫妇以及从事策反工作的十几人相继被捕不幸遇难。</span></span></span></p>', '原创', '/uploads/202006/08/200608024831852.jpg', 'http://www.yht.test.com/activity/15.html', '1', '1', '1', '1', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'JS', 'https://design.hongyanlv.com/showProPC.html?m=t-yFEYIhJ', '2020-06-08 14:25:56', '6', '4');
INSERT INTO `yzm_activity` VALUES ('16', '69', '1', 'yzmcms', '谢美霞', '重温上海城市记忆—上海历史博物馆参观', '重温上海城市记忆—上海历史博物馆参观_红研旅虚拟旅游研学平台', '', '1591598347', '1599357231', '', '上海市历史博物馆原为上海美术馆，是上海市中心最重要的近代优秀历史建筑之一。它与附近的上海城市规划馆、上海博物馆、上海大剧院一起，展示上海的“昨天、今天与明天”。', '451', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 24px; color: rgb(0, 0, 0);\">重温上海城市记忆—上海历史博物馆参观</span></h1><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif;color: rgb(47, 47, 47);white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; 经过近两年的建设，上海市历史博物馆前不久前正式对社会开放。昨天特去参观，重温老上海的历史记忆。</span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif;color: rgb(47, 47, 47);white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">　　上海市历史博物馆原为上海美术馆，是上海市中心最重要的近代优秀历史建筑之一。它与附近的上海城市规划馆、上海博物馆、上海大剧院一起，展示上海的“昨天、今天与明天”。</span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif;color: rgb(47, 47, 47);white-space: normal;background-color: rgb(255, 255, 255);text-align: center\"><span style=\"font-size: 16px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);\">&nbsp;<img src=\"/uploads/ueditor/image/20200608/1591612195199083.png\" title=\"1591612195199083.png\" alt=\"image.png\"/></span><span style=\"font-family: 宋体, SimSun; color: rgb(0, 0, 0);\">&nbsp;</span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif;color: rgb(47, 47, 47);white-space: normal;background-color: rgb(255, 255, 255);text-align: center\"><span style=\"font-size: 16px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);\">&nbsp;</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591612182157324.png\" title=\"1591612182157324.png\" alt=\"image.png\"/><span style=\"font-family: 宋体, SimSun; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp;</span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif;color: rgb(47, 47, 47);white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);\">　　<span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\">上海历史博物馆共陈列文物约<span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">1100</span>余件<span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">/</span>套，较全面地反映了上海的政治、经济、文化与社会的历史变化。</span></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif;color: rgb(47, 47, 47);white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">　　博物馆《古代上海》部分，以史前文明、古代发展、城镇兴起为线索，展现古代上海地区人类活动、市镇繁荣、文化兴盛以及鲜明的地域特色和辉煌的文明成就。《近代上海》部分则通过文物图片等形式，反映近代以来，上海的政治、经济、文化与社会生活的方方面面，重点展示近代上海作为中国工人阶级的大本营和中国共产党的诞生地在全国的救亡图存、民族复兴道路上作出的重要贡献。</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591612212264507.png\" title=\"1591612212264507.png\" alt=\"image.png\"/><span style=\"font-size: 16px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);\"></span></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif;color: rgb(47, 47, 47);white-space: normal;background-color: rgb(255, 255, 255)\"><span style=\"font-size: 16px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);\">　　<span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\">展馆的陈列，概括地反映了上海近<span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">6000</span>年的历史。其中重点文物有<span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">6000</span>年前的上海文化遗存，有血洒疆场的抗英英雄陈化成督造的振远将军铜炮、有《共产党宣言》的首版本、有反映上海棉纺工业的清花机、有<span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">1911</span>年孙中山当选中华民国临时大总统的选票等。其中有一个“百子（珠）大礼轿”为镇馆之宝之一。这顶民国“百子大礼轿”为一台八人大轿，花轿上原有<span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">100</span>只小电珠，由<span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">10</span>名木雕工匠耗时<span style=\"font-size: 16px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">10</span>年完成。&nbsp;</span></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591612225118257.png\" title=\"1591612225118257.png\" alt=\"image.png\"/></p><p style=\"font-family: 微软雅黑, 宋体, 黑体, Arial, Helvetica, sans-serif;color: rgb(47, 47, 47);white-space: normal;background-color: rgb(255, 255, 255);text-align: center\"><span style=\"font-size: 16px; font-family: 宋体, SimSun; color: rgb(0, 0, 0);\">&nbsp;</span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591612239149448.png\" title=\"1591612239149448.png\" alt=\"image.png\"/></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; <span style=\"font-size: 18px; color: rgb(47, 47, 47); background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif;\">展馆的陈列，概括地反映了上海近6000年的历史。其中重点文物有6000年前的上海文化遗存，有血洒疆场的抗英英雄陈化成督造的振远将军铜炮、有《共产党宣言》的首版本、有反映上海棉纺工业的清花机、有1911年孙中山当选中华民国临时大总统的选票等。其中有一个“百子（珠）大礼轿”为镇馆之宝之一。这顶民国“百子大礼轿”为一台八人大轿，花轿上原有100只小电珠，由10名木雕工匠耗时10年完成。&nbsp;</span></span></p>', '原创', '/uploads/202006/08/200608040920831.jpg', 'http://www.yht.test.com/activity/16.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'YHTZH', 'https://design.hongyanlv.com/showProPC.html?m=t-yFEYIhJ', '2020-06-08 14:39:22', '6', '4');
INSERT INTO `yzm_activity` VALUES ('17', '69', '1', 'yzmcms', '张辰', '党旗礼赞：古田是红色的 探访红色遗迹', '党旗礼赞：古田是红色的 探访红色遗迹_红研旅虚拟旅游研学平台', '', '1591599460', '1599357215', '', '笔架山前，社下山畔，参天古木，浓荫满地。远远望去，“古田会议永放光芒”8个大大的红字，从一片苍翠新绿中绽透出来。这里就是福建龙岩市上杭县古田镇古田会址所在地。', '237', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"background-color: rgb(250, 252, 255); font-family: arial, helvetica, sans-serif; font-size: 24px; color: rgb(0, 0, 0);\">党旗礼赞：古田是红色的 探访红色遗迹</span></h1><p><span style=\"font-family: 宋体; background-color: rgb(250, 252, 255); font-size: 18px; color: rgb(0, 0, 0);\">&nbsp;<span style=\"color: rgb(0, 0, 0); background-color: rgb(250, 252, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"> 笔架山前，社下山畔，参天古木，浓荫满地。远远望去，“古田会议永放光芒”8个大大的红字，从一片苍翠新绿中绽透出来。这里就是福建龙岩市上杭县古田镇古田会址所在地。</span></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591599590153326.png\" title=\"1591599590153326.png\" alt=\"image.png\"/></p><p><span style=\"font-family: 宋体; font-size: 14px; background-color: rgb(250, 252, 255); color: rgb(0, 0, 0);\">　　<span style=\"color: rgb(0, 0, 0); background-color: rgb(250, 252, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\">古田会址原为当地廖家祠堂，建于清末，民国后又曾为和声小学校址。祠堂是一组砖木结构建筑，由前后厅和左右厢房组成。</span><br/></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591599565722792.png\" title=\"1591599565722792.png\" alt=\"image.png\" width=\"644\" height=\"356\" style=\"width: 644px; height: 356px;\"/></p><p><span style=\"font-family: 宋体; background-color: rgb(250, 252, 255); font-size: 18px; color: rgb(0, 0, 0);\">　<span style=\"color: rgb(0, 0, 0); background-color: rgb(250, 252, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\">　步入中门，正厅是古田会议会场。当年红军写下的“保护学校”标语，至今仍保留完好。主席台上摆放着讲台、会议用黑板，上墙悬挂“中国共产党红军第四军第九次代表大会”横幅会标及中国共产党党旗，下方左右分别张贴着马克思、列宁画像。这些标语、画像以至会场内摆放的数十张长条凳，皆是依据当事者后来回忆所置。</span></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591599620169109.png\" title=\"1591599620169109.png\" alt=\"image.png\" width=\"636\" height=\"353\" style=\"width: 636px; height: 353px;\"/></p><p><span style=\"font-family: 宋体; background-color: rgb(250, 252, 255); font-size: 18px; color: rgb(0, 0, 0);\">　　<span style=\"color: rgb(0, 0, 0); background-color: rgb(250, 252, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\">在会场一侧的地上，有一处被火烧过的炭迹。1929年12月28日至29日，中国共产党红军第四军第九次代表大会在此召开。彼时正处于成长中的红军，在历经重重挫折后，开始不断深入思索未来发展之路。主持会议的有红四军前敌委员会领导人毛泽东、朱德、陈毅等，红四军各级党代表，士兵代表和地方党组织的代表，妇女代表等120多人出席会议。古田会议最终一致通过了毛泽东同志主持起草的《中国共产党红军第四军第九次代表大会决议案》（又称古田会议决议），选举产生了以毛泽东任前委书记的新的前敌委员会。1955年，人民解放军授衔，十大开国元帅中，当年的红四军前委委员就占了4位。两天后，一支即将改变中国历史的、新型的人民军队，从这里出发。</span></span></p><p style=\"text-align:center\"><img src=\"/uploads/ueditor/image/20200608/1591599679855612.png\" title=\"1591599679855612.png\" alt=\"image.png\" width=\"842\" height=\"509\" style=\"width: 842px; height: 509px;\"/></p><p><span style=\"color: rgb(0, 0, 0); font-size: 18px;\"><span style=\"color: rgb(0, 0, 0); font-family: 宋体; font-size: 14px; background-color: rgb(250, 252, 255);\">　　</span><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\"><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; background-color: rgb(250, 252, 255);\">今天的古田会址，在经过三次大规模整修后，还包括了当年中共红四军前委机关暨红四军政治部旧址松荫堂、红四军司令部旧址中兴堂、毛泽东《星星之火可以燎原》写作旧址协成店以及红军哨所旧址文光阁等多处。而依托会议旧址建立的古田会议纪念馆拥有文物1.2万多件，是国家一级博物馆，也是福建省库藏文物最多的馆。古田镇因此成为全国首批十大历史文化名镇之一，每年接待红色旅游游客超过50万人次。</span><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(250, 252, 255);\"/><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(250, 252, 255);\"/><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; background-color: rgb(250, 252, 255);\">　　据原龙岩地区文化局副局长、古田会议纪念馆副馆长赵惠回忆：最先提议维修古田会议旧址的，是原南京军区副政委陈茂辉。1965年古田会议36周年之际，古田会议旧址正式对外开放。1970年4月30日晚，在“五一”劳动节晚会上，周恩来总理指示中央联络部负责同志：今后外国兄弟党代表团和个人来华参观时，特别是一些尚未执政的党，多请他们到上杭古田、才溪去看看，看看我们当年闹革命是在怎样艰苦的环境里。</span><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(250, 252, 255);\"/><br style=\"font-family: 宋体; font-size: 14px; white-space: normal; background-color: rgb(250, 252, 255);\"/><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; background-color: rgb(250, 252, 255);\">　　圣地古田，红色古田。古田盛产水泥原料石灰石。上世纪90年代，依靠着“十里山沟百家厂”，古田还曾一举夺得全国老区的第一个亿元镇称号；在科学发展的今天，老区人再次转型，依靠养兰种菜、发展红色生态旅游，继续走在致富道路的前列。初夏的古田会址前，一大片黄色的油菜花灿灿盛开，由当地群众自办的一所所红军客栈农家乐，游人如织，米酒飘香。尝一碗客家米酒、吃一块客家人的糖枣，今天的古田更迷人。</span></span><br/></span></p>', '原创', '/cos/uploads/202006/19/1591599620169109.png', 'http://www.yht.test.com/activity/17.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'YHTZH', 'https://design.hongyanlv.com/showProPC.html?m=t-CLLV5', '2020-06-08 14:58:39', '4', '6');
INSERT INTO `yzm_activity` VALUES ('18', '69', '1', 'yzmcms', '张辰', '中兴堂里中兴：中兴堂参观教育研学', '中兴堂里中兴：中兴堂参观教育研学_红研旅虚拟旅游研学平台', '', '1591947314', '1599357169', '', '中兴堂，位于福建上杭县古田镇八甲村，建于1805年。属围垅式建筑，房屋布局为一正三横。1929年12月，毛泽东、朱德、陈毅等率领红四军进驻古田，司令部设立于此。', '218', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24px; overflow-wrap: break-word; text-indent: 2em; zoom: 1; font-family: arial, helvetica, sans-serif; font-size: 24px; color: rgb(0, 0, 0);\">中兴堂里中兴：中兴堂参观教育研学</span></h1><p><span style=\"background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24px; overflow-wrap: break-word; text-indent: 2em; zoom: 1; font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;中兴堂位于福建上杭县古田镇八甲村，建于清嘉庆十年（1805年）。属围垅式建筑，房屋布局为一正三横。1929年12月，毛泽东、朱德、陈毅等率领红四军进驻古田，红四军司令部设在中兴堂。朱德同志住在后厅左厢房。</span></p><p><span style=\"background-color: rgb(255, 255, 255); font-family: arial, 宋体, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24px; overflow-wrap: break-word; text-indent: 2em; zoom: 1; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></p><p style=\"text-align:center\"><img src=\"/cos/uploads/ueditor/image/20200612/1591948435111726.jpg\" title=\"中兴堂参观教育研学\" alt=\"中兴堂参观教育研学\"/></p><p><br/><span style=\"background-color: rgb(255, 255, 255); font-family: arial, 宋体, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24px; overflow-wrap: break-word; text-indent: 2em; zoom: 1; color: rgb(0, 0, 0);\"></span></p><p><span style=\"background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24px; overflow-wrap: break-word; text-indent: 2em; zoom: 1; font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp; 红四军进驻古田后，毛泽东、朱德、陈毅等人在这里召开了各级党代表联席会议，号召到会的同志共同起来肃清各种非无产阶级意识。经过10多天的学习和讨论，代表们加深了对党内各种非无产阶级错误思想的认识，提出了纠正办法。</span></p><p style=\"text-align:center\"><img src=\"/cos/uploads/ueditor/image/20200612/1591948039347421.jpg\" title=\"中兴堂参观教育研学\" alt=\"中兴堂参观教育研学\"/></p><p><br/><span style=\"background-color: rgb(255, 255, 255); font-family: arial, 宋体, sans-serif; font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24px; overflow-wrap: break-word; text-indent: 2em; zoom: 1; color: rgb(0, 0, 0);\"></span></p><p><span style=\"background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 24px; overflow-wrap: break-word; text-indent: 2em; zoom: 1; font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;除积极协助毛泽东工作外，朱德还在这里起草了“关于军事问题的报告”，在古田会议上宣读。同时撰写了《新游击战术》,这是一部崭新的马列主义军事著作，它注重实践和战例，用生动通俗的语言剖析军事理论。</span></p>', '原创', '/cos/uploads/202006/12/200612035422920.jpg', 'http://www.yht.test.com/activity/18.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'YHTZH', 'https://design.hongyanlv.com/showProPC.html?m=t-7381E', '2020-06-15 15:00:35', '4', '6');
INSERT INTO `yzm_activity` VALUES ('19', '69', '1', 'yzmcms', '郭琦', '初心永恒—江苏四种革命精神联展', '初心永恒—江苏四种革命精神联展_红研旅虚拟旅游研学平台', '', '1591950894', '1600997911', '', '孕育于江苏大地的周恩来精神、雨花英烈精神、新四军铁军精神、淮海战役精神等四种革命精神，是江苏众多红色文化遗产资源的突出代表，也是涵养中国共产党人初心使命和为民情怀的宝贵精神财富。', '187', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.76em; font-family: arial, helvetica, sans-serif; font-size: 24px; color: rgb(0, 0, 0);\">初心永恒—江苏四种革命精神联展</span></h1><p><span style=\"background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.76em; font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;江苏革命资源丰富，在江苏大地上熔铸而成的雨花英烈精神、周恩来精神、新四军铁军精神、淮海战役精神，是中国共产党人践行初心和使命的真实写照。</span></p><p><span style=\"background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;今年 &quot;5 · 18 国际博物馆日 &quot;，南京市一共推出 &quot; 看南京 &quot;&quot; 颂英烈 &quot;&quot; 读历史 &quot;&quot; 品非遗 &quot;&quot; 赏艺术 &quot;&quot; 云展览 &quot; 六大主题 74 项展览和文博活动。江苏 &quot; 四种革命精神 &quot; 联展是 &quot; 颂英烈 &quot; 主题的重要组成部分，浓墨重彩地展示了红色文化资源的独特性和多样性。</span></p><p style=\"text-align:center\"><span style=\"background-color: rgb(255, 255, 255); font-family: FZLanTingHei-R-GBK, &quot;STHeiti STXihei&quot;, &quot;Microsoft Yahei&quot;, Arial; font-size: 17px; font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.76em; color: rgb(0, 0, 0);\"><img src=\"/cos/uploads/ueditor/image/20200612/1591951418343411.png\" title=\"初心永恒—江苏四种革命精神联展\" alt=\"初心永恒—江苏四种革命精神联展\"/></span></p><p><span style=\"background-color: rgb(255, 255, 255); font-variant-numeric: normal; font-variant-east-asian: normal; line-height: 1.76em; font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;此次展览亮点纷呈，总展线约 150 米，共分为 &quot; 信仰的力量 &quot;&quot; 人民总理周恩来 &quot;&quot; 铁的新四军 &quot;&quot; 决战淮海 精神永存 &quot; 四个部分，全面展示了江苏四种革命精神的丰富内涵。</span><br/></p><p style=\"text-align: center;\"><img src=\"/cos/uploads/ueditor/image/20200612/1591951452132327.png\" title=\"初心永恒—江苏四种革命精神联展\" alt=\"初心永恒—江苏四种革命精神联展\"/></p>', '原创', '/cos/uploads/202006/12/200612043756699.png', 'http://www.yht.test.com/activity/19.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'YHTZH', 'https://design.hongyanlv.com/showProPC.html?m=t-wUMEc', '2020-06-20 10:00:00', '8', '6');
INSERT INTO `yzm_activity` VALUES ('22', '69', '1', 'yzmcms', '平台管理员', '永陵博物馆', '永陵博物馆_红研旅虚拟旅游研学平台', '', '1592806234', '1599357126', '', '永陵博物馆', '137', '<p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: 楷体; color: rgb(222, 188, 148); white-space: normal; background-color: rgb(0, 0, 0);\"><span style=\"margin: 0px; padding: 0px; font-family: 宋体; color: rgb(0, 0, 0);\"></span></p><h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 24px; color: rgb(0, 0, 0);\">永陵博物馆</span></h1><p style=\"text-align:center\"><img src=\"/cos/uploads/ueditor/image/20200622/1592807782142984.jpg\" width=\"739\" height=\"117\" style=\"margin: 4px; padding: 0px; font-family: 楷体; width: 751px; height: 113px;\"/></p><p><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\"> &nbsp;成都永陵博物馆占地面积5.2万平方米，鸟语花香的百亩园林衬托出永陵神秘深邃的千年文脉。 馆内遍植树木花草， 开凿水池鱼塘，并建有长廊、水榭、殿庑等仿古建筑。园林百花四季争艳， 苍松翠竹绿荫合抱，鱼塘中鱼儿成群，石板小路在园中曲折蜿蜒，环境清幽，步移景随。徜徉其间， 让人忘却都市的喧嚣，尽享古朴自然，清幽香雅的蜀中园林风光。</span></span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;永陵地宫掩映在一片郁郁葱葱的林木之中，由南至北的宽阔神道通向地宫深处，显得格外静穆。神道两旁矗立着高大的松柏，根深叶茂，郁郁青青，杂于其间的腊梅、玉兰、桂花、山茶、牡丹、丁香、海棠等花卉时替开放，四季馥香浓郁。置身于此，油然而生悠然恬静之感。</span></p><p style=\"text-align:center\"><img src=\"/cos/uploads/ueditor/image/20200622/1592807810655506.jpg\" width=\"671\" height=\"430\" style=\"width: 671px; height: 430px;\"/></p><p><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\">沿着墓冢旁的青石小径漫步而至陵北小园，既有参天古木，苍翠成荫，又见似锦繁花，馨香弥漫，还有假山层叠，错落有致。小园西北角有一口用陶质井圈叠筑而成的汉井遗迹，根据考古发掘资料判断，早在王建葬于永陵之前这里就已是炊烟缭绕、人畜兴旺的先民聚居地了。</span></span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;穿过小园，一条蜿蜒的小溪由西向东缓缓流淌，两旁垂柳摇曳，鸟语花香，拱桥跨溪，连通两岸。林木之间，草坪茵茵蔓延，散落于古木绿茵间的石刻乐师，铜雕舞伎，仿若珠玉镶于翡翠，共谱出一派锦城丝管的歌舞升平之景。园内遍植芙蓉，每逢花季盛开，硕大的花朵，缤纷的色彩，仿佛使人们又置身于千年前满城芙蓉如锦绣的历史情调中，为千年古陵更添妩媚风姿。</span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;毗邻西安路的谥宝广场上，二十二位铜塑乐伎淋漓尽致地再现了永陵地宫棺床石刻，行走其间仿佛置身于一场繁华的宫廷宴乐。余音袅绕之际，转眼前方又见力士抬扶的白玉谥宝。力士雕刻古朴猶劲，抬扶着的谥宝则显得端庄典雅，宛然一幅晚唐遗风的蜀地景象。</span></p><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;由于地理环境的优越，园林风光的秀美，成都永陵博物馆园林区内四季游人如织。阳春三月，园内百花初放，垂柳依依，一派生机勃勃的景象；炎炎夏日，则芳草如茵，苍松翠竹绿荫合抱，俨然一个清凉世界；金秋十月，门外的银杏叶飘洒纷落，虽慨然知秋，却又显的绚丽缤纷；隆冬时节，寒梅怒放，满园暗香清幽弥漫，为冬日的城市增添了雅致和倩丽。正是“前蜀展芳声，神州文脉盛世常开；西川饶富庶，蜀都胜迹名苑再显。”</span></p><p><br/></p>', '原创', '/cos/uploads/202006/22/200622095747918.jpg', 'http://www.yht.test.com/activity/22.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'tang', 'https://design.hongyanlv.com/showProPC.html?m=t-AUwEEjh', '2020-06-22 14:16:12', '5', '5');
INSERT INTO `yzm_activity` VALUES ('23', '69', '1', 'yzmcms', '平台管理员', '鲁中抗日战争纪念馆', '鲁中抗日战争纪念馆_红研旅虚拟旅游研学平台', '', '1592807985', '1599357111', '', '鲁中抗日战争纪念馆', '138', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif; color: rgb(0, 0, 0);\">鲁中抗日战争纪念馆</span></h1><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(0, 0, 0);\">&nbsp;<span style=\"color: rgb(0, 0, 0); font-family: 宋体, SimSun;\">&nbsp;<span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\">鲁中抗日战争展览馆的前身是莱芜战役纪念馆东馆，2015年，修缮加固，改陈布展建设鲁中抗日战争展览馆，为中国人民抗日战争暨世界反法西斯战争胜利70周年献礼。</span></span></span></p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; text-align: center; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"/cos/uploads/ueditor/image/20200622/1592807987176269.jpeg\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/><br/></p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; <span style=\"color: rgb(25, 25, 25); background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp;鲁中抗日战争展览馆建筑面积3400㎡，陈展面积3000㎡。鲁中抗日战争展览馆以抗日战争期间鲁中地区(主要包括临朐、沂源、莱芜、章丘、新泰、泰安、蒙阴、费县、沂水、安丘、益都、淄川、博山、历城、泗水、沂南等县市区)抗日根据地和抗日民族统一战线建设及抗战史实为主线，客观、真实地展示鲁中地区党政军民在抗日战争时期所做出的突出贡献，反映日本帝国主义对鲁中人民所犯滔天罪行，展现鲁中人民的民族大爱情怀和英勇顽强、不怕牺牲的革命精神。</span></span></p><p style=\"text-align:center\"><img src=\"/cos/uploads/ueditor/image/20200622/1592807988261933.jpeg\" max-width=\"600\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: auto;\"/></p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(0, 0, 0);\"><span style=\"color: rgb(0, 0, 0); font-family: 宋体, SimSun;\">&nbsp;&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\"> 鲁中抗日战争展览馆分上下两层，共展出图片700余幅，场景15处，文物600余件，分为英烈长廊、序厅和四个展厅。英烈长廊集中刻录抗战时期鲁中区牺牲的9430名烈士的名字；序厅主要内容是全民抗战的主题雕塑和播放抗战原始史料片的大型LED电子屏；第一展厅重点展示日军暴行；第二展厅重点展示抗日根据地的发展历程；第三展厅重点展示著名战役战斗；第四展厅重点展示英模人物事迹。</span></span></p><p class=\"ql-align-center\" style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px; color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;鲁中抗日战争展览馆是目前我省唯一一处反映鲁中区全民抗战的综合性场馆。该馆的建成填补了我市无抗战史馆的空白，推动了红色文化发展，丰富了教育内容，为社会各界提供了更好的教育平台。2015年9月1日开馆以来，先后被命名为：“山东省爱国主义教育基地” “山东省关心教育下一代基地”、“山东省社会科学普及教育基地”、“莱芜市党性教育基地”等荣誉称号。</span></p><p><br/></p>', '原创', '/cos/uploads/202006/20/200620071353666.jpg', 'http://www.yht.test.com/activity/23.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'tang', 'https://design.hongyanlv.com/showProPC.html?m=t-A3vmXZF', '2020-06-22 14:44:25', '7', '1');
INSERT INTO `yzm_activity` VALUES ('24', '69', '1', 'yzmcms', '平台管理员', '南京朝天宫博物馆', '南京朝天宫博物馆_红研旅虚拟旅游研学平台', '', '1592808370', '1599357092', '', '  南京市博物馆·朝天宫：南京市博物馆为南京市博物总馆分支机构，是一座综合性历史艺术类博物馆，是江苏省、南京市爱国主义...', '166', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"color: rgb(0, 0, 0);\">&nbsp;<span style=\"font-size: 24px;\"> 南京市博物馆·朝天宫&nbsp; </span>&nbsp;</span></h1><p><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; <span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp;南京市博物馆为南京市博物总馆分支机构，是一座综合性历史艺术类博物馆，是江苏省、南京市爱国主义教育基地。馆址朝天宫，为国家AAAA级景区，位于南京水西门内运渎之北，背山面水，气势雄伟，为江南地区现存规模最大、保存最为完整的明清官式古建筑群落，素有“金陵第一胜迹”之美誉，也是全国重点文物保护单位之一。</span></span></p><p style=\"text-align:center\"><img src=\"/cos/uploads/ueditor/image/20200622/1592808767879306.jpg\" width=\"916\" height=\"365\" style=\"width: 916px; height: 365px;\"/></p><p><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; <span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp;南京市博物馆馆藏文物十万余件，上溯远古，下迄民国，藏品内涵丰富，具有很高的历史、艺术和科学价值。其中尤以南京人头骨化石、青瓷釉下彩神鸟瑞兽盘口壶、王谢家族墓志、青花萧何追韩信梅瓶、镶金托云龙纹玉带、渔翁戏荷琥珀杯、七宝阿育王塔等一批文物蜚声中外，是各个历史时期的文物精粹的典型代表。</span></span></p><p style=\"text-align:center\"><img src=\"/cos/uploads/ueditor/image/20200622/1592808790148648.jpg\" width=\"1\" height=\"1\" style=\"width: 1px; height: 1px;\"/><img src=\"/cos/uploads/ueditor/image/20200622/1592808842109559.jpg\" width=\"909\" height=\"282\" style=\"width: 909px; height: 282px;\"/></p><p><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp; &nbsp; <span style=\"color: rgb(0, 0, 0); font-family: 宋体, SimSun;\">&nbsp;<span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\">常设展览包括“龙蟠虎踞-南京城市史”、“玉堂佳器-馆藏精品展”、“云裳簪影-宋明服饰展”等。其中“龙蟠虎踞-南京城市史”获得第十一届“全国十大陈列精品奖”最佳制作奖。</span></span></span></p><p style=\"text-align:center\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200622/1592808863930317.jpg\" width=\"905\" height=\"315\" style=\"text-align: center; white-space: normal; width: 905px; height: 315px;\"/></p><p><span style=\"color: rgb(0, 0, 0);\">&nbsp; &nbsp;<span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 18px;\"> &nbsp; &nbsp;博物馆与古建筑朝天宫珠联璧合，又深滋于十朝都会悠久的历史文化底蕴，加之四大古都得天独厚的自然地理优势，是人们解读南京城市历史发展进程，领略南京古都文化精髓，欣赏南京历史文明宝藏的最佳去处。</span></span></p><p><br/></p>', '原创', '/cos/uploads/202006/19/200619032147992.jpg', 'http://www.yht.test.com/activity/24.html', '', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'tang', 'https://design.hongyanlv.com/showProPC.html?m=t-mhnTtt', '2020-06-22 14:47:50', '8', '2');
INSERT INTO `yzm_activity` VALUES ('30', '69', '1', 'yzmcms', '平台管理员', '重走长征路虚拟展馆', '重走长征路虚拟展馆_红研旅虚拟旅游研学平台', '', '1599216066', '1600933195', '', '重走长征路虚拟展馆', '68', '<h1 label=\"标题居中\" style=\"margin: 0px 0px 20px; padding: 0px 4px 0px 0px; color: rgb(46, 46, 46); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); text-align: center;\">再走长征路~红色主题虚拟展馆</h1><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(46, 46, 46); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\">通过一个虚拟展馆，让体验者通过10分钟的沉浸式体验，快速了解红军长征的艰险历程，深刻理解长征精神。</p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(46, 46, 46); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\"><br style=\"margin: 0px; padding: 0px;\"/></p><p style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; color: rgb(46, 46, 46); font-family: &quot;Helvetica Neue&quot;, Helvetica, &quot;PingFang SC&quot;, &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, 微软雅黑, Arial, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"/uploads/ueditor/image/20200904/1599216088288805.png\" title=\"1598519295193479.png\" alt=\"image.png\" style=\"margin: 20px 0px; padding: 0px; border: 0px;\"/></p><p><br/></p>', '原创', '/uploads/202009/04/200904064317106.jpg', 'http://www.yht.test.com/activity/30.html', '1,2,3,4,5,6', '1', '1', '10', '0', '1', '2020-09-30 00:00:00', '2', '2', '0', 'YHTZH,tch01', 'tang', 'https://design.hongyanlv.com/showProPC.html?m=t-Qvjzz5M', '2020-09-04 18:41:22', '5', '1');
INSERT INTO `yzm_activity` VALUES ('29', '69', '1', 'yzmcms', '平台管理员', '淮塔三景虚拟仿真游览', '淮塔三景虚拟仿真游览_红研旅虚拟旅游研学平台', '', '1598602068', '1599356110', '', '这里是淮塔三景虚拟仿真游览', '138', '<h1 label=\"标题居中\" style=\"font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"color: rgb(0, 0, 0);\">淮塔三景虚拟仿真游览</span></h1><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"margin: 0px; padding: 0px; font-weight: bolder; color: rgb(0, 0, 0);\">线下参观徐州淮海战役博物馆</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">淮海战役纪念馆位于江苏省徐州市，是全国著名爱国主义教育基地与红色旅游景区，入选全国一百个“红色旅游经典景区”之列，由淮海战役纪念塔、粟裕将军骨灰摆放处，展览馆等部分组成。</span></p><p style=\"text-align: center;\"><img src=\"https://inews.gtimg.com/newsapp_bt/0/12304642370/1000\" class=\"content-picture\" style=\"margin: 0.6em auto; padding: 0px; border: 0px none; vertical-align: middle; max-width: 100%; display: block;\"/></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">踏寻先辈足迹</span></p><p class=\"one-p\" style=\"margin-top: 0px; margin-bottom: 2em; padding: 0px; line-height: 2.2; overflow-wrap: break-word; font-family: &quot;Microsoft Yahei&quot;, Avenir, &quot;Segoe UI&quot;, &quot;Hiragino Sans GB&quot;, STHeiti, &quot;Microsoft Sans Serif&quot;, &quot;WenQuanYi Micro Hei&quot;, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"color: rgb(0, 0, 0);\">首先来到淮海战役纪念塔，徐州淮海战纪念塔塔身正面镶嵌着毛泽东主席亲笔题词：&quot;淮海战役烈士纪念塔&quot;九个镏金大字。上端雕刻着由五角星照耀下相交的两支步枪和松籽绸带组成的塔徽。塔座正面镌刻着碑文，两侧为大型浮雕，右侧是中国人民解放军一往无前的英雄形象，左侧是人民勇往直前的壮丽情景。</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '原创', '/uploads/202008/28/200828032348208.jpg', 'http://www.yht.test.com/activity/29.html', '1,2,3,4,5,6', '1', '1', '10', '0', '0', null, '0', '1', '0', 'YHTZH,tch01', 'tang', 'https://design.hongyanlv.com/showProPC.html?m=t-e4ccgzO', '2020-08-28 16:08:42', '5', '1');

-- ----------------------------
-- Table structure for yzm_admin
-- ----------------------------
DROP TABLE IF EXISTS `yzm_admin`;
CREATE TABLE `yzm_admin` (
  `adminid` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `adminname` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `roleid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `rolename` varchar(30) NOT NULL DEFAULT '',
  `realname` varchar(30) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(30) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(15) NOT NULL DEFAULT '',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `addpeople` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_admin
-- ----------------------------
INSERT INTO `yzm_admin` VALUES ('1', 'yzmcms', 'ff022958d49ed2c20b6042c8614f1ca7', '1', '超级管理员', '', '平台管理员', 'gxl1217x@163.com', '1601174567', '127.0.0.1', '1589650063', '系统');
INSERT INTO `yzm_admin` VALUES ('5', 'SHY', 'ffe317ecad2405070e6f5ffefb3a38a5', '3', '审核员', '', '', 'SHY@163.com', '1592301511', '49.77.250.27', '1591072111', 'yzmcms');
INSERT INTO `yzm_admin` VALUES ('4', 'HWGG', 'ffe317ecad2405070e6f5ffefb3a38a5', '2', '红文高管', '', '', 'HWGG@163.com', '1591076447', '49.77.137.151', '1591071759', 'yzmcms');
INSERT INTO `yzm_admin` VALUES ('6', 'PTGG', 'ffe317ecad2405070e6f5ffefb3a38a5', '4', '平台高管', '', '', 'PTGG@163.com', '1591076528', '49.77.137.151', '1591072405', 'yzmcms');

-- ----------------------------
-- Table structure for yzm_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `yzm_admin_log`;
CREATE TABLE `yzm_admin_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(15) NOT NULL DEFAULT '',
  `action` varchar(20) NOT NULL DEFAULT '',
  `querystring` varchar(255) NOT NULL DEFAULT '',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminname` varchar(30) NOT NULL DEFAULT '',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `logtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `logtime` (`logtime`),
  KEY `adminid` (`adminid`)
) ENGINE=MyISAM AUTO_INCREMENT=945 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_admin_log
-- ----------------------------
INSERT INTO `yzm_admin_log` VALUES ('1', 'admin', 'system_manage', 'm=admin&c=system_manage&a=prohibit_words', '1', 'yzmcms', '49.77.250.27', '1592888245');
INSERT INTO `yzm_admin_log` VALUES ('2', 'admin', 'system_manage', 'm=admin&c=system_manage&a=prohibit_words', '1', 'yzmcms', '49.77.250.27', '1592888246');
INSERT INTO `yzm_admin_log` VALUES ('3', 'admin', 'system_manage', 'm=admin&c=system_manage&a=save', '1', 'yzmcms', '49.77.250.27', '1592894991');
INSERT INTO `yzm_admin_log` VALUES ('4', 'admin', 'system_manage', 'm=admin&c=system_manage&a=save', '1', 'yzmcms', '49.77.250.27', '1592895040');
INSERT INTO `yzm_admin_log` VALUES ('5', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592895217');
INSERT INTO `yzm_admin_log` VALUES ('6', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592895252');
INSERT INTO `yzm_admin_log` VALUES ('7', 'attachment', 'index', 'm=attachment&c=index&a=public_att_view', '1', 'yzmcms', '49.77.250.27', '1592895325');
INSERT INTO `yzm_admin_log` VALUES ('8', 'member', 'member', 'm=member&c=member&a=check', '1', 'yzmcms', '49.77.250.27', '1592895399');
INSERT INTO `yzm_admin_log` VALUES ('9', 'member', 'member', 'm=member&c=member&a=pay', '1', 'yzmcms', '49.77.250.27', '1592895400');
INSERT INTO `yzm_admin_log` VALUES ('10', 'member', 'member', 'm=member&c=member&a=member_count', '1', 'yzmcms', '49.77.250.27', '1592895410');
INSERT INTO `yzm_admin_log` VALUES ('11', 'member', 'member', 'm=member&c=member&a=member_count', '1', 'yzmcms', '49.77.250.27', '1592895412');
INSERT INTO `yzm_admin_log` VALUES ('12', 'admin', 'system_manage', 'm=admin&c=system_manage&a=member_set', '1', 'yzmcms', '49.77.250.27', '1592895415');
INSERT INTO `yzm_admin_log` VALUES ('13', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592895514');
INSERT INTO `yzm_admin_log` VALUES ('14', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592895522');
INSERT INTO `yzm_admin_log` VALUES ('15', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592895534');
INSERT INTO `yzm_admin_log` VALUES ('16', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592895555');
INSERT INTO `yzm_admin_log` VALUES ('17', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592895564');
INSERT INTO `yzm_admin_log` VALUES ('18', 'admin', 'index', 'm=admin&c=index&a=public_logout', '1', 'yzmcms', '49.77.250.27', '1592895575');
INSERT INTO `yzm_admin_log` VALUES ('19', 'admin', 'system_manage', 'm=admin&c=system_manage&a=prohibit_words', '1', 'yzmcms', '49.77.250.27', '1592899090');
INSERT INTO `yzm_admin_log` VALUES ('20', 'banner', 'banner', 'm=banner&c=banner&a=edit', '1', 'yzmcms', '49.77.250.27', '1592899124');
INSERT INTO `yzm_admin_log` VALUES ('21', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592902105');
INSERT INTO `yzm_admin_log` VALUES ('22', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592902110');
INSERT INTO `yzm_admin_log` VALUES ('23', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592903152');
INSERT INTO `yzm_admin_log` VALUES ('24', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592903154');
INSERT INTO `yzm_admin_log` VALUES ('25', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592903162');
INSERT INTO `yzm_admin_log` VALUES ('26', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592903166');
INSERT INTO `yzm_admin_log` VALUES ('27', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592904005');
INSERT INTO `yzm_admin_log` VALUES ('28', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592904014');
INSERT INTO `yzm_admin_log` VALUES ('29', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592904067');
INSERT INTO `yzm_admin_log` VALUES ('30', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592904099');
INSERT INTO `yzm_admin_log` VALUES ('31', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592904102');
INSERT INTO `yzm_admin_log` VALUES ('32', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592904891');
INSERT INTO `yzm_admin_log` VALUES ('33', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592904894');
INSERT INTO `yzm_admin_log` VALUES ('34', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592905901');
INSERT INTO `yzm_admin_log` VALUES ('35', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592905903');
INSERT INTO `yzm_admin_log` VALUES ('36', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592906078');
INSERT INTO `yzm_admin_log` VALUES ('37', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906080');
INSERT INTO `yzm_admin_log` VALUES ('38', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592906130');
INSERT INTO `yzm_admin_log` VALUES ('39', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906132');
INSERT INTO `yzm_admin_log` VALUES ('40', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906221');
INSERT INTO `yzm_admin_log` VALUES ('41', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592906221');
INSERT INTO `yzm_admin_log` VALUES ('42', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.250.27', '1592906613');
INSERT INTO `yzm_admin_log` VALUES ('43', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.250.27', '1592906628');
INSERT INTO `yzm_admin_log` VALUES ('44', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906630');
INSERT INTO `yzm_admin_log` VALUES ('45', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906697');
INSERT INTO `yzm_admin_log` VALUES ('46', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906705');
INSERT INTO `yzm_admin_log` VALUES ('47', 'member', 'member', 'm=member&c=member&a=pay', '1', 'yzmcms', '49.77.250.27', '1592906713');
INSERT INTO `yzm_admin_log` VALUES ('48', 'member', 'member', 'm=member&c=member&a=check', '1', 'yzmcms', '49.77.250.27', '1592906713');
INSERT INTO `yzm_admin_log` VALUES ('49', 'member', 'member', 'm=member&c=member&a=member_count', '1', 'yzmcms', '49.77.250.27', '1592906715');
INSERT INTO `yzm_admin_log` VALUES ('50', 'admin', 'system_manage', 'm=admin&c=system_manage&a=member_set', '1', 'yzmcms', '49.77.250.27', '1592906715');
INSERT INTO `yzm_admin_log` VALUES ('51', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906802');
INSERT INTO `yzm_admin_log` VALUES ('52', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906813');
INSERT INTO `yzm_admin_log` VALUES ('53', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906825');
INSERT INTO `yzm_admin_log` VALUES ('54', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.250.27', '1592906827');
INSERT INTO `yzm_admin_log` VALUES ('55', 'banner', 'banner', 'm=banner&c=banner&a=edit', '1', 'yzmcms', '49.77.250.27', '1592908793');
INSERT INTO `yzm_admin_log` VALUES ('56', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1592966466');
INSERT INTO `yzm_admin_log` VALUES ('57', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1592966508');
INSERT INTO `yzm_admin_log` VALUES ('58', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.65.158.69', '1592967337');
INSERT INTO `yzm_admin_log` VALUES ('59', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1592967340');
INSERT INTO `yzm_admin_log` VALUES ('60', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1592967351');
INSERT INTO `yzm_admin_log` VALUES ('61', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.65.158.69', '1592967351');
INSERT INTO `yzm_admin_log` VALUES ('62', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1592979172');
INSERT INTO `yzm_admin_log` VALUES ('63', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1592979196');
INSERT INTO `yzm_admin_log` VALUES ('64', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.65.158.69', '1594258942');
INSERT INTO `yzm_admin_log` VALUES ('65', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259223');
INSERT INTO `yzm_admin_log` VALUES ('66', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259297');
INSERT INTO `yzm_admin_log` VALUES ('67', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594259351');
INSERT INTO `yzm_admin_log` VALUES ('68', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594259359');
INSERT INTO `yzm_admin_log` VALUES ('69', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259485');
INSERT INTO `yzm_admin_log` VALUES ('70', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259533');
INSERT INTO `yzm_admin_log` VALUES ('71', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594259553');
INSERT INTO `yzm_admin_log` VALUES ('72', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594259572');
INSERT INTO `yzm_admin_log` VALUES ('73', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259575');
INSERT INTO `yzm_admin_log` VALUES ('74', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259626');
INSERT INTO `yzm_admin_log` VALUES ('75', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259833');
INSERT INTO `yzm_admin_log` VALUES ('76', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259886');
INSERT INTO `yzm_admin_log` VALUES ('77', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594259894');
INSERT INTO `yzm_admin_log` VALUES ('78', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594259907');
INSERT INTO `yzm_admin_log` VALUES ('79', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594259911');
INSERT INTO `yzm_admin_log` VALUES ('80', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594259926');
INSERT INTO `yzm_admin_log` VALUES ('81', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259969');
INSERT INTO `yzm_admin_log` VALUES ('82', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594259998');
INSERT INTO `yzm_admin_log` VALUES ('83', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594260013');
INSERT INTO `yzm_admin_log` VALUES ('84', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.65.158.69', '1594260041');
INSERT INTO `yzm_admin_log` VALUES ('85', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594260085');
INSERT INTO `yzm_admin_log` VALUES ('86', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594260101');
INSERT INTO `yzm_admin_log` VALUES ('87', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594260103');
INSERT INTO `yzm_admin_log` VALUES ('88', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594260115');
INSERT INTO `yzm_admin_log` VALUES ('89', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.65.158.69', '1594260334');
INSERT INTO `yzm_admin_log` VALUES ('90', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.65.158.69', '1594260346');
INSERT INTO `yzm_admin_log` VALUES ('91', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.65.158.69', '1594260347');
INSERT INTO `yzm_admin_log` VALUES ('92', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.65.158.69', '1594260715');
INSERT INTO `yzm_admin_log` VALUES ('93', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594260717');
INSERT INTO `yzm_admin_log` VALUES ('94', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594260723');
INSERT INTO `yzm_admin_log` VALUES ('95', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594260729');
INSERT INTO `yzm_admin_log` VALUES ('96', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594260753');
INSERT INTO `yzm_admin_log` VALUES ('97', 'banner', 'banner', 'm=banner&c=banner&a=del', '1', 'yzmcms', '49.65.158.69', '1594265056');
INSERT INTO `yzm_admin_log` VALUES ('98', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265061');
INSERT INTO `yzm_admin_log` VALUES ('99', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265132');
INSERT INTO `yzm_admin_log` VALUES ('100', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265136');
INSERT INTO `yzm_admin_log` VALUES ('101', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265167');
INSERT INTO `yzm_admin_log` VALUES ('102', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265172');
INSERT INTO `yzm_admin_log` VALUES ('103', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265199');
INSERT INTO `yzm_admin_log` VALUES ('104', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265203');
INSERT INTO `yzm_admin_log` VALUES ('105', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265232');
INSERT INTO `yzm_admin_log` VALUES ('106', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265237');
INSERT INTO `yzm_admin_log` VALUES ('107', 'banner', 'banner', 'm=banner&c=banner&a=add', '1', 'yzmcms', '49.65.158.69', '1594265265');
INSERT INTO `yzm_admin_log` VALUES ('108', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.65.158.69', '1594286296');
INSERT INTO `yzm_admin_log` VALUES ('109', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286298');
INSERT INTO `yzm_admin_log` VALUES ('110', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.65.158.69', '1594286307');
INSERT INTO `yzm_admin_log` VALUES ('111', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286309');
INSERT INTO `yzm_admin_log` VALUES ('112', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286325');
INSERT INTO `yzm_admin_log` VALUES ('113', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286369');
INSERT INTO `yzm_admin_log` VALUES ('114', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.65.158.69', '1594286369');
INSERT INTO `yzm_admin_log` VALUES ('115', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286371');
INSERT INTO `yzm_admin_log` VALUES ('116', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286376');
INSERT INTO `yzm_admin_log` VALUES ('117', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286381');
INSERT INTO `yzm_admin_log` VALUES ('118', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286387');
INSERT INTO `yzm_admin_log` VALUES ('119', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286393');
INSERT INTO `yzm_admin_log` VALUES ('120', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286401');
INSERT INTO `yzm_admin_log` VALUES ('121', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286405');
INSERT INTO `yzm_admin_log` VALUES ('122', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286410');
INSERT INTO `yzm_admin_log` VALUES ('123', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286414');
INSERT INTO `yzm_admin_log` VALUES ('124', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.65.158.69', '1594286418');
INSERT INTO `yzm_admin_log` VALUES ('125', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1595577692');
INSERT INTO `yzm_admin_log` VALUES ('126', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1595577702');
INSERT INTO `yzm_admin_log` VALUES ('127', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1595577721');
INSERT INTO `yzm_admin_log` VALUES ('128', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1595577793');
INSERT INTO `yzm_admin_log` VALUES ('129', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1595577793');
INSERT INTO `yzm_admin_log` VALUES ('130', 'wechat', 'scan', 'm=wechat&c=scan&a=add', '1', 'yzmcms', '49.77.136.107', '1595991979');
INSERT INTO `yzm_admin_log` VALUES ('131', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596159067');
INSERT INTO `yzm_admin_log` VALUES ('132', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596159072');
INSERT INTO `yzm_admin_log` VALUES ('133', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596159076');
INSERT INTO `yzm_admin_log` VALUES ('134', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596159080');
INSERT INTO `yzm_admin_log` VALUES ('135', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596159083');
INSERT INTO `yzm_admin_log` VALUES ('136', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596159085');
INSERT INTO `yzm_admin_log` VALUES ('137', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596159121');
INSERT INTO `yzm_admin_log` VALUES ('138', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596166363');
INSERT INTO `yzm_admin_log` VALUES ('139', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596166366');
INSERT INTO `yzm_admin_log` VALUES ('140', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596166382');
INSERT INTO `yzm_admin_log` VALUES ('141', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596166382');
INSERT INTO `yzm_admin_log` VALUES ('142', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596192395');
INSERT INTO `yzm_admin_log` VALUES ('143', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596192401');
INSERT INTO `yzm_admin_log` VALUES ('144', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596192418');
INSERT INTO `yzm_admin_log` VALUES ('145', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596192424');
INSERT INTO `yzm_admin_log` VALUES ('146', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596192427');
INSERT INTO `yzm_admin_log` VALUES ('147', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596192597');
INSERT INTO `yzm_admin_log` VALUES ('148', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596192719');
INSERT INTO `yzm_admin_log` VALUES ('149', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596192719');
INSERT INTO `yzm_admin_log` VALUES ('150', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596192738');
INSERT INTO `yzm_admin_log` VALUES ('151', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596192815');
INSERT INTO `yzm_admin_log` VALUES ('152', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596192816');
INSERT INTO `yzm_admin_log` VALUES ('153', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596192826');
INSERT INTO `yzm_admin_log` VALUES ('154', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596192944');
INSERT INTO `yzm_admin_log` VALUES ('155', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596192944');
INSERT INTO `yzm_admin_log` VALUES ('156', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596607208');
INSERT INTO `yzm_admin_log` VALUES ('157', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596607214');
INSERT INTO `yzm_admin_log` VALUES ('158', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596607241');
INSERT INTO `yzm_admin_log` VALUES ('159', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596607263');
INSERT INTO `yzm_admin_log` VALUES ('160', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596607286');
INSERT INTO `yzm_admin_log` VALUES ('161', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596607317');
INSERT INTO `yzm_admin_log` VALUES ('162', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596607363');
INSERT INTO `yzm_admin_log` VALUES ('163', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596607366');
INSERT INTO `yzm_admin_log` VALUES ('164', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596607389');
INSERT INTO `yzm_admin_log` VALUES ('165', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596607401');
INSERT INTO `yzm_admin_log` VALUES ('166', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.136.107', '1596607589');
INSERT INTO `yzm_admin_log` VALUES ('167', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596607633');
INSERT INTO `yzm_admin_log` VALUES ('168', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596607646');
INSERT INTO `yzm_admin_log` VALUES ('169', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596607655');
INSERT INTO `yzm_admin_log` VALUES ('170', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596607663');
INSERT INTO `yzm_admin_log` VALUES ('171', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.136.107', '1596607676');
INSERT INTO `yzm_admin_log` VALUES ('172', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.136.107', '1596607688');
INSERT INTO `yzm_admin_log` VALUES ('173', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596607705');
INSERT INTO `yzm_admin_log` VALUES ('174', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596607713');
INSERT INTO `yzm_admin_log` VALUES ('175', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596607730');
INSERT INTO `yzm_admin_log` VALUES ('176', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596607810');
INSERT INTO `yzm_admin_log` VALUES ('177', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596607813');
INSERT INTO `yzm_admin_log` VALUES ('178', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596608159');
INSERT INTO `yzm_admin_log` VALUES ('179', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596608165');
INSERT INTO `yzm_admin_log` VALUES ('180', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596608203');
INSERT INTO `yzm_admin_log` VALUES ('181', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596608211');
INSERT INTO `yzm_admin_log` VALUES ('182', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596608433');
INSERT INTO `yzm_admin_log` VALUES ('183', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596617470');
INSERT INTO `yzm_admin_log` VALUES ('184', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596617473');
INSERT INTO `yzm_admin_log` VALUES ('185', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596617478');
INSERT INTO `yzm_admin_log` VALUES ('186', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679029');
INSERT INTO `yzm_admin_log` VALUES ('187', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596679082');
INSERT INTO `yzm_admin_log` VALUES ('188', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596679123');
INSERT INTO `yzm_admin_log` VALUES ('189', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679123');
INSERT INTO `yzm_admin_log` VALUES ('190', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596679160');
INSERT INTO `yzm_admin_log` VALUES ('191', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679166');
INSERT INTO `yzm_admin_log` VALUES ('192', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596679234');
INSERT INTO `yzm_admin_log` VALUES ('193', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679272');
INSERT INTO `yzm_admin_log` VALUES ('194', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596679278');
INSERT INTO `yzm_admin_log` VALUES ('195', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679308');
INSERT INTO `yzm_admin_log` VALUES ('196', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596679313');
INSERT INTO `yzm_admin_log` VALUES ('197', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679321');
INSERT INTO `yzm_admin_log` VALUES ('198', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596679323');
INSERT INTO `yzm_admin_log` VALUES ('199', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596679328');
INSERT INTO `yzm_admin_log` VALUES ('200', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679328');
INSERT INTO `yzm_admin_log` VALUES ('201', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596679338');
INSERT INTO `yzm_admin_log` VALUES ('202', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679353');
INSERT INTO `yzm_admin_log` VALUES ('203', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596679392');
INSERT INTO `yzm_admin_log` VALUES ('204', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679468');
INSERT INTO `yzm_admin_log` VALUES ('205', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596679475');
INSERT INTO `yzm_admin_log` VALUES ('206', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596679526');
INSERT INTO `yzm_admin_log` VALUES ('207', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596679526');
INSERT INTO `yzm_admin_log` VALUES ('208', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596680942');
INSERT INTO `yzm_admin_log` VALUES ('209', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596680955');
INSERT INTO `yzm_admin_log` VALUES ('210', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596680955');
INSERT INTO `yzm_admin_log` VALUES ('211', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596680983');
INSERT INTO `yzm_admin_log` VALUES ('212', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681002');
INSERT INTO `yzm_admin_log` VALUES ('213', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596681002');
INSERT INTO `yzm_admin_log` VALUES ('214', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681029');
INSERT INTO `yzm_admin_log` VALUES ('215', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681052');
INSERT INTO `yzm_admin_log` VALUES ('216', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596681052');
INSERT INTO `yzm_admin_log` VALUES ('217', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681166');
INSERT INTO `yzm_admin_log` VALUES ('218', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681317');
INSERT INTO `yzm_admin_log` VALUES ('219', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596681317');
INSERT INTO `yzm_admin_log` VALUES ('220', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681325');
INSERT INTO `yzm_admin_log` VALUES ('221', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681333');
INSERT INTO `yzm_admin_log` VALUES ('222', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596681333');
INSERT INTO `yzm_admin_log` VALUES ('223', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681350');
INSERT INTO `yzm_admin_log` VALUES ('224', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596681384');
INSERT INTO `yzm_admin_log` VALUES ('225', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596681384');
INSERT INTO `yzm_admin_log` VALUES ('226', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.136.107', '1596681412');
INSERT INTO `yzm_admin_log` VALUES ('227', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596681413');
INSERT INTO `yzm_admin_log` VALUES ('228', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596685198');
INSERT INTO `yzm_admin_log` VALUES ('229', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596685212');
INSERT INTO `yzm_admin_log` VALUES ('230', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596685213');
INSERT INTO `yzm_admin_log` VALUES ('231', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596794998');
INSERT INTO `yzm_admin_log` VALUES ('232', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596795016');
INSERT INTO `yzm_admin_log` VALUES ('233', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596795252');
INSERT INTO `yzm_admin_log` VALUES ('234', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795252');
INSERT INTO `yzm_admin_log` VALUES ('235', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795265');
INSERT INTO `yzm_admin_log` VALUES ('236', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795284');
INSERT INTO `yzm_admin_log` VALUES ('237', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795290');
INSERT INTO `yzm_admin_log` VALUES ('238', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795331');
INSERT INTO `yzm_admin_log` VALUES ('239', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795336');
INSERT INTO `yzm_admin_log` VALUES ('240', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795362');
INSERT INTO `yzm_admin_log` VALUES ('241', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795362');
INSERT INTO `yzm_admin_log` VALUES ('242', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596795389');
INSERT INTO `yzm_admin_log` VALUES ('243', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596795488');
INSERT INTO `yzm_admin_log` VALUES ('244', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795488');
INSERT INTO `yzm_admin_log` VALUES ('245', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596795505');
INSERT INTO `yzm_admin_log` VALUES ('246', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795685');
INSERT INTO `yzm_admin_log` VALUES ('247', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795708');
INSERT INTO `yzm_admin_log` VALUES ('248', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795729');
INSERT INTO `yzm_admin_log` VALUES ('249', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795729');
INSERT INTO `yzm_admin_log` VALUES ('250', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596795735');
INSERT INTO `yzm_admin_log` VALUES ('251', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.107', '1596795851');
INSERT INTO `yzm_admin_log` VALUES ('252', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795851');
INSERT INTO `yzm_admin_log` VALUES ('253', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795859');
INSERT INTO `yzm_admin_log` VALUES ('254', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795871');
INSERT INTO `yzm_admin_log` VALUES ('255', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795875');
INSERT INTO `yzm_admin_log` VALUES ('256', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795887');
INSERT INTO `yzm_admin_log` VALUES ('257', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795889');
INSERT INTO `yzm_admin_log` VALUES ('258', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795905');
INSERT INTO `yzm_admin_log` VALUES ('259', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795908');
INSERT INTO `yzm_admin_log` VALUES ('260', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1596795930');
INSERT INTO `yzm_admin_log` VALUES ('261', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1596795933');
INSERT INTO `yzm_admin_log` VALUES ('262', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1597283539');
INSERT INTO `yzm_admin_log` VALUES ('263', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1597283554');
INSERT INTO `yzm_admin_log` VALUES ('264', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1597283574');
INSERT INTO `yzm_admin_log` VALUES ('265', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1597283883');
INSERT INTO `yzm_admin_log` VALUES ('266', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1597283898');
INSERT INTO `yzm_admin_log` VALUES ('267', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1597283903');
INSERT INTO `yzm_admin_log` VALUES ('268', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1597283971');
INSERT INTO `yzm_admin_log` VALUES ('269', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1597284317');
INSERT INTO `yzm_admin_log` VALUES ('270', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.107', '1597284329');
INSERT INTO `yzm_admin_log` VALUES ('271', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1597284513');
INSERT INTO `yzm_admin_log` VALUES ('272', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.136.107', '1597284521');
INSERT INTO `yzm_admin_log` VALUES ('273', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.136.61', '1597393723');
INSERT INTO `yzm_admin_log` VALUES ('274', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.136.61', '1597393726');
INSERT INTO `yzm_admin_log` VALUES ('275', 'member', 'member', 'm=member&c=member&a=check', '1', 'yzmcms', '49.77.136.61', '1597393752');
INSERT INTO `yzm_admin_log` VALUES ('276', 'member', 'member', 'm=member&c=member&a=pay', '1', 'yzmcms', '49.77.136.61', '1597393753');
INSERT INTO `yzm_admin_log` VALUES ('277', 'member', 'member', 'm=member&c=member&a=member_count', '1', 'yzmcms', '49.77.136.61', '1597393756');
INSERT INTO `yzm_admin_log` VALUES ('278', 'admin', 'system_manage', 'm=admin&c=system_manage&a=member_set', '1', 'yzmcms', '49.77.136.61', '1597393757');
INSERT INTO `yzm_admin_log` VALUES ('279', 'admin', 'system_manage', 'm=admin&c=system_manage&a=member_set', '1', 'yzmcms', '49.77.136.61', '1597393757');
INSERT INTO `yzm_admin_log` VALUES ('280', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597628311');
INSERT INTO `yzm_admin_log` VALUES ('281', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597628319');
INSERT INTO `yzm_admin_log` VALUES ('282', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597628340');
INSERT INTO `yzm_admin_log` VALUES ('283', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597628340');
INSERT INTO `yzm_admin_log` VALUES ('284', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597628351');
INSERT INTO `yzm_admin_log` VALUES ('285', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597628427');
INSERT INTO `yzm_admin_log` VALUES ('286', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597630239');
INSERT INTO `yzm_admin_log` VALUES ('287', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597630313');
INSERT INTO `yzm_admin_log` VALUES ('288', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597630318');
INSERT INTO `yzm_admin_log` VALUES ('289', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597630463');
INSERT INTO `yzm_admin_log` VALUES ('290', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597630463');
INSERT INTO `yzm_admin_log` VALUES ('291', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597630484');
INSERT INTO `yzm_admin_log` VALUES ('292', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597630656');
INSERT INTO `yzm_admin_log` VALUES ('293', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597630656');
INSERT INTO `yzm_admin_log` VALUES ('294', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633031');
INSERT INTO `yzm_admin_log` VALUES ('295', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.147.31', '1597633036');
INSERT INTO `yzm_admin_log` VALUES ('296', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633037');
INSERT INTO `yzm_admin_log` VALUES ('297', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633041');
INSERT INTO `yzm_admin_log` VALUES ('298', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.147.31', '1597633045');
INSERT INTO `yzm_admin_log` VALUES ('299', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633046');
INSERT INTO `yzm_admin_log` VALUES ('300', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633047');
INSERT INTO `yzm_admin_log` VALUES ('301', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633052');
INSERT INTO `yzm_admin_log` VALUES ('302', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.147.31', '1597633057');
INSERT INTO `yzm_admin_log` VALUES ('303', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633058');
INSERT INTO `yzm_admin_log` VALUES ('304', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.147.31', '1597633077');
INSERT INTO `yzm_admin_log` VALUES ('305', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633079');
INSERT INTO `yzm_admin_log` VALUES ('306', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633106');
INSERT INTO `yzm_admin_log` VALUES ('307', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.147.31', '1597633115');
INSERT INTO `yzm_admin_log` VALUES ('308', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633116');
INSERT INTO `yzm_admin_log` VALUES ('309', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.147.31', '1597633120');
INSERT INTO `yzm_admin_log` VALUES ('310', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633122');
INSERT INTO `yzm_admin_log` VALUES ('311', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597633144');
INSERT INTO `yzm_admin_log` VALUES ('312', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597823941');
INSERT INTO `yzm_admin_log` VALUES ('313', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597823947');
INSERT INTO `yzm_admin_log` VALUES ('314', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597823953');
INSERT INTO `yzm_admin_log` VALUES ('315', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597823955');
INSERT INTO `yzm_admin_log` VALUES ('316', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597823956');
INSERT INTO `yzm_admin_log` VALUES ('317', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597823967');
INSERT INTO `yzm_admin_log` VALUES ('318', 'admin', 'system_manage', 'm=admin&c=system_manage&a=save', '1', 'yzmcms', '49.77.147.31', '1597824176');
INSERT INTO `yzm_admin_log` VALUES ('319', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597824278');
INSERT INTO `yzm_admin_log` VALUES ('320', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597824280');
INSERT INTO `yzm_admin_log` VALUES ('321', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597824287');
INSERT INTO `yzm_admin_log` VALUES ('322', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597887976');
INSERT INTO `yzm_admin_log` VALUES ('323', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597887981');
INSERT INTO `yzm_admin_log` VALUES ('324', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597887984');
INSERT INTO `yzm_admin_log` VALUES ('325', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597888643');
INSERT INTO `yzm_admin_log` VALUES ('326', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597888647');
INSERT INTO `yzm_admin_log` VALUES ('327', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597888649');
INSERT INTO `yzm_admin_log` VALUES ('328', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597888650');
INSERT INTO `yzm_admin_log` VALUES ('329', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597888653');
INSERT INTO `yzm_admin_log` VALUES ('330', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597888655');
INSERT INTO `yzm_admin_log` VALUES ('331', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597888674');
INSERT INTO `yzm_admin_log` VALUES ('332', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597888679');
INSERT INTO `yzm_admin_log` VALUES ('333', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597889886');
INSERT INTO `yzm_admin_log` VALUES ('334', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597889888');
INSERT INTO `yzm_admin_log` VALUES ('335', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597891017');
INSERT INTO `yzm_admin_log` VALUES ('336', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597891022');
INSERT INTO `yzm_admin_log` VALUES ('337', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597891286');
INSERT INTO `yzm_admin_log` VALUES ('338', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597891287');
INSERT INTO `yzm_admin_log` VALUES ('339', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597891336');
INSERT INTO `yzm_admin_log` VALUES ('340', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597891338');
INSERT INTO `yzm_admin_log` VALUES ('341', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597891476');
INSERT INTO `yzm_admin_log` VALUES ('342', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597891478');
INSERT INTO `yzm_admin_log` VALUES ('343', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597892578');
INSERT INTO `yzm_admin_log` VALUES ('344', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597892580');
INSERT INTO `yzm_admin_log` VALUES ('345', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597892689');
INSERT INTO `yzm_admin_log` VALUES ('346', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597892692');
INSERT INTO `yzm_admin_log` VALUES ('347', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597892730');
INSERT INTO `yzm_admin_log` VALUES ('348', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597892731');
INSERT INTO `yzm_admin_log` VALUES ('349', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597893195');
INSERT INTO `yzm_admin_log` VALUES ('350', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597893196');
INSERT INTO `yzm_admin_log` VALUES ('351', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597894420');
INSERT INTO `yzm_admin_log` VALUES ('352', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597894982');
INSERT INTO `yzm_admin_log` VALUES ('353', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597894986');
INSERT INTO `yzm_admin_log` VALUES ('354', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597895501');
INSERT INTO `yzm_admin_log` VALUES ('355', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597895747');
INSERT INTO `yzm_admin_log` VALUES ('356', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597895747');
INSERT INTO `yzm_admin_log` VALUES ('357', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597895749');
INSERT INTO `yzm_admin_log` VALUES ('358', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597895754');
INSERT INTO `yzm_admin_log` VALUES ('359', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597895754');
INSERT INTO `yzm_admin_log` VALUES ('360', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597895757');
INSERT INTO `yzm_admin_log` VALUES ('361', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597904983');
INSERT INTO `yzm_admin_log` VALUES ('362', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597904987');
INSERT INTO `yzm_admin_log` VALUES ('363', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597904989');
INSERT INTO `yzm_admin_log` VALUES ('364', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597905063');
INSERT INTO `yzm_admin_log` VALUES ('365', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597905063');
INSERT INTO `yzm_admin_log` VALUES ('366', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597906698');
INSERT INTO `yzm_admin_log` VALUES ('367', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597906705');
INSERT INTO `yzm_admin_log` VALUES ('368', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597981534');
INSERT INTO `yzm_admin_log` VALUES ('369', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597981535');
INSERT INTO `yzm_admin_log` VALUES ('370', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597981774');
INSERT INTO `yzm_admin_log` VALUES ('371', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597981774');
INSERT INTO `yzm_admin_log` VALUES ('372', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981814');
INSERT INTO `yzm_admin_log` VALUES ('373', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981819');
INSERT INTO `yzm_admin_log` VALUES ('374', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597981819');
INSERT INTO `yzm_admin_log` VALUES ('375', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981856');
INSERT INTO `yzm_admin_log` VALUES ('376', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597981895');
INSERT INTO `yzm_admin_log` VALUES ('377', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981897');
INSERT INTO `yzm_admin_log` VALUES ('378', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981903');
INSERT INTO `yzm_admin_log` VALUES ('379', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597981903');
INSERT INTO `yzm_admin_log` VALUES ('380', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981939');
INSERT INTO `yzm_admin_log` VALUES ('381', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981949');
INSERT INTO `yzm_admin_log` VALUES ('382', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981967');
INSERT INTO `yzm_admin_log` VALUES ('383', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597981967');
INSERT INTO `yzm_admin_log` VALUES ('384', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597981985');
INSERT INTO `yzm_admin_log` VALUES ('385', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597981999');
INSERT INTO `yzm_admin_log` VALUES ('386', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597982001');
INSERT INTO `yzm_admin_log` VALUES ('387', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597982072');
INSERT INTO `yzm_admin_log` VALUES ('388', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597982073');
INSERT INTO `yzm_admin_log` VALUES ('389', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.147.31', '1597982135');
INSERT INTO `yzm_admin_log` VALUES ('390', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597982135');
INSERT INTO `yzm_admin_log` VALUES ('391', 'member', 'member', 'm=member&c=member&a=add', '1', 'yzmcms', '49.77.147.31', '1597982443');
INSERT INTO `yzm_admin_log` VALUES ('392', 'member', 'member', 'm=member&c=member&a=add', '1', 'yzmcms', '49.77.147.31', '1597982489');
INSERT INTO `yzm_admin_log` VALUES ('393', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597982645');
INSERT INTO `yzm_admin_log` VALUES ('394', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597982653');
INSERT INTO `yzm_admin_log` VALUES ('395', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597982848');
INSERT INTO `yzm_admin_log` VALUES ('396', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597982848');
INSERT INTO `yzm_admin_log` VALUES ('397', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597982860');
INSERT INTO `yzm_admin_log` VALUES ('398', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.147.31', '1597982881');
INSERT INTO `yzm_admin_log` VALUES ('399', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.147.31', '1597982881');
INSERT INTO `yzm_admin_log` VALUES ('400', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598250306');
INSERT INTO `yzm_admin_log` VALUES ('401', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598250360');
INSERT INTO `yzm_admin_log` VALUES ('402', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598250362');
INSERT INTO `yzm_admin_log` VALUES ('403', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598250364');
INSERT INTO `yzm_admin_log` VALUES ('404', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598251352');
INSERT INTO `yzm_admin_log` VALUES ('405', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598264958');
INSERT INTO `yzm_admin_log` VALUES ('406', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598264960');
INSERT INTO `yzm_admin_log` VALUES ('407', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598318847');
INSERT INTO `yzm_admin_log` VALUES ('408', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '18.178.184.115', '1598345053');
INSERT INTO `yzm_admin_log` VALUES ('409', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '18.178.184.115', '1598345059');
INSERT INTO `yzm_admin_log` VALUES ('410', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598346166');
INSERT INTO `yzm_admin_log` VALUES ('411', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598346168');
INSERT INTO `yzm_admin_log` VALUES ('412', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598346640');
INSERT INTO `yzm_admin_log` VALUES ('413', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598346643');
INSERT INTO `yzm_admin_log` VALUES ('414', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598346674');
INSERT INTO `yzm_admin_log` VALUES ('415', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598346675');
INSERT INTO `yzm_admin_log` VALUES ('416', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598347224');
INSERT INTO `yzm_admin_log` VALUES ('417', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598347225');
INSERT INTO `yzm_admin_log` VALUES ('418', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598347252');
INSERT INTO `yzm_admin_log` VALUES ('419', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598347254');
INSERT INTO `yzm_admin_log` VALUES ('420', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598347263');
INSERT INTO `yzm_admin_log` VALUES ('421', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598347267');
INSERT INTO `yzm_admin_log` VALUES ('422', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598347312');
INSERT INTO `yzm_admin_log` VALUES ('423', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598347313');
INSERT INTO `yzm_admin_log` VALUES ('424', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598347319');
INSERT INTO `yzm_admin_log` VALUES ('425', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598347328');
INSERT INTO `yzm_admin_log` VALUES ('426', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598347361');
INSERT INTO `yzm_admin_log` VALUES ('427', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598347363');
INSERT INTO `yzm_admin_log` VALUES ('428', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598347375');
INSERT INTO `yzm_admin_log` VALUES ('429', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598347376');
INSERT INTO `yzm_admin_log` VALUES ('430', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598347432');
INSERT INTO `yzm_admin_log` VALUES ('431', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598347434');
INSERT INTO `yzm_admin_log` VALUES ('432', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598347805');
INSERT INTO `yzm_admin_log` VALUES ('433', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598347806');
INSERT INTO `yzm_admin_log` VALUES ('434', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598347810');
INSERT INTO `yzm_admin_log` VALUES ('435', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598347819');
INSERT INTO `yzm_admin_log` VALUES ('436', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598347821');
INSERT INTO `yzm_admin_log` VALUES ('437', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598348137');
INSERT INTO `yzm_admin_log` VALUES ('438', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348138');
INSERT INTO `yzm_admin_log` VALUES ('439', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348144');
INSERT INTO `yzm_admin_log` VALUES ('440', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598348144');
INSERT INTO `yzm_admin_log` VALUES ('441', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348146');
INSERT INTO `yzm_admin_log` VALUES ('442', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348152');
INSERT INTO `yzm_admin_log` VALUES ('443', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598348152');
INSERT INTO `yzm_admin_log` VALUES ('444', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348153');
INSERT INTO `yzm_admin_log` VALUES ('445', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348204');
INSERT INTO `yzm_admin_log` VALUES ('446', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348209');
INSERT INTO `yzm_admin_log` VALUES ('447', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348212');
INSERT INTO `yzm_admin_log` VALUES ('448', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598348595');
INSERT INTO `yzm_admin_log` VALUES ('449', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598348595');
INSERT INTO `yzm_admin_log` VALUES ('450', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598348609');
INSERT INTO `yzm_admin_log` VALUES ('451', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598348609');
INSERT INTO `yzm_admin_log` VALUES ('452', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598348611');
INSERT INTO `yzm_admin_log` VALUES ('453', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598348617');
INSERT INTO `yzm_admin_log` VALUES ('454', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.103.79', '1598348626');
INSERT INTO `yzm_admin_log` VALUES ('455', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598348627');
INSERT INTO `yzm_admin_log` VALUES ('456', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598404138');
INSERT INTO `yzm_admin_log` VALUES ('457', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598404238');
INSERT INTO `yzm_admin_log` VALUES ('458', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598404240');
INSERT INTO `yzm_admin_log` VALUES ('459', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598493129');
INSERT INTO `yzm_admin_log` VALUES ('460', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598493138');
INSERT INTO `yzm_admin_log` VALUES ('461', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598493141');
INSERT INTO `yzm_admin_log` VALUES ('462', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598494412');
INSERT INTO `yzm_admin_log` VALUES ('463', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598494413');
INSERT INTO `yzm_admin_log` VALUES ('464', 'admin', 'sitemodel', 'm=admin&c=sitemodel&a=edit', '1', 'yzmcms', '49.77.103.79', '1598494570');
INSERT INTO `yzm_admin_log` VALUES ('465', 'admin', 'model_field', 'm=admin&c=model_field&a=add', '1', 'yzmcms', '49.77.103.79', '1598494576');
INSERT INTO `yzm_admin_log` VALUES ('466', 'admin', 'model_field', 'm=admin&c=model_field&a=public_check_field', '1', 'yzmcms', '49.77.103.79', '1598494581');
INSERT INTO `yzm_admin_log` VALUES ('467', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '49.77.103.79', '1598494595');
INSERT INTO `yzm_admin_log` VALUES ('468', 'admin', 'model_field', 'm=admin&c=model_field&a=add', '1', 'yzmcms', '49.77.103.79', '1598494611');
INSERT INTO `yzm_admin_log` VALUES ('469', 'admin', 'model_field', 'm=admin&c=model_field&a=public_check_field', '1', 'yzmcms', '49.77.103.79', '1598494617');
INSERT INTO `yzm_admin_log` VALUES ('470', 'admin', 'model_field', 'm=admin&c=model_field&a=public_check_field', '1', 'yzmcms', '49.77.103.79', '1598494635');
INSERT INTO `yzm_admin_log` VALUES ('471', 'admin', 'model_field', 'm=admin&c=model_field&a=add', '1', 'yzmcms', '49.77.103.79', '1598494635');
INSERT INTO `yzm_admin_log` VALUES ('472', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '49.77.103.79', '1598494645');
INSERT INTO `yzm_admin_log` VALUES ('473', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '45.77.11.214', '1598494806');
INSERT INTO `yzm_admin_log` VALUES ('474', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '45.77.11.214', '1598494808');
INSERT INTO `yzm_admin_log` VALUES ('475', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598494854');
INSERT INTO `yzm_admin_log` VALUES ('476', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598494856');
INSERT INTO `yzm_admin_log` VALUES ('477', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '45.77.11.214', '1598494862');
INSERT INTO `yzm_admin_log` VALUES ('478', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '45.77.11.214', '1598494880');
INSERT INTO `yzm_admin_log` VALUES ('479', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598494883');
INSERT INTO `yzm_admin_log` VALUES ('480', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598494884');
INSERT INTO `yzm_admin_log` VALUES ('481', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598494892');
INSERT INTO `yzm_admin_log` VALUES ('482', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598494894');
INSERT INTO `yzm_admin_log` VALUES ('483', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598495012');
INSERT INTO `yzm_admin_log` VALUES ('484', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598495014');
INSERT INTO `yzm_admin_log` VALUES ('485', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598495026');
INSERT INTO `yzm_admin_log` VALUES ('486', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598495026');
INSERT INTO `yzm_admin_log` VALUES ('487', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598495064');
INSERT INTO `yzm_admin_log` VALUES ('488', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.103.79', '1598495065');
INSERT INTO `yzm_admin_log` VALUES ('489', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.103.79', '1598495226');
INSERT INTO `yzm_admin_log` VALUES ('490', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598495228');
INSERT INTO `yzm_admin_log` VALUES ('491', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.103.79', '1598495300');
INSERT INTO `yzm_admin_log` VALUES ('492', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '45.77.11.214', '1598499707');
INSERT INTO `yzm_admin_log` VALUES ('493', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '45.77.11.214', '1598499709');
INSERT INTO `yzm_admin_log` VALUES ('494', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '49.77.103.79', '1598510395');
INSERT INTO `yzm_admin_log` VALUES ('495', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '45.77.11.214', '1598516786');
INSERT INTO `yzm_admin_log` VALUES ('496', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '45.77.11.214', '1598516788');
INSERT INTO `yzm_admin_log` VALUES ('497', 'admin', 'system_manage', 'm=admin&c=system_manage&a=save', '1', 'yzmcms', '127.0.0.1', '1598522372');
INSERT INTO `yzm_admin_log` VALUES ('498', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_category_url', '1', 'yzmcms', '127.0.0.1', '1598522383');
INSERT INTO `yzm_admin_log` VALUES ('499', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1598522388');
INSERT INTO `yzm_admin_log` VALUES ('500', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1598522390');
INSERT INTO `yzm_admin_log` VALUES ('501', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1598522391');
INSERT INTO `yzm_admin_log` VALUES ('502', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1598522392');
INSERT INTO `yzm_admin_log` VALUES ('503', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1598522397');
INSERT INTO `yzm_admin_log` VALUES ('504', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1598522398');
INSERT INTO `yzm_admin_log` VALUES ('505', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1598522408');
INSERT INTO `yzm_admin_log` VALUES ('506', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1598522409');
INSERT INTO `yzm_admin_log` VALUES ('507', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1598522814');
INSERT INTO `yzm_admin_log` VALUES ('508', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1598522817');
INSERT INTO `yzm_admin_log` VALUES ('509', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1598522913');
INSERT INTO `yzm_admin_log` VALUES ('510', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1598522916');
INSERT INTO `yzm_admin_log` VALUES ('511', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1598522957');
INSERT INTO `yzm_admin_log` VALUES ('512', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1598522958');
INSERT INTO `yzm_admin_log` VALUES ('513', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_category_url', '1', 'yzmcms', '45.77.11.214', '1598575986');
INSERT INTO `yzm_admin_log` VALUES ('514', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '45.77.11.214', '1598575990');
INSERT INTO `yzm_admin_log` VALUES ('515', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '45.77.11.214', '1598575990');
INSERT INTO `yzm_admin_log` VALUES ('516', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '45.77.11.214', '1598575991');
INSERT INTO `yzm_admin_log` VALUES ('517', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '45.77.11.214', '1598575991');
INSERT INTO `yzm_admin_log` VALUES ('518', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '45.77.11.214', '1598575992');
INSERT INTO `yzm_admin_log` VALUES ('519', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '45.77.11.214', '1598575993');
INSERT INTO `yzm_admin_log` VALUES ('520', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '45.77.11.214', '1598575994');
INSERT INTO `yzm_admin_log` VALUES ('521', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '45.77.11.214', '1598575995');
INSERT INTO `yzm_admin_log` VALUES ('522', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598587431');
INSERT INTO `yzm_admin_log` VALUES ('523', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598598164');
INSERT INTO `yzm_admin_log` VALUES ('524', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598598167');
INSERT INTO `yzm_admin_log` VALUES ('525', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598598883');
INSERT INTO `yzm_admin_log` VALUES ('526', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598598886');
INSERT INTO `yzm_admin_log` VALUES ('527', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598599045');
INSERT INTO `yzm_admin_log` VALUES ('528', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599045');
INSERT INTO `yzm_admin_log` VALUES ('529', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598599068');
INSERT INTO `yzm_admin_log` VALUES ('530', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598599119');
INSERT INTO `yzm_admin_log` VALUES ('531', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599119');
INSERT INTO `yzm_admin_log` VALUES ('532', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599127');
INSERT INTO `yzm_admin_log` VALUES ('533', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598599129');
INSERT INTO `yzm_admin_log` VALUES ('534', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598599387');
INSERT INTO `yzm_admin_log` VALUES ('535', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599387');
INSERT INTO `yzm_admin_log` VALUES ('536', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599419');
INSERT INTO `yzm_admin_log` VALUES ('537', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599421');
INSERT INTO `yzm_admin_log` VALUES ('538', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599432');
INSERT INTO `yzm_admin_log` VALUES ('539', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599432');
INSERT INTO `yzm_admin_log` VALUES ('540', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599435');
INSERT INTO `yzm_admin_log` VALUES ('541', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599437');
INSERT INTO `yzm_admin_log` VALUES ('542', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599599');
INSERT INTO `yzm_admin_log` VALUES ('543', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599599');
INSERT INTO `yzm_admin_log` VALUES ('544', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599612');
INSERT INTO `yzm_admin_log` VALUES ('545', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599614');
INSERT INTO `yzm_admin_log` VALUES ('546', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599622');
INSERT INTO `yzm_admin_log` VALUES ('547', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599623');
INSERT INTO `yzm_admin_log` VALUES ('548', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599702');
INSERT INTO `yzm_admin_log` VALUES ('549', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599704');
INSERT INTO `yzm_admin_log` VALUES ('550', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599759');
INSERT INTO `yzm_admin_log` VALUES ('551', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599763');
INSERT INTO `yzm_admin_log` VALUES ('552', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599805');
INSERT INTO `yzm_admin_log` VALUES ('553', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599807');
INSERT INTO `yzm_admin_log` VALUES ('554', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599825');
INSERT INTO `yzm_admin_log` VALUES ('555', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599825');
INSERT INTO `yzm_admin_log` VALUES ('556', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598599989');
INSERT INTO `yzm_admin_log` VALUES ('557', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598599997');
INSERT INTO `yzm_admin_log` VALUES ('558', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600000');
INSERT INTO `yzm_admin_log` VALUES ('559', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600117');
INSERT INTO `yzm_admin_log` VALUES ('560', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600123');
INSERT INTO `yzm_admin_log` VALUES ('561', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600135');
INSERT INTO `yzm_admin_log` VALUES ('562', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600162');
INSERT INTO `yzm_admin_log` VALUES ('563', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600340');
INSERT INTO `yzm_admin_log` VALUES ('564', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600343');
INSERT INTO `yzm_admin_log` VALUES ('565', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600362');
INSERT INTO `yzm_admin_log` VALUES ('566', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600369');
INSERT INTO `yzm_admin_log` VALUES ('567', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600374');
INSERT INTO `yzm_admin_log` VALUES ('568', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600441');
INSERT INTO `yzm_admin_log` VALUES ('569', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600576');
INSERT INTO `yzm_admin_log` VALUES ('570', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600579');
INSERT INTO `yzm_admin_log` VALUES ('571', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600584');
INSERT INTO `yzm_admin_log` VALUES ('572', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600584');
INSERT INTO `yzm_admin_log` VALUES ('573', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600659');
INSERT INTO `yzm_admin_log` VALUES ('574', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600664');
INSERT INTO `yzm_admin_log` VALUES ('575', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600672');
INSERT INTO `yzm_admin_log` VALUES ('576', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600672');
INSERT INTO `yzm_admin_log` VALUES ('577', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600675');
INSERT INTO `yzm_admin_log` VALUES ('578', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600677');
INSERT INTO `yzm_admin_log` VALUES ('579', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600686');
INSERT INTO `yzm_admin_log` VALUES ('580', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600688');
INSERT INTO `yzm_admin_log` VALUES ('581', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598600695');
INSERT INTO `yzm_admin_log` VALUES ('582', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598600695');
INSERT INTO `yzm_admin_log` VALUES ('583', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598601925');
INSERT INTO `yzm_admin_log` VALUES ('584', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598601933');
INSERT INTO `yzm_admin_log` VALUES ('585', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598601938');
INSERT INTO `yzm_admin_log` VALUES ('586', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598602009');
INSERT INTO `yzm_admin_log` VALUES ('587', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598602063');
INSERT INTO `yzm_admin_log` VALUES ('588', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598602068');
INSERT INTO `yzm_admin_log` VALUES ('589', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598602079');
INSERT INTO `yzm_admin_log` VALUES ('590', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598602084');
INSERT INTO `yzm_admin_log` VALUES ('591', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598602135');
INSERT INTO `yzm_admin_log` VALUES ('592', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598602135');
INSERT INTO `yzm_admin_log` VALUES ('593', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.167.86', '1598602140');
INSERT INTO `yzm_admin_log` VALUES ('594', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598602141');
INSERT INTO `yzm_admin_log` VALUES ('595', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598602435');
INSERT INTO `yzm_admin_log` VALUES ('596', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598602438');
INSERT INTO `yzm_admin_log` VALUES ('597', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598602456');
INSERT INTO `yzm_admin_log` VALUES ('598', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598602457');
INSERT INTO `yzm_admin_log` VALUES ('599', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598836741');
INSERT INTO `yzm_admin_log` VALUES ('600', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.167.86', '1598836871');
INSERT INTO `yzm_admin_log` VALUES ('601', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598836872');
INSERT INTO `yzm_admin_log` VALUES ('602', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.167.86', '1598836879');
INSERT INTO `yzm_admin_log` VALUES ('603', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598836880');
INSERT INTO `yzm_admin_log` VALUES ('604', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.167.86', '1598836896');
INSERT INTO `yzm_admin_log` VALUES ('605', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598836897');
INSERT INTO `yzm_admin_log` VALUES ('606', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598853135');
INSERT INTO `yzm_admin_log` VALUES ('607', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.167.86', '1598853140');
INSERT INTO `yzm_admin_log` VALUES ('608', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598853141');
INSERT INTO `yzm_admin_log` VALUES ('609', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598853144');
INSERT INTO `yzm_admin_log` VALUES ('610', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598853150');
INSERT INTO `yzm_admin_log` VALUES ('611', 'admin', 'content', 'm=admin&c=content&a=del', '1', 'yzmcms', '49.77.167.86', '1598853155');
INSERT INTO `yzm_admin_log` VALUES ('612', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598853156');
INSERT INTO `yzm_admin_log` VALUES ('613', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598853159');
INSERT INTO `yzm_admin_log` VALUES ('614', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598853406');
INSERT INTO `yzm_admin_log` VALUES ('615', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598853408');
INSERT INTO `yzm_admin_log` VALUES ('616', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '49.77.167.86', '1598853507');
INSERT INTO `yzm_admin_log` VALUES ('617', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598853507');
INSERT INTO `yzm_admin_log` VALUES ('618', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598853812');
INSERT INTO `yzm_admin_log` VALUES ('619', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598853816');
INSERT INTO `yzm_admin_log` VALUES ('620', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598853825');
INSERT INTO `yzm_admin_log` VALUES ('621', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598853825');
INSERT INTO `yzm_admin_log` VALUES ('622', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598952134');
INSERT INTO `yzm_admin_log` VALUES ('623', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598952135');
INSERT INTO `yzm_admin_log` VALUES ('624', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598952137');
INSERT INTO `yzm_admin_log` VALUES ('625', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598952159');
INSERT INTO `yzm_admin_log` VALUES ('626', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598952159');
INSERT INTO `yzm_admin_log` VALUES ('627', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598952197');
INSERT INTO `yzm_admin_log` VALUES ('628', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598952202');
INSERT INTO `yzm_admin_log` VALUES ('629', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598952202');
INSERT INTO `yzm_admin_log` VALUES ('630', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598952308');
INSERT INTO `yzm_admin_log` VALUES ('631', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598952315');
INSERT INTO `yzm_admin_log` VALUES ('632', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598952315');
INSERT INTO `yzm_admin_log` VALUES ('633', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598953918');
INSERT INTO `yzm_admin_log` VALUES ('634', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598953928');
INSERT INTO `yzm_admin_log` VALUES ('635', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598953993');
INSERT INTO `yzm_admin_log` VALUES ('636', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598954078');
INSERT INTO `yzm_admin_log` VALUES ('637', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.77.167.86', '1598954134');
INSERT INTO `yzm_admin_log` VALUES ('638', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.77.167.86', '1598954136');
INSERT INTO `yzm_admin_log` VALUES ('639', 'member', 'member', 'm=member&c=member&a=add', '1', 'yzmcms', '45.77.11.214', '1599035284');
INSERT INTO `yzm_admin_log` VALUES ('640', 'member', 'member', 'm=member&c=member&a=add', '1', 'yzmcms', '45.77.11.214', '1599035363');
INSERT INTO `yzm_admin_log` VALUES ('641', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '45.77.11.214', '1599035371');
INSERT INTO `yzm_admin_log` VALUES ('642', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '45.77.11.214', '1599035400');
INSERT INTO `yzm_admin_log` VALUES ('643', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '45.77.11.214', '1599035417');
INSERT INTO `yzm_admin_log` VALUES ('644', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '45.77.11.214', '1599035417');
INSERT INTO `yzm_admin_log` VALUES ('645', 'admin', 'index', 'm=admin&c=index&a=public_logout', '1', 'yzmcms', '45.77.11.214', '1599035447');
INSERT INTO `yzm_admin_log` VALUES ('646', 'admin', 'index', 'm=admin&c=index&a=public_logout', '1', 'yzmcms', '45.77.11.214', '1599115147');
INSERT INTO `yzm_admin_log` VALUES ('647', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '117.84.97.181', '1599215869');
INSERT INTO `yzm_admin_log` VALUES ('648', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '117.84.97.181', '1599215871');
INSERT INTO `yzm_admin_log` VALUES ('649', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '117.84.97.181', '1599216052');
INSERT INTO `yzm_admin_log` VALUES ('650', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '117.84.97.181', '1599216053');
INSERT INTO `yzm_admin_log` VALUES ('651', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '117.84.97.181', '1599216131');
INSERT INTO `yzm_admin_log` VALUES ('652', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '117.84.97.181', '1599216132');
INSERT INTO `yzm_admin_log` VALUES ('653', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '117.84.97.181', '1599216186');
INSERT INTO `yzm_admin_log` VALUES ('654', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '117.84.97.181', '1599216203');
INSERT INTO `yzm_admin_log` VALUES ('655', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '117.84.97.181', '1599216203');
INSERT INTO `yzm_admin_log` VALUES ('656', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '117.84.97.181', '1599216216');
INSERT INTO `yzm_admin_log` VALUES ('657', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '117.84.97.181', '1599216223');
INSERT INTO `yzm_admin_log` VALUES ('658', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '117.84.97.181', '1599216223');
INSERT INTO `yzm_admin_log` VALUES ('659', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599355555');
INSERT INTO `yzm_admin_log` VALUES ('660', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599355571');
INSERT INTO `yzm_admin_log` VALUES ('661', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599355918');
INSERT INTO `yzm_admin_log` VALUES ('662', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599355918');
INSERT INTO `yzm_admin_log` VALUES ('663', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599355930');
INSERT INTO `yzm_admin_log` VALUES ('664', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599356035');
INSERT INTO `yzm_admin_log` VALUES ('665', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599356035');
INSERT INTO `yzm_admin_log` VALUES ('666', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599356084');
INSERT INTO `yzm_admin_log` VALUES ('667', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599356110');
INSERT INTO `yzm_admin_log` VALUES ('668', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599356110');
INSERT INTO `yzm_admin_log` VALUES ('669', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599356114');
INSERT INTO `yzm_admin_log` VALUES ('670', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599356121');
INSERT INTO `yzm_admin_log` VALUES ('671', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599356122');
INSERT INTO `yzm_admin_log` VALUES ('672', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357007');
INSERT INTO `yzm_admin_log` VALUES ('673', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357011');
INSERT INTO `yzm_admin_log` VALUES ('674', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357024');
INSERT INTO `yzm_admin_log` VALUES ('675', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357027');
INSERT INTO `yzm_admin_log` VALUES ('676', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357043');
INSERT INTO `yzm_admin_log` VALUES ('677', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357045');
INSERT INTO `yzm_admin_log` VALUES ('678', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357074');
INSERT INTO `yzm_admin_log` VALUES ('679', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357078');
INSERT INTO `yzm_admin_log` VALUES ('680', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357092');
INSERT INTO `yzm_admin_log` VALUES ('681', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357093');
INSERT INTO `yzm_admin_log` VALUES ('682', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357102');
INSERT INTO `yzm_admin_log` VALUES ('683', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357111');
INSERT INTO `yzm_admin_log` VALUES ('684', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357111');
INSERT INTO `yzm_admin_log` VALUES ('685', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357117');
INSERT INTO `yzm_admin_log` VALUES ('686', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357126');
INSERT INTO `yzm_admin_log` VALUES ('687', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357126');
INSERT INTO `yzm_admin_log` VALUES ('688', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357130');
INSERT INTO `yzm_admin_log` VALUES ('689', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357138');
INSERT INTO `yzm_admin_log` VALUES ('690', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357142');
INSERT INTO `yzm_admin_log` VALUES ('691', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357152');
INSERT INTO `yzm_admin_log` VALUES ('692', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357152');
INSERT INTO `yzm_admin_log` VALUES ('693', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357160');
INSERT INTO `yzm_admin_log` VALUES ('694', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357169');
INSERT INTO `yzm_admin_log` VALUES ('695', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357169');
INSERT INTO `yzm_admin_log` VALUES ('696', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357173');
INSERT INTO `yzm_admin_log` VALUES ('697', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357190');
INSERT INTO `yzm_admin_log` VALUES ('698', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357196');
INSERT INTO `yzm_admin_log` VALUES ('699', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357198');
INSERT INTO `yzm_admin_log` VALUES ('700', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357205');
INSERT INTO `yzm_admin_log` VALUES ('701', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357215');
INSERT INTO `yzm_admin_log` VALUES ('702', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357216');
INSERT INTO `yzm_admin_log` VALUES ('703', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357219');
INSERT INTO `yzm_admin_log` VALUES ('704', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357231');
INSERT INTO `yzm_admin_log` VALUES ('705', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357232');
INSERT INTO `yzm_admin_log` VALUES ('706', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357240');
INSERT INTO `yzm_admin_log` VALUES ('707', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357250');
INSERT INTO `yzm_admin_log` VALUES ('708', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357250');
INSERT INTO `yzm_admin_log` VALUES ('709', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357255');
INSERT INTO `yzm_admin_log` VALUES ('710', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357267');
INSERT INTO `yzm_admin_log` VALUES ('711', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357267');
INSERT INTO `yzm_admin_log` VALUES ('712', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357272');
INSERT INTO `yzm_admin_log` VALUES ('713', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357288');
INSERT INTO `yzm_admin_log` VALUES ('714', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357292');
INSERT INTO `yzm_admin_log` VALUES ('715', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357301');
INSERT INTO `yzm_admin_log` VALUES ('716', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357301');
INSERT INTO `yzm_admin_log` VALUES ('717', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357305');
INSERT INTO `yzm_admin_log` VALUES ('718', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '49.94.71.29', '1599357315');
INSERT INTO `yzm_admin_log` VALUES ('719', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '49.94.71.29', '1599357315');
INSERT INTO `yzm_admin_log` VALUES ('720', 'admin', 'system_manage', 'm=admin&c=system_manage&a=save', '1', 'yzmcms', '49.77.167.86', '1599640533');
INSERT INTO `yzm_admin_log` VALUES ('721', 'admin', 'system_manage', 'm=admin&c=system_manage&a=prohibit_words', '1', 'yzmcms', '49.77.167.86', '1599640612');
INSERT INTO `yzm_admin_log` VALUES ('722', 'admin', 'system_manage', 'm=admin&c=system_manage&a=save', '1', 'yzmcms', '49.77.167.86', '1599644036');
INSERT INTO `yzm_admin_log` VALUES ('723', 'admin', 'index', 'm=admin&c=index&a=public_logout', '1', 'yzmcms', '45.77.11.214', '1600414248');
INSERT INTO `yzm_admin_log` VALUES ('724', 'admin', 'clear_cache', 'm=admin&c=clear_cache&a=public_clear', '1', 'yzmcms', '45.77.11.214', '1600414597');
INSERT INTO `yzm_admin_log` VALUES ('725', 'admin', 'clear_cache', 'm=admin&c=clear_cache&a=public_clear', '1', 'yzmcms', '45.77.11.214', '1600658412');
INSERT INTO `yzm_admin_log` VALUES ('726', 'admin', 'admin_manage', 'm=admin&c=admin_manage&a=public_edit_info', '1', 'yzmcms', '45.77.11.214', '1600754227');
INSERT INTO `yzm_admin_log` VALUES ('727', 'admin', 'system_manage', 'm=admin&c=system_manage&a=save', '1', 'yzmcms', '127.0.0.1', '1600929939');
INSERT INTO `yzm_admin_log` VALUES ('728', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_category_url', '1', 'yzmcms', '127.0.0.1', '1600929948');
INSERT INTO `yzm_admin_log` VALUES ('729', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1600929951');
INSERT INTO `yzm_admin_log` VALUES ('730', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1600929951');
INSERT INTO `yzm_admin_log` VALUES ('731', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1600929951');
INSERT INTO `yzm_admin_log` VALUES ('732', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1600929951');
INSERT INTO `yzm_admin_log` VALUES ('733', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1600929951');
INSERT INTO `yzm_admin_log` VALUES ('734', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1600929951');
INSERT INTO `yzm_admin_log` VALUES ('735', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1600929952');
INSERT INTO `yzm_admin_log` VALUES ('736', 'admin', 'update_urls', 'm=admin&c=update_urls&a=update_content_url', '1', 'yzmcms', '127.0.0.1', '1600929952');
INSERT INTO `yzm_admin_log` VALUES ('737', 'admin', 'category', 'm=admin&c=category&a=add', '1', 'yzmcms', '127.0.0.1', '1600929979');
INSERT INTO `yzm_admin_log` VALUES ('738', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1600929986');
INSERT INTO `yzm_admin_log` VALUES ('739', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600929991');
INSERT INTO `yzm_admin_log` VALUES ('740', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930013');
INSERT INTO `yzm_admin_log` VALUES ('741', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930024');
INSERT INTO `yzm_admin_log` VALUES ('742', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930141');
INSERT INTO `yzm_admin_log` VALUES ('743', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930171');
INSERT INTO `yzm_admin_log` VALUES ('744', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930180');
INSERT INTO `yzm_admin_log` VALUES ('745', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930194');
INSERT INTO `yzm_admin_log` VALUES ('746', 'admin', 'category', 'm=admin&c=category&a=order', '1', 'yzmcms', '127.0.0.1', '1600930221');
INSERT INTO `yzm_admin_log` VALUES ('747', 'admin', 'category', 'm=admin&c=category&a=order', '1', 'yzmcms', '127.0.0.1', '1600930225');
INSERT INTO `yzm_admin_log` VALUES ('748', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1600930233');
INSERT INTO `yzm_admin_log` VALUES ('749', 'admin', 'menu', 'm=admin&c=menu&a=add', '1', 'yzmcms', '127.0.0.1', '1600930262');
INSERT INTO `yzm_admin_log` VALUES ('750', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930282');
INSERT INTO `yzm_admin_log` VALUES ('751', 'admin', 'admin_manage', 'm=admin&c=admin_manage&a=public_edit_info', '1', 'yzmcms', '127.0.0.1', '1600930316');
INSERT INTO `yzm_admin_log` VALUES ('752', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600930404');
INSERT INTO `yzm_admin_log` VALUES ('753', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930468');
INSERT INTO `yzm_admin_log` VALUES ('754', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930495');
INSERT INTO `yzm_admin_log` VALUES ('755', 'admin', 'sitemodel', 'm=admin&c=sitemodel&a=edit', '1', 'yzmcms', '127.0.0.1', '1600930524');
INSERT INTO `yzm_admin_log` VALUES ('756', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1600930531');
INSERT INTO `yzm_admin_log` VALUES ('757', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930555');
INSERT INTO `yzm_admin_log` VALUES ('758', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930562');
INSERT INTO `yzm_admin_log` VALUES ('759', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930568');
INSERT INTO `yzm_admin_log` VALUES ('760', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930577');
INSERT INTO `yzm_admin_log` VALUES ('761', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930580');
INSERT INTO `yzm_admin_log` VALUES ('762', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930586');
INSERT INTO `yzm_admin_log` VALUES ('763', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930589');
INSERT INTO `yzm_admin_log` VALUES ('764', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600930590');
INSERT INTO `yzm_admin_log` VALUES ('765', 'admin', 'content', 'm=admin&c=content&a=attribute_operation', '1', 'yzmcms', '127.0.0.1', '1600930597');
INSERT INTO `yzm_admin_log` VALUES ('766', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600930601');
INSERT INTO `yzm_admin_log` VALUES ('767', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600931012');
INSERT INTO `yzm_admin_log` VALUES ('768', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600931014');
INSERT INTO `yzm_admin_log` VALUES ('769', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931022');
INSERT INTO `yzm_admin_log` VALUES ('770', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931033');
INSERT INTO `yzm_admin_log` VALUES ('771', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931144');
INSERT INTO `yzm_admin_log` VALUES ('772', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931497');
INSERT INTO `yzm_admin_log` VALUES ('773', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931545');
INSERT INTO `yzm_admin_log` VALUES ('774', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931555');
INSERT INTO `yzm_admin_log` VALUES ('775', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931936');
INSERT INTO `yzm_admin_log` VALUES ('776', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931940');
INSERT INTO `yzm_admin_log` VALUES ('777', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600931951');
INSERT INTO `yzm_admin_log` VALUES ('778', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600931953');
INSERT INTO `yzm_admin_log` VALUES ('779', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600931956');
INSERT INTO `yzm_admin_log` VALUES ('780', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932011');
INSERT INTO `yzm_admin_log` VALUES ('781', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932029');
INSERT INTO `yzm_admin_log` VALUES ('782', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932273');
INSERT INTO `yzm_admin_log` VALUES ('783', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932289');
INSERT INTO `yzm_admin_log` VALUES ('784', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932309');
INSERT INTO `yzm_admin_log` VALUES ('785', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932328');
INSERT INTO `yzm_admin_log` VALUES ('786', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932331');
INSERT INTO `yzm_admin_log` VALUES ('787', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932344');
INSERT INTO `yzm_admin_log` VALUES ('788', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932376');
INSERT INTO `yzm_admin_log` VALUES ('789', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932385');
INSERT INTO `yzm_admin_log` VALUES ('790', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932399');
INSERT INTO `yzm_admin_log` VALUES ('791', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932411');
INSERT INTO `yzm_admin_log` VALUES ('792', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932428');
INSERT INTO `yzm_admin_log` VALUES ('793', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932452');
INSERT INTO `yzm_admin_log` VALUES ('794', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932685');
INSERT INTO `yzm_admin_log` VALUES ('795', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932833');
INSERT INTO `yzm_admin_log` VALUES ('796', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932888');
INSERT INTO `yzm_admin_log` VALUES ('797', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932922');
INSERT INTO `yzm_admin_log` VALUES ('798', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932945');
INSERT INTO `yzm_admin_log` VALUES ('799', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932961');
INSERT INTO `yzm_admin_log` VALUES ('800', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600932975');
INSERT INTO `yzm_admin_log` VALUES ('801', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600933069');
INSERT INTO `yzm_admin_log` VALUES ('802', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600933195');
INSERT INTO `yzm_admin_log` VALUES ('803', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600933195');
INSERT INTO `yzm_admin_log` VALUES ('804', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600933249');
INSERT INTO `yzm_admin_log` VALUES ('805', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600933363');
INSERT INTO `yzm_admin_log` VALUES ('806', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600933438');
INSERT INTO `yzm_admin_log` VALUES ('807', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600935647');
INSERT INTO `yzm_admin_log` VALUES ('808', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600935649');
INSERT INTO `yzm_admin_log` VALUES ('809', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600937010');
INSERT INTO `yzm_admin_log` VALUES ('810', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600937010');
INSERT INTO `yzm_admin_log` VALUES ('811', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600937054');
INSERT INTO `yzm_admin_log` VALUES ('812', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600937090');
INSERT INTO `yzm_admin_log` VALUES ('813', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600937090');
INSERT INTO `yzm_admin_log` VALUES ('814', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600937134');
INSERT INTO `yzm_admin_log` VALUES ('815', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600937156');
INSERT INTO `yzm_admin_log` VALUES ('816', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600937156');
INSERT INTO `yzm_admin_log` VALUES ('817', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600937726');
INSERT INTO `yzm_admin_log` VALUES ('818', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600937731');
INSERT INTO `yzm_admin_log` VALUES ('819', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600937740');
INSERT INTO `yzm_admin_log` VALUES ('820', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600937861');
INSERT INTO `yzm_admin_log` VALUES ('821', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600937875');
INSERT INTO `yzm_admin_log` VALUES ('822', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600937883');
INSERT INTO `yzm_admin_log` VALUES ('823', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600938928');
INSERT INTO `yzm_admin_log` VALUES ('824', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600939208');
INSERT INTO `yzm_admin_log` VALUES ('825', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600939208');
INSERT INTO `yzm_admin_log` VALUES ('826', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600941320');
INSERT INTO `yzm_admin_log` VALUES ('827', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600941325');
INSERT INTO `yzm_admin_log` VALUES ('828', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600941325');
INSERT INTO `yzm_admin_log` VALUES ('829', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600941378');
INSERT INTO `yzm_admin_log` VALUES ('830', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600941382');
INSERT INTO `yzm_admin_log` VALUES ('831', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600941382');
INSERT INTO `yzm_admin_log` VALUES ('832', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600995852');
INSERT INTO `yzm_admin_log` VALUES ('833', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600995864');
INSERT INTO `yzm_admin_log` VALUES ('834', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600995892');
INSERT INTO `yzm_admin_log` VALUES ('835', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600995895');
INSERT INTO `yzm_admin_log` VALUES ('836', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600995911');
INSERT INTO `yzm_admin_log` VALUES ('837', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600996129');
INSERT INTO `yzm_admin_log` VALUES ('838', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600996129');
INSERT INTO `yzm_admin_log` VALUES ('839', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600996137');
INSERT INTO `yzm_admin_log` VALUES ('840', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600997814');
INSERT INTO `yzm_admin_log` VALUES ('841', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600997911');
INSERT INTO `yzm_admin_log` VALUES ('842', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1600997911');
INSERT INTO `yzm_admin_log` VALUES ('843', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600997916');
INSERT INTO `yzm_admin_log` VALUES ('844', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600997958');
INSERT INTO `yzm_admin_log` VALUES ('845', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998003');
INSERT INTO `yzm_admin_log` VALUES ('846', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998010');
INSERT INTO `yzm_admin_log` VALUES ('847', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998059');
INSERT INTO `yzm_admin_log` VALUES ('848', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998081');
INSERT INTO `yzm_admin_log` VALUES ('849', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998110');
INSERT INTO `yzm_admin_log` VALUES ('850', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998112');
INSERT INTO `yzm_admin_log` VALUES ('851', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998118');
INSERT INTO `yzm_admin_log` VALUES ('852', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998125');
INSERT INTO `yzm_admin_log` VALUES ('853', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1600998141');
INSERT INTO `yzm_admin_log` VALUES ('854', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601014488');
INSERT INTO `yzm_admin_log` VALUES ('855', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601014492');
INSERT INTO `yzm_admin_log` VALUES ('856', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601014594');
INSERT INTO `yzm_admin_log` VALUES ('857', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601014596');
INSERT INTO `yzm_admin_log` VALUES ('858', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601014716');
INSERT INTO `yzm_admin_log` VALUES ('859', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601014719');
INSERT INTO `yzm_admin_log` VALUES ('860', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601014999');
INSERT INTO `yzm_admin_log` VALUES ('861', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601015002');
INSERT INTO `yzm_admin_log` VALUES ('862', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601015037');
INSERT INTO `yzm_admin_log` VALUES ('863', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601015040');
INSERT INTO `yzm_admin_log` VALUES ('864', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601015564');
INSERT INTO `yzm_admin_log` VALUES ('865', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601015571');
INSERT INTO `yzm_admin_log` VALUES ('866', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601015850');
INSERT INTO `yzm_admin_log` VALUES ('867', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601015854');
INSERT INTO `yzm_admin_log` VALUES ('868', 'admin', 'clear_cache', 'm=admin&c=clear_cache&a=public_clear', '1', 'yzmcms', '127.0.0.1', '1601016171');
INSERT INTO `yzm_admin_log` VALUES ('869', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601016175');
INSERT INTO `yzm_admin_log` VALUES ('870', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016177');
INSERT INTO `yzm_admin_log` VALUES ('871', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016504');
INSERT INTO `yzm_admin_log` VALUES ('872', 'admin', 'content', 'm=admin&c=content&a=add', '1', 'yzmcms', '127.0.0.1', '1601016557');
INSERT INTO `yzm_admin_log` VALUES ('873', 'admin', 'category', 'm=admin&c=category&a=add', '1', 'yzmcms', '127.0.0.1', '1601016569');
INSERT INTO `yzm_admin_log` VALUES ('874', 'admin', 'sitemodel', 'm=admin&c=sitemodel&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016626');
INSERT INTO `yzm_admin_log` VALUES ('875', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016646');
INSERT INTO `yzm_admin_log` VALUES ('876', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016649');
INSERT INTO `yzm_admin_log` VALUES ('877', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601016659');
INSERT INTO `yzm_admin_log` VALUES ('878', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016661');
INSERT INTO `yzm_admin_log` VALUES ('879', 'admin', 'tag', 'm=admin&c=tag&a=public_select', '1', 'yzmcms', '127.0.0.1', '1601016669');
INSERT INTO `yzm_admin_log` VALUES ('880', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016695');
INSERT INTO `yzm_admin_log` VALUES ('881', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016722');
INSERT INTO `yzm_admin_log` VALUES ('882', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016748');
INSERT INTO `yzm_admin_log` VALUES ('883', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016754');
INSERT INTO `yzm_admin_log` VALUES ('884', 'admin', 'model_field', 'm=admin&c=model_field&a=add', '1', 'yzmcms', '127.0.0.1', '1601016769');
INSERT INTO `yzm_admin_log` VALUES ('885', 'admin', 'model_field', 'm=admin&c=model_field&a=add', '1', 'yzmcms', '127.0.0.1', '1601016812');
INSERT INTO `yzm_admin_log` VALUES ('886', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016816');
INSERT INTO `yzm_admin_log` VALUES ('887', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016823');
INSERT INTO `yzm_admin_log` VALUES ('888', 'admin', 'model_field', 'm=admin&c=model_field&a=add', '1', 'yzmcms', '127.0.0.1', '1601016826');
INSERT INTO `yzm_admin_log` VALUES ('889', 'admin', 'model_field', 'm=admin&c=model_field&a=public_check_field', '1', 'yzmcms', '127.0.0.1', '1601016851');
INSERT INTO `yzm_admin_log` VALUES ('890', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601016881');
INSERT INTO `yzm_admin_log` VALUES ('891', 'admin', 'model_field', 'm=admin&c=model_field&a=public_check_field', '1', 'yzmcms', '127.0.0.1', '1601016905');
INSERT INTO `yzm_admin_log` VALUES ('892', 'admin', 'model_field', 'm=admin&c=model_field&a=public_check_field', '1', 'yzmcms', '127.0.0.1', '1601016911');
INSERT INTO `yzm_admin_log` VALUES ('893', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601016916');
INSERT INTO `yzm_admin_log` VALUES ('894', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016921');
INSERT INTO `yzm_admin_log` VALUES ('895', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016929');
INSERT INTO `yzm_admin_log` VALUES ('896', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016932');
INSERT INTO `yzm_admin_log` VALUES ('897', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016938');
INSERT INTO `yzm_admin_log` VALUES ('898', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016956');
INSERT INTO `yzm_admin_log` VALUES ('899', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016962');
INSERT INTO `yzm_admin_log` VALUES ('900', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601016977');
INSERT INTO `yzm_admin_log` VALUES ('901', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016990');
INSERT INTO `yzm_admin_log` VALUES ('902', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016992');
INSERT INTO `yzm_admin_log` VALUES ('903', 'admin', 'model_field', 'm=admin&c=model_field&a=edit', '1', 'yzmcms', '127.0.0.1', '1601016999');
INSERT INTO `yzm_admin_log` VALUES ('904', 'admin', 'model_field', 'm=admin&c=model_field&a=add', '1', 'yzmcms', '127.0.0.1', '1601017003');
INSERT INTO `yzm_admin_log` VALUES ('905', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601017043');
INSERT INTO `yzm_admin_log` VALUES ('906', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601017044');
INSERT INTO `yzm_admin_log` VALUES ('907', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017047');
INSERT INTO `yzm_admin_log` VALUES ('908', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017340');
INSERT INTO `yzm_admin_log` VALUES ('909', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601017340');
INSERT INTO `yzm_admin_log` VALUES ('910', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017344');
INSERT INTO `yzm_admin_log` VALUES ('911', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017442');
INSERT INTO `yzm_admin_log` VALUES ('912', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017542');
INSERT INTO `yzm_admin_log` VALUES ('913', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601017542');
INSERT INTO `yzm_admin_log` VALUES ('914', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017794');
INSERT INTO `yzm_admin_log` VALUES ('915', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017802');
INSERT INTO `yzm_admin_log` VALUES ('916', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017823');
INSERT INTO `yzm_admin_log` VALUES ('917', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601017824');
INSERT INTO `yzm_admin_log` VALUES ('918', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017847');
INSERT INTO `yzm_admin_log` VALUES ('919', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017916');
INSERT INTO `yzm_admin_log` VALUES ('920', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601017916');
INSERT INTO `yzm_admin_log` VALUES ('921', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017917');
INSERT INTO `yzm_admin_log` VALUES ('922', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601017967');
INSERT INTO `yzm_admin_log` VALUES ('923', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601017967');
INSERT INTO `yzm_admin_log` VALUES ('924', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018055');
INSERT INTO `yzm_admin_log` VALUES ('925', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018063');
INSERT INTO `yzm_admin_log` VALUES ('926', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018141');
INSERT INTO `yzm_admin_log` VALUES ('927', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018148');
INSERT INTO `yzm_admin_log` VALUES ('928', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018185');
INSERT INTO `yzm_admin_log` VALUES ('929', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018190');
INSERT INTO `yzm_admin_log` VALUES ('930', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018310');
INSERT INTO `yzm_admin_log` VALUES ('931', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018315');
INSERT INTO `yzm_admin_log` VALUES ('932', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601018315');
INSERT INTO `yzm_admin_log` VALUES ('933', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018318');
INSERT INTO `yzm_admin_log` VALUES ('934', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018327');
INSERT INTO `yzm_admin_log` VALUES ('935', 'admin', 'content', 'm=admin&c=content&a=edit', '1', 'yzmcms', '127.0.0.1', '1601018357');
INSERT INTO `yzm_admin_log` VALUES ('936', 'admin', 'content', 'm=admin&c=content&a=search', '1', 'yzmcms', '127.0.0.1', '1601018357');
INSERT INTO `yzm_admin_log` VALUES ('937', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601174574');
INSERT INTO `yzm_admin_log` VALUES ('938', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601174640');
INSERT INTO `yzm_admin_log` VALUES ('939', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601174659');
INSERT INTO `yzm_admin_log` VALUES ('940', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601174665');
INSERT INTO `yzm_admin_log` VALUES ('941', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601174667');
INSERT INTO `yzm_admin_log` VALUES ('942', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601174678');
INSERT INTO `yzm_admin_log` VALUES ('943', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601174682');
INSERT INTO `yzm_admin_log` VALUES ('944', 'admin', 'category', 'm=admin&c=category&a=edit', '1', 'yzmcms', '127.0.0.1', '1601174687');

-- ----------------------------
-- Table structure for yzm_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `yzm_admin_login_log`;
CREATE TABLE `yzm_admin_login_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adminname` varchar(30) NOT NULL DEFAULT '',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `loginip` varchar(15) NOT NULL DEFAULT '',
  `address` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(30) NOT NULL DEFAULT '',
  `loginresult` tinyint(1) NOT NULL DEFAULT '0' COMMENT '登录结果1为登录成功0为登录失败',
  `cause` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=273 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_admin_login_log
-- ----------------------------
INSERT INTO `yzm_admin_login_log` VALUES ('1', 'yzmcms', '1589650318', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('2', 'test', '1589651208', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('3', 'yzmadmin', '1589651288', '192.168.31.137', '', 'yzmadmin', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('4', 'yzmcms', '1589651334', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('5', 'yzmcms', '1589655405', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('6', 'yzmcms', '1589729723', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('7', 'yzmcms', '1589792637', '127.0.0.1', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('8', 'yzmcms', '1589794409', '127.0.0.1', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('9', 'yzmcms', '1589794743', '127.0.0.1', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('10', 'yzmcms', '1589803511', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('11', 'ymzcms', '1589816010', '192.168.31.137', '', 'ymzcms', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('12', 'yzmcms', '1589816023', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('13', 'yzmcms', '1589825418', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('14', 'yzmcms', '1590432575', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('15', 'yzmcms', '1590486796', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('16', 'yzmcms', '1590508534', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('17', 'yzmcms', '1590509905', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('18', 'yzmcms', '1590530611', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('19', 'yzmcms', '1590533134', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('20', 'yzmcms', '1590544726', '192.168.31.137', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('21', 'yzmcms', '1590568053', '183.209.140.41', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('22', 'yzmcms', '1590574710', '183.209.140.41', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('23', 'yzmcms', '1590578938', '183.209.140.41', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('24', 'ymzcms', '1590579345', '183.209.140.41', '', 'ymzcms', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('25', 'yzmcms', '1590579359', '183.209.140.41', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('26', 'yzmcms', '1590608944', '183.209.140.21', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('27', 'yzmcms', '1590628171', '47.57.190.74', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('28', 'yzmcms', '1590630360', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('29', 'yzmcms', '1590630705', '183.209.141.52', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('30', 'yzmcms', '1590630975', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('31', 'yzmcms', '1590630985', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('32', 'yzmcms', '1590631336', '47.56.81.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('33', 'admin', '1590636630', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('34', 'yzmcms', '1590636665', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('35', 'yzmcms', '1590636940', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('36', 'yzmcms', '1590646462', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('37', 'yzmcms', '1590652735', '47.57.190.74', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('38', 'yzmcms', '1590652824', '183.209.141.52', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('39', 'yzmcms', '1590654188', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('40', 'yzmcms', '1590659316', '183.209.141.52', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('41', 'yzmcms', '1590716485', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('42', 'yzmcms', '1590716665', '47.244.42.66', '', 'yamcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('43', 'yzmcms', '1590716683', '47.244.42.66', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('44', 'yzmcms', '1590725341', '47.57.190.74', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('45', 'yzmcms', '1590727048', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('46', 'yzmcms', '1590741953', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('47', 'yzmcms', '1590973666', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('48', 'yzmcms', '1591026650', '112.23.190.142', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('49', 'yzmcms', '1591046929', '183.209.141.220', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('50', 'yzmcms', '1591068921', '47.57.190.74', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('51', 'yzmcms', '1591069194', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('52', 'HWGG', '1591076447', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('53', 'PTGG', '1591076528', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('54', 'yzmcms', '1591079255', '183.209.140.125', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('55', 'YHTZH', '1591079390', '49.77.137.151', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('56', 'yzmcms', '1591079404', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('57', 'yzmcms', '1591083450', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('58', 'yzmcms', '1591092941', '183.209.140.125', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('59', 'yzmcms', '1591094004', '183.209.140.125', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('60', 'yzmcms', '1591096331', '183.209.140.125', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('61', 'yzmcms', '1591146213', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('62', 'yzmcms', '1591149985', '183.209.140.125', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('63', 'yzmcms', '1591159454', '183.209.140.125', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('64', 'yzmcms', '1591172012', '183.209.140.125', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('65', 'yzmcms', '1591233721', '47.75.217.19', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('66', 'yzmcms', '1591266801', '222.192.3.121', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('67', 'yzmcms', '1591348112', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('68', 'yzmcms', '1591349970', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('69', 'yzmcms', '1591350848', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('70', 'yzmcms', '1591351587', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('71', 'yzmcms', '1591352054', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('72', 'yzmcms', '1591352569', '49.77.137.151', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('73', 'yzmcms', '1591416888', '112.23.191.130', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('74', 'yzmcms', '1591466734', '112.23.191.130', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('75', 'yzmcms', '1591468831', '112.23.191.130', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('76', 'yzmcms', '1591483590', '112.23.191.130', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('77', 'yzmcms', '1591487132', '112.23.191.130', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('78', 'yzmcms', '1591578469', '49.77.167.98', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('79', 'yzmcms', '1591578885', '49.77.167.98', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('80', 'yzmcms', '1591579616', '49.77.167.98', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('81', 'yzmcms', '1591580939', '49.77.167.98', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('82', 'yzmcms', '1591581355', '222.192.2.131', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('83', 'yzmcms', '1591582471', '183.209.142.164', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('84', 'yzmcms', '1591594750', '49.77.167.98', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('85', 'yzmcms', '1591594980', '49.77.167.98', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('86', 'yzmcms', '1591603709', '222.192.2.131', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('87', 'yzmcms', '1591611673', '49.77.167.98', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('88', 'yzmcms', '1591612109', '49.77.167.98', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('89', 'yzmcms', '1591613671', '183.209.142.164', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('90', 'yzmcms', '1591616447', '47.56.121.186', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('91', 'yzmcms', '1591664509', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('92', 'yzmcms', '1591665492', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('93', 'yzmcms', '1591666654', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('94', 'yzmcms', '1591666875', '49.77.250.27', '', '123456', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('95', 'yzmcms', '1591666897', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('96', 'yzmcms', '1591668063', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('97', 'yzmcms', '1591668424', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('98', 'yzmcms', '1591673623', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('99', 'yzmcms', '1591675277', '49.77.250.27', '', '123456', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('100', 'yzmcms', '1591675304', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('101', 'yzmcms', '1591675365', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('102', 'yzmcms', '1591675483', '183.209.142.164', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('103', 'yzmcms', '1591685302', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('104', 'yzmcms', '1591688848', '183.209.142.164', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('105', 'yzmcms', '1591690291', '183.209.142.164', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('106', 'yzmcms', '1591699236', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('107', 'yzmcms', '1591700378', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('108', 'yzmcms', '1591702004', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('109', 'yzmcms', '1591702349', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('110', 'yzmcms', '1591705603', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('111', 'yzmcms', '1591706876', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('112', 'yzmcms', '1591712286', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('113', 'yzmcms', '1591717090', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('114', 'yzmcms', '1591734796', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('115', 'yzmcms', '1591760490', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('116', 'yzmcms', '1591760659', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('117', 'yzmcms', '1591802915', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('118', 'yzmcms', '1591804362', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('119', 'yzmcms', '1591805995', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('120', 'yzmcms', '1591806976', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('121', 'yzmcms', '1591814540', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('122', 'yzmcms', '1591815548', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('123', 'yzmcms', '1591815731', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('124', 'yzmcms', '1591816211', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('125', 'yzmcms', '1591822901', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('126', 'yzmcms', '1591829474', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('127', 'yzmcms', '1591830221', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('128', 'yzmcms', '1591830288', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('129', 'yzmcms', '1591832510', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('130', 'yzmcms', '1591833539', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('131', 'yzmcms', '1591839156', '183.209.143.223', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('132', 'yzmcms', '1591859257', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('133', 'yzmcms', '1591933675', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('134', 'yzmcms', '1591944104', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('135', 'yzmcms', '1591991250', '183.209.141.85', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('136', 'yzmcms', '1591991412', '183.209.141.85', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('137', 'yzmcms', '1592120460', '183.209.143.136', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('138', 'yzmcms', '1592201204', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('139', 'yzmcms', '1592201551', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('140', 'yzmcms', '1592207467', '183.209.143.136', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('141', 'yzmcms', '1592208239', '222.192.2.93', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('142', 'yzmcms', '1592210041', '222.192.2.93', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('143', 'yzmcms', '1592213853', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('144', 'yzmcms', '1592214285', '47.244.42.66', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('145', 'yzmcms', '1592215973', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('146', 'yzmcms', '1592275359', '47.57.182.125', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('147', 'yzmcms', '1592277834', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('148', 'yzmcms', '1592279279', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('149', 'yzmcms', '1592282966', '112.23.191.241', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('150', 'yzmcms', '1592284258', '112.23.191.241', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('151', 'yzmcms', '1592301318', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('152', 'SHY', '1592301403', '49.77.250.27', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('153', 'yzmcms', '1592301435', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('154', 'SHY', '1592301480', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('155', 'SHY', '1592301511', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('156', 'YHTZH', '1592301605', '49.77.250.27', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('157', 'yzmcms', '1592301635', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('158', 'yzmcms', '1592357151', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('159', 'yzmcms', '1592364999', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('160', 'yzmcms', '1592447077', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('161', 'yzmcms', '1592465977', '183.209.140.169', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('162', 'yzmcms', '1592473256', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('163', 'yzmcms', '1592533045', '222.192.2.124', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('164', 'yzmcms', '1592533048', '183.209.140.169', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('165', 'yzmcms', '1592533333', '183.209.140.169', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('166', 'yzmcms', '1592534679', '222.192.2.124', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('167', 'yzmcms', '1592534739', '183.209.140.169', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('168', 'yzmcms', '1592535687', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('169', 'yzmcms', '1592538008', '49.77.250.27', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('170', 'yzmcms', '1592538021', '49.77.250.27', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('171', 'yzmcms', '1592538039', '49.77.250.27', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('172', 'yzmcms', '1592539768', '183.209.140.169', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('173', 'yzmcms', '1592544865', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('174', 'yzmcms', '1592552916', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('175', 'yzmcms', '1592651156', '49.77.65.249', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('176', 'yzmcms', '1592799875', '112.23.190.21', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('177', 'yzmcms', '1592805299', '49.77.250.27', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('178', 'yzmcms', '1592805313', '49.77.250.27', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('179', 'yzmcms', '1592805339', '49.77.250.27', '', 'muyuhood2020', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('180', 'yzmcms', '1592805367', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('181', 'yzmcms', '1592806209', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('182', 'yzmcms', '1592809687', '112.23.190.21', '', 'hongyanlv', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('183', 'yzmcms', '1592809697', '112.23.190.21', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('184', 'yzmcms', '1592819391', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('185', 'yzmcms', '1592876209', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('186', 'yzmcms', '1592886964', '49.77.250.27', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('187', 'YZMCMS', '1592886982', '49.77.250.27', '', 'YZMCMS', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('188', 'yzmcms', '1592887012', '49.77.250.27', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('189', 'yzmcms', '1592887025', '49.77.250.27', '', '123456', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('190', 'yzmcms', '1592887080', '49.77.250.27', '', 'moyumood2020', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('191', 'yzmcms', '1592887132', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('192', 'yzmcms', '1592887179', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('193', 'yzmcms', '1592888317', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('194', 'yzmcms', '1592890808', '49.77.250.27', '', '123456', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('195', 'yzmcms', '1592890862', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('196', 'yzmcms', '1592894979', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('197', 'yzmcms', '1592895189', '49.77.250.27', '', 'moyuhodd2020', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('198', 'yzmcms', '1592895209', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('199', 'yzmcms', '1592899058', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('200', 'YHTZH', '1592902724', '49.77.250.27', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('201', 'yzmcms', '1592902749', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('202', 'yzmcms', '1592903223', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('203', 'yzmcms', '1592903408', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('204', 'yzmcms', '1592903952', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('205', 'yzmcms', '1592904449', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('206', 'yzmcms', '1592904561', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('207', 'yzmcms', '1592904886', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('208', 'yzmcms', '1592905891', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('209', 'yzmcms', '1592906695', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('210', 'yzmcms', '1592908772', '49.77.250.27', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('211', 'yzmcms', '1593586902', '49.65.158.69', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('212', 'yzmcms', '1594258888', '49.65.158.69', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('213', 'yzmcms', '1594260706', '49.65.158.69', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('214', 'yzmcms', '1594286290', '49.65.158.69', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('215', 'yzmcms', '1595577683', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('216', 'yzmcms', '1595991966', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('217', 'yzmcms', '1596158981', '49.77.136.107', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('218', 'yzmcms', '1596159058', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('219', 'yzmcms', '1596166357', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('220', 'yzmcms', '1596192389', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('221', 'yzmcms', '1596504561', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('222', 'yzmcms', '1596607202', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('223', 'yzmcms', '1596615650', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('224', 'yzmcms', '1596617466', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('225', 'yzmcms', '1596679023', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('226', 'YHTZH', '1596794960', '49.77.136.107', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('227', 'yzmcms', '1596794991', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('228', 'yzmcms', '1597283522', '49.77.136.107', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('229', 'yzmcms', '1597628302', '49.77.147.31', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('230', 'yzmcms', '1597633023', '49.77.147.31', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('231', 'yzmcms', '1597823933', '49.77.147.31', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('232', 'yzmcms', '1597894413', '49.77.147.31', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('233', 'yzmcms', '1597981527', '49.77.147.31', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('234', 'yzmcms', '1597982639', '49.77.147.31', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('235', 'yzmcms', '1598264953', '49.77.103.79', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('236', 'yzmcms', '1598324078', '202.182.119.191', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('237', 'yzmcms', '1598344975', '18.178.184.115', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('238', 'yzmcms', '1598494798', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('239', 'yzmcms', '1598510371', '49.77.103.79', '', 'yzmcms', '0', '密码错误！');
INSERT INTO `yzm_admin_login_log` VALUES ('240', 'yzmcms', '1598510388', '49.77.103.79', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('241', 'yzmcms', '1598522357', '127.0.0.1', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('242', 'yzmcms', '1598522800', '127.0.0.1', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('243', 'yzmcms', '1598575972', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('244', 'yzmcms', '1598587422', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('245', 'yzmcms', '1598598874', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('246', 'yzmcms', '1598600644', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('247', 'yzmcms', '1598601920', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('248', 'yzmcms', '1598836733', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('249', 'yzmcms', '1598853131', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('250', 'yzmcms', '1598952128', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('251', 'yzmcms', '1598953914', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('252', 'yzmcms', '1599035272', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('253', 'tch01', '1599041545', '49.77.167.86', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('254', 'yzmcms', '1599115106', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('255', 'yzmcms', '1599215839', '117.84.97.181', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('256', 'yzmcms', '1599355495', '49.94.71.29', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('257', 'yzmcms', '1599640431', '49.77.167.86', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('258', 'yzmcms', '1600414261', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('259', 'YHTZH', '1600416582', '45.77.11.214', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('260', 'yzmcms', '1600416597', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('261', 'yzmcms', '1600650963', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('262', 'yzmcms', '1600658341', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('263', 'yzmcms', '1600672354', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('264', 'yzmcms', '1600672416', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('265', 'yzmcms', '1600672444', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('266', 'yzmcms', '1600675918', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('267', 'yzmcms', '1600686367', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('268', 'yzmcms', '1600736082', '45.77.11.214', '', '***', '1', '登录成功！');
INSERT INTO `yzm_admin_login_log` VALUES ('269', 'admin', '1600919393', '49.77.167.86', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('270', 'admin', '1600919433', '49.77.167.86', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('271', 'admin', '1600925432', '49.77.167.86', '', '123456', '0', '该用户不存在！');
INSERT INTO `yzm_admin_login_log` VALUES ('272', 'yzmcms', '1601174567', '127.0.0.1', '', '***', '1', '登录成功！');

-- ----------------------------
-- Table structure for yzm_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `yzm_admin_role`;
CREATE TABLE `yzm_admin_role` (
  `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleid`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_admin_role
-- ----------------------------
INSERT INTO `yzm_admin_role` VALUES ('1', '超级管理员', '超级管理员', '1', '0');
INSERT INTO `yzm_admin_role` VALUES ('2', '红文高管', '红文高管', '1', '0');
INSERT INTO `yzm_admin_role` VALUES ('3', '审核员', '审核资源', '1', '0');
INSERT INTO `yzm_admin_role` VALUES ('4', '平台高管', '平台高级管理', '0', '0');

-- ----------------------------
-- Table structure for yzm_admin_role_priv
-- ----------------------------
DROP TABLE IF EXISTS `yzm_admin_role_priv`;
CREATE TABLE `yzm_admin_role_priv` (
  `roleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(30) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  KEY `roleid` (`roleid`,`m`,`c`,`a`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_admin_role_priv
-- ----------------------------
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'del', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'lock', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'unlock', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'init', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'database', 'databack_list', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'database', 'import', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'password', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'edit', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'add', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'search', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'check', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member', 'adopt', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member_group', 'init', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member_group', 'del', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member_group', 'edit', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'member', 'member_group', 'add', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('2', 'admin', 'system_manage', 'member_set', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'database', 'databack_del', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'database', 'databack_down', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'admin_content', 'public_preview', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'admin_content', 'rejection', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'admin_content', 'init', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'admin_content', 'adopt', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('3', 'admin', 'admin_content', 'del', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'admin_manage', 'public_edit_pwd', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'admin_manage', 'public_edit_info', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'admin_manage', 'delete', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'admin_manage', 'add', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'admin_manage', 'edit', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'admin_manage', 'public_edit_info', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'admin_manage', 'public_edit_pwd', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'admin_manage', 'init', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'role', 'delete', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'role', 'add', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'role', 'edit', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'role', 'role_priv', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'role', 'init', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'category', 'order', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'category', 'delete', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'category', 'add', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'category', 'edit', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'category', 'page_content', '');
INSERT INTO `yzm_admin_role_priv` VALUES ('4', 'admin', 'category', 'init', '');

-- ----------------------------
-- Table structure for yzm_adver
-- ----------------------------
DROP TABLE IF EXISTS `yzm_adver`;
CREATE TABLE `yzm_adver` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1文字2代码3图片',
  `title` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `text` varchar(200) NOT NULL DEFAULT '',
  `img` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `describe` varchar(250) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_adver
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_article
-- ----------------------------
DROP TABLE IF EXISTS `yzm_article`;
CREATE TABLE `yzm_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `seo_title` varchar(200) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `groupids_view` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`),
  KEY `catid` (`catid`,`status`),
  KEY `userid` (`userid`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_article
-- ----------------------------
INSERT INTO `yzm_article` VALUES ('21', '72', '1', 'yzmcms', '平台管理员', '回望地下斗争风云 南京红色文化挖掘志愿服务队开展首场活动', '回望地下斗争风云 南京红色文化挖掘志愿服务队开展首场活动_红研旅虚拟旅游研学平台', '', '1594259223', '1594259359', '', '回望地下斗争风云 南京红色文化挖掘志愿服务队开展首场活动2020-06-24 19:18:36        来源：龙虎网龙虎网讯 （记者 单俊哲）6月2...', '20', '<h1 label=\"标题居中\" style=\"white-space: normal; font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\">回望地下斗争风云 南京红色文化挖掘志愿服务队开展首场活动</span></h1><p style=\"white-space: normal; text-align: center;\"><span style=\"color: rgb(153, 153, 153); font-size: 15px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif;\">2020-06-24 19:18:36&nbsp; &nbsp; &nbsp; &nbsp; 来源：龙虎网</span></p><p style=\"white-space: normal;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\">龙虎网讯 （记者 单俊哲）6月23日，以“回望地下斗争风云”为主题的南京红色文化寻访、挖掘活动举行，来自南京红色文化挖掘志愿服务队的志愿者们来到金陵兵工厂旧址-中共南京地方组织革命斗争地，寻访、挖红色文化资源点背后的故事。</span></p><p style=\"white-space: normal;\"><span style=\"text-align: justify; text-indent: 32px; color: rgb(153, 153, 153); background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594005181153661.png\" title=\"1594005181153661.png\" alt=\"image.png\"/></span></p><p style=\"white-space: normal;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><br/></p><p style=\"margin: 1em auto; white-space: normal; padding: 0px; text-indent: 2em; color: rgb(48, 48, 48); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;mircro-soft yahei&quot;, 宋体, Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">据了解，南京红色文化挖掘志愿服务队是南京红色志愿者联盟旗下四支特色志愿服务队之一，团队致力于开展红色文化资源点系列实地寻访活动，并走访党史专家、革命亲历者、烈士和老战士家属及后代等群体，挖掘和搜集更多红色故事，丰富红色文化内容。</span></p><p style=\"margin: 1em auto; white-space: normal; padding: 0px; text-indent: 2em; color: rgb(48, 48, 48); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;mircro-soft yahei&quot;, 宋体, Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">本次活动是南京红色文化挖掘志愿服务队成立后的首场活动。金陵兵工厂旧址——中共南京地方组织革命斗争地位于秦淮区中华门街道雨花路社区正学路1 号，目前改建成晨光1865创意产业园。这里不但是南京地区的一个老军事工业基地，也是曾经的中国共产党工人运动的重要场所。如今，这里是全国重点文物保护单位，被认定为全国国防工业系统军工文化教育基地，还成为了南京党史教育基地。</span></p><p style=\"margin: 1em auto; white-space: normal; padding: 0px; text-indent: 2em; color: rgb(48, 48, 48); font-family: 微软雅黑, &quot;Microsoft Yahei&quot;, &quot;mircro-soft yahei&quot;, 宋体, Arial, Helvetica, sans-serif; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">志愿者们来到晨光1865创意产业园厂史陈列馆，晨光集团厂史专家宋建中向大家介绍了1948 年底，留守工人们在中共地下组织的领导下团结一致与警察局抗争，开展护厂运动的历史。并讲述了当下晨光人传承红色基因，牢记初心使命的奋斗故事。</span></p><p style=\"white-space: normal;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594005218811445.png\" title=\"1594005218811445.png\" alt=\"image.png\"/></span></p><p style=\"white-space: normal;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594005246198191.png\" title=\"1594005246198191.png\" alt=\"image.png\"/></span></p><p style=\"white-space: normal;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京红色文化挖掘志愿服务队队长吴威在活动结束后表示，“通过今天的寻访及红色故事的采集，追寻中共地下党领导的地下斗争历史，感受了中共南京地下组织在探索民族解放事业之路上留下的坚实脚印和光辉历史。作为新时代的年轻人，我们应该继续传承、弘扬这种红色精神，进一步坚定理想信念，坚守岗位，奋发向上，建功新时代。”</span></p><p style=\"white-space: normal;\"><span style=\"text-align: justify; text-indent: 32px; background-color: rgb(255, 255, 255); font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal; text-align: right;\"><span style=\"text-indent: 32px; color: rgb(153, 153, 153); font-size: 13px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif;\">来源：龙虎网　　编辑：王雪纯</span></p><p><br/></p>', '龙虎网', '/uploads/202007/09/200709094730509.jpg', 'http://www.yht.test.com/article/21.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_article` VALUES ('17', '72', '17', 'YHTZH', 'YHTZH', '国际博物馆日 | 革命文物的活化与传承 ', '国际博物馆日 | 革命文物的活化与传承 _慕课研学平台', '', '1591582215', '1592473958', '', '宣传策划中心 中国雨花台 5月17日', '25', '<p><img src=\"/uploads/ueditor/image/20200608/1591582176965267.png\" alt=\"image.png\"/></p><p style=\"box-sizing: border-box; clear: both; color: rgb(51, 51, 51); font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 1.5px; margin-bottom: 0px; margin-top: 0px; max-width: 100%; min-height: 1em; overflow-wrap: break-word; padding: 0px; text-align: justify; text-indent: 40px; white-space: normal;\">2020年5月18日，第44个国际博物馆日中国主会场活动在江苏举行，主会场设在南京博物院。作为今年“国际博物馆日”中国主会场活动的重要组成部分，“5•18国际博物馆日——革命文物的活化与传承”主题活动于5月17日上午在雨花台烈士纪念馆率先拉开帷幕，进一步推动了江苏省各纪念馆联动。</p><p style=\"box-sizing: border-box; clear: both; color: rgb(51, 51, 51); font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 1.5px; margin-bottom: 0px; margin-top: 0px; max-width: 100%; min-height: 1em; overflow-wrap: break-word; padding: 0px; text-align: justify; text-indent: 40px; white-space: normal;\"><br style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; max-width: 100%; overflow-wrap: break-word; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\"/></p><p style=\"box-sizing: border-box; clear: both; color: rgb(51, 51, 51); font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 1.5px; margin-bottom: 0px; margin-top: 0px; max-width: 100%; min-height: 1em; overflow-wrap: break-word; padding: 0px; text-align: justify; text-indent: 40px; white-space: normal;\">本次活动由江苏省文化和旅游厅、江苏省文物局、中共南京市委宣传部主办，雨花台烈士纪念馆、江苏省博物馆学会纪念馆专业委员会承办，周恩来纪念馆、新四军纪念馆、淮海战役纪念馆协办。仪式由南京市雨花台烈士陵园管理局党委书记、局长，雨花台烈士纪念馆馆长赵永艳主持。</p><p><img src=\"/uploads/ueditor/image/20200608/1591582208162470.png\" alt=\"image.png\"/></p>', '', '/cos/uploads/202006/18/200618055233357.png', 'http://www.yht.test.com/article/17.html', '', '1', '0', '10', '0', '0', '1', '0');
INSERT INTO `yzm_article` VALUES ('18', '72', '17', 'YHTZH', 'YHTZH', '国际博物馆日 | 原创展“初心永恒--砥砺奋进的五年”速览啦~ ', '国际博物馆日 | 原创展“初心永恒--砥砺奋进的五年”速览啦~ _慕课研学平台', '', '1591582364', '1592473586', '', '宣传策划中心 中国雨花台 2020-05-15', '42', '<p><img src=\"/uploads/ueditor/image/20200608/1591582336148531.png\" alt=\"image.png\"/></p><p style=\"box-sizing: border-box; clear: both; color: rgb(51, 51, 51); font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 1.5px; line-height: 40px; margin-bottom: 0px; margin-top: 0px; max-width: 100%; min-height: 1em; overflow-wrap: break-word; padding: 0px; text-align: justify; text-indent: 43px; white-space: normal;\">2014年12月，习近平总书记在视察江苏时指出：“在雨花台留下姓名的烈士就有1519名。他们的事迹展示了共产党人的崇高理想信念、高尚道德情操、为民牺牲的大无畏精神。要注意用好用活丰富的党史资源，使之成为激励人民不断开拓前进的强大精神力量。”</p><p style=\"box-sizing: border-box; clear: both; color: rgb(51, 51, 51); font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 1.5px; line-height: 40px; margin-bottom: 0px; margin-top: 0px; max-width: 100%; min-height: 1em; overflow-wrap: break-word; padding: 0px; text-align: justify; text-indent: 43px; white-space: normal;\"><br style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; max-width: 100%; overflow-wrap: break-word; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\"/></p><p style=\"box-sizing: border-box; clear: both; color: rgb(51, 51, 51); font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 1.5px; line-height: 40px; margin-bottom: 0px; margin-top: 0px; max-width: 100%; min-height: 1em; overflow-wrap: break-word; padding: 0px; text-align: justify; text-indent: 43px; white-space: normal;\">五年来，雨花台烈士陵园管理局以习近平新时代中国特色社会主义思想为指导，按照江苏省委、南京市委的统一部署要求，深入挖掘雨花英烈精神时代价值，充分发挥雨花台革命遗址在传承红色基因中的重要作用，力争实现“在建党100周年之际，将雨花台建成全国一流的红色纪念圣地、全国有影响力的爱国主义教育基地和党性教育基地”的目标。</p><p style=\"box-sizing: border-box; clear: both; color: rgb(51, 51, 51); font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 1.5px; line-height: 40px; margin-bottom: 0px; margin-top: 0px; max-width: 100%; min-height: 1em; overflow-wrap: break-word; padding: 0px; text-align: justify; text-indent: 43px; white-space: normal;\"><br style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; margin-right: 0px; margin-top: 0px; max-width: 100%; overflow-wrap: break-word; padding-bottom: 0px; padding-left: 0px; padding-right: 0px; padding-top: 0px;\"/></p><p style=\"box-sizing: border-box; clear: both; color: rgb(51, 51, 51); font-size: 14px; font-variant-numeric: normal; font-variant-east-asian: normal; letter-spacing: 1.5px; line-height: 40px; margin-bottom: 0px; margin-top: 0px; max-width: 100%; min-height: 1em; overflow-wrap: break-word; padding: 0px; text-align: justify; text-indent: 43px; white-space: normal;\">时代阔步向前，事业方兴未艾。我们将聚焦聚力红色主业，不负先烈，不负时代，让雨花台红色地标更加鲜亮、永放光辉！</p><p><br/></p>', '', '/uploads/ueditor/image/20200608/1591582336148531.png', 'http://www.yht.test.com/article/18.html', '', '1', '0', '10', '0', '0', '1', '0');
INSERT INTO `yzm_article` VALUES ('22', '72', '1', 'yzmcms', '中共南京市委宣传部', '寻访南京红色文化资源点，才发现原来有这么多故事……', '寻访南京红色文化资源点，才发现原来有这么多故事……_红研旅虚拟旅游研学平台', '', '1594259485', '1594259926', '', '寻访南京红色文化资源点，才发现原来有这么多故事……发布时间：20-05-1921:37中共南京市委宣传部你知道吗？当年南京早期党组织是在江北开...', '14', '<h1 label=\"标题居中\" style=\"white-space: normal; font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\">寻访南京红色文化资源点，才发现原来有这么多故事……</span></h1><p style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\"><span class=\"date\" style=\"font-size: 12px; color: rgb(153, 153, 153); display: inline-block; margin: 0px 9px 0px 0px; font-family: arial; background-color: rgb(248, 248, 249);\">发布时间：20-05-19</span><span class=\"time\" style=\"font-size: 12px; color: rgb(153, 153, 153); display: inline-block; font-family: arial; background-color: rgb(248, 248, 249);\">21:37</span><span class=\"account-authentication\" style=\"font-size: 12px; color: rgb(153, 153, 153); display: inline-block; margin-left: 8px; padding-left: 8px; max-width: 440px; border-left: 1px solid rgb(238, 238, 238); line-height: 1; text-overflow: ellipsis; overflow: hidden; vertical-align: -2px; font-family: arial; background-color: rgb(248, 248, 249);\">中共南京市委宣传部</span></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">你知道吗？当年南京早期党组织是在江北开展斗争的，1928年5月上旬的一个晚上，中共南京市委就在浦口江边芦苇滩里召开了中共南京第二次代表大会，会上研究了南京党组织如何在困难的条件下继续进行革命斗争等问题。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">代表大会后，新的市委积极开展工作，至6月初，全市逐渐有了10个支部，240名党员。因此，这里也被称为“芦荡火种”。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">今天上午</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京红色文化资源点寻访阅读行动首站</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">走进江北</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京工运纪念馆—两浦铁路工人二七大罢工指挥所旧址</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">中共南京市第二次代表大会遗址</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京地区第一个党小组成立地浦镇</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">中共南京市第一次代表大会遗址</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京地区第一个农村党支部——中共九袱洲支部遗址</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">五处红色资源点，像一条红色飘带串起了南京早期党组织艰辛而光辉的战斗历程，让200多位参与活动的市民代表在体会“不忘来时路”的同时，深切感受到红色文化资源点所蕴含的丰富内涵、优良传统和精神力量。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594003676188166.png\" title=\"1594003676188166.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">如果你没去现场</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">没关系，来</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">小布带你在这里回顾下</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">今天大家一起走过的那些年的路和故事！</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">1</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">中共南京第二次代表大会会址</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">第一站</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">本次活动的第一站---中共南京第二次代表大会会址。浦口区委党史办胡科长为大家现场讲解，据悉，当年南京早期党组织在江北开展斗争，中共南京第二次代表大会就在江边芦苇滩召开了。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">关于这片芦苇荡滩上的故事</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">中共南京市第二次代表大会会址介绍</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">1928年5月上旬，南京党团组织在红五月行动中遭到破坏，为健全市委领导机构，应对紧急情况，五月中旬的一个晚上，中共南京市委在浦口江边芦苇滩（今约在江北新区顶山街道大新社区广西埂大街与定山大街交汇处）召开了第二次代表大会。到会代表12人。会上研究了南京党组织如何在困难的条件下继续进行革命斗争等问题。会议选举了13人组成新的市委，孙津川任中共南京市委书记，罗世藩为组织委员、叶守信为职工运动委员、贺瑞麟为市委委员兼团市委书记。这次代表大会后，新的市委积极开展工作，至6月初，全市有中大、沪宁铁路、浦口码头、浦口车站、浦镇大厂、九袱洲农村、伤兵、军官学校、黄包车夫、和记蛋厂等10个支部，240名党员。7月初，孙津川、何瑞林等先后被捕。市委领导机关和多数基层组织遭到严重破坏。1928年9月，中共江苏省委派黄瑞生（黄子仁 ）来南京恢复党组织。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594003794193912.png\" title=\"1594003794193912.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">2</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南中共九袱洲支部遗址</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">第二站</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">这里是南京地区第一个农村党支部，他们用算账对比的方式，在贫雇农中宣传革命道理，启发他们的阶级觉悟，号召农民兄弟起来抗租抗税，并准备组织农民革命军，打土豪，分田地。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">这里有一场农民与“黄枪会”的激烈斗争</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">关于南京地区第一个农村党支部介绍：</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">中共九袱洲支部遗址位于江北新区顶山街道大新村新立组30号。1927年11月，中共南京市委农运委员宋振寰带领2名团员到浦口，通过浦口码头工人、共产党员李鸿彦，开展地下工作。李鸿彦又找到浦产党员胥光亮。胥光亮当时已在靠近津浦铁路终点附近的浦口九袱洲贫雇农中串联，有了一定的基础。宋振寰和胥光亮在九袱洲农民中发展党员，成立了南京地区第一个农村党支部。孙津川、宋振寰、贺瑞麟等先后深入到农村，用算账对比的方式，在贫雇农中宣传革命道理，启发他们的阶级觉悟，号召农民兄弟起来抗租抗税，并准备组织农民革命军，打土豪，分田地，当时有50个农民参加了农协会。这引起了土豪劣绅的恐慌，反动地主黄二勾结帮会组织“黄枪会”来欺压农民。中共南京市委领导九袱洲党支部，发动农民与“黄枪会”开展激烈斗争，将黄二处死，赶走了“黄枪会”。旧址原是草房3间，年久腐烂。后因生产生活多次在此重新建房，原貌现已无存。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594003858174747.png\" title=\"1594003858174747.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">3</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">中共南京第一次代表大会会址</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">第三站</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">1927年12月4日，中共南京市第一次代表大会在浦镇附近的小山上召开（今约在江北新区顶山街道临泉社区西山），出席会议的代表和市委委员共25人，会议由孙津川主持。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">在这里，确定把武装暴动作为工作的重点</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">中共南京市第一次代表大会会址简介：</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">大会听取了党务报告，讨论了中共中央临时政治局扩大会议通过的《中国现状与共产党的任务决议案》，并根据中共江苏省委关于组织全省暴动计划的紧急决议案，确定把武装暴动作为目前工作的重点。会议选举出吴雨铭、罗世藩、孙津川、宋震寰、苏爱吾（苏幼农）、史砚芬、王澄、滕炳炎（何正泉）、杜秀山、陈凤彩、路大奎、杨明清、丁发武、王崇典、周长福（周福康）、孙长植、李鸿宴等13名中共南京市委委员和4名候补委员。吴雨铭为中共南京市委书记，罗世藩为组织委员，孙津川为职工运动委员，宋震寰为农民运动委员，苏爱吾为军事委员，史砚芬兼团市委书记。次年3月，中共江苏省委任命孙津川为中共南京市委书记。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594003906127514.png\" title=\"1594003906127514.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">4</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京工运纪念馆</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">第四站</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">这里是两浦铁路工人二七大罢工指挥所旧址，在这里两浦铁路工人曾举行过大罢工。现在馆内陈列百年来南京工会工作、工人阶级成长、现代工业发展所取得的巨大成就，而后，在纪念馆南侧建成了与纪念馆风格一致的南京工运广场。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">这里，告诉大家罢工斗争的意义</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">两浦铁路工人二七大罢工指挥所旧址简介</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京工运纪念馆——两浦铁路工人二七大罢工指挥所旧址位于江北新区顶山街道南门浴堂街34号，建筑面积243平方米，占地面积278.15平方米。现存状况完好，定期开放。 二七大罢工指挥所旧址始建于民国初年，江南民居造型，坐东朝西，砖木结构，分正房和厢房，当时是一个新办的浴室。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">1921年3月，中国早期工人运动领袖王荷波在浦镇机厂工人中成立了中华工会，包租了浴室（即二七大罢工指挥所旧址）作为办公地点，中间仍为浴室，外面两间作办公室。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">1923年2月，王荷波在这里召开两浦地区党员、工会骨干紧急会议，介绍了反动军警破坏京汉铁路总工会成立大会的暴行及京汉铁路总罢工的情况。会议决定为声援京汉铁路大罢工，从2月8日起两浦铁路工人举行大罢工，罢工指挥所就设在此。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">2月8日，两浦（即浦镇、浦口）码头工人在会长王荷波的领导下，港务处“澄平”“陵通”两艘轮船的工人首先罢工，中午12时，机务处全体工人罢工，当晚，薛风起等几名青工将机务段车库中的252号机车开出，并故意扳错总道岔，造成机车脱轨，堵死其他机车出库通道。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">2月9日，1名被厂方收买的司炉欲开车牵引客车时，王荷波率领几百名工人，高举红旗，跑步冲向浦镇车站，挡住列车去路，并不断高呼：“打倒军阀！”“坚决不让火车开过去！”司炉一路鸣笛，不肯减速。几个老工人见状，带头脱掉上衣，横卧在冰凉的铁轨上。接着，大伙纷纷扑卧在铁轨上，决心以鲜血和生命坚持罢工斗争，司炉见状，紧急刹车。工人们立即包围机车，王荷波指挥工人把列车开进浦镇车站，给车上旅客准备饭食，向他们宣传罢工斗争的意义，得到旅客的同情和支持。津浦路南段铁路运输中断。 江苏督军齐燮元于当天下午派第四混成旅旅长吴洪赞带两个营的士兵赶到浦镇镇压。王荷波、王振翼指挥千余名铁路工人聚集在工会周围准备还击，吴洪赞不得不与工人们谈判。王荷波阐明罢工理由，提出8项复工条件，路局答应部分条件。此时，王荷波接到京汉铁路罢工遭到血腥镇压的消息，经过罢工代表讨论研究，为了避免罢工群众流血牺牲，果断做出适时复工的决定，保存了两浦地区的革命力量。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">1989年,当地政府对原址进行维修，在大门口入口处加设铁栏杆维护。1996年底、2004年又先后两次维修。2010年，顶山街道启动旧城改造工程，旧址周边地区拆迁时街道指派专人看护。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">2011年5月，南京市总工会经调研论证，决定将两浦铁路工人二七大罢工指挥所旧址改造成南京工运纪念馆，2012年7月完成纪念馆的改造，馆内陈列百年来南京工会工作、工人阶级成长、现代工业发展所取得的巨大成就，而后，在纪念馆南侧建成了与纪念馆风格一致的南京工运广场。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594003952164653.png\" title=\"1594003952164653.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">5</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">浦镇车辆厂</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">第五站</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">大家在这里参观新时代的轨道交通技术发展，感受红色文化、红色精神和工人先锋精神在现代化车间厂房中的传承、发扬。而今天正值王荷波同志诞辰136周年纪念日，寻访阅读行动参与者向王荷波同志塑像敬献花篮，并默哀鞠躬致敬。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594004022212903.png\" title=\"1594004022212903.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">这里是南京地区第一个共产党小组</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">浦镇党小组简介</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">五四运动爆发后，南京浦镇机厂工人曾连续组织示威游行，声援学生。后来工人王荷波又在浦镇机厂成立工会，为了工人利益与资方斗争。1921年12月，中国劳动组合书记部北方分部负责人罗章龙来浦镇机厂实地调查。他看到浦镇机厂工人王荷波才能出众，在工人中有威信，组织工会为工人们做了很多事情，真正代表了工人利益。罗章龙遂介绍王荷波和浦镇机厂工会加入中国劳动组合书记部。不久，又介绍王荷波加入北京大学马克思主义学说研究会。1922年夏，王荷波在北京加入中国共产党。同一时期，浦口车务段行车司事王国珍也在北方入党。同年秋，中国劳动组合书记部派中共党员王振翼到浦镇，协助王荷波筹建津浦路铁路总工会。王荷波先后发展了浦镇机厂工人张振诚、王恩荣等人入党，随即在浦镇建立了南京地区第一个共产党小组，王荷波为组长。党小组成立后，王荷波通过工会，继续创办浴堂、俱乐部、合作社等，为工人谋福利。还重点运用工人夜校等形式，在工人中传播马克思主义，宣传劳工神圣，启发工人的觉悟，在革命运动中发展优秀分子入党，壮大党的组织。1922年底，党小组又发展了浦口港务处工人周洪泉，浦镇机厂工人买雨田、许立双等人入党。1923年2月9日，王荷波领导了抗议浦口港务处无理开除工人、声援京汉铁路工人大罢工的斗争。之后，两浦地区白色恐怖严重，王荷波、王振翼被迫离开南京，张振诚接任浦镇党小组长，继续领导工人开展斗争。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594004064200802.png\" title=\"1594004064200802.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">在南京工运纪念馆外广场上举办了一场读书会，南京审计大学沁园书院大学生朗读者朗读了《王荷波纪念图文集》一书中南京第一个党小组成立的段落，参与活动的党员代表现场分享了“党员的第一次”经历，讲述了自己的入党故事及第一次参加党组织活动的体会。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594004093236263.png\" title=\"1594004093236263.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京女子监狱的民警 张淼</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">已经有11年党龄的她回忆道，“第一次入党宣誓时，恰逢高考失利，心情很是低落，我的入党介绍人细心开导我，教会我‘勇气’；我成为监狱民警后，我的领导教会我‘自信’。今天参与这样的寻访活动，我感触很深。作为一名党员，我一定会恪尽职守，履行好警察的职责。”</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594004128137066.png\" title=\"1594004128137066.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京电视台主持人 单通</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">“在红色文化资源点现场接受教育，是一堂最好的党课。”</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal; text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594004163136708.png\" title=\"1594004163136708.png\" alt=\"image.png\"/></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">告诉你</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京红色文化资源点寻访阅读行动</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">将从今年持续到2021年</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">寻访一处资源点、讲述一段历史、</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">阅读一个作品（故事）、传承一种精神</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">今年还将举办多场红色寻访阅读活动</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">带领大家走进南京各处红色文化资源点</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">真切体会那些年发生过的人和事！</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">本次活动由南京市委宣传部、市委网信办、市委党史办等单位指导，江北新区党工委宣传部、江北新区党工委党群工作部、中车南京浦镇车辆有限公司、浦口党史办等共同主办。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">图片来源 | 龙虎网</span></p><p><br/></p>', '中共南京市委宣传部', '/uploads/202007/09/200709095155520.jpg', 'http://www.yht.test.com/article/22.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_article` VALUES ('23', '72', '1', 'yzmcms', '南京日报', '南京红色文化资源点和志愿者联盟成立', '南京红色文化资源点和志愿者联盟成立_红研旅虚拟旅游研学平台', '', '1594259575', '1594259907', '', '南京红色文化资源点和志愿者联盟成立2020-07-02 07:40图文来源： 南京日报6月30日，南京红色文化资源点联盟、南京红色文化志愿者联盟成立...', '13', '<h1 label=\"标题居中\" style=\"font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\">南京红色文化资源点和志愿者联盟成立</span></h1><p style=\"text-align: center;\"><span style=\"color: rgb(136, 136, 136); padding: 0px 6px; font-size: 12px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif;\">2020-07-02 07:40图文来源： 南京日报</span></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">6月30日，南京红色文化资源点联盟、南京红色文化志愿者联盟成立暨纪实文学《雨花台》创作分享会在雨花台烈士纪念馆举办，将把南京红色文化力量凝聚成“同心圆”，打造南京红色文化品牌，扩大其在全国的影响力。</span></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594003487189960.png\" title=\"1594003487189960.png\" alt=\"image.png\"/></p><p><br/></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">昨天，栖霞区燕子矶街道祥和雅苑社区党委组织老党员前往雨花台烈士纪念馆，重温烈士不朽事迹，为烈士纪念碑献花。通讯员 杨霞 聂露露 南报融媒体记者 张华摄</span></p><p><br/></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南报网讯（融媒体记者 李子俊） 6月30日，南京红色文化资源点联盟、南京红色文化志愿者联盟成立暨纪实文学《雨花台》创作分享会在雨花台烈士纪念馆举办，将把南京红色文化力量凝聚成“同心圆”，打造南京红色文化品牌，扩大其在全国的影响力。&nbsp;</span></p><p><br/></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">雨花英烈精神的传承弘扬，离不开好的文艺作品，也离不开作家的倾情创作。会上，中国作协副主席何建明分享了自己正在创作的纪实文学《雨花台》的心得体会。“雨花台的革命先烈故事，是一座极大的文学宝库，还没有被充分地挖掘。作为作家，我们义不容辞，要担负起讲好雨花英烈故事的使命，把这本书写给全中国、甚至全世界的读者看，让更多的人了解雨花英烈，传承弘扬雨花英烈精神。”何建明说。当天，他还受聘成为雨花台烈士纪念馆驻馆首席作家。&nbsp;</span></p><p><br/></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">当天，合肥市政协原副主席、党组副书记杨力仁，也带来了新作，雨花英烈谭寿林革命伴侣钱瑛的生平传记《中共一枝梅——钱瑛》，赠送给雨花台烈士纪念馆，以充实研究素材。&nbsp;</span></p><p><br/></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京红色文化资源丰富，市域内红色文化资源点约有165处。为了聚合南京丰富红色文化资源，凝聚南京红色文化力量，当天，南京红色文化资源点联盟成立并揭牌，它将发挥集聚效应，打造南京红色文化品牌，从而扩大南京红色文化在全省、全国的影响力。&nbsp;</span></p><p><br/></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">当天，南京红色文化志愿者联盟成立并授旗。该联盟以雨花台烈士陵园“小雨滴”志愿服务队为龙头，联合了各区，以及文旅、教育、民政、团委、部队、学校、大型国企等部门、机构的志愿服务力量。目前，共组建了红色文化宣讲志愿服务队、红色文化挖掘志愿服务队、红色文化展示志愿服务队、红色文化保护志愿服务队4支特色队伍。&nbsp;</span></p><p><br/></p><p><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">“作为一名志愿者，需要静下心来，去深耕、探求、钻研红色文化资源，通过特色志愿服务使红色文化得到广泛传播，让红色文化扎根人们的心田。”雨花英烈吴振鹏的外孙，知名演员黄品沅，作为红色文化志愿者代表发言。他说，自己曾经出演过不少红色题材影视剧，对党的历史，以及红色文化有了更加深刻的了解。“我会竭尽全力，充分发挥我所在的影视文化创作领域的资源优势，讲好雨花英烈故事。”</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '南京日报', '/uploads/202007/09/200709095319748.jpg', 'http://www.yht.test.com/article/23.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_article` VALUES ('24', '72', '1', 'yzmcms', '汪舒', '@南京创业大学生 300万元接力投资等着你！', '@南京创业大学生 300万元接力投资等着你！_红研旅虚拟旅游研学平台', '', '1594259833', '1594259886', '', '@南京创业大学生 300万元接力投资等着你！今天（6月22日），2020南京创新周开幕，作为配套活动之一，南京市人社局、南京市创新投资集团联...', '13', '<h1 label=\"标题居中\" style=\"white-space: normal; font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\">@南京创业大学生 300万元接力投资等着你！</span></h1><p style=\"white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\">今天（6月22日），2020南京创新周开幕，作为配套活动之一，南京市人社局、南京市创新投资集团联合举办了&quot;宁聚&quot;创业沙龙，拿出实打实的大礼包，吸引广大青年学子在南京就业创业，优秀企业最高可以获得300万元的创业投资。<br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\"><strong style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: medium; background-color: rgb(245, 245, 245);\">资助优秀创业项目 今年投资金额已超3000万元</strong></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\"><strong style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: medium; background-color: rgb(245, 245, 245);\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594002061148401.png\" title=\"1594002061148401.png\" alt=\"image.png\"/></strong></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\"><strong style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: medium; background-color: rgb(245, 245, 245);\"><br/></strong></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">在今天的活动现场，南京泛在实境科技有限公司等5家青年大学生创业企业获得了接力投资，并现场签约。</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594002137455655.png\" title=\"1594002137455655.png\" alt=\"image.png\"/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京泛在实境科技有限公司CEO韩宇介绍，他们是一个做场景化教育的公司，现在为了把红色文化基地搬到学校去，需要对红色文化基地进行实景建模，而这一块是需要相应费用的。在拿到这笔钱以后，就会把江苏省的这些重点的红色文化资源点搬到线上，形成一系列针对青少年的研学课程。</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">目前，南京已经有两批、共15家创业企业拿到了接力投资，投资金额超过了3000万元。</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京市创新投资集团投资总监姜鹏飞表示，接力投资就是针对前面已投的、发展比较好的大学生创业企业，再做一轮50万元到300万元的接力投资。希望通过这个接力投资，再助推一把，帮助企业做大做强。</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><strong style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: medium; background-color: rgb(245, 245, 245);\">解决企业燃眉之急 释放政策红利扶持创新创业</strong></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><strong style=\"font-family: &quot;Microsoft YaHei&quot;; font-size: medium; background-color: rgb(245, 245, 245);\"><br/></strong></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">其实，从2012年开始，南京市就已经启动了对大学生创业的投资资助，目前，拿到投资资助的企业已经超过1500个。</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594002253178541.png\" title=\"1594002253178541.png\" alt=\"image.png\"/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京云问科技网络技术有限公司CEO王清琛告诉记者，他们公司是在在2015年的时候，在大学生创业比赛中获得了一定的名次，然后得到了南京市人社局的&quot;5+5&quot;政策扶持的，当时其中的5万元是给企业，还有5万元属于后期的股权融资，然后人社局还给他们提供了创业的环境，有了办公的场地。</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594002292142924.png\" title=\"1594002292142924.png\" alt=\"image.png\"/></span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">像云问科技这样的优秀大学生创业企业，南京现在有100多家，这些企业在拿到大学生创业投资资助以后，今年还有机会继续申请接力投资。</span></p><p style=\"white-space: normal;\"><br/></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">姜鹏飞介绍，有投融资诉求的大学生创业企业，把他们的商业计划书、公司近3年的经营情况、财务报表等资料递交给南京市创新投资集团，就有机会申请。</span></p><p style=\"white-space: normal; text-align: center;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594002374653087.png\" title=\"1594002374653087.png\" alt=\"image.png\"/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"></span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">根据南京发布的&quot;宁聚&quot;新十条措施，南京市人社局、市财政局以及南京市创业投资集团出台了这项新举措，真金白银地支持高校毕业生在南京创业。截至5月底，南京今年已经培育了自主创业人数1.25万人，创业态势不断趋好。</span></p><p style=\"white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">（来源：江苏广电融媒体新闻中心/汪舒 编辑/蒋婕）</span></p><p style=\"white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\"><br/><br/></span></p><p><br/></p>', '荔枝网', '/uploads/202007/09/200709095736728.jpg', 'http://www.yht.test.com/article/24.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_article` VALUES ('25', '72', '1', 'yzmcms', '马慧', '2020南京创新周，泛在实境创新文化新魅力', '2020南京创新周，泛在实境创新文化新魅力_红研旅虚拟旅游研学平台', '', '1594259969', '1600998010', '', '2020南京创新周，泛在实境创新文化新魅力2020南京创新周乘势而来，为深度推进全市“四新”行动，持续营造创业创新氛围，6月22日上午，由南...', '21', '<h1 label=\"标题居中\" style=\"font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"color: rgb(25, 25, 25); font-size: 24px; font-family: arial, helvetica, sans-serif;\">2020南京创新周，泛在实境创新文化新魅力</span></h1><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif;\">2020南京创新周乘势而来，为深度推进全市“四新”行动，持续营造创业创新氛围，6月22日上午，由南京市人社局、市财政局，南京市创业投资集团举办的宁聚.乘势行一“四新”行动图景下的创业沙龙在韶华工坊大学生创业园举行，南京泛在实境科技有限公司参会并成功荣获青年大学生接力投资，完成签约。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; text-align: center; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001615978927.png\" alt=\"\" oldsrc=\"W020200629409185976902.png\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 600px; height: auto; vertical-align: top;\"/></p><p style=\"margin-top: 1em; margin-bottom: 1em; text-align: center; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001618743599.png\" alt=\"\" oldsrc=\"W020200629409186280701.png\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 600px; height: auto; vertical-align: top;\"/></p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif;\">南京泛在实境科技有限公司是作为仙林街道新型研发机构的孵化成果，由紫金创投和江苏省地理信息产业研究院共同投资，是一家专业的虚拟研学综合服务商。公司依托国家重大研发项目成果推出行业领先的虚拟研学平台，并围绕虚拟研学推出红研旅™虚拟研学实境直播课堂、红研旅™虚拟研学空间等系列产品，可以为研学基地、爱国主义教育基地等提供研学项目策划、研学课程开发、研学空间建设、研发服务运营、研学活动宣传与导流等一站式虚拟研学解决方案，全心全意协助客户快速推出高品质虚拟研学服务。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; text-align: center; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001618106630.png\" alt=\"\" oldsrc=\"W020200629409186530776.png\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 600px; height: auto; vertical-align: top;\"/></p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif;\">南京泛在实境科技有限公司总经理韩宇先生接受记者采访，并对疫情下企业的新定位和新发展进行介绍：“疫情发生后，泛在实境线下业务受阻，但是随着线上教育常态化，又给公司带来难得的发展机遇。春节一开班，公司就集结骨干力量，加班加点研发红研旅™虚拟研学平台，把爱国主义教育基地搬到线上，送到学校去。让学生无需走出校园就可以身临其境的游览井冈山等爱国主义教育基地，并且还可以远程连线讲解员带领学生在虚拟空间中开展研学活动。6月份我们在中学和大学办了3次试点活动，活动非常成功，学生比较喜欢这种形式，特别是中学生参与积极性很高。下一步，我们将在课程建设方面加大投入，这次接力投资非常及时，我们计划用这笔钱将江苏省内重点的爱国主义教育基地搬到线上，并形成一系列青少年喜闻乐见的研学课程，也为推动本土红色文化资源融入青少年思想政治教育贡献一份力量。”</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; text-align: center; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001619106639.png\" alt=\"\" oldsrc=\"W020200629409186797272.png\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 600px; height: auto; vertical-align: top;\"/></p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">红研旅™虚拟研学平台简介</strong></span></p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif;\">红研旅™虚拟研学平台针对红色文化在线教育的需求研发，融合VR实境教学、云直播等先进技术，按照南师大“场景化、引导式、一带多”在线教育理念设计，可以协助红文基地快速推出在线研学服务，让研学单位通过互联网便可开展红文实践活动，让名师带领学员足不出户探索红文基地背后的故事。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; text-align: center; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001620197671.png\" alt=\"\" oldsrc=\"W020200629409187030341.png\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 600px; height: auto; vertical-align: top;\"/></p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; border: 0px;\">再走长征路VR展馆简介</strong></span></p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif;\">再走长征路VR展馆通过一个虚拟展馆，如下图所示，展馆分6大部分，按照红军长征时间线，分章节重点展示红军长征各种事件。第一部分回忆长征，通过沙盘和影像对长征进行叙述，使体验者能够对长征经过有个大概的了解。第二部分战略转移，采用了文字和图片阐述红军长征的起因。第三部分伟大转折，使用动画技术着重展现了遵义会议在中国共产党的转折意义。第四部分一往无前，采用模型重点刻画了飞夺泸定桥，让体验者身临其境感受到红军战士的应用。第五部分艰苦卓绝，使用全景互动方式呈现红军翻雪山，过草地的艰辛。第六部分胜利与精神，营造宏大舞台烘托了胜利气氛，并通过视频和群像深刻阐述了长征精神。让体验者通过10分钟的沉浸式体验，快速了解红军长征的艰险历程，深刻理解长征精神。</span></p><p style=\"margin-top: 1em; margin-bottom: 1em; text-align: center; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001622209120.png\" alt=\"\" oldsrc=\"W020200629409187230847.png\" style=\"margin: 0px; padding: 0px; border: 0px; max-width: 600px; height: auto; vertical-align: top;\"/></p><p style=\"margin-top: 1em; margin-bottom: 1em; padding: 0px; border: 0px; text-indent: 2em; color: rgb(25, 25, 25); font-family: &quot;Microsoft YaHei&quot;, &quot;Hiragino Sans GB&quot;, &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, Arial, simsun, sans-serif; font-size: 18px; white-space: normal;\"><span style=\"font-family: arial, helvetica, sans-serif;\">未来，泛在实境凭借领先的虚拟研学解决方案，整合全球优质教育资源，联合优秀的教育学术机构及技术创新企业，共同探索研学的本源和未来趋势，为研学中的现实问题寻求有效解决途径。（通讯员 马慧）</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '中国江苏网', '/uploads/202007/09/200709095939658.jpg', 'http://www.yht.test.com/article/25.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_article` VALUES ('26', '72', '1', 'yzmcms', '江苏省山东商会网', '商会第二十一次鲁商下午茶活动：走进南京泛在实境科技有限公司', '商会第二十一次鲁商下午茶活动：走进南京泛在实境科技有限公司_红研旅虚拟旅游研学平台', '', '1594260013', '1594260101', '', '商会第二十一次鲁商下午茶活动：走进南京泛在实境科技有限公司                                                ...', '32', '<h1 label=\"标题居中\" style=\"font-size: 32px; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 24px; font-family: arial, helvetica, sans-serif;\">商会第二十一次鲁商下午茶活动：走进南京泛在实境科技有限公司</span></h1><h3 style=\"width: 1717.44px; font-size: 12px; color: rgb(119, 119, 119); font-weight: normal; font-family: 微软雅黑;\"><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 时间：2019-10-22 16:01:50　　来源：江苏省山东商会网</span></h3><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">10月18日下午，江苏省山东商会第二十一次鲁商下午茶活动在理事单位——南京泛在实境科技有限公司会议室举行。山东籍在苏老领导杨茂明，商会会长石金亮，副会长范鲁明、孙学忱，南京市滨州商会执行会长李滨，商会理事李恩生、郝绍宏，会员王光有、王睿、王熠辉，办公室主任张昆等人参加本次活动，受到东道主南京泛在实境科技有限公司总经理韩宇的热情接待。活动由石金亮会长主持。</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594000864187390.png\" title=\"1594000864187390.png\" alt=\"image.png\"/></p><p><br/></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">石金亮会长在介绍参会人员后说道：看到越来越多的年轻企业家加入到江苏省山东商会这个大家庭，自己感到无比欣慰！高素质的会员给商会发展注入了活力，希望诸位充分用好商会平台，再接再厉，资源共享，合作共赢，共同发展。</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594000990178567.png\" title=\"1594000990178567.png\" alt=\"image.png\"/><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001028210682.png\" title=\"1594001028210682.png\" alt=\"image.png\" style=\"text-indent: 37px;\"/></p><p><br/></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">本期主题为智慧城市。智慧城市是指利用各种信息技术或创新概念，将城市的系统和服务打通、集成，以提升资源运用的效率，优化城市管理和服务，以及改善市民生活质量。与会企业家针对智慧城市这一主题，结合自身企业的发展情况，踊跃发言，提出了自己的见解和看法，座谈会现场气氛热烈。</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001078178325.png\" title=\"1594001078178325.png\" alt=\"image.png\"/><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001115951474.png\" title=\"1594001115951474.png\" alt=\"image.png\" style=\"text-indent: 37px;\"/></p><p><br/></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">理事韩宇和会员王光有当场达成合作意向。此外，韩宇表示，市场是本公司的短板，期望通过鲁商下午茶活动，借助商会平台，寻找结合点，增强彼此的竞争力，实现共赢！</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001140152894.png\" title=\"1594001140152894.png\" alt=\"image.png\"/><span style=\"font-family: arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;</span><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001208140785.png\" title=\"1594001208140785.png\" alt=\"image.png\"/></p><p><br/></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">山东籍在苏老领导杨茂明对商会的鲁商下午茶活动给予充分肯定和高度赞扬，他认为，目前，商会的下午茶活动日趋成熟，大家在交流过程中产生了许多宝贵的经验和教训，在更新信息、技术、资源等方面产生了积极作用。另外，老领导杨茂明对企业家们还提出了几点期许：一是要找准自身在企业中的定位，认真研究发展问题；二是要有目标，有理想，真抓实干，务实与务虚相结合。在场的企业家们纷纷表示深受鼓舞。</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\"><br/></span></p><p style=\"text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001258346204.png\" title=\"1594001258346204.png\" alt=\"image.png\"/></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">座谈结束后，与会人员共同体验了红色文化VR教育项目，并合影留念。</span></p><p style=\"text-align: center;\"><img src=\"https://ssl.hongyanlv.com/cos/uploads/ueditor/image/20200706/1594001292236021.png\" title=\"1594001292236021.png\" alt=\"image.png\"/></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">&nbsp;</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">附：南京泛在实境科技有限公司简介</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">南京泛在实境科技有限公司隶属于江苏省地理信息产业研究院，由南京师范大学、紫金创投联合投资，致力于VR多人教育软硬件产品的研发与产业化。</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">公司与南京师范大学联合推出“一带多免培训”VR多人教学新模式，有效破解传统VR教育培训难、成本高等问题。基于该模式，公司自主研发VR多人教育播控系统，推出VR播控器、VR讲台等模块化硬件，协助客户快速搭建VR教学环境；推出VR课程市场，为客户提供丰富的VR教学内容。</span></p><p style=\"font-family: 微软雅黑; font-size: 14px; white-space: normal; text-indent: 37px;\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">江苏省地理信息产业研究院由栖霞区政府、南京师范大学、江苏省地理信息产业园以及核心专家团队共建的新型研发机构。研究院整合了南京师范大学“双一流”学科——地理学的人才优势、江苏省地理信息产业园的政策资源优势，依托于南京师范大学“虚拟地理环境教育部重点实验室”及“江苏省地理信息资源开发与利用协同创新中心”等重要科研平台。</span></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>', '江苏省山东商会网', '/uploads/202007/09/200709100024501.jpg', 'http://www.yht.test.com/article/26.html', '', '1', '1', '10', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for yzm_attachment
-- ----------------------------
DROP TABLE IF EXISTS `yzm_attachment`;
CREATE TABLE `yzm_attachment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` char(15) NOT NULL DEFAULT '',
  `originname` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` char(200) NOT NULL DEFAULT '',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL DEFAULT '',
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid_index` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_attachment
-- ----------------------------
INSERT INTO `yzm_attachment` VALUES ('1', 'member', '学生端全屏.jpg', '200517014000288.jpg', '/uploads/202005/17/', '220040', 'jpg', '1', '0', '1', 'yzmcms', '1589650800', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('2', 'index', '学生端全屏.jpg', '1589650807132373.jpg', '/uploads/ueditor/image/20200517/', '220040', 'jpg', '1', '0', '1', 'yzmcms', '1589650807', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('3', 'admin', '学生端全屏.jpg', '200517015134216.jpg', '/uploads/202005/17/', '220040', 'jpg', '1', '0', '1', 'yzmcms', '1589651494', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('4', 'admin', '微信登录.jpg', '200517015254103.jpg', '/uploads/202005/17/', '120974', 'jpg', '1', '0', '1', 'yzmcms', '1589651574', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('5', 'admin', '学生端全屏.jpg', '200517020933994.jpg', '/uploads/202005/17/', '220040', 'jpg', '1', '0', '1', 'yzmcms', '1589652573', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('6', 'index', 'aa1.jpg', '1589736772112629.jpg', '/uploads/ueditor/image/20200518/', '59206', 'jpg', '1', '0', '1', 'yzmcms', '1589736772', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('7', 'index', 'bb1.png', '1589736901204993.png', '/uploads/ueditor/image/20200518/', '913815', 'png', '1', '0', '1', 'yzmcms', '1589736901', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('8', 'index', 'cc1.png', '1589736948638844.png', '/uploads/ueditor/image/20200518/', '903745', 'png', '1', '0', '1', 'yzmcms', '1589736948', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('9', 'index', 'cc2.jpg', '1589737024134910.jpg', '/uploads/ueditor/image/20200518/', '33819', 'jpg', '1', '0', '1', 'yzmcms', '1589737024', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('10', 'index', 'aa1.jpg', '1589737133156194.jpg', '/uploads/ueditor/image/20200518/', '59206', 'jpg', '1', '0', '1', 'yzmcms', '1589737133', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('11', 'index', 'aa2.jpg', '1589737251292978.jpg', '/uploads/ueditor/image/20200518/', '20719', 'jpg', '1', '0', '1', 'yzmcms', '1589737251', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('12', 'index', 'bb2.png', '1589737287256177.png', '/uploads/ueditor/image/20200518/', '786491', 'png', '1', '0', '1', 'yzmcms', '1589737287', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('13', 'index', 'dd1.png', '1589737412215419.png', '/uploads/ueditor/image/20200518/', '899819', 'png', '1', '0', '1', 'yzmcms', '1589737412', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('14', 'index', 'cc1.png', '1589737490412759.png', '/uploads/ueditor/image/20200518/', '903745', 'png', '1', '0', '1', 'yzmcms', '1589737490', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('15', 'index', 'cc2.jpg', '1589737497664298.jpg', '/uploads/ueditor/image/20200518/', '33819', 'jpg', '1', '0', '1', 'yzmcms', '1589737497', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('16', 'index', 'aa2.jpg', '1589737502143110.jpg', '/uploads/ueditor/image/20200518/', '20719', 'jpg', '1', '0', '1', 'yzmcms', '1589737502', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('17', 'admin', 'icon.jpg', '200518020109814.jpg', '/uploads/202005/18/', '17751', 'jpg', '1', '0', '1', 'yzmcms', '1589738468', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('18', 'admin', '1.png', '200518020705252.png', '/uploads/202005/18/', '46297', 'png', '1', '0', '1', 'yzmcms', '1589738825', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('19', 'admin', 'b.png', '200518020803809.png', '/uploads/202005/18/', '35344', 'png', '1', '0', '1', 'yzmcms', '1589738883', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('20', 'admin', 'c.png', '200518020828778.png', '/uploads/202005/18/', '42869', 'png', '1', '0', '1', 'yzmcms', '1589738908', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('21', 'admin', 'd.png', '200518020849956.png', '/uploads/202005/18/', '42518', 'png', '1', '0', '1', 'yzmcms', '1589738929', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('22', 'index', '捕获.PNG', '1589794521161692.png', '/uploads/ueditor/image/20200518/', '17957', 'png', '1', '0', '1', 'yzmcms', '1589794521', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('23', 'index', '下载 (1).jpg', '1589794776173327.jpg', '/uploads/ueditor/image/20200518/', '51952', 'jpg', '1', '0', '1', 'yzmcms', '1589794776', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('24', 'index', '下载 (1).png', '1589794776309413.png', '/uploads/ueditor/image/20200518/', '101909', 'png', '1', '0', '1', 'yzmcms', '1589794776', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('25', 'index', '下载 (2).jpg', '1589794776110078.jpg', '/uploads/ueditor/image/20200518/', '175519', 'jpg', '1', '0', '1', 'yzmcms', '1589794777', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('26', 'index', '下载 (3).jpg', '1589794777516509.jpg', '/uploads/ueditor/image/20200518/', '133186', 'jpg', '1', '0', '1', 'yzmcms', '1589794777', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('27', 'index', '下载 (4).jpg', '1589794777103342.jpg', '/uploads/ueditor/image/20200518/', '133749', 'jpg', '1', '0', '1', 'yzmcms', '1589794777', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('28', 'index', '下载 (5).jpg', '1589794777105157.jpg', '/uploads/ueditor/image/20200518/', '165358', 'jpg', '1', '0', '1', 'yzmcms', '1589794777', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('29', 'index', '下载 (6).jpg', '1589794777491526.jpg', '/uploads/ueditor/image/20200518/', '69101', 'jpg', '1', '0', '1', 'yzmcms', '1589794777', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('30', 'index', '下载.jpg', '1589794777103300.jpg', '/uploads/ueditor/image/20200518/', '180526', 'jpg', '1', '0', '1', 'yzmcms', '1589794777', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('31', 'index', '下载.png', '1589794777406985.png', '/uploads/ueditor/image/20200518/', '359826', 'png', '1', '0', '1', 'yzmcms', '1589794777', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('32', 'admin', '1e30e924b899a90117bcae881f950a7b0308f587.jpg', '200518054240173.jpg', '/uploads/202005/18/', '16451', 'jpg', '1', '0', '1', 'yzmcms', '1589794960', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('33', 'banner', '200111075456968.jpg', '200519021129681.jpg', '/uploads/202005/19/', '196521', 'jpg', '1', '0', '1', 'yzmcms', '1589825489', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('34', 'banner', '200111075535707.jpg', '200519021146824.jpg', '/uploads/202005/19/', '75168', 'jpg', '1', '0', '1', 'yzmcms', '1589825506', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('35', 'banner', '200111075614137.jpg', '200519021158521.jpg', '/uploads/202005/19/', '60730', 'jpg', '1', '0', '1', 'yzmcms', '1589825518', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('36', 'admin', 'youtube.png', '200526083709104.png', '/uploads/202005/26/', '25158', 'png', '1', '0', '1', 'yzmcms', '1590496629', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('37', 'admin', 'hotXCBIEJj037799.mp4', '200526090146105.mp4', '/uploads/202005/26/', '1961587', 'mp4', '0', '0', '1', 'yzmcms', '1590498106', '192.168.31.137');
INSERT INTO `yzm_attachment` VALUES ('38', 'member', 'timg (2).jpg', '200529121354708.jpg', '/uploads/202005/29/', '72905', 'jpg', '1', '0', '1', 'yzmcms', '1590725634', '47.57.190.74');
INSERT INTO `yzm_attachment` VALUES ('39', 'member', '99e5d4dffa299e8fab131312865bb36.png', '200604100719180.png', '/uploads/202006/04/', '290272', 'png', '1', '0', '17', 'YHTZH', '1591236439', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('40', 'member', '1591236516(1).png', '200604100928893.png', '/uploads/202006/04/', '1052401', 'png', '1', '0', '17', 'YHTZH', '1591236568', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('41', 'member', '1591236516(1).png', '200604103228259.png', '/uploads/202006/04/', '1052401', 'png', '1', '0', '17', 'YHTZH', '1591237948', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('42', 'member', 'QQ图片20200604100212.jpg', '200604103253344.jpg', '/uploads/202006/04/', '85557', 'jpg', '1', '0', '17', 'YHTZH', '1591237973', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('43', 'member', 'ff3147b6780a88cc5d33d6d8a97ec84.png', '200604103532261.png', '/uploads/202006/04/', '391846', 'png', '1', '0', '17', 'YHTZH', '1591238132', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('44', 'member', '8c81da900955110a3e45a8919e28a0d.png', '200604104650267.png', '/uploads/202006/04/', '412341', 'png', '1', '0', '17', 'YHTZH', '1591238810', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('45', 'member', '8c81da900955110a3e45a8919e28a0d.png', '200604104716666.png', '/uploads/202006/04/', '412341', 'png', '1', '0', '17', 'YHTZH', '1591238836', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('46', 'member', 'timg[5].jpg', '200604111451668.jpg', '/uploads/202006/04/', '87679', 'jpg', '1', '0', '17', 'YHTZH', '1591240491', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('47', 'member', '1591241438(1).png', '200604113126498.png', '/uploads/202006/04/', '1400478', 'png', '1', '0', '17', 'YHTZH', '1591241486', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('48', 'member', '1591241438(1).png', '200604120220553.png', '/uploads/202006/04/', '1400478', 'png', '1', '0', '17', 'YHTZH', '1591243340', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('49', 'member', '1591243535(1).png', '200604120556496.png', '/uploads/202006/04/', '1376221', 'png', '1', '0', '17', 'YHTZH', '1591243556', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('50', 'member', '1499910052922_000.jpg', '200604063602392.jpg', '/uploads/202006/04/', '21165', 'jpg', '1', '0', '1', 'yzmcms', '1591266962', '222.192.3.121');
INSERT INTO `yzm_attachment` VALUES ('51', 'banner', 'banner4.jpg', '200605055445671.jpg', '/uploads/202006/05/', '200042', 'jpg', '1', '0', '1', 'yzmcms', '1591350885', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('52', 'banner', 'banner5.jpg', '200605055512487.jpg', '/uploads/202006/05/', '319231', 'jpg', '1', '0', '1', 'yzmcms', '1591350912', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('53', 'banner', 'banner1.jpg', '200605055536724.jpg', '/uploads/202006/05/', '250224', 'jpg', '1', '0', '1', 'yzmcms', '1591350936', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('54', 'banner', 'banner2.jpg', '200605055554200.jpg', '/uploads/202006/05/', '243628', 'jpg', '1', '0', '1', 'yzmcms', '1591350954', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('55', 'banner', 'banner3.jpg', '200605055606375.jpg', '/uploads/202006/05/', '229947', 'jpg', '1', '0', '1', 'yzmcms', '1591350966', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('56', 'admin', 'base-logo1.png', '200605060658499.png', '/uploads/202006/05/', '10308', 'png', '1', '0', '1', 'yzmcms', '1591351618', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('57', 'admin', 'base-logo1.png', '200605061004455.png', '/uploads/202006/05/', '10308', 'png', '1', '0', '1', 'yzmcms', '1591351804', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('58', 'admin', 'base-logo2.png', '200605061025423.png', '/uploads/202006/05/', '16355', 'png', '1', '0', '1', 'yzmcms', '1591351825', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('59', 'admin', 'base-logo3.png', '200605061038422.png', '/uploads/202006/05/', '10146', 'png', '1', '0', '1', 'yzmcms', '1591351838', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('60', 'admin', 'base-logo3.png', '200605062945968.png', '/uploads/202006/05/', '10146', 'png', '1', '0', '1', 'yzmcms', '1591352985', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('61', 'admin', 'base-logo4.png', '200605063012225.png', '/uploads/202006/05/', '5172', 'png', '1', '0', '1', 'yzmcms', '1591353012', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('62', 'admin', 'base-logo6.png', '200605063031226.png', '/uploads/202006/05/', '5752', 'png', '1', '0', '1', 'yzmcms', '1591353031', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('63', 'admin', 'base-logo2.png', '200605063514383.png', '/uploads/202006/05/', '16355', 'png', '1', '0', '1', 'yzmcms', '1591353314', '49.77.137.151');
INSERT INTO `yzm_attachment` VALUES ('64', 'member', '1591580419(1).png', '200608094126383.png', '/uploads/202006/08/', '597893', 'png', '1', '0', '17', 'YHTZH', '1591580486', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('65', 'index', '1591580419(1).png', '1591580599203949.png', '/uploads/ueditor/image/20200608/', '597893', 'png', '1', '0', '17', 'YHTZH', '1591580599', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('66', 'index', '1591580623(1).png', '1591580665195596.png', '/uploads/ueditor/image/20200608/', '482942', 'png', '1', '0', '17', 'YHTZH', '1591580665', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('67', 'index', 'image.png', '1591581734634030.png', '/uploads/ueditor/image/20200608/', '612198', 'png', '1', '0', '1', 'yzmcms', '1591581734', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('68', 'index', 'image.png', '1591581784156220.png', '/uploads/ueditor/image/20200608/', '426422', 'png', '1', '0', '1', 'yzmcms', '1591581784', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('69', 'index', 'image.png', '1591581986189966.png', '/uploads/ueditor/image/20200608/', '133099', 'png', '1', '0', '1', 'yzmcms', '1591581986', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('70', 'index', 'image.png', '1591582176965267.png', '/uploads/ueditor/image/20200608/', '513821', 'png', '1', '0', '1', 'yzmcms', '1591582176', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('71', 'index', 'image.png', '1591582208162470.png', '/uploads/ueditor/image/20200608/', '201949', 'png', '1', '0', '1', 'yzmcms', '1591582208', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('72', 'index', 'image.png', '1591582336148531.png', '/uploads/ueditor/image/20200608/', '246428', 'png', '1', '0', '1', 'yzmcms', '1591582336', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('73', 'index', '04.jpg', '1591583231157639.jpg', '/uploads/ueditor/image/20200608/', '9780904', 'jpg', '1', '0', '1', 'yzmcms', '1591583231', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('74', 'admin', '1591584070(1).png', '200608104349225.png', '/uploads/202006/08/', '85077', 'png', '1', '0', '1', 'yzmcms', '1591584229', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('75', 'admin', '1591584203(1).png', '200608105143142.png', '/uploads/202006/08/', '202974', 'png', '1', '0', '1', 'yzmcms', '1591584703', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('76', 'admin', '1591585593(1).png', '200608110654151.png', '/uploads/202006/08/', '64466', 'png', '1', '0', '1', 'yzmcms', '1591585614', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('77', 'admin', '1591586225(1).png', '200608112020873.png', '/uploads/202006/08/', '72527', 'png', '1', '0', '1', 'yzmcms', '1591586420', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('78', 'index', 'timg6I4C3V11.jpg', '1591587749128234.jpg', '/uploads/ueditor/image/20200608/', '30350', 'jpg', '1', '0', '1', 'yzmcms', '1591587749', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('79', 'member', 'timg6I4C3V11.jpg', '200608114317515.jpg', '/uploads/202006/08/', '30350', 'jpg', '1', '0', '1', 'yzmcms', '1591587797', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('80', 'admin', '西柏坡logo.png', '200608114746892.png', '/uploads/202006/08/', '72658', 'png', '1', '0', '1', 'yzmcms', '1591588066', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('81', 'member', '2010222214034657[1].jpg', '200608114820831.jpg', '/uploads/202006/08/', '111368', 'jpg', '1', '0', '1', 'yzmcms', '1591588100', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('82', 'index', '2010222214034657[1].jpg', '1591588108142826.jpg', '/uploads/ueditor/image/20200608/', '111368', 'jpg', '1', '0', '1', 'yzmcms', '1591588108', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('83', 'admin', '西柏坡logo.png', '200608114857798.png', '/uploads/202006/08/', '65669', 'png', '1', '0', '1', 'yzmcms', '1591588137', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('84', 'admin', '西柏坡logo.png', '200608114933356.png', '/uploads/202006/08/', '62097', 'png', '1', '0', '1', 'yzmcms', '1591588173', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('85', 'member', 'timgLWR4ZEGG.jpg', '200608115212126.jpg', '/uploads/202006/08/', '29862', 'jpg', '1', '0', '1', 'yzmcms', '1591588332', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('86', 'index', 'timgLWR4ZEGG.jpg', '1591588346211018.jpg', '/uploads/ueditor/image/20200608/', '29862', 'jpg', '1', '0', '1', 'yzmcms', '1591588346', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('87', 'admin', '古田会议LOGO.png', '200608115409470.png', '/uploads/202006/08/', '122618', 'png', '1', '0', '1', 'yzmcms', '1591588449', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('88', 'admin', '华北LOGO.png', '200608120858358.png', '/uploads/202006/08/', '32485', 'png', '1', '0', '1', 'yzmcms', '1591589338', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('89', 'admin', '华北LOGO.png', '200608120940359.png', '/uploads/202006/08/', '31683', 'png', '1', '0', '1', 'yzmcms', '1591589380', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('90', 'member', '1591596264(1).png', '200608020605864.png', '/uploads/202006/08/', '231061', 'png', '1', '0', '1', 'yzmcms', '1591596365', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('91', 'admin', '1591596264(1).png', '200608020756280.png', '/uploads/202006/08/', '231061', 'png', '1', '0', '1', 'yzmcms', '1591596476', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('92', 'member', 'u=315539053,1053614696&fm=27&gp=0[1].jpg', '200608022442234.jpg', '/uploads/202006/08/', '30224', 'jpg', '1', '0', '1', 'yzmcms', '1591597482', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('93', 'index', 'image.png', '1591598272213991.png', '/uploads/ueditor/image/20200608/', '1032194', 'png', '1', '0', '1', 'yzmcms', '1591598272', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('94', 'admin', '1591598749(1).jpg', '200608024613754.jpg', '/uploads/202006/08/', '738446', 'jpg', '1', '0', '1', 'yzmcms', '1591598773', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('95', 'admin', '1591598882(1).jpg', '200608024831852.jpg', '/uploads/202006/08/', '477261', 'jpg', '1', '0', '1', 'yzmcms', '1591598911', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('96', 'admin', '1591597721100214.jpg', '200608025008395.jpg', '/uploads/202006/08/', '358861', 'jpg', '1', '0', '1', 'yzmcms', '1591599008', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('97', 'index', 'image.png', '1591599565722792.png', '/uploads/ueditor/image/20200608/', '252681', 'png', '1', '0', '1', 'yzmcms', '1591599565', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('98', 'index', 'image.png', '1591599590153326.png', '/uploads/ueditor/image/20200608/', '736062', 'png', '1', '0', '1', 'yzmcms', '1591599590', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('99', 'index', 'image.png', '1591599620169109.png', '/uploads/ueditor/image/20200608/', '334484', 'png', '1', '0', '1', 'yzmcms', '1591599620', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('100', 'index', 'image.png', '1591599679855612.png', '/uploads/ueditor/image/20200608/', '1206197', 'png', '1', '0', '1', 'yzmcms', '1591599679', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('101', 'admin', '200605055554200.jpg', '200608040920831.jpg', '/uploads/202006/08/', '24278', 'jpg', '1', '0', '1', 'yzmcms', '1591603760', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('102', 'admin', '200605055445671.jpg', '200608040955150.jpg', '/uploads/202006/08/', '15680', 'jpg', '1', '0', '1', 'yzmcms', '1591603795', '222.192.2.131');
INSERT INTO `yzm_attachment` VALUES ('103', 'index', 'image.png', '1591612160191929.png', '/uploads/ueditor/image/20200608/', '771910', 'png', '1', '0', '1', 'yzmcms', '1591612160', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('104', 'index', 'image.png', '1591612182157324.png', '/uploads/ueditor/image/20200608/', '655906', 'png', '1', '0', '1', 'yzmcms', '1591612182', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('105', 'index', 'image.png', '1591612195199083.png', '/uploads/ueditor/image/20200608/', '702244', 'png', '1', '0', '1', 'yzmcms', '1591612195', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('106', 'index', 'image.png', '1591612212264507.png', '/uploads/ueditor/image/20200608/', '479810', 'png', '1', '0', '1', 'yzmcms', '1591612212', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('107', 'index', 'image.png', '1591612225118257.png', '/uploads/ueditor/image/20200608/', '830530', 'png', '1', '0', '1', 'yzmcms', '1591612225', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('108', 'index', 'image.png', '1591612239149448.png', '/uploads/ueditor/image/20200608/', '736884', 'png', '1', '0', '1', 'yzmcms', '1591612239', '49.77.167.98');
INSERT INTO `yzm_attachment` VALUES ('109', 'member', 'timg[8].jpg', '200609101757628.jpg', '/uploads/202006/09/', '30169', 'jpg', '1', '0', '1', 'yzmcms', '1591669077', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('110', 'member', 'timg[8].jpg', '200609101832548.jpg', '/uploads/202006/09/', '30169', 'jpg', '1', '0', '1', 'yzmcms', '1591669112', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('111', 'member', '0ae02d6c7f1b43a7ab866547cb4cea39[1].jpg', '200609103750964.jpg', '/uploads/202006/09/', '93539', 'jpg', '1', '0', '1', 'yzmcms', '1591670270', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('112', 'member', '0ae02d6c7f1b43a7ab866547cb4cea39[1].jpg', '200609103819104.jpg', '/uploads/202006/09/', '93539', 'jpg', '1', '0', '1', 'yzmcms', '1591670299', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('113', 'admin', '上海历史70周年1.mp4', '200609104037224.mp4', '/uploads/202006/09/', '13160326', 'mp4', '0', '0', '1', 'yzmcms', '1591670437', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('114', 'member', '36c340c0bba44f03a66dffc7d1cffd38[1].jpg', '200609110512990.jpg', '/uploads/202006/09/', '49850', 'jpg', '1', '0', '1', 'yzmcms', '1591671912', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('115', 'member', '36c340c0bba44f03a66dffc7d1cffd38[1].jpg', '200609110526899.jpg', '/uploads/202006/09/', '49850', 'jpg', '1', '0', '1', 'yzmcms', '1591671926', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('116', 'admin', 'fdbc0720922b7bb73036a5bdf37b8da4.mp4', '200609064153863.mp4', '/uploads/202006/09/', '550198', 'mp4', '0', '0', '1', 'yzmcms', '1591699313', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('117', 'admin', '70.mp4', '200609064816489.mp4', '/uploads/202006/09/', '15129219', 'mp4', '0', '0', '1', 'yzmcms', '1591699696', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('132', 'admin', '200609070009149.jpg', '200611062307474.jpg', '/uploads/202006/11/', '3188954', 'jpg', '1', '0', '1', 'yzmcms', '1591827787', '183.209.143.223');
INSERT INTO `yzm_attachment` VALUES ('154', 'admin', 'R5$A94KUWPGS449KR(ESG.png', '200612031118858.png', '/cos/uploads/202006/12/', '536197', 'png', '1', '0', '1', 'yzmcms', '1591945877', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('155', 'admin', '雨花台联展3.png', '200612031638341.png', '/cos/uploads/202006/12/', '761183', 'png', '1', '0', '1', 'yzmcms', '1591946198', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('156', 'index', '中兴堂.jpg', '1591947807176535.jpg', '/cos/uploads/ueditor/image/20200612/', '52801', 'jpg', '1', '0', '1', 'yzmcms', '1591947808', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('157', 'index', 'QQ图片20200612154144.jpg', '1591948003190567.jpg', '/cos/uploads/ueditor/image/20200612/', '116057', 'jpg', '1', '0', '1', 'yzmcms', '1591948004', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('158', 'index', '中兴堂.jpg', '1591948039347421.jpg', '/cos/uploads/ueditor/image/20200612/', '52801', 'jpg', '1', '0', '1', 'yzmcms', '1591948040', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('159', 'admin', 'QQ图片20200612154144.jpg', '200612035323597.jpg', '/cos/uploads/202006/12/', '116057', 'jpg', '1', '0', '1', 'yzmcms', '1591948403', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('160', 'index', 'QQ图片20200612154152.jpg', '1591948435111726.jpg', '/cos/uploads/ueditor/image/20200612/', '153126', 'jpg', '1', '0', '1', 'yzmcms', '1591948436', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('161', 'admin', 'QQ图片20200612154144.jpg', '200612035422920.jpg', '/cos/uploads/202006/12/', '116057', 'jpg', '1', '0', '1', 'yzmcms', '1591948462', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('162', 'admin', '雨花台联展2.png', '200612043756699.png', '/cos/uploads/202006/12/', '656042', 'png', '1', '0', '1', 'yzmcms', '1591951076', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('163', 'index', 'Q7BOBX538]7OT6]HOJRDDJN.png', '1591951418343411.png', '/cos/uploads/ueditor/image/20200612/', '271262', 'png', '1', '0', '1', 'yzmcms', '1591951419', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('164', 'index', '雨花台联展2.png', '1591951452132327.png', '/cos/uploads/ueditor/image/20200612/', '656042', 'png', '1', '0', '1', 'yzmcms', '1591951453', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('165', 'admin', '00.jpg', '200615020727528.jpg', '/cos/uploads/202006/15/', '33686', 'jpg', '1', '0', '1', 'yzmcms', '1592201246', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('166', 'index', '00.jpg', '1592201254508147.jpg', '/cos/uploads/ueditor/image/20200615/', '33686', 'jpg', '1', '0', '1', 'yzmcms', '1592201256', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('167', 'admin', '00.jpg', '200615021605298.jpg', '/cos/uploads/202006/15/', '33686', 'jpg', '1', '0', '1', 'yzmcms', '1592201765', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('168', 'admin', '00.jpg', '200615022741794.jpg', '/cos/uploads/202006/15/', '33686', 'jpg', '1', '0', '1', 'yzmcms', '1592202461', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('169', 'index', '00.jpg', '1592202470694054.jpg', '/cos/uploads/ueditor/image/20200615/', '33686', 'jpg', '1', '0', '1', 'yzmcms', '1592202471', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('170', 'admin', '00.jpg', '200615041044979.jpg', '/cos/uploads/202006/15/', '33686', 'jpg', '1', '0', '1', 'yzmcms', '1592208644', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('171', 'admin', '200608020756280.png', '200615052758913.png', '/cos/uploads/202006/15/', '64748', 'png', '1', '0', '1', 'yzmcms', '1592213278', '222.192.2.93');
INSERT INTO `yzm_attachment` VALUES ('172', 'admin', '1591581986189966.png', '200618054801869.png', '/cos/uploads/202006/18/', '30287', 'png', '1', '0', '1', 'yzmcms', '1592473681', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('173', 'admin', '200605055536724.jpg', '200618054900248.jpg', '/cos/uploads/202006/18/', '21669', 'jpg', '1', '0', '1', 'yzmcms', '1592473740', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('174', 'admin', '200518020109814.jpg', '200618055005432.jpg', '/cos/uploads/202006/18/', '4240', 'jpg', '1', '0', '1', 'yzmcms', '1592473805', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('175', 'admin', '1591581784156220.png', '200618055134256.png', '/cos/uploads/202006/18/', '227368', 'png', '1', '0', '1', 'yzmcms', '1592473894', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('176', 'admin', '1591580665195596.png', '200618055148165.png', '/cos/uploads/202006/18/', '165565', 'png', '1', '0', '1', 'yzmcms', '1592473908', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('177', 'admin', '1591582336148531.png', '200618055213718.png', '/cos/uploads/202006/18/', '153223', 'png', '1', '0', '1', 'yzmcms', '1592473933', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('178', 'admin', '1591582176965267.png', '200618055233357.png', '/cos/uploads/202006/18/', '268115', 'png', '1', '0', '1', 'yzmcms', '1592473953', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('179', 'admin', '200618054801869.png', '200618055306212.png', '/cos/uploads/202006/18/', '29856', 'png', '1', '0', '1', 'yzmcms', '1592473986', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('180', 'admin', '200618054900248.jpg', '200618055327326.jpg', '/cos/uploads/202006/18/', '19359', 'jpg', '1', '0', '1', 'yzmcms', '1592474007', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('181', 'admin', '200618055005432.jpg', '200618055401848.jpg', '/cos/uploads/202006/18/', '3858', 'jpg', '1', '0', '1', 'yzmcms', '1592474041', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('182', 'admin', '200608094126383.png', '200618055417617.png', '/cos/uploads/202006/18/', '315884', 'png', '1', '0', '1', 'yzmcms', '1592474057', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('183', 'admin', '200618055005432.jpg', '200619015923103.jpg', '/cos/uploads/202006/19/', '4239', 'jpg', '1', '0', '1', 'yzmcms', '1592546363', '222.192.2.124');
INSERT INTO `yzm_attachment` VALUES ('204', 'admin', 'base-logo2.png', '200623051737387.png', '/uploads/202006/23/', '16355', 'png', '1', '0', '1', 'yzmcms', '1592903857', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('205', 'admin', 'base-logo2.png', '200623051801122.png', '/uploads/202006/23/', '16355', 'png', '1', '0', '1', 'yzmcms', '1592903881', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('186', 'admin', '200619021115928.jpg', '200619021133957.jpg', '/cos/uploads/202006/19/', '4562', 'jpg', '1', '0', '1', 'yzmcms', '1592547093', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('187', 'admin', '1592547975(1).jpg', '200619022624323.jpg', '/cos/uploads/202006/19/', '169318', 'jpg', '1', '0', '1', 'yzmcms', '1592547984', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('188', 'admin', '200619022624323.jpg', '200619022636500.jpg', '/cos/uploads/202006/19/', '69604', 'jpg', '1', '0', '1', 'yzmcms', '1592547996', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('189', 'admin', '200619022636500.jpg', '200619023451711.jpg', '/cos/uploads/202006/19/', '41716', 'jpg', '1', '0', '1', 'yzmcms', '1592548491', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('190', 'admin', '200608020756280.png', '200619023538256.png', '/cos/uploads/202006/19/', '72331', 'png', '1', '0', '1', 'yzmcms', '1592548538', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('191', 'admin', '200608112020873.png', '200619023555572.png', '/cos/uploads/202006/19/', '39928', 'png', '1', '0', '1', 'yzmcms', '1592548555', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('192', 'admin', '200608105143142.png', '200619023715861.png', '/cos/uploads/202006/19/', '117689', 'png', '1', '0', '1', 'yzmcms', '1592548635', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('193', 'admin', '200619015923103.jpg', '200619024513303.jpg', '/cos/uploads/202006/19/', '4094', 'jpg', '1', '0', '1', 'yzmcms', '1592549113', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('194', 'admin', '1592551287(1).jpg', '200619032147992.jpg', '/cos/uploads/202006/19/', '132414', 'jpg', '1', '0', '1', 'yzmcms', '1592551307', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('195', 'admin', '200608104349225.png', '200619034305713.png', '/cos/uploads/202006/19/', '38016', 'png', '1', '0', '1', 'yzmcms', '1592552585', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('196', 'admin', '200618055134256.png', '200619055051793.png', '/cos/uploads/202006/19/', '183910', 'png', '1', '0', '1', 'yzmcms', '1592560251', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('197', 'admin', '1592651578(1).jpg', '200620071353666.jpg', '/cos/uploads/202006/20/', '94166', 'jpg', '1', '0', '1', 'yzmcms', '1592651632', '49.77.65.249');
INSERT INTO `yzm_attachment` VALUES ('198', 'admin', 'u=2970837001,288442195&fm=214&gp=0[1].jpg', '200622095747918.jpg', '/cos/uploads/202006/22/', '28549', 'jpg', '1', '0', '1', 'yzmcms', '1592791066', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('206', 'admin', '1.jpg', '200623055641660.jpg', '/uploads/202006/23/', '33828', 'jpg', '1', '0', '1', 'yzmcms', '1592906201', '49.77.250.27');
INSERT INTO `yzm_attachment` VALUES ('207', 'index', '1.jpg', '1592966506199845.jpg', '/uploads/ueditor/image/20200624/', '33828', 'jpg', '1', '0', '1', 'yzmcms', '1592966506', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('208', 'admin', '1594005333(1).jpg', '200709094730509.jpg', '/uploads/202007/09/', '674193', 'jpg', '1', '0', '1', 'yzmcms', '1594259250', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('209', 'admin', '1594003965(1).jpg', '200709095155520.jpg', '/uploads/202007/09/', '583694', 'jpg', '1', '0', '1', 'yzmcms', '1594259515', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('210', 'admin', '1594003478(1).jpg', '200709095319748.jpg', '/uploads/202007/09/', '286306', 'jpg', '1', '0', '1', 'yzmcms', '1594259599', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('211', 'admin', '1594002589(1).jpg', '200709095736728.jpg', '/uploads/202007/09/', '820557', 'jpg', '1', '0', '1', 'yzmcms', '1594259856', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('212', 'admin', '1594001638(1).jpg', '200709095939658.jpg', '/uploads/202007/09/', '501969', 'jpg', '1', '0', '1', 'yzmcms', '1594259979', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('213', 'admin', '1593999778(1).jpg', '200709100024501.jpg', '/uploads/202007/09/', '927374', 'jpg', '1', '0', '1', 'yzmcms', '1594260024', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('214', 'banner', '上海历史博物馆.jpg', '200709112436653.jpg', '/uploads/202007/09/', '532774', 'jpg', '1', '0', '1', 'yzmcms', '1594265076', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('215', 'banner', '华北革命战争纪念馆.jpg', '200709112547478.jpg', '/uploads/202007/09/', '392582', 'jpg', '1', '0', '1', 'yzmcms', '1594265147', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('216', 'banner', '雨花台.jpg', '200709112625663.jpg', '/uploads/202007/09/', '573540', 'jpg', '1', '0', '1', 'yzmcms', '1594265185', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('217', 'banner', '朝天宫博物馆.jpg', '200709112657222.jpg', '/uploads/202007/09/', '428947', 'jpg', '1', '0', '1', 'yzmcms', '1594265217', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('218', 'banner', '西柏坡廉政教育馆.jpg', '200709112724102.jpg', '/uploads/202007/09/', '373768', 'jpg', '1', '0', '1', 'yzmcms', '1594265244', '49.65.158.69');
INSERT INTO `yzm_attachment` VALUES ('219', 'admin', 'timg[5].jpg', '200724040246125.jpg', '/uploads/202007/24/', '42006', 'jpg', '1', '0', '1', 'yzmcms', '1595577766', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('220', 'admin', 'timg[7].jpg', '200731065056750.jpg', '/uploads/202007/31/', '21009', 'jpg', '1', '0', '1', 'yzmcms', '1596192656', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('221', 'admin', 'timg[3].jpg', '200731065313360.jpg', '/uploads/202007/31/', '54645', 'jpg', '1', '0', '1', 'yzmcms', '1596192793', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('222', 'admin', 'timg[5].jpg', '200731065535727.jpg', '/uploads/202007/31/', '64873', 'jpg', '1', '0', '1', 'yzmcms', '1596192935', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('223', 'member', '摘菱角2.jpg', '200804111809954.jpg', '/uploads/202008/04/', '106123', 'jpg', '1', '0', '17', 'YHTZH', '1596511089', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('224', 'member', '商贾云集参考图.jpg', '200804113725415.jpg', '/uploads/202008/04/', '121056', 'jpg', '1', '0', '17', 'YHTZH', '1596512245', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('225', 'member', '莲花荡1.jpg', '200804113852198.jpg', '/uploads/202008/04/', '95933', 'jpg', '1', '0', '17', 'YHTZH', '1596512332', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('226', 'member', '鱼鹰捕鱼1.jpg', '200804114026509.jpg', '/uploads/202008/04/', '100411', 'jpg', '1', '0', '17', 'YHTZH', '1596512426', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('227', 'admin', 'u=2245819705,854864006&fm=26&gp=0[1].jpg', '200807061321564.jpg', '/uploads/202008/07/', '31319', 'jpg', '1', '0', '1', 'yzmcms', '1596795201', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('228', 'admin', 'u=1653864723,1900252431&fm=15&gp=0[1].jpg', '200807061733935.jpg', '/uploads/202008/07/', '26414', 'jpg', '1', '0', '1', 'yzmcms', '1596795453', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('229', 'admin', 'timg[8].jpg', '200807062343742.jpg', '/uploads/202008/07/', '28620', 'jpg', '1', '0', '1', 'yzmcms', '1596795823', '49.77.136.107');
INSERT INTO `yzm_attachment` VALUES ('230', 'admin', 'timg[7].jpg', '200817101327638.jpg', '/uploads/202008/17/', '32382', 'jpg', '1', '0', '1', 'yzmcms', '1597630407', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('231', 'admin', 'timg[9].jpg', '200817101619774.jpg', '/uploads/202008/17/', '45623', 'jpg', '1', '0', '1', 'yzmcms', '1597630579', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('232', 'admin', 'test.mp4', '200820114605590.mp4', '/uploads/202008/20/', '0', 'mp4', '0', '0', '1', 'yzmcms', '1597895165', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('233', 'admin', 'test.mp4', '200820114755117.mp4', '/uploads/202008/20/', '0', 'mp4', '0', '0', '1', 'yzmcms', '1597895275', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('234', 'admin', 'test.mp4', '200820115148746.mp4', '/uploads/202008/20/', '0', 'mp4', '0', '0', '1', 'yzmcms', '1597895508', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('235', 'admin', 'Filedata.mp4', '200820115216704.mp4', '/uploads/202008/20/', '59097107', 'mp4', '0', '0', '1', 'yzmcms', '1597895536', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('236', 'admin', 'Filedata.mp4', '200820115533393.mp4', '/uploads/202008/20/', '59097107', 'mp4', '0', '0', '1', 'yzmcms', '1597895733', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('237', 'admin', '232656.mp4', '200820023002882.mp4', '/uploads/202008/20/', '13160326', 'mp4', '0', '0', '1', 'yzmcms', '1597905002', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('238', 'admin', '1597981692(1).jpg', '200821114841706.jpg', '/uploads/202008/21/', '1400894', 'jpg', '1', '0', '1', 'yzmcms', '1597981721', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('239', 'admin', '1597981756(1).jpg', '200821114930358.jpg', '/uploads/202008/21/', '656875', 'jpg', '1', '0', '1', 'yzmcms', '1597981770', '49.77.147.31');
INSERT INTO `yzm_attachment` VALUES ('240', 'index', '3ac79f3df8dcd100ebdee882feae8614b8122ff8.jpeg', '1598522940206592.jpeg', '/uploads/ueditor/image/20200827/', '51439', 'jpeg', '1', '0', '1', 'yzmcms', '1598522940', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('241', 'index', '060828381f30e9241db383fbc72daf021c95f78b.jpeg', '1598522955977244.jpeg', '/uploads/ueditor/image/20200827/', '58236', 'jpeg', '1', '0', '1', 'yzmcms', '1598522955', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('242', 'admin', '1598598969(1).jpg', '200828031626442.jpg', '/uploads/202008/28/', '2050959', 'jpg', '1', '0', '1', 'yzmcms', '1598598986', '49.77.167.86');
INSERT INTO `yzm_attachment` VALUES ('243', 'admin', '1598599407(1).jpg', '200828032348208.jpg', '/uploads/202008/28/', '267021', 'jpg', '1', '0', '1', 'yzmcms', '1598599428', '49.77.167.86');
INSERT INTO `yzm_attachment` VALUES ('244', 'admin', '1598599552(1).jpg', '200828032631731.jpg', '/uploads/202008/28/', '1946271', 'jpg', '1', '0', '1', 'yzmcms', '1598599591', '49.77.167.86');
INSERT INTO `yzm_attachment` VALUES ('245', 'admin', '1598853311(1).jpg', '200831015550602.jpg', '/uploads/202008/31/', '2220198', 'jpg', '1', '0', '1', 'yzmcms', '1598853350', '49.77.167.86');
INSERT INTO `yzm_attachment` VALUES ('246', 'admin', '1598853311(1).jpg', '200901052230785.jpg', '/uploads/202009/01/', '2220198', 'jpg', '1', '0', '1', 'yzmcms', '1598952150', '49.77.167.86');
INSERT INTO `yzm_attachment` VALUES ('247', 'admin', '1598519024(1).jpg', '200904064317106.jpg', '/uploads/202009/04/', '564935', 'jpg', '1', '0', '1', 'yzmcms', '1599216197', '117.84.97.181');
INSERT INTO `yzm_attachment` VALUES ('248', 'admin', '200710091136514.jpg', '200924024823431.jpg', '/uploads/202009/24/', '169318', 'jpg', '1', '0', '1', 'yzmcms', '1600930103', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('249', 'admin', '200710090555154.jpg', '200924050738235.jpg', '/uploads/202009/24/', '113490', 'jpg', '1', '0', '1', 'yzmcms', '1600938458', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('250', 'admin', '200710091136514.jpg', '200925031859513.jpg', '/uploads/202009/25/', '169318', 'jpg', '1', '0', '1', 'yzmcms', '1601018339', '127.0.0.1');
INSERT INTO `yzm_attachment` VALUES ('251', 'admin', '200710090555154.jpg', '200925031903143.jpg', '/uploads/202009/25/', '113490', 'jpg', '1', '0', '1', 'yzmcms', '1601018343', '127.0.0.1');

-- ----------------------------
-- Table structure for yzm_banner
-- ----------------------------
DROP TABLE IF EXISTS `yzm_banner`;
CREATE TABLE `yzm_banner` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `image` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(150) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1显示0隐藏',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `typeid` (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_banner
-- ----------------------------
INSERT INTO `yzm_banner` VALUES ('11', '5', '/uploads/202007/09/200709112724102.jpg', 'http://www.hongyanlv.com/activity/4.html', '1594265265', '5', '0', '1');
INSERT INTO `yzm_banner` VALUES ('9', '3', '/uploads/202007/09/200709112625663.jpg', 'http://www.hongyanlv.com/activity/19.html', '1594265199', '3', '0', '1');
INSERT INTO `yzm_banner` VALUES ('10', '4', '/uploads/202007/09/200709112657222.jpg', 'http://www.hongyanlv.com/activity/24.html', '1594265232', '4', '0', '1');
INSERT INTO `yzm_banner` VALUES ('8', '2', '/uploads/202007/09/200709112547478.jpg', 'http://www.hongyanlv.com/activity/6.html', '1594265167', '2', '0', '1');
INSERT INTO `yzm_banner` VALUES ('7', '1', '/uploads/202007/09/200709112436653.jpg', 'http://www.hongyanlv.com/activity/15.html', '1594265132', '1', '0', '1');

-- ----------------------------
-- Table structure for yzm_banner_type
-- ----------------------------
DROP TABLE IF EXISTS `yzm_banner_type`;
CREATE TABLE `yzm_banner_type` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_banner_type
-- ----------------------------
INSERT INTO `yzm_banner_type` VALUES ('1', 'sss');

-- ----------------------------
-- Table structure for yzm_category
-- ----------------------------
DROP TABLE IF EXISTS `yzm_category`;
CREATE TABLE `yzm_category` (
  `catid` smallint(5) NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `catname` varchar(50) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '模型id',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '父级id',
  `arrparentid` varchar(255) NOT NULL DEFAULT '' COMMENT '父级路径',
  `arrchildid` mediumtext NOT NULL COMMENT '子栏目id集合',
  `catdir` varchar(30) NOT NULL DEFAULT '' COMMENT '栏目目录',
  `catimg` varchar(150) NOT NULL DEFAULT '' COMMENT '栏目图片',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '栏目类型:0普通栏目1单页2外部链接',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目排序',
  `member_publish` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否会员投稿',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '在导航显示',
  `pclink` varchar(100) NOT NULL DEFAULT '' COMMENT '电脑版地址',
  `moblink` varchar(100) NOT NULL DEFAULT '' COMMENT '手机版地址',
  `subtitle` varchar(60) NOT NULL DEFAULT '' COMMENT '副标题',
  `mobname` varchar(30) NOT NULL DEFAULT '' COMMENT '手机版名称',
  `category_template` varchar(30) NOT NULL DEFAULT '' COMMENT '频道页模板',
  `list_template` varchar(30) NOT NULL DEFAULT '' COMMENT '列表页模板',
  `show_template` varchar(30) NOT NULL DEFAULT '' COMMENT '内容页模板',
  `seo_title` varchar(100) NOT NULL DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) NOT NULL DEFAULT '' COMMENT 'SEO关键字',
  `seo_description` varchar(250) NOT NULL DEFAULT '' COMMENT 'SEO描述',
  PRIMARY KEY (`catid`),
  KEY `modelid` (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_category
-- ----------------------------
INSERT INTO `yzm_category` VALUES ('90', '数字博物馆列表', '7', '0', '0', '90', 'museum', '', '0', '0', '0', '0', 'http://www.yht.test.com/museum/', '', '', '数字博物馆列表', 'category_article', 'list_museum', 'show_activity', '', '', '');
INSERT INTO `yzm_category` VALUES ('89', '资源列表', '7', '0', '0', '89', 'ziyuanliebiao', '', '0', '0', '1', '0', 'http://www.yht.test.com/ziyuanliebiao/', '', '', '资源列表', 'category_article', 'list_article_img', 'show_resource', '', '', '');
INSERT INTO `yzm_category` VALUES ('69', '传统文化', '5', '0', '0', '69', 'activity', '/cos/uploads/202006/15/200615021605298.jpg', '0', '0', '1', '1', 'http://www.yht.test.com/activity/', '', '', '传统文化', 'category_jidi', 'list_activity', 'show_activity', '', '', '');
INSERT INTO `yzm_category` VALUES ('72', '创新文教', '1', '0', '0', '72', 'article', '', '0', '3', '1', '1', 'http://www.yht.test.com/article/', '', '', '创新文教', 'category_article', 'list_article', 'show_article', '', '', '');
INSERT INTO `yzm_category` VALUES ('70', '红文之旅', '6', '0', '0', '70', 'teacher', '', '0', '1', '1', '1', 'http://www.yht.test.com/teacher/', '', '', '红文之旅', 'category_jidi', 'list_teacher', 'show_teacher', '', '', '');
INSERT INTO `yzm_category` VALUES ('71', '战争秘史', '9', '0', '0', '71', 'minijidi', '', '0', '2', '1', '1', 'http://www.yht.test.com/minijidi/', '', '', '战争秘史', 'category_minijd', 'list_mini', 'show_mini', '', '', '');
INSERT INTO `yzm_category` VALUES ('91', '数字博物馆全展示', '7', '0', '0', '91', 'allmuseum', '', '0', '0', '0', '0', 'http://www.yht.test.com/allmuseum/', '', '', '数字博物馆全展示', 'category_article', 'all_museum', 'show_activity', '', '', '');

-- ----------------------------
-- Table structure for yzm_collection_content
-- ----------------------------
DROP TABLE IF EXISTS `yzm_collection_content`;
CREATE TABLE `yzm_collection_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:未采集,1:已采集,2:已导入',
  `url` char(255) NOT NULL DEFAULT '',
  `title` char(100) NOT NULL DEFAULT '',
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nodeid` (`nodeid`),
  KEY `status` (`status`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_collection_content
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_collection_node
-- ----------------------------
DROP TABLE IF EXISTS `yzm_collection_node`;
CREATE TABLE `yzm_collection_node` (
  `nodeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT COMMENT '采集节点ID',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '节点名称',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后采集时间',
  `sourcecharset` varchar(8) NOT NULL DEFAULT '' COMMENT '采集点字符集',
  `sourcetype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '网址类型:1序列网址,2单页',
  `urlpage` text NOT NULL COMMENT '采集地址',
  `pagesize_start` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '页码开始',
  `pagesize_end` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '页码结束',
  `par_num` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '每次增加数',
  `url_contain` char(100) NOT NULL DEFAULT '' COMMENT '网址中必须包含',
  `url_except` char(100) NOT NULL DEFAULT '' COMMENT '网址中不能包含',
  `url_start` char(100) NOT NULL DEFAULT '' COMMENT '网址开始',
  `url_end` char(100) NOT NULL DEFAULT '' COMMENT '网址结束',
  `title_rule` char(100) NOT NULL DEFAULT '' COMMENT '标题采集规则',
  `title_html_rule` text NOT NULL COMMENT '标题过滤规则',
  `time_rule` char(100) NOT NULL DEFAULT '' COMMENT '时间采集规则',
  `time_html_rule` text COMMENT '时间过滤规则',
  `content_rule` char(100) NOT NULL DEFAULT '' COMMENT '内容采集规则',
  `content_html_rule` text COMMENT '内容过滤规则',
  `down_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否下载图片',
  `watermark` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '图片加水印',
  `coll_order` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '导入顺序',
  PRIMARY KEY (`nodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_collection_node
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_comment
-- ----------------------------
DROP TABLE IF EXISTS `yzm_comment`;
CREATE TABLE `yzm_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` char(30) NOT NULL DEFAULT '',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `userpic` varchar(100) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '评论状态{0:未审核,1:通过审核}',
  `reply` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '是否为回复',
  PRIMARY KEY (`id`),
  KEY `commentid` (`commentid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_comment
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_comment_data
-- ----------------------------
DROP TABLE IF EXISTS `yzm_comment_data`;
CREATE TABLE `yzm_comment_data` (
  `commentid` char(30) NOT NULL DEFAULT '',
  `title` char(255) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `total` int(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`commentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_comment_data
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_config
-- ----------------------------
DROP TABLE IF EXISTS `yzm_config`;
CREATE TABLE `yzm_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '配置名称',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '配置类型',
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '配置说明',
  `value` text NOT NULL COMMENT '配置值',
  `fieldtype` varchar(20) NOT NULL DEFAULT '' COMMENT '字段类型',
  `setting` text COMMENT '字段设置',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_config
-- ----------------------------
INSERT INTO `yzm_config` VALUES ('1', 'site_name', '0', '站点名称', '红研旅虚拟旅游研学平台', '', '', '1');
INSERT INTO `yzm_config` VALUES ('2', 'site_url', '0', '站点根网址', 'http://www.yht.test.com/', '', '', '1');
INSERT INTO `yzm_config` VALUES ('3', 'site_keyword', '0', '站点关键字', 'hongyanlv', '', '', '1');
INSERT INTO `yzm_config` VALUES ('4', 'site_description', '0', '站点描述', '针对线上实景研学的需求，融合全景展示、实景复建、云直播、远程教育等先进技术，按照南师大“场景化、引导式、一带多”教育理念设计打造行业领先的VR直播线上实景课堂，由专业讲解员带领学员一边在虚拟场景中游览，一边讲解相关知识，让名师带领学员足不出户探索红文基地背后的故事。\r\n', '', '', '1');
INSERT INTO `yzm_config` VALUES ('5', 'site_copyright', '0', '版权信息', '南京泛在实境科技有限公司', '', '', '1');
INSERT INTO `yzm_config` VALUES ('6', 'site_filing', '0', '站点备案号', '京ICP备666666号', '', '', '1');
INSERT INTO `yzm_config` VALUES ('7', 'site_code', '0', '统计代码', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('8', 'site_theme', '0', '站点模板主题', 'hongyanlv', '', '', '1');
INSERT INTO `yzm_config` VALUES ('9', 'site_logo', '0', '站点logo', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('10', 'url_mode', '0', '前台URL模式', '1', '', '', '1');
INSERT INTO `yzm_config` VALUES ('11', 'is_words', '0', '是否开启前端留言功能', '1', '', '', '1');
INSERT INTO `yzm_config` VALUES ('12', 'upload_maxsize', '0', '允许上传附件大小', '2048000', '', '', '1');
INSERT INTO `yzm_config` VALUES ('13', 'upload_types', '0', '允许上传附件类型', 'zip|rar|mp3|mp4', '', '', '1');
INSERT INTO `yzm_config` VALUES ('14', 'ishtml5', '0', '选择上传附件插件类型', '1', '', '', '1');
INSERT INTO `yzm_config` VALUES ('15', 'watermark_enable', '0', '是否开启图片水印', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('16', 'watermark_name', '0', '水印图片名称', 'mark.png', '', '', '1');
INSERT INTO `yzm_config` VALUES ('17', 'watermark_position', '0', '水印的位置', '9', '', '', '1');
INSERT INTO `yzm_config` VALUES ('18', 'mail_server', '1', 'SMTP服务器', 'smtp.qq.com', '', '', '1');
INSERT INTO `yzm_config` VALUES ('19', 'mail_port', '1', 'SMTP服务器端口', '25', '', '', '1');
INSERT INTO `yzm_config` VALUES ('20', 'mail_from', '1', 'SMTP服务器的用户邮箱', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('21', 'mail_auth', '1', 'AUTH LOGIN验证', '1', '', '', '1');
INSERT INTO `yzm_config` VALUES ('22', 'mail_user', '1', 'SMTP服务器的用户帐号', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('23', 'mail_pass', '1', 'SMTP服务器的用户密码', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('24', 'mail_inbox', '1', '收件邮箱地址', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('25', 'admin_log', '2', '启用后台管理操作日志', '1', '', '', '1');
INSERT INTO `yzm_config` VALUES ('26', 'admin_prohibit_ip', '2', '禁止登录后台的IP', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('27', 'prohibit_words', '2', '屏蔽词', '她妈|它妈|他妈|你妈|去死|贱人', '', '', '1');
INSERT INTO `yzm_config` VALUES ('28', 'comment_check', '2', '是否开启评论审核', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('29', 'comment_tourist', '2', '是否允许游客评论', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('30', 'is_link', '2', '允许用户申请友情链接', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('31', 'member_register', '3', '是否开启会员注册', '1', '', '', '1');
INSERT INTO `yzm_config` VALUES ('32', 'member_email', '3', '新会员注册是否需要邮件验证', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('33', 'member_check', '3', '新会员注册是否需要管理员审核', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('34', 'member_point', '3', '新会员默认积分', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('35', 'member_yzm', '3', '是否开启会员登录验证码', '1', '', '', '1');
INSERT INTO `yzm_config` VALUES ('36', 'rmb_point_rate', '3', '1元人民币购买积分数量', '10', '', '', '1');
INSERT INTO `yzm_config` VALUES ('37', 'login_point', '3', '每日登录奖励积分', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('38', 'comment_point', '3', '发布评论奖励积分', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('39', 'publish_point', '3', '投稿奖励积分', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('40', 'qq_app_id', '3', 'QQ App ID', 'f', '', '', '1');
INSERT INTO `yzm_config` VALUES ('41', 'qq_app_key', '3', 'QQ App key', 'fr', '', '', '1');
INSERT INTO `yzm_config` VALUES ('42', 'weibo_key', '4', '微博登录App Key', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('43', 'weibo_secret', '4', '微博登录App Secret', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('44', 'wx_appid', '4', '微信开发者ID', 'wx5924b84b866e1db9', '', '', '1');
INSERT INTO `yzm_config` VALUES ('45', 'wx_secret', '4', '微信开发者密码', 'f9607b5a464ebb9f5778cad79f53f287', '', '', '1');
INSERT INTO `yzm_config` VALUES ('46', 'wx_token', '4', '微信Token签名', 'hood', '', '', '1');
INSERT INTO `yzm_config` VALUES ('47', 'wx_encodingaeskey', '4', '微信EncodingAESKey', 'j4ZPgtQD2l80vt2FX24SOq7EGY73sou4P0OOF3YImUX', '', '', '1');
INSERT INTO `yzm_config` VALUES ('48', 'wx_relation_model', '4', '微信关联模型', 'article', '', '', '1');
INSERT INTO `yzm_config` VALUES ('49', 'baidu_push_token', '0', '百度推送token', '', '', '', '1');
INSERT INTO `yzm_config` VALUES ('50', 'thumb_width', '2', '缩略图默认宽度', '500', '', '', '1');
INSERT INTO `yzm_config` VALUES ('51', 'thumb_height', '2', '缩略图默认高度', '300', '', '', '1');
INSERT INTO `yzm_config` VALUES ('53', 'search_page', '3', '前端搜索每页展示条数', '10', '', '', '1');
INSERT INTO `yzm_config` VALUES ('54', 'keyword_link', '2', '是否启用关键字替换', '0', '', '', '1');
INSERT INTO `yzm_config` VALUES ('55', 'keyword_replacenum', '2', '关键字替换次数', '1', '', '', '1');

-- ----------------------------
-- Table structure for yzm_download
-- ----------------------------
DROP TABLE IF EXISTS `yzm_download`;
CREATE TABLE `yzm_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `seo_title` varchar(200) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `groupids_view` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  `down_url` varchar(200) NOT NULL DEFAULT '' COMMENT '下载地址',
  `copytype` varchar(30) NOT NULL DEFAULT '' COMMENT '授权形式',
  `systems` varchar(100) NOT NULL DEFAULT '' COMMENT '平台',
  `language` varchar(30) NOT NULL DEFAULT '' COMMENT '语言',
  `version` varchar(30) NOT NULL DEFAULT '' COMMENT '版本',
  `filesize` varchar(10) NOT NULL DEFAULT '' COMMENT '文件大小',
  `classtype` varchar(30) NOT NULL DEFAULT '' COMMENT '软件类型',
  `stars` varchar(10) NOT NULL DEFAULT '' COMMENT '评分等级',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`),
  KEY `catid` (`catid`,`status`),
  KEY `userid` (`userid`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_download
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_favorite
-- ----------------------------
DROP TABLE IF EXISTS `yzm_favorite`;
CREATE TABLE `yzm_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL DEFAULT '',
  `url` char(100) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_favorite
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_guestbook
-- ----------------------------
DROP TABLE IF EXISTS `yzm_guestbook`;
CREATE TABLE `yzm_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL DEFAULT '' COMMENT '主题',
  `booktime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '名字',
  `email` varchar(40) NOT NULL DEFAULT '' COMMENT '留言人电子邮箱',
  `phone` varchar(11) NOT NULL DEFAULT '' COMMENT '留言人电话',
  `qq` varchar(11) NOT NULL DEFAULT '' COMMENT '留言人qq',
  `address` varchar(100) NOT NULL DEFAULT '' COMMENT '留言人地址',
  `bookmsg` text NOT NULL COMMENT '内容',
  `ip` varchar(20) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `ischeck` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否审核',
  `isread` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否读过',
  `ispc` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1电脑,0手机',
  `replyid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复的id',
  PRIMARY KEY (`id`),
  KEY `index_booktime` (`booktime`),
  KEY `index_ischeck` (`ischeck`),
  KEY `index_replyid` (`replyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_guestbook
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_jd
-- ----------------------------
DROP TABLE IF EXISTS `yzm_jd`;
CREATE TABLE `yzm_jd` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `seo_title` varchar(200) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `groupids_view` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`),
  KEY `catid` (`catid`,`status`),
  KEY `userid` (`userid`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_jd
-- ----------------------------
INSERT INTO `yzm_jd` VALUES ('5', '71', '1', 'yzmcms', '管理员', '西柏坡', '西柏坡_红研旅虚拟旅游研学平台', '', '1592211411', '1592449321', '', '西柏坡', '59', '<p>西柏坡</p>', '原创', '/uploads/202006/08/200608114933356.png', 'http://www.yht.test.com/minijidi/5.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_jd` VALUES ('4', '71', '1', 'yzmcms', '管理员', '古田会议遗址', '古田会议遗址_红研旅虚拟旅游研学平台', '', '1592211364', '1592449329', '', '古田会议遗址', '53', '<p>古田会议遗址</p>', '原创', '/uploads/202006/08/200608115409470.png', 'http://www.yht.test.com/minijidi/4.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_jd` VALUES ('8', '71', '1', 'yzmcms', '管理员', '雨花台', '雨花台_红研旅虚拟旅游研学平台', '', '1592546142', '1600937156', '', '雨花台烈士陵园，位于南京市雨花台区雨花台丘陵中岗，是新中国规模最大的纪念性陵园，首批国家AAAA级旅游景区，全国重点文物保护单位，全国爱国主义教育示范基地，面积1.13平方千米。陵园包括雨花台主峰等5个山岗，以主峰为中心形成南北向中轴线，自南向北有南大门、 广场、 纪念馆、纪念桥、革命烈士纪念碑、北殉难处烈士大型雕像、北大门以及西殉难处烈士墓群、东殉难处烈士墓群，纪念亭等。', '306', '<p>上午: 9:00 - 10:00&nbsp; &nbsp;10:30 - 11:30<br/></p>', '原创', '/cos/uploads/202006/19/200619024513303.jpg', 'http://www.yht.test.com/minijidi/8.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_jd` VALUES ('6', '71', '1', 'yzmcms', '管理员', '上海历史博物馆', '上海历史博物馆_红研旅虚拟旅游研学平台', '', '1592211445', '1592903938', '', '上海历史博物馆', '73', '<p>上海历史博物馆</p>', '原创', '/uploads/202006/08/200605063514383.png', 'http://www.yht.test.com/minijidi/6.html', '', '1', '1', '10', '0', '0', '1', '0');
INSERT INTO `yzm_jd` VALUES ('7', '71', '1', 'yzmcms', '管理员', '华北革命战争历史博物馆', '华北革命战争历史博物馆_红研旅虚拟旅游研学平台', '', '1592211482', '1592449301', '', '华北革命战争历史博物馆', '111', '<p>华北革命战争历史博物馆</p>', '原创', '/uploads/202006/08/200608120940359.png', 'http://www.yht.test.com/minijidi/7.html', '', '1', '1', '10', '0', '0', '1', '0');

-- ----------------------------
-- Table structure for yzm_keyword_link
-- ----------------------------
DROP TABLE IF EXISTS `yzm_keyword_link`;
CREATE TABLE `yzm_keyword_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(36) NOT NULL DEFAULT '' COMMENT '关键字',
  `url` varchar(100) NOT NULL DEFAULT '' COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_keyword_link
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_link
-- ----------------------------
DROP TABLE IF EXISTS `yzm_link`;
CREATE TABLE `yzm_link` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1首页,2列表页,3内容页',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:文字链接,1:logo链接',
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `msg` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未通过,1正常,2未审核',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_typeid` (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_link
-- ----------------------------
INSERT INTO `yzm_link` VALUES ('1', '0', '0', 'YzmCMS官方网站', 'http://www.yzmcms.com/', '', '', '袁志蒙', '', '1', '1', '1483095485');
INSERT INTO `yzm_link` VALUES ('2', '0', '0', 'YzmCMS官方论坛', 'http://bbs.yzmcms.com/', '', '', '袁志蒙', '', '1', '1', '1483095496');

-- ----------------------------
-- Table structure for yzm_member
-- ----------------------------
DROP TABLE IF EXISTS `yzm_member`;
CREATE TABLE `yzm_member` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL DEFAULT '',
  `lastip` char(15) NOT NULL DEFAULT '',
  `loginnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `email` char(32) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '金钱',
  `experience` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '经验',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '积分',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0待审核,1正常,2锁定,3拒绝',
  `vip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overduedate` int(10) unsigned NOT NULL DEFAULT '0',
  `email_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `problem` varchar(39) NOT NULL DEFAULT '' COMMENT '安全问题',
  `answer` varchar(30) NOT NULL DEFAULT '' COMMENT '答案',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_member
-- ----------------------------
INSERT INTO `yzm_member` VALUES ('1', 'tang', 'f1688046cb01854150d87adbf01caea2', '1589650688', '1591667274', '192.168.31.137', '49.77.250.27', '40', 'foxhuntd@gmail.com', '1', '0.00', '12', '12', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('2', 'tfew', 'ffe317ecad2405070e6f5ffefb3a38a5', '1589797181', '1590655392', '127.0.0.1', '47.57.190.74', '2', 'tangshengchao@hotmail.com', '1', '0.00', '1', '1', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('3', 'gggg', 'ffe317ecad2405070e6f5ffefb3a38a5', '1590436706', '1590653379', '192.168.31.137', '47.57.190.74', '3', 'gggg@gmail.com', '1', '0.00', '306', '5', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('7', 'oZgYfwF9GuwovuJxz8BqYZ0s32Q0', 'b1a6a23f96a976c0745872caaf39b9ad', '1590568986', '1592213784', '183.209.140.41', '183.209.143.136', '46', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('8', 'oZgYfwNFrZvcLsmhg4svvlnhhUTM', 'b1a6a23f96a976c0745872caaf39b9ad', '1590570796', '1590570796', '223.104.4.38', '223.104.4.38', '0', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('9', 'oZgYfwCVqLwkU6XycoYi7rd-1ahs', 'b1a6a23f96a976c0745872caaf39b9ad', '1590571273', '1590571273', '112.224.1.134', '112.224.1.134', '0', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('10', 'oZgYfwDuXBtWogwZtjwRQ6D2pi1w', 'b1a6a23f96a976c0745872caaf39b9ad', '1590621518', '1592650893', '112.4.45.250', '117.136.66.119', '17', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('11', 'oZgYfwLXKzv7jd_aZJ3-ldyxP9-I', 'b1a6a23f96a976c0745872caaf39b9ad', '1590628747', '1592534836', '49.77.137.151', '49.77.250.27', '32', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('19', 'JS', 'ffe317ecad2405070e6f5ffefb3a38a5', '1591071384', '1597630687', '49.77.137.151', '49.77.147.31', '48', 'JS@163.com', '2', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('20', 'JS2', 'ffe317ecad2405070e6f5ffefb3a38a5', '1591073946', '1592535043', '49.77.137.151', '49.77.250.27', '3', 'JS2@163.com', '2', '0.00', '51', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('21', 'oZgYfwOJa0UByUX3Q8e151qQtjA0', 'b1a6a23f96a976c0745872caaf39b9ad', '1591080963', '1591685654', '49.77.137.151', '117.136.45.158', '5', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('18', 'TYZ', 'ffe317ecad2405070e6f5ffefb3a38a5', '1591070578', '1591070816', '49.77.137.151', '49.77.137.151', '1', 'TYZ@163.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('17', 'YHTZH', 'ffe317ecad2405070e6f5ffefb3a38a5', '1591070067', '1600828607', '49.77.137.151', '45.77.11.214', '241', 'aaa@163.com', '3', '0.00', '0', '0', '1', '0', '0', '0', '你的父亲叫什么名字？', '郭洪');
INSERT INTO `yzm_member` VALUES ('22', 'oZgYfwM70ohGqzNqaKQ7QNDvndzQ', 'b1a6a23f96a976c0745872caaf39b9ad', '1591612685', '1591693372', '117.136.45.107', '49.77.250.27', '15', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('23', 'oZgYfwF2kJexSnZmZ6hroxL1CZok', 'b1a6a23f96a976c0745872caaf39b9ad', '1591673200', '1592811909', '49.77.250.27', '49.77.250.27', '14', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('24', 'oZgYfwP1cg8_fOJSmO1d78_b0lDI', 'b1a6a23f96a976c0745872caaf39b9ad', '1591673436', '1592529462', '223.104.4.73', '49.94.155.226', '2', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('25', 'ffff', 'ffe317ecad2405070e6f5ffefb3a38a5', '1591675561', '1592530524', '183.209.142.164', '49.77.250.27', '34', 'rrrr@gmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('26', 'oZgYfwNIMJA8-7PB8SQYBM4BCJnQ', 'b1a6a23f96a976c0745872caaf39b9ad', '1591685506', '1591685506', '49.77.250.27', '49.77.250.27', '0', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('29', 'chenwenjie', 'ffe317ecad2405070e6f5ffefb3a38a5', '1592545850', '1599181910', '222.192.2.124', '49.94.154.2', '1', 'gxl1217x@163.com', '2', '0.00', '51', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('27', 'oZgYfwA-kgRVbsoHcHroOU-Rg388', 'b1a6a23f96a976c0745872caaf39b9ad', '1591685710', '1591685710', '49.94.70.42', '49.94.70.42', '0', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('28', 'gxl1217x', 'ffe317ecad2405070e6f5ffefb3a38a5', '1592299577', '1600658588', '49.77.250.27', '49.77.167.86', '45', 'gxl1217x@163.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('30', 'xiemeixia', 'ffe317ecad2405070e6f5ffefb3a38a5', '1592545872', '1599267984', '222.192.2.124', '223.104.145.165', '12', 'gxl1217x@163.com', '2', '0.00', '51', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('31', 'caodanni', 'ffe317ecad2405070e6f5ffefb3a38a5', '1592545890', '1594259047', '222.192.2.124', '49.65.158.69', '1', 'gxl1217x@163.com', '2', '0.00', '51', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('32', 'guoqi', 'ffe317ecad2405070e6f5ffefb3a38a5', '1592545905', '1599200531', '222.192.2.124', '49.94.142.174', '5', 'gxl1217x@163.com', '2', '0.00', '51', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('33', 'zhangchen', 'ffe317ecad2405070e6f5ffefb3a38a5', '1592548581', '1599113474', '49.77.250.27', '49.78.18.250', '13', 'gxl1217x@163.com', '2', '0.00', '51', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('34', 'oZgYfwGoklf_7_-1fYFaAKbFvpPM', 'b1a6a23f96a976c0745872caaf39b9ad', '1592648194', '1592705438', '112.0.62.249', '49.94.175.107', '2', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('35', 'mayang', 'ffe317ecad2405070e6f5ffefb3a38a5', '1592880411', '0', '49.77.250.27', '', '0', 'gxl1217x@163.com', '2', '0.00', '51', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('36', 'oZgYfwGp5ofQKa6BepB732eVADpk', 'b1a6a23f96a976c0745872caaf39b9ad', '1592892764', '1592892764', '122.96.42.136', '122.96.42.136', '0', 'test@hotmail.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('37', '1111', '0fd73d7f48f4eb07cb1d54b58da36603', '1594907193', '1594907726', '222.94.36.62', '222.94.36.62', '1', 'qianmo80@163.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('42', 'user017', 'ffe317ecad2405070e6f5ffefb3a38a5', '1597982489', '1599441569', '49.77.147.31', '49.78.106.172', '18', 'gxl1217x@163.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('38', 'moyu', '1aeaec9b7071143da67658b5c50865ec', '1596077648', '1596077764', '49.77.136.107', '49.77.136.107', '1', '522456024@qq.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('39', '111', 'ffe317ecad2405070e6f5ffefb3a38a5', '1596505349', '1596505349', '49.77.136.107', '49.77.136.107', '0', '1111@123.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('40', '123', '2182a820a5d0a7abc055e3e7ba37ed62', '1596506041', '1596506930', '49.77.136.107', '49.77.136.107', '2', '123@1.c', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('41', 'user001', '0fd73d7f48f4eb07cb1d54b58da36603', '1596509040', '1596510038', '49.77.136.107', '49.77.136.107', '4', '111@123.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('43', 'user018', 'ffe317ecad2405070e6f5ffefb3a38a5', '1598584162', '1599464963', '49.77.167.86', '45.77.11.214', '6', '13913870757@163.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('44', 'tch01', 'ffe317ecad2405070e6f5ffefb3a38a5', '1599035363', '1600910505', '45.77.11.214', '49.77.167.86', '11', 'tch01@hongyanlv.com', '5', '0.00', '201', '0', '1', '0', '0', '0', '', '');
INSERT INTO `yzm_member` VALUES ('45', 'jjk', 'ffe317ecad2405070e6f5ffefb3a38a5', '1599357170', '1599441327', '49.94.71.29', '49.78.106.172', '1', '4641325@qq.com', '1', '0.00', '0', '0', '1', '0', '0', '0', '', '');

-- ----------------------------
-- Table structure for yzm_member_authorization
-- ----------------------------
DROP TABLE IF EXISTS `yzm_member_authorization`;
CREATE TABLE `yzm_member_authorization` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `authname` varchar(10) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  `userinfo` varchar(255) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `authindex` (`authname`,`token`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_member_authorization
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_member_content
-- ----------------------------
DROP TABLE IF EXISTS `yzm_member_content`;
CREATE TABLE `yzm_member_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `checkid` char(12) NOT NULL DEFAULT '' COMMENT 'modelid_id',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(30) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_member_content
-- ----------------------------
INSERT INTO `yzm_member_content` VALUES ('13', '1_17', '36', '17', 'YHTZH', '国际博物馆日 | 革命文物的活化与传承 ', '1591582215', '1591582215', '1');
INSERT INTO `yzm_member_content` VALUES ('14', '1_18', '36', '17', 'YHTZH', '国际博物馆日 | 原创展“初心永恒--砥砺奋进的五年”速览啦~ ', '1591582364', '1591582364', '1');

-- ----------------------------
-- Table structure for yzm_member_detail
-- ----------------------------
DROP TABLE IF EXISTS `yzm_member_detail`;
CREATE TABLE `yzm_member_detail` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sex` varchar(6) NOT NULL DEFAULT '',
  `realname` varchar(30) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `nickname` char(20) NOT NULL DEFAULT '',
  `qq` char(11) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  `phone` char(10) NOT NULL DEFAULT '',
  `userpic` varchar(255) NOT NULL DEFAULT '',
  `birthday` char(10) NOT NULL DEFAULT '' COMMENT '生日',
  `industry` varchar(60) NOT NULL DEFAULT '' COMMENT '行业',
  `area` varchar(60) NOT NULL DEFAULT '',
  `motto` varchar(210) NOT NULL DEFAULT '' COMMENT '个性签名',
  `introduce` text COMMENT '个人简介',
  `guest` int(10) unsigned NOT NULL DEFAULT '0',
  `fans` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '粉丝数',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_member_detail
-- ----------------------------
INSERT INTO `yzm_member_detail` VALUES ('1', '男', '', '汤胜超', '277941451', '13851982375', '', '/uploads/202006/09/200609095244136.png', '', '', '北京|市辖区|东城区', '', '', '5', '0');
INSERT INTO `yzm_member_detail` VALUES ('2', '', '', 'tfew', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('3', '男', '', 'gggg', '', '', '', '/uploads/202005/26/200526035906223.png', '', '', '北京|市辖区|东城区', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('7', '', '', 'FOXhunt', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/fc1qqUhicx1IOG1JicbdjicQv7z4CJicvqU9EojuU4uUVqrNsgILIQh2FrMnFoMtCZbdOaKvMg3Qz7EDM7yJMSZ9Aw/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('8', '', '', '阿琊', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/luGOSzjhPgmIudYTXRJz7Abm6SkRN4hU7vAZYwCN4oicibBvr6C4MzugFZriceFtOZTjTyHqmkX8LnxJQwDTOw1wA/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('9', '', '', 'RH', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/wzAj9kMHbPcFLw9tSE0fH7GMD9G1DdkRwo8IzU0xiabp3HFib8Md1fDJ54KbNbUZRew2vSITPDkwibcU9KvcXea2A/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('10', '', '', '韩宇', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/PiajxSqBRaEJOcib9EbFT79GAjnHPa9mqgRmWIISj2ZoCWIu0E18FBUdkUA7aVHHF7tbbNgd8xr6KhksdhYkbdgg/132', '', '', '', '', '', '1', '0');
INSERT INTO `yzm_member_detail` VALUES ('11', '男', '', '断手维德', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTI276iaNqIaQRnAafMkiaNhjQJUniautNqWX0Rm0ib8BiaEDSSZF1Dz3rz0icWYvhnu7iayzvcOzglRRbBdA/132', '', '', '北京|市辖区|东城区', '', '', '1', '0');
INSERT INTO `yzm_member_detail` VALUES ('18', '', '', 'TYZ', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('19', '男', '', 'JS', '', '', '', '', '', '', '北京|市辖区|东城区', '', '', '6', '0');
INSERT INTO `yzm_member_detail` VALUES ('20', '', '', 'JS2', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('17', '男', '', 'YHTZH', '', '', '', '/uploads/202007/10/200710090555154.jpg', '', '', '北京|市辖区|东城区', '', '', '2', '0');
INSERT INTO `yzm_member_detail` VALUES ('21', '', '', '生物课代表', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/xqpCtHRBBmdqXvCK7O8iarJoaAReNCAicDfsJ8IbfWibQvVXmVeuOAbYiaM3a5HLvbZ4icsuic20Azpel46oRLm2y5Cg/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('22', '', '', '阿汤', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83eoqS8CUq3ycprtj4oXJS0MaDibUibmJJHLhxMNBZsT6LPzGNibcUyettXhjRoSjXHSZ2Yia9QhGN9WCiaA/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('23', '', '', '桃子呀', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/V7GqQKdFkK2WanwcgGSiaaKBxVbsFXa33s1ve2RtWPF8Pd8uQU6t5XAWLb51gEqzhm5ue1NjFCagZMgA0gCjYbg/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('24', '', '', '莫属', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/DYAIOgq83ep00CpTB5wf3QK3S7PAkV05lW0NECvg1K1gY2qrU62ARAJdyR1XuWiatFiaqkyibFB7dFV7Q3yYVdatw/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('25', '男', '', 'ffff', '', '', '', '', '', '', '北京|市辖区|东城区', '', '', '1', '0');
INSERT INTO `yzm_member_detail` VALUES ('26', '', '', '', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTK7OaqU7hxk9pvCMdM7ZBvHycn6hxElg7ywxxKxEHuz3eOy0pzKRW8DtnZ9XnJ30TX3IkOuyn2Lgg/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('27', '', '', '岩', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/ZxoeKsuCoJJsVeagOkE4xcfjSeYrS2G6mCPUcqaT67oaKevHibPVFH6gMpJSrZLfibu46ibACEyLY7n8CHuY8OGHg/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('28', '', '', 'gxl1217x', '', '', '', '/uploads/202007/10/200710091136514.jpg', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('29', '', '', 'chenwenjie', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('30', '', '', 'xiemeixia', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('31', '', '', 'caodanni', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('32', '', '', 'guoqi', '', '', '', '', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('33', '', '', 'zhangchen', '', '', '', '/cos/uploads/202006/19/200619055250894.jpg', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('34', '', '', '闫琪', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/SiaBGUEqBAl99nXS0gicgOY5kpP2J3uDaiafvefXdYB8h1gXKtCl5mQfrtaxCTMmC1JaK7AfIdOzic8e1tOu4TAicqg/132', '', '', '', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('35', '', '', 'mayang', '', '', '', '', '', '', '', '', null, '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('36', '', '', '宁云地产佳乐诚分公司', '', '', '', 'http://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJ1DF8Z5QtcVFrCLCpuBs1HoRFup3ic2EssMaIiahUalQtAMwuA7ian5vRy5KoVqvAlE4WhjOaQOqABw/132', '', '', '', '', null, '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('37', '', '', '1111', '', '', '', '', '', '', '', '', null, '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('38', '', '', 'moyu', '', '', '', '', '', '', '', '', null, '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('39', '', '', '111', '', '', '', '', '', '', '', '', null, '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('40', '女', '', '123', '123123123', '15611111112', '', '/uploads/202008/04/200804101959616.jpg', '', '', '北京|市辖区|东城区', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('41', '女', '', 'user001', '123456', '15612345678', '', '/uploads/202008/04/200804110136810.jpg', '', '', '北京|市辖区|东城区', '', '', '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('42', '', '', 'user017', '', '', '', '', '', '', '', '', null, '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('43', '', '', 'user018', '', '', '', '', '', '', '', '', null, '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('44', '', '', 'tch01', '', '', '', '', '', '', '', '', null, '0', '0');
INSERT INTO `yzm_member_detail` VALUES ('45', '', '', 'jjk', '', '', '', '', '', '', '', '', null, '0', '0');

-- ----------------------------
-- Table structure for yzm_member_follow
-- ----------------------------
DROP TABLE IF EXISTS `yzm_member_follow`;
CREATE TABLE `yzm_member_follow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `followid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '被关注者id',
  `followname` varchar(30) NOT NULL DEFAULT '' COMMENT '被关注者用户名',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_member_follow
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_member_group
-- ----------------------------
DROP TABLE IF EXISTS `yzm_member_group`;
CREATE TABLE `yzm_member_group` (
  `groupid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(21) NOT NULL DEFAULT '',
  `experience` smallint(6) unsigned NOT NULL DEFAULT '0',
  `icon` char(30) NOT NULL DEFAULT '' COMMENT '图标',
  `authority` char(12) NOT NULL DEFAULT '' COMMENT '1短消息,2发表评论,3发表内容',
  `max_amount` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '每日最大投稿量',
  `description` char(100) NOT NULL DEFAULT '',
  `is_system` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统内置',
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_member_group
-- ----------------------------
INSERT INTO `yzm_member_group` VALUES ('1', '体验者', '50', 'icon1.png', '', '0', '一般体验者', '1');
INSERT INTO `yzm_member_group` VALUES ('2', '讲解者', '100', 'icon2.png', '', '0', '讲解者', '1');
INSERT INTO `yzm_member_group` VALUES ('3', '雨花台资源管理&amp;活动管理', '200', 'icon3.png', '1,2,3,4', '255', '雨花台资源管理者&amp;活动管理', '1');
INSERT INTO `yzm_member_group` VALUES ('4', '西柏坡资源管理&amp;活动管理', '200', 'icon4.png', '1,2,3', '255', '高级会员组', '1');
INSERT INTO `yzm_member_group` VALUES ('5', '华北战役资源管理&amp;活动管理', '200', 'icon5.png', '1,2,3', '255', '', '1');

-- ----------------------------
-- Table structure for yzm_member_guest
-- ----------------------------
DROP TABLE IF EXISTS `yzm_member_guest`;
CREATE TABLE `yzm_member_guest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `space_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `guest_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `guest_name` varchar(30) NOT NULL DEFAULT '',
  `guest_pic` varchar(100) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `space_id` (`space_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_member_guest
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_menu
-- ----------------------------
DROP TABLE IF EXISTS `yzm_menu`;
CREATE TABLE `yzm_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(30) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`a`)
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_menu
-- ----------------------------
INSERT INTO `yzm_menu` VALUES ('1', '内容管理', '0', '', '', '', '&#xe616;', '1', '1');
INSERT INTO `yzm_menu` VALUES ('2', '会员管理', '0', '', '', '', '&#xe60d;', '2', '1');
INSERT INTO `yzm_menu` VALUES ('3', '模块管理', '0', '', '', '', '&#xe6c0;', '3', '1');
INSERT INTO `yzm_menu` VALUES ('4', '管理员管理', '0', '', '', '', '&#xe62d;', '4', '1');
INSERT INTO `yzm_menu` VALUES ('5', '个人信息', '0', '', '', '', '&#xe602;', '5', '0');
INSERT INTO `yzm_menu` VALUES ('6', '系统管理', '0', '', '', '', '&#xe62e;', '6', '1');
INSERT INTO `yzm_menu` VALUES ('7', '数据管理', '0', '', '', '', '&#xe6b5;', '7', '1');
INSERT INTO `yzm_menu` VALUES ('8', '稿件管理', '1', 'admin', 'admin_content', 'init', '', '13', '1');
INSERT INTO `yzm_menu` VALUES ('9', '稿件浏览', '8', 'admin', 'admin_content', 'public_preview', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('10', '稿件删除', '8', 'admin', 'admin_content', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('11', '通过审核', '8', 'admin', 'admin_content', 'adopt', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('12', '退稿', '8', 'admin', 'admin_content', 'rejection', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('13', '后台操作日志', '6', 'admin', 'admin_log', 'init', '', '66', '1');
INSERT INTO `yzm_menu` VALUES ('14', '操作日志删除', '13', 'admin', 'admin_log', 'del_log', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('15', '操作日志搜索', '13', 'admin', 'admin_log', 'search_log', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('16', '后台登录日志', '6', 'admin', 'admin_log', 'admin_login_log_list', '', '67', '1');
INSERT INTO `yzm_menu` VALUES ('17', '登录日志删除', '16', 'admin', 'admin_log', 'del_login_log', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('18', '管理员管理', '4', 'admin', 'admin_manage', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('19', '删除管理员', '18', 'admin', 'admin_manage', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('20', '添加管理员', '18', 'admin', 'admin_manage', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('21', '编辑管理员', '18', 'admin', 'admin_manage', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('22', '修改个人信息', '18', 'admin', 'admin_manage', 'public_edit_info', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('23', '修改个人密码', '18', 'admin', 'admin_manage', 'public_edit_pwd', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('24', '栏目管理', '1', 'admin', 'category', 'init', '', '11', '1');
INSERT INTO `yzm_menu` VALUES ('25', '排序栏目', '24', 'admin', 'category', 'order', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('26', '删除栏目', '24', 'admin', 'category', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('27', '添加栏目', '24', 'admin', 'category', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('28', '编辑栏目', '24', 'admin', 'category', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('29', '编辑单页内容', '24', 'admin', 'category', 'page_content', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('30', '内容管理', '1', 'admin', 'content', 'init', '', '10', '1');
INSERT INTO `yzm_menu` VALUES ('31', '内容搜索', '30', 'admin', 'content', 'search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('32', '添加内容', '30', 'admin', 'content', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('33', '修改内容', '30', 'admin', 'content', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('34', '删除内容', '30', 'admin', 'content', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('35', '数据备份', '7', 'admin', 'database', 'init', '', '70', '1');
INSERT INTO `yzm_menu` VALUES ('36', '数据还原', '7', 'admin', 'database', 'databack_list', '', '71', '1');
INSERT INTO `yzm_menu` VALUES ('37', '优化表', '35', 'admin', 'database', 'public_optimize', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('38', '修复表', '35', 'admin', 'database', 'public_repair', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('39', '备份文件删除', '36', 'admin', 'database', 'databack_del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('40', '备份文件下载', '36', 'admin', 'database', 'databack_down', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('41', '数据导入', '36', 'admin', 'database', 'import', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('42', '字段管理', '54', 'admin', 'model_field', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('43', '添加字段', '42', 'admin', 'model_field', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('44', '修改字段', '42', 'admin', 'model_field', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('45', '删除字段', '42', 'admin', 'model_field', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('46', '排序字段', '42', 'admin', 'model_field', 'order', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('47', '模块管理', '3', 'admin', 'module', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('48', '模块安装', '47', 'admin', 'module', 'install', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('49', '模块卸载', '47', 'admin', 'module', 'uninstall', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('50', '角色管理', '4', 'admin', 'role', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('51', '删除角色', '50', 'admin', 'role', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('52', '添加角色', '50', 'admin', 'role', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('53', '编辑角色', '50', 'admin', 'role', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('54', '模型管理', '1', 'admin', 'sitemodel', 'init', '', '15', '1');
INSERT INTO `yzm_menu` VALUES ('55', '删除模型', '54', 'admin', 'sitemodel', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('56', '添加模型', '54', 'admin', 'sitemodel', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('57', '编辑模型', '54', 'admin', 'sitemodel', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('58', '系统设置', '6', 'admin', 'system_manage', 'init', '', '60', '1');
INSERT INTO `yzm_menu` VALUES ('59', '会员中心设置', '2', 'admin', 'system_manage', 'member_set', '', '26', '1');
INSERT INTO `yzm_menu` VALUES ('60', '屏蔽词管理', '6', 'admin', 'system_manage', 'prohibit_words', '', '63', '1');
INSERT INTO `yzm_menu` VALUES ('61', '自定义配置', '6', 'admin', 'system_manage', 'user_config_list', '', '62', '1');
INSERT INTO `yzm_menu` VALUES ('62', '添加配置', '61', 'admin', 'system_manage', 'user_config_add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('63', '配置编辑', '61', 'admin', 'system_manage', 'user_config_edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('64', '配置删除', '61', 'admin', 'system_manage', 'user_config_del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('65', 'TAG管理', '1', 'admin', 'tag', 'init', '', '16', '1');
INSERT INTO `yzm_menu` VALUES ('66', '添加TAG', '65', 'admin', 'tag', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('67', '编辑TAG', '65', 'admin', 'tag', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('68', '删除TAG', '65', 'admin', 'tag', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('69', '批量更新URL', '1', 'admin', 'update_urls', 'init', '', '17', '1');
INSERT INTO `yzm_menu` VALUES ('70', '附件管理', '1', 'attachment', 'index', 'init', '', '14', '1');
INSERT INTO `yzm_menu` VALUES ('71', '附件搜索', '70', 'attachment', 'index', 'search_list', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('72', '附件浏览', '70', 'attachment', 'index', 'public_att_view', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('73', '删除单个附件', '70', 'attachment', 'index', 'del_one', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('74', '删除多个附件', '70', 'attachment', 'index', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('75', '评论管理', '1', 'comment', 'comment', 'init', '', '12', '1');
INSERT INTO `yzm_menu` VALUES ('76', '评论搜索', '75', 'comment', 'comment', 'search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('77', '删除评论', '75', 'comment', 'comment', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('78', '评论审核', '75', 'comment', 'comment', 'adopt', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('79', '留言管理', '3', 'guestbook', 'guestbook', 'init', '', '1', '1');
INSERT INTO `yzm_menu` VALUES ('80', '查看及回复留言', '79', 'guestbook', 'guestbook', 'read', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('81', '留言审核', '79', 'guestbook', 'guestbook', 'toggle', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('82', '删除留言', '79', 'guestbook', 'guestbook', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('88', '会员管理', '2', 'member', 'member', 'init', '', '20', '1');
INSERT INTO `yzm_menu` VALUES ('89', '会员搜索', '88', 'member', 'member', 'search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('90', '添加会员', '88', 'member', 'member', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('91', '修改会员信息', '88', 'member', 'member', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('92', '修改会员密码', '88', 'member', 'member', 'password', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('93', '删除会员', '88', 'member', 'member', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('94', '审核会员', '2', 'member', 'member', 'check', '', '21', '1');
INSERT INTO `yzm_menu` VALUES ('95', '通过审核', '94', 'member', 'member', 'adopt', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('96', '锁定用户', '88', 'member', 'member', 'lock', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('97', '解锁用户', '88', 'member', 'member', 'unlock', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('98', '账单管理', '2', 'member', 'member', 'pay', '', '22', '1');
INSERT INTO `yzm_menu` VALUES ('99', '入账记录搜索', '98', 'member', 'member', 'pay_search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('100', '入账记录删除', '98', 'member', 'member', 'pay_del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('101', '消费记录', '98', 'member', 'member', 'pay_spend', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('102', '消费记录搜索', '98', 'member', 'member', 'pay_spend_search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('103', '消费记录删除', '98', 'member', 'member', 'pay_spend_del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('104', '会员组管理', '2', 'member', 'member_group', 'init', '', '25', '1');
INSERT INTO `yzm_menu` VALUES ('105', '添加组别', '104', 'member', 'member_group', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('106', '修改组别', '104', 'member', 'member_group', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('107', '删除组别', '104', 'member', 'member_group', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('108', '消息管理', '2', 'member', 'member_message', 'init', '', '23', '1');
INSERT INTO `yzm_menu` VALUES ('109', '消息搜索', '108', 'member', 'member_message', 'search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('110', '删除消息', '108', 'member', 'member_message', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('111', '发送单个消息', '108', 'member', 'member_message', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('112', '群发消息', '2', 'member', 'member_message', 'messages_list', '', '23', '1');
INSERT INTO `yzm_menu` VALUES ('113', '新建群发', '112', 'member', 'member_message', 'add_messages', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('114', '删除群发消息', '112', 'member', 'member_message', 'del_messages', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('115', '权限管理', '50', 'admin', 'role', 'role_priv', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('116', '后台菜单管理', '6', 'admin', 'menu', 'init', '', '64', '1');
INSERT INTO `yzm_menu` VALUES ('117', '删除菜单', '116', 'admin', 'menu', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('118', '添加菜单', '116', 'admin', 'menu', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('119', '编辑菜单', '116', 'admin', 'menu', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('120', '菜单排序', '116', 'admin', 'menu', 'order', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('121', '邮箱配置', '6', 'admin', 'system_manage', 'init', 'tab=3', '61', '1');
INSERT INTO `yzm_menu` VALUES ('122', '修改个人信息', '5', 'admin', 'admin_manage', 'public_edit_info', '', '51', '1');
INSERT INTO `yzm_menu` VALUES ('123', '修改密码', '5', 'admin', 'admin_manage', 'public_edit_pwd', '', '52', '1');
INSERT INTO `yzm_menu` VALUES ('134', '友情链接管理', '3', 'link', 'link', 'init', '', '6', '1');
INSERT INTO `yzm_menu` VALUES ('135', '添加友情链接', '134', 'link', 'link', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('136', '修改友情链接', '134', 'link', 'link', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('137', '删除单个友情链接', '134', 'link', 'link', 'del_one', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('138', '删除多个友情链接', '134', 'link', 'link', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('139', 'URL规则管理', '6', 'admin', 'urlrule', 'init', '', '65', '1');
INSERT INTO `yzm_menu` VALUES ('140', '添加URL规则', '139', 'admin', 'urlrule', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('141', '删除URL规则', '139', 'admin', 'urlrule', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('142', '编辑URL规则', '139', 'admin', 'urlrule', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('143', '批量移动', '30', 'admin', 'content', 'remove', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('144', 'SQL命令行', '6', 'admin', 'sql', 'init', '', '63', '1');
INSERT INTO `yzm_menu` VALUES ('145', '提交SQL命令', '144', 'admin', 'sql', 'do_sql', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('156', '轮播图管理', '3', 'banner', 'banner', 'init', '', '1', '1');
INSERT INTO `yzm_menu` VALUES ('157', '添加轮播', '156', 'banner', 'banner', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('158', '修改轮播', '156', 'banner', 'banner', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('159', '删除轮播', '156', 'banner', 'banner', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('160', '添加轮播分类', '156', 'banner', 'banner', 'cat_add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('161', '管理轮播分类', '156', 'banner', 'banner', 'cat_manage', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('162', '会员统计', '2', 'member', 'member', 'member_count', '', '24', '1');
INSERT INTO `yzm_menu` VALUES ('165', '采集管理', '3', 'collection', 'collection_content', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('166', '添加采集节点', '165', 'collection', 'collection_content', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('167', '编辑采集节点', '165', 'collection', 'collection_content', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('168', '删除采集节点', '165', 'collection', 'collection_content', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('169', '采集测试', '165', 'collection', 'collection_content', 'collection_test', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('170', '采集网址', '165', 'collection', 'collection_content', 'collection_list_url', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('171', '采集内容', '165', 'collection', 'collection_content', 'collection_article_content', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('172', '内容导入', '165', 'collection', 'collection_content', 'collection_content_import', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('173', '新建内容发布方案', '165', 'collection', 'collection_content', 'create_programme', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('174', '采集列表', '165', 'collection', 'collection_content', 'collection_list', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('175', '删除采集列表', '165', 'collection', 'collection_content', 'collection_list_del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('200', '微信管理', '0', '', '', '', '&#xe694;', '3', '1');
INSERT INTO `yzm_menu` VALUES ('201', '微信配置', '200', 'wechat', 'config', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('202', '保存配置', '201', 'wechat', 'config', 'save', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('203', '微信用户', '200', 'wechat', 'user', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('204', '关注者搜索', '203', 'wechat', 'user', 'search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('205', '获取分组名称', '203', 'wechat', 'user', 'get_groupname', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('206', '同步微信服务器用户', '203', 'wechat', 'user', 'synchronization', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('207', '批量移动用户分组', '203', 'wechat', 'user', 'move_user_group', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('208', '设置用户备注', '203', 'wechat', 'user', 'set_userremark', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('209', '查询用户所在组', '203', 'wechat', 'user', 'select_user_group', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('210', '分组管理', '200', 'wechat', 'group', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('211', '创建分组', '210', 'wechat', 'group', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('212', '修改分组', '210', 'wechat', 'group', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('213', '删除分组', '210', 'wechat', 'group', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('214', '查询所有分组', '210', 'wechat', 'group', 'select_group', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('215', '微信菜单', '200', 'wechat', 'menu', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('216', '添加菜单', '215', 'wechat', 'menu', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('217', '编辑菜单', '215', 'wechat', 'menu', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('218', '删除菜单', '215', 'wechat', 'menu', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('219', '菜单排序', '215', 'wechat', 'menu', 'order', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('220', '创建菜单提交微信', '215', 'wechat', 'menu', 'create_menu', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('221', '查询远程菜单', '215', 'wechat', 'menu', 'select_menu', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('222', '删除所有菜单提交微信', '215', 'wechat', 'menu', 'delete_menu', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('223', '消息回复', '200', 'wechat', 'reply', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('224', '自动回复/关注回复', '223', 'wechat', 'reply', 'reply_list', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('225', '添加关键字回复', '223', 'wechat', 'reply', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('226', '修改关键字回复', '223', 'wechat', 'reply', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('227', '删除关键字回复', '223', 'wechat', 'reply', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('228', '选择文章', '223', 'wechat', 'reply', 'select_article', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('229', '消息管理', '200', 'wechat', 'message', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('230', '用户发送信息', '229', 'wechat', 'message', 'send_message', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('231', '标识已读', '229', 'wechat', 'message', 'read', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('232', '删除消息', '229', 'wechat', 'message', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('233', '微信场景', '200', 'wechat', 'scan', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('234', '添加场景', '233', 'wechat', 'scan', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('235', '编辑场景', '233', 'wechat', 'scan', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('236', '删除场景', '233', 'wechat', 'scan', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('237', '素材管理', '200', 'wechat', 'material', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('238', '素材搜索', '237', 'wechat', 'material', 'search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('239', '添加素材', '237', 'wechat', 'material', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('240', '添加图文素材', '237', 'wechat', 'material', 'add_news', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('241', '删除素材', '237', 'wechat', 'material', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('242', '选择缩略图', '237', 'wechat', 'material', 'select_thumb', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('243', '获取永久素材列表', '237', 'wechat', 'material', 'get_material_list', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('244', '高级群发', '200', 'wechat', 'mass', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('245', '新建群发', '244', 'wechat', 'mass', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('246', '查询群发状态', '244', 'wechat', 'mass', 'select_status', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('247', '删除群发', '244', 'wechat', 'mass', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('248', '选择素材', '244', 'wechat', 'mass', 'select_material', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('249', '选择用户', '244', 'wechat', 'mass', 'select_user', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('250', '自定义表单', '3', 'diyform', 'diyform', 'init', '', '2', '1');
INSERT INTO `yzm_menu` VALUES ('251', '添加表单', '250', 'diyform', 'diyform', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('252', '编辑表单', '250', 'diyform', 'diyform', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('253', '删除表单', '250', 'diyform', 'diyform', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('254', '字段列表', '250', 'diyform', 'diyform_field', 'init', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('255', '添加字段', '254', 'diyform', 'diyform_field', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('256', '修改字段', '254', 'diyform', 'diyform_field', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('257', '删除字段', '254', 'diyform', 'diyform_field', 'delete', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('258', '排序排序', '254', 'diyform', 'diyform_field', 'order', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('259', '表单信息列表', '250', 'diyform', 'diyform_info', 'init', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('260', '查看表单信息', '259', 'diyform', 'diyform_info', 'view', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('261', '删除表单信息', '259', 'diyform', 'diyform_info', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('262', '广告管理', '3', 'adver', 'adver', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('263', '添加广告', '262', 'adver', 'adver', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('264', '修改广告', '262', 'adver', 'adver', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('265', '删除广告', '262', 'adver', 'adver', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('266', '网站地图', '1', 'admin', 'sitemap', 'init', '', '16', '1');
INSERT INTO `yzm_menu` VALUES ('267', '生成地图', '266', 'admin', 'sitemap', 'make_sitemap', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('268', '导出模型', '54', 'admin', 'sitemodel', 'import', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('269', '导入模型', '54', 'admin', 'sitemodel', 'export', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('270', '导出配置', '61', 'admin', 'system_manage', 'user_config_export', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('271', '导入配置', '61', 'admin', 'system_manage', 'user_config_import', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('283', '支付模块', '3', 'pay', 'pay', 'init', '', '0', '1');
INSERT INTO `yzm_menu` VALUES ('284', '支付配置', '283', 'pay', 'pay', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('285', '订单管理', '2', 'member', 'order', 'init', '', '22', '1');
INSERT INTO `yzm_menu` VALUES ('286', '订单搜索', '285', 'member', 'order', 'order_search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('287', '订单改价', '285', 'member', 'order', 'change_price', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('288', '订单删除', '285', 'member', 'order', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('289', '订单详情', '285', 'member', 'order', 'order_details', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('290', '推送至百度', '30', 'admin', 'content', 'baidu_push', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('291', '增加/删除内容属性', '30', 'admin', 'content', 'attribute_operation', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('292', '更改model', '69', 'admin', 'update_urls', 'change_model', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('293', '更新栏目URL', '69', 'admin', 'update_urls', 'update_category_url', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('294', '更新内容页URL', '69', 'admin', 'update_urls', 'update_content_url', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('295', '留言搜索', '79', 'guestbook', 'guestbook', 'search', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('296', '内容关键字', '3', 'admin', 'keyword_link', 'init', '', '1', '1');
INSERT INTO `yzm_menu` VALUES ('297', '添加关键字', '296', 'admin', 'keyword_link', 'add', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('298', '编辑关键字', '296', 'admin', 'keyword_link', 'edit', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('299', '删除关键字', '296', 'admin', 'keyword_link', 'del', '', '0', '0');
INSERT INTO `yzm_menu` VALUES ('300', '应用商店', '3', 'admin', 'store', 'init', '', '0', '1');

-- ----------------------------
-- Table structure for yzm_message
-- ----------------------------
DROP TABLE IF EXISTS `yzm_message`;
CREATE TABLE `yzm_message` (
  `messageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_from` varchar(30) NOT NULL DEFAULT '' COMMENT '发件人',
  `send_to` varchar(30) NOT NULL DEFAULT '' COMMENT '收件人',
  `message_time` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` char(80) NOT NULL DEFAULT '' COMMENT '主题',
  `content` text NOT NULL,
  `replyid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '回复的id',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1正常0隐藏',
  `isread` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否读过',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '系统信息',
  PRIMARY KEY (`messageid`),
  KEY `replyid` (`replyid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_message
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_message_data
-- ----------------------------
DROP TABLE IF EXISTS `yzm_message_data`;
CREATE TABLE `yzm_message_data` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_message_id` int(5) unsigned NOT NULL DEFAULT '0' COMMENT '读过的信息ID',
  PRIMARY KEY (`id`),
  KEY `message` (`userid`,`group_message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_message_data
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_message_group
-- ----------------------------
DROP TABLE IF EXISTS `yzm_message_group`;
CREATE TABLE `yzm_message_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `groupid` varchar(20) NOT NULL DEFAULT '' COMMENT '用户组id',
  `subject` char(80) NOT NULL DEFAULT '',
  `content` text NOT NULL COMMENT '内容',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_message_group
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_model
-- ----------------------------
DROP TABLE IF EXISTS `yzm_model`;
CREATE TABLE `yzm_model` (
  `modelid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL DEFAULT '',
  `tablename` char(20) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `setting` text,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_model
-- ----------------------------
INSERT INTO `yzm_model` VALUES ('1', '文章', 'article', '文章', '', '1466393786', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model` VALUES ('2', '产品模型', 'product', '产品模型', '', '1466393786', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model` VALUES ('3', '下载模型', 'download', '下载模型', '', '1466393786', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model` VALUES ('5', '活动', 'activity', '活动', '', '1589729846', '0', '0', '0', '0', '0');
INSERT INTO `yzm_model` VALUES ('6', '讲师', 'teacher', '讲师信息', '', '1589738622', '0', '0', '0', '0', '0');
INSERT INTO `yzm_model` VALUES ('7', '资源', 'resource', '资源，包括图片，视频，全景图', '', '1590496059', '0', '0', '0', '0', '0');
INSERT INTO `yzm_model` VALUES ('9', '基地', 'jd', '基地', '', '1591944120', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for yzm_model_field
-- ----------------------------
DROP TABLE IF EXISTS `yzm_model_field`;
CREATE TABLE `yzm_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `tips` varchar(100) NOT NULL DEFAULT '',
  `css` varchar(30) NOT NULL DEFAULT '',
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `errortips` varchar(100) NOT NULL DEFAULT '',
  `fieldtype` varchar(20) NOT NULL DEFAULT '',
  `defaultvalue` varchar(30) NOT NULL DEFAULT '',
  `setting` text,
  `isrequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_model_field
-- ----------------------------
INSERT INTO `yzm_model_field` VALUES ('1', '0', 'title', '标题', '', '', '1', '100', '请输入标题', 'input', '', '', '1', '1', '0', '1', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('2', '0', 'seo_title', 'SEO标题', '', '', '0', '100', '', 'input', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('3', '0', 'catid', '栏目', '', '', '1', '10', '请选择栏目', 'select', '', '', '1', '1', '0', '1', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('4', '0', 'thumb', '缩略图', '', '', '0', '100', '', 'image', '', '', '0', '1', '0', '1', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('5', '0', 'keywords', '关键词', '', '', '0', '50', '', 'input', '', '', '0', '1', '0', '1', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('6', '0', 'description', '摘要', '', '', '0', '255', '', 'textarea', '', '', '0', '1', '0', '1', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('7', '0', 'inputtime', '发布时间', '', '', '1', '10', '', 'datetime', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('8', '0', 'updatetime', '更新时间', '', '', '1', '10', '', 'datetime', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('9', '0', 'copyfrom', '来源', '', '', '0', '30', '', 'input', '', '', '0', '1', '0', '1', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('10', '0', 'url', 'URL', '', '', '1', '100', '', 'input', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('11', '0', 'userid', '用户ID', '', '', '1', '10', '', 'input', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('12', '0', 'username', '用户名', '', '', '1', '30', '', 'input', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('13', '0', 'nickname', '昵称', '', '', '0', '30', '', 'input', '', '', '0', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('14', '0', 'template', '模板', '', '', '1', '50', '', 'select', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('15', '0', 'content', '内容', '', '', '1', '999999', '', 'editor', '', '', '1', '1', '0', '1', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('16', '0', 'click', '点击数', '', '', '1', '10', '', 'input', '0', '', '0', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('17', '0', 'tag', 'TAG', '', '', '0', '50', '', 'checkbox', '', '', '0', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('18', '0', 'readpoint', '阅读收费', '', '', '1', '5', '', 'input', '0', '', '0', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('19', '0', 'groupids_view', '阅读权限', '', '', '1', '10', '', 'checkbox', '1', '', '0', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('20', '0', 'status', '状态', '', '', '1', '2', '', 'checkbox', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('21', '0', 'flag', '属性', '', '', '1', '16', '', 'checkbox', '', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('22', '0', 'listorder', '排序', '', '', '1', '5', '', 'input', '1', '', '1', '1', '0', '0', '0', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('23', '2', 'brand', '品牌', '', '', '0', '30', '', 'input', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('24', '2', 'standard', '型号', '', '', '0', '30', '', 'input', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('25', '2', 'yieldly', '产地', '', '', '0', '50', '', 'input', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('26', '2', 'pictures', '产品图集', '', '', '0', '1000', '', 'images', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('27', '2', 'price', '单价', '请输入单价', '', '1', '10', '单价不能为空', 'input', '', '', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('28', '2', 'unit', '价格单位', '', '', '1', '10', '', 'select', '', '{\\\"0\\\":\\\"\\\\u4ef6\\\",\\\"1\\\":\\\"\\\\u65a4\\\",\\\"2\\\":\\\"KG\\\",\\\"3\\\":\\\"\\\\u5428\\\",\\\"4\\\":\\\"\\\\u5957\\\"}', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('29', '2', 'stock', '库存', '库存量必须为数字', '', '1', '5', '库存不能为空', 'input', '99999', '', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('30', '3', 'down_url', '下载地址', '', '', '1', '100', '下载地址不能为空', 'attachment', '', '', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('31', '3', 'copytype', '授权形式', '', '', '0', '20', '', 'select', '', '{\\\"0\\\":\\\"\\\\u514d\\\\u8d39\\\\u7248\\\",\\\"1\\\":\\\"\\\\u6b63\\\\u5f0f\\\\u7248\\\",\\\"2\\\":\\\"\\\\u5171\\\\u4eab\\\\u7248\\\",\\\"3\\\":\\\"\\\\u8bd5\\\\u7528\\\\u7248\\\",\\\"4\\\":\\\"\\\\u6f14\\\\u793a\\\\u7248\\\",\\\"5\\\":\\\"\\\\u6ce8\\\\u518c\\\\u7248\\\",\\\"6\\\":\\\"\\\\u7834\\\\u89e3\\\\u7248\\\"}', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('32', '3', 'systems', '平台', '', '', '1', '30', '', 'select', '', '{\\\"0\\\":\\\"Windows\\\",\\\"1\\\":\\\"Linux\\\",\\\"2\\\":\\\"MacOS\\\"}', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('33', '3', 'language', '语言', '', '', '0', '20', '', 'select', '', '{\\\"0\\\":\\\"\\\\u7b80\\\\u4f53\\\\u4e2d\\\\u6587\\\",\\\"1\\\":\\\"\\\\u7e41\\\\u4f53\\\\u4e2d\\\\u6587\\\",\\\"2\\\":\\\"\\\\u82f1\\\\u6587\\\",\\\"3\\\":\\\"\\\\u591a\\\\u56fd\\\\u8bed\\\\u8a00\\\",\\\"4\\\":\\\"\\\\u5176\\\\u4ed6\\\\u8bed\\\\u8a00\\\"}', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('34', '3', 'version', '版本', '', '', '1', '15', '版本号不能为空', 'input', '', '', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('35', '3', 'filesize', '文件大小', '', '', '0', '10', '', 'input', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('36', '3', 'classtype', '软件类型', '', '', '1', '30', '', 'radio', '', '{\\\"0\\\":\\\"\\\\u56fd\\\\u4ea7\\\\u8f6f\\\\u4ef6\\\",\\\"1\\\":\\\"\\\\u56fd\\\\u5916\\\\u8f6f\\\\u4ef6\\\",\\\"2\\\":\\\"\\\\u6c49\\\\u5316\\\\u8865\\\\u4e01\\\",\\\"3\\\":\\\"\\\\u7a0b\\\\u5e8f\\\\u6e90\\\\u7801\\\",\\\"4\\\":\\\"\\\\u5176\\\\u4ed6\\\"}', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('37', '3', 'stars', '评分等级', '', '', '0', '20', '', 'radio', '', '{\\\"0\\\":\\\"\\\\u4e00\\\\u661f\\\",\\\"1\\\":\\\"\\\\u4e8c\\\\u661f\\\",\\\"2\\\":\\\"\\\\u4e09\\\\u661f\\\",\\\"3\\\":\\\"\\\\u56db\\\\u661f\\\",\\\"4\\\":\\\"\\\\u4e94\\\\u661f\\\"}', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('40', '5', 'manager', '活动管理员', '管理员用户名', '', '1', '100', '', 'input', 'tang', '', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('41', '5', 'speakers', '讲师名单', '讲师用户名, ;分割', '', '1', '100', '', 'input', '', '', '1', '0', '0', '0', '1', '1', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('42', '5', 'kankanurl', '默认背景', '', '', '1', '255', '', 'input', 'https://ssl.hongyanlv.com', '', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('43', '7', 'type', '类型', '图片|视频|全景图', '', '1', '100', '', 'select', '全景图', '{\\\"0\\\":\\\"\\\\u56fe\\\\u7247\\\",\\\"1\\\":\\\"\\\\u89c6\\\\u9891\\\",\\\"2\\\":\\\"\\\\u5168\\\\u666f\\\\u56fe\\\",\\\"3\\\":\\\"\\\\u8003\\\\u9898\\\"}', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('44', '7', 'image', '图片', '', '', '0', '100', '', 'image', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('45', '7', 'music', '背景音乐', '', '', '0', '100', '', 'attachment', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('46', '7', 'video', '视频', '', '', '0', '100', '', 'attachment', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('47', '7', 'viewurl', '全景图', '', '', '0', '100', '', 'input', '', '', '0', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('48', '5', 'start_time', '开始时间', '', '', '1', '100', '', 'datetime', '', '1', '1', '0', '0', '1', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('49', '7', 'shiti', '试题', '', '', '0', '255', '', 'input', '', '', '0', '0', '0', '0', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('53', '5', 'did', '所属基地', '', '', '1', '100', '', 'input', '', '', '1', '0', '0', '0', '1', '1', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('55', '6', 'did', '所属基地', '', '', '1', '0', '', 'input', '', '', '1', '0', '0', '0', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('54', '5', 'teacher', '讲师', '', '', '1', '0', '', 'input', '', '', '1', '0', '0', '0', '1', '1', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('56', '6', 'link_username', '关联用户名', '', '', '1', '100', '', 'input', '', '', '1', '0', '0', '0', '1', '0', '0', '1');
INSERT INTO `yzm_model_field` VALUES ('57', '7', 'did', '所属基地', '输入基地ID', '', '1', '0', '', 'input', '', null, '1', '0', '0', '0', '1', '0', '0', '1');

-- ----------------------------
-- Table structure for yzm_module
-- ----------------------------
DROP TABLE IF EXISTS `yzm_module`;
CREATE TABLE `yzm_module` (
  `module` varchar(15) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `setting` text,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `installdate` date NOT NULL DEFAULT '2016-01-01',
  `updatedate` date NOT NULL DEFAULT '2016-01-01',
  PRIMARY KEY (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_module
-- ----------------------------
INSERT INTO `yzm_module` VALUES ('admin', '后台模块', '1', '1.0', '后台模块', '', '0', '0', '2016-08-27', '2016-08-27');
INSERT INTO `yzm_module` VALUES ('index', '前台模块', '1', '1.0', '前台模块', '', '0', '0', '2016-09-21', '2016-09-21');
INSERT INTO `yzm_module` VALUES ('api', '接口模块', '1', '1.0', '为整个系统提供接口', '', '0', '0', '2016-08-28', '2016-08-28');
INSERT INTO `yzm_module` VALUES ('install', '安装模块', '1', '1.0', 'CMS安装模块', '', '0', '0', '2016-10-28', '2016-10-28');
INSERT INTO `yzm_module` VALUES ('attachment', '附件模块', '1', '1.0', '附件模块', '', '0', '0', '2016-10-10', '2016-10-10');
INSERT INTO `yzm_module` VALUES ('member', '会员模块', '1', '1.0', '会员模块', '', '0', '0', '2016-09-21', '2016-09-21');
INSERT INTO `yzm_module` VALUES ('guestbook', '留言模块', '1', '1.0', '留言板模块', '', '0', '0', '2016-10-25', '2016-10-25');
INSERT INTO `yzm_module` VALUES ('search', '搜索模块', '1', '1.0', '搜索模块', '', '0', '0', '2016-11-21', '2016-11-21');
INSERT INTO `yzm_module` VALUES ('link', '友情链接', '0', '1.0', '友情链接模块', '', '0', '0', '2016-12-11', '2016-09-28');
INSERT INTO `yzm_module` VALUES ('comment', '评论模块', '1', '1.0', '全站评论', '', '0', '0', '2017-01-05', '2017-01-05');
INSERT INTO `yzm_module` VALUES ('mobile', '手机模块', '1', '1.0', '手机模块', '', '0', '0', '2017-04-05', '2017-04-05');
INSERT INTO `yzm_module` VALUES ('banner', '轮播图管理', '0', '1.0', '轮播图管理模块', '', '0', '0', '2017-05-12', '2017-05-12');
INSERT INTO `yzm_module` VALUES ('collection', '采集模块', '1', '1.0', '采集模块', '', '0', '0', '2017-08-16', '2017-08-16');
INSERT INTO `yzm_module` VALUES ('wechat', '微信模块', '1', '1.0', '微信模块', '', '0', '0', '2017-11-03', '2017-11-03');
INSERT INTO `yzm_module` VALUES ('diyform', '自定义表单模块', '1', '1.0', '自定义表单模块', '', '0', '0', '2018-01-15', '2018-01-15');
INSERT INTO `yzm_module` VALUES ('adver', '广告管理', '0', '1.0', '广告管理模块', '', '0', '0', '2018-01-18', '2018-01-18');
INSERT INTO `yzm_module` VALUES ('pay', '支付模块', '1', '1.0', '支付模块', '', '0', '0', '2018-07-03', '2018-07-03');

-- ----------------------------
-- Table structure for yzm_order
-- ----------------------------
DROP TABLE IF EXISTS `yzm_order`;
CREATE TABLE `yzm_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` char(18) NOT NULL DEFAULT '' COMMENT '订单号',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '订单状态0未付款1已付款',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `paytime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '支付方式1支付宝2微信',
  `transaction` varchar(32) NOT NULL DEFAULT '' COMMENT '第三方交易单号',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '订单金额',
  `quantity` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '数量',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1积分,2金钱',
  `ip` char(15) NOT NULL DEFAULT '',
  `desc` varchar(250) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `userid` (`userid`),
  KEY `order_sn` (`order_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of yzm_order
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_page
-- ----------------------------
DROP TABLE IF EXISTS `yzm_page`;
CREATE TABLE `yzm_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(160) NOT NULL DEFAULT '',
  `pagedir` varchar(30) NOT NULL DEFAULT '',
  `keywords` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `content` text,
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_page
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_pay
-- ----------------------------
DROP TABLE IF EXISTS `yzm_pay`;
CREATE TABLE `yzm_pay` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `trade_sn` char(18) NOT NULL DEFAULT '' COMMENT '订单号',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `money` char(8) NOT NULL DEFAULT '' COMMENT '金钱或积分的量',
  `creat_time` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(30) NOT NULL DEFAULT '' COMMENT '类型说明',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1积分,2金钱',
  `ip` char(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1成功,0失败',
  `remarks` varchar(250) NOT NULL DEFAULT '' COMMENT '备注说明',
  `adminnote` char(20) NOT NULL DEFAULT '' COMMENT '如是后台操作,管理员姓名',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `trade_sn` (`trade_sn`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_pay
-- ----------------------------
INSERT INTO `yzm_pay` VALUES ('1', '202005170138282261', '1', 'tang', '1', '1589650708', '每日登录', '1', '192.168.31.137', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('2', '202005170140101432', '1', 'tang', '3', '1589650810', '投稿奖励', '1', '192.168.31.137', '1', '3_3', '');
INSERT INTO `yzm_pay` VALUES ('3', '202005180012152191', '1', 'tang', '1', '1589731935', '每日登录', '1', '192.168.31.137', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('4', '202005260303574122', '1', 'tang', '1', '1590433437', '每日登录', '1', '192.168.31.137', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('5', '202005260357354156', '1', 'tang', '3', '1590436655', '投稿奖励', '1', '192.168.31.137', '1', '34_9', '');
INSERT INTO `yzm_pay` VALUES ('6', '202005260358397312', '3', 'gggg', '1', '1590436719', '每日登录', '1', '192.168.31.137', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('7', '202005260406266568', '3', 'gggg', '3', '1590437186', '投稿奖励', '1', '192.168.31.137', '1', '34_10', '');
INSERT INTO `yzm_pay` VALUES ('8', '202005270138467658', '1', 'tang', '1', '1590514726', '每日登录', '1', '192.168.31.137', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('9', '202005280230476942', '1', 'tang', '1', '1590604247', '每日登录', '1', '183.209.140.21', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('10', '202005281602005400', '3', 'gggg', '1', '1590652920', '每日登录', '1', '47.57.190.74', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('11', '202005281603573790', '2', 'tfew', '1', '1590653037', '每日登录', '1', '47.57.190.74', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('12', '202005281615519933', '12', 'hhhh', '1', '1590653751', '每日登录', '1', '47.57.190.74', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('13', '202005291210118456', '12', 'hhhh', '1', '1590725411', '每日登录', '1', '47.57.190.74', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('14', '202005291214166222', '12', 'hhhh', '3', '1590725656', '投稿奖励', '1', '47.57.190.74', '1', '46_8', '');
INSERT INTO `yzm_pay` VALUES ('15', '202005291234456004', '16', 'aaaa', '1', '1590726885', '每日登录', '1', '47.57.190.74', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('16', '202006020531373423', '1', 'tang', '1', '1591047097', '每日登录', '1', '183.209.141.220', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('17', '202006020944451139', '16', 'aaaa', '1', '1591062285', '每日登录', '1', '47.57.190.74', '1', '', '');
INSERT INTO `yzm_pay` VALUES ('18', '202006020945100449', '12', 'hhhh', '1', '1591062310', '每日登录', '1', '47.57.190.74', '1', '', '');

-- ----------------------------
-- Table structure for yzm_pay_mode
-- ----------------------------
DROP TABLE IF EXISTS `yzm_pay_mode`;
CREATE TABLE `yzm_pay_mode` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `logo` varchar(100) NOT NULL DEFAULT '',
  `desc` varchar(250) NOT NULL DEFAULT '',
  `config` text,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `author` varchar(60) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `action` varchar(30) NOT NULL DEFAULT '' COMMENT '支付调用方法',
  `template` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_pay_mode
-- ----------------------------
INSERT INTO `yzm_pay_mode` VALUES ('1', '支付宝', 'alipay.png', '支付宝新版在线支付插件，要求PHP版本>=5.5', '{\"app_id\":\"\",\"merchant_private_key\":\"\",\"alipay_public_key\":\"\"}', '0', '袁志蒙', '1.0', 'alipay', 'alipay');
INSERT INTO `yzm_pay_mode` VALUES ('2', '微信', 'wechat.png', '微信支付提供公众号支付、APP支付、扫码支付、刷卡支付等支付方式。', '{\\\"app_id\\\":\\\"\\\",\\\"app_secret\\\":\\\"\\\",\\\"mch_id\\\":\\\"\\\",\\\"key\\\":\\\"\\\"}', '1', '袁志蒙', '1.0', 'wechat', 'wechat');

-- ----------------------------
-- Table structure for yzm_pay_spend
-- ----------------------------
DROP TABLE IF EXISTS `yzm_pay_spend`;
CREATE TABLE `yzm_pay_spend` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `trade_sn` char(18) NOT NULL DEFAULT '' COMMENT '订单号',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(30) NOT NULL DEFAULT '',
  `money` char(8) NOT NULL DEFAULT '' COMMENT '金钱或积分的量',
  `creat_time` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` varchar(30) NOT NULL DEFAULT '' COMMENT '类型说明',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1积分,2金钱',
  `ip` char(15) NOT NULL DEFAULT '',
  `remarks` varchar(250) NOT NULL DEFAULT '' COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `trade_sn` (`trade_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_pay_spend
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_product
-- ----------------------------
DROP TABLE IF EXISTS `yzm_product`;
CREATE TABLE `yzm_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `seo_title` varchar(200) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `groupids_view` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  `brand` varchar(50) NOT NULL DEFAULT '' COMMENT '品牌',
  `standard` varchar(100) NOT NULL DEFAULT '' COMMENT '型号',
  `yieldly` varchar(100) NOT NULL DEFAULT '' COMMENT '产地',
  `pictures` text COMMENT '产品图集',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '单价',
  `unit` varchar(30) NOT NULL DEFAULT '' COMMENT '价格单位',
  `stock` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '库存',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`),
  KEY `catid` (`catid`,`status`),
  KEY `userid` (`userid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_product
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_resource
-- ----------------------------
DROP TABLE IF EXISTS `yzm_resource`;
CREATE TABLE `yzm_resource` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `seo_title` varchar(200) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `groupids_view` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  `type` varchar(100) NOT NULL DEFAULT '全景图',
  `image` text NOT NULL,
  `music` varchar(255) NOT NULL DEFAULT '',
  `video` varchar(255) NOT NULL DEFAULT '',
  `viewurl` varchar(100) NOT NULL DEFAULT '',
  `shiti` varchar(255) NOT NULL DEFAULT '',
  `did` varchar(255) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`),
  KEY `catid` (`catid`,`status`),
  KEY `userid` (`userid`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_resource
-- ----------------------------
INSERT INTO `yzm_resource` VALUES ('48', '89', '1', 'yzmcms', '平台管理员', '淮塔—战地新年', '淮塔—战地新年_红研旅虚拟旅游研学平台', '', '1598853408', '1601018315', '', '这是淮塔—战地新年的全景复刻', '3', '<p>这是淮塔—战地新年的全景复刻</p>', '原创', '/uploads/202009/01/200901052230785.jpg', 'http://www.yht.test.com/ziyuanliebiao/48.html', '', '1', '1', '10', '0', '0', '1', '0', '视频', '', '', 'https://blz-videos.nosdn.127.net/1/OverWatch/AnimatedShots/Overwatch_AnimatedShot_CinematicTrailer.mp4', 'https://design.hongyanlv.com/showProPC.html?m=t-2ATs4X', '', '8');
INSERT INTO `yzm_resource` VALUES ('46', '89', '1', 'yzmcms', '平台管理员', '淮塔—蔡洼会议', '淮塔—蔡洼会议_红研旅虚拟旅游研学平台', '', '1598598886', '1598600695', '', '淮塔—蔡洼会议', '1', '<p>这是淮塔—蔡洼会议的全景复刻</p>', '原创', '/uploads/202008/28/200828031626442.jpg', 'http://www.yht.test.com/ziyuanliebiao/46.html', '', '1', '1', '10', '0', '0', '1', '0', '全景图', '', '', '', 'https://design.hongyanlv.com/showProPC.html?m=t-e4ccgzO', '', '');
INSERT INTO `yzm_resource` VALUES ('47', '89', '1', 'yzmcms', '平台管理员', '淮塔—十人桥', '淮塔—十人桥_红研旅虚拟旅游研学平台', '', '1598599068', '1601018357', '', '淮塔—十人桥', '3', '<p>这是淮塔—十人桥的全景复刻</p>', '原创', '/uploads/202008/28/200828032631731.jpg', 'http://www.yht.test.com/ziyuanliebiao/47.html', '', '1', '1', '10', '0', '0', '1', '0', '图片', '/uploads/202009/25/200925031859513.jpg|/uploads/202009/25/200925031903143.jpg', '', '', 'https://design.hongyanlv.com/showProPC.html?m=t-R62pH76', '', '8');

-- ----------------------------
-- Table structure for yzm_tag
-- ----------------------------
DROP TABLE IF EXISTS `yzm_tag`;
CREATE TABLE `yzm_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(30) NOT NULL DEFAULT '',
  `total` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `remarks` varchar(255) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_tag
-- ----------------------------
INSERT INTO `yzm_tag` VALUES ('1', '金牌讲师', '1', '', '1592216089');

-- ----------------------------
-- Table structure for yzm_tag_content
-- ----------------------------
DROP TABLE IF EXISTS `yzm_tag_content`;
CREATE TABLE `yzm_tag_content` (
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `tag_index` (`modelid`,`aid`),
  KEY `tagid_index` (`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_tag_content
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_teacher
-- ----------------------------
DROP TABLE IF EXISTS `yzm_teacher`;
CREATE TABLE `yzm_teacher` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(30) NOT NULL DEFAULT '',
  `title` varchar(180) NOT NULL DEFAULT '',
  `seo_title` varchar(200) NOT NULL DEFAULT '',
  `color` char(9) NOT NULL DEFAULT '',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `keywords` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `click` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `copyfrom` varchar(50) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `url` varchar(100) NOT NULL DEFAULT '',
  `flag` varchar(12) NOT NULL DEFAULT '' COMMENT '1置顶,2头条,3特荐,4推荐,5热点,6幻灯,7跳转',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `system` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `groupids_view` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '阅读权限',
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '阅读收费',
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '收费类型',
  `is_push` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否百度推送',
  `did` int(10) unsigned NOT NULL DEFAULT '0',
  `link_username` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`),
  KEY `catid` (`catid`,`status`),
  KEY `userid` (`userid`,`status`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_teacher
-- ----------------------------
INSERT INTO `yzm_teacher` VALUES ('1', '70', '1', 'yzmcms', '管理员', '曹丹妮', '曹丹妮_慕课研学平台', '', '1589738653', '1592811404', '', '华北革命战争历史博物馆', '98', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;PingFang SC&quot;, &quot;Lantinghei SC&quot;, &quot;Microsoft YaHei&quot;, arial, 宋体, sans-serif, tahoma; background-color: rgb(255, 255, 255); font-size: 20px;\">华北革命战争历史博物馆：曹丹妮</span></h1><p><span style=\"color: rgb(51, 51, 51); background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp; 曹丹妮，研究生学历，2018年8月研究生毕业后来到华北革命战争历史博物馆，成为纪念馆讲解员，曾被国家汉办选派前往欧洲孔子学院担任汉语教师志愿者。</span></p>', '原创', '/cos/uploads/202006/19/200619034305713.png', 'http://www.yht.test.com/teacher/1.html', '', '1', '1', '10', '0', '0', '1', '0', '7', 'caodanni');
INSERT INTO `yzm_teacher` VALUES ('2', '70', '1', 'yzmcms', '管理员', '郭琦', '郭琦_慕课研学平台', '', '1589738868', '1592811381', '', '雨花台讲解接待科科长', '149', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 20px;\">雨花台讲解接待科科长：郭琦</span></h1><p><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp; 郭琦，从2005年开始在雨花台工作了14年，现任雨花台烈士革命纪念馆社会教育部讲解接待科科长。在由中宣部，文化旅游部主办的全国红色故事讲解员大赛中，获得“全国优秀专业讲解员”称号。</span></p>', '原创', '/cos/uploads/202006/19/200619023715861.png', 'http://www.yht.test.com/teacher/2.html', '', '1', '1', '10', '0', '0', '1', '0', '8', 'guoqi');
INSERT INTO `yzm_teacher` VALUES ('4', '70', '1', 'yzmcms', '管理员', '谢美霞', '谢美霞_红研旅虚拟旅游研学平台', '', '1589738912', '1592903263', '', '上海历史博物馆专业讲解员', '142', '<p style=\"text-align: justify;\"><span style=\"font-size: 18px;\"></span></p><h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 20px;\">上海历史博物馆专业讲解员：谢美霞</span></h1><p style=\"text-align: center;\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592559392355&di=55e78f83cd01fa3211419250a825dd66&imgtype=0&src=http%3A%2F%2Ft8.baidu.com%2Fit%2Fu%3D458422703%2C1483802764%26fm%3D193\"/><br/></p><p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp;专业讲解员谢美霞</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); text-indent: 30px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\">江苏省红色故事宣讲大赛自3月启动以来，全省1300多名选手踊跃参与，用一个个动人的红色故事，带给我们这个春天满满的温暖与感动。大赛在抖音上设立的#江苏红色记忆#话题，短短一周内，相关视频的播放量就达到了340多万次。</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); text-indent: 30px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\"><br/></span></p><p style=\"text-align: center;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\"><strong><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft Yahei&quot;; font-size: 18px; text-align: center; text-indent: 30px; background-color: rgb(255, 255, 255);\">红色故事：生动、感人</span></strong></span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); text-indent: 30px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\"><br/></span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); text-indent: 30px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\">“1982 年，是丁香牺牲50 周年。阿乐来到雨花台，在丁香就义的地方，种下了一棵丁香树。此后每年，阿乐都会来到这里，看丁香，思丁香。1993 年清明，在雨花台的漫天细雨中，阿乐的骨灰伴着美丽的丁香花瓣被一起深埋在丁香树下。这对革命伴侣在分别了60 年后，又一次相聚在这里……”</span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); text-indent: 30px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\"><br/></span></p><p style=\"text-align: left;\"><span style=\"color: rgb(51, 51, 51); text-indent: 30px; background-color: rgb(255, 255, 255); font-family: arial, helvetica, sans-serif; font-size: 18px;\">在复赛中，小编听到了很多这样感人的革命故事：《最后的家书》《“活烈士”王继贵》等讲述了烈士们投身革命、不畏牺牲的大无畏精神；《血染的人桥》《我是一名小推车手》等讲述了军民同心、血肉一体的深情厚谊；《见证黎明前的斗争》《巾帼英烈冯菊芬》等讲述了地下工作者惊心动魄的战斗……</span></p>', '原创', '/cos/uploads/202006/19/200619023555572.png', 'http://www.yht.test.com/teacher/4.html', '', '1', '1', '10', '0', '0', '1', '0', '4', 'xiemeixia');
INSERT INTO `yzm_teacher` VALUES ('5', '70', '1', 'yzmcms', '管理员', '陈文婕', '陈文婕_红研旅虚拟旅游研学平台', '', '1591596402', '1592903248', '', '盐城新四军纪念馆讲解员', '91', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-size: 20px;\">西柏坡纪念馆讲解员：<span style=\"text-align: center;\">陈文婕</span></span></h1><p><img src=\"http://www.hongyanlv.com/cos/uploads/ueditor/image/20200615/1592213106792686.jpeg\" style=\"color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: 257px; width: 395px;\" width=\"395\" height=\"257\"/></p><p style=\"text-align: center;\"><span style=\"text-align: center; font-family: arial, helvetica, sans-serif; font-size: 18px;\">2020年获得盐城市红色故事宣讲大赛金牌讲解员称号</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">一段段宣讲“声”入人心，一个个红色故事感人至深……5月12日，盐城市红色故事宣讲大赛决赛在新四军纪念馆学术报告厅举行。市委常委、宣传部部长吴晓丹出席活动，并为大赛获奖者颁奖。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">本次大赛以“弘扬铁军精神、讲好红色故事、圆梦全面小康”为主题，旨在深入学习贯彻落实习近平新时代中国特色社会主义思想和党的十九大，以及十九届二中、三中、四中全会精神，推动《新时代爱国主义教育实施纲要》落细落小落实，大力营造凝心聚力谋发展、同心同德奔小康的浓厚氛围，凝聚起推动高质量发展走在苏北苏中前列的强大精神力量。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"/cos/uploads/ueditor/image/20200615/1592213102279567.jpeg\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: 576px; width: 825px;\" width=\"825\" height=\"576\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">市委常委、宣传部部长吴晓丹为获奖选手颁奖</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">来自全市各县（市、区）的36位选手进入决赛，他们分为志愿组和专业组两个组别进行比赛，参加决赛的22位志愿讲解员和14位专业讲解员经过前期层层选拔、脱颖而出。他们从多个角度声情并茂地讲述了一个个感人至深的红色故事，他们以扣人心弦、震撼心灵的宣讲，将观众们带回到那激情燃烧的红色岁月，传承红色基因，凝聚奋进力量，赢得了现场观众阵阵掌声。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"/cos/uploads/ueditor/image/20200615/1592213103681108.jpeg\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: 564px; width: 880px;\" width=\"880\" height=\"564\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">市委常委、宣传部部长吴晓丹为“盐城市红色故事宣讲大赛金牌讲解员”颁奖</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"/cos/uploads/ueditor/image/20200615/1592213103394534.jpeg\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: 593px; width: 871px;\" width=\"871\" height=\"593\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">市委宣传部副部长、市新闻出版（版权）局局长薛万昌为“盐城市红色故事宣讲大赛优秀讲解员”颁奖</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">经过激烈比拼，大赛最终评出5名“盐城市红色故事宣讲大赛金牌讲解员”、8名“盐城市红色故事宣讲大赛金牌志愿讲解员”、5名“盐城市红色故事宣讲大赛优秀讲解员”、8名“盐城市红色故事宣讲大赛优秀志愿讲解员”。</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"/cos/uploads/ueditor/image/20200615/1592213104163985.jpeg\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: 517px; width: 851px;\" width=\"851\" height=\"517\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">市文广旅局局长袁国萍、&nbsp;市广电总台台长戴为洋为“盐城市红色故事宣讲大赛金牌志愿讲解员”颁奖</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><img src=\"/cos/uploads/ueditor/image/20200615/1592213105647301.jpeg\" style=\"border: 0px; margin: 10px auto 0px; padding: 0px; display: block; max-width: 100%; height: 453px; width: 838px;\" width=\"838\" height=\"453\"/></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">市报业集团社长李强、新四军纪念馆馆长孙为祥为“盐城市红色故事宣讲大赛优秀志愿讲解员”颁奖</span></p><p style=\"border: 0px; margin-top: 0.63em; margin-bottom: 1.8em; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\"><span style=\"border: 0px; margin: 0px; padding: 0px; font-family: arial, helvetica, sans-serif; font-size: 18px;\">本次决赛由市委宣传部、市委党史办、市文化广电和旅游局、盐阜大众报报业集团、盐城市广播电视总台主办，新四军纪念馆承办。</span></p>', '原创', '/cos/uploads/202006/19/200619023538256.png', 'http://www.yht.test.com/teacher/5.html', '', '1', '1', '10', '0', '0', '1', '0', '4', 'chenwenjie');
INSERT INTO `yzm_teacher` VALUES ('6', '70', '1', 'yzmcms', '管理员', '张辰', '张辰_红研旅虚拟旅游研学平台', '', '1592547954', '1592811335', '', '古田会议纪念馆志愿者讲解员张辰', '55628', '<h1 label=\"标题居中\" style=\"font-size: 32px; font-weight: bold; border-bottom: 2px solid rgb(204, 204, 204); padding: 0px 4px 0px 0px; text-align: center; margin: 0px 0px 20px;\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 20px;\">古田会议纪念馆志愿者讲解员：张辰</span></h1><p class=\"content-text\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 15px; margin-bottom: 0px; padding: 0px; font-size: 17px; line-height: 27px; word-break: break-all; text-align: justify; color: rgb(48, 48, 48); font-family: &quot;PingFang SC&quot;, &quot;DIN Medium&quot;, Helvetica, Arial, &quot;\\\\5FAE软雅黑&quot;, &quot;\\\\9ED1体&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-size: 18px; font-family: arial, helvetica, sans-serif;\">&nbsp; &nbsp; &nbsp; &nbsp;11月28日-12月8日，由中央宣传部、文化和旅游部共同主办的第二届全国红色故事讲解员大赛在上海举行。大赛以“传承红色基因 培育时代新人”为主题，来自全国各省（自治区、直辖市）、新疆生产建设兵团以及军队系统的195名讲解员参赛。</span></p><p style=\"text-align:center\"><img src=\"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592559866150&di=243245b5874839fcb96e3ab1def66928&imgtype=0&src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_match%2F0%2F10951393072%2F0.jpg\"/></p><p class=\"content-text\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 15px; margin-bottom: 0px; padding: 0px; font-size: 17px; line-height: 27px; word-break: break-all; text-align: justify; color: rgb(48, 48, 48); font-family: &quot;PingFang SC&quot;, &quot;DIN Medium&quot;, Helvetica, Arial, &quot;\\\\5FAE软雅黑&quot;, &quot;\\\\9ED1体&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp;我省选送6名选手（3名专业、3名志愿者）参加了专业组和志愿者组的比赛。经过激烈角逐，我省选手周甜获得专业组第5名、孙艺获得志愿者组第9名（各组前十名为红色故事金牌讲解员），任梦获得专业组第13名、张辰获得志愿者第27名（荣获红色故事优秀讲解员），取得了历史性的好成绩。<br/></span></p><p class=\"content-text\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 15px; margin-bottom: 0px; padding: 0px; font-size: 17px; line-height: 27px; word-break: break-all; text-align: justify; color: rgb(48, 48, 48); font-family: &quot;PingFang SC&quot;, &quot;DIN Medium&quot;, Helvetica, Arial, &quot;\\\\5FAE软雅黑&quot;, &quot;\\\\9ED1体&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp;参加本次大赛的讲解员均来自全国爱国主义教育示范基地和全国红色旅游经典景区等，每名选手都是经过层层选拔出来的“状元”“榜眼”，具有相当的职业经历和经验，可谓人才济济、高手云集。</span></p><p class=\"content-text\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 15px; margin-bottom: 0px; padding: 0px; font-size: 17px; line-height: 27px; word-break: break-all; text-align: justify; color: rgb(48, 48, 48); font-family: &quot;PingFang SC&quot;, &quot;DIN Medium&quot;, Helvetica, Arial, &quot;\\\\5FAE软雅黑&quot;, &quot;\\\\9ED1体&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp; 大赛设专业讲解员组和志愿讲解员组，通过初赛和决赛两个阶段，根据决赛总分排名，最终决出全国“金牌讲解员”和“金牌志愿讲解员”各10名；其余进入决赛选手为全国“优秀讲解员”和“优秀志愿讲解员”。</span></p><p class=\"content-text\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 15px; margin-bottom: 0px; padding: 0px; font-size: 17px; line-height: 27px; word-break: break-all; text-align: justify; color: rgb(48, 48, 48); font-family: &quot;PingFang SC&quot;, &quot;DIN Medium&quot;, Helvetica, Arial, &quot;\\\\5FAE软雅黑&quot;, &quot;\\\\9ED1体&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp;作为红色旅游五好讲解员试点省份之一，我省高度重视讲解员队伍建设，积极先行先试，出台了管理办法、评选了首批五好讲解员、举办了培训班、编制了一套培训读本和一套红色旅游精品讲解词、组建了“五老讲解员队伍”、建立了五好讲解员数据库等，全面提升了我省讲解员的总体素质，为备战红色故事讲解员大赛储备了一批优秀的讲解员。</span></p><p class=\"content-text\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 15px; margin-bottom: 0px; padding: 0px; font-size: 17px; line-height: 27px; word-break: break-all; text-align: justify; color: rgb(48, 48, 48); font-family: &quot;PingFang SC&quot;, &quot;DIN Medium&quot;, Helvetica, Arial, &quot;\\\\5FAE软雅黑&quot;, &quot;\\\\9ED1体&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-family: arial, helvetica, sans-serif; font-size: 18px;\">&nbsp; &nbsp; &nbsp; &nbsp;今年9月，由江西省委宣传部、江西省文化和旅游厅主办的第二届江西省红色故事讲解员大赛暨首届江西省红色旅游五好讲解员大赛在南昌举办。各设区市选拔推荐了37名专业讲解员和38名志愿讲解员参加大赛。我省在最后进入省赛决赛的选手中好中选优，最终选派6名选手参加本届全国大赛，取得获得2名金牌讲解员、2名优秀讲解员的好成绩！</span></p><p class=\"content-text\" style=\"-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 15px; margin-bottom: 0px; padding: 0px; font-size: 17px; line-height: 27px; word-break: break-all; text-align: justify; color: rgb(48, 48, 48); font-family: &quot;PingFang SC&quot;, &quot;DIN Medium&quot;, Helvetica, Arial, &quot;\\\\5FAE软雅黑&quot;, &quot;\\\\9ED1体&quot;; white-space: normal; background-color: rgb(255, 255, 255);\"><br/></p><p><br/></p>', '原创', '/cos/uploads/202006/19/200619023451711.jpg', 'http://www.yht.test.com/teacher/6.html', '1,2,3,4,5', '1', '1', '1', '0', '0', '1', '0', '4', 'zhangchen');

-- ----------------------------
-- Table structure for yzm_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `yzm_urlrule`;
CREATE TABLE `yzm_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `urlrule` varchar(100) NOT NULL DEFAULT '' COMMENT 'URL规则',
  `route` varchar(100) NOT NULL DEFAULT '' COMMENT '指向的路由',
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_urlrule
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_wechat_auto_reply
-- ----------------------------
DROP TABLE IF EXISTS `yzm_wechat_auto_reply`;
CREATE TABLE `yzm_wechat_auto_reply` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1关键字回复2自动回复3关注回复',
  `keyword` varchar(64) NOT NULL DEFAULT '' COMMENT '关键字回复的关键字',
  `keyword_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1完全匹配0模糊匹配',
  `relation_id` varchar(15) NOT NULL DEFAULT '' COMMENT '图文回复的关联内容ID',
  `content` text NOT NULL COMMENT '文本回复的内容',
  PRIMARY KEY (`id`),
  KEY `type_index` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_wechat_auto_reply
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_wechat_group
-- ----------------------------
DROP TABLE IF EXISTS `yzm_wechat_group`;
CREATE TABLE `yzm_wechat_group` (
  `id` mediumint(9) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_wechat_group
-- ----------------------------
INSERT INTO `yzm_wechat_group` VALUES ('0', '未分组', '0');
INSERT INTO `yzm_wechat_group` VALUES ('1', '黑名单', '0');
INSERT INTO `yzm_wechat_group` VALUES ('2', '星标组', '0');

-- ----------------------------
-- Table structure for yzm_wechat_mass
-- ----------------------------
DROP TABLE IF EXISTS `yzm_wechat_mass`;
CREATE TABLE `yzm_wechat_mass` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message_type` char(6) NOT NULL DEFAULT '' COMMENT '消息类型',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0通过openid群发1通过分组群发2全部',
  `media_id` varchar(200) NOT NULL DEFAULT '',
  `msg_id` varchar(10) NOT NULL DEFAULT '',
  `msg_data_id` varchar(10) NOT NULL DEFAULT '' COMMENT '图文消息的数据ID',
  `receive` varchar(255) NOT NULL DEFAULT '' COMMENT '按组群发为组id，否则为openid列表',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1任务提交成功2群发已结束',
  `masstime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_wechat_mass
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_wechat_media
-- ----------------------------
DROP TABLE IF EXISTS `yzm_wechat_media`;
CREATE TABLE `yzm_wechat_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `originname` varchar(50) NOT NULL DEFAULT '',
  `filename` varchar(50) NOT NULL DEFAULT '',
  `filepath` char(200) NOT NULL DEFAULT '',
  `type` char(6) NOT NULL DEFAULT '',
  `media_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0临时素材,1永久素材',
  `media_id` varchar(200) NOT NULL DEFAULT '',
  `created_at` int(10) unsigned NOT NULL DEFAULT '0',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '永久素材的图片url/图文素材标题',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_wechat_media
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_wechat_menu
-- ----------------------------
DROP TABLE IF EXISTS `yzm_wechat_menu`;
CREATE TABLE `yzm_wechat_menu` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `parentid` mediumint(6) NOT NULL DEFAULT '0',
  `name` varchar(48) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1关键字2跳转',
  `keyword` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `event` varchar(64) NOT NULL DEFAULT '',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_wechat_menu
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_wechat_message
-- ----------------------------
DROP TABLE IF EXISTS `yzm_wechat_message`;
CREATE TABLE `yzm_wechat_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(100) NOT NULL DEFAULT '',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否为系统回复',
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `msgtype` varchar(32) NOT NULL DEFAULT '' COMMENT '消息类型',
  `isread` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '1已读0未读',
  `content` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`),
  KEY `issystem` (`issystem`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_wechat_message
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_wechat_scan
-- ----------------------------
DROP TABLE IF EXISTS `yzm_wechat_scan`;
CREATE TABLE `yzm_wechat_scan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scan` varchar(65) NOT NULL DEFAULT '' COMMENT '场景',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0永久,1临时',
  `expire_time` char(7) NOT NULL DEFAULT '0' COMMENT '二维码有效时间',
  `ticket` varchar(150) NOT NULL DEFAULT '',
  `remarks` varchar(255) NOT NULL DEFAULT '' COMMENT '场景备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_wechat_scan
-- ----------------------------

-- ----------------------------
-- Table structure for yzm_wechat_user
-- ----------------------------
DROP TABLE IF EXISTS `yzm_wechat_user`;
CREATE TABLE `yzm_wechat_user` (
  `wechatid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(100) NOT NULL DEFAULT '',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1关注0取消',
  `nickname` varchar(50) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `city` char(50) NOT NULL DEFAULT '',
  `province` char(50) NOT NULL DEFAULT '',
  `country` char(50) NOT NULL DEFAULT '',
  `headimgurl` char(255) NOT NULL DEFAULT '',
  `subscribe_time` int(10) unsigned NOT NULL DEFAULT '0',
  `remark` varchar(50) NOT NULL DEFAULT '',
  `scan` varchar(30) NOT NULL DEFAULT '' COMMENT '来源场景',
  PRIMARY KEY (`wechatid`),
  UNIQUE KEY `openid` (`openid`),
  KEY `groupid` (`groupid`),
  KEY `subscribe` (`subscribe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yzm_wechat_user
-- ----------------------------
