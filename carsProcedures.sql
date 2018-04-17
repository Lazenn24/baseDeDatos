select distinct bodyStyle
                                from carsTMP
                                where bodyStyle not in
													(select bodyStyle from BODY_STYLE);
                                                    
select * from BODY_STYLE;
select * from FUEL_SYSTEM;		
select * from carsTMP;
select * from ENGINE_TYPE;	
select * from ASPIRATION;
select * from GAS;
select * from BODY_WORK;

alter table BODY_WORK auto_increment = 1;

delete from BODY_WORK;



select inchesToCm(168.8);

SET SQL_SAFE_UPDATES = 0;

select distinct engineType
                                from carsTMP
                                where engineType not in
													(select engineType from ENGINE_TYPE);	
                                                    
drop table ENGINE_TYPE;	

alter table ENGINE_TYPE modify engineType varchar(8);	

select aspiration from carsTMP;	

select BODY_STYLE.id, length, width, height, wheelBase, numDoors
                                from carsTMP, BODY_STYLE
                                where carsTMP.bodyStyle = BODY_STYLE.bodyStyle;	
						
							