# -- Having 
SELECT occupation, AVG(salary)
FROM employee_salary
GROUP BY occupation
HAVING AVG(salary) > 80000
;

#-- Limit
SELECT *
FROM employee_salary
LIMIT 3;

SELECT *
FROM employee_salary
LIMIT 3, 5
;
# -- Aliasing

SELECT occupation, AVG(salary) AS AVG_slr
FROM employee_salary
GROUP BY occupation
HAVING AVG_slr > 80000
;
