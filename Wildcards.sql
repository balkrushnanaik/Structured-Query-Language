-- SQL Wildcard Characters

-- A wildcard character is used to substitute one or more characters in a string.
-- Wildcard characters are used with the LIKE operator. The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

USE employees;

-- The % wildcard represents any number of characters, even zero characters.
SELECT * FROM employees_data;

-- Return all customers that starts with the letter 'p':
SELECT * FROM employees_data
WHERE emp_name LIKE 'p%';

-- Return all customers that ends with the pattern 'ya':
SELECT * FROM employees_data
WHERE emp_name LIKE '%ya';

-- Return all customers that contains the pattern 'y':
SELECT * FROM employees_data
WHERE emp_name LIKE '%y%';

-- Using the _ Wildcard
--  - he _ wildcard represents a single character.
--  - It can be any character or number, but each _ represents one, and only one, character.

-- Return all customers with a City starting with any character, followed by "elhi":
SELECT * FROM employees_data
WHERE city LIKE '_elhi';

-- Return all customers with a City starting with "D", followed by any 3 characters, ending with "hi":
SELECT * FROM employees_data
WHERE city LIKE 'D__hi';

-- Using the [] Wildcard
-- The [] wildcard returns a result if any of the characters inside gets a match.

-- Return all customers starting with either "b", "s", or "p":
SELECT * FROM employees_data
WHERE emp_name LIKE '[KNR]%';



