CREATE DATABASE inventory_db;

USE inventory_db;

CREATE TABLE categories (
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    quantity INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id)
);

INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Books');

INSERT INTO products (name, description, price, quantity, category_id) VALUES
('Laptop', 'High-performance laptop', 1200.00, 10, 1),
('T-shirt', 'Cotton t-shirt', 20.00, 50, 2),
('Python Programming Book', 'Introduction to Python programming', 35.00, 30, 3);