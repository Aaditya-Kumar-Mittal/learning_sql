= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
-- CASE Statment
-- CASE statement is used to create conditional logic in SQL queries.
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

USE testdb;

SHOW TABLES;

SELECT
    name,
    age,
    CASE
        WHEN age >= 40 THEN "Senior"
        WHEN age BETWEEN 30 AND 40  THEN "Middle-aged"
        WHEN age < 30 THEN "Young"
        ELSE "Unknown"
    END AS age_group
FROM table2
ORDER BY age ASC;

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
-- CHECK
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

CREATE TABLE table3 (
    employee_id INT NOT NULL PRIMARY KEY,
    employee_name VARCHAR(50),
    employee_email VARCHAR(50) UNIQUE,
    employee_age INT CHECK (
        employee_age BETWEEN 18 AND 65
    ), -- Fixed column name
    employee_salary INT CHECK (employee_salary > 0) -- Correct constraint
);

DESC table3;

INSERT INTO
    table3 (
        employee_id,
        employee_name,
        employee_email,
        employee_age,
        employee_salary
    )
VALUES (
        1,
        'John Doe',
        'john1@example.com',
        25,
        50000
    ),
    (
        2,
        'Jane Smith',
        'jane2@example.com',
        30,
        60000
    ),
    (
        3,
        'Michael Brown',
        'michael3@example.com',
        40,
        70000
    ),
    (
        4,
        'Emily Davis',
        'emily4@example.com',
        35,
        65000
    ),
    (
        5,
        'Chris Wilson',
        'chris5@example.com',
        28,
        55000
    ),
    (
        6,
        'Amanda Johnson',
        'amanda6@example.com',
        45,
        75000
    ),
    (
        7,
        'Matthew Martinez',
        'matthew7@example.com',
        50,
        80000
    ),
    (
        8,
        'Laura Anderson',
        'laura8@example.com',
        27,
        52000
    ),
    (
        9,
        'Kevin White',
        'kevin9@example.com',
        38,
        68000
    ),
    (
        10,
        'Sarah Thomas',
        'sarah10@example.com',
        32,
        62000
    ),
    (
        11,
        'Robert Harris',
        'robert11@example.com',
        29,
        57000
    ),
    (
        12,
        'Jessica Clark',
        'jessica12@example.com',
        26,
        51000
    ),
    (
        13,
        'Daniel Lewis',
        'daniel13@example.com',
        36,
        69000
    ),
    (
        14,
        'Sophia Hall',
        'sophia14@example.com',
        33,
        63000
    ),
    (
        15,
        'David Allen',
        'david15@example.com',
        31,
        61000
    ),
    (
        16,
        'Olivia Young',
        'olivia16@example.com',
        42,
        72000
    ),
    (
        17,
        'James King',
        'james17@example.com',
        39,
        70000
    ),
    (
        18,
        'Emma Wright',
        'emma18@example.com',
        34,
        64000
    ),
    (
        19,
        'Benjamin Scott',
        'benjamin19@example.com',
        37,
        67000
    ),
    (
        20,
        'Mia Green',
        'mia20@example.com',
        24,
        49000
    ),
    (
        21,
        'Ethan Adams',
        'ethan21@example.com',
        41,
        71000
    ),
    (
        22,
        'Charlotte Baker',
        'charlotte22@example.com',
        43,
        73000
    ),
    (
        23,
        'Alexander Nelson',
        'alexander23@example.com',
        46,
        76000
    ),
    (
        24,
        'Abigail Carter',
        'abigail24@example.com',
        23,
        48000
    ),
    (
        25,
        'Liam Perez',
        'liam25@example.com',
        47,
        77000
    ),
    (
        26,
        'Isabella Roberts',
        'isabella26@example.com',
        22,
        47000
    ),
    (
        27,
        'Mason Moore',
        'mason27@example.com',
        48,
        78000
    ),
    (
        28,
        'Lucas Turner',
        'lucas28@example.com',
        49,
        79000
    ),
    (
        29,
        'Harper Phillips',
        'harper29@example.com',
        44,
        74000
    ),
    (
        30,
        'Henry Campbell',
        'henry30@example.com',
        50,
        80000
    ),
    (
        31,
        'Ella Evans',
        'ella31@example.com',
        51,
        81000
    ),
    (
        32,
        'Jack Edwards',
        'jack32@example.com',
        52,
        82000
    ),
    (
        33,
        'Ava Collins',
        'ava33@example.com',
        53,
        83000
    ),
    (
        34,
        'Logan Stewart',
        'logan34@example.com',
        54,
        84000
    ),
    (
        35,
        'Aria Sanchez',
        'aria35@example.com',
        55,
        85000
    ),
    (
        36,
        'William Morris',
        'william36@example.com',
        56,
        86000
    ),
    (
        37,
        'Sofia Rogers',
        'sofia37@example.com',
        57,
        87000
    ),
    (
        38,
        'Lucas Reed',
        'lucas38@example.com',
        58,
        88000
    ),
    (
        39,
        'Chloe Cook',
        'chloe39@example.com',
        59,
        89000
    ),
    (
        40,
        'Elijah Murphy',
        'elijah40@example.com',
        60,
        90000
    ),
    (
        41,
        'Amelia Bailey',
        'amelia41@example.com',
        61,
        91000
    ),
    (
        42,
        'Daniel Rivera',
        'daniel42@example.com',
        62,
        92000
    ),
    (
        43,
        'Madison Cooper',
        'madison43@example.com',
        63,
        93000
    ),
    (
        44,
        'Carter Richardson',
        'carter44@example.com',
        64,
        94000
    ),
    (
        45,
        'Grace Cox',
        'grace45@example.com',
        65,
        95000
    ),
    (
        46,
        'Owen Howard',
        'owen46@example.com',
        23,
        46000
    ),
    (
        47,
        'Scarlett Ward',
        'scarlett47@example.com',
        24,
        47000
    ),
    (
        48,
        'Sebastian Torres',
        'sebastian48@example.com',
        25,
        48000
    ),
    (
        49,
        'Zoey Peterson',
        'zoey49@example.com',
        26,
        49000
    ),
    (
        50,
        'Dylan Gray',
        'dylan50@example.com',
        27,
        50000
    );

