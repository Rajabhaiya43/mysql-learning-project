# -- INSERT

SELECT *
FROM employee_demographics;

INSERT INTO employee_demographics
(employee_id, first_name, last_name, age, gender, birth_date)
VALUES
(13, 'Shivam', 'Upadhayay', 21, 'Male', '2004-10-25'),
(14, 'Apoorva', 'Chauhan', 19, 'Female', '2006-05-18')
;

# -- UPDATE & DELETE

UPDATE employee_demographics 
SET first_name ='Tannu',
    last_name = 'Upadhayay',
    age = 20,
    gender = 'Female',
    birth_date = '2006-05-18',
    employee_id = 15
WHERE employee_id = '20'
;

DELETE FROM employee_demographics
WHERE employee_id = 15
;
