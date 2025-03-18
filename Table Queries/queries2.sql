
-- To see which database is active
SELECT DATABASE();

-- Query 1: List all the tables in the database
SHOW TABLES;

-- Query 2: Create a new table
CREATE TABLE table_1(
  name VARCHAR(50),
  age INT
)

-- Query 3: Display the columns of a table
SHOW COLUMNS FROM table_1;

-- Query 4 : Describe a table
DESCRIBE table_1;
DESC table_1;


-- Query 5 : Add Default Value to a column
CREATE TABLE table_2(
  name VARCHAR(50) DEFAULT 'Anonymous',
  realease_year INT DEFAULT 2025,
  ratings INT
)

DESC table_2;

SHOW TABLES;

-- Query 6 : Drop a table
CREATE TABLE table_3(
  name VARCHAR(50),
  age INT
)

DROP TABLE table_3;

-- Note: The table is dropped and cannot be recovered
-- Note: You cannot create a table with the same name that already exists
