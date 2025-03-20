= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
-- AGGREGATE Functions
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

SHOW DATABASES;

USE testdb;

CREATE TABLE table2 (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    salary INT,
    department VARCHAR(50)
);

INSERT INTO
    table2 (name, age, salary, department)
VALUES ("Alice", 25, 50000, "HR"),
    ("Bob", 30, 60000, "IT"),
    (
        "Charlie",
        35,
        70000,
        "Finance"
    ),
    ("Dave", 40, 80000, "HR"),
    ("Eve", 45, 90000, "IT"),
    (
        "Frank",
        50,
        100000,
        "Finance"
    ),
    ("Grace", 55, 110000, "HR"),
    ("Hank", 60, 120000, "IT"),
    ("Ivy", 65, 130000, "Finance"),
    ("John", 70, 140000, "HR"),
    ("Kate", 75, 150000, "IT"),
    ("Luke", 80, 160000, "Finance"),
    ("Mary", 85, 170000, "HR"),
    ("Noah", 90, 180000, "IT"),
    (
        "Olivia",
        95,
        190000,
        "Finance"
    ),
    ("Paul", 100, 200000, "HR"),
    ("Quinn", 105, 210000, "IT"),
    (
        "Rita",
        110,
        220000,
        "Finance"
    ),
    ("Sam", 115, 230000, "HR"),
    ("Tina", 120, 240000, "IT"),
    ("Uma", 125, 250000, "Finance"),
    ("Vera", 130, 260000, "HR"),
    ("Will", 135, 270000, "IT"),
    (
        "Xena",
        140,
        280000,
        "Finance"
    ),
    ("Yara", 145, 290000, "HR"),
    ("Zane", 150, 300000, "IT"),
    (
        "Aaron",
        155,
        310000,
        "Finance"
    ),
    ("Bella", 160, 320000, "HR"),
    ("Cody", 165, 330000, "IT"),
    (
        "Daisy",
        170,
        340000,
        "Finance"
    ),
    ("Ethan", 175, 350000, "HR"),
    ("Fiona", 180, 360000, "IT"),
    (
        "Gabe",
        185,
        370000,
        "Finance"
    ),
    ("Holly", 190, 380000, "HR"),
    ("Ian", 195, 390000, "IT"),
    (
        "Jade",
        200,
        400000,
        "Finance"
    ),
    ("Kane", 205, 410000, "HR"),
    ("Lily", 210, 420000, "IT"),
    (
        "Mason",
        215,
        430000,
        "Finance"
    ),
    ("Nora", 220, 440000, "HR"),
    ("Oscar", 225, 450000, "IT"),
    (
        "Piper",
        230,
        460000,
        "Finance"
    ),
    ("Quinn", 235, 470000, "HR"),
    ("Riley", 240, 480000, "IT"),
    (
        "Sofia",
        245,
        490000,
        "Finance"
    ),
    ("Trevor", 250, 500000, "HR"),
    ("Uma", 255, 510000, "IT"),
    (
        "Vera",
        260,
        520000,
        "Finance"
    ),
    ("Will", 265, 530000, "HR"),
    ("Xena", 270, 540000, "IT"),
    (
        "Yara",
        275,
        550000,
        "Finance"
    ),
    ("Zane", 280, 560000, "HR");

SELECT * from table2;

SELECT COUNT(*) FROM table2 WHERE department = "Finance";

SELECT AVG(salary) FROM table2 WHERE department = "Finance";

SELECT SUM(salary) FROM table2 WHERE department = "Finance";

SELECT * FROM table2 ORDER BY salary DESC;

SELECT MIN(salary) FROM table2 WHERE department = "Finance";

SELECT MAX(salary) FROM table2 WHERE department = "Finance";

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
-- GROUP BY Clause
-- The GROUP BY clause is used to arrange identical data into groups.
-- It is often used with aggregate functions like COUNT, SUM, AVG, MIN, MAX, etc.
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

SELECT
    COUNT(*) AS number_of_employees,
    SUM(salary) AS total_salary,
    department
FROM table2
GROUP BY
    department;

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
-- Operators
-- Operators are special symbols that perform operations on one, two, or three operands, and then return a result.
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

SELECT COUNT(*) FROM table2 WHERE salary < 400000;

SELECT COUNT(*) FROM table2 WHERE salary > 400000;

SELECT COUNT(*) FROM table2 WHERE salary >= 400000;

SELECT COUNT(*) FROM table2 WHERE salary <= 400000;

SELECT COUNT(*) FROM table2 WHERE salary = 400000;

SELECT COUNT(*) FROM table2 WHERE salary != 400000;

SELECT COUNT(*) FROM table2 WHERE salary <> 400000;

SELECT COUNT(*) FROM table2 WHERE salary BETWEEN 400000 AND 500000;

SELECT *
FROM table2
WHERE
    salary BETWEEN 400000 AND 500000
ORDER BY salary ASC;

SELECT * FROM table2;

UPDATE table2 SET age = (age / 10) WHERE age > 50;

UPDATE table2 SET age = (age + 20) WHERE age <= 15;

SELECT *
FROm table2
WHERE
    department = "Finance"
ORDER BY salary ASC;

DELETE FROM table2 WHERE id = 55;

WITH
    CTE AS (
        SELECT id, name, ROW_NUMBER() OVER (
                PARTITION BY
                    name
                ORDER BY id
            ) AS row_num
        FROM table2
    )
DELETE FROM table2
WHERE
    id IN (
        SELECT id
        FROM CTE
        WHERE
            row_num > 1
    );

SELECT * FROM table2 WHERE age IN (20, 25, 30);