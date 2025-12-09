# Retail-Sales-Analytics-MySQL
SQL-based retail sales analytics project identifying top revenue drivers, customer behavior, and demand patterns using MySQL.
# Retail Sales Analytics using MySQL (Electronics Store)

## 1. Objective

Analyze retail electronics sales data using SQL to:
- Find total revenue from completed orders
- Identify top categories, products, and brands by revenue
- Study high-value customers and repeat purchase behavior
- Understand peak sales hours during the day

## 2. Tools & Skills Used

- MySQL, MySQL Workbench
- SQL: JOIN, GROUP BY, ORDER BY, SUM, COUNT, AVG
- Window functions: RANK()

## 3. Database Design

The database `retail_sales` has four tables:
- `customers` – customer details (name, city, state, join_date)
- `products` – product details (name, category, brand, prices)
- `orders` – each customer order (date, payment, status)
- `order_items` – products inside each order (quantity, price)

## 4. Key Business Questions

1. What is the total revenue from completed orders?
2. Which categories and brands drive the most revenue?
3. Which products are the top revenue drivers?
4. Who are the top spending customers?
5. At what time of day are sales highest?

## 5. Summary of Insights

- Total revenue from completed orders: ₹573,400
- Smartphones and Laptops contribute most of the revenue (~73%)
- Apple is the top brand by revenue (driven by iPhone and MacBook)
- A small set of high-value customers contribute a large share of sales
- Peak sales occur in the evening hours (around 4–9 PM)

## 6. How to Run

1. Create the database in MySQL:
   ```sql
   CREATE DATABASE retail_sales;
   USE retail_sales;
