delimiter $$
create procedure load_quota(in startDate date, endDate date, room int, price double(8,2), hotel int)
begin
	
	declare v_start date;
    declare v_end date;
    declare v_room int;
    declare v_price double(8,2);
    declare v_hotel int;

    
    set v_start = startDate;
    set v_end = endDate;
    set v_room = room;
    set v_price = price;
    set v_hotel = hotel;
    
    start transaction;

	while v_start <= v_end do
    
		if (select DATE from QUOTA where DATE = v_start) is not null then
			rollback;
		end if;		
        
		insert into QUOTA(DATE, ROOMS, PRICE, HOTEL) values (v_start, v_room, v_price, v_hotel);
		set v_start = adddate(v_start, interval 1 day);
            
	end while;
    
    commit;
    
end;
$$
delimiter ;

drop procedure load_quota;

call load_quota(20180826, 20180831, 15, 120, 1);