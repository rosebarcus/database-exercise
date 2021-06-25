USE join_test_db;

#Create a database named join_test_db and insert 4 new users, some will NULL roles:

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);


# Does not join null
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         JOIN roles
              ON users.role_id = roles.id;

# LEFT join
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         LEFT JOIN roles ON users.role_id = roles.id;

# RIGHT join - shows all rolls?
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

# Shows all roles
SELECT users.name AS user_name, roles.name AS role_name
FROM users
         RIGHT JOIN roles ON users.role_id = roles.id;

USE employees;
#show all current managers, modified to include all current managers that are female:
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'DEPARTMENT MANAGER'
FROM employees AS e
         JOIN dept_manager dm
              ON e.emp_no = dm.emp_no
         JOIN departments as d
              ON dm.dept_no = d.dept_no
WHERE dm.to_date > now()
AND e.gender = 'F'
LIMIT 10;

SELECT t.title As Title, COUNT(t.title)
FROM employees AS e
JOIN titles AS t
    ON e.emp_no = t.emp_no
JOIN dept_emp AS de
    ON t.emp_no = de.emp_no
JOIN departments as d
    ON de.dept_name = d.dept_no
WHERE d.dept_name = 'Customer Service'
GROUP BY t.title;




