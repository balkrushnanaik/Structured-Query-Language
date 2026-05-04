CREATE DATABASE Students;
USE Students;


CREATE TABLE students_data (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    state VARCHAR(50),
    course VARCHAR(100),
    department VARCHAR(100),
    admission_year INT,
    semester INT,
    marks INT,
    attendance_percentage DECIMAL(5,2),
    email VARCHAR(100),
    phone VARCHAR(15),
    scholarship BOOLEAN
);

INSERT INTO students_data VALUES
(1,'Amit','Sharma','Male',20,'Pune','Maharashtra','B.Tech','Computer',2023,2,78,85.5,'amit@gmail.com','9876543210',TRUE),
(2,'Sneha','Patil','Female',21,'Mumbai','Maharashtra','BCA','IT',2022,4,82,88.0,'sneha@gmail.com','9876543211',FALSE),
(3,'Rahul','Verma','Male',19,'Delhi','Delhi','B.Tech','Mechanical',2023,2,65,75.0,'rahul@gmail.com','9876543212',TRUE),
(4,'Priya','Singh','Female',22,'Lucknow','UP','MBA','Finance',2021,4,90,92.5,'priya@gmail.com','9876543213',FALSE),
(5,'Karan','Mehta','Male',20,'Ahmedabad','Gujarat','B.Com','Commerce',2023,2,55,70.0,'karan@gmail.com','9876543214',FALSE),
(6,'Neha','Joshi','Female',21,'Nagpur','Maharashtra','B.Tech','Computer',2022,4,88,91.0,'neha@gmail.com','9876543215',TRUE),
(7,'Rohit','Kumar','Male',23,'Patna','Bihar','MCA','IT',2021,6,72,80.0,'rohit@gmail.com','9876543216',FALSE),
(8,'Anjali','Desai','Female',20,'Surat','Gujarat','BBA','Management',2023,2,68,78.5,'anjali@gmail.com','9876543217',TRUE),
(9,'Vikas','Yadav','Male',22,'Jaipur','Rajasthan','B.Tech','Civil',2021,6,74,82.0,'vikas@gmail.com','9876543218',FALSE),
(10,'Pooja','Kulkarni','Female',19,'Pune','Maharashtra','BCA','IT',2023,2,91,95.0,'pooja@gmail.com','9876543219',TRUE),
(11,'Arjun','Reddy','Male',21,'Hyderabad','Telangana','B.Tech','Computer',2022,4,85,89.0,'arjun@gmail.com','9876543220',FALSE),
(12,'Kavya','Iyer','Female',20,'Chennai','Tamil Nadu','B.Sc','Maths',2023,2,77,83.5,'kavya@gmail.com','9876543221',TRUE),
(13,'Manish','Gupta','Male',23,'Kanpur','UP','MBA','Marketing',2021,6,69,76.0,'manish@gmail.com','9876543222',FALSE),
(14,'Riya','Shah','Female',22,'Mumbai','Maharashtra','B.Com','Commerce',2021,6,93,96.0,'riya@gmail.com','9876543223',TRUE),
(15,'Sahil','Malhotra','Male',20,'Delhi','Delhi','BBA','Management',2023,2,60,72.5,'sahil@gmail.com','9876543224',FALSE),
(16,'Meera','Nair','Female',21,'Kochi','Kerala','B.Tech','Electrical',2022,4,81,87.0,'meera@gmail.com','9876543225',TRUE),
(17,'Deepak','Chauhan','Male',24,'Dehradun','Uttarakhand','MCA','IT',2021,6,67,79.0,'deepak@gmail.com','9876543226',FALSE),
(18,'Simran','Kaur','Female',22,'Amritsar','Punjab','MBA','HR',2021,6,89,93.0,'simran@gmail.com','9876543227',TRUE),
(19,'Yash','Jain','Male',19,'Indore','MP','B.Tech','Computer',2023,2,76,84.0,'yash@gmail.com','9876543228',FALSE),
(20,'Nisha','Agarwal','Female',20,'Kolkata','West Bengal','BCA','IT',2023,2,87,90.0,'nisha@gmail.com','9876543229',TRUE);

SELECT * FROM students_data;
SELECT * FROM students_data ORDER BY marks DESC;
SELECT COUNT(*) as Total_Students FROM students_data ;

-- Count number of students in each department
SELECT department, COUNT(*) as Total_Students
FROM students_data
GROUP BY department;

-- Count number of students in each course
SELECT course, COUNT(*) as Total_Students
FROM students_data
GROUP BY course;

-- Find average marks for each department

SELECT department, AVG(marks) as Average_Marks
FROM students_data
GROUP BY department
ORDER BY Average_Marks DESC;

-- Count students by state and city
SELECT state, city, COUNT(*) as Total_Studs
FROM students_data
GROUP BY state, city;


-- Show courses with more than 2 students
SELECT course, COUNT(*) as Total_Students
FROM students_data
GROUP BY course
HAVING Total_Students >= 2;