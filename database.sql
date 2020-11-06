-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: school_system
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_customuser'),(22,'Can change user',6,'change_customuser'),(23,'Can delete user',6,'delete_customuser'),(24,'Can view user',6,'view_customuser'),(25,'Can add attendance',7,'add_attendance'),(26,'Can change attendance',7,'change_attendance'),(27,'Can delete attendance',7,'delete_attendance'),(28,'Can view attendance',7,'view_attendance'),(29,'Can add courses',8,'add_courses'),(30,'Can change courses',8,'change_courses'),(31,'Can delete courses',8,'delete_courses'),(32,'Can view courses',8,'view_courses'),(33,'Can add session year model',9,'add_sessionyearmodel'),(34,'Can change session year model',9,'change_sessionyearmodel'),(35,'Can delete session year model',9,'delete_sessionyearmodel'),(36,'Can view session year model',9,'view_sessionyearmodel'),(37,'Can add subjects',10,'add_subjects'),(38,'Can change subjects',10,'change_subjects'),(39,'Can delete subjects',10,'delete_subjects'),(40,'Can view subjects',10,'view_subjects'),(41,'Can add students',11,'add_students'),(42,'Can change students',11,'change_students'),(43,'Can delete students',11,'delete_students'),(44,'Can view students',11,'view_students'),(45,'Can add student result',12,'add_studentresult'),(46,'Can change student result',12,'change_studentresult'),(47,'Can delete student result',12,'delete_studentresult'),(48,'Can view student result',12,'view_studentresult'),(49,'Can add staffs',13,'add_staffs'),(50,'Can change staffs',13,'change_staffs'),(51,'Can delete staffs',13,'delete_staffs'),(52,'Can view staffs',13,'view_staffs'),(53,'Can add online class room',14,'add_onlineclassroom'),(54,'Can change online class room',14,'change_onlineclassroom'),(55,'Can delete online class room',14,'delete_onlineclassroom'),(56,'Can view online class room',14,'view_onlineclassroom'),(57,'Can add notification student',15,'add_notificationstudent'),(58,'Can change notification student',15,'change_notificationstudent'),(59,'Can delete notification student',15,'delete_notificationstudent'),(60,'Can view notification student',15,'view_notificationstudent'),(61,'Can add notification staffs',16,'add_notificationstaffs'),(62,'Can change notification staffs',16,'change_notificationstaffs'),(63,'Can delete notification staffs',16,'delete_notificationstaffs'),(64,'Can view notification staffs',16,'view_notificationstaffs'),(65,'Can add leave report student',17,'add_leavereportstudent'),(66,'Can change leave report student',17,'change_leavereportstudent'),(67,'Can delete leave report student',17,'delete_leavereportstudent'),(68,'Can view leave report student',17,'view_leavereportstudent'),(69,'Can add leave report staff',18,'add_leavereportstaff'),(70,'Can change leave report staff',18,'change_leavereportstaff'),(71,'Can delete leave report staff',18,'delete_leavereportstaff'),(72,'Can view leave report staff',18,'view_leavereportstaff'),(73,'Can add feed back student',19,'add_feedbackstudent'),(74,'Can change feed back student',19,'change_feedbackstudent'),(75,'Can delete feed back student',19,'delete_feedbackstudent'),(76,'Can view feed back student',19,'view_feedbackstudent'),(77,'Can add feed back staffs',20,'add_feedbackstaffs'),(78,'Can change feed back staffs',20,'change_feedbackstaffs'),(79,'Can delete feed back staffs',20,'delete_feedbackstaffs'),(80,'Can view feed back staffs',20,'view_feedbackstaffs'),(81,'Can add attendance report',21,'add_attendancereport'),(82,'Can change attendance report',21,'change_attendancereport'),(83,'Can delete attendance report',21,'delete_attendancereport'),(84,'Can view attendance report',21,'view_attendancereport'),(85,'Can add admin hod',22,'add_adminhod'),(86,'Can change admin hod',22,'change_adminhod'),(87,'Can delete admin hod',22,'delete_adminhod'),(88,'Can view admin hod',22,'view_adminhod');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_school_sy` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_school_sy` FOREIGN KEY (`user_id`) REFERENCES `school_system_app_customuser` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(22,'school_system_app','adminhod'),(7,'school_system_app','attendance'),(21,'school_system_app','attendancereport'),(8,'school_system_app','courses'),(6,'school_system_app','customuser'),(20,'school_system_app','feedbackstaffs'),(19,'school_system_app','feedbackstudent'),(18,'school_system_app','leavereportstaff'),(17,'school_system_app','leavereportstudent'),(16,'school_system_app','notificationstaffs'),(15,'school_system_app','notificationstudent'),(14,'school_system_app','onlineclassroom'),(9,'school_system_app','sessionyearmodel'),(13,'school_system_app','staffs'),(12,'school_system_app','studentresult'),(11,'school_system_app','students'),(10,'school_system_app','subjects'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-09-21 15:58:40.192390'),(2,'contenttypes','0002_remove_content_type_name','2020-09-21 15:58:51.067012'),(3,'auth','0001_initial','2020-09-21 15:58:56.336314'),(4,'auth','0002_alter_permission_name_max_length','2020-09-21 15:59:21.716765'),(5,'auth','0003_alter_user_email_max_length','2020-09-21 15:59:22.038784'),(6,'auth','0004_alter_user_username_opts','2020-09-21 15:59:22.403805'),(7,'auth','0005_alter_user_last_login_null','2020-09-21 15:59:22.568814'),(8,'auth','0006_require_contenttypes_0002','2020-09-21 15:59:22.708822'),(9,'auth','0007_alter_validators_add_error_messages','2020-09-21 15:59:22.812828'),(10,'auth','0008_alter_user_username_max_length','2020-09-21 15:59:23.219851'),(11,'auth','0009_alter_user_last_name_max_length','2020-09-21 15:59:23.400862'),(12,'auth','0010_alter_group_name_max_length','2020-09-21 15:59:24.474923'),(13,'auth','0011_update_proxy_permissions','2020-09-21 15:59:24.904948'),(14,'school_system_app','0001_initial','2020-09-21 16:00:14.611791'),(15,'admin','0001_initial','2020-09-21 16:02:13.829610'),(16,'admin','0002_logentry_remove_auto_add','2020-09-21 16:02:24.775236'),(17,'admin','0003_logentry_add_action_flag_choices','2020-09-21 16:02:25.219261'),(18,'sessions','0001_initial','2020-09-21 16:02:26.683345');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('6m2d2pmxxlkqcri2jxynxpyavcyenyzj','N2M0Y2ZjODc0NjViYTVhYTFiYzY0Y2QxNTc1ZTNlNzVlNDNkMTk2Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic2Nob29sX3N5c3RlbV9hcHAuRW1haWxCYWNrRW5kLkVtYWlsQmFja0VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImI0MTA2ZmJhNmU4NjJmODM3YTViYzUxMTg5YTdhOWZkZWY1OWE3ZDQifQ==','2020-10-28 08:51:00.762742'),('8myhy687dntzatvprctbbt4zaxjw6617','MWRhOWZlMWM0MzJhMGNjMmI0NmU2OWQ1MTNlYTQ4YTFmOTM5NjMwNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic2Nob29sX3N5c3RlbV9hcHAuRW1haWxCYWNrRW5kLkVtYWlsQmFja0VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkxNjJjZmY4MGJlZjdkNWU0NzI0MzBkN2VmY2I5ODZhZDZiZGRjYTQifQ==','2020-10-30 13:18:54.219477'),('kjlxxozgfgxgdqlcgcwn6jzfyfu6c313','N2M0Y2ZjODc0NjViYTVhYTFiYzY0Y2QxNTc1ZTNlNzVlNDNkMTk2Nzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic2Nob29sX3N5c3RlbV9hcHAuRW1haWxCYWNrRW5kLkVtYWlsQmFja0VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImI0MTA2ZmJhNmU4NjJmODM3YTViYzUxMTg5YTdhOWZkZWY1OWE3ZDQifQ==','2020-10-06 17:04:29.822890'),('qpv9mio8c9poiwrwn3zq1u0l1iuk271a','MWRhOWZlMWM0MzJhMGNjMmI0NmU2OWQ1MTNlYTQ4YTFmOTM5NjMwNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoic2Nob29sX3N5c3RlbV9hcHAuRW1haWxCYWNrRW5kLkVtYWlsQmFja0VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjkxNjJjZmY4MGJlZjdkNWU0NzI0MzBkN2VmY2I5ODZhZDZiZGRjYTQifQ==','2020-10-14 16:47:24.891564');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_adminhod`
--

DROP TABLE IF EXISTS `school_system_app_adminhod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_adminhod` (
  `id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  CONSTRAINT `school_system_app_ad_admin_id_5ba4fa3a_fk_school_sy` FOREIGN KEY (`admin_id`) REFERENCES `school_system_app_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_adminhod`
