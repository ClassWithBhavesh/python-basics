CREATE DATABASE allinonedb;
USE allinonedb;

CREATE TABLE employees (
	emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(50) NOT NULL,
    emp_city VARCHAR(20) NOT NULL,
    emp_mail VARCHAR(50) NOT NULL UNIQUE,
    emp_salary DECIMAL(8,2) DEFAULT 20000,
    emp_age TINYINT NOT NULL,
    emp_bonus INT DEFAULT 0,
	emp_role VARCHAR(20) NOT NULL,
    emp_dept VARCHAR(5) NOT NULL,
    CONSTRAINT emp_age CHECK (emp_age >= 18 AND emp_age <= 50)
)

SELECT * FROM employees;

INSERT INTO employees (emp_name, emp_city, emp_mail, emp_salary, emp_age, emp_bonus, emp_role, emp_dept)
VALUES 
('Rahul Sharma','Indore','rahul.sharma1@gmail.com',32000,28,5000,'Developer','IT'),
('Amit Verma','Bhopal','amit.verma2@gmail.com',28000,26,2000,'Designer','UX'),
('Neha Singh','Delhi','neha.singh3@gmail.com',35000,30,4000,'Manager','HR'),
('Priya Mehta','Mumbai','priya.mehta4@gmail.com',30000,27,2500,'Developer','IT'),
('Rohit Jain','Indore','rohit.jain5@gmail.com',26000,24,1500,'Tester','QA'),
('Karan Patel','Ahmedabad','karan.patel6@gmail.com',29000,29,3000,'Developer','IT'),
('Sneha Kapoor','Delhi','sneha.kapoor7@gmail.com',34000,31,4500,'HR Executive','HR'),
('Vikas Gupta','Jaipur','vikas.gupta8@gmail.com',27000,25,1200,'Support','CS'),
('Anjali Tiwari','Lucknow','anjali.tiwari9@gmail.com',36000,32,5200,'Team Lead','IT'),
('Saurabh Mishra','Kanpur','saurabh.mishra10@gmail.com',25000,23,1000,'Tester','QA'),
('Ritika Saxena','Bhopal','ritika.saxena11@gmail.com',31000,28,2200,'Developer','IT'),
('Manish Pandey','Delhi','manish.pandey12@gmail.com',33000,33,3500,'Manager','OP'),
('Pooja Arora','Mumbai','pooja.arora13@gmail.com',29500,27,1800,'Designer','UX'),
('Deepak Yadav','Indore','deepak.yadav14@gmail.com',26500,24,900,'Support','CS'),
('Nikhil Sharma','Pune','nikhil.sharma15@gmail.com',37000,34,6000,'Senior Dev','IT'),
('Kavita Joshi','Ahmedabad','kavita.joshi16@gmail.com',28500,26,1500,'HR Executive','HR'),
('Tarun Agarwal','Jaipur','tarun.agarwal17@gmail.com',31500,29,2600,'Developer','IT'),
('Megha Bansal','Delhi','megha.bansal18@gmail.com',34000,30,4000,'Manager','HR'),
('Rakesh Chauhan','Indore','rakesh.chauhan19@gmail.com',25500,23,800,'Tester','QA'),
('Simran Kaur','Chandigarh','simran.kaur20@gmail.com',30500,27,2000,'Designer','UX'),
('Arjun Nair','Bangalore','arjun.nair21@gmail.com',42000,35,7000,'Tech Lead','IT'),
('Ayesha Khan','Hyderabad','ayesha.khan22@gmail.com',29000,26,1500,'Support','CS'),
('Gaurav Singh','Delhi','gaurav.singh23@gmail.com',33000,31,3000,'Developer','IT'),
('Nisha Patel','Ahmedabad','nisha.patel24@gmail.com',31000,28,2100,'HR Executive','HR'),
('Varun Malhotra','Mumbai','varun.malhotra25@gmail.com',36000,32,4200,'Manager','OP'),
('Ankit Srivastava','Lucknow','ankit.srivastava26@gmail.com',27500,25,1300,'Tester','QA'),
('Shreya Dutta','Kolkata','shreya.dutta27@gmail.com',30000,27,2200,'Designer','UX'),
('Mohit Bansal','Delhi','mohit.bansal28@gmail.com',35000,30,4100,'Developer','IT'),
('Divya Sharma','Indore','divya.sharma29@gmail.com',29000,26,1700,'Support','CS'),
('Yash Thakur','Bhopal','yash.thakur30@gmail.com',32000,29,2500,'Developer','IT');


SELECT * FROM employees
LIMIT 7;



