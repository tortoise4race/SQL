#!/bin/bash
#
# wkld_sess.sh
# this is a session driver that will run a SQL script repeatedly
# with a  delay between runs
#
#set -x

file=$HOME/workshops/runload
delay=$2

param1=$1

while [[ -f $file ]]

do

sqlplus -S /nolog <<-EOF
        connect oe/oe@ORCL
	@insert_orders $param1
	EOF

sleep $delay

done 

