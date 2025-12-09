-- 1️⃣ Total Revenue from Completed Orders
SELECT 
    SUM(oi.quantity * oi.unit_price) AS total_revenue
FROM order_items oi
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed';

-- 2️⃣ Revenue by Product Category
SELECT 
    p.category,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.category
ORDER BY revenue DESC;

-- 3️⃣ Top 5 Products by Revenue (using ranking)
SELECT 
    p.product_name,
    p.category,
    SUM(oi.quantity * oi.unit_price) AS revenue,
    RANK() OVER (ORDER BY SUM(oi.quantity * oi.unit_price) DESC) AS revenue_rank
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.product_name, p.category
ORDER BY revenue DESC
LIMIT 5;

-- 4️⃣ Revenue by Brand
SELECT 
    p.brand,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_status = 'Completed'
GROUP BY p.brand
ORDER BY revenue DESC;

-- 5️⃣ Top Spending Customers
SELECT 
    c.customer_name,
    SUM(oi.unit_price * oi.quantity) AS total_spent,
    COUNT(DISTINCT o.order_id) AS order_count,
    MAX(o.order_date) AS last_purchase_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed'
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 6️⃣ Hour-wise Demand Analysis
SELECT 
    HOUR(o.order_date) AS hour_of_day,
    COUNT(DISTINCT o.order_id) AS order_count,
    SUM(oi.quantity * oi.unit_price) AS revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
WHERE o.order_status = 'Completed'
GROUP BY hour_of_day
ORDER BY hour_of_day;
