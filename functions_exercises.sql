# Part One

USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# Functions exercise #1:
SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

# Part Two

SELECT * FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT * FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

SELECT * FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

# or you can do this:

SELECT * FROM employees
WHERE last_name LIKE 'E%e';

SELECT * FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

#Functions exercises

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

#All employees born on Christmas:

SELECT *
FROM employees
WHERE MONTH(birth_date) = 12
AND DAY(birth_date) = 25;

SELECT *
FROM employees
WHERE YEAR (hire_date) BETWEEN 1990 AND 2000
AND MONTH (birth_date) = 12
AND DAY (birth_date) = 25
ORDER BY birth_date DESC;

# SELECT * FROM employees
# WHERE DAY (birth_date) = 25
#   AND MONTH (birth_date) = 25
#   AND YEAR (hire_date) = LIKE '199%'
#   ORDER BY birth_date, hire_date DESC;

SELECT *, DATEDIFF(hire_date, CURDATE()) FROM employees
WHERE DAY (birth_date) = 25
AND MONTH (birth_date) = 12
AND YEAR (hire_date) LIKE '199%'
ORDER BY DATEDIFF(hire_date, CURDATE());




