-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: icx0p32.cu5so1xdpnd5.eu-west-1.rds.amazonaws.com    Database: ICX0_P3_7
-- ------------------------------------------------------
-- Server version	8.0.23

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `ALERGENO`
--

DROP TABLE IF EXISTS `ALERGENO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALERGENO` (
  `idAler` varchar(5) NOT NULL,
  `nomAler` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idAler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALERGENO`
--

LOCK TABLES `ALERGENO` WRITE;
/*!40000 ALTER TABLE `ALERGENO` DISABLE KEYS */;
INSERT INTO `ALERGENO` VALUES ('1','Altramuces'),('10','Lactosa'),('11','Huevo'),('12','Soja'),('13','Frutos secos'),('14','Cacahuetes'),('2','Apio'),('3','Moluscos'),('4','Sésamo'),('5','Gluten'),('6','Pescado'),('7','Sulfitos'),('8','Mostaza'),('9','Crustáceos');
/*!40000 ALTER TABLE `ALERGENO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ALERGENOS_PRODUCTO`
--

DROP TABLE IF EXISTS `ALERGENOS_PRODUCTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALERGENOS_PRODUCTO` (
  `idProAlPr` varchar(5) NOT NULL,
  `alerAlPr` varchar(5) NOT NULL,
  PRIMARY KEY (`idProAlPr`,`alerAlPr`),
  KEY `alerAlPr` (`alerAlPr`),
  CONSTRAINT `ALERGENOS_PRODUCTO_ibfk_1` FOREIGN KEY (`idProAlPr`) REFERENCES `PRODUCTO` (`idProd`),
  CONSTRAINT `ALERGENOS_PRODUCTO_ibfk_2` FOREIGN KEY (`alerAlPr`) REFERENCES `ALERGENO` (`idAler`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALERGENOS_PRODUCTO`
--

LOCK TABLES `ALERGENOS_PRODUCTO` WRITE;
/*!40000 ALTER TABLE `ALERGENOS_PRODUCTO` DISABLE KEYS */;
INSERT INTO `ALERGENOS_PRODUCTO` VALUES ('5','5'),('1','9');
/*!40000 ALTER TABLE `ALERGENOS_PRODUCTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CATEGORIA`
--

DROP TABLE IF EXISTS `CATEGORIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CATEGORIA` (
  `idCat` varchar(5) NOT NULL,
  `nomCat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORIA`
--

LOCK TABLES `CATEGORIA` WRITE;
/*!40000 ALTER TABLE `CATEGORIA` DISABLE KEYS */;
INSERT INTO `CATEGORIA` VALUES ('1','Aceites y vinagres'),('10','Embutidos'),('11','Especies'),('12','Productos Lácteos'),('13','Ovoproductos'),('14','Pan y Bollería'),('15',';Postres'),('16','Harinas'),('17','Salsas'),('18','Semielaborados'),('19','Sin Gluten'),('2','Carnes y Aves'),('20','Sin lactosa'),('3','Bebidas'),('4','Cafés'),('5','Elaborados'),('6','Fruta y Verdura'),('7','Pescados Y Mariscos'),('8','Conservas'),('9','Elaborados');
/*!40000 ALTER TABLE `CATEGORIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMANDA`
--

DROP TABLE IF EXISTS `COMANDA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMANDA` (
  `idCo` varchar(5) NOT NULL,
  `fechaCo` date DEFAULT NULL,
  `mesaCo` int unsigned DEFAULT NULL,
  `horaCo` time DEFAULT NULL,
  `comensCo` int unsigned DEFAULT NULL,
  `ticketCo` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idCo`),
  UNIQUE KEY `UC_comanda` (`fechaCo`,`horaCo`,`mesaCo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMANDA`
--

LOCK TABLES `COMANDA` WRITE;
/*!40000 ALTER TABLE `COMANDA` DISABLE KEYS */;
INSERT INTO `COMANDA` VALUES ('1','2021-11-15',1,'14:05:00',2,1),('2','2021-11-15',2,'14:10:00',3,2),('3','2021-11-15',3,'14:11:00',2,3);
/*!40000 ALTER TABLE `COMANDA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMANDA_ELABORADOS`
--

DROP TABLE IF EXISTS `COMANDA_ELABORADOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMANDA_ELABORADOS` (
  `idCoComElab` varchar(5) NOT NULL,
  `idProdComElab` varchar(5) NOT NULL,
  `cantComElab` int unsigned DEFAULT NULL,
  `pvpComElab` decimal(12,2) DEFAULT NULL,
  `ivaComElab` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idCoComElab`,`idProdComElab`),
  KEY `idProdComElab` (`idProdComElab`),
  CONSTRAINT `COMANDA_ELABORADOS_ibfk_1` FOREIGN KEY (`idCoComElab`) REFERENCES `COMANDA` (`idCo`),
  CONSTRAINT `COMANDA_ELABORADOS_ibfk_2` FOREIGN KEY (`idProdComElab`) REFERENCES `PRODUCTO` (`idProd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMANDA_ELABORADOS`
--

LOCK TABLES `COMANDA_ELABORADOS` WRITE;
/*!40000 ALTER TABLE `COMANDA_ELABORADOS` DISABLE KEYS */;
INSERT INTO `COMANDA_ELABORADOS` VALUES ('1','5',2,0.00,0);
/*!40000 ALTER TABLE `COMANDA_ELABORADOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMANDA_PLATO`
--

DROP TABLE IF EXISTS `COMANDA_PLATO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMANDA_PLATO` (
  `idCoPla` varchar(5) NOT NULL,
  `idPlPla` varchar(5) NOT NULL,
  `cantCoPla` int unsigned DEFAULT NULL,
  `pvpCoPla` decimal(12,2) DEFAULT NULL,
  `ivaCoPl` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`idCoPla`,`idPlPla`),
  KEY `idPlPla` (`idPlPla`),
  CONSTRAINT `COMANDA_PLATO_ibfk_1` FOREIGN KEY (`idCoPla`) REFERENCES `COMANDA` (`idCo`),
  CONSTRAINT `COMANDA_PLATO_ibfk_2` FOREIGN KEY (`idPlPla`) REFERENCES `PLATO` (`idPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMANDA_PLATO`
--

LOCK TABLES `COMANDA_PLATO` WRITE;
/*!40000 ALTER TABLE `COMANDA_PLATO` DISABLE KEYS */;
INSERT INTO `COMANDA_PLATO` VALUES ('1','1',2,30.00,0.63),('1','2',2,20.00,0.42),('2','1',2,30.00,0.63),('2','2',1,10.00,0.21);
/*!40000 ALTER TABLE `COMANDA_PLATO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPRAS_PRODUCTO`
--

DROP TABLE IF EXISTS `COMPRAS_PRODUCTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPRAS_PRODUCTO` (
  `idProdComProd` varchar(5) NOT NULL,
  `nifProvComProd` varchar(10) NOT NULL,
  `fechaComProd` date NOT NULL,
  `cantComProd` int unsigned DEFAULT NULL,
  `preComProd` decimal(12,2) DEFAULT NULL,
  `ivaComProd` decimal(12,2) DEFAULT NULL,
  `caducComProd` date DEFAULT NULL,
  PRIMARY KEY (`idProdComProd`,`nifProvComProd`),
  KEY `nifProvComProd` (`nifProvComProd`),
  CONSTRAINT `COMPRAS_PRODUCTO_ibfk_1` FOREIGN KEY (`idProdComProd`) REFERENCES `PRODUCTO` (`idProd`),
  CONSTRAINT `COMPRAS_PRODUCTO_ibfk_2` FOREIGN KEY (`nifProvComProd`) REFERENCES `PROVEEDOR` (`nifProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPRAS_PRODUCTO`
--

LOCK TABLES `COMPRAS_PRODUCTO` WRITE;
/*!40000 ALTER TABLE `COMPRAS_PRODUCTO` DISABLE KEYS */;
INSERT INTO `COMPRAS_PRODUCTO` VALUES ('1','A60177623','2021-11-10',100,120.00,25.20,'2021-11-13'),('2','B65639155','2021-11-09',300,20.00,0.42,'2021-11-23'),('3','B65639155','2021-11-09',200,10.00,0.21,'2021-11-14');
/*!40000 ALTER TABLE `COMPRAS_PRODUCTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DETALLE_DONACION`
--

DROP TABLE IF EXISTS `DETALLE_DONACION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DETALLE_DONACION` (
  `fechaDonaDetDona` date NOT NULL,
  `lineaDona` int unsigned NOT NULL,
  `idProdDetDona` varchar(5) NOT NULL,
  `cantDetDona` int unsigned DEFAULT NULL,
  `obserDetDona` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`fechaDonaDetDona`,`lineaDona`,`idProdDetDona`),
  KEY `idProdDetDona` (`idProdDetDona`),
  CONSTRAINT `DETALLE_DONACION_ibfk_1` FOREIGN KEY (`fechaDonaDetDona`) REFERENCES `DONACIONES` (`fechaDona`),
  CONSTRAINT `DETALLE_DONACION_ibfk_2` FOREIGN KEY (`idProdDetDona`) REFERENCES `PRODUCTO` (`idProd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DETALLE_DONACION`
--

LOCK TABLES `DETALLE_DONACION` WRITE;
/*!40000 ALTER TABLE `DETALLE_DONACION` DISABLE KEYS */;
INSERT INTO `DETALLE_DONACION` VALUES ('2021-11-12',1,'2',5,'Vencen mañana'),('2021-11-22',1,'3',7,'N/A'),('2021-11-22',2,'4',1,'No se usaron');
/*!40000 ALTER TABLE `DETALLE_DONACION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DONACIONES`
--

DROP TABLE IF EXISTS `DONACIONES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DONACIONES` (
  `fechaDona` date NOT NULL,
  PRIMARY KEY (`fechaDona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DONACIONES`
--

LOCK TABLES `DONACIONES` WRITE;
/*!40000 ALTER TABLE `DONACIONES` DISABLE KEYS */;
INSERT INTO `DONACIONES` VALUES ('2021-11-12'),('2021-11-22');
/*!40000 ALTER TABLE `DONACIONES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ELABORADOS`
--

DROP TABLE IF EXISTS `ELABORADOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ELABORADOS` (
  `idProdElab` varchar(5) NOT NULL,
  `pvp` decimal(12,2) DEFAULT NULL,
  `iva` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`idProdElab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ELABORADOS`
--

LOCK TABLES `ELABORADOS` WRITE;
/*!40000 ALTER TABLE `ELABORADOS` DISABLE KEYS */;
INSERT INTO `ELABORADOS` VALUES ('5',NULL,NULL);
/*!40000 ALTER TABLE `ELABORADOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INGREDIENTE`
--

DROP TABLE IF EXISTS `INGREDIENTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INGREDIENTE` (
  `idProdIngr` varchar(5) NOT NULL,
  `conservIngr` varchar(80) DEFAULT NULL,
  `caducidadIngrediente` date DEFAULT NULL,
  PRIMARY KEY (`idProdIngr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INGREDIENTE`
--

LOCK TABLES `INGREDIENTE` WRITE;
/*!40000 ALTER TABLE `INGREDIENTE` DISABLE KEYS */;
INSERT INTO `INGREDIENTE` VALUES ('1','Congelador',NULL),('2','Temperatura Ambiente',NULL),('3','Temperatura Ambiente',NULL),('4','Temperatura Ambiente',NULL);
/*!40000 ALTER TABLE `INGREDIENTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INGREDIENTE_PLATO`
--

DROP TABLE IF EXISTS `INGREDIENTE_PLATO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `INGREDIENTE_PLATO` (
  `idPlatoInPl` varchar(5) NOT NULL,
  `idProdInPl` varchar(5) NOT NULL,
  `cantBrutaInPl` decimal(12,2) DEFAULT NULL,
  `cantNetaInPl` decimal(12,2) DEFAULT NULL,
  `uniIngrPlato` varchar(20) DEFAULT NULL,
  `Porcentaje_Merma` int DEFAULT NULL,
  PRIMARY KEY (`idPlatoInPl`,`idProdInPl`),
  KEY `idProdInPl` (`idProdInPl`),
  CONSTRAINT `INGREDIENTE_PLATO_ibfk_1` FOREIGN KEY (`idPlatoInPl`) REFERENCES `PLATO` (`idPlato`),
  CONSTRAINT `INGREDIENTE_PLATO_ibfk_2` FOREIGN KEY (`idProdInPl`) REFERENCES `PRODUCTO` (`idProd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INGREDIENTE_PLATO`
--

LOCK TABLES `INGREDIENTE_PLATO` WRITE;
/*!40000 ALTER TABLE `INGREDIENTE_PLATO` DISABLE KEYS */;
INSERT INTO `INGREDIENTE_PLATO` VALUES ('1','1',10.00,10.00,'Unidades',NULL),('1','2',1.00,1.00,'Unidades',NULL),('1','5',1.00,1.00,'Unidades',NULL),('2','3',1.00,1.00,'Unidades',NULL),('2','4',1.00,1.00,'Unidades',NULL);
/*!40000 ALTER TABLE `INGREDIENTE_PLATO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PLATO`
--

DROP TABLE IF EXISTS `PLATO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PLATO` (
  `idPlato` varchar(5) NOT NULL,
  `nomPlato` varchar(45) DEFAULT NULL,
  `idTipoPlatoPlato` varchar(5) NOT NULL,
  `elaboPlato` varchar(200) DEFAULT NULL,
  `pvpPlato` decimal(12,2) DEFAULT NULL,
  `ivaPlato` decimal(12,2) DEFAULT NULL,
  `enMenuPlato` tinyint DEFAULT NULL,
  PRIMARY KEY (`idPlato`),
  KEY `idTipoPlatoPlato` (`idTipoPlatoPlato`),
  CONSTRAINT `PLATO_ibfk_1` FOREIGN KEY (`idTipoPlatoPlato`) REFERENCES `TIPO` (`idTipoPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLATO`
--

LOCK TABLES `PLATO` WRITE;
/*!40000 ALTER TABLE `PLATO` DISABLE KEYS */;
INSERT INTO `PLATO` VALUES ('1','Gambas al ajillo','2','Calentar las gambas en sartén al ajillo',12.50,2.60,1),('2','Ensalada de tomate','1','Cortar tomates y cebolla',3.50,0.73,1);
/*!40000 ALTER TABLE `PLATO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCTO`
--

DROP TABLE IF EXISTS `PRODUCTO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PRODUCTO` (
  `idProd` varchar(5) NOT NULL,
  `nomProd` varchar(45) DEFAULT NULL,
  `uniProd` enum('Kilogramos','Litros','Unidades') DEFAULT NULL,
  `alertaStockProd` int DEFAULT NULL,
  `idCatProd` varchar(5) NOT NULL,
  `Stock` int DEFAULT NULL,
  `Precio_Compra` decimal(12,2) DEFAULT NULL,
  PRIMARY KEY (`idProd`),
  KEY `idCatProd` (`idCatProd`),
  CONSTRAINT `PRODUCTO_ibfk_1` FOREIGN KEY (`idCatProd`) REFERENCES `CATEGORIA` (`idCat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCTO`
--

LOCK TABLES `PRODUCTO` WRITE;
/*!40000 ALTER TABLE `PRODUCTO` DISABLE KEYS */;
INSERT INTO `PRODUCTO` VALUES ('1','Gambas','Kilogramos',10,'7',NULL,NULL),('2','Ajo','Unidades',10,'6',NULL,NULL),('3','Tomates','Unidades',5,'6',NULL,NULL),('4','Cebolla','Unidades',5,'6',NULL,NULL),('5','Pan Integral','Unidades',20,'14',NULL,NULL);
/*!40000 ALTER TABLE `PRODUCTO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROVEEDOR`
--

DROP TABLE IF EXISTS `PROVEEDOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROVEEDOR` (
  `nifProv` varchar(10) NOT NULL,
  `nomProv` varchar(45) DEFAULT NULL,
  `nomContProv` varchar(45) DEFAULT NULL,
  `telsProv` varchar(45) DEFAULT NULL,
  `dirProv` varchar(80) DEFAULT NULL,
  `mailProv` varchar(45) DEFAULT NULL,
  `webProv` varchar(45) DEFAULT NULL,
  `codRegCliProv` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nifProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROVEEDOR`
--

LOCK TABLES `PROVEEDOR` WRITE;
/*!40000 ALTER TABLE `PROVEEDOR` DISABLE KEYS */;
INSERT INTO `PROVEEDOR` VALUES ('A60177623','BOU Cafe','C. Gotor','902305352 ','Calle Rao Ara 8, 50014, Zaragoza','info@albertopolo.com','https://albertopolo.com/','4'),('B65639155','BIRRA 365','NON','960714310 ','Jeronimo Monsoriu, 58, Valencia','info@birra365.com','https://www.birra365.com','3');
/*!40000 ALTER TABLE `PROVEEDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PROVEEDOR_CATEGORIA`
--

DROP TABLE IF EXISTS `PROVEEDOR_CATEGORIA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROVEEDOR_CATEGORIA` (
  `idCat` varchar(5) NOT NULL,
  `nifProv` varchar(10) NOT NULL,
  PRIMARY KEY (`idCat`,`nifProv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROVEEDOR_CATEGORIA`
--

LOCK TABLES `PROVEEDOR_CATEGORIA` WRITE;
/*!40000 ALTER TABLE `PROVEEDOR_CATEGORIA` DISABLE KEYS */;
/*!40000 ALTER TABLE `PROVEEDOR_CATEGORIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TIPO`
--

DROP TABLE IF EXISTS `TIPO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TIPO` (
  `idTipoPlato` varchar(5) NOT NULL,
  `descTipoDePlato` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idTipoPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TIPO`
--

LOCK TABLES `TIPO` WRITE;
/*!40000 ALTER TABLE `TIPO` DISABLE KEYS */;
INSERT INTO `TIPO` VALUES ('1','Primero'),('2','Segundo'),('3','Postre');
/*!40000 ALTER TABLE `TIPO` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-23  0:51:50
