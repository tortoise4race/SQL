-- USe varray processing 
set feedback off
DECLARE

 CURSOR C2 IS 
	SELECT CUST_ID FROM CUSTOMERS
	WHERE rownum < 10000;
 CURSOR C1 IS SELECT PROD_ID FROM PRODUCTS;

 TYPE emp_list IS TABLE OF VARCHAR2(30);

 parameters emp_list; 
 j          NUMBER(10);
 tot_amount NUMBER(20);

BEGIN 
  FOR C1_ROW in C1 LOOP
	SELECT SUM(unit_cost) total INTO TOT_AMOUNT
	FROM sh.costs
	WHERE prod_id = C1_ROW.prod_id;
  END LOOP;

  FOR C2_ROW in C2 LOOP
	SELECT SUM(AMOUNT_SOLD) total INTO TOT_AMOUNT
	FROM sh.sales
	WHERE cust_id = C2_ROW.cust_id;
  END LOOP;

  FOR C1_ROW in C1 LOOP
	SELECT SUM(AMOUNT_SOLD) total INTO TOT_AMOUNT
	FROM sh.sales
	WHERE prod_id = C1_ROW.prod_id;
  END LOOP;
  
END;
.
/

exit;
