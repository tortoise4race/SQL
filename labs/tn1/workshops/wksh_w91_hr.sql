
-- create a set of statements that will be soft parsed after the first 
-- execution 


set termout off
set feedback off
set verify off
spool &1 replace

select * from employees
/

select employee_id, 
salary, commission_pct, 
manager_id, department_id
from employees
Where employee_id =  106 
/


select employee_id, 
first_name, last_name, 
email, phone_number,
hire_date, job_id, 
manager_id, department_id
from employees
where department_id = 50 
/

select * from departments 
/

select * from job_history 
/

select * from regions 
/

select * from jobs 
/

select * from countries 
/

select * from locations 
/
 
exit
