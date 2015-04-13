#!/bin/bash
# 
maxrec=$1
sqlplus -s /nolog <<-EOF
connect jfv/jfv
@start_51.sql $maxrec
EOF
exit
