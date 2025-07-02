

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author_id INT,
    price DECIMAL(10,2),
    published_year INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);


INSERT INTO authors VALUES
(1, 'J.K. Rowling', 'UK'),
(2, 'George R.R. Martin', 'USA'),
(3, 'Haruki Murakami', 'Japan'),
(4, 'Paulo Coelho', 'Brazil'),
(5, 'Chetan Bhagat', 'India');

INSERT INTO books VALUES
(101, 'Harry Potter 1', 1, 500.00, 1997),
(102, 'Harry Potter 2', 1, 550.00, 1998),
(103, 'Game of Thrones', 2, 700.00, 1996),
(104, 'Norweigan Wood', 3, 450.00, 1987),
(105, 'The Alchemist', 4, 400.00, 1988),
(106, 'Revolution 2020', 5, 300.00, 2011),
(107, 'Half Girlfriend', 5, 320.00, 2014),
(108, 'Book Without Author', NULL, 200.00, 2020),
(109, 'Kafka on the Shore', 3, 480.00, 2002),
(110, 'Unknown Title', NULL, 100.00, 2022);

SELECT b.title, a.name AS author
FROM books b
INNER JOIN authors a ON b.author_id = a.author_id;

CREATE TABLE employees3 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

DESC employees3;

-- Step 1: Insert top-level manager (no manager)
INSERT INTO employees3 (emp_id, name, position, manager_id) VALUES
(1, 'Alice', 'CEO', NULL);

-- Step 2: Insert managers who report to Alice
INSERT INTO employees3 (emp_id, name, position, manager_id) VALUES
(2, 'Bob', 'CTO', 1),
(3, 'Charlie', 'CFO', 1),
(10, 'Jane', 'HR Manager', 1);

-- Step 3: Insert mid-level employees
INSERT INTO employees3 (emp_id, name, position, manager_id) VALUES
(4, 'Diana', 'Dev Manager', 2),
(5, 'Ethan', 'Finance Manager', 3);

-- Step 4: Insert junior-level employees
INSERT INTO employees3 (emp_id, name, position, manager_id) VALUES
(6, 'Fiona', 'Developer', 4),
(7, 'George', 'Developer', 4),
(8, 'Hannah', 'Accountant', 5);

SELECT * FROM employees3;

SELECT 
    e.name AS employee_name,
    e.position AS employee_position,
    m.name AS manager_name,
    m.position AS manager_position
FROM 
    employees3 e
LEFT JOIN 
    employees3 m ON e.manager_id = m.emp_id;

