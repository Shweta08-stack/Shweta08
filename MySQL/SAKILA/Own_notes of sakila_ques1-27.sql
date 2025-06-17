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

#17)Find the total length of film in each category? (each=group by)
SELECT C.name,sum(F.length) as total_length
from category c
JOIN film_category FC ON FC.category_id = C.category_id
JOIN film F ON F.film_id=FC.film_id
GROUP BY C.name;

#18) List the number of films available for each replacement cost.? (each=group by)
SELECT replacement_cost, COUNT(*) AS film_count
FROM film
GROUP BY replacement_cost;

#19)Find the average rental rate for each film category? (each= group by)
SELECT C.name ,avg(rental_rate) AS average_rental_rate
FROM category c
JOIN film_category FC ON FC.category_id=C.category_id
JOIN film F ON F.film_id=FC.film_id
GROUP BY C.name;

#20) Count the number of actors in each last name group (each=group by)
SELECT last_name,COUNT(*)as total_count
FROM actor
GROUP BY last_name;

# JOIN QUERIS :---- WORK ON TWO DIFFERENT TABLE USING THE PRIMARY KEY 
#21) List all films along with their correcsonding categories ? 
SELECT F.title,C.name
FROM film F
JOIN film_category FC ON  FC.film_id=F.film_id
JOIN category C ON C.category_id =FC.category_id;

#22) Show the name of all customer along with their rented films?
SELECT c.first_name,c.last_name,f.title
FROM customer c
JOIN rental r on r.customer_id=c.customer_id
JOIN inventory i on i.inventory_id=r.inventory_id
JOIN film f on f.film_id=i.film_id;

#23)Retrieve the names of all staff members and their respective stores?
SELECT sta.first_name,sta.last_name,sto.store_id
FROM staff sta
JOIN store sto on sto.store_id=sta.store_id;

#24) List all films along with their actors?
SELECT f.title,a.first_name,a.last_name
FROM film f
JOIN film_actor fa ON fa.film_id=f.film_id
JOIN actor a on a.actor_id =fa.actor_id;

#25) Display the category name and the number of films in each category ?
SELECT c.name,count(f.film_id) as film_count
FROM category c
JOIN film_category fc on fc.category_id=c.category_id
JOIN film f on f.film_id=fc.film_id
GROUP BY c.name;

#SUBQUERIES :----

#26)Find the film with the highest rental rate using a subquery?
SELECT MAX(rental_rate) FROM film ; #first run this query and check the value 
SELECT title,rental_rate  #run this query after first query 
FROM film
WHERE rental_rate=4.99;

#27)List all customers who have rented more than 5 films.?
SELECT c.customer_id,c.first_name,c.last_name
FROM customer c
where c.customer_id IN(SELECT r.rental_id 
from rental r
GROUP BY r.customer_id
having count(r.customer_id)>5);




