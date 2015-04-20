select count(distinct(cust_city)) cities,
  count(distinct(CUST_STATE_PROVINCE)) states,
  count(distinct(country_id)) countries
from customers;


