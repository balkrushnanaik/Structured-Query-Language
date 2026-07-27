CREATE DATABASE basic_sql_revision;
USE basic_sql_revision;

CREATE TABLE IF NOT EXISTS Students (
    Id INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade CHAR
);

DESCRIBE Students;

INSERT INTO Students (Id, FirstName, LastName, Age, Grade) VALUES
(1, 'Aarav', 'Sharma', 18, 'A'),
(2, 'Diya', 'Patel', 19, 'B'),
(3, 'Rohan', 'Verma', 20, 'A'),
(4, 'Sneha', 'Kulkarni', 18, 'C'),
(5, 'Arjun', 'Mehta', 21, 'B'),
(6, 'Priya', 'Joshi', 19, 'A'),
(7, 'Karan', 'Singh', 22, 'D'),
(8, 'Ananya', 'Reddy', 20, 'B'),
(9, 'Rahul', 'Naik', 18, 'C'),
(10, 'Pooja', 'Gupta', 21, 'A'),
(11, 'Vikram', 'Deshmukh', 19, 'B'),
(12, 'Neha', 'Chavan', 20, 'A'),
(13, 'Sahil', 'Pawar', 22, 'C'),
(14, 'Meera', 'Yadav', 18, 'B'),
(15, 'Aditya', 'Mishra', 19, 'A'),
(16, 'Kavya', 'Nair', 20, 'D'),
(17, 'Nikhil', 'Jadhav', 21, 'B'),
(18, 'Isha', 'Shinde', 18, 'A'),
(19, 'Manav', 'Bhosale', 22, 'C'),
(20, 'Riya', 'Kale', 19, 'B');

SELECT * FROM Students;

-- Create Table from Existing Table

CREATE TABLE Names AS
SELECT Students.FirstName, Students.LastName
FROM Students;

SELECT * FROM Names;


