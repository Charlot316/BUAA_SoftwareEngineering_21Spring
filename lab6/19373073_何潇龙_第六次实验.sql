/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2021/5/22 20:41:43                           */
/*==============================================================*/


drop table if exists ϰ��;

drop table if exists �����¼;

drop table if exists ѧϰ�γ�;

drop table if exists �����Ϣ;

drop table if exists ��������Ϣ;

drop table if exists �û�;

drop table if exists ��Ƶ��Ϣ;

drop table if exists �γ�;

drop table if exists �γ�ѧϰ��֤;

drop table if exists ���⼯;

/*==============================================================*/
/* Table: ϰ��                                                    */
/*==============================================================*/
create table ϰ��
(
   �������û�ID              bigint not null,
   ��ĿID                 bigint not null,
   �û�ID                 bigint not null,
   ��Ŀ��                 String not null,
   ��Ŀ����                 int not null,
   �������                 String not null,
   ѡ���֧                 String not null,
   primary key (��ĿID)
);

/*==============================================================*/
/* Table: �����¼                                                  */
/*==============================================================*/
create table �����¼
(
   ��¼���                 bigint not null,
   �û�ID                 bigint not null,
   �Ƿ�������ȷ               bool not null,
   �����û�ID               bigint not null,
   ������ĿID               bigint not null,
   �����ش�                 String not null,
   ����ʱ��                 date not null,
   primary key (��¼���)
);

/*==============================================================*/
/* Table: ѧϰ�γ�                                                  */
/*==============================================================*/
create table ѧϰ�γ�
(
   �γ�ID                 bigint not null,
   �û�ID                 bigint not null,
   primary key (�γ�ID, �û�ID)
);

/*==============================================================*/
/* Table: �����Ϣ                                                  */
/*==============================================================*/
create table �����Ϣ
(
   ��˱��                 bigint not null,
   ��ƵID                 bigint not null,
   ��˽��                 bool not null,
   �������                 date not null,
   �������ƵID              bigint not null,
   primary key (��˱��)
);

/*==============================================================*/
/* Table: ��������Ϣ                                                 */
/*==============================================================*/
create table ��������Ϣ
(
   ��Ӧ��ƵID               bigint not null,
   ��������ϢID              bigint not null,
   ��ƵID                 bigint not null,
   ����                   date not null,
   ������                  char(10) not null,
   primary key (��������ϢID)
);

/*==============================================================*/
/* Table: �û�                                                    */
/*==============================================================*/
create table �û�
(
   �����ֹ����               date not null,
   �Ƿ񱻷��                bool not null,
   ����                   String not null,
   ���                   String not null,
   �Ƿ��ǽ��ƽ�ʦ              bool not null,
   �û���                  String not null,
   �û�ID                 bigint not null,
   primary key (�û�ID)
);

/*==============================================================*/
/* Table: ��Ƶ��Ϣ                                                  */
/*==============================================================*/
create table ��Ƶ��Ϣ
(
   �ϴ����û�ID              bigint not null,
   ��ƵID                 bigint not null,
   �û�ID                 bigint not null,
   ��Ƶ·��                 String not null,
   ��Ƶ����                 String not null,
   ��Ƶѧ��                 String not null,
   ��Ƶ����                 int not null,
   primary key (��ƵID)
);

/*==============================================================*/
/* Table: �γ�                                                    */
/*==============================================================*/
create table �γ�
(
   ����ʱ��                 date not null,
   �γ�ID                 bigint not null,
   �γ�ѧ��                 String not null,
   �γ̽���                 String not null,
   primary key (�γ�ID)
);

/*==============================================================*/
/* Table: �γ�ѧϰ��֤                                                */
/*==============================================================*/
create table �γ�ѧϰ��֤
(
   �������                 date not null,
   ѧϰ����                 Percentage not null,
   ѧϰ����                 date not null,
   ֤����                 bigint not null,
   �û�ID                 bigint not null,
   primary key (֤����)
);

/*==============================================================*/
/* Table: ���⼯                                                   */
/*==============================================================*/
create table ���⼯
(
   ����ʱ��                 date not null,
   �����¼���               List not null,
   �û�ID                 bigint not null,
   primary key (�����¼���)
);

alter table ϰ�� add constraint FK_���� foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table �����¼ add constraint FK_�鿴�����¼ foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table ѧϰ�γ� add constraint FK_ѧϰ�γ� foreign key (�γ�ID)
      references �γ� (�γ�ID) on delete restrict on update restrict;

alter table ѧϰ�γ� add constraint FK_ѧϰ�γ�2 foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table �����Ϣ add constraint FK_�鿴��˽�� foreign key (��ƵID)
      references ��Ƶ��Ϣ (��ƵID) on delete restrict on update restrict;

alter table ��������Ϣ add constraint FK_ͳ�Ʋ����� foreign key (��ƵID)
      references ��Ƶ��Ϣ (��ƵID) on delete restrict on update restrict;

alter table ��Ƶ��Ϣ add constraint FK_�����Ƶ foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table �γ�ѧϰ��֤ add constraint FK_�鿴֤�� foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

alter table ���⼯ add constraint FK_�������⼯ foreign key (�û�ID)
      references �û� (�û�ID) on delete restrict on update restrict;

