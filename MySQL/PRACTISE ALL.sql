USE COLLAGEDB;

GRANT SELECT,INSERT ON course
TO "SHWETA@GMAIL.COM"@"LOCALHOST";

REVOKE SELECT ,INSERT ON books
FROM "shweta@gmail.com"@"localhost";

CREATE TABLE BANK_ACCOUNT(
bank_id INT PRIMARY KEY AUTO_INCREMENT,
first_name VARCHAR(100),
last_name VARCHAR(50)
);
INSERT INTO bank_account(first_name,last_name)
VALUES ("SHWETA","GHOTEKAR"),
("SHRUTI","NAKHATE"),
("SHWETA","SELU");

SELECT * FROM bank_account;

START TRANSACTION;
UPDATE bank_account SET first_name="ROHINI" WHERE bank_id=1;

COMMIT;

ROLLBACK;

SELECT * FROM bank_account;

UPDATE bank_account SET first_name="SHWETA" WHERE bank_id=1;
SAVEPOINT SP1;

UPDATE bank_account SET first_name ="SHALINI" WHERE bank_id=2;
SAVEPOINT SP2;

ROLLBACK ;
COMMIT;


