-- ORIGINAL TABLE

SELECT *
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- JOIN TWO TABLE

SELECT *
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- GROUP BY 

SELECT first_name, 
AVG(age), 
AVG(salary)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id
GROUP BY gender;

-- OVER (PARTITION BY.....)

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name,
age,
AVG(salary)
OVER(PARTITION BY gender) 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name,
age, gender,
SUM(salary)
OVER(PARTITION BY gender) 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- OVER(PARTITION BY.... ORDER BY ....)

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name, gender, age,salary,
AVG(salary)
OVER(PARTITION BY gender ORDER BY dem.employee_id) AS ROLLING_TOTAL 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name, gender, age,salary,
SUM(salary)
OVER(PARTITION BY gender ORDER BY dem.employee_id) AS ROLLING_TOTAL 
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- ROW NUMBER ()

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name, gender, age,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC ) AS SERIAL_NUMBER
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- RANK()

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name, gender, age,salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY salary DESC ) AS SERIAL_NUMBER,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC ) AS RANK_NUMBER
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;

-- DENSE_RANK

SELECT CONCAT(dem.first_name,' ',dem.last_name) AS full_name, gender, age,salary,
RANK() OVER(PARTITION BY gender ORDER BY salary DESC ) AS ORIGINAL_RANK,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY salary DESC ) AS RANK_NUMBER
FROM employee_demographics AS dem
JOIN employee_salary AS sal
ON dem.employee_id = sal.employee_id;
