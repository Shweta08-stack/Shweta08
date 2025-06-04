# clauses and operators

use 8am;

CREATE TABLE users (
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50),
email VARCHAR(100)
);

INSERT INTO users (id,name,age,city,email)
VALUES
(1 , "TUSHAR", 33, "WARDHA", "TUSHAR@GMAIL.COM"),
(2, "shweta", 27, "wardha", "shweta@gmail.com"),
(3, "shreya", 25, "nagpur", "shreya@gmail.com"),
(4, "aditya", 24, "akola", "aditya@gmail.com");

SELECT * from users;

INSERT INTO users (id,name,age,city,email)
VALUES
(5 , "john", 33, "WARDHA", NULL);



# where - 

SELECT * from users where age>30;

# like - matching alphabets

SELECT * from users where name like 's%';
SELECT * from users where name like '%a';
SELECT * from users where city like 'a%';
SELECT * from users where city like 'nagpur';

#and for two condition are true

select * from users where
age > 25 and city = "wardha";

# or operator - any one condition is true

select * from users where
city = "nagpur" or city = "akola";

select * from users where
city = "nagpur" or city = "washim";


select * from users where
city = "washim" or  age < 25;

select * from users where
name = "shweta" or city = "akola";


# not - 
select * from users where
not city = "akola";

select * from users where
not city = "wardha";


# IN - clouse - perfect match 
select * from users where
city IN ("akola");


select * from users where
city IN ("akola", "nagpur");


# between - 

select * from users where
age BETWEEN 25 and 30;

# is null - 
select * from users where 
email is null;

# is not null 
select * from users where 
email is not null;


# conditional statement - CASE - ELSE - END

SELECT name , age, 
CASE
WHEN age < 25 then "young"
WHEN age BETWEEN 25 and 30 then "adult"
else "senior"
END as age_group
from users;

# distinct - unique
select DISTINCT city from users;

# order by  - descendin or ascending order
SELECT * from users order by age desc;

SELECT * from users order by age ASC;

#limit - top age 2 users
SELECT * from users order by age desc limit 1;
SELECT * from users order by age asc limit 1;


# Alias - AS
select name AS employee_name from users;


#count() - 

SELECT count(*) AS total_users FROM users
where city = "wardha";

# group by
SELECT age , count(*) AS total_users
FROM users
GROUP BY age;


#having - 
SELECT city , count(*) AS total_users
FROM users
GROUP BY city
HAVING count(*) > 2;


















