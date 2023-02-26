create database Cosmos;

use Cosmos;

create table Employee (
Emp_id int primary key,
Emp_name varchar(20),
Emp_deptName varchar(20),
Emp_location varchar(20),
Emp_deptId int);

create table department (
Emp_deptId int primary key,
Dep_count int );

create table count (
Dep_count int primary key,
Dep_type varchar(10));

drop table Employee;

insert into Employee values (1,'Vijay', 'development', 'pune', 'B'),
						   (2,'Pranay', 'tester', 'hadapsar','A');

insert into department values (1, 16),
						   (2,12);

insert into count values (16, 'mid'),
						   (12,'small');
		
drop table count;
use C