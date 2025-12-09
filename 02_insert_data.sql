-- Insert sample customers
INSERT INTO customers (customer_name, city, state, join_date) VALUES
('Rahul Sharma', 'Mumbai', 'Maharashtra', '2022-01-10'),
('Priya Verma', 'Delhi', 'Delhi', '2022-03-15'),
('Amit Singh', 'Lucknow', 'Uttar Pradesh', '2022-02-20'),
('Sneha Reddy', 'Hyderabad', 'Telangana', '2021-12-28'),
('Kunal Mehta', 'Ahmedabad', 'Gujarat', '2022-04-05'),
('Vikas Gupta', 'Pune', 'Maharashtra', '2022-03-22'),
('Neha Jain', 'Jaipur', 'Rajasthan', '2022-04-02'),
('Rohit Yadav', 'Bhopal', 'Madhya Pradesh', '2022-01-25'),
('Tanvi Desai', 'Surat', 'Gujarat', '2022-03-30'),
('Amit Kumar', 'Patna', 'Bihar', '2022-04-07');

-- Insert sample products
INSERT INTO products (product_name, category, brand, unit_price, cost_price) VALUES
('iPhone 14', 'Smartphone', 'Apple', 75000, 60000),
('Galaxy S23', 'Smartphone', 'Samsung', 65000, 50000),
('Redmi Note 12', 'Smartphone', 'Xiaomi', 20000, 15000),
('Sony WH-1000XM4', 'Audio', 'Sony', 25000, 18000),
('Boat Airdopes 441', 'Audio', 'Boat', 2500, 1500),
('MacBook Air M2', 'Laptop', 'Apple', 115000, 95000),
('Dell Inspiron 15', 'Laptop', 'Dell', 65000, 50000),
('Samsung 55\" 4K TV', 'Television', 'Samsung', 70000, 55000),
('Sony Bravia 43\" TV', 'Television', 'Sony', 54000, 45000),
('Sandisk 128GB SSD', 'Storage', 'Sandisk', 3500, 2500),
('Logitech M185 Mouse', 'Accessory', 'Logitech', 1200, 700);

-- Insert orders
INSERT INTO orders (customer_id, order_date, payment_method, order_status) VALUES
(1, '2023-04-01 10:45:00', 'UPI', 'Completed'),
(2, '2023-04-01 12:30:00', 'Credit Card', 'Completed'),
(3, '2023-04-02 18:10:00', 'UPI', 'Cancelled'),
(4, '2023-04-03 16:00:00', 'Debit Card', 'Completed'),
(5, '2023-04-04 14:40:00', 'Net Banking', 'Completed'),
(6, '2023-04-03 19:20:00', 'Credit Card', 'Completed'),
(7, '2023-04-05 17:10:00', 'UPI', 'Completed'),
(8, '2023-04-07 21:15:00', 'UPI', 'Completed'),
(9, '2023-04-06 13:25:00', 'Credit Card', 'Completed'),
(1, '2023-04-06 19:50:00', 'UPI', 'Completed'),
(3, '2023-04-07 11:10:00', 'UPI', 'Completed');

-- Insert order items
INSERT INTO order_items (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 2, 75000),
(2, 2, 1, 65000),
(3, 3, 1, 20000),
(4, 6, 1, 115000),
(5, 8, 1, 70000),
(6, 2, 1, 65000),
(7, 6, 1, 115000),
(8, 10, 2, 3500),
(9, 3, 1, 20000),
(10, 2, 1, 65000),
(11, 4, 1, 25000);
