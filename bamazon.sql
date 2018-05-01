CREATE DATABASE bamazon_db;
USE bamazon_db;

CREATE TABLE products(
    item_id INTEGER(10) NOT NULL,
    product_name VARCHAR(30) NOT NULL,
    department_name VARCHAR(30) NOT NULL,
    price INTEGER(10) NOT NULL,
    stock_quantity INTEGER(10) NOT NULL,
    PRIMARY KEY(item_id)
);

SELECT * FROM products;

INSERT INTO products (product_name, department_name, price, stock_quantity) 
VALUES ("Beats By Dre", "Electronics", 250, 25),
    ("RipStik", "Outdoor Recreation", 40, 15),
    ("Gas Grill", "Patio, Lawn & Garden", 450, 5),
    ("Cards Against Humanity", "Toys & Games", 25, 50),
    ("Amazon Echo", "Electronics", 100, 25),
    ("Vacuum", "Appliances", 180, 15),
    ("Instant Pot", "Home & Kitchen", 160, 10),
    ("Gift Card", "Entertainment", 25, 100),
    ("Fire Pit", "Outdoor Recreation", 80, 20),
    ("CHI Flat Iron", "Beauty", 250, 25);