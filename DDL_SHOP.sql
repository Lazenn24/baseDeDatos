create database ONLINE_SHOP;
   
create table CATEGORIES (
	categoryCode int auto_increment primary key,
    categoryName varchar(15) not null default '');
    
create table PRODUCTS (
	productCode int auto_increment primary key,
    productName varchar(30) not null default '',
    description varchar(100) not null default '',
    price float not null,
    category int not null,
    foreign key(category) references CATEGORIES(categoryCode));
    
create table CLIENTS (
	clientCode int auto_increment primary key,
    clientName varchar(10) not null default '',
    surnames varchar(30) not null default '',
    dni char(9) not null default '',
    mail varchar(40) not null default '',
    address varchar(40) not null default '',
    city varchar(15) not null default '',
    Pcode int not null,
    country varchar(15) not null default '');
    
alter table CLIENTS change Pcode Pcode varchar(15) not null default '';
alter table CLIENTS change city city varchar(40) not null default '';
delete from CLIENTS where clientCode = 1;
delete from CLIENTS where clientCode = 2;
update CLIENTS set clientCode = 1 where clientCode = 3;
update CLIENTS set clientCode = 2 where clientCode = 4;
    
create table SALES (
	saleCode int auto_increment primary key,
    entry_date datetime default now(),
    served_date datetime,
    clientName int not null,
    product int,
    foreign key(clientName) references CLIENTS(clientCode),
    foreign key(product) references PRODUCTS(productCode));
    
alter table SALES add column quantity int not null;
	
insert into CATEGORIES (categoryName) value ('Computer');
insert into CATEGORIES (categoryName) value ('TV');
insert into CATEGORIES (categoryName) value ('Tablets');
insert into CATEGORIES (categoryName) value ('Phones');

select * from PRODUCTS;
select * from CLIENTS;

insert into PRODUCTS (productName, description, price, category) values ('Apple 13-inch MacBook Pro', 'New processors and graphics ', 835.00, 1);
insert into PRODUCTS (productName, price, category) values ('Samsung ATIV Book 4', 724, 1);
insert into PRODUCTS (productName, description, price, category) values ('TV LG 42LN%$=V 42-inch', 'Full HD LED TV', 349, 2);
insert into PRODUCTS (productName, description, price, category) values ('Samsung UE3LG5000 32-inch', 'Full HD LED TV', 248, 2);
insert into PRODUCTS (productName, description, price, category) values ('Samsung Galaxy SIII', 'Sim Free Unlocked', 350, 4);
insert into PRODUCTS (productName, description, price, category) values ('Apple iPhone 5s', 'Unlocked', 550, 4);
insert into PRODUCTS (productName, description, price, category) values ('Apple iPad Mini 16GB Wi-Fi', 'White', 300, 3);
insert into PRODUCTS (productName, description, price, category) values ('Google Nexus 7 7-inch', '2GB RAM', 300, 3);


insert into CLIENTS (clientName, surnames, dni, mail, city, country)
values ('John', 'smith', '12345678K', 'j@a.com', 'Palma', 'España'); 
insert into CLIENTS (clientName, surnames, dni, mail, city, country)
values ('Mike', 'Garnet', '11111111K', 'm@b.com', 'Palma de Mallorca', 'Spain');

insert into SALES (entry_date, clientName, product, quantity)
values(20140101105500, 1, 6, 1), (20140201114312, 1, 4, 1),
(20140201114312, 1, 5, 2), (20140201203408, 2, 8, 1);

alter table CLIENTS add unique (dni);
alter table CLIENTS modify dni char(9) not null;
alter table CLIENTS modify clientName varchar(10) not null;
alter table CLIENTS modify surnames varchar(30) not null;
alter table CLIENTS modify clientCode int auto_increment;

alter table PRODUCTS modify productName varchar(30) not null default '';
alter table PRODUCTS add column stock int not null default '0';
update PRODUCTS set stock = 5 where productCode = 1;
update PRODUCTS set stock = 5 where productCode = 2;
update PRODUCTS set stock = 5 where productCode = 3;
update PRODUCTS set stock = 5 where productCode = 4;
update PRODUCTS set stock = 5 where productCode = 5;
update PRODUCTS set stock = 5 where productCode = 6;
update PRODUCTS set stock = 5 where productCode = 7;
update PRODUCTS set stock = 5 where productCode = 8;

insert into CLIENTS (clientCode, clientName, surnames, dni, mail, city, country)
values (1, 'Mary', 'Smith', '12345678K', 'm@a.com', 'Inca', 'España');
-- The value dni is the same on the first client.
insert into CLIENTS (clientCode, clientName, dni, mail, city, country)
values (1, 'Barbara', '87654321J', 'b@a.com', 'Inca', 'España');
--  The column surnames can't be empty because of the 'not null' constraint. 
insert into CLIENTS (clientName, surnames, dni, mail, city, country)
values ('Sussan', 'Collin', '87654321J', 's@a.com', 'Inca', 'España');
-- Even if the clientCode value isn't iserted, because of the auto_increment constraint,
-- it adds 1 to each row. Also the dni would be the same as the previous insert, 
-- and the constraint unique wouldn't allow it.

insert into PRODUCTS (productCode, productName, description, price, category)
values (9, 'Apple 15-inch MacBook Pro', 'New processors and graphics', 1200, 'Computer');
-- The column category is definided as an integer, so it can't store a string.

insert into PRODUCTS (productCode, productName, description, price, category)
values (10, 'Apple 17-inch MacBook Pro', 'New processors and graphics', 1400, 5);
-- The categoryCode 5 doesnt exist in the table CATEGORY, so the foreign key
-- PRODUCTS can't reference it.

-- Show how many products we have for every category
select count(productCode), categoryName
from
	PRODUCTS,
    CATEGORIES
where 
	CATEGORIES.categoryCode = PRODUCTS.category
group by categoryCode;	

-- Show all the clients who haven't buy anything

select clientName
from 
	CLIENTS
where
	not exists(select *
				from 
					SALES
				where
					CLIENTS.clientCode = SALES.clientName);

-- Show for every product the total amount we have sold.
select PRODUCTS.productName, count(SALES.quantity)
from
	PRODUCTS,
    SALES
where
	PRODUCTS.productCode = SALES.product
group by SALES.quantity		
-- Show the clients who have bought a phone
-- Show all the products for the LG brand. Check the result. Is it correct?. How we can solve this problem. Try to do it.	


