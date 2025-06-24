CREATE DATABASE practice;

USE practice;

select * from titanic;

SELECT COUNT(*) FROM titanic;

#survived & non survived count?

SELECT survived , Count(*) as count
FROM titanic
GROUP BY survived;

#survival rate by gender

SELECT sex, AVG(survived) as survival_rate
FROM titanic
GROUP BY sex;

#age distribution by pclass
SELECT pclass , min(age), max(age) , 
avg(age) from titanic
group by pclass
order by pclass asc;

# age < 12 ,survived or not ?

SELECT survived , count(*) as count
FROM titanic
WHERE age < 12
GROUP BY survived;

#avg fare by pclass?

SELECT pclass,avg(fare) as avg_fare
FROM titanic
GROUP BY pclass
ORDER BY pclass ASC;

SELECT embarked , count(*) as count
from titanic
GROUP BY embarked
ORDER BY count desc;


UPDATE titanic
SET embarked = "S"
WHERE embarked IS NULL 
OR TRIM(embarked) ='';

SET sql_safe_updates = 0;






































