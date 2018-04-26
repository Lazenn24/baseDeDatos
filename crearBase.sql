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
-- Table structure for table `ASPIRATION`
--

DROP TABLE IF EXISTS `ASPIRATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ASPIRATION` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aspiration` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASPIRATION`
--

LOCK TABLES `ASPIRATION` WRITE;
/*!40000 ALTER TABLE `ASPIRATION` DISABLE KEYS */;
INSERT INTO `ASPIRATION` VALUES (1,'std'),(2,'turbo');
/*!40000 ALTER TABLE `ASPIRATION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CAR`
--

DROP TABLE IF EXISTS `CAR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CAR` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` int(11) DEFAULT NULL,
  `engine` int(11) DEFAULT NULL,
  `symboling` varchar(32) DEFAULT NULL,
  `normalizedLoses` int(11) DEFAULT NULL,
  `numDoors` int(11) DEFAULT NULL,
  `bodyWork` varchar(32) DEFAULT NULL,
  `wheelBase` double(8,2) DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `width` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `curbWeight` double(8,2) DEFAULT NULL,
  `driveWheels` char(3) DEFAULT NULL,
  `engineLocation` varchar(5) DEFAULT NULL,
  `cityConsume` double(8,2) DEFAULT NULL,
  `highwayConsume` double(8,2) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `make` (`make`),
  KEY `engine` (`engine`),
  CONSTRAINT `CAR_ibfk_1` FOREIGN KEY (`make`) REFERENCES `MAKE` (`id`),
  CONSTRAINT `CAR_ibfk_2` FOREIGN KEY (`engine`) REFERENCES `ENGINE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=411 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CAR`
--

LOCK TABLES `CAR` WRITE;
/*!40000 ALTER TABLE `CAR` DISABLE KEYS */;
INSERT INTO `CAR` VALUES (206,1,1,'Peligroso',NULL,2,'convertible',225.04,428.75,162.81,123.95,6471.93,'rwd','front',11.20,8.71,10955.17),(207,1,1,'Peligroso',NULL,2,'convertible',225.04,428.75,162.81,123.95,6471.93,'rwd','front',11.20,8.71,13394.62),(208,1,8,'Baja calidad',NULL,2,'hatchback',240.03,434.85,166.37,133.10,7170.43,'rwd','front',12.38,9.05,13394.62),(209,2,17,'Mala calidad',164,4,'sedan',253.49,448.56,168.15,137.92,5935.99,'fwd','front',9.80,7.84,11324.54),(210,2,18,'Mala calidad',164,4,'sedan',252.48,448.56,168.66,137.92,7172.97,'4wd','front',13.07,10.69,14165.82),(211,2,19,'Mala calidad',NULL,2,'sedan',253.49,450.34,168.40,134.87,6367.79,'fwd','front',12.38,9.41,12379.87),(212,2,19,'Baja calidad',158,4,'sedan',268.73,489.46,181.36,141.48,7223.77,'fwd','front',12.38,9.41,14376.89),(213,2,19,'Baja calidad',NULL,4,'wagon',268.73,489.46,181.36,141.48,7503.18,'fwd','front',12.38,9.41,15359.16),(214,2,20,'Baja calidad',158,4,'sedan',268.73,489.46,181.36,141.99,7838.46,'fwd','front',13.84,11.76,19381.61),(215,2,21,'Mejorable',NULL,2,'hatchback',252.73,452.63,172.47,132.08,7754.64,'4wd','front',14.70,10.69,NULL),(216,3,22,'Mala calidad',192,2,'sedan',257.05,449.07,164.59,137.92,6083.31,'rwd','front',10.23,8.11,13337.79),(217,3,22,'Mejorable',192,4,'sedan',257.05,449.07,164.59,137.92,6083.31,'rwd','front',10.23,8.11,13739.63),(218,3,23,'Mejorable',188,2,'sedan',257.05,449.07,164.59,137.92,6883.41,'rwd','front',11.20,8.40,17023.34),(219,3,23,'Mejorable',188,4,'sedan',257.05,449.07,164.59,137.92,7023.11,'rwd','front',11.20,8.40,17132.93),(220,3,23,'Baja calidad',NULL,4,'sedan',262.89,480.06,169.93,141.48,7759.72,'rwd','front',11.76,9.41,19941.75),(221,3,24,'Mejorable',NULL,4,'sedan',262.89,480.06,169.93,141.48,8204.22,'rwd','front',14.70,10.69,24970.82),(222,3,24,'Mejorable',NULL,2,'sedan',262.89,492.25,172.47,136.40,8585.22,'rwd','front',14.70,10.69,33539.31),(223,3,24,'Mejorable',NULL,4,'sedan',279.40,500.38,180.09,143.00,8902.72,'rwd','front',15.68,11.76,29939.00),(224,4,68,'Mala calidad',121,2,'hatchback',224.54,358.39,153.16,135.13,3779.53,'fwd','front',5.00,4.44,4181.56),(225,4,52,'Baja calidad',98,2,'hatchback',240.03,395.99,161.54,132.08,4759.97,'fwd','front',6.19,5.47,5110.25),(226,4,52,'Mejorable',81,4,'sedan',240.03,403.35,161.54,132.08,4848.87,'fwd','front',6.19,5.47,5337.55),(227,5,53,'Baja calidad',118,2,'hatchback',238.00,399.54,162.05,129.03,4765.05,'fwd','front',6.36,5.74,4523.32),(228,5,54,'Baja calidad',118,2,'hatchback',238.00,399.54,162.05,129.03,4765.05,'fwd','front',7.59,6.19,5176.82),(229,5,25,'Baja calidad',118,2,'hatchback',238.00,399.54,162.05,129.03,5405.13,'fwd','front',9.80,7.84,6459.45),(230,5,54,'Baja calidad',148,4,'hatchback',238.00,399.54,162.05,128.52,4996.19,'fwd','front',7.59,6.19,5056.67),(231,5,54,'Baja calidad',148,4,'sedan',238.00,399.54,162.05,128.52,5052.07,'fwd','front',7.59,6.19,5432.53),(232,5,54,'Baja calidad',148,4,'sedan',238.00,399.54,162.05,128.52,5052.07,'fwd','front',7.59,6.19,6176.95),(233,5,25,'Baja calidad',148,NULL,'sedan',238.00,399.54,162.05,128.52,5565.15,'fwd','front',9.80,7.84,6947.34),(234,5,55,'Fiable',110,4,'wagon',262.38,443.48,164.08,151.89,6438.91,'fwd','front',9.80,7.84,7242.02),(235,5,74,'Peligroso',145,2,'hatchback',243.59,439.93,168.40,127.51,7139.95,'fwd','front',12.38,9.80,10524.11),(236,6,75,'Mala calidad',137,2,'hatchback',219.96,367.28,162.31,129.03,4351.03,'fwd','front',4.80,4.36,5259.62),(237,6,76,'Mala calidad',137,2,'hatchback',219.96,367.28,162.31,129.03,4620.27,'fwd','front',7.59,6.19,5564.86),(238,6,77,'Baja calidad',101,2,'hatchback',238.00,381.00,162.56,133.60,4665.99,'fwd','front',6.19,5.60,4382.88),(239,6,76,'Baja calidad',101,2,'hatchback',238.00,381.00,162.56,133.60,4927.61,'fwd','front',7.84,6.92,5300.21),(240,6,76,'Baja calidad',101,2,'hatchback',238.00,381.00,162.56,133.60,4968.25,'fwd','front',7.84,6.92,5787.29),(241,6,76,'Mejorable',110,4,'sedan',245.11,415.04,162.56,138.43,5105.41,'fwd','front',7.84,6.92,5922.04),(242,6,78,'Mejorable',78,4,'wagon',245.11,399.03,162.31,148.08,5140.97,'fwd','front',7.84,6.92,5922.04),(243,6,79,'Mejorable',106,2,'hatchback',245.11,425.45,165.61,135.38,5679.45,'fwd','front',8.71,7.13,6409.12),(244,6,79,'Mejorable',106,2,'hatchback',245.11,425.45,165.61,135.38,5814.07,'fwd','front',8.71,7.13,7383.28),(245,6,79,'Mejorable',85,4,'sedan',245.11,445.52,165.61,137.41,5852.17,'fwd','front',8.71,7.13,7180.33),(246,6,79,'Mejorable',85,4,'sedan',245.11,445.52,158.75,137.41,6024.89,'fwd','front',8.71,7.13,8357.43),(247,6,26,'Mejorable',85,4,'sedan',245.11,445.52,165.61,137.41,6261.11,'fwd','front',9.80,8.40,10508.69),(248,6,56,'Baja calidad',107,2,'sedan',245.11,429.51,167.64,129.54,5824.23,'fwd','front',9.41,7.59,8398.02),(249,7,57,'Mejorable',NULL,4,'sedan',239.52,433.58,156.97,135.89,5935.99,'rwd','front',9.80,8.11,5508.03),(250,7,52,'Baja calidad',NULL,2,'sedan',240.03,395.99,161.54,132.08,4759.97,'fwd','front',6.19,5.47,NULL),(251,7,52,'Mejorable',NULL,4,'sedan',240.03,395.99,161.54,132.08,4848.87,'fwd','front',6.19,5.47,NULL),(252,7,80,'Mala calidad',NULL,2,'hatchback',243.84,438.40,165.61,130.56,6944.37,'rwd','front',9.80,8.11,8968.71),(253,8,2,'Mejorable',145,4,'sedan',287.02,506.99,176.78,134.11,10327.66,'rwd','front',15.68,12.38,26180.39),(254,8,2,'Mejorable',NULL,4,'sedan',287.02,506.99,176.78,134.11,10327.66,'rwd','front',15.68,12.38,28859.31),(255,8,9,'Mejorable',NULL,2,'sedan',259.08,486.92,179.32,121.41,10033.02,'rwd','front',18.09,13.84,29224.62),(256,9,58,'Baja calidad',104,2,'hatchback',236.47,404.11,163.07,137.41,4800.61,'fwd','front',7.84,7.59,4217.28),(257,9,58,'Baja calidad',104,2,'hatchback',236.47,404.11,163.07,137.41,4826.01,'fwd','front',7.59,6.19,4947.89),(258,9,58,'Baja calidad',104,2,'hatchback',236.47,404.11,163.07,137.41,4838.71,'fwd','front',7.59,6.19,5516.15),(259,9,58,'Baja calidad',113,4,'sedan',236.47,423.67,163.07,137.41,4940.31,'fwd','front',7.59,6.19,5434.97),(260,9,59,'Baja calidad',113,4,'sedan',236.47,423.67,163.07,137.41,4953.01,'fwd','front',7.59,6.19,6003.22),(261,9,81,'Peligroso',150,2,'hatchback',242.06,429.26,166.88,125.98,6045.21,'rwd','front',13.84,10.23,8885.10),(262,9,81,'Peligroso',150,2,'hatchback',242.06,429.26,166.88,125.98,6045.21,'rwd','front',13.84,10.23,9615.71),(263,9,81,'Peligroso',150,2,'hatchback',242.06,429.26,166.88,125.98,6057.91,'rwd','front',13.84,10.23,11076.94),(264,9,47,'Peligroso',150,2,'hatchback',242.06,429.26,166.88,125.98,6350.01,'rwd','front',14.70,10.23,12700.53),(265,9,60,'Baja calidad',129,2,'hatchback',250.95,451.61,168.91,136.40,6057.91,'fwd','front',9.05,7.35,7180.33),(266,9,60,'Mejorable',115,4,'sedan',250.95,451.61,168.91,140.97,6121.41,'fwd','front',9.05,7.35,6896.20),(267,9,60,'Baja calidad',129,2,'hatchback',250.95,451.61,168.91,136.40,6057.91,'fwd','front',9.05,7.35,8600.97),(268,9,60,'Mejorable',115,4,'sedan',250.95,451.61,168.91,140.97,6121.41,'fwd','front',9.05,7.35,8316.84),(269,9,82,'Mejorable',NULL,NULL,'sedan',250.95,451.61,168.91,140.97,6205.23,'fwd','front',6.53,5.60,8763.33),(270,9,60,'Mejorable',115,4,'hatchback',250.95,451.61,168.91,140.97,6159.51,'fwd','front',9.05,7.35,9128.64),(271,9,27,'Mejorable',118,4,'sedan',266.45,444.50,167.89,138.18,6781.81,'rwd','front',12.38,8.71,14839.61),(272,9,83,'Mejorable',NULL,4,'sedan',266.45,444.50,167.89,138.18,6858.01,'rwd','front',7.59,6.03,14891.57),(273,10,84,'Fiable',93,4,'sedan',279.40,484.89,178.56,143.51,8928.12,'rwd','front',10.69,9.41,20742.99),(274,10,84,'Fiable',93,4,'wagon',279.40,484.89,178.56,149.10,9525.02,'rwd','front',10.69,9.41,22931.59),(275,10,84,'Mejorable',93,2,'hardtop',271.02,476.25,178.56,139.45,8877.32,'rwd','front',10.69,9.41,22873.14),(276,10,84,'Fiable',93,4,'sedan',293.62,514.61,182.12,143.00,9575.82,'rwd','front',10.69,9.41,25652.72),(277,10,10,'Fiable',NULL,4,'sedan',293.62,514.61,182.12,143.51,9499.62,'rwd','front',14.70,13.07,27750.40),(278,10,10,'Peligroso',142,2,'convertible',245.36,457.96,179.07,129.03,9359.92,'rwd','front',14.70,13.07,28458.29),(279,10,11,'Mejorable',NULL,4,'sedan',307.09,528.58,182.12,144.02,9906.02,'rwd','front',16.80,14.70,33251.13),(280,10,12,'Baja calidad',NULL,2,'hardtop',284.48,505.97,182.88,140.72,9436.12,'rwd','front',16.80,14.70,36855.50),(281,11,28,'Baja calidad',NULL,2,'hatchback',260.86,453.14,172.72,139.19,7391.41,'rwd','front',12.38,9.80,13397.05),(282,12,61,'Mala calidad',161,2,'hatchback',238.00,399.54,163.58,129.03,4871.73,'fwd','front',6.36,5.74,4374.76),(283,12,61,'Mala calidad',161,2,'hatchback',238.00,399.54,163.58,129.03,4937.77,'fwd','front',7.59,6.19,5024.20),(284,12,61,'Mala calidad',161,2,'hatchback',238.00,399.54,163.58,129.03,5090.17,'fwd','front',7.59,6.19,5413.86),(285,12,92,'Baja calidad',161,2,'hatchback',236.22,399.54,162.05,129.03,5448.31,'fwd','front',9.80,7.84,6241.89),(286,12,93,'Peligroso',153,2,'hatchback',244.60,439.42,166.12,125.48,6019.81,'fwd','front',10.23,7.84,8084.67),(287,12,62,'Peligroso',153,2,'hatchback',244.60,439.42,166.12,125.48,5913.13,'fwd','front',9.41,7.35,6899.45),(288,12,94,'Peligroso',NULL,2,'hatchback',243.59,439.93,168.40,127.51,7195.83,'fwd','front',12.38,9.80,10252.16),(289,12,95,'Peligroso',NULL,2,'hatchback',243.59,439.93,168.40,127.51,7419.35,'fwd','front',12.38,9.80,12070.58),(290,12,95,'Peligroso',NULL,2,'hatchback',243.59,439.93,168.40,127.51,7432.05,'fwd','front',12.38,9.80,11762.10),(291,12,62,'Baja calidad',125,4,'sedan',244.60,437.90,166.12,131.06,6007.11,'fwd','front',9.41,7.35,5673.64),(292,12,62,'Baja calidad',125,4,'sedan',244.60,437.90,166.12,131.06,6108.71,'fwd','front',9.41,7.35,6647.79),(293,12,93,'Baja calidad',125,4,'sedan',244.60,437.90,166.12,131.06,6103.63,'fwd','front',10.23,7.84,7532.65),(294,12,96,'Fiable',137,4,'sedan',244.60,437.90,166.12,131.06,6103.63,'fwd','front',10.23,7.84,7532.65),(295,13,63,'Baja calidad',128,2,'sedan',240.03,419.86,162.05,138.43,4798.07,'fwd','front',7.59,6.36,4464.06),(296,13,85,'Baja calidad',128,2,'sedan',240.03,419.86,162.05,138.43,5123.19,'fwd','front',5.23,4.70,5762.93),(297,13,63,'Baja calidad',128,2,'sedan',240.03,419.86,162.05,138.43,4871.73,'fwd','front',7.59,6.36,5397.63),(298,13,63,'Baja calidad',122,4,'sedan',240.03,419.86,162.05,138.43,4922.53,'fwd','front',7.59,6.36,5559.98),(299,13,63,'Baja calidad',103,4,'wagon',240.03,432.31,162.05,135.89,5140.97,'fwd','front',7.59,6.36,5965.88),(300,13,63,'Baja calidad',128,2,'sedan',240.03,419.86,162.05,138.43,4955.55,'fwd','front',7.59,6.36,5925.29),(301,13,63,'Baja calidad',128,2,'hatchback',240.03,420.62,162.05,135.38,5151.13,'fwd','front',7.59,6.36,6331.19),(302,13,63,'Baja calidad',122,4,'sedan',240.03,419.86,162.05,138.43,5006.35,'fwd','front',7.59,6.36,6087.65),(303,13,63,'Baja calidad',103,4,'wagon',240.03,432.31,162.05,135.89,5173.99,'fwd','front',7.59,6.36,6493.55),(304,13,63,'Mala calidad',168,2,'hardtop',241.55,412.50,162.05,135.38,5100.33,'fwd','front',7.59,6.36,6696.50),(305,13,64,'Mejorable',106,4,'hatchback',246.89,440.44,165.61,138.94,5902.97,'fwd','front',8.71,6.92,7264.75),(306,13,64,'Mejorable',106,4,'sedan',246.89,440.44,165.61,138.94,5847.09,'fwd','front',8.71,6.92,7751.83),(307,13,13,'Mejorable',128,4,'sedan',255.02,461.52,168.91,139.95,7861.32,'fwd','front',13.84,10.69,10958.42),(308,13,13,'Mejorable',108,4,'wagon',255.02,468.88,168.91,142.49,8371.86,'fwd','front',13.84,10.69,11689.04),(309,13,13,'Mejorable',108,4,'sedan',255.02,468.88,168.91,139.95,7772.42,'fwd','front',12.38,9.41,10958.42),(310,13,14,'Peligroso',194,2,'hatchback',231.90,433.58,172.47,126.24,7800.36,'rwd','front',12.38,9.41,13962.06),(311,13,15,'Peligroso',194,2,'hatchback',231.90,433.58,172.47,126.24,7973.08,'rwd','front',13.84,10.23,15991.55),(312,13,14,'Baja calidad',231,2,'hatchback',251.97,453.39,172.47,126.24,7973.08,'rwd','front',12.38,9.41,14936.22),(313,14,44,'Mejorable',161,4,'sedan',274.07,474.22,173.74,144.02,7670.82,'rwd','front',12.38,9.80,9660.36),(314,14,91,'Mejorable',161,4,'sedan',274.07,474.22,173.74,144.02,8120.40,'rwd','front',8.40,7.13,10715.69),(315,14,44,'Mejorable',NULL,4,'wagon',290.07,505.21,173.74,149.10,8204.22,'rwd','front',12.38,9.80,10098.73),(316,14,91,'Mejorable',NULL,4,'wagon',290.07,505.21,173.74,149.10,8712.22,'rwd','front',9.41,9.41,11251.48),(317,14,45,'Mejorable',161,4,'sedan',274.07,474.22,173.74,144.02,7810.52,'rwd','front',12.38,9.80,12647.77),(318,14,91,'Mejorable',161,4,'sedan',274.07,474.22,173.74,144.02,8260.10,'rwd','front',8.40,7.13,13719.34),(319,14,45,'Mejorable',NULL,4,'wagon',290.07,505.21,173.74,144.02,8343.92,'rwd','front',12.38,9.80,13552.92),(320,14,91,'Mejorable',NULL,4,'wagon',290.07,505.21,173.74,149.10,8851.92,'rwd','front',9.41,9.41,13861.40),(321,14,44,'Mejorable',161,4,'sedan',274.07,474.22,173.74,144.02,7810.52,'rwd','front',12.38,9.80,13500.15),(322,14,91,'Mejorable',161,4,'sedan',274.07,474.22,173.74,144.02,8260.10,'rwd','front',8.40,7.13,14571.72),(323,14,46,'Mejorable',161,4,'sedan',274.32,474.22,173.48,142.24,7950.22,'rwd','front',13.07,9.80,14734.08),(324,15,54,'Baja calidad',119,2,'hatchback',238.00,399.54,162.05,129.03,4871.73,'fwd','front',6.36,5.74,4523.32),(325,15,92,'Baja calidad',119,2,'hatchback',238.00,399.54,162.05,129.03,5405.13,'fwd','front',9.80,7.84,6459.45),(326,15,54,'Baja calidad',154,4,'hatchback',238.00,399.54,162.05,128.52,4996.19,'fwd','front',7.59,6.19,5056.67),(327,15,54,'Baja calidad',154,4,'sedan',238.00,424.94,162.05,129.03,5052.07,'fwd','front',7.59,6.19,5432.53),(328,15,65,'Baja calidad',154,4,'sedan',238.00,424.94,162.05,129.03,5565.15,'fwd','front',7.59,6.19,6176.95),(329,15,62,'Fiable',74,4,'wagon',262.38,443.48,164.08,151.89,6438.91,'fwd','front',9.80,7.84,7242.02),(330,15,95,'Peligroso',NULL,2,'hatchback',243.59,439.93,168.40,127.51,7157.73,'rwd','front',12.38,9.80,10361.75),(331,16,29,'Peligroso',186,2,'hatchback',240.03,429.01,173.48,127.51,7056.13,'rwd','front',12.38,8.71,17874.10),(332,16,48,'Peligroso',NULL,2,'hardtop',227.33,429.01,165.10,131.06,7000.25,'rwd','rear',13.84,9.41,26406.07),(333,16,48,'Peligroso',NULL,2,'hardtop',227.33,429.01,165.10,131.06,7000.25,'rwd','rear',13.84,9.41,27623.76),(334,16,48,'Peligroso',NULL,2,'convertible',227.33,429.01,165.10,131.06,7112.01,'rwd','rear',13.84,9.41,30059.15),(335,16,51,'Baja calidad',NULL,2,'hatchback',249.94,446.28,183.64,128.27,8549.66,'rwd','front',13.84,8.40,NULL),(336,17,30,'Mejorable',NULL,4,'wagon',244.09,461.01,168.91,140.21,6550.67,'fwd','front',10.23,7.59,7545.64),(337,17,30,'Mala calidad',NULL,2,'hatchback',244.09,449.07,169.16,128.27,6248.41,'fwd','front',10.23,7.59,8032.71),(338,18,31,'Peligroso',150,2,'hatchback',251.71,473.96,168.91,142.49,6751.33,'fwd','front',11.20,8.40,9619.77),(339,18,32,'Mala calidad',104,4,'sedan',251.71,473.96,168.91,142.49,6845.31,'fwd','front',11.20,8.40,9879.55),(340,18,33,'Peligroso',150,2,'hatchback',251.71,473.96,168.91,142.49,6875.79,'fwd','front',11.20,8.40,12209.40),(341,18,32,'Mala calidad',104,4,'sedan',251.71,473.96,168.91,142.49,7005.33,'fwd','front',11.20,8.40,12590.94),(342,18,3,'Peligroso',150,2,'hatchback',251.71,473.96,168.91,142.49,7132.33,'fwd','front',12.38,9.05,14734.08),(343,18,3,'Mala calidad',104,4,'sedan',251.71,473.96,168.91,142.49,7231.39,'fwd','front',12.38,9.05,15115.62),(344,19,69,'Mala calidad',83,2,'hatchback',238.00,398.53,161.04,136.40,5207.01,'fwd','front',7.59,6.53,4154.77),(345,19,70,'Mala calidad',83,2,'hatchback',238.00,401.07,161.54,136.40,5384.81,'fwd','front',9.05,7.59,5725.59),(346,19,70,'Mala calidad',83,2,'hatchback',236.98,399.54,162.05,141.48,5689.61,'4wd','front',9.05,7.59,6172.08),(347,19,71,'Mejorable',102,4,'sedan',246.89,436.88,166.12,133.35,5448.31,'fwd','front',7.35,6.36,5784.85),(348,19,72,'Mejorable',102,4,'sedan',246.89,436.88,166.12,133.35,5562.61,'fwd','front',8.40,7.13,6311.71),(349,19,49,'Mejorable',102,4,'sedan',246.89,436.88,166.12,133.35,5943.61,'fwd','front',9.05,7.35,8085.48),(350,19,73,'Mejorable',102,4,'sedan',246.38,436.88,166.12,137.92,6057.91,'4wd','front',9.80,9.41,7495.30),(351,19,50,'Mejorable',102,4,'sedan',246.38,436.88,166.12,137.92,6375.41,'4wd','front',9.80,8.11,9140.00),(352,19,73,'Mejorable',89,4,'wagon',246.38,440.69,166.12,134.62,5816.61,'fwd','front',8.40,7.35,6058.43),(353,19,49,'Mejorable',89,4,'wagon',246.38,440.69,166.12,134.62,6235.71,'fwd','front',9.41,7.59,8278.69),(354,19,73,'Mejorable',85,4,'wagon',246.13,440.94,166.12,139.45,6146.81,'4wd','front',10.23,8.11,6504.91),(355,19,50,'Mejorable',85,4,'wagon',246.13,440.94,166.12,139.45,6731.01,'4wd','front',10.23,10.23,9493.13),(356,20,66,'Baja calidad',87,2,'hatchback',243.08,403.10,161.54,138.43,5041.91,'fwd','front',6.72,6.03,4341.48),(357,20,66,'Baja calidad',87,2,'hatchback',243.08,403.10,161.54,138.43,5181.61,'fwd','front',7.59,6.19,5145.16),(358,20,66,'Baja calidad',74,4,'hatchback',243.08,403.10,161.54,138.43,5118.11,'fwd','front',7.59,6.19,5266.93),(359,20,66,'Mejorable',77,4,'wagon',243.08,431.04,161.54,150.11,5791.21,'fwd','front',7.59,6.36,5616.00),(360,20,66,'Mejorable',81,4,'wagon',243.08,431.04,161.54,150.11,5816.61,'4wd','front',8.71,7.35,6411.56),(361,20,66,'Mejorable',91,4,'wagon',243.08,431.04,161.54,150.11,7899.42,'4wd','front',8.71,7.35,7125.94),(362,20,67,'Mejorable',91,4,'sedan',243.08,422.40,163.58,134.62,5285.75,'fwd','front',7.84,6.36,5632.23),(363,20,67,'Mejorable',91,4,'hatchback',243.08,422.40,163.58,134.11,5356.87,'fwd','front',7.84,6.36,5843.30),(364,20,86,'Mejorable',91,4,'sedan',243.08,422.40,163.58,134.62,5778.51,'fwd','front',6.92,6.53,6411.56),(365,20,86,'Mejorable',91,4,'hatchback',243.08,422.40,163.58,134.11,5778.51,'fwd','front',6.19,5.00,6322.26),(366,20,67,'Mejorable',91,4,'sedan',243.08,422.40,163.58,134.62,5318.77,'fwd','front',6.19,5.00,6281.67),(367,20,67,'Mejorable',91,4,'hatchback',243.08,422.40,163.58,134.11,5389.89,'fwd','front',8.40,6.92,6784.98),(368,20,67,'Mejorable',91,4,'sedan',243.08,422.40,163.58,134.11,5435.61,'fwd','front',8.40,6.92,7515.60),(369,20,67,'Baja calidad',168,2,'sedan',240.03,428.50,162.56,133.60,5509.27,'rwd','front',8.11,6.92,6541.44),(370,20,67,'Baja calidad',168,2,'hatchback',240.03,428.50,162.56,133.60,5598.17,'rwd','front',8.11,6.92,6687.57),(371,20,4,'Baja calidad',168,2,'sedan',240.03,428.50,162.56,133.60,5753.11,'rwd','front',9.05,8.11,7548.07),(372,20,4,'Baja calidad',168,2,'hatchback',240.03,428.50,162.56,133.60,5842.01,'rwd','front',9.05,8.11,7742.90),(373,20,34,'Mala calidad',134,2,'hardtop',249.94,447.55,166.62,132.08,6451.61,'rwd','front',9.80,7.84,6858.86),(374,20,34,'Mala calidad',134,2,'hardtop',249.94,447.55,166.62,132.08,6441.45,'rwd','front',9.80,7.84,7824.89),(375,20,34,'Mala calidad',134,2,'hatchback',249.94,447.55,166.62,132.08,6479.55,'rwd','front',9.80,7.84,8109.02),(376,20,34,'Mala calidad',134,2,'hardtop',249.94,447.55,166.62,132.08,6804.67,'rwd','front',9.80,7.84,9091.29),(377,20,34,'Mala calidad',134,2,'hatchback',249.94,447.55,166.62,132.08,6893.57,'rwd','front',9.80,7.84,9375.42),(378,20,34,'Mala calidad',134,2,'convertible',249.94,447.55,166.62,134.62,7556.52,'rwd','front',9.80,7.84,14343.61),(379,20,35,'Fiable',65,4,'sedan',260.10,446.02,168.91,139.45,5908.05,'fwd','front',8.11,6.92,7263.94),(380,20,87,'Fiable',65,4,'sedan',260.10,446.02,168.91,139.45,6299.21,'fwd','front',7.84,7.13,8684.58),(381,20,35,'Fiable',65,4,'hatchback',260.10,446.02,168.91,136.91,6131.57,'fwd','front',8.71,7.35,8108.21),(382,20,35,'Fiable',65,4,'sedan',260.10,446.02,168.91,139.45,6131.57,'fwd','front',8.71,7.35,8846.94),(383,20,35,'Fiable',65,4,'hatchback',260.10,446.02,168.91,136.91,6243.33,'fwd','front',8.71,7.35,9131.07),(384,20,5,'Peligroso',197,2,'hatchback',261.37,466.09,171.96,132.08,7559.06,'rwd','front',11.76,9.80,13441.70),(385,20,5,'Peligroso',197,2,'hatchback',261.37,466.09,171.96,132.08,7660.66,'rwd','front',12.38,9.80,12987.10),(386,20,6,'Fiable',90,4,'sedan',265.43,477.01,168.91,137.41,7952.76,'rwd','front',11.76,9.80,12737.06),(387,20,7,'Fiable',NULL,4,'wagon',265.43,477.01,168.91,137.41,8003.56,'rwd','front',12.38,9.80,12785.77),(388,21,88,'Mala calidad',122,2,'sedan',247.14,436.12,166.37,141.48,5742.95,'fwd','front',6.36,5.11,6311.71),(389,21,36,'Mala calidad',122,2,'sedan',247.14,436.12,166.37,141.48,5610.87,'fwd','front',8.71,6.92,6474.07),(390,21,88,'Mala calidad',94,4,'sedan',247.14,436.12,166.37,141.48,5750.57,'fwd','front',6.36,5.11,6490.30),(391,21,36,'Mala calidad',94,4,'sedan',247.14,436.12,166.37,141.48,5618.49,'fwd','front',8.71,6.92,6652.66),(392,21,36,'Mala calidad',94,4,'sedan',247.14,436.12,166.37,141.48,5778.51,'fwd','front',8.71,6.92,6896.20),(393,21,89,'Mala calidad',94,4,'sedan',247.14,436.12,166.37,141.48,5890.27,'fwd','front',6.36,5.60,7707.99),(394,21,37,'Mala calidad',94,4,'sedan',247.14,436.12,166.37,141.48,5842.01,'fwd','front',9.05,7.35,8113.89),(395,21,38,'Peligroso',NULL,2,'convertible',240.03,404.62,163.07,141.22,5725.17,'fwd','front',9.80,8.11,9412.76),(396,21,38,'Peligroso',256,2,'hatchback',240.03,420.88,162.56,130.56,5641.35,'fwd','front',9.80,8.11,8101.71),(397,21,19,'Mejorable',NULL,4,'sedan',255.02,457.71,169.93,139.95,6758.95,'fwd','front',12.38,9.80,10792.82),(398,21,89,'Mejorable',NULL,4,'sedan',255.02,457.71,169.93,139.95,6550.67,'fwd','front',7.13,6.19,11239.30),(399,21,39,'Mejorable',NULL,4,'wagon',255.02,465.07,169.93,139.95,6510.03,'fwd','front',9.41,7.59,9976.96),(400,22,40,'Muy fiable',103,4,'sedan',264.92,479.55,170.69,142.75,7396.49,'rwd','front',10.23,8.40,10504.63),(401,22,40,'Fiable',74,4,'wagon',264.92,479.55,170.69,146.05,7706.38,'rwd','front',10.23,8.40,10890.23),(402,22,40,'Muy fiable',103,4,'sedan',264.92,479.55,170.69,142.75,7454.91,'rwd','front',9.80,8.40,12976.54),(403,22,40,'Fiable',74,4,'wagon',264.92,479.55,170.69,146.05,7726.70,'rwd','front',9.80,8.40,13406.80),(404,22,41,'Muy fiable',103,4,'sedan',264.92,479.55,170.69,142.75,7734.32,'rwd','front',13.84,10.69,14953.26),(405,22,41,'Fiable',74,4,'wagon',264.92,479.55,170.69,146.05,8018.80,'rwd','front',13.84,10.69,15383.52),(406,22,40,'Fiable',95,4,'sedan',277.11,479.55,175.01,140.97,7498.09,'rwd','front',10.23,8.40,13674.69),(407,22,42,'Fiable',95,4,'sedan',277.11,479.55,174.75,140.97,7744.48,'rwd','front',12.38,9.41,15460.64),(408,22,16,'Fiable',95,4,'sedan',277.11,479.55,175.01,140.97,7650.50,'rwd','front',13.07,10.23,17441.42),(409,22,90,'Fiable',95,4,'sedan',277.11,479.55,175.01,140.97,8171.20,'rwd','front',9.05,8.71,18241.03),(410,22,43,'Fiable',95,4,'sedan',277.11,479.55,175.01,140.97,7777.50,'rwd','front',12.38,9.41,18366.86);
/*!40000 ALTER TABLE `CAR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ENGINE`
--

DROP TABLE IF EXISTS `ENGINE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENGINE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `engineType` int(11) DEFAULT NULL,
  `aspiration` int(11) DEFAULT NULL,
  `fuelType` int(11) DEFAULT NULL,
  `fuelSystem` int(11) DEFAULT NULL,
  `bore` double(8,2) DEFAULT NULL,
  `stroke` double(8,2) DEFAULT NULL,
  `peakRpm` double(8,2) DEFAULT NULL,
  `horsePower` double(8,2) DEFAULT NULL,
  `numCylinders` int(11) DEFAULT NULL,
  `engineSize` double(8,2) DEFAULT NULL,
  `compressionRatio` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `engineType` (`engineType`),
  KEY `aspiration` (`aspiration`),
  KEY `fuelType` (`fuelType`),
  KEY `fuelSystem` (`fuelSystem`),
  CONSTRAINT `ENGINE_ibfk_1` FOREIGN KEY (`engineType`) REFERENCES `ENGINE_TYPE` (`id`),
  CONSTRAINT `ENGINE_ibfk_2` FOREIGN KEY (`aspiration`) REFERENCES `ASPIRATION` (`id`),
  CONSTRAINT `ENGINE_ibfk_3` FOREIGN KEY (`fuelType`) REFERENCES `FUEL_TYPE` (`id`),
  CONSTRAINT `ENGINE_ibfk_4` FOREIGN KEY (`fuelSystem`) REFERENCES `FUEL_SYSTEM` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ENGINE`
--

LOCK TABLES `ENGINE` WRITE;
/*!40000 ALTER TABLE `ENGINE` DISABLE KEYS */;
INSERT INTO `ENGINE` VALUES (1,1,1,1,1,8.81,6.81,5000.00,111.00,4,2130.31,9.00),(2,1,1,1,1,9.22,10.59,4750.00,176.00,6,4227.84,8.10),(3,1,2,1,1,8.99,7.80,5500.00,160.00,4,1982.83,9.00),(4,1,1,1,1,8.23,7.82,6600.00,112.00,4,1605.93,9.40),(5,1,1,1,1,8.31,8.51,5200.00,161.00,6,2802.18,9.30),(6,1,1,1,1,8.31,8.51,5200.00,156.00,6,2802.18,9.20),(7,1,1,1,1,8.31,8.51,5200.00,156.00,6,2638.31,9.20),(8,2,1,1,1,6.81,8.81,5000.00,154.00,6,2490.82,9.00),(9,2,1,1,1,8.99,7.01,5000.00,262.00,12,5342.16,11.50),(10,2,1,1,1,8.79,7.87,4750.00,155.00,8,3834.56,8.30),(11,2,1,1,1,9.65,8.51,4500.00,184.00,8,5047.19,8.00),(12,2,1,1,1,9.65,8.51,4500.00,184.00,8,4981.65,8.00),(13,2,1,1,1,8.71,8.31,5200.00,152.00,6,2966.05,9.00),(14,2,1,1,1,8.71,8.31,5200.00,160.00,6,2966.05,9.00),(15,2,2,1,1,8.71,8.31,5200.00,200.00,6,2966.05,7.80),(16,2,1,1,1,9.09,7.29,5500.00,134.00,6,2834.95,8.80),(17,3,1,1,1,8.10,8.64,5500.00,102.00,4,1786.18,10.00),(18,3,1,1,1,8.10,8.64,5500.00,115.00,5,2228.63,8.00),(19,3,1,1,1,8.10,8.64,5500.00,110.00,5,2228.63,8.50),(20,3,2,1,1,7.95,8.64,5500.00,140.00,5,2146.70,8.30),(21,3,2,1,1,7.95,8.64,5500.00,160.00,5,2146.70,7.00),(22,3,1,1,1,8.89,7.11,5800.00,101.00,4,1769.80,8.80),(23,3,1,1,1,8.41,8.10,4250.00,121.00,6,2687.47,9.00),(24,3,1,1,1,9.19,8.61,5400.00,182.00,6,3424.88,8.00),(25,3,2,1,1,7.70,8.61,5500.00,102.00,4,1605.93,7.60),(26,3,1,1,1,8.00,9.09,5800.00,101.00,4,1802.57,9.00),(27,3,1,1,1,9.55,8.03,5000.00,120.00,4,2294.18,8.00),(28,3,2,1,1,9.60,7.92,5000.00,175.00,4,2294.18,8.00),(29,3,1,1,1,10.01,7.90,5500.00,143.00,4,2474.44,9.50),(30,3,1,1,1,8.79,9.91,NULL,NULL,4,2163.08,8.70),(31,3,1,1,1,8.99,7.80,5250.00,110.00,4,1982.83,9.31),(32,3,1,1,1,8.99,7.80,5250.00,110.00,4,1982.83,9.30),(33,3,1,1,1,6.45,5.26,5250.00,110.00,4,1982.83,9.30),(34,3,1,1,1,9.19,8.89,4800.00,116.00,4,2392.50,9.30),(35,3,1,1,1,8.41,8.99,4200.00,92.00,4,1999.21,8.70),(36,3,1,1,1,8.10,8.64,5250.00,85.00,4,1786.18,9.00),(37,3,1,1,1,8.10,8.64,5500.00,100.00,4,1786.18,10.00),(38,3,1,1,1,8.10,8.64,5500.00,90.00,4,1786.18,8.50),(39,3,1,1,1,8.10,8.64,5500.00,88.00,4,1786.18,9.00),(40,3,1,1,1,9.60,8.00,5400.00,114.00,4,2310.57,9.50),(41,3,2,1,1,9.19,8.00,5100.00,162.00,4,2130.31,7.50),(42,3,2,1,1,9.60,8.00,5300.00,160.00,4,2310.57,8.70),(43,3,2,1,1,9.60,8.00,5400.00,114.00,4,2310.57,9.50),(44,4,1,1,1,8.79,8.10,5000.00,97.00,4,1966.44,8.40),(45,4,1,1,1,8.79,5.56,5000.00,95.00,4,1966.44,8.40),(46,4,2,1,1,9.17,8.15,5600.00,142.00,4,2195.86,7.00),(47,5,1,1,1,NULL,NULL,6000.00,135.00,2,1310.96,9.40),(48,6,1,1,1,9.50,7.37,5900.00,207.00,6,3179.08,9.50),(49,6,1,1,1,9.19,6.71,5200.00,94.00,4,1769.80,9.00),(50,6,2,1,1,9.19,6.71,4800.00,111.00,4,1769.80,7.70),(51,7,1,1,1,10.01,7.90,5750.00,288.00,8,3326.56,10.00),(52,3,1,1,2,7.70,7.90,5400.00,70.00,4,1474.83,9.60),(53,3,1,1,2,7.54,8.20,5500.00,68.00,4,1474.83,9.41),(54,3,1,1,2,7.54,8.20,5500.00,68.00,4,1474.83,9.40),(55,3,1,1,2,8.48,8.79,5000.00,88.00,4,1999.21,8.50),(56,3,1,1,2,8.00,9.09,5500.00,100.00,4,1802.57,9.10),(57,3,1,1,2,8.41,8.20,4800.00,78.00,4,1818.96,8.50),(58,3,1,1,2,7.70,8.00,5000.00,68.00,4,1491.22,9.00),(59,3,1,1,2,7.82,8.00,5000.00,68.00,4,1491.22,9.00),(60,3,1,1,2,8.61,8.61,4800.00,84.00,4,1999.21,8.60),(61,3,1,1,2,7.54,8.20,5500.00,68.00,4,1507.60,9.40),(62,3,1,1,2,8.51,8.79,5000.00,88.00,4,1999.21,8.50),(63,3,1,1,2,8.00,8.36,5200.00,69.00,4,1589.54,9.40),(64,3,1,1,2,8.46,8.81,5200.00,97.00,4,1966.44,8.50),(65,3,1,1,2,7.54,8.20,5500.00,68.00,4,1605.93,9.40),(66,3,1,1,2,7.75,7.70,4800.00,62.00,4,1507.60,9.00),(67,3,1,1,2,8.10,7.70,4800.00,70.00,4,1605.93,9.00),(68,4,1,1,2,7.39,7.70,5100.00,48.00,3,999.61,9.50),(69,6,1,1,2,9.19,5.99,4900.00,69.00,4,1589.54,9.00),(70,6,1,1,2,9.19,6.71,4400.00,73.00,4,1769.80,8.70),(71,6,1,1,2,9.19,6.71,4800.00,82.00,4,1769.80,9.50),(72,6,1,1,2,9.19,6.71,4400.00,82.00,4,1769.80,9.50),(73,6,1,1,2,9.19,6.71,4800.00,82.00,4,1769.80,9.00),(74,3,2,1,3,9.14,9.91,5000.00,145.00,4,2556.37,7.00),(75,3,1,1,4,7.39,8.66,4800.00,58.00,4,1507.60,9.60),(76,3,1,1,4,7.39,8.66,6000.00,76.00,4,1507.60,9.20),(77,3,1,1,4,7.39,7.80,5500.00,60.00,4,1294.57,10.10),(78,3,1,1,4,7.42,8.66,6000.00,76.00,4,1507.60,9.20),(79,3,1,1,4,8.00,9.09,5800.00,86.00,4,1802.57,9.00),(80,3,1,1,5,8.71,8.20,5000.00,90.00,4,1950.05,9.20),(81,5,1,1,6,NULL,NULL,6000.00,101.00,2,1147.09,9.40),(82,3,1,2,7,8.61,8.61,4650.00,64.00,4,1999.21,22.70),(83,3,1,2,7,8.71,9.25,4200.00,72.00,4,2195.86,22.00),(84,3,2,2,7,9.09,9.25,4350.00,123.00,5,2998.82,21.50),(85,3,1,2,7,7.59,8.81,4800.00,55.00,4,1687.86,21.90),(86,3,1,2,7,8.31,8.51,4500.00,56.00,4,1802.57,22.50),(87,3,2,2,7,8.31,8.51,4500.00,73.00,4,1802.57,22.50),(88,3,1,2,7,7.65,8.64,4800.00,52.00,4,1589.54,23.00),(89,3,2,2,7,7.65,8.64,4500.00,68.00,4,1589.54,23.00),(90,3,2,2,7,7.65,8.64,4800.00,106.00,6,2376.11,23.00),(91,4,2,2,7,9.40,8.94,4150.00,95.00,4,2490.82,21.00),(92,3,2,1,8,7.70,8.61,5500.00,102.00,4,1605.93,7.60),(93,3,2,1,8,8.05,8.79,5500.00,116.00,4,1802.57,7.50),(94,3,2,1,8,9.09,9.80,5000.00,145.00,4,2556.37,7.00),(95,3,2,1,8,9.12,9.80,5000.00,145.00,4,2556.37,7.00),(96,3,1,1,8,8.05,8.79,5500.00,116.00,4,1802.57,7.50);
/*!40000 ALTER TABLE `ENGINE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ENGINE_TYPE`
--

DROP TABLE IF EXISTS `ENGINE_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ENGINE_TYPE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `engineType` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ENGINE_TYPE`
--

LOCK TABLES `ENGINE_TYPE` WRITE;
/*!40000 ALTER TABLE `ENGINE_TYPE` DISABLE KEYS */;
INSERT INTO `ENGINE_TYPE` VALUES (1,'dohc'),(2,'ohcv'),(3,'ohc'),(4,'l'),(5,'rotor'),(6,'ohcf'),(7,'dohcv');
/*!40000 ALTER TABLE `ENGINE_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FUEL_SYSTEM`
--

DROP TABLE IF EXISTS `FUEL_SYSTEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FUEL_SYSTEM` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuelSystem` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FUEL_SYSTEM`
--

LOCK TABLES `FUEL_SYSTEM` WRITE;
/*!40000 ALTER TABLE `FUEL_SYSTEM` DISABLE KEYS */;
INSERT INTO `FUEL_SYSTEM` VALUES (1,'mpfi'),(2,'2bbl'),(3,'mfi'),(4,'1bbl'),(5,'spfi'),(6,'4bbl'),(7,'idi'),(8,'spdi');
/*!40000 ALTER TABLE `FUEL_SYSTEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FUEL_TYPE`
--

DROP TABLE IF EXISTS `FUEL_TYPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FUEL_TYPE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fuelType` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FUEL_TYPE`
--

LOCK TABLES `FUEL_TYPE` WRITE;
/*!40000 ALTER TABLE `FUEL_TYPE` DISABLE KEYS */;
INSERT INTO `FUEL_TYPE` VALUES (1,'gas'),(2,'diesel');
/*!40000 ALTER TABLE `FUEL_TYPE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MAKE`
--

DROP TABLE IF EXISTS `MAKE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MAKE` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `make` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MAKE`
--

LOCK TABLES `MAKE` WRITE;
/*!40000 ALTER TABLE `MAKE` DISABLE KEYS */;
INSERT INTO `MAKE` VALUES (1,'alfa-romero'),(2,'audi'),(3,'bmw'),(4,'chevrolet'),(5,'dodge'),(6,'honda'),(7,'isuzu'),(8,'jaguar'),(9,'mazda'),(10,'mercedes-benz'),(11,'mercury'),(12,'mitsubishi'),(13,'nissan'),(14,'peugot'),(15,'plymouth'),(16,'porsche'),(17,'renault'),(18,'saab'),(19,'subaru'),(20,'toyota'),(21,'volkswagen'),(22,'volvo');
/*!40000 ALTER TABLE `MAKE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carsTMP`
--

DROP TABLE IF EXISTS `carsTMP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carsTMP` (
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
INSERT INTO `carsTMP` VALUES (3,NULL,'alfa-romero','gas','std','two','convertible','rwd','front',88.6,168.8,64.1,48.8,2548,'dohc','four',130,'mpfi',3.47,2.68,9,111,5000,21,27,13495),(3,NULL,'alfa-romero','gas','std','two','convertible','rwd','front',88.6,168.8,64.1,48.8,2548,'dohc','four',130,'mpfi',3.47,2.68,9,111,5000,21,27,16500),(1,NULL,'alfa-romero','gas','std','two','hatchback','rwd','front',94.5,171.2,65.5,52.4,2823,'ohcv','six',152,'mpfi',2.68,3.47,9,154,5000,19,26,16500),(2,164,'audi','gas','std','four','sedan','fwd','front',99.8,176.6,66.2,54.3,2337,'ohc','four',109,'mpfi',3.19,3.4,10,102,5500,24,30,13950),(2,164,'audi','gas','std','four','sedan','4wd','front',99.4,176.6,66.4,54.3,2824,'ohc','five',136,'mpfi',3.19,3.4,8,115,5500,18,22,17450),(2,NULL,'audi','gas','std','two','sedan','fwd','front',99.8,177.3,66.3,53.1,2507,'ohc','five',136,'mpfi',3.19,3.4,8.5,110,5500,19,25,15250),(1,158,'audi','gas','std','four','sedan','fwd','front',105.8,192.7,71.4,55.7,2844,'ohc','five',136,'mpfi',3.19,3.4,8.5,110,5500,19,25,17710),(1,NULL,'audi','gas','std','four','wagon','fwd','front',105.8,192.7,71.4,55.7,2954,'ohc','five',136,'mpfi',3.19,3.4,8.5,110,5500,19,25,18920),(1,158,'audi','gas','turbo','four','sedan','fwd','front',105.8,192.7,71.4,55.9,3086,'ohc','five',131,'mpfi',3.13,3.4,8.3,140,5500,17,20,23875),(0,NULL,'audi','gas','turbo','two','hatchback','4wd','front',99.5,178.2,67.9,52,3053,'ohc','five',131,'mpfi',3.13,3.4,7,160,5500,16,22,NULL),(2,192,'bmw','gas','std','two','sedan','rwd','front',101.2,176.8,64.8,54.3,2395,'ohc','four',108,'mpfi',3.5,2.8,8.8,101,5800,23,29,16430),(0,192,'bmw','gas','std','four','sedan','rwd','front',101.2,176.8,64.8,54.3,2395,'ohc','four',108,'mpfi',3.5,2.8,8.8,101,5800,23,29,16925),(0,188,'bmw','gas','std','two','sedan','rwd','front',101.2,176.8,64.8,54.3,2710,'ohc','six',164,'mpfi',3.31,3.19,9,121,4250,21,28,20970),(0,188,'bmw','gas','std','four','sedan','rwd','front',101.2,176.8,64.8,54.3,2765,'ohc','six',164,'mpfi',3.31,3.19,9,121,4250,21,28,21105),(1,NULL,'bmw','gas','std','four','sedan','rwd','front',103.5,189,66.9,55.7,3055,'ohc','six',164,'mpfi',3.31,3.19,9,121,4250,20,25,24565),(0,NULL,'bmw','gas','std','four','sedan','rwd','front',103.5,189,66.9,55.7,3230,'ohc','six',209,'mpfi',3.62,3.39,8,182,5400,16,22,30760),(0,NULL,'bmw','gas','std','two','sedan','rwd','front',103.5,193.8,67.9,53.7,3380,'ohc','six',209,'mpfi',3.62,3.39,8,182,5400,16,22,41315),(0,NULL,'bmw','gas','std','four','sedan','rwd','front',110,197,70.9,56.3,3505,'ohc','six',209,'mpfi',3.62,3.39,8,182,5400,15,20,36880),(2,121,'chevrolet','gas','std','two','hatchback','fwd','front',88.4,141.1,60.3,53.2,1488,'l','three',61,'2bbl',2.91,3.03,9.5,48,5100,47,53,5151),(1,98,'chevrolet','gas','std','two','hatchback','fwd','front',94.5,155.9,63.6,52,1874,'ohc','four',90,'2bbl',3.03,3.11,9.6,70,5400,38,43,6295),(0,81,'chevrolet','gas','std','four','sedan','fwd','front',94.5,158.8,63.6,52,1909,'ohc','four',90,'2bbl',3.03,3.11,9.6,70,5400,38,43,6575),(1,118,'dodge','gas','std','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,1876,'ohc','four',90,'2bbl',2.97,3.23,9.41,68,5500,37,41,5572),(1,118,'dodge','gas','std','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,1876,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6377),(1,118,'dodge','gas','turbo','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,2128,'ohc','four',98,'mpfi',3.03,3.39,7.6,102,5500,24,30,7957),(1,148,'dodge','gas','std','four','hatchback','fwd','front',93.7,157.3,63.8,50.6,1967,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6229),(1,148,'dodge','gas','std','four','sedan','fwd','front',93.7,157.3,63.8,50.6,1989,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6692),(1,148,'dodge','gas','std','four','sedan','fwd','front',93.7,157.3,63.8,50.6,1989,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,7609),(1,148,'dodge','gas','turbo','-1','sedan','fwd','front',93.7,157.3,63.8,50.6,2191,'ohc','four',98,'mpfi',3.03,3.39,7.6,102,5500,24,30,8558),(-1,110,'dodge','gas','std','four','wagon','fwd','front',103.3,174.6,64.6,59.8,2535,'ohc','four',122,'2bbl',3.34,3.46,8.5,88,5000,24,30,8921),(3,145,'dodge','gas','turbo','two','hatchback','fwd','front',95.9,173.2,66.3,50.2,2811,'ohc','four',156,'mfi',3.6,3.9,7,145,5000,19,24,12964),(2,137,'honda','gas','std','two','hatchback','fwd','front',86.6,144.6,63.9,50.8,1713,'ohc','four',92,'1bbl',2.91,3.41,9.6,58,4800,49,54,6479),(2,137,'honda','gas','std','two','hatchback','fwd','front',86.6,144.6,63.9,50.8,1819,'ohc','four',92,'1bbl',2.91,3.41,9.2,76,6000,31,38,6855),(1,101,'honda','gas','std','two','hatchback','fwd','front',93.7,150,64,52.6,1837,'ohc','four',79,'1bbl',2.91,3.07,10.1,60,5500,38,42,5399),(1,101,'honda','gas','std','two','hatchback','fwd','front',93.7,150,64,52.6,1940,'ohc','four',92,'1bbl',2.91,3.41,9.2,76,6000,30,34,6529),(1,101,'honda','gas','std','two','hatchback','fwd','front',93.7,150,64,52.6,1956,'ohc','four',92,'1bbl',2.91,3.41,9.2,76,6000,30,34,7129),(0,110,'honda','gas','std','four','sedan','fwd','front',96.5,163.4,64,54.5,2010,'ohc','four',92,'1bbl',2.91,3.41,9.2,76,6000,30,34,7295),(0,78,'honda','gas','std','four','wagon','fwd','front',96.5,157.1,63.9,58.3,2024,'ohc','four',92,'1bbl',2.92,3.41,9.2,76,6000,30,34,7295),(0,106,'honda','gas','std','two','hatchback','fwd','front',96.5,167.5,65.2,53.3,2236,'ohc','four',110,'1bbl',3.15,3.58,9,86,5800,27,33,7895),(0,106,'honda','gas','std','two','hatchback','fwd','front',96.5,167.5,65.2,53.3,2289,'ohc','four',110,'1bbl',3.15,3.58,9,86,5800,27,33,9095),(0,85,'honda','gas','std','four','sedan','fwd','front',96.5,175.4,65.2,54.1,2304,'ohc','four',110,'1bbl',3.15,3.58,9,86,5800,27,33,8845),(0,85,'honda','gas','std','four','sedan','fwd','front',96.5,175.4,62.5,54.1,2372,'ohc','four',110,'1bbl',3.15,3.58,9,86,5800,27,33,10295),(0,85,'honda','gas','std','four','sedan','fwd','front',96.5,175.4,65.2,54.1,2465,'ohc','four',110,'mpfi',3.15,3.58,9,101,5800,24,28,12945),(1,107,'honda','gas','std','two','sedan','fwd','front',96.5,169.1,66,51,2293,'ohc','four',110,'2bbl',3.15,3.58,9.1,100,5500,25,31,10345),(0,NULL,'isuzu','gas','std','four','sedan','rwd','front',94.3,170.7,61.8,53.5,2337,'ohc','four',111,'2bbl',3.31,3.23,8.5,78,4800,24,29,6785),(1,NULL,'isuzu','gas','std','two','sedan','fwd','front',94.5,155.9,63.6,52,1874,'ohc','four',90,'2bbl',3.03,3.11,9.6,70,5400,38,43,NULL),(0,NULL,'isuzu','gas','std','four','sedan','fwd','front',94.5,155.9,63.6,52,1909,'ohc','four',90,'2bbl',3.03,3.11,9.6,70,5400,38,43,NULL),(2,NULL,'isuzu','gas','std','two','hatchback','rwd','front',96,172.6,65.2,51.4,2734,'ohc','four',119,'spfi',3.43,3.23,9.2,90,5000,24,29,11048),(0,145,'jaguar','gas','std','four','sedan','rwd','front',113,199.6,69.6,52.8,4066,'dohc','six',258,'mpfi',3.63,4.17,8.1,176,4750,15,19,32250),(0,NULL,'jaguar','gas','std','four','sedan','rwd','front',113,199.6,69.6,52.8,4066,'dohc','six',258,'mpfi',3.63,4.17,8.1,176,4750,15,19,35550),(0,NULL,'jaguar','gas','std','two','sedan','rwd','front',102,191.7,70.6,47.8,3950,'ohcv','twelve',326,'mpfi',3.54,2.76,11.5,262,5000,13,17,36000),(1,104,'mazda','gas','std','two','hatchback','fwd','front',93.1,159.1,64.2,54.1,1890,'ohc','four',91,'2bbl',3.03,3.15,9,68,5000,30,31,5195),(1,104,'mazda','gas','std','two','hatchback','fwd','front',93.1,159.1,64.2,54.1,1900,'ohc','four',91,'2bbl',3.03,3.15,9,68,5000,31,38,6095),(1,104,'mazda','gas','std','two','hatchback','fwd','front',93.1,159.1,64.2,54.1,1905,'ohc','four',91,'2bbl',3.03,3.15,9,68,5000,31,38,6795),(1,113,'mazda','gas','std','four','sedan','fwd','front',93.1,166.8,64.2,54.1,1945,'ohc','four',91,'2bbl',3.03,3.15,9,68,5000,31,38,6695),(1,113,'mazda','gas','std','four','sedan','fwd','front',93.1,166.8,64.2,54.1,1950,'ohc','four',91,'2bbl',3.08,3.15,9,68,5000,31,38,7395),(3,150,'mazda','gas','std','two','hatchback','rwd','front',95.3,169,65.7,49.6,2380,'rotor','two',70,'4bbl',NULL,NULL,9.4,101,6000,17,23,10945),(3,150,'mazda','gas','std','two','hatchback','rwd','front',95.3,169,65.7,49.6,2380,'rotor','two',70,'4bbl',NULL,NULL,9.4,101,6000,17,23,11845),(3,150,'mazda','gas','std','two','hatchback','rwd','front',95.3,169,65.7,49.6,2385,'rotor','two',70,'4bbl',NULL,NULL,9.4,101,6000,17,23,13645),(3,150,'mazda','gas','std','two','hatchback','rwd','front',95.3,169,65.7,49.6,2500,'rotor','two',80,'mpfi',NULL,NULL,9.4,135,6000,16,23,15645),(1,129,'mazda','gas','std','two','hatchback','fwd','front',98.8,177.8,66.5,53.7,2385,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,8845),(0,115,'mazda','gas','std','four','sedan','fwd','front',98.8,177.8,66.5,55.5,2410,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,8495),(1,129,'mazda','gas','std','two','hatchback','fwd','front',98.8,177.8,66.5,53.7,2385,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,10595),(0,115,'mazda','gas','std','four','sedan','fwd','front',98.8,177.8,66.5,55.5,2410,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,10245),(0,NULL,'mazda','diesel','std','-1','sedan','fwd','front',98.8,177.8,66.5,55.5,2443,'ohc','four',122,'idi',3.39,3.39,22.7,64,4650,36,42,10795),(0,115,'mazda','gas','std','four','hatchback','fwd','front',98.8,177.8,66.5,55.5,2425,'ohc','four',122,'2bbl',3.39,3.39,8.6,84,4800,26,32,11245),(0,118,'mazda','gas','std','four','sedan','rwd','front',104.9,175,66.1,54.4,2670,'ohc','four',140,'mpfi',3.76,3.16,8,120,5000,19,27,18280),(0,NULL,'mazda','diesel','std','four','sedan','rwd','front',104.9,175,66.1,54.4,2700,'ohc','four',134,'idi',3.43,3.64,22,72,4200,31,39,18344),(-1,93,'mercedes-benz','diesel','turbo','four','sedan','rwd','front',110,190.9,70.3,56.5,3515,'ohc','five',183,'idi',3.58,3.64,21.5,123,4350,22,25,25552),(-1,93,'mercedes-benz','diesel','turbo','four','wagon','rwd','front',110,190.9,70.3,58.7,3750,'ohc','five',183,'idi',3.58,3.64,21.5,123,4350,22,25,28248),(0,93,'mercedes-benz','diesel','turbo','two','hardtop','rwd','front',106.7,187.5,70.3,54.9,3495,'ohc','five',183,'idi',3.58,3.64,21.5,123,4350,22,25,28176),(-1,93,'mercedes-benz','diesel','turbo','four','sedan','rwd','front',115.6,202.6,71.7,56.3,3770,'ohc','five',183,'idi',3.58,3.64,21.5,123,4350,22,25,31600),(-1,NULL,'mercedes-benz','gas','std','four','sedan','rwd','front',115.6,202.6,71.7,56.5,3740,'ohcv','eight',234,'mpfi',3.46,3.1,8.3,155,4750,16,18,34184),(3,142,'mercedes-benz','gas','std','two','convertible','rwd','front',96.6,180.3,70.5,50.8,3685,'ohcv','eight',234,'mpfi',3.46,3.1,8.3,155,4750,16,18,35056),(0,NULL,'mercedes-benz','gas','std','four','sedan','rwd','front',120.9,208.1,71.7,56.7,3900,'ohcv','eight',308,'mpfi',3.8,3.35,8,184,4500,14,16,40960),(1,NULL,'mercedes-benz','gas','std','two','hardtop','rwd','front',112,199.2,72,55.4,3715,'ohcv','eight',304,'mpfi',3.8,3.35,8,184,4500,14,16,45400),(1,NULL,'mercury','gas','turbo','two','hatchback','rwd','front',102.7,178.4,68,54.8,2910,'ohc','four',140,'mpfi',3.78,3.12,8,175,5000,19,24,16503),(2,161,'mitsubishi','gas','std','two','hatchback','fwd','front',93.7,157.3,64.4,50.8,1918,'ohc','four',92,'2bbl',2.97,3.23,9.4,68,5500,37,41,5389),(2,161,'mitsubishi','gas','std','two','hatchback','fwd','front',93.7,157.3,64.4,50.8,1944,'ohc','four',92,'2bbl',2.97,3.23,9.4,68,5500,31,38,6189),(2,161,'mitsubishi','gas','std','two','hatchback','fwd','front',93.7,157.3,64.4,50.8,2004,'ohc','four',92,'2bbl',2.97,3.23,9.4,68,5500,31,38,6669),(1,161,'mitsubishi','gas','turbo','two','hatchback','fwd','front',93,157.3,63.8,50.8,2145,'ohc','four',98,'spdi',3.03,3.39,7.6,102,5500,24,30,7689),(3,153,'mitsubishi','gas','turbo','two','hatchback','fwd','front',96.3,173,65.4,49.4,2370,'ohc','four',110,'spdi',3.17,3.46,7.5,116,5500,23,30,9959),(3,153,'mitsubishi','gas','std','two','hatchback','fwd','front',96.3,173,65.4,49.4,2328,'ohc','four',122,'2bbl',3.35,3.46,8.5,88,5000,25,32,8499),(3,NULL,'mitsubishi','gas','turbo','two','hatchback','fwd','front',95.9,173.2,66.3,50.2,2833,'ohc','four',156,'spdi',3.58,3.86,7,145,5000,19,24,12629),(3,NULL,'mitsubishi','gas','turbo','two','hatchback','fwd','front',95.9,173.2,66.3,50.2,2921,'ohc','four',156,'spdi',3.59,3.86,7,145,5000,19,24,14869),(3,NULL,'mitsubishi','gas','turbo','two','hatchback','fwd','front',95.9,173.2,66.3,50.2,2926,'ohc','four',156,'spdi',3.59,3.86,7,145,5000,19,24,14489),(1,125,'mitsubishi','gas','std','four','sedan','fwd','front',96.3,172.4,65.4,51.6,2365,'ohc','four',122,'2bbl',3.35,3.46,8.5,88,5000,25,32,6989),(1,125,'mitsubishi','gas','std','four','sedan','fwd','front',96.3,172.4,65.4,51.6,2405,'ohc','four',122,'2bbl',3.35,3.46,8.5,88,5000,25,32,8189),(1,125,'mitsubishi','gas','turbo','four','sedan','fwd','front',96.3,172.4,65.4,51.6,2403,'ohc','four',110,'spdi',3.17,3.46,7.5,116,5500,23,30,9279),(-1,137,'mitsubishi','gas','std','four','sedan','fwd','front',96.3,172.4,65.4,51.6,2403,'ohc','four',110,'spdi',3.17,3.46,7.5,116,5500,23,30,9279),(1,128,'nissan','gas','std','two','sedan','fwd','front',94.5,165.3,63.8,54.5,1889,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,5499),(1,128,'nissan','diesel','std','two','sedan','fwd','front',94.5,165.3,63.8,54.5,2017,'ohc','four',103,'idi',2.99,3.47,21.9,55,4800,45,50,7099),(1,128,'nissan','gas','std','two','sedan','fwd','front',94.5,165.3,63.8,54.5,1918,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,6649),(1,122,'nissan','gas','std','four','sedan','fwd','front',94.5,165.3,63.8,54.5,1938,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,6849),(1,103,'nissan','gas','std','four','wagon','fwd','front',94.5,170.2,63.8,53.5,2024,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7349),(1,128,'nissan','gas','std','two','sedan','fwd','front',94.5,165.3,63.8,54.5,1951,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7299),(1,128,'nissan','gas','std','two','hatchback','fwd','front',94.5,165.6,63.8,53.3,2028,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7799),(1,122,'nissan','gas','std','four','sedan','fwd','front',94.5,165.3,63.8,54.5,1971,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7499),(1,103,'nissan','gas','std','four','wagon','fwd','front',94.5,170.2,63.8,53.5,2037,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,7999),(2,168,'nissan','gas','std','two','hardtop','fwd','front',95.1,162.4,63.8,53.3,2008,'ohc','four',97,'2bbl',3.15,3.29,9.4,69,5200,31,37,8249),(0,106,'nissan','gas','std','four','hatchback','fwd','front',97.2,173.4,65.2,54.7,2324,'ohc','four',120,'2bbl',3.33,3.47,8.5,97,5200,27,34,8949),(0,106,'nissan','gas','std','four','sedan','fwd','front',97.2,173.4,65.2,54.7,2302,'ohc','four',120,'2bbl',3.33,3.47,8.5,97,5200,27,34,9549),(0,128,'nissan','gas','std','four','sedan','fwd','front',100.4,181.7,66.5,55.1,3095,'ohcv','six',181,'mpfi',3.43,3.27,9,152,5200,17,22,13499),(0,108,'nissan','gas','std','four','wagon','fwd','front',100.4,184.6,66.5,56.1,3296,'ohcv','six',181,'mpfi',3.43,3.27,9,152,5200,17,22,14399),(0,108,'nissan','gas','std','four','sedan','fwd','front',100.4,184.6,66.5,55.1,3060,'ohcv','six',181,'mpfi',3.43,3.27,9,152,5200,19,25,13499),(3,194,'nissan','gas','std','two','hatchback','rwd','front',91.3,170.7,67.9,49.7,3071,'ohcv','six',181,'mpfi',3.43,3.27,9,160,5200,19,25,17199),(3,194,'nissan','gas','turbo','two','hatchback','rwd','front',91.3,170.7,67.9,49.7,3139,'ohcv','six',181,'mpfi',3.43,3.27,7.8,200,5200,17,23,19699),(1,231,'nissan','gas','std','two','hatchback','rwd','front',99.2,178.5,67.9,49.7,3139,'ohcv','six',181,'mpfi',3.43,3.27,9,160,5200,19,25,18399),(0,161,'peugot','gas','std','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3020,'l','four',120,'mpfi',3.46,3.19,8.4,97,5000,19,24,11900),(0,161,'peugot','diesel','turbo','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3197,'l','four',152,'idi',3.7,3.52,21,95,4150,28,33,13200),(0,NULL,'peugot','gas','std','four','wagon','rwd','front',114.2,198.9,68.4,58.7,3230,'l','four',120,'mpfi',3.46,3.19,8.4,97,5000,19,24,12440),(0,NULL,'peugot','diesel','turbo','four','wagon','rwd','front',114.2,198.9,68.4,58.7,3430,'l','four',152,'idi',3.7,3.52,21,95,4150,25,25,13860),(0,161,'peugot','gas','std','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3075,'l','four',120,'mpfi',3.46,2.19,8.4,95,5000,19,24,15580),(0,161,'peugot','diesel','turbo','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3252,'l','four',152,'idi',3.7,3.52,21,95,4150,28,33,16900),(0,NULL,'peugot','gas','std','four','wagon','rwd','front',114.2,198.9,68.4,56.7,3285,'l','four',120,'mpfi',3.46,2.19,8.4,95,5000,19,24,16695),(0,NULL,'peugot','diesel','turbo','four','wagon','rwd','front',114.2,198.9,68.4,58.7,3485,'l','four',152,'idi',3.7,3.52,21,95,4150,25,25,17075),(0,161,'peugot','gas','std','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3075,'l','four',120,'mpfi',3.46,3.19,8.4,97,5000,19,24,16630),(0,161,'peugot','diesel','turbo','four','sedan','rwd','front',107.9,186.7,68.4,56.7,3252,'l','four',152,'idi',3.7,3.52,21,95,4150,28,33,17950),(0,161,'peugot','gas','turbo','four','sedan','rwd','front',108,186.7,68.3,56,3130,'l','four',134,'mpfi',3.61,3.21,7,142,5600,18,24,18150),(1,119,'plymouth','gas','std','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,1918,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,37,41,5572),(1,119,'plymouth','gas','turbo','two','hatchback','fwd','front',93.7,157.3,63.8,50.8,2128,'ohc','four',98,'spdi',3.03,3.39,7.6,102,5500,24,30,7957),(1,154,'plymouth','gas','std','four','hatchback','fwd','front',93.7,157.3,63.8,50.6,1967,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6229),(1,154,'plymouth','gas','std','four','sedan','fwd','front',93.7,167.3,63.8,50.8,1989,'ohc','four',90,'2bbl',2.97,3.23,9.4,68,5500,31,38,6692),(1,154,'plymouth','gas','std','four','sedan','fwd','front',93.7,167.3,63.8,50.8,2191,'ohc','four',98,'2bbl',2.97,3.23,9.4,68,5500,31,38,7609),(-1,74,'plymouth','gas','std','four','wagon','fwd','front',103.3,174.6,64.6,59.8,2535,'ohc','four',122,'2bbl',3.35,3.46,8.5,88,5000,24,30,8921),(3,NULL,'plymouth','gas','turbo','two','hatchback','rwd','front',95.9,173.2,66.3,50.2,2818,'ohc','four',156,'spdi',3.59,3.86,7,145,5000,19,24,12764),(3,186,'porsche','gas','std','two','hatchback','rwd','front',94.5,168.9,68.3,50.2,2778,'ohc','four',151,'mpfi',3.94,3.11,9.5,143,5500,19,27,22018),(3,NULL,'porsche','gas','std','two','hardtop','rwd','rear',89.5,168.9,65,51.6,2756,'ohcf','six',194,'mpfi',3.74,2.9,9.5,207,5900,17,25,32528),(3,NULL,'porsche','gas','std','two','hardtop','rwd','rear',89.5,168.9,65,51.6,2756,'ohcf','six',194,'mpfi',3.74,2.9,9.5,207,5900,17,25,34028),(3,NULL,'porsche','gas','std','two','convertible','rwd','rear',89.5,168.9,65,51.6,2800,'ohcf','six',194,'mpfi',3.74,2.9,9.5,207,5900,17,25,37028),(1,NULL,'porsche','gas','std','two','hatchback','rwd','front',98.4,175.7,72.3,50.5,3366,'dohcv','eight',203,'mpfi',3.94,3.11,10,288,5750,17,28,NULL),(0,NULL,'renault','gas','std','four','wagon','fwd','front',96.1,181.5,66.5,55.2,2579,'ohc','four',132,'mpfi',3.46,3.9,8.7,NULL,NULL,23,31,9295),(2,NULL,'renault','gas','std','two','hatchback','fwd','front',96.1,176.8,66.6,50.5,2460,'ohc','four',132,'mpfi',3.46,3.9,8.7,NULL,NULL,23,31,9895),(3,150,'saab','gas','std','two','hatchback','fwd','front',99.1,186.6,66.5,56.1,2658,'ohc','four',121,'mpfi',3.54,3.07,9.31,110,5250,21,28,11850),(2,104,'saab','gas','std','four','sedan','fwd','front',99.1,186.6,66.5,56.1,2695,'ohc','four',121,'mpfi',3.54,3.07,9.3,110,5250,21,28,12170),(3,150,'saab','gas','std','two','hatchback','fwd','front',99.1,186.6,66.5,56.1,2707,'ohc','four',121,'mpfi',2.54,2.07,9.3,110,5250,21,28,15040),(2,104,'saab','gas','std','four','sedan','fwd','front',99.1,186.6,66.5,56.1,2758,'ohc','four',121,'mpfi',3.54,3.07,9.3,110,5250,21,28,15510),(3,150,'saab','gas','turbo','two','hatchback','fwd','front',99.1,186.6,66.5,56.1,2808,'dohc','four',121,'mpfi',3.54,3.07,9,160,5500,19,26,18150),(2,104,'saab','gas','turbo','four','sedan','fwd','front',99.1,186.6,66.5,56.1,2847,'dohc','four',121,'mpfi',3.54,3.07,9,160,5500,19,26,18620),(2,83,'subaru','gas','std','two','hatchback','fwd','front',93.7,156.9,63.4,53.7,2050,'ohcf','four',97,'2bbl',3.62,2.36,9,69,4900,31,36,5118),(2,83,'subaru','gas','std','two','hatchback','fwd','front',93.7,157.9,63.6,53.7,2120,'ohcf','four',108,'2bbl',3.62,2.64,8.7,73,4400,26,31,7053),(2,83,'subaru','gas','std','two','hatchback','4wd','front',93.3,157.3,63.8,55.7,2240,'ohcf','four',108,'2bbl',3.62,2.64,8.7,73,4400,26,31,7603),(0,102,'subaru','gas','std','four','sedan','fwd','front',97.2,172,65.4,52.5,2145,'ohcf','four',108,'2bbl',3.62,2.64,9.5,82,4800,32,37,7126),(0,102,'subaru','gas','std','four','sedan','fwd','front',97.2,172,65.4,52.5,2190,'ohcf','four',108,'2bbl',3.62,2.64,9.5,82,4400,28,33,7775),(0,102,'subaru','gas','std','four','sedan','fwd','front',97.2,172,65.4,52.5,2340,'ohcf','four',108,'mpfi',3.62,2.64,9,94,5200,26,32,9960),(0,102,'subaru','gas','std','four','sedan','4wd','front',97,172,65.4,54.3,2385,'ohcf','four',108,'2bbl',3.62,2.64,9,82,4800,24,25,9233),(0,102,'subaru','gas','turbo','four','sedan','4wd','front',97,172,65.4,54.3,2510,'ohcf','four',108,'mpfi',3.62,2.64,7.7,111,4800,24,29,11259),(0,89,'subaru','gas','std','four','wagon','fwd','front',97,173.5,65.4,53,2290,'ohcf','four',108,'2bbl',3.62,2.64,9,82,4800,28,32,7463),(0,89,'subaru','gas','std','four','wagon','fwd','front',97,173.5,65.4,53,2455,'ohcf','four',108,'mpfi',3.62,2.64,9,94,5200,25,31,10198),(0,85,'subaru','gas','std','four','wagon','4wd','front',96.9,173.6,65.4,54.9,2420,'ohcf','four',108,'2bbl',3.62,2.64,9,82,4800,23,29,8013),(0,85,'subaru','gas','turbo','four','wagon','4wd','front',96.9,173.6,65.4,54.9,2650,'ohcf','four',108,'mpfi',3.62,2.64,7.7,111,4800,23,23,11694),(1,87,'toyota','gas','std','two','hatchback','fwd','front',95.7,158.7,63.6,54.5,1985,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,35,39,5348),(1,87,'toyota','gas','std','two','hatchback','fwd','front',95.7,158.7,63.6,54.5,2040,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,31,38,6338),(1,74,'toyota','gas','std','four','hatchback','fwd','front',95.7,158.7,63.6,54.5,2015,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,31,38,6488),(0,77,'toyota','gas','std','four','wagon','fwd','front',95.7,169.7,63.6,59.1,2280,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,31,37,6918),(0,81,'toyota','gas','std','four','wagon','4wd','front',95.7,169.7,63.6,59.1,2290,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,27,32,7898),(0,91,'toyota','gas','std','four','wagon','4wd','front',95.7,169.7,63.6,59.1,3110,'ohc','four',92,'2bbl',3.05,3.03,9,62,4800,27,32,8778),(0,91,'toyota','gas','std','four','sedan','fwd','front',95.7,166.3,64.4,53,2081,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,30,37,6938),(0,91,'toyota','gas','std','four','hatchback','fwd','front',95.7,166.3,64.4,52.8,2109,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,30,37,7198),(0,91,'toyota','diesel','std','four','sedan','fwd','front',95.7,166.3,64.4,53,2275,'ohc','four',110,'idi',3.27,3.35,22.5,56,4500,34,36,7898),(0,91,'toyota','diesel','std','four','hatchback','fwd','front',95.7,166.3,64.4,52.8,2275,'ohc','four',110,'idi',3.27,3.35,22.5,56,4500,38,47,7788),(0,91,'toyota','gas','std','four','sedan','fwd','front',95.7,166.3,64.4,53,2094,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,38,47,7738),(0,91,'toyota','gas','std','four','hatchback','fwd','front',95.7,166.3,64.4,52.8,2122,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,28,34,8358),(0,91,'toyota','gas','std','four','sedan','fwd','front',95.7,166.3,64.4,52.8,2140,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,28,34,9258),(1,168,'toyota','gas','std','two','sedan','rwd','front',94.5,168.7,64,52.6,2169,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,29,34,8058),(1,168,'toyota','gas','std','two','hatchback','rwd','front',94.5,168.7,64,52.6,2204,'ohc','four',98,'2bbl',3.19,3.03,9,70,4800,29,34,8238),(1,168,'toyota','gas','std','two','sedan','rwd','front',94.5,168.7,64,52.6,2265,'dohc','four',98,'mpfi',3.24,3.08,9.4,112,6600,26,29,9298),(1,168,'toyota','gas','std','two','hatchback','rwd','front',94.5,168.7,64,52.6,2300,'dohc','four',98,'mpfi',3.24,3.08,9.4,112,6600,26,29,9538),(2,134,'toyota','gas','std','two','hardtop','rwd','front',98.4,176.2,65.6,52,2540,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,8449),(2,134,'toyota','gas','std','two','hardtop','rwd','front',98.4,176.2,65.6,52,2536,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,9639),(2,134,'toyota','gas','std','two','hatchback','rwd','front',98.4,176.2,65.6,52,2551,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,9989),(2,134,'toyota','gas','std','two','hardtop','rwd','front',98.4,176.2,65.6,52,2679,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,11199),(2,134,'toyota','gas','std','two','hatchback','rwd','front',98.4,176.2,65.6,52,2714,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,11549),(2,134,'toyota','gas','std','two','convertible','rwd','front',98.4,176.2,65.6,53,2975,'ohc','four',146,'mpfi',3.62,3.5,9.3,116,4800,24,30,17669),(-1,65,'toyota','gas','std','four','sedan','fwd','front',102.4,175.6,66.5,54.9,2326,'ohc','four',122,'mpfi',3.31,3.54,8.7,92,4200,29,34,8948),(-1,65,'toyota','diesel','turbo','four','sedan','fwd','front',102.4,175.6,66.5,54.9,2480,'ohc','four',110,'idi',3.27,3.35,22.5,73,4500,30,33,10698),(-1,65,'toyota','gas','std','four','hatchback','fwd','front',102.4,175.6,66.5,53.9,2414,'ohc','four',122,'mpfi',3.31,3.54,8.7,92,4200,27,32,9988),(-1,65,'toyota','gas','std','four','sedan','fwd','front',102.4,175.6,66.5,54.9,2414,'ohc','four',122,'mpfi',3.31,3.54,8.7,92,4200,27,32,10898),(-1,65,'toyota','gas','std','four','hatchback','fwd','front',102.4,175.6,66.5,53.9,2458,'ohc','four',122,'mpfi',3.31,3.54,8.7,92,4200,27,32,11248),(3,197,'toyota','gas','std','two','hatchback','rwd','front',102.9,183.5,67.7,52,2976,'dohc','six',171,'mpfi',3.27,3.35,9.3,161,5200,20,24,16558),(3,197,'toyota','gas','std','two','hatchback','rwd','front',102.9,183.5,67.7,52,3016,'dohc','six',171,'mpfi',3.27,3.35,9.3,161,5200,19,24,15998),(-1,90,'toyota','gas','std','four','sedan','rwd','front',104.5,187.8,66.5,54.1,3131,'dohc','six',171,'mpfi',3.27,3.35,9.2,156,5200,20,24,15690),(-1,NULL,'toyota','gas','std','four','wagon','rwd','front',104.5,187.8,66.5,54.1,3151,'dohc','six',161,'mpfi',3.27,3.35,9.2,156,5200,19,24,15750),(2,122,'volkswagen','diesel','std','two','sedan','fwd','front',97.3,171.7,65.5,55.7,2261,'ohc','four',97,'idi',3.01,3.4,23,52,4800,37,46,7775),(2,122,'volkswagen','gas','std','two','sedan','fwd','front',97.3,171.7,65.5,55.7,2209,'ohc','four',109,'mpfi',3.19,3.4,9,85,5250,27,34,7975),(2,94,'volkswagen','diesel','std','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2264,'ohc','four',97,'idi',3.01,3.4,23,52,4800,37,46,7995),(2,94,'volkswagen','gas','std','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2212,'ohc','four',109,'mpfi',3.19,3.4,9,85,5250,27,34,8195),(2,94,'volkswagen','gas','std','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2275,'ohc','four',109,'mpfi',3.19,3.4,9,85,5250,27,34,8495),(2,94,'volkswagen','diesel','turbo','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2319,'ohc','four',97,'idi',3.01,3.4,23,68,4500,37,42,9495),(2,94,'volkswagen','gas','std','four','sedan','fwd','front',97.3,171.7,65.5,55.7,2300,'ohc','four',109,'mpfi',3.19,3.4,10,100,5500,26,32,9995),(3,NULL,'volkswagen','gas','std','two','convertible','fwd','front',94.5,159.3,64.2,55.6,2254,'ohc','four',109,'mpfi',3.19,3.4,8.5,90,5500,24,29,11595),(3,256,'volkswagen','gas','std','two','hatchback','fwd','front',94.5,165.7,64,51.4,2221,'ohc','four',109,'mpfi',3.19,3.4,8.5,90,5500,24,29,9980),(0,NULL,'volkswagen','gas','std','four','sedan','fwd','front',100.4,180.2,66.9,55.1,2661,'ohc','five',136,'mpfi',3.19,3.4,8.5,110,5500,19,24,13295),(0,NULL,'volkswagen','diesel','turbo','four','sedan','fwd','front',100.4,180.2,66.9,55.1,2579,'ohc','four',97,'idi',3.01,3.4,23,68,4500,33,38,13845),(0,NULL,'volkswagen','gas','std','four','wagon','fwd','front',100.4,183.1,66.9,55.1,2563,'ohc','four',109,'mpfi',3.19,3.4,9,88,5500,25,31,12290),(-2,103,'volvo','gas','std','four','sedan','rwd','front',104.3,188.8,67.2,56.2,2912,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,23,28,12940),(-1,74,'volvo','gas','std','four','wagon','rwd','front',104.3,188.8,67.2,57.5,3034,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,23,28,13415),(-2,103,'volvo','gas','std','four','sedan','rwd','front',104.3,188.8,67.2,56.2,2935,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,24,28,15985),(-1,74,'volvo','gas','std','four','wagon','rwd','front',104.3,188.8,67.2,57.5,3042,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,24,28,16515),(-2,103,'volvo','gas','turbo','four','sedan','rwd','front',104.3,188.8,67.2,56.2,3045,'ohc','four',130,'mpfi',3.62,3.15,7.5,162,5100,17,22,18420),(-1,74,'volvo','gas','turbo','four','wagon','rwd','front',104.3,188.8,67.2,57.5,3157,'ohc','four',130,'mpfi',3.62,3.15,7.5,162,5100,17,22,18950),(-1,95,'volvo','gas','std','four','sedan','rwd','front',109.1,188.8,68.9,55.5,2952,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,23,28,16845),(-1,95,'volvo','gas','turbo','four','sedan','rwd','front',109.1,188.8,68.8,55.5,3049,'ohc','four',141,'mpfi',3.78,3.15,8.7,160,5300,19,25,19045),(-1,95,'volvo','gas','std','four','sedan','rwd','front',109.1,188.8,68.9,55.5,3012,'ohcv','six',173,'mpfi',3.58,2.87,8.8,134,5500,18,23,21485),(-1,95,'volvo','diesel','turbo','four','sedan','rwd','front',109.1,188.8,68.9,55.5,3217,'ohc','six',145,'idi',3.01,3.4,23,106,4800,26,27,22470),(-1,95,'volvo','gas','turbo','four','sedan','rwd','front',109.1,188.8,68.9,55.5,3062,'ohc','four',141,'mpfi',3.78,3.15,9.5,114,5400,19,25,22625);
/*!40000 ALTER TABLE `carsTMP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'CARS'
--

--
-- Dumping routines for database 'CARS'
--
/*!50003 DROP FUNCTION IF EXISTS `cubicInchToCm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` FUNCTION `cubicInchToCm`(inch int) RETURNS double(8,2)
begin
	declare v_inch int;
    declare v_cm double;
    
    set v_inch = inch;
    
    set v_cm = v_inch / 0.061024;
    
    return round(v_cm, 2);
    
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
    
    return round(v_euro, 2);
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
  
	return round(v_m, 2);
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
    
    set v_litros = 235.21 / v_millas;
    
    return round(v_litros, 2);    

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
    
    return round(v_kg, 2);
    
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
/*!50003 DROP PROCEDURE IF EXISTS `load_car` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_car`( )
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
								inchesToCm(width), inchesToCm(height), inchesToCm(curbWeight), driveWheels, 
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
		
	end loop l_car;
        
	close c_car;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `load_engine` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_engine`()
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
/*!50003 DROP PROCEDURE IF EXISTS `load_fuelType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`alumne`@`localhost` PROCEDURE `load_fuelType`()
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

-- Dump completed on 2018-04-26 19:43:44
