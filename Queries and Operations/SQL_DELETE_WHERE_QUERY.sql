USE queries_operations;
SET SQL_SAFE_UPDATES = 0;

-- SQL DELETE Statement

DELETE FROM Students
WHERE Student_id = 5; 

SELECT * FROM Students;

-- Example 2: Deleting Multiple Records

DELETE FROM Students 
WHERE semester = 3;

SELECT * FROM Students;

-- Rolling Back DELETE Operations
START TRANSACTION;
DELETE FROM Students
WHERE semester = 4;
ROLLBACK;

-- Example 3: Where Clause with BETWEEN Operator
SELECT * FROM Students 
WHERE age BETWEEN 22 AND 24;

-- Example 4: Where Clause with IN Operator
SELECT * FROM Students 
WHERE age IN (21,22);





