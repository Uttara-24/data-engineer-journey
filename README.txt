# Data Engineer Journey

I'm a software engineer with 2 years of experience, switching into data engineering.
This repo tracks my daily progress over a 24-week plan: SQL, Python, Airflow, PySpark, cloud, and two end-to-end projects.

## Progress Log

| Day | Topic                                                         | Status  |
|---  |---                                                            |---      |
| 1   | SQL basics (SELECT, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT) | Done    |
| 2   | Joins                                                         | Upcoming|

---

## Day 1: SQL Basics

**Tools:** PostgreSQL 18, pgAdmin 4
**Practice table:** `employees` (id, name, department, salary, city)

### What I learned today

- `WHERE` filters **rows** before grouping.
- `GROUP BY` bundles rows into groups, one result row per group.
- `HAVING` filters **groups** after aggregation (COUNT, AVG, MAX...).
- `ORDER BY` sorts the final result.
- `LIMIT` trims the result to the first N rows, and needs `ORDER BY` to be meaningful.
- Aggregate functions: `COUNT`, `AVG`, `MAX`, `MIN`, plus `ROUND` to clean up decimals.

### SQL execution order

```
FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY -> LIMIT
```

This explains why:
- `WHERE` can't use `COUNT(*)`: groups don't exist yet.
- `HAVING` can't use a column alias: `SELECT` hasn't run yet.
- `ORDER BY` can use an alias: it runs after `SELECT`.

### Mistakes I made (and fixed)

- Used `GROUP BY` and `HAVING` when I only needed individual rows. Fix: if the question asks for individual rows, use `WHERE`, `ORDER BY` and `LIMIT` only.
- Selected a non-aggregated column (`name`) while grouping by another column (`department`). Fix: every selected column must be in `GROUP BY` or wrapped in an aggregate.

### Rule I follow now

> Before writing a query, ask: do I want **individual rows**, or **one summary row per category**?

### Files

- `day01_sql_basics.sql`: all queries from today

---

*Next: Day 2, Joins (INNER, LEFT, RIGHT)*