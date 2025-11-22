CREATE DATABASE company;

USE company;

CREATE TABLE employees (
	id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50), 
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary INT,
    location VARCHAR(50)
);


INSERT INTO employees (first_name, last_name, email, department, salary, location)
VALUES
('Brooke', 'Taylor', 'brooke.taylor@company.com', 'Engineering', 90000, 'Charlotte'),
('Toyia', 'Smith', 'toyia.smith@company.com', 'HR', 72000, 'Charlotte'),
('Sariah', 'Taylor', 'sariah.taylor@company.com', 'Design', 68000, 'Kansas City'),
('Darnell', 'Johnson', 'darnell.johnson@company.com', 'Management', 105000, 'Charlotte'),
('Clifford', 'Jones', 'cliff.jones@company.com', 'Engineering', 85000, 'Kansas City');


SELECT * FROM employees;

SELECT first_name, last_name, salary FROM employees;

SELECT first_name, last_name, salary FROM employees WHERE salary > 80000;

SELECT location, COUNT(*) AS num_employees FROM employees GROUP BY location;
