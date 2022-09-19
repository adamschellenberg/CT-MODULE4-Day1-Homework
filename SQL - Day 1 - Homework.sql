-- CODING TEMPLE ASSIGNMENT - SQL DAY 1 HOMEWORK

-- Q1. How many actors are there with the last name 'Wahlberg'?
select last_name
from actor
where last_name = 'Wahlberg';

-- Q2. How many payments were made between $3.99 and $5.99?
select COUNT (amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99; 

-- Q3. What film does the store have the most of? (search in inventory)? EXPECTED: film 200 with 9
select film_id, COUNT (film_id)
FROM inventory
group by film_id
order by film_id desc;

-- Q4. How many customers have the last name 'William'? EXPECTED: 0
select last_name, COUNT(last_name)
from customers
where last_name = 'William'
group by last_name;

-- Q5. What store employee (get the id) sold the most rentals? EXPTECTED: 1-8040
select staff_id, COUNT(staff_id)
from rental
group by staff_id
order by count desc;

-- Q6. How many different district names are there? EXPECTED: 378
select count(distinct district)
from address;

-- Q7. What film has the most actors in it? (use film_actor table and get film_id) EXPECTED: film_id 508 - 15 actors
select count(actor_id), film_id
from film_actor
group by film_id 
order by count desc;

-- Q8. From store_id 1, how many customers have a last name ending with 'es'? (use customer table) EXPECTED: 13
select count(last_name)
from customer
where last_name like '%es'
and store_id = 1;

-- Q9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430?
--     (use group by and having > 250) EXPECTED: 3
select amount, count(amount)
from payment
where customer_id between 380 and 430
GROUP by amount
HAVING count(amount) > 250;

-- Q10. Within the film table, how many rating categories are there? And what rating has the most movies total? EXPECTED: 5 ratings, PG-13 has the most
select rating, count(rating)
from film
group by rating
order by count desc;