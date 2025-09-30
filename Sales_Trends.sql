-- 1. Create database and use it
CREATE DATABASE IF NOT EXISTS online_sales;
USE online_sales;

-- 2. Create orders table
CREATE TABLE orders (
    order_id INT,
    product_id INT,
    order_date DATE,
    amount DECIMAL(10,2)
);

-- 3. Insert sample data
INSERT INTO orders (order_id, product_id, order_date, amount) VALUES
(1, 101, '2023-01-05', 250.00),
(2, 102, '2023-01-07', 180.00),
(3, 103, '2023-02-10', 350.00),
(4, 101, '2023-02-15', 400.00),
(5, 104, '2023-03-01', 150.00),
(6, 105, '2023-03-15', 500.00),
(7, 102, '2023-04-20', 300.00),
(8, 101, '2023-04-22', 200.00),
(9, 103, '2023-05-05', 700.00),
(10, 104, '2023-05-10', 250.00),
(11, 105, '2023-06-01', 400.00),
(12, 101, '2023-06-15', 350.00),
(13, 102, '2023-07-03', 450.00),
(14, 103, '2023-07-18', 500.00),
(15, 104, '2023-08-05', 600.00),
(16, 105, '2023-08-25', 650.00),
(17, 101, '2023-09-10', 300.00),
(18, 102, '2023-09-20', 250.00),
(19, 103, '2023-10-05', 550.00),
(20, 104, '2023-10-15', 600.00),
(21, 105, '2023-11-10', 700.00),
(22, 101, '2023-11-20', 650.00),
(23, 102, '2023-12-05', 800.00),
(24, 103, '2023-12-15', 900.00);

-- 4. Sales trend analysis query
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    orders
WHERE 
    order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY 
    EXTRACT(YEAR FROM order_date), 
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year ASC, month ASC;