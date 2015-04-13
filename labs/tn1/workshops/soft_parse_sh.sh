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
CONNECT sh/sh
@soft_parse_sh
@soft_parse_sh
@soft_parse_sh
@soft_parse_sh
EOF

sleep $delay
done 

