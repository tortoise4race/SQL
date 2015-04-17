#!/bin/bash
sqlplus /nolog <<-EOF

set echo on
CONNECT spc/spc
SELECT segment_space_management
FROM dba_tablespaces
WHERE tablespace_name=(select tablespace_name from user_tables);

exit;
EOF
