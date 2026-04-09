SELECT * FROM orders;

DELETE FROM orders
WHERE delivery_date IS NULL;

DELETE FROM orders
WHERE price_per_unit < 100;

