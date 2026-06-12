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

SELECT gender, AVG(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, AVG(salary), COUNT(salary)
FROM employee_salary
GROUP BY occupation;

SELECT *
FROM employee_salary
ORDER BY dept_id;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age ASC;
