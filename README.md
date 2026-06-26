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
## 07 - UNION

Topics Covered:

- UNION Operator
- Combining Result Sets
- Removing Duplicate Records
- UNION with Conditions
- ORDER BY with UNION
- Column Aliasing

Database Used: parks_and_recreation

Examples:

```sql
SELECT *
FROM employee_demographics
UNION
SELECT *
FROM employee_salary;
```
## 08 - UNION & STRING FUNCTIONS

Topics Covered:

- UNION
- LENGTH()
- UPPER()
- LOWER()
- LEFT()
- RIGHT()
- SUBSTRING()
- REPLACE()
- CONCAT()
- LOCATE()

Database Used: parks_and_recreation

Examples:

```sql
SELECT employee_id, first_name, age AS value_IS
FROM employee_demographics
WHERE age > 40
UNION
SELECT employee_id, first_name, salary AS value_IS
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name;
```

```sql
SELECT first_name,
UPPER(first_name) AS Ucase,
LOWER(first_name) AS Lcase
FROM employee_demographics;
```
## 08 - CASE STATEMENTS

Topics Covered:

- CASE Statement
- Conditional Logic
- Categorizing Data
- Salary Increment Calculation
- Bonus Calculation
- Multiple Conditions using CASE

Database Used: parks_and_recreation

Examples:

```sql
SELECT CONCAT(first_name,last_name) AS full_name,
       age,
       birth_date,
CASE
    WHEN age < 18 THEN 'TEEN'
    WHEN age < 24 AND age > 18 THEN 'YOUNG'
    WHEN age < 50 AND age > 24 THEN 'OLD'
    WHEN age > 50 THEN 'NEAR DEATH'
END AS age_catg
FROM employee_demographics
ORDER BY age;
```

```sql
SELECT CONCAT(first_name,last_name) AS full_name,
       salary,
       dept_id,
CASE
    WHEN salary <= 60000 THEN salary * 1.10
    WHEN salary <= 70000 THEN salary * 1.07
    WHEN salary <= 75000 THEN salary * 1.05
    WHEN salary > 75000 THEN salary * 1
END AS NEW_SALARY,
CASE
    WHEN dept_id = 6 THEN salary * 0.1
    ELSE 0
END AS BOUNSE
FROM employee_salary;
```
## 09 - SUBQUERIES

Topics Covered:

- Subqueries in WHERE Clause
- Subqueries with IN Operator
- Nested Queries
- Aggregate Functions in Subqueries
- Scalar Subqueries

Database Used: parks_and_recreation

Examples:

```sql
SELECT first_name, occupation, salary
FROM employee_salary
WHERE first_name IN
(
    SELECT first_name
    FROM employee_demographics
    WHERE age > 50
);
```

```sql
SELECT first_name, occupation, salary,
(
    SELECT AVG(salary)
    FROM employee_salary
)
FROM employee_salary;
```
## 10 - WINDOW FUNCTIONS

Topics Covered:

- OVER()
- PARTITION BY
- ROW_NUMBER()
- RANK()
- DENSE_RANK()
- Rolling Calculations

Database Used: parks_and_recreation

Examples:

```sql
SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name,
       age,
       AVG(salary)
       OVER(PARTITION BY gender)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;
```

```sql
SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name,
       gender,
       age,
       salary,
       DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC) AS RANK_NUMBER
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;
```
## 11 - CTEs & Temporary Tables

Topics Covered:

- Common Table Expressions (CTEs)
- WITH Clause
- Temporary Tables
- CREATE TEMPORARY TABLE
- Temporary Data Storage

Database Used: parks_and_recreation

Examples:

```sql
WITH CTE_Example AS
(
    SELECT gender,
           AVG(salary),
           MAX(salary),
           MIN(salary),
           COUNT(salary)
    FROM employee_demographics AS DEM
    JOIN employee_salary AS SAL
    ON DEM.employee_id = SAL.employee_id
    GROUP BY gender
)
SELECT *
FROM CTE_Example;
```

```sql
CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary > 50000;

SELECT *
FROM salary_over_50k;
```
## 12 - Stored Procedures

Topics Covered:

- CREATE PROCEDURE
- CALL Procedure
- DELIMITER
- Multiple SQL Statements
- Parameters in Stored Procedures

Database Used: parks_and_recreation

Examples:

```sql
CREATE PROCEDURE ONLY_FEMALE()
SELECT *
FROM employee_demographics
WHERE gender = 'female';

CALL ONLY_FEMALE();
```

```sql
DELIMITER $$

CREATE PROCEDURE FILTER_SALARY_via_NAME(e_id INT)
BEGIN
    SELECT first_name, salary
    FROM employee_salary
    WHERE employee_id = e_id;
END $$

DELIMITER ;

CALL FILTER_SALARY_via_NAME(07);
```
