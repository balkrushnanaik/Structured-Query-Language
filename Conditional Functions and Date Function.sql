CREATE DATABASE big_user_database;

USE big_user_database;

CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    
    -- Basic Info
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    
    -- Personal Info
    gender VARCHAR(10),
    date_of_birth DATE,
    phone VARCHAR(15),
    alternate_phone VARCHAR(15),
    
    -- Address Info
    address_line1 VARCHAR(150),
    address_line2 VARCHAR(150),
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50),
    postal_code VARCHAR(10),
    
    -- Professional Info
    occupation VARCHAR(100),
    company_name VARCHAR(100),
    salary DECIMAL(10,2),
    experience_years INT,
    
    -- Education Info
    highest_qualification VARCHAR(100),
    university VARCHAR(100),
    graduation_year YEAR,
    
    -- Account Info
    user_role VARCHAR(20) DEFAULT 'user',
    account_status VARCHAR(20) DEFAULT 'active',
    email_verified BOOLEAN DEFAULT FALSE,
    phone_verified BOOLEAN DEFAULT FALSE,
    
    -- Social Links
    website VARCHAR(150),
    linkedin_profile VARCHAR(150),
    github_profile VARCHAR(150),
    
    -- Security
    security_question VARCHAR(255),
    security_answer VARCHAR(255),
    last_login DATETIME,
    
    -- System Fields
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    
    -- Extra Fields
    profile_picture VARCHAR(255),
    bio TEXT,
    interests TEXT,
    skills TEXT
);

INSERT INTO users (
first_name, last_name, username, email, password,
gender, date_of_birth, phone, alternate_phone,
address_line1, address_line2, city, state, country, postal_code,
occupation, company_name, salary, experience_years,
highest_qualification, university, graduation_year,
user_role, account_status, email_verified, phone_verified,
website, linkedin_profile, github_profile,
security_question, security_answer, last_login,
profile_picture, bio, interests, skills
)

VALUES

('Rahul','Sharma','rahul123','rahul123@gmail.com','pass123',
'Male','2000-05-12','9876543210','9123456780',
'MG Road','Near Bus Stand','Pune','Maharashtra','India','411001',
'Software Engineer','TCS',500000,2,
'B.Tech','SPPU',2022,
'user','active',TRUE,TRUE,
'rahul.com','linkedin.com/rahul','github.com/rahul',
'Pet name?','Tom','2026-04-10 10:00:00',
'rahul.jpg','Tech lover','Coding, Cricket','Java, Python'),

('Sneha','Patil','sneha21','sneha21@gmail.com','pass123',
'Female','1999-08-20','9876500000','9988776655',
'FC Road','Shivajinagar','Pune','Maharashtra','India','411004',
'Data Analyst','Infosys',600000,3,
'MCA','SPPU',2021,
'user','active',TRUE,FALSE,
'sneha.com','linkedin.com/sneha','github.com/sneha',
'Birth city?','Pune','2026-04-11 09:30:00',
'sneha.jpg','Data enthusiast','Travel, Reading','SQL, Excel'),

('Amit','Kumar','amitk','amit@gmail.com','pass123',
'Male','1998-01-15','9000000000','9111111111',
'Baner','Near Mall','Pune','Maharashtra','India','411045',
'Tester','Wipro',450000,2,
'B.Sc IT','Mumbai University',2020,
'user','active',TRUE,TRUE,
'amit.com','linkedin.com/amit','github.com/amit',
'Favorite color?','Blue','2026-04-09 08:00:00',
'amit.jpg','Testing expert','Gaming, Bike riding','Manual Testing'),

('Priya','Desai','priya_d','priya@gmail.com','pass123',
'Female','2001-03-18','9012345678','9090909090',
'Kothrud','DP Road','Pune','Maharashtra','India','411038',
'UI Designer','TechMahindra',550000,1,
'BCA','SPPU',2023,
'user','active',FALSE,TRUE,
'priya.com','linkedin.com/priya','github.com/priya',
'School name?','ABC','2026-04-08 07:45:00',
'priya.jpg','Creative mind','Design, Drawing','Figma, UI/UX'),

('Vikram','Singh','vikram99','vikram@gmail.com','pass123',
'Male','1997-11-11','9222222222','9333333333',
'Hinjewadi','Phase 1','Pune','Maharashtra','India','411057',
'DevOps Engineer','Capgemini',700000,4,
'B.Tech','SPPU',2019,
'admin','active',TRUE,TRUE,
'vikram.com','linkedin.com/vikram','github.com/vikram',
'Best friend?','Raj','2026-04-12 11:00:00',
'vikram.jpg','Cloud expert','Gym, Coding','AWS, Docker'),

('Neha','Joshi','nehaj','neha@gmail.com','pass123',
'Female','2002-07-09','9444444444','9555555555',
'Wakad','Near School','Pune','Maharashtra','India','411033',
'Student','SPPU',0,0,
'B.E','SPPU',2025,
'user','active',FALSE,FALSE,
'neha.com','linkedin.com/neha','github.com/neha',
'Mother name?','Sunita','2026-04-07 06:00:00',
'neha.jpg','Learner','Music, Study','Python'),

('Rohan','Kulkarni','rohank','rohan@gmail.com','pass123',
'Male','1996-02-02','9666666666','9777777777',
'Aundh','ITI Road','Pune','Maharashtra','India','411007',
'Manager','Accenture',900000,6,
'MBA','Pune University',2018,
'admin','active',TRUE,TRUE,
'rohan.com','linkedin.com/rohan','github.com/rohan',
'Favorite food?','Pizza','2026-04-13 12:00:00',
'rohan.jpg','Leader','Travel, Sports','Management'),

('Pooja','Shinde','pooja_s','pooja@gmail.com','pass123',
'Female','2000-10-10','9888888888','9999999999',
'Karve Nagar','Near Temple','Pune','Maharashtra','India','411052',
'HR','Infosys',400000,2,
'BBA','SPPU',2021,
'user','inactive',TRUE,FALSE,
'pooja.com','linkedin.com/pooja','github.com/pooja',
'Dream job?','HR','2026-04-06 05:00:00',
'pooja.jpg','People person','Reading, Dance','Communication');

SELECT * FROM users;

-- Conditional Functions

SELECT first_name, gender, 
IF(gender = 'Female', 'Yes', 'No' ) AS is_female
FROM users;

-- Date Function
SELECT NOW();

