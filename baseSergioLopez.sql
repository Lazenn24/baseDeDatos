create database PRUEBA;
use PRUEBA;


CREATE TABLE FABRICANTES (
	codigo int auto_increment,
    nombre varchar(100) not null default '',
    primary key(codigo));

CREATE TABLE ARTICULOS (
	codigo int auto_increment,
    nombre varchar(100) not null,
    precio int,
    fabricante int not null,
    primary key(codigo),
    foreign key (fabricante) references FABRICANTES(codigo));
    
CREATE TABLE DEPARTAMENTOS (
	codigo int auto_increment,
    nombre nvarchar(100) not null default '',
    precio int not null,
    presupuesto int not null,
    primary key (codigo));
    
CREATE TABLE EMPLEADOS (
	dni varchar(8) not null default '',
    nombre varchar(100) not null,
    apellidos varchar(255) not null,
    departamento int not null,
    primary key(dni),
    foreign key (departamento) references DEPARTAMENTOS(codigo));
    
CREATE TABLE ALMACENES (
	codigo int auto_increment,
    lugar varchar(100) not null default '',
    capacidad int not null,
    primary key (codigo));
    
CREATE TABLE CAJAS (
	numReferencia char(5) not null,
    contenido varchar(100) not null default '',
    valor int not null,
    almacen int not null,
    primary key (numReferencia),
    foreign key(almacen) references ALMACENES(codigo));
    
CREATE TABLE PELICULAS (
	codigo int not null,
    nombre varchar(100),
    calificacionEdad int not null,
    primary key(codigo));
    
CREATE TABLE SALAS (
	codigo int auto_increment,
    nombre varchar(100) not null default '',
    pelicula int not null,
    primary key (codigo),
    foreign key (pelicula) references PELICULAS(codigo));
    
CREATE TABLE PIEZAS (
	codigo int auto_increment,
    nombre varchar(100) not null default '',
    primary key (codigo));
    
CREATE TABLE PROVEEDORES (
	id char(4) not null default '',
    nombre varchar(100) not null default '',
    primary key (id));
    
CREATE TABLE SUMINISTRA (
	codigoPieza int auto_increment,
    idProveedor char(4) not null default '',
    precio int not null,
    primary key (codigoPieza, idProveedor),
    foreign key (codigoPieza) references PIEZAS (codigo),
    foreign key (idProveedor) references PROVEEDORES (id));
    
CREATE TABLE CIENTIFICOS (
	dni varchar(8) not null default '',
    nomApels varchar(255) not null default '',
    primary key (dni));
    
CREATE TABLE PROYECTO (
	id char(4) not null default '',
    nombre varchar(255) not null default '',
    horas int,
    primary key (id));
    
CREATE TABLE ASIGNADO_A (
	cientifico varchar(8) not null default '',
    proyecto char(4) not null default '',
    primary key (cientifico, proyecto),
    foreign key (cientifico) references CIENTIFICOS(dni),
    foreign key (proyecto) references PROYECTO(id));
    
CREATE TABLE CAJEROS (
	codigo int auto_increment,
    nomApels varchar(255) not null default '',
    primary key (codigo));
    
CREATE TABLE PRODUCTOS (
	codigo int auto_increment,
    nombre varchar(100) not null default '',
    precio int,
    primary key (codigo));
    
CREATE TABLE MAQUINAS_REGISTRADORAS (
	codigo int auto_increment,
    piso int,
    primary key (codigo));
    
CREATE TABLE VENTA (
	cajero int,
    maquina int,
    producto int,
    primary key (cajero, maquina, producto),
    foreign key (cajero) references CAJEROS(codigo),
    foreign key (maquina) references MAQUINAS_REGISTRADORAS(codigo),
    foreign key (producto) references PRODUCTOS(codigo));
    
CREATE TABLE FACULTAD (
	codigo int auto_increment,
    nombre varchar(100),
    primary key (codigo));
    
CREATE TABLE INVESTIGADORES (
	dni varchar(8) not null default '',
    nomApels varchar(255),
    facultad int,
    primary key (dni),
    foreign key (facultad) references FACULTAD(codigo));
    
CREATE TABLE EQUIPOS (
	numSerie char(4) not null default '',
    nombre varchar(100),
    facultad int,
    primary key (numSerie),
    foreign key (facultad) references FACULTAD(codigo));
    
CREATE TABLE RESERVA (
	dni varchar(8) not null default '',
    numSerie char(4) not null default '',
    comienzo datetime,
    fin datetime,
    primary key (dni, numSerie),
    foreign key (dni) references INVESTIGADORES(dni),
    foreign key (numSerie) references EQUIPOS(numSerie));
    
CREATE TABLE COUNTRY (
	country_id int auto_increment,
    country_name varchar(50) not null default '',
    region_id int not null,
    primary key(country_id));
    
INSERT INTO COUNTRY(country_name, region_id) values("España", 1);	
INSERT INTO COUNTRY(country_name, region_id) values("Alemania", 2);
INSERT INTO COUNTRY(country_name, region_id) values("Italia", 3);
INSERT INTO COUNTRY(country_name, region_id) values("Francia", 4);
INSERT INTO COUNTRY(country_name, region_id) values("Inglaterra", 5);

CREATE TABLE COUNTRYCOPY1 AS SELECT * FROM COUNTRY;
CREATE TABLE COUNTRYCOPY2 LIKE COUNTRY;

CREATE TABLE COUNTRIES (
	country_id int auto_increment unique,
    country_name varchar(50) not null default '',
    region_id int not null,
    primary key(country_id));
    
CREATE TABLE JOBS (
	job_id int auto_increment,
    job_title varchar(30) not null default '',
    min_salary double not null default 8000,
    max_salary double default null,
    primary key(job_id));
    
RENAME TABLE COUNTRIES TO COUNTRY_NEW;

CREATE TABLE LOCATIONS (
	state_province varchar(50) not null default '',
    country_id int not null unique,
    primary key(country_id));
    
ALTER TABLE LOCATIONS ADD COLUMN region_id int not null;
select * from LOCATIONS;
ALTER TABLE LOCATIONS MODIFY country_id char(2) not null default '';
ALTER TABLE LOCATIONS ADD COLUMN city varchar(30) not null default '';
alter table LOCATIONS drop column city;
alter table LOCATIONS change state_province state varchar(50) not null default ''; 
alter table LOCATIONS drop column country_id;
alter table LOCATIONS add column locations_id char(4) not null;
alter table LOCATIONS add primary key(locations_id);
alter table LOCATIONS drop primary key;
alter table LOCATIONS add column country_id int not null unique;
alter table LOCATIONS add primary key(locations_id, country_id);
alter table LOCATIONS drop primary key;

    
    
	
    
		


    
    
		
    
		
		
    