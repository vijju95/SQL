select * from emp;


-- order by clause is used to sort the data in ascending or descending
select * from emp
order by salary desc;

select * from emp
order by e_name asc;

select * from emp
where salary>12000
order by salary desc,e_name asc;
                 
select  max(salary) as "maximum" from emp;
-- aggregate function
-- max(),min(),count(),avg(),sum()

select  min(salary) as "minimum" ,count(e_id) as "count",sum(salary ) as "total" ,avg(salary) as "avg" from emp;
select * from emp;



-- group by clause ******

select count(e_id) from emp where d_id=1;

select d_id, count(e_id)
from emp
group by d_id;


select d_id, count(e_id)
from emp
group by d_id;

-- maximum salary from all groups

select d_id, max(salary)
from emp
group by d_id
order by max(salary) desc;

select max(salary) from emp where d_id=2;

select * from employees;
select count(distinct job_id) from employees;









select * from employees;

-- find out total payable salary according to each department wise
select department_id,sum(salary) from employees group by department_id;

-- find out total salary from employee table

select sum(salary) from employees;


-- find out list of employees according to their jobs
select count(employee_id),job_id
from employees
group by job_id
having count(employee_id)>10
order by count(EMPLOYEE_ID);

select first_name from employees where first_name like '_a%';

select first_name,last_name,salary , salary*0.15 as "Pf" from employees;

select first_name,last_name,salary , salary+1000 as "bonus" from employees;

select 10+12 as "column" from dual;

select length("hello");


select * from employees;

-- find out maximum salary of employee with respective of their manager and salary should be greater than 10000
select manager_id, max(salary) as "maxi"
from employees
where manager_id in(100,101,102,103)
group by manager_id
having maxi>10000
order by maxi;





