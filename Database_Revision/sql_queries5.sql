SHOW TABLES;

CREATE TABLE employees2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50),
    salary INT
)

INSERT INTO
    employees2
VALUES (
        1,
        "Rahul",
        25,
        "IT",
        "Mumbai",
        15000
    ),
    (
        2,
        "Raj",
        30,
        "HR",
        "Pune",
        20000
    ),
    (
        3,
        "Ravi",
        35,
        "Finance",
        "Chennai",
        25000
    ),
    (
        4,
        "Rohit",
        40,
        "Operations",
        "Bangalore",
        30000
    ),
    (
        5,
        "Rahul",
        45,
        "IT",
        "Mumbai",
        35000
    ),
    (
        6,
        "Raj",
        50,
        "HR",
        "Pune",
        40000
    ),
    (
        7,
        "Ravi",
        55,
        "Finance",
        "Chennai",
        45000
    ),
    (
        8,
        "Rohit",
        60,
        "Operations",
        "Bangalore",
        50000
    );

SELECT * FROM employees2;

SELECT DISTINCT department, age FROM employees2;

SELECT COUNT(DISTINCT department) as total_departments
FROM employees2;

SELECT * FROM employees2 WHERE age > 50;

SELECT * FROM employees2 WHERE age < 50;

SELECT * FROM employees2 WHERE age <= 50;

SELECT * FROM employees2 WHERE age >= 50;

SELECT * FROM employees2 WHERE age <> 50;

SELECT * FROM employees2 WHERE age = 50;

SELECT * FROM employees2;

SELECT * FROM employees2 WHERE department NOT IN('IT', 'HR');

SELECT * FROM employees2 WHERE department IN ('IT', 'HR');

-- % : It matches for any sequence of zeros or more characters

-- _ (underscore) : It matches for any single character

Select * FROM employees2 WHERE name LIKE 'R%';

-- Names of employee whose second character is a

Select * FROM employees2 WHERE name LIKE '_a%';

Select * FROM employees2 WHERE name LIKE '__h%';

Select * FROM employees2 WHERE name LIKE '___i%';

Select * FROM employees2 WHERE name LIKE '____t%';

Select * FROM employees2 WHERE salary BETWEEN 30000 AND 40000;


SELECT * FROM employees2
ORDER BY salary DESC;

-- SQL Query to fetch the details of 2 employees having the maximum salary

SELECT * FROM employees2 ORDER BY salary DESC LIMIT 2;

SELECT department, AVG(salary) FROM employees2 GROUP BY department;

SELECT city, COUNT(*) AS number_of_employees FROM employees2 GROUP BY city;

SELECT city, MAX(salary) as max_salary_in_city
FROM employees2
GROUP BY city;

SELECT department, COUNT(*) AS total_employees_in_department FROM
employees2
GROUP BY department
ORDER BY total_employees_in_department DESC;