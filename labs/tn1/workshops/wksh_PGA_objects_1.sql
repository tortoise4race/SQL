spool &1
set termout off

select * from
	(select * from dba_objects
    order by timestamp)
where rownum < 10000
/
COMMIT;
Spool off
exit
