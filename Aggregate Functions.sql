USE ecom;

SELECT * FROM orders;

-- SQL functions help you analyze, transform or summarize data in your tables
-- Aggregate Functions

-- Count 
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) as Total_Electronics FROM orders WHERE category = 'Electronics';

-- Min and Max
SELECT MIN(price_per_unit) as Minimum_discount FROM orders;
SELECT MAX(price_per_unit) as Minimum_discount FROM orders;

-- SUM

SELECT SUM(quantity) as Total_Quantity FROM orders;

-- Average

SELECT AVG(rating) as Average_Rating FROM orders;

