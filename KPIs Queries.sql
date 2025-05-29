-- Total revenue
select sum(total_price) as total_revenue 
from pizza_sales

-- Average Order value
SELECT (SUM(total_price)/COUNT(DISTINCT(order_id))) AS avg_order_value
FROM pizza_sales

-- Total Pizzas sold
SELECT SUM(quantity) AS total_pizza_sold FROM pizza_sales

-- Total orders
SELECT COUNT(DISTINCT(order_id)) AS total_order FROM pizza_sales

-- Average Pizzas per order (use cast to get avg with 2 digit decimal number)
SELECT CAST( CAST(SUM(quantity) AS DECIMAL(10, 2)) / CAST(COUNT(DISTINCT(order_id)) AS DECIMAL(10, 2)) AS DECIMAL(10, 2))
AS avg_pizza_per_order
FROM pizza_sales

-- Daily trend

SELECT DATENAME(DW, order_date) AS order_day, COUNT(DISTINCT(order_id)) AS total_order
FROM pizza_sales
GROUP BY DATENAME(DW, order_date)
ORDER BY total_order DESC

-- Monthly trend

SELECT DATENAME(MONTH, order_date) AS order_month, COUNT(DISTINCT(order_id)) AS total_order
FROM pizza_sales
GROUP BY DATENAME(MONTH, order_date)
ORDER BY total_order DESC

-- % of sales by category

SELECT pizza_category, CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_sales, CAST(SUM(total_price) * 100/(SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS pct_sales
FROM pizza_sales -- add WHERE MONTH(order_date) = 1 if we want to check the sales in January only
GROUP BY pizza_category

---- % of sales by size

SELECT pizza_size,CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_sales, CAST(SUM(total_price) * 100/(SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS pct_sales
FROM pizza_sales -- add WHERE DATEPART(QUARTER, order_date) = 1 if we want to check the sales in Quarter 1 only
GROUP BY pizza_size
ORDER BY pct_sales DESC

-- Total pizzas by category
SELECT pizza_category, COUNT(quantity) AS total_pizza
FROM pizza_sales 
GROUP BY pizza_category
ORDER BY total_pizza DESC

-- Top 5 and Bottom 5 sellers

----- By Total Revenue
SELECT TOP 5 pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_revenue DESC

SELECT TOP 5 pizza_name, SUM(total_price) AS total_revenue
FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_revenue ASC

----- By Total Quantity
SELECT TOP 5 pizza_name, SUM(quantity) AS total_quantity
FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_quantity DESC

SELECT TOP 5 pizza_name, SUM(quantity) AS total_quantity
FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_quantity ASC

----- By Total Orders

SELECT TOP 5 pizza_name, COUNT(DISTINCT(order_id)) AS total_order
FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_order DESC

SELECT TOP 5 pizza_name, COUNT(DISTINCT(order_id)) AS total_order
FROM pizza_sales 
GROUP BY pizza_name
ORDER BY total_order ASC





