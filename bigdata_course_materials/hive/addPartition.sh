#!/bin/bash
# 每天凌晨1点定时添加当天日期的分区
if [ "a$1" = "a" ]
then
	dt=`date +%Y%m%d`
else
	dt=$1
fi
# 指定添加分区操作
hive -e "
alter table ex_par_more_type add partition(dt='${dt}',d_type='giftRecord') location '/moreType/${dt}/giftRecord';
alter table ex_par_more_type add partition(dt='${dt}',d_type='userInfo') location '/moreType/${dt}/userInfo';
alter table ex_par_more_type add partition(dt='${dt}',d_type='videoInfo') location '/moreType/${dt}/videoInfo';
"