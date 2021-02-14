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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21 14:10:44
