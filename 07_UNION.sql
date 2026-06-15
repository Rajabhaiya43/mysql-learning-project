-- UNION

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

SELECT *
FROM employee_demographics
UNION
SELECT *
FROM employee_salary;

SELECT employee_id, first_name, age AS value_IS
FROM employee_demographics
WHERE age > 40
UNION
SELECT employee_id, first_name, salary AS value_IS
FROM employee_salary
WHERE salary > 70000
ORDER BY first_name;
