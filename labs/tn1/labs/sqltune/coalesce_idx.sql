-- WIll yield different plans before and after index coalesce

Set AUTOTRACE TRACEONLY
select cust_id, cust_last_name, cust_first_name
 from ctest
where cust_id < 257500
/

SET AUTOTRACE OFF
