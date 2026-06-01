-- Student Management System
CREATE DATABASE CollegeDB;

USE CollegeDB;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Branch VARCHAR(30),
    CGPA DECIMAL(3,2)
);

INSERT INTO Student VALUES
(101, 'Rahul', 20, 'Computer', 8.5),
(102, 'Priya', 19, 'IT', 9.1),
(103, 'Amit', 21, 'ENTC', 7.8),
(104, 'Sneha', 20, 'Computer', 8.9);

SELECT * FROM Student;

SELECT * FROM Student
WHERE CGPA > 8.0;

UPDATE Student
SET CGPA = 9.3
WHERE StudentID = 103;

DELETE FROM Student
WHERE StudentID = 104;

SELECT * FROM Student;
