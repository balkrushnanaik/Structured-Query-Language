USE ecom;


-- To select all columns--
SELECT * FROM orders;

-- Filtering rows with WHERE --
-- Equal to
SELECT * FROM orders WHERE product = "Laptop";

-- Not Equal to
SELECT * FROM orders WHERE product != "Laptop";

-- Greater than / Less than
SELECT * FROM orders WHERE quantity > 1;
SELECT * FROM orders WHERE quantity < 4;

-- Greater than or equal / Less than or equal
SELECT * FROM orders WHERE quantity >= 2;
SELECT * FROM orders WHERE quantity <= 2;






