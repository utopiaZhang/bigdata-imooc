create database if not exists video;

use video;


drop table if exists follower_00;
create table follower_00
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_01;
create table follower_01
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_02;
create table follower_02
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_03;
create table follower_03
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_04;
create table follower_04
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_05;
create table follower_05
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_06;
create table follower_06
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_07;
create table follower_07
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_08;
create table follower_08
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);

drop table if exists follower_09;
create table follower_09
(
   fuid              varchar(10) not null,
   uid            varchar(10) not null,
   timestamp          timestamp(0) not null
);


drop table if exists cl_level_user;
create table cl_level_user
(
   id              int(10) not null,
   uid            varchar(10) not null,
   anchor_exp          int(10) not null,
   anchor_level          int(10) not null,
   create_time          datetime(0) not null,
   update_time          datetime(0) not null,
   exp          int(10) not null,
   level          int(10) not null
);
