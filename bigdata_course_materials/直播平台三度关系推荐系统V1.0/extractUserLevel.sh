#!/bin/bash

# 此脚本每天执行一次，添加到crontab或者Azkaban调度器中[每天0:30分开始执行]

# 正常情况下获取昨天的数据，如果需要补数据，可以直接指定日期
if [ "X$1" == "X" ]
then
	yesterday=`date --date="1 days ago" +%Y-%m-%d`
else
	yesterday=$1
fi

mysql -uroot -padmin -h 192.168.182.1 -e "select * from video.cl_level_user where update_time >='${yesterday} 00:00:00' and update_time <= '${yesterday} 23:59:59'" >> /data/soft/video_recommend/cl_level_user_${yesterday}.log

# 将数据上传到hdfs上，每天一个目录

# 先在hdfs上创建日期目录
hdfs dfs -mkdir -p /data/cl_level_user/${yesterday//-/}

# 上传
hdfs dfs -put /data/soft/video_recommend/cl_level_user_${yesterday}.log /data/cl_level_user/${yesterday//-/}