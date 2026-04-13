
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

-- You are using safe update mode To disable safe mode 
set sql_safe_updates = 0;  -- To disable safe mode      
 
-- for update table data accordingly with where clause;
update students 
set grade = "B" 
where  marks between 80 and 90 ;

update students 
set  marks = marks+1 ;




-- for delete  table data accordingly with where clause;
delete from students
where marks < 20 ;


delete from students;   -- delete all the table date but stucture remains there


select * from students;



/* ----------------------------------------------------------------------------------   */

/*  cascading  through foreign key */

-- parent table 
create table if not exists dept ( id  int primary key,
                    name varchar(50));
                    
-- child table 
create table if not exists teachers ( id int primary key , 
						name varchar(50),
                         d_id int,
                         foreign key(d_id ) references dept(id)
                         ON update cascade 
                         ON delete cascade ); 
                         
                         
insert into dept (id , name) values 
( 101 , "science"),
( 102 , "commerce"),
( 103 , "arts");

insert into teachers (id, name , d_id)
values
(101 , "adam"  , 101),
(102 , "eve"  ,  102),
(103 , "isaq"  , 103);


update dept
set  id = 104
where id = 103;

	
select * from dept;
select * from teachers;



delete from dept;
delete from teachers;


drop table dept;
drop table teachers;