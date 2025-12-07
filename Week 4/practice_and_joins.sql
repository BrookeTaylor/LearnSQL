CREATE DATABASE lowes;
use lowes;

CREATE TABLE Products (
    product_id      INT PRIMARY KEY AUTO_INCREMENT,
    product_name    VARCHAR(100) NOT NULL,
    category        VARCHAR(50) NOT NULL,
    department		VARCHAR(50) NOT NULL,
    price           DECIMAL(10,2) NOT NULL,
    stock_qty       INT NOT NULL
);

INSERT INTO Products (product_name, category, department, price, stock_qty) VALUES
    ('Charleston Oak', 'Luxury Vinyl Plank', 'Flooring', 46.19, 350),
    ('Blue Ridge Pine', 'Luxury Vinyl Plank', 'Flooring', 50.91, 300),
    ('Jamestown Hickory', 'Luxury Vinyl Plank', 'Flooring', 46.19, 250),
    ('Florian oak', 'Laminate', 'Flooring', 23.67, 200),
    ('SHP65DM5N', 'Dishwashers', 'Appliances', 1129.00, 5),
    ('LRMXS2806S', 'Refrigerators', 'Appliances', 1899, 3),
    ('C2S950P2MS1', 'Ranges', 'Appliances', 4399.00, 1),
    ('Romex NM-B 12/2 - 250ft', 'Wire', 'Electrical', 139.00, 100),
    ('First Alert 2-in-1 Smoke & Carbon', 'Alarms', 'Electrical', 100.17, 32),
	('Gold Coast Maple', 'Luxury Vinyl Plank', 'Flooring', 54.72, 400),
    ('Driftwood Oak', 'Luxury Vinyl Plank', 'Flooring', 41.89, 275),
    ('Pergo Outlast+ Vintage Pewter Oak', 'Laminate', 'Flooring', 39.87, 180),
    ('GE GDT650SYVFS', 'Dishwashers', 'Appliances', 799.00, 7),
    ('Bosch SHPM65Z55N', 'Dishwashers', 'Appliances', 1049.00, 4),
    ('LG WM4000HWA', 'Washers', 'Appliances', 899.00, 6),
    ('GE GTD58EBSVWS', 'Dryers', 'Appliances', 749.00, 5),
    ('Samsung RF28T5001SR', 'Refrigerators', 'Appliances', 1299.00, 2),
    ('Whirlpool WRS555SIHZ', 'Refrigerators', 'Appliances', 1699.00, 3),
    ('Leviton 15A Duplex Outlet White', 'Outlets', 'Electrical', 1.98, 500),
    ('Eaton BR 20A Breaker', 'Breakers', 'Electrical', 10.49, 120),
    ('Halo 6" Recessed LED Can Light', 'Lighting', 'Electrical', 34.97, 60),
    ('Ring Floodlight Cam Wired Pro', 'Security', 'Electrical', 249.99, 10),
    ('SharkBite 1/2" Push-to-Connect Elbow', 'Fittings', 'Plumbing', 11.28, 90),
    ('SharkBite 3/4" Ball Valve', 'Valves', 'Plumbing', 18.49, 40),
    ('Kohler Cimarron Toilet', 'Toilets', 'Plumbing', 289.00, 15),
    ('Moen Adler Kitchen Faucet', 'Faucets', 'Plumbing', 89.00, 25),
    ('Oatey All-Purpose Cement', 'Adhesives', 'Plumbing', 7.49, 60),
    ('DEWALT 20V Max Drill/Driver Kit', 'Power Tools', 'Tools', 99.00, 50),
    ('Craftsman 10-Piece Combination Wrench Set', 'Hand Tools', 'Tools', 19.98, 75),
    ('Bosch 7-1/4" Circular Saw Blade', 'Saw Blades', 'Tools', 14.97, 85),
    ('Kobalt 24V Brushless Impact Driver', 'Power Tools', 'Tools', 119.00, 20),
    ('Valspar Ultra Interior Paint – White', 'Paint', 'Paint', 42.48, 200),
    ('KILZ Premium Primer – Gallon', 'Paint', 'Paint', 22.98, 150),
    ('Purdy 2.5" Nylox Brush', 'Brushes', 'Paint', 13.48, 90),
    ('Wagner Flexio 3500 Paint Sprayer', 'Sprayers', 'Paint', 189.00, 12),
    ('Miracle-Gro Potting Mix – 2 cu ft', 'Soil', 'Garden', 12.98, 180),
    ('Scotts Turf Builder – 13 lb', 'Lawn Care', 'Garden', 21.48, 140),
    ('Blackstone 4-Burner Griddle', 'Outdoor Cooking', 'Garden', 299.00, 5),
    ('Weber Spirit II E-210 Grill', 'Outdoor Cooking', 'Garden', 499.00, 4),
    ('Hillman 1-1/4" Wood Screws – 100ct', 'Fasteners', 'Hardware', 7.98, 250),
    ('Kwikset Tylo Entry Door Knob', 'Door Hardware', 'Hardware', 23.98, 45),
    ('Simpson Strong-Tie L-Bracket', 'Brackets', 'Hardware', 2.79, 190);







