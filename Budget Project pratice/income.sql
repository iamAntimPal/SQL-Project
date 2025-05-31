-- Create a table named 'income' with columns for income ID, source, amount, received date, and notes
CREATE TABLE IF NOT EXISTS income (
     income_id INT PRIMARY KEY,
     source VARCHAR(100) NOT NULL,
     amount DECIMAL(15, 2) NOT NULL,
     received_date DATE NOT NULL,
     notes VARCHAR(255)
);
SHOW TABLES;

-- Insert data into the 'income' table with specified values for each column --
INSERT INTO income (income_id, source, amount, received_date, notes)
VALUES
    (1, 'Salary', 50000.00, '2023-01-01', 'Monthly salary'),
    (2, 'Bonus', 10000.00, '2023-02-15', 'Annual bonus'),
    (3, 'Investment', 5000.00, '2023-03-20', 'Invested in stocks'),
    (4, 'Gift', 2000.00, '2023-04-10', 'Received as a gift'),
    (5, 'Retirement', 10000.00, '2023-05-15', 'Retirement savings'),
    (6, 'Freelance', 5000.00, '2023-06-20', 'Freelance income'),
    (7, 'Part-time Job', 2000.00, '2023-07-10', 'Part-time job income'),
    (8, 'Side Hustle', 1500.00, '2023-08-20', 'Side hustle income'),
    (9, 'Gift', 500.00, '2023-09-10', 'Received as a gift'),
    (10, 'Investment', 2000.00, '2023-10-20', 'Invested in stocks');
    SELECT * FROM income;

    