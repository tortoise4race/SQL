#!/bin/bash

sqlplus /nolog <<FIN!
connect apps/apps

drop table plan_table purge;

FIN!

rm /u01/app/oracle/admin/orcl/dpdump/appsandstage.dmp

expdp system/oracle directory=DATA_PUMP_DIR dumpfile=appsandstage schemas=apps 

