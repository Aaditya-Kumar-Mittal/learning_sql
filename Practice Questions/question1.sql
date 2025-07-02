SHOW DATABASES;

CREATE DATABASE practice1;

USE practice1;

-- 1. Create the table
CREATE TABLE STUDENT1 (
    Stdid INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    Stdname VARCHAR(50) NOT NULL,
    Sex CHAR(6) CHECK (Sex IN ('Male', 'Female')),
    Percentage_Marks DECIMAL(5, 2) NOT NULL,
    SClass INT NOT NULL,
    Sec CHAR(1),
    Stream VARCHAR(10) CHECK (
        Stream IN ('Science', 'Commerce')
    ),
    DateOfBirth Date NOT NULL,
    Number INT
);

SHOW TABLES;

DESC STUDENT1;

-- 2. Insert 12 Details in the table
INSERT INTO
    STUDENT1 (
        StdiD,
        StdName,
        Sex,
        Percentage_Marks,
        SClass,
        Sec,
        Stream,
        DateOfBirth,
        Number
    )
VALUES (
        1,
        'Aman Sharma',
        'Male',
        85.6,
        12,
        'A',
        'Science',
        '2006-04-15',
        1234567890
    ),
    (
        2,
        'Rohit Kumar',
        'Male',
        78.3,
        12,
        'B',
        'Commerce',
        '2006-07-20',
        9876543210
    ),
    (
        3,
        'Priya Verma',
        'Female',
        92.1,
        12,
        'A',
        'Science',
        '2005-12-05',
        9087654321
    ),
    (
        4,
        'Anjali Gupta',
        'Female',
        89.5,
        12,
        'C',
        'Commerce',
        '2006-02-25',
        8098765432
    ),
    (
        5,
        'Vikram Singh',
        'Male',
        76.8,
        12,
        'A',
        'Science',
        '2006-05-18',
        7012345678
    ),
    (
        6,
        'Sneha Mishra',
        'Female',
        81.2,
        12,
        'B',
        'Commerce',
        '2006-08-10',
        6123456789
    ),
    (
        7,
        'Rajesh Rathi',
        'Male',
        88.0,
        12,
        'C',
        'Science',
        '2006-03-22',
        5034567891
    ),
    (
        8,
        'Pooja Yadav',
        'Female',
        74.6,
        12,
        'A',
        'Commerce',
        '2005-11-30',
        4123456789
    ),
    (
        9,
        'Saurabh Mehta',
        'Male',
        95.3,
        12,
        'B',
        'Science',
        '2006-06-15',
        3245678912
    ),
    (
        10,
        'Neha Saxena',
        'Female',
        90.0,
        12,
        'C',
        'Commerce',
        '2006-09-25',
        2456789123
    ),
    (
        11,
        'Rahul Dubey',
        'Male',
        79.9,
        12,
        'A',
        'Science',
        '2006-10-05',
        1567892345
    ),
    (
        12,
        'Divya Bhardwaj',
        'Female',
        82.5,
        12,
        'B',
        'Commerce',
        '2006-01-12',
        9876543120
    );

-- 3. Query all records from the table
SELECT * FROM STUDENT1;

-- Query only name and date of DateOfBirth

SELECT StdName, DateOfBirth FROM STUDENT1;

-- Query all records where Percentage_Marks is greater than or equal to 75
SELECT * FROM STUDENT1 WHERE Percentage_Marks >= 75;