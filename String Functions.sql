USE ecom;

SELECT * FROM orders;

-- String Functions
-- Length()
SELECT customer_name, LENGTH(customer_name) as Name_Length FROM orders;

-- Lower and Upper
SELECT customer_name, LOWER(customer_name) as Name_Lowercase FROM orders;

SELECT customer_name, UPPER(customer_name) as Name_Upper FROM orders;

-- CONCAT

SELECT CONCAT(customer_name, '"', rating, '"') as User_rating FROM orders;




