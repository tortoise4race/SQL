set verify off

declare
t number;
begin
for t in 1..&1 loop
insert into jfvt values (NULL,'ab');
commit;
end loop;
end;
/
exit;
