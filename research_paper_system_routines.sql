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
-- Temporary view structure for view `vw_reviewers`
--

DROP TABLE IF EXISTS `vw_reviewers`;
/*!50001 DROP VIEW IF EXISTS `vw_reviewers`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_reviewers` AS SELECT 
 1 AS `user_id`,
 1 AS `username`,
 1 AS `email`,
 1 AS `reviewer_name`,
 1 AS `affiliation`,
 1 AS `expertise_area`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_authors`
--

DROP TABLE IF EXISTS `vw_authors`;
/*!50001 DROP VIEW IF EXISTS `vw_authors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_authors` AS SELECT 
 1 AS `user_id`,
 1 AS `username`,
 1 AS `email`,
 1 AS `author_name`,
 1 AS `affiliation`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `author_paper_counts`
--

DROP TABLE IF EXISTS `author_paper_counts`;
/*!50001 DROP VIEW IF EXISTS `author_paper_counts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `author_paper_counts` AS SELECT 
 1 AS `user_id`,
 1 AS `username`,
 1 AS `first_name`,
 1 AS `last_name`,
 1 AS `affiliation`,
 1 AS `total_papers`,
 1 AS `accepted_papers`,
 1 AS `under_review_papers`,
 1 AS `rejected_papers`,
 1 AS `revisions_required_papers`,
 1 AS `latest_submission`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_reviewers`
--

/*!50001 DROP VIEW IF EXISTS `vw_reviewers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_reviewers` AS select `users`.`user_id` AS `user_id`,`users`.`username` AS `username`,`users`.`email` AS `email`,concat(`users`.`first_name`,' ',`users`.`last_name`) AS `reviewer_name`,`users`.`affiliation` AS `affiliation`,`users`.`expertise_area` AS `expertise_area` from `users` where ((`users`.`role` = 'reviewer') or (`users`.`role` = 'admin')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_authors`
--

/*!50001 DROP VIEW IF EXISTS `vw_authors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_authors` AS select `users`.`user_id` AS `user_id`,`users`.`username` AS `username`,`users`.`email` AS `email`,concat(`users`.`first_name`,' ',`users`.`last_name`) AS `author_name`,`users`.`affiliation` AS `affiliation` from `users` where ((`users`.`role` = 'author') or (`users`.`role` = 'admin')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `author_paper_counts`
--

/*!50001 DROP VIEW IF EXISTS `author_paper_counts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `author_paper_counts` AS select `u`.`user_id` AS `user_id`,`u`.`username` AS `username`,`u`.`first_name` AS `first_name`,`u`.`last_name` AS `last_name`,`u`.`affiliation` AS `affiliation`,count(`p`.`paper_id`) AS `total_papers`,count((case when (`p`.`status` = 'accepted') then 1 end)) AS `accepted_papers`,count((case when (`p`.`status` = 'under_review') then 1 end)) AS `under_review_papers`,count((case when (`p`.`status` = 'rejected') then 1 end)) AS `rejected_papers`,count((case when (`p`.`status` = 'revisions_required') then 1 end)) AS `revisions_required_papers`,max(`p`.`submission_date`) AS `latest_submission` from (`users` `u` left join `papers` `p` on((`u`.`user_id` = `p`.`author_id`))) where (`u`.`role` = 'author') group by `u`.`user_id`,`u`.`username`,`u`.`first_name`,`u`.`last_name`,`u`.`affiliation` order by `total_papers` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-23 19:17:13
