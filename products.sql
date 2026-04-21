CREATE TABLE products(
product_id int primary key,
product_name varchar not null,
price numeric not null,
quantity_available int
);
SELECT * FROM products;
INSERT INTO products(product_id,product_name,price,quantity_available) 
VALUES(121,'Laptop',800,10),
(122,'Smartphone',500,15),
(123,'Tablet',300,20),
(124,'Headphone',100,30),
(125,'Mouse',20,25),
(126,'Keyboard',50,12),
(127,'Monitor',200,8),
(128,'Printer',150,5),
(129,'External Hard Drive',120,0),
(130,'USB Flash Drive',10,3);

SELECT MIN(price) as Cheapest FROM products;
SELECT Count(product_name) as Number_of_records FROM products;
SELECT SUM(price) as TOTAL FROM products;
SELECT MAX(price) as HIGHEST FROM products;
SELECT AVG(price) as Middle FROM products;

SELECT product_id,product_name,price,quantity_available,price * quantity_available AS Amount FROM products;

SELECT product_id,product_name,price,quantity_available FROM products where product_id between 125 and 128;

SELECT * from products offset 4 limit 4;

SELECT product_id,product_name,price,quantity_available FROM products where product_name between 'Mouse' and 'Printer';

SELECT product_id,product_name,price,quantity_available FROM products where price between 200 and 500;