SELECT plan_hash_value, count(*) 
    FROM V$SQL 
     WHERE parsing_schema_name not in
     ('SYS','SYSMAN','DBSNMP')
    GROUP BY plan_hash_value ORDER BY 2,1;
