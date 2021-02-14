-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: virgool
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-01-19 15:35:28.190790','1',' food',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(2,'2021-01-19 16:52:11.829189','1','https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg food',2,'[]',7,1),(3,'2021-01-19 16:53:59.460350','2','https://www.motortrend.com/uploads/sites/11/2020/03/Koenigsegg-Gemera-10.jpg car',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(4,'2021-01-19 16:55:08.234105','2','https://www.motortrend.com/uploads/sites/11/2020/03/Koenigsegg-Gemera-10.jpg car',2,'[]',7,1),(5,'2021-01-19 16:58:41.749795','3','https://miro.medium.com/max/12032/0*Fu_vcP7P_uHF1Szk programming',1,'[{\"added\": {}}]',7,1),(6,'2021-01-19 22:51:27.553052','1','https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg\nfood',2,'[]',7,1),(7,'2021-01-19 22:51:40.595014','3','غذا مگه بدم میشه!!!\nنخیر',1,'[{\"added\": {}}]',9,1),(8,'2021-01-19 22:51:47.705198','3','غذا مگه بدم میشه!!!\nنخیر',2,'[]',9,1),(9,'2021-01-19 22:57:47.974600','1','قرمه سبزی\nقرمه سبزی یک غذای کاملا خوشمزه اصیل است که هر کی خورده مشتری شده وقت کردی دستور العمل اش رو یاد بگیر',2,'[{\"changed\": {\"fields\": [\"Header\", \"Detail\", \"Image\"]}}]',9,1),(10,'2021-01-19 23:00:14.537108','3','غذا مگه بدم میشه!!!\nنخیر',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(11,'2021-01-19 23:03:33.060239','4','بی ام و\nنمیدونم چرا بی ام و همش در حال تولید کردن',1,'[{\"added\": {}}]',9,1),(12,'2021-01-19 23:04:08.982819','4','بی ام و\nنمیدونم چرا بی ام و همش در حال تولید کردن یه سری ماشین که هی داره جلو پنجرش بزرگ میشه',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',9,1),(13,'2021-01-19 23:05:20.259289','4','بی ام و\nنمیدونم چرا بی ام و همش در حال تولید کردن یه سری ماشین که هی داره جلو پنجرش بزرگ میشه',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',9,1),(14,'2021-01-19 23:09:59.244663','2','(; پراید شد 90 میلیو\nحالا چپ و راست برید بخرید بابا خود مدیر عاملاش موندن با همه پولشون چی کار چرا هی براشون دغدغه درست میکنید',2,'[{\"changed\": {\"fields\": [\"Header\", \"Detail\", \"Image\"]}}]',9,1),(15,'2021-01-19 23:16:36.455170','2','User object (2)',1,'[{\"added\": {}}]',8,1),(16,'2021-01-19 23:27:40.300944','5','who watches the watc\nشاید این ایده به نظر خیلی بدیهی برسه و بگید که خب مگه الآن غیر از اینه؟ ولی با نهایت تأسّف باید گفت که در بسیاری از حوزه‌های علوم، مخصوصاً بحث‌های عملی داریم در جهتی خلاف این مسیر',1,'[{\"added\": {}}]',9,1),(17,'2021-01-19 23:32:26.922453','6','!!!امدنم بحر چه بود\nهیچی باو الکی شلوغش میکنید تنها بودم امدم با هم باشیم هم تنهایی در میومدم هم',1,'[{\"added\": {}}]',9,1),(18,'2021-01-19 23:33:54.527687','6','!!!امدنم بحر چه بود\nهیچی باو الکی شلوغش میکنید تنها بودم اومدم اومدم اومدم سر کوچتون در خونتون خونه نبودی بگو بگو راس بگو کجا رفته بودی',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',9,1),(19,'2021-01-19 23:34:39.797442','6','!!!امدنم بحر چه بود\nهیچی باو الکی شلوغش میکنید تنها بودم اومدم اومدم اومدم سر کوچتون در خونتون خونه نبودی بگو بگو راس بگو بگو کجا رفته بودی',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',9,1),(20,'2021-01-19 23:35:25.792038','6','!!!امدنم بحر چه بود\nهیچی باو الکی شلوغش میکنید تنها بودم اومدم اومدم اومدم سر کوچتون در خونتون خونه نبودی بگو بگو راس بگو  کجا رفته بودی',2,'[{\"changed\": {\"fields\": [\"Detail\"]}}]',9,1);
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

-- Dump completed on 2021-01-21 14:10:44
