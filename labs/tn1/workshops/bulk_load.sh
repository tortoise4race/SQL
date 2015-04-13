#!/bin/bash
#
# bulk_load.sh
# this is a session driver that will run a SQL script repeatedly
# with a  delay between runs
#
#set -x

file='/home/oracle/workshops/runload'
delay=$2
user=USER$1

while [[ -f $file ]]
do

sqlplus -S /nolog <<-EOF
        connect $user/$user
	@bulk_load
	EOF

sleep $delay

done
