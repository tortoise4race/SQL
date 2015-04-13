spool &1
set termout off

select * from
	(select * from dba_objects
    order by timestamp)
where rownum < 30000
/
COMMIT;
Spool off
exit
