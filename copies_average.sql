delimiter $$
create procedure copies_average()
begin
	declare v_fin int(1);
    declare v_libro char(4);
    declare v_copia int;
    declare v_libroCant int;
    declare v_copiaCant int;
    
    declare c_libro cursor for
							select BOOK_CODE
                            from BOOKS;
    
    declare c_copia cursor for
							select COPY_CODE
                            from COPIES;
    
	declare continue handler for not found set v_fin = 1;
    
    set v_libroCant = 0;
    set v_copiaCant = 0;
    set v_fin = 0;
    
    open c_libro;
    
    l_libro : loop
		
        fetch c_libro into v_libro;
        
        if v_fin = 1 then
			leave l_libro;
		end if;		
        
        set v_libroCant = v_libroCant + 1;
        
	end loop l_libro;
    
    close c_libro;
    
    set v_fin = 0;
    
    open c_copia;
    
    l_copia : loop
		
        fetch c_copia into v_copia;
        
        if v_fin = 1 then
			leave l_copia;
		end if;
		
    
		set v_copiaCant = v_copiaCant + 1;
        
	end loop l_copia;
    
    close c_copia;
    
    select concat('Hay una media de ', v_copiaCant / v_libroCant, ' copias por libro') from dual;
    
 end;
 $$
 delimiter ;
 
 call copies_average;
 drop procedure copies_average;
 
 