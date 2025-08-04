-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dbmsproject
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `qn_id` int DEFAULT NULL,
  `quiz_id` int DEFAULT NULL,
  `correct` varchar(30) DEFAULT NULL,
  KEY `qn_id` (`qn_id`),
  KEY `quiz_id` (`quiz_id`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`qn_id`) REFERENCES `questions` (`qn_id`),
  CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (1,1,'Paris'),(2,1,'Nile'),(3,1,'Japan'),(4,1,'Asia'),(5,1,'Pacific'),(6,1,'Canberra'),(7,1,'Himalayas'),(8,1,'Africa'),(9,1,'Iceland'),(10,1,'Vatican City'),(11,1,'Yen'),(12,1,'Colorado'),(13,1,'Sahara'),(14,1,'Paris'),(15,1,'Botswana'),(16,1,'Ottawa'),(17,1,'Finland'),(18,1,'Mount Kilimanjaro'),(19,1,'Bali'),(20,1,'Canada'),(31,2,'16'),(32,2,'120'),(33,2,'10'),(34,2,'25'),(35,2,'x = 3'),(36,2,'24'),(37,2,'20'),(38,2,'16'),(39,2,'13'),(40,2,'2'),(61,3,'Lamborghini'),(62,3,'267 mph'),(63,3,'France'),(64,3,'Bugatti'),(65,3,'Prancing Horse'),(66,3,'700'),(67,3,'Lamborghini'),(68,3,'Grand Touring'),(69,3,'Lamborghini'),(70,3,'Flying B'),(71,3,'Audi'),(72,3,'Nissan'),(73,3,'250 mph'),(74,3,'Spirit of Ecstasy'),(75,3,'Bugatti'),(76,3,'650'),(77,3,'310 mph'),(78,3,'Lotus'),(79,3,'Aston Martin'),(80,3,'Spirit of Ecstasy'),(81,4,'No default order'),(82,4,'SELECT'),(83,4,'Aggregating data'),(84,4,'1NF'),(85,4,'INSERT INTO'),(86,4,'Filtering records'),(87,4,'LEFT JOIN'),(88,4,'Sorting records'),(89,4,'ALTER'),(90,4,'Undoing changes'),(91,4,'DISTINCT'),(92,4,'COMMIT'),(93,4,'Hierarchical'),(94,4,'COUNT()'),(95,4,'UPDATE'),(96,4,'DELETE'),(97,4,'Sorting records'),(98,4,'ALTER'),(99,4,'Undoing changes'),(100,4,'DROP TABLE'),(101,5,'Paris'),(102,5,'Leonardo da Vinci'),(103,5,'Mount Everest'),(104,5,'Yen'),(105,5,'Japan'),(106,5,'Shakespeare'),(107,5,'Blue whale'),(108,5,'Sahara Desert'),(109,5,'Michelangelo'),(110,5,'Au'),(111,6,'Fluorine'),(112,6,'CH3COOH'),(113,6,'Sublimation'),(114,6,'Carbon'),(115,6,'C6H6'),(116,6,'HCN'),(117,6,'Nitrous oxide'),(118,6,'Fermentation'),(119,6,'Boron'),(120,6,'H2O2'),(121,7,'Adrenal gland'),(122,7,'Insulin'),(123,7,'Hypothalamus'),(124,7,'BMR'),(125,7,'Left Ventricle'),(126,7,'Erythropoietin'),(127,7,'Mitral Valve'),(128,7,'Estrogen'),(129,7,'Pineal Gland'),(130,7,'Mitral valve');
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attemptbackup`
--

DROP TABLE IF EXISTS `attemptbackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attemptbackup` (
  `user_id` int NOT NULL,
  `qn_id` int NOT NULL,
  `ans` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`qn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attemptbackup`
--

LOCK TABLES `attemptbackup` WRITE;
/*!40000 ALTER TABLE `attemptbackup` DISABLE KEYS */;
INSERT INTO `attemptbackup` VALUES (98498,61,'lamborghini');
/*!40000 ALTER TABLE `attemptbackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calcscore`
--

DROP TABLE IF EXISTS `calcscore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calcscore` (
  `user_id` int DEFAULT NULL,
  `quiz_id` int DEFAULT NULL,
  `score` int DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `quiz_id` (`quiz_id`),
  CONSTRAINT `calcscore_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `calcscore_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calcscore`
