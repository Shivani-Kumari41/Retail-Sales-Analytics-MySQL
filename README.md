# Retail Sales Analytics using MySQL

📌 **Objective**  
Analyze retail electronics sales data using SQL to identify revenue drivers, top customers, and peak sales time to support business decisions.

---

### 📂 Tools & Skills Used
- MySQL Workbench
- SQL (Joins, Aggregations, Window Functions)
- Relational Database Design
- Business Insights & Interpretation

---

## 🛒 Database Overview
Retail Sales Database with 4 core tables:
- `customers` → customer profile details
- `products` → product-level information
- `orders` → order details & payment status
- `order_items` → item-wise revenue contribution

---

## ❓ Business Questions Answered
1. Total revenue from completed orders?
2. Which product categories & brands drive revenue?
3. Top 5 revenue-generating products?
4. Who are the top-spending customers?
5. Which hours drive peak sales demand?

---

## 📊 Key Findings (Insights)
- Total Revenue = **₹573,400**
- **73%** revenue comes from **Smartphones and Laptops**
- Apple generates the **highest brand revenue** due to premium pricing
- Customers buying laptops & smartphones are **high-value segment**
- Sales peak during **4 PM – 9 PM**, strong opportunity for targeted offers

---

## 📸 Visual Outputs

### Revenue by Category
![Revenue By Category](images/revenue_by_category.png)

### Top Spending Customers
![Top Customers](images/top_customers.png)

### ER Diagram (Database Schema)
![ER Diagram](images/er_diagram.png)

---

## 🧠 SQL Concepts Used
- INNER JOIN
- GROUP BY / ORDER BY
- SUM, COUNT
- Window Function → `RANK()`
- WHERE filters (`Completed` orders only)

---

## ▶️ How to Run This Project
```sql
CREATE DATABASE retail_sales;
USE retail_sales;

