/*iWeb在线课堂项目必需的数据库结构*/
/*SQL语句不区分大小写，习惯上：关键字都大写，非关键字都小写*/

#删除数据库iweb，如果它存在的话
DROP  DATABASE  IF  EXISTS  iweb; 
#重新创建数据库iweb
CREATE  DATABASE  iweb  CHARSET=UTF8;
#进入数据库iweb
USE  iweb;

#创建校区表
CREATE  TABLE  iw_school(
	sid INT PRIMARY KEY AUTO_INCREMENT, #校区编号(自增的主键)
	sname  VARCHAR(32), 		#名称
	pic  VARCHAR(128), 			#图片URL
	address  VARCHAR(64), 		#联系地址
	phone VARCHAR(32), 			#联系电话
	postcode CHAR(6), 			#邮编
	longitude  DECIMAL(9,6), 	#经度
	latitude  DECIMAL(8,6)		#纬度
);
INSERT INTO iw_school VALUES(NULL, '北京中关村中心', 'img/school/bjzgc.jpg', '北京市海淀区北三环西路甲18号（大钟寺附近）中鼎大厦B座7层', '010-62130963', '100098', 116.347527, 39.972529);
INSERT INTO iw_school VALUES(NULL, '北京天坛中心', 'img/school/bjtt.jpg', '北京市崇文区珠市口东大街6号珍贝大厦西侧3层达内科技', '010-67028668', '100050', 116.417928, 39.898673);
INSERT INTO iw_school VALUES(NULL, '北京广渠门中心', 'img/school/bjgqm.jpg', '北京市东城区广渠门东广渠家园25号楼启达大厦一层', '15321130620', '100010', 116.457211, 39.897629);

#创建讲师表
CREATE TABLE iw_teacher(
	tid INT PRIMARY KEY AUTO_INCREMENT,	#讲师编号
	tname VARCHAR(64),					#姓名
	pic VARCHAR(128),					#照片URL
	skills VARCHAR(32),					#擅长的领域
	experience VARCHAR(1024),			#工作经历
	style VARCHAR(1024)					#授课风格
);

INSERT INTO iw_teacher VALUES(NULL,'成亮', 'img/teacher/cl.jpg', 'WEB全栈开发', '10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。', '讲课诙谐幽默，深处浅出，深得学生喜爱。');
INSERT INTO iw_teacher VALUES(NULL,'李然', 'img/teacher/lr.jpg', '高级网页设计', '从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大量的教学经验。', '教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');
INSERT INTO iw_teacher VALUES(NULL,'张东', 'img/teacher/zd.jpg', 'JS高级编程', '美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。', '一切从实际项目出发，快速入门，学以致用。讲课极富激情，语言表达精准，有感染力。案例丰富、直观，步骤细致，清晰。注重从学习到实际工作的快速转化。');
INSERT INTO iw_teacher VALUES(NULL,'吴华', 'img/teacher/wh.jpg', '移动APP开发', '曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。', '感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。');
INSERT INTO iw_teacher VALUES(NULL,'纪盈鑫', 'img/teacher/jyx.jpg', '前端框架开发', '曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。', '授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。');

#创建课程类别表
CREATE  TABLE  iw_course_type(
	tid INT PRIMARY KEY AUTO_INCREMENT,	#类别编号
	tname VARCHAR(16)					#类别名称
);
INSERT INTO iw_course_type VALUES(NULL, '基础课程');
INSERT INTO iw_course_type VALUES(NULL, '核心课程');
INSERT INTO iw_course_type VALUES(NULL, '进阶课程');

