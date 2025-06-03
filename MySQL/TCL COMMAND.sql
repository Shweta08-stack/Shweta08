#TCL COMMAND USE FOR BANK TRANSACTION
#FOR START BANKING TRAANSACTION WE USE--- START TRANSACTION 


#1)COMMIT--- is use for save that all changes you made.
#2)ROLLBACK :-- UNDOS ALL THE CHANGES
#3)SAVEPOINT :-- SAVE POINT IN THE TRANSACTION TO ROLL BACK TO LATER.


##FROM ALL COMMANDS :--

CREATE DATABASE 8_AM;
USE 8_AM;

CREATE TABLE employee(
emp_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(50)NOT NULL,
last_name VARCHAR(50)UNIQUE
);

CREATE TABLE BANK_ACCOUNT(
ID INT PRIMARY KEY ,
name VARCHAR(50)NOT NULL,
BALANCE DECIMAL(10,2)
);

ALTER TABLE employee ADD salary DECIMAL(10,2);
SELECT * FROM employee;

ALTER TABLE employee MODIFY salary DECIMAL(7,2);

RENAME TABLE employee TO office_employee;
#fresh schema

ALTER TABLE office_employee DROP COLUMN salary;
#refresh schema


INSERT INTO office_employee(first_name,last_name)
VALUES ("shweta","ghotekar");
select* from office_employee;

INSERT INTO office_employee(first_name,last_name)
VALUES ("shruti","nakhate"),
("shweta","selukar");

UPDATE office_employee SET emp_id=2 WHERE first_name="shruti";
select * from office_employee;

UPDATE office_employee SET emp_id=3 WHERE last_name="SELUKAR";
SELECT * FROM office_employee;

DELETE FROM office_employee WHERE emp_id=3;
SELECT * FROM office_employee;

TRUNCATE TABLE office_employee;
SELECT * FROM office_employee;

ALTER TABLE office_employee DROP COLUMN last_name;
SELECT * FROM office_employee;

DROP TABLE office_employee;

#DCL COMMAND 
#1)GRANT AND 2)REVOKE

#GRANT ---GIVE ACESS

GRANT SELECT ,INSERT ON bank_account TO "shweta@gmail.com"@"locatlhost";

#REVOKE_--TAKE BACK ACESS
REVOKE SELECT,INSERT ON bank_account from "shweta@gmail.com"@"localhost";

INSERT INTO bank_account(ID,name,BALANCE)
VALUES (1,"SHWETA",1000),
(2,"SHRUTI",2000);
SELECT * FROM bank_account;

#COMMIT- FOR SAVE THAT YOU MADE CHANGES 

START TRANSACTION;
UPDATE bank_account SET BALANCE= BALANCE + 100 WHERE ID=2;
SELECT * FROM bank_account;
COMMIT;

#ROLLBACK _ UNDOS ALL CHANGES 

START TRANSACTION;
UPDATE bank_account SET ID=101 WHERE name="SHWETA";
ROLLBACK;

#SAVEPOINT --- SET POINT IN THE TXN TO RLL BACK TO LATER
START TRANSACTION;
UPDATE bank_account SET name="SAKSHI" WHERE ID=1;
savepoint sp1;

UPDATE bank_account SET ID=101 WHERE name="SHRUTI";
savepoint sp2;
select * from bank_account;

ROLLBACK to sp1;
ROLLBACK TO sp2;












