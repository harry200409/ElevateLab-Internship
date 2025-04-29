---
# Task 6: Sales Trend Analysis

This project involves analyzing sales data using SQL to identify key sales trends such as monthly performance, top-selling products, and regional sales distribution.

---

## File Structure

```
Task6_Sales_Trend_Analysis/
├── README.md               # Project documentation
├── Task6_Sales_Trend_Analysis.sql              # SQL queries for trend analysis
|__ Task6_Result_table.png              # Image of result of query
```

---

## SQL Script (`Task6_Sales_Trend_Analysis.sql`)

### 1. Create Sample Table (if needed)

```sql
CREATE TABLE online_sales (
  order_id     INT,
  order_date   DATE,
  amount       DECIMAL(10,2),
  product_id   INT
);
```

### 2. Monthly Revenue & Order Volume Analysis

```sql
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
```

> Use this to identify revenue and order trends over time.

---

## Notes

- Ensure your SQL engine supports the `EXTRACT` function. For SQLite, you may need to use `strftime('%Y', order_date)` and `strftime('%m', order_date)` instead.
- Adjust the `order_date` filter in the `WHERE` clause as needed to focus on specific time periods.

---

## Outcome

By executing the above queries, you will obtain insights into:

- Monthly revenue trends
- Monthly order volume
- Seasonal patterns in sales

These insights can help in making informed business decisions and identifying growth opportunities.

---
