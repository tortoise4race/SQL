#!/bin/bash
#  this script calls txnpersec.sql in the labs directory.
 
# the parameter to this script sets the transactions per second of the load
# example for 40 tps: SQL> @txnpersec 40

cd $HOME/labs

file=$HOME/workshops/runload

touch $file

## setup the environment create user jfv work table
## and set AWR snapshot settings

sqlplus -S /nolog >/dev/null <<-EOF
	connect	/ as sysdba
	set feedback off
	set echo off

	drop user jfv cascade;

	create user jfv identified by jfv
	default tablespace users
	temporary tablespace temp;

	grant connect,resource,dba to jfv;

	connect jfv/jfv
	set feedback off
	drop table work purge;

	create table work(c number);

	set echo off

	EOF
## Start workload 

while [[ -f $file ]]
do

sqlplus -S /nolog <<-EOF
	connect jfv/jfv
	set feedback off
	@txnpersec 40 
	exit
	EOF
sleep 1

done
exit
