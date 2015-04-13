-- touch a lot of rows to fill the buffer cache
set feedback off
DECLARE

 CURSOR C2 IS SELECT * FROM order_items;

 CURSOR C3 IS SELECT * from CUSTOMERS;

 TYPE list IS TABLE OF VARCHAR2(30);

 parameters list; 
 total_qoh    NUMBER(20);
 tot_items  NUMBER(20);
 prod_name VARCHAR2(50);

BEGIN 
        FOR c2row in C2 loop
             SELECT SUM(QUANTITY_ON_HAND) into TOTAL_QOH
		FROM INVENTORIES
		WHERE product_id = c2row.product_id;
    
	     SELECT product_name into prod_name
		FROM PRODUCT_INFORMATION
		WHERE product_id = c2row.product_id;
        END LOOP;

    FOR c3row IN C3 LOOP
        SELECT count(*) into tot_items 
        FROM order_items, orders
        WHERE order_items.order_id = orders.order_id
	AND c3row.customer_id = orders.customer_id;
    END LOOP;
END;
.
/

exit;
