SELECT owner, name, sum(executions),sum(sharable_mem) FROM V$DB_OBJECT_CACHE
   WHERE kept='YES'
GROUP BY owner, name
ORDER BY 3,4
/
