#!/bin/bash
#
# this is a session driver that will run a SQL script repeatedly
#  in a single database session
#

file='/home/oracle/workshops/runload'
delay=$2
num=0

param1=$1

while [[ -f $file ]]

do

sqlplus -S /nolog >> $param1 <<-EOF
CONNECT hr/hr
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
@soft_parse_emp
EOF

sleep $delay
done 

