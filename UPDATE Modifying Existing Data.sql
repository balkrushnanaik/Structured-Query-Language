SET SQL_SAFE_UPDATES = 0;
SELECT * FROM orders;

-- Update one column --
UPDATE orders
SET rating= 5,
    delivery_date = '2025-02-17'
WHERE order_id = 5;

UPDATE orders
SET order_id = 13
WHERE order_id IS NULL;

UPDATE orders 
SET order_status = 'Delivered'
WHERE order_status = 'Pending';


SELECT * FROM orders;

