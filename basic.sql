-- MySQL dump 10.19  Distrib 10.3.30-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.3.30-MariaDB-1:10.3.30+maria~focal-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `backend_layout`
--

DROP TABLE IF EXISTS `backend_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `non_exclude_fields` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explicit_allowdeny` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pagetypes_select` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tables_select` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tables_modify` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groupMods` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subgroup` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `category_perms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_groups`
--

LOCK TABLES `be_groups` WRITE;
/*!40000 ALTER TABLE `be_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_sessions`
--

DROP TABLE IF EXISTS `be_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  `ses_backuserid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_sessions`
--

LOCK TABLES `be_sessions` WRITE;
/*!40000 ALTER TABLE `be_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `be_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_users`
--

DROP TABLE IF EXISTS `be_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `usergroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `db_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` smallint(5) unsigned NOT NULL DEFAULT 0,
  `realName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userMods` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowed_languages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` mediumblob DEFAULT NULL,
  `file_mountpoints` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_perms` smallint(6) NOT NULL DEFAULT 1,
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `disableIPlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `createdByAction` int(11) NOT NULL DEFAULT 0,
  `usergroup_cached_list` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `category_perms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES (1,0,1628075905,1628075358,0,0,0,0,0,NULL,'kitodo',0,'$argon2i$v=19$m=65536,t=16,p=1$SUVXZnhpNDlDbDA1WWNGVg$/ovMgziyrWnp6qdn2ovz60mG21vebGrkaLRPDeHuuo8',1,'','de','',NULL,0,'',NULL,'','',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL),(2,0,1628164991,1628164991,0,0,0,0,0,NULL,'_cli_',0,'$argon2i$v=19$m=65536,t=16,p=1$T3FiTGtSVU02TUJWYjFRZA$A5fPErW2fyV3Rzleyypb4i7z50/iOkbVy8Kzj+mir+g',1,'','','',NULL,0,'',NULL,'','',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL),(3,0,1629184457,1629184393,0,0,0,0,0,NULL,'admin',0,'$argon2i$v=19$m=65536,t=16,p=1$Y2dOZ0hnNUIvUnlxUjlVRg$hwsrFkUiggAx7NXrnTqHQKeMaJZaRtPFVmjiN2w0A44',1,'','','',NULL,0,'',NULL,'','',NULL,NULL,1,'',0,NULL,0,0,NULL,0,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_treelist`
--

DROP TABLE IF EXISTS `cache_treelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_treelist` (
  `md5hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `treelist` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`md5hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_treelist`
--

LOCK TABLES `cache_treelist` WRITE;
/*!40000 ALTER TABLE `cache_treelist` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_treelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_adminpanel_requestcache`
--

DROP TABLE IF EXISTS `cf_adminpanel_requestcache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_adminpanel_requestcache` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_adminpanel_requestcache`
--

LOCK TABLES `cf_adminpanel_requestcache` WRITE;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_adminpanel_requestcache_tags`
--

DROP TABLE IF EXISTS `cf_adminpanel_requestcache_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_adminpanel_requestcache_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_adminpanel_requestcache_tags`
--

LOCK TABLES `cf_adminpanel_requestcache_tags` WRITE;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_adminpanel_requestcache_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash`
--

DROP TABLE IF EXISTS `cf_cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash`
--

LOCK TABLES `cf_cache_hash` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash` DISABLE KEYS */;
INSERT INTO `cf_cache_hash` VALUES (1,'a341977e40078ac89538934c8436cc57',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"a328e976dab15166dfc3cdbdaad9b3da\";}'),(2,'8a9f0568ebeb7dab8f6a43b222254343',2145909600,'a:2:{i:0;a:3:{s:8:\"TSconfig\";a:3:{s:8:\"options.\";a:8:{s:15:\"enableBookmarks\";s:1:\"1\";s:10:\"file_list.\";a:4:{s:28:\"enableDisplayBigControlPanel\";s:10:\"selectable\";s:23:\"enableDisplayThumbnails\";s:10:\"selectable\";s:15:\"enableClipBoard\";s:10:\"selectable\";s:10:\"thumbnail.\";a:2:{s:5:\"width\";s:2:\"64\";s:6:\"height\";s:2:\"64\";}}s:9:\"pageTree.\";a:1:{s:31:\"doktypesToShowInNewPageDragArea\";s:21:\"1,6,4,7,3,254,255,199\";}s:12:\"contextMenu.\";a:1:{s:6:\"table.\";a:3:{s:6:\"pages.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:9:\"sys_file.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}s:15:\"sys_filemounts.\";a:2:{s:12:\"disableItems\";s:0:\"\";s:5:\"tree.\";a:1:{s:12:\"disableItems\";s:0:\"\";}}}}s:11:\"saveDocView\";s:1:\"1\";s:10:\"saveDocNew\";s:1:\"1\";s:11:\"saveDocNew.\";a:3:{s:5:\"pages\";s:1:\"0\";s:8:\"sys_file\";s:1:\"0\";s:17:\"sys_file_metadata\";s:1:\"0\";}s:14:\"disableDelete.\";a:1:{s:8:\"sys_file\";s:1:\"1\";}}s:9:\"admPanel.\";a:1:{s:7:\"enable.\";a:1:{s:3:\"all\";s:1:\"1\";}}s:12:\"TCAdefaults.\";a:1:{s:9:\"sys_note.\";a:2:{s:6:\"author\";s:0:\"\";s:5:\"email\";s:0:\"\";}}}s:8:\"sections\";a:0:{}s:5:\"match\";a:0:{}}i:1;s:32:\"a328e976dab15166dfc3cdbdaad9b3da\";}');
/*!40000 ALTER TABLE `cf_cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_hash_tags`
--

DROP TABLE IF EXISTS `cf_cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_hash_tags`
--

LOCK TABLES `cf_cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_hash_tags` DISABLE KEYS */;
INSERT INTO `cf_cache_hash_tags` VALUES (1,'a341977e40078ac89538934c8436cc57','ident_userTS_TSconfig'),(2,'8a9f0568ebeb7dab8f6a43b222254343','ident_userTS_TSconfig');
/*!40000 ALTER TABLE `cf_cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes`
--

LOCK TABLES `cf_cache_imagesizes` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_imagesizes_tags`
--

DROP TABLE IF EXISTS `cf_cache_imagesizes_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_imagesizes_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_imagesizes_tags`
--

LOCK TABLES `cf_cache_imagesizes_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_imagesizes_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages`
--

DROP TABLE IF EXISTS `cf_cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages`
--

LOCK TABLES `cf_cache_pages` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pages_tags`
--

DROP TABLE IF EXISTS `cf_cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pages_tags`
--

LOCK TABLES `cf_cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pages_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection`
--

DROP TABLE IF EXISTS `cf_cache_pagesection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection`
--

LOCK TABLES `cf_cache_pagesection` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_pagesection_tags`
--

DROP TABLE IF EXISTS `cf_cache_pagesection_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_pagesection_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_pagesection_tags`
--

LOCK TABLES `cf_cache_pagesection_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_pagesection_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline`
--

DROP TABLE IF EXISTS `cf_cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline`
--

LOCK TABLES `cf_cache_rootline` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_cache_rootline_tags`
--

DROP TABLE IF EXISTS `cf_cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_cache_rootline_tags`
--

LOCK TABLES `cf_cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cf_extbase_datamapfactory_datamap_tags`
--

DROP TABLE IF EXISTS `cf_extbase_datamapfactory_datamap_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cf_extbase_datamapfactory_datamap_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cf_extbase_datamapfactory_datamap_tags`
--

LOCK TABLES `cf_extbase_datamapfactory_datamap_tags` WRITE;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cf_extbase_datamapfactory_datamap_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `subgroup` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_groups`
--

LOCK TABLES `fe_groups` WRITE;
/*!40000 ALTER TABLE `fe_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_sessions`
--

DROP TABLE IF EXISTS `fe_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ses_anonymous` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_sessions`
--

LOCK TABLES `fe_sessions` WRITE;
/*!40000 ALTER TABLE `fe_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_users`
--

DROP TABLE IF EXISTS `fe_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `usergroup` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `middle_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `telephone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fax` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lockToDomain` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uc` blob DEFAULT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `country` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `www` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `company` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastlogin` int(10) unsigned NOT NULL DEFAULT 0,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `felogin_redirectPid` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `felogin_forgotHash` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fe_users`
--

LOCK TABLES `fe_users` WRITE;
/*!40000 ALTER TABLE `fe_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `fe_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_siteroot` smallint(6) NOT NULL DEFAULT 0,
  `php_tree_stop` smallint(6) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `alias` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` smallint(6) NOT NULL DEFAULT 0,
  `fe_login_mode` smallint(6) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tsconfig_includes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_overlay_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `no_index` smallint(6) NOT NULL DEFAULT 0,
  `no_follow` smallint(6) NOT NULL DEFAULT 0,
  `og_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `og_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `twitter_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `canonical_link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,1629185218,1628166633,1,0,0,0,0,'',256,'',0,0,0,0,NULL,0,'a:47:{s:7:\"doktype\";N;s:5:\"title\";N;s:4:\"slug\";N;s:9:\"nav_title\";N;s:8:\"subtitle\";N;s:9:\"seo_title\";N;s:8:\"no_index\";N;s:9:\"no_follow\";N;s:14:\"canonical_link\";N;s:8:\"og_title\";N;s:14:\"og_description\";N;s:8:\"og_image\";N;s:13:\"twitter_title\";N;s:19:\"twitter_description\";N;s:13:\"twitter_image\";N;s:8:\"abstract\";N;s:8:\"keywords\";N;s:11:\"description\";N;s:6:\"author\";N;s:12:\"author_email\";N;s:11:\"lastUpdated\";N;s:6:\"layout\";N;s:8:\"newUntil\";N;s:14:\"backend_layout\";N;s:25:\"backend_layout_next_level\";N;s:16:\"content_from_pid\";N;s:6:\"target\";N;s:13:\"cache_timeout\";N;s:10:\"cache_tags\";N;s:11:\"is_siteroot\";N;s:9:\"no_search\";N;s:13:\"php_tree_stop\";N;s:6:\"module\";N;s:5:\"media\";N;s:17:\"tsconfig_includes\";N;s:8:\"TSconfig\";N;s:8:\"l18n_cfg\";N;s:6:\"hidden\";N;s:8:\"nav_hide\";N;s:9:\"starttime\";N;s:7:\"endtime\";N;s:16:\"extendToSubpages\";N;s:8:\"fe_group\";N;s:13:\"fe_login_mode\";N;s:8:\"editlock\";N;s:10:\"categories\";N;s:14:\"rowDescription\";N;}',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Viewer','/',1,'',1,0,'',0,0,'',0,'',0,0,'',0,'',0,'',1,1629185218,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0),(2,1,1629184744,1628486511,1,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'Kitodo Konfiguration','/1',254,NULL,0,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,0,0,NULL,'',0,'','','',0,0,0,0,'',0,0,'','',NULL,0,0,'',0,0,'',NULL,0,'',NULL,0,'',0),(3,0,1630422840,1630422828,3,0,0,0,0,'',256,NULL,0,1,1,1,'{\"starttime\":\"parent\",\"endtime\":\"parent\",\"nav_hide\":\"parent\",\"url\":\"parent\",\"lastUpdated\":\"parent\",\"newUntil\":\"parent\",\"no_search\":\"parent\",\"shortcut\":\"parent\",\"shortcut_mode\":\"parent\",\"content_from_pid\":\"parent\",\"author\":\"parent\",\"author_email\":\"parent\",\"media\":\"parent\",\"og_image\":\"parent\",\"twitter_image\":\"parent\"}',0,'a:38:{s:7:\"doktype\";i:1;s:5:\"title\";s:6:\"Viewer\";s:4:\"slug\";s:1:\"/\";s:9:\"nav_title\";s:0:\"\";s:8:\"subtitle\";s:0:\"\";s:9:\"seo_title\";s:0:\"\";s:14:\"canonical_link\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:14:\"og_description\";s:0:\"\";s:13:\"twitter_title\";s:0:\"\";s:19:\"twitter_description\";s:0:\"\";s:8:\"abstract\";s:0:\"\";s:8:\"keywords\";s:0:\"\";s:11:\"description\";s:0:\"\";s:6:\"hidden\";i:0;s:10:\"categories\";i:0;s:14:\"rowDescription\";s:0:\"\";s:8:\"TSconfig\";s:0:\"\";s:13:\"php_tree_stop\";i:0;s:8:\"editlock\";i:0;s:6:\"layout\";i:0;s:8:\"fe_group\";s:0:\"\";s:16:\"extendToSubpages\";i:0;s:6:\"target\";s:0:\"\";s:5:\"alias\";s:0:\"\";s:13:\"cache_timeout\";i:0;s:10:\"cache_tags\";s:0:\"\";s:9:\"mount_pid\";i:0;s:11:\"is_siteroot\";i:1;s:12:\"mount_pid_ol\";i:0;s:6:\"module\";s:0:\"\";s:13:\"fe_login_mode\";i:0;s:8:\"l18n_cfg\";i:0;s:14:\"backend_layout\";s:0:\"\";s:25:\"backend_layout_next_level\";s:0:\"\";s:17:\"tsconfig_includes\";s:0:\"\";s:8:\"no_index\";i:0;s:9:\"no_follow\";i:0;}',0,0,'',0,0,0,0,0,0,1,0,31,27,0,'[Translate to English:] Viewer','/',1,'',1,0,'',0,0,'',0,'',0,0,NULL,0,'',0,NULL,1,1630422840,NULL,'',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'',NULL,0,'',NULL,0,'',0),(4,1,1632299231,1630500948,3,0,1,0,0,'',128,'',0,0,0,0,NULL,0,'a:1:{s:6:\"hidden\";N;}',0,0,'',0,0,0,0,0,0,3,0,31,27,0,'Viewerdev','/viewerdev',1,'',0,0,'',0,0,'',0,'',0,0,'',0,'',0,'',0,1630500958,'','',0,'','','',0,0,0,0,'',0,0,'','','',0,0,'',0,0,'','',0,'','',0,'',0);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_be_shortcuts`
--

LOCK TABLES `sys_be_shortcuts` WRITE;
/*!40000 ALTER TABLE `sys_be_shortcuts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_be_shortcuts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category`
--

DROP TABLE IF EXISTS `sys_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  KEY `uid_local_foreign` (`uid_local`,`uid_foreign`),
  KEY `uid_foreign_tablefield` (`uid_foreign`,`tablenames`(40),`fieldname`(3),`sorting_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection`
--

DROP TABLE IF EXISTS `sys_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `table_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection`
--

LOCK TABLES `sys_collection` WRITE;
/*!40000 ALTER TABLE `sys_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_collection_entries`
--

DROP TABLE IF EXISTS `sys_collection_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_collection_entries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_collection_entries`
--

LOCK TABLES `sys_collection_entries` WRITE;
/*!40000 ALTER TABLE `sys_collection_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_collection_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_domain`
--

DROP TABLE IF EXISTS `sys_domain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_domain` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `domainName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `getSysDomain` (`hidden`),
  KEY `getDomainStartPage` (`pid`,`hidden`,`domainName`(100)),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_domain`
--

LOCK TABLES `sys_domain` WRITE;
/*!40000 ALTER TABLE `sys_domain` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_domain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(6) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadata` int(11) NOT NULL DEFAULT 0,
  `identifier` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifier_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `folder_hash` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` bigint(20) unsigned NOT NULL DEFAULT 0,
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'static',
  `files` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `folder` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recursive` smallint(6) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_collection`
--

LOCK TABLES `sys_file_collection` WRITE;
/*!40000 ALTER TABLE `sys_file_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_metadata`
--

DROP TABLE IF EXISTS `sys_file_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(11) NOT NULL DEFAULT 0,
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `task_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checksum` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `fieldname` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `table_local` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternative` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `crop` varchar(4000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `autoplay` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `driver` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `configuration` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT 0,
  `is_browsable` smallint(6) NOT NULL DEFAULT 0,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `is_writable` smallint(6) NOT NULL DEFAULT 0,
  `is_online` smallint(6) NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(6) NOT NULL DEFAULT 1,
  `processingfolder` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES (1,0,1628075892,1628075892,0,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.','fileadmin/ (auto-created)','Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>',1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `base` int(10) unsigned NOT NULL DEFAULT 0,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_filemounts`
--

LOCK TABLES `sys_filemounts` WRITE;
/*!40000 ALTER TABLE `sys_filemounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_filemounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_history`
--

DROP TABLE IF EXISTS `sys_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `history_data` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_language`
--

DROP TABLE IF EXISTS `sys_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_language` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flag` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_isocode` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `static_lang_isocode` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_language`
--

LOCK TABLES `sys_language` WRITE;
/*!40000 ALTER TABLE `sys_language` DISABLE KEYS */;
INSERT INTO `sys_language` VALUES (1,0,1628487239,0,256,'English','us','en',0);
/*!40000 ALTER TABLE `sys_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_lockedrecords`
--

LOCK TABLES `sys_lockedrecords` WRITE;
/*!40000 ALTER TABLE `sys_lockedrecords` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_lockedrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `log_data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `NEWid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `request_id` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `level` smallint(5) unsigned NOT NULL DEFAULT 0,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_news`
--

LOCK TABLES `sys_news` WRITE;
/*!40000 ALTER TABLE `sys_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_note`
--

DROP TABLE IF EXISTS `sys_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` smallint(5) unsigned NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_redirect`
--

DROP TABLE IF EXISTS `sys_redirect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_redirect` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdby` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `source_host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `source_path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_regexp` smallint(5) unsigned NOT NULL DEFAULT 0,
  `force_https` smallint(5) unsigned NOT NULL DEFAULT 0,
  `respect_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `keep_query_parameters` smallint(5) unsigned NOT NULL DEFAULT 0,
  `target` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target_statuscode` int(11) NOT NULL DEFAULT 307,
  `hitcount` int(11) NOT NULL DEFAULT 0,
  `lasthiton` int(11) NOT NULL DEFAULT 0,
  `disable_hitcount` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_source` (`source_host`(80),`source_path`(80)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_redirect`
--

LOCK TABLES `sys_redirect` WRITE;
/*!40000 ALTER TABLE `sys_redirect` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_redirect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tablename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `recuid` int(11) NOT NULL DEFAULT 0,
  `field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `flexpointer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_key` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `softref_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `ref_table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`(100),`recuid`),
  KEY `lookup_uid` (`ref_table`(100),`ref_uid`),
  KEY `lookup_string` (`ref_string`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_key` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES (1,'installUpdate','TYPO3\\CMS\\Form\\Hooks\\FormFileExtensionUpdate','i:1;'),(2,'installUpdate','TYPO3\\CMS\\Install\\Updates\\WizardDoneToRegistry','i:1;'),(3,'installUpdate','TYPO3\\CMS\\Install\\Updates\\StartModuleUpdate','i:1;'),(4,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FrontendUserImageUpdateWizard','i:1;'),(5,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FillTranslationSourceField','i:1;'),(6,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SectionFrameToFrameClassUpdate','i:1;'),(7,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SplitMenusUpdate','i:1;'),(8,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BulletContentElementUpdate','i:1;'),(9,'installUpdate','TYPO3\\CMS\\Install\\Updates\\UploadContentElementUpdate','i:1;'),(10,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFscStaticTemplateUpdate','i:1;'),(11,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FileReferenceUpdate','i:1;'),(12,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateFeSessionDataUpdate','i:1;'),(13,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Compatibility7ExtractionUpdate','i:1;'),(14,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FormLegacyExtractionUpdate','i:1;'),(15,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RteHtmlAreaExtractionUpdate','i:1;'),(16,'installUpdate','TYPO3\\CMS\\Install\\Updates\\LanguageSortingUpdate','i:1;'),(17,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Typo3DbExtractionUpdate','i:1;'),(18,'installUpdate','TYPO3\\CMS\\Install\\Updates\\FuncExtractionUpdate','i:1;'),(19,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigrateUrlTypesInPagesUpdate','i:1;'),(20,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectExtractionUpdate','i:1;'),(21,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserStartModuleUpdate','i:1;'),(22,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayUpdate','i:1;'),(23,'installUpdate','TYPO3\\CMS\\Install\\Updates\\MigratePagesLanguageOverlayBeGroupsAccessRights','i:1;'),(24,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendLayoutIconUpdateWizard','i:1;'),(25,'installUpdate','TYPO3\\CMS\\Install\\Updates\\RedirectsExtensionUpdate','i:1;'),(26,'installUpdate','TYPO3\\CMS\\Install\\Updates\\AdminPanelInstall','i:1;'),(27,'installUpdate','TYPO3\\CMS\\Install\\Updates\\PopulatePageSlugs','i:1;'),(28,'installUpdate','TYPO3\\CMS\\Install\\Updates\\Argon2iPasswordHashes','i:1;'),(29,'installUpdate','TYPO3\\CMS\\Install\\Updates\\BackendUserConfigurationUpdate','i:1;'),(30,'installUpdate','TYPO3\\CMS\\Install\\Updates\\SvgFilesSanitization','i:1;'),(31,'installUpdateRows','rowUpdatersDone','a:3:{i:0;s:52:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\L10nModeUpdater\";i:1;s:53:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\ImageCropUpdater\";i:2;s:57:\"TYPO3\\CMS\\Install\\Updates\\RowUpdater\\RteLinkSyntaxUpdater\";}'),(32,'core','formProtectionSessionToken:1',NULL),(33,'languagePacks','baseUrl','s:44:\"https://extensions.typo3.org/fileadmin/l10n/\";'),(34,'extensionDataImport','typo3conf/ext/dlf/ext_tables_static+adt.sql','s:0:\"\";'),(35,'core','formProtectionSessionToken:3',NULL);
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sitetitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `include_static_file` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `constants` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextLevel` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `basedOn` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `static_file_mode` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES (1,1,1658308722,1628488695,1,0,0,0,0,256,NULL,0,0,0,'',0,0,0,0,0,0,'Viewer','',1,3,'EXT:dlf/Configuration/TypoScript/Toolbox/,EXT:ddb_kitodo_zeitungsportal/Configuration/TypoScript','constant {\r\n  # id of configuration directory (Kitodo Konfiguration)\r\n  configPid = 2\r\n  # id of Viewer page\r\n  viewerPid = 4\r\n  #page url on which viewer will be visible\r\n  #baseUrl = https://sdvtypo3ddbzeitungsportaldev.slub-dresden.de/\r\n  #baseUrl = https://viewer-dzp.deutsche-digitale-bibliothek.de/\r\n  baseUrl = https://ddev-ddb-zeitungsportal.ddev.site/\r\n  #baseUrl = https://dev-zpviewerdev.fiz-karlsruhe.de/\r\n  #baseUrl = http://ddb-p2-vmzpviewer01:8001/zp-viewer\r\n}','# dev\r\nplugin.tx_dlf_searchindocumenttool.settings.documentIdUrlSchema = https://dev-ddb.fiz-karlsruhe.de/api/items/*id*/source/record\r\nplugin.tx_dlf_searchindocumenttool.settings.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\n\r\n# master\r\n#plugin.tx_dlf_searchindocumenttool.searchUrl = https://dev-ddb.fiz-karlsruhe.de/ddb-current/newspaper/item\r\n#plugin.tx_dlf_searchindocumenttool.documentIdUrlSchema = https://api-q1.deutsche-digitale-bibliothek.de/items/*id*/source/record\r\n\r\n','','',0,0,0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rowDescription` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_id` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_move_id` int(10) unsigned NOT NULL DEFAULT 0,
  `CType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bullets_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `frame_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `spaceBefore` smallint(5) unsigned NOT NULL DEFAULT 0,
  `spaceAfter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `space_after_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `records` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `subheader` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header_link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `header_layout` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `list_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 0,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(17) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT 0,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accessibility_title` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `accessibility_bypass` smallint(5) unsigned NOT NULL DEFAULT 0,
  `accessibility_bypass_text` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `selected_categories` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_field` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_class` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_caption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_delimiter` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_header_position` smallint(5) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_actionlog`
--

DROP TABLE IF EXISTS `tx_dlf_actionlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_actionlog` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `count_pages` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_actionlog`
--

LOCK TABLES `tx_dlf_actionlog` WRITE;
/*!40000 ALTER TABLE `tx_dlf_actionlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_actionlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_basket`
--

DROP TABLE IF EXISTS `tx_dlf_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_basket` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fe_user_id` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `session_id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `doc_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_basket`
--

LOCK TABLES `tx_dlf_basket` WRITE;
/*!40000 ALTER TABLE `tx_dlf_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_collections`
--

DROP TABLE IF EXISTS `tx_dlf_collections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_collections` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `fe_group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fe_cruser_id` int(11) NOT NULL DEFAULT 0,
  `fe_admin_lock` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_search` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `oai_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `priority` smallint(6) NOT NULL DEFAULT 3,
  `documents` int(11) NOT NULL DEFAULT 0,
  `owner` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`),
  KEY `oai_name` (`oai_name`),
  KEY `pid_cruser` (`pid`,`fe_cruser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_collections`
--

LOCK TABLES `tx_dlf_collections` WRITE;
/*!40000 ALTER TABLE `tx_dlf_collections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_collections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_documents`
--

DROP TABLE IF EXISTS `tx_dlf_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_documents` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `starttime` int(11) NOT NULL DEFAULT 0,
  `endtime` int(11) NOT NULL DEFAULT 0,
  `fe_group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `record_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opac_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `union_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `urn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sorting` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `year` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `place` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata_sorting` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `structure` int(11) NOT NULL DEFAULT 0,
  `partof` int(11) NOT NULL DEFAULT 0,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `volume_sorting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `license` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `terms` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `restrictions` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `out_of_print` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rights_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `collections` int(11) NOT NULL DEFAULT 0,
  `mets_label` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `mets_orderlabel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` int(11) NOT NULL DEFAULT 0,
  `solrcore` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `document_format` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `location` (`location`),
  KEY `record_id` (`record_id`),
  KEY `partof` (`partof`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_documents`
--

LOCK TABLES `tx_dlf_documents` WRITE;
/*!40000 ALTER TABLE `tx_dlf_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_formats`
--

DROP TABLE IF EXISTS `tx_dlf_formats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_formats` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `root` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `namespace` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_formats`
--

LOCK TABLES `tx_dlf_formats` WRITE;
/*!40000 ALTER TABLE `tx_dlf_formats` DISABLE KEYS */;
INSERT INTO `tx_dlf_formats` VALUES (1,0,1628166052,1628166052,1,0,'MODS','mods','http://www.loc.gov/mods/v3','Kitodo\\Dlf\\Format\\Mods'),(2,0,1628166052,1628166052,1,0,'TEIHDR','teiHeader','http://www.tei-c.org/ns/1.0','Kitodo\\Dlf\\Format\\TeiHeader'),(3,0,1628166052,1628166052,1,0,'ALTO','alto','http://www.loc.gov/standards/alto/ns-v2#','Kitodo\\Dlf\\Format\\Alto'),(4,0,1628166052,1628166052,1,0,'IIIF1','IIIF1','http://www.shared-canvas.org/ns/context.json',''),(5,0,1628166052,1628166052,1,0,'IIIF2','IIIF2','http://iiif.io/api/presentation/2/context.json',''),(6,0,1628166052,1628166052,1,0,'IIIF3','IIIF3','http://iiif.io/api/presentation/3/context.json','');
/*!40000 ALTER TABLE `tx_dlf_formats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_libraries`
--

DROP TABLE IF EXISTS `tx_dlf_libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_libraries` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oai_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oai_base` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opac_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opac_base` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `union_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `union_base` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_libraries`
--

LOCK TABLES `tx_dlf_libraries` WRITE;
/*!40000 ALTER TABLE `tx_dlf_libraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_mail`
--

DROP TABLE IF EXISTS `tx_dlf_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_mail` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `mail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_mail`
--

LOCK TABLES `tx_dlf_mail` WRITE;
/*!40000 ALTER TABLE `tx_dlf_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadata`
--

DROP TABLE IF EXISTS `tx_dlf_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadata` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `format` int(11) NOT NULL DEFAULT 0,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `wrap` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `index_tokenized` smallint(6) NOT NULL DEFAULT 0,
  `index_stored` smallint(6) NOT NULL DEFAULT 0,
  `index_indexed` smallint(6) NOT NULL DEFAULT 0,
  `index_boost` double NOT NULL DEFAULT 1,
  `is_sortable` smallint(6) NOT NULL DEFAULT 0,
  `is_facet` smallint(6) NOT NULL DEFAULT 0,
  `is_listed` smallint(6) NOT NULL DEFAULT 0,
  `index_autocomplete` smallint(6) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`),
  KEY `index_autocomplete` (`index_autocomplete`),
  KEY `is_sortable` (`is_sortable`),
  KEY `is_facet` (`is_facet`),
  KEY `is_listed` (`is_listed`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadata`
--

LOCK TABLES `tx_dlf_metadata` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadata` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadata` VALUES (1,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1280,NULL,'Rights Information','rights_info',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(2,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1152,NULL,'Out Of Print Works','out_of_print',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),(3,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1088,NULL,'Restrictions on Access','restrictions',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),(4,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1056,NULL,'Terms of Use','terms',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),(5,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1040,NULL,'License','license',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,1,0,0,0),(6,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1032,NULL,'Coordinates','coordinates',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,0,0,0,0,0),(7,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1028,NULL,'Kitodo Process Number','prod_id',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(8,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1026,NULL,'OAI Identifier','record_id',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(9,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1025,NULL,'Union Catalog ID','union_id',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(10,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,1024,NULL,'OPAC Identifier','opac_id',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(11,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,768,NULL,'URN','urn',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.typolink.parameter.prepend = TEXT\nvalue.typolink.parameter.prepend.value = http://nbn-resolving.de/\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,0,0,0,0),(12,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,640,NULL,'PURL','purl',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.setContentToCurrent = 1\nvalue.typolink.parameter.current = 1\nvalue.wrap = <dd>|</dd>',0,0,0,0,0,0,0,0,0),(13,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,576,NULL,'Owner','owner',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),(14,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,544,NULL,'Collection(s)','collection',3,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,0,1,1,0,1,0,0,0),(15,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,528,NULL,'Language','language',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,0,1,1,0,1,0,0,0),(16,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,520,NULL,'Year of Publication','year',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,1,1,1,1,1,0,0),(17,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,516,NULL,'Place of Publication','place',2,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',1,1,1,1,1,1,1,0,0),(18,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,514,NULL,'Author','author',2,'','key.wrap = <dt class=\"tx-dlf-metadata-author\">|</dt>\nvalue.required = 1\nvalue.split.token.char = 31\nvalue.split.cObjNum = 1\nvalue.split.1.1 = CASE\nvalue.split.1.1.key.data = register:SPLIT_COUNT\nvalue.split.1.1.0 = LOAD_REGISTER\nvalue.split.1.1.0.tx_dlf_metadata_author_name.current = 1\nvalue.split.1.1.1 = LOAD_REGISTER\nvalue.split.1.1.1.tx_dlf_metadata_author_uri.current = 1\nvalue.postCObject = TEXT\nvalue.postCObject.value = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.parameter = {register:tx_dlf_metadata_author_uri} _blank external\nvalue.postCObject.value.stdWrap.typolink.parameter.insertData = 1\nvalue.postCObject.value.stdWrap.typolink.title = {register:tx_dlf_metadata_author_name}\nvalue.postCObject.value.stdWrap.typolink.ifNotEmpty = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-author\">|</dd>',1,1,1,2,1,1,1,1,0),(19,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,513,NULL,'Volume','volume',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,0,1,0,0),(20,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,512,NULL,'Title','title',3,'','key.wrap = <dt class=\"tx-dlf-metadata-title\">|</dt>\nvalue.required = 1\nvalue.wrap = <dd class=\"tx-dlf-metadata-title\">|</dd>',1,1,1,2,1,0,1,1,0),(21,2,1628486790,1628486790,1,0,0,0,'a:14:{s:5:\"label\";N;s:10:\"index_name\";N;s:6:\"format\";N;s:13:\"default_value\";N;s:4:\"wrap\";N;s:15:\"index_tokenized\";N;s:12:\"index_stored\";N;s:13:\"index_indexed\";N;s:11:\"index_boost\";N;s:11:\"is_sortable\";N;s:8:\"is_facet\";N;s:9:\"is_listed\";N;s:18:\"index_autocomplete\";N;s:16:\"sys_language_uid\";N;}',0,256,NULL,'Type','type',1,'','key.wrap = <dt>|</dt>\nvalue.required = 1\nvalue.wrap = <dd>|</dd>',0,1,0,1,1,1,1,0,0);
/*!40000 ALTER TABLE `tx_dlf_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_metadataformat`
--

DROP TABLE IF EXISTS `tx_dlf_metadataformat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_metadataformat` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `encoded` int(11) NOT NULL DEFAULT 0,
  `xpath` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `xpath_sorting` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mandatory` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_metadataformat`
--

LOCK TABLES `tx_dlf_metadataformat` WRITE;
/*!40000 ALTER TABLE `tx_dlf_metadataformat` DISABLE KEYS */;
INSERT INTO `tx_dlf_metadataformat` VALUES (1,2,1628486790,1628486790,1,0,1,1,'./mods:accessCondition[@type=\"info\"]','',0,0,0,NULL),(2,2,1628486790,1628486790,1,0,2,1,'./mods:accessCondition[@type=\"out of print work\"]','',0,0,0,NULL),(3,2,1628486790,1628486790,1,0,3,1,'./mods:accessCondition[@type=\"restriction on access\"]/@xlink:href','',0,0,0,NULL),(4,2,1628486790,1628486790,1,0,4,1,'./mods:accessCondition[@type=\"local terms of use\"]/@xlink:href','',0,0,0,NULL),(5,2,1628486790,1628486790,1,0,5,1,'./mods:accessCondition[@type=\"use and reproduction\"]/@xlink:href','',0,0,0,NULL),(6,2,1628486790,1628486790,1,0,6,1,'./mods:subject/mods:cartographics/mods:coordinates','',0,0,0,NULL),(7,2,1628486790,1628486790,1,0,7,5,'$.metadata.[?(@.label==\'Kitodo\')].value','',0,0,0,NULL),(8,2,1628486790,1628486790,1,0,7,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"kitodo\"]','',0,0,0,NULL),(9,2,1628486790,1628486790,1,0,7,1,'./mods:identifier[@type=\"kitodo\"]','',0,0,0,NULL),(10,2,1628486790,1628486790,1,0,8,5,'$[\'@id\']','',0,0,0,NULL),(11,2,1628486790,1628486790,1,0,8,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"recordIdentifier\"]','',0,0,0,NULL),(12,2,1628486790,1628486790,1,0,8,1,'./mods:recordInfo/mods:recordIdentifier','',0,0,0,NULL),(13,2,1628486790,1628486790,1,0,9,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"mmid\"]','',0,0,0,NULL),(14,2,1628486790,1628486790,1,0,9,1,'./mods:identifier[@type=\"ppn\"]','',0,0,0,NULL),(15,2,1628486790,1628486790,1,0,10,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"opac\"]','',0,0,0,NULL),(16,2,1628486790,1628486790,1,0,10,1,'./mods:identifier[@type=\"opac\"]','',0,0,0,NULL),(17,2,1628486790,1628486790,1,0,11,5,'$.metadata.[?(@.label==\'URN\')].value','',0,0,0,NULL),(18,2,1628486790,1628486790,1,0,11,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"urn\"]','',0,0,0,NULL),(19,2,1628486790,1628486790,1,0,11,1,'./mods:identifier[@type=\"urn\"]','',0,0,0,NULL),(20,2,1628486790,1628486790,1,0,12,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:idno[@type=\"purl\"]','',0,0,0,NULL),(21,2,1628486790,1628486790,1,0,12,1,'./mods:identifier[@type=\"purl\"]','',0,0,0,NULL),(22,2,1628486790,1628486790,1,0,13,5,'$.metadata.[?(@.label==\'Owner\')].value','',0,0,0,NULL),(23,2,1628486790,1628486790,1,0,13,2,'./teihdr:fileDesc/teihdr:publicationStmt/teihdr:publisher','',0,0,0,NULL),(24,2,1628486790,1628486790,1,0,13,1,'./mods:name[./mods:role/mods:roleTerm=\"own\"]/mods:displayForm','',0,0,0,NULL),(25,2,1628486790,1628486790,1,0,14,5,'$.metadata.[?(@.label==\'Collection\')].value','',0,0,0,NULL),(26,2,1628486790,1628486790,1,0,14,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:msIdentifier/teihdr:collection','',0,0,0,NULL),(27,2,1628486790,1628486790,1,0,14,1,'./mods:classification','',0,0,0,NULL),(28,2,1628486790,1628486790,1,0,15,1,'./mods:language/mods:languageTerm','',0,0,0,NULL),(29,2,1628486790,1628486790,1,0,16,5,'$.metadata.[?(@.label==\'Date of publication\')].value','',0,0,0,NULL),(30,2,1628486790,1628486790,1,0,16,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origDate','./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origDate/@when',0,0,0,NULL),(31,2,1628486790,1628486790,1,0,17,5,'$.metadata.[?(@.label==\'Place of publication\')].value','',0,0,0,NULL),(32,2,1628486790,1628486790,1,0,17,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:origPlace','',0,0,0,NULL),(33,2,1628486790,1628486790,1,0,18,5,'$.metadata.[?(@.label==\'Author\')].value','',0,0,0,NULL),(34,2,1628486790,1628486790,1,0,18,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:name','',0,0,0,NULL),(35,2,1628486790,1628486790,1,0,19,1,'./mods:part/mods:detail/mods:number','./mods:part[@type=\"host\"]/@order',0,0,0,NULL),(36,2,1628486790,1628486790,1,0,20,5,'$[label]','',0,0,0,NULL),(37,2,1628486790,1628486790,1,0,20,2,'./teihdr:fileDesc/teihdr:sourceDesc/teihdr:msDesc/teihdr:head/teihdr:note[@type=\"caption\"]','',0,0,0,NULL),(38,2,1628486790,1628486790,1,0,20,1,'concat(./mods:titleInfo/mods:nonSort,\" \",./mods:titleInfo/mods:title)','./mods:titleInfo/mods:title',0,0,0,NULL),(39,2,1628486790,1628486790,1,0,21,5,'$.metadata.[?(@.label==\'Manifest Type\')].value','',0,0,0,NULL);
/*!40000 ALTER TABLE `tx_dlf_metadataformat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_printer`
--

DROP TABLE IF EXISTS `tx_dlf_printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_printer` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `print` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_printer`
--

LOCK TABLES `tx_dlf_printer` WRITE;
/*!40000 ALTER TABLE `tx_dlf_printer` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_relations`
--

DROP TABLE IF EXISTS `tx_dlf_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_relations` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `ident` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'An identifier to describe which tables are matched.',
  PRIMARY KEY (`uid`),
  KEY `local_foreign` (`uid_local`,`uid_foreign`,`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_relations`
--

LOCK TABLES `tx_dlf_relations` WRITE;
/*!40000 ALTER TABLE `tx_dlf_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_solrcores`
--

DROP TABLE IF EXISTS `tx_dlf_solrcores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_solrcores` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_solrcores`
--

LOCK TABLES `tx_dlf_solrcores` WRITE;
/*!40000 ALTER TABLE `tx_dlf_solrcores` DISABLE KEYS */;
INSERT INTO `tx_dlf_solrcores` VALUES (1,2,0,0,0,0,'newspaper-issues','newspaper-issues');
/*!40000 ALTER TABLE `tx_dlf_solrcores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_structures`
--

DROP TABLE IF EXISTS `tx_dlf_structures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_structures` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `cruser_id` int(11) NOT NULL DEFAULT 0,
  `deleted` smallint(6) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(11) NOT NULL DEFAULT 0,
  `l18n_diffsource` mediumblob NOT NULL,
  `hidden` smallint(6) NOT NULL DEFAULT 0,
  `l10n_state` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toplevel` smallint(6) NOT NULL DEFAULT 0,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `index_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `oai_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumbnail` int(11) NOT NULL DEFAULT 0,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `index_name` (`index_name`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_structures`
--

LOCK TABLES `tx_dlf_structures` WRITE;
/*!40000 ALTER TABLE `tx_dlf_structures` DISABLE KEYS */;
INSERT INTO `tx_dlf_structures` VALUES (1,2,1651569223,1628486788,1,0,0,0,'a:8:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;s:6:\"hidden\";N;s:6:\"status\";N;}',0,NULL,1,'Jahr','year','',0,0),(2,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Volume','volume','',0,0),(3,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Verse','verse','',0,0),(4,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Titlepage','title_page','',0,0),(5,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Text','text','',0,0),(6,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Table','table','',0,0),(7,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Subinventory','subinventory','',0,0),(8,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Study','study','',0,0),(9,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Stamp','stamp','',0,0),(10,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Spine','spine','',0,0),(11,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Section','section','',0,0),(12,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Seal','seal','',0,0),(13,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Scheme','scheme','',0,0),(14,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Research Paper','research_paper','',0,0),(15,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Report','report','',0,0),(16,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Register','register','',0,0),(17,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Provenance','provenance','',0,0),(18,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Proceeding','proceeding','',0,0),(19,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Privileges','privileges','',0,0),(20,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Printers Mark','printers_mark','',0,0),(21,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Printed Archives','printed_archives','',0,0),(22,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Preprint','preprint','',0,0),(23,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Preface','preface','',0,0),(24,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Poster','poster','',0,0),(25,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Plan','plan','',0,0),(26,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Photograph','photograph','',0,0),(27,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Periodical','periodical','',0,0),(28,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Paste Down','paste_down','',0,0),(29,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Paper','paper','',0,0),(30,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Page','page','',0,0),(31,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Ornament','ornament','',0,0),(32,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Official Notification','official_notification','',0,0),(33,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Note','note','',0,0),(34,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Newspaper','newspaper','',0,0),(35,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Musical Notation','musical_notation','',0,0),(36,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Multivolume Work','multivolume_work','',0,0),(37,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Month','month','',0,0),(38,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Monograph','monograph','',0,0),(39,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Map','map','',0,0),(40,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Manuscript','manuscript','',0,0),(41,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Master Thesis','master_thesis','',0,0),(42,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Magister Thesis','magister_thesis','',0,0),(43,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Letter','letter','',0,0),(44,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Lecture','lecture','',0,0),(45,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Leaflet','leaflet','',0,0),(46,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Land Register','land_register','',0,0),(47,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Judgement','judgement','',0,0),(48,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Issue','issue','',0,0),(49,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Inventory','inventory','',0,0),(50,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Initial Decoration','initial_decoration','',0,0),(51,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Index','index','',0,0),(52,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Imprint','imprint','',0,0),(53,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Image','image','',0,0),(54,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Illustration','illustration','',0,0),(55,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Habilitation Thesis','habilitation_thesis','',0,0),(56,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Ground Plan','ground_plan','',0,0),(57,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Fragment','fragment','',0,0),(58,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Folder','folder','',0,0),(59,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'File','file','',0,0),(60,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Fascicle','fascicle','',0,0),(61,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Ephemera','ephemera','',0,0),(62,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Entry','entry','',0,0),(63,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Engraved Titlepage','engraved_titlepage','',0,0),(64,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Endsheet','endsheet','',0,0),(65,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Edge','edge','',0,0),(66,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Dossier','dossier','',0,0),(67,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Document','document','',0,0),(68,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Doctoral Thesis','doctoral_thesis','',0,0),(69,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Diploma Thesis','diploma_thesis','',0,0),(70,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Dedication','dedication','',0,0),(71,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Day','day','',0,0),(72,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Back Cover','cover_back','',0,0),(73,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Front Cover','cover_front','',0,0),(74,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Cover','cover','',0,0),(75,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Corrigenda','corrigenda','',0,0),(76,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Table of Contents','contents','',0,0),(77,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Contained Work','contained_work','',0,0),(78,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Colophon','colophon','',0,0),(79,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Collation','collation','',0,0),(80,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Chapter','chapter','',0,0),(81,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Cartulary','cartulary','',0,0),(82,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Bookplate','bookplate','',0,0),(83,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Binding','binding','',0,0),(84,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Bachelor Thesis','bachelor_thesis','',0,0),(85,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Atlas','atlas','',0,0),(86,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Article','article','',0,0),(87,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Annotation','annotation','',0,0),(88,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Album','album','',0,0),(89,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Address','address','',0,0),(90,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,0,'Additional','additional','',0,0),(91,2,1628486788,1628486788,1,0,0,0,'a:6:{s:8:\"toplevel\";N;s:5:\"label\";N;s:10:\"index_name\";N;s:8:\"oai_name\";N;s:9:\"thumbnail\";N;s:16:\"sys_language_uid\";N;}',0,NULL,1,'Act','act','',0,0);
/*!40000 ALTER TABLE `tx_dlf_structures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_dlf_tokens`
--

DROP TABLE IF EXISTS `tx_dlf_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_dlf_tokens` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0 COMMENT 'Timestamp of the token used to determine if it has expired.',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `options` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `ident` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `token` (`token`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_dlf_tokens`
--

LOCK TABLES `tx_dlf_tokens` WRITE;
/*!40000 ALTER TABLE `tx_dlf_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_dlf_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `repository` int(10) unsigned NOT NULL DEFAULT 1,
  `version` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  `category` int(11) NOT NULL DEFAULT 0,
  `last_updated` int(10) unsigned NOT NULL DEFAULT 0,
  `serialized_dependencies` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ownerusername` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5hash` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `update_comment` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorcompany` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `current_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`repository`),
  KEY `index_extrepo` (`extension_key`,`repository`),
  KEY `index_versionrepo` (`integer_version`,`repository`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_repository`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_extensionmanager_domain_model_repository` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wsdl_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mirror_list_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_update` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_count` int(11) NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_repository`
--

LOCK TABLES `tx_extensionmanager_domain_model_repository` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` DISABLE KEYS */;
INSERT INTO `tx_extensionmanager_domain_model_repository` VALUES (1,'TYPO3.org Main Repository','Main repository on typo3.org. This repository has some mirrors configured which are available with the mirror url.','https://typo3.org/wsdl/tx_ter_wsdl.php','https://repositories.typo3.org/mirrors.xml.gz',1346191200,0,0);
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `user_uid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task`
--

DROP TABLE IF EXISTS `tx_scheduler_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nextexecution` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_time` int(10) unsigned NOT NULL DEFAULT 0,
  `lastexecution_failure` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastexecution_context` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `serialized_task_object` mediumblob DEFAULT NULL,
  `serialized_executions` mediumblob DEFAULT NULL,
  `task_group` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `index_nextexecution` (`nextexecution`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task`
--

LOCK TABLES `tx_scheduler_task` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_scheduler_task_group`
--

DROP TABLE IF EXISTS `tx_scheduler_task_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tx_scheduler_task_group` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `groupName` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_scheduler_task_group`
--

LOCK TABLES `tx_scheduler_task_group` WRITE;
/*!40000 ALTER TABLE `tx_scheduler_task_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_scheduler_task_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
