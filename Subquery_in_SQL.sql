CREATE DATABASE advanced_sql_topics;

USE advanced_sql_topics;

-- Subquery :
-- A subquery is a query inside another query that provides data to the outer query for filtering, comparison, or calculation.

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    designation VARCHAR(30),
    salary DECIMAL(10,2),
    age INT,
    experience INT,
    manager_id INT,
    city VARCHAR(30),
    joining_date DATE
);

INSERT INTO Employees
(emp_id, emp_name, department, designation, salary, age, experience, manager_id, city, joining_date)
VALUES
(101, 'Amit',     'IT',        'Developer',        65000, 25, 2, 110, 'Pune',      '2022-06-15'),
(102, 'Priya',    'HR',        'HR Executive',     50000, 28, 4, 111, 'Mumbai',    '2021-03-10'),
(103, 'Rahul',    'Finance',   'Accountant',       55000, 30, 6, 112, 'Delhi',     '2020-01-18'),
(104, 'Sneha',    'IT',        'Developer',        70000, 27, 4, 110, 'Pune',      '2021-09-05'),
(105, 'Karan',    'Sales',     'Sales Executive',  48000, 26, 3, 113, 'Bangalore', '2022-11-12'),
(106, 'Neha',     'Marketing', 'Marketing Exec',   53000, 29, 5, 114, 'Hyderabad', '2020-07-20'),
(107, 'Vikas',    'IT',        'Tester',           60000, 31, 7, 110, 'Pune',      '2019-08-14'),
(108, 'Anjali',   'Finance',   'Analyst',          62000, 27, 5, 112, 'Delhi',     '2021-05-25'),
(109, 'Rohit',    'Sales',     'Sales Manager',    90000, 35,10, NULL,'Mumbai',    '2017-02-11'),
(110, 'Meera',    'IT',        'Manager',         120000, 40,15, NULL,'Pune',      '2013-06-01'),
(111, 'Suresh',   'HR',        'Manager',         100000, 42,18, NULL,'Mumbai',    '2011-04-15'),
(112, 'Pooja',    'Finance',   'Manager',         110000, 39,14, NULL,'Delhi',     '2014-09-10'),
(113, 'Arjun',    'Sales',     'Manager',         105000, 41,16, NULL,'Bangalore', '2012-12-01'),
(114, 'Kavita',   'Marketing', 'Manager',         108000, 38,13, NULL,'Hyderabad', '2015-10-20'),
(115, 'Deepak',   'IT',        'Developer',        72000, 29, 6, 110, 'Chennai',   '2020-02-17'),
(116, 'Nisha',    'HR',        'Recruiter',        52000, 26, 3, 111, 'Mumbai',    '2022-04-08'),
(117, 'Ajay',     'Finance',   'Analyst',          64000, 32, 8, 112, 'Delhi',     '2018-11-22'),
(118, 'Simran',   'Marketing', 'SEO Specialist',   58000, 27, 4, 114, 'Hyderabad', '2021-01-30'),
(119, 'Manish',   'Sales',     'Sales Executive',  51000, 28, 5, 113, 'Bangalore', '2020-08-19'),
(120, 'Riya',     'IT',        'Data Analyst',     68000, 24, 2, 110, 'Pune',      '2023-01-10');

SELECT * FROM Employees;

SELECT
    *
FROM
    Employees
WHERE
    salary = (
        SELECT MAX(salary) FROM Employees
        );

SELECT *
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
    );

SELECT AVG(Employees.salary)
FROM Employees;

-- multiple rows subquery
-- IN(): Execute the subquery first, take its returned values, and then check whether each value in the outer query exists in that returned list.
SELECT *
FROM Employees
WHERE department IN (
    SELECT department
    FROM Employees
    WHERE department = 'IT'
    );

