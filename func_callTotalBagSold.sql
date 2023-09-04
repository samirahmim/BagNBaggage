SET SERVEROUTPUT ON;
DECLARE
	totalcount int;
        pdate bills.date_recorded%type;
	
BEGIN
	pdate := '&Date';
	totalcount := maxProductSold(pdate);
	DBMS_OUTPUT.NEW_LINE;
       dbms_output.put_line('Total Product Sold on ' || pdate ||' : '|| totalcount||' ');	
END;
/