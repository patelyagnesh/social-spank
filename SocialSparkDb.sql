-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: socialspark
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Schema structure
--

IF EXISTS (SELECT * FROM sys.databases WHERE [name] = 'socialspark')
BEGIN 
	DROP DATABASE socialspark
END

GO
CREATE DATABASE socialspark
GO 
USE socialspark

--
-- Table structure for table `about_user`
--

DROP TABLE IF EXISTS `about_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `about_user` (
  `AboutUserID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `DOB` date DEFAULT NULL,
  `NickName` varchar(45) DEFAULT NULL,
  `Languages` varchar(45) DEFAULT NULL,
  `Education` varchar(45) DEFAULT NULL,
  `Occupation` varchar(45) DEFAULT NULL,
  `Relationship Status` varchar(45) DEFAULT NULL,
  `Website` varchar(45) DEFAULT NULL,
  `Bio` varchar(2000) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`AboutUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `about_user`
--

LOCK TABLES `about_user` WRITE;
/*!40000 ALTER TABLE `about_user` DISABLE KEYS */;
INSERT INTO `about_user` VALUES (1,109,'2021-05-01','Anji','','','','Single','','Hello world','India','2021-05-15 12:47:44','2021-05-15 12:47:44'),(2,110,'2021-05-20','Priya ','Hindi','','','Single','','','India','2021-05-15 14:48:52','2021-05-15 14:48:52'),(3,102,'2021-05-12','Sruthi','','','','Married','','Hello World','Afganistan','2021-05-15 15:10:04','2021-05-15 15:10:04');
/*!40000 ALTER TABLE `about_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_requests`
--

DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_requests` (
  `FriendRequestID` int NOT NULL AUTO_INCREMENT,
  `SenderID` int NOT NULL,
  `ReceiverID` int NOT NULL,
  `DateSent` datetime DEFAULT NULL,
  `PendingConfirmation` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdateOn` datetime DEFAULT NULL,
  PRIMARY KEY (`FriendRequestID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (2,102,103,'2021-05-15 12:35:32',1,'2021-05-15 12:35:32','2021-05-15 12:35:32'),(4,102,106,'2021-05-15 12:43:39',1,'2021-05-15 12:43:39','2021-05-15 12:43:39'),(5,110,101,'2021-05-15 14:36:52',1,'2021-05-15 14:36:52','2021-05-15 14:36:52');
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frienddetails`
--

DROP TABLE IF EXISTS `frienddetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `frienddetails` (
  `FriendDetailID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `FriendID` int NOT NULL,
  `FriendStatusID` int NOT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`FriendDetailID`),
  UNIQUE KEY `FriendDetailID_UNIQUE` (`FriendDetailID`) /*!80000 INVISIBLE */
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frienddetails`
--

LOCK TABLES `frienddetails` WRITE;
/*!40000 ALTER TABLE `frienddetails` DISABLE KEYS */;
INSERT INTO `frienddetails` VALUES (5,102,101,1,'2021-05-15 15:14:04','2021-05-15 15:14:04'),(6,101,102,1,'2021-05-15 15:14:04','2021-05-15 15:14:04');
/*!40000 ALTER TABLE `frienddetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `likesid` int NOT NULL AUTO_INCREMENT,
  `postid` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`likesid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,1,102),(2,1,102),(3,2,102),(4,3,102),(5,3,109),(6,2,109),(7,4,110),(8,5,110);
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `MessageID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `SenderID` int NOT NULL,
  `MessageContent` varchar(2000) DEFAULT NULL,
  `CreatedOn` datetime DEFAULT NULL,
  `LastUpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`MessageID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,109,102,'Hi Anjali','2021-05-15 13:12:30','2021-05-15 13:12:30'),(2,102,109,'Hey Sruthi','2021-05-15 13:13:47','2021-05-15 13:13:47'),(3,102,101,'Hey','2021-05-15 15:07:55','2021-05-15 15:07:55'),(4,101,102,'Hii','2021-05-15 15:09:06','2021-05-15 15:09:06'),(5,102,101,'Good Morning','2021-05-15 15:12:28','2021-05-15 15:12:28');
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `NotificationID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `NotificationDate` datetime DEFAULT NULL,
  `NotificationTypeID` int DEFAULT NULL,
  `NotificationSourceID` int DEFAULT NULL,
  `IsRead` tinyint DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`NotificationID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,101,'2021-05-15 12:35:20',1,1,0,'2021-05-15 12:35:20','2021-05-15 12:35:20'),(2,103,'2021-05-15 12:35:32',1,2,0,'2021-05-15 12:35:32','2021-05-15 12:35:32'),(3,109,'2021-05-15 12:38:25',1,3,0,'2021-05-15 12:38:25','2021-05-15 12:38:25'),(4,106,'2021-05-15 12:43:39',1,4,0,'2021-05-15 12:43:39','2021-05-15 12:43:39'),(5,109,'2021-05-15 13:12:30',2,1,1,'2021-05-15 13:12:30','2021-05-15 13:12:30'),(6,102,'2021-05-15 13:13:47',2,2,1,'2021-05-15 13:13:47','2021-05-15 13:13:47'),(7,101,'2021-05-15 14:36:52',1,5,0,'2021-05-15 14:36:52','2021-05-15 14:36:52'),(8,102,'2021-05-15 15:07:55',2,-1,0,'2021-05-15 15:07:55','2021-05-15 15:07:55'),(9,101,'2021-05-15 15:09:06',2,-1,0,'2021-05-15 15:09:06','2021-05-15 15:09:06'),(10,102,'2021-05-15 15:12:28',2,5,1,'2021-05-15 15:12:28','2021-05-15 15:12:28'),(11,101,'2021-05-15 15:13:01',1,6,0,'2021-05-15 15:13:01','2021-05-15 15:13:01');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `Postid` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `Content` varchar(2000) NOT NULL,
  `NoOfLikes` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedOn` datetime DEFAULT NULL,
  PRIMARY KEY (`Postid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (2,102,'Good Day',1,'2021-05-15 12:37:44','2021-05-15 12:37:44'),(3,102,'Feeling Happy&#128515;',0,'2021-05-15 12:44:15','2021-05-15 12:44:15'),(4,109,'Hi this  is anjali',1,'2021-05-15 12:46:28','2021-05-15 12:46:28'),(5,110,'Hey Priya Here..!&#128515;',1,'2021-05-15 14:49:22','2021-05-15 14:49:59');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saved_posts`
--

DROP TABLE IF EXISTS `saved_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saved_posts` (
  `SavedPostID` int NOT NULL AUTO_INCREMENT,
  `Postid` int DEFAULT NULL,
  `UserID` int DEFAULT NULL,
  `Content` varchar(2000) NOT NULL,
  `NoOfLikes` int DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastUpdatedOn` datetime DEFAULT NULL,
  `SavedFor` int NOT NULL,
  PRIMARY KEY (`SavedPostID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saved_posts`
--

LOCK TABLES `saved_posts` WRITE;
/*!40000 ALTER TABLE `saved_posts` DISABLE KEYS */;
INSERT INTO `saved_posts` VALUES (1,2,102,'Good Day',0,'2021-05-15 12:37:44','2021-05-15 12:37:44',102),(4,5,110,'Hey Priya Here&#128515;',1,'2021-05-15 14:49:22','2021-05-15 14:49:22',110);
/*!40000 ALTER TABLE `saved_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Email` varchar(75) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Gender` varchar(45) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (101,'Yagnesh','Patel','yagnesh099@gmail.com','yaggu2509','Male'),(102,'Sruthi','Nair','Abc@123.com','7777','Female'),(103,'Harshil','Patel','Harshil@123','160998','Male'),(104,'Nirav','Chaudhari','Nirav@1720','75846','Male'),(105,'Jeel','Patel','Jeel@2209','220998','Male'),(106,'Namita','Bhoj','Namita@1234','12345','Female'),(107,'Nayan','Parmar','Nayan18@gmail.com','181920','Male'),(109,'Anjali','G','Anjali@123','12345','Female');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-15 15:21:47
