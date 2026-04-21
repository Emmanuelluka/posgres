CREATE TABLE sales(
sale_id varchar(5) PRIMARY KEY,
product_id serial,
quantity_sold int,
sale_amounts numeric
);

SELECT * FROM sales;

INSERT INTO sales (sale_id,quantity_sold,sale_amounts)
VALUES
('S01',10,800.00),
('S03',25,500.00),
('S04',20,300.00),
('S05',30,100.00),
('S08',25,20.00),
('S09',12,50.00),
('S10',8,200.00);

drop table sales;
SELECT SUM(sale_amounts) AS "Total sales Amount" from sales;
SELECT AVG(sale_amounts) AS "Average Quantity sold per Transaction" from sales;
SELECT MAX(sale_amounts) AS "maximum sales Amount" from sales;
SELECT count(sale_amounts) AS "Total Number of Transaction" from sales;
SELECT Min(sale_amounts) AS "Minimum sales Amount" from sales;
SELECT sale_id,quantity_sold from  sales order by quantity_sold desc limit 1;



