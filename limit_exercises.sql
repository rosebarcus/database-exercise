USE employees;

SElECT DISTINCT last_name FROM employees
ORDER BY last_name DESC limit 10;

SELECT DISTINCT emp_no FROM salaries
ORDER BY salary DESC LIMIT 5;

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 46;



