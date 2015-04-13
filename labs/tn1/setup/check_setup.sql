-- check that setup is complete --

-- check unlock_users.sql script --
-- are hr, oe, and sh account open --
Prompt 'Should see open accounts for OE,HR,SH'

Select username, account_status from DBA_USERS
where username in ('OE','HR','SH');

-- CHeck setup_bulk.sql script ----

Prompt Should see 20 users USER1-20
Select username, account_status from DBA_USERS
where username like 'USER%'
order by username;

Prompt 'Should see 10 tablspaces like LOADTEST1-10'

SELECT TABLESPACE_NAME from DBA_TABLESPACES
WHERE tablespace_name like 'LOADTEST%'
Order by 1;

-- Check for perfstat user and Statspak tables --

PROMPT Check that PERFSTAT user exists and there are 72 tables

select username, account_status from dba_users
where username = 'PERFSTAT';

select count(*) from dba_tables 
where owner = 'PERFSTAT';

-- check that setup_orders.sql ran correctly

Prompt OE.ORDERS_SEQ exists

select sequence_owner, sequence_name 
from dba_sequences 
where sequence_name = 'ORDERS_SEQ';

Prompt Does OE.Deplete_inv exist

select OWNER, object_name from dba_objects
where object_name = 'DEPLETE_INV';

-- ARe the grants to public made --
Prompt See 3 grants to PUBLIC

SELECT GRANTEE, TABLE_NAME, PRIVILEGE
from DBA_TAB_PRIVS
WHERE GRANTEE = 'PUBLIC'
AND TABLE_NAME IN ('EMPLOYEES', 'SALES', 'COSTS')
and PRIVILEGE = 'SELECT';

-- Check Resource Plan PT_LIMIT

Prompt See Plan PT_LIMIT_PLAN with active_session = 4 for LOW and OTHERS
Prompt   and UNLIMITED for SYS group.

SELECT PLAN, GROUP_OR_SUBPLAN, ACTIVE_SESS_POOL_P1 
from DBA_RSRC_PLAN_DIRECTIVES
WHERE PLAN = 'PT_LIMIT_PLAN';

-- Check Swingbench setup

Prompt Should return two tablespaces

SELECT tablespace_name from DBA_TABLESPACES
where tablespace_name like 'SOE%';

Prompt Should return 8 tables

select count(*) from DBA_TABLES
WHERE OWNER = 'SOE';

-- Check archivelog

Prompt Should be in ARCHIVELOG mode

select log_mode from v$database;

PROMPT Restore point SETUP_01 exists

select name from v$restore_point;


exit
