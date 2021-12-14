-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_clase
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `banco`
--

DROP TABLE IF EXISTS `banco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco` (
  `banco` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`banco`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco`
--

LOCK TABLES `banco` WRITE;
/*!40000 ALTER TABLE `banco` DISABLE KEYS */;
INSERT INTO `banco` VALUES (1,'EL CREDITO HIPOTECARIO NACIONAL DE GUATEMALA'),(2,'INMOBILIARIO, S. A.'),(3,'DE LOS TRABAJADORES'),(4,'INDUSTRIAL, S. A.'),(5,'DE DESARROLLO RURAL, S. A.'),(6,'INTERNACIONAL, S. A.'),(7,'CITIBANK N.A. SUCURSAL GUATEMALA'),(8,'VIVIBANCO, S. A.'),(9,'FICOHSA GUATEMALA, S. A.'),(10,'PROMERICA, S. A.'),(11,'DE ANTIGUA, S. A.'),(12,'DE AMERICA CENTRAL, S. A.'),(13,'AGROMERCANTIL DE GUATEMALA, S. A.'),(14,'G&T CONTINENTAL, S. A.'),(15,'AZTECA DE GUATEMALA, S. A.'),(16,'INV, S. A.'),(17,'CREDICORP, S. A.');
/*!40000 ALTER TABLE `banco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banco_rubro`
--

DROP TABLE IF EXISTS `banco_rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banco_rubro` (
  `banco_rubro` int NOT NULL AUTO_INCREMENT,
  `cantidad` int NOT NULL,
  `banco` int NOT NULL,
  `rubro` int NOT NULL,
  `mes` int NOT NULL,
  PRIMARY KEY (`banco_rubro`),
  KEY `fk_banco` (`banco`),
  KEY `fk_rubro` (`rubro`),
  KEY `fk_mes` (`mes`),
  CONSTRAINT `fk_banco` FOREIGN KEY (`banco`) REFERENCES `banco` (`banco`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_mes` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rubro` FOREIGN KEY (`rubro`) REFERENCES `rubro` (`rubro`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=766 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banco_rubro`
--

LOCK TABLES `banco_rubro` WRITE;
/*!40000 ALTER TABLE `banco_rubro` DISABLE KEYS */;
INSERT INTO `banco_rubro` VALUES (1,4997677,1,1,1),(2,1945686,2,1,1),(3,28029407,3,1,1),(4,107179306,4,1,1),(5,84433466,5,1,1),(6,11090004,6,1,1),(7,4229056,7,1,1),(8,784319,8,1,1),(9,2846268,9,1,1),(10,17681466,10,1,1),(11,1482883,11,1,1),(12,34342100,12,1,1),(13,32020230,13,1,1),(14,55685038,14,1,1),(15,1917869,15,1,1),(16,939617,16,1,1),(17,416242,17,1,1),(18,5701976,1,1,2),(19,1987348,2,1,2),(20,27839545,3,1,2),(21,109248691,4,1,2),(22,85157529,5,1,2),(23,11180537,6,1,2),(24,4824523,7,1,2),(25,775345,8,1,2),(26,3063499,9,1,2),(27,17485138,10,1,2),(28,1467480,11,1,2),(29,34480915,12,1,2),(30,31812010,13,1,2),(31,55751644,14,1,2),(32,1934437,15,1,2),(33,930519,16,1,2),(34,425317,17,1,2),(35,5231404,1,1,3),(36,2037146,2,1,3),(37,28121453,3,1,3),(38,109911171,4,1,3),(39,85620311,5,1,3),(40,11322296,6,1,3),(41,4594835,7,1,3),(42,788552,8,1,3),(43,3031790,9,1,3),(44,17969928,10,1,3),(45,1488318,11,1,3),(46,34701142,12,1,3),(47,31855324,13,1,3),(48,56554430,14,1,3),(49,1911075,15,1,3),(50,929271,16,1,3),(51,430598,17,1,3),(52,5393023,1,1,4),(53,1981535,2,1,4),(54,28133805,3,1,4),(55,109003615,4,1,4),(56,86213140,5,1,4),(57,11317515,6,1,4),(58,4336361,7,1,4),(59,790974,8,1,4),(60,3154878,9,1,4),(61,17855222,10,1,4),(62,1509598,11,1,4),(63,34902032,12,1,4),(64,31969271,13,1,4),(65,56947898,14,1,4),(66,1911612,15,1,4),(67,932459,16,1,4),(68,447673,17,1,4),(69,5356311,1,1,5),(70,1972203,2,1,5),(71,28416638,3,1,5),(72,111009867,4,1,5),(73,86113731,5,1,5),(74,11173738,6,1,5),(75,4130179,7,1,5),(76,765157,8,1,5),(77,3200302,9,1,5),(78,17813585,10,1,5),(79,1496359,11,1,5),(80,35026529,12,1,5),(81,31679116,13,1,5),(82,56173977,14,1,5),(83,1942997,15,1,5),(84,930229,16,1,5),(85,463326,17,1,5),(86,5534610,1,1,6),(87,2037961,2,1,6),(88,28676074,3,1,6),(89,112362517,4,1,6),(90,87432128,5,1,6),(91,11439168,6,1,6),(92,4312208,7,1,6),(93,765152,8,1,6),(94,3165145,9,1,6),(95,18026749,10,1,6),(96,1536311,11,1,6),(97,34464484,12,1,6),(98,32333473,13,1,6),(99,56565789,14,1,6),(100,1936622,15,1,6),(101,913513,16,1,6),(102,493224,17,1,6),(103,5603350,1,1,7),(104,2010207,2,1,7),(105,28887509,3,1,7),(106,112844349,4,1,7),(107,88765495,5,1,7),(108,11480163,6,1,7),(109,4229080,7,1,7),(110,773247,8,1,7),(111,3189467,9,1,7),(112,18600360,10,1,7),(113,1455811,11,1,7),(114,34241674,12,1,7),(115,32111207,13,1,7),(116,56792070,14,1,7),(117,1975132,15,1,7),(118,892368,16,1,7),(119,505062,17,1,7),(120,5697101,1,1,8),(121,2040048,2,1,8),(122,29401801,3,1,8),(123,112157910,4,1,8),(124,89306747,5,1,8),(125,11606405,6,1,8),(126,4327959,7,1,8),(127,758676,8,1,8),(128,3308694,9,1,8),(129,18754447,10,1,8),(130,1461456,11,1,8),(131,34088317,12,1,8),(132,32407601,13,1,8),(133,58326895,14,1,8),(134,1992287,15,1,8),(135,890923,16,1,8),(136,503984,17,1,8),(137,5573490,1,1,9),(138,2056943,2,1,9),(139,29673630,3,1,9),(140,116070499,4,1,9),(141,91018509,5,1,9),(142,11993491,6,1,9),(143,3933182,7,1,9),(144,761006,8,1,9),(145,3295446,9,1,9),(146,18930936,10,1,9),(147,1469913,11,1,9),(148,33734254,12,1,9),(149,32411419,13,1,9),(150,59419330,14,1,9),(151,1997823,15,1,9),(152,907060,16,1,9),(153,507522,17,1,9),(154,5773458,1,1,10),(155,2044948,2,1,10),(156,30001132,3,1,10),(157,116110075,4,1,10),(158,91047476,5,1,10),(159,11909935,6,1,10),(160,3843377,7,1,10),(161,779308,8,1,10),(162,3269332,9,1,10),(163,18996017,10,1,10),(164,1470590,11,1,10),(165,33548261,12,1,10),(166,32191720,13,1,10),(167,59560609,14,1,10),(168,2032570,15,1,10),(169,895404,16,1,10),(170,536807,17,1,10),(171,5809277,1,1,11),(172,2060595,2,1,11),(173,30278076,3,1,11),(174,115984105,4,1,11),(175,91460417,5,1,11),(176,11764199,6,1,11),(177,3805357,7,1,11),(178,779006,8,1,11),(179,3249575,9,1,11),(180,19061136,10,1,11),(181,1485212,11,1,11),(182,34199384,12,1,11),(183,33320286,13,1,11),(184,59561468,14,1,11),(185,2056519,15,1,11),(186,894188,16,1,11),(187,563242,17,1,11),(188,5686082,1,1,12),(189,2082353,2,1,12),(190,30493687,3,1,12),(191,119259432,4,1,12),(192,92682411,5,1,12),(193,11893705,6,1,12),(194,3646202,7,1,12),(195,816127,8,1,12),(196,3333620,9,1,12),(197,18914042,10,1,12),(198,1504168,11,1,12),(199,35097326,12,1,12),(200,32880175,13,1,12),(201,60133950,14,1,12),(202,2064865,15,1,12),(203,907157,16,1,12),(204,590360,17,1,12),(256,4806250,1,2,1),(257,1618324,2,2,1),(258,24117870,3,2,1),(259,98184177,4,2,1),(260,76328096,5,2,1),(261,10082494,6,2,1),(262,3802967,7,2,1),(263,628204,8,2,1),(264,2529464,9,2,1),(265,15924584,10,2,1),(266,1276409,11,2,1),(267,31287473,12,2,1),(268,29372555,13,2,1),(269,50553052,14,2,1),(270,1370634,15,2,1),(271,816529,16,2,1),(272,357783,17,2,1),(273,5468203,1,2,2),(274,1654549,2,2,2),(275,23956103,3,2,2),(276,100139997,4,2,2),(277,77260902,5,2,2),(278,10143842,6,2,2),(279,4481708,7,2,2),(280,621595,8,2,2),(281,2744551,9,2,2),(282,15880064,10,2,2),(283,1269750,11,2,2),(284,31470534,12,2,2),(285,29175847,13,2,2),(286,50635901,14,2,2),(287,1374482,15,2,2),(288,805432,16,2,2),(289,366104,17,2,2),(290,4985605,1,2,3),(291,1702746,2,2,3),(292,24179138,3,2,3),(293,100683638,4,2,3),(294,77636201,5,2,3),(295,10275207,6,2,3),(296,4249419,7,2,3),(297,632870,8,2,3),(298,2712260,9,2,3),(299,16351145,10,2,3),(300,1312273,11,2,3),(301,31655966,12,2,3),(302,29217386,13,2,3),(303,51416248,14,2,3),(304,1333652,15,2,3),(305,803626,16,2,3),(306,370599,17,2,3),(307,5139261,1,2,4),(308,1648941,2,2,4),(309,24278645,3,2,4),(310,99780819,4,2,4),(311,78154425,5,2,4),(312,10261023,6,2,4),(313,3987399,7,2,4),(314,639899,8,2,4),(315,2832356,9,2,4),(316,16210741,10,2,4),(317,1328401,11,2,4),(318,31855188,12,2,4),(319,29315476,13,2,4),(320,51758293,14,2,4),(321,1321946,15,2,4),(322,813083,16,2,4),(323,396504,17,2,4),(324,5087142,1,2,5),(325,1636625,2,2,5),(326,24512437,3,2,5),(327,101506303,4,2,5),(328,78308326,5,2,5),(329,10105272,6,2,5),(330,3771462,7,2,5),(331,612983,8,2,5),(332,2874827,9,2,5),(333,16038592,10,2,5),(334,1304415,11,2,5),(335,31934202,12,2,5),(336,28902306,13,2,5),(337,51111840,14,2,5),(338,1339062,15,2,5),(339,810130,16,2,5),(340,410780,17,2,5),(341,5253869,1,2,6),(342,1700380,2,2,6),(343,24692534,3,2,6),(344,103842371,4,2,6),(345,79520305,5,2,6),(346,10393588,6,2,6),(347,3944125,7,2,6),(348,612169,8,2,6),(349,2838471,9,2,6),(350,16379000,10,2,6),(351,1340610,11,2,6),(352,31362892,12,2,6),(353,29487991,13,2,6),(354,51398575,14,2,6),(355,1317803,15,2,6),(356,792712,16,2,6),(357,440444,17,2,6),(358,5310799,1,2,7),(359,1670702,2,2,7),(360,24834384,3,2,7),(361,104174738,4,2,7),(362,80642851,5,2,7),(363,10422292,6,2,7),(364,3858680,7,2,7),(365,618676,8,2,7),(366,2861165,9,2,7),(367,16908350,10,2,7),(368,1340736,11,2,7),(369,31109129,12,2,7),(370,29220384,13,2,7),(371,51571478,14,2,7),(372,1342920,15,2,7),(373,770735,16,2,7),(374,451678,17,2,7),(375,5394659,1,2,8),(376,1699113,2,2,8),(377,25278440,3,2,8),(378,103325518,4,2,8),(379,81077435,5,2,8),(380,10535395,6,2,8),(381,3940159,7,2,8),(382,602848,8,2,8),(383,2973152,9,2,8),(384,17062140,10,2,8),(385,1345850,11,2,8),(386,30917739,12,2,8),(387,29470436,13,2,8),(388,53014694,14,2,8),(389,1350817,15,2,8),(390,768414,16,2,8),(391,449839,17,2,8),(392,5295979,1,2,9),(393,1713945,2,2,9),(394,25482561,3,2,9),(395,107068050,4,2,9),(396,82691485,5,2,9),(397,10909739,6,2,9),(398,3630783,7,2,9),(399,604527,8,2,9),(400,2951320,9,2,9),(401,17209200,10,2,9),(402,1354030,11,2,9),(403,30556609,12,2,9),(404,29423233,13,2,9),(405,54055231,14,2,9),(406,1342423,15,2,9),(407,782810,16,2,9),(408,452624,17,2,9),(409,5486153,1,2,10),(410,1701380,2,2,10),(411,25735495,3,2,10),(412,106951178,4,2,10),(413,82527220,5,2,10),(414,10812985,6,2,10),(415,3535972,7,2,10),(416,622154,8,2,10),(417,2919395,9,2,10),(418,17272498,10,2,10),(419,1354440,11,2,10),(420,30323223,12,2,10),(421,29153857,13,2,10),(422,54159859,14,2,10),(423,1366508,15,2,10),(424,770341,16,2,10),(425,481470,17,2,10),(426,5515940,1,2,11),(427,1716839,2,2,11),(428,25937821,3,2,11),(429,106619629,4,2,11),(430,82843352,5,2,11),(431,10652823,6,2,11),(432,3492143,7,2,11),(433,621122,8,2,11),(434,2893180,9,2,11),(435,17328491,10,2,11),(436,1368805,11,2,11),(437,30875227,12,2,11),(438,30234188,13,2,11),(439,54007615,14,2,11),(440,1381735,15,2,11),(441,768258,16,2,11),(442,506857,17,2,11),(443,5382124,1,2,12),(444,1739845,2,2,12),(445,26082654,3,2,12),(446,109728440,4,2,12),(447,83969569,5,2,12),(448,10760062,6,2,12),(449,3326769,7,2,12),(450,657466,8,2,12),(451,2968780,9,2,12),(452,17151004,10,2,12),(453,1387371,11,2,12),(454,31750880,12,2,12),(455,29749604,13,2,12),(456,54529597,14,2,12),(457,1381462,15,2,12),(458,780402,16,2,12),(459,532896,17,2,12),(511,191427,1,3,1),(512,327362,2,3,1),(513,3911537,3,3,1),(514,8995128,4,3,1),(515,8105370,5,3,1),(516,1007510,6,3,1),(517,426088,7,3,1),(518,156116,8,3,1),(519,316804,9,3,1),(520,1756883,10,3,1),(521,206474,11,3,1),(522,3054627,12,3,1),(523,2647675,13,3,1),(524,5131986,14,3,1),(525,547235,15,3,1),(526,123088,16,3,1),(527,58459,17,3,1),(528,233773,1,3,2),(529,332799,2,3,2),(530,3883442,3,3,2),(531,9108694,4,3,2),(532,7896627,5,3,2),(533,1036695,6,3,2),(534,342815,7,3,2),(535,153750,8,3,2),(536,318948,9,3,2),(537,1605074,10,3,2),(538,197730,11,3,2),(539,3010380,12,3,2),(540,2636163,13,3,2),(541,5115743,14,3,2),(542,559955,15,3,2),(543,125088,16,3,2),(544,59213,17,3,2),(545,245799,1,3,3),(546,334399,2,3,3),(547,3942315,3,3,3),(548,9227533,4,3,3),(549,7984110,5,3,3),(550,1047089,6,3,3),(551,345417,7,3,3),(552,155683,8,3,3),(553,319530,9,3,3),(554,1618783,10,3,3),(555,176044,11,3,3),(556,3045176,12,3,3),(557,2637937,13,3,3),(558,5138181,14,3,3),(559,577422,15,3,3),(560,125645,16,3,3),(561,59999,17,3,3),(562,253763,1,3,4),(563,332593,2,3,4),(564,3855160,3,3,4),(565,9222797,4,3,4),(566,8058715,5,3,4),(567,1056493,6,3,4),(568,348962,7,3,4),(569,151075,8,3,4),(570,322522,9,3,4),(571,1644481,10,3,4),(572,181196,11,3,4),(573,3046844,12,3,4),(574,2653795,13,3,4),(575,5189605,14,3,4),(576,589666,15,3,4),(577,119376,16,3,4),(578,51169,17,3,4),(579,269168,1,3,5),(580,335578,2,3,5),(581,3904201,3,3,5),(582,9503565,4,3,5),(583,7805406,5,3,5),(584,1068466,6,3,5),(585,358718,7,3,5),(586,152174,8,3,5),(587,325475,9,3,5),(588,1774994,10,3,5),(589,191944,11,3,5),(590,3092326,12,3,5),(591,2776811,13,3,5),(592,5062137,14,3,5),(593,603935,15,3,5),(594,120099,16,3,5),(595,52546,17,3,5),(596,280741,1,3,6),(597,337581,2,3,6),(598,3983540,3,3,6),(599,8520146,4,3,6),(600,7911823,5,3,6),(601,1045580,6,3,6),(602,368083,7,3,6),(603,152982,8,3,6),(604,326674,9,3,6),(605,1647749,10,3,6),(606,195702,11,3,6),(607,3101591,12,3,6),(608,2845482,13,3,6),(609,5167214,14,3,6),(610,618819,15,3,6),(611,120801,16,3,6),(612,52780,17,3,6),(613,292552,1,3,7),(614,339505,2,3,7),(615,4053125,3,3,7),(616,8669612,4,3,7),(617,8122645,5,3,7),(618,1057871,6,3,7),(619,370401,7,3,7),(620,154571,8,3,7),(621,328302,9,3,7),(622,1692010,10,3,7),(623,115076,11,3,7),(624,3132545,12,3,7),(625,2890823,13,3,7),(626,5220592,14,3,7),(627,632212,15,3,7),(628,121634,16,3,7),(629,53384,17,3,7),(630,302441,1,3,8),(631,340935,2,3,8),(632,4123362,3,3,8),(633,8832393,4,3,8),(634,8229312,5,3,8),(635,1071010,6,3,8),(636,387800,7,3,8),(637,155829,8,3,8),(638,335542,9,3,8),(639,1692306,10,3,8),(640,115606,11,3,8),(641,3170578,12,3,8),(642,2937165,13,3,8),(643,5312201,14,3,8),(644,641469,15,3,8),(645,122509,16,3,8),(646,54145,17,3,8),(647,277511,1,3,9),(648,342997,2,3,9),(649,4191069,3,3,9),(650,9002449,4,3,9),(651,8327024,5,3,9),(652,1083752,6,3,9),(653,302399,7,3,9),(654,156479,8,3,9),(655,344126,9,3,9),(656,1721736,10,3,9),(657,115883,11,3,9),(658,3177644,12,3,9),(659,2988187,13,3,9),(660,5364098,14,3,9),(661,655400,15,3,9),(662,124250,16,3,9),(663,54898,17,3,9),(664,287306,1,3,10),(665,343568,2,3,10),(666,4265637,3,3,10),(667,9158897,4,3,10),(668,8520256,5,3,10),(669,1096950,6,3,10),(670,307405,7,3,10),(671,157154,8,3,10),(672,349937,9,3,10),(673,1723519,10,3,10),(674,116150,11,3,10),(675,3225038,12,3,10),(676,3037863,13,3,10),(677,5400750,14,3,10),(678,666062,15,3,10),(679,125064,16,3,10),(680,55337,17,3,10),(681,293338,1,3,11),(682,343756,2,3,11),(683,4340254,3,3,11),(684,9364476,4,3,11),(685,8617066,5,3,11),(686,1111376,6,3,11),(687,313215,7,3,11),(688,157885,8,3,11),(689,356395,9,3,11),(690,1732645,10,3,11),(691,116406,11,3,11),(692,3324157,12,3,11),(693,3086097,13,3,11),(694,5553853,14,3,11),(695,674784,15,3,11),(696,125930,16,3,11),(697,56384,17,3,11),(698,303958,1,3,12),(699,342508,2,3,12),(700,4411033,3,3,12),(701,9530991,4,3,12),(702,8712841,5,3,12),(703,1133643,6,3,12),(704,319433,7,3,12),(705,158660,8,3,12),(706,364840,9,3,12),(707,1763038,10,3,12),(708,116797,11,3,12),(709,3346447,12,3,12),(710,3130571,13,3,12),(711,5604353,14,3,12),(712,683404,15,3,12),(713,126754,16,3,12),(714,57464,17,3,12);
/*!40000 ALTER TABLE `banco_rubro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mes`
--

DROP TABLE IF EXISTS `mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mes` (
  `mes` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`mes`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mes`
--

LOCK TABLES `mes` WRITE;
/*!40000 ALTER TABLE `mes` DISABLE KEYS */;
INSERT INTO `mes` VALUES (1,'Enero'),(2,'Febrero'),(3,'Marzo'),(4,'Abril'),(5,'Mayo'),(6,'Junio'),(7,'Julio'),(8,'Agosto'),(9,'Septiembre'),(10,'Octubre'),(11,'Noviembre'),(12,'Diciembre');
/*!40000 ALTER TABLE `mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rubro`
--

DROP TABLE IF EXISTS `rubro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rubro` (
  `rubro` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`rubro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rubro`
--

LOCK TABLES `rubro` WRITE;
/*!40000 ALTER TABLE `rubro` DISABLE KEYS */;
INSERT INTO `rubro` VALUES (1,'Activo'),(2,'Pasivo'),(3,'Capital Contable');
/*!40000 ALTER TABLE `rubro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-13 19:51:46