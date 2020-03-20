-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: dbo
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Token',7,'add_token'),(26,'Can change Token',7,'change_token'),(27,'Can delete Token',7,'delete_token'),(28,'Can view Token',7,'view_token'),(29,'Can add document model',8,'add_documentmodel'),(30,'Can change document model',8,'change_documentmodel'),(31,'Can delete document model',8,'delete_documentmodel'),(32,'Can view document model',8,'view_documentmodel'),(33,'Can add meta document model',9,'add_metadocumentmodel'),(34,'Can change meta document model',9,'change_metadocumentmodel'),(35,'Can delete meta document model',9,'delete_metadocumentmodel'),(36,'Can view meta document model',9,'view_metadocumentmodel'),(37,'Can add meta user info model',10,'add_metauserinfomodel'),(38,'Can change meta user info model',10,'change_metauserinfomodel'),(39,'Can delete meta user info model',10,'delete_metauserinfomodel'),(40,'Can view meta user info model',10,'view_metauserinfomodel'),(41,'Can add user info model',11,'add_userinfomodel'),(42,'Can change user info model',11,'change_userinfomodel'),(43,'Can delete user info model',11,'delete_userinfomodel'),(44,'Can view user info model',11,'view_userinfomodel'),(45,'Can add directory model',12,'add_directorymodel'),(46,'Can change directory model',12,'change_directorymodel'),(47,'Can delete directory model',12,'delete_directorymodel'),(48,'Can view directory model',12,'view_directorymodel'),(49,'Can add gi log history',13,'add_giloghistory'),(50,'Can change gi log history',13,'change_giloghistory'),(51,'Can delete gi log history',13,'delete_giloghistory'),(52,'Can view gi log history',13,'view_giloghistory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_persian_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_persian_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_persian_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8_persian_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `directory`
--

