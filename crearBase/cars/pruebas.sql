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
                                select * from ENGINE;
				
SET SQL_SAFE_UPDATES = 0;
delete from ENGINE;
alter table ENGINE auto_increment = 1;
alter table CAR change bodyWork bodyStyle varchar(32);
alter table ENGINE modify column horsePower int;

select * from ASPIRATION;
select * from ENGINE_TYPE;
select * from FUEL_SYSTEM;
select * from FUEL_TYPE;
select * from carsTMP;

update carsTMP set bore = null where bore < 0;
update carsTMP set normalizedLoses = null where normalizedLoses < 0;
update carsTMP set price = null where price < 0;
update carsTMP set stroke = null where stroke < 0;
update carsTMP set horsePower = null where horsePower < 0;
update carsTMP set peakRpm = null where peakRpm < 0;

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