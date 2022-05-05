#!/bin/bash
# 此脚本只需要执行一次即可

# 针对1296张表，需要使用双层for循环动态生成表名
for i in 0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z
do
 for j in 0 1 2 3 4 5 6 7 8 9 a b c d e f g h i j k l m n o p q r s t u v w x y z
 do
	echo follower_${i}${j}
	#mysql -uroot -padmin -h 192.168.182.1 -e "select fuid,uid from video.follower_${i}${j}" >> /data/soft/video_recommend/follower_${i}${j}.log
 done
done

mysql -uroot -padmin -h 192.168.182.1 -e "select fuid,uid from video.follower_00" >> /data/soft/video_recommend/follower_00.log