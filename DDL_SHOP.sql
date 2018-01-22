create table CATEGORIES (
	categoryCode int auto_increment,
    categoryName varchar(15) not null default '',
    primary key(categoryCode));
    
create table PRODUCTS (
	productCode int auto_increment,
    productName varchar(25) not null default '',
    description varchar(50) not null default '',
    price float not null,
    categoryName varchar(15) not null default '',
    primary key(productCode),
    foreign key(

