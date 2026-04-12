USE ecom;

SELECT * FROM orders;

-- Transactions in MySQL
 
SET autocommit = 0;

UPDATE orders 
SET customer_name = "Balkrushna Naik"
WHERE order_id = 1;

-- Used to undo changes
ROLLBACK;

-- Used to save permanantly
COMMIT;