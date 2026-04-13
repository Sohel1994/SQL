create database  constraintdb;

use constraintdb;

create table student  ( id int primary key , 
                        name varchar(50) not null , -- value can not be empty
                        salery int unsigned unique ); -- unique values allowed
                        
select * from student;

drop table student;


/*----------------------------------------------------------------------------------*/
/* ------------------ forigne key example ----------------------*/

create table  city ( id  int primary key,
                     name varchar (50)
				    );
create table employee( emp_id int primary key ,
                       name varchar(50) ,
					   city_id int,
                       city_name varchar(50),
                       foreign key(city_id) references city(id)
                       );
                       
insert into city (id , name )
values
( 1 , "kop"),
( 2 , "pune"),
( 3 , "ichal");


insert into employee ( emp_id , name , city_id , city_name )
values
( 101 , "atul" , 2 , "pune"),
( 102 , "sohel" , 1  , "kop"),
( 103 , "nikita" , 2  , "pune"),
( 104 , "vaibhave" , 3  , "ichal");

insert into employee ( emp_id , name , city_id , city_name)
values ( 105 , "kedar" , 1 , "kop");


select * from city;
select * from  employee;

drop table employee;
drop table city;

/* ----------------------------------------------------------------------- */ 

/* ---------------------constraint check-----------------------------------*/ 


create table school ( id int primary key ,
					  name varchar(50),
                      marks int check 
                      (marks > 70)
                      );
                      
                      -- OR  --
create table school ( id int primary key ,
					  name varchar(50),
					  marks int
                      constraint mks check (marks > 70)
                      );
                      
                      
insert into school values( 1 , " atul" , 71 );
insert into school values( 2 , " vaibhav" , 75 );
insert into school values( 3 , " sohel" , 77 );
insert into school values( 4 , " akshay" , 78 );
insert into school values( 5 , "akshay" , 75 );


select * from school;
drop table school;

 /* ---------------------------------------------------------------------- */     
 
/*------------------select ---------------------------*/ 
  
  select * from school;
  select marks from school;
  select distinct marks from school;  -- disticnt avoid duplicate values to show.  
  
/* ---------------------------------------------------------------------- */
  
  
  
 
 
                       