DROP TABLE IF EXISTS `directory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` longtext COLLATE utf8_persian_ci NOT NULL,
  `git_log_hash` varchar(500) COLLATE utf8_persian_ci NOT NULL,
  `block_list` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directory`
--

LOCK TABLES `directory` WRITE;
/*!40000 ALTER TABLE `directory` DISABLE KEYS */;
INSERT INTO `directory` VALUES (31,'',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(32,'/export.txt',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(33,'/db.sqlite3',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(34,'/manage.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(35,'/live_doc',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(36,'/live_doc/wsgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(37,'/live_doc/settings.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(38,'/live_doc/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(39,'/live_doc/asgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(40,'/live_doc/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(41,'/live_doc/__pycache__',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(42,'/live_doc/__pycache__/urls.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(43,'/live_doc/__pycache__/settings.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(44,'/live_doc/__pycache__/__init__.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(45,'/live_docs',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(46,'/live_docs/views.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(47,'/live_docs/tests.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(48,'/live_docs/apps.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(49,'/live_docs/models.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(50,'/live_docs/admin.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(51,'/live_docs/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(52,'/live_docs/serializers.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(53,'/live_docs/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(54,'/live_docs/core',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(55,'/live_docs/core/main.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(56,'/live_docs/core/help_functions.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(57,'/live_docs/core/test.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(58,'/live_docs/core/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(59,'/live_docs/migrations',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(60,'/live_docs/migrations/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(61,'',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(62,'/export.txt',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(63,'/db.sqlite3',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(64,'/manage.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(65,'/live_doc',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(66,'/live_doc/wsgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(67,'/live_doc/settings.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(68,'/live_doc/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(69,'/live_doc/asgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(70,'/live_doc/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(71,'/live_doc/__pycache__',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(72,'/live_doc/__pycache__/urls.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(73,'/live_doc/__pycache__/settings.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(74,'/live_doc/__pycache__/__init__.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(75,'/live_docs',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(76,'/live_docs/views.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(77,'/live_docs/tests.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(78,'/live_docs/apps.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(79,'/live_docs/models.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(80,'/live_docs/admin.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(81,'/live_docs/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(82,'/live_docs/serializers.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(83,'/live_docs/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(84,'/live_docs/core',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(85,'/live_docs/core/main.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(86,'/live_docs/core/help_functions.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(87,'/live_docs/core/test.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(88,'/live_docs/core/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(89,'/live_docs/migrations',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(90,'/live_docs/migrations/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(91,'',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(92,'/export.txt',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(93,'/db.sqlite3',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(94,'/manage.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(95,'/live_doc',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(96,'/live_doc/wsgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(97,'/live_doc/settings.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(98,'/live_doc/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(99,'/live_doc/asgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(100,'/live_doc/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(101,'/live_doc/__pycache__',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(102,'/live_doc/__pycache__/urls.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(103,'/live_doc/__pycache__/settings.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(104,'/live_doc/__pycache__/__init__.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(105,'/live_docs',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(106,'/live_docs/views.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(107,'/live_docs/tests.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(108,'/live_docs/apps.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(109,'/live_docs/models.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(110,'/live_docs/admin.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(111,'/live_docs/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(112,'/live_docs/serializers.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(113,'/live_docs/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(114,'/live_docs/core',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(115,'/live_docs/core/main.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(116,'/live_docs/core/help_functions.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(117,'/live_docs/core/test.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(118,'/live_docs/core/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(119,'/live_docs/migrations',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(120,'/live_docs/migrations/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(121,'',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(122,'/export.txt',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(123,'/db.sqlite3',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(124,'/manage.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(125,'/live_doc',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(126,'/live_doc/wsgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(127,'/live_doc/settings.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(128,'/live_doc/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(129,'/live_doc/asgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(130,'/live_doc/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(131,'/live_doc/__pycache__',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(132,'/live_doc/__pycache__/urls.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(133,'/live_doc/__pycache__/settings.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(134,'/live_doc/__pycache__/__init__.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(135,'/live_docs',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(136,'/live_docs/views.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(137,'/live_docs/tests.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(138,'/live_docs/apps.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(139,'/live_docs/models.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(140,'/live_docs/admin.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(141,'/live_docs/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(142,'/live_docs/serializers.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(143,'/live_docs/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(144,'/live_docs/core',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(145,'/live_docs/core/main.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(146,'/live_docs/core/help_functions.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(147,'/live_docs/core/test.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(148,'/live_docs/core/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(149,'/live_docs/migrations',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(150,'/live_docs/migrations/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(151,'',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(152,'/export.txt',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(153,'/db.sqlite3',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(154,'/manage.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(155,'/live_doc',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(156,'/live_doc/wsgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(157,'/live_doc/settings.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(158,'/live_doc/urls.py',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(159,'/live_doc/asgi.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(160,'/live_doc/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(161,'/live_doc/__pycache__',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(162,'/live_doc/__pycache__/urls.cpython-37.pyc',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(163,'/live_doc/__pycache__/settings.cpython-37.pyc',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(164,'/live_doc/__pycache__/__init__.cpython-37.pyc',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(165,'/live_docs',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(166,'/live_docs/views.py',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(167,'/live_docs/tests.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(168,'/live_docs/apps.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(169,'/live_docs/models.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(170,'/live_docs/admin.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(171,'/live_docs/urls.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(172,'/live_docs/serializers.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(173,'/live_docs/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(174,'/live_docs/core',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(175,'/live_docs/core/main.py',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(176,'/live_docs/core/help_functions.py',' bb2909e95ab1d890ce5d047f48f9215f6bf26e49',0,NULL),(177,'/live_docs/core/test.py',' 23aece4a35d83b9779c7ef600287bb8aae617c8f',0,NULL),(178,'/live_docs/core/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(179,'/live_docs/migrations',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL),(180,'/live_docs/migrations/__init__.py',' 35c565b49fa5f84034e3ee5f6aa98c2337a1967c',0,NULL);
/*!40000 ALTER TABLE `directory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_persian_ci,
  `object_repr` varchar(200) COLLATE utf8_persian_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_persian_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'authtoken','token'),(5,'contenttypes','contenttype'),(12,'live_docs','directorymodel'),(8,'live_docs','documentmodel'),(13,'live_docs','giloghistory'),(9,'live_docs','metadocumentmodel'),(10,'live_docs','metauserinfomodel'),(11,'live_docs','userinfomodel'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-06 22:22:19.705886'),(2,'auth','0001_initial','2020-03-06 22:22:22.405534'),(3,'admin','0001_initial','2020-03-06 22:22:47.241530'),(4,'admin','0002_logentry_remove_auto_add','2020-03-06 22:22:51.530913'),(5,'admin','0003_logentry_add_action_flag_choices','2020-03-06 22:22:51.708290'),(6,'contenttypes','0002_remove_content_type_name','2020-03-06 22:22:56.025235'),(7,'auth','0002_alter_permission_name_max_length','2020-03-06 22:22:58.602019'),(8,'auth','0003_alter_user_email_max_length','2020-03-06 22:23:00.829464'),(9,'auth','0004_alter_user_username_opts','2020-03-06 22:23:00.914827'),(10,'auth','0005_alter_user_last_login_null','2020-03-06 22:23:02.844651'),(11,'auth','0006_require_contenttypes_0002','2020-03-06 22:23:02.901355'),(12,'auth','0007_alter_validators_add_error_messages','2020-03-06 22:23:02.984827'),(13,'auth','0008_alter_user_username_max_length','2020-03-06 22:23:05.092727'),(14,'auth','0009_alter_user_last_name_max_length','2020-03-06 22:23:07.155078'),(15,'auth','0010_alter_group_name_max_length','2020-03-06 22:23:09.033309'),(16,'auth','0011_update_proxy_permissions','2020-03-06 22:23:09.115117'),(17,'authtoken','0001_initial','2020-03-06 22:23:09.792335'),(18,'authtoken','0002_auto_20160226_1747','2020-03-06 22:23:15.277914'),(19,'sessions','0001_initial','2020-03-06 22:23:15.897144'),(20,'live_docs','0001_initial','2020-03-07 20:37:10.230746'),(21,'live_docs','0002_directorymodel_parent','2020-03-07 22:16:29.244312'),(22,'live_docs','0002_auto_20200311_1502','2020-03-11 15:02:30.372890'),(23,'live_docs','0002_documentmodel_path_hash','2020-03-11 15:17:31.933364'),(24,'live_docs','0002_giloghistory','2020-03-11 15:40:14.106470'),(25,'live_docs','0002_auto_20200311_1814','2020-03-11 18:14:04.991612');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_persian_ci NOT NULL,
  `session_data` longtext COLLATE utf8_persian_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_persian_ci NOT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  `is_deleted` tinyint(1) DEFAULT '0',
  `parent` bigint(255) DEFAULT NULL,
  `line` int(255) NOT NULL,
  `path_hash` varchar(2550) COLLATE utf8_persian_ci DEFAULT NULL,
  `git_log` varchar(2550) COLLATE utf8_persian_ci DEFAULT NULL,
  `path` varchar(2550) COLLATE utf8_persian_ci DEFAULT NULL,
  `home` varchar(2550) COLLATE utf8_persian_ci DEFAULT NULL,
  `user_id` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (19,'test','2020-03-11 13:47:09.111732',NULL,0,0,1,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(20,'test','2020-03-11 13:47:09.204835',NULL,0,0,2,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(21,'test','2020-03-11 13:47:09.238465',NULL,0,0,3,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(22,'ali marefatit','2020-03-11 13:48:26.348066',NULL,0,0,1,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(23,'ali marefatit','2020-03-11 13:48:26.724462',NULL,0,0,2,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(24,'ali marefatit','2020-03-11 13:48:26.812921',NULL,0,0,3,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(25,'reza','2020-03-11 13:48:42.791077',NULL,0,0,1,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(26,'reza','2020-03-11 13:48:42.863925',NULL,0,0,2,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(27,'reza','2020-03-11 13:48:56.184984',NULL,0,0,1,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(28,'reza','2020-03-11 13:48:57.233916',NULL,0,0,2,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(29,'reza','2020-03-11 13:48:57.267674',NULL,0,0,3,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(30,'reza','2020-03-11 13:48:57.301243',NULL,0,0,5,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(31,'reza','2020-03-11 13:48:57.335056',NULL,0,0,6,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(32,'reza','2020-03-11 14:06:01.356771',NULL,0,0,1,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(33,'reza','2020-03-11 14:06:01.414257',NULL,0,0,2,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(34,'reza','2020-03-11 14:06:01.446250',NULL,0,0,3,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(35,'reza','2020-03-11 14:06:01.480129',NULL,0,0,5,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL),(36,'reza','2020-03-11 14:06:01.667596',NULL,0,0,6,'7c35d101f1fc2464671dbdd5c4d8dfc3f6685a562c67adc0635da36b23861513','564654dsa654d6s5a4dsa','/live_docs/core/help_functions.py','37cbf199698df76df591ad594fc3bfad76bc5a3617ea7efa282dbeb009e9e77b',NULL);
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `git_log_history`
--

DROP TABLE IF EXISTS `git_log_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `git_log_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `git_log` varchar(2550) COLLATE utf8_persian_ci DEFAULT NULL,
  `created_at` timestamp(6) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `git_log_history`
--

LOCK TABLES `git_log_history` WRITE;
/*!40000 ALTER TABLE `git_log_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `git_log_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_document`
--

DROP TABLE IF EXISTS `meta_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_document` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `like_count` int(10) DEFAULT NULL,
  `reply_count` int(10) DEFAULT NULL,
  `view_count` int(10) DEFAULT NULL,
  `document_id` bigint(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_document`
--

LOCK TABLES `meta_document` WRITE;
/*!40000 ALTER TABLE `meta_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_user`
--

DROP TABLE IF EXISTS `meta_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_user` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(255) NOT NULL,
  `assign` bigint(255) DEFAULT NULL,
  `like` bigint(255) DEFAULT NULL,
  `view` bigint(255) DEFAULT NULL,
  `login_at` timestamp(6) NULL DEFAULT NULL,
  `logout_at` timestamp(6) NULL DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_user`
--

LOCK TABLES `meta_user` WRITE;
/*!40000 ALTER TABLE `meta_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `meta_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_persian_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '0',
  `group` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `birthday` timestamp(6) NULL DEFAULT NULL,
  `score` int(255) DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `activity` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `bio` text COLLATE utf8_persian_ci,
  `phone_number` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2020-03-20 14:46:38
