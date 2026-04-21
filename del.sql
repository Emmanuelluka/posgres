CREATE TABLE product(s_no serial primary key,
product VARCHAR, price numeric, delivery_date DATE);
SELECT * FROM product;
INSERT INTO product(product, price ,delivery_date)
VALUES('Generator', 1200000,'2026-03-26'),
('Laptop', 1000000,'2026-03-30'),
('Smart Tv 43', 700000,'2026-04-14'),
('Tv stand', 200000,'2026-04-14'),
('Office Table', 300000,'2026-04-18'),
('Headphones', 75000,'2026-03-28'),
('Wireless keyboard', 70000,'2026-04-20'),
('Monitor', 500000,'2026-03-22');

ALTER TABLE product
ADD COLUMN discount TEXT;
UPDATE product set discount='30%' where s_no=1;
UPDATE product set discount='25%' where s_no=2;
UPDATE product set discount='50%' where s_no=3;
UPDATE product set discount='30%' where s_no=4;
UPDATE product set discount='40%' where s_no=5;
UPDATE product set discount='30%' where s_no=6;
UPDATE product set discount='25%' where s_no=7;
UPDATE product set discount='10%' where s_no=8;

UPDATE product set delivery_date='2026-04-18' where s_no=3;
SELECT product, price,discount FROM product;

DELETE FROM product where s_no=3;
SELECT product, 0.3*price as discount_amount from product;

SELECT * FROM product where product LIKE '%Tv';
SELECT * FROM product where price >500000;


