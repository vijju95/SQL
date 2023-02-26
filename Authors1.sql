create database authors;

use authors;

create table Authors15 (
authors_id int Primary key,
authors_name varchar(10),
Email_id varchar(20) unique,
author_ph varchar(10)unique,
address varchar(30),
city varchar(10));

insert into Authors15 values
(1,'Anvi','anvi@gamil.com','8558659335','Royal park','pune'),
(2,'Dear','Dear@gamil.com','7380825485','Katraj','pune'),
(3,'viren','virengamil.com','9758525625','khed','Mumbai');
