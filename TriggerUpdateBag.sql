SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER updateProductStock 
AFTER UPDATE 
of availibility
ON BAG
FOR EACH ROW 

DECLARE 
   msg varchar(100):= 'Product stock have been updated.'; 
BEGIN 
	
    dbms_output.put_line(msg);
	
	dbms_output.put_line('Product ID: ' || :OLD.BId); 
	dbms_output.put_line('Product Name: ' || :OLD.bName); 
	dbms_output.put_line('Updated Stock: ' || :NEW.availibility);
	
END; 
/ 