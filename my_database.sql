-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: my_database
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assets` (
  `a_no` int NOT NULL AUTO_INCREMENT,
  `a_time` varchar(19) NOT NULL,
  `a_location` varchar(255) NOT NULL,
  `a_category` varchar(255) NOT NULL,
  `a_amount` decimal(10,2) NOT NULL,
  `a_memo` text,
  `group_id` varchar(255) NOT NULL,
  `a_date` date DEFAULT NULL,
  PRIMARY KEY (`a_no`),
  KEY `fk_assets_group` (`group_id`),
  CONSTRAINT `fk_assets_group` FOREIGN KEY (`group_id`) REFERENCES `members` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'08:42','투썸플레이스','카페',9000.00,'','Group1','2023-11-06'),(2,'10:30','영화관','여가',15000.00,'영화 \"스파이더맨\" 관람','Group1','2023-11-10'),(3,'12:00','버거킹','식당',12000.00,'점심 식사','Group1','2023-11-15'),(4,'15:45','쇼핑몰','쇼핑',50000.00,'의류 및 액세서리 구매','Group1','2023-11-20'),(5,'18:30','헬스장','운동',30000.00,'월회비','Group1','2023-11-25'),(6,'08:53','스타벅스','카페',12000.00,'','Group1','2023-12-06'),(7,'06:53','버거킹','식당',10000.00,'','Group1','2023-12-08'),(8,'13:45','세븐일레븐','편의점',4500.00,'','Group1','2023-12-06'),(9,'12:00','영화관','여가',15000.00,'영화 \"매트릭스 4\" 관람','Group1','2023-12-15'),(10,'18:30','쇼핑몰','쇼핑',80000.00,'전자제품 구매','Group1','2023-12-20'),(11,'20:00','마트','기타',30000.00,'식료품 구매','Group1','2023-12-22');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `m_no` int NOT NULL AUTO_INCREMENT,
  `m_id` varchar(255) NOT NULL,
  `m_pw` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_gender` varchar(10) DEFAULT NULL,
  `m_email` varchar(255) DEFAULT NULL,
  `m_phone` varchar(20) DEFAULT NULL,
  `m_reg_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `m_mod_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `group_id` varchar(255) NOT NULL,
  PRIMARY KEY (`m_no`),
  KEY `idx_group_id` (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (29,'mem1','1111','김하나','Woman','mem1@gmail.com','01011111111','2023-12-10 12:47:20','2023-12-10 12:47:20','Group1'),(30,'mem2','2222','이두리','Man','mem2@gmail.com','987-654-3210','2023-12-10 12:47:20','2023-12-10 12:47:20','Group1');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-10 21:51:04
