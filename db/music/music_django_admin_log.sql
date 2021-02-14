-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: music
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-01-14 00:40:55.601908','1','Red - Taylor Swift',2,'[]',7,1),(2,'2021-01-14 00:43:51.542989','1','Red - Taylor Swift',2,'[{\"changed\": {\"fields\": [\"Album logo\"]}}]',7,1),(3,'2021-01-14 01:07:12.976343','2','Dele Kafar - MmdReza Shajarian',2,'[{\"changed\": {\"fields\": [\"Album logo\"]}}]',7,1),(4,'2021-01-14 01:08:40.738672','2','Dele Kafar - MmdReza Shajarian',2,'[{\"changed\": {\"fields\": [\"Album logo\"]}}]',7,1),(5,'2021-01-17 01:05:26.481664','2','BlankSpase',1,'[{\"added\": {}}]',8,1),(6,'2021-01-17 01:05:50.124052','3','God Save us',1,'[{\"added\": {}}]',8,1),(7,'2021-01-17 01:06:13.045822','4','i love all of boys',1,'[{\"added\": {}}]',8,1),(8,'2021-01-17 01:15:50.290779','2','Dele Kafar - MmdReza Shajarian',2,'[{\"changed\": {\"fields\": [\"Album logo\"]}}]',7,1),(9,'2021-01-17 01:28:35.350680','1','Red - Taylor Swift',2,'[{\"changed\": {\"fields\": [\"Album logo\"]}}]',7,1),(10,'2021-01-17 01:30:09.729261','2','Dele Kafar - MmdReza Shajarian',2,'[{\"changed\": {\"fields\": [\"Album logo\"]}}]',7,1),(11,'2021-01-17 02:01:58.268412','4','i love all of boys',2,'[{\"changed\": {\"fields\": [\"Is favorite\"]}}]',8,1),(12,'2021-01-17 02:02:12.493692','2','BlankSpase',2,'[]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 14:08:05
