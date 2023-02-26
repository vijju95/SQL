use db1;

create table student
(
roll_no int primary key,
s_name varchar(15) not null,
s_email varchar(30) unique,
phone_no varchar(10) unique,
gender varchar(10) default "other",
c_id int,
foreign key(c_id) references course(c_id));




create table course
(
c_id int primary key,
c_name varchar(10),
 fees int);
 
 -- how to delete/drop constraint
 alter table student
 drop constraint student_ibfk_1;
 
 -- how to add foreign key after table cretaed
 ALTER TABLE student 
ADD CONSTRAINT stud_fk2
FOREIGN KEY (c_id)
REFERENCES course (c_id);

-- how to add unique after table is created
alter table student
add constraint un_email unique(c_email);
 
 
 
 