--

LOCK TABLES `school_system_app_adminhod` WRITE;
/*!40000 ALTER TABLE `school_system_app_adminhod` DISABLE KEYS */;
INSERT INTO `school_system_app_adminhod` VALUES (1,'2020-09-22 14:41:39.811713','2020-09-22 14:41:39.811713',1);
/*!40000 ALTER TABLE `school_system_app_adminhod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_attendance`
--

DROP TABLE IF EXISTS `school_system_app_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `attendance_date` date NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `session_year_id_id` int NOT NULL,
  `subject_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_at_session_year_id_id_9c3175d5_fk_school_sy` (`session_year_id_id`),
  KEY `school_system_app_at_subject_id_id_5ebea321_fk_school_sy` (`subject_id_id`),
  CONSTRAINT `school_system_app_at_session_year_id_id_9c3175d5_fk_school_sy` FOREIGN KEY (`session_year_id_id`) REFERENCES `school_system_app_sessionyearmodel` (`id`),
  CONSTRAINT `school_system_app_at_subject_id_id_5ebea321_fk_school_sy` FOREIGN KEY (`subject_id_id`) REFERENCES `school_system_app_subjects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_attendance`
--

LOCK TABLES `school_system_app_attendance` WRITE;
/*!40000 ALTER TABLE `school_system_app_attendance` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_attendancereport`
--

DROP TABLE IF EXISTS `school_system_app_attendancereport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_attendancereport` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `attendance_id_id` int NOT NULL,
  `student_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_at_attendance_id_id_c8f48dfe_fk_school_sy` (`attendance_id_id`),
  KEY `school_system_app_at_student_id_id_e7338643_fk_school_sy` (`student_id_id`),
  CONSTRAINT `school_system_app_at_attendance_id_id_c8f48dfe_fk_school_sy` FOREIGN KEY (`attendance_id_id`) REFERENCES `school_system_app_attendance` (`id`),
  CONSTRAINT `school_system_app_at_student_id_id_e7338643_fk_school_sy` FOREIGN KEY (`student_id_id`) REFERENCES `school_system_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_attendancereport`
--

LOCK TABLES `school_system_app_attendancereport` WRITE;
/*!40000 ALTER TABLE `school_system_app_attendancereport` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_attendancereport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_courses`
--

DROP TABLE IF EXISTS `school_system_app_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_courses`
--

LOCK TABLES `school_system_app_courses` WRITE;
/*!40000 ALTER TABLE `school_system_app_courses` DISABLE KEYS */;
INSERT INTO `school_system_app_courses` VALUES (1,'Occupational Health and Safety','2020-09-22 15:03:06.363300','2020-09-22 15:03:06.363300'),(2,'History of Football','2020-09-22 15:03:25.057369','2020-09-22 15:03:25.057369'),(3,'Defensive Playing','2020-09-22 15:04:05.632690','2020-09-22 15:04:05.632690'),(4,'Use of English','2020-09-22 15:05:05.884136','2020-09-22 15:05:05.884136');
/*!40000 ALTER TABLE `school_system_app_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_customuser`
--

DROP TABLE IF EXISTS `school_system_app_customuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_customuser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_customuser`
--

LOCK TABLES `school_system_app_customuser` WRITE;
/*!40000 ALTER TABLE `school_system_app_customuser` DISABLE KEYS */;
INSERT INTO `school_system_app_customuser` VALUES (1,'pbkdf2_sha256$180000$8ySsTbTdy6EM$QSEeSkDW58snD6ptYPXAwiJ63DGp2R6RkZhEdkKUDRg=','2020-10-16 13:18:52.907402',1,'admin','','','admin@gmail.com',1,1,'2020-09-22 14:41:39.150675','1'),(2,'pbkdf2_sha256$180000$w1GFNflqiCr7$FQ6atICWFsse42FLZagSCKt9RJDnTofjNnoik0GHNVI=','2020-10-14 08:51:00.559731',0,'staff1','staff','1','staff1@gmail.com',0,1,'2020-09-22 14:48:09.420998','2'),(3,'pbkdf2_sha256$180000$7ZhIyiPSLwNM$LhTlpGMYXmih+QZwgWW9lOGyFF87SvEeAAR59D2fE0M=',NULL,0,'staff2','staff','2','staff2@gmail.com',0,1,'2020-09-22 14:49:01.797993','2'),(4,'pbkdf2_sha256$180000$57AEQlEMoELx$9IalmNgXh1O5A+bFsfURz3Yj+XmvElX1GDgEOsOsdMs=','2020-09-25 16:38:30.503777',0,'student1','student','1','student1@gmail.com',0,1,'2020-09-22 15:39:28.778127','3'),(5,'pbkdf2_sha256$180000$a9dTCXm4mgOK$6GS/MMITOKxwq2XcpaqsYHcPdNgBzhvaHlNxTcQ0XCU=','2020-09-30 16:34:48.055276',0,'student2','student','2','student2@gmail.com',0,1,'2020-09-22 15:42:20.462947','3');
/*!40000 ALTER TABLE `school_system_app_customuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_customuser_groups`
--

DROP TABLE IF EXISTS `school_system_app_customuser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_customuser_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customuser_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `school_system_app_custom_customuser_id_group_id_f3fbc034_uniq` (`customuser_id`,`group_id`),
  KEY `school_system_app_cu_group_id_0d18a81f_fk_auth_grou` (`group_id`),
  CONSTRAINT `school_system_app_cu_customuser_id_4cd1268a_fk_school_sy` FOREIGN KEY (`customuser_id`) REFERENCES `school_system_app_customuser` (`id`),
  CONSTRAINT `school_system_app_cu_group_id_0d18a81f_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_customuser_groups`
--

LOCK TABLES `school_system_app_customuser_groups` WRITE;
/*!40000 ALTER TABLE `school_system_app_customuser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_customuser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_customuser_user_permissions`
--

DROP TABLE IF EXISTS `school_system_app_customuser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_customuser_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customuser_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `school_system_app_custom_customuser_id_permission_5a83ac02_uniq` (`customuser_id`,`permission_id`),
  KEY `school_system_app_cu_permission_id_a8985536_fk_auth_perm` (`permission_id`),
  CONSTRAINT `school_system_app_cu_customuser_id_76341b36_fk_school_sy` FOREIGN KEY (`customuser_id`) REFERENCES `school_system_app_customuser` (`id`),
  CONSTRAINT `school_system_app_cu_permission_id_a8985536_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_customuser_user_permissions`
--

LOCK TABLES `school_system_app_customuser_user_permissions` WRITE;
/*!40000 ALTER TABLE `school_system_app_customuser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_customuser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_feedbackstaffs`
--

DROP TABLE IF EXISTS `school_system_app_feedbackstaffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_feedbackstaffs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_fe_staff_id_id_623208c2_fk_school_sy` (`staff_id_id`),
  CONSTRAINT `school_system_app_fe_staff_id_id_623208c2_fk_school_sy` FOREIGN KEY (`staff_id_id`) REFERENCES `school_system_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_feedbackstaffs`
--

LOCK TABLES `school_system_app_feedbackstaffs` WRITE;
/*!40000 ALTER TABLE `school_system_app_feedbackstaffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_feedbackstaffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_feedbackstudent`
--

DROP TABLE IF EXISTS `school_system_app_feedbackstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_feedbackstudent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feedback` longtext NOT NULL,
  `feedback_reply` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_fe_student_id_id_1e7faf9b_fk_school_sy` (`student_id_id`),
  CONSTRAINT `school_system_app_fe_student_id_id_1e7faf9b_fk_school_sy` FOREIGN KEY (`student_id_id`) REFERENCES `school_system_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_feedbackstudent`
--

LOCK TABLES `school_system_app_feedbackstudent` WRITE;
/*!40000 ALTER TABLE `school_system_app_feedbackstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_feedbackstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_leavereportstaff`
--

DROP TABLE IF EXISTS `school_system_app_leavereportstaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_leavereportstaff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_le_staff_id_id_417af790_fk_school_sy` (`staff_id_id`),
  CONSTRAINT `school_system_app_le_staff_id_id_417af790_fk_school_sy` FOREIGN KEY (`staff_id_id`) REFERENCES `school_system_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_leavereportstaff`
--

LOCK TABLES `school_system_app_leavereportstaff` WRITE;
/*!40000 ALTER TABLE `school_system_app_leavereportstaff` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_leavereportstaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_leavereportstudent`
--

DROP TABLE IF EXISTS `school_system_app_leavereportstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_leavereportstudent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `leave_date` varchar(255) NOT NULL,
  `leave_message` longtext NOT NULL,
  `leave_status` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_le_student_id_id_1d6a7daa_fk_school_sy` (`student_id_id`),
  CONSTRAINT `school_system_app_le_student_id_id_1d6a7daa_fk_school_sy` FOREIGN KEY (`student_id_id`) REFERENCES `school_system_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_leavereportstudent`
--

LOCK TABLES `school_system_app_leavereportstudent` WRITE;
/*!40000 ALTER TABLE `school_system_app_leavereportstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_leavereportstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_notificationstaffs`
--

DROP TABLE IF EXISTS `school_system_app_notificationstaffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_notificationstaffs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `staff_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_no_staff_id_id_c4ab5eba_fk_school_sy` (`staff_id_id`),
  CONSTRAINT `school_system_app_no_staff_id_id_c4ab5eba_fk_school_sy` FOREIGN KEY (`staff_id_id`) REFERENCES `school_system_app_staffs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_notificationstaffs`
--

LOCK TABLES `school_system_app_notificationstaffs` WRITE;
/*!40000 ALTER TABLE `school_system_app_notificationstaffs` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_notificationstaffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_notificationstudent`
--

DROP TABLE IF EXISTS `school_system_app_notificationstudent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_notificationstudent` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `student_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_no_student_id_id_28704191_fk_school_sy` (`student_id_id`),
  CONSTRAINT `school_system_app_no_student_id_id_28704191_fk_school_sy` FOREIGN KEY (`student_id_id`) REFERENCES `school_system_app_students` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_notificationstudent`
--

LOCK TABLES `school_system_app_notificationstudent` WRITE;
/*!40000 ALTER TABLE `school_system_app_notificationstudent` DISABLE KEYS */;
/*!40000 ALTER TABLE `school_system_app_notificationstudent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_onlineclassroom`
--

DROP TABLE IF EXISTS `school_system_app_onlineclassroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_onlineclassroom` (
  `id` int NOT NULL AUTO_INCREMENT,
  `room_name` varchar(255) NOT NULL,
  `room_pwd` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_on` datetime(6) NOT NULL,
  `session_years_id` int NOT NULL,
  `started_by_id` int NOT NULL,
  `subject_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_on_session_years_id_f6a82257_fk_school_sy` (`session_years_id`),
  KEY `school_system_app_on_started_by_id_343e77bc_fk_school_sy` (`started_by_id`),
  KEY `school_system_app_on_subject_id_1298b66b_fk_school_sy` (`subject_id`),
  CONSTRAINT `school_system_app_on_session_years_id_f6a82257_fk_school_sy` FOREIGN KEY (`session_years_id`) REFERENCES `school_system_app_sessionyearmodel` (`id`),
  CONSTRAINT `school_system_app_on_started_by_id_343e77bc_fk_school_sy` FOREIGN KEY (`started_by_id`) REFERENCES `school_system_app_staffs` (`id`),
  CONSTRAINT `school_system_app_on_subject_id_1298b66b_fk_school_sy` FOREIGN KEY (`subject_id`) REFERENCES `school_system_app_subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_onlineclassroom`
--

LOCK TABLES `school_system_app_onlineclassroom` WRITE;
/*!40000 ALTER TABLE `school_system_app_onlineclassroom` DISABLE KEYS */;
INSERT INTO `school_system_app_onlineclassroom` VALUES (1,'202009-2218-0229-06c54f73-dae9-4161-ad02-a8a358a55cdb','202009-2218-0229-71a4cea4-b166-4fcc-b799-16f087826df7',1,'2020-09-22 17:02:29.716020',1,1,2),(2,'202009-2218-0637-68227550-0016-4aea-bb91-c645c21dd67c','202009-2218-0637-9ed7ba23-5cfa-417f-a48e-14bc7fadc6f8',1,'2020-09-22 17:06:37.996221',1,1,1);
/*!40000 ALTER TABLE `school_system_app_onlineclassroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_sessionyearmodel`
--

DROP TABLE IF EXISTS `school_system_app_sessionyearmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_sessionyearmodel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `session_start_year` date NOT NULL,
  `session_end_year` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_sessionyearmodel`
--

LOCK TABLES `school_system_app_sessionyearmodel` WRITE;
/*!40000 ALTER TABLE `school_system_app_sessionyearmodel` DISABLE KEYS */;
INSERT INTO `school_system_app_sessionyearmodel` VALUES (1,'2021-01-01','2021-12-30');
/*!40000 ALTER TABLE `school_system_app_sessionyearmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_staffs`
--

DROP TABLE IF EXISTS `school_system_app_staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_staffs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `fcm_token` longtext NOT NULL,
  `admin_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  CONSTRAINT `school_system_app_st_admin_id_f49c9d3a_fk_school_sy` FOREIGN KEY (`admin_id`) REFERENCES `school_system_app_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_staffs`
--

LOCK TABLES `school_system_app_staffs` WRITE;
/*!40000 ALTER TABLE `school_system_app_staffs` DISABLE KEYS */;
INSERT INTO `school_system_app_staffs` VALUES (1,'staff1 address','2020-09-22 14:48:09.939027','2020-09-22 14:48:09.939027','',2),(2,'staff2 address','2020-09-22 14:49:02.322023','2020-09-22 14:49:02.322023','',3);
/*!40000 ALTER TABLE `school_system_app_staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_studentresult`
--

DROP TABLE IF EXISTS `school_system_app_studentresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_studentresult` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_exam_marks` double NOT NULL,
  `subject_assignment_marks` double NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `student_id_id` int NOT NULL,
  `subject_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_st_student_id_id_26f0e51c_fk_school_sy` (`student_id_id`),
  KEY `school_system_app_st_subject_id_id_a5b4f9b0_fk_school_sy` (`subject_id_id`),
  CONSTRAINT `school_system_app_st_student_id_id_26f0e51c_fk_school_sy` FOREIGN KEY (`student_id_id`) REFERENCES `school_system_app_students` (`id`),
  CONSTRAINT `school_system_app_st_subject_id_id_a5b4f9b0_fk_school_sy` FOREIGN KEY (`subject_id_id`) REFERENCES `school_system_app_subjects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_studentresult`
--

LOCK TABLES `school_system_app_studentresult` WRITE;
/*!40000 ALTER TABLE `school_system_app_studentresult` DISABLE KEYS */;
INSERT INTO `school_system_app_studentresult` VALUES (1,58,40,'2020-09-25','2020-09-25',2,1),(2,58,40,'2020-09-25','2020-09-25',2,2);
/*!40000 ALTER TABLE `school_system_app_studentresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_students`
--

DROP TABLE IF EXISTS `school_system_app_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `fcm_token` longtext NOT NULL,
  `admin_id` int NOT NULL,
  `course_id_id` int NOT NULL,
  `session_year_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_id` (`admin_id`),
  KEY `school_system_app_st_course_id_id_19e55b72_fk_school_sy` (`course_id_id`),
  KEY `school_system_app_st_session_year_id_id_07a6ba98_fk_school_sy` (`session_year_id_id`),
  CONSTRAINT `school_system_app_st_admin_id_750056c6_fk_school_sy` FOREIGN KEY (`admin_id`) REFERENCES `school_system_app_customuser` (`id`),
  CONSTRAINT `school_system_app_st_course_id_id_19e55b72_fk_school_sy` FOREIGN KEY (`course_id_id`) REFERENCES `school_system_app_courses` (`id`),
  CONSTRAINT `school_system_app_st_session_year_id_id_07a6ba98_fk_school_sy` FOREIGN KEY (`session_year_id_id`) REFERENCES `school_system_app_sessionyearmodel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_students`
--

LOCK TABLES `school_system_app_students` WRITE;
/*!40000 ALTER TABLE `school_system_app_students` DISABLE KEYS */;
INSERT INTO `school_system_app_students` VALUES (1,'Male','/media/Koala.jpg','student1 address','2020-09-22 15:39:29.833187','2020-09-22 15:39:29.833187','',4,3,1),(2,'Female','/media/Penguins.jpg','student2 address','2020-09-22 15:42:21.256992','2020-09-22 15:42:21.257992','',5,2,1);
/*!40000 ALTER TABLE `school_system_app_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `school_system_app_subjects`
--

DROP TABLE IF EXISTS `school_system_app_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `school_system_app_subjects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject_name` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `course_id_id` int NOT NULL,
  `staff_id_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `school_system_app_su_course_id_id_44e54ebe_fk_school_sy` (`course_id_id`),
  KEY `school_system_app_su_staff_id_id_cfc9e573_fk_school_sy` (`staff_id_id`),
  CONSTRAINT `school_system_app_su_course_id_id_44e54ebe_fk_school_sy` FOREIGN KEY (`course_id_id`) REFERENCES `school_system_app_courses` (`id`),
  CONSTRAINT `school_system_app_su_staff_id_id_cfc9e573_fk_school_sy` FOREIGN KEY (`staff_id_id`) REFERENCES `school_system_app_customuser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `school_system_app_subjects`
--

LOCK TABLES `school_system_app_subjects` WRITE;
/*!40000 ALTER TABLE `school_system_app_subjects` DISABLE KEYS */;
INSERT INTO `school_system_app_subjects` VALUES (1,'Origin Of Soccer','2020-09-22 16:55:45.932925','2020-09-22 16:55:45.932925',2,2),(2,'English Football: a Social History ','2020-09-22 16:58:16.704549','2020-09-22 16:58:16.704549',2,2),(3,'Introduction to First Aid in football','2020-09-22 17:00:53.687528','2020-09-22 17:00:53.687528',1,3);
/*!40000 ALTER TABLE `school_system_app_subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16 15:26:45
