set verify off
declare
t number;
begin
for t in 1..&1 loop
insert into spct values (Null,'a');
end loop;
commit;
end;
/
exit;
