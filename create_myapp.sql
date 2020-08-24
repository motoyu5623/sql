# comment
-- comment
/*
comment
comment
comment
*/
drop database if exists myapp;
create database myapp;
create user motoyu@localhost identified by '5623banana';
grant all on myapp.* to motoyu@localhost;
