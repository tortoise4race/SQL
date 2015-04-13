#!/bin/bash

maxrec=$1

sqlplus -s /nolog <<-EOF
	Connect spc/spc
	@$HOME/workshops/start_71.sql $maxrec
	exit
EOF
