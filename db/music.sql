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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add album',7,'add_album'),(26,'Can change album',7,'change_album'),(27,'Can delete album',7,'delete_album'),(28,'Can view album',7,'view_album'),(29,'Can add song',8,'add_song'),(30,'Can change song',8,'change_song'),(31,'Can delete song',8,'delete_song'),(32,'Can view song',8,'view_song');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$aq1LbEOKdjDY$5582K0eG8Mj2YHL1XqzgXc6Vr7tziAFhTbTA/w/XeCk=','2021-01-18 22:22:12.579080',1,'admin','','','admin@example.com',1,1,'2021-01-13 12:42:56.814012');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'music','album'),(8,'music','song'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-13 12:11:09.904975'),(2,'auth','0001_initial','2021-01-13 12:11:10.140165'),(3,'admin','0001_initial','2021-01-13 12:11:10.886811'),(4,'admin','0002_logentry_remove_auto_add','2021-01-13 12:11:11.068678'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-13 12:11:11.089182'),(6,'contenttypes','0002_remove_content_type_name','2021-01-13 12:11:11.245705'),(7,'auth','0002_alter_permission_name_max_length','2021-01-13 12:11:11.323502'),(8,'auth','0003_alter_user_email_max_length','2021-01-13 12:11:11.363963'),(9,'auth','0004_alter_user_username_opts','2021-01-13 12:11:11.377617'),(10,'auth','0005_alter_user_last_login_null','2021-01-13 12:11:11.454190'),(11,'auth','0006_require_contenttypes_0002','2021-01-13 12:11:11.459936'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-13 12:11:11.479858'),(13,'auth','0008_alter_user_username_max_length','2021-01-13 12:11:11.571468'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-13 12:11:11.769835'),(15,'auth','0010_alter_group_name_max_length','2021-01-13 12:11:11.808348'),(16,'auth','0011_update_proxy_permissions','2021-01-13 12:11:11.823698'),(17,'auth','0012_alter_user_first_name_max_length','2021-01-13 12:11:11.922433'),(18,'music','0001_initial','2021-01-13 12:11:11.995568'),(19,'sessions','0001_initial','2021-01-13 12:11:12.101638'),(20,'music','0002_song_is_favorite','2021-01-14 01:25:09.155949');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('g2yuqpdvw57qnqlhqa8rmhuahbs9xoso','.eJxVjMsOwiAUBf-FtSFCgSsu3fsNzbk8pGogKe3K-O_apAvdnpk5LzFiXcq49jSPUxRnocThd2OER6obiHfUW5Oh1WWeWG6K3GmX1xbT87K7fwcFvXxrwslbCmnQ2VBSmq02mYCj92Q9gVQGDcTwyFGrzGRDdM5xMDAeTrw_3p84GA:1l1cua:T-VFl5iPFoQDg6SRPRVKbF4qvERXNZCfCFqXovJJ7oI','2021-02-01 22:22:12.585469'),('ypf5ddcn07xgbuhrx7xvifn34kj8kqyz','.eJxVjMsOwiAUBf-FtSFCgSsu3fsNzbk8pGogKe3K-O_apAvdnpk5LzFiXcq49jSPUxRnocThd2OER6obiHfUW5Oh1WWeWG6K3GmX1xbT87K7fwcFvXxrwslbCmnQ2VBSmq02mYCj92Q9gVQGDcTwyFGrzGRDdM5xMDAeTrw_3p84GA:1kzfZb:cfPyYZb69UW9W9nwWNV4yeLHFAybsrL43Lj_YxxKKlw','2021-01-27 12:48:27.147435');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `music_song`
--

DROP TABLE IF EXISTS `music_song`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `music_song` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file_type` varchar(10) NOT NULL,
  `song_title` varchar(250) NOT NULL,
  `album_id` int NOT NULL,
  `is_favorite` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `music_song_album_id_62a413c8_fk_music_album_id` (`album_id`),
  CONSTRAINT `music_song_album_id_62a413c8_fk_music_album_id` FOREIGN KEY (`album_id`) REFERENCES `music_album` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `music_song`
--

LOCK TABLES `music_song` WRITE;
/*!40000 ALTER TABLE `music_song` DISABLE KEYS */;
INSERT INTO `music_song` VALUES (1,'mp3','i hate my boy friend',1,1),(2,'mp3','BlankSpase',1,1),(3,'mp3','God Save us',2,1),(4,'mp3','i love all of boys',1,1);
/*!40000 ALTER TABLE `music_song` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 14:09:13
