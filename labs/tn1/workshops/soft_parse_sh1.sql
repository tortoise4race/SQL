-- this one takes 2.57 seconds
select SUM(s.amount_sold) - SUM(c.unit_cost) 
from costs c, sales s 
where c.prod_id = s.prod_id
and s.prod_id = 18;

