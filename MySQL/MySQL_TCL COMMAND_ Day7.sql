# TCL commands - 

USE 8am;

CREATE TABLE accounts (
id INT PRIMARY KEY ,
name VARCHAR(100) ,
balance DECIMAL(10,2)
);

INSERT INTO accounts (id, name, balance )
VALUES (1 ,"Aditya", 1000),
(2, "Shreya", 500),
(3, "Shweta", 1200);

select * from accounts;

START TRANSACTION;

update accounts SET balance = balance - 100 where id = 1;

update accounts SET balance = balance + 100 where id = 2;

COMMIT;

select * from accounts;

START TRANSACTION;

UPDATE accounts SET balance = balance - 500 WHERE id = 3;

ROLLBACK;

START TRANSACTION;

UPDATE accounts set balance = balance - 50 where id = 1;

savepoint sp1;


UPDATE accounts set balance = balance - 100 where id = 2;

savepoint sp2;

select * from accounts;

ROLLBACK to sp1;

COMMIT;




