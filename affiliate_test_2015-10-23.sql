-- MySQL dump 10.13  Distrib 5.5.37, for Linux (x86_64)
--
-- Host: localhost    Database: affiliate_test
-- ------------------------------------------------------
-- Server version	5.5.37

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
-- Table structure for table `aff_payment`
--

DROP TABLE IF EXISTS `aff_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aff_payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aff_id` int(11) NOT NULL,
  `payment_date` varchar(50) NOT NULL,
  `payment_amount` double NOT NULL,
  `smonth` int(11) NOT NULL,
  `syear` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aff_payment`
--

LOCK TABLES `aff_payment` WRITE;
/*!40000 ALTER TABLE `aff_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `aff_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `affiliate`
--

DROP TABLE IF EXISTS `affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affiliate` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `current_amount` double NOT NULL,
  `total_amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affiliate`
--

LOCK TABLES `affiliate` WRITE;
/*!40000 ALTER TABLE `affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_seq`
--

DROP TABLE IF EXISTS `app_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_seq` (
  `last_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_seq`
--

LOCK TABLES `app_seq` WRITE;
/*!40000 ALTER TABLE `app_seq` DISABLE KEYS */;
INSERT INTO `app_seq` VALUES (1000);
/*!40000 ALTER TABLE `app_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inc_amount`
--

DROP TABLE IF EXISTS `inc_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inc_amount` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `start_amount` int(11) NOT NULL,
  `end_amount` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inc_amount`
--

LOCK TABLES `inc_amount` WRITE;
/*!40000 ALTER TABLE `inc_amount` DISABLE KEYS */;
INSERT INTO `inc_amount` VALUES (1,1,1000,3),(2,1001,2000,4),(3,2001,3000,5);
/*!40000 ALTER TABLE `inc_amount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sold_item`
--

DROP TABLE IF EXISTS `sold_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sold_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aff_id` int(11) NOT NULL,
  `sold_amount` double NOT NULL,
  `aff_amount` double NOT NULL,
  `sold_date` varchar(50) NOT NULL,
  `smonth` int(11) NOT NULL,
  `syear` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_item`
--

LOCK TABLES `sold_item` WRITE;
/*!40000 ALTER TABLE `sold_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `sold_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-23 18:28:00
