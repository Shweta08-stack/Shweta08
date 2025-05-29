USE 8am;

#add the new column
ALTER TABLE employee ADD phone_number VARCHAR(15);


#modify the columns
ALTER TABLE employee MODIFY phone_number VARCHAR(10);


#delete the column permenently
ALTER TABLE employee DROP COLUMN phone_number;


#IF you want to delete everything  the we use DROP

USE AARYA;

DROP TABLE employees1;

DROP DATABASE aarya;
DROP DATABASE demo1;


# if you want to delete table entries
use dwd;    
select * from employees;

TRUNCATE TABLE employees;

use 8am;


# if you want to rename table

RENAME TABLE department TO company_department;


# DML commands - DATA MANIPULATION LANGUAGE

CREATE TABLE student (
Roll_NO INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
fees DECIMAL(10,2) CHECK (fees > 0)
);

INSERT INTO student (name,last_name,fees)
VALUES ("Tushar", "Atkare", 50000),
("Shweta", "Ghotekar", 45000);

SELECT * FROM student;

# update the existing values 

UPDATE student SET fees = 50000 WHERE name = "Shweta" ;

# safe mode on

SET SQL_SAFE_UPDATES = 0;

UPDATE student SET fees = 50000 WHERE name = "Shweta" ;

SELECT * FROM student;

#safe mode off
SET SQL_SAFE_UPDATES = 1;

#Delete the specific row

DELETE FROM student WHERE name = "Shweta";



