CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments (dept_id)
);

INSERT INTO
    departments
VALUES (10, 'HR'),
    (20, 'Engineering'),
    (30, 'Marketing'),
    (50, 'Legal');

INSERT INTO
    employees
VALUES (1, 'Alice', 10),
    (2, 'Bob', 20),
    (4, 'Diana', 30),
    (3, 'Charlie', NULL),
    (5, 'Ethan', 50);


USE test2;

-- Inner Join

SELECT e.name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;

SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id;

SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;

SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id

UNION

SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;