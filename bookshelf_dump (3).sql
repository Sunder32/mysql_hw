-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: it.vshp.online    Database: db_ac68d6
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `authors_books`
--

DROP TABLE IF EXISTS `authors_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors_books` (
  `books_id` int unsigned NOT NULL,
  `authors_id` int unsigned NOT NULL,
  PRIMARY KEY (`books_id`,`authors_id`),
  KEY `fk_authors_books_books_idx` (`books_id`),
  KEY `fk_authors_books_authors_idx` (`authors_id`),
  CONSTRAINT `fk_authors_books_authors` FOREIGN KEY (`authors_id`) REFERENCES `authors` (`id`),
  CONSTRAINT `fk_authors_books_books` FOREIGN KEY (`books_id`) REFERENCES `books` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_books`
--

LOCK TABLES `authors_books` WRITE;
/*!40000 ALTER TABLE `authors_books` DISABLE KEYS */;
INSERT INTO `authors_books` VALUES (1,45),(2,1),(3,13),(4,1),(5,7),(6,123),(7,135),(8,83),(9,24),(10,127),(11,133),(12,88),(13,103),(14,35),(15,129),(16,141),(17,9),(18,10),(19,12),(20,12),(21,14),(22,66),(23,118),(24,16),(25,16),(26,58),(27,55),(28,85),(29,22),(30,6),(31,30),(32,25),(33,132),(34,125),(35,125),(36,125),(37,125),(38,52),(39,59),(40,19),(41,144),(42,86),(43,60),(44,5),(45,123),(46,123),(47,36),(48,126),(49,26),(50,48),(51,8),(52,49),(52,50),(53,70),(54,107),(55,107),(56,81),(57,20),(58,78),(59,140),(60,108),(61,97),(62,90),(63,119),(64,76),(65,122),(66,130),(67,27),(68,100),(69,31),(70,99),(71,104),(72,54),(73,44),(74,71),(75,77),(76,79),(77,101),(78,102),(79,69),(80,75),(81,1),(82,117),(83,23),(84,23),(85,114),(86,114),(87,143),(88,89),(89,32),(90,115),(91,115),(92,115),(93,46),(94,91),(95,74),(96,91),(97,11),(98,21),(100,46),(101,133),(102,28),(103,73),(104,124),(105,34),(106,42),(107,87),(108,95),(109,3),(110,131),(111,53),(112,62),(113,84),(114,106),(115,43),(116,2),(117,65),(118,137),(119,40),(120,128),(121,142),(122,114),(123,113),(124,33),(125,23),(126,41),(127,115),(128,92),(129,80),(130,108),(131,63),(132,143),(133,67),(134,45),(135,111),(136,109),(137,76),(138,93),(139,114),(140,143),(141,96),(142,61),(143,98),(144,29),(145,134),(146,36),(147,138),(148,37),(149,136),(150,121),(151,105),(152,82),(153,18),(154,51),(155,120),(156,110),(157,56),(158,17),(159,72),(160,112),(161,57),(162,94),(163,38),(164,36),(165,96),(166,39),(167,64),(168,4),(169,68),(170,139),(171,116),(172,45),(173,1),(174,13),(175,1),(176,145);
/*!40000 ALTER TABLE `authors_books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-20  0:01:01
