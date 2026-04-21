CREATE TABLE gadgets(gedget_id SERIAL PRIMARY KEY,gadget_name varchar,no_sold int,unit_cost numeric(10,2),sale_date date);
INSERT INTO gadgets(gadget_name,no_sold,unit_cost, sale_date)VALUES

('Headphone',6,20000,'2026-01-20'),
('Laptop',2,700000,'2026-01-20'),
('Headphone',3,20000,'2026-01-22'),
('Monitor',4,400000,'2026-01-20'),
('Keyboard',7,90000,'2026-01-22'),
('Headphone',8,20000,'2026-01-23'),
('Keyboard',4,90000,'2026-01-20'),
('Keyboard',6,90000,'2026-01-24'),
('Headphone',2,20000,'2026-01-26'),
('Monitor',3,400000,'2026-01-26'),
('Laptop',2,70000,'2026-01-30'),
('Laptop',3,70000,'2026-01-31');

SELECT * FROM gadgets;

SELECT gadget_name, sum(no_sold) As Total_sales from gadgets group by gadget_name;
SELECT gadget_name,sale_date, sum(no_sold) As Total_sales from gadgets group by gadget_name,sale_date;
SELECT sale_date, sum(no_sold) As Total_sales from gadgets group by sale_date;
SELECT gadget_name, sum(no_sold) As Total_sales from gadgets group by gadget_name having sum(no_sold) >7;
SELECT gadget_name,COUNT(gadget_name) from gadgets group by gadget_name;
