-- MariaDB dump 10.19  Distrib 10.11.11-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.11.11-MariaDB-ubu2204-log

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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_layout` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `config` longtext DEFAULT NULL,
  `icon` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_layout`
--

LOCK TABLES `backend_layout` WRITE;
/*!40000 ALTER TABLE `backend_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `backend_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_dashboards`
--

DROP TABLE IF EXISTS `be_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_dashboards` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(10) unsigned NOT NULL DEFAULT 0,
  `widgets` text DEFAULT NULL,
  `identifier` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `identifier` (`identifier`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_dashboards`
--

LOCK TABLES `be_dashboards` WRITE;
/*!40000 ALTER TABLE `be_dashboards` DISABLE KEYS */;
INSERT INTO `be_dashboards` VALUES
(1,0,1750100329,1750100329,0,0,0,0,2,'{\"33a5a7c436d200320683929114b1be7ba5abddf8\":{\"identifier\":\"t3information\"},\"4051f1910c72b55552c2ad43a3be41c43e5d3bd5\":{\"identifier\":\"docGettingStarted\"}}','803213173f0fa83b8716432f8941f4e10fc3dc07','My dashboard');
/*!40000 ALTER TABLE `be_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `be_groups`
--

DROP TABLE IF EXISTS `be_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tables_select` longtext DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `db_mountpoints` longtext DEFAULT NULL,
  `file_mountpoints` varchar(255) DEFAULT '',
  `file_permissions` longtext DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 0,
  `pagetypes_select` longtext DEFAULT NULL,
  `tables_modify` longtext DEFAULT NULL,
  `non_exclude_fields` longtext DEFAULT NULL,
  `explicit_allowdeny` longtext DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `custom_options` longtext DEFAULT NULL,
  `groupMods` longtext DEFAULT NULL,
  `mfa_providers` longtext DEFAULT NULL,
  `TSconfig` longtext DEFAULT NULL,
  `subgroup` varchar(255) DEFAULT '',
  `category_perms` longtext DEFAULT NULL,
  `availableWidgets` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_sessions` (
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` longblob DEFAULT NULL,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `be_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `lang` varchar(10) NOT NULL DEFAULT 'default',
  `uc` mediumblob DEFAULT NULL,
  `workspace_id` int(11) NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `password_reset_token` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` varchar(512) DEFAULT '',
  `avatar` int(10) unsigned NOT NULL DEFAULT 0,
  `db_mountpoints` longtext DEFAULT NULL,
  `file_mountpoints` varchar(255) DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `realName` varchar(80) NOT NULL DEFAULT '',
  `admin` smallint(5) unsigned NOT NULL DEFAULT 0,
  `options` smallint(5) unsigned NOT NULL DEFAULT 3,
  `file_permissions` longtext DEFAULT NULL,
  `workspace_perms` smallint(5) unsigned NOT NULL DEFAULT 1,
  `userMods` longtext DEFAULT NULL,
  `allowed_languages` varchar(255) NOT NULL DEFAULT '',
  `TSconfig` longtext DEFAULT NULL,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `category_perms` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `parent` (`pid`,`deleted`,`disable`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `be_users`
--

LOCK TABLES `be_users` WRITE;
/*!40000 ALTER TABLE `be_users` DISABLE KEYS */;
INSERT INTO `be_users` VALUES
(1,0,1751904256,1751904256,0,0,0,0,NULL,'default',NULL,0,NULL,'','t3demo','$argon2i$v=19$m=65536,t=16,p=1$aWF0cEFYZzQuSFpiLndmcA$mLrVCWoIWmyvTpStlyXxDg1XVm0FNMjy66ZfJ6GuOvg','',0,NULL,'','','',1,3,NULL,1,NULL,'',NULL,0,NULL);
/*!40000 ALTER TABLE `be_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash`
--

DROP TABLE IF EXISTS `cache_hash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_hash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash`
--

LOCK TABLES `cache_hash` WRITE;
/*!40000 ALTER TABLE `cache_hash` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_hash_tags`
--

DROP TABLE IF EXISTS `cache_hash_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_hash_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_hash_tags`
--

LOCK TABLES `cache_hash_tags` WRITE;
/*!40000 ALTER TABLE `cache_hash_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_hash_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages`
--

DROP TABLE IF EXISTS `cache_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages`
--

LOCK TABLES `cache_pages` WRITE;
/*!40000 ALTER TABLE `cache_pages` DISABLE KEYS */;
INSERT INTO `cache_pages` VALUES
(1,'2_86aa2d707b704fa2',1751990721,'x�\�=ks\�8��\�Ru�����r5�\�\�8�rd;q\�q���{W�+DBb�\�\�a[�\��\���H9�gRW5�T%!\�@�\�/t\�ƭ\��K4�k[\�pj\�Ÿ��Jl\�\�܏k\�\���\�\�\�g\�&\��~n�b\�=yv��Y.\�/jܯag\�\�3�{<f��ba\�\��$^ԇP\�\�\�\��\�\�ߦ+Y\�|��[\�\�{rǚ�-\�\�]Ǫ[\ni\\.�biE���\0ͩ�c\�\"\�ܒ\��H&�ͭ�\"\�z\�|���!\���o��sݵe��Ūǿ�(\�us\�X���-\�;�+l\�G\0O|`��?6^��:\�um\�`�\�*�Z�Ѱ\�n�{�\\l\";�\���HH�\ry�T�W\\�Vȡ��;Ƚ\�\���\�2\�X\�F(\�*�Aq��x\�Α��g\�:\�W1�\��^N�\�\�\�Q\�n:6w\�\�l{\�[\�Ψ?\�\�s�߇z63�ޞOOwm�6�\�\�̮._\�\�\�����\\}<ۛN\�\�\�\�z\�i\�7O#\�͓i}\�dR_����8;\�]&\�\re�\�s\���ˢ\�EMD\�(�K\�]׬U\�/j?zL�\�G\�OnnE��e�6�\���\���\'\�>�3\�q\�J�ӛX��\�@\���l\�\�5B��;\"E���\�b��>A\�\�6\��exf\r�o��\���YQhh!\\�\�~c�\�\��\�\�i\�\r;\�f�\\\�Y�\�\�\�\�\�[G���Y\�W/j�\�\�h�\�܄�\�P�\Z�L�1\�\�nP��K�\�\�/��\��\0�u�\�`n$;,f\��A�ؠz�y�M��TÕp\�a\��E\�[\�8�H@�A8%6\�)�\�2�`1\�L\�g�~�;ܓ�P��N3�ɞ\�\�*#w�Y�fm��\\��\�3\�ac\�\�8i������\ZTo0<\�\�7\�&�gs�>\�\�6�\�Y\��\�o^�yVA�\�=9vE�=5+1*\�k\�qc��\\�6qEΔ{r|�Q\�j\'a����s�/ϣ\r�\r�H3�B\��\n���\���Jp���E��h,qc���۷ \�Y Z�\�ek�\�\�&Im��o���\�\�%�|#K��cʈ��7+t\�I�L\��\�-L\�Ox�.(J��\�Ey=�\�L>\\���\��h�\�m�5`v�\�\�\�E�\�Q�c\�Q)*�	�V\�\"\�=���2\�F�\�vr��tϏ�\n�,(\�vr!]W\�[	�5(4S>+\�i�	$\�\�\�\\\���dK�~�b$P�[����)\�ջ\�|�v�\�\�=��(\�\��[0\�I�\��!\nNh����Wɜ\�\�F\�+�N\���R\�4T\�U��d���\"f�\� �憊p*�Rm��\\�(kZ\�\�\�(H�N\�[�)�\'4S u�c�Q�*>�\�E�\�3��jU\�\0��~oc�x5�ݑ��\�\�N�0\���h�\\\��\��=��iV\�\�c!��n18W4� �N \�\'d�\�J\�\��X�$\n\�C\�\0DB\�`0=�HGD��e\�+[\"~\nP\�\�C}J֮\��깿~���T6\�]0��=����з<>y !K{�p���n�֠?\�\�(\�D��9���F�o\�\' �\�] A�)��D	\�\�\�i\�\�\�-���\�\�!��1p\�w\�\�J�}k\�{\�c\�0[%���\'\�yt\�{b\r!�>s�أ����Jp\�\�L|g\�\�M\�?<=��-0\r~b{\�j�dXe�\�\�r�c�Z\�\�m�\�\�q-\�1Uz��X�+l\�\� 0�\rS�\�\�s6n\�Y�C�]#FlסvD\�\"}onֈ�!\�\�^{\�\�\�\���B4ǵ�M 1Ph\�^�\�i8��|^$�M���F�\�\�ۛO\�1x�i\�\�\�K^�8dA�$L�\�󯊒w\�Ϫ�a�|7\�u\�.Bb�\�I/�Amn\�ŷW\� $��4`X;���ޅ* ú\Zv@~~ϟ^\�P}�\�\�\�(t�T\�w\�W\�P5\�*n�G0\"f��Rh\�r\\[��\��\�}M\�DeJ5�\�9��\�3��YY\�H\�\��	a^\�=\�&\�s\�`��\�>\�-�Ҡ\\��I\��QT\�\�ʃK�\��`K\�0v\�z��LA\�t%T!Z\�:��\�l4��\�K�p�x\'�)����w�m����\�O�򾂉�� \�sր��Ъc2\�ﬂ��\�\�\�@�P\�\�0/	r��\�\���\�Ź\�\�+\�׉�y\�fo�aE�2\�U,�\�-�00�*���\�h���[����nE��V\�ӷ*�\�MN\�z\nP\�\�\�U��\�Q\�a�Vn��w|́�?p;��\�.Z��;\�1�2`�����Rm�rH7\r�\�ݨT�Lv#��R&)�\�~̣�%���ĝ�ūtR3U*=\�\�\�\�+����ƞ��H�WT�\�6r1p�MC������0׮\�7�W)(\�\�0@)����T\Z�C\�V\�j`@U��X�*���ʫ�zi�N\�5�Ru�\�\���\�.T%�\�\Z6��jFe\�-s\�J��*$2�S\�?�h����\�\�N��4��\�VM\0\\�\�ٻA0ʊ�͉�\�{��G�](LI\�n\0���5J�\�Ry�nA0�\�\�S�U2��cUʜ �N湰CY(�	�����J{\�Ph��Hx՘\rd�\\E\�\Z�\�\n5j\���,\�]\�{\�\�\�\��\�\�=\�m\�Tp%��Q\�a�pp��	\�\nh\�Z%T�vp\�,\�\r�c*��&qe�\�\�\�ڕ��#H�_�o��2\"/�]W�\�W*Ze/}\r����ѕ\�+\�\�薯\�e\�T\�v��T��\�<�׏�G)�ҙ�\�\�f\�V�e\�\��m��K\'[Z\�(\�޾]�P5h�\�\�K\n1󌴥���xx\0W\�,\�\�Şz�\�/��U���V\�\�}\����J;0y\�\�j�\�Q\�Z\� �N�ŔCê�hT�\ZжQu�G\�)s*IL��s�-,\���X�J��\�m�¶X\0�R\�Y�2nL\��ҤQI��|\�\�\�.�xk\��d!&\�\�*\�\�\�F�J�\�3L\�~\�\�\�\�5*C+\n71�Q?/,):�-�|4�@�ϓe�辆T��\0F\�4om�E�\�x�\�\�\�RG�\��I��d(\�\�\rȏ��y��f�?h��\nb�*.Ԑfs\�\�(j\�B BX���:\�`\n(�`a�\�;U6��\�ɗ��/�l	Q/Y\��cR, �\�\�\�\��3\�T�K\�ϯ\�ؕ\��A�aA��f��\�1:=\����5\�gJ�d\�\�M���\�MS��\�G,�:0u(�\�&��	\���6g\�\�\���-]\�h���\�uUjC\'KHf��\�\�K�Lr��t�\�M3�^R^�7Ĝ\�U\�\�gz�P�{D��tB*1\�s�56�ʩԝoȊ\�\"N�v\�;�A���\�Zc�PU<���P�j�zM\�ِ��I�s\�dN\�MSxA�j\�V/\�yv\Z�\�\�	hi�`e1\�\� �\�\��\��a&�\0ұ\�z�WNL7x�YE�j�R~З>7aqI��\�O\�j偆$���tiY�\�X�\�B\�ӑ�8$����\r\�\�\�uy��E\�ś\�08�{�\�\�f+Z�K}�ǀ)1\��\\�N�x5O\\��B\�R�,t��Su��\�/W�W�1�L�U\�+P\���UA�TgË\�\�Ŗ�)�A��m�$@\�UH;\�o5\��>�d\�U2X&w��\�\�x\�<\�b�;acj{Mn\�\�5�ba��\Z�Ǣۙ\�	�\�q��\Z\�ދ\�\�\�՜g\�\�\�kf��\�Lưp��\�Sr\�9W���.�d��r<8x\�~�)\rk\n�\�t�\r\�n֡\���Nt\�\�\0g뭃�C\�eF�\�\�(\���\�;5*Ug+K\�\�S�\\<�ji\�\�W)��ES!8)\"���\�SpZQh�\�N\�(��#�\�<����\�y0\�\\MUBz��Naj\�:3)\�F�\�\�\���\�^�(8�՜:��\�ֳtC\�\�\r�\��]i�U7��\�F�YEM��\�3�\�9g[\�n	�+\�\�Lj�)\�҄�\�e�\�\�y} \�U<3\�\�(�L�\�b0qY6-U�!6\n\�\\Et\�t�6?|\�|��90 \�\�\�8c\�W����\�_h|\�\rıq �$�ZƠ\�/_\�(\�&\�?��7�6C\�\n>�\�g7\Z9�����?�\�R=#��\�q\��P\�m\�H�\�Jh�E�\�z��\��C@\��!�?\��\��?P@�c�\r5\�Xs\�\�\�\�͙s&o�:\�p�}O�J�e\�\�dv��#\�\�č�K�5P{>W4(��s�\n0Մ�4\�\0\�2P-�w&�@\����\��\�\�\�=f�\�\�9\�\�Rd�\�B9\�>p\����ㅮрqPp\Z5\�\'sW؍�MCc��\�G�A	�jGg�/>^O\0\�U\r$�vF��m~Q[\Z\�NgGH\�\��ִ\�g�CJ\�\�פ\�g:ki��hOp��e��s<�A�#l\�\�6~hw\�g�G�\�\�@�_.�<SzP\�\�~d�ӹ���9{��DZ#\�0�	\��R[zA�\�4\��\�J\�:ASW\�mut�+\�u\�M\�\�;�&\�{�QS�F`�g<	|zߍ;�cnt|�\n�\�W:+�^ ��ьH�Lc��\�\�?\�\�@�GM\��:P\�T\��\�	k\�5�?K�Zj\�M\rv�\r\�\"��#\�o%\�W\"�K{\�\np��!yg%��4!|�\�62w($.m���s*�^�� /X\�XF\�\"@\�1\�\�H�b\�\�kuZ�\�mu���:�wf:\�)�\�D����u�{<\�OX��\\*l<�\�\�sڗ\�N�N+\���OS\�\�L���\�d\�\�\�ʃ\�&Gm��\ZG=\�\�\�\�\�M\�a8\�̦a�\�\�ɴ��:u�M\�\�_2\�$�ea�#\�3���td\�<�6-Ocu]BA\��愔��D4l�v\�a~+{�֮\�B\0go��\�li?A\�\�\�Qp�t\�\�ØR\�,`N\�IF�\�o�Q{:\�g�4)~�vKo?�P�\�Q\����0\0s$��\�s\�&��Ny�\�i��\�kW�\�W�˂H`��S \�\�\�H\�N\�%q\�(.�۳\�ȝ��\�VD��\�\�\�Ֆ�F8\�֣\�$\�\�[2\n�A,�\�Lӈ\�\�\�ٹ|\�M0�E\�y��\�\�-���\'�&\�m�\�љ\�S\�\�\��=�\�X\0\�A${O�\�֤X\�k\�O;8goW\�2p\����\���\�\�?�fWW���\�sw�{�\�7:\�T��\�\�h��\�@f�«�}\�\�2\�G \�?�P~_祯�Ȭp�\�n\�ͻ-ј\��Bŷ��vX\�\�6����ϊ��rB\�_H_\�9\n�uj�I\�\�)2%\�vZ\�\"�^\'�\�@\�\�t\�=ވ\�_�\�\"���\�6B:\��s�\���5P�\�\��,S%R78�;v\�\r\��Y\�\����\�R��qY\�%.\�f6�\�\�7�{4xm\�=@=^\�\��\�\�\\!\�\�6Y}���Lb\�{*�dc$]\�<*�\�\�˟LL�t�20\�\�\�\�;=[\�=����jύ\�*\��\�%\����	j�S\��A@G�3/��\�w\�\�\�$��E\�\�DB\�-�oڱ\�\�߾\�\�\�\�]څ�x�\��s߇ҕ\�S\�9��9Ǐ\��6�GD\�]C��Ą��,lFq��\�w���E\r\\\�\�SΏkϞ=3���m�^���l\����\��I�{Q8t�J\�`�\�\�P����\n\'S�ɿ�\�Ak%�V�\�\�7�L-uv��5\�\���3F�\�u%\�\�NbݴS<�L\�\��\��)����Sd5N���.��GV�Y޵	Q�_j\�R��d�d\�\�\�[_�O>!t��\�\�B�O>!t��\�\�B�O>!t��\�\�B�O��\���\�3�\�B\��,\�\�7\����m�\�\�lLu����\0~\�h�\��\�\� �Xs�\0z�on��ݭ���Kʹ֍�\�B��A፫/\�7�7�\�\�/�ӯؘM0Zˀ\�\�\�\�P`��j\�Խ\r�\�ZN����yo\�tڼ���\�\�;\�\�\�\�,��\�Տu)i�k�G���\�[���Ѡ\�\�}�}�@v\�\�9sO�H,�tIK\�0���C{\�G���\�ˤt�B \��-�\�W\\\�H�=M\�dN~���(��>y�\�\' r]�®K5��{�\�\�,\���;�\�o�\�I�\�QIzfI�����0Ѿ~\�\�yZ-�ٔ-?�fC\�\�td#E\r\�m�ml\�\�\�F�oU�O\�Β\�g�vfLj\�E\���X䶭�\��z�6\�\�\0\�j�tUJ\�oP��:�]��\�\�2�\�+J\�\��պ)2W����\�\�v�����\��X�\�\"s�;��\�oJQw�ߣf}/.o�\��\�=.uz�٬���0�[\�\�>[�H\��i\�\r/\��yA\�\�.\\\�\�~\�e\�\�w\�_�,X\�\�xmE\��6�\�{C:0a��7\�\�O\�\r\�W(ga\�\�\�I\�\�xݓsp�u�d\�PP�Y�2\�V\�D\�uP����GF�\�ouZ��o���EPA+\� �\�\�\�i�\�X}sL]�����lLMo��\�\�6f�gc\�\�ܫن������@\�\�C/\�\�	ˋм��.\����\�C3w/��\�\�\�\�.\�X�y9}ݮ���\'t�>l�e:\�?��H\�u�0\�<s����0s>G�0�?E�H/\�\�\�psL˾���\�B���R\�~L\�-�7�)\�m������w��\�\�骋S��\0B\�\�\�\�Ͱ\�\rP\�O\�\�\�|̝\�\�]�\n{�\�\�\�=��Q�\�i���\�@w���\�\�\�Z�\��#�c<�\�Kb\n�\'��\�\��\��RO\�3�꓀޿�O\�\rV��\�	KKZ\�\�`�\�&:�}�Z�u��fta\�j�IKqD\�+pτ\�\��F��Ƭ��.풮e��ߨ\��\�\�	�Pi\�\��\"	\����p�D1j@_�j\�N\0');
/*!40000 ALTER TABLE `cache_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_pages_tags`
--

DROP TABLE IF EXISTS `cache_pages_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_pages_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_pages_tags`
--

LOCK TABLES `cache_pages_tags` WRITE;
/*!40000 ALTER TABLE `cache_pages_tags` DISABLE KEYS */;
INSERT INTO `cache_pages_tags` VALUES
(1,'2_86aa2d707b704fa2','pages_2'),
(2,'2_86aa2d707b704fa2','pages_1'),
(3,'2_86aa2d707b704fa2','tx_bulmapackage_settings_1'),
(4,'2_86aa2d707b704fa2','sys_file_2'),
(5,'2_86aa2d707b704fa2','sys_file_metadata_2'),
(6,'2_86aa2d707b704fa2','tt_content_2'),
(7,'2_86aa2d707b704fa2','tx_bulmapackage_settings_link_item_1'),
(8,'2_86aa2d707b704fa2','tx_bulmapackage_settings_link_item_2'),
(9,'2_86aa2d707b704fa2','pageId_2');
/*!40000 ALTER TABLE `cache_pages_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline`
--

DROP TABLE IF EXISTS `cache_rootline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_rootline` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `expires` int(10) unsigned NOT NULL DEFAULT 0,
  `content` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(180),`expires`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline`
--

LOCK TABLES `cache_rootline` WRITE;
/*!40000 ALTER TABLE `cache_rootline` DISABLE KEYS */;
INSERT INTO `cache_rootline` VALUES
(1,'2__0_0_0_0',1754496321,'x�\�VMo\�8�+�\���\�8N�S�\�m���=4I˄%Q%�\�F��ޑ�m;\�=l\r_<�\�y3\�f��W����\�\�U�9*���f�\�[�\�F\�\��\\��n�v�*F�+\�|9�,Q�x\�\r�N)\�ޭ`�w�G���-\�|\�;�\"w�\�p\\+9�\�\Z��(\�>-�]==yqXu�\n%\�O\\S%z#$\�\�ݞ��0��;h�\�G�\�\��9v�Ok*��\�pO\�\��\�hx^Uz\�L4�V�1�\��\�\��%\��Z<��\�6�.���Yk�5\�\Z\�V�\�?\�-�Eք\�x\�Q\��;~0�\�/\�}B	\�rlH�3�\r\'P\�\�NP\�\�Ft;�^K%��Lv��%[<fƄ��iȝ9\�\�\Z�sk��Z\�@��q���\�pR\� �2\\ƞ\�*CCL�K%��\�\�Q5�k\n��0\\I\��\�\�\�^*\�Nk��Ӎ�BC��я�\�<)n�\��J64Ή��\�\�\�hp؛|��3>p�/�F\�):\��Ҝ(����\�����VrS�\�Q\�4\�qsR��L�\Z�iI�\�*�o��\�~st(\�\��k\�a�\nk5w��-D���\�\�6���)\\@\�^�D�9�\�/$�x(\�\�VX�1\��eRޥ\�:/z��:�\0\���>r\�j<h��lVs�O��_\Z?\�y\�O\�O\�,��X*Yג\�I���w��~\\=�\�\�\��\�?�\�TO�t:�T\�Ί8\�p+XHk�p\�=�T�S�\�\�4Ql\�(?/<\�!�j\�\�\�\�\�~\�\�iE\�\�\�%Ƶ&\�kC\�H�\�\��><\�V�4�)u틾l\�\�O\�-GA��h��\�j)�]��\�`�\�ĸ|/7g���2ϹCQKb\���]\�J,bc\�V)\�S�J\�,�4\�;6G\'� \�84�x\�\�@P�\��m\�1\�!H�e�BY\�\�\�9��	\0\']L|���\�%H\0�\�9��\'E\�\�@\�-򲞅$4�9$\�I\���N�<m,�3�\��B�g�\�I.��\�x�.	{r�\r:m\�\�%��䟜�$�Е�ݐ�\'k\�袤�\�\�e=�~\��\�\�\�\��\0[elyy�-\�\�\����\�\�:�^\�\�\0�\��N�\�\���l�_?�\�_�\�\�6�V׉\��8���u\�\�\�');
/*!40000 ALTER TABLE `cache_rootline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_rootline_tags`
--

DROP TABLE IF EXISTS `cache_rootline_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_rootline_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `identifier` varchar(250) NOT NULL DEFAULT '',
  `tag` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cache_id` (`identifier`(191)),
  KEY `cache_tag` (`tag`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_rootline_tags`
--

LOCK TABLES `cache_rootline_tags` WRITE;
/*!40000 ALTER TABLE `cache_rootline_tags` DISABLE KEYS */;
INSERT INTO `cache_rootline_tags` VALUES
(1,'2__0_0_0_0','pageId_1'),
(2,'2__0_0_0_0','pageId_2');
/*!40000 ALTER TABLE `cache_rootline_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fe_groups`
--

DROP TABLE IF EXISTS `fe_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_groups` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `subgroup` varchar(255) DEFAULT '',
  `felogin_redirectPid` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_sessions` (
  `ses_id` varchar(190) NOT NULL DEFAULT '',
  `ses_iplock` varchar(39) NOT NULL DEFAULT '',
  `ses_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `ses_data` mediumblob DEFAULT NULL,
  `ses_permanent` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ses_id`),
  KEY `ses_tstamp` (`ses_tstamp`,`ses_userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `fe_users` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disable` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_extbase_type` varchar(255) NOT NULL DEFAULT '0',
  `uc` blob DEFAULT NULL,
  `is_online` int(10) unsigned NOT NULL DEFAULT 0,
  `mfa` mediumblob DEFAULT NULL,
  `felogin_forgotHash` varchar(80) DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `usergroup` varchar(512) DEFAULT '',
  `name` varchar(160) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(50) NOT NULL DEFAULT '',
  `last_name` varchar(50) NOT NULL DEFAULT '',
  `address` longtext DEFAULT NULL,
  `telephone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(40) NOT NULL DEFAULT '',
  `zip` varchar(10) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(40) NOT NULL DEFAULT '',
  `www` varchar(80) NOT NULL DEFAULT '',
  `company` varchar(80) NOT NULL DEFAULT '',
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `lastlogin` bigint(20) NOT NULL DEFAULT 0,
  `felogin_redirectPid` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`username`(100)),
  KEY `username` (`username`(100)),
  KEY `is_online` (`is_online`),
  KEY `felogin_forgotHash` (`felogin_forgotHash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pages` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `perms_userid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(10) unsigned NOT NULL DEFAULT 0,
  `perms_user` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_group` smallint(5) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` smallint(5) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `sitemap_priority` decimal(2,1) NOT NULL DEFAULT 0.5,
  `thumbnail` int(10) unsigned DEFAULT 0,
  `exclude_slug_for_subpages` smallint(6) NOT NULL DEFAULT 0,
  `hide_breadcrumb` smallint(6) NOT NULL DEFAULT 0,
  `doktype` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `slug` text DEFAULT NULL,
  `TSconfig` longtext DEFAULT NULL,
  `php_tree_stop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` longtext DEFAULT NULL,
  `extendToSubpages` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nav_title` varchar(255) NOT NULL DEFAULT '',
  `nav_hide` smallint(5) unsigned NOT NULL DEFAULT 0,
  `subtitle` varchar(255) NOT NULL DEFAULT '',
  `target` varchar(80) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `lastUpdated` bigint(20) NOT NULL DEFAULT 0,
  `newUntil` bigint(20) NOT NULL DEFAULT 0,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) NOT NULL DEFAULT '',
  `no_search` smallint(5) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` longtext DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `abstract` longtext DEFAULT NULL,
  `author` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `is_siteroot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` smallint(6) NOT NULL DEFAULT 0,
  `module` varchar(255) NOT NULL DEFAULT '',
  `l18n_cfg` smallint(5) unsigned NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) NOT NULL DEFAULT '',
  `tsconfig_includes` varchar(255) DEFAULT '',
  `seo_title` varchar(255) NOT NULL DEFAULT '',
  `no_index` smallint(5) unsigned NOT NULL DEFAULT 0,
  `no_follow` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sitemap_changefreq` varchar(10) NOT NULL DEFAULT '',
  `canonical_link` text NOT NULL DEFAULT '',
  `og_title` varchar(255) NOT NULL DEFAULT '',
  `og_description` longtext DEFAULT NULL,
  `og_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_title` varchar(255) NOT NULL DEFAULT '',
  `twitter_description` longtext DEFAULT NULL,
  `twitter_image` int(10) unsigned NOT NULL DEFAULT 0,
  `twitter_card` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `determineSiteRoot` (`is_siteroot`),
  KEY `language_identifier` (`l10n_parent`,`sys_language_uid`),
  KEY `slug` (`slug`(127)),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `translation_source` (`l10n_source`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES
(1,0,1750100351,1750100341,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"TSconfig\":\"\",\"abstract\":\"\",\"author\":\"\",\"author_email\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"cache_tags\":\"\",\"cache_timeout\":\"\",\"canonical_link\":\"\",\"categories\":\"\",\"content_from_pid\":\"\",\"description\":\"\",\"doktype\":\"\",\"editlock\":\"\",\"endtime\":\"\",\"exclude_slug_for_subpages\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"hidden\":\"\",\"hide_breadcrumb\":\"\",\"is_siteroot\":\"\",\"keywords\":\"\",\"l18n_cfg\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"media\":\"\",\"module\":\"\",\"nav_hide\":\"\",\"nav_title\":\"\",\"newUntil\":\"\",\"no_follow\":\"\",\"no_index\":\"\",\"no_search\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"og_title\":\"\",\"php_tree_stop\":\"\",\"rowDescription\":\"\",\"seo_title\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"slug\":\"\",\"starttime\":\"\",\"subtitle\":\"\",\"target\":\"\",\"thumbnail\":\"\",\"title\":\"\",\"tsconfig_includes\":\"\",\"twitter_card\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_title\":\"\"}',0,0,0,0,2,0,31,27,0,1750100351,0,0,0,0,0.5,0,0,0,1,'Home','/',NULL,0,0,'0',0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,1,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,''),
(2,1,1750101067,1750100377,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"TSconfig\":\"\",\"abstract\":\"\",\"author\":\"\",\"author_email\":\"\",\"backend_layout\":\"\",\"backend_layout_next_level\":\"\",\"cache_tags\":\"\",\"cache_timeout\":\"\",\"canonical_link\":\"\",\"categories\":\"\",\"content_from_pid\":\"\",\"description\":\"\",\"doktype\":\"\",\"editlock\":\"\",\"endtime\":\"\",\"exclude_slug_for_subpages\":\"\",\"extendToSubpages\":\"\",\"fe_group\":\"\",\"hidden\":\"\",\"hide_breadcrumb\":\"\",\"is_siteroot\":\"\",\"keywords\":\"\",\"l18n_cfg\":\"\",\"lastUpdated\":\"\",\"layout\":\"\",\"media\":\"\",\"module\":\"\",\"nav_hide\":\"\",\"nav_title\":\"\",\"newUntil\":\"\",\"no_follow\":\"\",\"no_index\":\"\",\"no_search\":\"\",\"og_description\":\"\",\"og_image\":\"\",\"og_title\":\"\",\"php_tree_stop\":\"\",\"rowDescription\":\"\",\"seo_title\":\"\",\"sitemap_changefreq\":\"\",\"sitemap_priority\":\"\",\"slug\":\"\",\"starttime\":\"\",\"subtitle\":\"\",\"target\":\"\",\"thumbnail\":\"\",\"title\":\"\",\"tsconfig_includes\":\"\",\"twitter_card\":\"\",\"twitter_description\":\"\",\"twitter_image\":\"\",\"twitter_title\":\"\"}',0,0,0,0,2,0,31,27,0,1750101067,0,0,0,0,0.5,0,0,0,1,'FAQ - Demo','/faq-demo',NULL,0,0,'0',0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,''),
(3,1,1750105118,1750105109,0,0,0,0,'0',512,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,0,31,27,0,0,0,0,0,0,0.5,0,0,0,199,'Records','/records',NULL,0,0,'0',0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,''),
(4,3,1750105136,1750105133,0,0,0,0,'0',256,NULL,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,0,31,27,0,0,0,0,0,0,0.5,0,0,0,254,'FAQ Records','/records/faq-records',NULL,0,0,'0',0,'',0,'','','',0,0,0,'',0,0,NULL,NULL,NULL,'','',0,0,0,'',0,'','','','',0,0,'','','',NULL,0,'',NULL,0,'');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_be_shortcuts`
--

DROP TABLE IF EXISTS `sys_be_shortcuts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_be_shortcuts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `route` varchar(255) NOT NULL DEFAULT '',
  `arguments` text DEFAULT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sc_group` smallint(6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_category` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `items` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  `slug` varchar(255) NOT NULL DEFAULT '/',
  PRIMARY KEY (`uid`),
  KEY `category_parent` (`parent`),
  KEY `category_list` (`pid`,`deleted`,`sys_language_uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category`
--

LOCK TABLES `sys_category` WRITE;
/*!40000 ALTER TABLE `sys_category` DISABLE KEYS */;
INSERT INTO `sys_category` VALUES
(1,4,1750405502,1750105693,0,0,0,0,256,'',0,0,NULL,'{\"description\":\"\",\"endtime\":\"\",\"hidden\":\"\",\"items\":\"\",\"parent\":\"\",\"slug\":\"\",\"starttime\":\"\",\"title\":\"\"}',0,0,0,0,5,'Business',0,'business'),
(2,4,1750405527,1750105700,0,0,0,0,512,'',0,0,NULL,'{\"description\":\"\",\"endtime\":\"\",\"hidden\":\"\",\"items\":\"\",\"parent\":\"\",\"slug\":\"\",\"starttime\":\"\",\"title\":\"\"}',0,0,0,0,9,'Sports',0,'sports'),
(3,4,1750405511,1750105709,0,0,0,0,768,'',0,0,NULL,'{\"description\":\"\",\"endtime\":\"\",\"hidden\":\"\",\"items\":\"\",\"parent\":\"\",\"slug\":\"\",\"starttime\":\"\",\"title\":\"\"}',0,0,0,0,7,'Technology',0,'technology'),
(4,4,1750405518,1750105725,0,0,0,0,1024,'',0,0,NULL,'{\"description\":\"\",\"endtime\":\"\",\"hidden\":\"\",\"items\":\"\",\"parent\":\"\",\"slug\":\"\",\"starttime\":\"\",\"title\":\"\"}',0,0,0,0,9,'Electronics',0,'electronics'),
(5,4,1750405522,1750105769,0,0,0,0,1280,'',0,0,NULL,'{\"description\":\"\",\"endtime\":\"\",\"hidden\":\"\",\"items\":\"\",\"parent\":\"\",\"slug\":\"\",\"starttime\":\"\",\"title\":\"\"}',0,0,0,0,10,'Space',0,'space'),
(6,4,1750405495,1750105782,0,0,0,0,128,'',0,0,NULL,'{\"description\":\"\",\"endtime\":\"\",\"hidden\":\"\",\"items\":\"\",\"parent\":\"\",\"slug\":\"\",\"starttime\":\"\",\"title\":\"\"}',0,0,0,0,10,'Finance',0,'finance');
/*!40000 ALTER TABLE `sys_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_category_record_mm`
--

DROP TABLE IF EXISTS `sys_category_record_mm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_category_record_mm` (
  `uid_local` int(10) unsigned NOT NULL DEFAULT 0,
  `uid_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting_foreign` int(10) unsigned NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid_local`,`uid_foreign`,`tablenames`,`fieldname`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_category_record_mm`
--

LOCK TABLES `sys_category_record_mm` WRITE;
/*!40000 ALTER TABLE `sys_category_record_mm` DISABLE KEYS */;
INSERT INTO `sys_category_record_mm` VALUES
(1,2,1,0,'tx_ckfaq_domain_model_records','category'),
(1,36,2,0,'tx_ckfaq_domain_model_records','category'),
(1,37,3,0,'tx_ckfaq_domain_model_records','category'),
(1,43,4,0,'tx_ckfaq_domain_model_records','category'),
(1,49,5,0,'tx_ckfaq_domain_model_records','category'),
(2,1,1,0,'tx_ckfaq_domain_model_records','category'),
(2,8,2,0,'tx_ckfaq_domain_model_records','category'),
(2,9,3,0,'tx_ckfaq_domain_model_records','category'),
(2,17,4,0,'tx_ckfaq_domain_model_records','category'),
(2,25,5,0,'tx_ckfaq_domain_model_records','category'),
(2,26,6,0,'tx_ckfaq_domain_model_records','category'),
(2,34,7,0,'tx_ckfaq_domain_model_records','category'),
(2,41,8,0,'tx_ckfaq_domain_model_records','category'),
(2,50,9,0,'tx_ckfaq_domain_model_records','category'),
(3,3,1,0,'tx_ckfaq_domain_model_records','category'),
(3,10,2,0,'tx_ckfaq_domain_model_records','category'),
(3,18,3,0,'tx_ckfaq_domain_model_records','category'),
(3,27,4,0,'tx_ckfaq_domain_model_records','category'),
(3,28,5,0,'tx_ckfaq_domain_model_records','category'),
(3,39,6,0,'tx_ckfaq_domain_model_records','category'),
(3,42,7,0,'tx_ckfaq_domain_model_records','category'),
(4,4,1,0,'tx_ckfaq_domain_model_records','category'),
(4,11,2,0,'tx_ckfaq_domain_model_records','category'),
(4,20,3,0,'tx_ckfaq_domain_model_records','category'),
(4,23,4,0,'tx_ckfaq_domain_model_records','category'),
(4,24,5,0,'tx_ckfaq_domain_model_records','category'),
(4,33,6,0,'tx_ckfaq_domain_model_records','category'),
(4,38,7,0,'tx_ckfaq_domain_model_records','category'),
(4,45,8,0,'tx_ckfaq_domain_model_records','category'),
(4,48,9,0,'tx_ckfaq_domain_model_records','category'),
(5,5,1,0,'tx_ckfaq_domain_model_records','category'),
(5,12,2,0,'tx_ckfaq_domain_model_records','category'),
(5,13,3,0,'tx_ckfaq_domain_model_records','category'),
(5,19,4,0,'tx_ckfaq_domain_model_records','category'),
(5,29,5,0,'tx_ckfaq_domain_model_records','category'),
(5,30,6,0,'tx_ckfaq_domain_model_records','category'),
(5,35,7,0,'tx_ckfaq_domain_model_records','category'),
(5,40,8,0,'tx_ckfaq_domain_model_records','category'),
(5,44,9,0,'tx_ckfaq_domain_model_records','category'),
(5,46,10,0,'tx_ckfaq_domain_model_records','category'),
(6,6,1,0,'tx_ckfaq_domain_model_records','category'),
(6,7,2,0,'tx_ckfaq_domain_model_records','category'),
(6,14,3,0,'tx_ckfaq_domain_model_records','category'),
(6,15,4,0,'tx_ckfaq_domain_model_records','category'),
(6,16,5,0,'tx_ckfaq_domain_model_records','category'),
(6,21,6,0,'tx_ckfaq_domain_model_records','category'),
(6,22,7,0,'tx_ckfaq_domain_model_records','category'),
(6,31,8,0,'tx_ckfaq_domain_model_records','category'),
(6,32,9,0,'tx_ckfaq_domain_model_records','category'),
(6,47,10,0,'tx_ckfaq_domain_model_records','category');
/*!40000 ALTER TABLE `sys_category_record_mm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_csp_resolution`
--

DROP TABLE IF EXISTS `sys_csp_resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_csp_resolution` (
  `summary` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `scope` varchar(264) NOT NULL,
  `mutation_identifier` text DEFAULT NULL,
  `mutation_collection` mediumtext DEFAULT NULL,
  `meta` mediumtext DEFAULT NULL,
  PRIMARY KEY (`summary`),
  KEY `created` (`created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_csp_resolution`
--

LOCK TABLES `sys_csp_resolution` WRITE;
/*!40000 ALTER TABLE `sys_csp_resolution` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_csp_resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file`
--

DROP TABLE IF EXISTS `sys_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `last_indexed` int(11) NOT NULL DEFAULT 0,
  `identifier` text DEFAULT NULL,
  `identifier_hash` varchar(40) NOT NULL DEFAULT '',
  `folder_hash` varchar(40) NOT NULL DEFAULT '',
  `extension` varchar(255) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `sha1` varchar(40) NOT NULL DEFAULT '',
  `creation_date` int(11) NOT NULL DEFAULT 0,
  `modification_date` int(11) NOT NULL DEFAULT 0,
  `storage` int(10) unsigned NOT NULL DEFAULT 0,
  `type` int(10) unsigned NOT NULL DEFAULT 0,
  `mime_type` varchar(255) NOT NULL DEFAULT '',
  `size` int(11) NOT NULL DEFAULT 0,
  `missing` smallint(5) unsigned NOT NULL DEFAULT 0,
  `metadata` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `sel01` (`storage`,`identifier_hash`),
  KEY `folder` (`storage`,`folder_hash`),
  KEY `tstamp` (`tstamp`),
  KEY `lastindex` (`last_indexed`),
  KEY `sha1` (`sha1`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file`
--

LOCK TABLES `sys_file` WRITE;
/*!40000 ALTER TABLE `sys_file` DISABLE KEYS */;
INSERT INTO `sys_file` VALUES
(1,0,1750100474,1750100474,'/user_upload/index.html','c25533f303185517ca3e1e24b215d53aa74076d2','19669f1e02c2f16705ec7587044c66443be70725','html','index.html','da39a3ee5e6b4b0d3255bfef95601890afd80709',1750094982,1750094982,1,5,'application/x-empty',0,0,0),
(2,0,1750100474,1750100474,'/user_upload/logo.png','82dce5b5029567bd613082e559032de95445a19c','19669f1e02c2f16705ec7587044c66443be70725','png','logo.png','2b612679f281ea80dfba0ad7cf768a3d65e3f85f',1750098224,1750098224,1,2,'image/png',90608,0,0);
/*!40000 ALTER TABLE `sys_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_collection`
--

DROP TABLE IF EXISTS `sys_file_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_collection` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `type` varchar(30) NOT NULL DEFAULT 'static',
  `files` int(10) unsigned NOT NULL DEFAULT 0,
  `folder_identifier` longtext DEFAULT NULL,
  `recursive` smallint(5) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_metadata` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `file` int(10) unsigned NOT NULL DEFAULT 0,
  `description` longtext DEFAULT NULL,
  `width` int(11) NOT NULL DEFAULT 0,
  `height` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `file` (`file`),
  KEY `fal_filelist` (`l10n_parent`,`sys_language_uid`),
  KEY `parent` (`pid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_metadata`
--

LOCK TABLES `sys_file_metadata` WRITE;
/*!40000 ALTER TABLE `sys_file_metadata` DISABLE KEYS */;
INSERT INTO `sys_file_metadata` VALUES
(1,0,1750100474,1750100474,0,0,NULL,'',0,0,0,0,NULL,NULL,0,1,NULL,0,0),
(2,0,1750100474,1750100474,0,0,NULL,'',0,0,0,0,NULL,NULL,0,2,NULL,1080,944);
/*!40000 ALTER TABLE `sys_file_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_processedfile`
--

DROP TABLE IF EXISTS `sys_file_processedfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_processedfile` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `tstamp` int(11) NOT NULL DEFAULT 0,
  `crdate` int(11) NOT NULL DEFAULT 0,
  `storage` int(11) NOT NULL DEFAULT 0,
  `original` int(11) NOT NULL DEFAULT 0,
  `identifier` varchar(512) NOT NULL DEFAULT '',
  `name` tinytext DEFAULT NULL,
  `processing_url` text DEFAULT NULL,
  `configuration` blob DEFAULT NULL,
  `configurationsha1` varchar(40) NOT NULL DEFAULT '',
  `originalfilesha1` varchar(40) NOT NULL DEFAULT '',
  `task_type` varchar(200) NOT NULL DEFAULT '',
  `checksum` varchar(32) NOT NULL DEFAULT '',
  `width` int(11) DEFAULT 0,
  `height` int(11) DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `combined_1` (`original`,`task_type`(100),`configurationsha1`),
  KEY `identifier` (`storage`,`identifier`(180))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_processedfile`
--

LOCK TABLES `sys_file_processedfile` WRITE;
/*!40000 ALTER TABLE `sys_file_processedfile` DISABLE KEYS */;
INSERT INTO `sys_file_processedfile` VALUES
(1,1750100474,1750100474,1,2,'/_processed_/3/c/csm_logo_479810739a.png','csm_logo_479810739a.png','','a:2:{s:5:\"width\";s:3:\"32c\";s:6:\"height\";s:3:\"32c\";}','48ec22f851d7822181aeed9649f97929e5f0c410','2b612679f281ea80dfba0ad7cf768a3d65e3f85f','Image.CropScaleMask','479810739a',32,32),
(2,1750100474,1750100474,1,2,'/_processed_/3/c/csm_logo_9cb7bfd27d.png','csm_logo_9cb7bfd27d.png','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:166;s:9:\"maxHeight\";i:115;s:4:\"crop\";N;}','42bbd46565440d020e85026168e5aeb9653d29fa','2b612679f281ea80dfba0ad7cf768a3d65e3f85f','Image.CropScaleMask','9cb7bfd27d',132,115),
(3,1750100475,1750100475,1,2,'/_processed_/3/c/csm_logo_4e11ac8e22.png','csm_logo_4e11ac8e22.png','','a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";N;s:9:\"maxHeight\";i:150;s:4:\"crop\";N;}','cfe93cbb07d0cfbe7800b799777ad2e70305dbab','2b612679f281ea80dfba0ad7cf768a3d65e3f85f','Image.CropScaleMask','4e11ac8e22',172,150),
(4,1750100475,1750100475,1,2,'/_processed_/3/c/csm_logo_5d186f756f.png','csm_logo_5d186f756f.png','','a:3:{s:8:\"maxWidth\";i:145;s:9:\"maxHeight\";i:45;s:6:\"height\";s:3:\"45m\";}','99641ee1e111db8018e526d3105ad5631f8f88a4','2b612679f281ea80dfba0ad7cf768a3d65e3f85f','Image.CropScaleMask','5d186f756f',51,45),
(5,1750100624,1750100624,1,2,'/_processed_/3/c/csm_logo_46455bcce1.png','csm_logo_46455bcce1.png',NULL,'a:7:{s:5:\"width\";N;s:6:\"height\";N;s:8:\"minWidth\";N;s:9:\"minHeight\";N;s:8:\"maxWidth\";i:215;s:9:\"maxHeight\";i:60;s:4:\"crop\";N;}','7ae508d9aad9928e9e83b983b9c530a83f5d12ab','2b612679f281ea80dfba0ad7cf768a3d65e3f85f','Image.CropScaleMask','46455bcce1',69,60);
/*!40000 ALTER TABLE `sys_file_processedfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_reference`
--

DROP TABLE IF EXISTS `sys_file_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_reference` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `uid_local` int(11) NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `alternative` text DEFAULT NULL,
  `uid_foreign` int(11) NOT NULL DEFAULT 0,
  `tablenames` varchar(64) NOT NULL DEFAULT '',
  `fieldname` varchar(64) NOT NULL DEFAULT '',
  `sorting_foreign` int(11) NOT NULL DEFAULT 0,
  `link` text NOT NULL DEFAULT '',
  `description` longtext DEFAULT NULL,
  `crop` longtext DEFAULT NULL,
  `autoplay` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `tablenames_fieldname` (`tablenames`(32),`fieldname`(12)),
  KEY `deleted` (`deleted`),
  KEY `uid_local` (`uid_local`),
  KEY `uid_foreign` (`uid_foreign`),
  KEY `combined_1` (`l10n_parent`,`t3ver_oid`,`t3ver_wsid`,`t3ver_state`,`deleted`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_reference`
--

LOCK TABLES `sys_file_reference` WRITE;
/*!40000 ALTER TABLE `sys_file_reference` DISABLE KEYS */;
INSERT INTO `sys_file_reference` VALUES
(1,1,1750100639,1750100618,0,0,0,0,NULL,'{\"hidden\":\"\"}',0,0,0,0,2,NULL,NULL,1,'tx_bulmapackage_settings','logo_main',1,'',NULL,'{\"default\":{\"cropArea\":{\"x\":0,\"y\":0,\"width\":1,\"height\":1},\"selectedRatio\":\"NaN\",\"focusArea\":null}}',0);
/*!40000 ALTER TABLE `sys_file_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_file_storage`
--

DROP TABLE IF EXISTS `sys_file_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_file_storage` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_public` smallint(6) NOT NULL DEFAULT 0,
  `processingfolder` tinytext DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `is_browsable` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_default` smallint(5) unsigned NOT NULL DEFAULT 0,
  `is_writable` smallint(5) unsigned NOT NULL DEFAULT 1,
  `is_online` smallint(5) unsigned NOT NULL DEFAULT 1,
  `auto_extract_metadata` smallint(5) unsigned NOT NULL DEFAULT 1,
  `driver` varchar(255) NOT NULL DEFAULT '',
  `configuration` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_file_storage`
--

LOCK TABLES `sys_file_storage` WRITE;
/*!40000 ALTER TABLE `sys_file_storage` DISABLE KEYS */;
INSERT INTO `sys_file_storage` VALUES
(1,0,1750100343,1750100343,0,'This is the local fileadmin/ directory. This storage mount has been created automatically by TYPO3.',1,NULL,'fileadmin',1,1,1,1,1,'Local','<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>\n<T3FlexForms>\n    <data>\n        <sheet index=\"sDEF\">\n            <language index=\"lDEF\">\n                <field index=\"basePath\">\n                    <value index=\"vDEF\">fileadmin/</value>\n                </field>\n                <field index=\"pathType\">\n                    <value index=\"vDEF\">relative</value>\n                </field>\n                <field index=\"caseSensitive\">\n                    <value index=\"vDEF\">1</value>\n                </field>\n            </language>\n        </sheet>\n    </data>\n</T3FlexForms>');
/*!40000 ALTER TABLE `sys_file_storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_filemounts`
--

DROP TABLE IF EXISTS `sys_filemounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_filemounts` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `identifier` longtext DEFAULT NULL,
  `read_only` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_history` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `actiontype` smallint(6) NOT NULL DEFAULT 0,
  `usertype` varchar(2) NOT NULL DEFAULT 'BE',
  `userid` int(10) unsigned DEFAULT NULL,
  `originaluserid` int(10) unsigned DEFAULT NULL,
  `recuid` int(11) NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `history_data` mediumtext DEFAULT NULL,
  `workspace` int(11) DEFAULT 0,
  `correlation_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `recordident_1` (`tablename`(100),`recuid`),
  KEY `recordident_2` (`tablename`(100),`tstamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_history`
--

LOCK TABLES `sys_history` WRITE;
/*!40000 ALTER TABLE `sys_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_http_report`
--

DROP TABLE IF EXISTS `sys_http_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_http_report` (
  `uuid` varchar(36) NOT NULL,
  `status` smallint(5) unsigned NOT NULL DEFAULT 0,
  `created` int(10) unsigned NOT NULL,
  `changed` int(10) unsigned NOT NULL,
  `type` varchar(32) NOT NULL,
  `scope` varchar(100) NOT NULL,
  `request_time` bigint(20) unsigned NOT NULL,
  `meta` mediumtext DEFAULT NULL,
  `details` mediumtext DEFAULT NULL,
  `summary` varchar(40) NOT NULL,
  PRIMARY KEY (`uuid`),
  KEY `type_scope` (`type`,`scope`),
  KEY `created` (`created`),
  KEY `changed` (`changed`),
  KEY `request_time` (`request_time`),
  KEY `summary_created` (`summary`,`created`),
  KEY `all_conditions` (`type`,`status`,`scope`,`summary`,`request_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_http_report`
--

LOCK TABLES `sys_http_report` WRITE;
/*!40000 ALTER TABLE `sys_http_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_http_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_lockedrecords`
--

DROP TABLE IF EXISTS `sys_lockedrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_lockedrecords` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `record_table` varchar(255) NOT NULL DEFAULT '',
  `record_uid` int(11) NOT NULL DEFAULT 0,
  `record_pid` int(11) NOT NULL DEFAULT 0,
  `username` varchar(50) NOT NULL DEFAULT '',
  `feuserid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`tstamp`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_log` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `userid` int(10) unsigned NOT NULL DEFAULT 0,
  `action` smallint(5) unsigned NOT NULL DEFAULT 0,
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `tablename` varchar(255) NOT NULL DEFAULT '',
  `recpid` int(11) NOT NULL DEFAULT 0,
  `error` smallint(5) unsigned NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `type` smallint(5) unsigned NOT NULL DEFAULT 0,
  `channel` varchar(20) NOT NULL DEFAULT 'default',
  `details_nr` smallint(6) NOT NULL DEFAULT 0,
  `IP` varchar(39) NOT NULL DEFAULT '',
  `log_data` text DEFAULT NULL,
  `event_pid` int(11) NOT NULL DEFAULT -1,
  `workspace` int(11) NOT NULL DEFAULT 0,
  `request_id` varchar(13) NOT NULL DEFAULT '',
  `time_micro` double NOT NULL DEFAULT 0,
  `component` varchar(255) NOT NULL DEFAULT '',
  `level` varchar(10) NOT NULL DEFAULT 'info',
  `message` text DEFAULT NULL,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `event` (`userid`,`event_pid`),
  KEY `recuidIdx` (`recuid`),
  KEY `user_auth` (`type`,`action`,`tstamp`),
  KEY `request` (`request_id`),
  KEY `combined_1` (`tstamp`,`type`,`userid`),
  KEY `errorcount` (`tstamp`,`error`),
  KEY `index_channel` (`channel`),
  KEY `index_level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_messenger_messages`
--

DROP TABLE IF EXISTS `sys_messenger_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_messenger_messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_name` (`queue_name`),
  KEY `available_at` (`available_at`),
  KEY `delivered_at` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_messenger_messages`
--

LOCK TABLES `sys_messenger_messages` WRITE;
/*!40000 ALTER TABLE `sys_messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_messenger_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_news`
--

DROP TABLE IF EXISTS `sys_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_news` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
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
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_note` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `cruser` int(10) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` longtext DEFAULT NULL,
  `personal` smallint(5) unsigned NOT NULL DEFAULT 0,
  `position` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_note`
--

LOCK TABLES `sys_note` WRITE;
/*!40000 ALTER TABLE `sys_note` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_note` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_reaction`
--

DROP TABLE IF EXISTS `sys_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_reaction` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `impersonate_user` int(10) unsigned NOT NULL DEFAULT 0,
  `storage_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `reaction_type` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `identifier` varchar(36) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `table_name` varchar(255) NOT NULL DEFAULT '',
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`fields`)),
  PRIMARY KEY (`uid`),
  UNIQUE KEY `identifier_key` (`identifier`),
  KEY `index_source` (`reaction_type`(5)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_reaction`
--

LOCK TABLES `sys_reaction` WRITE;
/*!40000 ALTER TABLE `sys_reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_refindex`
--

DROP TABLE IF EXISTS `sys_refindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_refindex` (
  `hash` varchar(32) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '',
  `tablename` varchar(64) NOT NULL DEFAULT '',
  `recuid` int(10) unsigned NOT NULL DEFAULT 0,
  `field` varchar(64) NOT NULL DEFAULT '',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 2147483647,
  `t3ver_state` int(10) unsigned NOT NULL DEFAULT 0,
  `flexpointer` varchar(255) NOT NULL DEFAULT '',
  `softref_key` varchar(30) NOT NULL DEFAULT '',
  `softref_id` varchar(40) NOT NULL DEFAULT '',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `workspace` int(10) unsigned NOT NULL DEFAULT 0,
  `ref_table` varchar(64) NOT NULL DEFAULT '',
  `ref_uid` int(11) NOT NULL DEFAULT 0,
  `ref_field` varchar(64) NOT NULL DEFAULT '',
  `ref_hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ref_starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `ref_endtime` int(10) unsigned NOT NULL DEFAULT 2147483647,
  `ref_t3ver_state` int(10) unsigned NOT NULL DEFAULT 0,
  `ref_sorting` int(11) NOT NULL DEFAULT 0,
  `ref_string` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`hash`),
  KEY `lookup_rec` (`tablename`,`recuid`,`field`,`workspace`,`ref_t3ver_state`,`ref_hidden`,`ref_starttime`,`ref_endtime`),
  KEY `lookup_ref` (`ref_table`,`ref_uid`,`tablename`,`workspace`,`t3ver_state`,`hidden`,`starttime`,`endtime`),
  KEY `lookup_string` (`ref_string`(191)),
  KEY `idx_softref_key` (`softref_key`,`ref_uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_refindex`
--

LOCK TABLES `sys_refindex` WRITE;
/*!40000 ALTER TABLE `sys_refindex` DISABLE KEYS */;
INSERT INTO `sys_refindex` VALUES
('029d9b43cde0499407f67366fe5cc1f0','sys_category',2,'items',0,0,2147483647,0,'','','',8,0,'tx_ckfaq_domain_model_records',50,'category',0,0,2147483647,0,0,''),
('0b3c901754147a1644cd077d42766397','sys_category',2,'items',0,0,2147483647,0,'','','',4,0,'tx_ckfaq_domain_model_records',25,'category',0,0,2147483647,0,0,''),
('0c98b10856e7ebd89bdb14f88d87ed44','tx_bulmapackage_settings',1,'tx_bulmapackage_settings_link_item',0,0,2147483647,0,'','','',0,0,'tx_bulmapackage_settings_link_item',1,'',0,0,2147483647,0,0,''),
('0f9f87609ca9d989ad03b943f063c751','sys_category',4,'items',0,0,2147483647,0,'','','',4,0,'tx_ckfaq_domain_model_records',24,'category',0,0,2147483647,0,0,''),
('12efd943cfddb972d70318d3e613e96e','tx_bulmapackage_settings',1,'tx_bulmapackage_settings_link_item',0,0,2147483647,0,'','','',1,0,'tx_bulmapackage_settings_link_item',2,'',0,0,2147483647,0,0,''),
('1684a0fac06ace38ba6484f0294714fc','sys_category',6,'items',0,0,2147483647,0,'','','',4,0,'tx_ckfaq_domain_model_records',16,'category',0,0,2147483647,0,0,''),
('1ae9f58e4ca1c5be3b57765aae1dfa3f','sys_category',6,'items',0,0,2147483647,0,'','','',1,0,'tx_ckfaq_domain_model_records',7,'category',0,0,2147483647,0,0,''),
('28a73033ce50b3698b1e9caa7ed0beb3','sys_category',5,'items',0,0,2147483647,0,'','','',1,0,'tx_ckfaq_domain_model_records',12,'category',0,0,2147483647,0,0,''),
('2eb506e2c54b1b34922a9f749980aa92','sys_category',5,'items',0,0,2147483647,0,'','','',2,0,'tx_ckfaq_domain_model_records',13,'category',0,0,2147483647,0,0,''),
('300c9364da388789299351046bd4c2d5','sys_category',3,'items',0,0,2147483647,0,'','','',5,0,'tx_ckfaq_domain_model_records',39,'category',0,0,2147483647,0,0,''),
('37c1716b64bd5f5ff088dcd5eff151d8','sys_category',5,'items',0,0,2147483647,0,'','','',8,0,'tx_ckfaq_domain_model_records',44,'category',0,0,2147483647,0,0,''),
('3faabd84b84d02fde8e99e298370ad7e','sys_category',3,'items',0,0,2147483647,0,'','','',2,0,'tx_ckfaq_domain_model_records',18,'category',0,0,2147483647,0,0,''),
('4704e8d7f39763b6cbb5048a6379c3ae','sys_category',1,'items',0,0,2147483647,0,'','','',0,0,'tx_ckfaq_domain_model_records',2,'category',0,0,2147483647,0,0,''),
('4ce6635e50ab032927e95a1194434587','sys_category',3,'items',0,0,2147483647,0,'','','',6,0,'tx_ckfaq_domain_model_records',42,'category',0,0,2147483647,0,0,''),
('4f85a78510893a7abf90f54d985c0819','sys_category',5,'items',0,0,2147483647,0,'','','',7,0,'tx_ckfaq_domain_model_records',40,'category',0,0,2147483647,0,0,''),
('4fd026f8f66470584830e71d54df2cc8','sys_category',6,'items',0,0,2147483647,0,'','','',9,0,'tx_ckfaq_domain_model_records',47,'category',0,0,2147483647,0,0,''),
('5122ae79928de7d76ba4d236a8d84883','sys_category',2,'items',0,0,2147483647,0,'','','',0,0,'tx_ckfaq_domain_model_records',1,'category',0,0,2147483647,0,0,''),
('56486b989e2b6edb7fa52bd7dcc47ab5','sys_category',1,'items',0,0,2147483647,0,'','','',1,0,'tx_ckfaq_domain_model_records',36,'category',0,0,2147483647,0,0,''),
('5d63b69dc42b4800f658844f72a5599e','sys_category',6,'items',0,0,2147483647,0,'','','',8,0,'tx_ckfaq_domain_model_records',32,'category',0,0,2147483647,0,0,''),
('5f3e26a77b7346aede8a38c5dbbac326','sys_category',2,'items',0,0,2147483647,0,'','','',6,0,'tx_ckfaq_domain_model_records',34,'category',0,0,2147483647,0,0,''),
('6620b662c6ca162830a46e587c8ed720','sys_category',1,'items',0,0,2147483647,0,'','','',2,0,'tx_ckfaq_domain_model_records',37,'category',0,0,2147483647,0,0,''),
('662118c0b7a0096482db813011801a45','sys_file',1,'storage',0,0,2147483647,0,'','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,0,''),
('68275e712ee6626930e72c076be4577e','sys_file_reference',1,'uid_local',0,0,2147483647,0,'','','',0,0,'sys_file',2,'',0,0,2147483647,0,0,''),
('6f2946e98142482d37c4d9694633028d','sys_category',4,'items',0,0,2147483647,0,'','','',1,0,'tx_ckfaq_domain_model_records',11,'category',0,0,2147483647,0,0,''),
('702cfd8db85b0f8f343d2c83692d01ce','sys_category',4,'items',0,0,2147483647,0,'','','',2,0,'tx_ckfaq_domain_model_records',20,'category',0,0,2147483647,0,0,''),
('75dba13a36f4de52973069ccb667b737','sys_category',6,'items',0,0,2147483647,0,'','','',7,0,'tx_ckfaq_domain_model_records',31,'category',0,0,2147483647,0,0,''),
('788608968a09982a4279b3cb302e9cab','sys_category',4,'items',0,0,2147483647,0,'','','',7,0,'tx_ckfaq_domain_model_records',45,'category',0,0,2147483647,0,0,''),
('830febaa058b46cb7730fd0819ec39ce','sys_category',5,'items',0,0,2147483647,0,'','','',6,0,'tx_ckfaq_domain_model_records',35,'category',0,0,2147483647,0,0,''),
('85a087243f38501561c134a9c6c61156','sys_category',2,'items',0,0,2147483647,0,'','','',5,0,'tx_ckfaq_domain_model_records',26,'category',0,0,2147483647,0,0,''),
('8a37b6c9a0ebed7705bddbca672e56d6','tx_bulmapackage_settings_link_item',1,'tx_bulmapackage_settings',0,0,2147483647,0,'','','',0,0,'tx_bulmapackage_settings',1,'',0,0,2147483647,0,0,''),
('948ff9a4332e2b011a7dcda98490aa48','sys_category',3,'items',0,0,2147483647,0,'','','',4,0,'tx_ckfaq_domain_model_records',28,'category',0,0,2147483647,0,0,''),
('9c0791fadff2b4e03aefa337d2fc4882','sys_category',6,'items',0,0,2147483647,0,'','','',2,0,'tx_ckfaq_domain_model_records',14,'category',0,0,2147483647,0,0,''),
('a0f0bca1a711a354077aae78b11f2276','sys_category',2,'items',0,0,2147483647,0,'','','',1,0,'tx_ckfaq_domain_model_records',8,'category',0,0,2147483647,0,0,''),
('a6f090c134b9791e2b1619086a45377f','sys_category',3,'items',0,0,2147483647,0,'','','',0,0,'tx_ckfaq_domain_model_records',3,'category',0,0,2147483647,0,0,''),
('aca3176472bb04fffdc95722960d635d','sys_category',4,'items',0,0,2147483647,0,'','','',0,0,'tx_ckfaq_domain_model_records',4,'category',0,0,2147483647,0,0,''),
('ad54ef1849eccd0089818e55a0a33641','sys_category',2,'items',0,0,2147483647,0,'','','',2,0,'tx_ckfaq_domain_model_records',9,'category',0,0,2147483647,0,0,''),
('b149ca9f9c436b3ae9730b76cdef2ea3','sys_category',5,'items',0,0,2147483647,0,'','','',3,0,'tx_ckfaq_domain_model_records',19,'category',0,0,2147483647,0,0,''),
('b27fc8bb1b61308e60abb55b4431009e','sys_category',1,'items',0,0,2147483647,0,'','','',3,0,'tx_ckfaq_domain_model_records',43,'category',0,0,2147483647,0,0,''),
('b29f51a7f7e6e6dcc6d99be7849ae442','sys_file',2,'storage',0,0,2147483647,0,'','','',0,0,'sys_file_storage',1,'',0,0,2147483647,0,0,''),
('b364a3f273a902c0611477aa4071bde6','sys_category',2,'items',0,0,2147483647,0,'','','',7,0,'tx_ckfaq_domain_model_records',41,'category',0,0,2147483647,0,0,''),
('b7ae54304eb61b7b03434e08d23e657a','sys_category',3,'items',0,0,2147483647,0,'','','',3,0,'tx_ckfaq_domain_model_records',27,'category',0,0,2147483647,0,0,''),
('b7b0b897df93e855294ba8e8c86250ec','tx_bulmapackage_settings',1,'logo_main',0,0,2147483647,0,'','','',0,0,'sys_file_reference',1,'',0,0,2147483647,0,0,''),
('b91d7b4e6f8045f5f7fad7e449ef0118','sys_category',3,'items',0,0,2147483647,0,'','','',1,0,'tx_ckfaq_domain_model_records',10,'category',0,0,2147483647,0,0,''),
('c56620863b3ba7488a3247e832c7e4d4','sys_category',6,'items',0,0,2147483647,0,'','','',5,0,'tx_ckfaq_domain_model_records',21,'category',0,0,2147483647,0,0,''),
('cc65026380e24f552c4f504c3e0240c1','sys_category',5,'items',0,0,2147483647,0,'','','',9,0,'tx_ckfaq_domain_model_records',46,'category',0,0,2147483647,0,0,''),
('cec164d1a3e06710bfd2b2a0d929349c','sys_category',5,'items',0,0,2147483647,0,'','','',0,0,'tx_ckfaq_domain_model_records',5,'category',0,0,2147483647,0,0,''),
('d13407d05be3ab59ca94146697b9ec15','sys_category',5,'items',0,0,2147483647,0,'','','',4,0,'tx_ckfaq_domain_model_records',29,'category',0,0,2147483647,0,0,''),
('d9a827c3f9015baea50ddc63266e252d','sys_category',2,'items',0,0,2147483647,0,'','','',3,0,'tx_ckfaq_domain_model_records',17,'category',0,0,2147483647,0,0,''),
('dfc97427c7983cbb8afe6502b1eedfe1','sys_category',6,'items',0,0,2147483647,0,'','','',0,0,'tx_ckfaq_domain_model_records',6,'category',0,0,2147483647,0,0,''),
('e191e41fff5df714a59af7f1c305552b','sys_category',4,'items',0,0,2147483647,0,'','','',8,0,'tx_ckfaq_domain_model_records',48,'category',0,0,2147483647,0,0,''),
('e4ec41a888e01c6444e40dc050a72ac9','sys_category',4,'items',0,0,2147483647,0,'','','',6,0,'tx_ckfaq_domain_model_records',38,'category',0,0,2147483647,0,0,''),
('e6442eb011beb7b239c51f878d9d16d1','tx_bulmapackage_settings_link_item',2,'tx_bulmapackage_settings',0,0,2147483647,0,'','','',0,0,'tx_bulmapackage_settings',1,'',0,0,2147483647,0,0,''),
('f1d37beb29f78e347462f8ce3f3bebfe','sys_category',6,'items',0,0,2147483647,0,'','','',6,0,'tx_ckfaq_domain_model_records',22,'category',0,0,2147483647,0,0,''),
('f4dfa9313c60fe5fe47a2ad580e3f891','sys_category',6,'items',0,0,2147483647,0,'','','',3,0,'tx_ckfaq_domain_model_records',15,'category',0,0,2147483647,0,0,''),
('f50282b96778a26f7988f258b303e195','sys_category',4,'items',0,0,2147483647,0,'','','',3,0,'tx_ckfaq_domain_model_records',23,'category',0,0,2147483647,0,0,''),
('f7c65afa36a4ec6cb0fd98edee92754c','sys_category',4,'items',0,0,2147483647,0,'','','',5,0,'tx_ckfaq_domain_model_records',33,'category',0,0,2147483647,0,0,''),
('fac2e95b5cac565a1298cb11265afe41','sys_category',1,'items',0,0,2147483647,0,'','','',4,0,'tx_ckfaq_domain_model_records',49,'category',0,0,2147483647,0,0,''),
('fbaa924c5bea568bc1c3d8fb019801e9','sys_category',5,'items',0,0,2147483647,0,'','','',5,0,'tx_ckfaq_domain_model_records',30,'category',0,0,2147483647,0,0,'');
/*!40000 ALTER TABLE `sys_refindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_registry`
--

DROP TABLE IF EXISTS `sys_registry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_registry` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry_namespace` varchar(128) NOT NULL DEFAULT '',
  `entry_key` varchar(128) NOT NULL DEFAULT '',
  `entry_value` mediumblob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `entry_identifier` (`entry_namespace`,`entry_key`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_registry`
--

LOCK TABLES `sys_registry` WRITE;
/*!40000 ALTER TABLE `sys_registry` DISABLE KEYS */;
INSERT INTO `sys_registry` VALUES
(1,'extensionDataImport','typo3/cms-core/ext_tables_static+adt.sql','s:0:\"\";'),
(2,'extensionDataImport','typo3/cms-extbase/ext_tables_static+adt.sql','s:0:\"\";'),
(3,'extensionDataImport','typo3/cms-fluid/ext_tables_static+adt.sql','s:0:\"\";'),
(4,'extensionDataImport','typo3/cms-install/ext_tables_static+adt.sql','s:0:\"\";'),
(5,'extensionDataImport','typo3/cms-backend/ext_tables_static+adt.sql','s:0:\"\";'),
(6,'extensionDataImport','typo3/cms-frontend/ext_tables_static+adt.sql','s:0:\"\";'),
(7,'extensionDataImport','typo3/cms-dashboard/ext_tables_static+adt.sql','s:0:\"\";'),
(8,'extensionDataImport','typo3/cms-fluid-styled-content/ext_tables_static+adt.sql','s:0:\"\";'),
(9,'extensionDataImport','typo3/cms-filelist/ext_tables_static+adt.sql','s:0:\"\";'),
(10,'extensionDataImport','typo3/cms-impexp/ext_tables_static+adt.sql','s:0:\"\";'),
(11,'extensionDataImport','typo3/cms-form/ext_tables_static+adt.sql','s:0:\"\";'),
(12,'extensionDataImport','typo3/cms-seo/ext_tables_static+adt.sql','s:0:\"\";'),
(13,'extensionDataImport','typo3/cms-setup/ext_tables_static+adt.sql','s:0:\"\";'),
(14,'extensionDataImport','typo3/cms-rte-ckeditor/ext_tables_static+adt.sql','s:0:\"\";'),
(15,'extensionDataImport','typo3/cms-sys-note/ext_tables_static+adt.sql','s:0:\"\";'),
(16,'extensionDataImport','typo3/cms-belog/ext_tables_static+adt.sql','s:0:\"\";'),
(17,'extensionDataImport','typo3/cms-beuser/ext_tables_static+adt.sql','s:0:\"\";'),
(18,'extensionDataImport','typo3/cms-extensionmanager/ext_tables_static+adt.sql','s:0:\"\";'),
(19,'extensionDataImport','typo3/cms-felogin/ext_tables_static+adt.sql','s:0:\"\";'),
(20,'extensionDataImport','typo3/cms-info/ext_tables_static+adt.sql','s:0:\"\";'),
(21,'extensionDataImport','typo3/cms-reactions/ext_tables_static+adt.sql','s:0:\"\";'),
(22,'extensionDataImport','typo3/cms-recycler/ext_tables_static+adt.sql','s:0:\"\";'),
(23,'extensionDataImport','typo3/cms-tstemplate/ext_tables_static+adt.sql','s:0:\"\";'),
(24,'extensionDataImport','typo3/cms-viewpage/ext_tables_static+adt.sql','s:0:\"\";'),
(25,'extensionDataImport','typo3/cms-webhooks/ext_tables_static+adt.sql','s:0:\"\";'),
(26,'extensionDataImport','agrosup-dijon/bulma-package/ext_tables_static+adt.sql','s:0:\"\";');
/*!40000 ALTER TABLE `sys_registry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_template`
--

DROP TABLE IF EXISTS `sys_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_template` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `root` smallint(5) unsigned NOT NULL DEFAULT 0,
  `clear` smallint(5) unsigned NOT NULL DEFAULT 0,
  `constants` longtext DEFAULT NULL,
  `include_static_file` longtext DEFAULT NULL,
  `basedOn` longtext DEFAULT NULL,
  `includeStaticAfterBasedOn` smallint(5) unsigned NOT NULL DEFAULT 0,
  `config` longtext DEFAULT NULL,
  `static_file_mode` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `roottemplate` (`deleted`,`hidden`,`root`),
  KEY `parent` (`pid`,`deleted`,`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_template`
--

LOCK TABLES `sys_template` WRITE;
/*!40000 ALTER TABLE `sys_template` DISABLE KEYS */;
INSERT INTO `sys_template` VALUES
(1,1,1750405688,1750100411,0,0,0,0,256,NULL,0,'T3 Demo',1,3,NULL,'EXT:fluid_styled_content/Configuration/TypoScript/,EXT:bulma_package/Configuration/TypoScript','',0,'',0);
/*!40000 ALTER TABLE `sys_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_webhook`
--

DROP TABLE IF EXISTS `sys_webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_webhook` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `updatedon` int(10) unsigned NOT NULL DEFAULT 0,
  `createdon` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `disabled` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `webhook_type` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `identifier` varchar(36) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `url` text NOT NULL DEFAULT '',
  `method` varchar(10) NOT NULL DEFAULT '',
  `verify_ssl` smallint(5) unsigned NOT NULL DEFAULT 1,
  `additional_headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`additional_headers`)),
  PRIMARY KEY (`uid`),
  UNIQUE KEY `identifier_key` (`identifier`),
  KEY `index_source` (`webhook_type`(5)),
  KEY `parent` (`pid`,`deleted`,`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_webhook`
--

LOCK TABLES `sys_webhook` WRITE;
/*!40000 ALTER TABLE `sys_webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_webhook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tt_content`
--

DROP TABLE IF EXISTS `tt_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tt_content` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(255) NOT NULL DEFAULT '0',
  `sorting` int(11) NOT NULL DEFAULT 0,
  `rowDescription` text DEFAULT NULL,
  `editlock` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l18n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_source` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l18n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `frame_class` varchar(60) NOT NULL DEFAULT 'default',
  `colPos` int(10) unsigned NOT NULL DEFAULT 0,
  `table_caption` varchar(255) DEFAULT NULL,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `header_position` varchar(10) NOT NULL DEFAULT '',
  `background_color_class` varchar(255) NOT NULL DEFAULT '',
  `background_frame` varchar(255) NOT NULL DEFAULT 'limited',
  `file_folder` text DEFAULT NULL,
  `readmore_label` varchar(255) NOT NULL DEFAULT '',
  `message_class` varchar(60) NOT NULL DEFAULT 'default',
  `gallery_size` varchar(10) NOT NULL DEFAULT '',
  `ignore_nav_hide` smallint(6) NOT NULL DEFAULT 0,
  `max_items` varchar(255) NOT NULL DEFAULT '',
  `tx_bulmapackage_card_group_item` int(10) unsigned DEFAULT 0,
  `tx_bulmapackage_thumbnail_group_item` int(10) unsigned DEFAULT 0,
  `tx_bulmapackage_icon_group_item` int(10) unsigned DEFAULT 0,
  `tx_bulmapackage_tab_item_parent` int(11) NOT NULL DEFAULT 0,
  `tx_bulmapackage_tab_item` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_bulmapackage_accordion_item_parent` int(11) NOT NULL DEFAULT 0,
  `tx_bulmapackage_accordion_item` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_bulmapackage_accordion_item_active` int(10) unsigned NOT NULL DEFAULT 0,
  `tx_bulmapackage_carousel_item` int(10) unsigned DEFAULT 0,
  `tx_bulmapackage_sharing_services` text DEFAULT NULL,
  `tx_bulmapackage_sharing_services_label` varchar(255) DEFAULT NULL,
  `tx_mask_content_role` varchar(255) NOT NULL DEFAULT '',
  `CType` varchar(255) NOT NULL DEFAULT '',
  `categories` int(10) unsigned NOT NULL DEFAULT 0,
  `layout` int(10) unsigned NOT NULL DEFAULT 0,
  `space_before_class` varchar(60) NOT NULL DEFAULT '',
  `space_after_class` varchar(60) NOT NULL DEFAULT '',
  `date` bigint(20) NOT NULL DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_layout` int(10) unsigned NOT NULL DEFAULT 0,
  `header_link` text NOT NULL DEFAULT '',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `bodytext` longtext DEFAULT NULL,
  `image` int(10) unsigned NOT NULL DEFAULT 0,
  `assets` int(10) unsigned NOT NULL DEFAULT 0,
  `imagewidth` int(10) unsigned NOT NULL DEFAULT 0,
  `imageheight` int(10) unsigned NOT NULL DEFAULT 0,
  `imageorient` int(10) unsigned NOT NULL DEFAULT 0,
  `imageborder` smallint(5) unsigned NOT NULL DEFAULT 0,
  `image_zoom` smallint(5) unsigned NOT NULL DEFAULT 0,
  `imagecols` int(10) unsigned NOT NULL DEFAULT 0,
  `pages` longtext DEFAULT NULL,
  `recursive` int(10) unsigned NOT NULL DEFAULT 0,
  `list_type` varchar(255) NOT NULL DEFAULT '',
  `media` int(10) unsigned NOT NULL DEFAULT 0,
  `records` longtext DEFAULT NULL,
  `sectionIndex` smallint(5) unsigned NOT NULL DEFAULT 1,
  `linkToTop` smallint(5) unsigned NOT NULL DEFAULT 0,
  `pi_flexform` longtext DEFAULT NULL,
  `selected_categories` longtext DEFAULT NULL,
  `category_field` varchar(64) NOT NULL DEFAULT '',
  `bullets_type` int(10) unsigned NOT NULL DEFAULT 0,
  `cols` int(10) unsigned NOT NULL DEFAULT 0,
  `table_class` varchar(60) NOT NULL DEFAULT '',
  `table_delimiter` int(10) unsigned NOT NULL DEFAULT 0,
  `table_enclosure` int(10) unsigned NOT NULL DEFAULT 0,
  `table_header_position` int(10) unsigned NOT NULL DEFAULT 0,
  `table_tfoot` smallint(5) unsigned NOT NULL DEFAULT 0,
  `file_collections` longtext DEFAULT NULL,
  `filelink_size` smallint(5) unsigned NOT NULL DEFAULT 0,
  `filelink_sorting` varchar(64) NOT NULL DEFAULT '',
  `filelink_sorting_direction` varchar(4) NOT NULL DEFAULT '',
  `target` varchar(30) NOT NULL DEFAULT '',
  `uploads_description` smallint(5) unsigned NOT NULL DEFAULT 0,
  `uploads_type` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`sorting`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `language` (`l18n_parent`,`sys_language_uid`),
  KEY `translation_source` (`l10n_source`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tt_content`
--

LOCK TABLES `tt_content` WRITE;
/*!40000 ALTER TABLE `tt_content` DISABLE KEYS */;
INSERT INTO `tt_content` VALUES
(1,1,1750100916,1750100734,0,0,0,0,'',256,'',0,0,0,0,NULL,'{\"CType\":\"\",\"background_color_class\":\"\",\"background_frame\":\"\",\"bodytext\":\"\",\"categories\":\"\",\"colPos\":\"\",\"date\":\"\",\"editlock\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"frame_class\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"header_position\":\"\",\"hidden\":\"\",\"layout\":\"\",\"linkToTop\":\"\",\"rowDescription\":\"\",\"sectionIndex\":\"\",\"space_after_class\":\"\",\"space_before_class\":\"\",\"starttime\":\"\",\"subheader\":\"\"}',0,0,0,0,'default',0,NULL,0,'','none','limited',NULL,'','default','',0,'',0,0,0,0,0,0,0,0,0,NULL,NULL,'','text',0,0,'','',0,'Hello World! - I\'m Kallol',2,'','','<p>I’m an experienced software engineer with over 16 years in PHP-based development, including 14+ years of focused work with TYPO3, an enterprise-grade MVC CMS. My core strengths include TYPO3 integration, custom extension development, version upgrades, and performance optimization.<br /><br />I’ve successfully delivered robust and scalable web solutions across industries such as e-learning, manufacturing, and B2B services—collaborating closely with clients across the DACH region (Germany, Austria, Switzerland). As an active contributor to the TYPO3 Extension Repository (TER), I take pride in advancing open-source quality.<br /><br />Beyond code, I lead teams, manage project lifecycles end to end, and thrive on cross-functional collaboration. I also bring hands-on experience with tools like Vue.js, Moodle, Git, DDEV, and Docker—building not just functional applications, but sustainable systems.<br /><br />Skills: TYPO3 · PHP · MySQL · MVC · Vue.js · REST APIs · Moodle · Git · Linux · Docker · DDEV<br />Languages: English, Hindi, Bengali, German (elementary proficiency)</p>',0,0,0,0,0,0,0,1,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0),
(2,2,1750167098,1750100923,0,0,0,0,'',256,NULL,0,0,0,0,NULL,'{\"CType\":\"\",\"background_color_class\":\"\",\"background_frame\":\"\",\"categories\":\"\",\"colPos\":\"\",\"date\":\"\",\"editlock\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"frame_class\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"header_position\":\"\",\"hidden\":\"\",\"layout\":\"\",\"linkToTop\":\"\",\"rowDescription\":\"\",\"sectionIndex\":\"\",\"space_after_class\":\"\",\"space_before_class\":\"\",\"starttime\":\"\",\"subheader\":\"\"}',0,0,0,0,'default',0,NULL,0,'','none','limited',NULL,'','default','',0,'',0,0,0,0,0,0,0,0,0,NULL,NULL,'','ckfaq_pi1',0,0,'','',0,'Frequently Asked Questions',3,'','','',0,0,0,0,0,0,0,1,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0),
(3,1,1750101024,1750100956,0,0,0,0,'',768,'',0,0,0,0,NULL,'{\"CType\":\"\",\"background_color_class\":\"\",\"background_frame\":\"\",\"bodytext\":\"\",\"categories\":\"\",\"colPos\":\"\",\"date\":\"\",\"editlock\":\"\",\"endtime\":\"\",\"fe_group\":\"\",\"frame_class\":\"\",\"header\":\"\",\"header_layout\":\"\",\"header_link\":\"\",\"header_position\":\"\",\"hidden\":\"\",\"layout\":\"\",\"linkToTop\":\"\",\"rowDescription\":\"\",\"sectionIndex\":\"\",\"space_after_class\":\"\",\"space_before_class\":\"\",\"starttime\":\"\",\"subheader\":\"\"}',0,0,0,0,'default',0,NULL,0,'','none','limited',NULL,'','default','',0,'',0,0,0,0,0,0,0,0,0,NULL,NULL,'','text',0,0,'','',0,'Why TYPO3?',2,'','','<p><strong>TYPO3</strong> is a free, open-source content management system (CMS) that has been a reliable choice for building and managing websites for over two decades. Known for its flexibility, scalability, and robust feature set, <strong>TYPO3</strong> is particularly well-suited for enterprise-level websites, large organizations, and complex web projects that require extensive customization and powerful content management capabilities. Its modular architecture allows developers to extend its functionality with a vast array of extensions, tailoring the system to specific project requirements.</p>\r\n<p>One of the key strengths of <strong>TYPO3</strong> lies in its comprehensive backend interface, which provides a rich environment for content editors and administrators. It offers granular control over user permissions, workflows, and content versioning, making it ideal for collaborative environments where multiple users contribute to a website. Furthermore, <strong>TYPO3</strong> boasts powerful multilingual capabilities, enabling the creation and management of websites in multiple languages with ease, a crucial feature for global businesses and organizations.</p>\r\n<p>While <strong>TYPO3</strong> offers immense power and flexibility, it generally has a steeper learning curve compared to some other CMS platforms. However, for those willing to invest the time, the rewards are significant. Its strong community support, extensive documentation, and a thriving ecosystem of developers and agencies contribute to its long-term viability and continuous improvement. Organizations seeking a highly customizable, secure, and future-proof CMS solution for demanding web projects often find <strong>TYPO3</strong> to be an excellent fit.</p>',0,0,0,0,0,0,0,1,NULL,0,'',0,NULL,1,0,NULL,NULL,'',0,0,'',124,0,0,0,NULL,0,'','','',0,0);
/*!40000 ALTER TABLE `tt_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_accordion_item`
--

DROP TABLE IF EXISTS `tx_bulmapackage_accordion_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_accordion_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(11) NOT NULL DEFAULT 0,
  `record` int(10) unsigned NOT NULL DEFAULT 0,
  `title` tinytext DEFAULT NULL,
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_accordion_item`
--

LOCK TABLES `tx_bulmapackage_accordion_item` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_accordion_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bulmapackage_accordion_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_card_group_item`
--

DROP TABLE IF EXISTS `tx_bulmapackage_card_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_card_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `media` int(11) NOT NULL DEFAULT 0,
  `bodytext` text DEFAULT NULL,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `link_title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_card_group_item`
--

LOCK TABLES `tx_bulmapackage_card_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_card_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bulmapackage_card_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_carousel_item`
--

DROP TABLE IF EXISTS `tx_bulmapackage_carousel_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_carousel_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `item_type` varchar(255) NOT NULL DEFAULT '',
  `header` varchar(255) NOT NULL DEFAULT '',
  `header_layout` varchar(30) NOT NULL DEFAULT '0',
  `text_color` varchar(255) NOT NULL DEFAULT '',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `button_text` varchar(255) NOT NULL DEFAULT '',
  `button_class` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(1024) NOT NULL DEFAULT '',
  `background_color` varchar(255) NOT NULL DEFAULT '',
  `image` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_carousel_item`
--

LOCK TABLES `tx_bulmapackage_carousel_item` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_carousel_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bulmapackage_carousel_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_custom_color`
--

DROP TABLE IF EXISTS `tx_bulmapackage_custom_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_custom_color` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `var_primary` varchar(255) NOT NULL DEFAULT '',
  `var_link` varchar(255) NOT NULL DEFAULT '',
  `var_success` varchar(255) NOT NULL DEFAULT '',
  `var_info` varchar(255) NOT NULL DEFAULT '',
  `var_warning` varchar(255) NOT NULL DEFAULT '',
  `var_danger` varchar(255) NOT NULL DEFAULT '',
  `var_text_dark` smallint(5) unsigned NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_custom_color`
--

LOCK TABLES `tx_bulmapackage_custom_color` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_custom_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bulmapackage_custom_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_icon_group_item`
--

DROP TABLE IF EXISTS `tx_bulmapackage_icon_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_icon_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `bodytext` mediumtext DEFAULT NULL,
  `link` varchar(1024) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_set` varchar(255) NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `icon_size` varchar(255) NOT NULL DEFAULT '',
  `icon_color` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_icon_group_item`
--

LOCK TABLES `tx_bulmapackage_icon_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_icon_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bulmapackage_icon_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_meta_tags`
--

DROP TABLE IF EXISTS `tx_bulmapackage_meta_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_meta_tags` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL DEFAULT '',
  `content` varchar(255) NOT NULL DEFAULT '',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_meta_tags`
--

LOCK TABLES `tx_bulmapackage_meta_tags` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_meta_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bulmapackage_meta_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_settings`
--

DROP TABLE IF EXISTS `tx_bulmapackage_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_settings` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title_seo` varchar(255) NOT NULL DEFAULT '',
  `wsd_name` varchar(255) NOT NULL DEFAULT '',
  `wsd_alternate_name` varchar(255) NOT NULL DEFAULT '',
  `logo_main` int(10) unsigned NOT NULL DEFAULT 0,
  `logos_partners` int(10) unsigned NOT NULL DEFAULT 0,
  `favicon` int(10) unsigned NOT NULL DEFAULT 0,
  `code_analytics` varchar(255) NOT NULL DEFAULT '',
  `address_title` varchar(255) NOT NULL DEFAULT '',
  `address` tinytext DEFAULT NULL,
  `zip` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(128) NOT NULL DEFAULT '',
  `phone` varchar(30) NOT NULL DEFAULT '',
  `fax` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `latitude` varchar(255) NOT NULL DEFAULT '',
  `longitude` varchar(255) NOT NULL DEFAULT '',
  `tx_bulmapackage_settings_link_item` int(10) unsigned DEFAULT 0,
  `menu_layout` varchar(30) NOT NULL DEFAULT '',
  `sharing_services` text DEFAULT NULL,
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_settings`
--

LOCK TABLES `tx_bulmapackage_settings` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_settings` DISABLE KEYS */;
INSERT INTO `tx_bulmapackage_settings` VALUES
(1,1,1750100639,1750100618,0,0,0,0,NULL,'{\"address\":\"\",\"address_title\":\"\",\"city\":\"\",\"code_analytics\":\"\",\"country\":\"\",\"email\":\"\",\"favicon\":\"\",\"fax\":\"\",\"latitude\":\"\",\"logo_main\":\"\",\"logos_partners\":\"\",\"longitude\":\"\",\"menu_layout\":\"\",\"phone\":\"\",\"sharing_services\":\"\",\"title_seo\":\"\",\"tx_bulmapackage_settings_link_item\":\"\",\"wsd_name\":\"\",\"zip\":\"\"}',0,0,0,0,'T3 Demo','','',1,0,0,'','','','','','','','','','','',2,'','','');
/*!40000 ALTER TABLE `tx_bulmapackage_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_settings_link_item`
--

DROP TABLE IF EXISTS `tx_bulmapackage_settings_link_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_settings_link_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tx_bulmapackage_settings` int(10) unsigned DEFAULT 0,
  `label` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(1024) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_file` int(10) unsigned DEFAULT 0,
  `force_label` smallint(5) unsigned NOT NULL DEFAULT 0,
  `standalone` smallint(5) unsigned NOT NULL DEFAULT 0,
  `icon_custom` smallint(5) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_settings_link_item`
--

LOCK TABLES `tx_bulmapackage_settings_link_item` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_settings_link_item` DISABLE KEYS */;
INSERT INTO `tx_bulmapackage_settings_link_item` VALUES
(1,1,1750100639,1750100618,0,0,1,0,0,NULL,0,'{\"force_label\":\"\",\"hidden\":\"\",\"icon\":\"\",\"icon_custom\":\"\",\"label\":\"\",\"link\":\"\",\"standalone\":\"\"}',0,0,0,0,1,'LinkedIn','https://www.linkedin.com/in/creativekallol/','fab fa-linkedin-in',0,0,0,0),
(2,1,1750100639,1750100618,0,0,2,0,0,NULL,0,'{\"hidden\":\"\"}',0,0,0,0,1,'GitHub','https://github.com/creativekallol/','fas fa-link',0,0,0,0);
/*!40000 ALTER TABLE `tx_bulmapackage_settings_link_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_tab_item`
--

DROP TABLE IF EXISTS `tx_bulmapackage_tab_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_tab_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(11) NOT NULL DEFAULT 0,
  `record` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `t3ver_label` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_tab_item`
--

LOCK TABLES `tx_bulmapackage_tab_item` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_tab_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bulmapackage_tab_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_bulmapackage_thumbnail_group_item`
--

DROP TABLE IF EXISTS `tx_bulmapackage_thumbnail_group_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_bulmapackage_thumbnail_group_item` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `t3_origuid` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `tt_content` int(10) unsigned DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `subheader` varchar(255) NOT NULL DEFAULT '',
  `media` int(11) NOT NULL DEFAULT 0,
  `link` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_bulmapackage_thumbnail_group_item`
--

LOCK TABLES `tx_bulmapackage_thumbnail_group_item` WRITE;
/*!40000 ALTER TABLE `tx_bulmapackage_thumbnail_group_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_bulmapackage_thumbnail_group_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_ckfaq_domain_model_records`
--

DROP TABLE IF EXISTS `tx_ckfaq_domain_model_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_ckfaq_domain_model_records` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `deleted` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hidden` smallint(5) unsigned NOT NULL DEFAULT 0,
  `starttime` int(10) unsigned NOT NULL DEFAULT 0,
  `endtime` int(10) unsigned NOT NULL DEFAULT 0,
  `sys_language_uid` int(11) NOT NULL DEFAULT 0,
  `l10n_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `l10n_state` text DEFAULT NULL,
  `l10n_diffsource` mediumblob DEFAULT NULL,
  `t3ver_oid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_wsid` int(10) unsigned NOT NULL DEFAULT 0,
  `t3ver_state` smallint(6) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `count_helpful` int(10) unsigned NOT NULL DEFAULT 0,
  `count_not_helpful` int(10) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `parent` (`pid`,`deleted`,`hidden`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_ckfaq_domain_model_records`
--

LOCK TABLES `tx_ckfaq_domain_model_records` WRITE;
/*!40000 ALTER TABLE `tx_ckfaq_domain_model_records` DISABLE KEYS */;
INSERT INTO `tx_ckfaq_domain_model_records` VALUES
(1,4,1750101001,1750101001,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is offside in football?','Offside occurs when a player is nearer to the goal line than both the ball and the second-last defender.',12,1,1),
(2,4,1750101002,1750101002,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is ROI?','Return on Investment (ROI) measures profitability by comparing net profit to cost of investment.',20,0,1),
(3,4,1750101003,1750101003,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a GPU?','A Graphics Processing Unit (GPU) is a specialized processor designed to accelerate graphics rendering.',18,1,1),
(4,4,1750101004,1750101004,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is wireless charging?','It allows devices to be charged without physical cables, using electromagnetic fields.',9,0,1),
(5,4,1750101005,1750101005,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a light-year?','A light-year is the distance that light travels in one year, approximately 9.46 trillion kilometers.',15,1,1),
(6,4,1750101006,1750101006,0,0,0,0,0,0,NULL,'',0,0,0,0,'How does inflation work?','Inflation refers to the general increase in prices and fall in the purchasing value of money.',5,1,6),
(7,4,1750101007,1750101007,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a stock market?','A stock market is a public market for trading company shares and derivatives.',3,0,6),
(8,4,1750101008,1750101008,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a football offside?','Offside is a rule violation when an attacking player is closer to the opponent’s goal than the ball and second-last defender.',10,2,2),
(9,4,1750101009,1750101009,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a penalty kick?','A penalty kick is awarded when a foul is committed inside the penalty area.',4,0,2),
(10,4,1750101010,1750101010,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is quantum computing?','Quantum computing uses qubits to perform calculations using quantum mechanics.',7,1,3),
(11,4,1750101011,1750101011,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a semiconductor?','Semiconductors are materials used to build electronic circuits, especially chips and transistors.',8,0,4),
(12,4,1750101012,1750101012,0,0,0,0,0,0,NULL,'',0,0,0,0,'How do satellites work?','Satellites orbit Earth and relay communication or gather scientific data.',6,0,5),
(13,4,1750101013,1750101013,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is zero gravity?','Zero gravity is a condition of apparent weightlessness experienced in free-fall or orbit.',9,0,5),
(14,4,1750101014,1750101014,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is venture capital?','Venture capital is funding provided to startups and small businesses with high growth potential.',12,2,6),
(15,4,1750101015,1750101015,0,0,0,0,0,0,NULL,'',0,0,0,0,'What are mutual funds?','A mutual fund pools money from investors to purchase a diversified portfolio of assets.',11,1,6),
(16,4,1750101016,1750101016,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is capital gain?','Profit from selling an asset like property or stocks at a higher price than purchase.',14,1,6),
(17,4,1750101017,1750101017,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is VAR in football?','Video Assistant Referee is used to assist referees in decision-making via replays.',12,0,2),
(18,4,1750101018,1750101018,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is RAM?','Random Access Memory allows computers to temporarily store and access data quickly.',18,0,3),
(19,4,1750101019,1750101019,0,0,0,0,0,0,NULL,'',0,0,0,0,'How do rockets launch?','Rockets use high-speed exhaust gases to generate thrust and lift off from Earth.',22,1,5),
(20,4,1750101020,1750101020,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a microchip?','A microchip is a small semiconductor used in electronics for processing data.',6,0,4),
(21,4,1750101021,1750101021,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a recession?','A recession is a period of temporary economic decline marked by reduced trade and industrial activity.',7,1,6),
(22,4,1750101022,1750101022,0,0,0,0,0,0,NULL,'',0,0,0,0,'How is GDP calculated?','GDP is calculated by summing consumption, investment, government spending, and net exports.',4,0,6),
(23,4,1750101023,1750101023,0,0,0,0,0,0,NULL,'',0,0,0,0,'How do digital cameras work?','Digital cameras use image sensors to convert light into electronic signals.',6,0,4),
(24,4,1750101024,1750101024,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a smart TV?','Smart TVs connect to the internet and support apps and streaming services.',3,0,4),
(25,4,1750101025,1750101025,0,0,0,0,0,0,NULL,'',0,0,0,0,'What are Olympic sports?','Olympic sports include track and field, swimming, gymnastics, and more.',5,1,2),
(26,4,1750101026,1750101026,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is Formula 1?','Formula 1 is a premier international auto racing series featuring open-wheel cars.',8,0,2),
(27,4,1750101027,1750101027,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is machine learning?','Machine learning is a subset of AI that allows systems to learn from data.',11,0,3),
(28,4,1750101028,1750101028,0,0,0,0,0,0,NULL,'',0,0,0,0,'How does Wi-Fi work?','Wi-Fi uses radio waves to provide wireless internet access.',9,1,3),
(29,4,1750101029,1750101029,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is the ISS?','The International Space Station is a large spacecraft orbiting Earth used for research.',10,0,5),
(30,4,1750101030,1750101030,0,0,0,0,0,0,NULL,'',0,0,0,0,'How do black holes form?','Black holes form from collapsed massive stars with gravitational fields so strong that nothing escapes.',14,2,5),
(31,4,1750101031,1750101031,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is cryptocurrency?','Cryptocurrency is a digital currency secured by cryptography, often decentralized.',13,1,6),
(32,4,1750101032,1750101032,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is an IPO?','An IPO (Initial Public Offering) is the first time a company’s stock is offered to the public.',6,1,6),
(33,4,1750101033,1750101033,0,0,0,0,0,0,NULL,'',0,0,0,0,'How do earbuds work?','Earbuds convert electrical signals into sound using miniature speakers.',4,0,4),
(34,4,1750101034,1750101034,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a tennis serve?','A serve in tennis is the shot that starts a point, usually overhead.',5,1,2),
(35,4,1750101035,1750101035,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is GPS?','Global Positioning System (GPS) is a satellite-based navigation system.',6,0,5),
(36,4,1750101036,1750101036,0,0,0,0,0,0,NULL,'',0,0,0,0,'How to start a business?','Start by identifying a market need, creating a plan, and registering your company.',9,1,1),
(37,4,1750101037,1750101037,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is a balance sheet?','A balance sheet shows a company’s assets, liabilities, and equity at a specific time.',6,0,1),
(38,4,1750101038,1750101038,0,0,0,0,0,0,NULL,'',0,0,0,0,'How does a microwave work?','Microwaves heat food by causing water molecules to vibrate, producing heat.',5,1,4),
(39,4,1750101039,1750101039,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is an AI chatbot?','AI chatbots simulate human conversation using NLP and machine learning.',12,0,3),
(40,4,1750101040,1750101040,0,0,0,0,0,0,NULL,'',0,0,0,0,'What are the rings of Saturn?','Saturn’s rings are made of countless ice particles and rocky debris.',8,0,5),
(41,4,1750101041,1750101041,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is penalty in football?','A penalty is a free kick from the penalty spot due to a foul in the box.',4,1,2),
(42,4,1750101042,1750101042,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is data encryption?','Encryption converts data into a code to prevent unauthorized access.',10,0,3),
(43,4,1750101043,1750101043,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is market research?','It’s the process of gathering information about consumer needs and preferences.',5,1,1),
(44,4,1750101044,1750101044,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is Mars made of?','Mars has a thin atmosphere and a surface composed of iron oxide (rust).',7,0,5),
(45,4,1750101045,1750101045,0,0,0,0,0,0,NULL,'',0,0,0,0,'What are smartwatches?','Smartwatches are wearable devices with features like notifications, fitness tracking, and more.',9,0,4),
(46,4,1750101046,1750101046,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is the Big Bang theory?','The Big Bang theory explains the origin of the universe from a singularity.',13,0,5),
(47,4,1750101047,1750101047,0,0,0,0,0,0,NULL,'',0,0,0,0,'What is blockchain?','Blockchain is a decentralized ledger technology that underlies cryptocurrencies.',10,1,6),
(48,4,1750101048,1750101048,0,0,0,0,0,0,NULL,'',0,0,0,0,'How does streaming work?','Streaming delivers media in real-time over the internet without needing downloads.',6,0,4),
(49,4,1750101049,1750101049,0,0,0,0,0,0,NULL,'',0,0,0,0,'How does venture capital work?','Venture capital is financing for startups with high growth potential in exchange for equity.',5,0,1),
(50,4,1750101050,1750101050,0,0,0,0,0,0,NULL,'',0,0,0,0,'How do fitness trackers work?','They monitor activity metrics using sensors like accelerometers and heart rate monitors.',8,1,2);
/*!40000 ALTER TABLE `tx_ckfaq_domain_model_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_extensionmanager_domain_model_extension`
--

DROP TABLE IF EXISTS `tx_extensionmanager_domain_model_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_extensionmanager_domain_model_extension` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `extension_key` varchar(60) NOT NULL DEFAULT '',
  `remote` varchar(100) NOT NULL DEFAULT 'ter',
  `version` varchar(15) NOT NULL DEFAULT '',
  `alldownloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `downloadcounter` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(150) NOT NULL DEFAULT '',
  `serialized_dependencies` mediumtext DEFAULT NULL,
  `author_name` varchar(255) NOT NULL DEFAULT '',
  `author_email` varchar(255) NOT NULL DEFAULT '',
  `ownerusername` varchar(50) NOT NULL DEFAULT '',
  `md5hash` varchar(35) NOT NULL DEFAULT '',
  `authorcompany` varchar(255) NOT NULL DEFAULT '',
  `integer_version` int(11) NOT NULL DEFAULT 0,
  `lastreviewedversion` int(11) NOT NULL DEFAULT 0,
  `documentation_link` varchar(2048) DEFAULT NULL,
  `distribution_image` varchar(255) DEFAULT NULL,
  `distribution_welcome_image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `state` int(10) unsigned NOT NULL DEFAULT 0,
  `category` int(10) unsigned NOT NULL DEFAULT 0,
  `last_updated` bigint(20) NOT NULL DEFAULT 0,
  `update_comment` longtext DEFAULT NULL,
  `current_version` smallint(5) unsigned NOT NULL DEFAULT 0,
  `review_state` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `versionextrepo` (`extension_key`,`version`,`remote`),
  KEY `index_extrepo` (`extension_key`,`remote`),
  KEY `index_versionrepo` (`integer_version`,`remote`,`extension_key`),
  KEY `index_currentversions` (`current_version`,`review_state`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_extensionmanager_domain_model_extension`
--

LOCK TABLES `tx_extensionmanager_domain_model_extension` WRITE;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_extensionmanager_domain_model_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tx_impexp_presets`
--

DROP TABLE IF EXISTS `tx_impexp_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `tx_impexp_presets` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `tstamp` int(10) unsigned NOT NULL DEFAULT 0,
  `crdate` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `public` smallint(6) NOT NULL DEFAULT 0,
  `item_uid` int(11) NOT NULL DEFAULT 0,
  `user_uid` int(10) unsigned NOT NULL DEFAULT 0,
  `preset_data` blob DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `lookup` (`item_uid`),
  KEY `parent` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tx_impexp_presets`
--

LOCK TABLES `tx_impexp_presets` WRITE;
/*!40000 ALTER TABLE `tx_impexp_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tx_impexp_presets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-07 21:36:00
