CREATE DATABASE collageDB;
USE COLLAGEDB;

CREATE TABLE students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50)NOT NULL,
last_name VARCHAR(50) NOT NULL,
dob DATE
);

INSERT INTO students(first_name,last_name,dob)
VALUES("SHWETA","GHOTEKAR","1995-06-13"),
("SHRUTI","NAKHATE","1994-06-26"),
("SHWETA","SELUKAR","1992-08-28");

SELECT * FROM students;

CREATE TABLE course(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(50)UNIQUE,
duration_weeks INT NOT NULL
);

INSERT INTO course(course_name,duration_weeks)
VALUES("PYTHON",6),
("POWER BI",8),
("JAVA",3);
SELECT * FROM course;

CREATE TABLE orders(
order_Id INT PRIMARY KEY,
customer_name VARCHAR(50),
order_date datetime DEFAULT current_timestamp
);

INSERT INTO orders(order_Id,customer_name,order_date)
VALUES(101,"JAYANT",DEFAULT),
(102,"KARTIK","2025-01-01"),
(103,"YAMINI",DEFAULT);
SELECT * FROM orders;

UPDATE orders SET order_date="2025-01-01" WHERE order_Id=102;
SELECT * FROM orders;

CREATE TABLE books(
isbn VARCHAR (20)UNIQUE,
title VARCHAR(100),
price  DECIMAL (7,2) CHECK (price>0)
);
INSERT INTO books(isbn,title,price)
VALUES("A","DEVA",100),
("B","BAHUBALI",700),
("C","SHYAM",500);
SELECT * FROM books;

CREATE TABLE employee(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(10)UNIQUE,
salary DECIMAL(10,2)DEFAULT 25000
);
ALTER TABLE employee MODIFY email VARCHAR(100);
INSERT INTO employee(email,salary)
VALUES("shweta@gmail.com",45000),
("shruti@gmail.com",DEFAULT),
("selukar@gmail.com",DEFAULT);

SELECT * FROM employee;

#ADD NEW COLUMN IN STUDENTS
ALTER TABLE students ADD gender ENUM("male","female","other");

#chnge salary datatypes in emp table
ALTER TABLE employee MODIFY salary INT;

#DROP DOB COLUMN FROM STUDENTS
ALTER TABLE students DROP COLUMN dob;

#UPDATE THE SALARY OFEMP ID=2
UPDATE employee SET salary=55000  WHERE emp_id=2;
SELECT * FROM employee;

#CHANGE ORDER DATE = 2025/12/25 OF ORDER ID =1
UPDATE orders SET order_date="2025-12-25" WHERE order_Id=101;
SELECT * FROM orders;

UPDATE books SET price=50 WHERE isbn="A";

# update all books price <100 to 150
UPDATE books SET price=150 WHERE price<100;
SELECT * FROM books;


DELETE FROM students WHERE student_id=3;
SELECT * FROM students;

TRUNCATE TABLE orders;
SELECT * FROM orders;
















