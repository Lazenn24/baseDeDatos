CREATE TABLE ASPIRATION(
  id int NOT NULL AUTO_INCREMENT,
  aspiration varchar(5) DEFAULT NULL,
  PRIMARY KEY (id));
  
CREATE TABLE BODY_STYLE (
  id int NOT NULL AUTO_INCREMENT,
  bodyStyle varchar(32) DEFAULT NULL,
  PRIMARY KEY (id));

CREATE TABLE BODY_WORK (
  id int NOT NULL AUTO_INCREMENT,
  bodyStyle int DEFAULT NULL,
  length double DEFAULT NULL,
  width double DEFAULT NULL,
  height double DEFAULT NULL,
  wheelBase double DEFAULT NULL,
  `numDoors` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bodyStyle` (`bodyStyle`),
  CONSTRAINT `BODY_WORK_ibfk_1` FOREIGN KEY (`bodyStyle`) REFERENCES `BODY_STYLE` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) 

CREATE TABLE `ENGINE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numCylinders` int(11) DEFAULT NULL,
  `engineSize` double DEFAULT NULL,
  `compressionRatio` double DEFAULT NULL,
  `horsePower` int(11) DEFAULT NULL,
  `bore` double DEFAULT NULL,
  `stroke` double DEFAULT NULL,
  `peakRpm` int(11) DEFAULT NULL,
  `fuelSystem` int(11) DEFAULT NULL,
  `aspiration` int(11) DEFAULT NULL,
  `engineType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fuelSystem` (`fuelSystem`),
  KEY `aspiration` (`aspiration`),
  KEY `engineType` (`engineType`),
  CONSTRAINT `ENGINE_ibfk_1` FOREIGN KEY (`fuelSystem`) REFERENCES `FUEL_SYSTEM` (`id`),
  CONSTRAINT `ENGINE_ibfk_2` FOREIGN KEY (`aspiration`) REFERENCES `ASPIRATION` (`id`),
  CONSTRAINT `ENGINE_ibfk_3` FOREIGN KEY (`engineType`) REFERENCES `ENGINE_TYPE` (`id`)
)

CREATE TABLE `ENGINE_TYPE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `engineType` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 


CREATE TABLE `FUEL_SYSTEM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuelSystem` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

CREATE TABLE `GAS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuelType` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

CREATE TABLE `MAKE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

  
	
	



create table CAR(
	id int auto_increment primary key,
    make int,
    engine int,
    bodyWork int,
    gas int,
    normalizedLoses int,
    symboling varchar(32),
    driveWheels char(3),
    engineLocation varchar(5),
    cityConsume double,
    highwayConsume double,
    price double,
    foreign key(make) references MAKE(id),
    foreign key(engine) references ENGINE(id),
    foreign key(bodyWork) references BODY_WORK(id),
    foreign key(gas) references GAS(id));
    
select * from carsTMP;		
   
delimiter $$   
create function check_null(calidad int) returns int 	
begin
	
    declare v_null int;
    
    set v_null = calidad;
    
    if v_null = -1 then
		set v_null = null;
	end if;
    
    return v_null;
end;
$$	
delimiter ;	

select distinct numDoors from carsTMP;

delimiter $$
create function numDoorsCylinders (DC varchar(6)) returns int
begin

	declare v_doorCy varchar(6);
    declare v_numDoorCy int;
    
    set v_doorCy = DC;
    
    if v_doorCy = 'two' then
		set v_numDoorCy = 2;
        elseif v_doorCy = 'three' then
			set v_numDoorCy = 3;
            elseif v_doorCy = 'four' then
            set v_numDoorCy = 4;
            elseif v_doorCy = 'five' then
				set v_numDoorCy = 5;
                elseif v_doorCy = 'six' then
					set v_numDoorCy = 6;
                    elseif v_doorCy = 'eight' then
						set v_numDoorCy = 8;
							elseif v_doorCy = 'twelve' then
								set v_numDoorCy = 12;
	end if;
    
    return v_numDoorCy;

end;
$$
delimiter ;	

drop function numDoorsCylinders;

select numDoorsCylinders('eight');

delimiter $$
create function fiabilidad (sym int) returns varchar(32)
begin

	declare v_sym int;
    declare v_fiab varchar(32);
    
    set v_sym = sym;
    
    if v_sym = -3 then
		set v_fiab = 'Excelente';
        elseif v_sym = -2 then
			set v_fiab = 'Muy fiable';
            elseif v_sym = -1 then
            set v_fiab = 'Fiable';
            elseif v_sym = 0 then
				set v_fiab = 'Mejorable';
                elseif v_sym = 1 then
					set v_fiab = 'Baja calidad';
					elseif v_sym = 2 then
						set v_fiab = 'Mala calidad';
							elseif v_sym = 3 then
								set v_fiab = 'Peligroso';
	end if;
    
    return v_fiab;
    
end;
$$
delimiter ;	

select * from carsTMP;

delimiter $$
create function inchesToCm (inches double) returns double(8, 2)
begin
	declare v_inch double;
    declare v_m double;
    
    set v_inch = inches;
    
    set v_m = v_inch/0.39370;
  
	return v_m;
end;
$$
delimiter ;	

drop function inchesToCm;

select inchesToCm (88.6);

delimiter $$
create function poundsToKg (pound int) returns double(8, 2)
begin
	declare v_pound int;
    declare v_kg double;
    
    set v_pound = pound;
    
    set v_kg = v_pound/2.2046;
    
    return v_kg;
    
end;
$$
delimiter ;	

delimiter $$
create function squareInchToCm (inch int) returns double(8, 2)
begin
	declare v_inch int;
    declare v_cm double;
    
    set v_inch = inch;
    
    set v_cm = v_inch / 0.061024;
    
    return v_cm;
    
end;
$$
delimiter ;	

select squareInchToCm(130);	

drop function poundsToKg;

select poundsToKg(2548);	

delimiter $$
create function mpgToL (mpg int) returns double(8, 2)
begin
	declare v_millas int;
    declare v_litros double;
    
    set v_millas = mpg;
    
    set v_litros = 100 / (v_millas * 0.164148587);
    
    return v_litros;    

end;
$$
delimiter ;

drop function mpgToL;

select mpgToL(32);

delimiter $$
create function dolarToEuro (dolar int) returns double(8, 2)
begin
	declare v_dolar int;
    declare v_euro double;
    
    set v_dolar = dolar;
    
    set v_euro = v_dolar / 1.231838;
    
    return v_euro;
    
end;
$$
delimiter ;	

select dolarToEuro(13495);	



    
    