CREATE OR REPLACE PROCEDURE DEPLETE_INV(
     prod_id IN NUMBER,
     qty     IN NUMBER
) AS
     whse_id NUMBER(3);
     qoh     NUMBER(8); 
BEGIN
   
     SELECT warehouse_id INTO whse_id 
     FROM inventories
     WHERE product_id = prod_id
     AND ROWNUM = 1;

     SELECT QUANTITY_ON_HAND INTO qoh FROM inventories
     WHERE warehouse_id = whse_id
     AND product_id = prod_id;

     IF (qty > qoh) THEN          
       UPDATE inventories SET QUANTITY_ON_HAND = QUANTITY_ON_HAND - qty
       WHERE warehouse_id = whse_id
       AND product_id = prod_id;
     ELSE
       UPDATE inventories SET QUANTITY_ON_HAND = QUANTITY_ON_HAND + 1000
       WHERE warehouse_id = whse_id
       AND product_id = prod_id;
     END IF;

     
EXCEPTION 
     WHEN NO_DATA_FOUND THEN 
     
     whse_id := MOD(qty,9)+1;

     INSERT INTO INVENTORIES (warehouse_id, product_id, quantity_on_hand)
	VALUES(whse_id, prod_id, 1000);

END;
.
/
