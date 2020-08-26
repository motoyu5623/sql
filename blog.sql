drop table if exists posts;
create table posts (
  id int unsigned primary key auto_increment,
  title varchar(255),
  body text,
  created datetime default current_timestamp,
  updated datetime default current_timestamp on update current_timestamp
);

-- drop table if exists logs;
-- create table logs (
--   id int unsigned primary key auto_increment,
--   msg varchar(255)
-- );

-- drop trigger if exists posts_insert_trigger;
-- create trigger posts_insert_trigger after insert on posts for each row insert into logs (msg) values ('post added!');

-- drop table if exists comments;
-- create table comments (
--   id int unsigned primary key auto_increment,
--   post_id int unsigned not null,
--   body text
-- );

-- alter table comments add constraint fk_comments foreign key(post_id) references posts (id);

insert into posts (title, body) values ('title 1', 'body 1');
insert into posts (title, body) values ('title 2', 'body 2');
insert into posts (title, body) values ('title 3', 'body 3');

select * from posts;
-- select * from logs;

-- insert into comments (post_id, body) values (1, 'first comment for post 1');
-- insert into comments (post_id, body) values (1, 'second comment for post 1');
-- insert into comments (post_id, body) values (3, 'first comment for post 3');
-- insert into comments (post_id, body) values (4, 'first comment for post 4');

-- delete from posts where id = 2;
-- insert into posts (title, body) values ('new title', 'new body');
-- insert into comments (post_id, body) values (last_insert_id(), 'first comment for new post');

-- select * from posts;
-- select * from comments;

-- select * from posts inner join comments on posts.id = comments.post_id;
-- select posts.id, posts.title, posts.body, comments.body from posts inner join comments on posts.id = comments.post_id;
-- select * from posts left join comments on posts.id = comments.post_id;
-- select * from posts right join comments on posts.id = comments.post_id;