--

LOCK TABLES `calcscore` WRITE;
/*!40000 ALTER TABLE `calcscore` DISABLE KEYS */;
/*!40000 ALTER TABLE `calcscore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `qn_id` int NOT NULL AUTO_INCREMENT,
  `quiz_id` int DEFAULT NULL,
  `question` text,
  `option_a` varchar(50) DEFAULT NULL,
  `option_b` varchar(50) DEFAULT NULL,
  `option_c` varchar(50) DEFAULT NULL,
  `option_d` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`qn_id`),
  KEY `quiz_id` (`quiz_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,1,'What is the capital of France?','London','Berlin','Paris','Madrid'),(2,1,'What is the longest river in the world?','Nile','Amazon','Yangtze','Mississippi'),(3,1,'Which country is known as the Land of the Rising Sun?','China','India','Japan','Australia'),(4,1,'What is the largest continent by land area?','Africa','Europe','Asia','North America'),(5,1,'Which ocean is the largest by area?','Indian','Atlantic','Pacific','Arctic'),(6,1,'What is the capital of Australia?','Sydney','Melbourne','Canberra','Brisbane'),(7,1,'Which mountain range is the longest in the world?','Andes','Alps','Himalayas','Rockies'),(8,1,'What is the hottest continent on Earth?','Africa','Australia','South America','Asia'),(9,1,'Which country is known as the Land of Fire and Ice?','Iceland','Greenland','Norway','Canada'),(10,1,'What is the smallest country in the world by land area?','Vatican City','Monaco','Nauru','Liechtenstein'),(11,1,'What is the currency of Japan?','Yuan','Euro','Yen','Dollar'),(12,1,'Which river runs through the Grand Canyon?','Mississippi','Nile','Colorado','Amazon'),(13,1,'Which desert is the largest in the world?','Sahara','Arabian','Gobi','Kalahari'),(14,1,'Which city is known as the \"City of Love\"?','Rome','Paris','Venice','Florence'),(15,1,'Which country is the southernmost point in Africa?','South Africa','Namibia','Botswana','Zimbabwe'),(16,1,'What is the capital of Canada?','Toronto','Ottawa','Vancouver','Montreal'),(17,1,'Which country is known as the \"Land of a Thousand Lakes\"?','Sweden','Finland','Norway','Denmark'),(18,1,'What is the tallest mountain in Africa?','Mount Kilimanjaro','Mount Kenya','Mount Elgon','Mount Meru'),(19,1,'Which island is known as the \"Island of Gods\"?','Bali','Santorini','Maldives','Hawaii'),(20,1,'Which country has the longest coastline in the world?','Canada','United States','Australia','China'),(31,2,'What is the value of 8 ÷ 2(2 + 2)?','4','8','16','32'),(32,2,'What is the result of 5!?','120','240','360','480'),(33,2,'What is the square root of 100?','5','10','15','20'),(34,2,'What is the value of 3² + 4²?','9','16','25','49'),(35,2,'What is the solution to the equation: 2x - 1 = 5?','x = 3','x = 2','x = 4','x = 6'),(36,2,'What is the result of 2 × 3 × 4?','12','18','24','36'),(37,2,'What is the value of 10% of 200?','10','20','30','40'),(38,2,'What is the value of 5² - 3²?','16','20','24','28'),(39,2,'What is the result of 3 × (4 + 5)?','11','12','13','14'),(40,2,'What is the value of log₁₀(100)?','1','2','10','100'),(61,3,'Which car manufacturer produces the Aventador model?','Ferrari','Porsche','Lamborghini','Aston Martin'),(62,3,'What is the top speed of a Bugatti Veyron?','240 mph','255 mph','267 mph','280 mph'),(63,3,'Which country is known for the brand Bugatti?','Italy','Germany','France','United Kingdom'),(64,3,'What car manufacturer produces the Veyron model?','Bugatti','Koenigsegg','McLaren','Pagani'),(65,3,'What is the name of Ferrari\'s logo?','Prancing Horse','Flying B','Double-R','Spirit of Ecstasy'),(66,3,'What is the horsepower of a Porsche 911 Turbo S?','580','620','650','700'),(67,3,'Which car brand produces the Huracán model?','Ferrari','Porsche','Lamborghini','Aston Martin'),(68,3,'What does the GT in Ford Mustang GT stand for?','Grand Touring','Gran Turismo','Green Tech','Gentleman’s Tourer'),(69,3,'What car manufacturer produces the Urus model?','Audi','Lamborghini','BMW','Mercedes-Benz'),(70,3,'What is Bentley\'s mascot called?','Flying B','Double-R','Prancing Horse','Spirit of Ecstasy'),(71,3,'Which company manufactures the R8?','Audi','Porsche','BMW','Mercedes-Benz'),(72,3,'What car brand produces the GT-R model?','Nissan','Toyota','Honda','Mitsubishi'),(73,3,'What is the top speed of a McLaren Speedtail?','234 mph','250 mph','255 mph','270 mph'),(74,3,'What is Rolls-Royce\'s emblem called?','Spirit of Ecstasy','Double-R','Prancing Horse','Flying B'),(75,3,'Which car manufacturer produces the Chiron model?','Ferrari','Porsche','Bugatti','Lamborghini'),(76,3,'What is the horsepower of a Corvette Z06?','650','700','750','800'),(77,3,'What is the top speed of a Koenigsegg Jesko?','300 mph','305 mph','310 mph','315 mph'),(78,3,'What car brand produces the Evija model?','McLaren','Koenigsegg','Lotus','Pagani'),(79,3,'Which company manufactures the Valkyrie?','Aston Martin','Ferrari','Bugatti','Lamborghini'),(80,3,'What is the name of the Rolls-Royce hood ornament?','Spirit of Ecstasy','Flying B','Double-R','Prancing Horse'),(81,4,'What is the default sorting order in SQL?','Ascending','Descending','Random','No default order'),(82,4,'Command for data retrieval?','SELECT','INSERT','DELETE','UPDATE'),(83,4,'Purpose of GROUP BY?','Aggregating data','Filtering records','Sorting records','Joining tables'),(84,4,'Normalization form for repeating groups?','1NF','2NF','3NF','BCNF'),(85,4,'Command for adding a new row?','INSERT INTO','ADD ROW','INSERT ROW','ADD RECORD'),(86,4,'Purpose of WHERE clause?','Filtering records','Specifying columns','Sorting records','Joining tables'),(87,4,'Type of join for all rows?','FULL OUTER JOIN','INNER JOIN','LEFT JOIN','RIGHT JOIN'),(88,4,'Purpose of ORDER BY?','Sorting records','Filtering records','Aggregating data','Joining tables'),(89,4,'SQL keyword for changing table structure?','ALTER','MODIFY','UPDATE','CHANGE'),(90,4,'Purpose of ROLLBACK?','Undoing changes','Saving changes','Retrieving data','Updating records'),(91,4,'SQL keyword for removing duplicates?','DISTINCT','UNIQUE','DEDUPLICATE','REMOVE_DUPLICATES'),(92,4,'Command to save changes?','COMMIT','SAVE','UPDATE','APPLY'),(93,4,'Database model for tree-like structure?','Hierarchical','Relational','Network','Object-oriented'),(94,4,'Function for counting rows?','COUNT()','SUM()','AVG()','MAX()'),(95,4,'SQL command for data changes?','UPDATE','ALTER','MODIFY','CHANGE'),(96,4,'SQL statement for data deletion?','DELETE','REMOVE','ERASE','DROP'),(97,4,'Purpose of ORDER BY?','Sorting records','Filtering records','Aggregating data','Joining tables'),(98,4,'Changing table structure?','ALTER','MODIFY','UPDATE','CHANGE'),(99,4,'Purpose of ROLLBACK?','Undoing changes','Saving changes','Retrieving data','Updating records'),(100,4,'Which SQL command is used to delete a table?','DROP TABLE','DELETE TABLE','REMOVE TABLE','ERASE TABLE'),(101,5,'What is the capital of France?','Paris','London','Berlin','Rome'),(102,5,'Who painted the Mona Lisa?','Leonardo da Vinci','Pablo Picasso','Vincent van Gogh','Michelangelo'),(103,5,'What is the tallest mountain in the world?','Mount Everest','K2','Kangchenjunga','Lhotse'),(104,5,'What is the currency of Japan?','Yen','Euro','Dollar','Pound'),(105,5,'Which country is known as the Land of the Rising Sun?','Japan','China','India','Australia'),(106,5,'Who wrote the play \"Romeo and Juliet\"?','Shakespeare','Miller','Williams','Bernard Shaw'),(107,5,'What is the largest mammal in the world?','Blue whale','Elephant','Giraffe','Hippopotamus'),(108,5,'What is the largest desert in the world?','Sahara Desert','Arabian Desert','Gobi Desert','Kalahari Desert'),(109,5,'Who painted the ceiling of the Sistine Chapel?','Michelangelo','Leonardo da Vinci','Raphael','Donatello'),(110,5,'What is the chemical symbol for gold?','Au','Ag','Fe','Cu'),(111,6,'Which element has the highest electronegativity?','Fluorine','Oxygen','Chlorine','Nitrogen'),(112,6,'What is the chemical formula for acetic acid?','CH3COOH','H2O','CO2','NaCl'),(113,6,'Name of the process where a solid changes directly into a gas?','Sublimation','Evaporation','Condensation','Deposition'),(114,6,'Which element is the primary component of organic molecules?','Carbon','Hydrogen','Oxygen','Nitrogen'),(115,6,'What is the molecular formula of benzene?','C6H6','CH4','CO2','NaCl'),(116,6,'What is the chemical formula for hydrogen cyanide?','HCN','H2O','CO2','NaCl'),(117,6,'Which gas is commonly known as laughing gas?','Nitrous oxide','Carbon dioxide','Oxygen','Hydrogen'),(118,6,'What is the process of converting sugar into alcohol?','Fermentation','Oxidation','Distillation','Hydrolysis'),(119,6,'Which element is used in nuclear reactors as a control rod?','Boron','Uranium','Plutonium','Thorium'),(120,6,'What is the chemical formula for hydrogen peroxide?','H2O2','H2O','CO2','NaCl'),(121,7,'Which gland produces adrenaline?','Adrenal gland','Thyroid gland','Pituitary gland','Pancreas'),(122,7,'What hormone regulates blood sugar levels?','Insulin','Testosterone','Estrogen','Adrenaline'),(123,7,'Which part of the brain regulates the pituitary gland?','Hypothalamus','Cerebellum','Cerebrum','Brainstem'),(124,7,'What is the main function of the thyroid gland?','BMR','Produce insulin','Filter blood','Digest food'),(125,7,'Which chamber of the heart pumps blood to the rest of the body?','Left ventricle','Right atrium','Left atrium','Right ventricle'),(126,7,'hormone stimulating the production of red blood cells in the bone marrow','Insulin','Thyroxine','Adrenaline','Erythropoietin'),(127,7,'Which valve separates the left atrium from the left ventricle?','Mitral valve','Tricuspid valve','Aortic valve','Pulmonary valve'),(128,7,'What hormone is released by the ovaries?','Estrogen','Testosterone','Insulin','Adrenaline'),(129,7,'Which gland is responsible for producing melatonin?','Pineal gland','Adrenal gland','Thyroid gland','Pituitary gland'),(130,7,'hormone produced by the pancreas to regulate blood sugar levels?','Insulin','Thyroxine','Cortisol','Glucagon');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `quiz_id` int NOT NULL,
  `quiz_name` varchar(50) DEFAULT NULL,
  `no_of_Qns` int DEFAULT NULL,
  `difficulty` enum('easy','medium','hard') DEFAULT NULL,
  PRIMARY KEY (`quiz_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'GEOGRAPHY',20,'easy'),(2,'MATHS',10,'medium'),(3,'CARS',20,'easy'),(4,'DBMS',20,'easy'),(5,'GENERAL KNOWLEDGE',10,'easy'),(6,'CHEMISTRY',10,'medium'),(7,'BIOLOGY',10,'easy'),(8,'phone',20,'easy');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `username` varchar(15) DEFAULT NULL,
  `email_id` varchar(50) DEFAULT NULL,
  `phone_no` bigint DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (2345,'john doe','john.doe@example.com',1234567890,'password1'),(2346,'jane smith','jane.smith@example.com',9876543210,'password2'),(2347,'mike jackson','mike.jackson@example.com',5551234567,'password3'),(2348,'sarah wilson','sarah.wilson@example.com',4445556666,'password4'),(2349,'chris adams','chris.adams@example.com',7778889999,'password5'),(2350,'emily taylor','emily.taylor@example.com',1112223333,'password6'),(2351,'david miller','david.miller@example.com',9998887777,'password7'),(2352,'lisa brown','lisa.brown@example.com',3332221111,'password8'),(2353,'kevin campbell','kevin.campbell@example.com',6667778888,'password9'),(2354,'amanda roberts','amanda.roberts@example.com',2223334444,'password10'),(9842,'Ajin Joy','ajin@gmail.com',468374839,'fdbfjkdskjf'),(9847,'GEO CYRIAC','geocyriac@gmail.com',4632697832,'password');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `email_check` BEFORE INSERT ON `user` FOR EACH ROW begin 
if EXISTS(SELECT 1 FROM user where email_id=new.email_id) then
signal sqlstate '45000' set message_text='This email id is already registered ';
end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `userattempt`
--

DROP TABLE IF EXISTS `userattempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userattempt` (
  `attempt_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `quiz_id` int DEFAULT NULL,
  `score` int DEFAULT NULL,
  `percentage` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`attempt_id`),
  KEY `user_id` (`user_id`),
  KEY `quiz_id` (`quiz_id`),
  CONSTRAINT `userattempt_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `userattempt_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userattempt`
--

LOCK TABLES `userattempt` WRITE;
/*!40000 ALTER TABLE `userattempt` DISABLE KEYS */;
INSERT INTO `userattempt` VALUES (1,2345,1,16,80.00),(2,2345,2,4,40.00),(3,2345,3,17,85.00),(4,2345,4,15,75.00),(5,2345,6,10,100.00),(6,2345,7,6,60.00),(7,2346,1,15,75.00),(8,2346,2,6,60.00),(9,2346,5,7,70.00),(10,2346,4,15,75.00),(11,2346,6,5,50.00),(12,2346,7,7,70.00),(13,2346,3,9,45.00),(14,2347,1,14,70.00),(15,2347,2,5,50.00),(16,2347,5,7,70.00),(17,2347,4,12,60.00),(18,2347,6,7,70.00),(19,2347,7,8,80.00),(20,2348,1,16,80.00),(21,2348,2,7,70.00),(22,2348,5,9,90.00),(23,2348,4,17,85.00),(24,2348,6,8,80.00),(25,2348,7,8,80.00),(26,2348,3,17,85.00),(27,2349,1,18,90.00),(28,2349,2,8,80.00),(29,2349,5,9,90.00),(30,2349,4,18,90.00),(31,2349,6,7,70.00),(32,2349,7,8,80.00),(33,2349,3,20,100.00),(34,2350,1,11,55.00),(35,2350,2,3,30.00),(36,2350,5,6,60.00),(37,2350,4,12,60.00),(38,2350,6,4,40.00),(39,2350,7,3,30.00),(40,2350,3,11,55.00),(41,2351,1,13,65.00),(46,2351,5,7,70.00),(47,2351,4,10,50.00),(48,2351,7,3,30.00),(49,2351,3,19,95.00),(50,2352,5,9,90.00),(51,2352,4,16,80.00),(52,2352,7,6,60.00),(53,2352,3,19,95.00),(54,2352,1,13,65.00),(55,2352,6,5,50.00),(56,2352,2,6,60.00),(57,2353,5,6,60.00),(58,2353,4,19,95.00),(59,2353,7,10,100.00),(60,2353,3,19,95.00),(61,2353,1,13,65.00),(62,2352,6,7,70.00),(63,2352,2,7,70.00),(64,2354,5,4,40.00),(65,2354,4,10,50.00),(66,2354,7,6,60.00),(67,2354,3,15,75.00),(68,2354,1,11,55.00),(69,2354,6,5,50.00),(70,2354,2,6,60.00),(71,2345,4,8,40.00),(72,2345,3,2,10.00),(73,2345,3,1,5.00),(74,2350,2,2,20.00),(75,2353,2,2,20.00),(76,2354,4,0,0.00),(77,2354,4,0,0.00),(78,9842,7,7,70.00),(79,9842,3,2,10.00),(81,9842,3,1,5.00),(82,9842,5,NULL,NULL),(83,9847,5,2,20.00);
/*!40000 ALTER TABLE `userattempt` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `calcPercentage` BEFORE INSERT ON `userattempt` FOR EACH ROW begin
declare total_qns int;
select no_of_Qns from quiz where quiz_id=new.quiz_id into total_qns;
set new.percentage=new.score/total_qns*100;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping routines for database 'dbmsproject'
--
/*!50003 DROP PROCEDURE IF EXISTS `giveAnswer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `giveAnswer`(in us_id int,in qid int,in an varchar(30))
begin
declare ans varchar(30);
declare id int;
insert into attemptbackup values(us_id,qid,an);
select qn_id into id from questions where qn_id=qid ;
select correct into ans from answers where correct=an and answers.qn_id=id ;
if id is not null and ans is not null then
update calcScore set score=score+1
where user_id=us_id;
signal sqlstate "45000" set message_text="Congatulations!!,You got it right";
else signal sqlstate "45000" set message_text="Sorry,Wrong answer";
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showLeaderboard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `showLeaderboard`(in quizid int)
begin
select u.user_id,username,max(a.score) as score,max(a.percentage) as percentage
from user u join userAttempt a on u.user_id=a.user_id
join quiz q on q.quiz_id=a.quiz_id
where q.quiz_id=quizid
group by u.user_id,u.username
order by score desc,percentage desc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `showTopics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `showTopics`()
begin
select * from quiz;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `startQuiz` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `startQuiz`(in uid int,in qid int )
begin
declare id int;
declare quid int;
select user_id from user where user_id=uid into id;
select quiz_id from quiz where quiz_id=qid into quid;
if id is null or quid is null then
signal sqlstate "45000" set message_text="Invalid user id or quiz id";
else
insert into calcScore(user_id,quiz_id)values(id,qid); 
select qn_id,question,option_a,option_b,option_c,option_d
from questions q
where q.quiz_id=qid;
end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `stopQuiz` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `stopQuiz`(in us_id int,in qz_id int)
begin 
declare point int;
select score into point from calcScore where user_id=us_id and quiz_id=qz_id;
insert into userAttempt(user_id,quiz_id,score)values(us_id,qz_id,point);
select * from  calcScore where user_id=us_id;
delete from calcScore 
where user_id=us_id and quiz_id=qz_id;
delete from attemptbackup
where user_id=us_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userStats` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `userStats`(in id int)
begin
select u.user_id,username, avg(percentage) as "Avg Percentage"
from userAttempt a
join user u on u.user_id=a.user_id
where u.user_id=id
group by u.user_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-05  0:59:33
