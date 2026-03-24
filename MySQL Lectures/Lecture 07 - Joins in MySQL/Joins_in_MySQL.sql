-- Joins
USE allinonedb;
CREATE TABLE department(
	id INT PRIMARY KEY,
    dept_name VARCHAR(20),
    dept_course VARCHAR(10)
);

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    dept_id INT,
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES department(id),
    teacher_name VARCHAR(30)
);


INSERT INTO department(id, dept_name, dept_course)
VALUES 
(121, "Science", "B.Sc."),
(122, "Commerce", "B.Comm"),
(144, "Literature", "BA"),
(168, "P.E.", "P.E.");

DROP TABLE teacher;
INSERT INTO teacher(id, dept_id, teacher_name)
VALUES 
(12124, 168, "Sanjay Goud"),
(12178, 144, "Preeti Verma"),
(12196, 121, "Bhagwat Sharma"),
(12132, 121, "Vikrant Soni"),
(12487, 144, "Surbhi Vishwakarma"),
(12426, 121, "Yogesh Nema");

SELECT * FROM department;
SELECT * FROM teacher;

DESC department;
DESC teacher;



-- Inner Join - 
SELECT * FROM department
INNER JOIN teacher
ON department.id = teacher.dept_id;

SELECT * FROM department;
SELECT * FROM teacher;



-- OTUER JOIN -
-- 1. LEFT JOIN
SELECT * FROM department
LEFT JOIN teacher
ON department.id = teacher.dept_id;

SELECT * FROM department;
SELECT * FROM teacher;


-- 1. RIGHT JOIN
SELECT * FROM department
RIGHT JOIN teacher
ON department.id = teacher.dept_id;

SELECT * FROM department;
SELECT * FROM teacher;


-- full-outer join
SELECT * FROM department d
LEFT JOIN teacher t
on d.id = t.dept_id
UNION
SELECT * FROM department d
RIGHT JOIN teacher t
ON d.id = t.dept_id;



-- self join
CREATE TABLE des(
	id INT PRIMARY KEY,
    des_name VARCHAR(30),
    dept_id INT,
    CONSTRAINT fk_key FOREIGN KEY (dept_id) REFERENCES department(id)
);

DROP TABLE des;

INSERT INTO des(id, des_name, dept_id)
VALUES 
(201, "Principal", 121),
(458, "HOD1", 121),
(423, "HOD2", 122),
(144, "Professor", 168),
(121, "Assistant Professor", 144),
(122, "Associate Professor", 144);

SELECT * FROM des;
SELECT * FROM department;

SELECT p.des_name AS Professor, h.des_name AS HOD
FROM des p
JOIN des h
ON p.id = h.dept_id;


CREATE TABLE emp(
	id INT PRIMARY KEY,
    name VARCHAR(30),
    designation VARCHAR(30),
    manager_id INT
);
SELECT * FROM emp;


INSERT INTO emp (id, name, designation, manager_id)
VALUE 
(1, "Rakesh Kumar", "CEO", NULL),
(2, "Aryan Singhniya", "CTO", 1),
(3, "Sneha Choudhary", "HR Manager", 1),
(4, "Rohit Pandey", "Senior Analyst", 2),
(5, "Ranjeeta Mandal", "Junior Analyst", 4),
(6, "Bhavya Sharma", "Junior Analyst", 4),
(7, "Bhagyashree Iyer", "Data Analyst Intern", 3);

SELECT e.name AS Employees, e.designation AS Emp_Roles, m.name AS Managers, m.designation AS Manager_Roles
FROM emp e
JOIN emp m
ON e.manager_id = m.id;

SELECT * FROM emp;



-- Cross Join

CREATE TABLE subjects (
	id INT PRIMARY KEY,
    subject_name VARCHAR(30)
);

CREATE TABLE exams_slot(
	id INT PRIMARY KEY,
    slot_time VARCHAR(30)
);

INSERT INTO subjects(id, subject_name)
VALUES 
(1, "English"),
(2, "Hindi"),
(3, "Science"),
(4, "Maths"),
(5, "SST");

INSERT INTO exams_slot(id, slot_time)
VALUES 
(1, "Morning"),
(2, "Evening"),
(3, "Aftenoon");


SELECT subject_name, slot_time 
FROM subjects 
CROSS JOIN exams_slot;



