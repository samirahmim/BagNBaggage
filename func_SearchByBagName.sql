create or replace procedure searchProduct(pm in BAG.bName%type)
is
	p_id BAG.BId%type;
	p_name BAG.bName%type; 
	cat BAG.cat%type;
	pr BAG.price%type;
	st BAG.availibility%type;

	CURSOR PShow is
        select BId, bName, cat, price, availibility from BAG ;
begin	

       dbms_output.put_line('ProductID ' || ' ProductName ' || 'CategoryID ' || 'Price ' || 'Stock ');
       dbms_output.put_line('--------- ' || ' ----------- ' || '-------- ' || '----- ' || '----- ');
       open PShow;
	
       loop
		
       FETCH PShow INTO p_id, p_name, cat, pr, st;	
       IF p_name=pm then 
       dbms_output.put_line('     '|| p_id || '                ' || p_name || '             ' || cat||'               ' || pr ||'              ' || st);	
       END IF;	 
       exit when PShow%notfound;
       end loop;
       close PShow;
    EXCEPTION
	WHEN no_data_found THEN 
      dbms_output.put_line('No such data found!');
     WHEN others THEN
      dbms_output.put_line('Other error occured!');
END searchProduct;
/