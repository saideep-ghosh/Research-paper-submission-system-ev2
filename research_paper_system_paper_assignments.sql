-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: research_paper_system
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `paper_assignments`
--

DROP TABLE IF EXISTS `paper_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paper_assignments` (
  `assignment_id` int NOT NULL AUTO_INCREMENT,
  `paper_id` int DEFAULT NULL,
  `reviewer_id` int DEFAULT NULL,
  `assigned_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('assigned','completed','declined') DEFAULT 'assigned',
  PRIMARY KEY (`assignment_id`),
  KEY `paper_id` (`paper_id`),
  KEY `reviewer_id` (`reviewer_id`),
  CONSTRAINT `paper_assignments_ibfk_1` FOREIGN KEY (`paper_id`) REFERENCES `papers` (`paper_id`),
  CONSTRAINT `paper_assignments_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper_assignments`
--

LOCK TABLES `paper_assignments` WRITE;
/*!40000 ALTER TABLE `paper_assignments` DISABLE KEYS */;
INSERT INTO `paper_assignments` VALUES (1,1,6,'2025-10-22 13:17:58','completed'),(2,1,7,'2025-10-22 13:17:58','assigned'),(3,2,7,'2025-10-22 13:17:58','assigned'),(4,3,6,'2025-10-22 13:17:58','completed'),(5,3,9,'2025-10-22 13:17:58','assigned'),(6,4,6,'2025-10-22 13:17:58','completed'),(7,4,10,'2025-10-22 13:17:58','completed'),(8,5,7,'2025-10-22 13:17:58','completed'),(9,5,9,'2025-10-22 13:17:58','assigned'),(10,6,8,'2025-10-22 13:17:58','completed'),(11,7,6,'2025-10-22 13:17:58','assigned'),(12,8,7,'2025-10-22 13:17:58','assigned'),(13,8,9,'2025-10-22 13:17:58','assigned');
/*!40000 ALTER TABLE `paper_assignments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 19:17:13
