SELECT p.*
FROM products p
JOIN categories c ON p.category_id = c.id
WHERE c.name = 'Books';
