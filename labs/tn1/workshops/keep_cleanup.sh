#!/bin/bash
#-- create a KEEP pool 
#-- and set the table properties to make use of it
#-- Select statements populate the keep cache


sqlplus -S /nolog >/dev/null <<-EOF
set termout off
set feedback off
connect hr/hr

ALTER TABLE EMPLOYEES STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE COUNTRIES STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE DEPARTMENTS STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE LOCATIONS STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE REGIONS STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE JOB_HISTORY STORAGE(BUFFER_POOL DEFAULT);
exit
EOF

sqlplus -S /nolog > /dev/null <<-EOF
set termout off
set feedback off
connect oe/oe

ALTER TABLE orders STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE order_items STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE inventories STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE customers STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE product_information STORAGE(BUFFER_POOL DEFAULT);
ALTER INDEX INV_PRODUCT_IX STORAGE(BUFFER_POOL DEFAULT);
ALTER INDEX PRODUCT_INFORMATION_PK STORAGE(BUFFER_POOL DEFAULT);

exit
EOF

sqlplus -S /nolog > /dev/null <<-EOF
set termout off
set feedback off
connect sh/sh
ALTER TABLE SALES MODIFY PARTITION SALES_Q3_1999 STORAGE(BUFFER_POOL DEFAULT);
ALTER TABLE SALES MODIFY PARTITION SALES_Q1_1999 STORAGE(BUFFER_POOL DEFAULT);
EOF


sqlplus -S /nolog >/dev/null <<-EOF
set termout off
set feedback off
connect / as sysdba
ALTER SYSTEM SET db_keep_cache_size = 0;
exit
EOF

