USE practice1;

-- Step 1: Create the transactions table
CREATE TABLE transactions1 (
    transaction_id SERIAL PRIMARY KEY,
    account_holder VARCHAR(255) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    transaction_type VARCHAR(50) CHECK (transaction_type IN ('Deposit', 'Withdrawal')),
    transaction_date DATE NOT NULL
);

-- Step 2: Insert records into the transactions table
INSERT INTO transactions1 (account_holder, amount, transaction_type, transaction_date) VALUES
('John Doe', 500.00, 'Deposit', '2024-02-01'),
('Alice Sendth', 200.00, 'Withdrawal', '2024-01-28'),
('Nob Johnson', 1000.00, 'Deposit', '2024-02-10'),
('Eve Wilson', 300.00, 'Withdrawal', '2024-01-15'),
('Mike Brown', 700.00, 'Deposit', '2024-02-05');

-- Step 3: Retrieve transactions sorted by the latest date first
SELECT *
FROM transactions1
ORDER BY transaction_date DESC;


SELECT * FROM transactions1 WHERE amount = (SELECT MAX(amount) FROM transactions1);

SELECT COUNT(*) FROM transactions1;

SELECT SUM(amount) FROM transactions1 WHERE transaction_type = "Deposit";
SELECT SUM(amount) FROM transactions1 WHERE transaction_type = "Withdrawal";