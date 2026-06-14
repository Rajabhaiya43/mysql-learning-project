<h1 align="center"> | MySQL Learning |</h1>

<p align="center">
  <img src="https://img.shields.io/badge/MySQL-Database-blue?style=for-the-badge&logo=mysql">
  <img src="https://img.shields.io/badge/Data-Analytics-green?style=for-the-badge">
  <img src="https://img.shields.io/badge/Learning-In%20Progress-orange?style=for-the-badge">
</p>

<p align="center">
  <img src="https://skillicons.dev/icons?i=mysql,github,vscode" />
</p>

<p align="center">
  SQL Practice Repository • MySQL Workbench • Data Analytics Journey
</p>

<p align="center">
  📅 Started: June 2026 &nbsp;&nbsp;|&nbsp;&nbsp;
  👨‍💻 Author: Shivam Upadhayay &nbsp;&nbsp;|&nbsp;&nbsp;
  🎯 Goal: Data Analytics
</p>

---

## 📊 Repository Stats

![GitHub repo size](https://img.shields.io/github/repo-size/Rajabhaiya43/mysql-learning-project?style=flat-square)
![GitHub last commit](https://img.shields.io/github/last-commit/Rajabhaiya43/mysql-learning-project?style=flat-square)
![GitHub stars](https://img.shields.io/github/stars/Rajabhaiya43/mysql-learning-project?style=flat-square)

---
# 01 - SELECT Statement

## Topics Covered

- SELECT *
- Selecting Specific Columns
- DISTINCT
- Database Querying

## Database Used

parks_and_recreation

## Example Queries

```sql
SELECT *
FROM employee_demographics;

SELECT first_name
FROM employee_demographics;

SELECT DISTINCT gender
FROM employee_demographics;
```
## 02 - WHERE Clause

Topics Covered:
- Comparison Operators (=, >)
- AND Operator
- OR Operator
- NOT Operator
- Parentheses in Conditions
- LIKE Operator
- Wildcards (% and _)

Examples:
```sql
SELECT *
FROM employee_salary
WHERE salary > 70000;
```
## 03 - GROUP BY & ORDER BY

Topics Covered:

- GROUP BY
- AVG()
- COUNT()
- MIN()
- MAX()
- ORDER BY
- ASC Sorting
- DESC Sorting
- Multiple Column Sorting

Database Used: parks_and_recreation

Example Queries:

Examples:

```sql
SELECT gender, AVG(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;
```
## 04 - HAVING, LIMIT & ALIASING

Topics Covered:

- HAVING Clause
- LIMIT
- OFFSET using LIMIT
- Column Aliasing (AS)
- Filtering Aggregated Data

Database Used: parks_and_recreation

Examples:
```sql
SELECT *
FROM employee_salary
LIMIT 3, 5;
```

```sql
SELECT occupation, AVG(salary) AS AVG_slr
FROM employee_salary
GROUP BY occupation
HAVING AVG_slr > 80000;
```
## 05 - INSERT, UPDATE & DELETE

Topics Covered:

- INSERT INTO
- Multiple Row Insert
- UPDATE Statement
- DELETE Statement
- WHERE Clause with UPDATE
- WHERE Clause with DELETE

Database Used: parks_and_recreation

Examples:
```

```sql
DELETE FROM employee_demographics
WHERE employee_id = 15;
```
## 06 - JOINS

Topics Covered:

- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- SELF JOIN
- Multiple Table JOIN
- Table Aliases (AS)

Database Used: parks_and_recreation

Examples:

```sql
SELECT *
FROM employee_demographics AS ed
INNER JOIN employee_salary AS es
ON ed.employee_id = es.employee_id
INNER JOIN parks_departments AS pd
ON es.dept_id = pd.department_id;
```
