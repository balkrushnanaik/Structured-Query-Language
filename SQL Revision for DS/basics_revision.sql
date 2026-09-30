USE sql_basics_revision;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department VARCHAR(30),
    city VARCHAR(30),
    salary INT,
    age INT,
    experience INT,
    joining_date DATE,
    performance_rating DECIMAL(3,1),
    manager_id INT
);

INSERT INTO employees
(employee_id, employee_name, department, city, salary, age, experience, joining_date, performance_rating, manager_id)
VALUES
(101, 'Amit Sharma', 'IT', 'Pune', 55000, 24, 2, '2023-06-15', 4.2, 201),
(102, 'Priya Patil', 'HR', 'Mumbai', 48000, 26, 3, '2022-04-10', 4.5, 202),
(103, 'Rahul Singh', 'IT', 'Pune', 72000, 29, 5, '2020-08-21', 4.7, 201),
(104, 'Sneha Joshi', 'Finance', 'Nashik', 60000, 27, 4, '2021-02-18', 4.1, 203),
(105, 'Rohit More', 'Sales', 'Mumbai', 42000, 23, 1, '2024-01-12', 3.8, 204),
(106, 'Neha Kulkarni', 'IT', 'Nagpur', 68000, 28, 4, '2021-11-05', 4.6, 201),
(107, 'Vikas Jadhav', 'HR', 'Pune', 52000, 31, 6, '2019-07-25', 4.0, 202),
(108, 'Pooja Deshmukh', 'Finance', 'Mumbai', 75000, 30, 7, '2018-03-14', 4.8, 203),
(109, 'Sagar Pawar', 'Sales', 'Pune', 45000, 25, 2, '2023-09-20', 3.9, 204),
(110, 'Kiran Shinde', 'IT', 'Nashik', 58000, 26, 3, '2022-12-01', 4.3, 201),
(111, 'Akash Kale', 'Sales', 'Nagpur', 39000, 22, 1, '2024-05-16', 3.5, 204),
(112, 'Riya Gaikwad', 'Finance', 'Pune', 65000, 29, 5, '2020-10-30', 4.4, 203),
(113, 'Manish Pawar', 'IT', 'Mumbai', 82000, 32, 8, '2017-06-11', 4.9, 201),
(114, 'Anjali Mane', 'HR', 'Nashik', 47000, 24, 2, '2023-03-19', 3.7, 202),
(115, 'Deepak Chavan', 'Sales', 'Mumbai', 50000, 27, 4, '2021-09-08', 4.2, 204);

SELECT * FROM employees;