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
  
	return round(v_m, 2);
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
    
    return round(v_kg, 2);
    
end;
$$
delimiter ;	

drop function poundsToKg;

delimiter $$
create function cubicInchToCm (inch int) returns double(8, 2)
begin
	declare v_inch int;
    declare v_cm double;
    
    set v_inch = inch;
    
    set v_cm = v_inch / 0.061024;
    
    return round(v_cm, 2);
    
end;
$$
delimiter ;	

select squareInchToCm(130);	

drop function cubicInchToCm;

drop function poundsToKg;

select poundsToKg(2548);	

delimiter $$
create function mpgToL (mpg int) returns double(8, 2)
begin
	declare v_millas int;
    declare v_litros double;
    
    set v_millas = mpg;
    
    set v_litros = v_millas * 235.21;
    
    return round(v_litros, 2);    

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
    
    return round(v_euro, 2);
end;
$$
delimiter ;    