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
INSERT INTO `CATEGORIA` VALUES ('1','Aceites y vinagres'),('10','Embutidos'),('11','Especies'),('12','Productos Lácteos'),('13','Ovoproductos'),('14','Pan y Bollería'),('15','Postres'),('16','Harinas'),('17','Salsas'),('18','Semielaborados'),('19','Sin Gluten'),('2','Carnes y Aves'),('20','Sin lactosa'),('3','Bebidas'),('4','Cafés'),('5','Elaborados'),('6','Fruta y Verdura'),('7','Pescados Y Mariscos'),('8','Conservas'),('9','Elaborados');
/*!40000 ALTER TABLE `CATEGORIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CATEGORIA_BAK`
--

DROP TABLE IF EXISTS `CATEGORIA_BAK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CATEGORIA_BAK` (
  `idCat` varchar(5) NOT NULL,
  `nomCat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CATEGORIA_BAK`
--

LOCK TABLES `CATEGORIA_BAK` WRITE;
/*!40000 ALTER TABLE `CATEGORIA_BAK` DISABLE KEYS */;
INSERT INTO `CATEGORIA_BAK` VALUES ('1','Aceites y vinagres'),('10','Embutidos'),('11','Especies'),('12','Productos Lácteos'),('13','Ovoproductos'),('14','Pan y Bollería'),('15','Postres'),('16','Harinas'),('17','Salsas'),('18','Semielaborados'),('19','Sin Gluten'),('2','Carnes y Aves'),('20','Sin lactosa'),('3','Bebidas'),('4','Cafés'),('5','Elaborados'),('6','Fruta y Verdura'),('7','Pescados Y Mariscos'),('8','Conservas'),('9','Elaborados');
/*!40000 ALTER TABLE `CATEGORIA_BAK` ENABLE KEYS */;
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
INSERT INTO `COMANDA` VALUES ('1','2021-11-15',1,'14:05:00',2,1),('2','2021-11-15',2,'14:10:00',3,2),('3','2021-11-15',3,'14:11:00',2,3),('4','2022-04-10',1,'14:00:00',1,4),('5','2022-04-12',1,'14:10:00',1,5);
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
INSERT INTO `COMANDA_ELABORADOS` VALUES ('1','5',2,0.00,0),('2','5',10,0.00,0);
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
INSERT INTO `COMANDA_PLATO` VALUES ('1','1',2,30.00,0.63),('1','2',2,20.00,0.42),('2','1',2,30.00,0.63),('2','2',1,10.00,0.21),('3','1',1,14.00,10.00),('4','1',1,14.00,10.00),('4','4',1,30.00,10.00),('5','4',1,30.00,10.00);
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
INSERT INTO `COMPRAS_PRODUCTO` VALUES ('1','A60177623','2022-04-01',100,120.00,25.20,'2021-11-13'),('1105','B90307034','2021-09-17',2,10.91,10.00,'2020-04-14'),('1106','A28647451','2021-09-02',5,8.75,10.00,'2023-09-02'),('1107','B87867834','2021-09-18',5,6.50,0.00,'2019-10-30'),('1501','A28647451','2021-09-07',100,0.32,10.00,NULL),('1502','A58058868','2021-09-05',100,1.60,10.00,NULL),('1607','A28647451','2021-09-07',700,0.52,10.00,NULL),('1801','A60177623','2022-04-01',20,15.00,17.40,'2023-01-20'),('2','B65639155','2022-04-02',300,20.00,0.42,'2021-11-23'),('2001','A50090349','2021-08-10',25,2.99,10.00,'2021-08-20'),('2001','B23373624','2021-08-01',60,3.24,10.00,'2021-08-16'),('3','B65639155','2021-11-09',200,10.00,0.21,'2021-11-14'),('4001','A28647451','2021-09-07',480,4.25,10.00,NULL);
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
INSERT INTO `DETALLE_DONACION` VALUES ('2021-11-12',1,'2',5,'Vencen mañana'),('2021-11-22',1,'3',7,'N/A'),('2021-11-22',2,'4',1,'No se usaron'),('2022-05-18',1,'1',1,NULL);
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
INSERT INTO `DONACIONES` VALUES ('2021-11-12'),('2021-11-22'),('2022-05-18');
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
INSERT INTO `ELABORADOS` VALUES ('1501',NULL,NULL),('1502',NULL,NULL),('4001',NULL,NULL),('5',NULL,NULL);
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
INSERT INTO `INGREDIENTE` VALUES ('1','Guardar limpio en el refrigerador en bolsas de congelación','2022-04-11'),('1002','Guardar en un lugar oscuro de la despensa','2022-04-11'),('1101','Guardar en un lugar seco','2022-04-11'),('1102','Guardar en un lugar fresco y seco','2022-04-11'),('1103','Guardar en un lugar fresco y seco','2022-04-11'),('1104','Guardar en un lugar fresco y seco','2022-04-11'),('1105','Guardar en un lugar fresco y seco','2022-04-11'),('1106','Guardar en un lugar fresco y seco','2022-04-11'),('1107','Guardar en lugar fresco, seco y alejado de la luz','2022-04-11'),('1607','Guardar en un lugar fresco y seco','2022-04-11'),('1701','Guardar en un lugar fresco y seco','2022-04-11'),('2','Guardar en un lugar seco','2022-04-11'),('2001','Guardar limpio en el refrigerador en bolsas de congelación','2022-04-11'),('3','Guardar en un lugar fresco y seco','2022-04-11'),('4','Guardar en lugar fresco, seco y alejado de la luz','2022-04-11'),('5','Guardar en un lugar oscuro de la despensa','2022-04-11'),('6','Guardar en una bolsa sellada en el cajón de frigorífico','2022-04-11'),('6005','Guardar en una bolsa sellada en el cajón de frigorífico','2022-04-11');
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
INSERT INTO `INGREDIENTE_PLATO` VALUES ('1','1',10.00,10.00,'Unidades',100),('1','2',1.00,1.00,'Unidades',100),('1','5',1.00,1.00,'Unidades',100),('2','3',1.00,1.00,'Unidades',100),('2','4',1.00,1.00,'Unidades',100);
/*!40000 ALTER TABLE `INGREDIENTE_PLATO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OtraTabla`
--

DROP TABLE IF EXISTS `OtraTabla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OtraTabla` (
  `idProd` varchar(5) DEFAULT NULL,
  `Cantidad` int DEFAULT NULL,
  `Tipo` enum('INGREDIENTE','ELABORADO') DEFAULT NULL,
  `Unidad` enum('INGREDIENTE','ELABORADO') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OtraTabla`
--

LOCK TABLES `OtraTabla` WRITE;
/*!40000 ALTER TABLE `OtraTabla` DISABLE KEYS */;
/*!40000 ALTER TABLE `OtraTabla` ENABLE KEYS */;
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
  `idTipoPlato` varchar(5) NOT NULL,
  `elaboPlato` varchar(200) DEFAULT NULL,
  `pvpPlato` decimal(12,2) DEFAULT NULL,
  `ivaPlato` decimal(12,2) DEFAULT NULL,
  `enMenuPlato` tinyint DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  PRIMARY KEY (`idPlato`),
  KEY `PLATO_ibfk_1` (`idTipoPlato`),
  CONSTRAINT `PLATO_ibfk_1` FOREIGN KEY (`idTipoPlato`) REFERENCES `TIPO` (`idTipoPlato`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PLATO`
--

LOCK TABLES `PLATO` WRITE;
/*!40000 ALTER TABLE `PLATO` DISABLE KEYS */;
INSERT INTO `PLATO` VALUES ('1','Gambas al ajillo','2','Calentar las gambas en sartén al ajillo',12.75,2.60,1,'2022-04-12'),('2','Ensalada de tomate','4','Cortar tomates y cebolla',3.57,0.73,1,'2022-04-12'),('3','Sopa castellana','1','Tostar el pan, poner agua con aceite y ajo...',8.00,12.00,0,'2022-04-12'),('4','Mouse de chocolate blanco','3','Mezclar el chocolate con mantequilla...',5.00,12.00,0,NULL);
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
  `modificado` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Tipo` enum('INGREDIENTE','ELABORADO') DEFAULT NULL,
  `Fecha_Caducidad` datetime DEFAULT NULL,
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
INSERT INTO `PRODUCTO` VALUES ('1','Gambas','Kilogramos',10,'7',1,120.00,'2022-05-18 22:03:25',NULL,'2022-05-19 00:00:00'),('1002','Aceite de maíz','',20,'1',NULL,NULL,'2022-04-01 20:44:10','INGREDIENTE',NULL),('1101','Sal de Himalaya','Kilogramos',2,'11',NULL,NULL,'2022-04-01 20:44:02','INGREDIENTE',NULL),('1102','Pimienta dulce','Kilogramos',5,'11',NULL,NULL,'2022-04-01 20:44:09','INGREDIENTE',NULL),('1103','Hierbas provenzales','Kilogramos',5,'11',NULL,NULL,'2022-04-01 20:44:09','INGREDIENTE',NULL),('1104','Orégano','Kilogramos',5,'11',NULL,NULL,'2022-04-01 20:44:10','INGREDIENTE',NULL),('1105','Romero','Kilogramos',2,'11',NULL,10.91,'2022-05-17 22:36:33','INGREDIENTE',NULL),('1106','Laurel en hojas','Kilogramos',5,'11',NULL,8.75,'2022-05-17 22:36:33','INGREDIENTE',NULL),('1107','Ajo','Kilogramos',10,'11',NULL,6.50,'2022-05-17 22:36:33','INGREDIENTE',NULL),('1501','Copa de nata con café','Unidades',70,'15',NULL,0.32,'2022-05-17 22:36:33','ELABORADO',NULL),('1502','Flan de huevo (100g)','Unidades',70,'15',NULL,1.60,'2022-05-17 22:36:33','ELABORADO',NULL),('1607','Harina de trigo (1 kg)','Unidades',240,'16',NULL,0.52,'2022-05-17 22:36:33','INGREDIENTE',NULL),('1701','Salsa Worcester','Unidades',360,'17',NULL,NULL,'2022-04-01 20:44:10','INGREDIENTE',NULL),('1801','Coca Cola','Litros',100,'3',100,15.00,'2022-05-17 22:36:33',NULL,NULL),('2','Ajo','Unidades',10,'6',NULL,20.00,'2022-05-17 22:36:33',NULL,NULL),('2001','Pechuga marinada','Kilogramos',30,'2',NULL,3.24,'2022-05-17 22:36:33','INGREDIENTE',NULL),('3','Tomates','Unidades',5,'6',NULL,10.00,'2022-05-17 22:36:33',NULL,NULL),('4','Cebolla','Unidades',5,'6',NULL,NULL,'2022-04-01 12:51:47',NULL,NULL),('4001','Cápsulas de cafè cappuccino (16 cápsulas)','Unidades',20,'4',NULL,4.25,'2022-05-17 22:36:33','ELABORADO',NULL),('5','Pan Integral','Unidades',20,'14',NULL,NULL,'2022-04-01 12:51:47',NULL,NULL),('6005','Malla de Limón (500gr)','Unidades',36,'6',NULL,NULL,'2022-04-01 20:44:10','INGREDIENTE',NULL);
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
INSERT INTO `PROVEEDOR` VALUES ('A28647451','MAKRO','L. Piquer','933363111','Carrer A, 1, Sector C Poligono Industrial Zona Franca 08040 Barcelona','atencionclientes.02@makro.es','https://www.makro.es/','5'),('A50090349','ALBERTO POLO DISTRIBUCIONES','A. Polo','976574909','Calle Rao Ara 8, 50014, Zaragoza','info@albertopolo.com','https://albertopolo.com/','2'),('A58058868','HUEVERIAS BONET, S.A.','A. Bonet Pedret','933357212','Transversal 8, nun. 48 Multiservei I','dbonet@dbonet.es','http://dbonet.es/','13'),('A60177623','BOU Cafe','C. Gotor','902305352 ','Calle Rao Ara 8, 50014, Zaragoza','info@albertopolo.com','https://albertopolo.com/','4'),('B23373624','INDUSTRIA AVICOLA SURENA','J.  Molina','915077600','C/ Toledo 149 E Pa  28005, Madrid','info@inasur.es','www.inasur.es','2'),('B65639155','BIRRA 365','NON','960714310 ','Jeronimo Monsoriu, 58, Valencia','info@birra365.com','https://www.birra365.com','3'),('B87867834','CHEF FRUIT','J. Domingo','910578136','Centro de Transportes de Madrid (ctm), CL EJE 6 2, Madrid, 28053 , Madrid','pedidos@chef-fruit.com','https://www.chef-fruit.com/','6'),('B90307034','FRUTAS CUEVAS','J. Cuevas','954417158','Poligono Pagusa Calle Labrador 47, 41007,Sevilla','info@frutascuevas.es','https://www.frutascuevas.es/','6');
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
INSERT INTO `PROVEEDOR_CATEGORIA` VALUES ('6','A01189364'),('6','B90307034');
/*!40000 ALTER TABLE `PROVEEDOR_CATEGORIA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `Platos_Y_Productos_Comanda`
--

DROP TABLE IF EXISTS `Platos_Y_Productos_Comanda`;
/*!50001 DROP VIEW IF EXISTS `Platos_Y_Productos_Comanda`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `Platos_Y_Productos_Comanda` AS SELECT 
 1 AS `Nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Resumen`
--

DROP TABLE IF EXISTS `Resumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Resumen` (
  `idProd` varchar(5),
  `nomProd` varchar(45) DEFAULT NULL,
  `Cantidad` decimal(32,0) DEFAULT NULL,
  `PromedioPVP` decimal(16,6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resumen`
--

LOCK TABLES `Resumen` WRITE;
/*!40000 ALTER TABLE `Resumen` DISABLE KEYS */;
INSERT INTO `Resumen` VALUES ('5','Pan Integral',12,0.000000);
/*!40000 ALTER TABLE `Resumen` ENABLE KEYS */;
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
INSERT INTO `TIPO` VALUES ('1','Primero'),('2','Segundo'),('3','Postre'),('4','Ensalada');
/*!40000 ALTER TABLE `TIPO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `Platos_Y_Productos_Comanda`
--

/*!50001 DROP VIEW IF EXISTS `Platos_Y_Productos_Comanda`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`icx0_p3_7`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `Platos_Y_Productos_Comanda` AS select `p`.`nomPlato` AS `Nombre` from `PLATO` `p` union select `p`.`nomProd` AS `Nombre` from (`PRODUCTO` `p` join `COMANDA_PLATO` `cp` on((`cp`.`idPlPla` = `p`.`idProd`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-19  0:32:16
