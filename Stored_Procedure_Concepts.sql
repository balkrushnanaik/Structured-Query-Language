USE advanced_sql_topics;

SELECT * FROM employees;
SELECT * FROM students;

-- Stored Procedure: A Stored Procedure is a precompiled collection of one or more SQL statements that is stored in the database and can be executed whenever needed by calling its name.

DELIMITER //

CREATE PROCEDURE get_employee_by_city (city_name VARCHAR(50))
BEGIN
SELECT *
FROM employees
WHERE city = city_name;

END //


DELIMITER ;

