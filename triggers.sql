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

delimiter $$
create trigger check_stock before insert on purchase
for each row
begin

	declare v_stock int;
    
    select 
		stock
			into v_stock
    from 
		product
    where 
		new.product = product.id;
    if v_stock < new.amount then
		signal sqlstate '45000' 
        set message_text = 'Not enough stock';
        
        elseif new.amount < 0 then
			signal sqlstate '45000'
            set message_text = "Stock can't be negative";
				
    end if;    
    
 end;
 $$
 delimiter ;
 
 insert into product(name, price, stock)
 values("Glasses", 100, 5);
 
 select * from product;
 
 insert into purchase(product, amount)
 values(1, 99);
 
drop trigger check_stock;

delimiter $$
create trigger update_stock after insert on purchase
for each row
begin
	declare v_stock int;
    
    select 
		stock
			into v_stock
    from 
		product
    where 
		new.product = product.id;
        
	if new.amount <= v_stock then
		update product set stock = stock - new.amount where product.id = new.product;
    end if ;   
end;
$$
delimiter ;

drop trigger update_stock;

select * from product;
select * from purchase;

insert into purchase(product, amount)
values(1, 4);

delimiter $$
create trigger update_amount before update on purchase
for each row
begin
	declare v_stock int;
    
    select stock
		into v_stock
	from product
    where new.product = product.id;
    
    if v_stock < new.amount then
		signal sqlstate '45000'
			set message_text = 'Not enough stock';
            elseif new.amount < 0 then
				signal sqlstate '45000'
					set message_text = 'Amount can not be below 0';
                    
    end if;
    
end ;
$$
delimiter ;	

update product set stock = 8 where id = 1;	
select * from product;
select * from purchase;

update purchase set amount = 5 where id = 1;

drop trigger update_amount;

delimiter $$
create trigger update_purchase after update on purchase
for each row
begin
	declare v_stock int;
    
    select stock
		into v_stock
    from product
    where new.product = product.id;
    
    if new.amount <= v_stock and new.amount > old.amount then
		update product set stock = stock - (new.amount - old.amount) where product.id = new.product;
        
        elseif new.amount <=  v_stock and new.amount < old.amount then
			update product set stock = stock + (old.amount - new.amount) where product.id = new.product;
    end if;
end
$$
delimiter ;    

drop trigger update_purchase;

select * from product;
select * from purchase;

update product set stock = 8 where id = 1;

insert into purchase(product, amount) values(1, 1);

update purchase set amount = 1 where id = 19;

alter table purchase add column status_order varchar(32) not null default 'confirmed';

alter table purchase modify status_order varchar(32) default 'confirmed';


alter table purchase drop column status_order;	
    
    
    
    
