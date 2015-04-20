
PIDLST=`cat /tmp/servwork_pids`

#
# Kill all these processes
#
for PID in $PIDLST; do
  echo "Killing stream with pid=$PID"
  sqlplus /nolog >> /tmp/stop_servwork.log 2>&1 <<-EOF
   connect / as sysdba 
   @kill_servwork.sql $PID
   exit
EOF

  sqlplus /nolog >> /tmp/stop_servwork.log 2>&1 <<-EOF
    connect / as sysdba 
    @/tmp/drop_servwork.sql
    exit
EOF

  kill -9 $PID >> /tmp/stop_servwork.log 2>&1
done

