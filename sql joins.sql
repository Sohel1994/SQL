
create database if not exists joins;
use joins;

create table if not exists student_rec( s_id int primary key,
										 name varchar(50));
                                         
create table  if not exists course ( id int primary key,
									  courseName varchar(50));

insert into student_rec(s_id , name)
values
( 101 , "adam"),
( 102 , "bob"),
( 103 , "eve");


insert into course( id , courseName)
values
( 102 , "english"),
( 103 , "science"),
( 104 , "maths");

/* ------------------------------------------------------------------------------ */

-- inner join 
-- retrun records thar have matching values in both table

select * from student_rec;
select * from course;

select *
from student_rec 
inner join course
on student_rec.s_id = course.id;

-- alias for table name
select *
from student_rec as s
inner join course as c
on s.s_id = c.id;

-- change column name
alter table student_rec
change column s_id id int ;  -- while changing column name having primary key 
                             -- to make primary key for changed name we have drop first primary for that column
							 -- example 
                             -- 1)SHOW CREATE TABLE student_rec;
                             -- 2)ALTER TABLE student_rec DROP PRIMARY KEY;
                             -- 3)    ALTER TABLE student_rec 
                                   -- CHANGE COLUMN s_id id INT,
								   -- ADD PRIMARY KEY (id);

select *
from student_rec as s
inner join course as c
on s.id = c.id;

SHOW CREATE TABLE student_rec; -- shows table info. with schema 

/* ------------------------------------------------------------------------------ */

-- left join 
-- retrun all records form left table and matching values from right table

select *
from student_rec as s -- left table all records
left join course as c -- only matching records
on s.id = c.id;

-- note which data is not matching it will get null for left table

/* ------------------------------------------------------------------------------ */

-- right join 
-- retrun all records form right table and matching values from right table

select *
from student_rec as s -- left table all records
right join course as c -- only matching records
on s.id = c.id;

-- note which data is not matching it will get null right left table


/* ------------------------------------------------------------------------------ */

-- full join 
-- in mysql there is no cmd for full join  like full join or full outer join 
-- thats way we use UNION means joint the cmds

select *
from student_rec as s -- left table all records
left join course as c -- only matching records
on s.id = c.id
UNION
select *
from student_rec as s -- left table all records
right join course as c -- only matching records
on s.id = c.id;

/* ------------------------------------------------------------------------------ */


-- left exclusive join 
-- the records from left table which are not overlap in right table that nothing null values 

select * from student_rec as s
left join course as c 
on s.id = c.id 
where c.id is null;

/* ------------------------------------------------------------------------------ */


-- right exclusive join
-- the record from right table which are not overlap with left table record which are null values

select * from student_rec as s
right join course as c
on s.id = c.id
where s.id is null;

/* ------------------------------------------------------------------------------ */


-- full exclusive join
-- the records which not overlaps in both the tables 
  
select * from student_rec as s
left join course as c 
on s.id = c.id 
where c.id is null
UNION
select * from student_rec as s
right join course as c
on s.id = c.id
where s.id is null;

/* ------------------------------------------------------------------------------ */


-- self join 
-- is work as inner join  when we required relevent data from table itself

create table if not exists employee ( e_id int primary key,
									  name varchar(50),
									  m_id  int  );
							
insert into employee (e_id , name , m_id)
values
( 101 , "adam" , 103 ),  
( 102 , "bob"  , 104 ),
( 103 , "casey" , null),
( 104 , "donald" , 103);

-- delete from employee
-- where e_id > 100;

-- question manager name for employess  e_id is employee id and m_id is manager id 

select * 
from employee as a
join employee as b
on a.e_id = b.m_id; 
 
 
 -- for manager name of employee 
select a.name as mangerName , b.name as empName
from employee as a
join employee as b
on a.e_id = b.m_id; 

/* ------------------------------------------------------------------------------ */



 






