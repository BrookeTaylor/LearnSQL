create database land;
use land;

create table continent 
(
	continent_id int, 
    continent_name varchar(20),
    population bigint
);


/* adding something to query */
INSERT INTO continent (continent_id, continent_name, population)
VALUES
(1, 'Africa', 1300000000),
(2, 'Asia', 4700000000),
(3, 'Europe', 750000000),
(4, 'North America', 600000000),
(5, 'South America', 430000000),
(6, 'Oceania', 42000000),
(7, 'Antarctica', 1000);

/* select everything */
SELECT * FROM continent;

/* select specific columns */
SELECT 'North America', population FROM continent;

/* select rows w/ a condition - WHERE */
SELECT * FROM continent WHERE population > 1000000000;

/* Sort results - ORDER BY */
SELECT * FROM continent ORDER BY population DESC;

/* limit how many rows */
SELECT * FROM continent LIMIT 3;