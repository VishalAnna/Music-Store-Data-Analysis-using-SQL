1.
select concat(first_name,last_name)as full_name from employee
order by levels desc
limit 1;

2.
select billing_country,count(*)
from invoice
group by billing_country
order by 1 desc;

3.
select total from invoice
order by 1 desc
limit 3;

4.
select sum(total) as sums,billing_city as city_name from invoice
group by billing_city
order by sums desc
limit 1;

5.
select c.first_name||c.last_name, sum(i.total) as total
from customer as c
join invoice as i on c.customer_id=i.customer_id
group by c.First_name||c.last_name
order by total desc
limit 1;