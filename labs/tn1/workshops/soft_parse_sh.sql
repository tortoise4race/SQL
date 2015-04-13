set termout off
set verify off
set feedback off
spool &1 replace
--set timing on

select AVG(unit_cost) from costs 
where prod_id = 16;
 
select SUM(amount_sold) from sales where prod_id = 16;

select sum(s.amount_sold) - sum(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id = 16;

select * from countries
where country_ISO_CODE = 'AR';

select distinct country_name
 from countries co, customers cust
 where co.country_id = cust.country_id;

select * from channels;

select * from products where prod_id = 16;


select AVG(unit_cost), prod_id from costs 
group by prod_id;
 
select prod_id, SUM(amount_sold) from sales
where prod_id = 17
GROUP by prod_id;

select sum(s.amount_sold) - sum(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id = 17;

select country_name from countries
where country_ISO_CODE = 'AR';

select distinct country_name, co.country_id
 from countries co, customers cust
 where co.country_id = cust.country_id;

select * from channels
where channel_class = 'Direct';

select prod_id, prod_name, prod_desc
 from products where prod_id = 17;

select PROD_ID, AVG(unit_cost) from costs 
where prod_id = 18
GROUP BY PROD_ID;
 
select PROD_ID, SUM(amount_sold) from sales where prod_id = 18
GROUP BY PROD_ID;
-- this one takes 2.57 seconds
--select SUM(s.amount_sold) - SUM(c.unit_cost) 
--from costs c, sales s 
--where c.prod_id = s.prod_id
--and s.prod_id = 18;

select COUNTRY_NAME, COUNTRY_REGION from countries
where country_ISO_CODE = 'AU';

select distinct country_name, CO.COUNTRY_ID, COUNTRY_REGION
 from countries co, customers cust
 where co.country_id = cust.country_id;

select CHANNEL_ID, CHANNEL_TOTAL from channels;

select PROD_ID, PROD_NAME, PROD_TOTAL
 from products where prod_id = 18;

select AVG(unit_cost), PROD_ID
 from costs 
where prod_id = 20
GROUP BY PROD_ID
 
select SUM(amount_sold), PROD_ID 
from sales 
where prod_id = 20
GROUP BY PROD_ID;

select sum(s.AMOUNT_sold) - sum(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id = 20;

select distinct country_name, COUNTRY_REGION
 from countries co, customers cust
 where co.country_id = cust.country_id;

SELECT CHANNEL_ID, CHANNEL_CLASS, CHANNEL_TOTAL from channels;

select PROD_ID, PROD_STATUS FROM products 
where prod_id = 20;

exit
