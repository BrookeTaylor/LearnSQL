CREATE DATABASE crud;
USE crud;


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
    
    
-- CREATE
INSERT INTO people (first_name, last_name, age, city, salary) 
VALUES ('Brooke', 'Taylor', '39', 'Charlotte', 75000);

-- READ 
SELECT * FROM people;

-- UPDATE
UPDATE people 
SET salary = 100000 
WHERE id = 11; 

-- delete
DELETE FROM people 
WHERE id = 11; 

DROP DATABASE crud;
