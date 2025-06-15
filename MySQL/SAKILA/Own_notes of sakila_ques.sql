USE SAKILA;

#1)list all customer along with their email address?
SELECT customer_id,first_name,last_name,email
FROM customer;

#2) Retrieve all films with a rental rate greater than 4?
SELECT film_id,title,rental_rate
FROM film
WHERE rental_rate >4;

#3)DISPLAY THE FIRST AND LAST NAME OF ALL ACTORS ?
SELECT actor_id,first_name,last_name
FROM actor;

#4)Retrieve alll films released in 2006?
SELECT film_id,title,release_year
FROM film
WHERE release_year =2006;

#5)Show all categories in the category table?
SELECT category_id,name
FROM category;

#FILTERING AND SORTING----

#6)Find all customers whose first name starts with "j"?
SELECT customer_id,first_name,last_name
FROM customer 
WHERE first_name LIKE "J%";

#7)Retrieve all films where the title contain the word "action"?
SELECT film_id,title
FROM film
WHERE title LIKE "%action%";

#8)List all films with length between 90 and 120 minutes ?
SELECT film_id,title,length
FROM film
WHERE length BETWEEN 90 AND 120;

#9) Sort all the list of stores by their IDS in dscending order?
SELECT store_id,manager_staff_id
FROM store
ORDER BY store_id DESC;

#10)Show the top 10 longest films in the database?
SELECT film_id,title,length
FROM film
ORDER BY length DESC
LIMIT 10;

#AGGREGATION FUNCTION------
#11)count the total no of films in the databse ?
SELECT count(*) as total_films
FROM film;

#12) Find the average rate of all films?
SELECT AVG(rental_rate) as rental_rate
FROM film;

#13) Get the minimum and maximum film length?
SELECT MIN(length) as minimum_length,
MAX(length) as maximum_length
FROM film;

#14) Count the total number of customers in each store ?
SELECT store_id , COUNT(customer_id) as total_customer
FROM customer
GROUP BY store_id;

#15) Calculate the total revenue gerenated by the rental transaction ?
SELECT SUM(amount) as Total_revenue
FROM payment;

## GROUP BY-------------
#16) group films by their rating and count how many films belong to each rating?
SELECT rating,COUNT(*) as total_count
FROM film
GROUP BY rating;

#17)Find the total length of film in each category?



