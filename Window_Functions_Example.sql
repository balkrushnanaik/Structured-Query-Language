USE advanced_sql_topics;

CREATE TABLE Students (
    id INT,
    name VARCHAR(50),
    marks INT,
    department VARCHAR(30)
);

INSERT INTO Students (id, name, marks, department) VALUES
(101, 'Amit', 85, 'Computer'),
(102, 'Priya', 92, 'Mechanical'),
(103, 'Rahul', 78, 'Computer'),
(104, 'Sneha', 92, 'Civil'),
(105, 'Vikram', 67, 'Electrical'),
(106, 'Neha', 85, 'Computer'),
(107, 'Karan', 74, 'Mechanical'),
(108, 'Pooja', 88, 'Civil'),
(109, 'Rohan', 91, 'Computer'),
(110, 'Anjali', 88, 'Electrical'),
(111, 'Deepak', 76, 'Mechanical'),
(112, 'Meera', 95, 'Computer'),
(113, 'Sahil', 67, 'Civil'),
(114, 'Nisha', 82, 'Electrical'),
(115, 'Arjun', 91, 'Mechanical'),
(116, 'Kavita', 79, 'Computer'),
(117, 'Manoj', 74, 'Civil'),
(118, 'Ritu', 95, 'Electrical'),
(119, 'Aditya', 88, 'Computer'),
(120, 'Simran', 82, 'Mechanical'),
(101, 'Amit', 85, 'Computer'),
(103, 'Rahul', 78, 'Computer'),
(108, 'Pooja', 88, 'Civil'),
(115, 'Arjun', 91, 'Mechanical'),
(120, 'Simran', 82, 'Mechanical');

SELECT * FROM Students;

-- Partition BY
SELECT *, AVG(marks) OVER (PARTITION BY department) AS "Average_Marks"
FROM Students;

-- Rows Between
SELECT *, AVG(marks) OVER (ORDER BY id ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS "Average_Marks"
FROM Students;

-- Rank Functions

SELECT id,name,marks,
       ROW_NUMBER() over (ORDER BY id) AS "Row_Number",
       RANK() over (ORDER BY id) AS "Rank",
       DENSE_RANK() over (ORDER BY id) AS "Dense_Rank",
       PERCENT_RANK() over (ORDER BY id) AS "Percentage_Rank"
FROM Students;