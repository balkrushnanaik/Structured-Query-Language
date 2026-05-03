CREATE DATABASE operations;
USE operations;


CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department_id INT,
    manager_id INT,
    salary INT,
    city VARCHAR(50)
);

INSERT INTO Employees VALUES
(1, 'Amit', 101, NULL, 70000, 'Pune'),
(2, 'Neha', 102, 1, 65000, 'Mumbai'),
(3, 'Raj', 101, 1, 60000, 'Delhi'),
(4, 'Simran', 103, 2, 55000, 'Pune'),
(5, 'Karan', 104, 2, 50000, 'Bangalore'),
(6, 'Pooja', 102, 1, 62000, 'Mumbai'),
(7, 'Rohit', 105, 3, 48000, 'Chennai'),
(8, 'Sneha', 101, 3, 72000, 'Delhi'),
(9, 'Vikas', 106, NULL, 53000, 'Hyderabad'),
(10, 'Anjali', 103, 4, 58000, 'Pune'),
(11, 'Arjun', 107, 5, 47000, 'Bangalore'),
(12, 'Kavya', 104, 2, 51000, 'Mumbai'),
(13, 'Deepak', 108, 6, 46000, 'Delhi'),
(14, 'Meena', 105, 3, 49000, 'Chennai'),
(15, 'Suresh', 109, NULL, 55000, 'Hyderabad'),
(16, 'Nikita', 101, 1, 73000, 'Pune'),
(17, 'Rahul', 102, 1, 64000, 'Mumbai'),
(18, 'Priya', 103, 4, 57000, 'Delhi'),
(19, 'Manoj', 110, NULL, 52000, 'Nagpur'),
(20, 'Tina', 104, 2, 50000, 'Bangalore');

SELECT * FROM Employees;

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    location VARCHAR(50),
    head_id INT
);

INSERT INTO Departments VALUES
(101, 'IT', 'Pune', 1),
(102, 'HR', 'Mumbai', 2),
(103, 'Finance', 'Delhi', 4),
(104, 'Marketing', 'Bangalore', 5),
(105, 'Sales', 'Chennai', 7),
(106, 'Support', 'Hyderabad', 9),
(107, 'R&D', 'Bangalore', 11),
(108, 'Legal', 'Delhi', 13),
(109, 'Admin', 'Hyderabad', 15),
(110, 'Operations', 'Nagpur', 19),
(111, 'Security', 'Pune', NULL),
(112, 'Logistics', 'Mumbai', NULL);

SELECT * FROM Departments;


-- INNER JOIN 

SELECT *
FROM Employees as e
INNER JOIN Departments as d
ON e.department_id = d.department_id;

-- LEFT JOIN

SELECT * 
FROM Employees as e
LEFT JOIN Departments as d
ON e.department_id = d.department_id;
