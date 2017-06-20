CREATE DATABASE  IF NOT EXISTS `laravel_pages` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `laravel_pages`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: laravel_pages
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'\n{\n    \"resize\": {\n        \"width\": \"1000\",\n        \"height\": \"null\"\n    },\n    \"quality\": \"70%\",\n    \"upsize\": true,\n    \"thumbnails\": [\n        {\n            \"name\": \"medium\",\n            \"scale\": \"50%\"\n        },\n        {\n            \"name\": \"small\",\n            \"scale\": \"25%\"\n        },\n        {\n            \"name\": \"cropped\",\n            \"crop\": {\n                \"width\": \"300\",\n                \"height\": \"250\"\n            }\n        }\n    ]\n}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'\n{\n    \"slugify\": {\n        \"origin\": \"title\",\n        \"forceUpdate\": true\n    }\n}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'\n{\n    \"default\": \"DRAFT\",\n    \"options\": {\n        \"PUBLISHED\": \"published\",\n        \"DRAFT\": \"draft\",\n        \"PENDING\": \"pending\"\n    }\n}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',1,0,0,1,1,0,'',4),(30,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(31,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(32,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(33,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(34,5,'id','number','id',1,0,0,0,0,0,'',1),(35,5,'name','text','name',1,1,1,1,1,1,'',2),(36,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(37,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(38,4,'id','number','id',1,0,0,0,0,0,'',1),(39,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(40,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(41,4,'name','text','name',1,1,1,1,1,1,'',4),(42,4,'slug','text','slug',1,1,1,1,1,1,'',5),(43,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(44,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(45,6,'id','number','id',1,0,0,0,0,0,'',1),(46,6,'name','text','Name',1,1,1,1,1,1,'',2),(47,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(48,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(49,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(50,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(51,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(52,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(53,7,'id','number','Id',1,0,0,0,0,0,NULL,2),(54,7,'name','text','Name',1,1,1,1,1,1,NULL,3),(55,7,'description','text_area','Description',1,1,1,1,1,1,NULL,4),(56,7,'domain','text','Domain',1,1,1,1,1,1,NULL,6),(57,7,'template','text','Template',1,1,1,1,1,1,NULL,7),(58,7,'rwd_template','checkbox','Rwd Template',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',8),(59,7,'enabled','checkbox','Enabled',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',9),(61,7,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,10),(62,7,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,11),(63,8,'id','number','Id',1,0,0,0,0,0,NULL,2),(64,8,'name','text','Name',1,1,1,1,1,1,NULL,3),(65,8,'value','text_area','Value',1,1,1,1,1,1,NULL,4),(66,8,'global','checkbox','Global',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',5),(67,8,'projects_id','select_dropdown','Select project',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',1),(68,8,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(69,8,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,7),(70,7,'image','image','Image',0,1,1,1,1,1,NULL,5),(71,7,'services_id','select_dropdown','Select service',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',1),(72,11,'id','number','Id',1,1,0,0,0,0,NULL,1),(73,11,'name','text','Name',1,1,1,1,1,1,NULL,2),(74,11,'description','text_area','Description',1,1,1,1,1,1,NULL,3),(75,11,'image','image','Image',0,1,1,1,1,1,NULL,4),(76,11,'icon','text','Icon',0,1,1,1,1,1,NULL,5),(77,11,'enabled','checkbox','Enabled',1,1,1,1,1,1,NULL,6),(78,11,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,7),(79,11,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,8);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(7,'projects','projects','Project','Projects','voyager-archive','App\\Models\\Project',NULL,'Here you can manage yours Projects',1,0,'2017-05-29 19:43:39','2017-05-29 20:58:14'),(8,'projects_settings','projects-settings','Projects Setting','Projects Settings','voyager-window-list','App\\Models\\ProjectsSetting',NULL,NULL,1,0,'2017-05-29 20:03:41','2017-05-29 20:03:41'),(11,'services','services','Service','Services',NULL,'App\\Models\\Service',NULL,NULL,1,0,'2017-06-02 20:52:24','2017-06-02 20:52:24');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','/admin','_self','voyager-boat',NULL,NULL,1,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL,NULL),(2,1,'Media','/admin/media','_self','voyager-images',NULL,NULL,5,'2017-05-29 17:24:16','2017-06-02 20:58:54',NULL,NULL),(4,1,'Users','/admin/users','_self','voyager-person',NULL,NULL,7,'2017-05-29 17:24:16','2017-06-02 20:58:54',NULL,NULL),(7,1,'Roles','/admin/roles','_self','voyager-lock',NULL,NULL,6,'2017-05-29 17:24:16','2017-06-02 20:58:54',NULL,NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,9,'2017-05-29 17:24:16','2017-06-02 20:58:54',NULL,NULL),(9,1,'Menu Builder','/admin/menus','_self','voyager-list',NULL,8,1,'2017-05-29 17:24:16','2017-05-29 19:46:19',NULL,NULL),(10,1,'Database','/admin/database','_self','voyager-data',NULL,8,2,'2017-05-29 17:24:16','2017-05-29 19:46:19',NULL,NULL),(11,1,'Settings','/admin/settings','_self','voyager-settings',NULL,NULL,8,'2017-05-29 17:24:16','2017-06-02 20:58:54',NULL,NULL),(12,1,'Projects','admin/projects','_self','voyager-archive','#0080ff',NULL,3,'2017-05-29 19:45:11','2017-06-02 20:58:54',NULL,''),(13,1,'Projects Settings','admin/projects-settings','_self','voyager-window-list','#000000',NULL,4,'2017-05-29 20:26:24','2017-06-02 20:58:54',NULL,''),(14,1,'Services','/admin/services','_self','voyager-world','#008000',NULL,2,'2017-06-02 20:58:00','2017-06-02 20:58:54',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2017-05-29 17:24:16','2017-05-29 17:24:16');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1),(20,'2017_04_21_000000_add_order_to_data_rows_table',1),(21,'2017_04_14_184649_create_projects_table',2),(22,'2017_04_14_221244_create_projects_settings_table',2),(23,'2017_05_01_164424_create_routes_table',2),(24,'2017_05_29_230253_create_services_table',3),(25,'2017_05_29_230419_modifity_projects_table',4),(28,'2017_05_30_065536_modify_services_table',5),(29,'2017_05_30_065708_modify_projects_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(1,4),(2,1),(2,4),(3,1),(3,3),(3,4),(4,1),(4,3),(5,1),(5,4),(6,1),(6,4),(7,1),(7,4),(8,1),(8,4),(9,1),(9,4),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(20,3),(21,1),(21,3),(22,1),(22,3),(23,1),(23,3),(24,1),(24,3),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(35,3),(35,4),(36,1),(36,3),(36,4),(37,1),(37,3),(37,4),(38,1),(38,3),(38,4),(39,1),(39,3),(39,4),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(2,'browse_database',NULL,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(3,'browse_media',NULL,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(4,'browse_settings',NULL,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(5,'browse_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(6,'read_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(7,'edit_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(8,'add_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(9,'delete_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(10,'browse_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(11,'read_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(12,'edit_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(13,'add_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(14,'delete_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(15,'browse_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(16,'read_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(17,'edit_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(18,'add_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(19,'delete_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(20,'browse_users','users','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(21,'read_users','users','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(22,'edit_users','users','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(23,'add_users','users','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(24,'delete_users','users','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(25,'browse_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(26,'read_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(27,'edit_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(28,'add_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(29,'delete_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(30,'browse_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(31,'read_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(32,'edit_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(33,'add_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(34,'delete_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(35,'browse_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(36,'read_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(37,'edit_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(38,'add_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(39,'delete_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(40,'browse_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(41,'read_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(42,'edit_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(43,'add_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(44,'delete_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(45,'browse_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(46,'read_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(47,'edit_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(48,'add_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(49,'delete_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `domain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rwd_template` tinyint(1) NOT NULL DEFAULT '0',
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `services_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_domain_unique` (`domain`),
  UNIQUE KEY `projects_services_id_name_unique` (`services_id`,`name`),
  CONSTRAINT `projects_services_id_foreign` FOREIGN KEY (`services_id`) REFERENCES `services` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects_settings`
--

DROP TABLE IF EXISTS `projects_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `global` tinyint(1) NOT NULL DEFAULT '0',
  `projects_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_settings_name_projects_id_unique` (`name`,`projects_id`),
  KEY `projects_settings_projects_id_foreign` (`projects_id`),
  CONSTRAINT `projects_settings_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects_settings`
--

LOCK TABLES `projects_settings` WRITE;
/*!40000 ALTER TABLE `projects_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2017-05-29 17:24:16','2017-05-29 17:24:16'),(2,'user','Normal User','2017-05-29 17:24:16','2017-05-29 17:24:16'),(3,'manager','Manager','2017-05-29 19:48:44','2017-05-29 19:48:44'),(4,'developer','Developer','2017-05-29 19:49:34','2017-05-29 19:49:34');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `projects_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `routes_projects_id_path_unique` (`projects_id`,`path`),
  CONSTRAINT `routes_projects_id_foreign` FOREIGN KEY (`projects_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'title','Site Title','Saxer Webservices',NULL,'text',0),(2,'description','Site description','Welkome to Saxer Webservices manager',NULL,'text',1),(3,'logo','Site logo','',NULL,'image',4),(5,'admin_title','Admin Title','Saxer Webservices',NULL,'text',2),(6,'admin_description','Admin description','Welkome to Saxer Webservices manager',NULL,'text',3),(7,'admin_loader','Admin loader','settings/May2017/HlhPvujjaOuzifxWOmlz.gif',NULL,'image',5),(8,'admin_icon_image','Admin icon','',NULL,'image',6),(9,'admin_bg_image','Admin background','settings/May2017/92JuqPlhJ3lwUsUJeVsv.jpg',NULL,'image',7);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Grzegorz','grzegorz.jaworski@omnea.de','users/May2017/wNkxeirYkmcHrRkTP2J6.jpg','$2y$10$T9P99G.jTf2IguBentVgLuCMJW9OGy7im8uCCLh9QeUFmf8dvS7IW','4ZbHDRJpW7IisrEG8nxuCHmqg6510kZ8DBUH23QWxsiRtZqwiRd6eYV6F5p2','2017-05-29 17:25:10','2017-05-29 19:53:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'laravel_pages'
--

--
-- Dumping routines for database 'laravel_pages'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-20  8:55:57
