CREATE DATABASE EmployeeDB;
USE EmployeeDB;

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    salary DECIMAL(10,2),
    city VARCHAR(50),
    dept_id INT,
    joining_date DATE,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50),
    dept_id INT,
    budget DECIMAL(12,2),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

INSERT INTO Departments VALUES
(1,'HR'),
(2,'IT'),
(3,'Finance'),
(4,'Marketing');

INSERT INTO Employees VALUES
(101,'Amit',25,'Male',35000,'Pune',2,'2023-01-15'),
(102,'Sneha',28,'Female',42000,'Mumbai',1,'2022-05-20'),
(103,'Rahul',32,'Male',55000,'Delhi',2,'2021-03-10'),
(104,'Priya',26,'Female',38000,'Pune',3,'2024-02-12'),
(105,'Karan',30,'Male',60000,'Mumbai',4,'2020-11-05'),
(106,'Neha',27,'Female',45000,'Delhi',2,'2023-07-18'),
(107,'Vikas',35,'Male',70000,'Pune',3,'2019-08-25'),
(108,'Anjali',29,'Female',50000,'Mumbai',1,'2022-09-30'),
(109,'Rohit',31,'Male',48000,'Nagpur',4,'2021-06-14'),
(110,'Pooja',24,'Female',32000,'Pune',2,'2024-01-01');

INSERT INTO Projects VALUES
(201,'Payroll System',1,150000),
(202,'E-commerce App',2,500000),
(203,'Tax Analysis',3,250000),
(204,'Ad Campaign',4,300000);

-- =========================================
-- SQL PRACTICE QUESTIONS (BASIC TO MEDIUM)
-- =========================================

-- 1. Display all employee records.
select * from Employees;

-- 2. Show only employee names and salaries.
select emp_name,salary from Employees;

-- 3. Find all employees from Pune.
select * from Employees 
where city = 'Pune';

-- 4. Find employees whose salary is greater than 40000.
select * from Employees 
where salary > 40000;

-- 5. Show employees whose age is between 25 and 30.
select emp_name from Employees
where age between 25 and 30;

-- 6. Display employees sorted by salary in ascending order.
select emp_name,salary from Employees 
order by salary
asc ;

-- 7. Display employees sorted by salary in descending order.
select * from Employees 
order by salary 
DESC;

-- 8. Find employees whose names start with 'P'.
SELECT emp_name from Employees
where emp_name like 'P%';

-- 9. Find employees whose city is Mumbai or Pune.
select emp_name from Employees
where city = 'Mumbai' or 'Pune';

-- 10. Count total number of employees.
select count(*) from Employees;

-- 11. Find the maximum salary.
select max(salary) from Employees;

-- 12. Find the minimum salary.
select min(salary) from Employees;

-- 13. Find the average salary.
select avg(salary) from Employees;

-- 14. Count employees department-wise.
select count(emp_name),dept_name from Employees
right join Departments
on Employees.dept_id = Departments.dept_id
group by dept_name;

-- 15. Find total salary department-wise.
select dept_name,sum(salary) as SALARY from Employees
right join Departments
on Employees.dept_id = Departments.dept_id
group by dept_name;

-- 16. Show employees who joined after 2022.

-- 17. Find the second highest salary.
select max(salary)
from Employees
where salary < (select max(salary) from Employees);

-- 18. Find employees with salary NOT between 35000 and 50000.
select * from Employees
where salary NOT between 35000 AND 50000;

-- 19. Show distinct cities of employees.
SELECT DISTINCT city from Employees;

-- 20. Count distinct departments in Employees table.
select distinct(dept_id) from Employees;

-- 21. Show employee names with their department names (JOIN).
select emp_name,dept_name from Employees
right join Departments
on Employees.dept_id = Departments.dept_id;


-- 22. Find employees working in IT department.
select emp_name,dept_name from Employees
right join Departments
on Employees.dept_id = Departments.dept_id
where dept_name = 'IT';

-- 23. Find department-wise average salary.
select dept_name, sum(salary) from Employees
right join Departments
on Employees.dept_id = Departments.dept_id
group by dept_name;

-- 24. Find employees whose salary is greater than average salary.
SELECT * FROM Employees
where salary>(select avg(salary) from Employees);

-- 25. Show the highest-paid employee in each department.


-- 26. Find departments having more than 2 employees.

-- 27. Show project names with department names.
SELECT project_name,dept_name FROM Projects
left join Departments
on Projects.dept_id = Departments.dept_id;


-