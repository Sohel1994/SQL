create table if not exists students ( rollNum int primary key ,
									   name varchar (50) ,
                                       marks int not null ,
									   grade varchar(2) ,
									   city varchar(50));
                                       
insert into students values ( 1 , "anil" ,78 ,  "C" , "pune" ); 
insert into students values ( 2 , "bhumika" ,93 ,  "A" , "Mumbai" ); 
insert into students values ( 3 , "chatan" ,85 ,  "B" , "Mumbai" ); 
insert into students values ( 4 , "dhruv" ,96 ,  "A" , "Delhi" ); 
insert into students values ( 5 , "emaual" ,12 ,  "F" , "Delhi" ); 
insert into students values ( 6 , "farah" ,82,  "B" , "Delhi" ); 

use college ;

truncate table students; -- delete table data not the schema / not a structure of table unlike drop table
DROP TABLE students;  -- DELETE TABLE AND SCHEMA AS WELL

select * from students; 


/* ------------------------------------------------------------------------------ */
-- Rename the table name 
ALTER TABLE students 
RENAME TO Stu_data;

-- Rename the table name 
ALTER TABLE Stu_data 
RENAME TO students;

/* ------------------------------------------------------------------------------ */

-- add column into existing table 
ALTER TABLE students
ADD COlUMN age int not null default 19;

/* ------------------------------------------------------------------------------ */

-- drop  column from existing table 
ALTER TABLE students
DROP COlUMN stu_age;

/* ------------------------------------------------------------------------------ */

-- change the column name into existing table
ALTER TABLE students
CHANGE COLUMN age stu_age INT check (stu_age >= 19); 



/* ------------------------------------------------------------------------------ */

insert into students( rollNum , name , marks , stu_age)
values
( 7 ,  "shashi" , 76 , 23);

UPDATE students
SET grade = "B" , city = "pune"
WHERE rollNum = 7;

/* ------------------------------------------------------------------------------ */

-- modify column datatype or constaint
ALTER TABLE students
MODIFY stu_age varchar(3) constraint a_chek check (stu_age >=19);  -- for checking

ALTER TABLE students  -- keeping as it is
MODIFY stu_age INT check (stu_age >= 19); 

/* ------------------------------------------------------------------------------ */


-- practice questions : 
-- 1) change the column name to  full name 

ALTER TABLE students
CHANGE name full_name varchar(50);

select * from students; 

/* ------------------------------------------------------------------------------ */

-- 2) Delete all the student who scored below 80 marks

DELETE FROM students
WHERE marks < 70;

-- You are using safe update mode To disable safe mode 
set sql_safe_updates = 0;  -- To disable safe mode 

select * from students; 

/* ------------------------------------------------------------------------------ */

-- 3) DELETE THE COLUMN FOR grades 

ALTER TABLE students
DROP COLUMN grade ;

select * from students; 

/* ------------------------------------------------------------------------------ */





 



