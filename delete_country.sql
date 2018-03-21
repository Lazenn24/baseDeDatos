delimiter $$
create procedure delete_country(in country_id char(3))
begin
	/*Delete every city and the country with the given country_id*/
    declare v_fin int;
    
    declare v_city char(3);
    
    declare c_delete cursor for 
		select CountryCode from city;
    
    declare continue handler for not found set v_fin = 1;
    
    open c_delete;
    
    l_delete : loop
    
		fetch c_delete into v_city;
        
            
		if v_fin = 1 then
			leave l_delete;
		end if;		
        
        if v_city = country_id then
			delete from city where CountryCode = v_city;
        end if;    
    
	end loop l_delete;
    
    close c_delete;
  
  delete from country where Code = country_id; 
    
end;
$$
delimiter ;

select * from city;
select * from country;

call delete_country('USA');

drop procedure delete_country;

drop table countrylanguage;

select * from country;