#创建课程表
#CREATE TABLE iw_course(
 cid,
 cname,
 pic,
 teacher_id,
 duration,
 start_time,
 price,
 details
);
INSERT INTO iw_course VALUES(NULL,'微信小程序开发','img/course/01.jpg',5,'5天','每月底开课','599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'Unity地形环境','img/course/02.jpg',4,'8天','每月底开课','799','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'UL控件之基本控件','img/course/03.jpg',3,'8天','每月底开课','999','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'微信小程序概述','img/course/04.jpg',2,'20天','每月底开课','999','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'手机图标绘制','img/course/05.jpg',1,'7天','每月底开课','399','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'jQuery操作DOM','img/course/06.jpg',6,'9天','每月底开课','499','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'一周上手小程序','img/course/07.jpg',7,'8天','每月底开课','1099','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'商业插画','img/course/08.jpg',8,'6天','每月底开课','1599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'Linux系统管理','img/course/09.jpg',9,'13天','每月底开课','5599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'视频编辑教程','img/course/10.jpg',5,'60天','每月底开课','9599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'数据分析与可视化','img/course/11.jpg',6,'23天','每月底开课','10599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'好看的插画动起来','img/course/12.jpg',4,'25天','每月底开课','52599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'魔术效果制作','img/course/13.jpg',5,'28天','每月底开课','4599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'UL设计课程','img/course/14.jpg',5,'26天','每月底开课','3599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'RHCSA','img/course/15.jpg',3,'7天','每月底开课','4599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'WEB课程','img/course/16.jpg',3,'15天','每月底开课','5599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'红帽认定工程师','img/course/17.jpg',8,'18天','每月底开课','7599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'WEB前端精品课程','img/course/18.jpg',8,'14天','每月底开课','8599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'PS入门基础','img/course/19.jpg',6,'21天','每月底开课','1599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'前端开发框架','img/course/20.jpg',6,'48天','每月底开课','5599','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'MongoDB','img/course/21.jpg',5,'9天','每月底开课','1559','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'微信小程序开发','img/course/22.jpg',5,'6天','每月底开课','7869','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'Shell脚本编程','img/course/23.jpg',8,'21天','每月底开课','10500','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'EME之微信运营','img/course/24.jpg',5,'12天','每月底开课','4527','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'Java','img/course/25.jpg',6,'23天','每月底开课','2525','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'hadoop','img/course/26.jpg',5,'25天','每月底开课','4555','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'功能测试工具','img/course/27.jpg',7,'45天','每月底开课','45555','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'Linex部署','img/course/28.jpg',8,'36天','每月底开课','10555','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'画超萌披萨','img/course/29.jpg',6,'32天','每月底开课','10455','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'教你绘画小哪吒','img/course/30.jpg',7,'38天','每月底开课','15582','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');
INSERT INTO iw_course VALUES(NULL,'MYSQL储存过程','img/course/31.jpg',7,'38天','每月底开课','11199','本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容。本课程详细讲解了HTML5的各个方面，课程从环境搭建开始，依次讲述了HTML5新元素、Canvas、SVG、Audio、GPS定位、拖拽效果、WEB存储、App Cache、HTML5 多线程和HTML5消息推送等内容.');

CREATE TABLE iw_school_course(
   scid INT PRIMARY KEY AUTO_INCREMENT,#开课编号
   school_id INT,
   course_id INT
);
INSERT INTO iw_school_course VALUES(NULL,5,1)
INSERT INTO iw_school_course VALUES(NULL,3,1)
INSERT INTO iw_school_course VALUES(NULL,2,1)
INSERT INTO iw_school_course VALUES(NULL,1,2)
INSERT INTO iw_school_course VALUES(NULL,2,2)
INSERT INTO iw_school_course VALUES(NULL,2,3)
INSERT INTO iw_school_course VALUES(NULL,4,3)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,3,26)
INSERT INTO iw_school_course VALUES(NULL,2,27)
INSERT INTO iw_school_course VALUES(NULL,4,27)
INSERT INTO iw_school_course VALUES(NULL,1,27)
INSERT INTO iw_school_course VALUES(NULL,3,28)
INSERT INTO iw_school_course VALUES(NULL,2,28)
INSERT INTO iw_school_course VALUES(NULL,4,29)
INSERT INTO iw_school_course VALUES(NULL,1,29)
INSERT INTO iw_school_course VALUES(NULL,3,30)
INSERT INTO iw_school_course VALUES(NULL,2,30)
INSERT INTO iw_school_course VALUES(NULL,4,30)
INSERT INTO iw_school_course VALUES(NULL,1,31)
INSERT INTO iw_school_course VALUES(NULL,3,31)
INSERT INTO iw_school_course VALUES(NULL,2,31)
INSERT INTO iw_school_course VALUES(NULL,5,1)
#创建用户信息表
#CREATE TABLE iw_user(
   uid INT PRIMARY KEY AUTO_INCREMENT,
   email VARCHAR(64),
   phone VARCHAR(32),
   password VARCHAR(168)
);
INSERT INTO iw_user VALUES(NULL,'ding@tedu.cn','13501111111',password('123456'));
INSERT INTO iw_user VALUES(NULL,'ding@tedu.cn','13501111111',password('123456'));
INSERT INTO iw_user VALUES(NULL,'ding@tedu.cn','13501111111',password('abc456'));
INSERT INTO iw_user VALUES(NULL,'ding@tedu.cn','13501111111',password('abc666'));
INSERT INTO iw_user VALUES(NULL,'ding@tedu.cn','13501111111',password('abc888'));
INSERT INTO iw_user VALUES(NULL,'ding@tedu.cn','13501111111',password('123456'));


#创建购物车表
#创建订单表
#创建用户收藏夹表
#创建....