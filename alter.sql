use db1;

SELECT * FROM db1.employee;

-- how to add column once table is created with its data

alter table employee
add column e_mail varchar(25) after e_city;

update employee set e_mail='sonal1@gmail.com',e_sal=12500 where e_id=2;

-- how to change column name
alter table employee
change column e_sal salary int;

desc employee;

-- how to change datattype

alter table employee
change column e_city e_city varchar(15);

alter table employee
modify e_city varchar(18);

-- how to add primary key
alter table employee
add primary key(e_id);

alter table employee
drop primary key;

-- how to rename table
rename table employee to emp;

select * from emp;

-- how to copy structure

create table new_emp like emp;

-- how to copy one table into another data

create table new_emp2 as select * from emp;

create table java13.new_emp1 as select * from emp;

drop table new_emp2;

select * from new_emp1;

alter table new_emp1
drop column e_mail;



-- diff between delete and truncate
-- delte is DML statement and truncate is DDL statement
--  delete will have where clause truncate does not have where clause
-- through delelte data can be roll back while truncate does not roll back data

truncate table new_emp1;

set autocommit=0;

delete from new_emp2  where e_id=5;

drop table new_emp2;

rollback;

truncate table new_emp2;

rollback;

