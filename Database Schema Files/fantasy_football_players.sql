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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_name` varchar(50) NOT NULL,
  `player_rank` int DEFAULT NULL,
  `player_team` varchar(30) DEFAULT NULL,
  `player_status` varchar(10) DEFAULT NULL,
  `player_position` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`player_name`),
  KEY `player_team` (`player_team`),
  CONSTRAINT `players_ibfk_1` FOREIGN KEY (`player_team`) REFERENCES `fantasy_team` (`team_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES ('Aaron Jones',9,'HerbieTime','h','rb'),('Aaron Rodgers',7,'free_agent','h','qb'),('Alvin Kamara',3,'Get Cooked','h','rb'),('ARI',8,'Get Cooked','h','dst'),('Austin Ekeler',1,'Netflix and Hill','h','rb'),('BAL',12,'Netflix and Hill','h','dst'),('Brandon McManus',12,'free_agent','h','k'),('CAR',9,'Get Cooked','h','dst'),('Ceedee Lamb',7,'Get Cooked','h','wr'),('Chris Boswell',5,'HerbieTime','h','k'),('Chris Godwin',8,'QualityTeam','h','wr'),('CIN',13,'Judge Jeudy','h','dst'),('Cole Kmet',15,'RunCMC','h','te'),('Cooper Kupp',1,'SwiftAF','h','wr'),('Cordarrelle Patterson',7,'RunCMC','h','rb'),('Dak Prescott',5,'RunCMC','h','qb'),('DAL',14,'free_agent','h','dst'),('Dalton Shultz',6,'RunCMC','h','te'),('Dalvin Cook',4,'SwiftAF','h','rb'),('Daniel Carlson',8,'Judge Jeudy','h','k'),('Daniel Jones',16,'free_agent','o','qb'),('Darrell Henderson',16,'HerbieTime','q','rb'),('David Montgomery',12,'TaylorMade','h','rb'),('Dawson Knox',7,'Judge Jeudy','h','te'),('DeAndre Hopkins',10,'Judge Jeudy','h','wr'),('Deebo Samuel',13,'Netflix and Hill','ir','wr'),('DEN',3,'SwiftAF','h','dst'),('Derek Carr',13,'free_agent','h','qb'),('Devante Adams',2,'QualityTeam','h','wr'),('Diontae Johnson',4,'HerbieTime','h','wr'),('Elijah Mitchell',8,'RunCMC','h','rb'),('Elijah Moore',15,'RunCMC','h','wr'),('Evan Engram',16,'free_agent','h','te'),('Ezekiel Elliot',14,'QualityTeam','h','rb'),('GB',1,'QualityTeam','h','dst'),('George Kittle',2,'SwiftAF','h','te'),('Gerald Everett',14,'free_agent','h','te'),('Greg Joseph',9,'free_agent','h','k'),('Greg Zuerlein',10,'free_agent','h','k'),('Harrison Butker',4,'Netflix and Hill','h','k'),('Ja\'marr Chase',9,'Judge Jeudy','h','wr'),('James Connor',15,'Judge Jeudy','h','rb'),('Joe Burrow',11,'Judge Jeudy','h','qb'),('Joe Mixon',2,'QualityTeam','h','rb'),('Jonathan Taylor',10,'TaylorMade','h','rb'),('Josh Allen',1,'QualityTeam','h','qb'),('Josh Jacobs',11,'Judge Jeudy','q','rb'),('Justin Herbert',3,'HerbieTime','h','qb'),('Justin Jefferson',3,'Netflix and Hill','h','wr'),('Justin Tucker',2,'RunCMC','h','k'),('KC',15,'RunCMC','h','dst'),('Keenan Allen',14,'SwiftAF','h','wr'),('Kirk Cousins',10,'free_agent','h','qb'),('Kyle Pitts',9,'TaylorMade','h','te'),('Kyler Murray',2,'Netflix and Hill','h','qb'),('LAC',6,'TaylorMade','h','dst'),('Lamar Jackson',4,'Get Cooked','h','qb'),('Leonard Fournette',6,'Netflix and Hill','h','rb'),('Mark Andrews',3,'Get Cooked','h','te'),('Mason Crosby',14,'free_agent','h','k'),('Matt Gay',3,'SwiftAF','h','k'),('Matt Prater',6,'Get Cooked','h','k'),('Matt Stafford',9,'free_agent','h','qb'),('Mike Evans',11,'Get Cooked','h','wr'),('MIN',16,'free_agent','h','dst'),('Najee Harris',5,'SwiftAF','h','rb'),('NE',5,'TaylorMade','h','dst'),('Nick Chubb',13,'Get Cooked','h','rb'),('Nick Folk',1,'QualityTeam','h','k'),('NO',2,'RunCMC','h','dst'),('Noah Fant',12,'free_agent','h','te'),('Pat Freirmuth',8,'TaylorMade','h','te'),('Patrick Mahomes',6,'SwiftAF','h','qb'),('Randy Bolluck',15,'free_agent','h','k'),('Rob Gronkowski',4,'Judge Jeudy','h','te'),('Robbie Gould',13,'free_agent','h','k'),('Russell Wilson',12,'TaylorMade','h','qb'),('Ryan Succop',11,'free_agent','h','k'),('Ryan Tannehill',15,'free_agent','h','qb'),('SEA',7,'Judge Jeudy','h','dst'),('SF',11,'free_agent','h','dst'),('Stefon Diggs',6,'HerbieTime','h','wr'),('T.J Hockenson',5,'Netflix and Hill','h','te'),('Taylor Heinicke',14,'free_agent','h','qb'),('TB',10,'free_agent','h','dst'),('TEN',4,'HerbieTime','h','dst'),('Terry McLauren',12,'RunCMC','h','wr'),('Tom Brady',8,'free_agent','h','qb'),('Travis Kelce',1,'QualityTeam','h','te'),('Tyler Bass',7,'TaylorMade','h','k'),('Tyler Conklin',11,'free_agent','h','te'),('Tyler Higbee',13,'free_agent','h','te'),('Tyler Lockett',16,'TaylorMade','h','wr'),('Tyreek Hill',5,'TaylorMade','h','wr'),('Younghoe Koo',16,'free_agent','h','k'),('Zach Ertz',10,'HerbieTime','h','te');
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
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
