-- This is for creating the table"students"
CREATE TABLE students(
st_id int,
st_name text,
age int
);
INSERT INTO students(st_id, st_name, age) --THIS where the data id inserted into the table
VALUES
(01,'SAM',26),
(02,'Amos',22),
(03,'Ann',20);
ALTER TABLE students --This is have to add a column to the table
ADD COLUMN course VARCHAR;

ALTER TABLE students  --This is how to delete a column
DROP course
SELECT * FROM students;
UPDATE()
