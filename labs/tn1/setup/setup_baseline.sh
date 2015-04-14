#!/bin/bash
# this script is designed to run for ~24 hours 
# it intended that this script start immediately after the class setup 
# and run in the background until the class starts or the baseline practice 
# start

# this script has the following dependencies
#  an 11g  database must be created and open
#  the /home/oracle/setup directory must exist
#  the /home/oracle/setup directory must exist and be populated with the labs scripts
#  this script calls txnpersec.sql in the labs directory.
#
# This script creates a low level load of 4 TXN/s of 8 TXN/s on alternate hours
 
# the parameter to this script sets the transactions per second of the load
# example for 40 tps: SQL> @txnpersec 40

cd $HOME/setup

file=$HOME/setup/base_runload

## If the base_runload exists and the setup_baseline is running
## do not start another instance

x=`pgrep -lf setup_baseline.sh | wc -l`

if (( x > 3 ))
then
	echo $x
   	echo `pgrep -lf setup_baseline.sh`
	echo "setup_baseline already running" 
  exit
else
  if [[ -f $file  ]]
  then
	rm $file
  fi
fi

## If the baseline_ready file exists DO NOT RUN

if [[ -f $HOME/setup/baseline_ready ]]
then
  echo 'baseline is ready'
  exit
else [[ -f $file ]]
  echo 'Creating workload for baseline'
  touch $file
fi

## setup the environment create user jfv work table
## and set AWR snapshot settings

sqlplus -S /nolog <<-EOF
	connect	/ as sysdba
	set feedback off
	set echo off

	CREATE OR REPLACE DIRECTORY SETUP AS '$HOME/setup';

	begin
	  dbms_workload_repository.modify_snapshot_settings(retention=>17280, interval => 15);
	end;
	/

	drop user jfv cascade;

	create user jfv identified by jfv
	default tablespace users
	temporary tablespace temp;

	grant connect,resource,dba to jfv;

	connect jfv/jfv
	set feedback off
	declare
	  c int;
	begin
	  select count (*) into c from user_tables where table_name = upper('work');
	  if c = 1 then
	      execute immediate 'drop table work purge';
	  end if;
	end;

	create table work(c number);

	set echo off

	EOF
## Start workload for baseline

while [[ -f $file ]]
do

hour=`date +%l`
echo 'hour is:' $hour

if (( $hour%2 == 0 )) 
then
date  
echo 'txn/s = 4'

sqlplus -S /nolog <<-EOF
	connect jfv/jfv
	set feedback off
	@txnpersec 4 
	exit
	EOF
else
date
echo 'txn/s = 8'
sqlplus -S /nolog <<-EOF
        connect jfv/jfv
	set feedback off
        @txnpersec 8
        exit
	EOF
fi

sleep 1

echo 'testing snapshots'
# if there are 100 snapshots stop
# rename the runload file to baseline_ready
sqlplus -S /nolog <<-EOF
	connect / as sysdba
        set feedback off	
	DECLARE
		num_snaps	NUMBER;
	BEGIN
		select count(*) INTO num_snaps FROM DBA_HIST_SNAPSHOT;

		IF ( num_snaps > 100 ) THEN

		UTL_FILE.FRENAME('SETUP', 'base_runload', 'SETUP', 'baseline_ready');
		dbms_workload_repository.modify_snapshot_settings(retention=>17280, interval => 60);
		END IF;
	END;
	/

	EXIT;
	EOF

done
exit
