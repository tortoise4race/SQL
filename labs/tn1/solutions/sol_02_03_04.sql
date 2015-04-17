COLUMN time_waited HEADING TIME|WAITED
COLUMN AVERAGE_WAIT HEADING AVERAGE|WAIT
COLUMN seconds_in_wait HEADING SECONDS|IN_WAIT
COLUMN EVENT FORMAT A20
COLUMN total_waits HEADING TOTAL|WAITS

select sid, wait_time, seconds_in_wait, state
     from v$session_wait
     where event = 'buffer busy wait';

SELECT sid, event, total_waits,
   time_waited, average_wait
   FROM V$SESSION_EVENT
   WHERE event = 'buffer busy waits';

exit
