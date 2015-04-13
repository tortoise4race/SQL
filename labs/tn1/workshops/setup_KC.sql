--setup for scenario KeepCache
-- Shutdown database 
-- change spfile
-- startup 
-- this setup reduces the size of the Buffer cache
--
shutdown immediate

!cp $HOME/workshops/spfileorcl_KEEP.ora $ORACLE_HOME/dbs/spfileorcl.ora

startup

set feedback off

ALTER SYSTEM SET DB_CACHE_SIZE = 8M;

set feedback on

PROMPT  Finished setup KC

