use sakila;

# INNER JOIN - 
#list all customer who
# have made at least one payment

SELECT c.customer_id , c.first_name,
c.last_name ,p.amount
FROM customer c 
INNER JOIN payment p ON 
c.customer_id = p.customer_id;

#left join
#list all film with there categories

SELECT f.title, c.name 
from film f 
LEFT JOIN film_category fc 
on fc.film_id = f.film_id
LEFT JOIN category c 
ON c.category_id = fc.category_id;

#right join

select p.payment_id , p.amount , 
c.first_name , c.last_name
FROM customer c
RIGHT JOIN payment p ON 
c.customer_id = p.customer_id;

#cross join 
select s.first_name , s.last_name,
st.store_id
FROM staff s
CROSS JOIN store st;

#full outer join
#all customer & payment. 
SELECT c.customer_id , c. first_name,
p.amount
FROM customer c 
LEFT JOIN payment p 
ON p.customer_id = c.customer_id
UNION
SELECT c.customer_id , c. first_name,
p.amount
FROM customer c 
RIGHT JOIN payment p 
ON p.customer_id = c.customer_id;





