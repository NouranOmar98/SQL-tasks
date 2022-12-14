create table customers(
id int primary key,
firstname char (20) not null,
lastname char (20) not null,
job char (30),
);
 
--//

create table orders(
id int primary key,
price float,
total float,
);
--//


create table product(
id int primary key,
name char (20) not null,
price float not null,
);

--//
create table employee(
id int primary key,
firstname char (20) not null,
lastname char (20) not null,
job char (30),
);

insert into employee values(123,'Nouran', 'Omar', 'Full-Stack');
insert into customers values(123,'Rogina', 'Irshaidat', 'Full-Stack');
insert into orders values(589,258, 3);
insert into product values(123,'Razan', 586);


select * from customers;
select * from orders;
select * from product;
select * from employee;

