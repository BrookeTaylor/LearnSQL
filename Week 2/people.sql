CREATE DATABASE people;

USE people;

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
    
SELECT * FROM people;

SELECT * FROM people ORDER BY age DESC; 

SELECT * FROM people WHERE first_name LIKE '%d%';

SELECT * FROM people WHERE city = 'Kansas City, MO' AND salary > 60000;
SELECT * FROM people WHERE city LIKE 'Kansas City%';

SELECT first_name, last_name, city FROM people;

SELECT first_name, last_name, city FROM people WHERE salary < 60000;

SELECT DISTINCT city FROM people;

SELECT DISTINCT city FROM people;

SELECT MAX(salary) FROM people;

SELECT AVG(salary) FROM people;

SELECT first_name, last_name, salary FROM people ORDER BY salary DESC LIMIT 3;

SELECT first_name, last_name, age FROM people ORDER BY age DESC LIMIT 2;

SELECT first_name, last_name, age FROM people WHERE age BETWEEN 30 AND 40;

SELECT * FROM people WHERE age BETWEEN 25 AND 40 AND first_name LIKE '%a%' ORDER BY salary DESC;

SELECT first_name, last_name, salary 
FROM people 
WHERE (city LIKE 'Charlotte%' OR city LIKE 'Nashville%') 
AND salary < 90000 
ORDER BY salary ASC; 

SELECT first_name, age, city 
FROM people 
WHERE (last_name LIKE '&s' OR city LIKE '%o%')
AND age > 30
ORDER BY age DESC;

