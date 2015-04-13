-- create a set of statements that will be soft parsed after the first 
-- execution 


set termout off
set feedback off
set verify off
spool &1 replace

select * from employees;

select /* SET A */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET A */ employee_id 
from employees
Where employee_id =  106;

select /* SET A */ employee_id, first_name, last_name 
from employees
Where employee_id =  106;

select /* SET A */ employee_id, first_name, last_name, email, phone_number
from employees
Where employee_id =  106;

select /* SET A */ employee_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET A */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET A */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
Where employee_id =  106;

select /* SET A */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;


select /* SET D */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id 
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name 
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number
from employees
Where employee_id =  106;

select /* SET D */ employee_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET A */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET A */ employee_id 
from employees
where department_id = 50;

select /* SET A */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET A */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET A */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET A */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET A */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET A */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET B */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET B */ employee_id 
from employees
where department_id = 50;

select /* SET B */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET B */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET B */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET B */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET B */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET B */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET C */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET C */ employee_id 
from employees
where department_id = 50;

select /* SET C */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET C */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET C */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET C */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET C */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET C */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;


select /* SET D */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id 
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name 
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number
from employees
Where employee_id =  106;

select /* SET D */ employee_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;


select /* SET D */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id 
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name 
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number
from employees
Where employee_id =  106;

select /* SET D */ employee_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET D */ employee_id 
from employees
where department_id = 50;

select /* SET D */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET D */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET D */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET D */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET D */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET E */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET E */ employee_id 
from employees
where department_id = 50;

select /* SET E */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET E */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET E */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET E */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET E */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET E */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET F */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET F */ employee_id 
from employees
where department_id = 50;

select /* SET F */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET F */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET F */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET F */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET F */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET F */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET G */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id 
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name 
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name, email, phone_number
from employees
Where employee_id =  106;

select /* SET G */ employee_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;


select /* SET G */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id 
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name 
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name, email, phone_number
from employees
Where employee_id =  106;

select /* SET G */ employee_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET G */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET G */ employee_id 
from employees
where department_id = 50;

select /* SET G */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET G */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET G */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET G */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET G */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET G */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET H */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET H */ employee_id 
from employees
where department_id = 50;

select /* SET H */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET H */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET H */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET H */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET H */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET H */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET I */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET I */ employee_id 
from employees
where department_id = 50;

select /* SET I */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET I */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET I */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET I */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET I */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET I */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET J */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id 
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name 
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name, email, phone_number
from employees
Where employee_id =  106;

select /* SET J */ employee_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;


select /* SET J */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id 
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name 
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name, email, phone_number
from employees
Where employee_id =  106;

select /* SET J */ employee_id, salary, commission_pct, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
Where employee_id =  106;

select /* SET J */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET J */ employee_id 
from employees
where department_id = 50;

select /* SET J */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET J */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET J */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET J */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET J */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET J */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET K */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET K */ employee_id 
from employees
where department_id = 50;

select /* SET K */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET K */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET K */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET K */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET K */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET K */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET L */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET L */ employee_id 
from employees
where department_id = 50;

select /* SET L */ employee_id, first_name, last_name 
from employees
where department_id = 50;

select /* SET L */ employee_id, first_name, last_name, email, phone_number
from employees
where department_id = 50;

select /* SET L */ employee_id, salary, commission_pct, manager_id, department_id
from employees
where department_id = 50;

select /* SET L */ employee_id, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

select /* SET L */ employee_id, first_name, last_name, email, phone_number,
manager_id, department_id
from employees
where department_id = 50;

select /* SET L */ employee_id, first_name, last_name, email, phone_number,
hire_date, job_id, manager_id, department_id
from employees
where department_id = 50;

 exit
