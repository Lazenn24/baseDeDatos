delimiter $$
create procedure count_copies()
begin
	declare v_contadorLibro int;
    declare v_contadorCopia int;
    declare v_fin int(1);
    declare v_libro char(4);
    declare v_copia int;
    
    declare c_copias cursor for
								select COPY_CODE
								from COPIES;
                                
	declare c_libros cursor for
								select BOOK_CODE
                                from BOOKS;
                                
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    set v_contadorLibro = 0;
    set v_contadorCopia = 0;
    
    open c_copias;
    
    l_copias : loop
		
        fetch c_copias into v_copia;
        
        if v_fin = 1 then
			leave l_copias;
        end if;
        
        set v_contadorCopia = v_contadorCopia + 1;
        
    end loop l_copias;
    close c_copias;
    
    
    
    set v_fin = 0;
    
    open c_libros;
    
    l_libros : loop
    
		fetch c_libros into v_libro;
        
        if v_fin = 1 then
			leave l_libros;
        end if;
        
        set v_contadorLibro = v_contadorLibro + 1;
       
    end loop l_libros;
    close c_libros;
    
     select concat('Hay ', v_contadorCopia/v_contadorLibro, ' copias por libro') from dual;
    
 end;
 $$
 delimiter ;
 call count_copies();
 drop procedure count_copies;
 
 drop database world;
 
 
 
 

 

 
 