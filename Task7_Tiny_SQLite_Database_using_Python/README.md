# Task7:Tiny_SQLite_Database_using_Python

This project connects to a small SQLite database and produces a basic sales analysis, including total revenue by category and top products by revenue, using SQL, pandas, and matplotlib.

---

## Files

-- `Task7_Tiny_SQLite_Database_using_Python.ipynb` – Jupyter Notebook that:
  - Creates a SQLite database with sample product and sales data
  - Executes SQL queries to summarize sales
  - Displays results using pandas and matplotlib bar charts
---

## Requirements

- Python
- Libraries:
  - `sqlite3` (built-in)
  - `pandas`
  - `matplotlib`

Install requirements using:

```bash
pip install pandas matplotlib
```

## Launch Jupyter with:
```bash
jupyter notebook
```

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

## Resetting the Data

To reset the database and reinsert the data, simply re-run the first few cells in the notebook that handle the database creation and sample inserts.
