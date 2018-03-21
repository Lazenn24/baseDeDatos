-- We are working for a hotel booking company. 
-- In our database we have a table where we store the reservations and it information such as id, end date and price. 
-- The company is doing good, and better everyday, which makes our boss happy but gives us headaches because as the company keeps selling, 
-- the process of reservation administration takes longer and longer to run. Back i the day, generating the accountability reports was instantaneous,
-- but now it takes 15 seconds and if we keep selling this fast we could be talking about minutes instead of seconds before summer.
-- We check the reports' queries and we found out that its the reservations' table fault, because we have more reservations everyday and 
-- the combinations generated grow exponentially. Therefore we have decided to create a table of reservation history in order to archive past reservations 
-- and have the minimal amount of data in the reservation table.

select * from BOOKING;
select * from BOOKING_OLD;
select ID
from BOOKING
where date(ENDDATE) < now();


delimiter $$
create procedure old_bookings()
begin
	declare v_fin int(1);
    declare v_bookingId int(11);
    declare v_bookingDate datetime;
    declare v_bookingPrice decimal(6, 2);
    
    declare c_bookings cursor for select *
								from BOOKING
								where date(ENDDATE) < now();
                                
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;

    open c_bookings;
    
    l_bookings : loop
    
		fetch c_bookings into v_bookingId, v_bookingDate, v_bookingPrice;
        
        if v_fin = 1 then
			leave l_bookings;
		end if;
		
		insert into BOOKING_OLD(ID, ENDDATE, PRICE) values(v_bookingId, v_bookingDate, v_bookingPrice);
        delete from BOOKING where ID = v_bookingId;
	
	
    end loop l_bookings;
    
    close c_bookings;
    
end;
$$
delimiter ;
call old_bookings;
drop procedure old_bookings;
delete from BOOKING_OLD where ID = 1;
drop database HOTEL;
