CREATE DATABASE HR_DATABASE;

USE HR_DATABASE;

CREATE TABLE department(
dept_id INT PRIMARY KEY AUTO_INCREMENT,
dept_name varchar(100)
);

CREATE TABLE employee(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(50)NOT NULL UNIQUE,
last_name varchar(100) NOT NULL UNIQUE,
email_id varchar(100) UNIQUE,
birth_date DATE,
gender ENUM("male","female","other"),
salary DECIMAL(10,3) default 1000 check (salary>5000),
dept_id INT,
foreign key(dept_id)references department(dept_id)
);

INSERT INTO department(dept_name)
VALUES("HR"),("IT"),("FINANCE"),("SALES");

select dept_name from department;

INSERT INTO employee(first_name,last_name,email_id,birth_date,gender,salary,dept_id)
VALUES("SHWETA","GHOTEKAR","SHWETA@GMAIL.COM","1995-06-13","FEMALE",DEFAULT,01),
("SHRUTI","NAKHATE","SHRUTI@GMAIL.COM","1995-06-25","other",7000,02);

Select * from employee;













