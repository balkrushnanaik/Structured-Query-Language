USE students;

-- Create First Table
CREATE TABLE Students_2024 (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Course VARCHAR(50)
);

-- Insert Data into First Table
INSERT INTO Students_2024 VALUES
(1, 'Amit', 'Computer'),
(2, 'Sneha', 'Mechanical'),
(3, 'Rahul', 'Civil');


-- Create Second Table
CREATE TABLE Students_2025 (
    Student_ID INT,
    Student_Name VARCHAR(50),
    Course VARCHAR(50)
);

-- Insert Data into Second Table
INSERT INTO Students_2025 VALUES
(4, 'Priya', 'Computer'),
(5, 'Karan', 'Electrical'),
(6, 'Neha', 'IT');

SELECT * FROM Students_2024
UNION
SELECT * FROM Students_2025;

SELECT * FROM Students_2024
UNION ALL
SELECT * FROM Students_2025;