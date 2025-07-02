USE test2;

CREATE TABLE IF NOT EXISTS users1 (
    user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS post1 (
    post_id INT PRIMARY KEY,
    user_id INT,
    caption VARCHAR(100)
);

SHOW TABLES;

INSERT INTO
    users1
VALUES (
        1,
        "johndoe",
        "QY4d4@example.com"
    ),
    (
        2,
        "janesmith",
        "n8E2w@example.com"
    ),
    (
        3,
        "emilyjones",
        "OqTt7@example.com"
    );

INSERT INTO
    post1
VALUES (1, 1, "Hello, world!"),
    (2, 2, "This is a post"),
    (3, 3, "Another post");

USE test2;

SELECT * FROM customers1;

SELECT * FROM orders1;

SELECT name, city FROM customers1 ORDER BY name DESC, city ASC;

SELECT * FROM customers1 limit 2 OFFSET 2;

SELECT 
    o.order_id, 
    c.customer_id, 
    o.product_name, 
    o.order_amount
FROM 
    orders1 o
JOIN 
    customers1 c 
ON 
    o.customer_id = c.customer_id;