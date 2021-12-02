/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/5/22 20:41:43                           */
/*==============================================================*/


drop table if exists 习题;

drop table if exists 做题记录;

drop table if exists 学习课程;

drop table if exists 审核信息;

drop table if exists 播放量信息;

drop table if exists 用户;

drop table if exists 视频信息;

drop table if exists 课程;

drop table if exists 课程学习认证;

drop table if exists 错题集;

/*==============================================================*/
/* Table: 习题                                                    */
/*==============================================================*/
create table 习题
(
   创建者用户ID              bigint not null,
   题目ID                 bigint not null,
   用户ID                 bigint not null,
   题目答案                 String not null,
   题目类型                 int not null,
   题干内容                 String not null,
   选项分支                 String not null,
   primary key (题目ID)
);

/*==============================================================*/
/* Table: 做题记录                                                  */
/*==============================================================*/
create table 做题记录
(
   记录编号                 bigint not null,
   用户ID                 bigint not null,
   是否作答正确               bool not null,
   作答用户ID               bigint not null,
   作答题目ID               bigint not null,
   所作回答                 String not null,
   做题时间                 date not null,
   primary key (记录编号)
);

/*==============================================================*/
/* Table: 学习课程                                                  */
/*==============================================================*/
create table 学习课程
(
   课程ID                 bigint not null,
   用户ID                 bigint not null,
   primary key (课程ID, 用户ID)
);

/*==============================================================*/
/* Table: 审核信息                                                  */
/*==============================================================*/
create table 审核信息
(
   审核编号                 bigint not null,
   视频ID                 bigint not null,
   审核结果                 bool not null,
   审核日期                 date not null,
   被审核视频ID              bigint not null,
   primary key (审核编号)
);

/*==============================================================*/
/* Table: 播放量信息                                                 */
/*==============================================================*/
create table 播放量信息
(
   对应视频ID               bigint not null,
   播放量信息ID              bigint not null,
   视频ID                 bigint not null,
   日期                   date not null,
   播放量                  char(10) not null,
   primary key (播放量信息ID)
);

/*==============================================================*/
/* Table: 用户                                                    */
/*==============================================================*/
create table 用户
(
   封禁截止日期               date not null,
   是否被封禁                bool not null,
   密码                   String not null,
   身份                   String not null,
   是否是金牌讲师              bool not null,
   用户名                  String not null,
   用户ID                 bigint not null,
   primary key (用户ID)
);

/*==============================================================*/
/* Table: 视频信息                                                  */
/*==============================================================*/
create table 视频信息
(
   上传者用户ID              bigint not null,
   视频ID                 bigint not null,
   用户ID                 bigint not null,
   视频路径                 String not null,
   视频名称                 String not null,
   视频学科                 String not null,
   视频类型                 int not null,
   primary key (视频ID)
);

/*==============================================================*/
/* Table: 课程                                                    */
/*==============================================================*/
create table 课程
(
   创建时间                 date not null,
   课程ID                 bigint not null,
   课程学科                 String not null,
   课程介绍                 String not null,
   primary key (课程ID)
);

/*==============================================================*/
/* Table: 课程学习认证                                                */
/*==============================================================*/
create table 课程学习认证
(
   完成日期                 date not null,
   学习进度                 Percentage not null,
   学习日期                 date not null,
   证书编号                 bigint not null,
   用户ID                 bigint not null,
   primary key (证书编号)
);

/*==============================================================*/
/* Table: 错题集                                                   */
/*==============================================================*/
create table 错题集
(
   创建时间                 date not null,
   做题记录编号               List not null,
   用户ID                 bigint not null,
   primary key (做题记录编号)
);

alter table 习题 add constraint FK_做题 foreign key (用户ID)
      references 用户 (用户ID) on delete restrict on update restrict;

alter table 做题记录 add constraint FK_查看做题记录 foreign key (用户ID)
      references 用户 (用户ID) on delete restrict on update restrict;

alter table 学习课程 add constraint FK_学习课程 foreign key (课程ID)
      references 课程 (课程ID) on delete restrict on update restrict;

alter table 学习课程 add constraint FK_学习课程2 foreign key (用户ID)
      references 用户 (用户ID) on delete restrict on update restrict;

alter table 审核信息 add constraint FK_查看审核结果 foreign key (视频ID)
      references 视频信息 (视频ID) on delete restrict on update restrict;

alter table 播放量信息 add constraint FK_统计播放量 foreign key (视频ID)
      references 视频信息 (视频ID) on delete restrict on update restrict;

alter table 视频信息 add constraint FK_审核视频 foreign key (用户ID)
      references 用户 (用户ID) on delete restrict on update restrict;

alter table 课程学习认证 add constraint FK_查看证书 foreign key (用户ID)
      references 用户 (用户ID) on delete restrict on update restrict;

alter table 错题集 add constraint FK_制作错题集 foreign key (用户ID)
      references 用户 (用户ID) on delete restrict on update restrict;

