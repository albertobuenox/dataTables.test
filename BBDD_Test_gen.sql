-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: BBDD_Test
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.22.04.1

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
-- Table structure for table `Personas`
--

DROP TABLE IF EXISTS `Personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personas` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `CodigoPostal` varchar(10) DEFAULT NULL,
  `Direccion` varchar(100) DEFAULT NULL,
  `Sexo` enum('M','F','Otro') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personas`
--

LOCK TABLES `Personas` WRITE;
/*!40000 ALTER TABLE `Personas` DISABLE KEYS */;
INSERT INTO `Personas` VALUES (1,'Carlos','García','28001','Calle Mayor 10','M'),(2,'María','López','08001','Avenida Diagonal 15','F'),(3,'Luis','Martínez','29002','Calle Larios 22','M'),(4,'Ana','Rodríguez','28013','Gran Vía 30','F'),(5,'Pedro','Fernández','50001','Calle Alfonso 3','M'),(6,'Laura','Gómez','15003','Calle Real 45','F'),(7,'José','Hernández','41001','Avenida de la Constitución 11','M'),(8,'Elena','Jiménez','03003','Paseo de la Explanada 7','F'),(9,'Juan','Ruiz','33002','Calle Uría 29','M'),(10,'Marta','Díaz','46001','Plaza del Ayuntamiento 6','F'),(11,'Rafael','Moreno','28008','Calle Princesa 18','M'),(12,'Isabel','Muñoz','14001','Avenida de América 20','F'),(13,'Fernando','Álvarez','52006','Calle Marítima 8','M'),(14,'Carmen','Romero','30003','Gran Vía Escultor Salzillo 12','F'),(15,'Sergio','Alonso','28004','Calle Fuencarral 16','M'),(16,'Patricia','Vargas','39003','Calle Burgos 34','F'),(17,'Manuel','Santos','28005','Calle Toledo 6','M'),(18,'Alicia','Castillo','29010','Paseo de Sancha 9','F'),(19,'Andrés','Iglesias','41013','Calle Betis 22','M'),(20,'Sofía','Ramos','28006','Calle Serrano 44','F'),(21,'Gustavo','Sosa','52005','Calle del Carmen 10','M'),(22,'Verónica','Flores','28007','Calle Narváez 12','F'),(23,'Jorge','Peña','30008','Avenida del Río Segura 19','M'),(24,'Clara','Reyes','28010','Calle Velázquez 31','F'),(25,'Vicente','Cabrera','29016','Paseo de Reding 5','M'),(26,'Lorena','Campos','41005','Avenida de la Palmera 1','F'),(27,'Enrique','Vega','08036','Calle Balmes 23','M'),(28,'Rosa','Sánchez','28011','Calle de Carabanchel 12','F'),(29,'David','Mendoza','46005','Avenida del Puerto 10','M'),(30,'Silvia','Cruz','29013','Calle Martínez Maldonado 20','F'),(31,'Ramón','Delgado','15008','Ronda de Outeiro 15','M'),(32,'Nuria','Ferrer','28012','Plaza Lavapiés 25','F'),(33,'Daniel','Blanco','08021','Calle Muntaner 55','M'),(34,'Raquel','Ortega','29004','Calle del Puerto 3','F'),(35,'Alberto','Marín','41004','Calle Mateos Gago 8','M'),(36,'Beatriz','Navarro','30004','Avenida Libertad 16','F'),(37,'Cristian','Silva','28013','Calle Montera 6','M'),(38,'Gabriela','Roldán','29002','Calle Larios 32','F'),(39,'Pablo','Pérez','08013','Calle Marina 26','M'),(40,'Mercedes','Pastor','46002','Plaza Redonda 14','F'),(41,'Esteban','Herrera','28003','Calle Bravo Murillo 2','M'),(42,'Luisa','Carmona','29005','Calle Nueva 7','F'),(43,'Ricardo','Vidal','28015','Calle Meléndez Valdés 15','M'),(44,'Teresa','Lara','30005','Calle del Carmen 9','F'),(45,'Héctor','Domínguez','15004','Calle Real 18','M'),(46,'Amparo','Nieto','28018','Calle de la Oca 2','F'),(47,'Francisco','Gil','46004','Calle Ruzafa 8','M'),(48,'Inés','Esteban','30006','Calle Correos 3','F'),(49,'Sebastián','Pardo','28016','Avenida Alberto Alcocer 10','M'),(50,'Julia','Serrano','15009','Calle Orzán 12','F'),(51,'Álvaro','Mena','28020','Avenida General Perón 22','M'),(52,'Mónica','Rico','28002','Calle de Goya 40','F'),(53,'Tomás','Lorenzo','41002','Calle Feria 11','M'),(54,'Paula','Cano','29012','Calle San Juan 1','F'),(55,'Joaquín','Esparza','28001','Calle Mayor 22','M'),(56,'Lidia','Molina','30007','Calle Trapería 15','F'),(57,'Cristina','Soto','28008','Calle Princesa 9','F'),(58,'Oscar','Torres','08005','Ronda de Sant Pere 5','M'),(59,'Natalia','Ribas','15007','Ronda de Nelle 10','F'),(60,'Hugo','García','28013','Gran Vía 12','M'),(61,'Blanca','González','29011','Calle Eugenio Gross 7','F'),(62,'Mario','Saavedra','46008','Calle de Colón 11','M'),(63,'Eva','Barrios','08003','Calle de la Princesa 2','F'),(64,'Mateo','Martí','28003','Calle Quevedo 18','M'),(65,'Ángela','Fuentes','52004','Avenida de Andalucía 5','F'),(66,'Gonzalo','Giménez','29014','Calle Héroe de Sostoa 10','M'),(67,'Luz','Valero','41012','Calle Torneo 14','F'),(68,'Roberto','Paredes','28017','Calle Alcalá 55','M'),(69,'Yolanda','Pérez','46010','Avenida de Blasco Ibáñez 6','F'),(70,'Felipe','Benítez','08015','Calle Diputación 22','M'),(71,'Rocío','Bravo','30001','Calle Salzillo 11','F'),(72,'Nicolás','Quintana','28009','Calle Ibiza 16','M'),(73,'Marina','Acosta','41010','Calle Pagés del Corro 7','F'),(74,'Edgar','Montes','08029','Calle Comte Borrell 5','M'),(75,'Virginia','Zamora','15006','Calle San Andrés 19','F');
/*!40000 ALTER TABLE `Personas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 10:24:29
