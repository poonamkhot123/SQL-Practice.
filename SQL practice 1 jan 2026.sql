create database college;
use college;

create table student(
id int primary key,
name varchar(50),
age int not null);

insert into student values(1,"poonam",26);

select * from student;
create database if not exists college;

show databases;
show tables;
 create database xyz;
 
 create table employee(
 id int primary key,
 name varchar(50),
 salary int(10));
 
 insert into employee values(1,"adam",25000);

select * from employee;

drop database college;
create database college;
use college;

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student 
(rollno,name,marks,grade,city)
values(101,"anil",78,"c","pune");

select * from student;

select name,marks from student;

select distinct city from student;

select * from student where marks >85;

select * from student where city = 'mumbai';

select * from student where marks = 93 AND city = 'mumbai';

select * from student where marks = 85 OR city = 'mumbai';

select * from student where marks between 80 and 90;

select * from student WHERE city in ("delhi","mumbai");

select * from student WHERE city not in ("delhi","mumbai");


select *
from student
where marks > 75
limit 3;


select * 
from student
order by city ASC;

select * 
from student
order by marks desc;

select max(marks) from student;

select count(marks) from student;

select min(marks) from student;

select distinct count(city) from student;

select avg(marks) from student;

select city ,count(marks)
from student
group by city;

select city
from student
group by city;

select city ,avg(marks) 
from student
group by city;


select city, avg(marks)
 from student 
 group by city
 order by city;
 
 select city,avg(marks)
 from student
 group by city
 order by avg(marks);

select * from student;

select grade , count(rollno) from student
group by grade
order by grade;

select count(name) ,city
from student
group by city
having max(marks) > 90;


create table dept(
id int primary key,
name varchar(50));

create table teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id INT,
foreign key (dept_id) references dept(id)
on delete cascade
on update cascade
);


insert into dept values
(101,"english"),
(102,"it");

select * from dept;

insert into teacher values
(101,"adam",101),(102,"eve",102);

select * from student;

alter table student
add  column age int ;

alter table student 
drop column age;

alter table student
MODIFY age VARCHAR(2);

alter table student
CHANGE age stu_age INT;

alter table student
 drop column stu_age;
 
 alter table student
 rename to stu;
 
 truncate table stu;
 
 select * from student;
 
 alter table student
 change name full_name varchar(50);
 
 delete from student
 where marks < 80;
 
 alter table student
 drop column grade;
 
 drop table student;
 
 use college;
 
 create table student(
 id int primary key,
 name varchar(50));
 
 insert into student(id,name)
 values
 (101,"adam"),
 (102,"bob"),
 (103,"casey");
 
 create table course(
 id int primary key,
 course varchar(50));
 
 insert into course(id,course)
 values
 (102,"english"),
 (105,"math"),
 (103,"science"),
 (107,"computer science");
 

select * from student;

select * from course;

select * 
from student
inner join course
on student.id = course.id;

select * 
from student
left join course
on course.id = student.id;


select * 
from student
right join course
on student.id = course.id;

select * 
from student
left join course
on student.id = course.id
union
select * 
from student
right join course
on student.id = course.id;
 
 
select id,name
from student
join studemt
on student.id = student.id;
 
select id from student
union
select id from course;
 
 select id from student
 union all
 select id from course;
 
 create table customers(
 customer_id INT PRIMARY KEY,
 customer_name VARCHAR(50),
 city VARCHAR(30),
 phone VARCHAR(15)
  );
 
 create table orders(
 order_id INT PRIMARY KEY,
 customer_id int,
 order_date DATE,
 amount INT,
 FOREIGN KEY (customer_id) references customers(customer_id));
 
 select * from customers;
 select * from orders;
 
 select customer_name,city from customers;
 
 select amount from orders
 where amount >3000;
 
  select * from customers
  where city = "pune";
  
  select amount from  orders
  order by amount desc;
  
  select count(customer_name) from customers;
  
  select count(order_id) from orders;
  
  select customer_name,amount
  from customers
  left join orders
  on customers.customer_id = orders.customer_id
  where orders.customer_id is not null;
  
  select customer_name,order_date
  from customers 
  left join orders
  on customers.customer_id = orders.customer_id
  where orders.customer_id is not null;
  
  select customer_name,sum(amount) 
  from customers
  left join orders
  on customers.customer_id = orders.customer_id
  where orders.customer_id is not null
  group by customer_name;
  
  select avg(amount) from orders;
  
  select max(amount) from orders;
  
  select order_id from orders
  where order_date="2024-01-10";
  
  select count(order_id),city
  from orders
   join customers
  on orders.customer_id = customers.customer_id
  group by city;
  
  select customer_name,amount
  from customers
  left join orders
  on customers.customer_id = orders.customer_id
  order by amount desc
  limit 1;
  
  select customer_name,count(order_id)
  from customers
  left join orders
  on customers.customer_id = orders.customer_id
  group by customer_name;
  
 select customer_name,amount
 from customers
 left join orders
 on customers.customer_id = orders.customer_id
 where orders.customer_id is not null;
 
 
 select customer_name,amount
 from customers
 left join orders
 on customers.customer_id = orders.customer_id
 where orders.customer_id is null;
 
 select city ,count(order_id)
 from customers
 left join  orders
 on customers.customer_id = orders.customer_id
 group by city;
 
    
    