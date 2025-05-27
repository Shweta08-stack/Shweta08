CREATE DATABASE 8AM_BATCH;

USE 8AM_BATCH;

CREATE TABLE department(
dept_id INT PRIMARY KEY AUTO_INCREMENT,
dept_name VARCHAR(100)  NOT NULL UNIQUE
);

CREATE TABLE employee (
emp_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email_id VARCHAR(100) UNIQUE,
birth_date DATE,
gender ENUM('Male' , 'Female', 'Other') DEFAULT 'Other' ,
salary DECIMAL(10,2) DEFAULT 30000 CHECK (salary > 0),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES department(dept_id)
);

USE 8am_batch;

INSERT INTO department (dept_name) 
VALUES 
("Finance") , ("IT"), ("Marketing");

SELECT * FROM department;

INSERT INTO employee (first_name,last_name,email_id,birth_date,gender,salary,dept_id)
VALUES 
("TUSHAR", "ATKARE", "TUSHAR@GMAIL.COM", "1993-01-16" , "Male" , "50000", 1) ;

SELECT * FROM employee;

CREATE TABLE student (
student_id INT PRIMARY KEY AUTO_INCREMENT , 
first_name VARCHAR(50) NOT NULL ,
last_name VARCHAR(50),
birth_date DATE,
gender ENUM("Male", "Female", "Other"),
email VARCHAR(100) UNIQUE );

CREATE TABLE courses (
course_id INT PRIMARY KEY AUTO_INCREMENT,
courses_name VARCHAR(100) NOT NULL UNIQUE,
credits INT CHECK (credits > 0)
);


CREATE TABLE enrollments (
enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT, 
course_id INT,
enroll_date DATE DEFAULT "2025-05-27",
FOREIGN KEY (student_id) REFERENCES student(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100) NOT NULL UNIQUE,
category VARCHAR(100),
price DECIMAL(10,2) CHECK (price > 0),
stock_quantity INT DEFAULT 0
);











































