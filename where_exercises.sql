USE employees;

SELECT first_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
  AND gender = 'M';
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE last_name LIKE '%e'
   OR last_name like 'e%';

SELECT *
FROM employees
WHERE last_name LIKE '%e'
   AND last_name like 'e%';

SELECT * FROM employees WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';