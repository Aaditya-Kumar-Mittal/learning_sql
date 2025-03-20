= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
-- LIKE -> Operator is used in a SELEC statement to search for a specified pattern in a COLUMN
-- It is often used with a wildcard characters to perform pattern matching.
= = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

SHOW DATABASES;

CREATE DATABASE IF NOT EXISTS testdb;

USE testdb;

CREATE TABLE test_table1 (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    age INT NOT NULL
);

INSERT INTO
    test_table1 (name, email, age)
VALUES (
        "Alice",
        "zE7w6@example.com",
        25
    ),
    (
        "Bob",
        "Bx4w5@example.com",
        30
    ),
    (
        "Charlie",
        "LbEYt@example.com",
        35
    ),
    (
        "David",
        "QKf8o@example.com",
        40
    ),
    (
        "Eve",
        "L5A7o@example.com",
        45
    );

-- A% -> Matches any string that starts with "A"
SELECT * FROM test_table1 WHERE name LIKE "A%";

-- %a -> Matches any string that ends with "a"
SELECT * FROM test_table1 WHERE name LIKE "%e";

-- % : This wildcard matches zero or more characters.
-- _ : This wildcard matches exactly one character.
-- _a -> Matches any string that has "a" as the second character

-- %l% -> Matches any string that contains "l" anywhere in the string
SELECT * FROM test_table1 WHERE name LIKE "%l%";

SELECT * FROM test_table1 WHERE name LIKE "%av%";

SELECT * FROM test_table1 WHERE name LIKE "_avid";