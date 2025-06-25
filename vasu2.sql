CREATE DATABASE market;
use market;
create table items(
s_no INT PRIMARY KEY AUTO_INCREMENT,
product VARCHAR(15),
price decimal(5,2),
stock int);
INSERT INTO items (product, price, stock) VALUES
('biscuits', 10.00, 25),
('chocolates', 25.50, 15),
('chips', 15.75, 30),
('cookies', 12.25, 20),
('juice', 30.00, 12),
('milk', 22.50, 18),
('bread', 18.00, 22),
('eggs', 35.00, 10),
('rice', 45.50, 8),
('pasta', 28.75, 14);
SELECT * FROM items;
SET SQL_SAFE_UPDATES = 0;
update items set price= 10.00 where product='cookies';
update items set stock= 20 where stock=22;
DELETE FROM items WHERE stock<15;