SELECT * FROM table3;

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
-- Named Constraints
-- Named constraints are user-defined names for constraints in SQL.
-- Named constraints are useful for improving the readability of SQL code and for easier debugging.
-- They allow you to give meaningful names to constraints, making it easier to identify and understand their purpose.
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

CREATE TABLE table4 (
    employee_id INT NOT NULL PRIMARY KEY,
    employee_name VARCHAR(50),
    employee_email VARCHAR(50) UNIQUE,
    employee_age INT,
    employee_salary DECIMAL(10, 2),
    CONSTRAINT age_check CHECK (
        employee_age BETWEEN 18 AND 65
    ),
    CONSTRAINT salary_check CHECK (employee_salary > 0)
);  

-- Inserting 25 sample records
INSERT INTO
    table4 (
        employee_id,
        employee_name,
        employee_email,
        employee_age,
        employee_salary
    )
VALUES (
        1,
        'Alice Johnson',
        'alice.johnson@email.com',
        25,
        50000.00
    ),
    (
        2,
        'Bob Smith',
        'bob.smith@email.com',
        30,
        60000.50
    ),
    (
        3,
        'Charlie Brown',
        'charlie.brown@email.com',
        28,
        55000.75
    ),
    (
        4,
        'David Williams',
        'david.williams@email.com',
        40,
        70000.00
    ),
    (
        5,
        'Eve Davis',
        'eve.davis@email.com',
        35,
        80000.25
    ),
    (
        6,
        'Frank Miller',
        'frank.miller@email.com',
        27,
        47000.50
    ),
    (
        7,
        'Grace Wilson',
        'grace.wilson@email.com',
        33,
        65000.75
    ),
    (
        8,
        'Henry Moore',
        'henry.moore@email.com',
        29,
        72000.00
    ),
    (
        9,
        'Isabella Taylor',
        'isabella.taylor@email.com',
        31,
        49000.50
    ),
    (
        10,
        'Jack White',
        'jack.white@email.com',
        26,
        53000.75
    ),
    (
        11,
        'Katie Harris',
        'katie.harris@email.com',
        45,
        90000.00
    ),
    (
        12,
        'Leo Martin',
        'leo.martin@email.com',
        50,
        75000.50
    ),
    (
        13,
        'Mia Clark',
        'mia.clark@email.com',
        55,
        68000.75
    ),
    (
        14,
        'Noah Walker',
        'noah.walker@email.com',
        38,
        74000.00
    ),
    (
        15,
        'Olivia Scott',
        'olivia.scott@email.com',
        42,
        87000.25
    ),
    (
        16,
        'Paul Hall',
        'paul.hall@email.com',
        47,
        88000.50
    ),
    (
        17,
        'Quincy Young',
        'quincy.young@email.com',
        48,
        56000.75
    ),
    (
        18,
        'Rachel King',
        'rachel.king@email.com',
        39,
        62000.00
    ),
    (
        19,
        'Samuel Adams',
        'samuel.adams@email.com',
        37,
        57000.50
    ),
    (
        20,
        'Tina Allen',
        'tina.allen@email.com',
        32,
        54000.75
    ),
    (
        21,
        'Umar Baker',
        'umar.baker@email.com',
        41,
        73000.00
    ),
    (
        22,
        'Victoria Nelson',
        'victoria.nelson@email.com',
        36,
        51000.50
    ),
    (
        23,
        'William Carter',
        'william.carter@email.com',
        49,
        82000.75
    ),
    (
        24,
        'Xavier Perry',
        'xavier.perry@email.com',
        34,
        66000.00
    ),
    (
        25,
        'Yasmine Foster',
        'yasmine.foster@email.com',
        44,
        77000.25
    );

-- Verify the inserted data
SELECT * FROM table4;

-- Inserting records with different constraints checks to see violations
/*
INSERT INTO table4(employee_id, employee_name, employee_email, employee_age, employee_salary) VALUES (26, 'Yasmine Jeeny', 'yasmine.foster@email.com', 45, 77000.25);
INSERT INTO table4(employee_id, employee_name, employee_email, employee_age, employee_salary) VALUES (26, 'Yasmine Jeeny', 'yasmine.foster1@email.com', 15, 77000.25);
INSERT INTO table4(employee_id, employee_name, employee_email, employee_age, employee_salary) VALUES (26, 'Yasmine Jeeny', 'yasmine.foster@email.com', 60, -77000.25);
*/