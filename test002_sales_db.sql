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

INSERT INTO orders (customer_id, order_date, total_amount, delivery_address, status) VALUES
(1, NOW(), 69,97, '123 Main St, Anytown, USA', 'delivered'),
(1, DATE_SUB(NOW(), INTERVAL 3 DAY), 59.98, '123 Main St, Anytown, USA', 'delivered'),
(2, DATE_SUB(NOW(), INTERVAL 2 MONTH), 119,97, '456 High St, Bigcity, USA', 'delivered'),
(2, DATE_SUB(NOW(), INTERVAL 15 DAY), 59,98, '456 High St, Bigcity, USA', 'delivered'),
(1, DATE_SUB(NOW(), INTERVAL 8 DAY), 169.93, '123 Main St, Anytown, USA', 'shipped');;

INSERT INTO order_details (order_id, product_id, quantity, price_per_unit) VALUES
(1, 1, 2, 19.99),
(1, 2, 1, 29.99),
(2, 1, 3, 19.99),
(2, 3, 1, 39.99),
(3, 3, 3, 39.99),
(4, 2, 2, 29.99),
(5, 2, 3, 29.99),
(5, 1, 4, 19.99);


