USE queries_operations;

SELECT * FROM Students;

-- Example 1: Update Single Column

UPDATE Students
SET course = 'Information Technology'
WHERE student_id = 2;

-- Example 2: Updating Multiple Columns
UPDATE Students
SET marks = 98, attendance = 100, placement_status = 'Placed', internship_company = 'TATA'
WHERE student_id = 5;

SELECT * FROM Students;