-- UPDATE & DELETE command in MySQL
-- CRUD :-
-- C - Create
-- R - Read
-- U - Update
-- D - Delete

 
USE allinonedb;

SELECT * FROM employees;

-- we are trying to update the salary of Priya Mehta whose emp_id is 34
UPDATE employees
SET emp_salary = 300000 
WHERE emp_id = 34;

SET SQL_SAFE_UPDATES = 1;  -- if the value is 1 then the safe update mode is on
SET SQL_SAFE_UPDATES = 0;  -- if the value is 0 then the safe update mode is off


UPDATE employees
SET emp_city = 'Indore'
WHERE emp_name = "Pooja Arora" AND emp_id = 43;

SELECT * FROM employees;



UPDATE employees
SET emp_city = "Indore"
Where emp_city = "Mumbai";

SET SQL_SAFE_UPDATES = 0;

SELECT * FROM employees 
WHERE emp_city = "Indore";

SELECT * FROM employees;

SELECT * FROM employees
WHERE emp_id IN (33, 36, 39, 42);

UPDATE employees 
SET emp_city = "Mumbai", emp_bonus = emp_bonus * 1.10
WHERE emp_id IN (33, 36, 39, 42);


UPDATE seller
SET rating = 4.5
WHERE seller_name = "Pooja Bakery";

-- UPDATE seller 
-- SET rating = 
-- CASE 
-- 	WHEN product_name LIKE "%cookies" THEN 3.5
--     WHEN product_name LIKE "%cream_roll" THEN 7.5
--     WHEN product_name LIKE "%Ponga" THEN 9.9
--     ELSE rating
-- END;



-- UPDATE seller 
-- SET rating = 
-- CASE 
-- 	WHEN rating < 4 THEN 3.5
--     WHEN rating = 5 THEN 7.5
--     WHEN rating BETWEEN 3 AND 4 THEN 9.9
--     ELSE rating
-- END;




-- DELETING Records in MySQL using DELETE Command
DELETE FROM employees;
-- WHERE emp_age = 29;

DROP TABLE employees;

SELECT * FROM employees;
-- WHERE emp_age = 29;



