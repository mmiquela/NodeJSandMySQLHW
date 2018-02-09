/*Create a MYSQL Database called Bamazon*/
DROP DATABASE IF EXISTS Bamazon;
CREATE DATABASE Bamazon;
USE Bamazon;

/*Then create a Table inside that database called products.  The products table should have each of the following columns:
item_id (unique id for each product)
product_name (Name of product)
department_name 
price (cost to customer)
stock_quantity (how much of the product is available in stores)*/
CREATE TABLE Products(
  item_id INT(10) AUTO_INCREMENT NOT NULL,
  product_name VARCHAR(200) NOT NULL,
  department_name VARCHAR(200) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  stock_quantity INT(10) NOT NULL,
  PRIMARY KEY (item_id)
);

/*Populate this database with around 10 different products. (i.e. Insert "mock* data rows into this database and table).*/
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("CP378 8 Wood Tambourine, Headed, Single Row Jingles","instrument",12.77, 28);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("Gold Tone Plucky Banjo (Five String, Vintage Brown)","instrument",284.25,17);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("CODA DK-040 Student Drum Sticks","supplies",6.19,15);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("First Act FP6215 Floor Tom with Mallets","supplies",21.83,31);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("RhythmTech RT1010 Tambourine, Nickel Jingles, Black","instrument",19.95,21);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("Dunlop 471R3N Max-Grip Jazz III, Red Nylon, 24/Bag","supplies",12.32,88);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("Shure SE535-V Sound Isolating Earphones with Triple High Definition MicroDrivers","supplies",449,10);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("EVH Minature Guitars EVH001 Frankenstein Mini Replica Guitar Van Halen, Red & White", "instrument",33.65, 4);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("Manhasset 48TA Tall Symphony Music Stand","supplies", 54.59, 28);
INSERT INTO Products(product_name, department_name, price, stock_quantity) VALUES ("RockJam Full Size Electric Guitar SuperKit with 20 Watt Amp, Guitar Stand, Case, Tuner, and Accessories","instrument",98.95,10);

CREATE TABLE Departments(
  department_id INT(10) AUTO_INCREMENT NOT NULL,
  department_name VARCHAR(200) NOT NULL,
  over_head_cost DECIMAL(10,2) NOT NULL,
  total_sales DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (department_id)
);

INSERT INTO Departments(department_name, over_head_cost,total_sales) VALUES ("instrument",100000,0.00);
INSERT INTO Departments(department_name, over_head_cost,total_sales) VALUES ("supplies",10000,0.00);

ALTER TABLE Products ADD COLUMN product_sales DECIMAL(10,2) NOT NULL;
UPDATE Products set product_sales = price * stock_quantity;

CREATE VIEW bamazon.TotalProfits AS SELECT department_id, department_name, over_head_cost, total_sales, over_head_cost-total_sales AS TotalProfit FROM Departments;
select department_name, sum(product_sales) from Products GROUP BY department_name;
UPDATE totalprofits set total_sales =6732.86 where department_name ='instrument';
UPDATE totalprofits set total_sales =7872.26 where department_name ='supplies';
UPDATE Departments set total_sales =6732.86 where department_name ='instrument';
UPDATE Departments set total_sales =7872.26 where department_name ='supplies';