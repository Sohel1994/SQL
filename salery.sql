create database if not exists salery;

use salery;

create table if not exists empsalery 
( id int primary key , 
  name varchar(50),
  sal  int unsigned not null
);

insert into empsalery( id , name , sal)
value
( 1 , "ana" , 500000),
( 2 , "adam" , 600000),
( 3 , "eve" , 700000);

insert into empsalery values ( 4 , "sohel" , 130000);
insert into empsalery values ( 5 , "sohel2" , 140000);


drop table empsalery ;

select * from empsalery;
