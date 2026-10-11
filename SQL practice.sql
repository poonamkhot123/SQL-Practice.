SHOW DATABASES;

CREATE DATABASE employeedb;

use employeedb;

create table departments(
dept_id int primary key,
dept_name varchar(50)
);

CREATE TABLE employees(
emp_id int primary key,
emp_name varchar(50),
age int,
gender varchar(10),
salary decimal(10,2),
city varchar(50),
dept_id int,
joining_date date,
foreign key (dept_id) references departments(dept_id));


create table projects( 
project_id int primary key,
project_name varchar(50),
dept_id decimal(10,2),
foreign key (dept_id) references departments(dept_id));

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    budget DECIMAL(12,2),
    FOREIGN KEY (dept_id) REFERENCES pepartments(dept_id)
);

drop database employeedb;