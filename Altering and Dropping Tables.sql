USE zomatodb;
USE ecom;

SELECT * FROM restaurants;

-- Alter table name rename
ALTER TABLE restaurants
RENAME COLUMN City to Customer_city;

-- Add a new column
ALTER TABLE restaurants
ADD COLUMN Pincode INT;

-- DROP column 
SELECT * FROM orders;
ALTER TABLE orders
DROP COLUMN city;

