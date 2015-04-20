
STREAM_NUM=0
MAX_STREAM=2
PIDLST=""

while [ $STREAM_NUM -lt $MAX_STREAM ]; do

  # one more 
  let STREAM_NUM="STREAM_NUM+1"

  # start one more stream
   ./servwork1.sh &

  # remember PID
  PIDLST="$! $PIDLST"

  echo "Started stream with pid=$!"


  # start one more stream
  ./servwork2.sh &

  # remember PID
  PIDLST="$! $PIDLST"

  echo "Started stream with pid=$!"

done

#
# Save PID List
#
echo $PIDLST > /tmp/servwork_pids

