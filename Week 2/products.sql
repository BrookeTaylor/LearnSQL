CREATE DATABASE products;

USE products;


CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock INT
);

INSERT INTO products (name, category, price, stock) VALUES
('USB-C Cable', 'Electronics', 12.99, 45),
('Wireless Mouse', 'Electronics', 24.50, 18),
('Bluetooth Speaker', 'Electronics', 49.99, 12),
('Desk Lamp', 'Home', 29.99, 30),
('Ceramic Mug', 'Kitchen', 7.49, 60),
('Chef Knife', 'Kitchen', 34.95, 10),
('Yoga Mat', 'Fitness', 21.00, 22),
('Running Shoes', 'Fitness', 89.99, 8),
('Office Chair', 'Furniture', 139.00, 4),
('Standing Desk', 'Furniture', 259.00, 3);

SELECT * FROM products;

-- get all products priced under $30
SELECT name, price FROM products WHERE price < 30 ORDER BY price DESC;

-- show only name + price for products in the 'fitness' category
SELECT name, price FROM products WHERE category LIKE '%Fitness%';

-- find all products with stock between 10 and 40
SELECT name, stock FROM products WHERE stock BETWEEN 10 AND 40;

-- get all products whose name contains the word "Desk"
SELECT name FROM products WHERE name LIKE '%Desk%';

-- show top 3 most expensive products
SELECT name, price FROM products ORDER BY price DESC LIMIT 3; 

-- show distinct categories 
SELECT DISTINCT category FROM products;  

-- find all products priced between $20 and $50, ordered by price ascending
SELECT name, price FROM products WHERE price BETWEEN 20 AND 50 ORDER BY price ASC; 

-- get name, price, and stock for all products where category starts w/ 'E'
SELECT name, price, stock FROM products WHERE category LIKE 'E%'; 