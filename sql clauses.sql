create database if not exists college;

use college;

create table if not exists student ( id int primary key,
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

  select distinct city from student; -- avoide duplicate entry of the city.

select *from student where marks > 50;  -- shows table whose marks > 50 

select *from student where marks between 60 and 95;  --  only table rows whose marks in between 60 to 95, inclusive 60 and 95 

select *from student where city in ("kop" , "pune"); -- table rows city in kop and pune; 

select *from student where city not in ("kop");  -- table rows city not in kop 

select *from student limit 3;   -- only 3 table row of the table

select *from student where marks < 90 limit 3;   -- only 3 table rows whose marks are less than 90

select marks,city from student order by city asc;   --  show table makrs and city column in city asending order.

select *from student order by grade desc limit 3;   -- only 3 table rows desending grade order.




DELETE FROM student WHERE id > 0;  -- delete content of the table only,table structure remains there.\

drop table student;  -- delete table with structure.



/* ---------------------------------------------------------------------------------------    */


/* --------------------   aggregate function ----------------------------- */

select avg(marks)
from student;

select count(name)
from student; 

select min(marks)
from student; 

select max(marks)
from student; 

select sum(marks)
from student;


/* ---------------------------------------------------------------------------- */ 
/* */

/* ----------------   GROUP BY clause ----------------------------------------*/

select city
from student
group by city ;

/* combine with aggregate functions */

select city , avg(marks)
from student
group by city ;

select city , min(marks)
from student
group by city ;

select city , sum(marks)
from student
group by city ;

select city , sum(marks)
from student
group by city ;


/* ---------------------------------------------------------------------------- */


/*  question) Write the query find avg marks in each city by ascending order avg marks ?*/
-- ans
select city , avg(marks)
from student 
group by city
order by avg(marks) ;    -- asc is by default


select city , avg(marks)
from student 
group by city
order by avg(marks) desc;    -- asc is by default


-- just for checking
select city 
from student 
group by city
order by  city desc; 


/* ---------------------------------------------------------------------------- */

/*--------having clause --------*/

select city , count(id)
from student 
group by city
having sum(marks) > 100
order by  city desc;

/* ---------------------------------------------------------------------------- */

drop table students;







