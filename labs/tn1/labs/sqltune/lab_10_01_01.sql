SET SERVEROUTPUT ON

exec dbms_stats.drop_extended_stats('sh','customers','(CUST_CITY,CUST_STATE_PROVINCE,COUNTRY_ID)');

DECLARE
        cg_name  VARCHAR2(30);
BEGIN
cg_name := dbms_stats.create_extended_stats('SH','CUSTOMERS',
                '(CUST_CITY,CUST_STATE_PROVINCE,COUNTRY_ID)');

dbms_output.put_line('column group name is:'||cg_name);

dbms_stats.gather_table_stats('SH','CUSTOMERS',
   method_opt=>'for all columns size 1, for columns (CUST_CITY,CUST_STATE_PROVINCE,COUNTRY_ID) size 3');
 END;
/

