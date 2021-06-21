USE employees;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%';


# Organize search results by birthday - put birthdays in order
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date;

# For people with same birthday, organize by last name
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, last_name;

# organize birthday results by seniority
SELECT * FROM employees
WHERE birth_date LIKE '1954-01%'
ORDER BY birth_date, hire_date;

# Sort in descending order
SELECT * FROM salaries
WHERE salary > 100000
ORDER BY salary DESC;

