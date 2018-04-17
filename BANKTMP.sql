create database BANKMARKETING;

select * from BANKTMP;

create table JOB(
	id int auto_increment not null primary key,
    name varchar(32) not null unique);


create table EDUCATION(
	id int auto_increment not null primary key,
    name varchar(32) not null unique);
    
create table MARITAL(
	id int auto_increment not null primary key,
    name varchar(32) not null unique);
		
create table CONTACT(
	id int auto_increment not null primary key,
    age int(3) not null,
    job int,
    education int,
    marital int,
    balance decimal(8, 2),
    housing char(1),
    loan char(1),
    foreign key(job) references JOB(id)
    on delete set null on update cascade,
    foreign key(education) references EDUCATION(id)
    on delete set null on update cascade,
    foreign key(marital) references MARITAL(id)
    on delete set null on update cascade);
    
SHOW ENGINE INNODB STATUS;		
    
delimiter $$
create procedure load_jobs()
begin
	declare v_fin int(1);
    declare v_job varchar(32);
    
    declare c_jobs cursor for 
							select distinct(job) from BANKTMP
							where job not in(select name from JOB);
                            
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_jobs;
    
    l_jobs : loop
		fetch c_jobs into v_job;
        
        if v_fin = 1 then
			leave l_jobs;
		end if;		

		insert into JOB(name) values (v_job);
        
	end loop l_jobs;
    
    close c_jobs;
    
end;
$$
delimiter ;

call load_jobs;

select * from JOB;


INSERT INTO `BANKMARKETING`.`CONTACT`
(`age`,
`job`,
`education`,
`marital`,
`balance`,
`housing`,
`loan`)
VALUES
(0,
null,
null,
null,
null,
null,
null);

drop table CONTACT;

select * from CONTACT;

delimiter $$
create procedure load_contacts()
begin
	declare v_fin int(1);
    declare v_age int(3);
    
    declare c_contacts cursor for 
							select age from BANKTMP limit 100;
                            
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_contacts;
    
    l_contacts : loop
		fetch c_contacts into v_age;
        
        if v_fin = 1 then
			leave l_contacts;
		end if;		

		INSERT INTO `BANKMARKETING`.`CONTACT`
		(`age`,
		`job`,
		`education`,
		`marital`,
		`balance`,
		`housing`,
		`loan`)
		VALUES
		(v_age,
		null,
		null,
		null,
		null,
		null,
		null);
        
	end loop l_contacts;
    
    close c_contacts;

end;
$$
delimiter ;

call load_contacts;

select * from BANKTMP;

drop procedure load_contacts;





    