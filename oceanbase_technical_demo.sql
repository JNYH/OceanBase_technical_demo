-- Create a new DB
CREATE DATABASE jamesdatabase;

-- Create a new schema/table
USE jamesdatabase;
CREATE TABLE salespersons (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

-- Create sample data
INSERT INTO salespersons (id, name, email) VALUES
(1, 'Andy Ang', 'andy@email.com'),
(2, 'Brenda Bing', 'brenda@email.com');

USE jamesdatabase;
CREATE TABLE sales (
    id INT PRIMARY KEY,
    salesperson_id INT,
    date DATE,
    volume DECIMAL(10,2)
);

INSERT INTO sales (id, salesperson_id, date, volume) VALUES
(1, 1, '2022-01-01', 10000.00),
(2, 1, '2023-01-01', 19000.00),
(3, 2, '2022-01-01', 15000.00),
(4, 2, '2023-01-01', 12000.00),
(5, 1, '2023-01-01', 500.00);

--
-- demo: to import sample data from "sales_import.csv"
--

CREATE INDEX idx_salesperson_id ON sales (salesperson_id);

-- DML operations (INSERT/UPDATE/DELETE)
INSERT INTO salespersons (id, name, email) VALUES (3, 'Chris Choo', 'chris@email.com');
UPDATE salespersons SET email = 'chris.choo@email.com' WHERE id = 3;
DELETE FROM salespersons WHERE id = 3;

-- Gather the database statistics through the SYS schema
SELECT * FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_NAME = 'sales';
SELECT * FROM INFORMATION_SCHEMA.STATISTICS WHERE TABLE_NAME = 'salespersons';

-- Analyze the database with a SQL query
SELECT s.salesperson_id, sp.name, SUM(s.volume) AS total_volume
FROM sales s
JOIN salespersons sp ON s.salesperson_id = sp.id
WHERE s.date = '2023-01-01'
GROUP BY s.salesperson_id, sp.name;
