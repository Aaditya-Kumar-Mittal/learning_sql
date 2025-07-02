CREATE TABLE students1 (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    course_id INT
);

CREATE TABLE courses1 (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

INSERT INTO
    courses1
VALUES (1, 'Computer Science', 4),
    (2, 'Mathematics', 3),
    (3, 'Physics', 3),
    (4, 'Chemistry', 3),
    (5, 'Biology', 3),
    (6, 'History', 3);

INSERT INTO
    students1
VALUES (1, 'John', 'Doe', 1),
    (2, 'Jane', 'Smith', 2),
    (3, 'Emily', 'Jones', 3),
    (4, 'Michael', 'Brown', 4),
    (5, 'Sarah', 'Davis', 5),
    (6, 'David', 'Miller', 6),
    (7, 'Olivia', 'Wilson', 1),
    (8, 'William', 'Taylor', 2),
    (9, 'Sophia', 'Anderson', 3),
    (10, 'James', 'Thomas', 4),
    (11, 'Emma', 'Jackson', 5),
    (12, 'Liam', 'White', 6),
    (13, 'Olivia', 'Harris', 1),
    (14, 'Noah', 'Martin', 2),
    (15, 'Emma', 'Thompson', 3),
    (16, 'Mason', 'Garcia', 4),
    (17, 'Isabella', 'Robinson', 5),
    (18, 'Jacob', 'Clark', 6),
    (19, 'Sophia', 'Lewis', 1),
    (20, 'Michael', 'Walker', 2);

SELECT * FROM students1;

SELECT * FROM courses1;

SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM students1 s
    JOIN courses1 c ON s.course_id = c.course_id;

INSERT INTO courses1 VALUES (7, 'English', 3);

INSERT INTO students1 VALUES (21, 'Olivia', 'Walker', 8);

SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM students1 s
    LEFT JOIN courses1 c ON s.course_id = c.course_id;

SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM students1 s
    RIGHT JOIN courses1 c ON s.course_id = c.course_id;

SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM students1 s
    LEFT JOIN courses1 c ON s.course_id = c.course_id
UNION
SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM courses1 c
    RIGHT JOIN students1 s ON s.course_id = c.course_id;

SELECT * FROM students1 CROSS JOIN courses1;

SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM students1 s
    LEFT JOIN courses1 c ON s.course_id = c.course_id
WHERE
    c.course_id IS NULL;

SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM students1 s
    RIGHT JOIN courses1 c ON s.course_id = c.course_id
WHERE
    s.student_id IS NULL;

SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM students1 s
    LEFT JOIN courses1 c ON s.course_id = c.course_id
WHERE
    c.course_id IS NULL
UNION
SELECT s.student_id, s.first_name, c.course_id, c.course_name
FROM students1 s
    RIGHT JOIN courses1 c ON s.course_id = c.course_id
WHERE
    s.student_id IS NULL;

CREATE DATABASE school1;

USE school1;

CREATE TABLE students1 (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    course_id INT
);

INSERT INTO
    students1
VALUES (1, 'John Doe', 1),
    (2, 'Jane Smith', 2),
    (3, 'Michael Brown', 3),
    (4, 'Emily Davis', 1),
    (5, 'David Johnson', 2),
    (6, 'Olivia Wilson', 3),
    (7, 'William Taylor', 1),
    (8, 'Sophia Anderson', 2),
    (9, 'James Thomas', 3),
    (10, 'Emma Jackson', 1),
    (11, 'Liam White', 2),
    (12, 'Olivia Harris', 3),
    (13, 'Noah Martin', 1),
    (14, 'Emma Thompson', 2),
    (15, 'Mason Garcia', 3),
    (16, 'Isabella Robinson', 1),
    (17, 'Jacob Clark', 2),
    (18, 'Sophia Lewis', 3),
    (19, 'Michael Walker', 1),
    (20, 'Olivia Walker', 2);

SELECT s1.student_id, s1.name, s1.course_id
FROM students1 s1
    JOIN students1 s2 ON s1.student_id = s2.course_id;