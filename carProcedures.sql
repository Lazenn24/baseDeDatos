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

DELIMITER $$
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_engine`()
begin
	declare v_aspiration int;
    declare v_engineType int;
    declare v_fuelSystem int;
    declare v_fuelType int;
    declare v_numCylinders varchar(16);
    declare v_engineSize double;
    declare v_compressionRatio double;
    declare v_bore double;
    declare v_stroke double;
    declare v_peakRPM int;
    declare v_horsePower int;
	declare v_fin int;
    
    declare c_engine cursor for 
							select distinct 
								ASPIRATION.id, ENGINE_TYPE.id, FUEL_SYSTEM.id, GAS.id, numCylinders, 
                                engineSize, bore, stroke, compressionRatio, horsePower, peakRpm
							from
								ASPIRATION,
								ENGINE_TYPE,
								FUEL_SYSTEM,
                                GAS,
								carsTMP
							where
								ASPIRATION.aspiration = carsTMP.aspiration and
								ENGINE_TYPE.engineType = carsTMP.engineType and
                                GAS.fuelType = carsTMP.fuelType and
								FUEL_SYSTEM.fuelSystem = carsTMP.fuelSystem;
                                
	declare continue handler for not found set v_fin = 1;
    
	set v_fin = 0;								
    open c_engine;
    
    l_engine : loop
		fetch c_engine into v_aspiration, v_engineType, 
							v_fuelSystem, v_fuelType, v_numCylinders, 
                            v_engineSize, v_bore, v_stroke, 
                            v_compressionRatio, v_horsePower,
                            v_peakRPM;
		
        if v_fin = 1 then
			leave l_engine;
		end if;		
    
		insert into ENGINE(aspiration, engineType, fuelSystem, fuelType, numCylinders,
							engineSize, bore, stroke, compressionRatio, horsePower, peakRpm)
		values(v_aspiration, v_engineType, v_fuelSystem, v_fuelType, numDoorsCylinders(v_numCylinders),
				cubicInchToCm(v_engineSize), inchesToCm(v_bore), inchesToCm(v_stroke),
                v_compressionRatio, v_horsePower, v_peakRPM);
                
		end loop l_engine;
        
        close c_engine;
end$$
DELIMITER ;



drop procedure load_engine;

call load_engine;
		
		
		