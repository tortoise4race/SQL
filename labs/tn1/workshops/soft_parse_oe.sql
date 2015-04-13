-- sp _oe_load.sql
-- create a load of various cursors in the shared pool
--
set termout off
set verify off
set feedback off
spool &1 replace

select /* B */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* B */ product_name, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* B */ product_name, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* B */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* B */ product_id, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* B */ product_id, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* B */ warehouse_id, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* B */ warehouse_spec, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* B */ warehouse_id, location_id from warehouses 
where warehouse_id between 2 and 4;

select /* B */ * from warehouses 
where warehouse_id between 2 and 4;

select /* B */ * from inventories 
where product_id between 2400 and 3000;

select /* B */ warehouse _id from inventories 
where product_id between 2400 and 3000;

select /* B */ warehouse _id from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* B */ warehouse _id, product_id, quantity_on_hand from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* B */ * from product_descriptions 
where product_id between 2400 and 2450;

select /* B */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* B */ * from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* B */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

select /* B */ * from promotions where promo_id = 1;

select /* B */ promo_id, promo_name from promotions where promo_id = 2;

SELECT /* B */ * from promotions;

select /* B */ promo_id, promo_name from promotions;

SELECT /* B */ promo_id, promo_name from promotions;
select /* B */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* B */ product_name, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* B */ product_name, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* A */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* A **/ product_id, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* A */ product_id, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* A */ warehouse_id, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* A */ warehouse_spec, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* A */ warehouse_id, location_id from warehouses 
where warehouse_id between 2 and 4;

select /* A */ * from warehouses 
where warehouse_id between 2 and 4;

select /* A */ * from inventories 
where product_id between 2400 and 3000;

select /* A */ warehouse _id from inventories 
where product_id between 2400 and 3000;

select /* A */ warehouse _id from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* A */ warehouse _id, product_id, quantity_on_hand from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* A */ * from product_descriptions 
where product_id between 2400 and 2450;

select /* A */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* A **/ * from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* A **/ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

select /* A */ * from promotions where promo_id = 1;

select /* A */ promo_id, promo_name from promotions where promo_id = 2;

SELECT /* A **/ * from promotions;

select /* A */ promo_id, promo_name from promotions;

SELECT /* A **/ promo_id, promo_name from promotions;
-- SECTION END

select /* D */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* D */ product_name, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* D */ product_name, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* D */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* D */ product_id, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* D */ product_id, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* D */ warehouse_id, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* D */ warehouse_spec, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* D */ warehouse_id, location_id from warehouses 
where warehouse_id between 2 and 4;

select /* D */ * from warehouses 
where warehouse_id between 2 and 4;

select /* D */ * from inventories 
where product_id between 2400 and 3000;

select /* D */ warehouse _id from inventories 
where product_id between 2400 and 3000;

select /* D */ warehouse _id from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* D */ warehouse _id, product_id, quantity_on_hand from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* D */ * from product_descriptions 
where product_id between 2400 and 2450;

select /* D */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* D */ * from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* D */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

select /* D */ * from promotions where promo_id = 1;

select /* D */ promo_id, promo_name from promotions where promo_id = 2;

SELECT /* D */ * from promotions;

select /* D */ promo_id, promo_name from promotions;

SELECT /* D */ promo_id, promo_name from promotions;
select /* D */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* D */ product_name, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* D */ product_name, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* C */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* C **/ product_id, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* C */ product_id, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* C */ warehouse_id, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* C */ warehouse_spec, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* C */ warehouse_id, location_id from warehouses 
where warehouse_id between 2 and 4;

select /* C */ * from warehouses 
where warehouse_id between 2 and 4;

select /* C */ * from inventories 
where product_id between 2400 and 3000;

select /* C */ warehouse _id from inventories 
where product_id between 2400 and 3000;

select /* C */ warehouse _id from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* C */ warehouse _id, product_id, quantity_on_hand from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* C */ * from product_descriptions 
where product_id between 2400 and 2450;

select /* C */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* C **/ * from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* C **/ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

select /* C */ * from promotions where promo_id = 1;

select /* C */ promo_id, promo_name from promotions where promo_id = 2;

SELECT /* C **/ * from promotions;

select /* C */ promo_id, promo_name from promotions;

SELECT /* C **/ promo_id, promo_name from promotions;
-- SECTION END

