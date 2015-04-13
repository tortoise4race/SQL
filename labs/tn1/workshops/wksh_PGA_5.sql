
set termout off
set verify off
set feedback off
spool &1 replace

SELECT CHANNEL_ID, CHANNEL_CLASS, CHANNEL_TOTAL from channels
ORDER BY 1
/


COMMIT;
select SUM(amount_sold), PROD_ID
from sales 
where prod_id < 20
GROUP BY PROD_ID;


COMMIT;
select sum(s.AMOUNT_sold) - sum(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id = 139;


COMMIT;
EXIT
