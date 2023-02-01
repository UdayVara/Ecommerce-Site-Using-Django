-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-11-16 04:53:34.647535'),(2,'auth','0001_initial','2022-11-16 04:53:35.112954'),(3,'admin','0001_initial','2022-11-16 04:53:35.255394'),(4,'admin','0002_logentry_remove_auto_add','2022-11-16 04:53:35.263554'),(5,'admin','0003_logentry_add_action_flag_choices','2022-11-16 04:53:35.271576'),(6,'contenttypes','0002_remove_content_type_name','2022-11-16 04:53:35.359617'),(7,'auth','0002_alter_permission_name_max_length','2022-11-16 04:53:35.439717'),(8,'auth','0003_alter_user_email_max_length','2022-11-16 04:53:35.471405'),(9,'auth','0004_alter_user_username_opts','2022-11-16 04:53:35.479419'),(10,'auth','0005_alter_user_last_login_null','2022-11-16 04:53:35.575539'),(11,'auth','0006_require_contenttypes_0002','2022-11-16 04:53:35.583582'),(12,'auth','0007_alter_validators_add_error_messages','2022-11-16 04:53:35.591465'),(13,'auth','0008_alter_user_username_max_length','2022-11-16 04:53:35.663508'),(14,'auth','0009_alter_user_last_name_max_length','2022-11-16 04:53:35.735614'),(15,'auth','0010_alter_group_name_max_length','2022-11-16 04:53:35.767644'),(16,'auth','0011_update_proxy_permissions','2022-11-16 04:53:35.775673'),(17,'auth','0012_alter_user_first_name_max_length','2022-11-16 04:53:35.847680'),(18,'sessions','0001_initial','2022-11-16 04:53:35.895745'),(19,'store','0001_initial','2022-11-16 04:59:43.587383'),(20,'store','0002_brand_brandprimecolour_brand_brandsecondarycolour_and_more','2022-11-16 05:51:43.104776'),(21,'store','0003_alter_brand_branddescription','2022-11-16 12:51:21.619668'),(22,'store','0004_alter_brand_branddescription','2022-11-16 12:54:59.785542'),(23,'store','0005_productvariant_product','2022-11-16 13:27:30.074049'),(24,'store','0006_product_discount_product_mrp_product_price_and_more','2022-11-16 13:51:29.361148'),(25,'store','0007_alter_product_unique_together','2022-11-17 11:56:15.565979'),(26,'store','0008_remove_product_price','2022-11-17 12:01:51.464268'),(27,'store','0009_alter_product_unique_together','2022-11-17 12:20:32.689112'),(28,'store','0010_product_sellprice','2022-11-19 10:49:45.324269'),(29,'store','0011_remove_product_sellprice','2022-11-19 12:37:05.922854'),(30,'store','0012_user','2022-11-22 12:12:30.301672'),(31,'store','0013_user_shippingaddress_alter_user_userid','2022-11-22 12:33:00.757745'),(32,'store','0014_user_pincode','2022-11-22 12:34:32.935075'),(33,'store','0015_userinfo_delete_user','2022-11-22 13:30:04.098503'),(34,'store','0016_userinfo_profileimage','2022-11-23 15:22:31.759153'),(35,'store','0017_cartitem','2022-11-25 12:25:34.066636');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-01 15:27:06
