-- Clause in MySQL 

USE allinonedb;

SELECT * FROM employees;

SELECT emp_name, emp_city, emp_age FROM employees;

-- 1. WHERE 
SELECT emp_name, emp_city FROM employees
WHERE emp_city = 'Indore';

SELECT * FROM employees;

-- filter out of the employees which earns more than 25k salary 
SELECT emp_name, emp_salary FROM employees
WHERE emp_salary > 25000 AND emp_salary < 35000;


-- 2. LIMIT Clause 
SELECT * FROM employees
LIMIT 5;

-- SELECT COUNT(*) FROM employees
-- WHERE emp_role = 'Developer';


-- SELECT * FROM employees
-- WHERE emp_role = 'Developer'
-- LIMIT 4;



-- DISTINCT 
SELECT DISTINCT emp_city FROM employees;


-- LIKE 
SELECT * FROM employees;

-- SELECT * FROM employees
-- WHERE emp_name = 'Divya Sharma';

SELECT * FROM employees
WHERE emp_name LIKE "%Sharma";

SELECT * FROM employees
WHERE emp_name LIKE "N%";

SELECT * FROM employees
WHERE emp_name LIKE "%Ha%";


SELECT emp_name FROM employees;



-- ORDER BY
SELECT * FROM employees
ORDER BY emp_name ASC;

SELECT * FROM employees
ORDER BY emp_name DESC;

SELECT * FROM employees 
ORDER BY emp_age DESC;



-- GROUP BY
SELECT * FROM employees;

SELECT emp_role, COUNT(*) as Number_Of_Employees_In_Same_Role FROM employees
GROUP BY emp_role;


-- Having 
USE allinonedb;
SELECT * FROM employees;

-- SELECT emp_dept, COUNT(*) FROM employees
-- GROUP BY emp_dept;

SELECT emp_dept, COUNT(*) AS number_of_employees FROM employees
GROUP BY emp_dept
HAVING COUNT(*) > 3;


SELECT emp_city, COUNT(*) FROM employees
GROUP BY emp_city
HAVING AVG(emp_salary) > 40000;


SELECT emp_dept, SUM(emp_salary) FROM employees
GROUP BY emp_dept;


SELECT SUM(emp_salary) total_salary_expense FROM employees;


SELECT emp_role, COUNT(*) FROM employees
GROUP BY emp_role
HAVING SUM(emp_bonus) > 10000;


SELECT emp_dept, MAX(emp_salary) highest_salary FROM employees
GROUP BY emp_dept
ORDER BY MAX(emp_salary) DESC
LIMIT 1;




