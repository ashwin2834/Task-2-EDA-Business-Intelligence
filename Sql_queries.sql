-- Query 1: Total Sales
SELECT SUM(total_sales) AS total_sales
FROM sales_data;

-- Query 2: Total Orders
SELECT COUNT(order_id) AS total_orders
FROM sales_data;

-- Query 3: Category-wise Sales
SELECT category,
SUM(total_sales) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;

-- Query 4: Top 5 Products by Revenue
SELECT product,
SUM(total_sales) AS revenue
FROM sales_data
GROUP BY product
ORDER BY revenue DESC
LIMIT 5;

-- Query 5: City-wise Sales
SELECT city,
SUM(total_sales) AS total_sales
FROM sales_data
GROUP BY city
ORDER BY total_sales DESC;

-- Query 6: Gender-wise Customers
SELECT gender,
COUNT(customer_id) AS total_customers
FROM sales_data
GROUP BY gender;

-- Query 7: Monthly Sales Trend
SELECT MONTH(order_date) AS month,
SUM(total_sales) AS total_sales
FROM sales_data
GROUP BY MONTH(order_date)
ORDER BY month;
