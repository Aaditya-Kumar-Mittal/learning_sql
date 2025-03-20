Use testdb;

CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT
);

INSERT INTO
    Employees (
        employee_id,
        employee_name,
        department_id
    )
VALUES (1, 'Alice', 101),
    (2, 'Bob', 102),
    (3, 'Charlie', 103),
    (4, 'David', NULL),
    (5, 'Eve', 101);

CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO
    Departments (
        department_id,
        department_name
    )
VALUES (101, 'HR'),
    (102, 'IT'),
    (104, 'Finance');

-- 1. Cross Join -> A type of join operation that combines each row from one table with every row from another table.

SELECT * FROM employees CROSS JOIN departments;

SELECT * FROM employees, departments;

-- 2. INNER JOIN -> A type of join operation that returns only the rows that have matching values in both tables.

SELECT *
FROM employees
    INNER JOIN departments ON employees.department_id = departments.department_id;

SELECT
    employee_id,
    employee_name,
    department_name
FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id;

SELECT
    employee_id,
    employee_name,
    department_name
FROM employees e
    JOIN departments d ON e.department_id = d.department_id;

SELECT
    employee_id,
    employee_name,
    department_name
FROM employees e
    LEFT JOIN departments d ON e.department_id = d.department_id;

SELECT
    employee_id,
    employee_name,
    department_name
FROM employees e
    RIGHT JOIN departments d ON e.department_id = d.department_id;

SELECT DATABASE();

USE testdb;

SHOW TABLES;

CREATE TABLE table9_movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    year INT NOT NULL,
    director VARCHAR(100) NOT NULL,
    genre VARCHAR(100) NOT NULL
);

CREATE TABLE table10_persons (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    gender VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL
);

CREATE TABLE table11_comment (
    comment_id INT PRIMARY KEY AUTO_INCREMENT,
    movie_id INT NOT NULL,
    person_id INT NOT NULL,
    comment VARCHAR(255) NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES table9_movies (movie_id),
    FOREIGN KEY (person_id) REFERENCES table10_persons (person_id)
);

INSERT INTO
    table9_movies (title, year, director, genre)
VALUES (
        'Inception',
        2010,
        'Christopher Nolan',
        'Science Fiction'
    ),
    (
        'The Dark Knight',
        2008,
        'Christopher Nolan',
        'Action'
    ),
    (
        'Interstellar',
        2014,
        'Christopher Nolan',
        'Science Fiction'
    ),
    (
        'The Matrix',
        1999,
        'Lana Wachowski, Lilly Wachowski',
        'Science Fiction'
    ),
    (
        'The Godfather',
        1972,
        'Francis Ford Coppola',
        'Crime'
    ),
    (
        'Pulp Fiction',
        1994,
        'Quentin Tarantino',
        'Crime'
    ),
    (
        'Forrest Gump',
        1994,
        'Robert Zemeckis',
        'Drama'
    ),
    (
        'The Shawshank Redemption',
        1994,
        'Frank Darabont',
        'Drama'
    ),
    (
        'Fight Club',
        1999,
        'David Fincher',
        'Drama'
    ),
    (
        'The Social Network',
        2010,
        'David Fincher',
        'Biography'
    ),
    (
        'The Avengers',
        2012,
        'Joss Whedon',
        'Action'
    ),
    (
        'Titanic',
        1997,
        'James Cameron',
        'Romance'
    ),
    (
        'Avatar',
        2009,
        'James Cameron',
        'Science Fiction'
    ),
    (
        'Gladiator',
        2000,
        'Ridley Scott',
        'Action'
    ),
    (
        'The Silence of the Lambs',
        1991,
        'Jonathan Demme',
        'Thriller'
    ),
    (
        'The Wolf of Wall Street',
        2013,
        'Martin Scorsese',
        'Biography'
    ),
    (
        'Parasite',
        2019,
        'Bong Joon-ho',
        'Thriller'
    ),
    (
        'Joker',
        2019,
        'Todd Phillips',
        'Crime'
    ),
    (
        'The Lion King',
        1994,
        'Roger Allers, Rob Minkoff',
        'Animation'
    ),
    (
        'Spirited Away',
        2001,
        'Hayao Miyazaki',
        'Animation'
    );

INSERT INTO
    table10_persons (
        name,
        age,
        email,
        gender,
        country
    )
