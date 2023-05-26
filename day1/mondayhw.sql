--1
select *
from actor 
where last_name = 'Wahlberg';

--2
select count(*)
from payment p 
where amount < 5.99 and amount > 3.99
--3

select count(*) 
from inventory i
where film_id =7
--4

select *
from customer c 
where first_name = 'Willie';

--5

select count(staff_id),staff_id 
from rental r 
group by staff_id 
order by count(distinct rental_id) desc;

--6 
select count(distinct district)
from address;

--7

select film_id, count(*)
from film_actor fa 
group by film_id 
order by count(distinct actor_id) desc

--8
SELECT *
from customer c 
where store_id = 1 and last_name like '%es' ;

--9
select count(*)
from payment p 
where customer_id between 380 and 430
group by amount
having count(*)>250;

--10
select  count(distinct rating) as number_of_rating_categories
from film f;

select rating,count(*)as movie_count
from film f
group by rating 
order by movie_count desc 
limit 1;