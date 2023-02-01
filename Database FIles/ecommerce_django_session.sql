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
INSERT INTO `django_session` VALUES ('43bqdqfjmzkaeqjge3wf0q4ckvfph7kq','.eJxVjEEOwiAQRe_C2hApDENduvcMZGBGqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVSRh1-t0T5IXUDfKd6azq3usxT0puid9r1pbE8z7v7d1Col28NBoJ3PocwYDIWcAArI1rgoyd0BAG8AzQoIkTZpzFxQmsRPPE1s3p_AKdgN1o:1ozTrG:27rOTESqVnnUzx9L_av4w3vkGnVcTNtT_uAyXL8zwKw','2022-12-12 02:26:58.869807'),('rtqz8wwtjlojbst748r5j4ifgeamdofw','eyJ1c2VyIjoiZTNlZGFhZDktODhkZC00ZWM1LWIxN2UtMmQ2NWQ3OGVlOTkxIn0:1oyDgr:Rkb-SwQoFy8e0tFmcu2gSXD56Xo7LpBfv9Eg_chVLyU','2022-12-08 14:59:01.415861'),('s2loh1wz7ksfiep1n0edmnusq59cybuq','eyJ1c2VyIjoiZTNlZGFhZDktODhkZC00ZWM1LWIxN2UtMmQ2NWQ3OGVlOTkxIn0:1p6oBO:dPrwFVkaY_Xyza7t384cvb661C_RPr-A5OD_ZtKQkFU','2023-01-01 07:34:02.804342'),('vhlfkm8701cf7mjy9nr94e6b1pin8diz','.eJxVjs0KwjAQhN8lZwmm6WZTT-LdZyib7NpW2wb6I4j47jbQg17nm_mYt6ppXdp6nWWqO1YnZdThNwsUHzJmwHcam6RjGpepCzpX9E5nfU0s_WXv_glamtttDQa8K130vsBgLGABViq0wEdHWBJ4cCWgQREhii5UgQNai-CIbzFLs24zPWmilenF52agrt8ODerzBX0FQX8:1oyBb4:wu1NjdNbPRZo-S1W4RooOp0nA1fl_XbHR02ayfm7mDA','2022-12-08 12:44:54.256962'),('zpsimbf5svuzwav208r40gyvldqzu8qk','.eJxVjEEOwiAQRe_C2hApDENduvcMZGBGqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVSRh1-t0T5IXUDfKd6azq3usxT0puid9r1pbE8z7v7d1Col28NBoJ3PocwYDIWcAArI1rgoyd0BAG8AzQoIkTZpzFxQmsRPPE1s3p_AKdgN1o:1pBGEg:dLG1PlfAoB8RkmW1MdnNse0XR5_dfMN7U6_xAWCUxa0','2023-01-13 14:19:50.766933');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-01 15:27:05
