-- SQL Review
CREATE DATABASE review;
USE review;

create table continent 
(
	continent_id int, 
    continent_name varchar(20),
    population bigint
);

INSERT INTO continent (continent_id, continent_name, population)
VALUES
(1, 'Africa', 1300000000),
(2, 'Asia', 4700000000),
(3, 'Europe', 750000000),
(4, 'North America', 600000000),
(5, 'South America', 430000000),
(6, 'Oceania', 42000000),
(7, 'Antarctica', 1000);

CREATE TABLE country (
	country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    capital VARCHAR(50),
    population BIGINT,
    continent_id INT
);

INSERT INTO country (country_id, country_name, capital, population, continent_id)
VALUES
(1, 'United States', 'Washington, D.C.', 331000000, 4),  -- North America
(2, 'Canada', 'Ottawa', 38000000, 4),
(3, 'Mexico', 'Mexico City', 128000000, 4),

(4, 'Brazil', 'Brasilia', 213000000, 5),  -- South America
(5, 'Argentina', 'Buenos Aires', 45000000, 5),

(6, 'China', 'Beijing', 1400000000, 2),   -- Asia
(7, 'India', 'New Delhi', 1380000000, 2),
(8, 'Japan', 'Tokyo', 126000000, 2),

(9, 'Germany', 'Berlin', 83000000, 3),    -- Europe
(10, 'France', 'Paris', 67000000, 3);



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


CREATE TABLE categories (
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(100) NOT NULL,
department VARCHAR(100)
);

CREATE TABLE product (
	product_id INT PRIMARY KEY AUTO_INCREMENT,
    item_number VARCHAR(20) NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    category_id INT
);

INSERT INTO categories (category_name, department)
VALUES
  ('Luxury Vinyl Plank', 'Flooring'),
  ('Carpet', 'Flooring'),
  ('Kitchen Faucets', 'Plumbing'),
  ('Power Tools', 'Tools'),
  ('Lighting Fixtures', 'Electrical');
  
    INSERT INTO product (item_number, title, description, price, category_id)
VALUES
  -- LVP Flooring (category_id = 1)
  ('1001234567', 'LVP - Weathered Oak 7x48', 'Waterproof click-lock vinyl plank.', 2.49, 1),
  ('1001234568', 'LVP - Driftwood Gray 8x48', 'Scratch-resistant vinyl plank flooring.', 3.19, 1),
  ('1001234569', 'LVP - Rustic Maple 6x36', 'Traditional warm-tone LVP.', 1.99, 1),

  -- Carpet (category_id = 2)
  ('2002345671', 'Berber Carpet - Sandstone', 'Stain-resistant loop pile carpet.', 1.89, 2),
  ('2002345672', 'Plush Carpet - Soft Ivory', '12-ft width plush carpet.', 2.29, 2),

  -- Faucets (category_id = 3)
  ('3003456781', 'Pull-Down Kitchen Faucet - Stainless',
   'Single-handle with sprayer, 1.8 GPM.', 189.00, 3),
  ('3003456782', 'Commercial Style Faucet - Matte Black',
   'Spring-neck dual function sprayer.', 249.00, 3),

  -- Power Tools (category_id = 4)
  ('4004567891', '20V Brushless Drill Kit',
   'Includes drill, 2 batteries, charger.', 149.00, 4),
  ('4004567892', 'Impact Driver 20V',
   'High-torque compact driver.', 129.00, 4),
  ('4004567893', 'Circular Saw 7-1/4 in 20V',
   'Brushless motor, tool-only.', 119.00, 4),

  -- Lighting (category_id = 5)
  ('5005678901', '3-Light Vanity - Brushed Nickel',
   'Dimmable bathroom vanity fixture.', 79.98, 5),
  ('5005678902', 'Flush Mount LED - 14-inch',
   'Energy-efficient LED ceiling light.', 39.98, 5),
  ('5005678903', 'Pendant Light - Black Modern',
   'Kitchen island pendant light.', 89.00, 5);
   
-- Review Questions

/*
	Write a SQL query that returns all columns for products that cost more than $20, 
    sorted by price from highest to lowest.
*/
SELECT * FROM products 
WHERE price > 20.00 
ORDER BY price DESC; 

/*
	Write a query that returns only the name and price of products cheaper than $50, 
    and limit the results to 2 rows.
*/
SELECT name, price 
FROM products
WHERE price < 50
LIMIT 2;

/* 
	Write a query that returns the three cheapest products, 
    but only include items priced at $10 or more.
*/
SELECT name, price 
FROM products 
WHERE price > 10
ORDER BY price ASC
LIMIT 3;

/*
	Write a SQL query that returns the first_name, last_name, and city of all people who:

		* are older than 30
		* AND have a salary above 50,000
		* ordered by salary highest → lowest
*/
SELECT first_name, last_name, city
FROM people
WHERE age > 30 AND salary > 50000
ORDER BY salary DESC;

/*
	Write a query that shows the product name and the category name for every product.
*/
SELECT title, categories.category_name 
FROM product 
INNER JOIN categories
	ON product.category_id = categories.category_id;


/*
	Using your same tables:
    
    Write a query that returns: 
		* product name
        * category name
        * price
        
	But only for products that cost more than $20, and sort results by 
    category_name A -> Z, then price high -> low. 
*/
SELECT title, price, categories.category_name 
FROM product 
INNER JOIN categories
	ON product.category_id = categories.category_id
WHERE price > 20 
ORDER BY category_name ASC, price DESC;




/*
	Question 7
    
    Write a SQL query that returns each continent’s name and 
    how many countries belong to that continent.
    
    Requirements: 
		* Use INNER JOIN
        * Use GROUP BY
        * Return two columns:
			> continent_name
            > country_count
		* Sort the results so the continent with the most countries appears first
*/
SELECT continent_name,
	COUNT(country.continent_id) AS country_count
FROM continent
LEFT JOIN country 
	ON country.continent_id = continent.continent_id
GROUP BY continent.continent_id, continent.continent_name
ORDER BY country_count DESC;

DROP DATABASE review;


