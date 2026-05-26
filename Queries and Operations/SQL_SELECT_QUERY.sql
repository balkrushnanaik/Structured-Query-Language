CREATE DATABASE queries_operations;
USE queries_operations;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    city VARCHAR(50),
    state VARCHAR(50),
    course VARCHAR(50),
    semester INT,
    marks DECIMAL(5,2),
    attendance DECIMAL(5,2),
    email VARCHAR(100),
    phone VARCHAR(15),
    admission_year INT,
    placement_status VARCHAR(20),
    internship_company VARCHAR(100),
    skills VARCHAR(200),
    scholarship VARCHAR(20)
);



INSERT INTO students VALUES
(1,'Amit','Sharma','Male',20,'Pune','Maharashtra','Computer Engineering',3,88.5,91.2,'amit@gmail.com','9876543210',2023,'Placed','TCS','Python,SQL,Power BI','Yes'),

(2,'Sneha','Patil','Female',21,'Mumbai','Maharashtra','IT',4,76.4,85.5,'sneha@gmail.com','9876543211',2022,'Not Placed','Infosys','Java,SQL','No'),

(3,'Rahul','Verma','Male',22,'Delhi','Delhi','Mechanical',5,67.2,70.0,'rahul@gmail.com','9876543212',2021,'Placed','Wipro','AutoCAD,C','No'),

(4,'Priya','Kulkarni','Female',20,'Nagpur','Maharashtra','Computer Engineering',3,92.8,96.0,'priya@gmail.com','9876543213',2023,'Placed','Google','Python,AI,ML','Yes'),

(5,'Karan','Mehta','Male',23,'Ahmedabad','Gujarat','Civil',6,58.5,68.5,'karan@gmail.com','9876543214',2020,'Not Placed','None','AutoCAD','No'),

(6,'Neha','Joshi','Female',21,'Pune','Maharashtra','Data Science',4,81.3,88.9,'neha@gmail.com','9876543215',2022,'Placed','Accenture','Python,Tableau','Yes'),

(7,'Rohit','Singh','Male',22,'Lucknow','UP','Electrical',5,73.4,79.8,'rohit@gmail.com','9876543216',2021,'Not Placed','None','MATLAB,C++','No'),

(8,'Anjali','Desai','Female',20,'Surat','Gujarat','Computer Engineering',3,95.1,97.5,'anjali@gmail.com','9876543217',2023,'Placed','Microsoft','Python,SQL,Azure','Yes'),

(9,'Vikas','Yadav','Male',24,'Jaipur','Rajasthan','Mechanical',7,49.8,60.0,'vikas@gmail.com','9876543218',2019,'Not Placed','None','SolidWorks','No'),

(10,'Pooja','Nair','Female',21,'Kochi','Kerala','IT',4,84.6,90.1,'pooja@gmail.com','9876543219',2022,'Placed','Capgemini','Java,React','Yes'),

(11,'Arjun','Reddy','Male',22,'Hyderabad','Telangana','Computer Engineering',5,78.9,82.5,'arjun@gmail.com','9876543220',2021,'Placed','Amazon','Python,DSA','No'),

(12,'Kavya','Iyer','Female',20,'Chennai','Tamil Nadu','AI & DS',3,91.7,95.2,'kavya@gmail.com','9876543221',2023,'Placed','IBM','ML,Python,SQL','Yes'),

(13,'Sahil','Khan','Male',21,'Bhopal','MP','Civil',4,64.5,72.4,'sahil@gmail.com','9876543222',2022,'Not Placed','None','Surveying','No'),

(14,'Meera','Shah','Female',23,'Vadodara','Gujarat','Data Science',6,86.8,89.0,'meera@gmail.com','9876543223',2020,'Placed','Deloitte','Power BI,SQL','Yes'),

(15,'Aditya','Mishra','Male',22,'Patna','Bihar','Computer Engineering',5,74.0,80.0,'aditya@gmail.com','9876543224',2021,'Not Placed','Infosys','Java,DBMS','No'),

(16,'Riya','Gupta','Female',20,'Pune','Maharashtra','AI & DS',3,97.4,99.1,'riya@gmail.com','9876543225',2023,'Placed','OpenAI','AI,Python,Deep Learning','Yes'),

(17,'Manoj','Kumar','Male',24,'Kanpur','UP','Mechanical',7,55.2,63.5,'manoj@gmail.com','9876543226',2019,'Not Placed','None','Machine Design','No'),

(18,'Simran','Kaur','Female',21,'Amritsar','Punjab','IT',4,82.0,87.3,'simran@gmail.com','9876543227',2022,'Placed','Cognizant','HTML,CSS,SQL','Yes'),

(19,'Deepak','Jain','Male',23,'Indore','MP','Electrical',6,69.7,75.4,'deepak@gmail.com','9876543228',2020,'Not Placed','None','MATLAB','No'),

(20,'Nikita','Roy','Female',22,'Kolkata','West Bengal','Computer Engineering',5,89.5,92.8,'nikita@gmail.com','9876543229',2021,'Placed','Meta','Python,Cloud','Yes');


SELECT * FROM Students;

SELECT first_name, last_name, age, city FROM Students;

SELECT first_name, last_name, age FROM Students WHERE age > 21;

SELECT course, COUNT(*) AS Student_Counts
FROM Students
GROUP BY course;

SELECT DISTINCT course
FROM Students;

SELECT course, COUNT(*) AS Student_Counts
FROM Students
GROUP BY course
HAVING Student_Counts > 4;

SELECT * FROM Students ORDER BY age DESC;