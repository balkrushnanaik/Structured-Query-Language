CREATE DATABASE Employees;
USE Employees;


CREATE TABLE employees_data (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    age INT,
    city VARCHAR(50),
    joining_year INT
);

INSERT INTO employees_data VALUES
(1,'Amit','IT',60000,25,'Pune',2022),
(2,'Sneha','HR',45000,28,'Mumbai',2021),
(3,'Rahul','IT',70000,26,'Pune',2020),
(4,'Priya','Finance',80000,30,'Delhi',2019),
(5,'Karan','HR',40000,27,'Mumbai',2023),
(6,'Neha','IT',75000,29,'Pune',2018),
(7,'Rohit','Finance',65000,31,'Delhi',2020),
(8,'Anjali','Marketing',50000,24,'Ahmedabad',2022),
(9,'Vikas','Marketing',52000,26,'Ahmedabad',2021),
(10,'Pooja','IT',90000,32,'Pune',2017),
(11,'Arjun','HR',48000,29,'Mumbai',2019),
(12,'Kavya','Finance',72000,28,'Delhi',2022),
(13,'Manish','IT',68000,27,'Pune',2021),
(14,'Riya','Marketing',53000,25,'Ahmedabad',2023),
(15,'Sahil','HR',42000,26,'Mumbai',2020);


SELECT * FROM employees_data;

-- Subqueries in SQL
SELECT * 
FROM employees_data
WHERE salary > (SELECT AVG(salary) FROM employees_data)
ORDER BY salary ASC;



