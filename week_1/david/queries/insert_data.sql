INSERT INTO categories (name, description) VALUES
('Electronics', 'Electronic devices and gadgets'),
('Clothing', 'Apparel and fashion items'),
('Books', 'Physical and digital books'),
('Home & Garden', 'Home improvement and gardening supplies');

INSERT INTO customers (first_name, last_name, email, phone) VALUES
('John', 'Doe', 'john.doe@email.com', '555-0101'),
('Jane', 'Smith', 'jane.smith@email.com', '555-0102'),
('Bob', 'Johnson', 'bob.johnson@email.com', '555-0103'),
('Alice', 'Williams', 'alice.williams@email.com', '555-0104'),
('Charlie', 'Brown', 'charlie.brown@email.com', '555-0105');

INSERT INTO products (name, description, price, stock_quantity, category_id) VALUES
('Laptop Pro', 'High-performance laptop for professionals', 1299.99, 50, 1),
('Wireless Mouse', 'Ergonomic wireless mouse', 29.99, 200, 1),
('Blue Jeans', 'Classic blue denim jeans', 49.99, 100, 2),
('T-Shirt', 'Comfortable cotton t-shirt', 19.99, 150, 2),
('DevOps Handbook', 'Essential guide to DevOps practices', 39.99, 75, 3),
('Garden Hose', '50ft expandable garden hose', 34.99, 30, 4);

INSERT INTO orders (customer_id, total_amount, status) VALUES
(1, 1349.98, 'processing'),
(2, 69.98, 'shipped'),
(3, 39.99, 'delivered'),
(1, 29.99, 'pending');

INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1299.99),
(1, 2, 1, 29.99),
(2, 3, 1, 49.99),
(2, 4, 1, 19.99),
(3, 5, 1, 39.99),
(4, 2, 1, 29.99);
