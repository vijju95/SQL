SELECT * FROM target.employees;

select first_name,department_id,email,salary from employees where salary>12000;

select first_name,department_id,email,salary from employees where salary<12000;
-- between
select first_name,department_id,email,salary from employees where salary not between 12000 and 14000;
select first_name,department_id,email,salary from employees where department_id=100;
select first_name,department_id,email,salary from employees where first_name="john";
select first_name,department_id,email,salary from employees where first_name like'______';
select first_name,hire_date,email,salary from employees where hire_date between '2000-06-04' and '2019-06-04';