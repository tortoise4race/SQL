declare
        cg_name VARCHAR2(30);
BEGIN
 cg_name := dbms_stats.show_extended_stats_name('SH','CUSTOMERS',
                        '(CUST_CITY,CUST_STATE_PROVINCE,COUNTRY_ID)');

dbms_output.put_line('column group name is:'||cg_name);

END;
/

