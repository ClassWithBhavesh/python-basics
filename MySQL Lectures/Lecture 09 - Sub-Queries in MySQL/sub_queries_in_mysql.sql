-- Sub-Queries in MySQL

USE mixeddb;

SELECT * FROM employees;
SELECT * FROM products;

-- filter out all the employee earning more than 60000
SELECT * FROM employees
WHERE salary > 60000;

-- bring out all the employee whose salary is greater than the avg. emp salary
-- SELECT emp_name, AVG(salary) FROM employees
-- GROUP BY emp_name;
-- SELECT * FROM employees

SELECT AVG(salary) FROM employees;

SELECT * FROM employees
WHERE salary > 68900;
-- using sub-query 

SELECT * FROM employees
WHERE salary > (
	SELECT AVG(salary) FROM employees
);

UPDATE employees 
SET salary = 70000
WHERE emp_name = "Rahul";

SELECT * FROM employees;


-- find the maximum salary among all the employees
SELECT MAX(salary) FROM employees;

-- Employees with highest salary using sub-query
SELECT * FROM employees
WHERE salary = (
	SELECT MAX(salary) FROM employees
);

UPDATE employees
SET salary = 92000
WHERE emp_name IN ("Rahul", "Amit");

SELECT * FROM employees;



-- Employees with same department
-- SELECT * FROM employees 
-- WHERE emp_dpt = "HR";

-- Employees working in same department as "Amit"
SELECT * FROM employees
WHERE emp_dpt = (
	SELECT emp_dpt FROM employees
	WHERE emp_name = "Amit"
);



-- Employees earning more than any of finance employee
SELECT emp_name, salary FROM employees
WHERE salary > ANY (
	SELECT salary FROM Employees
    WHERE emp_dpt = "Finance"
);

SELECT * FROM products;



-- products cheaper than all the electronics product
SELECT prod_name, price FROM products
WHERE price < ALL(
	SELECT price FROM products
    WHERE category = "Electronics"
);



-- 
SELECT * FROM employees;
SELECT emp_dpt, AVG(salary) FROM
(
	SELECT * FROM employees
    WHERE city = "Indore"
) AS emps_in_indore
GROUP BY emp_dpt;