CREATE TABLE Customers (
    customer_id     INT PRIMARY KEY AUTO_INCREMENT,
    first_name      VARCHAR(50),
    last_name       VARCHAR(50),
    email           VARCHAR(100),
    phone           VARCHAR(20)
);

INSERT INTO Customers (first_name, last_name, email, phone) VALUES
	('Michael', 'Johnson', 'mjohnson@gmail.com', '5551230003'),
	('Ava', 'Martinez', 'ava.martinez@gmail.com', '5551230004'),
	('David', 'Nguyen', 'dnguyen@gmail.com', '5551230005'),
	('Emma', 'Williams', 'emma.williams@yahoo.com', '5551230006'),
	('Lucas', 'Harris', 'lucas.harris@gmail.com', '5551230007'),
	('Sophia', 'Clark', 'sophia.clark@gmail.com', '5551230008'),
	('Ethan', 'Brown', 'ethan.brown@gmail.com', '5551230009'),
    ('Noah', 'Anderson', 'noah.anderson@gmail.com', '5551230010'),
	('Liam', 'Moore', 'liam.moore@gmail.com', '5551230011'),
	('Olivia', 'Turner', 'olivia.turner@gmail.com', '5551230012'),
	('Isabella', 'Perez', 'isabella.perez@gmail.com', '5551230013'),
	('Mason', 'Gonzalez', 'mason.gonzalez@gmail.com', '5551230014'),
	('Harper', 'Ramirez', 'harper.ramirez@gmail.com', '5551230015'),
	('James', 'Walker', 'james.walker@gmail.com', '5551230016'),
	('Mia', 'Young', 'mia.young@gmail.com', '5551230017'),
	('Benjamin', 'Hall', 'benjamin.hall@gmail.com', '5551230018'),
	('Evelyn', 'Allen', 'evelyn.allen@gmail.com', '5551230019');





CREATE TABLE Orders (
    order_id        INT PRIMARY KEY AUTO_INCREMENT,
    customer_id     INT NOT NULL,
    product_id      INT NOT NULL,
    quantity        INT NOT NULL,
    order_date      DATE NOT NULL,

    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Orders (customer_id, product_id, quantity, order_date) VALUES
	(1, 1, 5, '2025-12-06'),
	(1, 1, 5, '2025-12-06'),
	(2, 2, 8, '2025-12-07'),
	(3, 5, 1, '2025-12-07'),
	(4, 8, 2, '2025-12-08'),
	(5, 9, 3, '2025-12-08'),
	(6, 12, 1, '2025-12-09'),
	(7, 14, 1, '2025-12-09'),
	(8, 19, 1, '2025-12-10'),
	(9, 20, 2, '2025-12-10'),
	(10, 23, 1, '2025-12-10'),
	(1, 27, 1, '2025-12-11'),
	(3, 28, 4, '2025-12-11'),
	(6, 3, 10, '2025-12-12'),
	(7, 4, 12, '2025-12-12'),
	(9, 6, 1, '2025-12-13');


-- PRACTICE QUESTIONS

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;


-- 1. Count how many products you have. 
SELECT COUNT(*) AS total_products
FROM products;


-- Count only appliances
SELECT COUNT(*) AS total_appliance_products
FROM products 
WHERE department = 'Appliances';


-- AVERAGE PRICE OF ALL PRODUCTS
SELECT AVG(price) AS avg_price
FROM products;


-- AVERAGE PRICE BY DEPT
SELECT department, AVG(price) AS avg_price
FROM products 
GROUP BY department;


-- total stock per department
SELECT department, SUM(stock_qty) AS total_stock
FROM products 
GROUP BY department;


-- join each order w/ customer name 
SELECT order_id, order_date, customers.first_name, customers.last_name, quantity
FROM orders 
JOIN customers 
	ON customers.customer_id = orders.customer_id 
ORDER BY order_id;


-- how many orders each customer has
SELECT first_name, last_name, COUNT(orders.order_id) AS total_orders
FROM customers
JOIN orders
	ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_id, first_name, last_name
ORDER BY total_orders DESC;


-- sale price on 'Charleston Oak' @ 38.99 
UPDATE products
SET price = 38.99 
-- WHERE product_name = 'Charleston Oak' -- need to use KEY column in safe mode... 
WHERE product_id = 1;

-- confrim price adjustment
SELECT product_name, price
FROM products
WHERE product_name = 'Charleston Oak';


-- 3 table join
SELECT order_id, order_date, customers.first_name, customers.last_name, products.product_name, products.department, quantity, products.price, (orders.quantity * products.price) AS total_order_line
FROM orders 
JOIN customers ON orders.customer_id = customers.customer_id
JOIN products ON orders.product_id = products.product_id
ORDER BY order_id;


DROP DATABASE lowes;

