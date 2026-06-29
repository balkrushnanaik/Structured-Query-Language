CREATE DATABASE window_functions_concept;
USE window_functions_concept;

CREATE TABLE Employee_Salary (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    salary INT,
    joining_date DATE
);

INSERT INTO Employee_Salary (emp_id, emp_name, department, city, salary, joining_date) VALUES
(101, 'Amit',     'IT',        'Pune',      65000, '2022-01-15'),
(102, 'Priya',    'HR',        'Mumbai',    50000, '2021-03-10'),
(103, 'Rahul',    'Finance',   'Delhi',     72000, '2020-07-20'),
(104, 'Sneha',    'IT',        'Pune',      85000, '2019-06-18'),
(105, 'Karan',    'Sales',     'Bangalore', 55000, '2023-02-12'),
(106, 'Neha',     'HR',        'Mumbai',    60000, '2020-09-25'),
(107, 'Vikas',    'IT',        'Pune',      90000, '2018-04-30'),
(108, 'Anjali',   'Finance',   'Delhi',     68000, '2021-11-08'),
(109, 'Rohit',    'Sales',     'Bangalore', 75000, '2019-08-14'),
(110, 'Meera',    'IT',        'Pune',     120000, '2017-12-05'),
(111, 'Suresh',   'HR',        'Mumbai',    95000, '2016-05-19'),
(112, 'Pooja',    'Finance',   'Delhi',    110000, '2018-10-10'),
(113, 'Arjun',    'Sales',     'Bangalore', 98000, '2017-07-21'),
(114, 'Kavita',   'Marketing', 'Hyderabad', 70000, '2022-06-16'),
(115, 'Deepak',   'IT',        'Chennai',   80000, '2020-03-03'),
(116, 'Nisha',    'HR',        'Mumbai',    58000, '2023-01-27'),
(117, 'Ajay',     'Finance',   'Delhi',     83000, '2019-09-09'),
(118, 'Simran',   'Marketing', 'Hyderabad', 65000, '2021-12-11'),
(119, 'Manish',   'Sales',     'Bangalore', 62000, '2022-04-04'),
(120, 'Riya',     'IT',        'Pune',      78000, '2023-05-01');

SELECT * FROM Employee_Salary;

-- Partition By
SELECT emp_id,emp_name,department, SUM(Employee_Salary.salary) OVER (PARTITION BY Employee_Salary.department ) AS total_salary
FROM Employee_Salary;

-- Rows Between

SELECT emp_id,emp_name,
       AVG(emp_id) OVER (ORDER BY emp_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Average",
       SUM(emp_id) OVER (ORDER BY emp_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Total",
       COUNT(emp_id)OVER (ORDER BY emp_id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Count"
FROM Employee_Salary;