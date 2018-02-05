delimiter $$
CREATE trigger edad_positive before insert on persona
for each row
begin
	declare msg varchar(32);
    set msg = 'edad negativa';
	if new.edad < 0 then 
		signal sqlstate '45000' set message_text = msg;
	end if;

end;
$$
delimiter ;

insert into persona(nombre, edad) values('David', -3);

select * from persona;

drop trigger edad_positive;


create table product(
	id int not null auto_increment primary key,
	name varchar(32) not null,
	price decimal(8,2) not null default 0,
    stock int not null default 0);
    
create table purchase(
	id int not null auto_increment primary key,
	product int not null,
	amount int not null default 0,
	constraint purchase_fk1
	foreign key (product) references product(id));
    
delimiter $$
create trigger stock_negative before insert on product
for each row
begin
	declare msg varchar(32);
    set msg = 'edad negativa';
    if new.stock < 0 then
		signal sqlstate '45000' set message_text = msg;
	end if;
end;
$$
delimiter ;	

	
    
    
    
    
