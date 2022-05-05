#默认获取上周一的时间
dt=`date -d "7 days ago" +"%Y%m%d"`
if [ "x$1" != "x" ]
then
    dt=`date -d "7 days ago $1" +"%Y%m%d"`
fi

sqoop export \
--connect jdbc:mysql://192.168.182.1:3306/video?serverTimezone=UTC \
--username root \
--password admin \
--table recommend_list \
--export-dir hdfs://bigdata01:9000/data/recommend_data/${dt} \
--input-fields-terminated-by '\t' \
--update-key uid \
--update-mode allowinsert