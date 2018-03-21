delimiter $$
create procedure country_language(in p_countryCode char(3), out p_languages varchar(200))
begin

	declare v_fin int;
	declare v_language varchar(30);
    declare v_stringLanguage varchar(300);
    declare v_country varchar(20);
    declare v_contador int;

	declare c_language cursor for 
								select language
                                from countrylanguage
                                where p_countryCode = CountryCode;
                            
	declare continue handler for not found set v_fin = 1;

	set v_fin = 0;
    set v_contador = 0;
    
	select concat(name, ': ') into v_stringLanguage
    from country
    where p_countryCode = Code;

    open c_language;

	l_language : loop

        fetch c_language into v_language;
        
        if v_fin = 1 then
			set v_stringLanguage = concat(v_stringLanguage, '. ');
            leave l_language;
		end if;
        
        if v_contador != 0 then
			set v_stringLanguage = concat(v_stringLanguage, ', ');
        end if;    
    
		
        
		set v_stringLanguage = concat(v_stringLanguage, v_language);
        set v_contador = v_contador + 1;
        
        end loop l_language;
    
    close c_language;
 
    set p_languages = v_stringLanguage;
    
 end;
 $$
 delimiter ;
 drop procedure country_language;
 call country_language('ESP', @resultado);
 select @resultado;
 

