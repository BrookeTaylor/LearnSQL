USE people;

-- find all people older than 30 
SELECT first_name, last_name, age FROM people WHERE age > 30; 

-- find people who make between 60k - 100k
SELECT first_name, last_name, salary FROM people WHERE salary BETWEEN 60000 AND 100000;

-- get all names starting w/ j
SELECT first_name FROM people WHERE first_name LIKE 'j%';

-- top 3 highest salaries 
SELECT first_name, last_name, salary FROM people ORDER BY salary DESC LIMIT 3; 

-- cities unique
SELECT DISTINCT city FROM people; 