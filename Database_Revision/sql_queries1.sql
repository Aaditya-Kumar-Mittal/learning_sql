CREATE DATABASE test2;

SHOW DATABASES;

-- DROP DATABASE test2;

USE test2;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    PRIMARY KEY (customer_id)
);

DROP TABLE Customers;

CREATE TABLE customers1 (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(50),
    join_date DATE
);

CREATE TABLE orders1 (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(100),
    order_amount DECIMAL(10, 2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers1(customer_id)
);

INSERT INTO customers1 VALUES
(1, 'Alice Johnson', 'alice@example.com', 'New York', '2023-01-15'),
(2, 'Bob Smith', 'bob@example.com', 'Los Angeles', '2023-02-10'),
(3, 'Charlie Lee', 'charlie@example.com', 'Chicago', '2023-03-05'),
(4, 'Diana Green', 'diana@example.com', 'Houston', '2023-03-25'),
(5, 'Ethan Wright', 'ethan@example.com', 'Phoenix', '2023-04-12'),
(6, 'Fiona Adams', 'fiona@example.com', 'San Diego', '2023-05-18'),
(7, 'George Clark', 'george@example.com', 'Dallas', '2023-06-01'),
(8, 'Hannah Turner', 'hannah@example.com', 'San Jose', '2023-06-22'),
(9, 'Ian Walker', 'ian@example.com', 'Austin', '2023-07-05'),
(10, 'Jane Scott', 'jane@example.com', 'Jacksonville', '2023-07-18');

INSERT INTO orders1 VALUES
(101, 1, 'Laptop', 1200.00, '2023-02-01'),
(102, 2, 'Smartphone', 800.00, '2023-02-15'),
(103, 1, 'Headphones', 150.00, '2023-02-20'),
(104, 3, 'Monitor', 300.00, '2023-03-10'),
(105, 4, 'Tablet', 450.00, '2023-03-30'),
(106, 5, 'Keyboard', 100.00, '2023-04-18'),
(107, 6, 'Mouse', 50.00, '2023-05-25'),
(108, 7, 'Webcam', 80.00, '2023-06-05'),
(109, 2, 'Charger', 40.00, '2023-06-10'),
(110, 10, 'Speaker', 200.00, '2023-07-25');


SELECT * FROM customers1;
SELECT * FROM orders1;

SELECT MIN(order_amount) FROM orders1;
SELECT MAX(order_amount) FROM orders1;

SELECT SUM(order_amount) AS order_amount_for_2 FROM orders1 WHERE customer_id = 2;