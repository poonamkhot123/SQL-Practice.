CREATE DATABASE bank_db;
USE bank_db;
CREATE TABLE employees(
emp_id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
name VARCHAR(50) NOT NULL,
design VARCHAR(50) DEFAULT 'probation',
dept VARCHAR(50));

SELECT * FROM employees;

INSERT INTO employees(name,design,dept)
VALUES('raju','manager','loan'),
      ('sham','cashier','cash'),
      ('paul','associate','loan'),
      ('alex','accountant','account'),
      ('victor','associate','deposit');
      
SELECT * FROM employees
WHERE dept = 'loan';

SELECT * FROM employees
WHERE emp_id = 1;

SELECT emp_id,name FROM employees
WHERE name = 'raju';

UPDATE employees
SET dept = 'IT'
WHERE  emp_id  = '3';

SELECT * FROM employees;

SELECT  emp_id,CONCAT( name,' ' ,dept,' ','abcd') as fullname FROM employees;

SELECT CONCAT_WS('- ','HI','HELLO');

DELETE FROM employees WHERE emp_id = 2;

SELECT CONCAT_WS(':',emp_id,name,dept) FROM employees;

SELECT SUBSTRING('HELLO BUDDY',-5);

SELECT REPLACE("HEY BUDDY'","HEY","HELLO");

SELECT REPLACE(emp_id,1,1000) AS newempids,name FROM employees;

SELECT REVERSE('HELLO');

SELECT emp_id,REVERSE(name) AS rname FROM employees;

SELECT UPPER('asbsc');

SELECT emp_id , UPPER (name) from employees;

SELECT name, CHAR_LENGTH(name) AS length FROM employees;

SELECT * FROM employees
WHERE CHAR_LENGTH(name) > 5;

SELECT INSERT('hey wassap', 5,0, 'raju');

SELECT RIGHT('POONAMKHOT',5);

SELECT REPEAT('HAHAHA  ',10);







SELECT CONCAT_WS(':',emp_id,name,UPPER(design),dept)  FROM employees;

SELECT * FROM employees;

select CONCAT(LEFT(dept, 1),emp_id) ,name FROM employees;

SELECT DISTINCT dept , name FROM employees;

SELECT * FROM employees ORDER BY name DESC;

SELECT * FROM employees
WHERE design LIKE 'manager';

SELECT * FROM employees
WHERE name LIKE "r___";

SELECT * FROM employees LIMIT 3,3;

ALTER TABLE employees
ADD COLUMN 
salary INT NOT NULL
DEFAULT 25000;

SELECT * FROM employees
ORDER BY  salary desc
LIMIT 1;

SELECT COUNT(DISTINCT dept) FROM  employees;
SELECT  COUNT(emp_id) FROM employees
WHERE design='manager';

SELECT  distinct dept FROM employees;

SELECT * FROM employees
ORDER BY salary DESC ;

SELECT * FROM employees
LIMIT 3;

SELECT * from employees
WHERE name LIKE "r%" ;

SELECT * from employees
WHERE name LIKE "____" ;

SELECT dept , count(name) FROM employees GROUP BY dept;

SELECT design, count(name) FROM employees GROUP BY design;

SELECT MAX(salary) FROM employees;

SELECT MIN(salary) FROM employees;

SELECT emp_id , name ,salary FROM employees
WHERE
salary = (SELECT MAX(salary) FROM employees);

SELECT SUM(salary) FROM employees;

SELECT AVG(salary) FROM employees;

SELECT dept ,SUM(salary) FROM employees
GROUP BY dept;

SELECT dept,COUNT(emp_id),SUM(salary) FROM employees GROUP BY dept;

SELECT COUNT(emp_id) FROM employees;

SELECT dept,COUNT(emp_id) FROM employees
GROUP BY dept;

SELECT * FROM employees
WHERE SALARY = (select MAX(salary) FROM employees);

SELECT * FROM employees
WHERE SALARY =(SELECT MIN(salary) FROM employees);

SELECT dept, SUM(salary) FROM employees
WHERE dept = 'loan';

SELECT  dept,AVG(salary) FROM employees
GROUP BY dept;

CREATE TABLE person
(jd DATE,
jt TIME,
jdt DATETIME
);

INSERT INTO person
VALUES('2022-04-17','23:00:00','2023-05-16 22:05:02');

 select * from person;

SELECT CURDATE();

SELECT CURTIME();

SELECT NOW();

INSERT INTO person VALUES(CURDATE(),CURTIME(),NOW());

SELECT DAYNAME('2003-03-18');

SELECT DAYNAME(CURDATE());

SELECT MONTHNAME('2025-06-17');

SELECT * FROM person;

SELECT jd,MONTHNAME(jd) FROM person;

SELECT jt,HOUR(jt) FROM person;

SELECT jt,MINUTE(jt) FROM person;

SELECT DATE_FORMAT(NOW(),'%D %a at %T');

SELECT DATE_FORMAT(NOW(),'%d/%m/%y');

SELECT DATE_FORMAT(NOW(),'%D %a');

SELECT DATE_FORMAT(NOW(), '%D %a at %k');

SELECT * FROM person;

SELECT jdt,DATE_FORMAT(jdt,'%D %a at %k') FROM person;

SELECT DATEDIFF('2023-04-20','2023-04-15');

SELECT DATE_ADD(NOW(),INTERVAL 1 YEAR);

SELECT DATE_ADD(NOW(),INTERVAL 1 MONTH);

SELECT TIMEDIFF('23:00:00','20:00:50');























