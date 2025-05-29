#I WANT TO CREATE A DATABASE :---(SYNTAX:-- CREATE DATABASE give_DATABASE_NAME;)
CREATE DATABASE HR_DATA;

#I WANT TO WORK ON HR_DATA :-- (SYNTAX:-USE DATABSE_NAME):--
USE HR_DATA;

#I WANT TO CREATE A TABLE IN HR_DATA: (SYNTX:- CREATE TABLE TABLE_NAME)
CREATE TABLE employee(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(50)NOT NULL,
last_name varchar(50) NOT NULL
);

#I WANT TO INSERT THE DATA IN employeetable :-- (SYNTAX:- insert into table_name() and add values();
INSERT INTO employee(first_name,last_name)
VALUES("shweta","ghotekar"),
("shruti","nakhate");

#I WANT TO CHECK THE ALL ENTRIES FROM employee table:--(syntax:- select * from table_name;)
SELECT * FROM employee;

#I WANT TO ADD NEW COLUMN IN employee table:--(syntax:- alter table table_name ADD table_name with datatype;)
ALTER TABLE employee ADD city varchar(50);
#REFRESH THE SCHEMA

#I WANT TO MODIFY in employee (syntax:- ALTER TABLE table_name MODIFY table_name with datatype;)
ALTER TABLE employee MODIFY city varchar(100);

#I WANT TO RENAME THE TABLE NAME OF employee to office_employee (syntax- rename table table_name to new_table_name;)
RENAME TABLE employee TO office_employee;
#REFRESH THE SCHEMA

#I WANT TO DROP THE COLUMN FROM employee table:--(alter table table_name DROP COLUMN column_name;)
ALTER TABLE office_employee DROP COLUMN city;
#REFRESH THE SCHEMA

#I WANT TO DROP THE TABLE(syntax:- DROP TABLE table_name;)
#I WANT TO DROP DATABASE (syntax:- DROP DATABASE database_name;)

SELECT * FROM office_employee;

#I WANT TO UPDATE THE ENTRIES FROM office_employee table ( i want name shruti to sakshi )
UPDATE office_employee SET first_name ="SELU" WHERE emp_id=2;
# FOR CHECKING THE ENTRIES :---
SELECT * FROM office_employee;

#I WANT TO DELETE THE ENTRY OF EMP_ID =2 FROM OFFICE EMPLOYR table (syntax:- delete from table name where emp_id=2;)
DELETE FROM office_employee WHERE emp_id=2;
#CHECK THE ENTRIES
SELECT * FROM office_employee;

#I WANT TO DROP THE TABLE (syntax:- DROP TABLE TABLE_NAME;)
DROP TABLE office_employee;
#REFRESH SCHEMA 

#I WANT TO DROP DATABASE( syntax :- DROP DATABASE DATABASE_NAME;)
DROP DATABASE hr_data;
#REFRESH SCHEMA







