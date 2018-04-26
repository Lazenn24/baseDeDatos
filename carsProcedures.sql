select distinct bodyStyle
                                from carsTMP
                                where bodyStyle not in
													(select bodyStyle from BODY_STYLE);
                                                    

select * from FUEL_SYSTEM;		
select * from carsTMP;


/*2163.08*/
select *, cubicInchToCm(carsTMP.engineSize), ENGINE.engineSize from carsTMP,ENGINE 
	where ENGINE.engineSize = cubicInchToCm(carsTMP.engineSize) and 
    ENGINE.engineSize = 2163.08 and
    ENGINE.numCylinders = numDoorsCylinders(carsTMP.numCylinders) and
    ENGINE.compressionRatio = carsTMP.compressionRatio and
    ENGINE.bore = inchesToCm(carsTMP.bore) and
    ENGINE.stroke = inchesToCm(carsTMP.stroke) and
    ENGINE.peakRpm = carsTMP.peakRpm;
	
alter table carsTMP modify width double(8, 2);

    
	

select * from ENGINE_TYPE;	
select * from FUEL_SYSTEM;
select * from ASPIRATION;
select * from GAS;
select * from ENGINE;
select * from CAR;
alter table ENGINE modify column compressionRatio double(8,2);
alter table ENGINE modify column engineSize double(8,2);

select * 
from
	(select distinct * 
	from ENGINE
	where (bore is null and stroke is null) or (peakRpm is null and horsePower is null)) t1,
	(select distinct * 
	from carsTMP
	where (inchesToCm(bore) is null and inchesToCm(stroke) is null) or (peakRpm is null and horsePower is null)) t2
where 
	((t1.bore is null and inchesToCm(t2.bore) is null) or t1.bore = inchesToCm(t2.bore)) and
    ((t1.stroke is null and inchesToCm(t2.stroke) is null) or t1.stroke = inchesToCm(t2.stroke)) and
    ((t1.horsePower is null and t2.horsePower is null) or t1.horsePower = t2.horsePower) and
    ((t1.peakRpm is null and t2.peakRpm is null) or t1.peakRpm = t2.peakRpm);
    
    select distinct * 
	from ENGINE
	where (bore = -1 and stroke = -1) or (peakRpm = -1 and horsePower = -1);
    
    select * from carsTMP where price = 10945 or price = 11845 or price = 13645 or price = 15645 or price = 9295 or price = 9895;
	

select * from ENGINE where id = 30;

SET SQL_SAFE_UPDATES = 0;

drop table carsTMP;

delete from ENGINE;

alter table ENGINE auto_increment = 1;

delete from BODY_WORK;

select * from carsTMP where numCylinders = -1 or engineSize = -1 or compressionRatio = -1 or horsePower = -1 or bore = -1 or
 stroke = -1 or peakRpm = -1 or fuelSystem = -1 or aspiration = -1 or engineType = -1;


update carsTMP set bore = null where bore = -1;
update carsTMP set stroke = null where stroke = -1;
update carsTMP set peakRpm = null where peakRpm = -1;
update carsTMP set horsePower = null where horsePower = -1;
update carsTMP set numCylinders = null where numCylinders = -1;
update carsTMP set engineSize = null where engineSize = -1;
update carsTMP set compressionRatio = null where compressionRatio = -1;
update carsTMP set fuelType = null where fuelType = -1;
update carsTMP set aspiration = null where aspiration = -1;
update carsTMP set numDoors = null where numDoors = -1;
update carsTMP set bodyStyle = null where bodyStyle = -1;
update carsTMP set driveWheels = null where driveWheels = -1;
update carsTMP set engineLocation = null where engineLocation = -1;
update carsTMP set wheelBase = null where wheelBase = -1;
update carsTMP set length = null where length = -1;
update carsTMP set width = null where width = -1;
update carsTMP set height = null where height = -1;
update carsTMP set curbWeight = null where curbWeight = -1;
update carsTMP set engineType = null where engineType = -1;
update carsTMP set numCylinders = null where numCylinders = -1;
update carsTMP set engineSize = null where engineSize = -1;
update carsTMP set fuelSystem = null where fuelSystem = -1;
update carsTMP set cityMpg = null where cityMpg = -1;
update carsTMP set highwayMpg = null where highwayMpg = -1;
update carsTMP set price = null where price = -1;
update carsTMP set normalizedLoses = null where normalizedLoses = -1;



alter table CAR drop column bodyWork;
alter table CAR add column bodyStyle varchar(32);






select inchesToCm(168.8);


