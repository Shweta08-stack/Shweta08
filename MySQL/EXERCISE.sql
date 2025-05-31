CREATE DATABASE collageDB;

use collageDB;

CREATE TABLE students(
student_id INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
DOB DATE
);

INSERT INTO students(first_name,last_name,gender)
VALUES("Shweta","ghotekar","female"),
("Shruti","nakhate","female"),
("Rohit","garg","male"),
("Shweta","selukar","female"),
("Rohit","Ughde","male");

select * from students;

CREATE TABLE courses(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name varchar(100)UNIQUE,
duration_weeks INT NOT NULL
);

INSERT INTO courses(course_name,duration_weeks)
VALUES("JAVA","2"),
("PYTHON","6"),
("C++","9"),
("UIPATH","8"),
("SQL","2");

SELECT * FROM courses;


CREATE TABLE orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(50) NOT NULL,
order_date datetime DEFAULT current_timestamp
);



CREATE TABLE boooks(
isbn VARCHAR(20) UNIQUE,
title VARCHAR(100),
price DECIMAL(7,2)CHECK (price>0)
);

INSERT INTO boooks(title,price)
VALUES("animal farm","800"),
("siddartha","90"),
("coroline","500"),
("gitaanjali","150"),
("night","100");

select * from boooks;


CREATE TABLE employees(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(100)UNIQUE,
salary DECIMAL(10,2)DEFAULT 250000
);

INSERT INTO employees (emp_id,salary)
VALUES("1",50000),
("2",40000),
("3",25000),
("4",10000),
("5",55000);

SELECT * FROM employees;

#using alter in DDL command
ALTER TABLE students ADD gender ENUM("male","female","other");

ALTER TABLE students DROP COLUMN DOB;

ALTER TABLE employees MODIFY salary INT;

#update command 
UPDATE  employees SET salary =55000 WHERE emp_id= 2;

select * from employees;

UPDATE boooks SET price=100<=150 where price>0;

select * from boooks;

#using delete command

SELECT * FROM students;

DELETE FROM students WHERE student_id=3;

SELECT * FROM students;

# USING TRUNCATE COMMAND
TRUNCATE TABLE orders;

SELECT * FROM orders;

# DROP COMMAND 
DROP TABLE boooks;











