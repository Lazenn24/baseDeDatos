DELIMITER $$
CREATE PROCEDURE load_make()
begin
	
    declare v_fin int;
    declare v_make varchar(32);
    
    declare c_make cursor for 
							select distinct make 
                            from carsTMP 
                            where make not in
										(select make from MAKE);
                                        
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_make;
    
    l_make : loop
		
        fetch c_make into v_make;
        
        if v_fin = 1 then
			leave l_make;
		end if;
		
		insert into MAKE(make) values(v_make);
        
	end loop l_make;
    
    close c_make;
    
end$$
DELIMITER ;

delimiter $$
create procedure load_bodyStyle()
begin
	
    declare v_fin int;
    declare v_bodyStyle varchar(32);
    
    declare c_bodyStyle cursor for
								select distinct bodyStyle
                                from carsTMP
                                where bodyStyle not in
													(select bodyStyle from BODY_STYLE);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_bodyStyle;
    
    l_bodyStyle : loop
    
		fetch c_bodyStyle into v_bodyStyle;
        
        if v_fin = 1 then
			leave l_bodyStyle;
		end if;
        
        insert into BODY_STYLE(bodyStyle) values(v_bodyStyle);
        
	end loop l_bodyStyle;
    
    close c_bodyStyle;
    
end;
$$
delimiter ;	

call load_bodyStyle();

delimiter $$
create procedure load_fuelSystem()
begin
	
    declare v_fin int;
    declare v_fuelSystem varchar(32);
    
    declare c_fuelSystem cursor for
								select distinct fuelSystem
                                from carsTMP
                                where fuelSystem not in
													(select fuelSystem from FUEL_SYSTEM);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_fuelSystem;
    
    l_fuelSystem : loop
    
		fetch c_fuelSystem into v_fuelSystem;
        
        if v_fin = 1 then
			leave l_fuelSystem;
		end if;
        
        insert into FUEL_SYSTEM(fuelSystem) values(v_fuelSystem);
        
	end loop l_fuelSystem;
    
    close c_fuelSystem;
    
end;
$$
delimiter ;

call load_fuelSystem();

delimiter $$
create procedure load_engineType()
begin
	
    declare v_fin int;
    declare v_engineType varchar(32);
    
    declare c_engineType cursor for
								select distinct engineType
                                from carsTMP
                                where engineType not in
													(select engineType from ENGINE_TYPE);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_engineType;
    
    l_engineType : loop
    
		fetch c_engineType into v_engineType;
        
        if v_fin = 1 then
			leave l_engineType;
		end if;
        
        insert into ENGINE_TYPE(engineType) values(v_engineType);
        
	end loop l_engineType;
    
    close c_engineType;
    
end;
$$
delimiter ;

drop procedure load_engineType;

call load_engineType();

delimiter $$
create procedure load_aspiration()
begin
	
    declare v_fin int;
    declare v_aspiration varchar(32);
    
    declare c_aspiration cursor for
								select distinct aspiration
                                from carsTMP
                                where aspiration not in
													(select aspiration from ASPIRATION);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_aspiration;
    
    l_aspiration : loop
    
		fetch c_aspiration into v_aspiration;
        
        if v_fin = 1 then
			leave l_aspiration;
		end if;
        
        insert into ASPIRATION(aspiration) values(v_aspiration);
        
	end loop l_aspiration;
    
    close c_aspiration;
    
end;
$$
delimiter ;

call load_aspiration;

delimiter $$
create procedure load_gas()
begin
	
    declare v_fin int;
    declare v_gas varchar(32);
    
    declare c_gas cursor for
								select distinct fuelType
                                from carsTMP
                                where fuelType not in
													(select fuelType from GAS);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_gas;
    
    l_gas : loop
    
		fetch c_gas into v_gas;
        
        if v_fin = 1 then
			leave l_gas;
		end if;
        
        insert into GAS(fuelType) values(v_gas);
        
	end loop l_gas;
    
    close c_gas;
    
end;
$$
delimiter ;

drop procedure load_gas;

call load_gas;

delimiter $$
create procedure change_values()
begin
	declare v_fin int;
    declare v_dolar int;
    declare v_fiabilidad int;
    declare v_mpg int;
    declare v_numDoor varchar(10);
    declare v_cylinder varchar(10);
    declare v_length

delimiter $$
create procedure load_bodyWork()
begin
	declare v_bodyStyle int;
    declare v_length double;
    declare v_width double;
    declare v_height double;
    declare v_wheelBase double;
    declare v_numDoors varchar(10);
    declare v_fin int;
    
    declare c_bodyWork cursor for 
								select BODY_STYLE.id, length, width, height, wheelBase, numDoors
                                from carsTMP, BODY_STYLE
                                where carsTMP.bodyStyle = BODY_STYLE.bodyStyle;
                                
	declare continue handler for not found set v_fin = 1;	
    
    set v_fin = 0;
    
    open c_bodyWork;
    
    l_bodyWork : loop
    
		fetch c_bodyWork into v_bodyStyle, v_length, v_width, v_height, v_wheelBase, v_numDoors;
 
        if v_fin = 1 then
			leave l_bodyWork;
		end if;
        
        insert into BODY_WORK(bodyStyle, length, width, height, wheelBase, numDoors) values(v_bodyStyle, inchesToCm(v_length), inchesToCm(v_width), inchesToCm(v_height), inchesToCm(v_wheelBase), numDoorsCylinders(v_numDoors));

        
	end loop l_bodyWork;
    
    close c_bodyWork;
    
end;
$$
delimiter ;		

drop procedure load_bodyWork;

call load_bodyWork;
		
		
		