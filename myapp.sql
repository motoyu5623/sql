drop table if exists users;
create table users (
	id int unsigned primary key auto_increment,
	name varchar(20) unique,
	score float,
	coins set('gold', 'silver', 'bronze')
	-- rank enum ('gold', 'silver', 'bronze')
);

-- alter table users add column email VARCHAR(255) after name;
-- alter table users drop column score; 
-- alter table users change name user_name varchar(80) default 'nobody';

-- desc users;


insert into users (name, score, coins) values ('taguchi', 5.8, 'silver');
insert into users (name, score, coins) values ('fkoji', 8.2, 'gold');
insert into users (name, score, coins) values ('dotinstall', 6.1, 'gold,silver');
insert into users (name, score, coins) values ('yamada', 2.1, 'bronze');

-- select * from users;
-- select length('Hello');
-- select length(name) as len, name from users order by len;
select * from users;

start transaction;
update users set score = score - 1.2 where name = 'taguchi';
update users set score = score + 1.2 where name = 'fkoji';
commit;

select * from users;