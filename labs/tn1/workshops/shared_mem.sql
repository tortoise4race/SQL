select  kept_mem,
  all_mem,
  (all_mem-kept_mem) reuse_mem
 from (select SUM(sharable_mem) kept_mem from v$db_object_cache
       where kept = 'YES') K,
      (Select SUM(SHARABLE_MEM) all_mem from v$db_object_cache) A 
/

