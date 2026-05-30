USE queries_operations;

/* 
If you attempt to create a table that already exists, SQL will throw an error. To avoid this, you can use the IF NOT EXISTS clause.
*/
CREATE TABLE IF NOT EXISTS Students;


SELECT * FROM Students;

-- Create Table from Existing Table

CREATE TABLE subtable AS
SELECT first_name, last_name, age, state, marks
FROM Students;

SELECT * FROM subtable;