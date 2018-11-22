/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     30/10/2018 20:53:48                          */
/*==============================================================*/

CREATE DATABASE testeDB

alter table DOWNLOADS
   drop constraint FK_DOWNLOAD_REGISTADO_UTILIZAD;

alter table DOWNLOADS
   drop constraint FK_DOWNLOAD_TEM2_FICHEIRO;

alter table FICHEIRO
   drop constraint FK_FICHEIRO_POSSUI_UTILIZAD;

alter table LOGIN
   drop constraint FK_LOGIN_FAZ_UTILIZAD;

alter table UPLOADS
   drop constraint FK_UPLOADS_REGISTAUP_UTILIZAD;

alter table UPLOADS
   drop constraint FK_UPLOADS_TEM_FICHEIRO;

drop index REGISTADOWNLOAD_FK;

drop index TEM2_FK;

drop table DOWNLOADS cascade constraints;

drop index POSSUI_FK;

drop table FICHEIRO cascade constraints;

drop index FAZ_FK;

drop table LOGIN cascade constraints;

drop index REGISTAUPLOAD_FK;

drop index TEM_FK;

drop table UPLOADS cascade constraints;

drop table UTILIZADOR cascade constraints;

/*==============================================================*/
/* Table: DOWNLOADS                                             */
/*==============================================================*/
create table DOWNLOADS 
(
   ID_DOWNLOAD          NUMBER(4)            not null,
   USERNAME             VARCHAR2(30)         not null,
   ID_FICHEIRO          NUMBER(4)            not null,
   ORIGEM               VARCHAR2(30)         not null,
   constraint PK_DOWNLOADS primary key (ID_DOWNLOAD)
);

/*==============================================================*/
/* Index: TEM2_FK                                               */
/*==============================================================*/
create index TEM2_FK on DOWNLOADS (
   ID_FICHEIRO ASC
);

/*==============================================================*/
/* Index: REGISTADOWNLOAD_FK                                    */
/*==============================================================*/
create index REGISTADOWNLOAD_FK on DOWNLOADS (
   USERNAME ASC
);

/*==============================================================*/
/* Table: FICHEIRO                                              */
/*==============================================================*/
create table FICHEIRO 
(
   ID_FICHEIRO          NUMBER(4)            not null,
   USERNAME             VARCHAR2(30)         not null,
   NOME_FICHEIRO        VARCHAR2(30)         not null,
   TAMANHO              NUMBER(5)            not null,
   constraint PK_FICHEIRO primary key (ID_FICHEIRO)
);

/*==============================================================*/
/* Index: POSSUI_FK                                             */
/*==============================================================*/
create index POSSUI_FK on FICHEIRO (
   USERNAME ASC
);

/*==============================================================*/
/* Table: LOGIN                                                 */
/*==============================================================*/
create table LOGIN 
(
   IP                   VARCHAR2(15)         not null,
   USERNAME             VARCHAR2(30)         not null,
   PORTOTCP             NUMBER(5)            not null,
   PORTOUDP             NUMBER(5)            not null,
   CONTAFALHAS          NUMBER(5)            not null,
   constraint PK_LOGIN primary key (IP)
);

/*==============================================================*/
/* Index: FAZ_FK                                                */
/*==============================================================*/
create index FAZ_FK on LOGIN (
   USERNAME ASC
);

/*==============================================================*/
/* Table: UPLOADS                                               */
/*==============================================================*/
create table UPLOADS 
(
   ID_UPLOAD            NUMBER(4)            not null,
   USERNAME             VARCHAR2(30)         not null,
   ID_FICHEIRO          NUMBER(4)            not null,
   DESTINO              VARCHAR2(30)         not null,
   constraint PK_UPLOADS primary key (ID_UPLOAD)
);

/*==============================================================*/
/* Index: TEM_FK                                                */
/*==============================================================*/
create index TEM_FK on UPLOADS (
   ID_FICHEIRO ASC
);

/*==============================================================*/
/* Index: REGISTAUPLOAD_FK                                      */
/*==============================================================*/
create index REGISTAUPLOAD_FK on UPLOADS (
   USERNAME ASC
);

/*==============================================================*/
/* Table: UTILIZADOR                                            */
/*==============================================================*/
create table UTILIZADOR 
(
   USERNAME             VARCHAR2(30)         not null,
   PASSWORD             VARCHAR2(15)         not null,
   NOME                 VARCHAR2(50)         not null,
   constraint PK_UTILIZADOR primary key (USERNAME)
);

alter table DOWNLOADS
   add constraint FK_DOWNLOAD_REGISTADO_UTILIZAD foreign key (USERNAME)
      references UTILIZADOR (USERNAME);

alter table DOWNLOADS
   add constraint FK_DOWNLOAD_TEM2_FICHEIRO foreign key (ID_FICHEIRO)
      references FICHEIRO (ID_FICHEIRO);

alter table FICHEIRO
   add constraint FK_FICHEIRO_POSSUI_UTILIZAD foreign key (USERNAME)
      references UTILIZADOR (USERNAME);

alter table LOGIN
   add constraint FK_LOGIN_FAZ_UTILIZAD foreign key (USERNAME)
      references UTILIZADOR (USERNAME);

alter table UPLOADS
   add constraint FK_UPLOADS_REGISTAUP_UTILIZAD foreign key (USERNAME)
      references UTILIZADOR (USERNAME);

alter table UPLOADS
   add constraint FK_UPLOADS_TEM_FICHEIRO foreign key (ID_FICHEIRO)
      references FICHEIRO (ID_FICHEIRO);

