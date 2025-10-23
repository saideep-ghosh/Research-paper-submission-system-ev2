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
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `paper_id` int DEFAULT NULL,
  `reviewer_id` int DEFAULT NULL,
  `score_originality` int DEFAULT NULL,
  `score_technical` int DEFAULT NULL,
  `score_clarity` int DEFAULT NULL,
  `score_impact` int DEFAULT NULL,
  `overall_score` decimal(3,2) DEFAULT NULL,
  `comments_to_author` text,
  `comments_to_chair` text,
  `recommendation` enum('accept','reject','revisions_required') DEFAULT NULL,
  `review_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`),
  UNIQUE KEY `unique_review_assignment` (`paper_id`,`reviewer_id`),
  KEY `reviewer_id` (`reviewer_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`paper_id`) REFERENCES `papers` (`paper_id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `reviews_chk_1` CHECK ((`score_originality` between 1 and 5)),
  CONSTRAINT `reviews_chk_2` CHECK ((`score_technical` between 1 and 5)),
  CONSTRAINT `reviews_chk_3` CHECK ((`score_clarity` between 1 and 5)),
  CONSTRAINT `reviews_chk_4` CHECK ((`score_impact` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,6,4,5,4,4,4.25,'Excellent work on the neural network architecture. The combination of attention mechanisms with CNNs is innovative. However, the paper could benefit from more comparisons with recent state-of-the-art methods.','Strong paper with solid methodology. The computational efficiency claims are well-supported by the experiments. Recommend acceptance with minor revisions.','accept','2025-10-22 13:17:58'),(2,3,6,3,4,3,4,3.50,'Good overview of ML approaches for cybersecurity. The ensemble methods show promise. However, the dataset description is somewhat limited.','Paper has potential but requires significant revisions. The methodology section needs more detail.','revisions_required','2025-10-22 13:17:58'),(3,4,6,5,4,5,5,4.75,'Outstanding work on medical NLP applications. The 92% accuracy is impressive and well-validated. The clinical relevance is clearly demonstrated.','Excellent paper with clear clinical applications. The methodology is sound and results are significant. Strong recommend for acceptance.','accept','2025-10-22 13:17:58'),(4,4,10,4,5,4,4,4.25,'Very good NLP pipeline with practical healthcare applications. The concept extraction accuracy is notable.','Solid contribution to medical informatics. The approach is technically sound and well-evaluated. Recommend acceptance.','accept','2025-10-22 13:17:58'),(5,5,7,4,4,3,4,3.75,'Interesting blockchain framework for data sharing. The multi-party environment focus is relevant.','Promising approach but requires revisions. The security claims need stronger validation.','revisions_required','2025-10-22 13:17:58'),(6,6,8,3,3,4,3,3.25,'Valuable case studies on agile scaling challenges. The framework is practical.','Paper addresses important topic but lacks methodological rigor. Major revisions required.','revisions_required','2025-10-22 13:17:58');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
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
