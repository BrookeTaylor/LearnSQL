USE land;

/* created country table */
CREATE TABLE country (
	country_id INT PRIMARY KEY,
    country_name VARCHAR(50),
    capital VARCHAR(50),
    population BIGINT,
    continent_id INT
);

/* insert data */
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



/* select all columns */
SELECT * FROM country;

/* select columns 'country_name' and 'capital' from the country table */ 
SELECT country_name, capital FROM country;

/* select countries in Asia (continent_id = 2) */
SELECT country_name, capital FROM country WHERE continent_id = 2;

/* Select countries with a population greater than 100 million */
SELECT country_name, population FROM country WHERE population > 100000000;

/* Select countires in Europe (continent_id = 3) where population is less than 90 million */
SELECT country_name, population FROM country WHERE continent_id = 3 AND population < 90000000;

/* Sort by name A -> Z */
SELECT country_name, population FROM country ORDER BY country_name ASC;

/* Sort by population, largest first */
SELECT country_name, population FROM country ORDER BY population DESC;

/* countries starting with "C" */
SELECT country_name FROM country WHERE country_name LIKE 'C%';

/* Capitals containing "on" */
SELECT country_name, capital FROM country WHERE capital LIKE '%on%';

