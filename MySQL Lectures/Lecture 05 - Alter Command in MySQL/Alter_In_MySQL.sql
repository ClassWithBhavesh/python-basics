-- Alter Command
USE allinonedb;

SELECT * FROM employees;

ALTER TABLE employees RENAME COLUMN emp_Ka_Mail TO emp_mail;  -- It will rename the column name 

ALTER TABLE employees ADD COLUMN emp_blood_group VARCHAR(3);  -- IT will add a new column at the end of the table
ALTER TABLE employees ADD COLUMN emp_blood_group VARCHAR(3) FIRST;  -- IT will add a new column at the starting of the table
ALTER TABLE employees ADD COLUMN emp_blood_group1 VARCHAR(3) AFTER emp_name;  -- IT will add a new column after your desired columnName
SELECT * FROM employees;

ALTER TABLE employees DROP COLUMN emp_blood_group1;
ALTER TABLE employees DROP COLUMN emp_blood_group;
SELECT * FROM employees;


ALTER TABLE employees CHANGE emp_salary emp_sal INT;  -- unlike RENAME, CHANGE command will rename the column as well as it's data-type
ALTER TABLE employees MODIFY emp_sal DECIMAL(8,2);
SELECT * FROM employees;


ALTER TABLE employees MODIFY emp_sal DECIMAL(8,2) DEFAULT 15000;
DESC employees;

-- ALTER TABLE employees ADD CONSTRAINT constraintName(columnName) constraintValue;
-- ALTER TABLE employees ADD CONSTRAINT emp_age_check CHECK(emp_sal) emp_age > 18;



