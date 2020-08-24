drop table if exists users;
create table users (
	id int unsigned,
	name varchar(20),
	score float not null
);

insert into users (id, name, score) values 
	(1, 'taguchi', 5,8);
	(2, 'fkoji', 8,2);
	(3, 'dotinstall', 6.1);
	(4, 'yamada', null);
