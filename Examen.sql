alter table AIRPORTS rename to AIRPORT;
alter table CREWS rename to CREW;
alter table FLIGHTS rename to FLIGHT;

alter table CREW add column SALARY decimal(6,2) not null;

alter table CREW add check(SALARY > 0 and SALARY < 500000);


alter table CREW modify email varchar(80) not null unique;

show create table FLIGHT;

select * from FLIGHT;

alter table FLIGHT drop foreign key FLIGHT_ibfk_1;
alter table FLIGHT drop foreign key FLIGHT_ibfk_2;
alter table FLIGHT drop foreign key FLIGHT_ibfk_3;
alter table FLIGHT drop foreign key FLIGHT_ibfk_4;

alter table FLIGHT add foreign key (departure_airport) references AIRPORT(id_airport) on update cascade;

alter table FLIGHT add foreign key (arrival_airport) references AIRPORT(id_airport) on update cascade;

alter table FLIGHT add foreign key (id_pilot) references CREW(id_crew) on delete cascade on update cascade;

alter table FLIGHT add foreign key (id_copilot) references CREW(id_crew) on delete cascade on update cascade;

create table STORE(
	id_store int auto_increment primary key,
    id_airport char(3) not null,
    store_name varchar(20) not null,
	address varchar(40) not null,
    workers int not null,
    rental decimal(6,2) not null,
    email varchar(40) not null,
    website varchar(40),
    check(workers > 0 and rental > 0),
    foreign key(id_airport) references AIRPORT(id_airport) on delete cascade);
    

    
insert into STORE(id_airport, store_name, address, workers, rental, email, website)
	values('AMS', 'Carrefour', 'Terminal A Planta 4', 100, 3000, 'carrefour@gmail.com', 'carrefour.com'),
		  ('AMS', 'Mercadona', 'Terminal B Planta 1', 80, 2000, 'mercadona@gmail.com', 'mercadona.com'),
          ('AMS', 'Caprabo', 'Terminal A Planta 2', 100, 2500, 'caprabo@gmail.com', 'caprabo.com');
          
          
update STORE set id_airport = 'AAA' where id_airport = 'AMS';          
update AIRPORT set id_airport = 'AAA' where id_airport = 'AMS';

alter table STORE drop foreign key STORE_ibfk_1;

alter table STORE add foreign key(id_airport) references AIRPORT(id_airport) on delete cascade;

delete from CREW where id_crew = 1;

    show create table FLIGHT;
    
    
select AIRPORT.id_airport, location, id_store
from AIRPORT left join STORE on AIRPORT.id_airport = STORE.id_airport;
    
select id_flight, id_crew
from FLIGHT left join CREW on FLIGHT.id_pilot = CREW.id_crew

union

select id_flight, id_crew
from FLIGHT right join CREW on FLIGHT.id_pilot = CREW.id_crew;
    