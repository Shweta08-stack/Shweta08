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









