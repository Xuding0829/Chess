/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : chessplay

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 20/06/2024 20:36:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('370d96acae67457eaceb7264dbf0c26e', '2024-6-20 10:36:21', 'lisi', '2342\n');
INSERT INTO `comment` VALUES ('66b8150d630c4a29b80cb6c21e390fdf', '2024-6-19 10:06:00', '', '423\n');
INSERT INTO `comment` VALUES ('6a9c397f31c34baa8cecb066a20caca8', '2024-6-20 10:50:45', 'lis', '312\n');
INSERT INTO `comment` VALUES ('70c74898c06f45df810981c8b86f8f80', '2024-6-12 23:18:49', '账户已注销', '3112\n');
INSERT INTO `comment` VALUES ('a98490f24a22441db71899d074da7384', '2024-6-20 10:28:56', 'lisi', '3131231\n');
INSERT INTO `comment` VALUES ('b950bf03284749d884a529d028a85236', '2024-6-20 10:24:08', 'lisi', '12321\n');
INSERT INTO `comment` VALUES ('ff3736073aeb4f8188a14c265f3d5b73', '2024-6-20 10:26:45', 'lis', 'e242\n');

-- ----------------------------
-- Table structure for competition
-- ----------------------------
DROP TABLE IF EXISTS `competition`;
CREATE TABLE `competition`  (
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `win` int NOT NULL,
  `fall` int NOT NULL,
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `competition_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of competition
-- ----------------------------
INSERT INTO `competition` VALUES ('1', 0, 0, '1');

-- ----------------------------
-- Table structure for gifimg
-- ----------------------------
DROP TABLE IF EXISTS `gifimg`;
CREATE TABLE `gifimg`  (
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `filepath` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gifimg
-- ----------------------------
INSERT INTO `gifimg` VALUES ('imcainiao(1级)_abb5712(1级)_20070731004118.gif', 'chessManual\\imcainiao(1级)_abb5712(1级)_20070731004118.gif');
INSERT INTO `gifimg` VALUES ('imcainiao(1级)_bsho(1级)_20070730190353.gif', 'chessManual\\imcainiao(1级)_bsho(1级)_20070730190353.gif');
INSERT INTO `gifimg` VALUES ('imcainiao(1级)_kim0232(1级)_20070730211146.gif', 'chessManual\\imcainiao(1级)_kim0232(1级)_20070730211146.gif');
INSERT INTO `gifimg` VALUES ('imcainiao(1级)_木子水青(1级)_20070730184149.gif', 'chessManual\\imcainiao(1级)_木子水青(1级)_20070730184149.gif');
INSERT INTO `gifimg` VALUES ('imcainiao(1级)_空皋堆扁(2级)_20070730205246.gif', 'chessManual\\imcainiao(1级)_空皋堆扁(2级)_20070730205246.gif');
INSERT INTO `gifimg` VALUES ('imcainiao(2段)_3590832(2段)_20070731153007.gif', 'chessManual\\imcainiao(2段)_3590832(2段)_20070731153007.gif');
INSERT INTO `gifimg` VALUES ('imcainiao(2段)_amo2002(1段)_20070731154734.gif', 'chessManual\\imcainiao(2段)_amo2002(1段)_20070731154734.gif');
INSERT INTO `gifimg` VALUES ('imcainiao(2段)_观棋不语(2段)_20070731150642.gif', 'chessManual\\imcainiao(2段)_观棋不语(2段)_20070731150642.gif');
INSERT INTO `gifimg` VALUES ('imcainiao(2段)_观棋不语(2段)_20070731151920.gif', 'chessManual\\imcainiao(2段)_观棋不语(2段)_20070731151920.gif');
INSERT INTO `gifimg` VALUES ('justfor.gif', 'chessManual\\justfor.gif');
INSERT INTO `gifimg` VALUES ('kdy5136(1级)_imcainiao(1级)_20070730203013.gif', 'chessManual\\kdy5136(1级)_imcainiao(1级)_20070730203013.gif');
INSERT INTO `gifimg` VALUES ('lll9p-aq天堂aq.gif', 'chessManual\\lll9p-aq天堂aq.gif');
INSERT INTO `gifimg` VALUES ('lll9p-yrj777.gif', 'chessManual\\lll9p-yrj777.gif');
INSERT INTO `gifimg` VALUES ('lll9p-yrj7772.gif', 'chessManual\\lll9p-yrj7772.gif');
INSERT INTO `gifimg` VALUES ('moonigong(1段)_imcainiao(1级)_20070731145155.gif', 'chessManual\\moonigong(1段)_imcainiao(1级)_20070731145155.gif');
INSERT INTO `gifimg` VALUES ('ohkong0428(1段)_imcainiao(1级)_20070730225506.gif', 'chessManual\\ohkong0428(1段)_imcainiao(1级)_20070730225506.gif');
INSERT INTO `gifimg` VALUES ('ohkong0428(1段)_imcainiao(1级)_20070730231648.gif', 'chessManual\\ohkong0428(1段)_imcainiao(1级)_20070730231648.gif');
INSERT INTO `gifimg` VALUES ('thumbsup(1级)_imcainiao(1级)_20070731144153.gif', 'chessManual\\thumbsup(1级)_imcainiao(1级)_20070731144153.gif');
INSERT INTO `gifimg` VALUES ('刘轶1.gif', 'chessManual\\刘轶1.gif');
INSERT INTO `gifimg` VALUES ('刘轶2.gif', 'chessManual\\刘轶2.gif');
INSERT INTO `gifimg` VALUES ('劳里林-屠晨阳.gif', 'chessManual\\劳里林-屠晨阳.gif');
INSERT INTO `gifimg` VALUES ('劳里林-张立.gif', 'chessManual\\劳里林-张立.gif');
INSERT INTO `gifimg` VALUES ('劳里林-毛屏翔.gif', 'chessManual\\劳里林-毛屏翔.gif');
INSERT INTO `gifimg` VALUES ('劳里林-毛屏翔2.gif', 'chessManual\\劳里林-毛屏翔2.gif');
INSERT INTO `gifimg` VALUES ('劳里林-罗家照.gif', 'chessManual\\劳里林-罗家照.gif');
INSERT INTO `gifimg` VALUES ('劳里林-贺林.gif', 'chessManual\\劳里林-贺林.gif');
INSERT INTO `gifimg` VALUES ('劳里林-赖信宇.gif', 'chessManual\\劳里林-赖信宇.gif');
INSERT INTO `gifimg` VALUES ('劳里林-陈国宏.gif', 'chessManual\\劳里林-陈国宏.gif');
INSERT INTO `gifimg` VALUES ('劳里林-黄韬.gif', 'chessManual\\劳里林-黄韬.gif');
INSERT INTO `gifimg` VALUES ('劳里龙-满寿国.gif', 'chessManual\\劳里龙-满寿国.gif');
INSERT INTO `gifimg` VALUES ('吕政-劳里林.gif', 'chessManual\\吕政-劳里林.gif');
INSERT INTO `gifimg` VALUES ('回龙征.gif', 'chessManual\\回龙征.gif');
INSERT INTO `gifimg` VALUES ('排局.gif', 'chessManual\\排局.gif');
INSERT INTO `gifimg` VALUES ('汲吝茄(1级)_imcainiao(1级)_20070730192429.gif', 'chessManual\\汲吝茄(1级)_imcainiao(1级)_20070730192429.gif');
INSERT INTO `gifimg` VALUES ('盲點1.gif', 'chessManual\\盲點1.gif');
INSERT INTO `gifimg` VALUES ('程和呈-hhaanng.gif', 'chessManual\\程和呈-hhaanng.gif');
INSERT INTO `gifimg` VALUES ('第六届驻邕高校杯杨绍灵劳里林.gif', 'chessManual\\第六届驻邕高校杯杨绍灵劳里林.gif');
INSERT INTO `gifimg` VALUES ('罗加照.gif', 'chessManual\\罗加照.gif');
INSERT INTO `gifimg` VALUES ('罗加照2007-10-12.gif', 'chessManual\\罗加照2007-10-12.gif');
INSERT INTO `gifimg` VALUES ('颠倒图.gif', 'chessManual\\颠倒图.gif');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('[LG杯]20日LG杯首轮：辜梓豪VS李昌锡 谢尔豪VS元晟溱等', 'http://www.eweiqi.com/uploadfile/2024/0519/20240519102618598.jpg', '<div class=\"con\" style=\"line-height:30px;padding:10px 5px; font-size:15px;\"><div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0519/20240519102618598.jpg\" /></div>\r\n　　5月19日，第29届LG杯世界围棋棋王战开幕式及抽签仪式在韩国进行，首轮焦点对局：辜梓豪VS李昌锡，谢尔豪VS元晟溱，范廷钰VS李志贤。中国柯洁、芈昱廷、丁浩、韩国申真谞、卞相壹、朴廷桓、申旻埈、日本芝野虎丸8人首轮轮空。\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0519/20240519102633927.jpg\" /></div>\r\n<div>　　本届LG杯前两轮比赛分别于20日和22日进行，弈城网将于北京时间20日9时棋谱直播首轮比赛。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0519/20240519102802896.jpg\" /><br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0519/20240519102802202.jpg\" /></div>\r\n<div><strong>　　首轮对阵（20日9:00）：</strong></div>\r\n<div>　　金明训（韩） VS 金真辉（韩）</div>\r\n<div>　　元晟溱（韩） VS 谢尔豪（中）</div>\r\n<div>　　朴键昊（韩） VS 许家元（日）</div>\r\n<div>　　李昌锡（韩） VS 辜梓豪（中）</div>\r\n<div>　　崔显宰（韩） VS 许皓鋐（中国台北）</div>\r\n<div>　　姜东润（韩） VS 赖均辅（中国台北）</div>\r\n<div>　　韩相朝（韩） VS 伊田笃史（日）</div>\r\n<div>　　李志贤（韩） VS 范廷钰（中）</div>\r\n</div>', '曲江 ｜ 2024-05-19 ｜ ', 1);
INSERT INTO `news` VALUES ('[LG杯]22日直播LG杯16强赛 大胖围棋讲解芈昱廷VS卞相壹', 'http://www.eweiqi.com/uploadfile/2024/0521/20240521075846418.jpg', '<div class=\"con\" style=\"line-height:30px;padding:10px 5px; font-size:15px;\"><div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0521/20240521075846418.jpg\" /></div>\r\n　　5月22日，第29届LG杯世界围棋棋王战16强赛将在韩国进行，焦点战：柯洁VS李昌锡，芈昱廷VS卞相壹。弈城网将于北京时间22日9时棋谱直播第二轮比赛，并由大胖围棋在线文字讲解芈昱廷VS卞相壹的对局。（曲江）\r\n<div><strong>　　第二轮对阵（北京时间22日9:00）：</strong></div>\r\n<div>　　申旻埈（韩） VS 赖均辅（中国台北）</div>\r\n<div>　　朴廷桓（韩） VS 芝野虎丸（日）</div>\r\n<div>　　卞相壹（韩） VS 芈昱廷（中）</div>\r\n<div>　　申真谞（韩） VS 韩相朝（韩）</div>\r\n<div>　　李昌锡（韩） VS 柯洁（中）</div>\r\n<div>　　元晟溱（韩） VS 许家元（日）</div>\r\n<div>　　金真辉（韩） VS 丁浩（中）</div>\r\n<div>　　李志贤（韩） VS 许皓鋐（中国台北）</div>\r\n</div>', '曲江 ｜ 2024-05-21 ｜ ', 2);
INSERT INTO `news` VALUES ('[LG杯]LG杯柯洁丁浩打进八强 申真谞内战爆冷不敌韩相朝', 'http://www.eweiqi.com/uploadfile/2024/0522/20240522034145911.jpg', '<div class=\"con\" style=\"line-height:30px;padding:10px 5px; font-size:15px;\"><div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522042228509.jpg\" /><br />\r\n第29届LG杯世界围棋棋王战第二轮</div>\r\n　　5月22日，第29届LG杯世界围棋棋王战第二轮比赛在韩国进行，中国柯洁、丁浩、韩国卞相壹、朴廷桓、申旻埈、元晟溱、李志贤、韩相朝分别战胜对手，打进八强。卫冕冠军申真谞爆冷不敌韩相朝，惨遭淘汰。\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522034145911.jpg\" /><br />\r\n柯洁VS李昌锡</div>\r\n<div>　　柯洁九段执白对阵上轮淘汰了辜梓豪的李昌锡九段，去年围甲柯洁曾输给对手。本局序盘阶段柯洁似乎在上方有误算，转换之后白棋形势不佳。但优势下李昌锡却在右边失误连连，问题手、缓手不断，柯洁抢到下方二路&ldquo;夹&rdquo;后局面开始朝着白棋有利的方向发展。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522034233981.jpg\" /><br />\r\n柯洁九段</div>\r\n<div>　　官子阶段黑如走到下方全盘最大处局面尙是五五开，但李昌锡却错过要点，柯洁占据要点后奠定胜局。至236手李昌锡认输，柯洁第一个结束了战斗。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522034145418.jpg\" /><br />\r\n申真谞VS韩相朝</div>\r\n<div>　　卫冕冠军申真谞九段与韩相朝六段的&ldquo;内战&rdquo;，原以为在韩国大杀四方的韩国第一人会轻取对手，但出生于1999年、此前名不见经传的韩相朝却表现强悍，最终结果也令人大跌眼镜。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522034233235.jpg\" /><br />\r\n韩相朝六段</div>\r\n<div>　　这盘棋执黑的韩相朝前边130余手丝毫不落下风，期间还两度取得微弱优势。后半盘白棋对下方孤棋的处理本已不佳，但也许是艺高人胆大，申真谞在大龙岌岌可危的关键时刻居然还在外边接了一手，这也成为白棋本局的败着。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522034120219.png\" /><br />\r\n148败着</div>\r\n<div>　　韩相朝对下方白棋亮出屠刀，申真谞被迫断尾求生，败局已定。至225手申真谞黯然认输，也延续了LG杯历史上无人能卫冕的&ldquo;魔咒&rdquo;。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522034259562.jpg\" /><br />\r\n丁浩VS金真辉</div>\r\n<div>　　丁浩九段执白对韩国金真辉七段，进入中盘时金真辉先是在左上角下出一步二路&ldquo;立&rdquo;的问题手，不久又接连下出左边&ldquo;碰&rdquo;和下边二路&ldquo;尖&rdquo;的两步失着，丁浩掌控局面后轻松取胜。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522034259646.jpg\" /><br />\r\n芈昱廷VS卞相壹</div>\r\n<div>　　芈昱廷九段执白对上届亚军卞相壹九段，开局不久双方在左下短兵相接，白棋胜率稳步向个位数挺进。但中盘时卞相壹在右上的一通乱撞毫无必然性，形势已大幅接近，接着黑棋中腹的一手愚型&ldquo;断&rdquo;直接把自己的胜率送到个位数。可惜官子阶段芈昱廷失误不断，在互抡了一段小&ldquo;勺&rdquo;之后，还是卞相壹把握住了机会，最终以2目半胜出。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522034259460.jpg\" /><br />\r\n朴廷桓（右）战胜芝野虎丸</div>\r\n<div>　　值得一提的是，朴廷桓九段完胜日本芝野虎丸九段，成为到目前为止唯一在今年所有世界大赛中都还&ldquo;活着&rdquo;的棋手（应氏杯十六强、春兰杯八强、烂柯杯八强、LG杯八强）。\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522042021379.jpg\" /></div>\r\n<div>　　　　赛后进行了八强抽签，柯洁对阵韩相朝，丁浩对阵李志贤。本届LG杯第一阶段比赛至此结束，八强战、半决赛将于9月30日、10月2日进行。（曲江）</div>\r\n<div><strong>　　第二轮赛果：</strong></div>\r\n<div>　　申旻埈（韩） 胜 赖均辅（中国台北）</div>\r\n<div>　　朴廷桓（韩） 胜 芝野虎丸（日）</div>\r\n<div>　　卞相壹（韩） 胜 芈昱廷（中）</div>\r\n<div>　　申真谞（韩） 负 韩相朝（韩）</div>\r\n<div>　　李昌锡（韩） 负 柯洁（中）</div>\r\n<div>　　元晟溱（韩） 胜 许家元（日）</div>\r\n<div>　　金真辉（韩） 负 丁浩（中）</div>\r\n<div>　　李志贤（韩） 胜 许皓鋐（中国台北）<br />\r\n<div><strong>　　八强对阵（9月30日）：</strong></div>\r\n<div>　　元晟溱（韩） VS 申旻埈（韩）</div>\r\n<div>　　韩相朝（韩） VS 柯洁（中）</div>\r\n<div>　　李志贤（韩） VS 丁浩（中）</div>\r\n<div>　　朴廷桓（韩） VS 卞相壹（韩）</div>\r\n</div>\r\n</div>\r\n<br />\r\n</div>', '曲江 ｜ 2024-05-22 ｜ ', 3);
INSERT INTO `news` VALUES ('[LG杯]LG杯第二轮抽签结果：柯洁VS李昌锡 芈昱廷VS卞相壹', 'http://www.eweiqi.com/uploadfile/2024/0520/20240520042844145.jpg', '<div class=\"con\" style=\"line-height:30px;padding:10px 5px; font-size:15px;\"><div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520042844145.jpg\" /><br />\r\n16强合影</div>\r\n　　5月20日，第29届LG杯世界围棋棋王战第一轮比赛结束后，接下来第二轮抽签，柯洁、申真谞等8位首轮轮空棋手加入战阵，焦点对局：柯洁VS李昌锡，芈昱廷VS卞相壹。\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520042948439.jpg\" /><br />\r\n抽签现场</div>\r\n<div>　　弈城网将于北京时间22日9时棋谱直播第二轮比赛，并由大胖围棋在线文字讲解芈昱廷VS卞相壹的对局。（曲江）</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520043003766.jpg\" /><br />\r\n柯洁<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520043003670.jpg\" /><br />\r\n芈昱廷<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520043003558.jpg\" /><br />\r\n丁浩</div>\r\n<div><strong>　　第二轮对阵（北京时间22日9:00）：</strong></div>\r\n<div>　　申旻埈（韩） VS 赖均辅（中国台北）</div>\r\n<div>　　朴廷桓（韩） VS 芝野虎丸（日）</div>\r\n<div>　　卞相壹（韩） VS 芈昱廷（中）</div>\r\n<div>　　申真谞（韩） VS 韩相朝（韩）</div>\r\n<div>　　李昌锡（韩） VS 柯洁（中）</div>\r\n<div>　　元晟溱（韩） VS 许家元（日）</div>\r\n<div>　　金真辉（韩） VS 丁浩（中）</div>\r\n<div>　　李志贤（韩） VS 许皓鋐（中国台北）</div>\r\n</div>', '曲江 ｜ 2024-05-20 ｜ ', 4);
INSERT INTO `news` VALUES ('[LG杯]LG杯首轮中国三世冠全败 22日柯洁芈昱廷丁浩将出战', 'http://www.eweiqi.com/uploadfile/2024/0520/20240520035559936.jpg', '<div class=\"con\" style=\"line-height:30px;padding:10px 5px; font-size:15px;\"><div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520035559936.jpg\" /><br />\r\n第29届LG杯世界围棋棋王战第一轮</div>\r\n　　5月20日，第29届LG杯世界围棋棋王战第一轮比赛在韩国进行，中国台北许皓鋐、赖均辅、韩国元晟溱、李昌锡、李志贤、金真辉、韩相朝、日本许家元8位棋手分别战胜对手，晋级16强。中国世界冠军辜梓豪、范廷钰、谢尔豪分别不敌李昌锡、李志贤、元晟溱，被淘汰出局。\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520035559992.jpg\" /><br />\r\n第一轮赛场</div>\r\n<div>　　由于中国柯洁、芈昱廷、丁浩、韩国申真谞、卞相壹、朴廷桓、申旻埈、日本芝野虎丸8人轮空，所以本轮并没有什么&ldquo;强强对话&rdquo;，但即便如此，三位中国世界冠军仍然全败。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520035648204.jpg\" /><br />\r\n李昌锡VS辜梓豪</div>\r\n<div>　　辜梓豪与李昌锡历史战绩2比2，其中有三盘是今年的韩国围棋联赛，这三盘中的两盘更是在本月15日、16日进行。由于近期频繁交手，彼此棋路也都十分熟悉，本局前80余手形势极为胶着。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520035709898.jpg\" /><br />\r\n辜梓豪九段<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520035709769.jpg\" /><br />\r\n李昌锡九段</div>\r\n<div>　　中盘阶段，辜梓豪在上方的一步&ldquo;粘&rdquo;不够紧凑，接着在下方的二路跳下又显得冒进。在随后进行的对攻之中，辜梓豪也是连连错过要点。最后关头黑棋在上方与白拼劫实属无奈之举，至150手李昌锡消劫，辜梓豪认输。总体看，这盘棋辜梓豪完全不在状态。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520035801301.jpg\" /><br />\r\n元晟溱VS谢尔豪</div>\r\n<div>　　与辜梓豪一样，谢尔豪对韩国老将元晟溱之战也是不发挥的一局。本局前半盘同样是胶着状态，中盘时谢尔豪黑棋淡定围中腹明显是形势判断上出了问题。元晟溱机敏瞄准上方黑棋薄味进行冲击，一番操作之后，黑大空惨遭&ldquo;扒皮&rdquo;。后面谢尔豪虽放弃中腹转至左边围空，但实地仍然不足，至212手中盘败下阵来。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520035801143.jpg\" /><br />\r\n李志贤VS范廷钰</div>\r\n<div>　　范廷钰执白对李志贤，中盘时黑棋取得领先，白胜率降至个位数。临近官子阶段，李志贤在中腹的一步大恶手致使胜率暴跌70%余点，上方黑大龙岌岌可危。无奈范廷钰没有抓住机会追究黑大龙的薄味，李志贤做活大龙后奠定胜局。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0520/20240520041630188.jpg\" /></div>\r\n<div>　　赛后进行了第二轮抽签，柯洁、申真谞等8位首轮轮空棋手加入战阵，焦点对局：柯洁VS李昌锡，芈昱廷VS卞相壹。第二轮比赛将于22日进行，弈城网将继续进行棋谱直播。（曲江）\r\n<div><strong>　　首轮赛果：</strong></div>\r\n<div>　　金明训（韩） 负 金真辉（韩）</div>\r\n<div>　　元晟溱（韩） 胜 谢尔豪（中）</div>\r\n<div>　　朴键昊（韩） 负 许家元（日）</div>\r\n<div>　　李昌锡（韩） 胜 辜梓豪（中）</div>\r\n<div>　　崔显宰（韩） 负 许皓鋐（中国台北）</div>\r\n<div>　　姜东润（韩） 负 赖均辅（中国台北）</div>\r\n<div>　　韩相朝（韩） 胜 伊田笃史（日）</div>\r\n<div>　　李志贤（韩） 胜 范廷钰（中）</div>\r\n<div><strong>　　第二轮对阵（北京时间22日9:00）：</strong></div>\r\n<div>　　申旻埈（韩） VS 赖均辅（中国台北）</div>\r\n<div>　　朴廷桓（韩） VS 芝野虎丸（日）</div>\r\n<div>　　卞相壹（韩） VS 芈昱廷（中）</div>\r\n<div>　　申真谞（韩） VS 韩相朝（韩）</div>\r\n<div>　　李昌锡（韩） VS 柯洁（中）</div>\r\n<div>　　元晟溱（韩） VS 许家元（日）</div>\r\n<div>　　金真辉（韩） VS 丁浩（中）</div>\r\n<div>　　李志贤（韩） VS 许皓鋐（中国台北）</div>\r\n</div>\r\n<br />\r\n</div>', '曲江 ｜ 2024-05-20 ｜ ', 5);
INSERT INTO `news` VALUES ('[女子围甲]女甲八冠王江苏致远队靖江摆擂 迎战厦门国际银行队', 'http://www.eweiqi.com/uploadfile/2024/0523/20240523081105757.jpg', '<div class=\"con\" style=\"line-height:30px;padding:10px 5px; font-size:15px;\"><div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081105757.jpg\" /><br />\r\n第十一届&ldquo;中信和业杯&rdquo;中国女子围棋甲级联赛靖江专场开幕式</div>\r\n　　5月23日，第十一届&ldquo;中信和业杯&rdquo;中国女子围棋甲级联赛第五轮江苏致远队VS厦门国际银行队&ldquo;靖江专场&rdquo;开幕式在江苏靖江市靖江扬子江大酒店举行，出席开幕式的江苏省、泰州市领导和嘉宾有：江苏省体育总会副秘书长徐志胜，江苏省棋牌运动管理中心副主任、江苏棋院副院长、江苏省围棋协会副会长兼秘书长丁波，新华报业扬子晚报江苏新闻部主任、内参部主任张洪，江苏省围棋协会副会长曹华新，泰州市体育局二级调研员秦国梁，泰州市围棋协会会长陈士松，本次比赛裁判长马林；靖江市领导有：靖江市委书记、经济技术开发区党工委书记张长平，靖江市委常委、宣传部部长姚东辉，靖江市文体广电和旅游局局长戴靖乾。两支比赛队伍江苏致远队、厦门国际银行队的队员於之莹八段、李思璇四段、尹渠三段、吴依铭六段、高星四段、冯韵嘉二段也出席了开幕式。\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081123202.jpg\" /><br />\r\n开幕式现场<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081139653.jpg\" /><br />\r\n江苏致远队於之莹、李思璇、尹渠<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081139249.jpg\" /><br />\r\n厦门国际银行队高星、冯韵嘉、吴依铭</div>\r\n<div>　　开幕式上，江苏省棋牌运动管理中心副主任、江苏棋院副院长、江苏省围棋协会副会长兼秘书长丁波、泰州市体育局二级调研员秦国梁、江苏女子世界冠军於之莹分别致辞，裁判长马林宣布了对阵。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081235915.jpg\" /><br />\r\n江苏省棋牌运动管理中心副主任、江苏棋院副院长、江苏省围棋协会副会长兼秘书长丁波</div>\r\n<div>　　丁波在致辞中表示：&ldquo;泰州靖江市棋类运动底蕴深厚，是全省棋类运动普及发展水平最高、基础最扎实的地区之一，为江苏棋类事业发展做出了重要贡献，在全省棋类运动发展中一直走在前列。靖江可以说是我们江苏棋类运动的福地、宝地，一直积极主动承接我们的围甲专场比赛，付出了大量的精力。迄今为止，我们江苏女子围甲八冠二亚，这份成绩单的背后有你们的付出和支持，江苏围棋也将一如既往、奋力前行。&rdquo;</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081303923.jpg\" /><br />\r\n泰州市体育局二级调研员秦国梁<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081301325.jpg\" /><br />\r\n裁判长马林<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081303118.jpg\" /><br />\r\n江苏女子世界冠军於之莹</div>\r\n<div>　　最后，由靖江市委书记、经济技术开发区党工委书记张长平致辞并宣布比赛开幕。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0523/20240523081421267.jpg\" /><br />\r\n靖江市委书记、经济技术开发区党工委书记张长平</div>\r\n<div>　　八冠王江苏致远队目前排名第五，厦门国际银行队排名第三，两队同积6分，厦门队以两个胜局领先。本次靖江专场比赛将于24日12时开赛，弈城网将棋谱直播全部三盘对局。（曲江）</div>\r\n<div><strong>　　第十一届中信和业杯中国女子围棋甲级联赛第五轮</strong></div>\r\n<div><strong>　　江苏致远队 VS 厦门国际银行队</strong></div>\r\n<div>　　第一台：於之莹八段 VS 高星五段</div>\r\n<div>　　第二台：尹渠三段 VS 吴依铭六段</div>\r\n<div>　　第三台：李思璇四段 VS 冯韵嘉二段</div>\r\n</div>', '曲江 ｜ 2024-05-23 ｜ ', 6);
INSERT INTO `news` VALUES ('[女子围甲]於之莹不敌高星 江苏致远队靖江主场1比2负厦门', 'http://www.eweiqi.com/uploadfile/2024/0524/20240524071640495.jpg', '<div class=\"con\" style=\"line-height:30px;padding:10px 5px; font-size:15px;\"><div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071640495.jpg\" /><br />\r\n於之莹不敌高星，江苏主场1比2负厦门</div>\r\n　　5月24日，第十一届&ldquo;中信和业杯&rdquo;中国女子围棋甲级联赛第五轮江苏致远队VS厦门国际银行队&ldquo;靖江专场&rdquo;在江苏靖江市靖江扬子江大酒店进行，江苏致远队1比2不敌厦门国际银行队，主场未能得分。\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071113550.jpg\" /><br />\r\n江苏致远队主教练丁波五段</div>\r\n<div>　　&ldquo;八冠王&rdquo;江苏致远队本赛季首轮即遭遇阻击，1比2不敌广东围棋协会队，不过随后她们分别击败上海清一队、山西书海路鑫队和上海星小目队，取得三连胜，排在积分榜第五位。教练丁波表示：&ldquo;我们今年也没有什么成绩上的打算，大家发挥好就可以，重点还是在培养李思璇和尹渠两位新人。&rdquo;</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071307158.jpg\" /><br />\r\n李思璇VS冯韵嘉<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071307876.jpg\" /><br />\r\n李思璇四段<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071307983.jpg\" /><br />\r\n冯韵嘉二段</div>\r\n<div>　　最先结束的是第三台江苏队李思璇执黑对厦门队冯韵嘉的对局。这盘棋前半盘白棋局面不错，中盘时冯韵嘉本可直接在中腹开劫，但却想先在左上角便宜一下，李思璇不肯老实补棋，偏要一路打一下再补。此时白棋如果直接开劫，胜率可逼近90%，但冯韵嘉却老老实实跟着应了一手，损失了一枚重要劫材。黑棋补角之后白再开劫，胜率却只有34%了。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071341782.png\" /><br />\r\n106失机</div>\r\n<div>　　劫争进行了几个回合之后，冯韵嘉似乎出现了误算，轻易在中腹消劫，成为白棋本局的败着。至187手白空破绽已现，冯韵嘉只得认输。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071455886.jpg\" /><br />\r\n尹渠VS吴依铭<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071455775.jpg\" /><br />\r\n尹渠三段<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071455957.jpg\" /><br />\r\n吴依铭六段</div>\r\n<div>　　随后结束的是第二台对局。第二台江苏队尹渠执白对阵刚刚在北海新绎杯预选赛女子组中获得出线权的厦门队吴依铭。这盘棋尹渠没什么机会，序盘过后白棋在左上和上边连续下出问题手，最终完败给对手。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071541735.jpg\" /><br />\r\n於之莹VS高星</div>\r\n<div>　　此时，第一台於之莹执黑对高星的对局也已接近尾声。本局前面大半盘高星两度取得领先，但两度被於之莹追上。临近官子前两人在上方进行劫争，此劫关系到黑棋生死，AI判断局面是细棋黑稍好，但於之莹显然不这样认为。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071558827.jpg\" /><br />\r\n於之莹八段<br />\r\n<img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071558117.jpg\" /><br />\r\n高星五段</div>\r\n<div>　　当高星在左上角寻劫时，AI认为黑棋应该反手冲击上方白棋弱点之后消劫，实战於之莹老实自补，局面已不乐观。高星提劫后，於之莹选择了在中腹冲击白棋进行转换，高星毫不犹豫吃掉上方黑龙，白棋奠定胜局。</div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0524/20240524071113472.jpg\" /><br />\r\n比赛现场</div>\r\n<div>　　这样，江苏致远队主场1比2负于厦门国际银行队，不过积分榜排名却意外前进了一位，排在第四。本赛季女子围甲第六轮将于6月18日进行，江苏致远队将客场挑战成都银行队。（曲江）</div>\r\n<div>　　第十一届中信和业杯中国女子围棋甲级联赛第五轮</div>\r\n<div>　　江苏致远队 VS 厦门国际银行队</div>\r\n<div>　　第一台：於之莹 八段 VS 高星 五段</div>\r\n<div>　　第二台：尹渠 三段 VS 吴依铭 六段</div>\r\n<div>　　第三台：李思璇 四段 VS 冯韵嘉 二段</div>\r\n</div>', '曲江 ｜ 2024-05-24 ｜ ', 9);
INSERT INTO `news` VALUES ('[杭州棋院]中国棋院杭州分院2024年围棋夏令营招生简章', 'http://www.eweiqi.com/uploadfile/2024/0522/20240522053845244.png', '<div class=\"con\" style=\"line-height:30px;padding:10px 5px; font-size:15px;\"><div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522053845244.png\" /></div>\r\n　　为落实杭州市教育局、中国棋院杭州分院《关于进一步推进中小学、幼儿园开展棋类项目活动的通知》（杭教初〔2013〕4号）文件有关精神，为了让更多的围棋少年感受专业的围棋培训，由中国棋院杭州分院、杭州智力运动学校、杭州市棋类协会联合天元弈道共同主办2024围棋夏令营。\r\n<div>　　现将有关事项通知如下：</div>\r\n<div>　　班级类型：</div>\r\n<div>　　面向全国招生，业余3段-业余5段青少年，每期预计招收80人，每个班16人，共招5个班，额满截止。因全国业余段位略有差异，每期夏令营的第一天和第二天，为分班大循环，各班级之间根据成绩升降互通。</div>\r\n<div>　　说明：所有报名学员需提供段位证书，报名时还没有拿到证书的需要提供相关证明材料。</div>\r\n<div><strong>　　开班时间：</strong></div>\r\n<div>　　第一期：</div>\r\n<div>　　7月12日-7月21日（10天，7月11日报到）</div>\r\n<div>　　第二期：</div>\r\n<div>　　7月23日-8月1日（10天，7月22日报到）</div>\r\n<div>　　第三期：</div>\r\n<div>　　8月4日-8月13日（10天，8月3日报到）</div>\r\n<div>　　第四期：</div>\r\n<div>　　8月15日-8月24日（10天，8月14日报到）</div>\r\n<div><strong>　　带班教练：</strong></div>\r\n<div>　　戎毅职业七段、张强职业六段、</div>\r\n<div>　　丁世雄职业六段、刘兆哲职业六段、</div>\r\n<div>　　尹松涛职业五段、赵斐职业五段、</div>\r\n<div>　　李雨昂职业四段、许翰文职业四段、</div>\r\n<div>　　周元俊职业四段、瞿鸣职业三段、</div>\r\n<div>　　曹又尹职业三段、刘慧玲职业三段、</div>\r\n<div>　　花畅职业二段、何天予职业二段。</div>\r\n<div><strong>　　指导老师：</strong></div>\r\n<div>　　邬光亚职业七段、夏晨琨职业七段、</div>\r\n<div>　　严欢职业七段、李劼职业六段、</div>\r\n<div>　　李铭职业六段、汪涛职业六段、</div>\r\n<div>　　潘非职业五段、郭闻潮职业五段、</div>\r\n<div>　　陈潇楠职业四段、刘宇职业三段、</div>\r\n<div>　　马如龙职业三段、魏子翔职业二段。</div>\r\n<div><strong>　　训练计划表：</strong></div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522053941680.png\" /></div>\r\n<div><strong>　　晚间安排（18:00-20:00）：</strong></div>\r\n<div>　　（自修及活动安排）</div>\r\n<div>　　每期观看2次益智教育电影（比赛厅）；</div>\r\n<div>　　每期举办2次快棋赛（比赛厅）；</div>\r\n<div>　　每期举办2次大盘讲解专题讲座（比赛厅）；</div>\r\n<div>　　每期举办1次：车轮战指导棋（比赛厅）；</div>\r\n<div>　　每期举办1次：西瓜晚会（比赛厅）。</div>\r\n<div>　　备注：每期组织1次户外游玩（时间为一天）,主办方可根据实际情况对课程安排及授课职业老师进行适当调整</div>\r\n<div><strong>　　收费标准及上课类型</strong></div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522054009229.png\" /></div>\r\n<div>　　备注：</div>\r\n<div>　　杂费包含2件队服+1顶帽子+保险费+资料费+夜餐费+旅游费</div>\r\n<div>　　学费包含训练费+食宿+管理费</div>\r\n<div><strong>　　报到须知：</strong></div>\r\n<div>　　1、报到时需携带本人相关证书原件或复印件。</div>\r\n<div>　　2、夏令营期间需携带换洗衣服及洗漱用品等个人物品。</div>\r\n<div>　　3、报到时间:</div>\r\n<div>　　第一期：7 月 11 日 9:00&mdash;16:00；</div>\r\n<div>　　第二期：7 月 22 日 9:00&mdash;16:00；</div>\r\n<div>　　第三期：8 月 3 日 9:00-16:00；</div>\r\n<div>　　第四期：8 月 14 日 9:00-16:00。</div>\r\n<div>　　4、杭州市上城区钱潮路2号天元大厦（中国棋院杭州分院大楼）</div>\r\n<div>　　5、咨询电话：19011207886 陆老师</div>\r\n<div><strong>　　重要声明：</strong></div>\r\n<div>　　1、报到当日，如有药物过敏史、食物过敏、哮喘、皮肤病、癫痫等病史请及时告知。</div>\r\n<div>　　2、学员报到前和离校后，请家长陪同并自行购买相关意外保险，如有意外自行承担。</div>\r\n<div>　　3、名额有限，报名交费后，不予退费。因课程安排已确定，如遇晚到或提前离开夏令营的学员，不退差价。</div>\r\n<div><strong>　　报名及缴费方式：</strong></div>\r\n<div style=\"text-align: center;\"><img src=\"http://www.eweiqi.com/uploadfile/2024/0522/20240522054054854.png\" /></div>\r\n<div style=\"text-align: center;\">扫码即可报名缴费</div>\r\n<div style=\"text-align: center;\">备注：提交报名信息缴费后，会有教务老师联系您，务必留下正确的电话号码。<br />\r\n&nbsp;</div>\r\n<div style=\"text-align: center;\">弘扬中国传统文化 传播和普及棋类知识</div>\r\n<div style=\"text-align: center;\">培训地点：杭州市上城区钱潮路2号天元大厦</div>\r\n<div style=\"text-align: center;\">联系电话：19011207886</div>\r\n<div>&nbsp;</div>\r\n</div>', '曲江 ｜ 2024-05-22 ｜ ', 10);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `product_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, '加倍道具1', 300, '1000万加倍道具套餐1', 'https://github.com/lzlzlz666/chessWebsite/blob/master/springboot2-website/src/main/resources/static/images/item1-1.jpg?raw=true');
INSERT INTO `products` VALUES (2, '加倍道具2', 200, '1000万加倍道具套餐2', 'https://github.com/lzlzlz666/chessWebsite/blob/master/springboot2-website/src/main/resources/static/images/item1-2.jpg?raw=true');
INSERT INTO `products` VALUES (3, '功能道具1', 10, '对局研究道具', 'https://github.com/lzlzlz666/chessWebsite/blob/master/springboot2-website/src/main/resources/static/images/item2-1.jpg?raw=true');
INSERT INTO `products` VALUES (4, '功能道具2', 50, '战绩保护道具', 'https://github.com/lzlzlz666/chessWebsite/blob/master/springboot2-website/src/main/resources/static/images/item2-2.png?raw=true');
INSERT INTO `products` VALUES (5, '加倍道具3', 100, '500万加倍道具套餐1', 'https://github.com/lzlzlz666/chessWebsite/blob/master/springboot2-website/src/main/resources/static/images/item1-3.png?raw=true');
INSERT INTO `products` VALUES (6, '加倍道具4', 150, '500万加倍道具套餐2', 'https://github.com/lzlzlz666/chessWebsite/blob/master/springboot2-website/src/main/resources/static/images/item1-4.jpg?raw=true');
INSERT INTO `products` VALUES (7, '功能道具3', 20, '对弈战绩清零道具', 'https://github.com/lzlzlz666/chessWebsite/blob/master/springboot2-website/src/main/resources/static/images/item2-3.jpg?raw=true');
INSERT INTO `products` VALUES (8, '功能道具4', 50, '押分战绩清零道具', 'https://github.com/lzlzlz666/chessWebsite/blob/master/springboot2-website/src/main/resources/static/images/item2-4.png?raw=true');

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `item` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `item`(`item`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES ('08e100fd004643579ac6466be27f26fd', '功能道具1', 10, '对局研究道具', '1');
INSERT INTO `purchase` VALUES ('0dfaa416eaa04382a054bcbfa729833b', '功能道具1', 10, '对局研究道具', '1');
INSERT INTO `purchase` VALUES ('1dc63a80b6d54b6586855c6f665f44a3', '加倍道具2', 200, '1000万加倍道具套餐2', '1');
INSERT INTO `purchase` VALUES ('33a456ef85a24a5a90afadaafd8c4f6c', '加倍道具1', 300, '1000万加倍道具套餐1', '1');
INSERT INTO `purchase` VALUES ('382403729b0a473985830671cd0c05e2', '加倍道具2', 200, '1000万加倍道具套餐2', '1');
INSERT INTO `purchase` VALUES ('430309b8ca0d4d919886a699c1c07287', '加倍道具2', 200, '1000万加倍道具套餐2', '1');
INSERT INTO `purchase` VALUES ('66dd5517fceb4edea9bd03a57e7e1714', '功能道具1', 10, '对局研究道具', '1');
INSERT INTO `purchase` VALUES ('699e648e58d34e1cb668bb2117fad61c', '功能道具1', 10, '对局研究道具', '1');
INSERT INTO `purchase` VALUES ('70acc8f27b7f421d9009d3be36b2c9a0', '功能道具1', 10, '对局研究道具', '1');
INSERT INTO `purchase` VALUES ('762651ba5a2847579bd79c2f3f358810', '功能道具3', 20, '对弈战绩清零道具', '1');
INSERT INTO `purchase` VALUES ('8ded3df47891485e803406e2f8e00f05', '加倍道具1', 300, '1000万加倍道具套餐1', '1');
INSERT INTO `purchase` VALUES ('91b19634d74b48318023ded6a74122ff', '加倍道具1', 300, '1000万加倍道具套餐1', '1');
INSERT INTO `purchase` VALUES ('ad2136806d464f9ebbefe8ab8deef895', '加倍道具2', 200, '1000万加倍道具套餐2', '1');
INSERT INTO `purchase` VALUES ('f60efa49cc3848e5a956858995ee7dc2', '加倍道具1', 300, '1000万加倍道具套餐1', '1');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `num` int NULL DEFAULT NULL,
  `sumscore` int NULL DEFAULT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE,
  CONSTRAINT `room_ibfk_1` FOREIGN KEY (`name`) REFERENCES `room_admin` (`room`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES ('room_1', 0, 0, 1);
INSERT INTO `room` VALUES ('room_2', 1, 0, 4);
INSERT INTO `room` VALUES ('room_3', 0, 0, 11);

-- ----------------------------
-- Table structure for room_admin
-- ----------------------------
DROP TABLE IF EXISTS `room_admin`;
CREATE TABLE `room_admin`  (
  `admin_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`admin_id`, `room`) USING BTREE,
  INDEX `room`(`room`) USING BTREE,
  CONSTRAINT `room_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room_admin
-- ----------------------------
INSERT INTO `room_admin` VALUES ('2', 'room_1');
INSERT INTO `room_admin` VALUES ('4', 'room_2');
INSERT INTO `room_admin` VALUES ('2', 'room_3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `score` int NOT NULL,
  `association` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `identity` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `coin` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  INDEX `name`(`association`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('lisi', '234', 100, 'room_2', 'tourist', '1', 430);
INSERT INTO `user` VALUES ('zhangsan', '123', 0, '', 'admin', '2', 500);
INSERT INTO `user` VALUES ('wangwu', '123', 0, '', 'admin', '4', 500);

-- ----------------------------
-- Procedure structure for DecrementMemberCount
-- ----------------------------
DROP PROCEDURE IF EXISTS `DecrementMemberCount`;
delimiter ;;
CREATE PROCEDURE `DecrementMemberCount`(assoc VARCHAR(255))
BEGIN
    UPDATE room
    SET num = num - 1
    WHERE assoc = name;
END
;;
delimiter ;

-- ----------------------------
-- Procedure structure for IncrementMemberCount
-- ----------------------------
DROP PROCEDURE IF EXISTS `IncrementMemberCount`;
delimiter ;;
CREATE PROCEDURE `IncrementMemberCount`(IN assoc VARCHAR(255))
BEGIN
	UPDATE room
	SET num = num + 1
	WHERE assoc = name;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table purchase
-- ----------------------------
DROP TRIGGER IF EXISTS `add_shopping_list`;
delimiter ;;
CREATE TRIGGER `add_shopping_list` AFTER INSERT ON `purchase` FOR EACH ROW BEGIN 
	UPDATE `user`
	SET coin = coin - NEW.price
	WHERE user.id = NEW.user_id;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table room
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_room`;
delimiter ;;
CREATE TRIGGER `delete_room` BEFORE DELETE ON `room` FOR EACH ROW BEGIN
	UPDATE `user`
	SET association=null 
	WHERE association=OLD.name;
	DELETE from room_admin
	WHERE room=OLD.name;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table room_admin
-- ----------------------------
DROP TRIGGER IF EXISTS `add_related_room_trigger`;
delimiter ;;
CREATE TRIGGER `add_related_room_trigger` BEFORE INSERT ON `room_admin` FOR EACH ROW BEGIN
	SET FOREIGN_KEY_CHECKS = 0;
	INSERT INTO room(room.name, num, sumscore, id)
-- 	VALUES (NEW.name, 0, 0, NEW.admin_id)
	VALUES(NEW.room, 0, 0, id);
	SET FOREIGN_KEY_CHECKS = 1;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table user
-- ----------------------------
DROP TRIGGER IF EXISTS `delete_user`;
delimiter ;;
CREATE TRIGGER `delete_user` BEFORE DELETE ON `user` FOR EACH ROW BEGIN 
	UPDATE `comment`
	SET username = '账户已注销' WHERE username = OLD.username;
	DELETE FROM competition WHERE competition.user_id = OLD.id;
	IF 
		OLD.association IS NOT NULL 
	THEN
		UPDATE room
		SET num = num - 1 WHERE name = OLD.association;
	END IF;
END
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table user
-- ----------------------------
DROP TRIGGER IF EXISTS `update_user_room`;
delimiter ;;
CREATE TRIGGER `update_user_room` AFTER UPDATE ON `user` FOR EACH ROW BEGIN
	DECLARE old_association VARCHAR(255);
	DECLARE new_association VARCHAR(255);
	
	SET old_association = OLD.association;
	SET new_association = NEW.association;
	
	IF old_association != new_association THEN
		IF old_association IS NOT NULL THEN
			CALL DecrementMemberCount(old_association);
		END IF;
		IF new_association IS NOT NULL THEN
			CALL IncrementMemberCount(new_association);
		END IF;
	END IF;
	IF OLD.score != NEW.score THEN
		IF OLD.association != NULL THEN
			UPDATE room
			SET sumscore = sumscore + 100
			WHERE OLD.association=room.`name`;
		END IF;
	END IF;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