select distinct engineType
                                from carsTMP
                                where engineType not in
													(select engineType from ENGINE_TYPE);	
                                                    
drop table ENGINE_TYPE;	

alter table ENGINE_TYPE modify engineType varchar(8);	

select aspiration from carsTMP;	

select BODY_STYLE.id, length, width, height, wheelBase, numDoors
                                from carsTMP, BODY_STYLE
                                where carsTMP.bodyStyle = BODY_STYLE.bodyStyle;	
                                

   
   
select distinct
	 ENGINE.id, MAKE.id, symboling, normalizedLoses, 
    numDoors, driveWheels, engineLocation, bodyStyle, 
    length, inchesToCm(width), inchesToCm(height), curbWeight, 
    highwayMpg, cityMpg, price, ENGINE.engineSize

from 
	ENGINE,
    MAKE,
    carsTMP

where
	ENGINE.numCylinders = numDoorsCylinders(carsTMP.numCylinders) and
    ENGINE.engineSize = cubicInchToCm(carsTMP.engineSize) and
    ENGINE.compressionRatio = carsTMP.compressionRatio and
    ((ENGINE.horsePower = carsTMP.horsepower) or (ENGINE.horsePower is null and carsTMP.horsepower is null)) and
    ((ENGINE.bore = inchesToCm(carsTMP.bore)) or (ENGINE.bore is null and carsTMP.bore is null)) and
    ((ENGINE.stroke = inchesToCm(carsTMP.stroke)) or (ENGINE.stroke is null and carsTMP.stroke is null)) and
    ((ENGINE.peakRpm = carsTMP.peakRpm) or (ENGINE.peakRpm is null and carsTMP.peakRpm is null)) and
    MAKE.make = carsTMP.make;
    
     select distinct * 
	from ENGINE
	where (bore is null and stroke is null) or (peakRpm is null and horsePower is null);
  
    
   ;
    -- and
    -- MAKE.make = carsTMP.make and price in (select price from carsTMP where price = 10945 or price = 11845 or price = 13645 or price = 15645 or price = 9295 or price = 9895);
    
    
    
    

                                
select * 
from
	(select distinct
	 ENGINE.id as engine, MAKE.id as make, GAS.id as gas, symboling, normalizedLoses, 
    numDoors, driveWheels, engineLocation, bodyStyle, 
    length, inchesToCm(width), inchesToCm(height), curbWeight, 
    highwayMpg, cityMpg, price, ENGINE.engineSize, carsTMP.engineSize

	from 
		ENGINE,
		MAKE,
		GAS,
		ASPIRATION,
		ENGINE_TYPE,
		FUEL_SYSTEM,
		carsTMP

	where
		ENGINE.numCylinders = numDoorsCylinders(carsTMP.numCylinders)  and
		ENGINE.engineSize = cubicInchToCm(carsTMP.engineSize) and 
		ENGINE.compressionRatio = carsTMP.compressionRatio and 
		
		ENGINE.fuelSystem = FUEL_SYSTEM.id and
		ENGINE.aspiration = ASPIRATION.id and
		ENGINE.engineType = ENGINE_TYPE.id and
		ENGINE.fuelType = GAS.id and
		MAKE.make = carsTMP.make) t1,
        
		(select * 
		from
			(select distinct * 
			from ENGINE
			where (bore is null and stroke is null) or (peakRpm is null and horsePower is null)) t1,
			(select distinct * 
			from carsTMP
			where (inchesToCm(bore) is null and inchesToCm(stroke) is null) or (peakRpm is null and horsePower is null)) t2
		where 
			((t1.bore is null and inchesToCm(t2.bore) is null) or t1.bore = inchesToCm(t2.bore)) and
			((t1.stroke is null and inchesToCm(t2.stroke) is null) or t1.stroke = inchesToCm(t2.stroke)) and
			((t1.horsePower is null and t2.horsePower is null) or t1.horsePower = t2.horsePower) and
			((t1.peakRpm is null and t2.peakRpm is null) or t1.peakRpm = t2.peakRpm)) t2;

    
-- coalesce(ENGINE.horsePower, '') = coalesce(carsTMP.horsepower, '') and
-- coalesce(ENGINE.bore, '') = coalesce(inchesToCm(carsTMP.bore), '') and 
-- coalesce(ENGINE.stroke, '') = coalesce(inchesToCm(carsTMP.stroke), '') and
-- coalesce(ENGINE.peakRpm, '') = coalesce(carsTMP.peakRpm, '') and



    
	

						
							