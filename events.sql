show variables like '%event%';
set global event_scheduler = 1;
select @@event_scheduler;

show processlist;

create table log(text varchar(256));


delimiter $$
create event evento_prueba
on schedule every 5 second
starts current_timestamp
ends current_timestamp + interval 1 minute
on completion preserve
do 
begin
	insert into log(text) values(concat('tercera prueba ', now()));
end;
$$
delimiter ;    
show events;	

show create event evento_prueba;	
    
drop event evento_prueba;
select * from log;
drop table log;	
