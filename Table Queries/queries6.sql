SHOW DATABASES;

CREATE DATABASE myCollege;

USE myCollege;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    major VARCHAR(50)
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

CREATE TABLE enrollments (
    student_id INT,
    course_id INT,
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES students (student_id),
    FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

INSERT into
    students (
        student_id,
        first_name,
        last_name,
        date_of_birth,
        major
    )
VALUES (
        1,
        'John',
        'Doe',
        '2000-01-15',
        'Computer Science'
    ),
    (
        2,
        'Jane',
        'Smith',
        '1999-05-22',
        'Mathematics'
    ),
    (
        3,
        'Emily',
        'Jones',
        '2001-03-30',
        'Physics'
    ),
    (
        4,
        'Michael',
        'Brown',
        '1998-11-10',
        'Chemistry'
    ),
    (
        5,
        'Sarah',
        'Davis',
        '2002-07-25',
        'Biology'
    ),
    (
        6,
        'David',
        'Wilson',
        '2000-12-05',
        'Engineering'
    ),
    (
        7,
        'Laura',
        'Garcia',
        '1999-09-18',
        'History'
    ),
    (
        8,
        'James',
        'Martinez',
        '2001-02-14',
        'Literature'
    ),
    (
        9,
        'Linda',
        'Hernandez',
        '1998-10-30',
        'Art'
    ),
    (
        10,
        'Robert',
        'Lopez',
        '2002-04-20',
        'Philosophy'
    ),
    (
        11,
        'Jessica',
        'Gonzalez',
        '2000-08-12',
        'Economics'
    ),
    (
        12,
        'Daniel',
        'Perez',
        '1999-06-28',
        'Political Science'
    ),
    (
        13,
        'Karen',
        'Wilson',
        '2001-01-02',
        'Sociology'
    ),
    (
        14,
        'Matthew',
        'Anderson',
        '1998-12-15',
        'Psychology'
    ),
    (
        15,
        'Nancy',
        'Thomas',
        '2002-03-22',
        'Environmental Science'
    ),
    (
        16,
        'Charles',
        'Taylor',
        '2000-11-07',
        'Music'
    ),
    (
        17,
        'Patricia',
        'Moore',
        '1999-04-19',
        'Theater'
    ),
    (
        18,
        'Christopher',
        'Jackson',
        '2001-05-11',
        'Dance'
    ),
    (
        19,
        'Elizabeth',
        'Martin',
        '1998-08-29',
        'Graphic Design'
    ),
    (
        20,
        'Anthony',
        'Lee',
        '2002-09-03',
        'Journalism'
    ),
    (
        21,
        'Susan',
        'White',
        '2000-10-14',
        'Nursing'
    ),
    (
        22,
        'Mark',
        'Harris',
        '1999-07-27',
        'Pharmacy'
    ),
    (
        23,
        'Jessica',
        'Clark',
        '2001-02-08',
        'Veterinary Medicine'
    ),
    (
        24,
        'Paul',
        'Lewis',
        '1998-03-16',
        'Architecture'
    ),
    (
        25,
        'Laura',
        'Walker',
        '2002-06-30',
        'Interior Design'
    );

INSERT into
    courses (
        course_id,
        course_name,
        credits
    )
VALUES (
        1,
        'Introduction to Computer Science',
        4
    ),
    (2, 'Calculus I', 3),
    (3, 'Physics I', 3),
    (4, 'Chemistry I', 3),
    (5, 'Biology I', 3),
    (6, 'Physics II', 3),
    (7, 'Chemistry II', 3),
    (8, 'Biology II', 3),
    (9, 'Data Structures', 4),
    (10, 'Algorithms', 4),
    (11, 'Linear Algebra', 3),
    (
        12,
        'Differential Equations',
        3
    ),
    (13, 'Organic Chemistry', 3),
    (14, 'Microbiology', 3),
    (15, 'Genetics', 3),
    (16, 'History of Art', 3),
    (17, 'World History', 3),
    (18, 'American Literature', 3),
    (19, 'Creative Writing', 3),
    (
        20,
        'Introduction to Philosophy',
        3
    );

INSERT INTO
    enrollments (student_id, course_id)
VALUES (1, 1),
    (1, 9),
    (1, 10),
    (2, 2),
    (2, 11),
    (2, 12),
    (3, 3),
    (3, 6),
    (3, 13),
    (4, 4),
    (4, 7),
    (4, 14),
    (5, 5),
    (5, 8),
    (5, 15),
    (6, 1),
    (6, 9),
    (6, 16),
    (7, 2),
    (7, 10),
    (7, 17),
    (8, 3),
    (8, 11),
    (8, 18),
    (9, 4),
    (9, 12),
    (9, 19),
    (10, 5),
    (10, 13),
    (10, 20),
    (11, 6),
    (11, 14),
    (11, 1),
    (12, 7),
    (12, 15),
    (12, 2),
    (13, 8),
    (13, 16),
    (13, 3),
    (14, 9),
    (14, 17),
    (14, 4),
    (15, 10),
    (15, 18),
    (15, 5),
    (16, 11),
    (16, 19),
    (16, 6),
    (17, 12),
    (17, 20),
    (17, 7),
    (18, 13),
    (18, 1),
    (18, 8),
    (19, 14),
    (19, 2),
    (19, 9),
    (20, 15),
    (20, 3),
    (20, 10),
    (21, 16),
    (21, 4),
    (21, 11),
    (22, 17),
    (22, 5),
    (22, 12),
    (23, 18),
    (23, 6),
    (23, 13),
    (24, 19),
    (24, 7),
    (24, 14),
    (25, 20),
    (25, 8),
    (25, 15);

SELECT * FROM enrollments;

SELECT * FROM students;

UPDATE students SET last_name = "Price" WHERE student_id = 25;

CREATE TABLE users1 (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(50),
    email VARCHAR(100)
);

ALTER TABLE users1 ADD COLUMN age INT AFTER email;

INSERT INTO
    users1 (
        user_id,
        username,
        password,
        email,
        age
    )
VALUES (
        1,
        'johndoe',
        'password123',
        'QY4d4@example.com',
        25
    ),
    (
        2,
        '
janesmith',
        'mypassword',
        'n8E2w@example.com',
        30
    ),
    (
        3,
        'emilyjones',
        'secure
password',
        'OqTt7@example.com',
        28
    );

SELECT * FROM users1;

UPDATE users1 SET password = "new_password" WHERE user_id = 2;

SELECt * from students;

DELETE FROM enrollments WHERE student_id = 24;
DELETE FROM students WHERE student_id = 24;