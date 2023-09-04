SET SERVEROUTPUT ON;
create or replace procedure morethanone(x in number)
is
	c_id customer.CustId%Type ; 
	c_name customer.CustName%Type;
	c_no customer.Cust_contact%Type ;	
	bill_id int;
	date_recorded date;
	amount int;
	product_id int;
	customer_id int;
	cursor hello1 is
		SELECT c.CustId,c.CustName FROM customer c WHERE 1<(SELECT COUNT (*) FROM Bills b WHERE b.CustId = c.CustId);
BEGIN
		OPEN hello1;
		dbms_output.put_line('CustomerID '||'     '||'CustomerName ');
		loop
		fetch hello1 into  c_id ,c_name;
		dbms_output.put_line(c_id||'                '||c_name);
		exit when hello1%notfound;
		end loop;
		CLOSE hello1;
	EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
    WHEN others THEN
      dbms_output.put_line('Other error occured!');
end morethanone;
/