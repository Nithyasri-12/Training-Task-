CREATE DATABASE sales_db;
use sales_db;
CREATE TABLE customers (customer_id VARCHAR(10) PRIMARY KEY,name VARCHAR(50),address VARCHAR(100));
CREATE TABLE orders (order_id INT PRIMARY KEY,customer_id VARCHAR(10),amount DECIMAL(10,2),order_date DATE, FOREIGN KEY (customer_id) REFERENCES customers(customer_id));

INSERT INTO customers VALUES ('C1', 'Alice', '123 Main St'), ('C2', 'Bob', '456 Oak Ave');

INSERT INTO orders VALUES (101, 'C1', 2000.00, '2023-01-01'),(102, 'C1', 60.00, '2023-01-01'),(103, 'C2', 50.00, '2023-01-02'),(104, 'C2', 1200.00, '2023-01-03');