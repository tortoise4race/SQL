
set termout off
set verify off
set feedback off
spool &1 

select AVG(unit_cost) from costs;

Commit;

select SUM(amount_sold) from sales where prod_id < 16;

Commit;

select s.prod_id, sum(s.amount_sold) - sum(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id = 144
group by s.prod_id;

Commit;

select * from cal_month_sales_mv;

Commit;

select distinct country_name
 from countries co, customers cust
 where co.country_id = cust.country_id;

Commit;

select * from products
order by prod_CATEGORY,PROD_SUBCATEGORY;

commit;

EXIT
