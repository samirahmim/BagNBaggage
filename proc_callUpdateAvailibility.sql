SET SERVEROUTPUT ON;
DECLARE
	pid BAG.BId%type;
	stk BAG.availibility%type;
	
BEGIN
    pid:='&productid';
    stk:='&stock';
	UPDATESTOCKS(pid,stk);
END;
/