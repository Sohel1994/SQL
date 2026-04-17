use college;

select * from student;

select avg(marks)
from student;


-- sub queries are mostly used when dynamic data change in table
-- on recored addition , deletion etc 
select name , id , marks
from student
where marks >(select avg(marks)
from student);



select id
from student 
where id % 2 = 0;

select name , id
from student
where id in ( 2 , 4 );


 -- using sub queries for even id student
select name , id
from student
where id in ( select id
from student 
where id % 2 = 0);

/* -------------------------------------------------------------------------------------  */ 

 -- VIEW 
 -- is nothing but creating virtul table form onoher  table
 -- it is used when we have large sets of columns but requiered spacific colums from the table 
 -- to decleare VIEW we need to give alias name to that view 
 -- view is not real data which affect the real data of table 
 -- it fall under view section of the database
 
 create view stuview as 
 select id , name , marks
 from student
 where marks > 70;
 
 drop view stuview;
 
 select marks from
 stuview;
 
 
 -- que) find the name of student who scored  second highest marks?
 
 -- ans : 
 
 select id , name , marks
 from student
 order by marks desc
 limit 1 offset 1;    -- limt the rows  by LIMIT 
                      -- skip the rows by initial rows offeset 
 
 
 
 /* ----------------------------------------------------------------------------------------------------*/
 


