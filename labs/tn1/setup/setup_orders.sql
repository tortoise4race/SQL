-- Setup the orders schema for the application simulator
-- Modified for 10gGC11 to allow this to run multiple times without machine reset
-- Modified for 11g for security best practices and remove instance name


DROP SEQUENCE oe.orders_seq;

DECLARE
  stmt_str VARCHAR2(1000);
  max_order_id NUMBER(12);

BEGIN
  SELECT MAX(ORDER_ID) into max_order_id FROM OE.ORDERS;

  max_order_id := max_order_id + 10;

  stmt_str := 'CREATE SEQUENCE oe.orders_seq START WITH '||
	TO_CHAR(max_order_id, '999999999999')||
	' MAXVALUE 999999999999';

  EXECUTE IMMEDIATE stmt_str;

END;
/

ALTER TABLE "OE"."ORDER_ITEMS" DROP CONSTRAINT "ORDER_ITEMS_ORDER_ID_FK" CASCADE;

ALTER TABLE "OE"."ORDER_ITEMS" ADD ( CONSTRAINT "ORDER_ITEMS_ORDER_ID_FK" 
	FOREIGN KEY ("ORDER_ID") REFERENCES "OE"."ORDERS" ("ORDER_ID") 
	DEFERRABLE INITIALLY DEFERRED NOVALIDATE );

ALTER TABLE "OE"."ORDERS" MODIFY ( "ORDER_TOTAL" NUMBER(12, 2) );

@deplete_inv.pls

exit
