select * from employees;

-- select emp_name d_id email salary from employee table where your salary will be greater than 12000
 -- to test condition where clause
select first_name,department_id,email,salary from employees where salary>12000;

-- select emp_name d_id email salary from employee table where your salary will be less than than 12000
select first_name,department_id,email,salary from employees where salary<12000;

select first_name,department_id,email,salary from employees where DEPARTMENT_ID%9=0;

-- between
select first_name,department_id,email,salary from employees where salary not between 12000 and 14000;

-- =
select first_name,department_id,email,salary from employees where DEPARTMENT_ID=100;

select first_name,department_id,email,salary from employees where first_name="Nancy";

-- in

select first_name,department_id,email,salary from employees where DEPARTMENT_ID in(10,20,40,50,60);

select first_name,department_id,email,salary from employees where DEPARTMENT_ID not in(10,20,40,50,60);

-- find out employess hire after 2018

-- how to add column date

alter table employee
add column hire_date date after d_id;
select first_name,department_id,email,salary from employees where first_name like "Nancy";

select * from employee;

-- find out employess hire after 2018   YYYY-MM-DD

select e_name,e_sal,city,hire_date from employee where hire_date >'2018-01-01';

insert into employee(e_id,e_name,e_sal,city,hire_date) values(5,'priya',15000,'mumbai','2021-09-13');

insert into employee(e_id,e_name,city,hire_date) values(6,'priya','mumbai','2021-09-13');


-- find out employess hire between 2015 and 2019

select e_name,e_sal,city,hire_date from employee where hire_date  between '2015-01-01' and '2019-12-31';


-- find out those employees whose name starts with 'p'

select e_name,e_sal,city,hire_date from employee where e_name like 'p%';


select e_name,e_sal,city,hire_date from employee where e_name like 'p%';


select e_name,e_sal,city,hire_date from employee where e_name like '%o%';

select e_name,e_sal,city,hire_date from employee where e_name like '_____';

select e_name,e_sal,city,hire_date from employee where e_name like '%m';

-- find out employee whose deparment is not there

select e_name,e_sal,city,hire_date from employee where e_name ='null';

select e_name,e_sal,city,hire_date from employee where d_id is null;

select * from employee;

alter table employee
change column city e_city varchar(12);
