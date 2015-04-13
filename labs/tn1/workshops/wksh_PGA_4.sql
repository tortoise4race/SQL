
set termout off
set verify off
set feedback off
spool &1 replace

select s.prod_id, SUM(s.amount_sold) - SUM(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id = 117
group by s.prod_id
/
COMMIT;

select PROD_ID, PROD_NAME, PROD_TOTAL
 from products 
 ORDER BY PROD_NAME;

COMMIT;
select AVG(unit_cost), PROD_ID
 from costs 
GROUP BY PROD_ID;
 
COMMIT;
select distinct country_name, COUNTRY_REGION
 from countries co, customers cust
 where co.country_id = cust.country_id;

COMMIT;
SELECT CHANNEL_ID, CHANNEL_CLASS, CHANNEL_TOTAL from channels
/

COMMIT;
exit
