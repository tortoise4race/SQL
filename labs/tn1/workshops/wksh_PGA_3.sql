
set termout off
set verify off
set feedback off
spool &1 replace


select PROD_ID, AVG(unit_cost) from costs 
GROUP BY prod_id;

COMMIT;

select s.prod_id, sum(s.amount_sold) - sum(c.unit_cost)
  from costs c, sales s
  where c.prod_id = s.prod_id
  and s.prod_id = 142
  group by s.prod_id
/

COMMIT;
 
select PROD_ID, SUM(amount_sold) from sales 
GROUP BY PROD_ID;

COMMIT;

select COUNTRY_NAME, COUNTRY_REGION 
from countries
ORDER BY 2
/

COMMIT;
select distinct country_name, co.COUNTRY_ID, COUNTRY_REGION
 from countries co, customers cust
 where co.country_id = cust.country_id;


COMMIT;
select CHANNEL_ID, CHANNEL_TOTAL from channels
/

COMMIT;

EXIT
