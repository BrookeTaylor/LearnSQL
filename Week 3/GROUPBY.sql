CREATE DATABASE lowes;

USE lowes;

CREATE TABLE categories (
category_id INT PRIMARY KEY AUTO_INCREMENT,
category_name VARCHAR(100) NOT NULL,
department VARCHAR(100)
);

CREATE TABLE products (
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
  
  INSERT INTO products (item_number, title, description, price, category_id)
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
   
   
   
SELECT * FROM categories; 
SELECT * FROM products;

SELECT item_number, title, price, categories.category_name, categories.department 
FROM products
INNER JOIN categories ON products.category_id = categories.category_id
ORDER BY price DESC LIMIT 5;



-- “How many products are in each category?”
SELECT category_name, 
	COUNT(products.product_id) AS product_count
FROM categories
LEFT JOIN products
	ON categories.category_id = products.category_id
GROUP BY category_name;



-- “What is the average price per category?”
SELECT category_name,
	AVG(products.price) AS avg_price
FROM categories
JOIN products
	ON categories.category_id = products.category_id
GROUP BY category_name;



-- “Total inventory cost per department?”
SELECT category_name,
	SUM(products.price) AS total_value
FROM categories
JOIN products
	ON categories.category_id = products.category_id
GROUP BY category_name;



-- “Most expensive product per category?”
SELECT category_name,
	MAX(products.price) AS highest_price
FROM categories
JOIN products
	ON categories.category_id = products.category_id
GROUP BY category_name;

DROP DATABASE lowes;