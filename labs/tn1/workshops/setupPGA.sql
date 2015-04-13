-- setupPGA.sql

-- Shutdown database 
-- change spfile
-- startup 
--

shutdown immediate 

!cp $HOME/workshops/spfileorcl_PGA.ora $ORACLE_HOME/dbs/spfileorcl.ora

startup

CREATE TEMPORARY TABLESPACE TEMP_L 
UNIFORM SIZE 64K
TEMPFILE '/u01/app/oracle/oradata/orcl/temp_l01.dbf' Size 150M 
AUTOEXTEND ON NEXT 10M MAXSIZE 300M;

ALTER DATABASE DEFAULT TEMPORARY TABLESPACE "TEMP_L";

ALTER SYSTEM SET PGA_AGGREGATE_TARGET=20M SCOPE=BOTH;

PROMPT  Finished setup PGA

