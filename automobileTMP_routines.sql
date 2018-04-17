CREATE DATABASE  IF NOT EXISTS `automobileTMP` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `automobileTMP`;
-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: automobileTMP
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping events for database 'automobileTMP'
--

--
-- Dumping routines for database 'automobileTMP'
--
/*!50003 DROP FUNCTION IF EXISTS `check_null` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `check_null`(calidad int) RETURNS int(11)
begin
	
    declare v_null int;
    
    set v_null = calidad;
    
    if v_null = -1 then
		set v_null = null;
	end if;
    
    return v_null;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `dolarToEuro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `dolarToEuro`(dolar int) RETURNS double(8,2)
begin
	declare v_dolar int;
    declare v_euro double;
    
    set v_dolar = dolar;
    
    set v_euro = v_dolar / 1.231838;
    
    return v_euro;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fiabilidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `fiabilidad`(sym int) RETURNS varchar(32) CHARSET latin1
begin

	declare v_sym int;
    declare v_fiab varchar(32);
    
    set v_sym = sym;
    
    if v_sym = -3 then
		set v_fiab = 'Excelente';
        elseif v_sym = -2 then
			set v_fiab = 'Muy fiable';
            elseif v_sym = -1 then
            set v_fiab = 'Fiable';
            elseif v_sym = 0 then
				set v_fiab = 'Mejorable';
                elseif v_sym = 1 then
					set v_fiab = 'Baja calidad';
					elseif v_sym = 2 then
						set v_fiab = 'Mala calidad';
							elseif v_sym = 3 then
								set v_fiab = 'Peligroso';
	end if;
    
    return v_fiab;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `inchesToCm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `inchesToCm`(inches double) RETURNS double(8,2)
begin
	declare v_inch double;
    declare v_m double;
    
    set v_inch = inches;
    
    set v_m = v_inch/0.39370;
  
	return v_m;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `mpgToL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `mpgToL`(mpg int) RETURNS double(8,2)
begin
	declare v_millas int;
    declare v_litros double;
    
    set v_millas = mpg;
    
    set v_litros = 100 / (v_millas * 0.164148587);
    
    return v_litros;    

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `numDoorsCylinders` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `numDoorsCylinders`(DC varchar(6)) RETURNS int(11)
begin

	declare v_doorCy varchar(6);
    declare v_numDoorCy int;
    
    set v_doorCy = DC;
    
    if v_doorCy = 'two' then
		set v_numDoorCy = 2;
        elseif v_doorCy = 'three' then
			set v_numDoorCy = 3;
            elseif v_doorCy = 'four' then
            set v_numDoorCy = 4;
            elseif v_doorCy = 'five' then
				set v_numDoorCy = 5;
                elseif v_doorCy = 'six' then
					set v_numDoorCy = 6;
                    elseif v_doorCy = 'eight' then
						set v_numDoorCy = 8;
							elseif v_doorCy = 'twelve' then
								set v_numDoorCy = 12;
	end if;
    
    return v_numDoorCy;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `poundsToKg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `poundsToKg`(pound int) RETURNS double(8,2)
begin
	declare v_pound int;
    declare v_kg double;
    
    set v_pound = pound;
    
    set v_kg = v_pound/2.2046;
    
    return v_kg;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `squareInchToCm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `squareInchToCm`(inch int) RETURNS double(8,2)
begin
	declare v_inch int;
    declare v_cm double;
    
    set v_inch = inch;
    
    set v_cm = v_inch / 0.061024;
    
    return v_cm;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_aspiration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_aspiration`()
begin
	
    declare v_fin int;
    declare v_aspiration varchar(32);
    
    declare c_aspiration cursor for
								select distinct aspiration
                                from carsTMP
                                where aspiration not in
													(select aspiration from ASPIRATION);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_aspiration;
    
    l_aspiration : loop
    
		fetch c_aspiration into v_aspiration;
        
        if v_fin = 1 then
			leave l_aspiration;
		end if;
        
        insert into ASPIRATION(aspiration) values(v_aspiration);
        
	end loop l_aspiration;
    
    close c_aspiration;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_bodyStyle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_bodyStyle`()
begin
	
    declare v_fin int;
    declare v_bodyStyle varchar(32);
    
    declare c_bodyStyle cursor for
								select distinct bodyStyle
                                from carsTMP
                                where bodyStyle not in
													(select bodyStyle from BODY_STYLE);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_bodyStyle;
    
    l_bodyStyle : loop
    
		fetch c_bodyStyle into v_bodyStyle;
        
        if v_fin = 1 then
			leave l_bodyStyle;
		end if;
        
        insert into BODY_STYLE(bodyStyle) values(v_bodyStyle);
        
	end loop l_bodyStyle;
    
    close c_bodyStyle;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_bodyWork` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_bodyWork`()
begin
	declare v_bodyStyle int;
    declare v_length double;
    declare v_width double;
    declare v_height double;
    declare v_wheelBase double;
    declare v_numDoors varchar(10);
    declare v_fin int;
    
    declare c_bodyWork cursor for 
								select BODY_STYLE.id, length, width, height, wheelBase, numDoors
                                from carsTMP, BODY_STYLE
                                where carsTMP.bodyStyle = BODY_STYLE.bodyStyle;
                                
	declare continue handler for not found set v_fin = 1;	
    
    set v_fin = 0;
    
    open c_bodyWork;
    
    l_bodyWork : loop
    
		fetch c_bodyWork into v_bodyStyle, v_length, v_width, v_height, v_wheelBase, v_numDoors;
 
        if v_fin = 1 then
			leave l_bodyWork;
		end if;
        
        insert into BODY_WORK(bodyStyle, length, width, height, wheelBase, numDoors) values(v_bodyStyle, inchesToCm(v_length), inchesToCm(v_width), inchesToCm(v_height), inchesToCm(v_wheelBase), numDoorsCylinders(v_numDoors));

        
	end loop l_bodyWork;
    
    close c_bodyWork;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_engineType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_engineType`()
begin
	
    declare v_fin int;
    declare v_engineType varchar(32);
    
    declare c_engineType cursor for
								select distinct engineType
                                from carsTMP
                                where engineType not in
													(select engineType from ENGINE_TYPE);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_engineType;
    
    l_engineType : loop
    
		fetch c_engineType into v_engineType;
        
        if v_fin = 1 then
			leave l_engineType;
		end if;
        
        insert into ENGINE_TYPE(engineType) values(v_engineType);
        
	end loop l_engineType;
    
    close c_engineType;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_fuelSystem` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_fuelSystem`()
begin
	
    declare v_fin int;
    declare v_fuelSystem varchar(32);
    
    declare c_fuelSystem cursor for
								select distinct fuelSystem
                                from carsTMP
                                where fuelSystem not in
													(select fuelSystem from FUEL_SYSTEM);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_fuelSystem;
    
    l_fuelSystem : loop
    
		fetch c_fuelSystem into v_fuelSystem;
        
        if v_fin = 1 then
			leave l_fuelSystem;
		end if;
        
        insert into FUEL_SYSTEM(fuelSystem) values(v_fuelSystem);
        
	end loop l_fuelSystem;
    
    close c_fuelSystem;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_gas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_gas`()
begin
	
    declare v_fin int;
    declare v_gas varchar(32);
    
    declare c_gas cursor for
								select distinct fuelType
                                from carsTMP
                                where fuelType not in
													(select fuelType from GAS);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_gas;
    
    l_gas : loop
    
		fetch c_gas into v_gas;
        
        if v_fin = 1 then
			leave l_gas;
		end if;
        
        insert into GAS(fuelType) values(v_gas);
        
	end loop l_gas;
    
    close c_gas;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_make` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_make`()
begin
	
    declare v_fin int;
    declare v_make varchar(32);
    
    declare c_make cursor for 
							select distinct make 
                            from carsTMP 
                            where make not in
										(select make from MAKE);
                                        
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_make;
    
    l_make : loop
		
        fetch c_make into v_make;
        
        if v_fin = 1 then
			leave l_make;
		end if;
		
		insert into MAKE(make) values(v_make);
        
	end loop l_make;
    
    close c_make;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-17 19:22:40
