CREATE DATABASE  IF NOT EXISTS `fantasy_football` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fantasy_football`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: fantasy_football
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `fantasy_team`
--

DROP TABLE IF EXISTS `fantasy_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fantasy_team` (
  `team_name` varchar(30) NOT NULL,
  `team_record` varchar(10) DEFAULT NULL,
  `owner_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`team_name`),
  KEY `owner_name` (`owner_name`),
  CONSTRAINT `fantasy_team_ibfk_1` FOREIGN KEY (`owner_name`) REFERENCES `user_account` (`account_username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fantasy_team`
--

LOCK TABLES `fantasy_team` WRITE;
/*!40000 ALTER TABLE `fantasy_team` DISABLE KEYS */;
INSERT INTO `fantasy_team` VALUES ('free_agent','','admin'),('Get Cooked','2-11','strikerbot7'),('HerbieTime','5-8','mrscj180'),('IChaseYK','4-9','kicker22'),('Judge Jeudy','4-9','figit12'),('KickingIt','9-4','footballking'),('Netflix and Hill','13-0','dsnap'),('QualityTeam','8-5','tcoll14'),('RunCMC','6-8','comeonnowbry'),('SwiftAF','8-5','schmorden'),('TaylorMade','6-8','cadillacscatch');
/*!40000 ALTER TABLE `fantasy_team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-16 15:56:33
