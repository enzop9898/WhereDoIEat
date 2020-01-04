-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: wheredoieat
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Dumping data for table `attivita`
--

LOCK TABLES `attivita` WRITE;
/*!40000 ALTER TABLE `attivita` DISABLE KEYS */;
INSERT INTO `attivita` VALUES (1,'El pampa Sosa','Fisciano',13,23,'Mercoledi','via bomber','39340412122',200,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3025.9426235718774!2d14.769572615021944!3d40.67523314780173!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc239baaf7187%3A0x9cae3635339ffee0!2sSalerno%20Stazione!5e0!3m2!1sit!2sit!4v1577092641285!5m2!1sit!2sit','amecuomo'),(2,'Numero1','Baronissi',19,24,'Lunedi','Via numero 1','123213123',90,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3021.4536055228923!2d14.79028741502506!3d40.77404084175542!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc5a5fb14b909%3A0x38886a101e6824ee!2sFisciano%20(Universit%C3%A0)!5e0!3m2!1sit!2sit!4v1577093098487!5m2!1sit!2sit','toni9'),(3,'El pocho di Salerno','Salerno',19,24,'Lunedi','via Roma','4324322',110,'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3022.6707045574185!2d14.76813671502418!3d40.74727084339462!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x133bc43e1a9c404b%3A0x7f2d39e1b567aa1!2sBaronissi%20Municipio!5e0!3m2!1sit!2sit!4v1577093153931!5m2!1sit!2sit','amecuomo');
/*!40000 ALTER TABLE `attivita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
INSERT INTO `foto` VALUES ('fotodb/bruschetta.jpg',1),('fotodb/ristorante-da-kico.jpg',1),('fotodb/img-ristoranti.jpg',2),('fotodb/la-sala.jpg',2),('fotodb/pizza.jpg',2),('fotodb/ristorante-servizio.jpg',2),('fotodb/testata-ristorante.jpg',2),('fotodb/imagesILV4I6JR.jpg',3),('fotodb/Montagna-Verde-Ristorante.jpg',3),('fotodb/ristorante-firenze.jpg',3),('fotodb/ristorante.jpg',3),('fotodb/ristorante1.jpg',3);
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES ('amecuomo','Amedeo','Cuomo','amedeo@bestemmio.com','393452134567','Salerno',2,'Baronissi','Mistersessa69'),('elcardinero','Cruz','Cruz','elcardinero@gmail.com','393404181948','Buenos Aires',1,'Buenos Aires','Mistersessa69'),('ElPampa','Sosa','Sosa','elpampasosa@gmail.com','393404181948','Buenos Aires',1,'Buenos Aires','Mistersessa69'),('elpojo','Vittorio','Scarano','vitsca@gmail.com','393404181948','Salerno',2,'Baronissi','Vittorio9'),('gerdenis','German','Denis','eltanke@gmail.com','393404181948','Buenos Aires',1,'Buenos Aires','Mistersessa69'),('imperatore','Adriano','Adriano','imperatore10@gmail.com','393478923456','Rio De Janeiro',1,'Rio','Mistersessa69'),('tanucc','Gaetano','Mauro','g.mauro14@studenti.unisa.it','393404181948','Salerno',1,'Fisciano','mistersessa'),('tanucc33','Gaetano','De Lucia','g.maur44o14@studenti.unisa.it','3404181948','Salerno',1,'Fisciano','mistersessa'),('toni9','Luca','Toni','toniluca9@gmail.com','393453456789','Firenze',2,'casigliolo','Mistersessa69');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `piatti`
--

LOCK TABLES `piatti` WRITE;
/*!40000 ALTER TABLE `piatti` DISABLE KEYS */;
INSERT INTO `piatti` VALUES (1,'gnocchi al forno','gnocchi cotti al forno  per 10 minuti',1),(2,'pizza integrale','pizza con farina integrale',2),(3,'pizza','pizza cotta nel forno a legna',2),(4,'pizza','pizza cotta nel forno a legna',1),(5,'pizza','pizza cotta nel forno a legna',3),(6,'risotto','Risotto tipico della zona con funghi paesani',1),(7,'tagliata di carne','carne servita con contorni tipici della zona',3);
/*!40000 ALTER TABLE `piatti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `preferiti`
--

LOCK TABLES `preferiti` WRITE;
/*!40000 ALTER TABLE `preferiti` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferiti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prenotazione`
--

LOCK TABLES `prenotazione` WRITE;
/*!40000 ALTER TABLE `prenotazione` DISABLE KEYS */;
INSERT INTO `prenotazione` VALUES (1,'2020-03-02',1300,12,'tanucc',1),(2,'2020-03-04',1330,2,'tanucc',1),(3,'2020-03-02',1300,13,'tanucc',1),(4,'2020-03-04',2000,20,'tanucc',3);
/*!40000 ALTER TABLE `prenotazione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `recensione`
--

LOCK TABLES `recensione` WRITE;
/*!40000 ALTER TABLE `recensione` DISABLE KEYS */;
INSERT INTO `recensione` VALUES (1,1,'ooodooooooooooooooooooooooo     o o o oo  oo','elcardinero',1),(2,5,'ciao didod idiv nsaivoans ija ','ElPampa',2),(3,1,'asdfsf safsd gfdsg','gerdenis',2),(4,2,'sfsdfsdfasfdasfdasf','ElPampa',1),(5,5,'bello bello bello','tanucc',3);
/*!40000 ALTER TABLE `recensione` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `suggerimenti`
--

LOCK TABLES `suggerimenti` WRITE;
/*!40000 ALTER TABLE `suggerimenti` DISABLE KEYS */;
INSERT INTO `suggerimenti` VALUES (22,'recensioni non funzionanti',' jvhsdkvbhjsvbjs vbsvbsdk vhsdkjvbhdj fv svsd fsvd fsd bsdfb sdfb dsfbds b s dfb sdbdfb sdb sdbd','tanucc'),(24,'problema home',' jvhsdkvbhjsvbjs vbsvbsdk vhsdkjvbhdj fv svsd fsvd fsd bsdfb sdfb dsfbds b s dfb sdbdfb sdb sdbd ds fasg ag ds gsdhsh sdh shbsv dfsb sdfb sdfb sfdbfsdbfdsb sfdbsfbsdfbsdfbsdf b','tanucc'),(26,'pizzerie non presenti','non ci sono pizzerie sul sito','tanucc'),(27,'ciao','il problema Ã¨ questo','tanucc');
/*!40000 ALTER TABLE `suggerimenti` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-04 20:26:29
