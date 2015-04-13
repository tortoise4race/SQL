# this setup takes a default database with sample schemas
# does the setup for the workshops/practices
# then creates a filesystem backup
# The backup is required for the DBReplay practice

ORADATA=$ORACLE_BASE/oradata

	sqlplus  /nolog <<-EOF
	connect / as sysdba
--	ALTER SYSTEM SET SERVICE_NAMES = 'orcl.oracle.com' SCOPE=BOTH;
	exec dbms_advisor.set_default_task_parameter('ADDM','DB_ACTIVITY_MIN',30);
	exec dbms_workload_repository.modify_snapshot_settings(interval=>15);
	GRANT execute on DBMS_LOCK to PUBLIC;
	@unlock_accounts.sql
	@setup_bulk.sql $ORADATA
	define default_tablespace='SYSAUX'
	define temporary_tablespace='TEMP'
	define perfstat_password='perfstat'
	@?/rdbms/admin/spcreate 
	undefine perfstat_password
	EOF

	sqlplus  /nolog <<-EOF
	connect oe/oe
	@setup_orders.sql
	EOF
	
	sqlplus  /nolog <<-EOF
	connect hr/hr
	GRANT SELECT ON EMPLOYEES to PUBLIC;
	connect sh/sh
	GRANT SELECT ON sales TO PUBLIC;
	GRANT SELECT ON costs TO PUBLIC;
	EOF
	
	sqlplus /nolog <<-EOF
	connect / as sysdba
	@set_rsrc_plan.sql 4
	EOF

	sqlplus  /nolog <<-EOF
	connect / as sysdba
	CREATE TABLESPACE soeindex
	DATAFILE '/u01/app/oracle/oradata/orcl/soeindex.dbf'
	SIZE 60M 
	autoextend on next 10m maxsize unlimited
	extent management local uniform size 100k
	segment space management auto
	nologging;
	EOF

	cd /home/oracle/swingbench/bin
	./oewizard
	cd /home/oracle/workshops
	
	sqlplus  /nolog <<-EOF
	connect / as sysdba
	ALTER PROFILE DEFAULT LIMIT PASSWORD_LIFE_TIME UNLIMITED;
	shutdown immediate
	!cp $HOME/setup/spfileorcl_setup.ora $ORACLE_HOME/dbs/spfileorcl.ora
	startup mount 
	Alter database archivelog;

	CREATE RESTORE POINT SETUP_01 GUARANTEE FLASHBACK DATABASE;
	ALTER DATABASE OPEN;

	EXIT
	EOF

crontab $HOME/setup/oracle.crontab	

