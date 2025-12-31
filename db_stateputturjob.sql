-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: db_stateputturjob
-- ------------------------------------------------------
-- Server version	5.6.22-log

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
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `achievements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `particulars_event` varchar(255) DEFAULT NULL,
  `period_duration` varchar(255) DEFAULT NULL,
  `type_achievement` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `hsno` varchar(255) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,0,'bidar','India',NULL,NULL,'dfgdfg',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `sms_password` varchar(255) DEFAULT NULL,
  `sms_sender_id` varchar(255) DEFAULT NULL,
  `sms_username` varchar(255) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_hribgo0kw00r7vvaw39vjx0cq` (`address_id`),
  KEY `FK_bqq4bu608oxckso8scyqv0p2y` (`profile_pic_id`),
  KEY `FK_srrkly0y7bt6n8h3l6mh5ua0t` (`user_id_id`),
  CONSTRAINT `FK_bqq4bu608oxckso8scyqv0p2y` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_hribgo0kw00r7vvaw39vjx0cq` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_srrkly0y7bt6n8h3l6mh5ua0t` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `awardedfor` varchar(255) DEFAULT NULL,
  `awards_year` datetime DEFAULT NULL,
  `noof_awards` varchar(255) DEFAULT NULL,
  `particulars_awards` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comman_users`
--

DROP TABLE IF EXISTS `comman_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comman_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `sms_password` varchar(255) DEFAULT NULL,
  `sms_sender_id` varchar(255) DEFAULT NULL,
  `sms_username` varchar(255) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_o69qwvnhiy577jr55uyvxc4fb` (`address_id`),
  KEY `FK_lcks1kjaf10ckh8vyf2yurnk0` (`profile_pic_id`),
  KEY `FK_9lehq2efnkw14px20u55vlg10` (`user_id_id`),
  CONSTRAINT `FK_9lehq2efnkw14px20u55vlg10` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`),
  CONSTRAINT `FK_lcks1kjaf10ckh8vyf2yurnk0` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_o69qwvnhiy577jr55uyvxc4fb` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comman_users`
--

