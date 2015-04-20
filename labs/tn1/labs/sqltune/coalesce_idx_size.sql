-- Find the important index stats before and 
-- after coalesce

SELECT Blevel, LEAF_BLOCKS, DISTINCT_KEYS, CLUSTERING_FACTOR
FROM USER_INDEXES
WHERE index_name = 'CTEST_PK';


