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

call load_make;

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
create procedure load_fuelType()
begin
	
    declare v_fin int;
    declare v_fuelType varchar(32);
    
    declare c_fuelType cursor for
								select distinct fuelType
                                from carsTMP
                                where fuelType not in
													(select fuelType from FUEL_TYPE);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_fuelType;
    
    l_fuelType : loop
    
		fetch c_fuelType into v_fuelType;
        
        if v_fin = 1 then
			leave l_fuelType;
		end if;
        
        insert into FUEL_TYPE(fuelType) values(v_fuelType);
        
	end loop l_fuelType;
    
    close c_fuelType;
    
end;
$$
delimiter ;

drop procedure load_fuelType;

call load_fuelType;


delimiter $$
create procedure load_engine()
begin
	declare v_aspiration int;
    declare v_engineType int;
    declare v_fuelSystem int;
    declare v_fuelType int;
    declare v_bore double;
    declare v_stroke double;
    declare v_peakRpm int;
    declare v_horsePower int;
    declare v_numCylinders int;
    declare v_engineSize double;
    declare v_compressionRatio double;
    declare v_fin int;
    
    declare c_engine cursor for 
								select distinct
									ENGINE_TYPE.id, ASPIRATION.id, FUEL_TYPE.id, FUEL_SYSTEM.id,
									inchesToCm(bore), inchesToCm(stroke), peakRpm, horsePower, numDoorsCylinders(numCylinders), cubicInchToCm(engineSize),
									compressionRatio
								from
									carsTMP,
									ENGINE_TYPE,
									ASPIRATION,
									FUEL_TYPE,
									FUEL_SYSTEM
								where
									ENGINE_TYPE.engineType = carsTMP.engineType and
									ASPIRATION.aspiration = carsTMP.aspiration and
									FUEL_TYPE.fuelType  = carsTMP.fuelType and
									FUEL_SYSTEM.fuelSystem = carsTMP.fuelSystem;
                                
	declare continue handler for not found set v_fin = 1;	
    
    set v_fin = 0;
    
    open c_engine;
    
    l_engine : loop
    
		fetch c_engine into v_engineType, v_aspiration, v_fuelType, v_fuelSystem, v_bore, v_stroke,
							v_peakRpm, v_horsePower, v_numCylinders, v_engineSize, v_compressionRatio;
 
        if v_fin = 1 then
			leave l_engine;
		end if;
        
        insert into ENGINE(aspiration, engineType, fuelSystem, fuelType, bore, stroke, peakRpm, horsePower, numCylinders, engineSize, compressionRatio) values
        (v_aspiration, v_engineType, v_fuelSystem, v_fuelType, v_bore, v_stroke,v_peakRpm, v_horsePower, v_numCylinders, v_engineSize, v_compressionRatio);
        
	end loop l_engine;
    
    close c_engine;
    
end;
$$
delimiter ;		

drop procedure load_engine;

call load_engine;

delimiter $$
create procedure load_car( )
begin

	declare v_engine int;
    declare v_make int;
    declare v_fiabilidad varchar(32);
    declare v_normalized int;
    declare v_numDoors int;
    declare v_bodyStyle varchar(32);
    declare v_wheelBase double(8,2);
    declare v_length double(8,2);
    declare v_width double(8,2);
    declare v_height double(8,2);
    declare v_curbWeight double(8,2);
    declare v_drive varchar(16);
    declare v_engineLocation varchar(16);
    declare v_high double(8,2);
    declare v_city double(8,2);
    declare v_price double(8,3);
    declare v_fin int;
	
    declare c_car cursor for 
							select distinct
								ENGINE.id, MAKE.id, fiabilidad(symboling), normalizedLoses, 
								numDoorsCylinders(numDoors), bodyStyle, inchesToCm(wheelBase), inchesToCm(length),
								inchesToCm(width), inchesToCm(height), inchesToCm(curbWeight), driveWheels, 
								engineLocation, mpgToL(highwayMpg), mpgToL(cityMpg), dolarToEuro(price)
							from
								carsTMP,
								ENGINE,
								ASPIRATION,
								FUEL_SYSTEM,
								FUEL_TYPE,
								ENGINE_TYPE,
								MAKE
							where
								MAKE.make = carsTMP.make and
								((ENGINE.bore = inchesToCm(carsTMP.bore)) or (ENGINE.bore is null and carsTMP.bore is null)) and
								((ENGINE.stroke = inchesToCm(carsTMP.stroke)) or (ENGINE.stroke is null and carsTMP.stroke is null)) and
								ENGINE.numCylinders = numDoorsCylinders(carsTMP.numCylinders) and
								ENGINE.engineSize = cubicInchToCm(carsTMP.engineSize) and
								ENGINE.compressionRatio = carsTMP.compressionRatio and
								((ENGINE.horsePower = carsTMP.horsepower) or (ENGINE.horsePower is null and carsTMP.horsepower is null)) and
								((ENGINE.peakRpm = carsTMP.peakRpm) or (ENGINE.peakRpm is null and carsTMP.peakRpm is null)) and
								ENGINE.fuelSystem = (select id from FUEL_SYSTEM where FUEL_SYSTEM.fuelSystem = carsTMP.fuelSystem) and    
								ENGINE.fuelType = (select id from FUEL_TYPE where FUEL_TYPE.fuelType = carsTMP.fuelType) and
								ENGINE.aspiration = (select id from ASPIRATION where ASPIRATION.aspiration = carsTMP.aspiration) and
								ENGINE.engineType = (select id from ENGINE_TYPE where ENGINE_TYPE.engineType = carsTMP.engineType);
                                
	 declare continue handler for not found set v_fin = 1;
     
     set v_fin = 0;
     
     open c_car;
     
     l_car : loop
		
        fetch c_car into 	v_engine, v_make, v_fiabilidad, v_normalized,
							v_numDoors, v_bodyStyle, v_wheelBase, v_length, 
							v_width, v_height, v_curbWeight, v_drive, 
							v_engineLocation, v_high, v_city, v_price;
                            
		if v_fin = 1 then
			leave l_car;
		end if;
		
        insert into CAR(engine, make, symboling, normalizedLoses, 
						numDoors, bodyStyle, wheelBase, length, 
                        width, height, curbWeight, driveWheels, 
                        engineLocation, highwayConsume, cityConsume, price) values
                        (v_engine, v_make, v_fiabilidad, v_normalized,
						v_numDoors, v_bodyStyle, v_wheelBase, v_length, 
						v_width, v_height, v_curbWeight, v_drive, 
						v_engineLocation, v_high, v_city, v_price);
		
	end loop l_car;
        
	close c_car;
    
end;
$$
delimiter ;

drop procedure load_car;

call load_car;
        
                        