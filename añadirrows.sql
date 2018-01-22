select *
from pruebacsv;

insert into pruebacsv(id, nombre, precio, cantidad) values (3, 'kiwi', 1.34, 7);

create table persona(
	id int auto_increment,
    nombre varchar(32) not null,
    edad int(3),
    primary key(id));
    
insert into persona(nombre) values("Alex");	
select * from persona;	
insert into persona(nombre, edad) values("Rosa", 50);	
insert into persona(edad) values(25);
insert into persona(edad, nombre) values(35, "Toni");
delete from persona where id = 1;
delete from persona where edad is null or edad > 25;

CREATE TABLE COUNTRY (
	country_id int