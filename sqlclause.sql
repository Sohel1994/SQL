create database if not exists college;

use college;

create table student( id int primary key,
					   name varchar(50),
					   marks int not null, 
                       grade char ,
                       city varchar(10)) ;
                       
insert into student ( id , name , marks , grade , city)
values
( 1 , "sohel" , 78 , 'A' , "kop"),
( 2 , "suraj" , 68 , 'B' , "kop");

insert into student values ( 3 , "shireen" , 93 , 'A' , "kop");
insert into student values ( 4 , "atul" , 55 , 'C' , "pune");
insert into student values ( 5 , "vaibh" , 17 , 'F' , "delhi");



select *from student;   -- shows all table content.

select *from student where marks > 50;  -- shows table whose marks > 50 

select *from student where marks between 60 and 95;  --  only table rows whose marks in between 60 to 95, inclusive 60 and 95 

select *from student where city in ("kop" , "pune"); -- table rows city in kop and pune; 

select *from student where city not in ("kop");  -- table rows city not in kop 

select *from student limit 3;   -- only 3 table row of the table

select *from student where marks < 90 limit 3;   -- only 3 table rows whose marks are less than 90

select marks,city from student order by city asc;   --  show table makrs and city column in city asending order.

select *from student order by grade desc limit 3;   -- only 3 table rows desending grade order.


DELETE FROM student WHERE id > 0;  -- delete content of the table only,table structure remains there.









