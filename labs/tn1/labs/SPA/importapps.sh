#!/bin/bash

sqlplus /nolog  <<FIN!

connect / as sysdba
drop user apps cascade;

host impdp system/oracle directory=DATA_PUMP_DIR dumpfile=appsandstage 

FIN!

