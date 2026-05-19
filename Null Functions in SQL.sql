USE operations;

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    bonus DECIMAL(10,2),
    manager_name VARCHAR(50)
);

INSERT INTO Employee VALUES
(1, 'Amit', 'HR', 45000, 5000, 'Rohit'),
(2, 'Neha', 'IT', 60000, NULL, 'Suresh'),
(3, 'Raj', 'Sales', NULL, 3000, NULL),
(4, 'Pooja', 'Finance', 55000, NULL, 'Anita'),
(5, 'Karan', NULL, 40000, 2000, 'Ramesh');

-- 1 IF NULL
SELECT emp_name, IFNULL(bonus, 0) AS bonus_amount
FROM Employee;