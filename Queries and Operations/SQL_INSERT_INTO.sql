USE queries_operations;

CREATE TABLE students_b (
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

-- =========================================
-- INSERT NEW DATA (ROLL NUMBER START FROM 21)
-- =========================================

INSERT INTO students_b VALUES
(41,'Harsh','Pawar','Male',20,'Pune','Maharashtra','Computer Engineering',3,79.5,84.2,'harsh@gmail.com','9876543230',2023,'Placed','Infosys','Python,SQL','No'),

(42,'Sakshi','More','Female',21,'Nashik','Maharashtra','AI & DS',4,93.6,96.4,'sakshi@gmail.com','9876543231',2022,'Placed','Google','AI,ML,Python','Yes'),

(43,'Yash','Patel','Male',22,'Surat','Gujarat','IT',5,68.9,74.0,'yash@gmail.com','9876543232',2021,'Not Placed','None','Java,HTML','No'),

(44,'Tanvi','Joshi','Female',20,'Mumbai','Maharashtra','Data Science',3,88.2,91.5,'tanvi@gmail.com','9876543233',2023,'Placed','Accenture','Power BI,SQL,Excel','Yes'),

(45,'Om','Shinde','Male',23,'Kolhapur','Maharashtra','Mechanical',6,59.8,66.1,'om@gmail.com','9876543234',2020,'Not Placed','None','AutoCAD,SolidWorks','No'),

(46,'Aarohi','Kulkarni','Female',21,'Pune','Maharashtra','Computer Engineering',4,97.8,98.6,'aarohi@gmail.com','9876543235',2022,'Placed','Microsoft','Python,Cloud,AI','Yes'),

(47,'Nikhil','Jadhav','Male',22,'Aurangabad','Maharashtra','Civil',5,72.3,78.4,'nikhil@gmail.com','9876543236',2021,'Not Placed','L&T','Surveying,AutoCAD','No'),

(48,'Isha','Sharma','Female',20,'Delhi','Delhi','IT',3,85.7,89.9,'isha@gmail.com','9876543237',2023,'Placed','TCS','Java,React,SQL','Yes'),

(49,'Pratik','Naik','Male',24,'Goa','Goa','Electrical',7,61.5,69.2,'pratik@gmail.com','9876543238',2019,'Not Placed','None','MATLAB,C','No'),

(50,'Ananya','Rane','Female',21,'Pune','Maharashtra','AI & DS',4,94.1,97.3,'ananya@gmail.com','9876543239',2022,'Placed','IBM','Deep Learning,Python','Yes'),

(51,'Tejas','Deshmukh','Male',22,'Satara','Maharashtra','Computer Engineering',5,81.4,86.7,'tejas@gmail.com','9876543240',2021,'Placed','Capgemini','Java,SQL,DSA','No'),

(52,'Mitali','Patwardhan','Female',20,'Nagpur','Maharashtra','Data Science',3,90.8,94.5,'mitali@gmail.com','9876543241',2023,'Placed','Deloitte','Power BI,Tableau','Yes'),

(53,'Rohan','Kuldeep','Male',23,'Indore','MP','Mechanical',6,54.6,62.3,'rohan@gmail.com','9876543242',2020,'Not Placed','None','Machine Design','No'),

(54,'Pallavi','Chavan','Female',21,'Solapur','Maharashtra','Computer Engineering',4,87.9,90.8,'pallavi@gmail.com','9876543243',2022,'Placed','Amazon','AWS,Python','Yes'),

(55,'Akash','Thakur','Male',22,'Bhopal','MP','IT',5,75.2,80.0,'akash@gmail.com','9876543244',2021,'Not Placed','Infosys','JavaScript,SQL','No'),

(56,'Snehal','Patil','Female',20,'Sangli','Maharashtra','AI & DS',3,98.3,99.0,'snehal@gmail.com','9876543245',2023,'Placed','OpenAI','AI,Python,NLP','Yes'),

(57,'Abhishek','Yadav','Male',21,'Lucknow','UP','Electrical',4,66.7,73.8,'abhishek@gmail.com','9876543246',2022,'Not Placed','None','Circuit Design','No'),

(58,'Krutika','Mane','Female',22,'Pune','Maharashtra','Computer Engineering',5,84.9,88.4,'krutika@gmail.com','9876543247',2021,'Placed','Wipro','Python,DBMS','Yes'),

(59,'Saurabh','Gupta','Male',23,'Kanpur','UP','Civil',6,57.3,65.7,'saurabh@gmail.com','9876543248',2020,'Not Placed','None','Construction Planning','No'),

(60,'Rutuja','Kale','Female',21,'Pune','Maharashtra','Data Science',4,92.5,95.6,'rutuja@gmail.com','9876543249',2022,'Placed','Infosys','Excel,SQL,Power BI','Yes');

DROP TABLE Students_b;

SELECT * FROM Students_b;
--
-- Inserting Data from One Table into Another Table
INSERT INTO Students
SELECT * FROM Students_b;

SELECT * FROM Students;