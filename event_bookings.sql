create event event_bookings
on schedule every 20 second
starts current_timestamp
ends current_timestamp + interval 10 minute
on completion preserve
do
	call old_bookings;
    
    show events;
    
   select * from BOOKING_OLD;
   
   select * from BOOKING;
    