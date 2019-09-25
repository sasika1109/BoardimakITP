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
-- Table structure for table `replyticket`
--

DROP TABLE IF EXISTS `replyticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `replyticket` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply_msg` varchar(255) NOT NULL,
  `replied_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`reply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replyticket`
--

LOCK TABLES `replyticket` WRITE;
/*!40000 ALTER TABLE `replyticket` DISABLE KEYS */;
INSERT INTO `replyticket` VALUES (1,1,2,'k will check it soon','2019-09-05 01:58:04'),(2,1,1,'thanks you admin','2019-09-05 01:58:16'),(3,1,2,'it k man ','2019-09-05 01:58:45'),(4,1,1,'thanks','2019-09-05 01:59:02'),(5,3,2,'you can change it from this step. go to the profile, click on password , then click change password, after you get comfirmation message, then you have to comfirm that message','2019-09-05 02:03:48'),(6,3,1,'ok i got your solution.. i will try it ','2019-09-05 02:04:31'),(7,3,2,'ok','2019-09-05 02:04:57'),(8,3,1,'ok ,,it\'s worked, thanks you very much','2019-09-05 02:05:44'),(9,3,2,'your wel come','2019-09-05 02:06:01'),(10,5,2,'i cant understand your problem..can ou repeat it','2019-09-05 02:11:10'),(11,5,1,'ok,, sorry.. i want change my  username','2019-09-05 02:11:41'),(12,44,2,'you can add your prpeerty using your profile','2019-09-05 02:17:42'),(13,44,1,'i want add pictures as well','2019-09-05 02:18:08'),(14,12,12,'you can change it using profile','2019-09-05 19:20:52'),(15,12,12,'thank you','2019-09-05 19:21:08'),(16,45,2,'you can add using your profile\r\n','2019-09-05 20:14:57'),(17,45,1,'Can you give me a  adding method','2019-09-05 20:15:31'),(18,45,2,'firstly go to your profile then cliick add property, then fill the form,, then click add button','2019-09-05 20:16:38'),(19,45,1,'can i  upload photos','2019-09-05 20:17:05'),(20,45,2,'yr, you can add photos by clicking  upload photos','2019-09-05 20:17:36'),(21,45,1,'thanks you','2019-09-05 21:28:01'),(22,46,2,'You can change it using setting....','2019-09-05 21:54:53'),(23,46,1,'can you tell me steps to do it..i tried many time to it, but i couldn\'t it.. please help me to resolve this. thank you.','2019-09-05 22:01:00'),(24,47,2,'elama bn mn gaththa','2019-09-06 11:33:24'),(25,47,1,'thanks admin','2019-09-06 11:33:40'),(26,47,2,'your wellcome','2019-09-06 11:42:45'),(27,48,2,'you can add property using setting ','2019-09-06 12:03:00'),(28,48,1,'can you give me a step to do it','2019-09-06 12:03:34'),(29,50,2,'Go to the profile setting and press click on edit button, then you can edit your profile detals','2019-09-09 09:09:40'),(30,51,2,'you can reset your profile details..firstly you have to go to your proflile,then click on edit my profile..then you can edit your detals','2019-09-13 14:43:51'),(31,62,2,'Ok. i get your problem.. you can add profile picture by use these step.. firstly you go to the  profile..then click on edit profile.. then click on the update profile picure..','2019-09-13 20:38:30'),(32,62,1,'Ok. thank you i will do it.. thanks for your responds','2019-09-13 20:40:04'),(33,62,2,'Ok.You are welcome\r\n','2019-09-20 18:25:04'),(34,52,2,'you can reset it using profile','2019-09-25 23:48:40');
/*!40000 ALTER TABLE `replyticket` ENABLE KEYS */;
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
