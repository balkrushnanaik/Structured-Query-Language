-- * Self Join *
 USE employees;
CREATE TABLE Employee (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Manager_ID INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 'HR', 50000, NULL),
(2, 'Rahul', 'IT', 60000, 1),
(3, 'Sneha', 'Finance', 55000, 1),
(4, 'Priya', 'IT', 65000, 2),
(5, 'Karan', 'Marketing', 48000, 2),
(6, 'Neha', 'Finance', 70000, 3);

SELECT * FROM Employee;

SELECT T1.Emp_Name as Employee_Name, T2.Emp_Name as Manager_Name
FROM Employee as T1
JOIN Employee as T2
on T1.Emp_ID = T2.Manager_ID;
 
