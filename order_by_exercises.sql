# Part One

USE employees;

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

# Part Two

SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT *
FROM employees
WHERE (first_name = 'Irena'
    OR first_name = 'Vidya'
    OR first_name = 'Maya')
  AND gender = 'M';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e';

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e';

# or you can do this:

SELECT *
FROM employees
WHERE last_name LIKE 'E%e';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

#TODO double check the curriculum requirement for this exercise step:
SELECT *
FROM employees
WHERE last_name LIKE 'E%' ORDER BY emp_no;

#organizing birthday results by seniority:
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, hire_date;


#Sort in descending order:
SELECT * FROM salaries
WHERE salary > 100000
ORDER BY salary DESC;