VALUES (
        'Alice Johnson',
        28,
        'alice.johnson@email.com',
        'Female',
        'USA'
    ),
    (
        'Bob Smith',
        35,
        'bob.smith@email.com',
        'Male',
        'Canada'
    ),
    (
        'Charlie Brown',
        22,
        'charlie.brown@email.com',
        'Male',
        'UK'
    ),
    (
        'David Williams',
        40,
        'david.williams@email.com',
        'Male',
        'Australia'
    ),
    (
        'Emma Davis',
        30,
        'emma.davis@email.com',
        'Female',
        'USA'
    ),
    (
        'Frank Miller',
        45,
        'frank.miller@email.com',
        'Male',
        'Germany'
    ),
    (
        'Grace Wilson',
        27,
        'grace.wilson@email.com',
        'Female',
        'France'
    ),
    (
        'Henry Moore',
        33,
        'henry.moore@email.com',
        'Male',
        'India'
    ),
    (
        'Isabella Taylor',
        29,
        'isabella.taylor@email.com',
        'Female',
        'Italy'
    ),
    (
        'Jack White',
        31,
        'jack.white@email.com',
        'Male',
        'Spain'
    ),
    (
        'Katie Harris',
        26,
        'katie.harris@email.com',
        'Female',
        'USA'
    ),
    (
        'Leo Martin',
        38,
        'leo.martin@email.com',
        'Male',
        'Canada'
    ),
    (
        'Mia Clark',
        24,
        'mia.clark@email.com',
        'Female',
        'UK'
    ),
    (
        'Noah Walker',
        36,
        'noah.walker@email.com',
        'Male',
        'Australia'
    ),
    (
        'Olivia Scott',
        32,
        'olivia.scott@email.com',
        'Female',
        'Germany'
    ),
    (
        'Paul Hall',
        41,
        'paul.hall@email.com',
        'Male',
        'France'
    ),
    (
        'Quincy Young',
        25,
        'quincy.young@email.com',
        'Male',
        'India'
    ),
    (
        'Rachel King',
        37,
        'rachel.king@email.com',
        'Female',
        'Italy'
    ),
    (
        'Samuel Adams',
        34,
        'samuel.adams@email.com',
        'Male',
        'Spain'
    ),
    (
        'Tina Allen',
        28,
        'tina.allen@email.com',
        'Female',
        'USA'
    );

INSERT INTO
    table11_comment (movie_id, person_id, comment)
VALUES (
        1,
        3,
        'Amazing movie! Loved the direction.'
    ),
    (
        2,
        5,
        'The cinematography was breathtaking.'
    ),
    (
        3,
        7,
        'A classic! Must watch for everyone.'
    ),
    (
        4,
        2,
        'The screenplay was a bit weak, but overall good.'
    ),
    (
        5,
        10,
        'Fantastic performances by the actors!'
    ),
    (
        6,
        12,
        'Not my cup of tea, but well made.'
    ),
    (
        7,
        8,
        'Loved the action sequences.'
    ),
    (
        8,
        15,
        'A heart-touching story.'
    ),
    (
        9,
        17,
        'The plot twist was mind-blowing!'
    ),
    (
        10,
        4,
        'Had high expectations, but it was average.'
    ),
    (
        11,
        20,
        'Absolutely worth watching!'
    ),
    (
        12,
        9,
        'I didn’t enjoy it as much as I thought I would.'
    ),
    (
        13,
        1,
        'The background music was excellent.'
    ),
    (
        14,
        14,
        'Too long, could have been shorter.'
    ),
    (
        15,
        6,
        'Great movie, I’d watch it again.'
    ),
    (
        16,
        18,
        'A masterpiece! The storytelling was brilliant.'
    ),
    (
        17,
        11,
        'Could have had a better ending.'
    ),
    (
        18,
        13,
        'A must-watch for sci-fi fans.'
    ),
    (
        19,
        16,
        'Comedy was on point!'
    ),
    (
        20,
        19,
        'A beautiful and emotional experience.'
    );

SELECT *
FROM
    table9_movies
    JOIN table10_persons ON table9_movies.movie_id = table10_persons.person_id;

SELECT * FROM table9_movies m
RIGHT JOIN table10_persons p ON m.movie_id = p.person_id;