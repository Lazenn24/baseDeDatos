select * from BOOKING_OLD;

delimiter $$
create trigger check_bookings  before insert on BOOKING_OLD
for each row
begin 

    declare msg_datetime varchar(80);
    declare msg_price varchar(80);
    
    set msg_datetime = 'La fecha de reserva no puede ser superior a la de hoy';
    set msg_price = 'El precio no puede ser negativo';
    
    if new.ENDDATE > now() then 
		signal sqlstate '45000' set message_text = msg_datetime;
        
    elseif new.PRICE < 0 then
			signal sqlstate '45000' set message_text = msg_price;
	end if;			
    
end;
$$
delimiter ;	

insert into BOOKING_OLD(ID, ENDDATE, PRICE) values(1996, 20180331, -2307);

insert into BOOKING_OLD(ID, ENDDATE, PRICE) values(1996, 20180213, -2307);

drop trigger check_bookings;
select * from BOOKING_OLD;