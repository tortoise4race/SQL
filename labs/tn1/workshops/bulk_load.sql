-- Bulk load scripts
--
-- truncate copy of employees table
-- create a copy of the employees table 
-- insert records into the copy
-- update the salary fields 
-- delete large number of records

--set echo off
set feedback off
set verify off

DECLARE 
   table_exists BOOLEAN;
   dummy VARCHAR2(1);
BEGIN

   SELECT 'X' INTO dummy FROM USER_TABLES 
    WHERE table_name = 'EMP1';

EXCEPTION
   WHEN NO_DATA_FOUND THEN 
   EXECUTE IMMEDIATE 'create table emp1 as select * from hr.employees';

   WHEN OTHERS THEN NULL;
END;
.
/
DELETE from emp1;

commit;

insert into emp1 select * from hr.employees;

insert into emp1 select * from emp1;
  
insert into emp1 select * from emp1;

insert into emp1 select * from emp1;

update emp1 set salary = salary * .1;

commit;

delete emp1 where mod(employee_id, 3) = 2;

commit;

exit;
