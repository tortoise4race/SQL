
set termout off
set verify off
set feedback off
spool &1 replace

select AVG(unit_cost) from costs

select SUM(amount_sold) from sales where prod_id < 16;

select prod_id, sum(s.amount_sold) - sum(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
group by prod_id;

select distinct country_name
 from countries co, customers cust
 where co.country_id = cust.country_id;

select * from products
/
select * from times
/
select * from customers
/
select * from cal_month_sales
/
select * from promotions
/
select AVG(unit_cost), prod_id from costs 
group by prod_id;
 
select prod_id, SUM(amount_sold) from sales
where prod_id = 17
GROUP by prod_id;

select country_name from countries
/
select distinct country_name, country_id
 from countries co, customers cust
 where co.country_id = cust.country_id;

select * from channels
where channel_class = 'Direct'
/
select prod_id, prod_name, prod_desc
 from products
/
select PROD_ID, AVG(unit_cost) from costs 
where prod_id > 120 
GROUP BY 1;
 
select PROD_ID, SUM(amount_sold) from sales 
where prod_id > 100 
GROUP BY PROD_ID;

select SUM(s.amount_sold) - SUM(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id > 80;

select COUNTRY_NAME, COUNTRY_REGION from countries
/
select distinct country_name, COUNTRY_ID, COUNTRY_REGION
 from countries co, customers cust
 where co.country_id = cust.country_id;

select CHANNEL_ID, CHANNEL_TOTAL from channels
/
select PROD_ID, PROD_NAME, PROD_TOTAL
 from products where prod_id > 88;

select AVG(unit_cost), PROD_ID, PROD_NAME
 from costs 
where prod_id > 20
GROUP BY PROD_ID, PROD_NAME;
 
select SUM(amount_sold), PROD_NAME 
from sales 
where prod_id < 20
GROUP BY PROD_NAME;

select sum(s.AMOUNT_sold) - sum(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id < 20;

select distinct country_name, COUNTRY_REGION
 from countries co, customers cust
 where co.country_id = cust.country_id;

SELECT CHANNEL_ID, CHANNEL_CLASS, CHANNEL_TOTAL from channels
/
exit
