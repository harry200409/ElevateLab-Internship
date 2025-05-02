# Task7: Tiny_SQLite_Database_using_Python

This project connects to a small SQLite database and produces a basic sales analysis, including total revenue by category and top products by revenue, using SQL, pandas, and matplotlib.

---

## Files structure

```
Task7_Tiny_SQLite_Database_using_Python/
├── Task7_Tiny_SQLite_Database_using_Python.py                 # Main Jupyter Notebook (setup, queries, visualization)
├── sales_data.db                       # Auto-generated SQLite database file
├── category_revenue.png                # Bar chart: revenue by category
├── top_products_jan2024.png            # Bar chart: top 3 products by revenue (Jan 2024)
└── README.md                           # Project description and usage instructions
```
---

## 🗂Dataset Information

The dataset is created and inserted programmatically inside the notebook. It consists of two main tables:

### 2. `sales_data.db`

| Column Name | Type    | Description                         |
|-------------|---------|-------------------------------------|
| sale_id     | INTEGER | Unique ID for each sale             |
| product_id  | INTEGER | Foreign key linking to `products`   |
| quantity    | INTEGER | Quantity sold                       |
| date        | TEXT    | Date of sale (in `YYYY-MM-DD` format) |

Sample data is inserted for multiple products and sales across different dates, including January 2024, to enable aggregation and filtering.

---
## How to Run
1. Ensure Python is installed (v3.x)
2. Install required packages:
```bash
pip install pandas matplotlib
```
3. Run the script:
```bash
Task7_Tiny_SQLite_Database_using_Python.py
```
4. Output:
    -  Console: Prints a table showing product-wise total quantity and revenue
    -  Image: Saves a bar chart as sales_chart.png


## This will:

- Create the database (`sales_data.db`)
- Insert sample data
- Run analysis queries
- Generate and display charts
- Save charts as `.png` files

---

## Output Summary

- **Revenue by Category**: Aggregated total revenue for each product category
- **Top 3 Products (Jan 2024)**: Products with highest revenue in January 2024

---
