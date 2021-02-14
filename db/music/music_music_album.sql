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
-- Table structure for table `music_album`
--

DROP TABLE IF EXISTS `music_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_album` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artist` varchar(250) NOT NULL,
  `album_title` varchar(500) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `album_logo` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_album`
--

LOCK TABLES `music_album` WRITE;
/*!40000 ALTER TABLE `music_album` DISABLE KEYS */;
INSERT INTO `music_album` VALUES (1,'Taylor Swift','Red','Country','https://www.irishtimes.com/polopoly_fs/1.3520128.1528206115!/image/image.jpg_gen/derivatives/box_620_330/image.jpg'),(2,'MmdReza Shajarian','Dele Kafar','Relaxing','https://eslahatnews.com/wp-content/uploads/2016/09/ostad-shajarian-2.jpg'),(3,'amirali','aka vared mishavad','jenaeiii','https://www.google.com/url?sa=i&url=https%3A%2F%2Fponisha.ir%2Fprofile%2Fcer4k4&psig=AOvVaw02SVrltPLMuiyIHL26ux_o&ust=1611084977314000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMj1y8Gdpu4CFQAAAAAdAAAAABAD'),(4,'amirali','aka vared mishavad','jenaeiii','https://www.google.com/url?sa=i&url=https%3A%2F%2Fponisha.ir%2Fprofile%2Fcer4k4&psig=AOvVaw02SVrltPLMuiyIHL26ux_o&ust=1611084977314000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMj1y8Gdpu4CFQAAAAAdAAAAABAD'),(5,'amirali','aka vared mishavad','aasdsacxs','https://www.google.com/url?sa=i&url=https%3A%2F%2Fponisha.ir%2Fprofile%2Fcer4k4&psig=AOvVaw02SVrltPLMuiyIHL26ux_o&ust=1611084977314000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCMj1y8Gdpu4CFQAAAAAdAAAAABAD'),(6,'asqar farhadi','man bi to','ejtemaeii','https://variety.com/wp-content/uploads/2013/12/asghar-farhadi.jpg?resize=450,253');
/*!40000 ALTER TABLE `music_album` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 14:08:06
