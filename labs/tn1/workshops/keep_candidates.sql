 
set pagesize 100

SELECT * FROM V$DB_OBJECT_CACHE
    WHERE sharable_mem > 10000
    AND (type='PACKAGE' OR type='PACKAGE BODY' OR
         type='FUNCTION' OR type='PROCEDURE')
    AND kept='NO'
/
