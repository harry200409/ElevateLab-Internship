-- Step 1: Create the table
CREATE TABLE online_sales (
  order_id INT PRIMARY KEY,
  order_date DATE,
  amount DECIMAL(10, 2),
  product_id VARCHAR(10)
);

-- Step 2: Insert sample data
INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(1001, '2023-01-15', 120.00, 'P001'),
(1002, '2023-01-20', 89.99,  'P002'),
(1003, '2023-02-10', 149.50, 'P001'),
(1004, '2023-02-18', 60.00,  'P003'),
(1005, '2023-03-05', 45.00,  'P002'),
(1006, '2023-03-22', 200.00, 'P001'),
(1007, '2023-04-01', 130.00, 'P003');

-- Step 3: Monthly Revenue and Order Volume
SELECT
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  SUM(amount) AS total_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM
  online_sales
WHERE
  order_date >= '2023-01-01'
GROUP BY
  year, month
ORDER BY
  year, month;
