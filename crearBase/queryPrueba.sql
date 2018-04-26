-- Show every car and its engine of alfa-romeo
select 
	CAR.id, MAKE.make, ENGINE_TYPE.engineType, ASPIRATION.aspiration, FUEL_TYPE.fuelType, FUEL_SYSTEM.fuelSystem,
	peakRpm, horsePower, numCylinders, engineSize, curbWeight, length, width, height

from
	ENGINE,
    CAR,
    MAKE,
    FUEL_SYSTEM,
    FUEL_TYPE,
    ASPIRATION,
    ENGINE_TYPE
where
	ENGINE.id = CAR.engine and
    CAR.make = MAKE.id and
    ENGINE.fuelSystem = FUEL_SYSTEM.id and
    ENGINE.fuelType = FUEL_TYPE.id and
    ENGINE.aspiration = ASPIRATION.id and
    ENGINE.engineType = ENGINE_TYPE.id and
    MAKE.make = 'alfa-romero';
    
	

-- show all the cars with diesel engine
select 
	CAR.id, MAKE.make, ENGINE_TYPE.engineType, ASPIRATION.aspiration, FUEL_TYPE.fuelType, FUEL_SYSTEM.fuelSystem,
	peakRpm, horsePower, numCylinders, engineSize, curbWeight, length, width, height

from
	ENGINE,
    CAR,
    MAKE,
    FUEL_SYSTEM,
    FUEL_TYPE,
    ASPIRATION,
    ENGINE_TYPE
where
	ENGINE.id = CAR.engine and
    CAR.make = MAKE.id and
    ENGINE.fuelSystem = FUEL_SYSTEM.id and
    ENGINE.fuelType = FUEL_TYPE.id and
    ENGINE.aspiration = ASPIRATION.id and
    ENGINE.engineType = ENGINE_TYPE.id and
    FUEL_TYPE.fuelType = 'diesel';
    
    
-- show the cars consuming	more tan 13 liters	
select 
	CAR.id, MAKE.make, ENGINE_TYPE.engineType, ASPIRATION.aspiration, FUEL_TYPE.fuelType, FUEL_SYSTEM.fuelSystem,
	peakRpm, horsePower, numCylinders, engineSize, curbWeight, length, width, height

from
	ENGINE,
    CAR,
    MAKE,
    FUEL_SYSTEM,
    FUEL_TYPE,
    ASPIRATION,
    ENGINE_TYPE
where
	ENGINE.id = CAR.engine and
    CAR.make = MAKE.id and
    ENGINE.fuelSystem = FUEL_SYSTEM.id and
    ENGINE.fuelType = FUEL_TYPE.id and
    ENGINE.aspiration = ASPIRATION.id and
    ENGINE.engineType = ENGINE_TYPE.id and
    highwayConsume > 12;
    
    