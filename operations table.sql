CREATE DATABASE operations;
USE operations;


CREATE TABLE stud (
 id INT PRIMARY KEY,
 name VARCHAR(20) NOT NULL,
 age INT,
 course VARCHAR(40) NOT NULL
);

INSERT INTO stud(id, name, age, course) VALUES 
(21, "Soumya", 23,"DATA SCIENCE"),
(22, "Sahil", 26, "FULL STACK DEVELOPMENT"),
(23, "Ganesh", 45, "Production"),
(24, "Radhika", 25, "UI/UX"),
(25, "Manisha", 23, "STATISTICS");



SELECT * FROM stud;