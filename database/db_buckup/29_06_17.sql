CREATE DATABASE  IF NOT EXISTS `saxer` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `saxer`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: saxer
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
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'\n{\n    \"resize\": {\n        \"width\": \"1000\",\n        \"height\": \"null\"\n    },\n    \"quality\": \"70%\",\n    \"upsize\": true,\n    \"thumbnails\": [\n        {\n            \"name\": \"medium\",\n            \"scale\": \"50%\"\n        },\n        {\n            \"name\": \"small\",\n            \"scale\": \"25%\"\n        },\n        {\n            \"name\": \"cropped\",\n            \"crop\": {\n                \"width\": \"300\",\n                \"height\": \"250\"\n            }\n        }\n    ]\n}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'\n{\n    \"slugify\": {\n        \"origin\": \"title\",\n        \"forceUpdate\": true\n    }\n}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'\n{\n    \"default\": \"DRAFT\",\n    \"options\": {\n        \"PUBLISHED\": \"published\",\n        \"DRAFT\": \"draft\",\n        \"PENDING\": \"pending\"\n    }\n}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',1,0,0,1,1,0,'',4),(30,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(31,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(32,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(33,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(34,5,'id','number','id',1,0,0,0,0,0,'',1),(35,5,'name','text','name',1,1,1,1,1,1,'',2),(36,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(37,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(38,4,'id','number','id',1,0,0,0,0,0,'',1),(39,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(40,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(41,4,'name','text','name',1,1,1,1,1,1,'',4),(42,4,'slug','text','slug',1,1,1,1,1,1,'',5),(43,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(44,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(45,6,'id','number','id',1,0,0,0,0,0,'',1),(46,6,'name','text','Name',1,1,1,1,1,1,'',2),(47,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(48,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(49,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(50,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(51,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(52,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(53,7,'id','number','Id',1,0,0,0,0,0,NULL,2),(54,7,'name','text','Name',1,1,1,1,1,1,NULL,3),(55,7,'description','text_area','Description',1,1,1,1,1,1,NULL,4),(56,7,'domain','text','Domain',1,1,1,1,1,1,NULL,7),(57,7,'template','text','Template',1,1,1,1,1,1,NULL,8),(58,7,'rwd_template','checkbox','Rwd Template',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',9),(59,7,'enabled','checkbox','Enabled',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',10),(61,7,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,11),(62,7,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,12),(63,8,'id','number','Id',1,0,0,0,0,0,NULL,2),(64,8,'name','text','Name',1,1,1,1,1,1,NULL,3),(65,8,'value','text_area','Value',1,1,1,1,1,1,NULL,4),(66,8,'global','checkbox','Global',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',5),(67,8,'projects_id','select_dropdown','Select project',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',1),(68,8,'created_at','timestamp','Created At',0,1,1,0,0,0,NULL,6),(69,8,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,7),(70,7,'image','image','Image',0,1,1,1,1,1,NULL,5),(71,7,'services_id','select_dropdown','Select service',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',1),(72,11,'id','number','Id',1,1,0,0,0,0,NULL,1),(73,11,'name','text','Name',1,1,1,1,1,1,NULL,2),(74,11,'description','text_area','Description',1,1,1,1,1,1,NULL,3),(75,11,'image','image','Image',0,1,1,1,1,1,NULL,4),(76,11,'icon','image','Icon',0,1,1,1,1,1,NULL,5),(77,11,'enabled','checkbox','Enabled',1,1,1,1,1,1,NULL,6),(78,11,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,7),(79,11,'updated_at','timestamp','Updated At',0,1,1,0,0,0,NULL,8),(80,15,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(81,15,'path','text','Path',1,1,1,1,1,1,NULL,3),(82,15,'name','text','Name',1,1,1,1,1,1,NULL,4),(83,15,'controller','text','Controller',1,1,1,1,1,1,NULL,5),(84,15,'view','text','View',1,1,1,1,1,1,NULL,6),(85,15,'projects_id','select_dropdown','Projects Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(86,15,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,7),(87,15,'updated_at','timestamp','Updated At',0,1,0,0,0,0,NULL,8),(88,7,'icon','image','Icon',0,1,1,1,1,1,NULL,6),(89,16,'id','number','Id',1,0,0,0,0,0,NULL,1),(91,16,'path','text','Path',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"max:255\",\"messages\":{\"max\":\"This field will have maximum :max letters.\"}},\"description\":\"Give yours custom route. You should use parameter: {id} or {slug} - for identify a site or {id} & {collection} - for identify a collection.\"}',4),(92,16,'controller','select_dropdown','Type',0,1,1,1,1,1,'{\"default\":\"singlepage\",\"options\":{\"singlepage\":\"singlepage\",\"collection\":\"collection\"}}',5),(93,16,'view','select_dropdown','View',1,1,1,1,1,1,'{\"default\":\"welcome\",\"options\":{\"storefinder\":\"storefinder\",\"locationpage\":\"locationpage\",\"welcome\":\"welcome\"},\"description\":\"Select default view for this route, this view can be custom for a single site.\"}',6),(94,16,'slug','text','Slug',0,1,1,1,1,1,'{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true}}',3),(95,16,'title','text','Title',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:30\",\"messages\":{\"required\":\"Field :attribute is a required.\",\"max\":\"This field will have maximum :max letters.\"}}}',2),(97,16,'enabled','checkbox','Enabled',1,1,1,1,1,1,NULL,9),(98,16,'projects_id','select_dropdown','Projects Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',7),(99,16,'owner_id','select_dropdown','Owner Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',8),(100,16,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,10),(101,16,'updated_at','timestamp','Updated At',0,1,0,0,0,0,NULL,11),(102,19,'id','number','Id',1,1,0,0,0,0,NULL,1),(103,19,'name','text','Name',1,1,1,1,1,1,NULL,2),(104,19,'order','number','Order',0,1,1,1,1,1,NULL,3),(105,19,'options','code_editor','Options',1,1,1,1,1,1,NULL,4),(106,19,'enabled','checkbox','Enabled',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',6),(107,19,'rwd_desktop','checkbox','Rwd Desktop',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',7),(108,19,'rwd_tablet','checkbox','Rwd Tablet',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',8),(109,19,'rwd_mobile','checkbox','Rwd Mobile',1,1,1,1,1,1,'{\"on\":\"enabled\",\"off\":\"disabled\",\"checked\":\"\"}',9),(110,19,'sites_id','select_dropdown','Sites Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',5),(111,19,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,10),(112,19,'updated_at','timestamp','Updated At',0,1,0,0,0,0,NULL,11),(113,20,'id','number','Id',1,1,0,0,0,0,NULL,1),(114,20,'name','text','Name',1,1,1,1,1,1,NULL,2),(115,20,'value','text_area','Value',1,1,1,1,1,1,NULL,3),(116,20,'sites_id','select_dropdown','Sites Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',4),(117,20,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,5),(118,20,'updated_at','timestamp','Updated At',0,1,0,0,0,0,NULL,6),(119,21,'id','number','Id',1,1,0,0,0,0,NULL,1),(120,21,'path','text','Path',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:222\",\"messages\":{\"required\":\"Field :attribute is a required.\",\"max\":\"This field will have maximum :max letters.\"}}}',3),(121,21,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:30\",\"messages\":{\"required\":\"Field :attribute is a required.\",\"max\":\"This field will have maximum :max letters.\"}}}',2),(122,21,'controller','select_dropdown','Controller',1,1,1,1,1,1,'{\"default\":\"singlepage\",\"options\":{\"singlepage\":\"singlepage\",\"collection\":\"collection\"}}',4),(123,21,'view','select_dropdown','View',1,1,1,1,1,1,'{\"default\":\"welcome\",\"options\":{\"storefinder\":\"storefinder\",\"locationpage\":\"locationpage\",\"welcome\":\"welcome\"}}',5),(124,21,'projects_id','select_dropdown','Projects Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',6),(125,21,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,7),(126,21,'updated_at','timestamp','Updated At',0,1,0,0,0,0,NULL,8),(127,22,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(128,22,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:30\",\"messages\":{\"required\":\"Field :attribute is a required.\",\"max\":\"This field will have maximum :max letters.\"}}}',3),(130,22,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,7),(131,22,'updated_at','timestamp','Updated At',0,1,0,0,0,0,NULL,8),(137,25,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(138,25,'name','text','Name',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:30\",\"messages\":{\"required\":\"Field :attribute is a required.\",\"max\":\"This field will have maximum :max letters.\"}}}',2),(139,25,'templates_id','select_dropdown','Templates Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"page_slug\":\"admin/templates\"}}',3),(140,25,'created_at','timestamp','Created At',0,1,0,0,0,0,NULL,4),(141,25,'updated_at','timestamp','Updated At',0,1,0,0,0,0,NULL,5),(142,22,'description','text_area','Description',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"max:255\",\"messages\":{\"max\":\"This field will have maximum :max letters.\"}}}',4),(143,22,'directory','text','Directory',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:255\",\"messages\":{\"required\":\"Field :attribute is a required.\",\"max\":\"This field will have maximum :max letters.\"}}}',5),(144,22,'services_id','select_dropdown','Services Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"name\",\"page_slug\":\"admin/services\"}}',6),(145,22,'img','image','Img',1,1,1,1,1,1,NULL,2);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role','','',1,0,'2017-05-29 17:24:16','2017-05-29 17:24:16'),(7,'projects','projects','Project','Projects','voyager-archive','App\\Models\\Project',NULL,'Here you can manage yours Projects',1,0,'2017-05-29 19:43:39','2017-05-29 20:58:14'),(8,'projects_settings','projects-settings','Projects Setting','Projects Settings','voyager-window-list','App\\Models\\ProjectsSetting',NULL,NULL,1,0,'2017-05-29 20:03:41','2017-05-29 20:03:41'),(11,'services','services','Service','Services',NULL,'App\\Models\\Service',NULL,NULL,1,0,'2017-06-02 20:52:24','2017-06-02 20:52:24'),(15,'routes','routes','Route','Routes',NULL,'App\\Models\\Route',NULL,NULL,1,0,'2017-06-20 13:25:21','2017-06-20 13:26:31'),(16,'sites','sites','Site','Sites',NULL,'App\\Models\\Site',NULL,NULL,1,0,'2017-06-22 10:32:45','2017-06-22 10:32:45'),(19,'sites_modules','sites-modules','Sites Module','Sites Modules',NULL,'App\\Models\\SitesModules',NULL,NULL,1,0,'2017-06-22 10:44:08','2017-06-22 10:44:08'),(20,'sites_settings','sites-settings','Sites Setting','Sites Settings',NULL,'App\\Models\\SitesSettings',NULL,NULL,1,0,'2017-06-22 10:44:32','2017-06-22 10:44:32'),(21,'projects_routes','projects-routes','Projects Route','Projects Routes',NULL,'App\\Models\\ProjectsRoute',NULL,NULL,1,0,'2017-06-22 13:07:47','2017-06-23 09:00:35'),(22,'templates','templates','Template','Templates',NULL,'App\\Models\\Template',NULL,NULL,1,0,'2017-06-29 17:39:57','2017-06-29 17:39:57'),(25,'templates_views','templates-views','Templates View','Templates Views',NULL,'App\\Models\\TemplatesView',NULL,NULL,1,0,'2017-06-29 19:22:57','2017-06-29 19:22:57');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','/admin','_self','voyager-boat',NULL,NULL,1,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL,NULL),(4,1,'Users','/admin/users','_self','voyager-person',NULL,NULL,12,'2017-05-29 17:24:16','2017-06-29 18:24:43',NULL,NULL),(7,1,'Roles','/admin/roles','_self','voyager-lock',NULL,NULL,11,'2017-05-29 17:24:16','2017-06-29 18:24:43',NULL,NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,14,'2017-05-29 17:24:16','2017-06-29 18:24:43',NULL,NULL),(9,1,'Menu Builder','/admin/menus','_self','voyager-list',NULL,8,1,'2017-05-29 17:24:16','2017-05-29 19:46:19',NULL,NULL),(10,1,'Database','/admin/database','_self','voyager-data',NULL,8,2,'2017-05-29 17:24:16','2017-05-29 19:46:19',NULL,NULL),(11,1,'Settings','/admin/settings','_self','voyager-settings',NULL,NULL,13,'2017-05-29 17:24:16','2017-06-29 18:24:43',NULL,NULL),(12,1,'Projects','admin/projects','_self','voyager-archive','#0080ff',NULL,3,'2017-05-29 19:45:11','2017-06-02 20:58:54',NULL,''),(13,1,'Projects Settings','admin/projects-settings','_self','voyager-window-list','#000000',NULL,4,'2017-05-29 20:26:24','2017-06-20 13:30:04',NULL,''),(14,1,'Services','/admin/services','_self','voyager-world','#008000',NULL,2,'2017-06-02 20:58:00','2017-06-02 20:58:54',NULL,''),(15,1,'Projects Routes','/admin/projects-routes','_self','voyager-milestone','#061fb6',NULL,5,'2017-06-20 13:29:05','2017-06-22 13:11:06',NULL,''),(17,1,'Sites','/admin/sites','_self','voyager-receipt','#000000',NULL,6,'2017-06-22 10:53:51','2017-06-22 10:54:03',NULL,''),(18,1,'Sites Modules','/admin/sites-modules','_self','voyager-puzzle','#000000',NULL,7,'2017-06-22 10:55:27','2017-06-22 10:56:27',NULL,''),(19,1,'Sites Settings','/admin/sites-settings','_self','voyager-list','#000000',NULL,8,'2017-06-22 10:57:44','2017-06-22 10:57:52',NULL,''),(20,1,'Templates','admin/templates','_self','voyager-html5','#000000',NULL,9,'2017-06-29 18:21:39','2017-06-29 18:24:40',NULL,''),(21,1,'Views','admin/templates-views','_self','voyager-css3','#000000',NULL,10,'2017-06-29 18:21:39','2017-06-29 18:24:43',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2017-05-29 17:24:16','2017-05-29 17:24:16');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1),(20,'2017_04_21_000000_add_order_to_data_rows_table',1),(21,'2017_04_14_184649_create_projects_table',2),(22,'2017_04_14_221244_create_projects_settings_table',2),(23,'2017_05_01_164424_create_routes_table',2),(24,'2017_05_29_230253_create_services_table',3),(25,'2017_05_29_230419_modifity_projects_table',4),(28,'2017_05_30_065536_modify_services_table',5),(29,'2017_05_30_065708_modify_projects_table',5),(30,'2017_06_22_084933_create_sites_table',6),(31,'2017_06_22_084956_create_sites_settings_table',6),(32,'2017_06_22_094040_create_sites_modules_table',6),(34,'2017_06_22_144431_create_projects_routes_table',7),(41,'2017_06_28_221125_create_templates_table',8),(42,'2017_06_28_221246_create_templates_views_table',8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,3),(1,4),(2,1),(2,4),(3,1),(3,3),(3,4),(4,1),(4,3),(5,1),(5,4),(6,1),(6,4),(7,1),(7,4),(8,1),(8,4),(9,1),(9,4),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(20,3),(21,1),(21,3),(22,1),(22,3),(23,1),(23,3),(24,1),(24,3),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(35,3),(35,4),(36,1),(36,3),(36,4),(37,1),(37,3),(37,4),(38,1),(38,3),(38,4),(39,1),(39,3),(39,4),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(2,'browse_database',NULL,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(3,'browse_media',NULL,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(4,'browse_settings',NULL,'2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(5,'browse_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(6,'read_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(7,'edit_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(8,'add_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(9,'delete_menus','menus','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(10,'browse_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(11,'read_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(12,'edit_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(13,'add_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(14,'delete_pages','pages','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(15,'browse_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(16,'read_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(17,'edit_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(18,'add_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(19,'delete_roles','roles','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(20,'browse_users','users','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(21,'read_users','users','2017-05-29 17:24:16','2017-05-29 17:24:16',NULL),(22,'edit_users','users','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(23,'add_users','users','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(24,'delete_users','users','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(25,'browse_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(26,'read_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(27,'edit_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(28,'add_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(29,'delete_posts','posts','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(30,'browse_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(31,'read_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(32,'edit_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(33,'add_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(34,'delete_categories','categories','2017-05-29 17:24:17','2017-05-29 17:24:17',NULL),(35,'browse_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(36,'read_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(37,'edit_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(38,'add_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(39,'delete_projects','projects','2017-05-29 19:43:39','2017-05-29 19:43:39',NULL),(40,'browse_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(41,'read_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(42,'edit_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(43,'add_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(44,'delete_projects_settings','projects_settings','2017-05-29 20:03:41','2017-05-29 20:03:41',NULL),(45,'browse_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(46,'read_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(47,'edit_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(48,'add_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(49,'delete_services','services','2017-06-02 20:52:24','2017-06-02 20:52:24',NULL),(50,'browse_routes','routes','2017-06-20 13:25:21','2017-06-20 13:25:21',NULL),(51,'read_routes','routes','2017-06-20 13:25:21','2017-06-20 13:25:21',NULL),(52,'edit_routes','routes','2017-06-20 13:25:21','2017-06-20 13:25:21',NULL),(53,'add_routes','routes','2017-06-20 13:25:21','2017-06-20 13:25:21',NULL),(54,'delete_routes','routes','2017-06-20 13:25:21','2017-06-20 13:25:21',NULL),(55,'browse_sites','sites','2017-06-22 10:32:46','2017-06-22 10:32:46',NULL),(56,'read_sites','sites','2017-06-22 10:32:46','2017-06-22 10:32:46',NULL),(57,'edit_sites','sites','2017-06-22 10:32:46','2017-06-22 10:32:46',NULL),(58,'add_sites','sites','2017-06-22 10:32:46','2017-06-22 10:32:46',NULL),(59,'delete_sites','sites','2017-06-22 10:32:46','2017-06-22 10:32:46',NULL),(60,'browse_sites_modules','sites_modules','2017-06-22 10:44:08','2017-06-22 10:44:08',NULL),(61,'read_sites_modules','sites_modules','2017-06-22 10:44:08','2017-06-22 10:44:08',NULL),(62,'edit_sites_modules','sites_modules','2017-06-22 10:44:08','2017-06-22 10:44:08',NULL),(63,'add_sites_modules','sites_modules','2017-06-22 10:44:08','2017-06-22 10:44:08',NULL),(64,'delete_sites_modules','sites_modules','2017-06-22 10:44:08','2017-06-22 10:44:08',NULL),(65,'browse_sites_settings','sites_settings','2017-06-22 10:44:33','2017-06-22 10:44:33',NULL),(66,'read_sites_settings','sites_settings','2017-06-22 10:44:33','2017-06-22 10:44:33',NULL),(67,'edit_sites_settings','sites_settings','2017-06-22 10:44:33','2017-06-22 10:44:33',NULL),(68,'add_sites_settings','sites_settings','2017-06-22 10:44:33','2017-06-22 10:44:33',NULL),(69,'delete_sites_settings','sites_settings','2017-06-22 10:44:33','2017-06-22 10:44:33',NULL),(70,'browse_projects_routes','projects_routes','2017-06-22 13:07:47','2017-06-22 13:07:47',NULL),(71,'read_projects_routes','projects_routes','2017-06-22 13:07:47','2017-06-22 13:07:47',NULL),(72,'edit_projects_routes','projects_routes','2017-06-22 13:07:47','2017-06-22 13:07:47',NULL),(73,'add_projects_routes','projects_routes','2017-06-22 13:07:47','2017-06-22 13:07:47',NULL),(74,'delete_projects_routes','projects_routes','2017-06-22 13:07:47','2017-06-22 13:07:47',NULL),(75,'browse_templates','templates','2017-06-29 17:39:57','2017-06-29 17:39:57',NULL),(76,'read_templates','templates','2017-06-29 17:39:57','2017-06-29 17:39:57',NULL),(77,'edit_templates','templates','2017-06-29 17:39:57','2017-06-29 17:39:57',NULL),(78,'add_templates','templates','2017-06-29 17:39:57','2017-06-29 17:39:57',NULL),(79,'delete_templates','templates','2017-06-29 17:39:57','2017-06-29 17:39:57',NULL),(85,'browse_templates_views','templates_views','2017-06-29 19:22:57','2017-06-29 19:22:57',NULL),(86,'read_templates_views','templates_views','2017-06-29 19:22:57','2017-06-29 19:22:57',NULL),(87,'edit_templates_views','templates_views','2017-06-29 19:22:57','2017-06-29 19:22:57',NULL),(88,'add_templates_views','templates_views','2017-06-29 19:22:57','2017-06-29 19:22:57',NULL),(89,'delete_templates_views','templates_views','2017-06-29 19:22:57','2017-06-29 19:22:57',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Test Project','test of routing',NULL,NULL,'test1.saxer.com','saxer_com.test1',0,1,1,'2017-06-22 13:44:58','2017-06-22 13:46:41'),(2,'Saxer','Saxer home page',NULL,NULL,'saxer.com','saxer_com.template',0,1,1,'2017-06-22 13:48:44','2017-06-23 10:40:06');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `projects_routes`
--

LOCK TABLES `projects_routes` WRITE;
/*!40000 ALTER TABLE `projects_routes` DISABLE KEYS */;
INSERT INTO `projects_routes` VALUES (4,'/','home','singlepage','locationpage',1,'2017-06-23 09:14:54','2017-06-26 20:08:05'),(5,'/welcome','welcome','singlepage','welcome',2,'2017-06-23 09:17:33','2017-06-26 19:29:25');
/*!40000 ALTER TABLE `projects_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `projects_settings`
--

LOCK TABLES `projects_settings` WRITE;
/*!40000 ALTER TABLE `projects_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2017-05-29 17:24:16','2017-05-29 17:24:16'),(2,'user','Normal User','2017-05-29 17:24:16','2017-05-29 17:24:16'),(3,'manager','Manager','2017-05-29 19:48:44','2017-05-29 19:48:44'),(4,'developer','Developer','2017-05-29 19:49:34','2017-05-29 19:49:34');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Saxer Service','Container for Saxer developers projects',NULL,NULL,1,'2017-06-22 13:25:26','2017-06-22 13:45:53');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'title','Site Title','Saxer Webservices',NULL,'text',0),(2,'description','Site description','Welkome to Saxer Webservices manager',NULL,'text',1),(3,'logo','Site logo','',NULL,'image',4),(5,'admin_title','Admin Title','Saxer Webservices',NULL,'text',2),(6,'admin_description','Admin description','Welkome to Saxer Webservices manager',NULL,'text',3),(7,'admin_loader','Admin loader','settings/May2017/HlhPvujjaOuzifxWOmlz.gif',NULL,'image',5),(8,'admin_icon_image','Admin icon','',NULL,'image',6),(9,'admin_bg_image','Admin background','settings/May2017/92JuqPlhJ3lwUsUJeVsv.jpg',NULL,'image',7);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,'/{state?}/{city?}','singlepage','welcome','welcome','welcome',0,1,1,'2017-06-26 19:35:54','2017-06-26 21:14:40');
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sites_modules`
--

LOCK TABLES `sites_modules` WRITE;
/*!40000 ALTER TABLE `sites_modules` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sites_settings`
--

LOCK TABLES `sites_settings` WRITE;
/*!40000 ALTER TABLE `sites_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `sites_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `templates`
--

LOCK TABLES `templates` WRITE;
/*!40000 ALTER TABLE `templates` DISABLE KEYS */;
INSERT INTO `templates` VALUES (1,'Default',NULL,'saxer_com.template',NULL,1,'2017-06-29 20:07:12','2017-06-29 20:07:12');
/*!40000 ALTER TABLE `templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `templates_views`
--

LOCK TABLES `templates_views` WRITE;
/*!40000 ALTER TABLE `templates_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `templates_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Grzegorz','webmaster@grzegorzjaworski.de','users/May2017/wNkxeirYkmcHrRkTP2J6.jpg','$2y$10$T9P99G.jTf2IguBentVgLuCMJW9OGy7im8uCCLh9QeUFmf8dvS7IW','4ZbHDRJpW7IisrEG8nxuCHmqg6510kZ8DBUH23QWxsiRtZqwiRd6eYV6F5p2','2017-05-29 17:25:10','2017-06-20 11:57:08');
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

-- Dump completed on 2017-06-30  9:58:07
