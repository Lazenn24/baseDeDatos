delimiter $$
create procedure all_countries()
begin
	declare v_fin int;
    declare v_countryLanguage varchar(200);
    declare v_country char(3);
    
    declare c_country cursor for 
							select Code
                            from country;
                            
	declare continue handler for not found set v_fin = 1;
    
	create temporary table if not exists tmp_country (idioma varchar(200));
    
    set v_fin = 0;
    open c_country;
    
    l_country : loop
    
		fetch c_country into v_country;
        
        if v_fin = 1 then
			leave l_country;
        end if;
        
        call country_language(v_country, v_countryLanguage);
        
        insert into tmp_country(idioma) values (v_countryLanguage);
        
	end loop l_country;
    
    close c_country;
    
    select * from tmp_country;
    
    drop table if exists tmp_country;
    
end;
$$
delimiter ;
call all_countries; 
drop  procedure all_countries;   

    
    
        