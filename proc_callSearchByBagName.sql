SET SERVEROUTPUT ON;
DECLARE
	  pm  BAG.bName%type;	
	
BEGIN
          pm:= '&productName';
           searchProduct(pm);
END;
/