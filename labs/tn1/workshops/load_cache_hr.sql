-- Creaet a set of statements to load the buffer cache

set feedback off

DECLARE

 CURSOR C1 IS SELECT * FROM hr.employees;

 CURSOR C2 IS SELECT * FROM hr.Departments;

 CURSOR C3 IS SELECT * FROM hr.LOcations;

 CURSOR C4 IS SELECT * FROM hr.regions;

 CURSOR C5 IS SELECT * FROM user_tables;

 total	NUMBER(10);
 v_dept	Varchar2(30);
 v_region	VARCHAR2(25);
 v_city		VARCHAR2(30);
 v_country	VARCHAR2(40);
 
BEGIN 

  FOR c5row in C5 LOOP

	SELECT count(index_name) into total
	 from user_indexes
        WHERE table_name = c5row.table_name;
  END LOOP;
 
  FOR c1row in C1 LOOP

    BEGIN
        SELECT D.Department_name, R.region_name, L.City, C.country_name
 	INTO v_dept, v_region, v_city, v_country 
	FROM departments D, locations L, regions R, countries C
	WHERE D.location_id = L.location_id
	AND C.region_id = R.region_id
	AND L.country_id = C.country_id
	AND D.department_id = c1row.department_id;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN NULL;
    END;

  END LOOP;
 
  FOR c1row in C1 LOOP
    BEGIN       
       SELECT count (*) into total
       FROM JOB_HISTORY
       WHERE employee_id = c1row.employee_id;
    EXCEPTION
       WHEN NO_DATA_FOUND THEN NULL;
    END;	
  END LOOP;
END;
.
/

exit;
