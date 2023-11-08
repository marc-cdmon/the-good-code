CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category VARCHAR(50),
    quantity_in_stock INT DEFAULT 0,
    discontinued BOOLEAN DEFAULT FALSE
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10, 2) NOT NULL,
    delivery_address TEXT NOT NULL,
    status ENUM('processing', 'shipped', 'delivered', 'cancelled') DEFAULT 'processing',
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_details (
    order_details_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price_per_unit DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

INSERT INTO products (name, price, category, quantity_in_stock) VALUES
('UltraWidget', 19.99, 'Widgets', 100),
('MegaWidget', 29.99, 'Widgets', 150),
('WonderWidget', 39.99, 'Gadgets', 200);

INSERT INTO customers (first_name, last_name, email, password) VALUES
('Jane', 'Doe', 'jane.doe@example.com', 'password123'),
('John', 'Smith', 'john.smith@example.com', 'password123');


