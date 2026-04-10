USE ecom;

SELECT * FROM orders;

-- AND/OR --
SELECT customer_name, city, quantity, rating FROM orders WHERE quantity < 20 AND rating < 5;
SELECT customer_name, city, quantity, rating FROM orders WHERE quantity < 20 OR rating < 5;

-- ORDER BY --

SELECT customer_name, city, quantity, rating FROM orders ORDER BY quantity  AND rating ASC;

-- Limit --

SELECT * FROM orders LIMIT 10;


