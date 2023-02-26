-- this is my firstDataBase

create database Narcissus;

use Narcissus;

create table Student (
S_Id int primary key,
S_branch varchar(20),
S_rollNum int,
S_name varchar(20),
S_division varchar(20));

-- how to Fetch the data
select * from Student;

desc Student

-- how to remove table/DataBase
drop table Student;
drop database Narcissus;

-- Alter command(After creating table we can add anything after creation)

alter table Student
add column S_tution varchar(20) after S_name;

alter table Student
change column S_name name varchar(20);

-- change data type
alter table Student
change column S_rollNum S_rollNum varchar(10);


-- how to create new table by adding all data from prevoious table(copy 1 table data into another)
create table new_Emp as select * from Student;

-- Insert data
insert into Student values (10,'civil', 18, 'pranay', 'chate','C');
insert into Student values (1,'Mech', 19, 'Vijay', 'SICM','B'),
 (2,'comp', 20, 'Happy', 'SICM','A'),
(3,'Mech', 20, 'Prasad', 'Home','B');

-- how to remove data
delete from Student;

-- how to delete row from table
delete from Student where S_Id=2;

-- how to Update data
update Student set S_tution='chate'where S_Id=3;

-- how to delete column only
select * from Student;
alter table Student
drop column S_Id;

-- order sorting asscending and descending
select * from Student
where S_rollNum>19 
order by S_rollNum desc;

-- find maximum thing from table
select max(S_rollNum) as 'maximum' from Student;

-- find maximum thing from table
select min(S_rollNum) as 'minimum', count(S_Id) as 'count',sum(S_Id) as 'total' from Student;

-- count by specific condition
select count(S_Id) as 'count' from Student
where S_Id>2;

-- grouping
select S_Id, count(S_rollNum)
from Student 
group by S_rollNum
order by max(S_rollNum) desc;

-- how to delete data from perticular row
delete from Student where S_Id=2;

