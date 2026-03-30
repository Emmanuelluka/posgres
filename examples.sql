CREATE TABLE employees(
emp_id serial primary key , first_name  varchar(50),last_name varchar(50),email varchar(100),salary numeric,hire_date Date
);

INSERT INTO employees(first_name,last_name,email,salary,hire_date)
VALUES('Alice','Johnson','alice.j@company.com',75000,'2023-01-15');,
('Bob','smith','bob.s@company.com',62000,'2023-03-22'),('Charlie','Brown','Charlie.b@company.com',75000,'2023-01-15'),
('Amos','Tyson','amos.t@company.com',58000,'2023-05-10'),('Vicky','Tendo','vicky.t@company.com',65500,'2023-07-27'),
('valerie','jane','val.j@company.com',59400,'2023-12-15');

SELECT * from employees

DROP TABLE employees
ALTER TABLE employees ADD COLUMN department varchar(50)
SELECT * from employees ORDER BY last_name;
SELECT first_name, salary, hire_date from employees order by salary DESC;
update employees set department = 'emman'where emp_id=1;
--changing column_name--
SELECT emp_id, first_name surname, salary AS ok from employees; 
--it is used to combine two columns--
SELECT first_name ||' '|| last_name AS Fullname from employees;
--removing duplicates names--
SELECT DISTINCT first_name,last_name from employees;
-- 
