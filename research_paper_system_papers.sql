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
-- Table structure for table `papers`
--

DROP TABLE IF EXISTS `papers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `papers` (
  `paper_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `abstract` text NOT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `paper_file_path` varchar(255) DEFAULT NULL,
  `submission_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('submitted','under_review','accepted','rejected','revisions_required') DEFAULT 'submitted',
  `author_id` int DEFAULT NULL,
  `conference_id` int DEFAULT NULL,
  PRIMARY KEY (`paper_id`),
  KEY `author_id` (`author_id`),
  KEY `conference_id` (`conference_id`),
  CONSTRAINT `papers_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `papers_ibfk_2` FOREIGN KEY (`conference_id`) REFERENCES `conferences` (`conference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papers`
--

LOCK TABLES `papers` WRITE;
/*!40000 ALTER TABLE `papers` DISABLE KEYS */;
INSERT INTO `papers` VALUES (1,'Advanced Neural Networks for Image Recognition','This paper presents a novel approach to image recognition using advanced convolutional neural networks. Our method achieves state-of-the-art performance on benchmark datasets while requiring significantly less computational resources.','neural networks, image recognition, computer vision, deep learning','assets/uploads/papers/sample_paper1.pdf','2025-10-22 13:17:58','under_review',2,1),(2,'Optimizing SQL Query Performance in Distributed Databases','We propose a new query optimization technique for distributed database systems that reduces query execution time by up to 40%. Our approach uses machine learning to predict optimal query plans.','database optimization, distributed systems, SQL queries, machine learning','assets/uploads/papers/sample_paper2.pdf','2025-10-22 13:17:58','submitted',2,2),(3,'Machine Learning Approaches for Cybersecurity Threat Detection','This research explores various machine learning algorithms for detecting cybersecurity threats in real-time. We compare the effectiveness of supervised and unsupervised learning methods.','cybersecurity, machine learning, threat detection, network security','assets/uploads/papers/sample_paper3.pdf','2025-10-22 13:17:58','under_review',3,1),(4,'Natural Language Processing for Medical Text Analysis','We develop a specialized NLP pipeline for analyzing medical literature and clinical notes. Our system achieves 92% accuracy in extracting relevant medical concepts and relationships.','natural language processing, healthcare, text mining, medical informatics','assets/uploads/papers/sample_paper4.pdf','2025-10-22 13:17:58','accepted',3,3),(5,'Blockchain-Based Secure Data Sharing Framework','This paper presents a blockchain framework for secure and transparent data sharing in multi-party environments. Our solution ensures data integrity, access control, and auditability.','blockchain, data security, access control, distributed ledger','assets/uploads/papers/sample_paper5.pdf','2025-10-22 13:17:58','under_review',4,5),(6,'Agile Software Development in Large-Scale Projects','We investigate the challenges and solutions for implementing agile methodologies in large-scale software development projects. Through case studies we identify key success factors.','agile methodology, software engineering, project management, scalability','assets/uploads/papers/sample_paper6.pdf','2025-10-22 13:17:58','revisions_required',4,4),(7,'Deep Reinforcement Learning for Autonomous Systems','This research explores deep reinforcement learning techniques for autonomous decision-making in complex environments. We propose a new algorithm combining policy gradients with hierarchical learning.','reinforcement learning, autonomous systems, robotics, AI','assets/uploads/papers/sample_paper7.pdf','2025-10-22 13:17:58','submitted',5,1),(8,'Data Privacy Preservation in Cloud Databases','We introduce a novel approach for preserving data privacy in cloud database systems while maintaining query functionality. Our method uses homomorphic encryption techniques.','data privacy, cloud computing, encryption, database security','assets/uploads/papers/sample_paper8.pdf','2025-10-22 13:17:58','under_review',5,5);
/*!40000 ALTER TABLE `papers` ENABLE KEYS */;
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
