CREATE DATABASE foreignKey;
USE foreignKey;

CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    role_title VARCHAR(100),
    department_id INT,
    salary INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

INSERT INTO departments (name, location) VALUES
    ('Flooring', 'Kansas City Store 1830'),
    ('Plumbing', 'Kansas City Store 1830'),
    ('Electrical', 'Kansas City Store 1830'),
    ('Appliances', 'Kansas City Store 1830'),
    ('Millwork', 'Kansas City Store 1830'),
    ('Paint', 'Kansas City Store 1830'),
    ('Lumber', 'Kansas City Store 1830'),
    ('Garden Center', 'Kansas City Store 1830'),
    ('Customer Service', 'Kansas City Store 1830');
    
    INSERT INTO employees (first_name, last_name, role_title, department_id, salary) VALUES
    ('Nick', 'Scultz', 'Department Supervisor', 1, 65000),
    ('Sean', 'Miller', 'Assistant Store Manager', 9, 78000),
    ('Matthew', 'Price', 'Store Manager', 9, 95000),
    ('Maya', 'Lopez', 'Sales Specialist', 1, 48000),
    ('Justin', 'Reed', 'Sales Associate', 2, 41000),
    ('Sophia', 'Hayes', 'Sales Specialist', 3, 49000),
    ('Carter', 'Jameson', 'Appliance Specialist', 4, 52000),
    ('Hannah', 'Walker', 'Customer Service Associate', 9, 39000),
    ('Liam', 'Owens', 'Paint Associate', 6, 42000),
    ('Zoe', 'Ramirez', 'Millwork Specialist', 5, 51000),
    ('Evan', 'Crawford', 'Lumber Associate', 7, 40500),
    ('Nina', 'Patel', 'Garden Center Associate', 8, 39500),
    ('Connor', 'Brewer', 'Electrical Sales Associate', 3, 43000),
    ('Adrian', 'Wells', 'Plumbing Specialist', 2, 50500);

SELECT * FROM departments;
SELECT * FROM employees;

SELECT first_name, last_name, role_title, departments.name AS department, departments.location
FROM  employees 
JOIN departments 
	ON department_id = departments.id;
    
-- new tables
CREATE TABLE people (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    city VARCHAR(50),
    salary INT
);

INSERT INTO people (first_name, last_name, age, city, salary) VALUES
    ('Olivia', 'Carter', 27, 'Denver, CO', 58000),
	('Marcus', 'Nguyen', 34, 'Charlotte, NC', 82500),
	('Jenna', 'Morales', 41, 'Seattle, WA', 96200),
	('Daniel', 'Brooks', 29, 'Nashville, TN', 63400),
	('Priya', 'Shah', 37, 'Austin, TX', 105000),
	('Ethan', 'Ramirez', 23, 'Phoenix, AZ', 47300),
	('Samantha', 'Turner', 32, 'Kansas City, MO', 72800),
	('Logan', 'Bishop', 46, 'Chicago, IL', 118900),
	('Kayla', 'Simmons', 30, 'Orlando, FL', 54600),
	('Jordan', 'Price', 38, 'Minneapolis, MN', 89100);
    
    CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    order_total DECIMAL(10,2) NOT NULL,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES people(id)
);

INSERT INTO orders (order_date, order_total, person_id) VALUES
('2025-01-05', 129.99, 1),
('2025-01-10', 459.50, 1),
('2025-01-12', 89.00, 2),
('2025-01-15', 210.75, 3),
('2025-01-18', 340.10, 3);

SELECT * FROM people;
SELECT * FROM orders;
    
SELECT orders.id AS order_id, order_total, order_date, people.first_name, people.last_name
FROM orders 
JOIN people
	ON person_id = people.id;
    
    
DROP DATABASE foreignKey;