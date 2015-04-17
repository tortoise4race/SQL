#!/bin/bash

sqlplus /nolog <<-EOF
Connect perfstat/perfstat
exec STATSPACK.SNAP();
exit
EOF

