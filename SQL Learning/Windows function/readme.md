# 📊 SQL Window Functions: Complete Guide

Welcome to the **SQL Window Functions** project! This repository contains detailed notes, syntax, and examples of all major SQL window functions used in data analysis, reporting, and advanced querying.

---

## 🧠 What are Window Functions?

**Window functions** perform row-wise calculations across a set of rows related to the current row, without collapsing result sets (unlike aggregate functions).

```sql
SELECT 
  column,
  ROW_NUMBER() OVER (PARTITION BY col ORDER BY col2)
FROM table;
```

---

## 🧩 Categories of SQL Window Functions

| Type                      | Functions                                           |
| ------------------------- | --------------------------------------------------- |
| 📌 Ranking                | `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `NTILE()` |
| 📊 Aggregate (as windows) | `SUM()`, `AVG()`, `MIN()`, `MAX()`, `COUNT()`       |
| 🔁 Navigation             | `LAG()`, `LEAD()`, `FIRST_VALUE()`, `LAST_VALUE()`  |
| 🔎 Value Offset           | `NTH_VALUE()`                                       |
| 📈 Statistical            | `CUME_DIST()`, `PERCENT_RANK()`                     |

---

## ✨ Highlights

* Full syntax breakdown with examples
* Real-world use cases (running totals, rankings, comparisons)
* Partitioning and framing explained
* Practice queries provided

---

## 📁 Folder Structure

```
sql-window-functions/
│
├── README.md                # This file
├── window_functions_notes.pdf  # PDF version of the guide (if available)
├── examples/
│   ├── ranking_examples.sql
│   ├── aggregate_examples.sql
│   ├── navigation_examples.sql
│   ├── percent_rank_examples.sql
│   └── running_total_example.sql
└── datasets/
    └── employees_sample.sql   # Sample dataset for practice
```

---

## 🧪 Sample Use Case

```sql
SELECT 
  employee_id,
  department,
  salary,
  ROW_NUMBER() OVER (PARTITION BY department ORDER BY salary DESC) AS dept_rank,
  LAG(salary) OVER (PARTITION BY department ORDER BY salary DESC) AS previous_salary
FROM employees;
```

---

## 📚 Supported Databases

* PostgreSQL ✅
* MySQL 8+ ✅
* SQL Server ✅
* Oracle ✅
* SQLite 3.25+ ✅
* BigQuery, Snowflake, Redshift ✅

---

## 🤝 Contribution

Want to contribute? Feel free to:

* Add new examples
* Suggest real-world queries
* Provide visualization notebooks (SQL + Power BI/Tableau)

---

## 📬 Contact

Made with ❤️ by \[Your Name]
Feel free to connect on [LinkedIn](#) | GitHub: [@yourusername](#)

---

## ⭐ Star This Repo

If this helped you learn SQL window functions better, give it a ⭐ to support the project!


