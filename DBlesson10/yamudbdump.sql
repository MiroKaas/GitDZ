-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: yandex_music
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `album_title` varchar(255) NOT NULL COMMENT 'Название альбома',
  `release_at` date DEFAULT NULL COMMENT 'Дата выхода альбома',
  `genre_id` bigint unsigned DEFAULT NULL,
  `performer_id` bigint unsigned NOT NULL COMMENT 'ID исполнителя',
  `tag_id` bigint unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `album_tag_id` (`tag_id`),
  CONSTRAINT `album_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `album_tag` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Альбом';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album`
--

LOCK TABLES `album` WRITE;
/*!40000 ALTER TABLE `album` DISABLE KEYS */;
INSERT INTO `album` VALUES (1,'III: Lost Chapter','2021-09-08',2,1,NULL,'2021-10-14 21:45:46','2021-10-14 21:45:46'),(2,'Liebe Macht Monster','2021-03-12',5,3,NULL,'2021-10-14 21:45:46','2021-10-14 21:45:46'),(3,'Monster Mind Consuming','2021-03-25',3,3,NULL,'2021-10-14 21:45:46','2021-10-14 21:45:46'),(4,'Greatest Hits, Vol. 1','2014-10-05',1,1,4,'2021-10-14 21:45:46','2021-10-14 21:45:46'),(5,'The Devil','2013-12-17',4,4,NULL,'2021-10-14 21:45:46','2021-10-14 21:45:46');
/*!40000 ALTER TABLE `album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_tag`
--

DROP TABLE IF EXISTS `album_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_tag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `tag_name` varchar(255) NOT NULL COMMENT 'Название тэга',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Тэги для альбома';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_tag`
--

LOCK TABLES `album_tag` WRITE;
/*!40000 ALTER TABLE `album_tag` DISABLE KEYS */;
INSERT INTO `album_tag` VALUES (1,'LIVE','2021-10-14 19:49:44','2021-10-14 19:49:44'),(2,'сингл','2021-10-14 19:49:44','2021-10-14 19:49:44'),(3,'саундтрек к фильму','2021-10-14 19:49:44','2021-10-14 19:49:44'),(4,'сборник','2021-10-14 19:49:44','2021-10-14 19:49:44'),(5,'B-sides','2021-10-14 19:49:44','2021-10-14 19:49:44'),(6,'Remixes','2021-10-14 19:49:44','2021-10-14 19:49:44');
/*!40000 ALTER TABLE `album_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `genre_name` varchar(255) NOT NULL COMMENT 'Название жанра',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Жанр';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'ню-метал','2021-10-14 20:29:28','2021-10-14 20:29:28'),(2,'альтернатива','2021-10-14 20:29:28','2021-10-14 20:29:28'),(3,'индастриал','2021-10-14 20:29:28','2021-10-14 20:29:28'),(4,'иностранный рок','2021-10-14 20:29:28','2021-10-14 20:29:28'),(5,'эпический метал','2021-10-14 20:29:28','2021-10-14 20:29:28');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` bigint unsigned NOT NULL COMMENT 'ID пользователя',
  `objective_type_id` bigint unsigned NOT NULL COMMENT 'ID типа цели',
  `objective_id` bigint unsigned NOT NULL COMMENT 'ID цели',
  `like_dislike_flg` int unsigned NOT NULL COMMENT 'Проставлен: 1 - Лайк, 0 - Дизлайк',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `likes_objective_type` (`objective_type_id`),
  KEY `likes_objective_playlist_id` (`objective_id`),
  KEY `likes_user_id` (`user_id`),
  CONSTRAINT `likes_objective_type` FOREIGN KEY (`objective_type_id`) REFERENCES `objective_type` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `likes_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Понравившееся';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (37,8,5,13,1,'2021-10-14 22:23:31','2021-10-14 22:23:31'),(38,10,1,2,1,'2021-10-14 22:23:31','2021-10-14 22:23:31'),(39,6,2,3,0,'2021-10-14 22:23:31','2021-10-14 22:23:31'),(40,9,3,1,1,'2021-10-14 22:23:31','2021-10-14 22:23:31'),(41,7,3,1,1,'2021-10-14 22:23:31','2021-10-14 22:23:31');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listening_history`
--

DROP TABLE IF EXISTS `listening_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `listening_history` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` bigint unsigned NOT NULL COMMENT 'ID пользователя',
  `song_id` bigint unsigned NOT NULL COMMENT 'ID песни',
  `listening_cnt` int unsigned NOT NULL COMMENT 'Количество прослушиваний',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `listening_history_user_id` (`user_id`),
  KEY `listening_history_song_id` (`song_id`),
  CONSTRAINT `listening_history_song_id` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `listening_history_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='История прослушивания';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listening_history`
--

LOCK TABLES `listening_history` WRITE;
/*!40000 ALTER TABLE `listening_history` DISABLE KEYS */;
INSERT INTO `listening_history` VALUES (1,6,5,1,'2021-10-14 22:09:25','2021-10-14 22:09:25'),(2,7,1,1,'2021-10-14 22:09:25','2021-10-14 22:09:25'),(3,8,2,3,'2021-10-14 22:09:25','2021-10-14 22:09:25'),(4,9,3,1,'2021-10-14 22:09:25','2021-10-14 22:09:25'),(5,10,4,5,'2021-10-14 22:09:25','2021-10-14 22:09:25');
/*!40000 ALTER TABLE `listening_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objective_type`
--

DROP TABLE IF EXISTS `objective_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `objective_type` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `objective_name_type` varchar(255) NOT NULL COMMENT 'Название типа цели',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Тип цели';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objective_type`
--

LOCK TABLES `objective_type` WRITE;
/*!40000 ALTER TABLE `objective_type` DISABLE KEYS */;
INSERT INTO `objective_type` VALUES (1,'song','2021-10-14 19:27:04','2021-10-14 19:27:04'),(2,'album','2021-10-14 19:27:04','2021-10-14 19:27:04'),(3,'genre','2021-10-14 19:27:04','2021-10-14 19:27:04'),(4,'performer','2021-10-14 19:27:04','2021-10-14 19:27:04'),(5,'playlist','2021-10-14 19:27:04','2021-10-14 19:27:04');
/*!40000 ALTER TABLE `objective_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performer`
--

DROP TABLE IF EXISTS `performer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performer` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `performer_name` varchar(255) NOT NULL COMMENT 'Название исполнителя',
  `album_id` bigint unsigned NOT NULL COMMENT 'ID альбома',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `performer_album_id` (`album_id`),
  CONSTRAINT `performer_album_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Исполнитель';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performer`
--

LOCK TABLES `performer` WRITE;
/*!40000 ALTER TABLE `performer` DISABLE KEYS */;
INSERT INTO `performer` VALUES (1,'Korn',4,'2021-10-14 21:58:29','2021-10-14 21:58:29'),(2,'Pentakill',1,'2021-10-14 21:58:29','2021-10-14 21:58:29'),(3,'Manntra',3,'2021-10-14 21:58:29','2021-10-14 21:58:29'),(4,'Blue Stahli',5,'2021-10-14 21:58:29','2021-10-14 21:58:29'),(5,'Eisbrecher',2,'2021-10-14 21:58:29','2021-10-14 21:58:29');
/*!40000 ALTER TABLE `performer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` bigint unsigned NOT NULL COMMENT 'ID пользователя',
  `playlist_name` varchar(255) NOT NULL DEFAULT 'Favorites' COMMENT 'Название плейлиста',
  `song_id` bigint unsigned NOT NULL COMMENT 'ID песни',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `playlists_user_id` (`user_id`),
  KEY `playlists_song_id` (`song_id`),
  CONSTRAINT `playlists_song_id` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `playlists_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Плейлисты';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlists`
--

LOCK TABLES `playlists` WRITE;
/*!40000 ALTER TABLE `playlists` DISABLE KEYS */;
INSERT INTO `playlists` VALUES (11,6,'Hope',5,'2021-10-14 22:06:47','2021-10-14 22:06:47'),(12,7,'True',1,'2021-10-14 22:06:47','2021-10-14 22:06:47'),(13,8,'Misery',2,'2021-10-14 22:06:47','2021-10-14 22:06:47'),(14,9,'True',3,'2021-10-14 22:06:47','2021-10-14 22:06:47'),(15,10,'',4,'2021-10-14 22:06:47','2021-10-14 22:06:47');
/*!40000 ALTER TABLE `playlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `title` varchar(255) NOT NULL COMMENT 'Название песни',
  `release_at` date DEFAULT NULL COMMENT 'Дата выхода песни',
  `genre_id` bigint unsigned NOT NULL COMMENT 'ID жанра',
  `album_id` bigint unsigned NOT NULL COMMENT 'ID альбома',
  `performer_id` bigint unsigned NOT NULL COMMENT 'ID исполнителя',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `songs_genre_id` (`genre_id`),
  KEY `songs_album_id` (`album_id`),
  KEY `songs_performer_id` (`performer_id`),
  CONSTRAINT `songs_album_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `songs_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `songs_performer_id` FOREIGN KEY (`performer_id`) REFERENCES `performer` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Песни';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Enemy','2013-12-17',4,5,5,'2021-10-14 21:59:24','2021-10-14 21:59:24'),(2,'Aftershock','2021-09-08',2,1,2,'2021-10-14 21:59:24','2021-10-14 21:59:24'),(3,'Trash','2014-10-05',1,4,1,'2021-10-14 21:59:24','2021-10-14 21:59:24'),(4,'Slave','2021-03-25',3,3,3,'2021-10-14 21:59:24','2021-10-14 21:59:24'),(5,'FAKK','2021-03-12',5,2,5,'2021-10-14 21:59:24','2021-10-14 21:59:24');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `email` varchar(100) NOT NULL COMMENT 'Почта',
  `first_name` varchar(100) NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) NOT NULL COMMENT 'Фамилия пользователя',
  `phone` char(11) NOT NULL COMMENT 'Телефон',
  `active_subscribe` tinyint(1) NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Пользователи';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (6,'yoimmenoucrorau-4494@yopmail.com','John','Pittman','9295648082',1,'2021-10-14 19:58:50','2021-10-14 19:58:50'),(7,'xauppovougeuxau-3282@yopmail.com','Henry','Johnson','9267246604',0,'2021-10-14 19:58:50','2021-10-14 19:58:50'),(8,'yeiseibavenei-5146@yopmail.com','Cynthia','Johnson','9233658260',0,'2021-10-14 19:58:50','2021-10-14 19:58:50'),(9,'velobobafru-2050@yopmail.com','Wayne','Wright','9231322984',1,'2021-10-14 19:58:50','2021-10-14 19:58:50'),(10,'neufroifafrollau-1773@yopmail.com','Betty','Taylor','91699033842',1,'2021-10-14 19:58:50','2021-10-14 19:58:50');
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

-- Dump completed on 2021-10-14 22:29:12
