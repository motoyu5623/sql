drop table if exists users;
create table users (
	id int unsigned primary key auto_increment,
	name varchar(20) unique,
	score float default 0.0
);
alter table users add column email VARCHAR(255) after name;
alter table users drop column score; 
alter table users change name user_name varchar(80) default 'nobody';

desc users;


-- insert into users (name, score) values ('taguchi', 5.8);
-- insert into users (name, score) values ('fkoji', 8.2);
-- insert into users (name, score) values ('dotinstall', 6.1);
-- insert into users (name) values ('yamada');

-- select * from users;