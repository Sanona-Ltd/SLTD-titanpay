-- MySQL dump 10.13  Distrib 8.4.4, for macos15 (arm64)
--
-- Host: 127.0.0.1    Database: shofy
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'tDcIOVgHe38whkPgdR1E8BIZ3RFuU7iK',1,'2025-09-05 17:59:05','2025-09-05 17:59:05','2025-09-05 17:59:05');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tablet_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Enjoy free shipping on all orders over $99! Shop now and save on delivery costs.',0,NULL,NULL,0,1,'2025-09-06 00:59:16',NULL,1,'2025-09-05 17:59:16','2025-09-05 17:59:16'),(2,'Announcement 2','Need assistance? Our customer support is available 24/7 to help you with any questions or concerns.',0,NULL,NULL,0,1,'2025-09-06 00:59:16',NULL,1,'2025-09-05 17:59:16','2025-09-05 17:59:16'),(3,'Announcement 3','Shop with confidence! We offer a hassle-free 30 days return service for your peace of mind.',0,NULL,NULL,0,1,'2025-09-06 00:59:16',NULL,1,'2025-09-05 17:59:16','2025-09-05 17:59:16');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `action_label` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actor_id` bigint unsigned NOT NULL,
  `actor_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'Botble\\ACL\\Models\\User',
  `reference_id` bigint unsigned NOT NULL,
  `reference_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_index` (`parent_id`),
  KEY `categories_status_index` (`status`),
  KEY `categories_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Crisp Bread &amp; Cake',0,'Cumque culpa omnis aut modi aut quibusdam suscipit nostrum. Eveniet aut debitis est quidem. Vel delectus odio facilis eum omnis dolorem consequatur.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(2,'Fashion',0,'Cum consequatur aliquid nesciunt sit deserunt sunt. Ut voluptas laboriosam quasi a iste. Assumenda culpa minima eius omnis. Incidunt esse veniam quo qui delectus.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(3,'Electronic',0,'Cupiditate temporibus non voluptatibus. Ipsa qui consectetur vero delectus sed soluta. Velit inventore qui voluptas occaecati amet facilis.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(4,'Commercial',0,'Est quia incidunt sunt et temporibus possimus sit. Non aliquam id excepturi repellendus quaerat. Est ullam et sapiente culpa ipsum fugit fugit maiores. Dolor sit saepe deserunt deserunt adipisci.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(5,'Organic Fruits',0,'Et magnam ipsum adipisci. Modi numquam consequatur tenetur enim non amet eligendi minima.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(6,'Ecological',0,'Consequatur beatae facere quia animi. Aut consequatur natus pariatur voluptatem impedit impedit nemo quidem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2025-09-05 17:59:12','2025-09-05 17:59:12');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `record_id` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `idx_cities_name` (`name`),
  KEY `idx_cities_state_status` (`state_id`,`status`),
  KEY `idx_cities_status` (`status`),
  KEY `idx_cities_state_id` (`state_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`),
  KEY `idx_cities_trans_city_lang` (`cities_id`,`lang_code`),
  KEY `idx_cities_trans_name` (`name`),
  KEY `idx_cities_trans_cities_id` (`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Mr. Maurice Prohaska','drodriguez@example.com','+1.870.817.6890','78252 Francesca Ports Suite 500\nZulaufshire, GA 39610-1994','Ducimus et eaque excepturi veritatis.','Qui explicabo molestiae et a magnam quae. Omnis mollitia repellendus quas iusto nihil facere et commodi. Esse atque consequatur ut nesciunt neque eos. Assumenda voluptas dolores ex delectus iure dignissimos quo. Ut iusto rerum culpa. Dolore aut blanditiis consequatur et voluptatibus nihil et. Sit reprehenderit sunt similique consequatur animi. Nam et debitis minus est ad nesciunt.',NULL,'unread','2025-09-05 17:59:10','2025-09-05 17:59:10'),(2,'Henriette Collier I','yschmitt@example.org','1-820-744-5714','1545 Zieme Well\nNorth Ressieborough, SC 77442','Sapiente consequatur doloribus quia.','Qui qui esse sit dolore. Nihil aperiam distinctio harum odit distinctio. Magni aliquam eum autem sint numquam veritatis temporibus. Illum et odit quia et sit autem tenetur. Inventore ex deserunt libero aut nostrum possimus vero. Voluptas ea voluptatem libero aliquid occaecati architecto natus. Facilis eum enim ipsam provident blanditiis. Explicabo quia accusamus ad in sed rem. Cum esse ut sapiente magni consectetur sunt perspiciatis. Ipsum qui veniam ratione.',NULL,'read','2025-09-05 17:59:10','2025-09-05 17:59:10'),(3,'Aniyah VonRueden','gleason.jermaine@example.org','+19037936143','91259 Chandler Parkways\nNorth Stanfordmouth, AZ 98590-2621','Pariatur soluta sit qui perspiciatis repellat.','Et accusamus totam ullam. Minima aspernatur ipsa distinctio est minima. Nostrum corrupti accusamus quasi blanditiis et veritatis est quo. Aperiam in accusamus maiores neque. Qui nihil omnis sapiente qui perferendis et accusantium similique. Blanditiis similique dolor voluptate ad occaecati blanditiis. Laborum harum molestiae aspernatur. Odit a harum libero sequi consequatur in dicta error. Reiciendis vitae fugit dolorem consequatur ducimus. Qui tenetur provident natus quasi harum.',NULL,'unread','2025-09-05 17:59:10','2025-09-05 17:59:10'),(4,'Ms. Beulah Schneider','jeremie91@example.net','+1 (559) 693-3481','842 Jan Vista\nTyrafurt, PA 60598','Numquam voluptatem repudiandae ea minima et.','Veniam ducimus a laudantium veritatis iusto corrupti sequi. Quia quis quam asperiores quis vero modi animi. Alias sit debitis debitis est debitis qui. Ut ipsa ea quidem voluptas. Omnis quia ipsa aliquid velit cupiditate in fugit. Assumenda atque nobis aut dolorum nam iste. Commodi ipsum non mollitia. Distinctio rerum dolor eligendi voluptatem. Molestiae omnis tenetur totam molestiae accusantium qui placeat tempora. Voluptates quis voluptatem et in. Voluptate ut magnam ipsam officiis enim omnis.',NULL,'read','2025-09-05 17:59:10','2025-09-05 17:59:10'),(5,'Ashlynn Sanford','sheila93@example.org','(614) 832-1112','61050 Tyrel Hills\nLake Jocelyn, IN 45102','Nostrum minus voluptas sunt ea quo minima soluta.','Fugiat tenetur et omnis explicabo. Itaque eaque neque quasi ipsa. Velit qui maxime accusantium sint est maiores velit. Rerum omnis vel ducimus doloribus tempore recusandae natus. Ducimus molestias temporibus iure iusto quis. Aperiam corporis explicabo possimus alias ad facere consequatur. Assumenda consequatur possimus nisi sunt culpa consequuntur. Accusantium inventore ut velit iure est.',NULL,'unread','2025-09-05 17:59:10','2025-09-05 17:59:10'),(6,'Lavada Lang','ryleigh.cremin@example.net','+18315516862','753 Seth Views\nHuldafort, NV 56668-8561','Voluptatem voluptas sed odit ut quae.','Consequatur a necessitatibus eum voluptas. Temporibus magnam occaecati cupiditate quos maiores fugiat aut recusandae. Enim quis tempora numquam eveniet ab. Eum officiis sed rerum minus. Aspernatur facilis sunt ab porro quibusdam laborum delectus. Animi non et consequatur dignissimos numquam porro officiis. Placeat mollitia maiores deserunt repellendus ex possimus. Doloribus et quasi nisi dolorem. Eum vel qui ea temporibus eos voluptate recusandae. Eos officia ratione qui libero neque optio.',NULL,'read','2025-09-05 17:59:10','2025-09-05 17:59:10'),(7,'Deshaun Anderson','ziemann.lorena@example.net','678.264.9486','980 Frami Haven Suite 846\nAvaland, WY 35930','Maiores repudiandae expedita facere architecto.','Ipsam quia corporis quo. Deleniti reiciendis sit quis. Quasi et veritatis modi accusamus commodi accusamus. Et non et aspernatur reiciendis. Nihil aliquam est ullam distinctio. Recusandae ut cum non et omnis id non. Libero et iste perspiciatis maxime amet saepe est. Et nostrum dolore in est ut quasi. Ratione voluptatem minima et impedit qui. Minima labore ipsum voluptatibus maxime voluptatibus est harum. Quae unde quae placeat aut sint a.',NULL,'unread','2025-09-05 17:59:10','2025-09-05 17:59:10'),(8,'Sienna Wilderman','crystal.dietrich@example.org','(947) 545-5053','7215 Bobby Trail Apt. 872\nHilpertmouth, HI 84616-7228','Ratione sit laborum cupiditate eos nam in ut.','Exercitationem recusandae ea quia excepturi tempora. Voluptates similique tenetur dignissimos est. Ipsam id expedita id quaerat aut. Dolore voluptas a qui id cupiditate. Et amet nihil nesciunt consequatur. Accusantium inventore dicta maxime accusamus similique ut. Aut explicabo molestias et velit facere hic qui. Eligendi adipisci aut debitis numquam earum ea adipisci. Voluptas harum placeat quo minima. Et inventore qui qui quidem.',NULL,'unread','2025-09-05 17:59:10','2025-09-05 17:59:10'),(9,'Randi VonRueden','helen83@example.com','630.448.5022','8307 Kuhn Skyway Suite 140\nPort Felicitafurt, MT 80526-9462','Quis fuga expedita quibusdam debitis sapiente.','Debitis harum et sit sed neque aut id. Exercitationem nostrum doloribus magnam facere. Dolores nemo et voluptas enim. Modi et alias eligendi repellat voluptas. Ea dolorem totam dolore voluptatem nihil. Earum consequatur sapiente voluptatum quia nisi esse adipisci consequatur.',NULL,'unread','2025-09-05 17:59:10','2025-09-05 17:59:10'),(10,'Hettie West II','heathcote.shirley@example.com','1-754-282-7404','173 John Circle\nSouth Kaylie, LA 81010-4570','Illo et velit praesentium velit.','Placeat dolores voluptas magni quidem. Aliquid rerum eaque mollitia architecto alias laudantium minus. Consectetur molestiae magnam et asperiores. Est dicta illum voluptate fugit necessitatibus. Aliquam officia animi nisi consequatur voluptatem. Cumque rerum voluptate doloribus aliquam vel totam optio. Nihil est nostrum expedita voluptatem. Voluptatum et ut occaecati nobis.',NULL,'read','2025-09-05 17:59:10','2025-09-05 17:59:10');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_countries_name` (`name`),
  KEY `idx_countries_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`),
  KEY `idx_countries_trans_country_lang` (`countries_id`,`lang_code`),
  KEY `idx_countries_trans_name` (`name`),
  KEY `idx_countries_trans_countries_id` (`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `widget_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dashboard_widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_tokens`
--

DROP TABLE IF EXISTS `device_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `device_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_version` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_tokens_token_unique` (`token`),
  KEY `device_tokens_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `device_tokens_platform_is_active_index` (`platform`,`is_active`),
  KEY `device_tokens_is_active_index` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_tokens`
--

LOCK TABLES `device_tokens` WRITE;
/*!40000 ALTER TABLE `device_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `device_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_abandoned_carts`
--

DROP TABLE IF EXISTS `ec_abandoned_carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_abandoned_carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_data` json NOT NULL,
  `total_amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `items_count` int NOT NULL DEFAULT '0',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abandoned_at` timestamp NULL DEFAULT NULL,
  `reminder_sent_at` timestamp NULL DEFAULT NULL,
  `reminders_sent` int NOT NULL DEFAULT '0',
  `is_recovered` tinyint(1) NOT NULL DEFAULT '0',
  `recovered_at` timestamp NULL DEFAULT NULL,
  `recovered_order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_abandoned_carts_abandoned_at_is_recovered_index` (`abandoned_at`,`is_recovered`),
  KEY `ec_abandoned_carts_created_at_is_recovered_index` (`created_at`,`is_recovered`),
  KEY `ec_abandoned_carts_customer_id_index` (`customer_id`),
  KEY `ec_abandoned_carts_session_id_index` (`session_id`),
  KEY `ec_abandoned_carts_email_index` (`email`),
  KEY `ec_abandoned_carts_recovered_order_id_index` (`recovered_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_abandoned_carts`
--

LOCK TABLES `ec_abandoned_carts` WRITE;
/*!40000 ALTER TABLE `ec_abandoned_carts` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_abandoned_carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands`
--

DROP TABLE IF EXISTS `ec_brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands`
--

LOCK TABLES `ec_brands` WRITE;
/*!40000 ALTER TABLE `ec_brands` DISABLE KEYS */;
INSERT INTO `ec_brands` VALUES (1,'FoodPound','New Snacks Release',NULL,'main/brands/1.png','published',0,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(2,'iTea JSC','Happy Tea 100% Organic. From $29.9',NULL,'main/brands/2.png','published',1,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(3,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/3.png','published',2,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(4,'Shofy','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/4.png','published',3,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(5,'Soda Brand','Fresh Meat Sausage. BUY 2 GET 1!',NULL,'main/brands/5.png','published',4,1,'2025-09-05 17:59:06','2025-09-05 17:59:06');
/*!40000 ALTER TABLE `ec_brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_brands_translations`
--

DROP TABLE IF EXISTS `ec_brands_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_brands_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_brands_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_brands_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_brands_translations`
--

LOCK TABLES `ec_brands_translations` WRITE;
/*!40000 ALTER TABLE `ec_brands_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_brands_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_cart`
--

DROP TABLE IF EXISTS `ec_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_cart` (
  `identifier` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`identifier`,`instance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_cart`
--

LOCK TABLES `ec_cart` WRITE;
/*!40000 ALTER TABLE `ec_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_currencies`
--

DROP TABLE IF EXISTS `ec_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned DEFAULT '0',
  `order` int unsigned DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_currencies`
--

LOCK TABLES `ec_currencies` WRITE;
/*!40000 ALTER TABLE `ec_currencies` DISABLE KEYS */;
INSERT INTO `ec_currencies` VALUES (1,'USD','$',1,2,0,1,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(2,'EUR','€',0,2,1,0,0.84,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(3,'VND','₫',0,0,2,0,23203,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(4,'NGN','₦',1,2,2,0,895.52,'2025-09-05 17:59:06','2025-09-05 17:59:06');
/*!40000 ALTER TABLE `ec_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_addresses`
--

DROP TABLE IF EXISTS `ec_customer_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_addresses`
--

LOCK TABLES `ec_customer_addresses` WRITE;
/*!40000 ALTER TABLE `ec_customer_addresses` DISABLE KEYS */;
INSERT INTO `ec_customer_addresses` VALUES (1,'Jodie Rohan Sr.','customer@botble.com','+13517748734','HR','Texas','Port Matteoton','8730 Violet Keys',1,1,'2025-09-05 17:59:07','2025-09-05 17:59:07','80040-4308'),(2,'Jodie Rohan Sr.','customer@botble.com','+14758099307','VI','Florida','Rosalindtown','536 Herman Wells',1,0,'2025-09-05 17:59:07','2025-09-05 17:59:07','29588-5789'),(3,'Nikolas Hudson','vendor@botble.com','+18659916439','AS','Delaware','East Ron','127 Weissnat Fork Suite 980',2,1,'2025-09-05 17:59:08','2025-09-05 17:59:08','25906'),(4,'Nikolas Hudson','vendor@botble.com','+17609576407','SZ','Nevada','Cruickshanktown','9616 Laurine Drive',2,0,'2025-09-05 17:59:08','2025-09-05 17:59:08','84739'),(5,'Bonita Ferry','bcormier@example.org','+16788808307','PS','West Virginia','North Josefina','9146 Emelia Summit',3,1,'2025-09-05 17:59:08','2025-09-05 17:59:08','89506'),(6,'Sallie Gorczany','uosinski@example.net','+15318666242','ZA','Oklahoma','Lake Carlos','3708 Watsica Courts',4,1,'2025-09-05 17:59:08','2025-09-05 17:59:08','80014-2172'),(7,'Adela VonRueden MD','jimmie52@example.com','+12527936071','VU','Maine','North Jordyn','68950 Lakin Islands Suite 139',5,1,'2025-09-05 17:59:08','2025-09-05 17:59:08','97092'),(8,'Mrs. Kirstin Kuhic','violet79@example.org','+17033709752','SR','New Jersey','West Keelyland','2521 Lucius Lake',6,1,'2025-09-05 17:59:09','2025-09-05 17:59:09','17462'),(9,'Bennie Dibbert','dgutkowski@example.net','+19858385275','IL','Idaho','Port Lisaville','68753 Schaefer Center Apt. 061',7,1,'2025-09-05 17:59:09','2025-09-05 17:59:09','47680-6493'),(10,'Stephanie Hills I','effertz.rowan@example.org','+16514542889','DM','Iowa','East Hilbertmouth','959 Deckow Lights',8,1,'2025-09-05 17:59:09','2025-09-05 17:59:09','37154-4161'),(11,'Alexa Bradtke','itorp@example.com','+15857764608','MX','Arizona','Hamillmouth','500 Ruth Trafficway',9,1,'2025-09-05 17:59:10','2025-09-05 17:59:10','97124'),(12,'Mr. Wilber Johns','iokon@example.net','+19016399497','PE','Connecticut','Smithamton','836 Daisha Grove',10,1,'2025-09-05 17:59:10','2025-09-05 17:59:10','51435-0098');
/*!40000 ALTER TABLE `ec_customer_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_deletion_requests`
--

DROP TABLE IF EXISTS `ec_customer_deletion_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_deletion_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting_for_confirmation',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `confirmed_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_customer_deletion_requests_token_unique` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_deletion_requests`
--

LOCK TABLES `ec_customer_deletion_requests` WRITE;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_deletion_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_password_resets`
--

DROP TABLE IF EXISTS `ec_customer_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `ec_customer_password_resets_email_index` (`email`),
  KEY `ec_customer_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_password_resets`
--

LOCK TABLES `ec_customer_password_resets` WRITE;
/*!40000 ALTER TABLE `ec_customer_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_recently_viewed_products`
--

DROP TABLE IF EXISTS `ec_customer_recently_viewed_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_recently_viewed_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_recently_viewed_products`
--

LOCK TABLES `ec_customer_recently_viewed_products` WRITE;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_recently_viewed_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customer_used_coupons`
--

DROP TABLE IF EXISTS `ec_customer_used_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customer_used_coupons` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customer_used_coupons`
--

LOCK TABLES `ec_customer_used_coupons` WRITE;
/*!40000 ALTER TABLE `ec_customer_used_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_customer_used_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_customers`
--

DROP TABLE IF EXISTS `ec_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `vendor_verified_at` datetime DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'activated',
  `block_reason` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  `stripe_account_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_account_active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_customers`
--

LOCK TABLES `ec_customers` WRITE;
/*!40000 ALTER TABLE `ec_customers` DISABLE KEYS */;
INSERT INTO `ec_customers` VALUES (1,'Jodie Rohan Sr.','customer@botble.com','$2y$12$T3BtUkigvfGACVhUFf//zuSpNH8vUTSv37dS18yNKyaifebgNnPxy','main/customers/1.jpg','1986-08-18','+18185175969',NULL,'2025-09-05 17:59:07','2025-09-05 17:59:07','1986-08-18 00:59:07',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(2,'Nikolas Hudson','vendor@botble.com','$2y$12$B/qT9EQUxJ0B00KZP6dvweMm1HENkvATw46RnOQ6aeNUTq07QM3zq','main/customers/5.jpg','1964-07-29','+19523654098',NULL,'2025-09-05 17:59:08','2025-09-05 17:59:14','1964-07-29 00:59:07',NULL,1,'2025-09-06 00:59:14','activated',NULL,NULL,NULL,0),(3,'Bonita Ferry','bcormier@example.org','$2y$12$ZQ0.ObcR14BpSp6lGcDPjOiw01gSchO4USrZQNaMK6/eftaJ/dOAW','main/customers/1.jpg','1922-07-19','+12544770370',NULL,'2025-09-05 17:59:08','2025-09-05 17:59:14','1922-07-19 00:59:07',NULL,1,'2025-09-06 00:59:14','activated',NULL,NULL,NULL,0),(4,'Sallie Gorczany','uosinski@example.net','$2y$12$BSUTVzVDVUQU04OjKJk5A.wY5Z7yl3fvCSVfByVutwO2nfiEl8k5m','main/customers/2.jpg','1890-06-20','+18588125506',NULL,'2025-09-05 17:59:08','2025-09-05 17:59:14','1890-06-20 00:59:07',NULL,1,'2025-09-06 00:59:14','activated',NULL,NULL,NULL,0),(5,'Adela VonRueden MD','jimmie52@example.com','$2y$12$5oOS/4whaNtckD.mM4mIAegXvCdBm19zkZwbwKNBWWqbta.YfiOFi','main/customers/3.jpg','1845-05-23','+12298515760',NULL,'2025-09-05 17:59:08','2025-09-05 17:59:15','1845-05-23 00:59:07',NULL,1,'2025-09-06 00:59:14','activated',NULL,NULL,NULL,0),(6,'Mrs. Kirstin Kuhic','violet79@example.org','$2y$12$Kj7EbdcCWGlx5FINzbA86O3wnup6XeKpM6aEoYo6zmIy5xYAhw.y6','main/customers/4.jpg','1806-05-20','+13086666147',NULL,'2025-09-05 17:59:09','2025-09-05 17:59:15','1806-05-20 00:59:07',NULL,1,'2025-09-06 00:59:14','activated',NULL,NULL,NULL,0),(7,'Bennie Dibbert','dgutkowski@example.net','$2y$12$.UrboSerczkdHXBVnsa1lu6iiOTbmtF7IstotlnpQ5IOvKeIYb8hK','main/customers/5.jpg','1760-05-15','+12623011457',NULL,'2025-09-05 17:59:09','2025-09-05 17:59:15','1760-05-15 00:59:07',NULL,1,'2025-09-06 00:59:14','activated',NULL,NULL,NULL,0),(8,'Stephanie Hills I','effertz.rowan@example.org','$2y$12$IiM47Wlg0EYgjjm1lsXKY.wCgmJ4ENpzRb.O3zUYxmqth/ijZeofG','main/customers/6.jpg','1731-04-19','+19853737201',NULL,'2025-09-05 17:59:09','2025-09-05 17:59:16','1731-04-19 00:59:07',NULL,1,'2025-09-06 00:59:14','activated',NULL,NULL,NULL,0),(9,'Alexa Bradtke','itorp@example.com','$2y$12$dYK69p7y5hsxIm5QkccJxeDZ0XnoPG7nybxvmlDa5QZE5veu5fB6C','main/customers/7.jpg','1685-03-22','+16262491090',NULL,'2025-09-05 17:59:10','2025-09-05 17:59:16','1685-03-22 00:59:07',NULL,0,NULL,'activated',NULL,NULL,NULL,0),(10,'Mr. Wilber Johns','iokon@example.net','$2y$12$XkYRo.nnMjELcqzLSsejoOnuUAak1oPUvdDVWVBN6Lj0w5pts8gua','main/customers/8.jpg','1654-03-14','+13529819986',NULL,'2025-09-05 17:59:10','2025-09-05 17:59:16','1654-03-14 00:59:07',NULL,0,NULL,'activated',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `ec_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_customers`
--

DROP TABLE IF EXISTS `ec_discount_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_customers` (
  `discount_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_customers`
--

LOCK TABLES `ec_discount_customers` WRITE;
/*!40000 ALTER TABLE `ec_discount_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_categories`
--

DROP TABLE IF EXISTS `ec_discount_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_categories` (
  `discount_id` bigint unsigned NOT NULL,
  `product_category_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_categories`
--

LOCK TABLES `ec_discount_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_product_collections`
--

DROP TABLE IF EXISTS `ec_discount_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_product_collections` (
  `discount_id` bigint unsigned NOT NULL,
  `product_collection_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_collection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_product_collections`
--

LOCK TABLES `ec_discount_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_discount_product_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discount_products`
--

DROP TABLE IF EXISTS `ec_discount_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discount_products` (
  `discount_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`discount_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discount_products`
--

LOCK TABLES `ec_discount_products` WRITE;
/*!40000 ALTER TABLE `ec_discount_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_discount_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_discounts`
--

DROP TABLE IF EXISTS `ec_discounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_discounts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `value` double DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'coupon',
  `can_use_with_promotion` tinyint(1) NOT NULL DEFAULT '0',
  `can_use_with_flash_sale` tinyint(1) NOT NULL DEFAULT '0',
  `discount_on` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int unsigned DEFAULT NULL,
  `type_option` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `target` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all-orders',
  `min_order_price` decimal(15,2) DEFAULT NULL,
  `apply_via_url` tinyint(1) NOT NULL DEFAULT '0',
  `display_at_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_discounts_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_discounts`
--

LOCK TABLES `ec_discounts` WRITE;
/*!40000 ALTER TABLE `ec_discounts` DISABLE KEYS */;
INSERT INTO `ec_discounts` VALUES (1,'Discount 1','KZEGRKFSZINA','2025-09-05 00:59:12',NULL,NULL,0,48,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(2,'Discount 2','9GZGLUXE6TUC','2025-09-05 00:59:12',NULL,NULL,0,754,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(3,'Discount 3','0D3XAYQQUDKY','2025-09-05 00:59:12',NULL,NULL,0,826,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(4,'Discount 4','NGVVNOC2NXJX','2025-09-05 00:59:12','2025-10-03 00:59:12',NULL,0,789,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(5,'Discount 5','Q0N1K4XVEVLH','2025-09-05 00:59:12',NULL,NULL,0,245,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(6,'Discount 6','4LQFKK7CQLN5','2025-09-05 00:59:12',NULL,NULL,0,14,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(7,'Discount 7','QALGDZTZC6X0','2025-09-05 00:59:12',NULL,NULL,0,694,'coupon',0,0,NULL,NULL,'same-price','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(8,'Discount 8','L1NFNCJHW3N6','2025-09-05 00:59:12',NULL,NULL,0,48,'coupon',0,0,NULL,NULL,'percentage','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(9,'Discount 9','8QBCNGLZIOLN','2025-09-05 00:59:12',NULL,NULL,0,58,'coupon',0,0,NULL,NULL,'shipping','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL),(10,'Discount 10','RFENDURNTE3L','2025-09-05 00:59:12','2025-09-28 00:59:12',NULL,0,272,'coupon',0,0,NULL,NULL,'amount','all-orders',NULL,0,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,NULL);
/*!40000 ALTER TABLE `ec_discounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sale_products`
--

DROP TABLE IF EXISTS `ec_flash_sale_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sale_products` (
  `flash_sale_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `price` double unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `sold` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sale_products`
--

LOCK TABLES `ec_flash_sale_products` WRITE;
/*!40000 ALTER TABLE `ec_flash_sale_products` DISABLE KEYS */;
INSERT INTO `ec_flash_sale_products` VALUES (1,1,467.04,15,3),(1,2,630.96,12,3),(1,3,7.28,10,4),(1,4,982.7844,13,2),(1,5,700.04,18,4),(1,6,214.83,16,5),(1,7,478.17,8,1),(1,8,92.16,15,2),(1,9,439.6,17,5),(1,10,335.1,20,5);
/*!40000 ALTER TABLE `ec_flash_sale_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales`
--

DROP TABLE IF EXISTS `ec_flash_sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` datetime NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales`
--

LOCK TABLES `ec_flash_sales` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales` DISABLE KEYS */;
INSERT INTO `ec_flash_sales` VALUES (1,'Winter Sale','2025-12-22 00:00:00','published','2025-09-05 17:59:20','2025-09-05 17:59:20');
/*!40000 ALTER TABLE `ec_flash_sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_flash_sales_translations`
--

DROP TABLE IF EXISTS `ec_flash_sales_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_flash_sales_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_flash_sales_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_flash_sales_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_flash_sales_translations`
--

LOCK TABLES `ec_flash_sales_translations` WRITE;
/*!40000 ALTER TABLE `ec_flash_sales_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_flash_sales_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value`
--

DROP TABLE IF EXISTS `ec_global_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value`
--

LOCK TABLES `ec_global_option_value` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value` DISABLE KEYS */;
INSERT INTO `ec_global_option_value` VALUES (1,1,'1 Year',0,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(2,1,'2 Year',10,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(3,1,'3 Year',20,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(4,2,'4GB',0,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(5,2,'8GB',10,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(6,2,'16GB',20,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(7,3,'Core i5',0,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(8,3,'Core i7',10,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(9,3,'Core i9',20,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(10,4,'128GB',0,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(11,4,'256GB',10,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(12,4,'512GB',20,9999,0,'2025-09-05 17:59:12','2025-09-05 17:59:12');
/*!40000 ALTER TABLE `ec_global_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_option_value_translations`
--

DROP TABLE IF EXISTS `ec_global_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_option_value_translations`
--

LOCK TABLES `ec_global_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options`
--

DROP TABLE IF EXISTS `ec_global_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'option type',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options`
--

LOCK TABLES `ec_global_options` WRITE;
/*!40000 ALTER TABLE `ec_global_options` DISABLE KEYS */;
INSERT INTO `ec_global_options` VALUES (1,'Warranty','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(2,'RAM','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(3,'CPU','Botble\\Ecommerce\\Option\\OptionType\\RadioButton',1,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(4,'HDD','Botble\\Ecommerce\\Option\\OptionType\\Dropdown',0,'2025-09-05 17:59:12','2025-09-05 17:59:12');
/*!40000 ALTER TABLE `ec_global_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_global_options_translations`
--

DROP TABLE IF EXISTS `ec_global_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_global_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_global_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_global_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_global_options_translations`
--

LOCK TABLES `ec_global_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_global_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_global_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_grouped_products`
--

DROP TABLE IF EXISTS `ec_grouped_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_grouped_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `parent_product_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `fixed_qty` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_grouped_products`
--

LOCK TABLES `ec_grouped_products` WRITE;
/*!40000 ALTER TABLE `ec_grouped_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_grouped_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoice_items`
--

DROP TABLE IF EXISTS `ec_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_invoice_items_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoice_items`
--

LOCK TABLES `ec_invoice_items` WRITE;
/*!40000 ALTER TABLE `ec_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_invoices`
--

DROP TABLE IF EXISTS `ec_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address_line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_invoices_code_unique` (`code`),
  KEY `ec_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `ec_invoices_payment_id_index` (`payment_id`),
  KEY `ec_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_invoices`
--

LOCK TABLES `ec_invoices` WRITE;
/*!40000 ALTER TABLE `ec_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value`
--

DROP TABLE IF EXISTS `ec_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_id` bigint unsigned NOT NULL COMMENT 'option id',
  `option_value` tinytext COLLATE utf8mb4_unicode_ci COMMENT 'option value',
  `affect_price` double DEFAULT NULL COMMENT 'value of price of this option affect',
  `order` int NOT NULL DEFAULT '9999',
  `affect_type` tinyint NOT NULL DEFAULT '0' COMMENT '0. fixed 1. percent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value`
--

LOCK TABLES `ec_option_value` WRITE;
/*!40000 ALTER TABLE `ec_option_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_option_value_translations`
--

DROP TABLE IF EXISTS `ec_option_value_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_option_value_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_option_value_id` bigint unsigned NOT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_option_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_option_value_translations`
--

LOCK TABLES `ec_option_value_translations` WRITE;
/*!40000 ALTER TABLE `ec_option_value_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_option_value_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options`
--

DROP TABLE IF EXISTS `ec_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Name of options',
  `option_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'option type',
  `product_id` bigint unsigned NOT NULL DEFAULT '0',
  `order` int NOT NULL DEFAULT '9999',
  `required` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Checked if this option is required',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options`
--

LOCK TABLES `ec_options` WRITE;
/*!40000 ALTER TABLE `ec_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_options_translations`
--

DROP TABLE IF EXISTS `ec_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_options_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_options_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_options_translations`
--

LOCK TABLES `ec_options_translations` WRITE;
/*!40000 ALTER TABLE `ec_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_addresses`
--

DROP TABLE IF EXISTS `ec_order_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'shipping_address',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_addresses`
--

LOCK TABLES `ec_order_addresses` WRITE;
/*!40000 ALTER TABLE `ec_order_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_histories`
--

DROP TABLE IF EXISTS `ec_order_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL,
  `extras` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_histories`
--

LOCK TABLES `ec_order_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_product`
--

DROP TABLE IF EXISTS `ec_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_product` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `product_options` text COLLATE utf8mb4_unicode_ci COMMENT 'product option data',
  `product_id` bigint unsigned DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double DEFAULT '0',
  `restock_quantity` int unsigned DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `times_downloaded` int NOT NULL DEFAULT '0',
  `license_code` text COLLATE utf8mb4_unicode_ci,
  `downloaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_product`
--

LOCK TABLES `ec_order_product` WRITE;
/*!40000 ALTER TABLE `ec_order_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_referrals`
--

DROP TABLE IF EXISTS `ec_order_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_referrals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing_params` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fclid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_campaign` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_medium` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_term` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utm_content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer_url` text COLLATE utf8mb4_unicode_ci,
  `referrer_domain` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_referrals_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_referrals`
--

LOCK TABLES `ec_order_referrals` WRITE;
/*!40000 ALTER TABLE `ec_order_referrals` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_histories`
--

DROP TABLE IF EXISTS `ec_order_return_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `order_return_id` bigint unsigned NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_histories`
--

LOCK TABLES `ec_order_return_histories` WRITE;
/*!40000 ALTER TABLE `ec_order_return_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_return_items`
--

DROP TABLE IF EXISTS `ec_order_return_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_return_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_return_id` bigint unsigned NOT NULL COMMENT 'Order return id',
  `order_product_id` bigint unsigned NOT NULL COMMENT 'Order product id',
  `product_id` bigint unsigned NOT NULL COMMENT 'Product id',
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int NOT NULL COMMENT 'Quantity return',
  `price` decimal(15,2) NOT NULL COMMENT 'Price Product',
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_amount` decimal(12,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_return_items`
--

LOCK TABLES `ec_order_return_items` WRITE;
/*!40000 ALTER TABLE `ec_order_return_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_return_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_returns`
--

DROP TABLE IF EXISTS `ec_order_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_returns` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` bigint unsigned NOT NULL COMMENT 'Order ID',
  `store_id` bigint unsigned DEFAULT NULL COMMENT 'Store ID',
  `user_id` bigint unsigned NOT NULL COMMENT 'Customer ID',
  `reason` text COLLATE utf8mb4_unicode_ci COMMENT 'Reason return order',
  `order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Order current status',
  `return_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Return status',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_order_returns_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_returns`
--

LOCK TABLES `ec_order_returns` WRITE;
/*!40000 ALTER TABLE `ec_order_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_order_tax_information`
--

DROP TABLE IF EXISTS `ec_order_tax_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_order_tax_information` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `company_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_tax_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_order_tax_information_order_id_index` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_order_tax_information`
--

LOCK TABLES `ec_order_tax_information` WRITE;
/*!40000 ALTER TABLE `ec_order_tax_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_order_tax_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_orders`
--

DROP TABLE IF EXISTS `ec_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipping_option` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `amount` decimal(15,2) NOT NULL,
  `tax_amount` decimal(15,2) DEFAULT '0.00',
  `shipping_amount` decimal(15,2) DEFAULT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `description` text COLLATE utf8mb4_unicode_ci,
  `coupon_code` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(15,2) DEFAULT NULL,
  `sub_total` decimal(15,2) NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `cancellation_reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cancellation_reason_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_at` timestamp NULL DEFAULT NULL,
  `token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `proof_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_orders_code_unique` (`code`),
  KEY `ec_orders_user_id_status_created_at_index` (`user_id`,`status`,`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_orders`
--

LOCK TABLES `ec_orders` WRITE;
/*!40000 ALTER TABLE `ec_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_layout` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dropdown',
  `is_searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_comparable` tinyint unsigned NOT NULL DEFAULT '1',
  `is_use_in_product_listing` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `use_image_from_product_variation` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets`
--

LOCK TABLES `ec_product_attribute_sets` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets` DISABLE KEYS */;
INSERT INTO `ec_product_attribute_sets` VALUES (1,'Color','color','visual',1,1,1,'published',0,'2025-09-05 17:59:06','2025-09-05 17:59:06',0),(2,'Size','size','text',1,1,1,'published',1,'2025-09-05 17:59:06','2025-09-05 17:59:06',0),(3,'Weight','weight','text',1,1,1,'published',0,'2025-09-05 17:59:06','2025-09-05 17:59:06',0),(4,'Boxes','boxes','text',1,1,1,'published',1,'2025-09-05 17:59:06','2025-09-05 17:59:06',0);
/*!40000 ALTER TABLE `ec_product_attribute_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attribute_sets_translations`
--

DROP TABLE IF EXISTS `ec_product_attribute_sets_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attribute_sets_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attribute_sets_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attribute_sets_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attribute_sets_translations`
--

LOCK TABLES `ec_product_attribute_sets_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attribute_sets_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes`
--

DROP TABLE IF EXISTS `ec_product_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_set_id` bigint unsigned NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_set_status_index` (`attribute_set_id`),
  KEY `idx_attribute_set_id` (`attribute_set_id`),
  KEY `idx_attribute_set_order_id` (`attribute_set_id`,`order`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes`
--

LOCK TABLES `ec_product_attributes` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes` DISABLE KEYS */;
INSERT INTO `ec_product_attributes` VALUES (1,1,'Green','green','#5FB7D4',NULL,1,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(2,1,'Blue','blue','#333333',NULL,0,2,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(3,1,'Red','red','#DA323F',NULL,0,3,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(4,1,'Black','black','#2F366C',NULL,0,4,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(5,1,'Brown','brown','#87554B',NULL,0,5,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(6,2,'S','s',NULL,NULL,1,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(7,2,'M','m',NULL,NULL,0,2,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(8,2,'L','l',NULL,NULL,0,3,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(9,2,'XL','xl',NULL,NULL,0,4,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(10,2,'XXL','xxl',NULL,NULL,0,5,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(11,3,'1KG','1kg',NULL,NULL,1,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(12,3,'2KG','2kg',NULL,NULL,0,2,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(13,3,'3KG','3kg',NULL,NULL,0,3,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(14,3,'4KG','4kg',NULL,NULL,0,4,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(15,3,'5KG','5kg',NULL,NULL,0,5,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(16,4,'1 Box','1-box',NULL,NULL,1,1,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(17,4,'2 Boxes','2-boxes',NULL,NULL,0,2,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(18,4,'3 Boxes','3-boxes',NULL,NULL,0,3,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(19,4,'4 Boxes','4-boxes',NULL,NULL,0,4,'2025-09-05 17:59:06','2025-09-05 17:59:06'),(20,4,'5 Boxes','5-boxes',NULL,NULL,0,5,'2025-09-05 17:59:06','2025-09-05 17:59:06');
/*!40000 ALTER TABLE `ec_product_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_attributes_translations`
--

DROP TABLE IF EXISTS `ec_product_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_attributes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_attributes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_attributes_translations`
--

LOCK TABLES `ec_product_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories`
--

DROP TABLE IF EXISTS `ec_product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`),
  KEY `ec_product_categories_parent_id_status_index` (`parent_id`,`status`),
  KEY `idx_categories_status_order` (`status`,`order`),
  KEY `idx_categories_order` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories`
--

LOCK TABLES `ec_product_categories` WRITE;
/*!40000 ALTER TABLE `ec_product_categories` DISABLE KEYS */;
INSERT INTO `ec_product_categories` VALUES (1,'Discover Skincare',0,NULL,'published',0,'beauty/product-categories/1.jpg',1,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(2,'Clothing',0,NULL,'published',1,'beauty/product-categories/4.jpg',1,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(3,'Men\'s Clothing',2,NULL,'published',0,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(4,'T-Shirts',3,NULL,'published',0,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(5,'Jeans',3,NULL,'published',1,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(6,'Suits',3,NULL,'published',2,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(7,'Women\'s Clothing',2,NULL,'published',1,'beauty/product-categories/2.jpg',1,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(8,'Dresses',7,NULL,'published',0,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(9,'Blouses',7,NULL,'published',1,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(10,'Pants',7,NULL,'published',2,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(11,'Accessories',0,NULL,'published',2,'beauty/product-categories/5.jpg',1,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(12,'Hats',11,NULL,'published',0,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(13,'Scarves',11,NULL,'published',1,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(14,'Jewelry',11,NULL,'published',2,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(15,'Shoes',0,NULL,'published',3,'beauty/product-categories/6.jpg',1,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(16,'Sportswear',0,NULL,'published',4,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(17,'Running Shoes',16,NULL,'published',0,'beauty/product-categories/3.jpg',1,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL),(18,'Activewear',16,NULL,'published',1,NULL,0,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,NULL);
/*!40000 ALTER TABLE `ec_product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categories_translations`
--

DROP TABLE IF EXISTS `ec_product_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_categories_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_product_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categories_translations`
--

LOCK TABLES `ec_product_categories_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_categorizables`
--

DROP TABLE IF EXISTS `ec_product_categorizables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_categorizables` (
  `category_id` bigint unsigned NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`category_id`,`reference_id`,`reference_type`),
  KEY `ec_product_categorizables_category_id_index` (`category_id`),
  KEY `ec_product_categorizables_reference_id_index` (`reference_id`),
  KEY `ec_product_categorizables_reference_type_index` (`reference_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_categorizables`
--

LOCK TABLES `ec_product_categorizables` WRITE;
/*!40000 ALTER TABLE `ec_product_categorizables` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_categorizables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_category_product`
--

DROP TABLE IF EXISTS `ec_product_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_category_product` (
  `category_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `ec_product_category_product_category_id_index` (`category_id`),
  KEY `ec_product_category_product_product_id_index` (`product_id`),
  KEY `idx_product_category_composite` (`product_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_category_product`
--

LOCK TABLES `ec_product_category_product` WRITE;
/*!40000 ALTER TABLE `ec_product_category_product` DISABLE KEYS */;
INSERT INTO `ec_product_category_product` VALUES (1,8),(1,10),(1,11),(1,17),(1,18),(1,30),(1,32),(1,33),(1,39),(2,4),(2,5),(2,12),(2,14),(2,17),(2,19),(2,22),(2,25),(2,36),(2,37),(3,9),(3,16),(3,28),(3,34),(3,42),(4,10),(4,11),(4,13),(4,15),(4,22),(4,23),(4,27),(4,30),(4,31),(4,43),(5,5),(5,8),(5,10),(5,11),(5,18),(5,27),(5,32),(5,39),(5,40),(6,12),(6,18),(6,25),(6,29),(6,30),(6,31),(6,40),(7,1),(7,3),(7,9),(7,12),(7,14),(7,20),(7,22),(7,23),(7,24),(7,33),(7,38),(7,39),(7,40),(7,42),(7,43),(8,7),(8,9),(8,15),(8,18),(8,20),(8,28),(8,29),(8,35),(8,38),(8,42),(9,3),(9,20),(9,21),(9,25),(9,26),(9,35),(9,41),(10,2),(10,3),(10,4),(10,15),(10,22),(10,29),(10,34),(10,36),(10,38),(10,41),(10,43),(11,1),(11,6),(11,8),(11,11),(11,14),(11,19),(11,26),(11,33),(12,1),(12,2),(12,5),(12,6),(12,10),(12,12),(12,13),(12,21),(12,27),(12,30),(12,35),(13,3),(13,5),(13,7),(13,8),(13,14),(13,16),(13,21),(13,23),(13,25),(13,26),(13,28),(13,29),(13,34),(13,37),(13,38),(14,9),(14,13),(14,16),(14,19),(14,21),(14,23),(14,31),(14,41),(14,42),(15,2),(15,4),(15,7),(15,16),(15,24),(15,31),(15,32),(15,37),(15,40),(16,15),(16,17),(16,20),(16,27),(16,28),(16,35),(16,37),(17,6),(17,13),(17,24),(17,26),(17,34),(17,36),(17,39),(17,41),(18,1),(18,2),(18,4),(18,6),(18,7),(18,17),(18,19),(18,24),(18,32),(18,33),(18,36),(18,43);
/*!40000 ALTER TABLE `ec_product_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collection_products`
--

DROP TABLE IF EXISTS `ec_product_collection_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collection_products` (
  `product_collection_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`product_collection_id`),
  KEY `ec_product_collection_products_product_collection_id_index` (`product_collection_id`),
  KEY `ec_product_collection_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collection_products`
--

LOCK TABLES `ec_product_collection_products` WRITE;
/*!40000 ALTER TABLE `ec_product_collection_products` DISABLE KEYS */;
INSERT INTO `ec_product_collection_products` VALUES (1,4),(1,12),(1,14),(1,16),(1,17),(1,18),(1,19),(1,22),(1,27),(1,30),(1,31),(1,34),(1,35),(1,39),(2,1),(2,2),(2,3),(2,7),(2,11),(2,13),(2,20),(2,21),(2,24),(2,28),(3,26),(3,33),(3,36),(3,37),(3,38),(3,41),(3,43),(4,5),(4,6),(4,8),(4,9),(4,10),(4,15),(4,23),(4,25),(4,29),(4,32),(4,40),(4,42);
/*!40000 ALTER TABLE `ec_product_collection_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections`
--

DROP TABLE IF EXISTS `ec_product_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections`
--

LOCK TABLES `ec_product_collections` WRITE;
/*!40000 ALTER TABLE `ec_product_collections` DISABLE KEYS */;
INSERT INTO `ec_product_collections` VALUES (1,'Trendy Wardrobe Essentials','trendy-wardrobe-essentials',NULL,NULL,'published','2025-09-05 17:59:17','2025-09-05 17:59:17',0),(2,'Fashion Forward Finds','fashion-forward-finds',NULL,NULL,'published','2025-09-05 17:59:17','2025-09-05 17:59:17',0),(3,'Chic &amp; Stylish Collection','chic-stylish-collection',NULL,NULL,'published','2025-09-05 17:59:17','2025-09-05 17:59:17',0),(4,'Weekly Fashion Picks','weekly-fashion-picks',NULL,NULL,'published','2025-09-05 17:59:17','2025-09-05 17:59:17',0);
/*!40000 ALTER TABLE `ec_product_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_collections_translations`
--

DROP TABLE IF EXISTS `ec_product_collections_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_collections_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_collections_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_collections_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_collections_translations`
--

LOCK TABLES `ec_product_collections_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_collections_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_collections_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_cross_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_cross_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_cross_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  `is_variant` tinyint(1) NOT NULL DEFAULT '0',
  `price` decimal(15,2) DEFAULT '0.00',
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `apply_to_all_variations` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_cross_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_cross_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_cross_sale_relations`
--

LOCK TABLES `ec_product_cross_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` DISABLE KEYS */;
INSERT INTO `ec_product_cross_sale_relations` VALUES (1,9,0,0.00,'fixed',1),(1,10,0,0.00,'fixed',1),(1,14,0,0.00,'fixed',1),(1,22,0,0.00,'fixed',1),(1,25,0,0.00,'fixed',1),(1,35,0,0.00,'fixed',1),(1,37,0,0.00,'fixed',1),(2,3,0,0.00,'fixed',1),(2,4,0,0.00,'fixed',1),(2,9,0,0.00,'fixed',1),(2,14,0,0.00,'fixed',1),(2,17,0,0.00,'fixed',1),(2,18,0,0.00,'fixed',1),(2,29,0,0.00,'fixed',1),(3,2,0,0.00,'fixed',1),(3,10,0,0.00,'fixed',1),(3,16,0,0.00,'fixed',1),(3,23,0,0.00,'fixed',1),(3,28,0,0.00,'fixed',1),(3,29,0,0.00,'fixed',1),(3,34,0,0.00,'fixed',1),(4,20,0,0.00,'fixed',1),(4,22,0,0.00,'fixed',1),(4,24,0,0.00,'fixed',1),(4,29,0,0.00,'fixed',1),(4,32,0,0.00,'fixed',1),(4,43,0,0.00,'fixed',1),(5,1,0,0.00,'fixed',1),(5,14,0,0.00,'fixed',1),(5,17,0,0.00,'fixed',1),(5,23,0,0.00,'fixed',1),(5,24,0,0.00,'fixed',1),(5,31,0,0.00,'fixed',1),(5,32,0,0.00,'fixed',1),(6,2,0,0.00,'fixed',1),(6,9,0,0.00,'fixed',1),(6,17,0,0.00,'fixed',1),(6,20,0,0.00,'fixed',1),(6,29,0,0.00,'fixed',1),(6,34,0,0.00,'fixed',1),(7,16,0,0.00,'fixed',1),(7,17,0,0.00,'fixed',1),(7,25,0,0.00,'fixed',1),(7,33,0,0.00,'fixed',1),(7,39,0,0.00,'fixed',1),(8,2,0,0.00,'fixed',1),(8,5,0,0.00,'fixed',1),(8,13,0,0.00,'fixed',1),(8,40,0,0.00,'fixed',1),(8,41,0,0.00,'fixed',1),(8,42,0,0.00,'fixed',1),(9,5,0,0.00,'fixed',1),(9,6,0,0.00,'fixed',1),(9,11,0,0.00,'fixed',1),(9,14,0,0.00,'fixed',1),(9,18,0,0.00,'fixed',1),(9,41,0,0.00,'fixed',1),(9,42,0,0.00,'fixed',1),(10,4,0,0.00,'fixed',1),(10,5,0,0.00,'fixed',1),(10,11,0,0.00,'fixed',1),(10,24,0,0.00,'fixed',1),(10,25,0,0.00,'fixed',1),(10,38,0,0.00,'fixed',1),(11,1,0,0.00,'fixed',1),(11,9,0,0.00,'fixed',1),(11,21,0,0.00,'fixed',1),(11,24,0,0.00,'fixed',1),(11,25,0,0.00,'fixed',1),(11,30,0,0.00,'fixed',1),(11,33,0,0.00,'fixed',1),(12,1,0,0.00,'fixed',1),(12,3,0,0.00,'fixed',1),(12,9,0,0.00,'fixed',1),(12,10,0,0.00,'fixed',1),(12,13,0,0.00,'fixed',1),(12,14,0,0.00,'fixed',1),(12,28,0,0.00,'fixed',1),(13,14,0,0.00,'fixed',1),(13,15,0,0.00,'fixed',1),(13,20,0,0.00,'fixed',1),(13,27,0,0.00,'fixed',1),(13,30,0,0.00,'fixed',1),(13,32,0,0.00,'fixed',1),(13,40,0,0.00,'fixed',1),(14,12,0,0.00,'fixed',1),(14,15,0,0.00,'fixed',1),(14,23,0,0.00,'fixed',1),(14,32,0,0.00,'fixed',1),(14,34,0,0.00,'fixed',1),(14,35,0,0.00,'fixed',1),(15,6,0,0.00,'fixed',1),(15,20,0,0.00,'fixed',1),(15,21,0,0.00,'fixed',1),(15,23,0,0.00,'fixed',1),(15,24,0,0.00,'fixed',1),(15,32,0,0.00,'fixed',1),(15,42,0,0.00,'fixed',1),(16,3,0,0.00,'fixed',1),(16,4,0,0.00,'fixed',1),(16,8,0,0.00,'fixed',1),(16,14,0,0.00,'fixed',1),(16,26,0,0.00,'fixed',1),(16,42,0,0.00,'fixed',1),(16,43,0,0.00,'fixed',1),(17,5,0,0.00,'fixed',1),(17,6,0,0.00,'fixed',1),(17,26,0,0.00,'fixed',1),(17,31,0,0.00,'fixed',1),(17,37,0,0.00,'fixed',1),(18,4,0,0.00,'fixed',1),(18,5,0,0.00,'fixed',1),(18,19,0,0.00,'fixed',1),(18,22,0,0.00,'fixed',1),(18,33,0,0.00,'fixed',1),(18,35,0,0.00,'fixed',1),(18,38,0,0.00,'fixed',1),(19,5,0,0.00,'fixed',1),(19,11,0,0.00,'fixed',1),(19,16,0,0.00,'fixed',1),(19,18,0,0.00,'fixed',1),(19,34,0,0.00,'fixed',1),(19,35,0,0.00,'fixed',1),(20,4,0,0.00,'fixed',1),(20,5,0,0.00,'fixed',1),(20,18,0,0.00,'fixed',1),(20,30,0,0.00,'fixed',1),(20,32,0,0.00,'fixed',1),(20,37,0,0.00,'fixed',1),(20,41,0,0.00,'fixed',1),(21,2,0,0.00,'fixed',1),(21,6,0,0.00,'fixed',1),(21,8,0,0.00,'fixed',1),(21,9,0,0.00,'fixed',1),(21,10,0,0.00,'fixed',1),(21,23,0,0.00,'fixed',1),(21,26,0,0.00,'fixed',1),(22,10,0,0.00,'fixed',1),(22,13,0,0.00,'fixed',1),(22,15,0,0.00,'fixed',1),(22,20,0,0.00,'fixed',1),(22,25,0,0.00,'fixed',1),(22,28,0,0.00,'fixed',1),(22,33,0,0.00,'fixed',1),(23,3,0,0.00,'fixed',1),(23,7,0,0.00,'fixed',1),(23,10,0,0.00,'fixed',1),(23,11,0,0.00,'fixed',1),(23,14,0,0.00,'fixed',1),(23,43,0,0.00,'fixed',1),(24,20,0,0.00,'fixed',1),(24,22,0,0.00,'fixed',1),(24,26,0,0.00,'fixed',1),(24,32,0,0.00,'fixed',1),(24,34,0,0.00,'fixed',1),(24,38,0,0.00,'fixed',1),(24,40,0,0.00,'fixed',1),(25,3,0,0.00,'fixed',1),(25,10,0,0.00,'fixed',1),(25,13,0,0.00,'fixed',1),(25,15,0,0.00,'fixed',1),(25,20,0,0.00,'fixed',1),(25,23,0,0.00,'fixed',1),(25,38,0,0.00,'fixed',1),(26,3,0,0.00,'fixed',1),(26,6,0,0.00,'fixed',1),(26,9,0,0.00,'fixed',1),(26,12,0,0.00,'fixed',1),(26,34,0,0.00,'fixed',1),(26,37,0,0.00,'fixed',1),(27,9,0,0.00,'fixed',1),(27,17,0,0.00,'fixed',1),(27,18,0,0.00,'fixed',1),(27,20,0,0.00,'fixed',1),(27,39,0,0.00,'fixed',1),(27,42,0,0.00,'fixed',1),(28,12,0,0.00,'fixed',1),(28,20,0,0.00,'fixed',1),(28,21,0,0.00,'fixed',1),(28,23,0,0.00,'fixed',1),(28,25,0,0.00,'fixed',1),(28,26,0,0.00,'fixed',1),(28,40,0,0.00,'fixed',1),(29,1,0,0.00,'fixed',1),(29,3,0,0.00,'fixed',1),(29,4,0,0.00,'fixed',1),(29,5,0,0.00,'fixed',1),(29,13,0,0.00,'fixed',1),(29,14,0,0.00,'fixed',1),(29,42,0,0.00,'fixed',1),(30,2,0,0.00,'fixed',1),(30,4,0,0.00,'fixed',1),(30,17,0,0.00,'fixed',1),(30,23,0,0.00,'fixed',1),(30,27,0,0.00,'fixed',1),(30,42,0,0.00,'fixed',1),(31,1,0,0.00,'fixed',1),(31,15,0,0.00,'fixed',1),(31,17,0,0.00,'fixed',1),(31,28,0,0.00,'fixed',1),(31,34,0,0.00,'fixed',1),(31,35,0,0.00,'fixed',1),(31,41,0,0.00,'fixed',1),(32,14,0,0.00,'fixed',1),(32,16,0,0.00,'fixed',1),(32,25,0,0.00,'fixed',1),(32,28,0,0.00,'fixed',1),(32,29,0,0.00,'fixed',1),(32,33,0,0.00,'fixed',1),(32,36,0,0.00,'fixed',1),(33,15,0,0.00,'fixed',1),(33,20,0,0.00,'fixed',1),(33,23,0,0.00,'fixed',1),(33,25,0,0.00,'fixed',1),(33,30,0,0.00,'fixed',1),(33,34,0,0.00,'fixed',1),(34,10,0,0.00,'fixed',1),(34,22,0,0.00,'fixed',1),(34,24,0,0.00,'fixed',1),(34,31,0,0.00,'fixed',1),(34,32,0,0.00,'fixed',1),(34,35,0,0.00,'fixed',1),(34,40,0,0.00,'fixed',1),(35,10,0,0.00,'fixed',1),(35,12,0,0.00,'fixed',1),(35,13,0,0.00,'fixed',1),(35,16,0,0.00,'fixed',1),(35,31,0,0.00,'fixed',1),(35,43,0,0.00,'fixed',1),(36,3,0,0.00,'fixed',1),(36,5,0,0.00,'fixed',1),(36,8,0,0.00,'fixed',1),(36,22,0,0.00,'fixed',1),(36,37,0,0.00,'fixed',1),(36,41,0,0.00,'fixed',1),(36,42,0,0.00,'fixed',1),(37,6,0,0.00,'fixed',1),(37,12,0,0.00,'fixed',1),(37,20,0,0.00,'fixed',1),(37,23,0,0.00,'fixed',1),(37,24,0,0.00,'fixed',1),(37,26,0,0.00,'fixed',1),(37,34,0,0.00,'fixed',1),(38,5,0,0.00,'fixed',1),(38,8,0,0.00,'fixed',1),(38,15,0,0.00,'fixed',1),(38,21,0,0.00,'fixed',1),(38,28,0,0.00,'fixed',1),(38,29,0,0.00,'fixed',1),(39,10,0,0.00,'fixed',1),(39,14,0,0.00,'fixed',1),(39,32,0,0.00,'fixed',1),(39,33,0,0.00,'fixed',1),(39,36,0,0.00,'fixed',1),(39,41,0,0.00,'fixed',1),(40,8,0,0.00,'fixed',1),(40,17,0,0.00,'fixed',1),(40,20,0,0.00,'fixed',1),(40,27,0,0.00,'fixed',1),(40,32,0,0.00,'fixed',1),(40,34,0,0.00,'fixed',1),(41,20,0,0.00,'fixed',1),(41,26,0,0.00,'fixed',1),(41,35,0,0.00,'fixed',1),(41,36,0,0.00,'fixed',1),(41,39,0,0.00,'fixed',1),(41,40,0,0.00,'fixed',1),(41,42,0,0.00,'fixed',1),(42,1,0,0.00,'fixed',1),(42,2,0,0.00,'fixed',1),(42,6,0,0.00,'fixed',1),(42,8,0,0.00,'fixed',1),(42,29,0,0.00,'fixed',1),(42,36,0,0.00,'fixed',1),(42,43,0,0.00,'fixed',1),(43,16,0,0.00,'fixed',1),(43,29,0,0.00,'fixed',1),(43,31,0,0.00,'fixed',1),(43,35,0,0.00,'fixed',1),(43,36,0,0.00,'fixed',1),(43,39,0,0.00,'fixed',1);
/*!40000 ALTER TABLE `ec_product_cross_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_files`
--

DROP TABLE IF EXISTS `ec_product_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `url` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extras` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_files_product_id_index` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_files`
--

LOCK TABLES `ec_product_files` WRITE;
/*!40000 ALTER TABLE `ec_product_files` DISABLE KEYS */;
INSERT INTO `ec_product_files` VALUES (1,4,'ecommerce/digital-product-files/product-details-desc-3.jpg','{\"filename\":\"product-details-desc-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-details-desc-3\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(2,4,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(3,8,'ecommerce/digital-product-files/product-details-desc-2.jpg','{\"filename\":\"product-details-desc-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-details-desc-2\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(4,8,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(5,12,'ecommerce/digital-product-files/product-18.jpg','{\"filename\":\"product-18.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-18.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-18\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(6,12,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(7,16,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(8,16,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(9,20,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(10,20,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(11,24,'ecommerce/digital-product-files/product-11.jpg','{\"filename\":\"product-11.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-11.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-11\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(12,24,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(13,28,'ecommerce/digital-product-files/product-9.jpg','{\"filename\":\"product-9.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-9.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-9\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(14,28,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(15,32,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(16,32,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(17,36,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(18,36,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(19,40,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(20,40,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(21,45,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(22,46,'ecommerce/digital-product-files/product-10.jpg','{\"filename\":\"product-10.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-10.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-10\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(23,47,'ecommerce/digital-product-files/product-1.jpg','{\"filename\":\"product-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-1\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(24,48,'ecommerce/digital-product-files/product-20.jpg','{\"filename\":\"product-20.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-20.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-20\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(25,49,'ecommerce/digital-product-files/product-4.jpg','{\"filename\":\"product-4.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-4.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-4\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(26,60,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(27,61,'ecommerce/digital-product-files/product-details-desc-1.jpg','{\"filename\":\"product-details-desc-1.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-details-desc-1.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-details-desc-1\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(28,62,'ecommerce/digital-product-files/product-13.jpg','{\"filename\":\"product-13.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-13.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-13\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(29,66,'ecommerce/digital-product-files/product-7.jpg','{\"filename\":\"product-7.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-7.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-7\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(30,67,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(31,77,'ecommerce/digital-product-files/product-2.jpg','{\"filename\":\"product-2.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-2.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-2\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(32,78,'ecommerce/digital-product-files/product-16.jpg','{\"filename\":\"product-16.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-16.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-16\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(33,79,'ecommerce/digital-product-files/product-5.jpg','{\"filename\":\"product-5.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-5.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-5\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(34,80,'ecommerce/digital-product-files/product-17.jpg','{\"filename\":\"product-17.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-17.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-17\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20'),(35,87,'ecommerce/digital-product-files/product-3.jpg','{\"filename\":\"product-3.jpg\",\"url\":\"ecommerce\\/digital-product-files\\/product-3.jpg\",\"mime_type\":\"image\\/jpeg\",\"size\":9803,\"modified\":\"2025-09-06 00:59:20\",\"name\":\"product-3\",\"extension\":\"jpg\"}','2025-09-05 17:59:20','2025-09-05 17:59:20');
/*!40000 ALTER TABLE `ec_product_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_label_products`
--

DROP TABLE IF EXISTS `ec_product_label_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_label_products` (
  `product_label_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_label_id`,`product_id`),
  KEY `ec_product_label_products_product_label_id_index` (`product_label_id`),
  KEY `ec_product_label_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_label_products`
--

LOCK TABLES `ec_product_label_products` WRITE;
/*!40000 ALTER TABLE `ec_product_label_products` DISABLE KEYS */;
INSERT INTO `ec_product_label_products` VALUES (1,18),(1,24),(1,27),(1,30),(1,33),(1,42),(2,6),(2,9),(2,15),(2,39),(3,3),(3,12),(3,21),(3,36);
/*!40000 ALTER TABLE `ec_product_label_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels`
--

DROP TABLE IF EXISTS `ec_product_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `text_color` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels`
--

LOCK TABLES `ec_product_labels` WRITE;
/*!40000 ALTER TABLE `ec_product_labels` DISABLE KEYS */;
INSERT INTO `ec_product_labels` VALUES (1,'Hot','#AC2200','published','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL),(2,'New','#006554','published','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL),(3,'Sale','#9A3B00','published','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL);
/*!40000 ALTER TABLE `ec_product_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_labels_translations`
--

DROP TABLE IF EXISTS `ec_product_labels_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_labels_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_labels_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_labels_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_labels_translations`
--

LOCK TABLES `ec_product_labels_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_labels_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_labels_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_license_codes`
--

DROP TABLE IF EXISTS `ec_product_license_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_license_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `license_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'available',
  `assigned_order_product_id` bigint unsigned DEFAULT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_product_license_codes_product_id_status_index` (`product_id`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_license_codes`
--

LOCK TABLES `ec_product_license_codes` WRITE;
/*!40000 ALTER TABLE `ec_product_license_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_license_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_related_relations`
--

DROP TABLE IF EXISTS `ec_product_related_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_related_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_related_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_related_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_related_relations`
--

LOCK TABLES `ec_product_related_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_related_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_related_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute` (
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute`
--

LOCK TABLES `ec_product_specification_attribute` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute` DISABLE KEYS */;
INSERT INTO `ec_product_specification_attribute` VALUES (1,6,'37.81 cm',0,0),(1,7,'62.31 cm',0,0),(1,8,'1920x1080',0,0),(2,1,'15.47 cm',0,0),(2,2,'12.15 cm',0,0),(2,3,'8.78 cm',0,0),(2,4,'65.01 cm',0,0),(2,5,'61.59 cm',0,0),(3,1,'24.34 cm',0,0),(3,2,'18.82 cm',0,0),(3,3,'64.27 cm',0,0),(3,4,'79.68 cm',0,0),(3,5,'90.32 cm',0,0),(4,6,'72.98 cm',0,0),(4,7,'36.8 cm',0,0),(4,8,'2560x1440',0,0),(5,6,'61.38 cm',0,0),(5,7,'47.39 cm',0,0),(5,8,'3840x2160',0,0),(6,1,'23.5 cm',0,0),(6,2,'84.08 cm',0,0),(6,3,'56.8 cm',0,0),(6,4,'85.89 cm',0,0),(6,5,'78.81 cm',0,0),(7,6,'30.53 cm',0,0),(7,7,'76.46 cm',0,0),(7,8,'3840x2160',0,0),(8,1,'10.42 cm',0,0),(8,2,'34.8 cm',0,0),(8,3,'13.29 cm',0,0),(8,4,'38.04 cm',0,0),(8,5,'55.17 cm',0,0),(9,1,'36.99 cm',0,0),(9,2,'49 cm',0,0),(9,3,'4.86 cm',0,0),(9,4,'88.61 cm',0,0),(9,5,'16.24 cm',0,0),(10,1,'82.93 cm',0,0),(10,2,'5.14 cm',0,0),(10,3,'90.53 cm',0,0),(10,4,'74.08 cm',0,0),(10,5,'25.9 cm',0,0),(11,6,'30.45 cm',0,0),(11,7,'83.65 cm',0,0),(11,8,'2560x1440',0,0),(12,1,'72.71 cm',0,0),(12,2,'33.75 cm',0,0),(12,3,'71.02 cm',0,0),(12,4,'31.04 cm',0,0),(12,5,'8.91 cm',0,0),(13,1,'63.83 cm',0,0),(13,2,'87.7 cm',0,0),(13,3,'83.25 cm',0,0),(13,4,'46.4 cm',0,0),(13,5,'99.37 cm',0,0),(14,6,'67.55 cm',0,0),(14,7,'84.32 cm',0,0),(14,8,'3840x2160',0,0),(15,1,'71.48 cm',0,0),(15,2,'79.94 cm',0,0),(15,3,'85.7 cm',0,0),(15,4,'99.83 cm',0,0),(15,5,'5.17 cm',0,0),(16,6,'60.82 cm',0,0),(16,7,'94.21 cm',0,0),(16,8,'1920x1080',0,0),(17,1,'55.57 cm',0,0),(17,2,'92.29 cm',0,0),(17,3,'94.22 cm',0,0),(17,4,'60.07 cm',0,0),(17,5,'13.11 cm',0,0),(18,6,'81.25 cm',0,0),(18,7,'84.74 cm',0,0),(18,8,'1920x1080',0,0),(19,6,'10.96 cm',0,0),(19,7,'91.53 cm',0,0),(19,8,'3840x2160',0,0),(20,6,'49.44 cm',0,0),(20,7,'84.11 cm',0,0),(20,8,'2560x1440',0,0),(21,6,'26.1 cm',0,0),(21,7,'8.41 cm',0,0),(21,8,'2560x1440',0,0),(22,6,'53.59 cm',0,0),(22,7,'11.26 cm',0,0),(22,8,'1920x1080',0,0),(23,6,'87.27 cm',0,0),(23,7,'91.32 cm',0,0),(23,8,'1920x1080',0,0),(24,6,'67.48 cm',0,0),(24,7,'31.92 cm',0,0),(24,8,'2560x1440',0,0),(25,6,'6.22 cm',0,0),(25,7,'29 cm',0,0),(25,8,'2560x1440',0,0),(26,1,'10.16 cm',0,0),(26,2,'21.75 cm',0,0),(26,3,'99.59 cm',0,0),(26,4,'16.58 cm',0,0),(26,5,'14.1 cm',0,0),(27,1,'95.48 cm',0,0),(27,2,'38.77 cm',0,0),(27,3,'42.96 cm',0,0),(27,4,'17.21 cm',0,0),(27,5,'67.44 cm',0,0),(28,6,'67.38 cm',0,0),(28,7,'79.4 cm',0,0),(28,8,'2560x1440',0,0),(29,1,'37.65 cm',0,0),(29,2,'38.27 cm',0,0),(29,3,'42.05 cm',0,0),(29,4,'72.8 cm',0,0),(29,5,'71.5 cm',0,0),(30,1,'8.04 cm',0,0),(30,2,'72.21 cm',0,0),(30,3,'59.61 cm',0,0),(30,4,'77.07 cm',0,0),(30,5,'56.6 cm',0,0),(31,1,'17.02 cm',0,0),(31,2,'52.75 cm',0,0),(31,3,'5.75 cm',0,0),(31,4,'7.12 cm',0,0),(31,5,'30.69 cm',0,0),(32,1,'13.22 cm',0,0),(32,2,'19.36 cm',0,0),(32,3,'33.6 cm',0,0),(32,4,'96.24 cm',0,0),(32,5,'72.64 cm',0,0),(33,6,'1.2 cm',0,0),(33,7,'63.06 cm',0,0),(33,8,'2560x1440',0,0),(34,1,'43.87 cm',0,0),(34,2,'83.62 cm',0,0),(34,3,'65.08 cm',0,0),(34,4,'68.87 cm',0,0),(34,5,'90.54 cm',0,0),(35,6,'60.81 cm',0,0),(35,7,'77.99 cm',0,0),(35,8,'3840x2160',0,0),(36,6,'80.67 cm',0,0),(36,7,'79.55 cm',0,0),(36,8,'2560x1440',0,0),(37,6,'18.5 cm',0,0),(37,7,'81.81 cm',0,0),(37,8,'1920x1080',0,0),(38,6,'28.12 cm',0,0),(38,7,'29.86 cm',0,0),(38,8,'2560x1440',0,0),(39,1,'50.83 cm',0,0),(39,2,'75.13 cm',0,0),(39,3,'13.94 cm',0,0),(39,4,'84.22 cm',0,0),(39,5,'97.22 cm',0,0),(40,1,'43.12 cm',0,0),(40,2,'95.66 cm',0,0),(40,3,'25.62 cm',0,0),(40,4,'81.72 cm',0,0),(40,5,'43.32 cm',0,0),(41,1,'22.25 cm',0,0),(41,2,'69.73 cm',0,0),(41,3,'62.85 cm',0,0),(41,4,'88.68 cm',0,0),(41,5,'92.25 cm',0,0),(42,1,'77.4 cm',0,0),(42,2,'14.17 cm',0,0),(42,3,'59.51 cm',0,0),(42,4,'41.84 cm',0,0),(42,5,'47.51 cm',0,0),(43,6,'32.06 cm',0,0),(43,7,'83.1 cm',0,0),(43,8,'2560x1440',0,0);
/*!40000 ALTER TABLE `ec_product_specification_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_specification_attribute_translations`
--

DROP TABLE IF EXISTS `ec_product_specification_attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_specification_attribute_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `attribute_id` bigint unsigned NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `psat_unique` (`product_id`,`attribute_id`,`lang_code`),
  KEY `psat_product_attribute_index` (`product_id`,`attribute_id`),
  KEY `psat_product_id_index` (`product_id`),
  KEY `psat_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_specification_attribute_translations`
--

LOCK TABLES `ec_product_specification_attribute_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_specification_attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tag_product`
--

DROP TABLE IF EXISTS `ec_product_tag_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tag_product` (
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tag_id`),
  KEY `ec_product_tag_product_product_id_index` (`product_id`),
  KEY `ec_product_tag_product_tag_id_index` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tag_product`
--

LOCK TABLES `ec_product_tag_product` WRITE;
/*!40000 ALTER TABLE `ec_product_tag_product` DISABLE KEYS */;
INSERT INTO `ec_product_tag_product` VALUES (1,1),(1,2),(1,5),(2,3),(2,4),(2,5),(3,2),(3,3),(3,4),(4,2),(4,4),(4,6),(5,1),(5,4),(5,6),(6,3),(6,4),(6,6),(7,2),(7,5),(7,6),(8,1),(8,3),(8,4),(9,1),(9,4),(9,5),(10,3),(10,4),(10,5),(11,3),(11,4),(11,5),(12,2),(12,4),(12,6),(13,3),(13,5),(13,6),(14,1),(14,3),(14,6),(15,3),(15,4),(15,6),(16,4),(16,5),(16,6),(17,4),(17,5),(17,6),(18,1),(18,3),(18,6),(19,3),(19,4),(19,6),(20,2),(20,4),(20,6),(21,2),(21,3),(21,4),(22,1),(22,3),(22,5),(23,2),(23,3),(23,5),(24,3),(24,4),(24,5),(25,2),(25,3),(25,6),(26,2),(26,3),(26,5),(27,3),(27,5),(27,6),(28,1),(28,3),(28,4),(29,1),(29,4),(29,5),(30,1),(30,4),(30,5),(31,3),(31,4),(31,5),(32,1),(32,2),(32,3),(33,1),(33,2),(33,5),(34,2),(34,5),(34,6),(35,2),(35,3),(35,5),(36,1),(36,2),(36,4),(37,3),(37,4),(37,5),(38,1),(38,2),(38,4),(39,2),(39,4),(39,6),(40,2),(40,5),(40,6),(41,1),(41,4),(41,6),(42,1),(42,3),(42,5),(43,4),(43,5),(43,6);
/*!40000 ALTER TABLE `ec_product_tag_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags`
--

DROP TABLE IF EXISTS `ec_product_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags`
--

LOCK TABLES `ec_product_tags` WRITE;
/*!40000 ALTER TABLE `ec_product_tags` DISABLE KEYS */;
INSERT INTO `ec_product_tags` VALUES (1,'Electronic',NULL,'published','2025-09-05 17:59:10','2025-09-05 17:59:10'),(2,'Mobile',NULL,'published','2025-09-05 17:59:10','2025-09-05 17:59:10'),(3,'Iphone',NULL,'published','2025-09-05 17:59:10','2025-09-05 17:59:10'),(4,'Printer',NULL,'published','2025-09-05 17:59:10','2025-09-05 17:59:10'),(5,'Office',NULL,'published','2025-09-05 17:59:10','2025-09-05 17:59:10'),(6,'IT',NULL,'published','2025-09-05 17:59:10','2025-09-05 17:59:10');
/*!40000 ALTER TABLE `ec_product_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_tags_translations`
--

DROP TABLE IF EXISTS `ec_product_tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_product_tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_product_tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_tags_translations`
--

LOCK TABLES `ec_product_tags_translations` WRITE;
/*!40000 ALTER TABLE `ec_product_tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_up_sale_relations`
--

DROP TABLE IF EXISTS `ec_product_up_sale_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_up_sale_relations` (
  `from_product_id` bigint unsigned NOT NULL,
  `to_product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`from_product_id`,`to_product_id`),
  KEY `ec_product_up_sale_relations_from_product_id_index` (`from_product_id`),
  KEY `ec_product_up_sale_relations_to_product_id_index` (`to_product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_up_sale_relations`
--

LOCK TABLES `ec_product_up_sale_relations` WRITE;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_up_sale_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variation_items`
--

DROP TABLE IF EXISTS `ec_product_variation_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variation_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` bigint unsigned NOT NULL,
  `variation_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variation_items_attribute_id_variation_id_unique` (`attribute_id`,`variation_id`),
  KEY `attribute_variation_index` (`attribute_id`,`variation_id`),
  KEY `idx_variation_id` (`variation_id`),
  KEY `idx_variation_attribute_covering` (`variation_id`,`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variation_items`
--

LOCK TABLES `ec_product_variation_items` WRITE;
/*!40000 ALTER TABLE `ec_product_variation_items` DISABLE KEYS */;
INSERT INTO `ec_product_variation_items` VALUES (3,1,2),(7,1,4),(23,1,12),(11,2,6),(15,2,8),(25,2,13),(29,2,15),(9,3,5),(13,3,7),(19,3,10),(1,4,1),(21,4,11),(5,5,3),(17,5,9),(27,5,14),(6,6,3),(18,6,9),(20,6,10),(22,6,11),(4,7,2),(2,8,1),(8,8,4),(12,8,6),(24,8,12),(26,8,13),(28,8,14),(14,9,7),(30,9,15),(10,10,5),(16,10,8),(35,11,18),(39,11,20),(69,11,35),(71,11,36),(73,11,37),(31,12,16),(41,12,21),(47,12,24),(61,12,31),(63,12,32),(67,12,34),(79,12,40),(81,12,41),(37,13,19),(43,13,22),(49,13,25),(53,13,27),(59,13,30),(65,13,33),(75,13,38),(83,13,42),(87,13,44),(45,14,23),(55,14,28),(77,14,39),(85,14,43),(33,15,17),(51,15,26),(57,15,29),(32,16,16),(52,16,26),(76,16,38),(86,16,43),(88,16,44),(38,17,19),(42,17,21),(64,17,32),(84,17,42),(46,18,23),(54,18,27),(58,18,29),(68,18,34),(80,18,40),(82,18,41),(34,19,17),(36,19,18),(48,19,24),(50,19,25),(62,19,31),(66,19,33),(78,19,39),(40,20,20),(44,20,22),(56,20,28),(60,20,30),(70,20,35),(72,20,36),(74,20,37);
/*!40000 ALTER TABLE `ec_product_variation_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_variations`
--

DROP TABLE IF EXISTS `ec_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `configurable_product_id` bigint unsigned NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_variations_product_id_configurable_product_id_unique` (`product_id`,`configurable_product_id`),
  KEY `configurable_product_index` (`product_id`,`configurable_product_id`),
  KEY `idx_configurable_product_id` (`configurable_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_variations`
--

LOCK TABLES `ec_product_variations` WRITE;
/*!40000 ALTER TABLE `ec_product_variations` DISABLE KEYS */;
INSERT INTO `ec_product_variations` VALUES (1,44,2,1),(2,45,4,1),(3,46,4,0),(4,47,4,0),(5,48,4,0),(6,49,4,0),(7,50,13,1),(8,51,13,0),(9,52,14,1),(10,53,14,0),(11,54,15,1),(12,55,18,1),(13,56,18,0),(14,57,19,1),(15,58,19,0),(16,59,23,1),(17,60,24,1),(18,61,24,0),(19,62,24,0),(20,63,26,1),(21,64,26,0),(22,65,26,0),(23,66,28,1),(24,67,28,0),(25,68,29,1),(26,69,29,0),(27,70,29,0),(28,71,29,0),(29,72,29,0),(30,73,30,1),(31,74,30,0),(32,75,35,1),(33,76,35,0),(34,77,36,1),(35,78,36,0),(36,79,36,0),(37,80,36,0),(38,81,37,1),(39,82,37,0),(40,83,37,0),(41,84,37,0),(42,85,39,1),(43,86,39,0),(44,87,40,1);
/*!40000 ALTER TABLE `ec_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_views`
--

DROP TABLE IF EXISTS `ec_product_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_views` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `views` int NOT NULL DEFAULT '1',
  `date` date NOT NULL DEFAULT '2025-09-06',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_product_views_product_id_date_unique` (`product_id`,`date`),
  KEY `ec_product_views_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_views`
--

LOCK TABLES `ec_product_views` WRITE;
/*!40000 ALTER TABLE `ec_product_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_product_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_product_with_attribute_set`
--

DROP TABLE IF EXISTS `ec_product_with_attribute_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_product_with_attribute_set` (
  `attribute_set_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`attribute_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_product_with_attribute_set`
--

LOCK TABLES `ec_product_with_attribute_set` WRITE;
/*!40000 ALTER TABLE `ec_product_with_attribute_set` DISABLE KEYS */;
INSERT INTO `ec_product_with_attribute_set` VALUES (1,2,0),(2,2,0),(1,4,0),(2,4,0),(1,13,0),(2,13,0),(1,14,0),(2,14,0),(1,15,0),(2,15,0),(1,18,0),(2,18,0),(1,19,0),(2,19,0),(3,23,0),(4,23,0),(3,24,0),(4,24,0),(3,26,0),(4,26,0),(3,28,0),(4,28,0),(3,29,0),(4,29,0),(3,30,0),(4,30,0),(3,35,0),(4,35,0),(3,36,0),(4,36,0),(3,37,0),(4,37,0),(3,39,0),(4,39,0),(3,40,0),(4,40,0);
/*!40000 ALTER TABLE `ec_product_with_attribute_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products`
--

DROP TABLE IF EXISTS `ec_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `images` text COLLATE utf8mb4_unicode_ci,
  `video_media` text COLLATE utf8mb4_unicode_ci,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned DEFAULT NULL,
  `allow_checkout_when_out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `with_storehouse_management` tinyint unsigned NOT NULL DEFAULT '0',
  `stock_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'in_stock',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `brand_id` bigint unsigned DEFAULT NULL,
  `is_variation` tinyint NOT NULL DEFAULT '0',
  `sale_type` tinyint NOT NULL DEFAULT '0',
  `price` double unsigned DEFAULT NULL,
  `sale_price` double unsigned DEFAULT NULL,
  `start_date` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `length` double DEFAULT NULL,
  `wide` double DEFAULT NULL,
  `height` double DEFAULT NULL,
  `weight` double DEFAULT NULL,
  `tax_id` bigint unsigned DEFAULT NULL,
  `views` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `store_id` bigint unsigned DEFAULT NULL,
  `created_by_id` bigint unsigned DEFAULT '0',
  `created_by_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `approved_by` bigint unsigned DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'physical',
  `barcode` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_per_item` double DEFAULT NULL,
  `generate_license_code` tinyint(1) NOT NULL DEFAULT '0',
  `license_code_type` enum('auto_generate','pick_from_list') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto_generate',
  `minimum_order_quantity` int unsigned DEFAULT '0',
  `maximum_order_quantity` int unsigned DEFAULT '0',
  `notify_attachment_updated` tinyint(1) NOT NULL DEFAULT '0',
  `specification_table_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_products_brand_id_status_is_variation_created_at_index` (`brand_id`,`status`,`is_variation`,`created_at`),
  KEY `sale_type_index` (`sale_type`),
  KEY `start_date_index` (`start_date`),
  KEY `end_date_index` (`end_date`),
  KEY `sale_price_index` (`sale_price`),
  KEY `is_variation_index` (`is_variation`),
  KEY `ec_products_sku_index` (`sku`),
  KEY `idx_products_export` (`id`,`is_variation`),
  KEY `idx_store_variation_status` (`store_id`,`is_variation`,`status`),
  KEY `idx_variation_name_id` (`is_variation`,`name`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products`
--

LOCK TABLES `ec_products` WRITE;
/*!40000 ALTER TABLE `ec_products` DISABLE KEYS */;
INSERT INTO `ec_products` VALUES (1,'Vintage Denim Jacket','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-5.jpg\"]','[]','VP-197',0,17,0,1,'in_stock',1,2,0,0,2471,834,NULL,NULL,18,17,12,896,NULL,88707,'2025-09-05 17:59:18','2025-09-05 17:59:20',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2146524612607',NULL,0,'auto_generate',0,0,0,2),(2,'Floral Maxi Dress','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-19.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','9Q-110-A1',0,15,0,1,'in_stock',1,3,0,0,1912,NULL,NULL,NULL,17,15,16,645,NULL,177618,'2025-09-05 17:59:18','2025-09-05 17:59:20',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7667496013865',NULL,0,'auto_generate',0,0,0,1),(3,'Leather Ankle Boots','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\"]','[]','D7-150',0,20,0,1,'in_stock',1,3,0,0,328,13,NULL,NULL,10,19,12,838,NULL,94627,'2025-09-05 17:59:18','2025-09-05 17:59:20',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','0320377015231',NULL,0,'auto_generate',0,0,0,1),(4,'Knit Turtleneck Sweater (Digital)','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-4.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','WU-147-A1',0,10,0,1,'in_stock',0,5,0,0,1726,1259.98,NULL,NULL,17,15,19,667,NULL,79139,'2025-09-05 17:59:18','2025-09-05 17:59:20',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','5537965964986',NULL,0,'auto_generate',0,0,0,2),(5,'Classic Aviator Sunglasses','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-16.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','IK-159',0,11,0,1,'in_stock',1,4,0,0,2462,1892,NULL,NULL,12,17,17,730,NULL,198421,'2025-09-05 17:59:18','2025-09-05 17:59:20',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','6978225783548',NULL,0,'auto_generate',0,0,0,2),(6,'Tailored Wool Blazer','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-7.jpg\"]','[]','R9-135',0,13,0,1,'in_stock',1,2,0,0,989,693,NULL,NULL,16,19,16,650,NULL,4595,'2025-09-05 17:59:18','2025-09-05 17:59:20',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','5634754564089',NULL,0,'auto_generate',0,0,0,1),(7,'Bohemian Fringe Handbag','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','OP-113',0,17,0,1,'in_stock',1,1,0,0,838,621,NULL,NULL,15,16,12,611,NULL,86842,'2025-09-05 17:59:18','2025-09-05 17:59:20',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','1640652742324',NULL,0,'auto_generate',0,0,0,2),(8,'Silk Scarf with Geometric Print (Digital)','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','KQ-176',0,14,0,1,'in_stock',0,3,0,0,482,288,NULL,NULL,11,15,11,626,NULL,83680,'2025-09-05 17:59:18','2025-09-05 17:59:20',4,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','7345118053696',NULL,0,'auto_generate',0,0,0,1),(9,'High-Waisted Wide Leg Trousers','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-17.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','23-102',0,17,0,1,'in_stock',1,2,0,0,1043,785,NULL,NULL,20,14,19,685,NULL,131759,'2025-09-05 17:59:18','2025-09-05 17:59:20',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','8078488896776',NULL,0,'auto_generate',0,0,0,1),(10,'Embroidered Boho Blouse','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-10.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','1K-144',0,13,0,1,'in_stock',0,3,0,0,2091,1117,NULL,NULL,19,12,10,778,NULL,147412,'2025-09-05 17:59:18','2025-09-05 17:59:20',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7516470364120',NULL,0,'auto_generate',0,0,0,1),(11,'Statement Chunky Necklace','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\"]','[]','LM-196',0,16,0,1,'in_stock',0,3,0,0,712,160,NULL,NULL,20,18,17,634,NULL,154123,'2025-09-05 17:59:18','2025-09-05 17:59:20',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7558984378125',NULL,0,'auto_generate',0,0,0,2),(12,'Chic Fedora Hat (Digital)','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','K1-191',0,15,0,1,'in_stock',0,5,0,0,725,212,NULL,NULL,19,11,15,605,NULL,2739,'2025-09-05 17:59:18','2025-09-05 17:59:20',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','0361180713754',NULL,0,'auto_generate',0,0,0,1),(13,'Strappy Block Heel Sandals','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]','[]','TJ-137-A1',0,11,0,1,'in_stock',1,2,0,0,1013,NULL,NULL,NULL,18,15,16,781,NULL,102516,'2025-09-05 17:59:18','2025-09-05 17:59:20',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','0753465727776',NULL,0,'auto_generate',0,0,0,1),(14,'Velvet Evening Gown','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-14.jpg\"]','[]','DN-187-A1',0,10,0,1,'in_stock',1,4,0,0,679,NULL,NULL,NULL,13,13,14,844,NULL,118245,'2025-09-05 17:59:18','2025-09-05 17:59:20',2,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','4248318954585',NULL,0,'auto_generate',0,0,0,2),(15,'Quilted Crossbody Bag','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','LX-119-A1',0,10,0,1,'in_stock',1,5,0,0,739,NULL,NULL,NULL,17,18,10,573,NULL,140134,'2025-09-05 17:59:18','2025-09-05 17:59:20',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','4572710064840',NULL,0,'auto_generate',0,0,0,1),(16,'Distressed Skinny Jeans (Digital)','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','Z2-122',0,18,0,1,'in_stock',1,5,0,0,1935,234,NULL,NULL,13,18,12,634,NULL,111246,'2025-09-05 17:59:18','2025-09-05 17:59:20',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','2281982329343',NULL,0,'auto_generate',0,0,0,2),(17,'Lace-Up Combat Boots','Make a bold statement with this chunky necklace, designed to add a touch of glamour to any outfit. The perfect accessory for a night out.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-17.jpg\"]','[]','CT-108',0,15,0,1,'in_stock',1,5,0,0,890,112,NULL,NULL,18,17,20,704,NULL,142247,'2025-09-05 17:59:18','2025-09-05 17:59:20',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','6417236690570',NULL,0,'auto_generate',0,0,0,1),(18,'Cotton Striped T-Shirt Dress','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-13.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','AE-200-A1',0,13,0,1,'in_stock',1,1,0,0,820,NULL,NULL,NULL,19,17,17,885,NULL,192755,'2025-09-05 17:59:18','2025-09-05 17:59:20',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','3694825346107',NULL,0,'auto_generate',0,0,0,2),(19,'Printed Palazzo Pants','Embrace bohemian vibes with this embroidered boho blouse, featuring intricate stitching and a relaxed fit. Perfect for a casual day with a touch of style.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-4.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','2Z-155-A1',0,10,0,1,'in_stock',0,1,0,0,1711,NULL,NULL,NULL,18,12,16,537,NULL,50363,'2025-09-05 17:59:18','2025-09-05 17:59:20',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','3196164147440',NULL,0,'auto_generate',0,0,0,2),(20,'Structured Satchel Bag (Digital)','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-13.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','FP-185',0,13,0,1,'in_stock',1,1,0,0,1979,305,NULL,NULL,15,10,17,853,NULL,9712,'2025-09-05 17:59:19','2025-09-05 17:59:20',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','0644307137672',NULL,0,'auto_generate',0,0,0,2),(21,'Off-Shoulder Ruffle Top','Stay on trend with these high-waisted wide-leg trousers, combining comfort and sophistication. Pair them with heels for a refined look.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-3.jpg\"]','[]','OY-198',0,10,0,1,'in_stock',0,3,0,0,505,343,NULL,NULL,11,20,11,766,NULL,143969,'2025-09-05 17:59:19','2025-09-05 17:59:20',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','0823466490136',NULL,0,'auto_generate',0,0,0,2),(22,'Suede Pointed-Toe Pumps','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-9.jpg\"]','[]','JR-191',0,17,0,1,'in_stock',1,1,0,0,1443,1413,NULL,NULL,12,11,20,722,NULL,78138,'2025-09-05 17:59:19','2025-09-05 17:59:20',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2525044853514',NULL,0,'auto_generate',0,0,0,2),(23,'Cropped Cable Knit Sweater','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-15.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','EF-129-A1',0,16,0,1,'in_stock',0,5,0,0,2289,NULL,NULL,NULL,11,20,11,542,NULL,17325,'2025-09-05 17:59:19','2025-09-05 17:59:20',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7906209508954',NULL,0,'auto_generate',0,0,0,2),(24,'Athleisure Jogger Pants (Digital)','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','Z5-103-A1',0,13,0,1,'in_stock',0,1,0,0,1263,997.77,NULL,NULL,19,20,10,798,NULL,34423,'2025-09-05 17:59:19','2025-09-05 17:59:20',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','7033366989255',NULL,0,'auto_generate',0,0,0,2),(25,'Leopard Print Midi Skirt','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-6.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','UL-126',0,13,0,1,'in_stock',1,1,0,0,956,486,NULL,NULL,13,10,12,877,NULL,76915,'2025-09-05 17:59:19','2025-09-05 17:59:20',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','1256704897074',NULL,0,'auto_generate',0,0,0,2),(26,'Retro Cat-Eye Sunglasses','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','ML-125-A1',0,11,0,1,'in_stock',0,1,0,0,598,NULL,NULL,NULL,20,17,10,750,NULL,82942,'2025-09-05 17:59:19','2025-09-05 17:59:20',5,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','1716816284839',NULL,0,'auto_generate',0,0,0,1),(27,'Faux Fur Trimmed Coat','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[]','QT-153',0,19,0,1,'in_stock',0,2,0,0,2332,1490,NULL,NULL,11,17,20,574,NULL,28870,'2025-09-05 17:59:19','2025-09-05 17:59:20',1,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','1824113117450',NULL,0,'auto_generate',0,0,0,1),(28,'Boho Fringed Kimono (Digital)','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[]','UC-125-A1',0,10,0,1,'in_stock',0,1,0,0,595,523.6,NULL,NULL,17,16,13,531,NULL,70973,'2025-09-05 17:59:19','2025-09-05 17:59:20',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','9601814262830',NULL,0,'auto_generate',0,0,0,2),(29,'Ruffled Wrap Dress','Add a pop of color to your outfit with this silk scarf adorned with a geometric print. Wrap it around your neck or tie it to your handbag for a stylish touch.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\"]','[]','9T-102-A1',0,10,0,1,'in_stock',1,1,0,0,2298,NULL,NULL,NULL,12,14,17,737,NULL,138292,'2025-09-05 17:59:19','2025-09-05 17:59:20',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7858871936491',NULL,0,'auto_generate',0,0,0,1),(30,'Beaded Evening Clutch','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-18.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','G4-121-A1',0,12,0,1,'in_stock',0,1,0,0,1123,NULL,NULL,NULL,20,12,11,879,NULL,179601,'2025-09-05 17:59:19','2025-09-05 17:59:20',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7240826209611',NULL,0,'auto_generate',0,0,0,1),(31,'Wide Brim Floppy Hat','Achieve a polished look with this tailored wool blazer, designed for a flattering fit and versatile enough for both work and casual outings.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-1.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','DJ-112',0,12,0,1,'in_stock',0,2,0,0,789,263,NULL,NULL,18,12,20,878,NULL,77059,'2025-09-05 17:59:19','2025-09-05 17:59:20',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2839400961912',NULL,0,'auto_generate',0,0,0,1),(32,'Denim Overall Jumpsuit (Digital)','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-11.jpg\",\"main\\/products\\/product-8.jpg\"]','[]','UQ-108',0,10,0,1,'in_stock',1,1,0,0,1781,58,NULL,NULL,18,16,17,626,NULL,81707,'2025-09-05 17:59:19','2025-09-05 17:59:20',6,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','6481309088885',NULL,0,'auto_generate',0,0,0,1),(33,'Embellished Ballet Flats','Make a statement in this floral maxi dress, perfect for summer events or a casual day out. The flowy silhouette and vibrant print will turn heads wherever you go.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-3.jpg\"]','[]','KZ-136',0,13,0,1,'in_stock',1,3,0,0,289,44,NULL,NULL,19,12,11,691,NULL,121179,'2025-09-05 17:59:19','2025-09-05 17:59:20',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2659519200289',NULL,0,'auto_generate',0,0,0,2),(34,'Pleated Midi Skirt','Stay cozy and chic in this knit turtleneck sweater, featuring a ribbed texture and a timeless design. Perfect for chilly days and nights.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-5.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','5V-182',0,10,0,1,'in_stock',1,1,0,0,1690,1669,NULL,NULL,11,15,13,602,NULL,143367,'2025-09-05 17:59:19','2025-09-05 17:59:20',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7883938602446',NULL,0,'auto_generate',0,0,0,1),(35,'Velour Tracksuit Set','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-19.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','MZ-187-A1',0,18,0,1,'in_stock',0,1,0,0,2389,NULL,NULL,NULL,17,13,10,695,NULL,166332,'2025-09-05 17:59:19','2025-09-05 17:59:20',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','5819083921370',NULL,0,'auto_generate',0,0,0,2),(36,'Geometric Patterned Cardigan (Digital)','Complete your look with these classic aviator sunglasses, offering a touch of timeless glamour and UV protection for your eyes.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-5.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-12.jpg\"]','[[{\"key\":\"file\",\"value\":\"main\\/video\\/video-2.mp4\"},{\"key\":\"url\",\"value\":null},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','OX-173-A1',0,10,0,1,'in_stock',0,5,0,0,1112,811.76,NULL,NULL,13,15,19,644,NULL,28715,'2025-09-05 17:59:19','2025-09-05 17:59:20',5,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','4658325113057',NULL,0,'auto_generate',0,0,0,2),(37,'Buckle Detail Ankle Booties','Step out in style with these leather ankle boots, crafted with a sleek design and comfortable block heel. Versatile enough to pair with both dresses and jeans.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-8.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-11.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/1.jpg\"}]]','KT-127-A1',0,15,0,1,'in_stock',1,4,0,0,1573,NULL,NULL,NULL,19,15,17,549,NULL,126211,'2025-09-05 17:59:19','2025-09-05 17:59:20',6,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2062612339761',NULL,0,'auto_generate',0,0,0,2),(38,'Embroidered Bomber Jacket','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-details-desc-2.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-13.jpg\",\"main\\/products\\/product-10.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-8.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','FM-117',0,14,0,1,'in_stock',1,2,0,0,1616,719,NULL,NULL,18,17,16,588,NULL,95133,'2025-09-05 17:59:19','2025-09-05 17:59:20',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','5404347054774',NULL,0,'auto_generate',0,0,0,2),(39,'Cowl Neck Knit Poncho','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-7.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-details-desc-1.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','SJ-100-A1',0,16,0,1,'in_stock',0,4,0,0,798,NULL,NULL,NULL,11,10,11,756,NULL,64490,'2025-09-05 17:59:19','2025-09-05 17:59:20',3,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2672845164605',NULL,0,'auto_generate',0,0,0,1),(40,'Chunky Knit Infinity Scarf (Digital)','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-17.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-11.jpg\"]','[]','A4-109-A1',0,17,0,1,'in_stock',1,1,0,0,2308,1707.92,NULL,NULL,15,17,16,874,NULL,39426,'2025-09-05 17:59:19','2025-09-05 17:59:20',8,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','7953969828228',NULL,0,'auto_generate',0,0,0,1),(41,'Retro High-Top Sneakers','Accessorize with this bohemian fringe handbag, featuring intricate details and enough space for your essentials. The perfect boho-chic addition to your collection.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-6.jpg\",\"main\\/products\\/product-4.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-20.jpg\",\"main\\/products\\/product-2.jpg\",\"main\\/products\\/product-5.jpg\"]','[]','OO-143',0,10,0,1,'in_stock',0,5,0,0,1797,357,NULL,NULL,12,11,16,771,NULL,60663,'2025-09-05 17:59:19','2025-09-05 17:59:20',8,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7174627414991',NULL,0,'auto_generate',0,0,0,1),(42,'Faux Leather Leggings','Elevate your street style with this vintage denim jacket, featuring distressed detailing and a relaxed fit for a laid-back vibe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-12.jpg\",\"main\\/products\\/product-details-desc-1.jpg\",\"main\\/products\\/product-3.jpg\",\"main\\/products\\/product-details-desc-3.jpg\",\"main\\/products\\/product-details-desc-2.jpg\"]','[[{\"key\":\"file\",\"value\":null},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\\/watch?v=6JYIGclVQdw\"},{\"key\":\"thumbnail\",\"value\":\"main\\/video\\/2.jpg\"}]]','DD-196',0,11,0,1,'in_stock',0,4,0,0,442,192,NULL,NULL,10,13,19,650,NULL,54640,'2025-09-05 17:59:19','2025-09-05 17:59:20',4,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2141442007313',NULL,0,'auto_generate',0,0,0,1),(43,'Metallic Pleated Maxi Skirt','Top off your look with this chic fedora hat, crafted with a classic silhouette and a timeless appeal. A must-have accessory for any fashion-forward wardrobe.','<div class=\"row justify-content-center\">\n    <div class=\"col-xl-10\">\n        <div class=\"tp-product-details-desc-item pb-105\">\n            <div class=\"row\">\n                <div class=\"col-lg-6\">\n                    <div class=\"pt-25\">\n                        <span>Anti-Aging Serum</span>\n                        <h3 class=\"tp-product-details-desc-title\">Revitalize Your Skin</h3>\n                        <p>\n                            Turn back the clock with our advanced anti-aging serum. Formulated with potent ingredients like hyaluronic acid and retinol, this serum targets fine lines, wrinkles, and age spots, leaving your skin looking youthful and radiant. Restore your skin\'s natural glow and texture with regular use.\n                        </p>\n                    </div>\n                    <div>\n                        <h3 class=\"tp-product-details-desc-title\">Hydration and Nourishment</h3>\n                        <p>\n                            Our anti-aging serum is enriched with hydrating and nourishing ingredients that penetrate deep into the skin to replenish moisture and improve elasticity. Say goodbye to dry, dull skin and hello to a complexion that\'s supple, smooth, and rejuvenated.\n                        </p>\n                    </div>\n                </div>\n                <div class=\"col-lg-6\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-1.png\" alt=\"Anti-Aging Serum\">\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item pb-75\">\n            <div class=\"row\">\n                <div class=\"col-lg-7\">\n                    <div class=\"tp-product-details-desc-thumb\">\n                        <img src=\"/storage/beauty/products/product-2.png\" alt=\"Application of Anti-Aging Serum\">\n                    </div>\n                </div>\n\n                <div class=\"col-lg-5 order-first order-lg-last\">\n                    <div class=\"des-content-2 pl-40\">\n                        <h3 class=\"tp-product-details-desc-title\">\n                            Visible Results\n                        </h3>\n                        <p>\n                            Experience noticeable results with our anti-aging serum. Within weeks of use, you\'ll notice smoother, firmer skin with reduced signs of aging. Incorporate it into your daily skincare routine for long-lasting benefits and a complexion that defies time.\n                        </p>\n                    </div>\n                </div>\n            </div>\n        </div>\n        <div class=\"tp-product-details-desc-item\">\n            <div class=\"row\">\n                <div class=\"col-xl-12\">\n                    <div class=\"tp-product-details-desc-banner text-center m-img\">\n                        <h3 class=\"tp-product-details-desc-banner-title tp-product-details-desc-title\">Expertly Formulated</h3>\n                        <img src=\"/storage/beauty/products/product-3.png\" alt=\"Beauty Lab\">\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n','published','[\"main\\/products\\/product-16.jpg\",\"main\\/products\\/product-1.jpg\",\"main\\/products\\/product-15.jpg\",\"main\\/products\\/product-18.jpg\",\"main\\/products\\/product-9.jpg\",\"main\\/products\\/product-14.jpg\"]','[]','WX-154',0,14,0,1,'in_stock',1,1,0,0,1659,870,NULL,NULL,13,13,19,712,NULL,103750,'2025-09-05 17:59:19','2025-09-05 17:59:20',7,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','0976801057362',NULL,0,'auto_generate',0,0,0,2),(44,'Floral Maxi Dress',NULL,NULL,'published','[\"main\\/products\\/product-11.jpg\"]',NULL,'9Q-110-A1',0,15,0,1,'in_stock',0,3,1,0,1912,NULL,NULL,NULL,17,15,16,645,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','9543289188829',NULL,0,'auto_generate',0,0,0,NULL),(45,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'WU-147-A1',0,10,0,1,'in_stock',0,5,1,0,1726,1259.98,NULL,NULL,17,15,19,667,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','0092867313034',NULL,0,'auto_generate',0,0,0,NULL),(46,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'WU-147-A1-A2',0,10,0,1,'in_stock',0,5,1,0,1726,1432.58,NULL,NULL,17,15,19,667,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','3891043086031',NULL,0,'auto_generate',0,0,0,NULL),(47,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'WU-147-A1-A3',0,10,0,1,'in_stock',0,5,1,0,1726,1501.62,NULL,NULL,17,15,19,667,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','1172327825358',NULL,0,'auto_generate',0,0,0,NULL),(48,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'WU-147-A1-A4',0,10,0,1,'in_stock',0,5,1,0,1726,1346.28,NULL,NULL,17,15,19,667,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','9469767440909',NULL,0,'auto_generate',0,0,0,NULL),(49,'Knit Turtleneck Sweater (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'WU-147-A1-A5',0,10,0,1,'in_stock',0,5,1,0,1726,1484.36,NULL,NULL,17,15,19,667,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','4979604830213',NULL,0,'auto_generate',0,0,0,NULL),(50,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-3.jpg\"]',NULL,'TJ-137-A1',0,11,0,1,'in_stock',0,2,1,0,1013,NULL,NULL,NULL,18,15,16,781,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','6275689572641',NULL,0,'auto_generate',0,0,0,NULL),(51,'Strappy Block Heel Sandals',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'TJ-137-A1-A2',0,11,0,1,'in_stock',0,2,1,0,1013,NULL,NULL,NULL,18,15,16,781,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','5681906511354',NULL,0,'auto_generate',0,0,0,NULL),(52,'Velvet Evening Gown',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'DN-187-A1',0,10,0,1,'in_stock',0,4,1,0,679,NULL,NULL,NULL,13,13,14,844,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','8291041789463',NULL,0,'auto_generate',0,0,0,NULL),(53,'Velvet Evening Gown',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'DN-187-A1-A2',0,10,0,1,'in_stock',0,4,1,0,679,NULL,NULL,NULL,13,13,14,844,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7111207113110',NULL,0,'auto_generate',0,0,0,NULL),(54,'Quilted Crossbody Bag',NULL,NULL,'published','[\"main\\/products\\/product-4.jpg\"]',NULL,'LX-119-A1',0,10,0,1,'in_stock',0,5,1,0,739,NULL,NULL,NULL,17,18,10,573,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','6511881847621',NULL,0,'auto_generate',0,0,0,NULL),(55,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'AE-200-A1',0,13,0,1,'in_stock',0,1,1,0,820,NULL,NULL,NULL,19,17,17,885,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','9022409374965',NULL,0,'auto_generate',0,0,0,NULL),(56,'Cotton Striped T-Shirt Dress',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'AE-200-A1-A2',0,13,0,1,'in_stock',0,1,1,0,820,NULL,NULL,NULL,19,17,17,885,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','4994551072059',NULL,0,'auto_generate',0,0,0,NULL),(57,'Printed Palazzo Pants',NULL,NULL,'published','[\"main\\/products\\/product-1.jpg\"]',NULL,'2Z-155-A1',0,10,0,1,'in_stock',0,1,1,0,1711,NULL,NULL,NULL,18,12,16,537,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','0632801863661',NULL,0,'auto_generate',0,0,0,NULL),(58,'Printed Palazzo Pants',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'2Z-155-A1-A2',0,10,0,1,'in_stock',0,1,1,0,1711,NULL,NULL,NULL,18,12,16,537,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','3871170881099',NULL,0,'auto_generate',0,0,0,NULL),(59,'Cropped Cable Knit Sweater',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'EF-129-A1',0,16,0,1,'in_stock',0,5,1,0,2289,NULL,NULL,NULL,11,20,11,542,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','6998679724874',NULL,0,'auto_generate',0,0,0,NULL),(60,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'Z5-103-A1',0,13,0,1,'in_stock',0,1,1,0,1263,997.77,NULL,NULL,19,20,10,798,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','1643596935166',NULL,0,'auto_generate',0,0,0,NULL),(61,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-details-desc-1.jpg\"]',NULL,'Z5-103-A1-A2',0,13,0,1,'in_stock',0,1,1,0,1263,947.25,NULL,NULL,19,20,10,798,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','5202806869903',NULL,0,'auto_generate',0,0,0,NULL),(62,'Athleisure Jogger Pants (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'Z5-103-A1-A3',0,13,0,1,'in_stock',0,1,1,0,1263,934.62,NULL,NULL,19,20,10,798,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','1580043356771',NULL,0,'auto_generate',0,0,0,NULL),(63,'Retro Cat-Eye Sunglasses',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'ML-125-A1',0,11,0,1,'in_stock',0,1,1,0,598,NULL,NULL,NULL,20,17,10,750,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','0988969751631',NULL,0,'auto_generate',0,0,0,NULL),(64,'Retro Cat-Eye Sunglasses',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'ML-125-A1-A2',0,11,0,1,'in_stock',0,1,1,0,598,NULL,NULL,NULL,20,17,10,750,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','0017738937423',NULL,0,'auto_generate',0,0,0,NULL),(65,'Retro Cat-Eye Sunglasses',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'ML-125-A1-A3',0,11,0,1,'in_stock',0,1,1,0,598,NULL,NULL,NULL,20,17,10,750,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','5940650785061',NULL,0,'auto_generate',0,0,0,NULL),(66,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'UC-125-A1',0,10,0,1,'in_stock',0,1,1,0,595,523.6,NULL,NULL,17,16,13,531,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','7378462702927',NULL,0,'auto_generate',0,0,0,NULL),(67,'Boho Fringed Kimono (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'UC-125-A1-A2',0,10,0,1,'in_stock',0,1,1,0,595,523.6,NULL,NULL,17,16,13,531,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','9555309475444',NULL,0,'auto_generate',0,0,0,NULL),(68,'Ruffled Wrap Dress',NULL,NULL,'published','[\"main\\/products\\/product-15.jpg\"]',NULL,'9T-102-A1',0,10,0,1,'in_stock',0,1,1,0,2298,NULL,NULL,NULL,12,14,17,737,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2923405739222',NULL,0,'auto_generate',0,0,0,NULL),(69,'Ruffled Wrap Dress',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'9T-102-A1-A2',0,10,0,1,'in_stock',0,1,1,0,2298,NULL,NULL,NULL,12,14,17,737,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','5851596064830',NULL,0,'auto_generate',0,0,0,NULL),(70,'Ruffled Wrap Dress',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'9T-102-A1-A3',0,10,0,1,'in_stock',0,1,1,0,2298,NULL,NULL,NULL,12,14,17,737,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','2211730107732',NULL,0,'auto_generate',0,0,0,NULL),(71,'Ruffled Wrap Dress',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'9T-102-A1-A4',0,10,0,1,'in_stock',0,1,1,0,2298,NULL,NULL,NULL,12,14,17,737,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','8430596500127',NULL,0,'auto_generate',0,0,0,NULL),(72,'Ruffled Wrap Dress',NULL,NULL,'published','[\"main\\/products\\/product-10.jpg\"]',NULL,'9T-102-A1-A5',0,10,0,1,'in_stock',0,1,1,0,2298,NULL,NULL,NULL,12,14,17,737,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7373582583098',NULL,0,'auto_generate',0,0,0,NULL),(73,'Beaded Evening Clutch',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'G4-121-A1',0,12,0,1,'in_stock',0,1,1,0,1123,NULL,NULL,NULL,20,12,11,879,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','8618371703905',NULL,0,'auto_generate',0,0,0,NULL),(74,'Beaded Evening Clutch',NULL,NULL,'published','[\"main\\/products\\/product-13.jpg\"]',NULL,'G4-121-A1-A2',0,12,0,1,'in_stock',0,1,1,0,1123,NULL,NULL,NULL,20,12,11,879,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','3375875707093',NULL,0,'auto_generate',0,0,0,NULL),(75,'Velour Tracksuit Set',NULL,NULL,'published','[\"main\\/products\\/product-19.jpg\"]',NULL,'MZ-187-A1',0,18,0,1,'in_stock',0,1,1,0,2389,NULL,NULL,NULL,17,13,10,695,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','3446588936701',NULL,0,'auto_generate',0,0,0,NULL),(76,'Velour Tracksuit Set',NULL,NULL,'published','[\"main\\/products\\/product-7.jpg\"]',NULL,'MZ-187-A1-A2',0,18,0,1,'in_stock',0,1,1,0,2389,NULL,NULL,NULL,17,13,10,695,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','6874633508707',NULL,0,'auto_generate',0,0,0,NULL),(77,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-2.jpg\"]',NULL,'OX-173-A1',0,10,0,1,'in_stock',0,5,1,0,1112,811.76,NULL,NULL,13,15,19,644,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','7942525037723',NULL,0,'auto_generate',0,0,0,NULL),(78,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-16.jpg\"]',NULL,'OX-173-A1-A2',0,10,0,1,'in_stock',0,5,1,0,1112,934.08,NULL,NULL,13,15,19,644,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','1095717277356',NULL,0,'auto_generate',0,0,0,NULL),(79,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-5.jpg\"]',NULL,'OX-173-A1-A3',0,10,0,1,'in_stock',0,5,1,0,1112,878.48,NULL,NULL,13,15,19,644,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','5438059213112',NULL,0,'auto_generate',0,0,0,NULL),(80,'Geometric Patterned Cardigan (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-17.jpg\"]',NULL,'OX-173-A1-A4',0,10,0,1,'in_stock',0,5,1,0,1112,934.08,NULL,NULL,13,15,19,644,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','7049663003792',NULL,0,'auto_generate',0,0,0,NULL),(81,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'KT-127-A1',0,15,0,1,'in_stock',0,4,1,0,1573,NULL,NULL,NULL,19,15,17,549,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','5605535094392',NULL,0,'auto_generate',0,0,0,NULL),(82,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"main\\/products\\/product-12.jpg\"]',NULL,'KT-127-A1-A2',0,15,0,1,'in_stock',0,4,1,0,1573,NULL,NULL,NULL,19,15,17,549,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','8630366824938',NULL,0,'auto_generate',0,0,0,NULL),(83,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"main\\/products\\/product-8.jpg\"]',NULL,'KT-127-A1-A3',0,15,0,1,'in_stock',0,4,1,0,1573,NULL,NULL,NULL,19,15,17,549,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7633365207291',NULL,0,'auto_generate',0,0,0,NULL),(84,'Buckle Detail Ankle Booties',NULL,NULL,'published','[\"main\\/products\\/product-9.jpg\"]',NULL,'KT-127-A1-A4',0,15,0,1,'in_stock',0,4,1,0,1573,NULL,NULL,NULL,19,15,17,549,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','1644555496162',NULL,0,'auto_generate',0,0,0,NULL),(85,'Cowl Neck Knit Poncho',NULL,NULL,'published','[\"main\\/products\\/product-6.jpg\"]',NULL,'SJ-100-A1',0,16,0,1,'in_stock',0,4,1,0,798,NULL,NULL,NULL,11,10,11,756,NULL,0,'2025-09-05 17:59:19','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','7926198265621',NULL,0,'auto_generate',0,0,0,NULL),(86,'Cowl Neck Knit Poncho',NULL,NULL,'published','[\"main\\/products\\/product-20.jpg\"]',NULL,'SJ-100-A1-A2',0,16,0,1,'in_stock',0,4,1,0,798,NULL,NULL,NULL,11,10,11,756,NULL,0,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'physical','8642911003613',NULL,0,'auto_generate',0,0,0,NULL),(87,'Chunky Knit Infinity Scarf (Digital)',NULL,NULL,'published','[\"main\\/products\\/product-3.jpg\"]',NULL,'A4-109-A1',0,17,0,1,'in_stock',0,1,1,0,2308,1707.92,NULL,NULL,15,17,16,874,NULL,0,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,0,'Botble\\ACL\\Models\\User',0,NULL,'digital','4153708654191',NULL,0,'auto_generate',0,0,0,NULL);
/*!40000 ALTER TABLE `ec_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_products_translations`
--

DROP TABLE IF EXISTS `ec_products_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_products_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_products_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`ec_products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_products_translations`
--

LOCK TABLES `ec_products_translations` WRITE;
/*!40000 ALTER TABLE `ec_products_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_products_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_review_replies`
--

DROP TABLE IF EXISTS `ec_review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `review_id` bigint unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_review_replies_review_id_user_id_unique` (`review_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_review_replies`
--

LOCK TABLES `ec_review_replies` WRITE;
/*!40000 ALTER TABLE `ec_review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_reviews`
--

DROP TABLE IF EXISTS `ec_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `customer_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint unsigned NOT NULL,
  `star` double NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_reviews_product_id_customer_id_unique` (`product_id`,`customer_id`),
  KEY `ec_reviews_product_id_customer_id_status_created_at_index` (`product_id`,`customer_id`,`status`,`created_at`),
  KEY `review_relation_index` (`product_id`,`customer_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_reviews`
--

LOCK TABLES `ec_reviews` WRITE;
/*!40000 ALTER TABLE `ec_reviews` DISABLE KEYS */;
INSERT INTO `ec_reviews` VALUES (1,4,NULL,NULL,15,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(2,3,NULL,NULL,13,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(3,4,NULL,NULL,18,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]'),(4,3,NULL,NULL,32,1,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(5,5,NULL,NULL,27,5,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(6,10,NULL,NULL,6,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(7,3,NULL,NULL,39,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(8,8,NULL,NULL,39,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(9,6,NULL,NULL,15,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(10,8,NULL,NULL,2,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(11,6,NULL,NULL,30,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(12,4,NULL,NULL,11,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(13,3,NULL,NULL,7,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(14,5,NULL,NULL,20,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(15,7,NULL,NULL,3,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(16,8,NULL,NULL,33,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(17,5,NULL,NULL,24,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(18,9,NULL,NULL,23,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\"]'),(19,10,NULL,NULL,19,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(20,7,NULL,NULL,15,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(21,9,NULL,NULL,21,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(22,1,NULL,NULL,35,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(23,2,NULL,NULL,36,1,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(25,2,NULL,NULL,41,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(26,7,NULL,NULL,9,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(27,10,NULL,NULL,7,2,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\"]'),(28,10,NULL,NULL,43,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(29,6,NULL,NULL,35,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(30,6,NULL,NULL,6,3,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(31,4,NULL,NULL,21,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(32,6,NULL,NULL,36,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(33,2,NULL,NULL,17,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(34,4,NULL,NULL,22,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(35,3,NULL,NULL,24,3,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(36,10,NULL,NULL,10,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(37,1,NULL,NULL,32,2,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]'),(38,7,NULL,NULL,31,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(39,6,NULL,NULL,26,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(40,3,NULL,NULL,23,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(41,6,NULL,NULL,39,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(43,6,NULL,NULL,16,3,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(44,3,NULL,NULL,16,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(45,4,NULL,NULL,4,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(47,10,NULL,NULL,36,3,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(48,5,NULL,NULL,12,1,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(49,5,NULL,NULL,4,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(50,2,NULL,NULL,19,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(52,9,NULL,NULL,2,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(53,6,NULL,NULL,31,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(54,1,NULL,NULL,38,1,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\"]'),(55,9,NULL,NULL,41,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(57,5,NULL,NULL,11,1,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(58,7,NULL,NULL,23,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(59,7,NULL,NULL,11,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(60,10,NULL,NULL,27,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(62,3,NULL,NULL,35,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(63,5,NULL,NULL,7,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(64,7,NULL,NULL,36,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(65,9,NULL,NULL,6,1,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(66,9,NULL,NULL,34,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(67,5,NULL,NULL,8,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(68,2,NULL,NULL,15,3,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(69,1,NULL,NULL,33,5,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(70,10,NULL,NULL,5,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(71,10,NULL,NULL,8,1,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(72,4,NULL,NULL,38,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(73,7,NULL,NULL,6,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(74,7,NULL,NULL,12,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(75,4,NULL,NULL,3,4,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(77,2,NULL,NULL,16,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(78,1,NULL,NULL,17,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(79,10,NULL,NULL,16,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(80,6,NULL,NULL,17,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(81,4,NULL,NULL,16,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(82,4,NULL,NULL,31,5,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(83,4,NULL,NULL,30,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(84,2,NULL,NULL,20,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(85,10,NULL,NULL,30,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(86,1,NULL,NULL,18,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(87,1,NULL,NULL,27,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(88,7,NULL,NULL,42,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(89,5,NULL,NULL,25,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(90,3,NULL,NULL,43,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(91,1,NULL,NULL,22,5,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(94,6,NULL,NULL,5,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\"]'),(96,9,NULL,NULL,1,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(97,4,NULL,NULL,35,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(98,9,NULL,NULL,14,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(99,10,NULL,NULL,28,3,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(101,1,NULL,NULL,28,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(104,10,NULL,NULL,13,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(105,4,NULL,NULL,7,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(106,8,NULL,NULL,36,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(108,2,NULL,NULL,18,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(110,9,NULL,NULL,15,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(112,8,NULL,NULL,28,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(113,3,NULL,NULL,1,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(114,5,NULL,NULL,40,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(115,5,NULL,NULL,3,4,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(117,2,NULL,NULL,32,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(118,8,NULL,NULL,9,2,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(119,8,NULL,NULL,19,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(120,3,NULL,NULL,14,2,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\"]'),(122,3,NULL,NULL,11,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(123,7,NULL,NULL,4,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(125,9,NULL,NULL,3,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(128,9,NULL,NULL,26,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(129,2,NULL,NULL,7,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(130,3,NULL,NULL,21,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(131,1,NULL,NULL,24,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(133,6,NULL,NULL,28,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(134,5,NULL,NULL,28,5,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(136,7,NULL,NULL,34,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(137,8,NULL,NULL,30,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]'),(138,4,NULL,NULL,1,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(139,2,NULL,NULL,11,2,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(141,5,NULL,NULL,22,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(142,7,NULL,NULL,7,1,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(143,8,NULL,NULL,34,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(144,9,NULL,NULL,32,1,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(145,5,NULL,NULL,29,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(146,4,NULL,NULL,37,5,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(147,8,NULL,NULL,24,1,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(151,2,NULL,NULL,39,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(152,3,NULL,NULL,27,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(153,5,NULL,NULL,30,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(155,3,NULL,NULL,29,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(157,4,NULL,NULL,19,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(158,2,NULL,NULL,24,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(159,10,NULL,NULL,34,2,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(160,4,NULL,NULL,14,5,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(161,8,NULL,NULL,23,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(162,1,NULL,NULL,6,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(163,3,NULL,NULL,42,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(164,4,NULL,NULL,41,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(165,8,NULL,NULL,43,4,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(168,8,NULL,NULL,17,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(170,7,NULL,NULL,33,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(174,6,NULL,NULL,29,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(175,4,NULL,NULL,10,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(176,5,NULL,NULL,37,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(178,2,NULL,NULL,4,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(179,1,NULL,NULL,42,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(180,10,NULL,NULL,32,1,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(182,10,NULL,NULL,39,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(183,10,NULL,NULL,12,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(184,2,NULL,NULL,23,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(185,10,NULL,NULL,2,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(187,1,NULL,NULL,16,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(188,9,NULL,NULL,37,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(191,4,NULL,NULL,12,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(192,5,NULL,NULL,21,3,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(195,8,NULL,NULL,32,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\"]'),(197,3,NULL,NULL,41,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(198,4,NULL,NULL,23,2,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(199,2,NULL,NULL,27,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(200,8,NULL,NULL,37,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(203,7,NULL,NULL,28,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(204,7,NULL,NULL,18,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(205,8,NULL,NULL,18,2,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(206,8,NULL,NULL,16,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(213,9,NULL,NULL,10,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(214,10,NULL,NULL,42,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(215,9,NULL,NULL,24,3,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(216,10,NULL,NULL,40,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-8.png\"]'),(217,1,NULL,NULL,2,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(218,2,NULL,NULL,28,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]'),(220,1,NULL,NULL,9,1,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(221,3,NULL,NULL,4,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(225,7,NULL,NULL,2,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(227,9,NULL,NULL,20,1,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]'),(228,5,NULL,NULL,23,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(232,4,NULL,NULL,29,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(234,2,NULL,NULL,3,5,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(235,9,NULL,NULL,43,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(237,5,NULL,NULL,31,2,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(239,4,NULL,NULL,27,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(240,6,NULL,NULL,37,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(241,5,NULL,NULL,26,3,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(244,5,NULL,NULL,6,4,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(248,1,NULL,NULL,13,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(251,8,NULL,NULL,38,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(252,4,NULL,NULL,2,4,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\"]'),(253,6,NULL,NULL,14,5,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(254,6,NULL,NULL,11,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(258,7,NULL,NULL,29,3,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(259,6,NULL,NULL,20,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(261,5,NULL,NULL,34,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(263,3,NULL,NULL,28,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(264,9,NULL,NULL,38,2,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(265,4,NULL,NULL,28,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(266,1,NULL,NULL,29,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(267,3,NULL,NULL,3,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(269,8,NULL,NULL,6,5,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(270,3,NULL,NULL,12,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(271,5,NULL,NULL,35,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(273,1,NULL,NULL,8,2,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(277,6,NULL,NULL,40,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(279,9,NULL,NULL,4,3,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(281,1,NULL,NULL,39,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(282,10,NULL,NULL,9,3,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(283,2,NULL,NULL,33,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(287,3,NULL,NULL,26,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(290,6,NULL,NULL,25,1,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(291,6,NULL,NULL,32,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(296,6,NULL,NULL,8,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(297,6,NULL,NULL,22,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(298,8,NULL,NULL,15,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(299,4,NULL,NULL,33,1,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(300,3,NULL,NULL,19,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(303,10,NULL,NULL,26,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(306,2,NULL,NULL,5,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(308,8,NULL,NULL,21,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(309,1,NULL,NULL,25,3,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(310,9,NULL,NULL,40,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(311,9,NULL,NULL,11,2,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(313,8,NULL,NULL,42,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\"]'),(314,10,NULL,NULL,24,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(316,2,NULL,NULL,22,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(317,6,NULL,NULL,12,5,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(318,4,NULL,NULL,32,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(321,3,NULL,NULL,9,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(323,5,NULL,NULL,15,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(327,2,NULL,NULL,12,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(328,3,NULL,NULL,17,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(330,6,NULL,NULL,2,3,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(335,10,NULL,NULL,1,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(339,9,NULL,NULL,35,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(341,4,NULL,NULL,5,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(346,7,NULL,NULL,1,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(350,7,NULL,NULL,27,1,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(352,4,NULL,NULL,13,1,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(354,6,NULL,NULL,3,1,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\"]'),(356,7,NULL,NULL,17,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(358,9,NULL,NULL,5,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(359,8,NULL,NULL,12,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(360,4,NULL,NULL,20,3,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(361,3,NULL,NULL,22,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(362,4,NULL,NULL,34,1,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(364,4,NULL,NULL,43,4,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(365,9,NULL,NULL,9,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(367,7,NULL,NULL,26,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(369,1,NULL,NULL,5,3,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(370,10,NULL,NULL,14,5,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(371,1,NULL,NULL,31,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(372,10,NULL,NULL,38,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(375,3,NULL,NULL,40,5,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(376,3,NULL,NULL,20,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(383,2,NULL,NULL,25,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(384,1,NULL,NULL,26,5,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(390,6,NULL,NULL,19,2,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(396,5,NULL,NULL,39,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(397,9,NULL,NULL,30,2,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\"]'),(398,8,NULL,NULL,11,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(401,8,NULL,NULL,4,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(403,2,NULL,NULL,34,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(405,9,NULL,NULL,19,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(410,6,NULL,NULL,42,1,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(411,3,NULL,NULL,2,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(412,10,NULL,NULL,37,5,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(414,9,NULL,NULL,17,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(415,8,NULL,NULL,27,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(416,7,NULL,NULL,25,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(418,1,NULL,NULL,40,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(419,10,NULL,NULL,15,3,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(421,6,NULL,NULL,9,2,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(422,7,NULL,NULL,38,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(423,8,NULL,NULL,40,2,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(425,10,NULL,NULL,20,2,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(427,6,NULL,NULL,7,4,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(428,10,NULL,NULL,21,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(437,7,NULL,NULL,41,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(438,7,NULL,NULL,14,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(439,7,NULL,NULL,39,1,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(440,5,NULL,NULL,18,4,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(443,9,NULL,NULL,29,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(444,8,NULL,NULL,25,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(449,7,NULL,NULL,40,1,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(452,3,NULL,NULL,38,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(453,8,NULL,NULL,1,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(454,8,NULL,NULL,22,5,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(461,2,NULL,NULL,14,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(465,7,NULL,NULL,35,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(467,3,NULL,NULL,8,2,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(468,2,NULL,NULL,30,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(469,2,NULL,NULL,40,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(473,2,NULL,NULL,31,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(477,2,NULL,NULL,21,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(478,6,NULL,NULL,27,1,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(480,3,NULL,NULL,33,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(482,1,NULL,NULL,10,4,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(491,5,NULL,NULL,33,3,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(495,8,NULL,NULL,29,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\"]'),(498,2,NULL,NULL,26,1,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(499,3,NULL,NULL,37,2,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(500,2,NULL,NULL,43,2,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(505,9,NULL,NULL,27,4,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(507,1,NULL,NULL,19,4,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\"]'),(519,10,NULL,NULL,17,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(524,8,NULL,NULL,8,4,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(526,10,NULL,NULL,4,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(528,6,NULL,NULL,34,1,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(538,5,NULL,NULL,38,3,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(539,5,NULL,NULL,1,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(545,2,NULL,NULL,8,4,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\"]'),(547,8,NULL,NULL,35,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(549,5,NULL,NULL,5,5,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(554,7,NULL,NULL,10,1,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(555,3,NULL,NULL,25,3,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(558,8,NULL,NULL,5,1,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\"]'),(560,1,NULL,NULL,41,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\"]'),(563,2,NULL,NULL,37,5,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(574,3,NULL,NULL,5,3,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(576,9,NULL,NULL,25,1,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-8.png\"]'),(577,9,NULL,NULL,13,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(583,8,NULL,NULL,13,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(585,10,NULL,NULL,35,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(590,3,NULL,NULL,34,2,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(591,9,NULL,NULL,12,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\"]'),(594,5,NULL,NULL,42,1,'These guys are amazing! Responses immediately, amazing support and help... I immediately feel at ease after Purchasing..','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-8.png\"]'),(600,10,NULL,NULL,41,2,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(602,8,NULL,NULL,3,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(604,7,NULL,NULL,24,3,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(606,7,NULL,NULL,32,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(608,3,NULL,NULL,36,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(612,1,NULL,NULL,11,5,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(613,1,NULL,NULL,4,2,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(616,5,NULL,NULL,9,2,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(617,3,NULL,NULL,6,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(624,1,NULL,NULL,23,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-7.png\"]'),(632,4,NULL,NULL,40,4,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(635,4,NULL,NULL,24,5,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(638,10,NULL,NULL,29,5,'Great E-commerce system. And much more : Wonderful Customer Support.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\"]'),(641,2,NULL,NULL,1,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(642,10,NULL,NULL,18,4,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\"]'),(648,1,NULL,NULL,15,2,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(653,10,NULL,NULL,25,2,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(654,1,NULL,NULL,34,4,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-8.png\"]'),(659,2,NULL,NULL,2,4,'The script is the best of its class, fast, easy to implement and work with , and the most important thing is the great support team , Recommend with no doubt.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(668,7,NULL,NULL,19,3,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(671,2,NULL,NULL,9,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(680,2,NULL,NULL,13,4,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(689,2,NULL,NULL,29,5,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(693,4,NULL,NULL,26,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(695,9,NULL,NULL,31,2,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(696,1,NULL,NULL,12,3,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(699,2,NULL,NULL,42,4,'Customer Support are grade (A*), however the code is a way too over engineered for it\'s purpose.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(705,5,NULL,NULL,36,5,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(709,1,NULL,NULL,14,3,'Clean & perfect source code','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(727,7,NULL,NULL,13,3,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(730,5,NULL,NULL,17,4,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(731,6,NULL,NULL,43,4,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(736,3,NULL,NULL,10,4,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(738,3,NULL,NULL,18,2,'This script is well coded and is super fast. The support is pretty quick. Very patient and helpful team. I strongly recommend it and they deserve more than 5 stars.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(745,7,NULL,NULL,16,3,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-7.png\"]'),(747,6,NULL,NULL,41,4,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(750,9,NULL,NULL,8,3,'Second or third time that I buy a Botble product, happy with the products and support. You guys do a good job :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-6.png\"]'),(753,9,NULL,NULL,42,4,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(766,4,NULL,NULL,6,3,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(773,6,NULL,NULL,4,4,'Amazing code, amazing support. Overall, im really confident in Botble and im happy I made the right choice! Thank you so much guys for coding this masterpiece','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\"]'),(781,1,NULL,NULL,3,4,'We have received brilliant service support and will be expanding the features with the developer. Nice product!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(782,8,NULL,NULL,26,5,'It\'s not my first experience here on Codecanyon and I can honestly tell you all that Botble puts a LOT of effort into the support. They answer so fast, they helped me tons of times. REALLY by far THE BEST EXPERIENCE on Codecanyon. Those guys at Botble are so good that they deserve 5 stars. I recommend them, I trust them and I can\'t wait to see what they will sell in a near future. Thank you Botble :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\"]'),(788,9,NULL,NULL,39,4,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(798,1,NULL,NULL,1,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(801,10,NULL,NULL,23,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(803,6,NULL,NULL,18,1,'Best ecommerce CMS online store!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(818,1,NULL,NULL,36,2,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(829,2,NULL,NULL,10,1,'For me the best eCommerce script on Envato at this moment: modern, clean code, a lot of great features. The customer support is great too: I always get an answer within hours!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(843,9,NULL,NULL,36,1,'The best ecommerce CMS! Excellent coding! best support service! Thank you so much..... I really like your hard work.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-7.png\"]'),(849,2,NULL,NULL,38,3,'The best store template! Excellent coding! Very good support! Thank you so much for all the help, I really appreciated.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\",\"beauty\\/products\\/product-8.png\"]'),(851,5,NULL,NULL,43,3,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(880,3,NULL,NULL,30,2,'Good app, good backup service and support. Good documentation.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-7.png\"]'),(884,2,NULL,NULL,35,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(886,7,NULL,NULL,30,1,'As a developer I reviewed this script. This is really awesome ecommerce script. I have convinced when I noticed that it\'s built on fully WordPress concept.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\"]'),(894,7,NULL,NULL,21,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\"]'),(896,9,NULL,NULL,33,3,'Perfect +++++++++ i love it really also i get to fast ticket answers... Thanks Lot BOTBLE Teams','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(901,5,NULL,NULL,14,5,'This web app is really good in design, code quality & features. Besides, the customer support provided by the Botble team was really fast & helpful. You guys are awesome!','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-6.png\"]'),(904,6,NULL,NULL,21,5,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\",\"beauty\\/products\\/product-7.png\"]'),(909,4,NULL,NULL,36,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-8.png\"]'),(912,8,NULL,NULL,31,5,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-7.png\"]'),(913,3,NULL,NULL,31,4,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-6.png\"]'),(916,7,NULL,NULL,5,1,'Great system, great support, good job Botble. I\'m looking forward to more great functional plugins.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-7.png\"]'),(924,6,NULL,NULL,10,2,'Solution is too robust for our purpose so we didn\'t use it at the end. But I appreciate customer support during initial configuration.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]'),(931,7,NULL,NULL,8,5,'Those guys now what they are doing, the release such a good product that it\'s a pleasure to work with ! Even when I was stuck on the project, I created a ticket and the next day it was replied by the team. GOOD JOB guys. I love working with them :)','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-3.png\",\"beauty\\/products\\/product-4.png\"]'),(940,10,NULL,NULL,3,1,'Ok good product. I have some issues in customizations. But its not correct to blame the developer. The product is good. Good luck for your business.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\"]'),(954,1,NULL,NULL,7,5,'The code is good, in general, if you like it, can you give it 5 stars?','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\",\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-6.png\"]'),(989,9,NULL,NULL,18,3,'I Love this Script. I also found how to add other fees. Now I just wait the BIG update for the Marketplace with the Bulk Import. Just do not forget to make it to be Multi-language for us the Botble Fans.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-4.png\",\"beauty\\/products\\/product-8.png\"]'),(991,3,NULL,NULL,15,3,'Cool template. Excellent code quality. The support responds very quickly, which is very rare on themeforest and codecanyon.net, I buy a lot of templates, and everyone will have a response from technical support for two or three days. Thanks to tech support. I recommend to buy.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-1.png\"]'),(998,5,NULL,NULL,19,3,'Very enthusiastic support! Excellent code is written. It\'s a true pleasure working with.','published','2025-09-05 17:59:22','2025-09-05 17:59:22','[\"beauty\\/products\\/product-2.png\",\"beauty\\/products\\/product-5.png\",\"beauty\\/products\\/product-8.png\"]');
/*!40000 ALTER TABLE `ec_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shared_wishlists`
--

DROP TABLE IF EXISTS `ec_shared_wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shared_wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ec_shared_wishlists_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shared_wishlists`
--

LOCK TABLES `ec_shared_wishlists` WRITE;
/*!40000 ALTER TABLE `ec_shared_wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shared_wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipment_histories`
--

DROP TABLE IF EXISTS `ec_shipment_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipment_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `shipment_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipment_histories`
--

LOCK TABLES `ec_shipment_histories` WRITE;
/*!40000 ALTER TABLE `ec_shipment_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipment_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipments`
--

DROP TABLE IF EXISTS `ec_shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `weight` double DEFAULT '0',
  `shipment_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rate_id` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cod_amount` decimal(15,2) DEFAULT '0.00',
  `cod_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `cross_checking_status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `price` decimal(15,2) DEFAULT '0.00',
  `store_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tracking_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimate_date_shipped` datetime DEFAULT NULL,
  `date_shipped` datetime DEFAULT NULL,
  `customer_delivered_confirmed_at` timestamp NULL DEFAULT NULL,
  `label_url` text COLLATE utf8mb4_unicode_ci,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipments`
--

LOCK TABLES `ec_shipments` WRITE;
/*!40000 ALTER TABLE `ec_shipments` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping`
--

DROP TABLE IF EXISTS `ec_shipping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping`
--

LOCK TABLES `ec_shipping` WRITE;
/*!40000 ALTER TABLE `ec_shipping` DISABLE KEYS */;
INSERT INTO `ec_shipping` VALUES (1,'All',NULL,'2025-09-05 17:59:10','2025-09-05 17:59:10');
/*!40000 ALTER TABLE `ec_shipping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rule_items`
--

DROP TABLE IF EXISTS `ec_shipping_rule_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rule_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shipping_rule_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_price` decimal(15,2) DEFAULT '0.00',
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rule_items`
--

LOCK TABLES `ec_shipping_rule_items` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rule_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_shipping_rule_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_shipping_rules`
--

DROP TABLE IF EXISTS `ec_shipping_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_shipping_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_id` bigint unsigned NOT NULL,
  `type` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT 'based_on_price',
  `from` decimal(15,2) DEFAULT '0.00',
  `to` decimal(15,2) DEFAULT '0.00',
  `price` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_shipping_rules`
--

LOCK TABLES `ec_shipping_rules` WRITE;
/*!40000 ALTER TABLE `ec_shipping_rules` DISABLE KEYS */;
INSERT INTO `ec_shipping_rules` VALUES (1,'Free delivery',1,'based_on_price',1000.00,NULL,0.00,'2025-09-05 17:59:10','2025-09-05 17:59:10'),(2,'Flat Rate',1,'based_on_price',0.00,NULL,20.00,'2025-09-05 17:59:10','2025-09-05 17:59:10'),(3,'Local Pickup',1,'based_on_price',0.00,NULL,0.00,'2025-09-05 17:59:10','2025-09-05 17:59:10');
/*!40000 ALTER TABLE `ec_shipping_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes`
--

DROP TABLE IF EXISTS `ec_specification_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_attributes_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes`
--

LOCK TABLES `ec_specification_attributes` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes` DISABLE KEYS */;
INSERT INTO `ec_specification_attributes` VALUES (1,1,'Height','text',NULL,NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(2,1,'Width','text',NULL,NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(3,1,'Weight','text',NULL,NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(4,2,'Power','text',NULL,NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(5,2,'Speed','text',NULL,NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(6,3,'Battery Life','text',NULL,NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(7,4,'Screen Size','text',NULL,NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(8,4,'Resolution','select','[\"1920x1080\",\"2560x1440\",\"3840x2160\"]',NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_attributes_translations`
--

DROP TABLE IF EXISTS `ec_specification_attributes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_attributes_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_attributes_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `default_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_attributes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_attributes_translations`
--

LOCK TABLES `ec_specification_attributes_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_attributes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups`
--

DROP TABLE IF EXISTS `ec_specification_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_groups_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups`
--

LOCK TABLES `ec_specification_groups` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups` DISABLE KEYS */;
INSERT INTO `ec_specification_groups` VALUES (1,'Dimensions',NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(2,'Performance',NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(3,'Battery',NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(4,'Display',NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_groups_translations`
--

DROP TABLE IF EXISTS `ec_specification_groups_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_groups_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_groups_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_groups_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_groups_translations`
--

LOCK TABLES `ec_specification_groups_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_groups_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_groups_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_table_group`
--

DROP TABLE IF EXISTS `ec_specification_table_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_table_group` (
  `table_id` bigint unsigned NOT NULL,
  `group_id` bigint unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`table_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_table_group`
--

LOCK TABLES `ec_specification_table_group` WRITE;
/*!40000 ALTER TABLE `ec_specification_table_group` DISABLE KEYS */;
INSERT INTO `ec_specification_table_group` VALUES (1,1,0),(1,2,0),(2,3,0),(2,4,0);
/*!40000 ALTER TABLE `ec_specification_table_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables`
--

DROP TABLE IF EXISTS `ec_specification_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ec_specification_tables_author_type_author_id_index` (`author_type`,`author_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables`
--

LOCK TABLES `ec_specification_tables` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables` DISABLE KEYS */;
INSERT INTO `ec_specification_tables` VALUES (1,'General Specification',NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL),(2,'Technical Specification',NULL,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,NULL);
/*!40000 ALTER TABLE `ec_specification_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_specification_tables_translations`
--

DROP TABLE IF EXISTS `ec_specification_tables_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_specification_tables_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_specification_tables_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_specification_tables_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_specification_tables_translations`
--

LOCK TABLES `ec_specification_tables_translations` WRITE;
/*!40000 ALTER TABLE `ec_specification_tables_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_specification_tables_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_store_locators`
--

DROP TABLE IF EXISTS `ec_store_locators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_store_locators` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_primary` tinyint(1) DEFAULT '0',
  `is_shipping_location` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_store_locators`
--

LOCK TABLES `ec_store_locators` WRITE;
/*!40000 ALTER TABLE `ec_store_locators` DISABLE KEYS */;
INSERT INTO `ec_store_locators` VALUES (1,'Shofy','sales@botble.com','1800979769','502 New Street','AU','Brighton VIC','Brighton VIC',1,1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL);
/*!40000 ALTER TABLE `ec_store_locators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_products`
--

DROP TABLE IF EXISTS `ec_tax_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_products` (
  `tax_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`tax_id`),
  KEY `ec_tax_products_tax_id_index` (`tax_id`),
  KEY `ec_tax_products_product_id_index` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_products`
--

LOCK TABLES `ec_tax_products` WRITE;
/*!40000 ALTER TABLE `ec_tax_products` DISABLE KEYS */;
INSERT INTO `ec_tax_products` VALUES (1,2),(1,5),(1,8),(1,9),(1,10),(1,18),(1,20),(1,21),(1,31),(1,32),(1,35),(1,36),(2,6),(2,7),(2,14),(2,16),(2,17),(2,19),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(2,30),(2,38),(2,43),(3,1),(3,3),(3,4),(3,11),(3,12),(3,13),(3,15),(3,22),(3,29),(3,33),(3,34),(3,37),(3,39),(3,40),(3,41),(3,42);
/*!40000 ALTER TABLE `ec_tax_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_tax_rules`
--

DROP TABLE IF EXISTS `ec_tax_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_tax_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tax_id` bigint unsigned NOT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_tax_rules`
--

LOCK TABLES `ec_tax_rules` WRITE;
/*!40000 ALTER TABLE `ec_tax_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_tax_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes`
--

DROP TABLE IF EXISTS `ec_taxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` float DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes`
--

LOCK TABLES `ec_taxes` WRITE;
/*!40000 ALTER TABLE `ec_taxes` DISABLE KEYS */;
INSERT INTO `ec_taxes` VALUES (1,'VAT',10,1,'published','2025-09-05 17:59:10','2025-09-05 17:59:10'),(2,'None',0,2,'published','2025-09-05 17:59:10','2025-09-05 17:59:10'),(3,'Import Tax',15,3,'published','2025-09-05 17:59:10','2025-09-05 17:59:10');
/*!40000 ALTER TABLE `ec_taxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_taxes_translations`
--

DROP TABLE IF EXISTS `ec_taxes_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_taxes_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ec_taxes_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ec_taxes_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_taxes_translations`
--

LOCK TABLES `ec_taxes_translations` WRITE;
/*!40000 ALTER TABLE `ec_taxes_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_taxes_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ec_wish_lists`
--

DROP TABLE IF EXISTS `ec_wish_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ec_wish_lists` (
  `customer_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`,`product_id`),
  KEY `wishlist_relation_index` (`product_id`,`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ec_wish_lists`
--

LOCK TABLES `ec_wish_lists` WRITE;
/*!40000 ALTER TABLE `ec_wish_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `ec_wish_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories`
--

DROP TABLE IF EXISTS `faq_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories`
--

LOCK TABLES `faq_categories` WRITE;
/*!40000 ALTER TABLE `faq_categories` DISABLE KEYS */;
INSERT INTO `faq_categories` VALUES (1,'Shipping',0,'published','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL),(2,'Payment',1,'published','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL),(3,'Order &amp; Returns',2,'published','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL);
/*!40000 ALTER TABLE `faq_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq_categories_translations`
--

DROP TABLE IF EXISTS `faq_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq_categories_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faq_categories_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`faq_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq_categories_translations`
--

LOCK TABLES `faq_categories_translations` WRITE;
/*!40000 ALTER TABLE `faq_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faq_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs`
--

LOCK TABLES `faqs` WRITE;
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` VALUES (1,'What Shipping Methods Are Available?','Ex Portland Pitchfork irure mustache. Eutra fap before they sold out literally. Aliquip ugh bicycle rights actually mlkshk, seitan squid craft beer tempor.',1,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(2,'Do You Ship Internationally?','Hoodie tote bag mixtape tofu. Typewriter jean shorts wolf quinoa, messenger bag organic freegan cray.',1,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(3,'How Long Will It Take To Get My Package?','Swag slow-carb quinoa VHS typewriter pork belly brunch, paleo single-origin coffee Wes Anderson. Flexitarian Pitchfork forage, literally paleo fap pour-over. Wes Anderson Pinterest YOLO fanny pack meggings, deep v XOXO chambray sustainable slow-carb raw denim church-key fap chillwave Etsy. +1 typewriter kitsch, American Apparel tofu Banksy Vice.',1,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(4,'What Payment Methods Are Accepted?','Fashion axe DIY jean shorts, swag kale chips meh polaroid kogi butcher Wes Anderson chambray next level semiotics gentrify yr. Voluptate photo booth fugiat Vice. Austin sed Williamsburg, ea labore raw denim voluptate cred proident mixtape excepteur mustache. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY.',2,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(5,'Is Buying On-Line Safe?','Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest.',2,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(6,'How do I place an Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level. Raw denim polaroid paleo farm-to-table, put a bird on it lo-fi tattooed Wes Anderson Pinterest letterpress. Fingerstache McSweeney’s pour-over, letterpress Schlitz photo booth master cleanse bespoke hashtag chillwave gentrify.',3,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(7,'How Can I Cancel Or Change My Order?','Plaid letterpress leggings craft beer meh ethical Pinterest. Art party authentic freegan semiotics jean shorts chia cred. Neutra Austin roof party Brooklyn, synth Thundercats swag 8-bit photo booth.',3,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(8,'Do I need an account to place an order?','Thundercats swag 8-bit photo booth. Plaid letterpress leggings craft beer meh ethical Pinterest. Twee chia photo booth readymade food truck, hoodie roof party swag keytar PBR DIY. Cray ugh 3 wolf moon fap, fashion axe irony butcher cornhole typewriter chambray VHS banjo street art.',3,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(9,'How Do I Track My Order?','Keytar cray slow-carb, Godard banh mi salvia pour-over. Slow-carb @Odd Future seitan normcore. Master cleanse American Apparel gentrify flexitarian beard slow-carb next level.',3,'published','2025-09-05 17:59:06','2025-09-05 17:59:06'),(10,'How Can I Return a Product?','Kale chips Truffaut Williamsburg, hashtag fixie Pinterest raw denim c hambray drinking vinegar Carles street art Bushwick gastropub. Wolf Tumblr paleo church-key. Plaid food truck Echo Park YOLO bitters hella, direct trade Thundercats leggings quinoa before they sold out. You probably haven’t heard of them wayfarers authentic umami drinking vinegar Pinterest Cosby sweater, fingerstache fap High Life.',3,'published','2025-09-05 17:59:06','2025-09-05 17:59:06');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faqs_translations`
--

DROP TABLE IF EXISTS `faqs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faqs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `faqs_id` bigint unsigned NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci,
  `answer` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`faqs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faqs_translations`
--

LOCK TABLES `faqs_translations` WRITE;
/*!40000 ALTER TABLE `faqs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `faqs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries`
--

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;
INSERT INTO `galleries` VALUES (1,'Radiant Reflections','Mock Turtle repeated thoughtfully. \'I should like to try the first minute or two, looking for them, but they were filled with tears again as quickly as she tucked her arm affectionately into.',1,0,'beauty/galleries/1.jpg',1,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(2,'Glamour Grove','King. Here one of the cakes, and was just going to shrink any further: she felt very curious thing, and longed to get dry again: they had a door leading right into it. \'That\'s very curious.\' \'It\'s.',1,0,'beauty/galleries/2.jpg',1,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(3,'Serene Styles Showcase','I can\'t take LESS,\' said the Queen. \'Never!\' said the King very decidedly, and the Queen of Hearts were seated on their slates, when the tide rises and sharks are around, His voice has a timid voice.',1,0,'beauty/galleries/3.jpg',1,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(4,'Allure Alcove','Bill!\' then the Mock Turtle would be wasting our breath.\" \"I\'ll be judge, I\'ll be jury,\" Said cunning old Fury: \"I\'ll try the whole cause, and condemn you to leave it behind?\' She said this last.',1,0,'beauty/galleries/4.jpg',1,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(5,'Glamour Galleria','Dodo could not help bursting out laughing: and when Alice had been looking over his shoulder with some surprise that the way of nursing it, (which was to eat her up in such long ringlets, and mine.',1,0,'beauty/galleries/5.jpg',1,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(6,'Beauty Boulevard','Alice had learnt several things of this sort of way, \'Do cats eat bats, I wonder?\' As she said to a mouse: she had hurt the poor little thing howled so, that Alice had no idea what a delightful.',1,0,'beauty/galleries/6.jpg',1,'published','2025-09-05 17:59:21','2025-09-05 17:59:21');
/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galleries_translations`
--

DROP TABLE IF EXISTS `galleries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `galleries_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`galleries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galleries_translations`
--

LOCK TABLES `galleries_translations` WRITE;
/*!40000 ALTER TABLE `galleries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `galleries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta`
--

DROP TABLE IF EXISTS `gallery_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta`
--

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;
INSERT INTO `gallery_meta` VALUES (1,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"Pigeon, but in a tone of great curiosity. \'It\'s a pun!\' the King said to herself; \'the March Hare said to the Mock Turtle. So she went out, but it all is! I\'ll try if I chose,\' the Duchess by this.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Cat\'s head with great curiosity, and this Alice would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the trees as well to introduce it.\' \'I don\'t.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice severely. \'What are they made of?\' Alice asked in a pleased tone. \'Pray don\'t trouble yourself to say when I find a number of cucumber-frames there must be!\' thought Alice. \'I\'m a--I\'m a--\'.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2025-09-05 17:59:21','2025-09-05 17:59:21'),(2,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"Pigeon, but in a tone of great curiosity. \'It\'s a pun!\' the King said to herself; \'the March Hare said to the Mock Turtle. So she went out, but it all is! I\'ll try if I chose,\' the Duchess by this.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Cat\'s head with great curiosity, and this Alice would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the trees as well to introduce it.\' \'I don\'t.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice severely. \'What are they made of?\' Alice asked in a pleased tone. \'Pray don\'t trouble yourself to say when I find a number of cucumber-frames there must be!\' thought Alice. \'I\'m a--I\'m a--\'.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2025-09-05 17:59:21','2025-09-05 17:59:21'),(3,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"Pigeon, but in a tone of great curiosity. \'It\'s a pun!\' the King said to herself; \'the March Hare said to the Mock Turtle. So she went out, but it all is! I\'ll try if I chose,\' the Duchess by this.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Cat\'s head with great curiosity, and this Alice would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the trees as well to introduce it.\' \'I don\'t.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice severely. \'What are they made of?\' Alice asked in a pleased tone. \'Pray don\'t trouble yourself to say when I find a number of cucumber-frames there must be!\' thought Alice. \'I\'m a--I\'m a--\'.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2025-09-05 17:59:21','2025-09-05 17:59:21'),(4,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"Pigeon, but in a tone of great curiosity. \'It\'s a pun!\' the King said to herself; \'the March Hare said to the Mock Turtle. So she went out, but it all is! I\'ll try if I chose,\' the Duchess by this.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Cat\'s head with great curiosity, and this Alice would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the trees as well to introduce it.\' \'I don\'t.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice severely. \'What are they made of?\' Alice asked in a pleased tone. \'Pray don\'t trouble yourself to say when I find a number of cucumber-frames there must be!\' thought Alice. \'I\'m a--I\'m a--\'.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2025-09-05 17:59:21','2025-09-05 17:59:21'),(5,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"Pigeon, but in a tone of great curiosity. \'It\'s a pun!\' the King said to herself; \'the March Hare said to the Mock Turtle. So she went out, but it all is! I\'ll try if I chose,\' the Duchess by this.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Cat\'s head with great curiosity, and this Alice would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the trees as well to introduce it.\' \'I don\'t.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice severely. \'What are they made of?\' Alice asked in a pleased tone. \'Pray don\'t trouble yourself to say when I find a number of cucumber-frames there must be!\' thought Alice. \'I\'m a--I\'m a--\'.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2025-09-05 17:59:21','2025-09-05 17:59:21'),(6,'[{\"img\":\"beauty\\/galleries\\/1.jpg\",\"description\":\"Pigeon, but in a tone of great curiosity. \'It\'s a pun!\' the King said to herself; \'the March Hare said to the Mock Turtle. So she went out, but it all is! I\'ll try if I chose,\' the Duchess by this.\"},{\"img\":\"beauty\\/galleries\\/4.jpg\",\"description\":\"Cat\'s head with great curiosity, and this Alice would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the trees as well to introduce it.\' \'I don\'t.\"},{\"img\":\"beauty\\/galleries\\/3.jpg\",\"description\":\"Alice severely. \'What are they made of?\' Alice asked in a pleased tone. \'Pray don\'t trouble yourself to say when I find a number of cucumber-frames there must be!\' thought Alice. \'I\'m a--I\'m a--\'.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2025-09-05 17:59:21','2025-09-05 17:59:21');
/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gallery_meta_translations`
--

DROP TABLE IF EXISTS `gallery_meta_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gallery_meta_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_meta_id` bigint unsigned NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`gallery_meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gallery_meta_translations`
--

LOCK TABLES `gallery_meta_translations` WRITE;
/*!40000 ALTER TABLE `gallery_meta_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `gallery_meta_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,'en_US','794395d7b284de7fffac4e935e62b136',1,'Botble\\SimpleSlider\\Models\\SimpleSlider'),(2,'en_US','7d7e3ebf9a1e2791a940e4ea4b22c303',1,'Botble\\Menu\\Models\\MenuLocation'),(3,'en_US','669aae63ca44b62e3906653155dc990b',1,'Botble\\Menu\\Models\\Menu'),(4,'en_US','c7e823bf36d033451c68b1315bd41585',2,'Botble\\Menu\\Models\\Menu'),(5,'en_US','08d51b6a1e9664ee7abbf9509c70f801',3,'Botble\\Menu\\Models\\Menu');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `languages` (
  `lang_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` bigint unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (1,0,'404','404',2,'image/png',16004,'main/general/404.png','[]','2025-09-05 17:59:03','2025-09-05 17:59:03',NULL,'public'),(2,0,'about-1','about-1',2,'image/jpeg',9222,'main/general/about-1.jpg','[]','2025-09-05 17:59:03','2025-09-05 17:59:03',NULL,'public'),(3,0,'about-2','about-2',2,'image/jpeg',5105,'main/general/about-2.jpg','[]','2025-09-05 17:59:03','2025-09-05 17:59:03',NULL,'public'),(4,0,'auth-banner','auth-banner',2,'image/png',48468,'main/general/auth-banner.png','[]','2025-09-05 17:59:03','2025-09-05 17:59:03',NULL,'public'),(5,0,'breadcrumb','breadcrumb',2,'image/jpeg',5276,'main/general/breadcrumb.jpg','[]','2025-09-05 17:59:03','2025-09-05 17:59:03',NULL,'public'),(6,0,'contact-img','contact-img',2,'image/jpeg',13078,'main/general/contact-img.jpg','[]','2025-09-05 17:59:03','2025-09-05 17:59:03',NULL,'public'),(7,0,'cta-shape-1','cta-shape-1',2,'image/png',20314,'main/general/cta-shape-1.png','[]','2025-09-05 17:59:03','2025-09-05 17:59:03',NULL,'public'),(8,0,'cta-shape-2','cta-shape-2',2,'image/png',14564,'main/general/cta-shape-2.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(9,0,'cta-thumb-1','cta-thumb-1',2,'image/jpeg',6053,'main/general/cta-thumb-1.jpg','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(10,0,'favicon','favicon',2,'image/png',1778,'main/general/favicon.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(11,0,'footer-pay','footer-pay',2,'image/png',490,'main/general/footer-pay.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(12,0,'logo-white','logo-white',2,'image/png',17446,'main/general/logo-white.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(13,0,'logo','logo',2,'image/png',18022,'main/general/logo.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(14,0,'newsletter-popup','newsletter-popup',2,'image/jpeg',7434,'main/general/newsletter-popup.jpg','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(15,0,'placeholder','placeholder',2,'image/png',2334,'main/general/placeholder.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(16,0,'preloader-icon','preloader-icon',2,'image/png',3923,'main/general/preloader-icon.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(17,0,'signature','signature',2,'image/png',2122,'main/general/signature.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(18,0,'slider-offer','slider-offer',2,'image/png',970,'main/general/slider-offer.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(19,0,'cod','cod',3,'image/png',12121,'payments/cod.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(20,0,'bank-transfer','bank-transfer',3,'image/png',29089,'payments/bank-transfer.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(21,0,'stripe','stripe',3,'image/webp',7516,'payments/stripe.webp','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(22,0,'paypal','paypal',3,'image/png',3001,'payments/paypal.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(23,0,'mollie','mollie',3,'image/png',8968,'payments/mollie.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(24,0,'paystack','paystack',3,'image/png',31015,'payments/paystack.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(25,0,'razorpay','razorpay',3,'image/png',8489,'payments/razorpay.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(26,0,'sslcommerz','sslcommerz',3,'image/png',3482,'payments/sslcommerz.png','[]','2025-09-05 17:59:04','2025-09-05 17:59:04',NULL,'public'),(37,0,'1','1',5,'image/png',948,'main/brands/1.png','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(38,0,'2','2',5,'image/png',948,'main/brands/2.png','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(39,0,'3','3',5,'image/png',948,'main/brands/3.png','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(40,0,'4','4',5,'image/png',948,'main/brands/4.png','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(41,0,'5','5',5,'image/png',948,'main/brands/5.png','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(42,0,'1','1',6,'image/jpeg',4294,'main/customers/1.jpg','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(43,0,'10','10',6,'image/jpeg',4294,'main/customers/10.jpg','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(44,0,'2','2',6,'image/jpeg',4294,'main/customers/2.jpg','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(45,0,'3','3',6,'image/jpeg',4294,'main/customers/3.jpg','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(46,0,'4','4',6,'image/jpeg',4294,'main/customers/4.jpg','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(47,0,'5','5',6,'image/jpeg',4294,'main/customers/5.jpg','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(48,0,'6','6',6,'image/jpeg',4294,'main/customers/6.jpg','[]','2025-09-05 17:59:06','2025-09-05 17:59:06',NULL,'public'),(49,0,'7','7',6,'image/jpeg',4294,'main/customers/7.jpg','[]','2025-09-05 17:59:07','2025-09-05 17:59:07',NULL,'public'),(50,0,'8','8',6,'image/jpeg',4294,'main/customers/8.jpg','[]','2025-09-05 17:59:07','2025-09-05 17:59:07',NULL,'public'),(51,0,'9','9',6,'image/jpeg',4294,'main/customers/9.jpg','[]','2025-09-05 17:59:07','2025-09-05 17:59:07',NULL,'public'),(52,0,'blog-big-1','blog-big-1',7,'image/jpeg',13885,'main/blog/blog-big-1.jpg','[]','2025-09-05 17:59:10','2025-09-05 17:59:10',NULL,'public'),(53,0,'blog-details-sm-1','blog-details-sm-1',7,'image/jpeg',8166,'main/blog/blog-details-sm-1.jpg','[]','2025-09-05 17:59:10','2025-09-05 17:59:10',NULL,'public'),(54,0,'post-1','post-1',7,'image/jpeg',6189,'main/blog/post-1.jpg','[]','2025-09-05 17:59:10','2025-09-05 17:59:10',NULL,'public'),(55,0,'post-10','post-10',7,'image/jpeg',5907,'main/blog/post-10.jpg','[]','2025-09-05 17:59:10','2025-09-05 17:59:10',NULL,'public'),(56,0,'post-11','post-11',7,'image/jpeg',5907,'main/blog/post-11.jpg','[]','2025-09-05 17:59:10','2025-09-05 17:59:10',NULL,'public'),(57,0,'post-12','post-12',7,'image/jpeg',5907,'main/blog/post-12.jpg','[]','2025-09-05 17:59:10','2025-09-05 17:59:10',NULL,'public'),(58,0,'post-2','post-2',7,'image/jpeg',6189,'main/blog/post-2.jpg','[]','2025-09-05 17:59:10','2025-09-05 17:59:10',NULL,'public'),(59,0,'post-3','post-3',7,'image/jpeg',6189,'main/blog/post-3.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(60,0,'post-4','post-4',7,'image/jpeg',6045,'main/blog/post-4.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(61,0,'post-5','post-5',7,'image/jpeg',6045,'main/blog/post-5.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(62,0,'post-6','post-6',7,'image/jpeg',6045,'main/blog/post-6.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(63,0,'post-7','post-7',7,'image/jpeg',5907,'main/blog/post-7.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(64,0,'post-8','post-8',7,'image/jpeg',5907,'main/blog/post-8.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(65,0,'post-9','post-9',7,'image/jpeg',5907,'main/blog/post-9.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(66,0,'1','1',4,'image/jpeg',4068,'main/users/1.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(67,0,'10','10',4,'image/jpeg',7599,'main/users/10.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(68,0,'2','2',4,'image/jpeg',7599,'main/users/2.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(69,0,'3','3',4,'image/jpeg',6387,'main/users/3.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(70,0,'4','4',4,'image/jpeg',7599,'main/users/4.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(71,0,'5','5',4,'image/jpeg',6387,'main/users/5.jpg','[]','2025-09-05 17:59:11','2025-09-05 17:59:11',NULL,'public'),(72,0,'6','6',4,'image/jpeg',7599,'main/users/6.jpg','[]','2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,'public'),(73,0,'7','7',4,'image/jpeg',6387,'main/users/7.jpg','[]','2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,'public'),(74,0,'8','8',4,'image/jpeg',7599,'main/users/8.jpg','[]','2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,'public'),(75,0,'9','9',4,'image/jpeg',6387,'main/users/9.jpg','[]','2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,'public'),(76,0,'1','1',8,'image/png',9022,'main/stores/1.png','[]','2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,'public'),(77,0,'10','10',8,'image/png',4384,'main/stores/10.png','[]','2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,'public'),(78,0,'11','11',8,'image/png',4706,'main/stores/11.png','[]','2025-09-05 17:59:12','2025-09-05 17:59:12',NULL,'public'),(79,0,'12','12',8,'image/png',5075,'main/stores/12.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(80,0,'13','13',8,'image/png',3700,'main/stores/13.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(81,0,'14','14',8,'image/png',4239,'main/stores/14.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(82,0,'15','15',8,'image/png',5304,'main/stores/15.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(83,0,'16','16',8,'image/png',4796,'main/stores/16.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(84,0,'17','17',8,'image/png',4919,'main/stores/17.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(85,0,'2','2',8,'image/png',8598,'main/stores/2.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(86,0,'3','3',8,'image/png',7888,'main/stores/3.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(87,0,'4','4',8,'image/png',8393,'main/stores/4.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(88,0,'5','5',8,'image/png',10159,'main/stores/5.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(89,0,'6','6',8,'image/png',10312,'main/stores/6.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(90,0,'7','7',8,'image/png',3764,'main/stores/7.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(91,0,'8','8',8,'image/png',4237,'main/stores/8.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(92,0,'9','9',8,'image/png',4096,'main/stores/9.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(93,0,'cover-1','cover-1',8,'image/png',4208,'main/stores/cover-1.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(94,0,'cover-2','cover-2',8,'image/png',8798,'main/stores/cover-2.png','[]','2025-09-05 17:59:13','2025-09-05 17:59:13',NULL,'public'),(95,0,'cover-3','cover-3',8,'image/png',3888,'main/stores/cover-3.png','[]','2025-09-05 17:59:14','2025-09-05 17:59:14',NULL,'public'),(96,0,'cover-4','cover-4',8,'image/png',11893,'main/stores/cover-4.png','[]','2025-09-05 17:59:14','2025-09-05 17:59:14',NULL,'public'),(97,0,'cover-5','cover-5',8,'image/png',8798,'main/stores/cover-5.png','[]','2025-09-05 17:59:14','2025-09-05 17:59:14',NULL,'public'),(98,0,'slider-1','slider-1',10,'image/jpeg',27493,'beauty/sliders/slider-1.jpg','[]','2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,'public'),(99,0,'slider-2','slider-2',10,'image/jpeg',27493,'beauty/sliders/slider-2.jpg','[]','2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,'public'),(100,0,'slider-3','slider-3',10,'image/jpeg',27493,'beauty/sliders/slider-3.jpg','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(101,0,'1','1',11,'image/jpeg',4294,'beauty/product-categories/1.jpg','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(102,0,'2','2',11,'image/jpeg',4294,'beauty/product-categories/2.jpg','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(103,0,'3','3',11,'image/jpeg',4294,'beauty/product-categories/3.jpg','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(104,0,'4','4',11,'image/jpeg',4294,'beauty/product-categories/4.jpg','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(105,0,'5','5',11,'image/jpeg',4294,'beauty/product-categories/5.jpg','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(106,0,'6','6',11,'image/jpeg',4294,'beauty/product-categories/6.jpg','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(107,0,'product-1','product-1',12,'image/png',9803,'beauty/products/product-1.png','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(108,0,'product-2','product-2',12,'image/png',9803,'beauty/products/product-2.png','[]','2025-09-05 17:59:17','2025-09-05 17:59:17',NULL,'public'),(109,0,'product-3','product-3',12,'image/png',9803,'beauty/products/product-3.png','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(110,0,'product-4','product-4',12,'image/png',9803,'beauty/products/product-4.png','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(111,0,'product-5','product-5',12,'image/png',9803,'beauty/products/product-5.png','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(112,0,'product-6','product-6',12,'image/png',9803,'beauty/products/product-6.png','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(113,0,'product-7','product-7',12,'image/png',9803,'beauty/products/product-7.png','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(114,0,'product-8','product-8',12,'image/png',9803,'beauty/products/product-8.png','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(115,0,'1','1',13,'image/jpeg',14146,'main/video/1.jpg','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(116,0,'2','2',13,'image/jpeg',18262,'main/video/2.jpg','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(117,0,'video-1','video-1',13,'video/mp4',4959871,'main/video/video-1.mp4','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(118,0,'video-2','video-2',13,'video/mp4',1077550,'main/video/video-2.mp4','[]','2025-09-05 17:59:18','2025-09-05 17:59:18',NULL,'public'),(119,0,'1','1',14,'image/jpeg',4294,'beauty/galleries/1.jpg','[]','2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,'public'),(120,0,'2','2',14,'image/jpeg',4294,'beauty/galleries/2.jpg','[]','2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,'public'),(121,0,'3','3',14,'image/jpeg',4294,'beauty/galleries/3.jpg','[]','2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,'public'),(122,0,'4','4',14,'image/jpeg',4294,'beauty/galleries/4.jpg','[]','2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,'public'),(123,0,'5','5',14,'image/jpeg',4294,'beauty/galleries/5.jpg','[]','2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,'public'),(124,0,'6','6',14,'image/jpeg',4294,'beauty/galleries/6.jpg','[]','2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,'public'),(125,0,'instagram-1','instagram-1',14,'image/jpeg',4294,'beauty/galleries/instagram-1.jpg','[]','2025-09-05 17:59:20','2025-09-05 17:59:20',NULL,'public'),(126,0,'instagram-2','instagram-2',14,'image/jpeg',4294,'beauty/galleries/instagram-2.jpg','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(127,0,'instagram-3','instagram-3',14,'image/jpeg',4294,'beauty/galleries/instagram-3.jpg','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(128,0,'instagram-4','instagram-4',14,'image/jpeg',4294,'beauty/galleries/instagram-4.jpg','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(129,0,'instagram-5','instagram-5',14,'image/jpeg',4294,'beauty/galleries/instagram-5.jpg','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(130,0,'instagram-6','instagram-6',14,'image/jpeg',4294,'beauty/galleries/instagram-6.jpg','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(131,0,'icon-1','icon-1',15,'image/png',4492,'main/contact/icon-1.png','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(132,0,'icon-2','icon-2',15,'image/png',5753,'main/contact/icon-2.png','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(133,0,'icon-3','icon-3',15,'image/png',5987,'main/contact/icon-3.png','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(134,0,'line','line',16,'image/png',6598,'main/shapes/line.png','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public'),(135,0,'quote','quote',16,'image/png',592,'main/shapes/quote.png','[]','2025-09-05 17:59:21','2025-09-05 17:59:21',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_folders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,0,'main',NULL,'main',0,'2025-09-05 17:59:03','2025-09-05 17:59:03',NULL),(2,0,'general',NULL,'general',1,'2025-09-05 17:59:03','2025-09-05 17:59:03',NULL),(3,0,'payments',NULL,'payments',0,'2025-09-05 17:59:04','2025-09-05 17:59:04',NULL),(4,0,'users',NULL,'users',1,'2025-09-05 17:59:04','2025-09-05 17:59:04',NULL),(5,0,'brands',NULL,'brands',1,'2025-09-05 17:59:06','2025-09-05 17:59:06',NULL),(6,0,'customers',NULL,'customers',1,'2025-09-05 17:59:06','2025-09-05 17:59:06',NULL),(7,0,'blog',NULL,'blog',1,'2025-09-05 17:59:10','2025-09-05 17:59:10',NULL),(8,0,'stores',NULL,'stores',1,'2025-09-05 17:59:12','2025-09-05 17:59:12',NULL),(9,0,'beauty',NULL,'beauty',0,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL),(10,0,'sliders',NULL,'sliders',9,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL),(11,0,'product-categories',NULL,'product-categories',9,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL),(12,0,'products',NULL,'products',9,'2025-09-05 17:59:17','2025-09-05 17:59:17',NULL),(13,0,'video',NULL,'video',1,'2025-09-05 17:59:18','2025-09-05 17:59:18',NULL),(14,0,'galleries',NULL,'galleries',9,'2025-09-05 17:59:20','2025-09-05 17:59:20',NULL),(15,0,'contact',NULL,'contact',1,'2025-09-05 17:59:21','2025-09-05 17:59:21',NULL),(16,0,'shapes',NULL,'shapes',1,'2025-09-05 17:59:21','2025-09-05 17:59:21',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` bigint unsigned DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_locations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-09-05 17:59:21','2025-09-05 17:59:21');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_nodes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` bigint unsigned NOT NULL,
  `parent_id` bigint unsigned NOT NULL DEFAULT '0',
  `reference_id` bigint unsigned DEFAULT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `reference_id` (`reference_id`),
  KEY `reference_type` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,1,'Botble\\Page\\Models\\Page','/home',NULL,0,'Home',NULL,'_self',1,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(2,1,1,NULL,NULL,'https://shofy.botble.com',NULL,0,'Electronics',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(3,1,1,NULL,NULL,'https://shofy-fashion.botble.com',NULL,1,'Fashion',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(4,1,1,NULL,NULL,'https://shofy-beauty.botble.com',NULL,2,'Beauty',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(5,1,1,NULL,NULL,'https://shofy-jewelry.botble.com',NULL,3,'Jewelry',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(6,1,1,NULL,NULL,'https://shofy-grocery.botble.com',NULL,4,'Grocery',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(7,1,0,NULL,NULL,NULL,NULL,1,'Shop',NULL,'_self',1,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(8,1,7,2,'Botble\\Page\\Models\\Page','/categories',NULL,0,'Shop Categories',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(9,1,7,4,'Botble\\Page\\Models\\Page','/brands',NULL,1,'Shop Brands',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(10,1,7,NULL,NULL,'/products?layout=list',NULL,2,'Shop List',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(11,1,7,NULL,NULL,'/products?layout=grid',NULL,3,'Shop Grid',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(12,1,7,NULL,NULL,'/products/quilted-crossbody-bag',NULL,4,'Product Detail',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(13,1,7,3,'Botble\\Page\\Models\\Page','/coupons',NULL,5,'Grab Coupons',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(14,1,7,NULL,NULL,'/cart',NULL,6,'Cart',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(15,1,7,NULL,NULL,'/compare',NULL,7,'Compare',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(16,1,7,NULL,NULL,'/wishlist',NULL,8,'Wishlist',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(17,1,7,NULL,NULL,'/orders/tracking',NULL,9,'Track Your Order',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(18,1,0,NULL,NULL,'/stores',NULL,2,'Vendors',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(19,1,0,NULL,NULL,NULL,NULL,3,'Pages',NULL,'_self',1,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(20,1,19,8,'Botble\\Page\\Models\\Page','/faqs',NULL,0,'FAQs',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(21,1,19,NULL,NULL,'/login',NULL,1,'Login',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(22,1,19,NULL,NULL,'/register',NULL,2,'Register',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(23,1,19,NULL,NULL,'/password/reset',NULL,3,'Forgot Password',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(24,1,19,NULL,NULL,'/404',NULL,4,'404 Error',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(25,1,19,NULL,NULL,'/coming-soon',NULL,5,'Coming Soon',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(26,1,0,6,'Botble\\Page\\Models\\Page','/blog',NULL,4,'Blog',NULL,'_self',1,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(27,1,26,NULL,NULL,'/blog?layout=grid',NULL,0,'Blog Grid',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(28,1,26,NULL,NULL,'/blog?layout=list',NULL,1,'Blog List',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(29,1,26,NULL,NULL,'/blog/heres-the-first-valentinos-new-makeup-collection',NULL,2,'Blog Detail',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(30,1,0,7,'Botble\\Page\\Models\\Page','/contact',NULL,5,'Contact',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(31,2,0,NULL,NULL,'/orders/tracking',NULL,0,'Track Orders',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(32,2,0,12,'Botble\\Page\\Models\\Page','/shipping',NULL,1,'Shipping',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(33,2,0,NULL,NULL,'/wishlist',NULL,2,'Wishlist',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(34,2,0,NULL,NULL,'/customer/overview',NULL,3,'My Account',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(35,2,0,NULL,NULL,'/customer/orders',NULL,4,'Order History',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(36,2,0,NULL,NULL,'/customer/order-returns',NULL,5,'Returns',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(37,3,0,10,'Botble\\Page\\Models\\Page','/our-story',NULL,0,'Our Story',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(38,3,0,11,'Botble\\Page\\Models\\Page','/careers',NULL,1,'Careers',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(39,3,0,9,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,2,'Privacy Policy',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(40,3,0,NULL,NULL,'/blog',NULL,3,'Latest News',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21'),(41,3,0,7,'Botble\\Page\\Models\\Page','/contact',NULL,4,'Contact Us',NULL,'_self',0,'2025-09-05 17:59:21','2025-09-05 17:59:21');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(2,'My Account','my-account','published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(3,'Information','information','published','2025-09-05 17:59:21','2025-09-05 17:59:21');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `meta_boxes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,'button_label','[\"Shop Collection\"]',1,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-05 17:59:17','2025-09-05 17:59:17'),(2,'button_label','[\"Shop Collection\"]',2,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-05 17:59:17','2025-09-05 17:59:17'),(3,'button_label','[\"Shop Collection\"]',3,'Botble\\SimpleSlider\\Models\\SimpleSliderItem','2025-09-05 17:59:17','2025-09-05 17:59:17'),(4,'faq_ids','[[1,4,5,6,8]]',1,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(5,'faq_ids','[[1,4,6,9,10]]',2,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(6,'faq_ids','[[2,4,6,7,9]]',3,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(7,'faq_ids','[[2,3,5,6,7]]',4,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(8,'faq_ids','[[2,5,8,9,10]]',5,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(9,'faq_ids','[[1,2,5,6,10]]',6,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(10,'faq_ids','[[1,2,4,8,9]]',7,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(11,'faq_ids','[[1,2,6,9,10]]',8,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(12,'faq_ids','[[3,4,5,7,9]]',9,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(13,'faq_ids','[[1,2,3,5,6]]',10,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(14,'faq_ids','[[1,3,6,7,8]]',11,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(15,'faq_ids','[[1,4,5,7,8]]',12,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(16,'faq_ids','[[2,3,6,9,10]]',13,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(17,'faq_ids','[[3,6,7,8,10]]',14,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(18,'faq_ids','[[1,2,3,4,10]]',15,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(19,'faq_ids','[[1,3,5,7,10]]',16,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(20,'faq_ids','[[3,6,8,9,10]]',17,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(21,'faq_ids','[[1,4,6,7,8]]',18,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:18','2025-09-05 17:59:18'),(22,'faq_ids','[[1,3,4,7,10]]',19,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(23,'faq_ids','[[3,5,6,8,9]]',20,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(24,'faq_ids','[[3,5,7,8,10]]',21,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(25,'faq_ids','[[1,2,6,7,9]]',22,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(26,'faq_ids','[[2,5,6,7,8]]',23,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(27,'faq_ids','[[5,6,8,9,10]]',24,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(28,'faq_ids','[[2,3,5,6,9]]',25,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(29,'faq_ids','[[1,5,6,9,10]]',26,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(30,'faq_ids','[[3,5,8,9,10]]',27,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(31,'faq_ids','[[3,4,8,9,10]]',28,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(32,'faq_ids','[[1,2,3,8,9]]',29,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(33,'faq_ids','[[1,2,5,6,7]]',30,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(34,'faq_ids','[[2,3,4,5,6]]',31,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(35,'faq_ids','[[3,5,6,7,8]]',32,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(36,'faq_ids','[[1,2,5,7,10]]',33,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(37,'faq_ids','[[1,3,5,7,9]]',34,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(38,'faq_ids','[[2,3,4,6,9]]',35,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(39,'faq_ids','[[1,5,7,8,9]]',36,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(40,'faq_ids','[[1,5,6,8,10]]',37,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(41,'faq_ids','[[1,4,8,9,10]]',38,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(42,'faq_ids','[[1,2,4,7,8]]',39,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(43,'faq_ids','[[1,2,5,8,10]]',40,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(44,'faq_ids','[[1,2,3,5,10]]',41,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(45,'faq_ids','[[1,2,4,8,9]]',42,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(46,'faq_ids','[[2,3,5,7,8]]',43,'Botble\\Ecommerce\\Models\\Product','2025-09-05 17:59:19','2025-09-05 17:59:19'),(47,'breadcrumb_style','[\"none\"]',1,'Botble\\Page\\Models\\Page','2025-09-05 17:59:21','2025-09-05 17:59:21'),(48,'breadcrumb_style','[\"align-start\"]',2,'Botble\\Page\\Models\\Page','2025-09-05 17:59:21','2025-09-05 17:59:21'),(49,'breadcrumb_style','[\"align-center\"]',8,'Botble\\Page\\Models\\Page','2025-09-05 17:59:21','2025-09-05 17:59:21');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000001_create_cache_table',1),(2,'2013_04_09_032329_create_base_tables',1),(3,'2013_04_09_062329_create_revisions_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_reset_tokens_table',1),(6,'2015_06_18_033822_create_blog_table',1),(7,'2015_06_29_025744_create_audit_history',1),(8,'2016_05_28_112028_create_system_request_logs_table',1),(9,'2016_06_10_230148_create_acl_tables',1),(10,'2016_06_14_230857_create_menus_table',1),(11,'2016_06_17_091537_create_contacts_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_03_032336_create_languages_table',1),(14,'2016_10_05_074239_create_setting_table',1),(15,'2016_10_07_193005_create_translations_table',1),(16,'2016_10_13_150201_create_galleries_table',1),(17,'2016_11_28_032840_create_dashboard_widget_tables',1),(18,'2016_12_16_084601_create_widgets_table',1),(19,'2017_05_09_070343_create_media_tables',1),(20,'2017_05_18_080441_create_payment_tables',1),(21,'2017_07_11_140018_create_simple_slider_table',1),(22,'2017_10_24_154832_create_newsletter_table',1),(23,'2017_11_03_070450_create_slug_table',1),(24,'2018_07_09_214610_create_testimonial_table',1),(25,'2018_07_09_221238_create_faq_table',1),(26,'2019_01_05_053554_create_jobs_table',1),(27,'2019_08_19_000000_create_failed_jobs_table',1),(28,'2019_11_18_061011_create_country_table',1),(29,'2019_12_14_000001_create_personal_access_tokens_table',1),(30,'2020_03_05_041139_create_ecommerce_tables',1),(31,'2020_11_18_150916_ads_create_ads_table',1),(32,'2021_01_01_044147_ecommerce_create_flash_sale_table',1),(33,'2021_01_17_082713_add_column_is_featured_to_product_collections_table',1),(34,'2021_01_18_024333_add_zip_code_into_table_customer_addresses',1),(35,'2021_02_16_092633_remove_default_value_for_author_type',1),(36,'2021_02_18_073505_update_table_ec_reviews',1),(37,'2021_03_10_024419_add_column_confirmed_at_to_table_ec_customers',1),(38,'2021_03_10_025153_change_column_tax_amount',1),(39,'2021_03_20_033103_add_column_availability_to_table_ec_products',1),(40,'2021_03_27_144913_add_customer_type_into_table_payments',1),(41,'2021_04_28_074008_ecommerce_create_product_label_table',1),(42,'2021_05_24_034720_make_column_currency_nullable',1),(43,'2021_05_31_173037_ecommerce_create_ec_products_translations',1),(44,'2021_07_06_030002_create_marketplace_table',1),(45,'2021_08_09_161302_add_metadata_column_to_payments_table',1),(46,'2021_08_17_105016_remove_column_currency_id_in_some_tables',1),(47,'2021_08_30_142128_add_images_column_to_ec_reviews_table',1),(48,'2021_09_04_150137_add_vendor_verified_at_to_ec_customers_table',1),(49,'2021_10_04_030050_add_column_created_by_to_table_ec_products',1),(50,'2021_10_04_033903_add_column_approved_by_into_table_ec_products',1),(51,'2021_10_05_122616_add_status_column_to_ec_customers_table',1),(52,'2021_10_06_124943_add_transaction_id_column_to_mp_customer_withdrawals_table',1),(53,'2021_10_10_054216_add_columns_to_mp_customer_revenues_table',1),(54,'2021_10_19_020859_update_metadata_field',1),(55,'2021_10_25_021023_fix-priority-load-for-language-advanced',1),(56,'2021_11_03_025806_nullable_phone_number_in_ec_customer_addresses',1),(57,'2021_11_23_071403_correct_languages_for_product_variations',1),(58,'2021_11_28_031808_add_product_tags_translations',1),(59,'2021_12_01_031123_add_featured_image_to_ec_products',1),(60,'2021_12_02_035301_add_ads_translations_table',1),(61,'2021_12_03_030600_create_blog_translations',1),(62,'2021_12_03_075608_create_page_translations',1),(63,'2021_12_03_082134_create_faq_translations',1),(64,'2021_12_03_082953_create_gallery_translations',1),(65,'2021_12_03_083642_create_testimonials_translations',1),(66,'2021_12_03_084118_create_location_translations',1),(67,'2021_12_03_094518_migrate_old_location_data',1),(68,'2021_12_06_031304_update_table_mp_customer_revenues',1),(69,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',1),(70,'2022_01_01_033107_update_table_ec_shipments',1),(71,'2022_01_16_085908_improve_plugin_location',1),(72,'2022_02_16_042457_improve_product_attribute_sets',1),(73,'2022_03_22_075758_correct_product_name',1),(74,'2022_04_19_113334_add_index_to_ec_products',1),(75,'2022_04_19_113923_add_index_to_table_posts',1),(76,'2022_04_20_100851_add_index_to_media_table',1),(77,'2022_04_20_101046_add_index_to_menu_table',1),(78,'2022_04_28_144405_remove_unused_table',1),(79,'2022_04_30_034048_create_gallery_meta_translations_table',1),(80,'2022_05_05_115015_create_ec_customer_recently_viewed_products_table',1),(81,'2022_05_18_143720_add_index_to_table_ec_product_categories',1),(82,'2022_06_16_095633_add_index_to_some_tables',1),(83,'2022_06_28_151901_activate_paypal_stripe_plugin',1),(84,'2022_06_30_035148_create_order_referrals_table',1),(85,'2022_07_07_153354_update_charge_id_in_table_payments',1),(86,'2022_07_10_034813_move_lang_folder_to_root',1),(87,'2022_07_24_153815_add_completed_at_to_ec_orders_table',1),(88,'2022_08_04_051940_add_missing_column_expires_at',1),(89,'2022_08_04_052122_delete_location_backup_tables',1),(90,'2022_08_14_032836_create_ec_order_returns_table',1),(91,'2022_08_14_033554_create_ec_order_return_items_table',1),(92,'2022_08_15_040324_add_billing_address',1),(93,'2022_08_30_091114_support_digital_products_table',1),(94,'2022_09_01_000001_create_admin_notifications_tables',1),(95,'2022_09_13_095744_create_options_table',1),(96,'2022_09_13_104347_create_option_value_table',1),(97,'2022_10_05_163518_alter_table_ec_order_product',1),(98,'2022_10_12_041517_create_invoices_table',1),(99,'2022_10_12_142226_update_orders_table',1),(100,'2022_10_13_024916_update_table_order_returns',1),(101,'2022_10_14_024629_drop_column_is_featured',1),(102,'2022_10_19_152916_add_columns_to_mp_stores_table',1),(103,'2022_10_20_062849_create_mp_category_sale_commissions_table',1),(104,'2022_10_21_030830_update_columns_in_ec_shipments_table',1),(105,'2022_10_28_021046_update_columns_in_ec_shipments_table',1),(106,'2022_11_02_071413_add_more_info_for_store',1),(107,'2022_11_02_080444_add_tax_info',1),(108,'2022_11_16_034522_update_type_column_in_ec_shipping_rules_table',1),(109,'2022_11_18_063357_add_missing_timestamp_in_table_settings',1),(110,'2022_11_19_041643_add_ec_tax_product_table',1),(111,'2022_12_02_093615_update_slug_index_columns',1),(112,'2022_12_12_063830_update_tax_defadult_in_ec_tax_products_table',1),(113,'2022_12_17_041532_fix_address_in_order_invoice',1),(114,'2022_12_26_070329_create_ec_product_views_table',1),(115,'2023_01_04_033051_fix_product_categories',1),(116,'2023_01_09_050400_add_ec_global_options_translations_table',1),(117,'2023_01_10_093754_add_missing_option_value_id',1),(118,'2023_01_17_082713_add_column_barcode_and_cost_per_item_to_product_table',1),(119,'2023_01_26_021854_add_ec_customer_used_coupons_table',1),(120,'2023_01_30_024431_add_alt_to_media_table',1),(121,'2023_02_01_062030_add_store_translations',1),(122,'2023_02_08_015900_update_options_column_in_ec_order_product_table',1),(123,'2023_02_13_032133_update_fee_column_mp_customer_revenues_table',1),(124,'2023_02_16_042611_drop_table_password_resets',1),(125,'2023_02_17_023648_fix_store_prefix',1),(126,'2023_02_27_095752_remove_duplicate_reviews',1),(127,'2023_03_20_115757_add_user_type_column_to_ec_shipment_histories_table',1),(128,'2023_04_17_062645_add_open_in_new_tab',1),(129,'2023_04_21_082427_create_ec_product_categorizables_table',1),(130,'2023_04_23_005903_add_column_permissions_to_admin_notifications',1),(131,'2023_04_23_061847_increase_state_translations_abbreviation_column',1),(132,'2023_05_03_011331_add_missing_column_price_into_invoice_items_table',1),(133,'2023_05_10_075124_drop_column_id_in_role_users_table',1),(134,'2023_05_17_025812_fix_invoice_issue',1),(135,'2023_05_26_073140_move_option_make_phone_field_optional_at_checkout_page_to_mandatory_fields',1),(136,'2023_05_27_144611_fix_exchange_rate_setting',1),(137,'2023_06_22_084331_add_generate_license_code_to_ec_products_table',1),(138,'2023_06_30_042512_create_ec_order_tax_information_table',1),(139,'2023_07_06_011444_create_slug_translations_table',1),(140,'2023_07_14_022724_remove_column_id_from_ec_product_collection_products',1),(141,'2023_07_26_041451_add_more_columns_to_location_table',1),(142,'2023_07_27_041451_add_more_columns_to_location_translation_table',1),(143,'2023_08_09_012940_remove_column_status_in_ec_product_attributes',1),(144,'2023_08_11_060908_create_announcements_table',1),(145,'2023_08_15_064505_create_ec_tax_rules_table',1),(146,'2023_08_15_073307_drop_unique_in_states_cities_translations',1),(147,'2023_08_21_021819_make_column_address_in_ec_customer_addresses_nullable',1),(148,'2023_08_21_090810_make_page_content_nullable',1),(149,'2023_08_22_094114_drop_unique_for_barcode',1),(150,'2023_08_29_074620_make_column_author_id_nullable',1),(151,'2023_08_29_075308_make_column_user_id_nullable',1),(152,'2023_08_30_031811_add_apply_via_url_column_to_ec_discounts_table',1),(153,'2023_09_07_094312_add_index_to_product_sku_and_translations',1),(154,'2023_09_14_021936_update_index_for_slugs_table',1),(155,'2023_09_14_022423_add_index_for_language_table',1),(156,'2023_09_19_024955_create_discount_product_categories_table',1),(157,'2023_10_17_070728_add_icon_and_icon_image_to_product_categories_table',1),(158,'2023_10_21_065016_make_state_id_in_table_cities_nullable',1),(159,'2023_11_07_023805_add_tablet_mobile_image',1),(160,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',1),(161,'2023_11_14_033417_change_request_column_in_table_audit_histories',1),(162,'2023_11_17_063408_add_description_column_to_faq_categories_table',1),(163,'2023_11_22_154643_add_unique_in_table_ec_products_variations',1),(164,'2023_11_27_032313_add_price_columns_to_ec_product_cross_sale_relations_table',1),(165,'2023_12_06_023945_add_display_on_checkout_column_to_ec_discounts_table',1),(166,'2023_12_07_095130_add_color_column_to_media_folders_table',1),(167,'2023_12_12_105220_drop_translations_table',1),(168,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',1),(169,'2023_12_25_040604_ec_create_review_replies_table',1),(170,'2023_12_26_090340_add_private_notes_column_to_ec_customers_table',1),(171,'2024_01_16_070706_fix_translation_tables',1),(172,'2024_01_23_075227_add_proof_file_to_ec_orders_table',1),(173,'2024_03_14_041050_migrate_lazy_load_theme_options',1),(174,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',1),(175,'2024_03_21_100334_update_section_title_shape',1),(176,'2024_03_25_000001_update_captcha_settings_for_contact',1),(177,'2024_03_25_000001_update_captcha_settings_for_newsletter',1),(178,'2024_03_26_041531_add_cancel_reason_to_ec_orders_table',1),(179,'2024_03_27_062402_create_ec_customer_deletion_requests_table',1),(180,'2024_03_29_042242_migrate_old_captcha_settings',1),(181,'2024_03_29_093946_create_ec_order_return_histories_table',1),(182,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',1),(183,'2024_04_01_063523_add_customer_columns_to_ec_reviews_table',1),(184,'2024_04_03_062451_add_cover_image_to_table_mp_stores',1),(185,'2024_04_04_110758_update_value_column_in_user_meta_table',1),(186,'2024_04_15_092654_migrate_ecommerce_google_tag_manager_code_setting',1),(187,'2024_04_16_035713_add_min_max_order_quantity_columns_to_products_table',1),(188,'2024_04_19_063914_create_custom_fields_table',1),(189,'2024_04_27_100730_improve_analytics_setting',1),(190,'2024_05_07_073153_improve_table_wishlist',1),(191,'2024_05_07_082630_create_mp_messages_table',1),(192,'2024_05_07_093703_add_missing_zip_code_into_table_store_locators',1),(193,'2024_05_12_091229_add_column_visibility_to_table_media_files',1),(194,'2024_05_15_021503_fix_invoice_path',1),(195,'2024_06_20_160724_create_ec_shared_wishlists_table',1),(196,'2024_06_28_025104_add_notify_attachment_updated_column_to_ec_products_table',1),(197,'2024_07_03_030900_add_downloaded_at_column_to_ec_order_product_table',1),(198,'2024_07_04_083133_create_payment_logs_table',1),(199,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',1),(200,'2024_07_12_100000_change_random_hash_for_media',1),(201,'2024_07_14_071826_make_customer_email_nullable',1),(202,'2024_07_15_104916_add_video_media_column_to_ec_products_table',1),(203,'2024_07_19_131849_add_documents_to_mp_stores_table',1),(204,'2024_07_26_052530_add_percentage_to_tax_rules_table',1),(205,'2024_07_30_091615_fix_order_column_in_categories_table',1),(206,'2024_08_14_123028_add_customer_delivered_confirmed_at_column_to_ec_shipments_table',1),(207,'2024_08_17_094600_add_image_into_countries',1),(208,'2024_08_18_083119_add_tax_id_column_to_mp_stores_table',1),(209,'2024_08_19_132849_create_specification_tables',1),(210,'2024_08_27_141244_add_block_reason_to_ec_customers_table',1),(211,'2024_09_07_060744_add_author_column_to_specification_tables',1),(212,'2024_09_14_064023_add_can_use_with_flash_sale_column_to_ec_discounts_table',1),(213,'2024_09_14_100108_add_stripe_connect_details_to_ec_customers_table',1),(214,'2024_09_17_125408_add_square_logo_to_stores_table',1),(215,'2024_09_25_073928_remove_wrong_product_slugs',1),(216,'2024_09_30_024515_create_sessions_table',1),(217,'2024_12_19_000001_create_device_tokens_table',1),(218,'2024_12_19_000002_create_push_notifications_table',1),(219,'2024_12_19_000003_create_push_notification_recipients_table',1),(220,'2024_12_30_000001_create_user_settings_table',1),(221,'2025_01_06_033807_add_default_value_for_categories_author_type',1),(222,'2025_01_08_093652_add_zip_code_to_cities',1),(223,'2025_01_12_094943_correct_blog_posts_images',1),(224,'2025_01_15_050230_migrate_old_theme_options',1),(225,'2025_01_15_optimize_products_export_index',1),(226,'2025_01_17_082713_correct_column_barcode_and_cost_per_item_to_product_table',1),(227,'2025_01_24_044641_migrate_old_country_data',1),(228,'2025_01_28_233602_add_private_notes_into_ec_orders_table',1),(229,'2025_02_11_153025_add_action_label_to_announcement_translations',1),(230,'2025_02_13_021247_add_tax_translations',1),(231,'2025_02_24_152621_add_text_color_to_product_labels_table',1),(232,'2025_04_08_040931_create_social_logins_table',1),(233,'2025_04_12_000001_add_payment_fee_to_ec_orders_table',1),(234,'2025_04_12_000002_add_payment_fee_to_ec_invoices_table',1),(235,'2025_04_12_000003_add_payment_fee_to_payments_table',1),(236,'2025_04_21_000000_add_tablet_mobile_image_to_ads_translations_table',1),(237,'2025_05_05_000001_add_user_type_to_audit_histories_table',1),(238,'2025_05_05_092036_make_user_id_and_tax_amount_nullable',1),(239,'2025_05_15_082342_drop_email_unique_index_in_ec_customers_table',1),(240,'2025_05_22_000001_add_payment_fee_type_to_settings_table',1),(241,'2025_06_07_081731_add_translations_for_specification_groups_and_tables',1),(242,'2025_06_17_091813_increase_note_in_shipments_table',1),(243,'2025_06_24_000001_create_ec_product_license_codes_table',1),(244,'2025_06_24_080427_add_license_code_type_to_products_table',1),(245,'2025_07_06_030754_add_phone_to_users_table',1),(246,'2025_07_06_062402_create_ec_customer_deletion_requests_table',1),(247,'2025_07_07_161729_change_license_code_to_text_in_ec_product_license_codes_table',1),(248,'2025_07_08_162756_increase_license_code_column_size_in_ec_order_product_table',1),(249,'2025_07_09_000001_add_customer_address_fields_to_ec_invoices_table',1),(250,'2025_07_15_090809_create_ec_abandoned_carts_table',1),(251,'2025_07_24_120510_increase_barcode_column_length_in_ec_products_table',1),(252,'2025_07_31_021805_add_indexes_for_vendor_categories_optimization',1),(253,'2025_07_31_083459_add_indexes_for_location_search_performance',1),(254,'2025_07_31_133600_add_performance_indexes_to_ec_product_categories_table',1),(255,'2025_07_31_add_performance_indexes_to_slugs_table',1),(256,'2025_08_01_161205_optimize_product_variation_query_indexes',1),(257,'2025_08_07_073854_add_verification_fields_to_mp_stores_table',1),(258,'2025_08_08_145059_correct_tax_amount_in_order_and_invoice_tables',1),(259,'2025_09_05_025247_create_ec_product_specification_attribute_translations_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_category_sale_commissions`
--

DROP TABLE IF EXISTS `mp_category_sale_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_category_sale_commissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_category_id` bigint unsigned NOT NULL,
  `commission_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mp_category_sale_commissions_product_category_id_unique` (`product_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_category_sale_commissions`
--

LOCK TABLES `mp_category_sale_commissions` WRITE;
/*!40000 ALTER TABLE `mp_category_sale_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_category_sale_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_revenues`
--

DROP TABLE IF EXISTS `mp_customer_revenues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_revenues` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `order_id` bigint unsigned DEFAULT NULL,
  `sub_amount` decimal(15,2) DEFAULT '0.00',
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) DEFAULT '0.00',
  `current_balance` decimal(15,2) DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_revenues`
--

LOCK TABLES `mp_customer_revenues` WRITE;
/*!40000 ALTER TABLE `mp_customer_revenues` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_revenues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_customer_withdrawals`
--

DROP TABLE IF EXISTS `mp_customer_withdrawals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_customer_withdrawals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `fee` decimal(15,2) unsigned DEFAULT '0.00',
  `amount` decimal(15,2) unsigned DEFAULT '0.00',
  `current_balance` decimal(15,2) unsigned DEFAULT '0.00',
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `images` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_customer_withdrawals`
--

LOCK TABLES `mp_customer_withdrawals` WRITE;
/*!40000 ALTER TABLE `mp_customer_withdrawals` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_customer_withdrawals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_messages`
--

DROP TABLE IF EXISTS `mp_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `store_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_messages`
--

LOCK TABLES `mp_messages` WRITE;
/*!40000 ALTER TABLE `mp_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores`
--

DROP TABLE IF EXISTS `mp_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_square` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `is_verified` tinyint(1) NOT NULL DEFAULT '0',
  `verified_at` timestamp NULL DEFAULT NULL,
  `verified_by` bigint unsigned DEFAULT NULL,
  `verification_note` text COLLATE utf8mb4_unicode_ci,
  `vendor_verified_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `zip_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `government_id_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores`
--

LOCK TABLES `mp_stores` WRITE;
/*!40000 ALTER TABLE `mp_stores` DISABLE KEYS */;
INSERT INTO `mp_stores` VALUES (1,'GoPro','strosin.kristin@example.com','+17323130422','14427 Reyna Cliffs','GE','Texas','Yasmineton',2,'main/stores/1.png',NULL,'main/stores/cover-4.png','Porro perferendis quo sit sed facere consectetur debitis. Veniam rerum facilis tempora fuga delectus. Eos nisi et deserunt exercitationem qui. Ut est delectus unde accusantium sit quasi blanditiis. Laboriosam vel optio id et nemo rem. Quo aut omnis laboriosam laboriosam. Sed officiis quod et porro quo quia non. Rerum doloribus commodi debitis ducimus impedit voluptatem.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',1,'2025-09-04 07:59:03',NULL,'Verified business with valid documentation',NULL,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,NULL,NULL,NULL,NULL),(2,'Global Office','rosenbaum.ana@example.org','+16893244285','489 Shemar Meadow Apt. 851','ST','District of Columbia','Deangelobury',4,'main/stores/2.png',NULL,'main/stores/cover-3.png','Non a repellendus dolores at dolorem ipsa. Quisquam in itaque voluptas ea natus reiciendis sapiente. Eum autem repudiandae quis sunt ab deleniti vero. Possimus iste ut perspiciatis quas placeat rem quam. Accusantium unde doloribus cumque. Doloremque eveniet aut autem molestiae est. Iusto est vel magni voluptatem voluptatum dicta. Quam ratione ullam quia in repellat.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',1,'2025-06-16 07:58:14',NULL,'Successfully completed verification process',NULL,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,NULL,NULL,NULL,NULL),(3,'Young Shop','rashad.pfannerstill@example.org','+18127340761','18060 Morissette Mountain','MS','Georgia','Soledadborough',3,'main/stores/3.png',NULL,'main/stores/cover-3.png','Deserunt qui qui velit sunt. Iste nemo reiciendis facere molestias et voluptates itaque est. Harum fugiat magni eveniet et dicta accusamus sint. Aut delectus nemo et eos molestiae sunt ad laboriosam. Qui mollitia consequatur nostrum doloremque ut rerum consequuntur. Labore quam est in nulla minus ipsa.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',0,NULL,NULL,NULL,NULL,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,NULL,NULL,NULL,NULL),(4,'Global Store','rhermiston@example.com','+14636752951','764 Schinner Estate','MO','Wisconsin','New Kenya',4,'main/stores/4.png',NULL,'main/stores/cover-4.png','Pariatur saepe laboriosam error hic et doloremque perspiciatis. Minus voluptatem veniam a nihil tempore ipsa. Occaecati sint eum quibusdam doloremque nihil velit ea vero. Et excepturi omnis fugiat autem. Atque quae veritatis quas vero. Quod aperiam aliquam exercitationem et veritatis quo minus. Impedit mollitia consequatur et non vero. Omnis eum et et aut.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',1,'2025-05-09 18:35:09',NULL,'Successfully completed verification process',NULL,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,NULL,NULL,NULL,NULL),(5,'Robert’s Store','nat13@example.org','+15176257084','91301 Madisen Mission Suite 411','SB','Virginia','Karleeport',8,'main/stores/5.png',NULL,'main/stores/cover-1.png','Facere minima inventore consequatur in. Molestiae est maiores ipsa nemo nemo laudantium laboriosam. Neque est temporibus repellat consectetur voluptatem quasi fugiat. Voluptatem error officia doloremque est est soluta molestias aut. Non qui quibusdam sunt. Enim enim consectetur qui accusamus. Quis cumque quisquam accusamus molestias. Distinctio tempore eveniet eaque aut ut facere.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',1,'2025-06-02 04:54:20',NULL,'Verified through official business registration',NULL,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,NULL,NULL,NULL,NULL),(6,'Stouffer','stanton.mollie@example.org','+19855890301','19152 Adela Bridge Suite 035','NF','Kansas','Estrellaport',6,'main/stores/6.png',NULL,'main/stores/cover-3.png','Ducimus dicta ipsam ipsa atque et aut non facilis. Eos et modi maxime dolores similique. Labore labore quidem soluta ea labore ipsa officia. Sunt non beatae quo iure nihil sint. Modi et non accusamus aut illo atque enim. Ut saepe possimus inventore. Explicabo aliquid qui cumque dolorum voluptas ex rerum. Ut similique illum deleniti explicabo.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',1,'2025-05-20 11:08:52',NULL,'Established vendor with proven track record',NULL,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,NULL,NULL,NULL,NULL),(7,'StarKist','swift.dorcas@example.com','+13169390582','12211 Kassulke Landing','CI','Louisiana','Elzaton',3,'main/stores/7.png',NULL,'main/stores/cover-4.png','Vero rerum omnis ut doloribus totam qui. Consequatur nulla accusantium quia placeat aliquid recusandae temporibus. Eveniet laborum iure laborum in laudantium. Itaque ut quibusdam repellat consequatur enim cum blanditiis. Commodi dolorum repellendus animi.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',1,'2025-03-23 01:17:29',NULL,'Verified through official business registration',NULL,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,NULL,NULL,NULL,NULL),(8,'Old El Paso','zmedhurst@example.net','+14195999145','482 Labadie Isle Apt. 502','SL','Idaho','Port Mateofort',3,'main/stores/8.png',NULL,'main/stores/cover-5.png','Eius qui et illo rerum molestiae atque tempore. Cumque minus deserunt necessitatibus distinctio voluptas et. Ipsum et totam et eius fugit sapiente et. Iusto soluta rerum sit id. Ea commodi animi earum impedit accusamus. Cum voluptates sed et est totam expedita laboriosam. Nobis rerum quisquam exercitationem rerum ex architecto blanditiis.','<p>I have seen many people underestimating the power of their wallets. To them, they are just a functional item they use to carry. As a result, they often end up with the wallets which are not really suitable for them.</p>\n\n                <p>You should pay more attention when you choose your wallets. There are a lot of them on the market with the different designs and styles. When you choose carefully, you would be able to buy a wallet that is catered to your needs. Not to mention that it will help to enhance your style significantly.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f4\" src=\"/storage/main/blog/post-1.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <p><strong><em>For all of the reason above, here are 7 expert tips to help you pick up the right men’s wallet for you:</em></strong></p>\n\n                <h4><strong>Number 1: Choose A Neat Wallet</strong></h4>\n\n                <p>The wallet is an essential accessory that you should go simple. Simplicity is the best in this case. A simple and neat wallet with the plain color and even <strong>minimalist style</strong> is versatile. It can be used for both formal and casual events. In addition, that wallet will go well with most of the clothes in your wardrobe.</p>\n\n                <p>Keep in mind that a wallet will tell other people about your personality and your fashion sense as much as other clothes you put on. Hence, don’t go cheesy on your wallet or else people will think that you have a funny and particular style.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f5\" src=\"/storage/main/blog/post-2.jpg\"></p>\n\n                <p><br>\n                 </p>\n                <hr>\n                <h4><strong>Number 2: Choose The Right Size For Your Wallet</strong></h4>\n\n                <p>You should avoid having an over-sized wallet. Don’t think that you need to buy a big wallet because you have a lot to carry with you. In addition, a fat wallet is very ugly. It will make it harder for you to slide the wallet into your trousers’ pocket. In addition, it will create a bulge and ruin your look.</p>\n\n                <p>Before you go on to buy a new wallet, clean out your wallet and place all the items from your wallet on a table. Throw away things that you would never need any more such as the old bills or the expired gift cards. Remember to check your wallet on a frequent basis to get rid of all of the old stuff that you don’t need anymore.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f1\" src=\"/storage/main/blog/post-3.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 3: Don’t Limit Your Options Of Materials</strong></h4>\n\n                <p>The types and designs of wallets are not the only things that you should consider when you go out searching for your best wallet. You have more than 1 option of material rather than leather to choose from as well.</p>\n\n                <p>You can experiment with other available options such as cotton, polyester and canvas. They all have their own pros and cons. As a result, they will be suitable for different needs and requirements. You should think about them all in order to choose the material which you would like the most.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f6\" src=\"/storage/main/blog/post-4.jpg\"></p>\n\n                <p><br>\n                 </p>\n\n                <hr>\n                <h4><strong>Number 4: Consider A Wallet As A Long Term Investment</strong></h4>\n\n                <p>Your wallet is indeed an investment that you should consider spending a decent amount of time and effort on it. Another factor that you need to consider is how much you want to spend on your wallet. The price ranges of wallets on the market vary a great deal. You can find a wallet which is as cheap as about 5 to 7 dollars. On the other hand, you should expect to pay around 250 to 300 dollars for a high-quality wallet.</p>\n\n                <p>In case you need a wallet to use for a long time, it is a good idea that you should invest a decent amount of money on a wallet. A high quality wallet from a reputational brand with the premium quality such as cowhide leather will last for a long time. In addition, it is an accessory to show off your fashion sense and your social status.</p>\n\n                <p style=\"text-align:center;\"><img alt=\"f2\" src=\"/storage/main/blog/post-5.jpg\"></p>\n\n                <p> </p>\n                ','published',1,'2025-06-23 05:36:27',NULL,'Authentic products and reliable service confirmed',NULL,'2025-09-05 17:59:16','2025-09-05 17:59:16',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `mp_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_stores_translations`
--

DROP TABLE IF EXISTS `mp_stores_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_stores_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mp_stores_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`mp_stores_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_stores_translations`
--

LOCK TABLES `mp_stores_translations` WRITE;
/*!40000 ALTER TABLE `mp_stores_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `mp_stores_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_vendor_info`
--

DROP TABLE IF EXISTS `mp_vendor_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mp_vendor_info` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned NOT NULL DEFAULT '0',
  `balance` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_revenue` decimal(15,2) NOT NULL DEFAULT '0.00',
  `signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payout_payment_method` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT 'bank_transfer',
  `tax_info` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_vendor_info`
--

LOCK TABLES `mp_vendor_info` WRITE;
/*!40000 ALTER TABLE `mp_vendor_info` DISABLE KEYS */;
INSERT INTO `mp_vendor_info` VALUES (1,2,0.00,0.00,0.00,'$2y$12$qGJuLrJ5wxgR6ty20Fh16OSQkrkMht3myWA3AKhwNQRbCOC8Dg8xi','{\"name\":\"Walton D\'Amore\",\"number\":\"+13173109309\",\"full_name\":\"Osbaldo Thiel\",\"description\":\"Dr. Tanya Grimes V\"}','2025-09-05 17:59:14','2025-09-05 17:59:14','bank_transfer',NULL),(2,3,0.00,0.00,0.00,'$2y$12$kEMgu7N0Wdw22c0gFd.9EO1wIfPOH/IpJRTh/j/uRLLuDssMxV9yy','{\"name\":\"Delbert Russel\",\"number\":\"+14122842940\",\"full_name\":\"Prof. Gia Beatty\",\"description\":\"Tess Stamm I\"}','2025-09-05 17:59:14','2025-09-05 17:59:14','bank_transfer',NULL),(3,4,0.00,0.00,0.00,'$2y$12$LVVdDSWx6d3yl9XVoBUgtucEmc0dLhCIjh1jV5NgNmNsh3RcxcBFm','{\"name\":\"Alize Bergstrom\",\"number\":\"+17812640685\",\"full_name\":\"Dr. Kathryne Buckridge\",\"description\":\"Ms. Ursula Kassulke Jr.\"}','2025-09-05 17:59:15','2025-09-05 17:59:15','bank_transfer',NULL),(4,5,0.00,0.00,0.00,'$2y$12$.5V1N109fzM17GVqF7u/weir7YfUIrdY6mSDn1XS3p8WLlTKFuhwy','{\"name\":\"Brooke Stanton\",\"number\":\"+12299431646\",\"full_name\":\"Rogers Rippin\",\"description\":\"Dr. Jamal Balistreri\"}','2025-09-05 17:59:15','2025-09-05 17:59:15','bank_transfer',NULL),(5,6,0.00,0.00,0.00,'$2y$12$BmPlYBqzmO8aO1HdEfc9/O.wRIrlJbnJe22A0QPoGEbpKBTKDpU6C','{\"name\":\"Mr. Emmet Dicki II\",\"number\":\"+15599887554\",\"full_name\":\"Oma Mraz\",\"description\":\"Prof. Nolan Cremin\"}','2025-09-05 17:59:15','2025-09-05 17:59:15','bank_transfer',NULL),(6,7,0.00,0.00,0.00,'$2y$12$bEbzey4b9Sx/WWaQ2JxymO.w7wLxGqE.uQEHT8eTNE5XD3ffzbhCq','{\"name\":\"Rowena Oberbrunner MD\",\"number\":\"+19315328798\",\"full_name\":\"Mr. Gussie Conroy III\",\"description\":\"Makenna Quitzon\"}','2025-09-05 17:59:16','2025-09-05 17:59:16','bank_transfer',NULL),(7,8,0.00,0.00,0.00,'$2y$12$2cX8nyZMURzcf3m8/qmE4.Do13PsJye6FpSz8g9nu9TdstUY14Hju','{\"name\":\"Darrin Steuber\",\"number\":\"+18386781716\",\"full_name\":\"Vergie Volkman\",\"description\":\"Chadrick Reinger DVM\"}','2025-09-05 17:59:16','2025-09-05 17:59:16','bank_transfer',NULL);
/*!40000 ALTER TABLE `mp_vendor_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pages_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','[simple-slider customize_font_family_of_description=\"1\" font_family_of_description=\"Charm\" style=\"3\" key=\"home-slider\"][/simple-slider][ecommerce-categories style=\"grid\" category_ids=\"1,2,7,17\" background_color=\"#F3F5F7\" title=\"Discover our products\" subtitle=\"Product Collection\" button_label=\"Shop All Products\" button_url=\"/products\" enable_lazy_loading=\"no\"][/ecommerce-categories][ecommerce-products style=\"simple\" by=\"specify\" product_ids=\"2,39,41\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-products style=\"grid\" title=\"Best sellers in beauty\" subtitle=\"Shop by Category\" by=\"category\" category_ids=\"2,3,4\" limit=\"8\" background_color=\"rgb(234, 228, 222)\" button_label=\"Shop All Products\" button_url=\"/products\" enable_lazy_loading=\"yes\"][/ecommerce-products][ecommerce-product-groups title=\"Enjoy the best quality\" subtitle=\"Best Seller This Week’s\" limit=\"8\" tabs=\"all,featured,on-sale,trending,top-rated\" enable_lazy_loading=\"yes\"][/ecommerce-product-groups][testimonials style=\"2\" title=\"What our Clients say\" subtitle=\"Customers Review\" testimonial_ids=\"1,2,3,4\" enable_lazy_loading=\"yes\"][/testimonials][site-features style=\"2\" quantity=\"4\" title_1=\"Free Delivery\" description_1=\"Orders from all item\" icon_1=\"ti ti-truck-delivery\" title_2=\"Return & Refund\" description_2=\"Money-back guarantee\" icon_2=\"ti ti-currency-dollar\" title_3=\"Member Discount\" description_3=\"Every order over $140.00\" icon_3=\"ti ti-discount-2\" title_4=\"Support 24/7\" description_4=\"Contact us 24 hours a day\" icon_4=\"ti ti-headset\" enable_lazy_loading=\"yes\"][/site-features][gallery style=\"2\" limit=\"6\" enable_lazy_loading=\"yes\"][/gallery]',1,NULL,'full-width',NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(2,'Categories','[ads style=\"2\" key_1=\"UROL9F9ZZVAA\" key_2=\"B30VDBKO7SBF\" enable_lazy_loading=\"yes\"][/ads]<p>&nbsp;</p>[ecommerce-categories category_ids=\"11,14,17,18,21,22,23,25,38\" style=\"grid\" enable_lazy_loading=\"yes\"][/ecommerce-categories]<p>&nbsp;</p><p>&nbsp;</p>',1,NULL,'full-width',NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(3,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(4,'Brands','[ecommerce-brands show_brand_name=\"1\" enable_lazy_loading=\"yes\"][/ecommerce-brands]',1,NULL,NULL,NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(5,'Coupons','[ecommerce-coupons coupon_ids=\"1,2,3,4,5,6\" enable_lazy_loading=\"yes\"][/ecommerce-coupons]',1,NULL,'full-width',NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(6,'Blog',NULL,1,NULL,'full-width',NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(7,'Contact','[contact-form show_contact_form=&quot;1&quot; title=&quot;Sent A Message&quot; quantity=&quot;2&quot; icon_1=&quot;main/contact/icon-1.png&quot; content_1=&quot;contact@shofy.com &lt;br&gt; &lt;strong&gt;+670 413 90 762&lt;/strong&gt;&quot; icon_2=&quot;main/contact/icon-2.png&quot; content_2=&quot;502 New St, Brighton VIC 3186, Australia&quot; show_social_info=&quot;1&quot; social_info_label=&quot;Find on social media&quot; social_info_icon=&quot;main/contact/icon-3.png&quot;][/contact-form][google-map]502 New Street, Brighton VIC, Australia[/google-map]',1,NULL,'full-width',NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(8,'FAQs','[faqs style=\"group\" title=\"Frequently Ask Questions\" description=\"Below are frequently asked questions, you may find the answer for yourself.\" category_ids=\"1,2,3\" expand_first_time=\"1\"][/faqs]',1,NULL,NULL,NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(9,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,NULL,NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(10,'Our Story','<h4>A passion for handcrafted coffee, brewed with love and community.</h4>\n\n<p>\n    We are a small, family-owned coffee roaster dedicated to bringing the finest, ethically sourced beans to your cup. Our story began in a cozy kitchen, fueled by a shared passion for the rich aroma and invigorating taste of freshly brewed coffee. We dreamt of creating a space where people could connect over a warm cup, share stories, and experience the joy of handcrafted coffee.\n</p>\n\n<h4>From Humble Beginnings to Roasting Success:</h4>\n\n<p>\n    Our journey started with a small coffee roaster nestled in our garage. We spent countless hours experimenting with different roasting profiles, meticulously cupping each batch to achieve the perfect balance of flavor and aroma. Driven by a desire to make a difference, we built relationships with sustainable coffee farms around the world, ensuring fair trade practices and the highest quality beans.\n</p>\n\n<h4>Milestones and More to Come:</h4>\n\n<p>\n    Our dedication to quality and community resonated with coffee lovers, and our small business quickly grew. We opened our first cafe, a warm and inviting space where people could gather, savor our freshly roasted coffee, and connect with friends and neighbors. We\'ve continued to expand, now offering a variety of handcrafted coffee beverages, alongside delicious pastries and light bites.\n</p>\n\n<h4>Values at Our Core:</h4>\n\n<p>\n    At the heart of everything we do lies our commitment to ethical sourcing, sustainable practices, and building meaningful connections. We believe in supporting the communities that cultivate our coffee beans, ensuring fair wages and responsible farming methods. Every cup you enjoy contributes to a positive impact, one sip at a time.\n</p>\n\n<h4>Join us on our journey!</h4>\n\n<p>\n    We invite you to explore our world of coffee, from the rich diversity of our bean origins to the unique flavors crafted through meticulous roasting. Visit our cafe, discover your perfect cup, and become part of our ever-growing coffee community. Let\'s connect over a cup, share stories, and celebrate the simple joy of a well-brewed coffee.\n</p>\n',1,NULL,NULL,NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(11,'Careers','<h3>Careers: Be Part of Our Brewing Legacy</h3>\n\n<p>\n    At Shofy, we\'re not just brewing coffee, we\'re brewing a legacy. Since our humble beginnings in 2024, we\'ve grown from a small, family-owned roaster to a thriving coffee haven. But our passion for quality, community, and sustainability remains at the core of everything we do.\n</p>\n\n<h4>Why Join Our Team?</h4>\n\n<ul>\n    <li>\n        <p><strong>Become a Coffee Connoisseur</strong>: Immerse yourself in the world of coffee, learning from experienced roasters and baristas about bean origins, roasting techniques, and crafting the perfect cup.</p>\n    </li>\n    <li>\n        <p><strong>Fuel Your Passion</strong>: Contribute to our mission by sourcing ethically, promoting sustainable practices, and fostering positive relationships with coffee-growing communities around the globe.</p>\n    </li>\n    <li>\n        <p><strong>Grow with Us</strong>: We offer comprehensive training programs and opportunities for professional development, helping you refine your skills and advance your career in the coffee industry.</p>\n    </li>\n    <li>\n        <p><strong>Be Part of the Family</strong>: We cultivate a collaborative and supportive work environment where your unique talents and perspectives are valued.</p>\n    </li>\n</ul>\n\n<h4>Current Openings:</h4>\n\n<ul>\n    <li>\n        <p><strong>Coffee Roaster</strong>: Play a vital role in our roasting process, meticulously crafting unique flavor profiles and ensuring the highest quality beans reach our customers.</p>\n    </li>\n    <li>\n        <p><strong>Barista</strong>: Become a coffee ambassador, welcoming guests with a smile, crafting their perfect cup, and sharing your knowledge and passion for coffee.</p>\n    </li>\n    <li>\n        <p><strong>Cafe Manager</strong>: Lead your team in creating a warm and inviting atmosphere, overseeing daily operations, and ensuring exceptional customer service.</p>\n    </li>\n</ul>\n\n<h4>We are always looking for passionate individuals who share our values:</h4>\n\n<ul>\n    <li>\n        <p>A genuine love for coffee and a desire to learn everything there is to know about it.</p>\n    </li>\n    <li>\n        <p>A commitment to ethical sourcing, sustainability, and social responsibility.</p>\n    </li>\n    <li>\n        <p>Excellent communication and interpersonal skills to build rapport with colleagues and customers.</p>\n    </li>\n    <li>\n        <p>A positive attitude, a willingness to learn, and a collaborative spirit.</p>\n    </li>\n</ul>\n\n<p>Ready to join our brewing legacy?</p>\n\n<p>\n    Submit your resume and cover letter, telling us why you\'re a perfect fit for our team. We look forward to meeting passionate individuals who are ready to brew the future with us, one cup at a time.\n</p>\n',1,NULL,NULL,NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(12,'Shipping','<section>\n    <h2>Shipping Methods</h2>\n    <p>We offer several shipping methods to choose from:</p>\n    <ul>\n        <li>Standard Shipping - 3 to 5 business days</li>\n        <li>Express Shipping - 1 to 2 business days</li>\n        <li>International Shipping - 7 to 14 business days</li>\n    </ul>\n    <p>Please note that shipping times may vary depending on your location and other factors.</p>\n</section>\n\n<section>\n    <h2>Shipping Costs</h2>\n    <p>Shipping costs are calculated based on the weight of your order and the shipping method selected during checkout.</p>\n    <p>You can view the estimated shipping costs in your shopping cart before completing your purchase.</p>\n</section>\n\n<section>\n    <h2>Tracking Your Order</h2>\n    <p>Once your order has been shipped, you will receive a confirmation email with a tracking number.</p>\n    <p>You can use this tracking number to monitor the status of your delivery on our website or through the shipping carrier\'s website.</p>\n</section>\n\n<section>\n    <h2>Shipping Restrictions</h2>\n    <p>Some items may be subject to shipping restrictions due to size, weight, or destination.</p>\n    <p>If your order contains any restricted items, we will notify you during the checkout process.</p>\n</section>\n',1,NULL,NULL,NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(13,'Coming Soon','[coming-soon title=\"Get Notified When We Launch\" countdown_time=\"2026-03-25\" address=\" 58 Street Commercial Road Fratton, Australia\" hotline=\"+123456789\" business_hours=\"Mon – Sat: 8 am – 5 pm, Sunday: CLOSED\" show_social_links=\"0,1\" image=\"main/general/contact-img.jpg\"][/coming-soon]',1,NULL,'without-layout',NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21'),(14,'Return Policy','<h1>Return Policy</h1>\n<p>Thank you for shopping at [Your Company Name]. We are committed to ensuring that you are completely satisfied with\n    your purchase. If for any reason you are not entirely happy with your purchase, we\'re here to help.</p>\n\n<h2>Returns</h2>\n<p>You have [X] calendar days to return an item from the date you received it.</p>\n<p>To be eligible for a return, your item must be unused and in the same condition that you received it. Your item must\n    be in the original packaging.</p>\n<p>Your item needs to have the receipt or proof of purchase.</p>\n\n<h2>Refunds</h2>\n<p>Once we receive your item, we will inspect it and notify you that we have received your returned item. We will\n    immediately notify you on the status of your refund after inspecting the item.</p>\n<p>If your return is approved, we will initiate a refund to your credit card (or original method of payment). You will\n    receive the credit within a certain amount of days, depending on your card issuer\'s policies.</p>\n\n<h2>Shipping</h2>\n<p>You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are\n    non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</p>\n\n<h2>Contact Us</h2>\n<p>If you have any questions on how to return your item to us, contact us at:</p>\n<ul>\n    <li>Email: [Your Email Address]</li>\n    <li>Phone: [Your Phone Number]</li>\n    <li>Address: [Your Physical Address]</li>\n</ul>\n',1,NULL,NULL,NULL,'published','2025-09-05 17:59:21','2025-09-05 17:59:21');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext COLLATE utf8mb4_unicode_ci,
  `response` longtext COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `currency` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `payment_fee` decimal(15,2) DEFAULT '0.00',
  `order_id` bigint unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` bigint unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_categories` (
  `category_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_categories_category_id_index` (`category_id`),
  KEY `post_categories_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (6,1),(3,1),(5,2),(1,2),(4,3),(3,3),(2,4),(1,4),(3,5),(5,5),(5,6),(4,6),(4,7),(6,7),(1,8),(2,8),(4,9),(5,9),(2,10),(6,10),(6,11),(5,12),(2,12),(5,13),(1,13),(1,14),(5,14),(3,15),(6,15),(4,16),(1,16),(5,17),(3,17),(3,18),(1,18);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post_tags` (
  `tag_id` bigint unsigned NOT NULL,
  `post_id` bigint unsigned NOT NULL,
  KEY `post_tags_tag_id_index` (`tag_id`),
  KEY `post_tags_post_id_index` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (6,1),(4,1),(5,1),(5,2),(2,2),(7,2),(4,3),(2,3),(1,3),(8,4),(1,4),(7,5),(8,5),(3,5),(1,6),(7,6),(6,6),(5,7),(1,7),(8,7),(1,8),(5,8),(6,9),(7,9),(5,10),(1,10),(4,11),(1,11),(2,12),(6,12),(7,13),(2,13),(4,14),(5,14),(5,15),(8,15),(7,15),(4,16),(5,16),(1,16),(5,17),(2,17),(8,18),(4,18),(3,18);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_index` (`status`),
  KEY `posts_author_id_index` (`author_id`),
  KEY `posts_author_type_index` (`author_type`),
  KEY `posts_created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'4 Expert Tips On How To Choose The Right Men’s Wallet','Alice; \'living at the bottom of a well?\' The Dormouse shook its head to feel which way you can;--but I must have been a holiday?\' \'Of course not,\' Alice replied eagerly, for she felt very lonely and.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-1.jpg',907,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(2,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Alice after it, \'Mouse dear! Do come back and finish your story!\' Alice called out as loud as she could not be denied, so she went down on their slates, and she crossed her hands on her spectacles.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-3.jpg',523,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(3,'The Top 2020 Handbag Trends to Know','Cat. \'I don\'t know where Dinn may be,\' said the Duchess; \'I never said I didn\'t!\' interrupted Alice. \'You are,\' said the Lory positively refused to tell them something more. \'You promised to tell.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-4.jpg',1864,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(4,'How to Match the Color of Your Handbag With an Outfit','Alice did not see anything that looked like the look of it had finished this short speech, they all looked puzzled.) \'He must have been ill.\' \'So they were,\' said the Duchess. An invitation for the.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-6.jpg',1208,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(5,'How to Care for Leather Bags','She hastily put down her anger as well as if she had known them all her riper years, the simple rules their friends had taught them: such as, \'Sure, I don\'t understand. Where did they draw?\' said.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',185,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(6,'We\'re Crushing Hard on Summer\'s 10 Biggest Bag Trends','I\'ve fallen by this time, as it happens; and if I shall think nothing of tumbling down stairs! How brave they\'ll all think me at home! Why, I wouldn\'t say anything about it, you know.\' \'I DON\'T.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',2184,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(7,'Essential Qualities of Highly Successful Music','No, it\'ll never do to come out among the leaves, which she had hurt the poor little feet, I wonder who will put on his slate with one finger pressed upon its forehead (the position in dancing.\'.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-7.jpg',156,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(8,'9 Things I Love About Shaving My Head','And she kept fanning herself all the arches are gone from this morning,\' said Alice sadly. \'Hand it over afterwards, it occurred to her head, she tried another question. \'What sort of mixed flavour.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-11.jpg',1379,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(9,'Why Teamwork Really Makes The Dream Work','I only knew the meaning of it had been, it suddenly appeared again. \'By-the-bye, what became of the song, perhaps?\' \'I\'ve heard something splashing about in the middle of one! There ought to be.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',1364,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(10,'The World Caters to Average People','Alice, \'because I\'m not used to know. Let me see: four times five is twelve, and four times six is thirteen, and four times five is twelve, and four times six is thirteen, and four times six is.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-2.jpg',196,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(11,'The litigants on the screen are not actors','Gryphon went on. \'Would you tell me,\' said Alice, feeling very curious to know what they\'re about!\' \'Read them,\' said the King said, turning to Alice severely. \'What are they made of?\' \'Pepper.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-4.jpg',898,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(12,'Hiring the Right Sales Team at the Right Time','Alice, every now and then; such as, \'Sure, I don\'t know what to uglify is, you ARE a simpleton.\' Alice did not feel encouraged to ask any more HERE.\' \'But then,\' thought Alice, and, after folding.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-12.jpg',2132,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(13,'Fully Embrace the Return of 90s fashion','Gryphon, \'you first form into a line along the sea-shore--\' \'Two lines!\' cried the Mouse, in a thick wood. \'The first thing I\'ve got to grow larger again, and all the things between whiles.\' \'Then.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-10.jpg',1611,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(14,'Exploring the English Countryside','Alice thought to herself in a minute. Alice began in a minute. Alice began in a pleased tone. \'Pray don\'t trouble yourself to say to this: so she felt sure she would gather about her any more if.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-8.jpg',649,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(15,'Here’s the First Valentino’s New Makeup Collection','You grant that?\' \'I suppose they are the jurors.\' She said this last remark that had a large flower-pot that stood near the door, she ran with all their simple joys, remembering her own children.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-1.jpg',2449,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(16,'Follow Your own Design process, whatever gets','You grant that?\' \'I suppose they are the jurors.\' She said the young lady tells us a story.\' \'I\'m afraid I\'ve offended it again!\' For the Mouse had changed his mind, and was coming to, but it just.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-8.jpg',2289,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(17,'Freelancer Days 2024, What’s new?','Majesty means, of course,\' said the Hatter, \'you wouldn\'t talk about trouble!\' said the Caterpillar decidedly, and he poured a little three-legged table, all made a dreadfully ugly child: but it.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',0,'main/blog/post-12.jpg',2223,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12'),(18,'Quality Foods Requirments For Every Human Body’s','I can kick a little!\' She drew her foot slipped, and in his confusion he bit a large crowd collected round it: there was hardly room to grow here,\' said the Hatter. \'Does YOUR watch tell you just.','<p class=\"tp-dropcap\">sales process is critically important to the success of your reps and your business. If you\'ve never seen a really skilled salesperson work, it seems almost effortless. They ask great questions, craftt perfect proposal, answer questions, address concerns and seamlessly seal the Underneath the surface of all of that, the salesperson has probably dedicated hours honing their craft and ensuring the process moves smoothly.</p>\n\n<p>One of the challenges that often surfaces when  working with a remote sales team is a lack of transparency over what is happening, and where in the process things are taking place. We’re going to peel back the curtain and show you how to create the best sales.</p>\n\n<h4 class=\"tp-postbox-details-heading\">Breaking Up With Fast Fashion Has Been Easier</h4>\n<p>Lommodo ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient montes lorem, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium, sem. Nulla onsequat massa quis enim. donec pede justo fringilla vel aliquet.</p>\n\n<div class=\"tp-postbox-details-desc-thumb text-center\">\n   <img src=\"/storage/main/blog/blog-details-sm-1.jpg\" alt=\"\">\n   <span class=\"tp-postbox-details-desc-thumb-caption\">Gucci’s Women’s Cruise Collection 2023 Lookbook Has Arrived</span>\n</div>\n<p>“We’re so glad we’ll be working with you to get your new marketing strategy up and running. I\'ve attached the details of your package. Next you’ll get an email from Jen to schedule your kick-off meeting and be assigned your account rep. During your kick-off meeting, we will introduce your project team, let you know what access we need to start.” </p>\n\n<div class=\"tp-postbox-details-quote\">\n   <blockquote>\n      <div class=\"tp-postbox-details-quote-shape\">\n         <img class=\"tp-postbox-details-quote-shape-1\" src=\"/storage/main/shapes/line.png\" alt=\"\">\n         <img class=\"tp-postbox-details-quote-shape-2\" src=\"/storage/main/shapes/quote.png\" alt=\"\">\n      </div>\n      <p>There is a way out of every box, a solution to every puzzle its just a matter of finding it.</p>\n      <span style=\"color: #fff\">Shahnewaz Sakil</span>\n   </blockquote>\n</div>\n\n<h4 class=\"tp-postbox-details-heading\">Exploring the English Countryside</h4>\n<p>Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus et magnis dis parturient montes lorem,nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque euro, pretium quis, sem. Nulla onsequat massa quis enim.</p>\n\n<div class=\"tp-postbox-details-list\">\n   <ul>\n      <li>Lorem ipsum dolor sit amet.</li>\n      <li>At vero eos et accusamus et iusto odio.</li>\n      <li>Excepteur sint occaecat cupidatat non proident.</li>\n   </ul>\n</div>\n<p>Rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer cidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae lorem.</p>\n','published',1,'Botble\\ACL\\Models\\User',1,'main/blog/post-3.jpg',2313,NULL,'2025-09-05 17:59:12','2025-09-05 17:59:12');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notification_recipients`
--

DROP TABLE IF EXISTS `push_notification_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notification_recipients` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `push_notification_id` bigint unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `device_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_at` timestamp NULL DEFAULT NULL,
  `delivered_at` timestamp NULL DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `clicked_at` timestamp NULL DEFAULT NULL,
  `fcm_response` json DEFAULT NULL,
  `error_message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pnr_notification_user_index` (`push_notification_id`,`user_type`,`user_id`),
  KEY `pnr_user_status_index` (`user_type`,`user_id`,`status`),
  KEY `pnr_user_read_index` (`user_type`,`user_id`,`read_at`),
  KEY `pnr_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notification_recipients`
--

LOCK TABLES `push_notification_recipients` WRITE;
/*!40000 ALTER TABLE `push_notification_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notification_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `push_notifications`
--

DROP TABLE IF EXISTS `push_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `push_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'general',
  `target_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` json DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `sent_count` int NOT NULL DEFAULT '0',
  `failed_count` int NOT NULL DEFAULT '0',
  `delivered_count` int NOT NULL DEFAULT '0',
  `read_count` int NOT NULL DEFAULT '0',
  `scheduled_at` timestamp NULL DEFAULT NULL,
  `sent_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `push_notifications_type_created_at_index` (`type`,`created_at`),
  KEY `push_notifications_status_scheduled_at_index` (`status`,`scheduled_at`),
  KEY `push_notifications_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `push_notifications`
--

LOCK TABLES `push_notifications` WRITE;
/*!40000 ALTER TABLE `push_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `push_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_logs`
--

DROP TABLE IF EXISTS `request_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `request_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_logs`
--

LOCK TABLES `request_logs` WRITE;
/*!40000 ALTER TABLE `request_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `request_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_users` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL,
  `updated_by` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"sitemap.settings\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"plugins.ecommerce\":true,\"ecommerce.report.index\":true,\"products.index\":true,\"products.create\":true,\"products.edit\":true,\"products.destroy\":true,\"products.duplicate\":true,\"ecommerce.product-prices.index\":true,\"ecommerce.product-prices.edit\":true,\"ecommerce.product-inventory.index\":true,\"ecommerce.product-inventory.edit\":true,\"product-categories.index\":true,\"product-categories.create\":true,\"product-categories.edit\":true,\"product-categories.destroy\":true,\"product-tag.index\":true,\"product-tag.create\":true,\"product-tag.edit\":true,\"product-tag.destroy\":true,\"brands.index\":true,\"brands.create\":true,\"brands.edit\":true,\"brands.destroy\":true,\"product-collections.index\":true,\"product-collections.create\":true,\"product-collections.edit\":true,\"product-collections.destroy\":true,\"product-attribute-sets.index\":true,\"product-attribute-sets.create\":true,\"product-attribute-sets.edit\":true,\"product-attribute-sets.destroy\":true,\"product-attributes.index\":true,\"product-attributes.create\":true,\"product-attributes.edit\":true,\"product-attributes.destroy\":true,\"tax.index\":true,\"tax.create\":true,\"tax.edit\":true,\"tax.destroy\":true,\"reviews.index\":true,\"reviews.create\":true,\"reviews.destroy\":true,\"reviews.publish\":true,\"reviews.reply\":true,\"ecommerce.shipments.index\":true,\"ecommerce.shipments.create\":true,\"ecommerce.shipments.edit\":true,\"ecommerce.shipments.destroy\":true,\"orders.index\":true,\"orders.create\":true,\"orders.edit\":true,\"orders.destroy\":true,\"discounts.index\":true,\"discounts.create\":true,\"discounts.edit\":true,\"discounts.destroy\":true,\"customers.index\":true,\"customers.create\":true,\"customers.edit\":true,\"customers.destroy\":true,\"ecommerce.customers.import\":true,\"ecommerce.customers.export\":true,\"flash-sale.index\":true,\"flash-sale.create\":true,\"flash-sale.edit\":true,\"flash-sale.destroy\":true,\"product-label.index\":true,\"product-label.create\":true,\"product-label.edit\":true,\"product-label.destroy\":true,\"ecommerce.import.products.index\":true,\"ecommerce.export.products.index\":true,\"order_returns.index\":true,\"order_returns.edit\":true,\"order_returns.destroy\":true,\"global-option.index\":true,\"global-option.create\":true,\"global-option.edit\":true,\"global-option.destroy\":true,\"ecommerce.invoice.index\":true,\"ecommerce.invoice.edit\":true,\"ecommerce.invoice.destroy\":true,\"ecommerce.settings\":true,\"ecommerce.settings.general\":true,\"ecommerce.invoice-template.index\":true,\"ecommerce.settings.currencies\":true,\"ecommerce.settings.products\":true,\"ecommerce.settings.product-search\":true,\"ecommerce.settings.digital-products\":true,\"ecommerce.settings.store-locators\":true,\"ecommerce.settings.invoices\":true,\"ecommerce.settings.product-reviews\":true,\"ecommerce.settings.customers\":true,\"ecommerce.settings.shopping\":true,\"ecommerce.settings.taxes\":true,\"ecommerce.settings.shipping\":true,\"ecommerce.shipping-rule-items.index\":true,\"ecommerce.shipping-rule-items.create\":true,\"ecommerce.shipping-rule-items.edit\":true,\"ecommerce.shipping-rule-items.destroy\":true,\"ecommerce.shipping-rule-items.bulk-import\":true,\"ecommerce.settings.tracking\":true,\"ecommerce.settings.standard-and-format\":true,\"ecommerce.settings.checkout\":true,\"ecommerce.settings.return\":true,\"ecommerce.settings.flash-sale\":true,\"ecommerce.settings.product-specification\":true,\"product-categories.export\":true,\"product-categories.import\":true,\"orders.export\":true,\"ecommerce.product-specification.index\":true,\"ecommerce.specification-groups.index\":true,\"ecommerce.specification-groups.create\":true,\"ecommerce.specification-groups.edit\":true,\"ecommerce.specification-groups.destroy\":true,\"ecommerce.specification-attributes.index\":true,\"ecommerce.specification-attributes.create\":true,\"ecommerce.specification-attributes.edit\":true,\"ecommerce.specification-attributes.destroy\":true,\"ecommerce.specification-tables.index\":true,\"ecommerce.specification-tables.create\":true,\"ecommerce.specification-tables.edit\":true,\"ecommerce.specification-tables.destroy\":true,\"plugin.faq\":true,\"faq.index\":true,\"faq.create\":true,\"faq.edit\":true,\"faq.destroy\":true,\"faq_category.index\":true,\"faq_category.create\":true,\"faq_category.edit\":true,\"faq_category.destroy\":true,\"faqs.settings\":true,\"galleries.index\":true,\"galleries.create\":true,\"galleries.edit\":true,\"galleries.destroy\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"translations.import\":true,\"translations.export\":true,\"property-translations.import\":true,\"property-translations.export\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"marketplace.index\":true,\"marketplace.store.index\":true,\"marketplace.store.create\":true,\"marketplace.store.edit\":true,\"marketplace.store.destroy\":true,\"marketplace.store.view\":true,\"marketplace.store.revenue.create\":true,\"marketplace.withdrawal.index\":true,\"marketplace.withdrawal.edit\":true,\"marketplace.withdrawal.destroy\":true,\"marketplace.withdrawal.invoice\":true,\"marketplace.vendors.index\":true,\"marketplace.unverified-vendors.index\":true,\"marketplace.vendors.control\":true,\"marketplace.unverified-vendors.edit\":true,\"marketplace.reports\":true,\"marketplace.settings\":true,\"marketplace.messages.index\":true,\"marketplace.messages.edit\":true,\"marketplace.messages.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"request-log.index\":true,\"request-log.destroy\":true,\"sale-popup.settings\":true,\"simple-slider.index\":true,\"simple-slider.create\":true,\"simple-slider.edit\":true,\"simple-slider.destroy\":true,\"simple-slider-item.index\":true,\"simple-slider-item.create\":true,\"simple-slider-item.edit\":true,\"simple-slider-item.destroy\":true,\"simple-slider.settings\":true,\"social-login.settings\":true,\"testimonial.index\":true,\"testimonial.create\":true,\"testimonial.edit\":true,\"testimonial.destroy\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-09-05 17:59:05','2025-09-05 17:59:05');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'media_random_hash','9541b3c02e9dd30cb929d5c5bbd4851f',NULL,'2025-09-05 17:59:22'),(2,'api_enabled','0',NULL,'2025-09-05 17:59:22'),(3,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"ecommerce\",\"faq\",\"gallery\",\"location\",\"marketplace\",\"mollie\",\"newsletter\",\"payment\",\"paypal\",\"paypal-payout\",\"paystack\",\"razorpay\",\"request-log\",\"sale-popup\",\"shippo\",\"simple-slider\",\"social-login\",\"sslcommerz\",\"stripe\",\"stripe-connect\",\"testimonial\",\"translation\"]',NULL,'2025-09-05 17:59:22'),(6,'theme','shofy-beauty',NULL,'2025-09-05 17:59:22'),(7,'show_admin_bar','1',NULL,'2025-09-05 17:59:22'),(8,'admin_favicon','main/general/favicon.png',NULL,'2025-09-05 17:59:22'),(9,'admin_logo','main/general/logo-white.png',NULL,'2025-09-05 17:59:22'),(10,'announcement_lazy_loading','1',NULL,'2025-09-05 17:59:22'),(11,'marketplace_requires_vendor_documentations_verification','0',NULL,'2025-09-05 17:59:22'),(12,'payment_cod_status','1',NULL,'2025-09-05 17:59:22'),(13,'payment_bank_transfer_status','1',NULL,'2025-09-05 17:59:22'),(14,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-09-05 17:59:22'),(15,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-09-05 17:59:22'),(16,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-09-05 17:59:22'),(17,'plugins_ecommerce_customer_new_order_status','0',NULL,'2025-09-05 17:59:22'),(18,'plugins_ecommerce_admin_new_order_status','0',NULL,'2025-09-05 17:59:22'),(19,'ecommerce_is_enabled_support_digital_products','1',NULL,'2025-09-05 17:59:22'),(20,'ecommerce_enable_license_codes_for_digital_products','1',NULL,'2025-09-05 17:59:22'),(21,'ecommerce_auto_complete_digital_orders_after_payment','1',NULL,'2025-09-05 17:59:22'),(22,'ecommerce_load_countries_states_cities_from_location_plugin','0',NULL,'2025-09-05 17:59:22'),(23,'ecommerce_product_sku_format','SF-2443-%s%s%s%s',NULL,'2025-09-05 17:59:22'),(24,'ecommerce_store_order_prefix','SF',NULL,'2025-09-05 17:59:22'),(25,'ecommerce_enable_product_specification','1',NULL,'2025-09-05 17:59:22'),(26,'payment_bank_transfer_display_bank_info_at_the_checkout_success_page','1',NULL,'2025-09-05 17:59:22'),(27,'payment_cod_logo','payments/cod.png',NULL,'2025-09-05 17:59:22'),(28,'payment_bank_transfer_logo','payments/bank-transfer.png',NULL,'2025-09-05 17:59:22'),(29,'payment_stripe_logo','payments/stripe.webp',NULL,'2025-09-05 17:59:22'),(30,'payment_paypal_logo','payments/paypal.png',NULL,'2025-09-05 17:59:22'),(31,'payment_mollie_logo','payments/mollie.png',NULL,'2025-09-05 17:59:22'),(32,'payment_paystack_logo','payments/paystack.png',NULL,'2025-09-05 17:59:22'),(33,'payment_razorpay_logo','payments/razorpay.png',NULL,'2025-09-05 17:59:22'),(34,'payment_sslcommerz_logo','payments/sslcommerz.png',NULL,'2025-09-05 17:59:22'),(35,'permalink-botble-blog-models-post','blog',NULL,'2025-09-05 17:59:22'),(36,'permalink-botble-blog-models-category','blog',NULL,'2025-09-05 17:59:22'),(37,'language_hide_default','1',NULL,'2025-09-05 17:59:22'),(38,'language_switcher_display','dropdown',NULL,'2025-09-05 17:59:22'),(39,'language_display','all',NULL,'2025-09-05 17:59:22'),(40,'language_hide_languages','[]',NULL,'2025-09-05 17:59:22'),(41,'ecommerce_store_name','Shofy',NULL,'2025-09-05 17:59:22'),(42,'ecommerce_store_phone','1800979769',NULL,'2025-09-05 17:59:22'),(43,'ecommerce_store_address','502 New Street',NULL,'2025-09-05 17:59:22'),(44,'ecommerce_store_state','Brighton VIC',NULL,'2025-09-05 17:59:22'),(45,'ecommerce_store_city','Brighton VIC',NULL,'2025-09-05 17:59:22'),(46,'ecommerce_store_country','AU',NULL,'2025-09-05 17:59:22'),(47,'announcement_max_width','1390',NULL,'2025-09-05 17:59:22'),(48,'announcement_text_color','#010f1c',NULL,'2025-09-05 17:59:22'),(49,'announcement_background_color','transparent',NULL,'2025-09-05 17:59:22'),(50,'announcement_placement','theme',NULL,'2025-09-05 17:59:22'),(51,'announcement_text_alignment','start',NULL,'2025-09-05 17:59:22'),(52,'announcement_dismissible','0',NULL,'2025-09-05 17:59:22'),(53,'simple_slider_using_assets','0',NULL,'2025-09-05 17:59:22'),(54,'theme-shofy-beauty-site_name','Shofy',NULL,NULL),(55,'theme-shofy-beauty-site_title','Shofy - Multipurpose eCommerce Laravel Script',NULL,NULL),(56,'theme-shofy-beauty-seo_description','Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.',NULL,NULL),(57,'theme-shofy-beauty-copyright','© %Y All Rights Reserved.',NULL,NULL),(58,'theme-shofy-beauty-tp_primary_font','Jost',NULL,NULL),(59,'theme-shofy-beauty-primary_color','#BD844C',NULL,NULL),(60,'theme-shofy-beauty-favicon','main/general/favicon.png',NULL,NULL),(61,'theme-shofy-beauty-logo','main/general/logo.png',NULL,NULL),(62,'theme-shofy-beauty-logo_light','main/general/logo-white.png',NULL,NULL),(63,'theme-shofy-beauty-header_style','3',NULL,NULL),(64,'theme-shofy-beauty-preloader_icon','main/general/preloader-icon.png',NULL,NULL),(65,'theme-shofy-beauty-address','502 New Street, Brighton VIC, Australia',NULL,NULL),(66,'theme-shofy-beauty-hotline','8 800 332 65-66',NULL,NULL),(67,'theme-shofy-beauty-email','contact@fartmart.co',NULL,NULL),(68,'theme-shofy-beauty-working_time','Mon - Fri: 07AM - 06PM',NULL,NULL),(69,'theme-shofy-beauty-homepage_id','1',NULL,NULL),(70,'theme-shofy-beauty-blog_page_id','6',NULL,NULL),(71,'theme-shofy-beauty-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),(72,'theme-shofy-beauty-cookie_consent_learn_more_url','cookie-policy',NULL,NULL),(73,'theme-shofy-beauty-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),(74,'theme-shofy-beauty-number_of_products_per_page','24',NULL,NULL),(75,'theme-shofy-beauty-number_of_cross_sale_product','6',NULL,NULL),(76,'theme-shofy-beauty-ecommerce_products_page_layout','left_sidebar',NULL,NULL),(77,'theme-shofy-beauty-ecommerce_product_item_style','3',NULL,NULL),(78,'theme-shofy-beauty-404_page_image','main/general/404.png',NULL,NULL),(79,'theme-shofy-beauty-newsletter_popup_enable','1',NULL,NULL),(80,'theme-shofy-beauty-newsletter_popup_image','main/general/newsletter-popup.jpg',NULL,NULL),(81,'theme-shofy-beauty-newsletter_popup_title','Subscribe Now',NULL,NULL),(82,'theme-shofy-beauty-newsletter_popup_subtitle','Newsletter',NULL,NULL),(83,'theme-shofy-beauty-newsletter_popup_description','Subscribe to our newsletter and get 10% off your first purchase',NULL,NULL),(84,'theme-shofy-beauty-lazy_load_images','1',NULL,NULL),(85,'theme-shofy-beauty-lazy_load_placeholder_image','main/general/placeholder.png',NULL,NULL),(86,'theme-shofy-beauty-breadcrumb_background_image','main/general/breadcrumb.jpg',NULL,NULL),(87,'theme-shofy-beauty-section_title_shape_decorated','none',NULL,NULL),(88,'theme-shofy-beauty-social_links','[[{\"key\":\"name\",\"value\":\"Facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.facebook.com\"}],[{\"key\":\"name\",\"value\":\"X (Twitter)\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"},{\"key\":\"url\",\"value\":\"https:\\/\\/x.com\"}],[{\"key\":\"name\",\"value\":\"YouTube\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-youtube\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.youtube.com\"}],[{\"key\":\"name\",\"value\":\"Instagram\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"},{\"key\":\"url\",\"value\":\"https:\\/\\/www.linkedin.com\"}]]',NULL,NULL),(89,'theme-shofy-beauty-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,NULL),(90,'theme-shofy-beauty-login_background','main/general/auth-banner.png',NULL,NULL),(91,'theme-shofy-beauty-register_background','main/general/auth-banner.png',NULL,NULL),(92,'theme-shofy-beauty-merchant_return_policy_url','return-policy',NULL,NULL),(93,'theme-shofy-beauty-merchant_return_applicable_country','US',NULL,NULL),(94,'theme-shofy-beauty-term_and_privacy_policy_url','privacy-policy',NULL,NULL),(95,'theme-shofy-beauty-header_top_background_color','#fff',NULL,NULL),(96,'theme-shofy-beauty-header_top_text_color','#010f1c',NULL,NULL),(97,'theme-shofy-beauty-header_main_background_color','transparent',NULL,NULL),(98,'theme-shofy-beauty-header_main_text_color','#010f1c',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_slider_items`
--

DROP TABLE IF EXISTS `simple_slider_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_slider_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `simple_slider_id` bigint unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` int unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_slider_items`
--

LOCK TABLES `simple_slider_items` WRITE;
/*!40000 ALTER TABLE `simple_slider_items` DISABLE KEYS */;
INSERT INTO `simple_slider_items` VALUES (1,1,'The Clothing Collection','beauty/sliders/slider-1.jpg','/products','New Arrivals 2023',0,'2025-09-05 17:59:17','2025-09-05 17:59:17'),(2,1,'The Summer Collection','beauty/sliders/slider-2.jpg','/products','Best Selling 2023',1,'2025-09-05 17:59:17','2025-09-05 17:59:17'),(3,1,'Amazing New designs','beauty/sliders/slider-3.jpg','/products','Winter Has Arrived',2,'2025-09-05 17:59:17','2025-09-05 17:59:17');
/*!40000 ALTER TABLE `simple_slider_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_sliders`
--

DROP TABLE IF EXISTS `simple_sliders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `simple_sliders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_sliders`
--

LOCK TABLES `simple_sliders` WRITE;
/*!40000 ALTER TABLE `simple_sliders` DISABLE KEYS */;
INSERT INTO `simple_sliders` VALUES (1,'Home slider','home-slider','The main slider on homepage','published','2025-09-05 17:59:17','2025-09-05 17:59:17');
/*!40000 ALTER TABLE `simple_sliders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `reference_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`),
  KEY `idx_slugs_reference` (`reference_type`,`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'foodpound',1,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-05 17:59:06','2025-09-05 17:59:06'),(2,'itea-jsc',2,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-05 17:59:06','2025-09-05 17:59:06'),(3,'soda-brand',3,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-05 17:59:06','2025-09-05 17:59:06'),(4,'shofy',4,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-05 17:59:06','2025-09-05 17:59:06'),(5,'soda-brand',5,'Botble\\Ecommerce\\Models\\Brand','brands','2025-09-05 17:59:06','2025-09-05 17:59:06'),(6,'electronic',1,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-05 17:59:10','2025-09-05 17:59:10'),(7,'mobile',2,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-05 17:59:10','2025-09-05 17:59:10'),(8,'iphone',3,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-05 17:59:10','2025-09-05 17:59:10'),(9,'printer',4,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-05 17:59:10','2025-09-05 17:59:10'),(10,'office',5,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-05 17:59:10','2025-09-05 17:59:10'),(11,'it',6,'Botble\\Ecommerce\\Models\\ProductTag','product-tags','2025-09-05 17:59:10','2025-09-05 17:59:10'),(12,'crisp-bread-cake',1,'Botble\\Blog\\Models\\Category','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(13,'fashion',2,'Botble\\Blog\\Models\\Category','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(14,'electronic',3,'Botble\\Blog\\Models\\Category','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(15,'commercial',4,'Botble\\Blog\\Models\\Category','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(16,'organic-fruits',5,'Botble\\Blog\\Models\\Category','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(17,'ecological',6,'Botble\\Blog\\Models\\Category','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(18,'general',1,'Botble\\Blog\\Models\\Tag','tag','2025-09-05 17:59:12','2025-09-05 17:59:12'),(19,'design',2,'Botble\\Blog\\Models\\Tag','tag','2025-09-05 17:59:12','2025-09-05 17:59:12'),(20,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2025-09-05 17:59:12','2025-09-05 17:59:12'),(21,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2025-09-05 17:59:12','2025-09-05 17:59:12'),(22,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2025-09-05 17:59:12','2025-09-05 17:59:12'),(23,'nature',6,'Botble\\Blog\\Models\\Tag','tag','2025-09-05 17:59:12','2025-09-05 17:59:12'),(24,'vintage',7,'Botble\\Blog\\Models\\Tag','tag','2025-09-05 17:59:12','2025-09-05 17:59:12'),(25,'sunglasses',8,'Botble\\Blog\\Models\\Tag','tag','2025-09-05 17:59:12','2025-09-05 17:59:12'),(26,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',1,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(27,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',2,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(28,'the-top-2020-handbag-trends-to-know',3,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(29,'how-to-match-the-color-of-your-handbag-with-an-outfit',4,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(30,'how-to-care-for-leather-bags',5,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(31,'were-crushing-hard-on-summers-10-biggest-bag-trends',6,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(32,'essential-qualities-of-highly-successful-music',7,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(33,'9-things-i-love-about-shaving-my-head',8,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(34,'why-teamwork-really-makes-the-dream-work',9,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(35,'the-world-caters-to-average-people',10,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(36,'the-litigants-on-the-screen-are-not-actors',11,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(37,'hiring-the-right-sales-team-at-the-right-time',12,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(38,'fully-embrace-the-return-of-90s-fashion',13,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(39,'exploring-the-english-countryside',14,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(40,'heres-the-first-valentinos-new-makeup-collection',15,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(41,'follow-your-own-design-process-whatever-gets',16,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(42,'freelancer-days-2024-whats-new',17,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(43,'quality-foods-requirments-for-every-human-bodys',18,'Botble\\Blog\\Models\\Post','blog','2025-09-05 17:59:12','2025-09-05 17:59:12'),(44,'gopro',1,'Botble\\Marketplace\\Models\\Store','stores','2025-09-05 17:59:16','2025-09-05 17:59:16'),(45,'global-office',2,'Botble\\Marketplace\\Models\\Store','stores','2025-09-05 17:59:16','2025-09-05 17:59:16'),(46,'young-shop',3,'Botble\\Marketplace\\Models\\Store','stores','2025-09-05 17:59:16','2025-09-05 17:59:16'),(47,'global-store',4,'Botble\\Marketplace\\Models\\Store','stores','2025-09-05 17:59:16','2025-09-05 17:59:16'),(48,'roberts-store',5,'Botble\\Marketplace\\Models\\Store','stores','2025-09-05 17:59:16','2025-09-05 17:59:16'),(49,'stouffer',6,'Botble\\Marketplace\\Models\\Store','stores','2025-09-05 17:59:16','2025-09-05 17:59:16'),(50,'starkist',7,'Botble\\Marketplace\\Models\\Store','stores','2025-09-05 17:59:16','2025-09-05 17:59:16'),(51,'old-el-paso',8,'Botble\\Marketplace\\Models\\Store','stores','2025-09-05 17:59:16','2025-09-05 17:59:16'),(52,'discover-skincare',1,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(53,'clothing',2,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(54,'mens-clothing',3,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(55,'t-shirts',4,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(56,'jeans',5,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(57,'suits',6,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(58,'womens-clothing',7,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(59,'dresses',8,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(60,'blouses',9,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(61,'pants',10,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(62,'accessories',11,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(63,'hats',12,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(64,'scarves',13,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(65,'jewelry',14,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(66,'shoes',15,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(67,'sportswear',16,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(68,'running-shoes',17,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(69,'activewear',18,'Botble\\Ecommerce\\Models\\ProductCategory','product-categories','2025-09-05 17:59:17','2025-09-05 17:59:17'),(70,'vintage-denim-jacket',1,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(71,'floral-maxi-dress',2,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(72,'leather-ankle-boots',3,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(73,'knit-turtleneck-sweater-digital',4,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:22'),(74,'classic-aviator-sunglasses',5,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(75,'tailored-wool-blazer',6,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(76,'bohemian-fringe-handbag',7,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(77,'silk-scarf-with-geometric-print-digital',8,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:22'),(78,'high-waisted-wide-leg-trousers',9,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(79,'embroidered-boho-blouse',10,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(80,'statement-chunky-necklace',11,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(81,'chic-fedora-hat-digital',12,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:22'),(82,'strappy-block-heel-sandals',13,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(83,'velvet-evening-gown',14,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(84,'quilted-crossbody-bag',15,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(85,'distressed-skinny-jeans-digital',16,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:22'),(86,'lace-up-combat-boots',17,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(87,'cotton-striped-t-shirt-dress',18,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:18','2025-09-05 17:59:18'),(88,'printed-palazzo-pants',19,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(89,'structured-satchel-bag-digital',20,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:22'),(90,'off-shoulder-ruffle-top',21,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(91,'suede-pointed-toe-pumps',22,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(92,'cropped-cable-knit-sweater',23,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(93,'athleisure-jogger-pants-digital',24,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:22'),(94,'leopard-print-midi-skirt',25,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(95,'retro-cat-eye-sunglasses',26,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(96,'faux-fur-trimmed-coat',27,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(97,'boho-fringed-kimono-digital',28,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:22'),(98,'ruffled-wrap-dress',29,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(99,'beaded-evening-clutch',30,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(100,'wide-brim-floppy-hat',31,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(101,'denim-overall-jumpsuit-digital',32,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:22'),(102,'embellished-ballet-flats',33,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(103,'pleated-midi-skirt',34,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(104,'velour-tracksuit-set',35,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(105,'geometric-patterned-cardigan-digital',36,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:22'),(106,'buckle-detail-ankle-booties',37,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(107,'embroidered-bomber-jacket',38,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(108,'cowl-neck-knit-poncho',39,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(109,'chunky-knit-infinity-scarf-digital',40,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:22'),(110,'retro-high-top-sneakers',41,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(111,'faux-leather-leggings',42,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(112,'metallic-pleated-maxi-skirt',43,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:19','2025-09-05 17:59:19'),(113,'radiant-reflections',1,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-05 17:59:21','2025-09-05 17:59:21'),(114,'glamour-grove',2,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-05 17:59:21','2025-09-05 17:59:21'),(115,'serene-styles-showcase',3,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-05 17:59:21','2025-09-05 17:59:21'),(116,'allure-alcove',4,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-05 17:59:21','2025-09-05 17:59:21'),(117,'glamour-galleria',5,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-05 17:59:21','2025-09-05 17:59:21'),(118,'beauty-boulevard',6,'Botble\\Gallery\\Models\\Gallery','galleries','2025-09-05 17:59:21','2025-09-05 17:59:21'),(119,'home',1,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(120,'categories',2,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(121,'coupons',3,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(122,'brands',4,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(123,'coupons',5,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(124,'blog',6,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(125,'contact',7,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(126,'faqs',8,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(127,'cookie-policy',9,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(128,'our-story',10,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(129,'careers',11,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(130,'shipping',12,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(131,'coming-soon',13,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(132,'return-policy',14,'Botble\\Page\\Models\\Page','','2025-09-05 17:59:21','2025-09-05 17:59:21'),(133,'floral-maxi-dress',44,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(134,'knit-turtleneck-sweater-digital',45,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(135,'knit-turtleneck-sweater-digital',46,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(136,'knit-turtleneck-sweater-digital',47,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(137,'knit-turtleneck-sweater-digital',48,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(138,'knit-turtleneck-sweater-digital',49,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(139,'strappy-block-heel-sandals',50,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(140,'strappy-block-heel-sandals',51,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(141,'velvet-evening-gown',52,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(142,'velvet-evening-gown',53,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(143,'quilted-crossbody-bag',54,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(144,'cotton-striped-t-shirt-dress',55,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(145,'cotton-striped-t-shirt-dress',56,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(146,'printed-palazzo-pants',57,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(147,'printed-palazzo-pants',58,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(148,'cropped-cable-knit-sweater',59,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(149,'athleisure-jogger-pants-digital',60,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(150,'athleisure-jogger-pants-digital',61,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(151,'athleisure-jogger-pants-digital',62,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(152,'retro-cat-eye-sunglasses',63,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(153,'retro-cat-eye-sunglasses',64,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(154,'retro-cat-eye-sunglasses',65,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(155,'boho-fringed-kimono-digital',66,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(156,'boho-fringed-kimono-digital',67,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(157,'ruffled-wrap-dress',68,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(158,'ruffled-wrap-dress',69,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(159,'ruffled-wrap-dress',70,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(160,'ruffled-wrap-dress',71,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(161,'ruffled-wrap-dress',72,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(162,'beaded-evening-clutch',73,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(163,'beaded-evening-clutch',74,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(164,'velour-tracksuit-set',75,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(165,'velour-tracksuit-set',76,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(166,'geometric-patterned-cardigan-digital',77,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(167,'geometric-patterned-cardigan-digital',78,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(168,'geometric-patterned-cardigan-digital',79,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(169,'geometric-patterned-cardigan-digital',80,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(170,'buckle-detail-ankle-booties',81,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(171,'buckle-detail-ankle-booties',82,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(172,'buckle-detail-ankle-booties',83,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(173,'buckle-detail-ankle-booties',84,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(174,'cowl-neck-knit-poncho',85,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(175,'cowl-neck-knit-poncho',86,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22'),(176,'chunky-knit-infinity-scarf-digital',87,'Botble\\Ecommerce\\Models\\Product','products','2025-09-05 17:59:22','2025-09-05 17:59:22');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_logins`
--

DROP TABLE IF EXISTS `social_logins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_logins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci,
  `refresh_token` text COLLATE utf8mb4_unicode_ci,
  `token_expires_at` timestamp NULL DEFAULT NULL,
  `provider_data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `social_logins_provider_provider_id_unique` (`provider`,`provider_id`),
  KEY `social_logins_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `social_logins_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_logins`
--

LOCK TABLES `social_logins` WRITE;
/*!40000 ALTER TABLE `social_logins` DISABLE KEYS */;
/*!40000 ALTER TABLE `social_logins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` bigint unsigned DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`),
  KEY `idx_states_name` (`name`),
  KEY `idx_states_status` (`status`),
  KEY `idx_states_country_id` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` bigint unsigned NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`),
  KEY `idx_states_trans_state_lang` (`states_id`,`lang_code`),
  KEY `idx_states_trans_name` (`name`),
  KEY `idx_states_trans_states_id` (`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'General',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-05 17:59:12','2025-09-05 17:59:12'),(2,'Design',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-05 17:59:12','2025-09-05 17:59:12'),(3,'Fashion',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-05 17:59:12','2025-09-05 17:59:12'),(4,'Branding',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-05 17:59:12','2025-09-05 17:59:12'),(5,'Modern',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-05 17:59:12','2025-09-05 17:59:12'),(6,'Nature',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-05 17:59:12','2025-09-05 17:59:12'),(7,'Vintage',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-05 17:59:12','2025-09-05 17:59:12'),(8,'Sunglasses',1,'Botble\\ACL\\Models\\User',NULL,'published','2025-09-05 17:59:12','2025-09-05 17:59:12');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
INSERT INTO `testimonials` VALUES (1,'James Dopli','Thanks for all your efforts and teamwork over the last several months!  Thank you so much','main/users/5.jpg','Developer','published','2025-09-05 17:59:16','2025-09-05 17:59:16'),(2,'Theodore Handle','How you use the city or town name is up to you. All results may be freely used in any work.','main/users/8.jpg','CO Founder','published','2025-09-05 17:59:16','2025-09-05 17:59:16'),(3,'Shahnewaz Sakil','Very happy with our choice to take our daughter to Brave care. The entire team was great! Thank you!','main/users/3.jpg','UI/UX Designer','published','2025-09-05 17:59:16','2025-09-05 17:59:16'),(4,'Albert Flores','Wedding day savior! 5 stars. Their bridal collection is a game-changer. Made me feel like a star.','main/users/5.jpg','Bank of America','published','2025-09-05 17:59:16','2025-09-05 17:59:16');
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials_translations`
--

DROP TABLE IF EXISTS `testimonials_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimonials_translations` (
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonials_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `company` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`testimonials_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials_translations`
--

LOCK TABLES `testimonials_translations` WRITE;
/*!40000 ALTER TABLE `testimonials_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_meta` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_settings_user_type_user_id_key_unique` (`user_type`,`user_id`,`key`),
  KEY `user_settings_user_type_user_id_index` (`user_type`,`user_id`),
  KEY `user_settings_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` bigint unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'mabel.powlowski@ferry.biz',NULL,NULL,'$2y$12$mnLgAmQQg5sm81jpx7HGsuw1B/TM5bqNbuxOpDeB/jvxgYeWfVxx6',NULL,'2025-09-05 17:59:05','2025-09-05 17:59:05','Kailee','Schmeler','admin',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `widgets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'SiteInfoWidget','footer_primary_sidebar','shofy-beauty',1,'{\"id\":\"SiteInfoWidget\",\"logo\":\"main\\/general\\/logo.png\",\"logo_height\":50,\"about\":\"Shofy is a powerful tool eCommerce Laravel script for creating a professional and visually appealing online store.\",\"show_social_links\":true}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(2,'CustomMenuWidget','footer_primary_sidebar','shofy-beauty',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Account\",\"menu_id\":\"my-account\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(3,'CustomMenuWidget','footer_primary_sidebar','shofy-beauty',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Information\",\"menu_id\":\"information\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(4,'SiteContactWidget','footer_primary_sidebar','shofy-beauty',4,'{\"id\":\"SiteContactWidget\",\"name\":\"Talk To Us\",\"phone_label\":\"Got Questions? Call us\",\"phone\":\"+670 413 90 762\",\"email\":\"support@shofy.com\",\"address\":\"79 Sleepy Hollow St. Jamaica, New York 1432\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(5,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',5,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Health & Beauty\",\"categories\":[5,6,7,8,10,11,12]}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(6,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',7,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Electronics\",\"style\":\"simple-text\",\"categories\":[3,4,15,18,19,20]}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(7,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',8,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Sweet Treats\",\"categories\":[11,12,13,14,15,16,17]}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(8,'ProductCategoriesWidget','footer_primary_sidebar','shofy-beauty',9,'{\"id\":\"ProductCategoriesWidget\",\"name\":\"Fashion\",\"categories\":[1,2,3,4,5,6,7,8]}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(9,'NewsletterWidget','footer_top_sidebar','shofy-beauty',1,'{\"id\":\"NewsletterWidget\",\"title\":\"Subscribe our Newsletter\",\"subtitle\":\"Sale 20% off all store\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(10,'SiteCopyrightWidget','footer_bottom_sidebar','shofy-beauty',1,'{\"id\":\"SiteCopyrightWidget\",\"content\":\"\\u00a9 %y% All rights Reserved.\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(11,'SiteAcceptedPaymentsWidget','footer_bottom_sidebar','shofy-beauty',2,'{\"id\":\"SiteAcceptedPaymentsWidget\",\"name\":\"Accepted Payments\",\"image\":\"main\\/general\\/footer-pay.png\",\"url\":\"#\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(12,'BlogSearchWidget','blog_sidebar','shofy-beauty',1,'{\"id\":\"BlogSearchWidget\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(13,'BlogAboutMeWidget','blog_sidebar','shofy-beauty',2,'{\"id\":\"BlogAboutMeWidget\",\"name\":\"About Me\",\"author_url\":\"\\/blog\",\"author_avatar\":\"main\\/users\\/3.jpg\",\"author_name\":\"Ravi O\'Leigh\",\"author_role\":\"Photographer & Blogger\",\"author_description\":\"Lorem ligula eget dolor. Aenean massa. Cum sociis que penatibus magnis dis parturient\",\"author_signature\":\"main\\/general\\/signature.png\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(14,'BlogPostsWidget','blog_sidebar','shofy-beauty',3,'{\"id\":\"BlogPostsWidget\",\"name\":\"Latest Posts\",\"limit\":3}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(15,'BlogCategoriesWidget','blog_sidebar','shofy-beauty',4,'{\"id\":\"BlogCategoriesWidget\",\"name\":\"Categories\",\"number_display\":6}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(16,'BlogTagsWidget','blog_sidebar','shofy-beauty',5,'{\"id\":\"BlogTagsWidget\",\"name\":\"Popular Tags\",\"number_display\":6}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(17,'ProductDetailInfoWidget','product_details_sidebar','shofy-beauty',1,'{\"id\":\"ProductDetailInfoWidget\",\"messages\":[[{\"key\":\"message\",\"value\":\"30 days easy returns\"}],[{\"key\":\"message\",\"value\":\"Order yours before 2.30pm for same day dispatch\"}]],\"description\":\"Guaranteed safe & secure checkout\",\"image\":\"main\\/general\\/footer-pay.png\"}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(18,'EcommerceBrands','products_listing_top_sidebar','shofy-beauty',1,'{\"id\":\"EcommerceBrands\",\"brand_ids\":[1,2,3,4,5]}','2025-09-05 17:59:22','2025-09-05 17:59:22'),(19,'ProductCategoriesWidget','products_listing_top_sidebar','shofy-beauty',2,'{\"id\":\"ProductCategoriesWidget\",\"categories\":[1,2,7,11,15,17],\"style\":\"grid\",\"display_children\":true}','2025-09-05 17:59:22','2025-09-05 17:59:22');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-06  7:59:24
