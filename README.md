# Junior Data Engineer – SQL Practice

## About This Project

This repository contains my SQL practice for developing Junior Data Engineer skills. It includes database creation, table management, data analysis, joins, subqueries, Common Table Expressions (CTEs), and window functions.

## Technologies Used

- SQL
- Relational Databases
- MySQL-compatible SQL syntax

## Database Tables

The project uses the following tables:

- **employees** – Employee details, salaries, departments, joining dates, and cities.
- **departments** – Department information.
- **projects** – Project details, costs, and assigned employees.
- **customers** – Customer information.
- **transactions** – Customer transactions, dates, and amounts.
- **employee_history** – Historical employee salary records.

## SQL Concepts Covered

### 1. Database and Table Operations
- Creating a database and tables.
- Defining primary and foreign keys.
- Inserting sample data.
- Retrieving records using `SELECT`.

### 2. Basic SQL Queries
- Filtering data using `WHERE`.
- Sorting data using `ORDER BY`.
- Counting records using `COUNT()`.
- Finding minimum, maximum, and average values.

### 3. Aggregate Functions
- `COUNT()`
- `SUM()`
- `AVG()`
- `MAX()`

### 4. Grouping and Filtering
- `GROUP BY`
- `HAVING`
- Department-wise employee counts and average salaries.
- Customer transaction totals and project costs.

### 5. Joins and Subqueries
- `INNER JOIN`
- `LEFT JOIN`
- Identifying employees without projects.
- Finding departments without employees.
- Comparing employee salaries with average salaries.

### 6. Ranking and Window Functions
- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `LAG()`
- `LEAD()`
- Running totals using `SUM() OVER()`.
- Ranking employees by department and salary.

### 7. Common Table Expressions (CTEs)
- Creating temporary query result sets using `WITH`.
- Calculating department-wise average salaries.
- Organizing complex queries.

### 8. Data Analysis and Data Quality
- Finding the highest and second-highest salaries.
- Identifying duplicate employee names.
- Finding the top three salaries.
- Retrieving the latest salary records.
- Identifying missing and negative transaction amounts.
- Analyzing customer transactions and project costs.

## How to Run

1. Install MySQL Server and open MySQL Workbench, or use another compatible SQL environment.
2. Open `Junior Data Engineer.sql`.
3. Execute the database and table creation statements.
4. Run the data insertion statements.
5. Execute the practice queries to explore the results.

**Note:** The script uses MySQL-specific syntax such as `USE`, `SHOW TABLES`, `LIMIT`, `YEAR()`, and `MONTH()`.

## Learning Objectives

- Improve SQL query-writing skills.
- Understand relational database structures.
- Analyse employee, project, and transaction data.
- Practise joins, subqueries, CTEs, and window functions.
- Build a foundation for Junior Data Engineer and Data Analyst roles.
