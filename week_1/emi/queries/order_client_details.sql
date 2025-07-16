SELECT o.id AS order_id,
    	CONCAT(c.first_name,' ',c.last_name) AS customer_name,
    	c.email,
    	o.order_date,
    	o.status,
    	p.name as product_name,
    	oi.quantity,
    	oi.unit_price,
    	(oi.quantity * oi.unit_price) AS total_price
    	FROM orders o
    	JOIN customers c ON o.customer_id=c.id
    	JOIN order_items oi ON o.id=oi.order_id
    	JOIN products p ON oi.product_id=p.id
	ORDEY BY o.id;
