#!/bin/bash
# 循环向文件中生成数据
while [ "1" = "1" ]
do
	# 获取当前时间戳
	curr_time=`date +%s`
	# 获取当前主机名
	name=`hostname`
	echo ${name}_${curr_time} >> /data/log/access.log
	# 暂停1秒
	sleep 1
done