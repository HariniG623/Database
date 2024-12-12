
CREATE DATABASE medingen;

USE medingen;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    image_url VARCHAR(255)
);

CREATE TABLE reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    rating INT NOT NULL,
    comment TEXT,
    FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE TABLE salts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    content VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES products(id)
);
INSERT INTO products (name, price, description, image_url) VALUES 
('Dolo 650 mg', 34.00, 'Pain relief and fever medication', '/images/dolo650.jpg');

INSERT INTO reviews (product_id, rating, comment) VALUES 
(1, 4, 'Effective for fever relief.');

INSERT INTO salts (product_id, content) VALUES 
(1, 'Paracetamol 650 mg');