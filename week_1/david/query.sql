-- 1
SELECT p.*
FROM products p
JOIN categories c ON p.category_id = c.id
WHERE c.name = 'Books';

-- 2
SELECT *
FROM customers c
LEFT JOIN orders o ON c.id = o.customer_id
WHERE o.id IS NULL;

--3
SELECT 
    o.id AS order_id,
    CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
    c.email,
    o.order_date,
    o.total_amount,
    o.status
FROM orders o
JOIN customers c ON o.customer_id = c.id;

