-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: localhost    Database: DkyDb
-- ------------------------------------------------------
-- Server version	5.6.10

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
-- Table structure for table `id_card_type`
--

DROP TABLE IF EXISTS `id_card_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_card_type` (
  `id_card_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_card_type_name` varchar(45) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_card_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_card_type`
--

LOCK TABLES `id_card_type` WRITE;
/*!40000 ALTER TABLE `id_card_type` DISABLE KEYS */;
INSERT INTO `id_card_type` VALUES (1,'未知','未知'),(2,'身份证','身份证'),(3,'军官证','军官证'),(4,'护照','护照'),(5,'驾照','驾照');
/*!40000 ALTER TABLE `id_card_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_academic_level`
--

DROP TABLE IF EXISTS `t_academic_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_academic_level` (
  `academic_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `academic_level_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`academic_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_academic_level`
--

LOCK TABLES `t_academic_level` WRITE;
/*!40000 ALTER TABLE `t_academic_level` DISABLE KEYS */;
INSERT INTO `t_academic_level` VALUES (1,'无'),(2,'教授'),(3,'副教授'),(4,'讲师'),(5,'助教');
/*!40000 ALTER TABLE `t_academic_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_account`
--

DROP TABLE IF EXISTS `t_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account` (
  `account_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_name` varchar(45) DEFAULT NULL,
  `account_type_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`),
  KEY `fk_t_account_t_account_type1_idx` (`account_type_id`),
  CONSTRAINT `fk_t_account_t_account_type1` FOREIGN KEY (`account_type_id`) REFERENCES `t_account_type` (`account_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account`
--

LOCK TABLES `t_account` WRITE;
/*!40000 ALTER TABLE `t_account` DISABLE KEYS */;
INSERT INTO `t_account` VALUES (1,'医院账号',2),(2,'王一账号',1);
/*!40000 ALTER TABLE `t_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_account_io`
--

DROP TABLE IF EXISTS `t_account_io`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_io` (
  `account_io_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(20) NOT NULL,
  `balance` double DEFAULT NULL,
  `occur_date` datetime DEFAULT NULL,
  `in_amount` double DEFAULT NULL,
  `out_amount` double DEFAULT NULL,
  `is_latest` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`account_io_id`),
  KEY `fk_t_account_io_t_account1_idx` (`account_id`),
  CONSTRAINT `fk_t_account_io_t_account1` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`account_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account_io`
--

LOCK TABLES `t_account_io` WRITE;
/*!40000 ALTER TABLE `t_account_io` DISABLE KEYS */;
INSERT INTO `t_account_io` VALUES (2,1,0,'2016-02-23 00:00:00',0,0,0),(3,2,0,'2016-02-23 00:00:00',0,0,0),(4,2,7,'2016-02-23 00:00:00',7,0,0),(5,2,0,'2016-02-23 00:00:00',0,7,1),(6,1,7,'2016-02-23 00:00:00',7,0,1);
/*!40000 ALTER TABLE `t_account_io` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_account_type`
--

DROP TABLE IF EXISTS `t_account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_account_type` (
  `account_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`account_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_account_type`
--

LOCK TABLES `t_account_type` WRITE;
/*!40000 ALTER TABLE `t_account_type` DISABLE KEYS */;
INSERT INTO `t_account_type` VALUES (1,'私人账号'),(2,'企业对公账号'),(3,'企业基本账号');
/*!40000 ALTER TABLE `t_account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_app_service`
--

DROP TABLE IF EXISTS `t_app_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app_service` (
  `app_service_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app_service_name` varchar(200) DEFAULT NULL,
  `app_service_class` varchar(200) DEFAULT NULL,
  `app_service_method` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`app_service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app_service`
--

LOCK TABLES `t_app_service` WRITE;
/*!40000 ALTER TABLE `t_app_service` DISABLE KEYS */;
INSERT INTO `t_app_service` VALUES (1,'loginUser','com.haisijia.yhis.service.LoginService','execute'),(2,'getPatients','com.haisijia.yhis.service.PatientService','execute'),(3,'addPatient','com.haisijia.yhis.service.PatientService','execute'),(4,'updatePatient','com.haisijia.yhis.service.PatientService','execute'),(5,'deletePatient','com.haisijia.yhis.service.PatientService','execute'),(6,'getDevPages','com.haisijia.service.DevPageService','execute');
/*!40000 ALTER TABLE `t_app_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_c_j_t_param`
--

DROP TABLE IF EXISTS `t_c_j_t_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_c_j_t_param` (
  `c_j_t_param_id` int(11) NOT NULL AUTO_INCREMENT,
  `jsp_template_id` int(11) NOT NULL,
  `param` varchar(200) DEFAULT NULL,
  `is_optional` tinyint(4) DEFAULT NULL,
  `default_value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`c_j_t_param_id`),
  KEY `fk_t_c_j_t_param_t_jsp_template1_idx` (`jsp_template_id`),
  CONSTRAINT `fk_t_c_j_t_param_t_jsp_template1` FOREIGN KEY (`jsp_template_id`) REFERENCES `t_jsp_template` (`jsp_template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_c_j_t_param`
--

LOCK TABLES `t_c_j_t_param` WRITE;
/*!40000 ALTER TABLE `t_c_j_t_param` DISABLE KEYS */;
INSERT INTO `t_c_j_t_param` VALUES (1,2,'title',0,'云HIS'),(2,2,'header',0,'header.jsp'),(3,2,'sidebar',0,'sidebar.jsp'),(4,2,'body',0,'t1.jsp'),(5,2,'footer',0,'footer.jsp');
/*!40000 ALTER TABLE `t_c_j_t_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_charge_type`
--

DROP TABLE IF EXISTS `t_charge_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_charge_type` (
  `charge_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `charge_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`charge_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_charge_type`
--

LOCK TABLES `t_charge_type` WRITE;
/*!40000 ALTER TABLE `t_charge_type` DISABLE KEYS */;
INSERT INTO `t_charge_type` VALUES (1,'自费'),(2,'公费'),(3,'基本医疗保险'),(4,'新农合'),(5,'商业保险');
/*!40000 ALTER TABLE `t_charge_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cmd`
--

DROP TABLE IF EXISTS `t_cmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cmd` (
  `cmd_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmd_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cmd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cmd`
--

LOCK TABLES `t_cmd` WRITE;
/*!40000 ALTER TABLE `t_cmd` DISABLE KEYS */;
INSERT INTO `t_cmd` VALUES (1,'showLogin'),(2,'showHome'),(3,'loginUserAjax'),(4,'setCookieAjax'),(5,'showPatientList'),(6,'showPatientNew'),(7,'getHtmlSelectDataBySql'),(8,'addPatientAjax'),(9,'showDevPageList'),(10,'showDevPageNew'),(11,'getSpecPatientsAjax'),(12,'deletePatientAjax'),(13,'showPatientDetail'),(14,'updatePatientAjax'),(15,'showFollowupPlans'),(16,'showFollowupRecord'),(17,'showScheduleDoctorTemplate'),(18,'showScheduleDoctorAdjust'),(19,'showScheduleNurseTemplate'),(20,'showScheduleNurseAdjust'),(21,'showSchedulePatientTemplate'),(22,'showSchedulePatientAdjust'),(23,'showPatientEvaluate'),(24,'showPatientCurePlan'),(25,'showCreateDoctorAdvice'),(26,'showDoctorAdviceTemplate'),(27,'showPreCureBill'),(28,'showPostCureBill'),(29,'showUpdateDoctorAdvice'),(30,'showAdjustDoctorAdvice'),(31,'showPatientEnroll'),(32,'showPatientQuit'),(33,'showCheckDoctorAdvice'),(34,'showRecheckDoctorAdvice'),(35,'showFillCureBill'),(36,'showNurseAdjustDoctorAdvice'),(37,'showCreateDeposit'),(38,'showChargeDeposit'),(39,'showCancelDeposit'),(40,'showDailyBill'),(41,'showMonthBill'),(42,'showMonthSettle'),(43,'showCenterDailyReport'),(44,'showCenterDailyReportDesign'),(45,'showCenterMonthReport'),(46,'showCenterMonthReportDesign'),(47,'showBillPrint'),(48,'showBillDesign'),(49,'logoutUserAjax'),(50,'addDevPageAjax'),(56,'devPage006'),(57,'showFollowupPatients'),(58,'showResidentPatients'),(59,'getSpecDevPagesAjax'),(60,'showFollowupPatientNew'),(61,'showPatientTagChoose'),(62,'showFollowupPatientDetail'),(63,'showResidentPatientNew'),(64,'showResidentPatientDetail'),(66,'showEnrollFollowupPatient'),(67,'showAddFollowupPlan'),(68,'showFollowupPlanChoosePatients'),(69,'showFollowupPlanDetail'),(70,'showFollowupPlanPatients'),(71,'showAddFollowupPatientResult'),(72,'showFollowupRecord'),(73,'showPatientFollowupRecords'),(74,'showUpdateFollowupPatientResult'),(75,'showSchedulePatientChoosePatient'),(76,'showSchedulePatientAdjustDetail'),(77,'showNurseDevices'),(78,'showDoctorAdviceNew'),(79,'showAddDoctorAdviceTemplate'),(80,'showDoctorAdviceTemplateDetail'),(81,'showPendingDoctorAdviceList'),(82,'showDoctorAdviceTemplateDetailNew'),(83,'showPatientChooseDoctorAdviceTemplate'),(84,'showPatientEnrollNew'),(85,'showPatientQuitNew'),(86,'showRecheckDoctorAdviceList'),(87,'showPatientDepositList'),(88,'showPatientDepositIo'),(89,'showPatientDepositIn'),(90,'showDepositSettleList'),(91,'showDepositDailyList');
/*!40000 ALTER TABLE `t_cmd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cmd_http_request`
--

DROP TABLE IF EXISTS `t_cmd_http_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cmd_http_request` (
  `cmd_http_request_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cmd_id` int(11) NOT NULL,
  `class_name` varchar(200) DEFAULT NULL,
  `method_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cmd_http_request_id`),
  KEY `fk_t_cmd_http_get_t_cmd1_idx` (`cmd_id`),
  CONSTRAINT `fk_t_cmd_http_get_t_cmd1` FOREIGN KEY (`cmd_id`) REFERENCES `t_cmd` (`cmd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cmd_http_request`
--

LOCK TABLES `t_cmd_http_request` WRITE;
/*!40000 ALTER TABLE `t_cmd_http_request` DISABLE KEYS */;
INSERT INTO `t_cmd_http_request` VALUES (1,1,'com.haisijia.yhis.controller.LoginController','doGet'),(2,4,'com.haisijia.yhis.controller.LoginController','doAjaxGet'),(3,3,'com.haisijia.yhis.controller.LoginController','doAjaxGet'),(4,2,'com.haisijia.yhis.controller.HomeController','doGet'),(5,5,'com.haisijia.yhis.controller.PatientController','doGet'),(6,6,'com.haisijia.yhis.controller.PatientController','doGet'),(7,7,'com.haisijia.yhis.controller.AppUtilController','doGet'),(8,8,'com.haisijia.yhis.controller.PatientController','addPatientAjax'),(9,9,'com.haisijia.controller.dev.DevPageController','doGet'),(10,10,'com.haisijia.controller.dev.DevPageController','doGet'),(11,11,'com.haisijia.yhis.controller.PatientController','doAjaxGet'),(12,12,'com.haisijia.yhis.controller.PatientController','doAjaxGet'),(13,13,'com.haisijia.yhis.controller.PatientController','doGet'),(14,14,'com.haisijia.yhis.controller.PatientController','doAjaxGet'),(15,15,'com.haisijia.yhis.controller.FollowupController','doGet'),(16,15,'com.haisijia.yhis.controller.FollowupController','doGet'),(17,16,'com.haisijia.yhis.controller.FollowupController','doGet'),(18,17,'com.haisijia.yhis.controller.ScheduleController','doGet'),(19,18,'com.haisijia.yhis.controller.ScheduleController','doGet'),(20,19,'com.haisijia.yhis.controller.ScheduleController','doGet'),(21,20,'com.haisijia.yhis.controller.ScheduleController','doGet'),(22,21,'com.haisijia.yhis.controller.ScheduleController','doGet'),(23,22,'com.haisijia.yhis.controller.ScheduleController','doGet'),(24,23,'com.haisijia.yhis.controller.DoctorController','doGet'),(25,24,'com.haisijia.yhis.controller.DoctorController','doGet'),(26,25,'com.haisijia.yhis.controller.DoctorController','doGet'),(27,26,'com.haisijia.yhis.controller.DoctorController','doGet'),(28,27,'com.haisijia.yhis.controller.DoctorController','doGet'),(29,28,'com.haisijia.yhis.controller.DoctorController','doGet'),(30,29,'com.haisijia.yhis.controller.DoctorController','doGet'),(31,30,'com.haisijia.yhis.controller.DoctorController','doGet'),(32,31,'com.haisijia.yhis.controller.NurseController','doGet'),(33,32,'com.haisijia.yhis.controller.NurseController','doGet'),(34,33,'com.haisijia.yhis.controller.NurseController','doGet'),(35,34,'com.haisijia.yhis.controller.NurseController','doGet'),(36,35,'com.haisijia.yhis.controller.NurseController','doGet'),(37,36,'com.haisijia.yhis.controller.NurseController','doGet'),(38,37,'com.haisijia.yhis.controller.FinanceController','doGet'),(39,38,'com.haisijia.yhis.controller.FinanceController','doGet'),(40,39,'com.haisijia.yhis.controller.FinanceController','doGet'),(41,40,'com.haisijia.yhis.controller.FinanceController','doGet'),(42,41,'com.haisijia.yhis.controller.FinanceController','doGet'),(43,42,'com.haisijia.yhis.controller.FinanceController','doGet'),(44,43,'com.haisijia.yhis.controller.FinanceController','doGet'),(45,44,'com.haisijia.yhis.controller.FinanceController','doGet'),(46,45,'com.haisijia.yhis.controller.FinanceController','doGet'),(47,46,'com.haisijia.yhis.controller.FinanceController','doGet'),(48,47,'com.haisijia.yhis.controller.FinanceController','doGet'),(49,48,'com.haisijia.yhis.controller.FinanceController','doGet'),(51,49,'com.haisijia.yhis.controller.LoginController','doAjaxGet'),(52,50,'com.haisijia.controller.dev.DevPageController','doAjaxGet'),(54,56,'com.haisijia.controller.dev.DevPageController','doGet'),(55,57,'com.haisijia.yhis.controller.PatientController','doGet'),(56,58,'com.haisijia.yhis.controller.PatientController','doGet'),(57,59,'com.haisijia.controller.dev.DevPageController','doAjaxGet'),(58,60,'com.haisijia.yhis.controller.PatientController','doGet'),(59,61,'com.haisijia.yhis.controller.PatientController','doGet'),(60,62,'com.haisijia.yhis.controller.PatientController','doGet'),(61,63,'com.haisijia.yhis.controller.PatientController','doGet'),(62,64,'com.haisijia.yhis.controller.PatientController','doGet'),(63,66,'com.haisijia.yhis.controller.PatientController','doGet'),(64,67,'com.haisijia.yhis.controller.FollowupController','doGet'),(65,68,'com.haisijia.yhis.controller.FollowupController','doGet'),(66,69,'com.haisijia.yhis.controller.FollowupController','doGet'),(67,70,'com.haisijia.yhis.controller.FollowupController','doGet'),(68,71,'com.haisijia.yhis.controller.FollowupController','doGet'),(69,73,'com.haisijia.yhis.controller.FollowupController','doGet'),(70,74,'com.haisijia.yhis.controller.FollowupController','doGet'),(71,75,'com.haisijia.yhis.controller.ScheduleController','doGet'),(72,76,'com.haisijia.yhis.controller.ScheduleController','doGet'),(73,77,'com.haisijia.yhis.controller.ScheduleController','doGet'),(74,78,'com.haisijia.yhis.controller.DoctorController','doGet'),(75,79,'com.haisijia.yhis.controller.DoctorController','doGet'),(76,80,'com.haisijia.yhis.controller.DoctorController','doGet'),(77,81,'com.haisijia.yhis.controller.DoctorController','doGet'),(78,82,'com.haisijia.yhis.controller.DoctorController','doGet'),(79,83,'com.haisijia.yhis.controller.DoctorController','doGet'),(80,84,'com.haisijia.yhis.controller.NurseController','doGet'),(81,85,'com.haisijia.yhis.controller.NurseController','doGet'),(82,87,'com.haisijia.yhis.controller.FinanceController','doGet'),(83,88,'com.haisijia.yhis.controller.FinanceController','doGet'),(84,89,'com.haisijia.yhis.controller.FinanceController','doGet'),(85,90,'com.haisijia.yhis.controller.FinanceController','doGet'),(86,91,'com.haisijia.yhis.controller.FinanceController','doGet');
/*!40000 ALTER TABLE `t_cmd_http_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cmd_jsp_params`
--

DROP TABLE IF EXISTS `t_cmd_jsp_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cmd_jsp_params` (
  `cmd_jsp_param_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmd_id` int(11) NOT NULL,
  `c_j_t_param_id` int(11) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cmd_jsp_param_id`),
  KEY `fk_t_cmd_jsp_param_t_c_t_param1_idx` (`c_j_t_param_id`),
  KEY `fk_t_cmd_jsp_params_t_cmd1_idx` (`cmd_id`),
  CONSTRAINT `fk_t_cmd_jsp_params_t_cmd1` FOREIGN KEY (`cmd_id`) REFERENCES `t_cmd` (`cmd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_cmd_jsp_param_t_c_t_param1` FOREIGN KEY (`c_j_t_param_id`) REFERENCES `t_c_j_t_param` (`c_j_t_param_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cmd_jsp_params`
--

LOCK TABLES `t_cmd_jsp_params` WRITE;
/*!40000 ALTER TABLE `t_cmd_jsp_params` DISABLE KEYS */;
INSERT INTO `t_cmd_jsp_params` VALUES (1,2,1,'云HIS---首页'),(2,2,2,'header.jsp'),(3,2,3,'sidebar.jsp'),(4,2,4,'t1.jsp'),(5,2,5,'footer.jsp'),(6,5,1,'云HIS---患者列表'),(7,5,2,'header.jsp'),(8,5,3,'sidebar.jsp'),(9,5,4,'register/patient_list.jsp'),(10,5,5,'footer.jsp'),(11,6,1,'云HIS---患者列表'),(12,6,2,'header.jsp'),(13,6,3,'sidebar.jsp'),(14,6,4,'register/patient_new.jsp'),(15,6,5,'footer.jsp'),(16,9,1,'云HIS---开发者界面'),(17,9,2,'dev/header.jsp'),(18,9,3,'dev/sidebar.jsp'),(19,9,4,'dev/page/page_list.jsp'),(20,9,5,'dev/footer.jsp'),(21,10,1,'云HIS---开发者界面'),(22,10,2,'dev/header.jsp'),(23,10,3,'dev/sidebar.jsp'),(24,10,4,'dev/page/page_new.jsp'),(25,10,5,'dev/footer.jsp'),(26,13,1,'云HIS---患者详情'),(27,13,2,'header.jsp'),(28,13,3,'sidebar.jsp'),(29,13,4,'register/patient_detail.jsp'),(30,13,5,'footer.jsp'),(31,15,1,'云HIS---随访计划'),(32,15,2,'header.jsp'),(33,15,3,'sidebar.jsp'),(34,15,4,'followup/followup_plan_list.jsp'),(35,15,5,'footer.jsp'),(36,16,1,'云HIS---随访计划'),(37,16,2,'header.jsp'),(38,16,3,'sidebar.jsp'),(39,16,4,'followup/followup_record.jsp'),(40,16,5,'footer.jsp'),(41,17,1,'云HIS---随访计划'),(42,17,2,'header.jsp'),(43,17,3,'sidebar.jsp'),(44,17,4,'schedule/doctor_template.jsp'),(45,17,5,'footer.jsp'),(46,18,1,'云HIS---随访计划'),(47,18,2,'header.jsp'),(48,18,3,'sidebar.jsp'),(49,18,4,'schedule/doctor_adjust.jsp'),(50,18,5,'footer.jsp'),(51,19,1,'云HIS---随访计划'),(52,19,2,'header.jsp'),(53,19,3,'sidebar.jsp'),(54,19,4,'schedule/nurse_template.jsp'),(55,19,5,'footer.jsp'),(56,20,1,'云HIS---随访计划'),(57,20,2,'header.jsp'),(58,20,3,'sidebar.jsp'),(59,20,4,'schedule/nurse_adjust.jsp'),(60,20,5,'footer.jsp'),(61,21,1,'云HIS---随访计划'),(62,21,2,'header.jsp'),(63,21,3,'sidebar.jsp'),(64,21,4,'schedule/patient_template.jsp'),(65,21,5,'footer.jsp'),(66,22,1,'云HIS---随访计划'),(67,22,2,'header.jsp'),(68,22,3,'sidebar.jsp'),(69,22,4,'schedule/patient_adjust.jsp'),(70,22,5,'footer.jsp'),(71,23,1,'云HIS---随访计划'),(72,23,2,'header.jsp'),(73,23,3,'sidebar.jsp'),(74,23,4,'doctor/patient_evaluate.jsp'),(75,23,5,'footer.jsp'),(76,24,1,'云HIS---随访计划'),(77,24,2,'header.jsp'),(78,24,3,'sidebar.jsp'),(79,24,4,'doctor/patient_cure_plan.jsp'),(80,24,5,'footer.jsp'),(81,25,1,'云HIS---随访计划'),(82,25,2,'header.jsp'),(83,25,3,'sidebar.jsp'),(84,25,4,'doctor/create_doctor_advice.jsp'),(85,25,5,'footer.jsp'),(86,26,1,'云HIS---随访计划'),(87,26,2,'header.jsp'),(88,26,3,'sidebar.jsp'),(89,26,4,'doctor/doctor_advice_template_list.jsp'),(90,26,5,'footer.jsp'),(91,27,1,'云HIS---随访计划'),(92,27,2,'header.jsp'),(93,27,3,'sidebar.jsp'),(94,27,4,'doctor/pre_cure_bill.jsp'),(95,27,5,'footer.jsp'),(96,28,1,'云HIS---随访计划'),(97,28,2,'header.jsp'),(98,28,3,'sidebar.jsp'),(99,28,4,'doctor/post_cure_bill.jsp'),(100,28,5,'footer.jsp'),(101,29,1,'云HIS---随访计划'),(102,29,2,'header.jsp'),(103,29,3,'sidebar.jsp'),(104,29,4,'doctor/update_doctor_advice.jsp'),(105,29,5,'footer.jsp'),(106,30,1,'云HIS---随访计划'),(107,30,2,'header.jsp'),(108,30,3,'sidebar.jsp'),(109,30,4,'doctor/adjust_doctor_advice.jsp'),(110,30,5,'footer.jsp'),(111,31,1,'云HIS---随访计划'),(112,31,2,'header.jsp'),(113,31,3,'sidebar.jsp'),(114,31,4,'nurse/patient_enroll.jsp'),(115,31,5,'footer.jsp'),(116,32,1,'云HIS---随访计划'),(117,32,2,'header.jsp'),(118,32,3,'sidebar.jsp'),(119,32,4,'nurse/patient_quit.jsp'),(120,32,5,'footer.jsp'),(121,33,1,'云HIS---随访计划'),(122,33,2,'header.jsp'),(123,33,3,'sidebar.jsp'),(124,33,4,'nurse/check_doctor_advice.jsp'),(125,33,5,'footer.jsp'),(126,34,1,'云HIS---随访计划'),(127,34,2,'header.jsp'),(128,34,3,'sidebar.jsp'),(129,34,4,'nurse/recheck_doctor_advice.jsp'),(130,34,5,'footer.jsp'),(131,35,1,'云HIS---随访计划'),(132,35,2,'header.jsp'),(133,35,3,'sidebar.jsp'),(134,35,4,'nurse/fill_cure_bill.jsp'),(135,35,5,'footer.jsp'),(136,36,1,'云HIS---随访计划'),(137,36,2,'header.jsp'),(138,36,3,'sidebar.jsp'),(139,36,4,'nurse/nurse_adjust_doctor_advice.jsp'),(140,36,5,'footer.jsp'),(141,37,1,'云HIS---随访计划'),(142,37,2,'header.jsp'),(143,37,3,'sidebar.jsp'),(144,37,4,'finance/create_deposit.jsp'),(145,37,5,'footer.jsp'),(146,38,1,'云HIS---随访计划'),(147,38,2,'header.jsp'),(148,38,3,'sidebar.jsp'),(149,38,4,'finance/charge_deposit.jsp'),(150,38,5,'footer.jsp'),(151,39,1,'云HIS---随访计划'),(152,39,2,'header.jsp'),(153,39,3,'sidebar.jsp'),(154,39,4,'finance/cancel_deposit.jsp'),(155,39,5,'footer.jsp'),(156,40,1,'云HIS---随访计划'),(157,40,2,'header.jsp'),(158,40,3,'sidebar.jsp'),(159,40,4,'finance/daily_bill.jsp'),(160,40,5,'footer.jsp'),(161,41,1,'云HIS---随访计划'),(162,41,2,'header.jsp'),(163,41,3,'sidebar.jsp'),(164,41,4,'finance/month_bill.jsp'),(165,41,5,'footer.jsp'),(166,42,1,'云HIS---随访计划'),(167,42,2,'header.jsp'),(168,42,3,'sidebar.jsp'),(169,42,4,'finance/month_settle.jsp'),(170,42,5,'footer.jsp'),(171,43,1,'云HIS---随访计划'),(172,43,2,'header.jsp'),(173,43,3,'sidebar.jsp'),(174,43,4,'finance/center_daily_report.jsp'),(175,43,5,'footer.jsp'),(176,44,1,'云HIS---随访计划'),(177,44,2,'header.jsp'),(178,44,3,'sidebar.jsp'),(179,44,4,'finance/center_daily_report_design.jsp'),(180,44,5,'footer.jsp'),(181,45,1,'云HIS---随访计划'),(182,45,2,'header.jsp'),(183,45,3,'sidebar.jsp'),(184,45,4,'finance/center_month_report.jsp'),(185,45,5,'footer.jsp'),(186,46,1,'云HIS---随访计划'),(187,46,2,'header.jsp'),(188,46,3,'sidebar.jsp'),(189,46,4,'finance/center_month_report_design.jsp'),(190,46,5,'footer.jsp'),(191,47,1,'云HIS---随访计划'),(192,47,2,'header.jsp'),(193,47,3,'sidebar.jsp'),(194,47,4,'finance/bill_print.jsp'),(195,47,5,'footer.jsp'),(196,48,1,'云HIS---随访计划'),(197,48,2,'header.jsp'),(198,48,3,'sidebar.jsp'),(199,48,4,'finance/bill_design.jsp'),(200,48,5,'footer.jsp'),(201,56,1,'测试006'),(202,56,2,'dev/header.jsp'),(203,56,3,'dev/sidebar.jsp'),(204,56,4,'page006.jsp'),(205,56,5,'dev/footer.jsp'),(206,57,1,'云HIS---随访患者维护'),(207,57,2,'header.jsp'),(208,57,3,'sidebar.jsp'),(209,57,4,'patient/followup_patient_list.jsp'),(210,57,5,'footer.jsp'),(211,58,1,'云HIS---随访患者维护'),(212,58,2,'header.jsp'),(213,58,3,'sidebar.jsp'),(214,58,4,'patient/resident_patient_list.jsp'),(215,58,5,'footer.jsp'),(216,60,1,'云HIS---患者列表'),(217,60,2,'header.jsp'),(218,60,3,'sidebar.jsp'),(219,60,4,'patient/followup_patient_new.jsp'),(220,60,5,'dev/footer.jsp'),(221,61,1,'云HIS---患者列表'),(222,61,2,'header.jsp'),(223,61,3,'sidebar.jsp'),(224,61,4,'patient/patient_tag_choose.jsp'),(225,61,5,'dev/footer.jsp'),(226,62,1,'云HIS---患者列表'),(227,62,2,'header.jsp'),(228,62,3,'sidebar.jsp'),(229,62,4,'patient/followup_patient_detail.jsp'),(230,62,5,'dev/footer.jsp'),(231,63,1,'云HIS---患者列表'),(232,63,2,'header.jsp'),(233,63,3,'sidebar.jsp'),(234,63,4,'patient/resident_patient_new.jsp'),(235,63,5,'footer.jsp'),(236,64,1,'云HIS---患者列表'),(237,64,2,'header.jsp'),(238,64,3,'sidebar.jsp'),(239,64,4,'patient/resident_patient_detail.jsp'),(240,64,5,'footer.jsp'),(241,66,1,'云HIS---患者列表'),(242,66,2,'header.jsp'),(243,66,3,'sidebar.jsp'),(244,66,4,'patient/enroll_followup_patient.jsp'),(245,66,5,'footer.jsp'),(246,67,1,'云HIS---患者列表'),(247,67,2,'header.jsp'),(248,67,3,'sidebar.jsp'),(249,67,4,'followup/followup_plan_new.jsp'),(250,67,5,'footer.jsp'),(251,68,1,'云HIS---患者列表'),(252,68,2,'header.jsp'),(253,68,3,'sidebar.jsp'),(254,68,4,'followup/followup_plan_choose_patients.jsp'),(255,68,5,'footer.jsp'),(256,69,1,'云HIS---患者列表'),(257,69,2,'header.jsp'),(258,69,3,'sidebar.jsp'),(259,69,4,'followup/followup_plan_detail.jsp'),(260,69,5,'footer.jsp'),(261,70,1,'云HIS---患者列表'),(262,70,2,'header.jsp'),(263,70,3,'sidebar.jsp'),(264,70,4,'followup/followup_plan_patients.jsp'),(265,70,5,'footer.jsp'),(266,71,1,'云HIS---患者列表'),(267,71,2,'header.jsp'),(268,71,3,'sidebar.jsp'),(269,71,4,'followup/add_followup_patient_result.jsp'),(270,71,5,'footer.jsp'),(271,73,1,'云HIS---患者列表'),(272,73,2,'header.jsp'),(273,73,3,'sidebar.jsp'),(274,73,4,'followup/patient_followup_records.jsp'),(275,73,5,'footer.jsp'),(276,74,1,'云HIS---患者列表'),(277,74,2,'header.jsp'),(278,74,3,'sidebar.jsp'),(279,74,4,'followup/followup_patient_result_detail.jsp'),(280,74,5,'footer.jsp'),(281,75,1,'云HIS---患者列表'),(282,75,2,'header.jsp'),(283,75,3,'sidebar.jsp'),(284,75,4,'schedule/schedule_patient_choose_patient.jsp'),(285,75,5,'footer.jsp'),(286,76,1,'云HIS---患者列表'),(287,76,2,'header.jsp'),(288,76,3,'sidebar.jsp'),(289,76,4,'schedule/schedule_patient_adjust_detail.jsp'),(290,76,5,'footer.jsp'),(291,77,1,'云HIS---患者列表'),(292,77,2,'header.jsp'),(293,77,3,'sidebar.jsp'),(294,77,4,'schedule/nurse_device_list.jsp'),(295,77,5,'footer.jsp'),(296,78,1,'云HIS---患者列表'),(297,78,2,'header.jsp'),(298,78,3,'sidebar.jsp'),(299,78,4,'doctor/doctor_advice_new.jsp'),(300,78,5,'footer.jsp'),(301,79,1,'云HIS---患者列表'),(302,79,2,'header.jsp'),(303,79,3,'sidebar.jsp'),(304,79,4,'doctor/doctor_advice_template_new.jsp'),(305,79,5,'footer.jsp'),(306,80,1,'云HIS---患者列表'),(307,80,2,'header.jsp'),(308,80,3,'sidebar.jsp'),(309,80,4,'doctor/doctor_advice_template_detail.jsp'),(310,80,5,'footer.jsp'),(311,81,1,'云HIS---患者列表'),(312,81,2,'header.jsp'),(313,81,3,'sidebar.jsp'),(314,81,4,'doctor/pending_doctor_advice_list.jsp'),(315,81,5,'footer.jsp'),(316,82,1,'云HIS---患者列表'),(317,82,2,'header.jsp'),(318,82,3,'sidebar.jsp'),(319,82,4,'doctor/doctor_advice_template_detail_new.jsp'),(320,82,5,'footer.jsp'),(321,83,1,'云HIS---患者列表'),(322,83,2,'header.jsp'),(323,83,3,'sidebar.jsp'),(324,83,4,'doctor/patient_choose_doctor_advice_template.jsp'),(325,83,5,'footer.jsp'),(326,84,1,'云HIS---患者列表'),(327,84,2,'header.jsp'),(328,84,3,'sidebar.jsp'),(329,84,4,'nurse/patient_enroll_new.jsp'),(330,84,5,'footer.jsp'),(331,85,1,'云HIS---患者列表'),(332,85,2,'header.jsp'),(333,85,3,'sidebar.jsp'),(334,85,4,'nurse/patient_quit_new.jsp'),(335,85,5,'footer.jsp'),(336,87,1,'云HIS---患者列表'),(337,87,2,'header.jsp'),(338,87,3,'sidebar.jsp'),(339,87,4,'finance/patient_deposit_list.jsp'),(340,87,5,'footer.jsp'),(341,88,1,'云HIS---患者列表'),(342,88,2,'header.jsp'),(343,88,3,'sidebar.jsp'),(344,88,4,'finance/patient_deposit_io.jsp'),(345,88,5,'footer.jsp'),(346,89,1,'云HIS---患者列表'),(347,89,2,'header.jsp'),(348,89,3,'sidebar.jsp'),(349,89,4,'finance/patient_deposit_in.jsp'),(350,89,5,'footer.jsp'),(351,90,1,'云HIS---患者列表'),(352,90,2,'header.jsp'),(353,90,3,'sidebar.jsp'),(354,90,4,'finance/deposit_settle_list.jsp'),(355,90,5,'footer.jsp'),(356,91,1,'云HIS---患者列表'),(357,91,2,'header.jsp'),(358,91,3,'sidebar.jsp'),(359,91,4,'finance/deposit_daily_list.jsp'),(360,91,5,'footer.jsp');
/*!40000 ALTER TABLE `t_cmd_jsp_params` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cmd_jsp_template`
--

DROP TABLE IF EXISTS `t_cmd_jsp_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cmd_jsp_template` (
  `cmd_jsp_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmd_id` int(11) NOT NULL,
  `jsp_template_id` int(11) NOT NULL,
  PRIMARY KEY (`cmd_jsp_template_id`),
  KEY `fk_t_cmd_jsp_template_t_jsp_template1_idx` (`jsp_template_id`),
  KEY `fk_t_cmd_jsp_template_t_cmd1_idx` (`cmd_id`),
  CONSTRAINT `fk_t_cmd_jsp_template_t_cmd1` FOREIGN KEY (`cmd_id`) REFERENCES `t_cmd` (`cmd_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_cmd_jsp_template_t_jsp_template1` FOREIGN KEY (`jsp_template_id`) REFERENCES `t_jsp_template` (`jsp_template_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cmd_jsp_template`
--

LOCK TABLES `t_cmd_jsp_template` WRITE;
/*!40000 ALTER TABLE `t_cmd_jsp_template` DISABLE KEYS */;
INSERT INTO `t_cmd_jsp_template` VALUES (1,1,1),(2,2,2),(3,5,2),(4,6,2),(5,9,2),(6,10,2),(7,13,2),(8,15,2),(9,15,2),(10,16,2),(11,17,2),(12,18,2),(13,19,2),(14,20,2),(15,21,2),(16,22,2),(17,23,2),(18,24,2),(19,25,2),(20,26,2),(21,27,2),(22,28,2),(23,29,2),(24,30,2),(25,31,2),(26,32,2),(27,33,2),(28,34,2),(29,35,2),(30,36,2),(31,37,2),(32,38,2),(33,39,2),(34,40,2),(35,41,2),(36,42,2),(37,43,2),(38,44,2),(39,45,2),(40,46,2),(41,47,2),(42,48,2),(45,56,2),(46,57,2),(47,58,2),(48,60,2),(49,61,2),(50,62,2),(51,63,2),(52,64,2),(53,66,2),(54,67,2),(55,68,2),(56,69,2),(57,70,2),(58,71,2),(59,73,2),(60,74,2),(61,75,2),(62,76,2),(63,77,2),(64,78,2),(65,79,2),(66,80,2),(67,81,2),(68,82,2),(69,83,2),(70,84,2),(71,85,2),(72,87,2),(73,88,2),(74,89,2),(75,90,2),(76,91,2);
/*!40000 ALTER TABLE `t_cmd_jsp_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer`
--

DROP TABLE IF EXISTS `t_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer` (
  `customer_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `fk_t_customer_t_patient1_idx` (`patient_id`),
  KEY `fk_t_customer_t_account1_idx` (`account_id`),
  CONSTRAINT `fk_t_customer_t_account1` FOREIGN KEY (`account_id`) REFERENCES `t_account` (`account_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_customer_t_patient1` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`patient_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer`
--

LOCK TABLES `t_customer` WRITE;
/*!40000 ALTER TABLE `t_customer` DISABLE KEYS */;
INSERT INTO `t_customer` VALUES (1,1,2);
/*!40000 ALTER TABLE `t_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_invoice`
--

DROP TABLE IF EXISTS `t_customer_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_invoice` (
  `invoice_patient_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) NOT NULL,
  `invoice_id` bigint(20) NOT NULL,
  `invoice_title` varchar(45) DEFAULT NULL,
  `issue_date` datetime DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `related_invoice_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`invoice_patient_id`),
  KEY `fk_t_patient_invoice_t_invoice1_idx` (`invoice_id`),
  KEY `fk_t_patient_invoice_t_customer1_idx` (`customer_id`),
  CONSTRAINT `fk_t_patient_invoice_t_customer1` FOREIGN KEY (`customer_id`) REFERENCES `t_customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_patient_invoice_t_invoice1` FOREIGN KEY (`invoice_id`) REFERENCES `t_invoice` (`invoice_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_invoice`
--

LOCK TABLES `t_customer_invoice` WRITE;
/*!40000 ALTER TABLE `t_customer_invoice` DISABLE KEYS */;
INSERT INTO `t_customer_invoice` VALUES (1,1,1,'王一','2016-02-23 00:00:00',7,1,0);
/*!40000 ALTER TABLE `t_customer_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_customer_payment_detail`
--

DROP TABLE IF EXISTS `t_customer_payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_customer_payment_detail` (
  `patient_payment_detail_id` bigint(20) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `payment_type_id` int(11) NOT NULL,
  `total_amount` double DEFAULT NULL,
  `self_amount` double DEFAULT NULL,
  `payment_code` varchar(45) DEFAULT NULL,
  `payed_date` datetime DEFAULT NULL,
  `toll_collector_id` bigint(20) NOT NULL,
  `account_io_id` bigint(20) NOT NULL,
  PRIMARY KEY (`patient_payment_detail_id`),
  KEY `fk_t_patient_payment_detail_t_payment_type1_idx` (`payment_type_id`),
  KEY `fk_t_patient_payment_detail_t_toll_collector1_idx` (`toll_collector_id`),
  KEY `fk_t_patient_payment_detail_t_account_io1_idx` (`account_io_id`),
  KEY `fk_t_customer_payment_detail_t_customer1_idx` (`customer_id`),
  CONSTRAINT `fk_t_customer_payment_detail_t_customer1` FOREIGN KEY (`customer_id`) REFERENCES `t_customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_patient_payment_detail_t_account_io1` FOREIGN KEY (`account_io_id`) REFERENCES `t_account_io` (`account_io_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_patient_payment_detail_t_payment_type1` FOREIGN KEY (`payment_type_id`) REFERENCES `t_payment_type` (`payment_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_patient_payment_detail_t_toll_collector1` FOREIGN KEY (`toll_collector_id`) REFERENCES `t_toll_collector` (`toll_collector_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_customer_payment_detail`
--

LOCK TABLES `t_customer_payment_detail` WRITE;
/*!40000 ALTER TABLE `t_customer_payment_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_customer_payment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cycle`
--

DROP TABLE IF EXISTS `t_cycle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cycle` (
  `cycle_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cycle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cycle`
--

LOCK TABLES `t_cycle` WRITE;
/*!40000 ALTER TABLE `t_cycle` DISABLE KEYS */;
INSERT INTO `t_cycle` VALUES (1,'2016-02-22 00:00:00','2016-02-28 00:00:00',1),(2,'2016-02-29 00:00:00','2016-03-06 00:00:00',1);
/*!40000 ALTER TABLE `t_cycle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_cycle_date`
--

DROP TABLE IF EXISTS `t_cycle_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_cycle_date` (
  `cycle_date_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cycle_id` bigint(20) NOT NULL,
  `cycle_date` datetime DEFAULT NULL,
  PRIMARY KEY (`cycle_date_id`),
  KEY `fk_t_cycle_date_t_cycle1_idx` (`cycle_id`),
  CONSTRAINT `fk_t_cycle_date_t_cycle1` FOREIGN KEY (`cycle_id`) REFERENCES `t_cycle` (`cycle_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_cycle_date`
--

LOCK TABLES `t_cycle_date` WRITE;
/*!40000 ALTER TABLE `t_cycle_date` DISABLE KEYS */;
INSERT INTO `t_cycle_date` VALUES (1,1,'2016-02-22 00:00:00'),(2,1,'2016-02-23 00:00:00'),(3,1,'2016-02-24 00:00:00'),(4,1,'2016-02-25 00:00:00'),(5,1,'2016-02-26 00:00:00'),(6,1,'2016-02-27 00:00:00'),(7,1,'2016-02-28 00:00:00'),(8,2,'2016-02-29 00:00:00'),(9,2,'2016-03-01 00:00:00'),(10,2,'2016-03-02 00:00:00'),(11,2,'2016-03-03 00:00:00'),(12,2,'2016-03-04 00:00:00'),(13,2,'2016-03-05 00:00:00'),(14,2,'2016-03-06 00:00:00');
/*!40000 ALTER TABLE `t_cycle_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_dept`
--

DROP TABLE IF EXISTS `t_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_dept`
--

LOCK TABLES `t_dept` WRITE;
/*!40000 ALTER TABLE `t_dept` DISABLE KEYS */;
INSERT INTO `t_dept` VALUES (1,'肾内科');
/*!40000 ALTER TABLE `t_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_doctor`
--

DROP TABLE IF EXISTS `t_doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_doctor` (
  `doctor_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `work_num` varchar(45) DEFAULT NULL,
  `doctor_name` varchar(45) DEFAULT NULL,
  `professional_level_id` int(11) NOT NULL,
  `academic_level_id` int(11) NOT NULL,
  `medical_certificate_id` bigint(20) NOT NULL,
  PRIMARY KEY (`doctor_id`),
  KEY `fk_t_doctor_t_professional_level1_idx` (`professional_level_id`),
  KEY `fk_t_doctor_t_academic_level1_idx` (`academic_level_id`),
  KEY `fk_t_doctor_t_medical_certificate1_idx` (`medical_certificate_id`),
  CONSTRAINT `fk_t_doctor_t_academic_level1` FOREIGN KEY (`academic_level_id`) REFERENCES `t_academic_level` (`academic_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_doctor_t_medical_certificate1` FOREIGN KEY (`medical_certificate_id`) REFERENCES `t_medical_certificate` (`medical_certificate_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_doctor_t_professional_level1` FOREIGN KEY (`professional_level_id`) REFERENCES `t_professional_level` (`professional_level_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_doctor`
--

LOCK TABLES `t_doctor` WRITE;
/*!40000 ALTER TABLE `t_doctor` DISABLE KEYS */;
INSERT INTO `t_doctor` VALUES (1,'D001','张永',1,1,1),(2,'D002','朱杰',1,1,1);
/*!40000 ALTER TABLE `t_doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_education_level`
--

DROP TABLE IF EXISTS `t_education_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_education_level` (
  `education_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `education_level_name` varchar(45) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`education_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_education_level`
--

LOCK TABLES `t_education_level` WRITE;
/*!40000 ALTER TABLE `t_education_level` DISABLE KEYS */;
INSERT INTO `t_education_level` VALUES (1,'未知','缺省值'),(2,'小学','小学'),(3,'初中','初中'),(4,'高中','高中'),(5,'中专','中专'),(6,'大专','大专'),(7,'本科','本科'),(8,'硕士','硕士'),(9,'博士','博士'),(10,'博士后','博士后');
/*!40000 ALTER TABLE `t_education_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_ethnic`
--

DROP TABLE IF EXISTS `t_ethnic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_ethnic` (
  `ethnic_id` int(11) NOT NULL AUTO_INCREMENT,
  `ethnic_name` varchar(45) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ethnic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_ethnic`
--

LOCK TABLES `t_ethnic` WRITE;
/*!40000 ALTER TABLE `t_ethnic` DISABLE KEYS */;
INSERT INTO `t_ethnic` VALUES (1,'未知','未知'),(2,'汉族','汉族'),(3,'回族','回族'),(4,'蒙古族','蒙古族'),(5,'藏族','藏族'),(6,'满族','满族');
/*!40000 ALTER TABLE `t_ethnic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_gender`
--

DROP TABLE IF EXISTS `t_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_gender` (
  `gender_id` int(11) NOT NULL AUTO_INCREMENT,
  `gender_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_gender`
--

LOCK TABLES `t_gender` WRITE;
/*!40000 ALTER TABLE `t_gender` DISABLE KEYS */;
INSERT INTO `t_gender` VALUES (1,'男'),(2,'女'),(3,'未知');
/*!40000 ALTER TABLE `t_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospital`
--

DROP TABLE IF EXISTS `t_hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospital` (
  `hospital_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospital`
--

LOCK TABLES `t_hospital` WRITE;
/*!40000 ALTER TABLE `t_hospital` DISABLE KEYS */;
INSERT INTO `t_hospital` VALUES (1,'江西达康于都中心');
/*!40000 ALTER TABLE `t_hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_hospital_dept`
--

DROP TABLE IF EXISTS `t_hospital_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_hospital_dept` (
  `hospital_dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_id` bigint(20) NOT NULL,
  `dept_id` int(11) NOT NULL,
  PRIMARY KEY (`hospital_dept_id`),
  KEY `fk_t_hospital_dept_t_hospital1_idx` (`hospital_id`),
  KEY `fk_t_hospital_dept_t_dept1_idx` (`dept_id`),
  CONSTRAINT `fk_t_hospital_dept_t_dept1` FOREIGN KEY (`dept_id`) REFERENCES `t_dept` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_hospital_dept_t_hospital1` FOREIGN KEY (`hospital_id`) REFERENCES `t_hospital` (`hospital_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_hospital_dept`
--

LOCK TABLES `t_hospital_dept` WRITE;
/*!40000 ALTER TABLE `t_hospital_dept` DISABLE KEYS */;
INSERT INTO `t_hospital_dept` VALUES (1,1,1);
/*!40000 ALTER TABLE `t_hospital_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_id_card_type`
--

DROP TABLE IF EXISTS `t_id_card_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_id_card_type` (
  `id_card_type_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `id_card_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_card_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_id_card_type`
--

LOCK TABLES `t_id_card_type` WRITE;
/*!40000 ALTER TABLE `t_id_card_type` DISABLE KEYS */;
INSERT INTO `t_id_card_type` VALUES (1,'未知'),(2,'身份证'),(3,'军官证'),(4,'护照'),(5,'驾照');
/*!40000 ALTER TABLE `t_id_card_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_income_level`
--

DROP TABLE IF EXISTS `t_income_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_income_level` (
  `income_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `income_level_name` varchar(45) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`income_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_income_level`
--

LOCK TABLES `t_income_level` WRITE;
/*!40000 ALTER TABLE `t_income_level` DISABLE KEYS */;
INSERT INTO `t_income_level` VALUES (1,'未知','未知'),(2,'1万以下','2'),(3,'1万至3万','3'),(4,'3万至10万','4'),(5,'10万至20万','5'),(6,'20万至30万','6'),(7,'30万至50万','7'),(8,'50万至100万','8'),(9,'100万以上','9');
/*!40000 ALTER TABLE `t_income_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_invoice`
--

DROP TABLE IF EXISTS `t_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_invoice` (
  `invoice_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_invoice`
--

LOCK TABLES `t_invoice` WRITE;
/*!40000 ALTER TABLE `t_invoice` DISABLE KEYS */;
INSERT INTO `t_invoice` VALUES (1,'In001'),(2,'In002'),(3,'In003'),(4,'In004'),(5,'In005');
/*!40000 ALTER TABLE `t_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_jsp_template`
--

DROP TABLE IF EXISTS `t_jsp_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_jsp_template` (
  `jsp_template_id` int(11) NOT NULL AUTO_INCREMENT,
  `jsp_template_file` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`jsp_template_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_jsp_template`
--

LOCK TABLES `t_jsp_template` WRITE;
/*!40000 ALTER TABLE `t_jsp_template` DISABLE KEYS */;
INSERT INTO `t_jsp_template` VALUES (1,'/login.jsp'),(2,'/template.jsp');
/*!40000 ALTER TABLE `t_jsp_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_marriage_state`
--

DROP TABLE IF EXISTS `t_marriage_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_marriage_state` (
  `marriage_state_id` int(11) NOT NULL AUTO_INCREMENT,
  `marriage_state_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`marriage_state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_marriage_state`
--

LOCK TABLES `t_marriage_state` WRITE;
/*!40000 ALTER TABLE `t_marriage_state` DISABLE KEYS */;
INSERT INTO `t_marriage_state` VALUES (1,'未婚'),(2,'已婚'),(3,'离异'),(4,'丧偶'),(5,'未知');
/*!40000 ALTER TABLE `t_marriage_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_medical_certificate`
--

DROP TABLE IF EXISTS `t_medical_certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_medical_certificate` (
  `medical_certificate_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `medical_certificate_num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`medical_certificate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_medical_certificate`
--

LOCK TABLES `t_medical_certificate` WRITE;
/*!40000 ALTER TABLE `t_medical_certificate` DISABLE KEYS */;
INSERT INTO `t_medical_certificate` VALUES (1,'1234567890');
/*!40000 ALTER TABLE `t_medical_certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_medical_insurance_type`
--

DROP TABLE IF EXISTS `t_medical_insurance_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_medical_insurance_type` (
  `medical_insurance_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `medical_insurance_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`medical_insurance_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_medical_insurance_type`
--

LOCK TABLES `t_medical_insurance_type` WRITE;
/*!40000 ALTER TABLE `t_medical_insurance_type` DISABLE KEYS */;
INSERT INTO `t_medical_insurance_type` VALUES (1,'大病统筹'),(2,'公费'),(3,'新农合'),(4,'自费'),(5,'众安商保');
/*!40000 ALTER TABLE `t_medical_insurance_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(45) DEFAULT NULL,
  `menu_url` varchar(200) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
INSERT INTO `t_menu` VALUES (1,'患者信息','main?cmd=showFollowupPatients&stmId=1&ssmId=55',NULL),(2,'医生工作站','main?cmd=showHome',NULL),(3,'护士工作站','main?cmd=showHome',NULL),(4,'消耗品管理','main?cmd=showHome',NULL),(5,'药品管理','main?cmd=showHome',NULL),(6,'系统维护','main?cmd=showHome',NULL),(7,'患者登记','main?cmd=showPatientList',NULL),(8,'医保信息维护',NULL,NULL),(9,'家庭成员维护',NULL,NULL),(10,'预交金管理',NULL,NULL),(11,'出院结账',NULL,NULL),(12,'患者随访','main?cmd=showFollowupPlans&stmId=12&ssmId=13',NULL),(13,'随访计划','main?cmd=showFollowupPlans&stmId=12&ssmId=13',NULL),(14,'随访记录','main?cmd=showFollowupRecord&stmId=12&ssmId=14',NULL),(15,'排班管理','main?cmd=showScheduleDoctorTemplate&stmId=15&ssmId=16',NULL),(16,'医生排班模板','main?cmd=showScheduleDoctorTemplate&stmId=15&ssmId=16',NULL),(17,'医生排班调整','main?cmd=showScheduleDoctorAdjust&stmId=15&ssmId=17',NULL),(18,'护士排班模板','main?cmd=showScheduleNurseTemplate&stmId=15&ssmId=18',NULL),(19,'护士排班调整','main?cmd=showScheduleNurseAdjust&stmId=15&ssmId=19',NULL),(20,'患者排班计划','main?cmd=showSchedulePatientTemplate&stmId=15&ssmId=20',NULL),(21,'患者排班调整','main?cmd=showSchedulePatientAdjust&stmId=15&ssmId=21',NULL),(22,'患者管理','main?cmd=showPatientEvaluate&stmId=22&ssmId=23','用于医生的患者管理'),(23,'入院评估','main?cmd=showPatientEvaluate&stmId=22&ssmId=23','用于医生的患者管理'),(24,'制定治疗方案','main?cmd=showPatientCurePlan&stmId=22&ssmId=24','用于医生的患者管理'),(25,'医嘱管理','main?cmd=showCreateDoctorAdvice&stmId=25&ssmId=26','医生模块'),(26,'开医嘱','main?cmd=showCreateDoctorAdvice&stmId=25&ssmId=26','医生模块'),(27,'医嘱模板维护','main?cmd=showDoctorAdviceTemplate&stmId=25&ssmId=27','医生模块'),(28,'预填写治疗单','main?cmd=showPreCureBill&stmId=25&ssmId=28','医生模块'),(29,'治疗单总结','main?cmd=showPostCureBill&stmId=25&ssmId=29','医生模块'),(30,'待处理医嘱','main?cmd=showPendingDoctorAdviceList&stmId=25&ssmId=30','医生模块'),(31,'调整医嘱','main?cmd=showAdjustDoctorAdvice&stmId=25&ssmId=31','医生模块'),(32,'患者管理','main?cmd=showPatientEnroll&stmId=32&ssmId=33','护士模块'),(33,'患者入院','main?cmd=showPatientEnroll&stmId=32&ssmId=33','护士模块'),(34,'患者出院','main?cmd=showPatientQuit&stmId=32&ssmId=34','护士模块'),(35,'医嘱管理','main?cmd=showCheckDoctorAdvice&stmId=35&ssmId=36','护士模块'),(36,'审核医嘱','main?cmd=showCheckDoctorAdvice&stmId=35&ssmId=36','护士模块'),(37,'重新审核医嘱','main?cmd=showRecheckDoctorAdvice&stmId=35&ssmId=37','护士模块'),(38,'填写治疗单','main?cmd=showFillCureBill&stmId=35&ssmId=38','护士模块'),(39,'调整医嘱','main?cmd=showNurseAdjustDoctorAdvice&stmId=35&ssmId=39','护士模块'),(40,'押金管理','main?cmd=showPatientDepositList&stmId=40&ssmId=41','财务'),(41,'患者押金管理','main?cmd=showPatientDepositList&stmId=40&ssmId=41','财务'),(42,'押金退款','main?cmd=showDepositOutList&stmId=40&ssmId=42','财务'),(43,'押金结算','main?cmd=showDepositSettleList&stmId=40&ssmId=43','财务'),(44,'收费管理','main?cmd=showDailyBill&stmId=44&ssmId=45','财务'),(45,'日收费单','main?cmd=showDailyBill&stmId=44&ssmId=45','财务'),(46,'月收费单','main?cmd=showMonthBill&stmId=44&ssmId=46','财务'),(47,'患者月结算','main?cmd=showMonthSettle&stmId=44&ssmId=47','财务'),(48,'财务报表','main?cmd=showCenterDailyReport&stmId=48&ssmId=49','财务'),(49,'中心日报表','main?cmd=showCenterDailyReport&stmId=48&ssmId=49','财务'),(50,'中心日报表设计','main?cmd=showCenterDailyReportDesign&stmId=48&ssmId=50','财务'),(51,'中心月报表','main?cmd=showCenterMonthReport&stmId=48&ssmId=51','财务'),(52,'中心月报表设计','main?cmd=showCenterMonthReportDesign&stmId=48&ssmId=52','财务'),(53,'票据打印','main?cmd=showBillPrint&stmId=48&ssmId=53','财务'),(54,'票据设计','main?cmd=showBillDesign&stmId=48&ssmId=54','财务'),(55,'随访患者维护','main?cmd=showFollowupPatients&stmId=1&ssmId=55','医务人员'),(56,'住院患者维护','main?cmd=showResidentPatients&stmId=1&ssmId=56','医务人员'),(57,'患者押金查询','main?cmd=showPatientDepositList&stmId=40&ssmId=57','财务'),(58,'押金日查询','main?cmd=showDepositDailyList&stmId=40&ssmId=58','财务'),(59,'押金结算查询','main?cmd=showDepositSettleList&stmId=40&ssmId=59','财务');
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu_detail`
--

DROP TABLE IF EXISTS `t_menu_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menu_detail` (
  `menu_detail_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_type_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `menu_id` int(11) NOT NULL,
  `seq` int(11) DEFAULT NULL,
  `hospital_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`menu_detail_id`),
  KEY `fk_t_menu_detail_t_menu_type1_idx` (`menu_type_id`),
  KEY `fk_t_menu_detail_t_role1_idx` (`role_id`),
  KEY `fk_t_menu_detail_t_menu1_idx` (`menu_id`),
  CONSTRAINT `fk_t_menu_detail_t_menu1` FOREIGN KEY (`menu_id`) REFERENCES `t_menu` (`menu_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_menu_detail_t_menu_type1` FOREIGN KEY (`menu_type_id`) REFERENCES `t_menu_type` (`menu_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_menu_detail_t_role1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu_detail`
--

LOCK TABLES `t_menu_detail` WRITE;
/*!40000 ALTER TABLE `t_menu_detail` DISABLE KEYS */;
INSERT INTO `t_menu_detail` VALUES (1,1,6,0,1,1,1),(7,2,8,1,7,1,1),(8,2,8,1,8,2,1),(9,2,8,1,9,3,1),(10,2,8,1,10,4,1),(11,2,8,1,11,5,1),(12,1,6,0,12,2,1),(13,2,6,12,13,1,1),(14,2,6,12,14,2,1),(15,1,6,0,15,3,1),(16,2,6,15,16,1,1),(17,2,6,15,17,2,1),(18,2,6,15,18,3,1),(19,2,6,15,19,4,1),(20,2,6,15,20,5,1),(21,2,6,15,21,6,1),(22,1,2,0,22,1,1),(23,2,2,22,23,1,1),(24,2,2,22,24,2,1),(25,1,2,0,25,2,1),(26,2,2,25,26,1,1),(27,2,2,25,27,2,1),(28,2,2,25,28,3,1),(29,2,2,25,29,4,1),(30,2,2,25,30,5,1),(32,1,3,0,32,1,1),(33,2,3,32,33,1,1),(34,2,3,32,34,2,1),(35,1,3,0,35,2,1),(36,2,3,35,36,1,1),(37,2,3,35,37,2,1),(38,2,3,35,38,3,1),(40,1,7,0,40,1,1),(41,2,7,40,41,1,1),(44,1,7,0,44,2,1),(45,2,7,44,45,1,1),(46,2,7,44,46,2,1),(47,2,7,44,47,3,1),(48,1,7,0,48,3,1),(49,2,7,48,49,1,1),(50,2,7,48,50,2,1),(51,2,7,48,51,3,1),(52,2,7,48,52,4,1),(53,2,7,48,53,5,1),(54,2,7,48,54,6,1),(55,2,6,1,55,1,1),(56,2,6,1,56,2,1),(58,2,7,40,58,2,1),(59,2,7,40,59,3,1);
/*!40000 ALTER TABLE `t_menu_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu_type`
--

DROP TABLE IF EXISTS `t_menu_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menu_type` (
  `menu_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_type_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`menu_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu_type`
--

LOCK TABLES `t_menu_type` WRITE;
/*!40000 ALTER TABLE `t_menu_type` DISABLE KEYS */;
INSERT INTO `t_menu_type` VALUES (1,'顶部菜单'),(2,'左侧菜单');
/*!40000 ALTER TABLE `t_menu_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_nationality`
--

DROP TABLE IF EXISTS `t_nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_nationality` (
  `nationality_id` int(11) NOT NULL AUTO_INCREMENT,
  `nationality_name` varchar(45) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`nationality_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_nationality`
--

LOCK TABLES `t_nationality` WRITE;
/*!40000 ALTER TABLE `t_nationality` DISABLE KEYS */;
INSERT INTO `t_nationality` VALUES (1,'未知','未知'),(2,'中国','中国'),(3,'美国','美国'),(4,'日本','日本'),(5,'韩国','韩国'),(6,'朝鲜','朝鲜'),(7,'英国','英国');
/*!40000 ALTER TABLE `t_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_occupation`
--

DROP TABLE IF EXISTS `t_occupation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_occupation` (
  `occupation_id` int(11) NOT NULL AUTO_INCREMENT,
  `occupation_name` varchar(45) DEFAULT NULL,
  `notes` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`occupation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_occupation`
--

LOCK TABLES `t_occupation` WRITE;
/*!40000 ALTER TABLE `t_occupation` DISABLE KEYS */;
INSERT INTO `t_occupation` VALUES (1,'未知','未知'),(2,'工人','工人'),(3,'农民','农民'),(4,'个体户','个体户'),(5,'教师','教师'),(6,'职员','职员');
/*!40000 ALTER TABLE `t_occupation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_p_s_r_c_d_patient`
--

DROP TABLE IF EXISTS `t_p_s_r_c_d_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_p_s_r_c_d_patient` (
  `p_s_r_c_d_patient_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `p_s_r_c_detail_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  PRIMARY KEY (`p_s_r_c_d_patient_id`),
  KEY `fk_t_p_s_r_c_d_patient_t_p_s_r_c_detail1_idx` (`p_s_r_c_detail_id`),
  KEY `fk_t_p_s_r_c_d_patient_t_patient1_idx` (`patient_id`),
  CONSTRAINT `fk_t_p_s_r_c_d_patient_t_patient1` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`patient_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_p_s_r_c_d_patient_t_p_s_r_c_detail1` FOREIGN KEY (`p_s_r_c_detail_id`) REFERENCES `t_p_s_r_c_detail` (`p_s_r_c_detail_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_p_s_r_c_d_patient`
--

LOCK TABLES `t_p_s_r_c_d_patient` WRITE;
/*!40000 ALTER TABLE `t_p_s_r_c_d_patient` DISABLE KEYS */;
INSERT INTO `t_p_s_r_c_d_patient` VALUES (1,21,1);
/*!40000 ALTER TABLE `t_p_s_r_c_d_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_p_s_r_c_detail`
--

DROP TABLE IF EXISTS `t_p_s_r_c_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_p_s_r_c_detail` (
  `p_s_r_c_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `practicing_schedule_id` bigint(20) NOT NULL,
  `register_channel_id` bigint(20) NOT NULL,
  `plan_amount` int(11) DEFAULT NULL,
  `real_amount` int(11) DEFAULT NULL,
  `additional_amount` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`p_s_r_c_detail_id`),
  KEY `fk_t_h_d_d_s_r_c_detail_t_h_d_d_schedule1_idx` (`practicing_schedule_id`),
  KEY `fk_t_p_s_r_c_detail_t_register_channel1_idx` (`register_channel_id`),
  CONSTRAINT `fk_t_h_d_d_s_r_c_detail_t_h_d_d_schedule1` FOREIGN KEY (`practicing_schedule_id`) REFERENCES `t_practicing_schedule` (`practicing_schedule_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_p_s_r_c_detail_t_register_channel1` FOREIGN KEY (`register_channel_id`) REFERENCES `t_register_channel` (`register_channel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_p_s_r_c_detail`
--

LOCK TABLES `t_p_s_r_c_detail` WRITE;
/*!40000 ALTER TABLE `t_p_s_r_c_detail` DISABLE KEYS */;
INSERT INTO `t_p_s_r_c_detail` VALUES (1,1,1,60,0,0,1),(2,1,2,10,0,0,1),(3,1,3,10,0,0,1),(4,1,4,10,0,0,1),(5,1,5,10,0,0,1),(6,2,1,30,0,0,1),(7,2,2,5,0,0,1),(8,2,3,5,0,0,1),(9,2,4,5,0,0,1),(10,2,5,5,0,0,1),(11,3,1,30,0,0,1),(12,3,2,5,0,0,1),(13,3,3,5,0,0,1),(14,3,4,5,0,0,1),(15,3,5,5,0,0,1),(16,4,1,12,0,0,1),(17,4,2,2,0,0,1),(18,4,3,2,0,0,1),(19,4,4,2,0,0,1),(20,4,5,2,0,0,1),(21,5,1,18,1,0,1),(22,5,2,3,0,0,1),(23,5,3,3,0,0,1),(24,5,4,3,0,0,1),(25,5,5,3,0,0,1),(26,6,1,12,0,0,1),(27,6,2,2,0,0,1),(28,6,3,2,0,0,1),(29,6,4,2,0,0,1),(30,6,5,2,0,0,1),(31,7,1,18,0,0,1),(32,7,2,3,0,0,1),(33,7,3,3,0,0,1),(34,7,4,3,0,0,1),(35,7,5,3,0,0,1),(36,8,1,30,0,0,1),(37,8,2,5,0,0,1),(38,8,3,5,0,0,1),(39,8,4,5,0,0,1),(40,8,5,5,0,0,1),(41,9,1,30,0,0,1),(42,9,2,5,0,0,1),(43,9,3,5,0,0,1),(44,9,4,5,0,0,1),(45,9,5,5,0,0,1),(46,10,1,18,0,0,1),(47,10,2,3,0,0,1),(48,10,3,3,0,0,1),(49,10,4,3,0,0,1),(50,10,5,3,0,0,1),(51,11,1,18,0,0,1),(52,11,2,3,0,0,1),(53,11,3,3,0,0,1),(54,11,4,3,0,0,1),(55,11,5,3,0,0,1),(56,12,1,18,0,0,1),(57,12,2,3,0,0,1),(58,12,3,3,0,0,1),(59,12,4,3,0,0,1),(60,12,5,3,0,0,11),(61,13,1,18,0,0,1),(62,13,2,3,0,0,1),(63,13,3,3,0,0,1),(64,13,4,3,0,0,1),(65,13,5,3,0,0,1),(66,14,1,12,0,0,1),(67,14,2,2,0,0,1),(68,14,3,2,0,0,1),(69,14,4,2,0,0,1),(70,14,5,2,0,0,1),(71,15,1,18,0,0,1),(72,15,2,3,0,0,1),(73,15,3,3,0,0,1),(74,15,4,3,0,0,1),(75,15,5,3,0,0,1),(76,16,1,18,0,0,1),(77,16,2,3,0,0,1),(78,16,3,3,0,0,1),(79,16,4,3,0,0,1),(80,16,5,3,0,0,1),(81,17,1,18,0,0,1),(82,17,2,3,0,0,1),(83,17,3,3,0,0,1),(84,17,4,3,0,0,1),(85,17,5,3,0,0,1),(86,18,1,18,0,0,1),(87,18,2,3,0,0,1),(88,18,3,3,0,0,1),(89,18,4,3,0,0,1),(90,18,5,3,0,0,1),(91,19,1,30,0,0,1),(92,19,2,5,0,0,1),(93,19,3,5,0,0,1),(94,19,4,5,0,0,1),(95,19,5,5,0,0,1),(96,20,1,18,0,0,1),(97,20,2,3,0,0,1),(98,20,3,3,0,0,1),(99,20,4,3,0,0,1),(100,20,5,3,0,0,1),(101,21,1,30,0,0,1),(102,21,2,5,0,0,1),(103,21,3,5,0,0,1),(104,21,4,5,0,0,1),(105,21,5,5,0,0,1),(106,22,1,18,0,0,1),(107,22,2,3,0,0,1),(108,22,3,3,0,0,1),(109,22,4,3,0,0,1),(110,22,5,3,0,0,1),(111,23,1,30,0,0,1),(112,23,2,5,0,0,1),(113,23,3,5,0,0,1),(114,23,4,5,0,0,1),(115,23,5,5,0,0,1),(116,24,1,12,0,0,1),(117,24,2,2,0,0,1),(118,24,3,2,0,0,1),(119,24,4,2,0,0,1),(120,24,5,2,0,0,1),(121,25,1,18,0,0,1),(122,25,2,3,0,0,1),(123,25,3,3,0,0,1),(124,25,4,3,0,0,1),(125,25,5,3,0,0,1),(126,26,1,12,0,0,1),(127,26,2,2,0,0,1),(128,26,3,2,0,0,1),(129,26,4,2,0,0,1),(130,26,5,2,0,0,1),(131,27,1,30,0,0,1),(132,27,2,5,0,0,1),(133,27,3,5,0,0,1),(134,27,4,5,0,0,1),(135,27,5,5,0,0,1),(136,28,1,12,0,0,1),(137,28,2,2,0,0,1),(138,28,3,2,0,0,1),(139,28,4,2,0,0,1),(140,28,5,2,0,0,1),(141,29,1,30,0,0,1),(142,29,2,5,0,0,1),(143,29,3,5,0,0,1),(144,29,4,5,0,0,1),(145,29,5,5,0,0,1),(146,30,1,12,0,0,1),(147,30,2,2,0,0,1),(148,30,3,2,0,0,1),(149,30,4,2,0,0,1),(150,30,5,2,0,0,1),(151,31,1,18,0,0,1),(152,31,2,3,0,0,1),(153,31,3,3,0,0,1),(154,31,4,3,0,0,1),(155,31,5,3,0,0,1),(156,32,1,18,0,0,1),(157,32,2,3,0,0,1),(158,32,3,3,0,0,1),(159,32,4,3,0,0,1),(160,32,5,3,0,0,1),(161,33,1,30,0,0,1),(162,33,2,5,0,0,1),(163,33,3,5,0,0,1),(164,33,4,5,0,0,1),(165,33,5,5,0,0,1),(166,34,1,18,0,0,1),(167,34,2,3,0,0,1),(168,34,3,3,0,0,1),(169,34,4,3,0,0,1),(170,34,5,3,0,0,1),(171,35,1,18,0,0,1),(172,35,2,3,0,0,1),(173,35,3,3,0,0,1),(174,35,4,3,0,0,1),(175,35,5,3,0,0,1),(176,36,1,18,0,0,1),(177,36,2,3,0,0,1),(178,36,3,3,0,0,1),(179,36,4,3,0,0,1),(180,36,5,3,0,0,1),(181,37,1,18,0,0,1),(182,37,2,3,0,0,1),(183,37,3,3,0,0,1),(184,37,4,3,0,0,1),(185,37,5,3,0,0,1),(186,38,1,18,0,0,1),(187,38,2,3,0,0,1),(188,38,3,3,0,0,1),(189,38,4,3,0,0,1),(190,38,5,3,0,0,1),(191,39,1,30,0,0,1),(192,39,2,5,0,0,1),(193,39,3,5,0,0,1),(194,39,4,5,0,0,1),(195,39,5,5,0,0,1),(196,40,1,12,0,0,1),(197,40,2,2,0,0,1),(198,40,3,2,0,0,1),(199,40,4,2,0,0,1),(200,40,5,2,0,0,1);
/*!40000 ALTER TABLE `t_p_s_r_c_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_p_s_register_channel`
--

DROP TABLE IF EXISTS `t_p_s_register_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_p_s_register_channel` (
  `p_s_register_channel_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `practicing_id` bigint(20) NOT NULL,
  `register_channel_id` bigint(20) NOT NULL,
  `percent` double DEFAULT NULL,
  `round_type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`p_s_register_channel_id`),
  KEY `fk_t_h_d_d_s_register_channel_t_register_channel1_idx` (`register_channel_id`),
  KEY `fk_t_p_s_register_channel_t_practicing1_idx` (`practicing_id`),
  CONSTRAINT `fk_t_h_d_d_s_register_channel_t_register_channel1` FOREIGN KEY (`register_channel_id`) REFERENCES `t_register_channel` (`register_channel_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_p_s_register_channel_t_practicing1` FOREIGN KEY (`practicing_id`) REFERENCES `t_practicing` (`practicing_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_p_s_register_channel`
--

LOCK TABLES `t_p_s_register_channel` WRITE;
/*!40000 ALTER TABLE `t_p_s_register_channel` DISABLE KEYS */;
INSERT INTO `t_p_s_register_channel` VALUES (1,1,1,60,1),(2,1,2,10,1),(3,1,3,10,1),(4,1,4,10,1),(5,1,5,10,1),(6,2,1,60,1),(7,2,2,10,1),(8,2,3,10,1),(9,2,4,10,1),(10,2,5,10,1);
/*!40000 ALTER TABLE `t_p_s_register_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient`
--

DROP TABLE IF EXISTS `t_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_patient` (
  `patient_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patient_code` varchar(45) DEFAULT NULL,
  `patient_name` varchar(45) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `id_card_code` varchar(45) DEFAULT NULL,
  `id_card_type_id` tinyint(4) NOT NULL,
  `social_code` varchar(45) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `resident_hospital_code` varchar(200) DEFAULT NULL,
  `medical_insurance_type_id` int(11) DEFAULT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`patient_id`),
  KEY `fk_t_patient_t_id_card_type_idx` (`id_card_type_id`),
  CONSTRAINT `fk_t_patient_t_id_card_type` FOREIGN KEY (`id_card_type_id`) REFERENCES `t_id_card_type` (`id_card_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient`
--

LOCK TABLES `t_patient` WRITE;
/*!40000 ALTER TABLE `t_patient` DISABLE KEYS */;
INSERT INTO `t_patient` VALUES (1,'a','王一',1,'1970-02-02 00:00:00','110108197002021555',1,'110108197002021555','2016-02-23 00:00:00',NULL,NULL,NULL,NULL),(41,NULL,'患者304',NULL,'2016-03-23 00:00:00',NULL,1,NULL,NULL,'H304',1,304,1),(45,NULL,'患403',NULL,'2016-03-07 00:00:00',NULL,1,NULL,NULL,'H403',1,403,1),(47,NULL,'患405',NULL,'2016-03-02 00:00:00',NULL,1,NULL,NULL,'H405',1,405,2),(48,NULL,'患406',NULL,'2016-03-14 00:00:00',NULL,1,NULL,NULL,'H406',1,406,1),(49,NULL,'患407',NULL,'2016-03-08 00:00:00',NULL,1,NULL,NULL,'H407',1,407,1),(50,NULL,'患408',NULL,'2016-03-01 00:00:00',NULL,1,NULL,NULL,'H408',2,408,1),(51,NULL,'患409',NULL,'2016-03-12 00:00:00',NULL,1,NULL,NULL,'H409luuu',1,4099,1);
/*!40000 ALTER TABLE `t_patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_patient_charge_type`
--

DROP TABLE IF EXISTS `t_patient_charge_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_patient_charge_type` (
  `patient_charge_type_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `patient_id` bigint(20) NOT NULL,
  `charge_type_id` int(11) NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`patient_charge_type_id`),
  KEY `fk_t_patient_charge_type_t_patient1_idx` (`patient_id`),
  KEY `fk_t_patient_charge_type_t_charge_type1_idx` (`charge_type_id`),
  CONSTRAINT `fk_t_patient_charge_type_t_charge_type1` FOREIGN KEY (`charge_type_id`) REFERENCES `t_charge_type` (`charge_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_patient_charge_type_t_patient1` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`patient_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_patient_charge_type`
--

LOCK TABLES `t_patient_charge_type` WRITE;
/*!40000 ALTER TABLE `t_patient_charge_type` DISABLE KEYS */;
INSERT INTO `t_patient_charge_type` VALUES (1,1,1,'2015-01-01 00:00:00','2999-12-31 00:00:00',1);
/*!40000 ALTER TABLE `t_patient_charge_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_payment_type`
--

DROP TABLE IF EXISTS `t_payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_payment_type` (
  `payment_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`payment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_payment_type`
--

LOCK TABLES `t_payment_type` WRITE;
/*!40000 ALTER TABLE `t_payment_type` DISABLE KEYS */;
INSERT INTO `t_payment_type` VALUES (1,'现金'),(2,'转账'),(3,'支票'),(4,'网银'),(5,'银联刷卡'),(6,'支付宝'),(7,'微信支付');
/*!40000 ALTER TABLE `t_payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_practicing`
--

DROP TABLE IF EXISTS `t_practicing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_practicing` (
  `practicing_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_dept_id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `is_default` tinyint(4) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`practicing_id`),
  KEY `fk_t_hospital_dept_doctor_t_hospital_dept1_idx` (`hospital_dept_id`),
  KEY `fk_t_hospital_dept_doctor_t_doctor1_idx` (`doctor_id`),
  CONSTRAINT `fk_t_hospital_dept_doctor_t_doctor1` FOREIGN KEY (`doctor_id`) REFERENCES `t_doctor` (`doctor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_hospital_dept_doctor_t_hospital_dept1` FOREIGN KEY (`hospital_dept_id`) REFERENCES `t_hospital_dept` (`hospital_dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_practicing`
--

LOCK TABLES `t_practicing` WRITE;
/*!40000 ALTER TABLE `t_practicing` DISABLE KEYS */;
INSERT INTO `t_practicing` VALUES (1,1,1,1,'2016-01-01 00:00:00','2999-12-31 00:00:00',1),(2,1,2,1,'2016-01-01 00:00:00','2999-12-31 00:00:00',1);
/*!40000 ALTER TABLE `t_practicing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_practicing_schedule`
--

DROP TABLE IF EXISTS `t_practicing_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_practicing_schedule` (
  `practicing_schedule_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `practicing_id` bigint(20) NOT NULL,
  `special_clinic_id` bigint(20) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `plan_amount` int(11) DEFAULT NULL,
  `real_amount` int(11) DEFAULT NULL,
  `additional_amount` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`practicing_schedule_id`),
  KEY `fk_t_h_d_d_schedule_t_hospital_dept_doctor1_idx` (`practicing_id`),
  KEY `fk_t_h_d_d_schedule_t_schedule1_idx` (`schedule_id`),
  KEY `fk_t_h_d_d_schedule_t_product1_idx` (`product_id`),
  KEY `fk_t_practicing_schedule_t_special_clinic1_idx` (`special_clinic_id`),
  CONSTRAINT `fk_t_h_d_d_schedule_t_hospital_dept_doctor1` FOREIGN KEY (`practicing_id`) REFERENCES `t_practicing` (`practicing_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_h_d_d_schedule_t_product1` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_h_d_d_schedule_t_schedule1` FOREIGN KEY (`schedule_id`) REFERENCES `t_schedule` (`schedule_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_practicing_schedule_t_special_clinic1` FOREIGN KEY (`special_clinic_id`) REFERENCES `t_special_clinic` (`special_clinic_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_practicing_schedule`
--

LOCK TABLES `t_practicing_schedule` WRITE;
/*!40000 ALTER TABLE `t_practicing_schedule` DISABLE KEYS */;
INSERT INTO `t_practicing_schedule` VALUES (1,1,1,1,1,100,0,0,1),(2,2,1,1,3,50,0,0,1),(3,1,1,2,4,50,0,0,1),(4,2,1,2,6,20,0,0,1),(5,1,1,4,2,30,1,0,1),(6,2,1,4,6,20,0,0,1),(7,1,1,5,2,30,0,0,1),(8,2,1,5,5,50,0,0,1),(9,1,1,7,1,50,0,0,1),(10,2,1,7,6,30,0,0,1),(11,1,1,8,2,30,0,0,1),(12,2,1,8,5,30,0,0,1),(13,1,1,10,1,30,0,0,1),(14,2,1,10,5,20,0,0,1),(15,1,1,11,2,30,0,0,1),(16,2,1,11,6,30,0,0,1),(17,1,1,13,2,30,0,0,1),(18,2,1,13,5,30,0,0,1),(19,1,1,14,1,50,0,0,1),(20,2,1,14,5,30,0,0,1),(21,1,1,22,1,50,0,0,1),(22,2,1,22,5,30,0,0,1),(23,1,1,23,1,50,0,0,1),(24,2,1,23,5,20,0,0,1),(25,1,1,25,2,30,0,0,1),(26,2,1,25,6,20,0,0,1),(27,1,1,26,1,50,0,0,1),(28,2,1,26,5,20,0,0,1),(29,1,1,28,1,50,0,0,1),(30,2,1,28,6,20,0,0,1),(31,1,1,29,2,30,0,0,1),(32,2,1,29,5,30,0,0,1),(33,1,1,31,1,50,0,0,1),(34,2,1,31,5,30,0,0,1),(35,1,1,32,2,30,0,0,1),(36,2,1,32,5,30,0,0,1),(37,1,1,34,2,30,0,0,1),(38,2,1,34,5,30,0,0,1),(39,1,1,35,1,50,0,0,1),(40,2,1,35,6,20,0,0,1);
/*!40000 ALTER TABLE `t_practicing_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_product`
--

DROP TABLE IF EXISTS `t_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_product` (
  `product_id` bigint(20) NOT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `service_id` bigint(20) NOT NULL,
  `tariff_set_id` bigint(20) NOT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk_t_product_t_service1_idx` (`service_id`),
  KEY `fk_t_product_t_tariff_set1_idx` (`tariff_set_id`),
  CONSTRAINT `fk_t_product_t_service1` FOREIGN KEY (`service_id`) REFERENCES `t_service` (`service_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_product_t_tariff_set1` FOREIGN KEY (`tariff_set_id`) REFERENCES `t_tariff_set` (`tariff_set_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_product`
--

LOCK TABLES `t_product` WRITE;
/*!40000 ALTER TABLE `t_product` DISABLE KEYS */;
INSERT INTO `t_product` VALUES (1,'普通号',1,1,NULL),(2,'副高专家号',1,2,NULL),(3,'专家号',1,3,NULL),(4,'特需号',1,4,NULL),(5,'副高特需号',1,5,NULL),(6,'专家特需号',1,6,NULL);
/*!40000 ALTER TABLE `t_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_professional_level`
--

DROP TABLE IF EXISTS `t_professional_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_professional_level` (
  `professional_level_id` int(11) NOT NULL AUTO_INCREMENT,
  `professional_level_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`professional_level_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_professional_level`
--

LOCK TABLES `t_professional_level` WRITE;
/*!40000 ALTER TABLE `t_professional_level` DISABLE KEYS */;
INSERT INTO `t_professional_level` VALUES (1,'主任医师'),(2,'副主任医师'),(3,'主治医师'),(4,'住院医师'),(5,'医学生');
/*!40000 ALTER TABLE `t_professional_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_register_channel`
--

DROP TABLE IF EXISTS `t_register_channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_register_channel` (
  `register_channel_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `register_channel_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`register_channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_register_channel`
--

LOCK TABLES `t_register_channel` WRITE;
/*!40000 ALTER TABLE `t_register_channel` DISABLE KEYS */;
INSERT INTO `t_register_channel` VALUES (1,'窗口号'),(2,'互联网号'),(3,'电话号'),(4,'移动医疗'),(5,'机动');
/*!40000 ALTER TABLE `t_register_channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'患者'),(2,'医生'),(3,'护士'),(4,'技工'),(5,'亲属'),(6,'挂号人员'),(7,'财务人员'),(8,'其他');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_schedule`
--

DROP TABLE IF EXISTS `t_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_schedule` (
  `schedule_id` int(11) NOT NULL,
  `cycle_date_id` bigint(20) NOT NULL,
  `time_span_id` int(11) NOT NULL,
  PRIMARY KEY (`schedule_id`),
  KEY `fk_t_schedule_t_cycle_date1_idx` (`cycle_date_id`),
  KEY `fk_t_schedule_t_time_span1_idx` (`time_span_id`),
  CONSTRAINT `fk_t_schedule_t_cycle_date1` FOREIGN KEY (`cycle_date_id`) REFERENCES `t_cycle_date` (`cycle_date_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_schedule_t_time_span1` FOREIGN KEY (`time_span_id`) REFERENCES `t_time_span` (`time_span_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_schedule`
--

LOCK TABLES `t_schedule` WRITE;
/*!40000 ALTER TABLE `t_schedule` DISABLE KEYS */;
INSERT INTO `t_schedule` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,4,1),(11,4,2),(12,4,3),(13,5,1),(14,5,2),(15,5,3),(16,6,1),(17,6,2),(18,6,3),(19,7,1),(20,7,2),(21,7,3),(22,8,1),(23,8,2),(24,8,3),(25,9,1),(26,9,2),(27,9,3),(28,10,1),(29,10,2),(30,10,3),(31,11,1),(32,11,2),(33,11,3),(34,12,1),(35,12,2),(36,12,3),(37,13,1),(38,13,2),(39,13,3),(40,14,1),(41,14,2),(42,14,3);
/*!40000 ALTER TABLE `t_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_service`
--

DROP TABLE IF EXISTS `t_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_service` (
  `service_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_service`
--

LOCK TABLES `t_service` WRITE;
/*!40000 ALTER TABLE `t_service` DISABLE KEYS */;
INSERT INTO `t_service` VALUES (1,'普通门诊诊疗');
/*!40000 ALTER TABLE `t_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_special_clinic`
--

DROP TABLE IF EXISTS `t_special_clinic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_special_clinic` (
  `special_clinic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `hospital_dept_id` bigint(20) NOT NULL,
  `special_clinic_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`special_clinic_id`),
  KEY `fk_t_special_clinic_t_hospital_dept1_idx` (`hospital_dept_id`),
  CONSTRAINT `fk_t_special_clinic_t_hospital_dept1` FOREIGN KEY (`hospital_dept_id`) REFERENCES `t_hospital_dept` (`hospital_dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_special_clinic`
--

LOCK TABLES `t_special_clinic` WRITE;
/*!40000 ALTER TABLE `t_special_clinic` DISABLE KEYS */;
INSERT INTO `t_special_clinic` VALUES (1,1,'普通门诊');
/*!40000 ALTER TABLE `t_special_clinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_t_t_p_value_type`
--

DROP TABLE IF EXISTS `t_t_t_p_value_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_t_t_p_value_type` (
  `t_t_p_value_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `t_t_p_value_type_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`t_t_p_value_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_t_t_p_value_type`
--

LOCK TABLES `t_t_t_p_value_type` WRITE;
/*!40000 ALTER TABLE `t_t_t_p_value_type` DISABLE KEYS */;
INSERT INTO `t_t_t_p_value_type` VALUES (1,'整数'),(2,'实数'),(3,'字符');
/*!40000 ALTER TABLE `t_t_t_p_value_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tariff`
--

DROP TABLE IF EXISTS `t_tariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tariff` (
  `tariff_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tariff_name` varchar(45) DEFAULT NULL,
  `tariff_type_id` int(11) NOT NULL,
  PRIMARY KEY (`tariff_id`),
  KEY `fk_t_tariff_t_tariff_type1_idx` (`tariff_type_id`),
  CONSTRAINT `fk_t_tariff_t_tariff_type1` FOREIGN KEY (`tariff_type_id`) REFERENCES `t_tariff_type` (`tariff_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tariff`
--

LOCK TABLES `t_tariff` WRITE;
/*!40000 ALTER TABLE `t_tariff` DISABLE KEYS */;
INSERT INTO `t_tariff` VALUES (1,'普通号',1),(2,'副高专家号',2),(3,'专家号',3),(4,'特需',4),(5,'副高特需',5),(6,'专家特需',6);
/*!40000 ALTER TABLE `t_tariff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tariff_set`
--

DROP TABLE IF EXISTS `t_tariff_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tariff_set` (
  `tariff_set_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tariff_set_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tariff_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tariff_set`
--

LOCK TABLES `t_tariff_set` WRITE;
/*!40000 ALTER TABLE `t_tariff_set` DISABLE KEYS */;
INSERT INTO `t_tariff_set` VALUES (1,'普通号'),(2,'副高专家号'),(3,'专家号'),(4,'特需'),(5,'副高特需'),(6,'专家特需');
/*!40000 ALTER TABLE `t_tariff_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tariff_set_detail`
--

DROP TABLE IF EXISTS `t_tariff_set_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tariff_set_detail` (
  `tariff_set_detail_id` bigint(20) NOT NULL,
  `tariff_set_id` bigint(20) NOT NULL,
  `tariff_id` bigint(20) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`tariff_set_detail_id`),
  KEY `fk_t_tariff_set_detail_t_tariff_set1_idx` (`tariff_set_id`),
  KEY `fk_t_tariff_set_detail_t_tariff1_idx` (`tariff_id`),
  CONSTRAINT `fk_t_tariff_set_detail_t_tariff1` FOREIGN KEY (`tariff_id`) REFERENCES `t_tariff` (`tariff_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_tariff_set_detail_t_tariff_set1` FOREIGN KEY (`tariff_set_id`) REFERENCES `t_tariff_set` (`tariff_set_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tariff_set_detail`
--

LOCK TABLES `t_tariff_set_detail` WRITE;
/*!40000 ALTER TABLE `t_tariff_set_detail` DISABLE KEYS */;
INSERT INTO `t_tariff_set_detail` VALUES (1,1,1,1),(2,2,2,1),(3,3,3,1),(4,4,4,1),(5,5,5,1),(6,6,6,1);
/*!40000 ALTER TABLE `t_tariff_set_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tariff_type`
--

DROP TABLE IF EXISTS `t_tariff_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tariff_type` (
  `tariff_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `tariff_type_name` varchar(45) DEFAULT NULL,
  `tariff_class` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tariff_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tariff_type`
--

LOCK TABLES `t_tariff_type` WRITE;
/*!40000 ALTER TABLE `t_tariff_type` DISABLE KEYS */;
INSERT INTO `t_tariff_type` VALUES (1,'普通号','com.dakangyun.hisc.OneTimeCharge'),(2,'副高专家号','com.dakangyun.hisc.OneTimeCharge'),(3,'专家号','com.dakangyun.hisc.OneTimeCharge'),(4,'特需','com.dakangyun.hisc.OneTimeCharge'),(5,'副高特需','com.dakangyun.hisc.OneTimeCharge'),(6,'专家特需','com.dakangyun.hisc.OneTimeCharge');
/*!40000 ALTER TABLE `t_tariff_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tariff_type_param`
--

DROP TABLE IF EXISTS `t_tariff_type_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tariff_type_param` (
  `tariff_type_param_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tariff_type_id` int(11) NOT NULL,
  `t_t_p_value_type_id` int(11) NOT NULL,
  `param_name` varchar(45) DEFAULT NULL,
  `param_value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tariff_type_param_id`),
  KEY `fk_t_tariff_type_param_t_tariff_type1_idx` (`tariff_type_id`),
  KEY `fk_t_tariff_type_param_t_t_t_p_value_type1_idx` (`t_t_p_value_type_id`),
  CONSTRAINT `fk_t_tariff_type_param_t_tariff_type1` FOREIGN KEY (`tariff_type_id`) REFERENCES `t_tariff_type` (`tariff_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_tariff_type_param_t_t_t_p_value_type1` FOREIGN KEY (`t_t_p_value_type_id`) REFERENCES `t_t_t_p_value_type` (`t_t_p_value_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tariff_type_param`
--

LOCK TABLES `t_tariff_type_param` WRITE;
/*!40000 ALTER TABLE `t_tariff_type_param` DISABLE KEYS */;
INSERT INTO `t_tariff_type_param` VALUES (1,1,2,'price','5.0'),(2,2,2,'price','7.0'),(3,3,2,'price','14.0'),(4,4,2,'price','100.0'),(5,5,2,'price','300.0'),(6,6,2,'price','1000.0');
/*!40000 ALTER TABLE `t_tariff_type_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_time_span`
--

DROP TABLE IF EXISTS `t_time_span`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_time_span` (
  `time_span_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_span_name` varchar(45) DEFAULT NULL,
  `start_time` varchar(45) DEFAULT NULL,
  `end_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`time_span_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_time_span`
--

LOCK TABLES `t_time_span` WRITE;
/*!40000 ALTER TABLE `t_time_span` DISABLE KEYS */;
INSERT INTO `t_time_span` VALUES (1,'上午','08:00','12:00'),(2,'下午','13:00','17:00'),(3,'晚上','19:00','22:00');
/*!40000 ALTER TABLE `t_time_span` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_toll_collector`
--

DROP TABLE IF EXISTS `t_toll_collector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_toll_collector` (
  `toll_collector_id` bigint(20) NOT NULL,
  `work_num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`toll_collector_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_toll_collector`
--

LOCK TABLES `t_toll_collector` WRITE;
/*!40000 ALTER TABLE `t_toll_collector` DISABLE KEYS */;
INSERT INTO `t_toll_collector` VALUES (1,'T001'),(2,'T002');
/*!40000 ALTER TABLE `t_toll_collector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_u_p_relationship`
--

DROP TABLE IF EXISTS `t_u_p_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_p_relationship` (
  `u_p_relationship_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_p_relationship_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`u_p_relationship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_u_p_relationship`
--

LOCK TABLES `t_u_p_relationship` WRITE;
/*!40000 ALTER TABLE `t_u_p_relationship` DISABLE KEYS */;
INSERT INTO `t_u_p_relationship` VALUES (1,'本人'),(2,'父亲'),(3,'母亲'),(4,'孩子'),(5,'同事'),(6,'其它');
/*!40000 ALTER TABLE `t_u_p_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(45) DEFAULT NULL,
  `login_pwd` varchar(45) DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `hospital_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_t_user_t_role1_idx` (`role_id`),
  CONSTRAINT `fk_t_user_t_role1` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'u001','7c4a8d09ca3762af61e59520943dc26494f8941b',1,'测试',1),(2,'ydgh001','7c4a8d09ca3762af61e59520943dc26494f8941b',6,'挂号员001',1),(3,'ydys001','7c4a8d09ca3762af61e59520943dc26494f8941b',2,'医生001',1),(4,'ydhs001','7c4a8d09ca3762af61e59520943dc26494f8941b',3,'护士001',1),(5,'ydcw001','7c4a8d09ca3762af61e59520943dc26494f8941b',7,'财务001',1);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_patient`
--

DROP TABLE IF EXISTS `t_user_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_patient` (
  `user_patient_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `patient_id` bigint(20) NOT NULL,
  `u_p_relationship_id` int(11) NOT NULL,
  PRIMARY KEY (`user_patient_id`),
  KEY `fk_t_user_patient_t_user1_idx` (`user_id`),
  KEY `fk_t_user_patient_t_patient1_idx` (`patient_id`),
  KEY `fk_t_user_patient_t_u_p_relationship1_idx` (`u_p_relationship_id`),
  CONSTRAINT `fk_t_user_patient_t_patient1` FOREIGN KEY (`patient_id`) REFERENCES `t_patient` (`patient_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_user_patient_t_user1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_user_patient_t_u_p_relationship1` FOREIGN KEY (`u_p_relationship_id`) REFERENCES `t_u_p_relationship` (`u_p_relationship_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_patient`
--

LOCK TABLES `t_user_patient` WRITE;
/*!40000 ALTER TABLE `t_user_patient` DISABLE KEYS */;
INSERT INTO `t_user_patient` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `t_user_patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-16 12:35:52
