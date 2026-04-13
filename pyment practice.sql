
-- find the total payment according each payment method ?

create database if not exists payment;

use payment;

create table if not exists payees ( c_id  int primary key ,
									name varchar(50) not null ,
									pay_name varchar(50) ,
                                    city varchar(50) 
								  );
                                  
insert	into payees values ( 1 , "sohel" , "net bank" , "kop");
insert	into payees values ( 2 , "atul" , "upi" , "pune");
insert	into payees values ( 3 , "nikita" , "card" , "pune");
insert	into payees values ( 4 , "suraj" , "cash" , "kop");
insert	into payees values ( 5 , "shir" , "cash" , "kop");
insert	into payees values ( 6 , "chetan" , "upi" , "bang");
insert	into payees values ( 7 , "anil" , "net bank" , "bang");
insert	into payees values ( 8 , "vaibh" , "card" , "kop");
insert	into payees values ( 9 , "kedar" , "cash" , "bang");
insert	into payees values ( 10 , "ranjeet" , "upi" , "pune");

-- ans  ---------------

select pay_name , count(name)
from payees
group by pay_name; 


