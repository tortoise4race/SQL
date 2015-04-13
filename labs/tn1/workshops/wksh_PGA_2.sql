
set termout off
set verify off
set feedback off
spool &1 replace

select * from times
order by calendar_year, calendar_month_number, day_number_in_month;

COMMIT;

select * from customers
order by cust_gender, cust_marital_status;

COMMIT;
 
select AVG(unit_cost), prod_id from costs 
group by prod_id;

COMMIT;
 
select prod_id, SUM(amount_sold) from sales
where prod_id = 17
GROUP by prod_id;

COMMIT;

select country_name from countries
/

COMMIT;
select distinct country_name, co.country_id
 from countries co, customers cust
 where co.country_id = cust.country_id;

COMMIT;

select s.prod_id, sum(s.amount_sold) - sum(c.unit_cost)
   from costs c, sales s
   where c.prod_id = s.prod_id
   and s.prod_id = 114
   group by s.prod_id
/

COMMIT;

select * from channels
where channel_class = 'Direct'
/

COMMIT;
exit
