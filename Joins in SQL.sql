CREATE DATABASE student_courses;
USE student_courses;

-- Student Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Amit', 'Computer'),
(2, 'Neha', 'IT'),
(3, 'Rahul', 'Mechanical'),
(4, 'Sneha', 'Computer');


-- Course Table
CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

INSERT INTO Course VALUES
(104, 4, "Excel");




SELECT * FROM Students;
SELECT * FROM Course;

-- Inner Join 

SELECT Students.name, Course.course_name
FROM Students
INNER JOIN Course
ON Students.student_id = Course.student_id;