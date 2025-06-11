USE sakila;

#LIST ALL CUSTOMERS with there email id

SELECT first_name, last_name, email
FROM customer;

#all films with rental rate greater than 4

SELECT film_id, title , rental_rate
FROM film
WHERE rental_rate > 4;

#first and last name
SELECT actor_id, first_name, last_name
FROM actor;

#all films in 2006
SELECT film_id,title,release_year
FROM film
WHERE release_year = 2006;

#all categories
SELECT category_id,name
FROM category;


#all customers first name start "J"

SELECT customer_id,first_name,last_name
FROM customer
WHERE first_name LIKE 'J%';

#all films title contain the word ACTION
SELECT film_id,title
FROM film
WHERE title LIKE '%ACTION%';

#ALL FILM WITH LENGTH 90 AND 120

SELECT film_id, title, length
FROM film
WHERE length BETWEEN 90 AND 120;

#sort the store with storeid DESC

SELECT * FROM store 
ORDER BY store_id DESC;


#top 10 long film

SELECT film_id, title, length
FROM film
ORDER BY length DESC
LIMIT 10;

SELECT film_id, title, length
FROM film
ORDER BY length ASC
LIMIT 10;

#count total no films

SELECT COUNT(*) AS total_count
FROM film;

#average renatal rate

SELECT AVG(rental_rate) AS average_rental_rate
FROM film;

#min and max film lenghth
SELECT MIN(length) AS min_length, 
MAX(length) AS max_length
FROM film;

#total no of customer in each store

SELECT store_id, COUNT(customer_id) AS total_customer
FROM customer
GROUP BY store_id;

#total revenue .

SELECT SUM(amount) AS total_revenue
FROM payment;

USE sakila;

#group films by rating  count()

SELECT rating, count(*) AS film_count
FROM film
GROUP BY rating;

# TOTAL LENGTH , CATEGORY 
SELECT c.name , SUM(f.length) AS total_length
FROM category c
JOIN film_category fc ON fc.category_id = c.category_id
JOIN film f ON  fc.film_id  = f.film_id
GROUP BY c.name;

#list no. of film each replacement cost

SELECT replacement_cost, 
count(*) AS film_count
FROM film
GROUP BY replacement_cost;

#Avg rental rate by category

SELECT c.name , AVG(f.rental_rate)
AS average_rental_rate
FROM category c
JOIN film_category fc 
ON fc.category_id = c.category_id
JOIN film f ON f.film_id = fc.film_id
GROUP BY c.name;

#20
SELECT last_name, COUNT(*)
AS  actor_count
FROM actor
GROUP BY last_name;

USE sakila;
#21 all films & categories

SELECT f.title , c.name
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON c.category_id = fc.category_id;

#
SELECT c.first_name, c.last_name, f.title
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON i.inventory_id = r.inventory_id
JOIN film f ON i.film_id = f.film_id;

SELECT c.first_name, c.last_name, f.title
FROM film f
JOIN inventory i ON i.film_id = f.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN customer c ON c.customer_id = r.customer_id;

#
SELECT sta.first_name, sta.last_name, sto.store_id,
sto.manager_staff_id
FROM staff sta
JOIN store sto ON sta.store_id = sto.store_id;

#24 all film, actor

SELECT f.title , a.first_name, a.last_name
FROM film f
JOIN film_actor fa ON fa.film_id = f.film_id
JOIN actor a ON a.actor_id = fa.actor_id;

SELECT c.name , COUNT(f.film_id) AS film_count
FROM category c
JOIN film_category fc ON fc.category_id = c.category_id
JOIN film f ON f.film_id = fc.film_id
GROUP BY c.name;





























































































