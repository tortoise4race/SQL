
-- create a set of statements that will use PGA memory workarea.

--set echo on
set termout off
set feedback off
set verify off
spool &1 replace

select * from employees
order by department_id
/

COMMIT;

select employee_id, 
salary, commission_pct, 
manager_id, department_id
from employees
order by manager_id
/

COMMIT;

SELECT D.Department_name, R.region_name, L.City, C.country_name
    FROM departments D, locations L, regions R, countries C
    WHERE D.location_id = L.location_id
    AND C.region_id = R.region_id
    AND L.country_id = C.country_id
    ORDER BY 1 
/

COMMIT;
exit
