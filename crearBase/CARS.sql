create database if not exists CAR;
use CAR;
-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: CARS
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `carsTMP`
--

DROP TABLE IF EXISTS `carsTMP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carsTMP` (
  `id` int auto_increment primary key,
  `symboling` int(11) DEFAULT NULL,
  `normalizedLoses` int(11) DEFAULT NULL,
  `make` text,
  `fuelType` text,
  `aspiration` text,
  `numDoors` text,
  `bodyStyle` text,
  `driveWheels` text,
  `engineLocation` text,
  `wheelBase` double DEFAULT NULL,
  `length` double DEFAULT NULL,
  `width` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `curbWeight` int(11) DEFAULT NULL,
  `engineType` text,
  `numCylinders` text,
  `engineSize` int(11) DEFAULT NULL,
  `fuelSystem` text,
  `bore` double DEFAULT NULL,
  `stroke` double DEFAULT NULL,
  `compressionRatio` double DEFAULT NULL,
  `horsepower` int(11) DEFAULT NULL,
  `peakRpm` int(11) DEFAULT NULL,
  `cityMpg` int(11) DEFAULT NULL,
  `highwayMpg` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carsTMP`
--

LOCK TABLES `carsTMP` WRITE;
/*!40000 ALTER TABLE `carsTMP` DISABLE KEYS */;
INSERT INTO `carsTMP`(symboling, normalizedLoses, make, fuelType, aspiration,
	numDoors, bodyStyle, driveWheels, engineLocation, wheelBase, length, width, height, 
    curbWeight, engineType, numCylinders, engineSize, fuelSystem, bore, stroke, compressionRatio, horsePower, peakRpm, cityMpg,
    highwayMpg, price) values(3,NULL,'alfa-romero','gas','std','two','convertible','rwd','front',88.6,168.8,64.1,48.8,2548,'dohc','four',130,'mpfi',3.47,2.68,9,111,5000,21,27,13495),(3,NULL,'alfa-romero','gas','std','two','convertible','rwd','front',88.6,168.8,64.1,48.8,2548,'dohc','four',130,'mpfi',3.47,2.68,9,111,5000,21,27,16500),(1,NULL,'alfa-romero','gas','std','two','hatchback','rwd','front',94.5,171.2,65.5,52.4,2823,'ohcv','six',152,'mpfi',2.68,3.47,9,154,5000,19,26,16500),(2,164,'audi','gas','std','four','sedan','fwd','front',99.8,176.6,66.2,54.3,2337,'ohc','four',109,'mpfi',3.19,3.4,10,102,5500,24,30,13950),(2,164,'audi','gas','std','four','sedan','4wd','front',99.4,176.6,66.4,54.3,2824,'ohc','five',136,'mpfi',3.19,3.4,8,115,5500,18,22,17450),(2,NULL,'audi','gas','std','two','sedan','fwd','front',99.8,177.3,66.3,53.1,2507,'ohc','five',136,'mpfi',3.19,3.4,8.5,110,5500,19,25,15250),(1,158,'audi','gas','std','four','sedan','fwd','front',105.8,192.7,71.4,55.7,2844,'ohc','five',136,'mpfi',3.19,3.4,8.5,110,5500,19,25,17710),(1,NULL,'audi','gas','std','four','wagon','fwd','front',105.8,192.7,71.4,55.7,2954,'ohc','five',136,'mpfi',3.19,3.4,8.5,110,5500,19,25,18920),(1,158,'audi','gas','turbo','four','sedan','fwd','front',105.8,192.7,71.4,55.9,3086,'ohc','five',131,'mpfi',3.13,3.4,8.3,140,5500,17,20,23875),(0,NULL,'audi','gas','turbo','two','hatchback','4wd','front',99.5,178.2,67.9,52,3053,'ohc','five',131,'mpfi',3.13,3.4,7,160,5500,16,22,NULL),(2,192,'bmw','gas','std','two','sedan','rwd','front',101.2,176.8,64.8,54.3,2395,'ohc','four',108,'mpfi',3.5,2.8,8.8,101,5800,23,29,16430),(0,192,'bmw','gas','std','four','sedan','rwd','front',101.2,176.8,64.8,54.3,2395,'ohc','four',108,'mpfi',3.5,2.8,8.8,101,5800,23,29,16925),(0,188,'bmw','gas','std','two','sedan','rwd','front',101.2,176.8,64.8,54.3,2710,'ohc','six',164,'mpfi',3.31,3.19,9,121,4250,21,28,20970),(0,188,'bmw','gas','std','four','sedan','rwd','front',101.2,176.8,64.8,54.3,2765,'ohc','six',164,'mpfi',3.31,3.19,9,121,4250,21,28,21105),(1,NULL,'bmw','gas','std','four','sedan','rwd','front',103.5,189,66.9,55.7,3055,'ohc','six',164,'mpfi',3.31,3.19,9,121,4250,20,25,24565),(0,NULL,'bmw','gas','std','four','sedan','rwd','front',103.5,189,66.9,55.7,3230,'ohc','six',209,'mpfi',3.62,3.39,8,182,5400,16,22,30760),(0,NULL,'bmw','gas','std','two','sedan','rwd','front',103.5,193.8,67.9,53.7,3380,'ohc','six',209,'mpfi',3.62,3.39,8,182,5400,16,22,41315),(0,NULL,'bmw','gas','std','four','sedan','rwd','front',110,197,70.9,56.3,3505,'ohc','six',209,'mpfi',3.62,3.39,8,182,5400,15,20,36880),(2,121,'chevrolet','gas','std','two','hatchback','fwd','front',88.4,141.1,60.3,53.2,1488,'l','three',61,'2bbl',2.91,3.03,9.5,48,5100,47,53,5151),(1,98,'chevrolet','gas','std','two','hatchback','fwd','front',94.5,155.9,63.6,52,1874,'ohc','four',90,'2bbl',3.03,3.11,9.6,70,5400,38,43,6295),(0,81,'chevrolet','gas','std','four','sedan','fwd','front',94.5,158.8,63.6,52,1909,'ohc','four',90,'2bbl',3.03,3.11,9.6,70,5400,38,43,6575),(1,118,'dodge','gas','std','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,1876,'ohc','four',90,'2bbl',2.97,3.23,9.41,68,5500,37,41,5572),(1,118,'dodge','gas','std','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,1876,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6377),(1,118,'dodge','gas','turbo','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,2128,'ohc','four',98,'mpfi',3.03,3.39,7.6,102,5500,24,30,7957),(1,148,'dodge','gas','std','four','hatchback','fwd','front',93.7,157.3,63.8,50.6,1967,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6229),(1,148,'dodge','gas','std','four','sedan','fwd','front',93.7,157.3,63.8,50.6,1989,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6692),(1,148,'dodge','gas','std','four','sedan','fwd','front',93.7,157.3,63.8,50.6,1989,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,7609),(1,148,'dodge','gas','turbo','-1','sedan','fwd','front',93.7,157.3,63.8,50.6,2191,'ohc','four',98,'mpfi',3.03,3.39,7.6,102,5500,24,30,8558),(-1,110,'dodge','gas','std','four','wagon','fwd','front',103.3,174.6,64.6,59.8,2535,'ohc','four',122,'2bbl',3.34,3.46,8.5,88,5000,24,30,8921),(3,145,'dodge','gas','turbo','two','hatchback','fwd','front',95.9,173.2,66.3,50.2,2811,'ohc','four',156,'mfi',3.6,3.9,7,145,5000,19,24,12964),(2,137,'honda','gas','std','two','hatchback','fwd','front',86.6,144.6,63.9,50.8,1713,'ohc','four',92,'1bbl',2.91,3.41,9.6,58,4800,49,54,6479),(2,137,'honda','gas','std','two','hatchback','fwd','front',86.6,144.6,63.9,50.8,1819,'ohc','four',92,'1bbl',2.91,3.41,9.2,76,6000,31,38,6855),(1,101,'honda','gas','std','two','hatchback','fwd','front',93.7,150,64,52.6,1837,'ohc','four',79,'1bbl',2.91,3.07,10.1,60,5500,38,42,5399),(1,101,'honda','gas','std','two','hatchback','fwd','front',93.7,150,64,52.6,1940,'ohc','four',92,'1bbl',2.91,3.41,9.2,76,6000,30,34,6529),(1,101,'honda','gas','std','two','hatchback','fwd','front',93.7,150,64,52.6,1956,'ohc','four',92,'1bbl',2.91,3.41,9.2,76,6000,30,34,7129),(0,110,'honda','gas','std','four','sedan','fwd','front',96.5,163.4,64,54.5,2010,'ohc','four',92,'1bbl',2.91,3.41,9.2,76,6000,30,34,7295),(0,78,'honda','gas','std','four','wagon','fwd','front',96.5,157.1,63.9,58.3,2024,'ohc','four',92,'1bbl',2.92,3.41,9.2,76,6000,30,34,7295),(0,106,'honda','gas','std','two','hatchback','fwd','front',96.5,167.5,65.2,53.3,2236,'ohc','four',110,'1bbl',3.15,3.58,9,86,5800,27,33,7895),(0,106,'honda','gas','std','two','hatchback','fwd','front',96.5,167.5,65.2,53.3,2289,'ohc','four',110,'1bbl',3.15,3.58,9,86,5800,27,33,9095),(0,85,'honda','gas','std','four','sedan','fwd','front',96.5,175.4,65.2,54.1,2304,'ohc','four',110,'1bbl',3.15,3.58,9,86,5800,27,33,8845),(0,85,'honda','gas','std','four','sedan','fwd','front',96.5,175.4,62.5,54.1,2372,'ohc','four',110,'1bbl',3.15,3.58,9,86,5800,27,33,10295),(0,85,'honda','gas','std','four','sedan','fwd','front',96.5,175.4,65.2,54.1,2465,'ohc','four',110,'mpfi',3.15,3.58,9,101,5800,24,28,12945),(1,107,'honda','gas','std','two','sedan','fwd','front',96.5,169.1,66,51,2293,'ohc','four',110,'2bbl',3.15,3.58,9.1,100,5500,25,31,10345),(0,NULL,'isuzu','gas','std','four','sedan','rwd','front',94.3,170.7,61.8,53.5,2337,'ohc','four',111,'2bbl',3.31,3.23,8.5,78,4800,24,29,6785),(1,NULL,'isuzu','gas','std','two','sedan','fwd','front',94.5,155.9,63.6,52,1874,'ohc','four',90,'2bbl',3.03,3.11,9.6,70,5400,38,43,NULL),(0,NULL,'isuzu','gas','std','four','sedan','fwd','front',94.5,155.9,63.6,52,1909,'ohc','four',90,'2bbl',3.03,3.11,9.6,70,5400,38,43,NULL),(2,NULL,'isuzu','gas','std','two','hatchback','rwd','front',96,172.6,65.2,51.4,2734,'ohc','four',119,'spfi',3.43,3.23,9.2,90,5000,24,29,11048),(0,145,'jaguar','gas','std','four','sedan','rwd','front',113,199.6,69.6,52.8,4066,'dohc','six',258,'mpfi',3.63,4.17,8.1,176,4750,15,19,32250),(0,NULL,'jaguar','gas','std','four','sedan','rwd','front',113,199.6,69.6,52.8,4066,'dohc','six',258,'mpfi',3.63,4.17,8.1,176,4750,15,19,35550),(0,NULL,'jaguar','gas','std','two','sedan','rwd','front',102,191.7,70.6,47.8,3950,'ohcv','twelve',326,'mpfi',3.54,2.76,11.5,262,5000,13,17,36000),(1,104,'mazda','gas','std','two','hatchback','fwd','front',93.1,159.1,64.2,54.1,1890,'ohc','four',91,'2bbl',3.03,3.15,9,68,5000,30,31,5195),(1,104,'mazda','gas','std','two','hatchback','fwd','front',93.1,159.1,64.2,54.1,1900,'ohc','four',91,'2bbl',3.03,3.15,9,68,5000,31,38,6095),(1,104,'mazda','gas','std','two','hatchback','fwd','front',93.1,159.1,64.2,54.1,1905,'ohc','four',91,'2bbl',3.03,3.15,9,68,5000,31,38,6795),(1,113,'mazda','gas','std','four','sedan','fwd','front',93.1,166.8,64.2,54.1,1945,'ohc','four',91,'2bbl',3.03,3.15,9,68,5000,31,38,6695),(1,113,'mazda','gas','std','four','sedan','fwd','front',93.1,166.8,64.2,54.1,1950,'ohc','four',91,'2bbl',3.08,3.15,9,68,5000,31,38,7395),(3,150,'mazda','gas','std','two','hatchback','rwd','front',95.3,169,65.7,49.6,2380,'rotor','two',70,'4bbl',NULL,NULL,9.4,101,6000,17,23,10945),(3,150,'mazda','gas','std','two','hatchback','rwd','front',95.3,169,65.7,49.6,2380,'rotor','two',70,'4bbl',NULL,NULL,9.4,101,6000,17,23,11845),(3,150,'mazda','gas','std','two','hatchback','rwd','front',95.3,169,65.7,49.6,2385,'rotor','two',70,'4bbl',NULL,NULL,9.4,101,6000,17,23,13645),(3,150,'mazda','gas','std','two','hatchback','rwd','front',95.3,169,65.7,49.6,2500,'rotor','two',80,'mpfi',NULL,NULL,9.4,135,6000,16,23,15645),(1,129,'mazda','gas','std','two','hatchback','fwd','front',98.8,177.8,66.5,53.7,2385,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,8845),(0,115,'mazda','gas','std','four','sedan','fwd','front',98.8,177.8,66.5,55.5,2410,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,8495),(1,129,'mazda','gas','std','two','hatchback','fwd','front',98.8,177.8,66.5,53.7,2385,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,10595),(0,115,'mazda','gas','std','four','sedan','fwd','front',98.8,177.8,66.5,55.5,2410,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,10245),(0,NULL,'mazda','diesel','std','-1','sedan','fwd','front',98.8,177.8,66.5,55.5,2443,'ohc','four',122,'idi',3.39,3.39,22.7,64,4650,36,42,10795),(0,115,'mazda','gas','std','four','hatchback','fwd','front',98.8,177.8,66.5,55.5,2425,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,11245),(0,118,'mazda','gas','std','four','sedan','rwd','front',104.9,175,66.1,54.4,2670,'ohc','four',140,'mpfi',3.76,3.16,8,120,5000,19,27,18280),(0,NULL,'mazda','diesel','std','four','sedan','rwd','front',104.9,175,66.1,54.4,2700,'ohc','four',134,'idi',3.43,3.64,22,72,4200,31,39,18344),(-1,93,'mercedes-benz','diesel','turbo','four','sedan','rwd','front',110,190.9,70.3,56.5,3515,'ohc','five',183,'idi',3.58,3.64,21.5,123,4350,22,25,25552),(-1,93,'mercedes-benz','diesel','turbo','four','wagon','rwd','front',110,190.9,70.3,58.7,3750,'ohc','five',183,'idi',3.58,3.64,21.5,123,4350,22,25,28248),(0,93,'mercedes-benz','diesel','turbo','two','hardtop','rwd','front',106.7,187.5,70.3,54.9,3495,'ohc','five',183,'idi',3.58,3.64,21.5,123,4350,22,25,28176),(-1,93,'mercedes-benz','diesel','turbo','four','sedan','rwd','front',115.6,202.6,71.7,56.3,3770,'ohc','five',183,'idi',3.58,3.64,21.5,123,4350,22,25,31600),(-1,NULL,'mercedes-benz','gas','std','four','sedan','rwd','front',115.6,202.6,71.7,56.5,3740,'ohcv','eight',234,'mpfi',3.46,3.1,8.3,155,4750,16,18,34184),(3,142,'mercedes-benz','gas','std','two','convertible','rwd','front',96.6,180.3,70.5,50.8,3685,'ohcv','eight',234,'mpfi',3.46,3.1,8.3,155,4750,16,18,35056),(0,NULL,'mercedes-benz','gas','std','four','sedan','rwd','front',120.9,208.1,71.7,56.7,3900,'ohcv','eight',308,'mpfi',3.8,3.35,8,184,4500,14,16,40960),(1,NULL,'mercedes-benz','gas','std','two','hardtop','rwd','front',112,199.2,72,55.4,3715,'ohcv','eight',304,'mpfi',3.8,3.35,8,184,4500,14,16,45400),(1,NULL,'mercury','gas','turbo','two','hatchback','rwd','front',102.7,178.4,68,54.8,2910,'ohc','four',140,'mpfi',3.78,3.12,8,175,5000,19,24,16503),(2,161,'mitsubishi','gas','std','two','hatchback','fwd','front',93.7,157.3,64.4,50.8,1918,'ohc','four',92,'2bbl',2.97,3.23,9.4,68,5500,37,41,5389),(2,161,'mitsubishi','gas','std','two','hatchback','fwd','front',93.7,157.3,64.4,50.8,1944,'ohc','four',92,'2bbl',2.97,3.23,9.4,68,5500,31,38,6189),(2,161,'mitsubishi','gas','std','two','hatchback','fwd','front',93.7,157.3,64.4,50.8,2004,'ohc','four',92,'2bbl',2.97,3.23,9.4,68,5500,31,38,6669),(1,161,'mitsubishi','gas','turbo','two','hatchback','fwd','front',93,157.3,63.8,50.8,2145,'ohc','four',98,'spdi',3.03,3.39,7.6,102,5500,24,30,7689),(3,153,'mitsubishi','gas','turbo','two','hatchback','fwd','front',96.3,173,65.4,49.4,2370,'ohc','four',110,'spdi',3.17,3.46,7.5,116,5500,23,30,9959),(3,153,'mitsubishi','gas','std','two','hatchback','fwd','front',96.3,173,65.4,49.4,2328,'ohc','four',122,'2bbl',3.35,3.46,8.5,88,5000,25,32,8499),(3,NULL,'mitsubishi','gas','turbo','two','hatchback','fwd','front',95.9,173.2,66.3,50.2,2833,'ohc','four',156,'spdi',3.58,3.86,7,145,5000,19,24,12629),(3,NULL,'mitsubishi','gas','turbo','two','hatchback','fwd','front',95.9,173.2,66.3,50.2,2921,'ohc','four',156,'spdi',3.59,3.86,7,145,5000,19,24,14869),(3,NULL,'mitsubishi','gas','turbo','two','hatchback','fwd','front',95.9,173.2,66.3,50.2,2926,'ohc','four',156,'spdi',3.59,3.86,7,145,5000,19,24,14489),(1,125,'mitsubishi','gas','std','four','sedan','fwd','front',96.3,172.4,65.4,51.6,2365,'ohc','four',122,'2bbl',3.35,3.46,8.5,88,5000,25,32,6989),(1,125,'mitsubishi','gas','std','four','sedan','fwd','front',96.3,172.4,65.4,51.6,2405,'ohc','four',122,'2bbl',3.35,3.46,8.5,88,5000,25,32,8189),(1,125,'mitsubishi','gas','turbo','four','sedan','fwd','front',96.3,172.4,65.4,51.6,2403,'ohc','four',110,'spdi',3.17,3.46,7.5,116,5500,23,30,9279),(-1,137,'mitsubishi','gas','std','four','sedan','fwd','front',96.3,172.4,65.4,51.6,2403,'ohc','four',110,'spdi',3.17,3.46,7.5,116,5500,23,30,9279),(1,128,'nissan','gas','std','two','sedan','fwd','front',94.5,165.3,63.8,54.5,1889,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,5499),(1,128,'nissan','diesel','std','two','sedan','fwd','front',94.5,165.3,63.8,54.5,2017,'ohc','four',103,'idi',2.99,3.47,21.9,55,4800,45,50,7099),(1,128,'nissan','gas','std','two','sedan','fwd','front',94.5,165.3,63.8,54.5,1918,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,6649),(1,122,'nissan','gas','std','four','sedan','fwd','front',94.5,165.3,63.8,54.5,1938,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,6849),(1,103,'nissan','gas','std','four','wagon','fwd','front',94.5,170.2,63.8,53.5,2024,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7349),(1,128,'nissan','gas','std','two','sedan','fwd','front',94.5,165.3,63.8,54.5,1951,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7299),(1,128,'nissan','gas','std','two','hatchback','fwd','front',94.5,165.6,63.8,53.3,2028,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7799),(1,122,'nissan','gas','std','four','sedan','fwd','front',94.5,165.3,63.8,54.5,1971,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7499),(1,103,'nissan','gas','std','four','wagon','fwd','front',94.5,170.2,63.8,53.5,2037,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7999),(2,168,'nissan','gas','std','two','hardtop','fwd','front',95.1,162.4,63.8,53.3,2008,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,8249),(0,106,'nissan','gas','std','four','hatchback','fwd','front',97.2,173.4,65.2,54.7,2324,'ohc','four',120,'2bbl',3.33,3.47,8.5,97,5200,27,34,8949),(0,106,'nissan','gas','std','four','sedan','fwd','front',97.2,173.4,65.2,54.7,2302,'ohc','four',120,'2bbl',3.33,3.47,8.5,97,5200,27,34,9549),(0,128,'nissan','gas','std','four','sedan','fwd','front',100.4,181.7,66.5,55.1,3095,'ohcv','six',181,'mpfi',3.43,3.27,9,152,5200,17,22,13499),(0,108,'nissan','gas','std','four','wagon','fwd','front',100.4,184.6,66.5,56.1,3296,'ohcv','six',181,'mpfi',3.43,3.27,9,152,5200,17,22,14399),(0,108,'nissan','gas','std','four','sedan','fwd','front',100.4,184.6,66.5,55.1,3060,'ohcv','six',181,'mpfi',3.43,3.27,9,152,5200,19,25,13499),(3,194,'nissan','gas','std','two','hatchback','rwd','front',91.3,170.7,67.9,49.7,3071,'ohcv','six',181,'mpfi',3.43,3.27,9,160,5200,19,25,17199),(3,194,'nissan','gas','turbo','two','hatchback','rwd','front',91.3,170.7,67.9,49.7,3139,'ohcv','six',181,'mpfi',3.43,3.27,7.8,200,5200,17,23,19699),(1,231,'nissan','gas','std','two','hatchback','rwd','front',99.2,178.5,67.9,49.7,3139,'ohcv','six',181,'mpfi',3.43,3.27,9,160,5200,19,25,18399),(0,161,'peugot','gas','std','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3020,'l','four',120,'mpfi',3.46,3.19,8.4,97,5000,19,24,11900),(0,161,'peugot','diesel','turbo','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3197,'l','four',152,'idi',3.7,3.52,21,95,4150,28,33,13200),(0,NULL,'peugot','gas','std','four','wagon','rwd','front',114.2,198.9,68.4,58.7,3230,'l','four',120,'mpfi',3.46,3.19,8.4,97,5000,19,24,12440),(0,NULL,'peugot','diesel','turbo','four','wagon','rwd','front',114.2,198.9,68.4,58.7,3430,'l','four',152,'idi',3.7,3.52,21,95,4150,25,25,13860),(0,161,'peugot','gas','std','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3075,'l','four',120,'mpfi',3.46,2.19,8.4,95,5000,19,24,15580),(0,161,'peugot','diesel','turbo','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3252,'l','four',152,'idi',3.7,3.52,21,95,4150,28,33,16900),(0,NULL,'peugot','gas','std','four','wagon','rwd','front',114.2,198.9,68.4,56.7,3285,'l','four',120,'mpfi',3.46,2.19,8.4,95,5000,19,24,16695),(0,NULL,'peugot','diesel','turbo','four','wagon','rwd','front',114.2,198.9,68.4,58.7,3485,'l','four',152,'idi',3.7,3.52,21,95,4150,25,25,17075),(0,161,'peugot','gas','std','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3075,'l','four',120,'mpfi',3.46,3.19,8.4,97,5000,19,24,16630),(0,161,'peugot','diesel','turbo','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3252,'l','four',152,'idi',3.7,3.52,21,95,4150,28,33,17950),(0,161,'peugot','gas','turbo','four','sedan','rwd','front',108,186.7,68.3,56,3130,'l','four',134,'mpfi',3.61,3.21,7,142,5600,18,24,18150),(1,119,'plymouth','gas','std','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,1918,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,37,41,5572),(1,119,'plymouth','gas','turbo','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,2128,'ohc','four',98,'spdi',3.03,3.39,7.6,102,5500,24,30,7957),(1,154,'plymouth','gas','std','four','hatchback','fwd','front',93.7,157.3,63.8,50.6,1967,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6229),(1,154,'plymouth','gas','std','four','sedan','fwd','front',93.7,167.3,63.8,50.8,1989,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6692),(1,154,'plymouth','gas','std','four','sedan','fwd','front',93.7,167.3,63.8,50.8,2191,'ohc','four',98,'2bbl',2.97,3.23,9.4,68,5500,31,38,7609),(-1,74,'plymouth','gas','std','four','wagon','fwd','front',103.3,174.6,64.6,59.8,2535,'ohc','four',122,'2bbl',3.35,3.46,8.5,88,5000,24,30,8921),(3,NULL,'plymouth','gas','turbo','two','hatchback','rwd','front',95.9,173.2,66.3,50.2,2818,'ohc','four',156,'spdi',3.59,3.86,7,145,5000,19,24,12764),(3,186,'porsche','gas','std','two','hatchback','rwd','front',94.5,168.9,68.3,50.2,2778,'ohc','four',151,'mpfi',3.94,3.11,9.5,143,5500,19,27,22018),(3,NULL,'porsche','gas','std','two','hardtop','rwd','rear',89.5,168.9,65,51.6,2756,'ohcf','six',194,'mpfi',3.74,2.9,9.5,207,5900,17,25,32528),(3,NULL,'porsche','gas','std','two','hardtop','rwd','rear',89.5,168.9,65,51.6,2756,'ohcf','six',194,'mpfi',3.74,2.9,9.5,207,5900,17,25,34028),(3,NULL,'porsche','gas','std','two','convertible','rwd','rear',89.5,168.9,65,51.6,2800,'ohcf','six',194,'mpfi',3.74,2.9,9.5,207,5900,17,25,37028),(1,NULL,'porsche','gas','std','two','hatchback','rwd','front',98.4,175.7,72.3,50.5,3366,'dohcv','eight',203,'mpfi',3.94,3.11,10,288,5750,17,28,NULL),(0,NULL,'renault','gas','std','four','wagon','fwd','front',96.1,181.5,66.5,55.2,2579,'ohc','four',132,'mpfi',3.46,3.9,8.7,NULL,NULL,23,31,9295),(2,NULL,'renault','gas','std','two','hatchback','fwd','front',96.1,176.8,66.6,50.5,2460,'ohc','four',132,'mpfi',3.46,3.9,8.7,NULL,NULL,23,31,9895),(3,150,'saab','gas','std','two','hatchback','fwd','front',99.1,186.6,66.5,56.1,2658,'ohc','four',121,'mpfi',3.54,3.07,9.31,110,5250,21,28,11850),(2,104,'saab','gas','std','four','sedan','fwd','front',99.1,186.6,66.5,56.1,2695,'ohc','four',121,'mpfi',3.54,3.07,9.3,110,5250,21,28,12170),(3,150,'saab','gas','std','two','hatchback','fwd','front',99.1,186.6,66.5,56.1,2707,'ohc','four',121,'mpfi',2.54,2.07,9.3,110,5250,21,28,15040),(2,104,'saab','gas','std','four','sedan','fwd','front',99.1,186.6,66.5,56.1,2758,'ohc','four',121,'mpfi',3.54,3.07,9.3,110,5250,21,28,15510),(3,150,'saab','gas','turbo','two','hatchback','fwd','front',99.1,186.6,66.5,56.1,2808,'dohc','four',121,'mpfi',3.54,3.07,9,160,5500,19,26,18150),(2,104,'saab','gas','turbo','four','sedan','fwd','front',99.1,186.6,66.5,56.1,2847,'dohc','four',121,'mpfi',3.54,3.07,9,160,5500,19,26,18620),(2,83,'subaru','gas','std','two','hatchback','fwd','front',93.7,156.9,63.4,53.7,2050,'ohcf','four',97,'2bbl',3.62,2.36,9,69,4900,31,36,5118),(2,83,'subaru','gas','std','two','hatchback','fwd','front',93.7,157.9,63.6,53.7,2120,'ohcf','four',108,'2bbl',3.62,2.64,8.7,73,4400,26,31,7053),(2,83,'subaru','gas','std','two','hatchback','4wd','front',93.3,157.3,63.8,55.7,2240,'ohcf','four',108,'2bbl',3.62,2.64,8.7,73,4400,26,31,7603),(0,102,'subaru','gas','std','four','sedan','fwd','front',97.2,172,65.4,52.5,2145,'ohcf','four',108,'2bbl',3.62,2.64,9.5,82,4800,32,37,7126),(0,102,'subaru','gas','std','four','sedan','fwd','front',97.2,172,65.4,52.5,2190,'ohcf','four',108,'2bbl',3.62,2.64,9.5,82,4400,28,33,7775),(0,102,'subaru','gas','std','four','sedan','fwd','front',97.2,172,65.4,52.5,2340,'ohcf','four',108,'mpfi',3.62,2.64,9,94,5200,26,32,9960),(0,102,'subaru','gas','std','four','sedan','4wd','front',97,172,65.4,54.3,2385,'ohcf','four',108,'2bbl',3.62,2.64,9,82,4800,24,25,9233),(0,102,'subaru','gas','turbo','four','sedan','4wd','front',97,172,65.4,54.3,2510,'ohcf','four',108,'mpfi',3.62,2.64,7.7,111,4800,24,29,11259),(0,89,'subaru','gas','std','four','wagon','fwd','front',97,173.5,65.4,53,2290,'ohcf','four',108,'2bbl',3.62,2.64,9,82,4800,28,32,7463),(0,89,'subaru','gas','std','four','wagon','fwd','front',97,173.5,65.4,53,2455,'ohcf','four',108,'mpfi',3.62,2.64,9,94,5200,25,31,10198),(0,85,'subaru','gas','std','four','wagon','4wd','front',96.9,173.6,65.4,54.9,2420,'ohcf','four',108,'2bbl',3.62,2.64,9,82,4800,23,29,8013),(0,85,'subaru','gas','turbo','four','wagon','4wd','front',96.9,173.6,65.4,54.9,2650,'ohcf','four',108,'mpfi',3.62,2.64,7.7,111,4800,23,23,11694),(1,87,'toyota','gas','std','two','hatchback','fwd','front',95.7,158.7,63.6,54.5,1985,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,35,39,5348),(1,87,'toyota','gas','std','two','hatchback','fwd','front',95.7,158.7,63.6,54.5,2040,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,31,38,6338),(1,74,'toyota','gas','std','four','hatchback','fwd','front',95.7,158.7,63.6,54.5,2015,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,31,38,6488),(0,77,'toyota','gas','std','four','wagon','fwd','front',95.7,169.7,63.6,59.1,2280,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,31,37,6918),(0,81,'toyota','gas','std','four','wagon','4wd','front',95.7,169.7,63.6,59.1,2290,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,27,32,7898),(0,91,'toyota','gas','std','four','wagon','4wd','front',95.7,169.7,63.6,59.1,3110,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,27,32,8778),(0,91,'toyota','gas','std','four','sedan','fwd','front',95.7,166.3,64.4,53,2081,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,30,37,6938),(0,91,'toyota','gas','std','four','hatchback','fwd','front',95.7,166.3,64.4,52.8,2109,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,30,37,7198),(0,91,'toyota','diesel','std','four','sedan','fwd','front',95.7,166.3,64.4,53,2275,'ohc','four',110,'idi',3.27,3.35,22.5,56,4500,34,36,7898),(0,91,'toyota','diesel','std','four','hatchback','fwd','front',95.7,166.3,64.4,52.8,2275,'ohc','four',110,'idi',3.27,3.35,22.5,56,4500,38,47,7788),(0,91,'toyota','gas','std','four','sedan','fwd','front',95.7,166.3,64.4,53,2094,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,38,47,7738),(0,91,'toyota','gas','std','four','hatchback','fwd','front',95.7,166.3,64.4,52.8,2122,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,28,34,8358),(0,91,'toyota','gas','std','four','sedan','fwd','front',95.7,166.3,64.4,52.8,2140,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,28,34,9258),(1,168,'toyota','gas','std','two','sedan','rwd','front',94.5,168.7,64,52.6,2169,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,29,34,8058),(1,168,'toyota','gas','std','two','hatchback','rwd','front',94.5,168.7,64,52.6,2204,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,29,34,8238),(1,168,'toyota','gas','std','two','sedan','rwd','front',94.5,168.7,64,52.6,2265,'dohc','four',98,'mpfi',3.24,3.08,9.4,112,6600,26,29,9298),(1,168,'toyota','gas','std','two','hatchback','rwd','front',94.5,168.7,64,52.6,2300,'dohc','four',98,'mpfi',3.24,3.08,9.4,112,6600,26,29,9538),(2,134,'toyota','gas','std','two','hardtop','rwd','front',98.4,176.2,65.6,52,2540,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,8449),(2,134,'toyota','gas','std','two','hardtop','rwd','front',98.4,176.2,65.6,52,2536,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,9639),(2,134,'toyota','gas','std','two','hatchback','rwd','front',98.4,176.2,65.6,52,2551,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,9989),(2,134,'toyota','gas','std','two','hardtop','rwd','front',98.4,176.2,65.6,52,2679,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,11199),(2,134,'toyota','gas','std','two','hatchback','rwd','front',98.4,176.2,65.6,52,2714,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,11549),(2,134,'toyota','gas','std','two','convertible','rwd','front',98.4,176.2,65.6,53,2975,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,17669),(-1,65,'toyota','gas','std','four','sedan','fwd','front',102.4,175.6,66.5,54.9,2326,'ohc','four',122,'mpfi',3.31,3.54,8.7,92,4200,29,34,8948),(-1,65,'toyota','diesel','turbo','four','sedan','fwd','front',102.4,175.6,66.5,54.9,2480,'ohc','four',110,'idi',3.27,3.35,22.5,73,4500,30,33,10698),(-1,65,'toyota','gas','std','four','hatchback','fwd','front',102.4,175.6,66.5,53.9,2414,'ohc','four',122,'mpfi',3.31,3.54,8.7,92,4200,27,32,9988),(-1,65,'toyota','gas','std','four','sedan','fwd','front',102.4,175.6,66.5,54.9,2414,'ohc','four',122,'mpfi',3.31,3.54,8.7,92,4200,27,32,10898),(-1,65,'toyota','gas','std','four','hatchback','fwd','front',102.4,175.6,66.5,53.9,2458,'ohc','four',122,'mpfi',3.31,3.54,8.7,92,4200,27,32,11248),(3,197,'toyota','gas','std','two','hatchback','rwd','front',102.9,183.5,67.7,52,2976,'dohc','six',171,'mpfi',3.27,3.35,9.3,161,5200,20,24,16558),(3,197,'toyota','gas','std','two','hatchback','rwd','front',102.9,183.5,67.7,52,3016,'dohc','six',171,'mpfi',3.27,3.35,9.3,161,5200,19,24,15998),(-1,90,'toyota','gas','std','four','sedan','rwd','front',104.5,187.8,66.5,54.1,3131,'dohc','six',171,'mpfi',3.27,3.35,9.2,156,5200,20,24,15690),(-1,NULL,'toyota','gas','std','four','wagon','rwd','front',104.5,187.8,66.5,54.1,3151,'dohc','six',161,'mpfi',3.27,3.35,9.2,156,5200,19,24,15750),(2,122,'volkswagen','diesel','std','two','sedan','fwd','front',97.3,171.7,65.5,55.7,2261,'ohc','four',97,'idi',3.01,3.4,23,52,4800,37,46,7775),(2,122,'volkswagen','gas','std','two','sedan','fwd','front',97.3,171.7,65.5,55.7,2209,'ohc','four',109,'mpfi',3.19,3.4,9,85,5250,27,34,7975),(2,94,'volkswagen','diesel','std','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2264,'ohc','four',97,'idi',3.01,3.4,23,52,4800,37,46,7995),(2,94,'volkswagen','gas','std','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2212,'ohc','four',109,'mpfi',3.19,3.4,9,85,5250,27,34,8195),(2,94,'volkswagen','gas','std','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2275,'ohc','four',109,'mpfi',3.19,3.4,9,85,5250,27,34,8495),(2,94,'volkswagen','diesel','turbo','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2319,'ohc','four',97,'idi',3.01,3.4,23,68,4500,37,42,9495),(2,94,'volkswagen','gas','std','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2300,'ohc','four',109,'mpfi',3.19,3.4,10,100,5500,26,32,9995),(3,NULL,'volkswagen','gas','std','two','convertible','fwd','front',94.5,159.3,64.2,55.6,2254,'ohc','four',109,'mpfi',3.19,3.4,8.5,90,5500,24,29,11595),(3,256,'volkswagen','gas','std','two','hatchback','fwd','front',94.5,165.7,64,51.4,2221,'ohc','four',109,'mpfi',3.19,3.4,8.5,90,5500,24,29,9980),(0,NULL,'volkswagen','gas','std','four','sedan','fwd','front',100.4,180.2,66.9,55.1,2661,'ohc','five',136,'mpfi',3.19,3.4,8.5,110,5500,19,24,13295),(0,NULL,'volkswagen','diesel','turbo','four','sedan','fwd','front',100.4,180.2,66.9,55.1,2579,'ohc','four',97,'idi',3.01,3.4,23,68,4500,33,38,13845),(0,NULL,'volkswagen','gas','std','four','wagon','fwd','front',100.4,183.1,66.9,55.1,2563,'ohc','four',109,'mpfi',3.19,3.4,9,88,5500,25,31,12290),(-2,103,'volvo','gas','std','four','sedan','rwd','front',104.3,188.8,67.2,56.2,2912,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,23,28,12940),(-1,74,'volvo','gas','std','four','wagon','rwd','front',104.3,188.8,67.2,57.5,3034,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,23,28,13415),(-2,103,'volvo','gas','std','four','sedan','rwd','front',104.3,188.8,67.2,56.2,2935,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,24,28,15985),(-1,74,'volvo','gas','std','four','wagon','rwd','front',104.3,188.8,67.2,57.5,3042,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,24,28,16515),(-2,103,'volvo','gas','turbo','four','sedan','rwd','front',104.3,188.8,67.2,56.2,3045,'ohc','four',130,'mpfi',3.62,3.15,7.5,162,5100,17,22,18420),(-1,74,'volvo','gas','turbo','four','wagon','rwd','front',104.3,188.8,67.2,57.5,3157,'ohc','four',130,'mpfi',3.62,3.15,7.5,162,5100,17,22,18950),(-1,95,'volvo','gas','std','four','sedan','rwd','front',109.1,188.8,68.9,55.5,2952,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,23,28,16845),(-1,95,'volvo','gas','turbo','four','sedan','rwd','front',109.1,188.8,68.8,55.5,3049,'ohc','four',141,'mpfi',3.78,3.15,8.7,160,5300,19,25,19045),(-1,95,'volvo','gas','std','four','sedan','rwd','front',109.1,188.8,68.9,55.5,3012,'ohcv','six',173,'mpfi',3.58,2.87,8.8,134,5500,18,23,21485),(-1,95,'volvo','diesel','turbo','four','sedan','rwd','front',109.1,188.8,68.9,55.5,3217,'ohc','six',145,'idi',3.01,3.4,23,106,4800,26,27,22470),(-1,95,'volvo','gas','turbo','four','sedan','rwd','front',109.1,188.8,68.9,55.5,3062,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,19,25,22625);
/*!40000 ALTER TABLE `carsTMP` ENABLE KEYS */;
UNLOCK TABLES;

drop table if exists MAKE;
create table MAKE(
	id int auto_increment primary key,
    make varchar(32));
    
drop table if exists ENGINE_TYPE;
create table ENGINE_TYPE(
	id int auto_increment primary key,
    engineType varchar(32));
    
drop table if exists ASPIRATION;    
create table ASPIRATION(
	id int auto_increment primary key,
    aspiration varchar(32));
    
drop table if exists FUEL_TYPE;
create table FUEL_TYPE(
	id int auto_increment primary key,
    fuelType varchar(32));
    
drop table if exists FUEL_SYSTEM;    
create table FUEL_SYSTEM(
	id int auto_increment primary key,
    fuelSystem varchar(32));
    
drop table if exists ENGINE;
create table ENGINE(
	id int auto_increment primary key,
    engineType int,
    aspiration int,
    fuelType int,
    fuelSystem int,
    bore double(8,2),
    stroke double(8,2),
    peakRpm double(8,2),
    horsePower double(8,2),
    numCylinders int,
    engineSize double(8,2),
    compressionRatio double(8,2),
    foreign key (engineType) references ENGINE_TYPE(id),
    foreign key (aspiration) references ASPIRATION(id),
    foreign key (fuelType) references FUEL_TYPE(id),
    foreign key (fuelSystem) references FUEL_SYSTEM(id));
 
drop table if exists CAR;
create table CAR(
	id int auto_increment primary key,
    make int,
    engine int,
	symboling varchar(32),
    normalizedLoses int,
    numDoors int,
    bodyWork varchar(32),
    wheelBase double(8,2),
    length double(8,2),
    width double(8,2),
    height double(8,2),
    curbWeight double(8,2),
    driveWheels char(3),
    engineLocation varchar(5),
    cityConsume double(8,2),
    highwayConsume double(8,2),
    price double(8,2),
    foreign key(make) references MAKE(id),
    foreign key(engine) references ENGINE(id));
    
-- FUNCIONES
drop function if exists numDoorsCylinders;
delimiter $$
create function numDoorsCylinders (DC varchar(6)) returns int
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

end;
$$
delimiter ;	

drop function if exists fiabilidad;
delimiter $$
create function fiabilidad (sym int) returns varchar(32)
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
    
end;
$$
delimiter ;	

drop function if exists inchesToCm;
delimiter $$
create function inchesToCm (inches double) returns double(8, 2)
begin
	declare v_inch double;
    declare v_m double;
    
    set v_inch = inches;
    
    set v_m = v_inch/0.39370;
  
	return round(v_m, 2);
end;
$$
delimiter ;	

drop function if exists poundsToKg;
delimiter $$
create function poundsToKg (pound int) returns double(8, 2)
begin
	declare v_pound int;
    declare v_kg double;
    
    set v_pound = pound;
    
    set v_kg = v_pound/2.2046;
    
    return round(v_kg, 2);
    
end;
$$
delimiter ;	

drop function if exists cubicInchToCm;
delimiter $$
create function cubicInchToCm (inch int) returns double(8, 2)
begin
	declare v_inch int;
    declare v_cm double;
    
    set v_inch = inch;
    
    set v_cm = v_inch / 0.061024;
    
    return round(v_cm, 2);
    
end;
$$
delimiter ;	

drop function if exists mpgToL;
delimiter $$
create function mpgToL (mpg int) returns double(8, 2)
begin
	declare v_millas int;
    declare v_litros double;
    
    set v_millas = mpg;
    
    set v_litros = 235.21 / v_millas;
    
    return round(v_litros, 2);    

end;
$$
delimiter ;

drop function if exists dolarToEuro;
delimiter $$
create function dolarToEuro (dolar int) returns double(8, 2)
begin
	declare v_dolar int;
    declare v_euro double;
    
    set v_dolar = dolar;
    
    set v_euro = v_dolar / 1.231838;
    
    return round(v_euro, 2);
end;
$$
delimiter ;  

-- PROCEDURES
drop procedure if exists load_make;
DELIMITER $$
CREATE PROCEDURE load_make()
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
    
end$$
DELIMITER ;

drop procedure if exists load_fuelSystem;
delimiter $$
create procedure load_fuelSystem()
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
    
end;
$$
delimiter ;

drop procedure if exists load_engineType;
delimiter $$
create procedure load_engineType()
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
    
end;
$$
delimiter ;

drop procedure if exists load_aspiration;
delimiter $$
create procedure load_aspiration()
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
    
end;
$$
delimiter ;

drop procedure if exists load_fuelType;
delimiter $$
create procedure load_fuelType()
begin
	
    declare v_fin int;
    declare v_fuelType varchar(32);
    
    declare c_fuelType cursor for
								select distinct fuelType
                                from carsTMP
                                where fuelType not in
													(select fuelType from FUEL_TYPE);
                                                    
	declare continue handler for not found set v_fin = 1;
    
    set v_fin = 0;
    
    open c_fuelType;
    
    l_fuelType : loop
    
		fetch c_fuelType into v_fuelType;
        
        if v_fin = 1 then
			leave l_fuelType;
		end if;
        
        insert into FUEL_TYPE(fuelType) values(v_fuelType);
        
	end loop l_fuelType;
    
    close c_fuelType;
    
end;
$$
delimiter ;

drop procedure if exists load_engine;
delimiter $$
create procedure load_engine()
begin
	declare v_aspiration int;
    declare v_engineType int;
    declare v_fuelSystem int;
    declare v_fuelType int;
    declare v_bore double;
    declare v_stroke double;
    declare v_peakRpm int;
    declare v_horsePower int;
    declare v_numCylinders int;
    declare v_engineSize double;
    declare v_compressionRatio double;
    declare v_fin int;
    
    declare c_engine cursor for 
								select distinct
									ENGINE_TYPE.id, ASPIRATION.id, FUEL_TYPE.id, FUEL_SYSTEM.id,
									inchesToCm(bore), inchesToCm(stroke), peakRpm, horsePower, numDoorsCylinders(numCylinders), cubicInchToCm(engineSize),
									compressionRatio
								from
									carsTMP,
									ENGINE_TYPE,
									ASPIRATION,
									FUEL_TYPE,
									FUEL_SYSTEM
								where
									ENGINE_TYPE.engineType = carsTMP.engineType and
									ASPIRATION.aspiration = carsTMP.aspiration and
									FUEL_TYPE.fuelType  = carsTMP.fuelType and
									FUEL_SYSTEM.fuelSystem = carsTMP.fuelSystem;
                                
	declare continue handler for not found set v_fin = 1;	
    
    set v_fin = 0;
    
    open c_engine;
    
    l_engine : loop
    
		fetch c_engine into v_engineType, v_aspiration, v_fuelType, v_fuelSystem, v_bore, v_stroke,
							v_peakRpm, v_horsePower, v_numCylinders, v_engineSize, v_compressionRatio;
 
        if v_fin = 1 then
			leave l_engine;
		end if;
        
        insert into ENGINE(aspiration, engineType, fuelSystem, fuelType, bore, stroke, peakRpm, horsePower, numCylinders, engineSize, compressionRatio) values
        (v_aspiration, v_engineType, v_fuelSystem, v_fuelType, v_bore, v_stroke,v_peakRpm, v_horsePower, v_numCylinders, v_engineSize, v_compressionRatio);
        
	end loop l_engine;
    
    close c_engine;
    
end;
$$
delimiter ;		

drop procedure if exists load_car;
delimiter $$
create procedure load_car( )
begin

	declare v_engine int;
    declare v_make int;
    declare v_fiabilidad varchar(32);
    declare v_normalized int;
    declare v_numDoors int;
    declare v_bodyStyle varchar(32);
    declare v_wheelBase double(8,2);
    declare v_length double(8,2);
    declare v_width double(8,2);
    declare v_height double(8,2);
    declare v_curbWeight double(8,2);
    declare v_drive varchar(16);
    declare v_engineLocation varchar(16);
    declare v_high double(8,2);
    declare v_city double(8,2);
    declare v_price double(8,3);
    declare v_fin int;
	
    declare c_car cursor for 
							select distinct
								ENGINE.id, MAKE.id, fiabilidad(symboling), normalizedLoses, 
								numDoorsCylinders(numDoors), bodyStyle, inchesToCm(wheelBase), inchesToCm(length),
								inchesToCm(width), inchesToCm(height), poundsToKg(curbWeight), driveWheels, 
								engineLocation, mpgToL(highwayMpg), mpgToL(cityMpg), dolarToEuro(price)
							from
								carsTMP,
								ENGINE,
								ASPIRATION,
								FUEL_SYSTEM,
								FUEL_TYPE,
								ENGINE_TYPE,
								MAKE
							where
								MAKE.make = carsTMP.make and
								((ENGINE.bore = inchesToCm(carsTMP.bore)) or (ENGINE.bore is null and carsTMP.bore is null)) and
								((ENGINE.stroke = inchesToCm(carsTMP.stroke)) or (ENGINE.stroke is null and carsTMP.stroke is null)) and
								ENGINE.numCylinders = numDoorsCylinders(carsTMP.numCylinders) and
								ENGINE.engineSize = cubicInchToCm(carsTMP.engineSize) and
								ENGINE.compressionRatio = carsTMP.compressionRatio and
								((ENGINE.horsePower = carsTMP.horsepower) or (ENGINE.horsePower is null and carsTMP.horsepower is null)) and
								((ENGINE.peakRpm = carsTMP.peakRpm) or (ENGINE.peakRpm is null and carsTMP.peakRpm is null)) and
								ENGINE.fuelSystem = (select id from FUEL_SYSTEM where FUEL_SYSTEM.fuelSystem = carsTMP.fuelSystem) and    
								ENGINE.fuelType = (select id from FUEL_TYPE where FUEL_TYPE.fuelType = carsTMP.fuelType) and
								ENGINE.aspiration = (select id from ASPIRATION where ASPIRATION.aspiration = carsTMP.aspiration) and
								ENGINE.engineType = (select id from ENGINE_TYPE where ENGINE_TYPE.engineType = carsTMP.engineType);
                                
	 declare continue handler for not found set v_fin = 1;
     
     set v_fin = 0;
     
     open c_car;
     
     l_car : loop
		
        fetch c_car into 	v_engine, v_make, v_fiabilidad, v_normalized,
							v_numDoors, v_bodyStyle, v_wheelBase, v_length, 
							v_width, v_height, v_curbWeight, v_drive, 
							v_engineLocation, v_high, v_city, v_price;
                            
		if v_fin = 1 then
			leave l_car;
		end if;
		
        insert into CAR(engine, make, symboling, normalizedLoses, 
						numDoors, bodyWork, wheelBase, length, 
                        width, height, curbWeight, driveWheels, 
                        engineLocation, highwayConsume, cityConsume, price) values
                        
                        (v_engine, v_make, v_fiabilidad, v_normalized,
						v_numDoors, v_bodyStyle, v_wheelBase, v_length, 
						v_width, v_height, v_curbWeight, v_drive, 
						v_engineLocation, v_high, v_city, v_price);
		
        delete from carsTMP where id != 0;
					
		
	end loop l_car;
        
	close c_car;
    
end;
$$
delimiter ;

drop procedure if exists load_database;
delimiter $$
create procedure load_database()
begin
call load_make;
call load_aspiration;
call load_engineType;
call load_fuelSystem;
call load_fuelType;
call load_engine;
call load_car;
end;
$$
delimiter ;

    
    
