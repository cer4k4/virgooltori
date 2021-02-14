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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add category',7,'add_category'),(26,'Can change category',7,'change_category'),(27,'Can delete category',7,'delete_category'),(28,'Can view category',7,'view_category'),(29,'Can add user',8,'add_user'),(30,'Can change user',8,'change_user'),(31,'Can delete user',8,'delete_user'),(32,'Can view user',8,'view_user'),(33,'Can add post',9,'add_post'),(34,'Can change post',9,'change_post'),(35,'Can delete post',9,'delete_post'),(36,'Can view post',9,'view_post');
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
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$9lzhGHTfgr1F$azFN/+8iA626kQjizZxLGZb0CrSfny7IhHl1Vej7edI=','2021-01-19 14:24:21.156427',1,'admin','','','admin@example.com',1,1,'2021-01-19 14:20:04.834765');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'virgool','category'),(9,'virgool','post'),(8,'virgool','user');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-19 13:31:36.662667'),(2,'auth','0001_initial','2021-01-19 13:31:36.881869'),(3,'admin','0001_initial','2021-01-19 13:31:37.625836'),(4,'admin','0002_logentry_remove_auto_add','2021-01-19 13:31:37.811150'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-19 13:31:37.837561'),(6,'contenttypes','0002_remove_content_type_name','2021-01-19 13:31:37.974035'),(7,'auth','0002_alter_permission_name_max_length','2021-01-19 13:31:38.061662'),(8,'auth','0003_alter_user_email_max_length','2021-01-19 13:31:38.111465'),(9,'auth','0004_alter_user_username_opts','2021-01-19 13:31:38.125129'),(10,'auth','0005_alter_user_last_login_null','2021-01-19 13:31:38.194055'),(11,'auth','0006_require_contenttypes_0002','2021-01-19 13:31:38.200141'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-19 13:31:38.222758'),(13,'auth','0008_alter_user_username_max_length','2021-01-19 13:31:38.306487'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-19 13:31:38.398336'),(15,'auth','0010_alter_group_name_max_length','2021-01-19 13:31:38.440550'),(16,'auth','0011_update_proxy_permissions','2021-01-19 13:31:38.455059'),(17,'auth','0012_alter_user_first_name_max_length','2021-01-19 13:31:38.538634'),(18,'sessions','0001_initial','2021-01-19 13:31:38.578825'),(19,'virgool','0001_initial','2021-01-19 13:31:38.707954');
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
INSERT INTO `django_session` VALUES ('l6pya51s45i98n5c0z1yl44i24kcidrq','.eJxVjMsOwiAQRf-FtSHQYRBcuu83kBkeUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSpiQuQovT78YUH7ntIN2p3WYZ57YuE8tdkQftcpxTfl4P9--gUq_f2ihEKHkgSIoxg3WeDIJVThtgPejiMHr2RCUS6RT92ZhiuQAzO8zi_QHQyTgo:1l20PU:01IRjarWHEwOA7SYTc6L0mVRdGp9I8Or8vGS7ow_2lM','2021-02-02 23:27:40.389907');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgool_category`
--

DROP TABLE IF EXISTS `virgool_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virgool_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgool_category`
--

LOCK TABLES `virgool_category` WRITE;
/*!40000 ALTER TABLE `virgool_category` DISABLE KEYS */;
INSERT INTO `virgool_category` VALUES (1,'food','https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg'),(2,'car','https://www.motortrend.com/uploads/sites/11/2020/03/Koenigsegg-Gemera-10.jpg'),(3,'programming','https://miro.medium.com/max/12032/0*Fu_vcP7P_uHF1Szk');
/*!40000 ALTER TABLE `virgool_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgool_post`
--

DROP TABLE IF EXISTS `virgool_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virgool_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `header` varchar(20) NOT NULL,
  `detail` varchar(10000) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `author_id` int NOT NULL,
  `sub_title_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `virgool_post_author_id_4f28fd8e_fk_virgool_user_id` (`author_id`),
  KEY `virgool_post_sub_title_id_0fdb4bd3_fk_virgool_category_id` (`sub_title_id`),
  CONSTRAINT `virgool_post_author_id_4f28fd8e_fk_virgool_user_id` FOREIGN KEY (`author_id`) REFERENCES `virgool_user` (`id`),
  CONSTRAINT `virgool_post_sub_title_id_0fdb4bd3_fk_virgool_category_id` FOREIGN KEY (`sub_title_id`) REFERENCES `virgool_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgool_post`
--

LOCK TABLES `virgool_post` WRITE;
/*!40000 ALTER TABLE `virgool_post` DISABLE KEYS */;
INSERT INTO `virgool_post` VALUES (1,'قرمه سبزی','قرمه سبزی یک غذای کاملا خوشمزه اصیل است که هر کی خورده مشتری شده وقت کردی دستور العمل اش رو یاد بگیر','https://blog.okala.com/wp-content/uploads/2020/09/%D9%82%D9%88%D8%B1%D9%85%D9%87-%D8%B3%D8%A8%D8%B2%DB%8C.jpg',1,1),(2,'(; پراید شد 90 میلیو','حالا چپ و راست برید بخرید بابا خود مدیر عاملاش موندن با همه پولشون چی کار چرا هی براشون دغدغه درست میکنید','https://fararu.com/files/fa/news/1399/10/30/848858_140.jpg',1,2),(3,'غذا مگه بدم میشه!!!','نخیر','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9vuIKKkmTWdGrc227NQ5-O1q8j3s9KInnXQ&usqp=CAU',1,1),(4,'بی ام و','نمیدونم چرا بی ام و همش در حال تولید کردن یه سری ماشین که هی داره جلو پنجرش بزرگ میشه','https://s1.cdn.autoevolution.com/images/gallery/BMW-X7-6431_35.jpg',1,2),(5,'who watches the watc','شاید این ایده به نظر خیلی بدیهی برسه و بگید که خب مگه الآن غیر از اینه؟ ولی با نهایت تأسّف باید گفت که در بسیاری از حوزه‌های علوم، مخصوصاً بحث‌های عملی داریم در جهتی خلاف این مسیر حرکت می‌کنیم. امروزه شاهد این هستیم که نهادهای دارای سرمایه‌ی سنّتی یعنی پول به درستی فهمیدن که دانش سرمایه‌‌ی اصلیه و دارن به سمتی می‌رن که بتونن با پولی که دارن دانش بخرن و خب طبق عادتی که در نگهداری پول داشتن به دنیال راهی برای این هستن که بتونن سرمایه‌ای که به دست می‌آرن یعنی دانش رو نزد خودشون به صورت امن نگه دارن تا هیچ‌کس دیگه‌ای نتونه از اون استفاده کنه. نتیجه‌ی این امر می‌شه این که با استفاده از قدرت و نفوذشون قوانینی رو تصویب می‌کنن که به اون‌ها اجازه‌ی انحصار دانش رو بده. از میان این قوانین دست‌ساز غیر عادلانه و به نظر من غیر انسانی می‌شه به قانون حق رونوشت (کپی‌رایت) یا قانون جدیتر و ضدانسانی‌تر حمایت از ایده‌ها (پتنت) اشاره کرد. این قوانین از نظر من به صورت مستقیم به ضرر جامعه هستند و باید به هر شکل ممکن با اون‌ها مبارزه کرد. یکی از مصادیق بارز مبارزه با ایده‌ی انحصار دانش، «ویکی‌پدیا»ست که داره دانش رو به صورت آزاد و بدون هیچ وابستگی‌ای در دست‌رس همگان قرار می‌ده','https://usesthis.ir/wp-content/uploads/2014/11/happy-linux-fans-3-danial.jpg',2,3),(6,'!!!امدنم بحر چه بود','هیچی باو الکی شلوغش میکنید تنها بودم اومدم اومدم اومدم سر کوچتون در خونتون خونه نبودی بگو بگو راس بگو  کجا رفته بودی','https://avatars2.githubusercontent.com/u/66449436?s=400&u=e411f2e331d8345a4de306d561e975e0fcc7bd78&v=4',1,3);
/*!40000 ALTER TABLE `virgool_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virgool_user`
--

DROP TABLE IF EXISTS `virgool_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `virgool_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `age` varchar(3) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(14) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virgool_user`
--

LOCK TABLES `virgool_user` WRITE;
/*!40000 ALTER TABLE `virgool_user` DISABLE KEYS */;
INSERT INTO `virgool_user` VALUES (1,'Ali','Karimi','21','','AkA','','',''),(2,'danial','behzadi','26','https://thumbor.jjcloud.ir/3Tt5lOzrZz-GaegbsyFtrNJ_xqA=/256x256/filters:strip_exif():format(jpeg)/https://storage.jjcloud.ir/other/js_avatar_image_blob/7/5/9/566218-75901fb715add0ebd497c20792866b8f3072a757/1_main.png','danibezi','21324586','danibezi@ubuntu.com','091212345678');
/*!40000 ALTER TABLE `virgool_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 14:10:23
