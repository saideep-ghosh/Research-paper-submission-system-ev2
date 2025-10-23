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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `role` enum('author','reviewer','admin') NOT NULL,
  `affiliation` varchar(100) DEFAULT NULL,
  `expertise_area` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin@university.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','System','Administrator','admin','University',NULL,'2025-10-22 08:09:49'),(2,'admin2','admin2@university.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Jennifer','Wilson','admin','University Administration',NULL,'2025-10-22 13:17:58'),(3,'author1','john.researcher@tech.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','John','Zhang','author','Tech University',NULL,'2025-10-22 13:17:58'),(4,'author2','sarah.smith@science.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Sarah','Smith','author','Science Institute',NULL,'2025-10-22 13:17:58'),(5,'author3','mike.johnson@eng.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Michael','Johnson','author','Engineering College',NULL,'2025-10-22 13:17:58'),(6,'author4','emily.chen@research.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Emily','Chen','author','Research University',NULL,'2025-10-22 13:17:58'),(7,'reviewer1','dr.sarah.expert@ai.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Dr. Sarah','Expert','reviewer','AI Research Lab','Machine Learning, Deep Learning, Neural Networks','2025-10-22 13:17:58'),(8,'reviewer2','prof.michael.scientist@db.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Prof. Michael','Scientist','reviewer','Database Systems Department','Database Management, Distributed Systems, Query Optimization','2025-10-22 13:17:58'),(9,'reviewer3','dr.david.wang@se.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Dr. David','Wang','reviewer','Software Engineering Institute','Software Development, Agile Methodologies, Testing','2025-10-22 13:17:58'),(10,'reviewer4','prof.lisa.garcia@security.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Prof. Lisa','Garcia','reviewer','Cybersecurity Research Center','Network Security, Cryptography, Data Privacy','2025-10-22 13:17:58'),(11,'reviewer5','dr.robert.kim@nlp.edu','$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','Dr. Robert','Kim','reviewer','Computational Linguistics Lab','Natural Language Processing, Text Mining, AI Ethics','2025-10-22 13:17:58'),(12,'saghosh','ghoshsaideep@gmail.com','$2y$10$SK3wxeDwy8iN4GmdSG/VLO5LvSJaaXT2RIe1yAgttfs/LyKSzWWqS','Saideep','Ghosh','author','BTech',NULL,'2025-10-22 16:45:58'),(17,'saghosvg','abhijit1371@gmail.com','$2y$10$kO1Rhx6EFqA94etogMa5ZOYHGYMc4.WrYEtgCVIk2hg31fj9/CHI2','Saideepy7y7','jnb h','author','BTech','','2025-10-22 19:15:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 19:17:12
