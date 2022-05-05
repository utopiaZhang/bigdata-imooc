drop table if exists recommend_list;
create table recommend_list(
	uid varchar(255) NOT NULL,
	recommend_uids varchar(500) NOT NULL,
	primary key (uid)
)
