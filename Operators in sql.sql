-- Create Database
CREATE DATABASE OperatorDemo;

-- Use Database
USE OperatorDemo;

-- Create Table
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    age INT,
    department VARCHAR(30)
);

-- Insert Sample Data
INSERT INTO Employee VALUES
(1, 'Amit', 50000, 25, 'IT'),
(2, 'Neha', 60000, 30, 'HR'),
(3, 'Rahul', 45000, 28, 'Sales'),
(4, 'Sneha', 70000, 35, 'IT'),
(5, 'Karan', 40000, 22, 'Marketing');

---------------------------------------------------
-- Arithmetic Operators
---------------------------------------------------

-- Addition
SELECT emp_name, salary, salary + 5000 AS increased_salary
FROM Employee;

-- Subtraction
SELECT emp_name, salary, salary - 2000 AS reduced_salary
FROM Employee;

-- Multiplication
SELECT emp_name, salary, salary * 12 AS yearly_salary
FROM Employee;

-- Division
SELECT emp_name, salary, salary / 2 AS half_salary
FROM Employee;

---------------------------------------------------
-- Comparison Operators
---------------------------------------------------

-- Greater Than
SELECT * FROM Employee
WHERE salary > 50000;

-- Less Than
SELECT * FROM Employee
WHERE age < 30;

-- Equal To
SELECT * FROM Employee
WHERE department = 'IT';

-- Not Equal To
SELECT * FROM Employee
WHERE department != 'HR';

---------------------------------------------------
-- Logical Operators
---------------------------------------------------

-- AND Operator
SELECT * FROM Employee
WHERE salary > 45000 AND age < 35;

-- OR Operator
SELECT * FROM Employee
WHERE department = 'IT' OR department = 'HR';

-- NOT Operator
SELECT * FROM Employee
WHERE NOT department = 'Sales';

---------------------------------------------------
-- Special Operators
---------------------------------------------------

-- BETWEEN
SELECT * FROM Employee
WHERE salary BETWEEN 40000 AND 60000;

-- IN
SELECT * FROM Employee
WHERE department IN ('IT', 'HR');

-- LIKE
SELECT * FROM Employee
WHERE emp_name LIKE 'S%';

-- IS NULL
SELECT * FROM Employee
WHERE department IS NULL;