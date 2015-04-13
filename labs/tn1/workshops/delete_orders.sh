#!/bin/bash
#
# wkld_sess.sh
# this is a session driver that will run a SQL script repeatedly
# with a  delay between runs
#
#set -x

file='/home/oracle/workshops/runload'
delay=$2

param1=$1

while [[ -f $file ]]

do

sqlplus -S /nolog <<-EOF
	connect oe/oe@ORCL
	@delete_orders $param1
	EOF

sleep $delay

done 

