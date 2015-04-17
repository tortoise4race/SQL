COLUMN event FORMAT A30 WORD_WRAPPED
COLUMN average_wait HEADING AVERAGE|WAIT
COLUMN TIME_WAITED HEADING TIME|WAITED
COLUMN TOTAL_WAITS HEADING TOTAL|WAITS
Set pagesize 60

SELECT event, total_waits, time_waited, average_wait
  FROM V$SYSTEM_EVENT
  ORDER BY time_waited DESC;

