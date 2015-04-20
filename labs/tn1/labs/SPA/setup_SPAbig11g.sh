#!/bin/bash

sqlplus /nolog <<FIN!

Connect / as sysdba

shutdown immediate
!cp $HOME/workshops/spfileorcl_wksh.ora $ORACLE_HOME/dbs/spfileorcl.ora
startup

FIN!

