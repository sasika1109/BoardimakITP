-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: boarding_booking
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` varchar(45) NOT NULL,
  `created_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ticket_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (0,'username','change my username','sasika','sashi@gmail.com','Open','2019-08-29 13:28:48'),(1,'username','ghfc','sasika','sashi@gmail.com','Resloved','2019-09-05 01:33:18'),(2,'username','i want change my username.How can i do it','sasika ','sashi@gmail.com','Resloved','2019-09-04 20:44:42'),(3,'password','i want change my password, how can do it. i tried many times to do it..please help me to do it,','sasika','sashi@gmail.com','Pending','2019-09-05 02:06:37'),(12,'username','how can change it................','sasika','safhkan@gmail.com','Resloved','2019-09-05 19:20:39'),(45,'property','how can add my property','sasika','sashi@gmail.com','Pending','2019-09-20 18:24:06'),(46,'username','how can change my password','sasika','sashi@gmail.com','Resloved','2019-09-05 22:11:59'),(48,'property','I want to add new property to the  system ..how can do it .i want your help','sasika','sasika951109@gmail.com','Resloved','2019-09-06 12:03:04'),(49,'username','How reset my All my user profile details','Ayesha','ayesha@gmail.com','Open','2019-09-09 09:08:24'),(50,'username','How reset my All my user profile details','Ayesha','ayesha@gmail.com','Pending','2019-09-09 09:08:54'),(51,'username','How reset my All my user profile details','Ayesha','ayesha@gmail.com','Pending','2019-09-13 14:45:57'),(52,'username','How reset my All my user profile details','Ayesha','ayesha@gmail.com','Resloved','2019-09-25 23:48:48'),(62,'profile picure','r Administor,I want to add profile picture..i tried many time to do it.. How can i do it.. i want your help? thanks you','sasika','sashi951109@gmail.com','Pending','2019-09-13 21:15:30'),(63,'property','I want add new property to this system.. how can i do it\r\n','sasika','sashi@gmail.com','Open','2019-09-20 18:26:03');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-25 23:52:33
