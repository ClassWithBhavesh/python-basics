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

-- cross join & self join