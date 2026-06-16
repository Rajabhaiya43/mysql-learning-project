-- Union

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


-- STRING

-- LENGTH

SELECT first_name, LENGTH(first_name) AS SIZE
FROM employee_demographics
ORDER BY LENGTH(first_name);

--  UPPER CASE 

SELECT first_name, LENGTH(first_name) AS SIZE, UPPER(first_name) AS Ucase
FROM employee_demographics
ORDER BY LENGTH(first_name);

-- LOWER CASE 

SELECT first_name, LENGTH(first_name) AS SIZE, UPPER(first_name) AS Ucase, LOWER(first_name) AS Lcase
FROM employee_demographics
ORDER BY LENGTH(first_name);

-- TRIM (LEFT/ RIGHT)

SELECT first_name, LEFT(first_name,3) AS LT, LENGTH(first_name) AS SIZE
FROM employee_demographics
ORDER BY LT;

SELECT first_name, RIGHT(first_name,4) AS LT, LENGTH(first_name) AS SIZE
FROM employee_demographics
ORDER BY LT;

SELECT first_name AS NAME_, SUBSTRING(first_name,2,4) AS sub, LENGTH(first_name) AS SIZE
FROM employee_demographics
ORDER BY sub;

SELECT first_name, REPLACE(first_name, 'A', 'S') AS Replace_Char
FROM employee_demographics;

SELECT first_name, last_name,
CONCAT(first_name, ' ' , last_name) AS Full_Name
FROM employee_demographics
ORDER BY Full_Name;

-- locate

SELECT first_name,
LOCATE('Ap', first_name)
FROM employee_demographics;
