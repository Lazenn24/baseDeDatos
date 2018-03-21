delimiter $$
create procedure prueba1()
begin
	select 'Hola mundo' from dual;
end;
$$
delimiter ;    

call prueba1();


create table `number`(
	`value` int not null);
    
insert into `number`(`value`) values (8), (3), (12), (1), (4);

drop table `number`;

select * from number;


-- Hay 5 numeros, el mayor es 12 y el menor es 4

delimiter $$
create procedure count_numbers()
begin
	/*declaraciones*/
    
    /* variables */
    declare v_contador int;
    declare v_fin int(1);
    declare v_numero int;
    
    /* cursores */
    declare c_numeros cursor for 
		select `value` from `number`;
        
    /* handlers */
    declare continue handler for not found set v_fin = 1;
    
    /*instrucciones*/
    set v_contador = 0;
    set v_fin = 0;
    
    open c_numeros;
    
    l_numeros: loop
    
		fetch c_numeros into v_numero;
         
         if v_fin = 1 then
			leave l_numeros;
         end if;
         
         set v_contador = v_contador + 1;
         
	end loop l_numeros;
    close c_numeros;
    
    select v_contador from dual;
end;
$$
delimiter ;
drop procedure count_numbers;
call count_numbers();



-- Cuenta cuantos hay, y señala el mas grande y el mas pequeño
-- Hay 5 numeros, el mayor es 12 y el menor es 4


delimiter $$
create procedure count_numbersv2()
begin
	
    declare v_contador int;
    declare v_fin int(1);
    declare v_numero int;
    declare v_max int;
    declare v_min int;
    
    declare c_numeros cursor for 
		select `value` from `number`;

	declare continue handler for not found set v_fin = 1;
        
	set v_contador = 0;
	set v_fin = 0;
        
	open c_numeros;

	l_numeros: loop
        
		fetch c_numeros into v_numero;
		
        if v_fin = 1 then
			leave l_numeros;
        end if;
        
        if v_contador = 0 then
			set v_max = v_numero;
            set v_min = v_numero;
		end if;
		
     
		if v_numero < v_min then
			set v_min = v_numero;
		elseif v_numero > v_max then
			set v_max = v_numero;
		end if;
		
     
		set v_contador = v_contador + 1;
        
	end loop l_numeros;
        
        close c_numeros;
        
        select concat('Hay ', v_contador, ' numeros, el mayor es ',v_max, ' y el menor es ', v_min) from dual;
        
        
 end;
 $$
 delimiter ;
 drop procedure count_numbersv2;
 call count_numbersv2();
        









