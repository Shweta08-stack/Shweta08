use 8am;
# DCL - data control language
# GRANT / REVOKE 
CREATE TABLE bank_account(
account_no INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(100),
balance DECIMAL(10, 2)
);

SELECT * FROM bank_account;

GRANT SELECT, INSERT , ALTER
ON bank_account
TO "tushar"@'localhost';

REVOKE SELECT, INSERT, ALTER
ON bank_account
FROM
 "tushar"@"localhost";






