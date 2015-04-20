select 1/( count(distinct(cust_city)))*
       1/( count(distinct(CUST_STATE_PROVINCE)))*
       1/( count(distinct(country_id)))  default_selectivity
from customers
/

