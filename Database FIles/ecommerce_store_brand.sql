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
-- Table structure for table `store_brand`
--

DROP TABLE IF EXISTS `store_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_brand` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brandName` varchar(50) NOT NULL,
  `brandImage` varchar(100) NOT NULL,
  `brandDescription` longtext NOT NULL,
  `brandPrimeColour` varchar(20) NOT NULL,
  `brandSecondaryColour` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `brandName` (`brandName`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_brand`
--

LOCK TABLES `store_brand` WRITE;
/*!40000 ALTER TABLE `store_brand` DISABLE KEYS */;
INSERT INTO `store_brand` VALUES (1,'oppo','brand/oppo.png','Guangdong Oppo Mobile Telecommunications Corp., Ltd, doing business as OPPO,[a] is a Chinese consumer electronics manufacturer headquartered in Dongguan, Guangdong. Its major product lines include smartphones, smart devices, audio devices, power banks, and other electronic products.In 2021, the WIPO\'s annual review of the World Intellectual Property Indicators report ranked Oppo as 8th in the world according to the number of patent applications published under the PCT System, with 1,801 patent applications being published during 2020.[18] This position is down from their previous ranking as 5th in 2019 with 1,927 applications.[19]','success','dark'),(2,'vivo','brand/vivo.png','Vivo Communication Technology Co. Ltd., (styled as vivo), is a Chinese multinational technology company headquartered in Dongguan, Guangdong that designs and develops smartphones, smartphone accessories, software and online services. The company develops software for its phones, distributed through its V-Appstore, with iManager included in their proprietary, Android-based operating system, Origin OS in Mainland China, and Funtouch OS elsewhere. Vivo is an independent company and develops its own products. It has 10,000 employees, with research and development centers in Shenzhen, Guangdong, and Nanjing, Jiangsu.[3]','light','primary'),(3,'apple','brand/apple.png','The iPhone is a line of smartphones designed and marketed by Apple Inc. These devices use Apple\'s iOS mobile operating system. The first-generation iPhone was announced by then-Apple CEO Steve Jobs on January 9, 2007. Since then, Apple has annually released new iPhone models and iOS updates. As of November 1, 2018, more than 2.2 billion iPhones had been sold. As of 2022, the iPhone accounts for 15.6% of global smartphone market share.[3]','dark','light'),(4,'samsung','brand/samsung.png','The iPhone is a line of smartphones designed and marketed by Apple Inc. These devices use Apple\'s iOS mobile operating system. The first-generation iPhone was announced by then-Apple CEO Steve Jobs on January 9, 2007. Since then, Apple has annually released new iPhone models and iOS updates. As of November 1, 2018, more than 2.2 billion iPhones had been sold. As of 2022, the iPhone accounts for 15.6% of global smartphone market share.[3]','primary','dark'),(5,'realme','brand/realme.png','Realme is a Chinese smartphone company established on May 4, 2018 (National Youth Day of China), by former Oppo vice-president and head of overseas business department, Sky Li. The company was initially set up as a sub-brand of BKK Electronics\' Oppo Mobiles but later incorporated as an independent entity.','dark','warning'),(6,'oneplus','brand/oneplus.png','A China-based manufacturer of Android smartphones. Introduced in 2014, OnePlus models are unlocked Android smartphones with quad-core Snapdragon CPUs and up to 8GB RAM that initially ran the Cyanogen version of Android (Cyanogen was later replaced with the company\'s own Android-based OxygenOS). See CyanogenMod.','danger','dark'),(7,'google','brand/pixel.png','Google Pixel is a brand of consumer electronic devices developed by Google that run either ChromeOS or the Android operating system. The Pixel brand was introduced in February 2013 with the first-generation Chromebook Pixel. The Pixel line includes laptops, tablets, and smartphones, as well as several accessories.','dark','light');
/*!40000 ALTER TABLE `store_brand` ENABLE KEYS */;
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