LOCK TABLES `comman_users` WRITE;
/*!40000 ALTER TABLE `comman_users` DISABLE KEYS */;
INSERT INTO `comman_users` VALUES (1,1,1,'2025-11-12 11:41:30','demo@gmail.com','2025-11-12 11:41:31','123','7635525478',NULL,NULL,NULL,NULL,5,'demo');
/*!40000 ALTER TABLE `comman_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `confidential_reports`
--

DROP TABLE IF EXISTS `confidential_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `confidential_reports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `cadre6` varchar(255) DEFAULT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `year4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `confidential_reports`
--

LOCK TABLES `confidential_reports` WRITE;
/*!40000 ALTER TABLE `confidential_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `confidential_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `doc_name` varchar(255) DEFAULT NULL,
  `docs_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiences` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `basic_pay` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `date_of_joining` varchar(255) DEFAULT NULL,
  `date_of_leaving` varchar(255) DEFAULT NULL,
  `name_of_the_employeer` varchar(255) DEFAULT NULL,
  `period_of_service` varchar(255) DEFAULT NULL,
  `post_held` varchar(255) DEFAULT NULL,
  `reason_of_leaving` varchar(255) DEFAULT NULL,
  `work_experience` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiences`
--

LOCK TABLES `experiences` WRITE;
/*!40000 ALTER TABLE `experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail`
--

DROP TABLE IF EXISTS `form_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `age` varchar(255) DEFAULT NULL,
  `age_cat` varchar(255) NOT NULL,
  `age_relax` varchar(255) NOT NULL,
  `age_relax1_id` bigint(20) DEFAULT NULL,
  `apllication_no` varchar(255) DEFAULT NULL,
  `appliying_post` varchar(255) DEFAULT NULL,
  `appliying_sub` varchar(255) DEFAULT NULL,
  `awardedfor` varchar(255) DEFAULT NULL,
  `awards_year` datetime DEFAULT NULL,
  `bachelors_degree` varchar(255) DEFAULT NULL,
  `bachelors_degreeyear` datetime DEFAULT NULL,
  `bachelors_marks_sheet_id` bigint(20) DEFAULT NULL,
  `board_universitybachelors_degree` varchar(255) DEFAULT NULL,
  `board_universitymasters_degree` varchar(255) DEFAULT NULL,
  `board_universityphd` varchar(255) DEFAULT NULL,
  `board_universitypuc` varchar(255) DEFAULT NULL,
  `board_universitysslc` varchar(255) DEFAULT NULL,
  `caste_income_certificate_id` bigint(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `common_user_id_id` bigint(20) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `degree_name_bachelors` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ex_service_man` varchar(255) DEFAULT NULL,
  `ex_servicemen_certificate_id` bigint(20) DEFAULT NULL,
  `experience_certificate_id` bigint(20) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `fvc_date` datetime DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `h_no` varchar(255) DEFAULT NULL,
  `hk_issue_date` datetime DEFAULT NULL,
  `hkrdno` varchar(255) DEFAULT NULL,
  `j371` varchar(255) DEFAULT NULL,
  `kvccertificate_id` bigint(20) DEFAULT NULL,
  `kalyana_karnataka_certificate_id` bigint(20) DEFAULT NULL,
  `kannada_language` varchar(255) DEFAULT NULL,
  `kannada_medium` varchar(255) DEFAULT NULL,
  `kannada_medium_certificate_id` bigint(20) DEFAULT NULL,
  `kpsckannada_certificate_id` bigint(20) DEFAULT NULL,
  `kpsckannadaexam` varchar(255) DEFAULT NULL,
  `kvc2_id` bigint(20) DEFAULT NULL,
  `kvc_no` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `m_name` varchar(255) DEFAULT NULL,
  `master_marks_sheet_id` bigint(20) DEFAULT NULL,
  `masters_degree` varchar(255) DEFAULT NULL,
  `masters_degreeyear` datetime DEFAULT NULL,
  `maximumpuc` varchar(255) DEFAULT NULL,
  `maximumsslc` varchar(255) DEFAULT NULL,
  `netcertificate_id` bigint(20) DEFAULT NULL,
  `neteducation` varchar(255) DEFAULT NULL,
  `noof_awards` varchar(255) DEFAULT NULL,
  `obtainedpuc` varchar(255) DEFAULT NULL,
  `obtainedsslc` varchar(255) DEFAULT NULL,
  `phd` varchar(255) DEFAULT NULL,
  `phdsubject` varchar(255) DEFAULT NULL,
  `phdyear` datetime DEFAULT NULL,
  `particulars_awards` varchar(255) DEFAULT NULL,
  `payment_info_id_id` bigint(20) DEFAULT NULL,
  `paystatus` varchar(255) DEFAULT NULL,
  `percentagebachelors_degree` varchar(255) DEFAULT NULL,
  `percentagemasters_degree` varchar(255) DEFAULT NULL,
  `percentagephd` varchar(255) DEFAULT NULL,
  `percentagepuc` varchar(255) DEFAULT NULL,
  `percentagesslc` varchar(255) DEFAULT NULL,
  `personwith_disability_certificate_id` bigint(20) DEFAULT NULL,
  `pgpdc_id` bigint(20) DEFAULT NULL,
  `phdcertificate_id` bigint(20) DEFAULT NULL,
  `phdpdc_id` bigint(20) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `picture_id` bigint(20) DEFAULT NULL,
  `pin_code` varchar(255) DEFAULT NULL,
  `project_displaced_person` varchar(255) DEFAULT NULL,
  `puc` varchar(255) DEFAULT NULL,
  `puc_marks_sheet_id` bigint(20) DEFAULT NULL,
  `pucyear` datetime DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `rdno` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `rural_certificate_id` bigint(20) DEFAULT NULL,
  `ruralstdy` varchar(255) DEFAULT NULL,
  `signature_id` bigint(20) DEFAULT NULL,
  `socialcategory` varchar(255) DEFAULT NULL,
  `sslc` varchar(255) DEFAULT NULL,
  `sslc_marks_sheet_id` bigint(20) DEFAULT NULL,
  `sslcyear` datetime DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `subcast` varchar(255) DEFAULT NULL,
  `subject_master` varchar(255) DEFAULT NULL,
  `taluka` varchar(255) DEFAULT NULL,
  `ugpdc_id` bigint(20) DEFAULT NULL,
  `uploade1_id` bigint(20) DEFAULT NULL,
  `uploade10_id` bigint(20) DEFAULT NULL,
  `uploade2_id` bigint(20) DEFAULT NULL,
  `uploade3_id` bigint(20) DEFAULT NULL,
  `uploade4_id` bigint(20) DEFAULT NULL,
  `uploade5_id` bigint(20) DEFAULT NULL,
  `uploade6_id` bigint(20) DEFAULT NULL,
  `uploade7_id` bigint(20) DEFAULT NULL,
  `uploade8_id` bigint(20) DEFAULT NULL,
  `uploade9_id` bigint(20) DEFAULT NULL,
  `village` varchar(255) DEFAULT NULL,
  `woman` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1q05pxbqa5efleyu0jeuclohc` (`age_relax1_id`),
  KEY `FK_he9ushacyljg3kvne0wxryxyr` (`bachelors_marks_sheet_id`),
  KEY `FK_9qdur7w43mnfb6xolsi3uxdt6` (`caste_income_certificate_id`),
  KEY `FK_62u1pondasmcuf8btq9xpiyhc` (`common_user_id_id`),
  KEY `FK_cs0pjgh56bndeu1xtv3q3rsnq` (`ex_servicemen_certificate_id`),
  KEY `FK_pihlg6excxpdj5oelbh38l22i` (`experience_certificate_id`),
  KEY `FK_lmot3o7ak1xj5fn1q5me81vx9` (`kvccertificate_id`),
  KEY `FK_pjih3i7lmpb5xsh3mfo5yoerd` (`kalyana_karnataka_certificate_id`),
  KEY `FK_hdxhe85oln3uysao603ghrxq1` (`kannada_medium_certificate_id`),
  KEY `FK_7k726yjgq6smlxn0kj8uexf71` (`kpsckannada_certificate_id`),
  KEY `FK_q8ofrj64cmey98vnfyh3bexbk` (`kvc2_id`),
  KEY `FK_76g1sk5ipm8ugabpm3lcpqvoc` (`master_marks_sheet_id`),
  KEY `FK_eq20jy3q4mlbuvigfbw54wpob` (`netcertificate_id`),
  KEY `FK_7rdyg97s6u5xe3ye5d9a8o2p3` (`payment_info_id_id`),
  KEY `FK_nobwmp26iidc0a52sdsf8lad0` (`personwith_disability_certificate_id`),
  KEY `FK_9tnj60ejfmrpi345mpg36s5x1` (`pgpdc_id`),
  KEY `FK_tlfi5suorf28kb1yocpf4njhd` (`phdcertificate_id`),
  KEY `FK_s1v2f6983p941393m8340dxn6` (`phdpdc_id`),
  KEY `FK_ogf0sopt7h4rhggm9p9kdxx0e` (`picture_id`),
  KEY `FK_rf65lkojhqwysmvjglcuj6vee` (`puc_marks_sheet_id`),
  KEY `FK_aamuc4tnitjfqa0ha2v3kjgav` (`rural_certificate_id`),
  KEY `FK_jthjbaelvk59ylviftd36ayfk` (`signature_id`),
  KEY `FK_p5ven4c31wldkrnacx190g4w9` (`sslc_marks_sheet_id`),
  KEY `FK_51rb5b4jeqndpfn3vebmcjnui` (`ugpdc_id`),
  KEY `FK_tl7b8qv9x45hwcmg8w7ctjm3e` (`uploade1_id`),
  KEY `FK_q2ob7sjgbvpj1lw7tv9faudam` (`uploade10_id`),
  KEY `FK_n3v3kk5nf1dm5hdrrb27aewxf` (`uploade2_id`),
  KEY `FK_9ik6ruir9q39nyu7148f077de` (`uploade3_id`),
  KEY `FK_57astintvkane35oyutibytvc` (`uploade4_id`),
  KEY `FK_hn6a2cub5yogmpnwa2yg9d245` (`uploade5_id`),
  KEY `FK_hg6hq0ny5fjc8c3i6r5fmvj1x` (`uploade6_id`),
  KEY `FK_gdrfv6hhh052pe14shyeldj5q` (`uploade7_id`),
  KEY `FK_2i7tl5b67rtllyk2vd2dx3jhr` (`uploade8_id`),
  KEY `FK_ag9ueakh9k3a0do63qjtoyjkg` (`uploade9_id`),
  CONSTRAINT `FK_1q05pxbqa5efleyu0jeuclohc` FOREIGN KEY (`age_relax1_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_2i7tl5b67rtllyk2vd2dx3jhr` FOREIGN KEY (`uploade8_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_51rb5b4jeqndpfn3vebmcjnui` FOREIGN KEY (`ugpdc_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_57astintvkane35oyutibytvc` FOREIGN KEY (`uploade4_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_62u1pondasmcuf8btq9xpiyhc` FOREIGN KEY (`common_user_id_id`) REFERENCES `comman_users` (`id`),
  CONSTRAINT `FK_76g1sk5ipm8ugabpm3lcpqvoc` FOREIGN KEY (`master_marks_sheet_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_7k726yjgq6smlxn0kj8uexf71` FOREIGN KEY (`kpsckannada_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_7rdyg97s6u5xe3ye5d9a8o2p3` FOREIGN KEY (`payment_info_id_id`) REFERENCES `payment_info` (`id`),
  CONSTRAINT `FK_9ik6ruir9q39nyu7148f077de` FOREIGN KEY (`uploade3_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_9qdur7w43mnfb6xolsi3uxdt6` FOREIGN KEY (`caste_income_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_9tnj60ejfmrpi345mpg36s5x1` FOREIGN KEY (`pgpdc_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_aamuc4tnitjfqa0ha2v3kjgav` FOREIGN KEY (`rural_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_ag9ueakh9k3a0do63qjtoyjkg` FOREIGN KEY (`uploade9_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_cs0pjgh56bndeu1xtv3q3rsnq` FOREIGN KEY (`ex_servicemen_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_eq20jy3q4mlbuvigfbw54wpob` FOREIGN KEY (`netcertificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_gdrfv6hhh052pe14shyeldj5q` FOREIGN KEY (`uploade7_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_hdxhe85oln3uysao603ghrxq1` FOREIGN KEY (`kannada_medium_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_he9ushacyljg3kvne0wxryxyr` FOREIGN KEY (`bachelors_marks_sheet_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_hg6hq0ny5fjc8c3i6r5fmvj1x` FOREIGN KEY (`uploade6_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_hn6a2cub5yogmpnwa2yg9d245` FOREIGN KEY (`uploade5_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_jthjbaelvk59ylviftd36ayfk` FOREIGN KEY (`signature_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_lmot3o7ak1xj5fn1q5me81vx9` FOREIGN KEY (`kvccertificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_n3v3kk5nf1dm5hdrrb27aewxf` FOREIGN KEY (`uploade2_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_nobwmp26iidc0a52sdsf8lad0` FOREIGN KEY (`personwith_disability_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_ogf0sopt7h4rhggm9p9kdxx0e` FOREIGN KEY (`picture_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_p5ven4c31wldkrnacx190g4w9` FOREIGN KEY (`sslc_marks_sheet_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_pihlg6excxpdj5oelbh38l22i` FOREIGN KEY (`experience_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_pjih3i7lmpb5xsh3mfo5yoerd` FOREIGN KEY (`kalyana_karnataka_certificate_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_q2ob7sjgbvpj1lw7tv9faudam` FOREIGN KEY (`uploade10_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_q8ofrj64cmey98vnfyh3bexbk` FOREIGN KEY (`kvc2_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_rf65lkojhqwysmvjglcuj6vee` FOREIGN KEY (`puc_marks_sheet_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_s1v2f6983p941393m8340dxn6` FOREIGN KEY (`phdpdc_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_tl7b8qv9x45hwcmg8w7ctjm3e` FOREIGN KEY (`uploade1_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_tlfi5suorf28kb1yocpf4njhd` FOREIGN KEY (`phdcertificate_id`) REFERENCES `images` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail`
--

LOCK TABLES `form_detail` WRITE;
/*!40000 ALTER TABLE `form_detail` DISABLE KEYS */;
INSERT INTO `form_detail` VALUES (1,0,'12 years, 11 months, and 19 days','In-Service','Yes',NULL,'TVCK20250001','Professor','Veterinary Anatomy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'Indian',NULL,'dgd','2012-01-22 00:11:00','dfgdf@gmail.com','Yes',NULL,NULL,'fdgfd','dfg','2023-11-02 00:00:00','Male','545','2003-11-27 00:00:00','45645646456','Yes',NULL,NULL,NULL,'Yes',NULL,NULL,NULL,NULL,'3453','fdgdfg','gdgfdgfdgf',NULL,NULL,NULL,NULL,NULL,NULL,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'8879987897',NULL,'585401',NULL,NULL,NULL,NULL,'Yes','8755445','Hindu',NULL,'Yes',NULL,'SC-A',NULL,NULL,NULL,'gdfgfd','dfgdfg','dfg',NULL,'gdfgfd',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dg','Yes');
/*!40000 ALTER TABLE `form_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_achievements`
--

DROP TABLE IF EXISTS `form_detail_achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_achievements` (
  `form_detail_achievements1_id` bigint(20) DEFAULT NULL,
  `achievements_id` bigint(20) DEFAULT NULL,
  KEY `FK_qxt0shyyw6xah2vceph6nbg6j` (`achievements_id`),
  KEY `FK_rdas03avj7aw3udo5hlipxeh` (`form_detail_achievements1_id`),
  CONSTRAINT `FK_qxt0shyyw6xah2vceph6nbg6j` FOREIGN KEY (`achievements_id`) REFERENCES `achievements` (`id`),
  CONSTRAINT `FK_rdas03avj7aw3udo5hlipxeh` FOREIGN KEY (`form_detail_achievements1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_achievements`
--

LOCK TABLES `form_detail_achievements` WRITE;
/*!40000 ALTER TABLE `form_detail_achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_confidential_reports`
--

DROP TABLE IF EXISTS `form_detail_confidential_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_confidential_reports` (
  `form_detail_creports_id` bigint(20) DEFAULT NULL,
  `confidential_reports_id` bigint(20) DEFAULT NULL,
  KEY `FK_e8soif2rowtd6lo2atkb8v4n7` (`confidential_reports_id`),
  KEY `FK_20k7n58gi2yw4u940uvsc66w7` (`form_detail_creports_id`),
  CONSTRAINT `FK_20k7n58gi2yw4u940uvsc66w7` FOREIGN KEY (`form_detail_creports_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_e8soif2rowtd6lo2atkb8v4n7` FOREIGN KEY (`confidential_reports_id`) REFERENCES `confidential_reports` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_confidential_reports`
--

LOCK TABLES `form_detail_confidential_reports` WRITE;
/*!40000 ALTER TABLE `form_detail_confidential_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_confidential_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_experiences`
--

DROP TABLE IF EXISTS `form_detail_experiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_experiences` (
  `form_detail_experiences1_id` bigint(20) DEFAULT NULL,
  `experiences_id` bigint(20) DEFAULT NULL,
  KEY `FK_486lwch29o81f5kkapmpqq81j` (`experiences_id`),
  KEY `FK_k5rppg91atofnta3wxw0frqmj` (`form_detail_experiences1_id`),
  CONSTRAINT `FK_486lwch29o81f5kkapmpqq81j` FOREIGN KEY (`experiences_id`) REFERENCES `experiences` (`id`),
  CONSTRAINT `FK_k5rppg91atofnta3wxw0frqmj` FOREIGN KEY (`form_detail_experiences1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_experiences`
--

LOCK TABLES `form_detail_experiences` WRITE;
/*!40000 ALTER TABLE `form_detail_experiences` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_experiences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_funded_project`
--

DROP TABLE IF EXISTS `form_detail_funded_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_funded_project` (
  `form_detail_fproject_id` bigint(20) DEFAULT NULL,
  `funded_project_id` bigint(20) DEFAULT NULL,
  KEY `FK_dfkar8i6hp2d3cfpc1ysdr2vj` (`funded_project_id`),
  KEY `FK_do1xyeyi4hqci7q3hmfj4nspj` (`form_detail_fproject_id`),
  CONSTRAINT `FK_dfkar8i6hp2d3cfpc1ysdr2vj` FOREIGN KEY (`funded_project_id`) REFERENCES `funded_project` (`id`),
  CONSTRAINT `FK_do1xyeyi4hqci7q3hmfj4nspj` FOREIGN KEY (`form_detail_fproject_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_funded_project`
--

LOCK TABLES `form_detail_funded_project` WRITE;
/*!40000 ALTER TABLE `form_detail_funded_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_funded_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_languages`
--

DROP TABLE IF EXISTS `form_detail_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_languages` (
  `form_detail_languages1_id` bigint(20) DEFAULT NULL,
  `languages_id` bigint(20) DEFAULT NULL,
  KEY `FK_6rv5gpcrf8jhcu9fdq2b8e1o` (`languages_id`),
  KEY `FK_7uck465lvv5ju1u1tpjhidtjw` (`form_detail_languages1_id`),
  CONSTRAINT `FK_6rv5gpcrf8jhcu9fdq2b8e1o` FOREIGN KEY (`languages_id`) REFERENCES `languages` (`id`),
  CONSTRAINT `FK_7uck465lvv5ju1u1tpjhidtjw` FOREIGN KEY (`form_detail_languages1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_languages`
--

LOCK TABLES `form_detail_languages` WRITE;
/*!40000 ALTER TABLE `form_detail_languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_other_degrees`
--

DROP TABLE IF EXISTS `form_detail_other_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_other_degrees` (
  `form_detail_other_degrees1_id` bigint(20) DEFAULT NULL,
  `other_degrees_id` bigint(20) DEFAULT NULL,
  KEY `FK_eo9cc4ud9g4rq2gvk2873fe7h` (`other_degrees_id`),
  KEY `FK_ekgqaaqcrh54ux3x6weamuva1` (`form_detail_other_degrees1_id`),
  CONSTRAINT `FK_ekgqaaqcrh54ux3x6weamuva1` FOREIGN KEY (`form_detail_other_degrees1_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_eo9cc4ud9g4rq2gvk2873fe7h` FOREIGN KEY (`other_degrees_id`) REFERENCES `other_degrees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_other_degrees`
--

LOCK TABLES `form_detail_other_degrees` WRITE;
/*!40000 ALTER TABLE `form_detail_other_degrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_other_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_patent`
--

DROP TABLE IF EXISTS `form_detail_patent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_patent` (
  `form_detail_patent1_id` bigint(20) DEFAULT NULL,
  `patent_id` bigint(20) DEFAULT NULL,
  KEY `FK_qrn6qd457s4lsc87jp1odk9vr` (`patent_id`),
  KEY `FK_5x5r5fpbx40lxbbc9crkyhgpk` (`form_detail_patent1_id`),
  CONSTRAINT `FK_5x5r5fpbx40lxbbc9crkyhgpk` FOREIGN KEY (`form_detail_patent1_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_qrn6qd457s4lsc87jp1odk9vr` FOREIGN KEY (`patent_id`) REFERENCES `patent` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_patent`
--

LOCK TABLES `form_detail_patent` WRITE;
/*!40000 ALTER TABLE `form_detail_patent` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_patent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_scientific_publication`
--

DROP TABLE IF EXISTS `form_detail_scientific_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_scientific_publication` (
  `form_detail_sp_id` bigint(20) DEFAULT NULL,
  `scientific_publication_id` bigint(20) DEFAULT NULL,
  KEY `FK_2btjgjbp2eftgyomtm0rcc6ac` (`scientific_publication_id`),
  KEY `FK_8dm8nieiscscs57rjhjoeb0o8` (`form_detail_sp_id`),
  CONSTRAINT `FK_2btjgjbp2eftgyomtm0rcc6ac` FOREIGN KEY (`scientific_publication_id`) REFERENCES `scientific_publication` (`id`),
  CONSTRAINT `FK_8dm8nieiscscs57rjhjoeb0o8` FOREIGN KEY (`form_detail_sp_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_scientific_publication`
--

LOCK TABLES `form_detail_scientific_publication` WRITE;
/*!40000 ALTER TABLE `form_detail_scientific_publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_scientific_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_special_attainment`
--

DROP TABLE IF EXISTS `form_detail_special_attainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_special_attainment` (
  `form_detail_special_attainment1_id` bigint(20) DEFAULT NULL,
  `special_attainment_id` bigint(20) DEFAULT NULL,
  KEY `FK_ld3horbfjr9puyiby0w6uh51l` (`special_attainment_id`),
  KEY `FK_r1p3a2c8l9e4knjopsdcmr1sk` (`form_detail_special_attainment1_id`),
  CONSTRAINT `FK_ld3horbfjr9puyiby0w6uh51l` FOREIGN KEY (`special_attainment_id`) REFERENCES `special_attainment` (`id`),
  CONSTRAINT `FK_r1p3a2c8l9e4knjopsdcmr1sk` FOREIGN KEY (`form_detail_special_attainment1_id`) REFERENCES `form_detail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_special_attainment`
--

LOCK TABLES `form_detail_special_attainment` WRITE;
/*!40000 ALTER TABLE `form_detail_special_attainment` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_special_attainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_special_awards`
--

DROP TABLE IF EXISTS `form_detail_special_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_special_awards` (
  `form_detail_special_awards2_id` bigint(20) DEFAULT NULL,
  `special_awards_id` bigint(20) DEFAULT NULL,
  KEY `FK_ped9eqibffe3mae20kwgwm360` (`special_awards_id`),
  KEY `FK_lgu7daf3idrligxp8stk8tfnu` (`form_detail_special_awards2_id`),
  CONSTRAINT `FK_lgu7daf3idrligxp8stk8tfnu` FOREIGN KEY (`form_detail_special_awards2_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_ped9eqibffe3mae20kwgwm360` FOREIGN KEY (`special_awards_id`) REFERENCES `special_awards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_special_awards`
--

LOCK TABLES `form_detail_special_awards` WRITE;
/*!40000 ALTER TABLE `form_detail_special_awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_special_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_detail_workshops`
--

DROP TABLE IF EXISTS `form_detail_workshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `form_detail_workshops` (
  `form_detail_wshop_id` bigint(20) DEFAULT NULL,
  `workshops_id` bigint(20) DEFAULT NULL,
  KEY `FK_j852exc5348dbrr7gmks64ahq` (`workshops_id`),
  KEY `FK_b2a0grahaciv9gj0ycdr6h2y9` (`form_detail_wshop_id`),
  CONSTRAINT `FK_b2a0grahaciv9gj0ycdr6h2y9` FOREIGN KEY (`form_detail_wshop_id`) REFERENCES `form_detail` (`id`),
  CONSTRAINT `FK_j852exc5348dbrr7gmks64ahq` FOREIGN KEY (`workshops_id`) REFERENCES `workshops` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_detail_workshops`
--

LOCK TABLES `form_detail_workshops` WRITE;
/*!40000 ALTER TABLE `form_detail_workshops` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_detail_workshops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funded_project`
--

DROP TABLE IF EXISTS `funded_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funded_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `cadre2` varchar(255) DEFAULT NULL,
  `details2` varchar(255) DEFAULT NULL,
  `project_outlay` varchar(255) DEFAULT NULL,
  `project_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funded_project`
--

LOCK TABLES `funded_project` WRITE;
/*!40000 ALTER TABLE `funded_project` DISABLE KEYS */;
/*!40000 ALTER TABLE `funded_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `image_description` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `imgpath` varchar(255) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `exam_details` varchar(255) DEFAULT NULL,
  `examinationpassed` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `reading` varchar(255) DEFAULT NULL,
  `speaking` varchar(255) DEFAULT NULL,
  `writing` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `other_degrees`
--

DROP TABLE IF EXISTS `other_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `other_degrees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `additional_type` varchar(255) DEFAULT NULL,
  `board_universityother_diploma` varchar(255) DEFAULT NULL,
  `nameof_degree` varchar(255) DEFAULT NULL,
  `other_diploma` varchar(255) DEFAULT NULL,
  `other_diplomayear` varchar(255) DEFAULT NULL,
  `percentageother_diploma` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `other_degrees`
--

LOCK TABLES `other_degrees` WRITE;
/*!40000 ALTER TABLE `other_degrees` DISABLE KEYS */;
/*!40000 ALTER TABLE `other_degrees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patent`
--

DROP TABLE IF EXISTS `patent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patent` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `details1` varchar(255) DEFAULT NULL,
  `year1` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patent`
--

LOCK TABLES `patent` WRITE;
/*!40000 ALTER TABLE `patent` DISABLE KEYS */;
/*!40000 ALTER TABLE `patent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `bank_ref_no` varchar(255) DEFAULT NULL,
  `createddate` datetime NOT NULL,
  `discription` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `payment_id` varchar(255) DEFAULT NULL,
  `paymentrequest_id` varchar(255) DEFAULT NULL,
  `paymethod` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `terms` bit(1) NOT NULL,
  `totalamount` varchar(255) DEFAULT NULL,
  `transaction_date` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scientific_publication`
--

DROP TABLE IF EXISTS `scientific_publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scientific_publication` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `detailsss` varchar(255) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `titles_papers` varchar(255) DEFAULT NULL,
  `types` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scientific_publication`
--

LOCK TABLES `scientific_publication` WRITE;
/*!40000 ALTER TABLE `scientific_publication` DISABLE KEYS */;
/*!40000 ALTER TABLE `scientific_publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_role`
--

DROP TABLE IF EXISTS `sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `authority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_oah023x2ltqw09mdue7w0mcxb` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_role`
--

LOCK TABLES `sec_role` WRITE;
/*!40000 ALTER TABLE `sec_role` DISABLE KEYS */;
INSERT INTO `sec_role` VALUES (1,0,'ROLE_SUPERADMIN'),(2,0,'ROLE_ADMIN'),(3,0,'ROLE_USER'),(4,0,'ROLE_COMMANUSERS');
/*!40000 ALTER TABLE `sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user`
--

DROP TABLE IF EXISTS `sec_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `account_expired` bit(1) NOT NULL,
  `account_locked` bit(1) NOT NULL,
  `admin_id_id` bigint(20) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `comman_users_id_id` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_expired` bit(1) NOT NULL,
  `phoneno` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5ctbdrlf3eismye20vsdtk8w8` (`username`),
  KEY `FK_tlddqljigbpjwdd3nw1rcr9ge` (`admin_id_id`),
  KEY `FK_r7q66xerm6r1mafg6cbnslwy1` (`comman_users_id_id`),
  KEY `FK_2qmct013ebecl50p8wswtj6ln` (`profile_pic_id`),
  CONSTRAINT `FK_2qmct013ebecl50p8wswtj6ln` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_r7q66xerm6r1mafg6cbnslwy1` FOREIGN KEY (`comman_users_id_id`) REFERENCES `comman_users` (`id`),
  CONSTRAINT `FK_tlddqljigbpjwdd3nw1rcr9ge` FOREIGN KEY (`admin_id_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user`
--

LOCK TABLES `sec_user` WRITE;
/*!40000 ALTER TABLE `sec_user` DISABLE KEYS */;
INSERT INTO `sec_user` VALUES (1,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$KJo2ijcLozKfAxcSZ/bLlO9g1cxGht1uT5UfFSjSDhZNU3PdKD3T.','\0',NULL,NULL,NULL,'superadmin'),(2,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$cImo2ycjw0bOQ74DjrrD3OeQcaDrzZHIMIvby9nq91h21KGlrFP1K','\0',NULL,NULL,NULL,'admin'),(3,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$/Z7LDxR9w2EfWCQlbGPaBOHVCQa1uKJyqN5ktsvbvUrTBkGtXQfm6','\0',NULL,NULL,NULL,'user'),(4,0,'\0','\0',NULL,NULL,NULL,NULL,'','$2a$10$ple5ret6nqNhrPPOWa3Ql.mfcu5IoojQjDAoLvzSiMgDYS1kkBS6O','\0',NULL,NULL,NULL,'commanusers'),(5,0,'\0','\0',NULL,'bidar',1,'demo@gmail.com','','$2a$10$orCcskX8DeCyCrfoxo2vvekG4pc8TKbK88bM3rnnU7swn2iL2izlG','\0',NULL,NULL,'dfgdfg','demo');
/*!40000 ALTER TABLE `sec_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_user_sec_role`
--

DROP TABLE IF EXISTS `sec_user_sec_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_user_sec_role` (
  `sec_user_id` bigint(20) NOT NULL,
  `sec_role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`sec_user_id`,`sec_role_id`),
  KEY `FK_bshvqhdx8h9mb4rrbo1ahnp7q` (`sec_role_id`),
  CONSTRAINT `FK_bshvqhdx8h9mb4rrbo1ahnp7q` FOREIGN KEY (`sec_role_id`) REFERENCES `sec_role` (`id`),
  CONSTRAINT `FK_f1eew3u65ajs3e50xvacwgron` FOREIGN KEY (`sec_user_id`) REFERENCES `sec_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_user_sec_role`
--

LOCK TABLES `sec_user_sec_role` WRITE;
/*!40000 ALTER TABLE `sec_user_sec_role` DISABLE KEYS */;
INSERT INTO `sec_user_sec_role` VALUES (1,1),(2,2),(3,3),(4,4),(5,4);
/*!40000 ALTER TABLE `sec_user_sec_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_attainment`
--

DROP TABLE IF EXISTS `special_attainment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_attainment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `cadre` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `particular` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_attainment`
--

LOCK TABLES `special_attainment` WRITE;
/*!40000 ALTER TABLE `special_attainment` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_attainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_awards`
--

DROP TABLE IF EXISTS `special_awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_awards` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `awardedfor` varchar(255) DEFAULT NULL,
  `awards_year` varchar(255) DEFAULT NULL,
  `noof_awards` varchar(255) DEFAULT NULL,
  `particulars_awards` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_awards`
--

LOCK TABLES `special_awards` WRITE;
/*!40000 ALTER TABLE `special_awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usercreation`
--

DROP TABLE IF EXISTS `usercreation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usercreation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `address_id` bigint(20) DEFAULT NULL,
  `admin_id_id` bigint(20) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `profile_pic_id` bigint(20) DEFAULT NULL,
  `user_id_id` bigint(20) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_himob4q3c7in2ggs85e9b2jnx` (`address_id`),
  KEY `FK_qm1i2yctq65xj6aubh640wv1e` (`admin_id_id`),
  KEY `FK_13bxlafo36qgwolf7vslofynw` (`profile_pic_id`),
  KEY `FK_je7p1526dv5c1ulpukgyiwit3` (`user_id_id`),
  CONSTRAINT `FK_13bxlafo36qgwolf7vslofynw` FOREIGN KEY (`profile_pic_id`) REFERENCES `images` (`id`),
  CONSTRAINT `FK_himob4q3c7in2ggs85e9b2jnx` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `FK_je7p1526dv5c1ulpukgyiwit3` FOREIGN KEY (`user_id_id`) REFERENCES `sec_user` (`id`),
  CONSTRAINT `FK_qm1i2yctq65xj6aubh640wv1e` FOREIGN KEY (`admin_id_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usercreation`
--

LOCK TABLES `usercreation` WRITE;
/*!40000 ALTER TABLE `usercreation` DISABLE KEYS */;
/*!40000 ALTER TABLE `usercreation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshops`
--

DROP TABLE IF EXISTS `workshops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workshops` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `version` bigint(20) NOT NULL,
  `details3` varchar(255) DEFAULT NULL,
  `level3` varchar(255) DEFAULT NULL,
  `particulars3` varchar(255) DEFAULT NULL,
  `type10` varchar(255) DEFAULT NULL,
  `year3` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshops`
--

LOCK TABLES `workshops` WRITE;
/*!40000 ALTER TABLE `workshops` DISABLE KEYS */;
/*!40000 ALTER TABLE `workshops` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-12 11:45:20
