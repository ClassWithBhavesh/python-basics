SELECT * FROM department;
SELECT * FROM teacher;


-- Cascading in MySQL -

CREATE TABLE department(
	id INT PRIMARY KEY,
    dept_name VARCHAR(20),
    dept_course VARCHAR(10)
);

CREATE TABLE teacher(
	id INT PRIMARY KEY,
    dept_id INT,
    CONSTRAINT fk_dept FOREIGN KEY (dept_id) REFERENCES department(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
    teacher_name VARCHAR(30)
);

-- ALTER TABLE teacher ADD CONSTRAINT auto_incre AUTO_INCREMENT (id) -- AUTO_INCREMENT will not add as a constraint it will only be assign at the time of declaring a TABLE

ALTER TABLE teacher MODIFY COLUMN id INT AUTO_INCREMENT;
ALTER TABLE teacher MODIFY COLUMN id INT;
DESC teacher;
DROP TABLE department;
DROP TABLE teacher;

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

SELECT DISTINCT dept_id FROM teacher;


UPDATE department
SET id = 196
WHERE id = 121;

DELETE FROM department
WHERE id = 196;



-- TRUNCATE - 
-- 1. It will delete the rows same as DELETE command
-- 2. unlike DELETE command it will not allow WHERE clause to use
-- 3. faster as compared to DELETE command
-- 4. RESET the AUTO_INCREMENT constraint


-- TRUNCATE FROM department
-- WHERE id = 122;


TRUNCATE TABLE teacher;

SELECT * FROM teacher;


