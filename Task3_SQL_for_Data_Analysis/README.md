# 🌍 SQL for Data Analysis – Task 3

## 🎯 Objective

Objective
Use SQL to extract, manipulate, and analyze e-commerce sales data, demonstrating proficiency with:
SELECT, WHERE, ORDER BY
GROUP BY, HAVING
JOIN types (INNER, LEFT, RIGHT)
Subqueries
Aggregate functions (SUM, AVG)
Views
Indexing
---

## 🛠 Tools Used

- **Database System:** MySQL 
- **Schema:** Custom "World" database with `Country`, `City`, and `CountryLanguage` tables  
- **Environment:** phpMyAdmin

---

## 🗂 Database Schema

### Tables:
- **Country** – Stores country information (e.g., name, code, population, continent)
- **City** – Lists cities and associates them with countries
- **CountryLanguage** – Lists languages spoken per country and marks if official

---

## 📊 Queries & Features Demonstrated

### 1️⃣ Basic Selection, Filtering, Grouping, Ordering
- Countries with population > 100M
- City count per country
- Cities sorted by population

### 2️⃣ Joins
- `INNER JOIN`: Cities with their countries
- `LEFT JOIN`: All countries with or without cities
- `RIGHT JOIN`: All cities with or without matching country (MySQL only)

### 3️⃣ Subqueries
- Countries with population above the world average
- Cities in the most populous country

### 4️⃣ Aggregate Functions
- Total population per continent
- Average population per country’s cities

### 5️⃣ Views for Reusability
- `AvgPopulationByContinent`
- `CityLanguageDetail` showing cities and languages

### 6️⃣ Query Optimization
- Indexes created on frequently queried columns (e.g., `Country.Code`, `City.CountryCode`)

---

## 📁 Project Files

| File | Description |
|------|-------------|
|`schema_and_data.sql`|Create Table and Insert values |
| `task3_queries.sql` | SQL queries used in this analysis |
| `images/` | Screenshots showing query results |
| `README.md` | Project documentation (this file) |

---

## 📈 Sample Insights

- Asia contains the most populous countries globally.
- India and China have high language diversity.
- Some countries don’t have associated cities in the data.

---