select /* E */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* E */ product_name, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* E */ product_name, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* E */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* E */ product_id, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* E */ product_id, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* E */ warehouse_id, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* E */ warehouse_spec, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* E */ warehouse_id, location_id from warehouses 
where warehouse_id between 2 and 4;

select /* E */ * from warehouses 
where warehouse_id between 2 and 4;

select /* E */ * from inventories 
where product_id between 2400 and 3000;

select /* E */ warehouse _id from inventories 
where product_id between 2400 and 3000;

select /* E */ warehouse _id from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* E */ warehouse _id, product_id, quantity_on_hand from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* E */ * from product_descriptions 
where product_id between 2400 and 2450;

select /* E */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* E */ * from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* E */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

select /* E */ * from promotions where promo_id = 1;

select /* E */ promo_id, promo_name from promotions where promo_id = 2;

SELECT /* E */ * from promotions;

select /* E */ promo_id, promo_name from promotions;

SELECT /* E */ promo_id, promo_name from promotions;
select /* E */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* E */ product_name, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* E */ product_name, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* F */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* F **/ product_id, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* F */ product_id, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* F */ warehouse_id, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* F */ warehouse_spec, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* F */ warehouse_id, location_id from warehouses 
where warehouse_id between 2 and 4;

select /* F */ * from warehouses 
where warehouse_id between 2 and 4;

select /* F */ * from inventories 
where product_id between 2400 and 3000;

select /* F */ warehouse _id from inventories 
where product_id between 2400 and 3000;

select /* F */ warehouse _id from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* F */ warehouse _id, product_id, quantity_on_hand from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* F */ * from product_descriptions 
where product_id between 2400 and 2450;

select /* F */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* F **/ * from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* F **/ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

select /* F */ * from promotions where promo_id = 1;

select /* F */ promo_id, promo_name from promotions where promo_id = 2;

SELECT /* F **/ * from promotions;

select /* F */ promo_id, promo_name from promotions;

SELECT /* F **/ promo_id, promo_name from promotions;

select /* G */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* G */ product_name, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* G */ product_name, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* G */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* G */ product_id, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* G */ product_id, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* G */ warehouse_id, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* G */ warehouse_spec, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* G */ warehouse_id, location_id from warehouses 
where warehouse_id between 2 and 4;

select /* G */ * from warehouses 
where warehouse_id between 2 and 4;

select /* G */ * from inventories 
where product_id between 2400 and 3000;

select /* G */ warehouse _id from inventories 
where product_id between 2400 and 3000;

select /* G */ warehouse _id from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* G */ warehouse _id, product_id, quantity_on_hand from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* G */ * from product_descriptions 
where product_id between 2400 and 2450;

select /* G */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* G */ * from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* G */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

select /* G */ * from promotions where promo_id = 1;

select /* G */ promo_id, promo_name from promotions where promo_id = 2;

SELECT /* G */ * from promotions;

select /* G */ promo_id, promo_name from promotions;

SELECT /* G */ promo_id, promo_name from promotions;
select /* G */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* G */ product_name, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* G */ product_name, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* H */ product_name, category_id, supplier_id from product_information
where product_id between 2000 and 2100;

SELECT /* H **/ product_id, category_id, supplier_id from product_information
where product_id between 2200 and 2300;

select /* H */ product_id, category_id, supplier_id 
from product_information
where product_id between 2500 and 2600;

select /* H */ warehouse_id, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* H */ warehouse_spec, warehouse_name from warehouses 
where warehouse_id between 2 and 4;

select /* H */ warehouse_id, location_id from warehouses 
where warehouse_id between 2 and 4;

select /* H */ * from warehouses 
where warehouse_id between 2 and 4;

select /* H */ * from inventories 
where product_id between 2400 and 3000;

select /* H */ warehouse _id from inventories 
where product_id between 2400 and 3000;

select /* H */ warehouse _id from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* H */ warehouse _id, product_id, quantity_on_hand from inventories 
where product_id between 2400 and 3000
and Quantity_on_hand > 5;

select /* H */ * from product_descriptions 
where product_id between 2400 and 2450;

select /* H */ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* H **/ * from product_descriptions 
where product_id between 2400 and 2450;

SELECT /* H **/ product_id, language_id from product_descriptions 
where product_id between 2400 and 2450;

select /* H */ * from promotions where promo_id = 1;

select /* H */ promo_id, promo_name from promotions where promo_id = 2;

SELECT /* H **/ * from promotions;

select /* H */ promo_id, promo_name from promotions;

SELECT /* H **/ promo_id, promo_name from promotions;

exit
