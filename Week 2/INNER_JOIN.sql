CREATE DATABASE product;

USE product;

CREATE TABLE product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryName VARCHAR(50)
);

-- products
INSERT INTO product (ProductID, ProductName, CategoryName) VALUES
(39, 'Chartreuse verte', 'Beverages'),
(2, 'Chang', 'Beverages'),
(24, 'Guaraná Fantástica', 'Beverages'),
(34, 'Sasquatch Ale', 'Beverages'),
(35, 'Steeleye Stout', 'Beverages'),
(1, 'Chais', 'Beverages'),
(38, 'Côte de Blaye', 'Beverages'),
(43, 'Ipoh Coffee', 'Beverages'),
(67, 'Laughing Lumberjack Lager', 'Beverages'),
(70, 'Outback Lager', 'Beverages'),
(75, 'Rhönbräu Klosterbier', 'Beverages'),
(76, 'Lakkalikööri', 'Beverages'),

(15, 'Genen Shouyu', 'Condiments'),
(8, 'Northwoods Cranberry Sauce', 'Condiments'),
(77, 'Original Frankfurter grüne Soße', 'Condiments'),
(6, 'Grandma''s Boysenberry Spread', 'Condiments'),
(44, 'Gula Malacca', 'Condiments'),
(5, 'Chef Anton''s Gumbo Mix', 'Condiments'),
(4, 'Chef Anton''s Cajun Seasoning', 'Condiments'),
(3, 'Aniseed Syrup', 'Condiments'),
(65, 'Louisiana Fiery Hot Pepper Sauce', 'Condiments'),
(66, 'Louisiana Hot Spiced Okra', 'Condiments'),
(63, 'Vegie-spread', 'Condiments'),
(61, 'Sirop d''érable', 'Condiments'),

(19, 'Teatime Chocolate Biscuits', 'Confections'),
(20, 'Sir Rodney''s Marmalade', 'Confections'),
(21, 'Sir Rodney''s Scones', 'Confections'),
(25, 'NuNuCa Nuß-Nougat-Creme', 'Confections'),
(26, 'Gumbär Gummibärchen', 'Confections'),
(27, 'Schoggi Schokolade', 'Confections'),
(68, 'Scottish Longbreads', 'Confections'),
(16, 'Pavlova', 'Confections'),
(62, 'Tarte au sucre', 'Confections'),
(47, 'Zaanse koeken', 'Confections'),
(48, 'Chocolade', 'Confections'),
(50, 'Valkoinen suklaa', 'Confections'),
(49, 'Maxilaku', 'Confections'),

(31, 'Gorgonzola Telino', 'Dairy Products'),
(69, 'Gudbrandsdalsost', 'Dairy Products'),
(59, 'Raclette Courdavault', 'Dairy Products'),
(12, 'Queso Manchego La Pastora', 'Dairy Products'),
(60, 'Camembert Pierrot', 'Dairy Products'),
(32, 'Mascarpone Fabioli', 'Dairy Products'),
(11, 'Queso Cabrales', 'Dairy Products'),
(33, 'Geitost', 'Dairy Products'),
(72, 'Mozzarella di Giovanni', 'Dairy Products'),
(71, 'Fløtemysost', 'Dairy Products'),

(52, 'Filo Mix', 'Grains/Cereals'),
(56, 'Gnocchi di nonna Alice', 'Grains/Cereals'),
(22, 'Gustaf''s Knäckebröd', 'Grains/Cereals'),
(23, 'Tunnbröd', 'Grains/Cereals'),
(64, 'Wimmers gute Semmelknödel', 'Grains/Cereals'),
(57, 'Ravioli Angelo', 'Grains/Cereals'),
(42, 'Singaporean Hokkien Fried Mee', 'Grains/Cereals'),

(9, 'Mishi Kobe Niku', 'Meat/Poultry'),
(29, 'Thüringer Rostbratwurst', 'Meat/Poultry'),
(54, 'Tourtière', 'Meat/Poultry'),
(55, 'Pâté chinois', 'Meat/Poultry'),
(17, 'Alice Mutton', 'Meat/Poultry'),
(53, 'Perth Pasties', 'Meat/Poultry'),

(14, 'Tofu', 'Produce'),
(7, 'Uncle Bob''s Organic Dried Pears', 'Produce'),
(28, 'Rössle Sauerkraut', 'Produce'),
(74, 'Longlife Tofu', 'Produce'),
(51, 'Manjimup Dried Apples', 'Produce'),

(18, 'Carnarvon Tigers', 'Seafood'),
(13, 'Konbu', 'Seafood'),
(30, 'Nord-Ost Matjeshering', 'Seafood'),
(40, 'Boston Crab Meat', 'Seafood'),
(10, 'Ikura', 'Seafood'),
(36, 'Inlagd Sill', 'Seafood'),
(37, 'Gravad lax', 'Seafood'),
(41, 'Jack''s New England Clam Chowder', 'Seafood'),
(45, 'Røgede sild', 'Seafood'),
(46, 'Spegesild', 'Seafood'),
(58, 'Escargots de Bourgogne', 'Seafood'),
(73, 'Röd Kaviar', 'Seafood');

-- select, join
SELECT * FROM product;


-- catagories 




CREATE TABLE categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50),
    Description VARCHAR(255)
);


INSERT INTO categories (CategoryID, CategoryName, Description) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');



USE product;
SELECT * FROM product;
SELECT * FROM categories;


SELECT ProductID, ProductName, categories.CategoryName
FROM product
INNER JOIN categories ON product.CategoryName = categories.CategoryName;


DROP DATABASE product;

