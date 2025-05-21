-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: farmacia
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_venta` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_venta` int DEFAULT NULL,
  `codigo_barras` varchar(50) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `precio_unitario` decimal(10,2) DEFAULT NULL,
  `subtotal` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `id_venta` (`id_venta`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` text,
  `precio` decimal(10,2) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `fecha_vencimiento` date DEFAULT NULL,
  `codigo_barras` varchar(50) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (5,'Ibuprofeno 400mg','Antiinflamatorio no esteroideo',65.00,119,'2024-12-15','750100000002','Antiinflamatorios'),(6,'Omeprazol 20mg','Protector gástrico de uso diario',85.00,199,'2026-03-01','750100000003','Gastrointestinales'),(7,'Loratadina 10mg','Antialérgico no sedante',45.00,180,'2025-09-30','750100000004','Antialérgicos'),(8,'Aspirina 100mg','Prevención de problemas cardiovasculares',55.00,88,'2024-11-30','750100000005','Cardiovascular'),(9,'Jarabe para la tos','Alivia la tos seca y con flemas',75.00,0,'2025-08-15','750100000006','Antigripales'),(10,'Curitas adhesivas','Caja con 50 unidades variadas',35.00,298,'2027-01-01','750100000007','Curaciones'),(11,'Termómetro digital','Termómetro oral con pantalla LCD',120.00,60,'2028-05-30','750100000008','Instrumental'),(12,'Vitamina C 1000mg','Tabletas masticables sabor naranja',95.00,170,'2026-07-31','750100000009','Suplementos'),(13,'Protector solar FPS 50','Resistente al agua 120ml',150.00,110,'2025-04-30','750100000010','Dermocosmética'),(14,'Shampoo anticaspa','Tratamiento intensivo 400ml',85.00,93,'2026-10-31','750100000011','Cuidado Personal'),(15,'Gasas estériles','Paquete con 10 unidades',25.00,249,'2027-02-28','750100000012','Curaciones'),(16,'Pastillas para garganta','Sabor menta-aloe vera',40.00,156,'2025-03-15','750100000013','Antigripales'),(17,'Crema para pie diabético','Hidratación intensiva 75ml',180.00,37,'2026-09-30','750100000014','Especialidades'),(18,'Toallas húmedas bebé','Paquete con 80 unidades',65.00,179,'2027-12-31','750100000015','Higiene Infantil'),(20,'Vitamina C 1000mg','Suplemento vitamínico de 60 tabletas efervescentes',15.25,80,'2026-01-01','567890123456','Vitaminas'),(21,'Jabón Antiséptico','Jabón líquido para piel sensible 500ml',6.40,120,'2027-05-20','678901234567','Higiene'),(22,'Curitas Hidrocoloides','Tiritas para ampollas de 10 unidades',9.99,249,'2028-02-28','789012345678','Curaciones'),(23,'Gasas Estériles','Paquete de 10 gasas 10x10 cm',4.75,399,'2030-11-30','890123456789','Material Curación'),(24,'Termómetro Digital','Termómetro oral con pantalla LCD',14.95,75,'2031-07-15','901234567890','Monitoreo Salud'),(26,'Dualgos','Paracetamol/Ibuprofeno 300/600mg',120.00,50,'0025-08-18','23456765','Analgésicos'),(27,'Peptovismol','Gastrointestinal',29.00,67,'0025-10-16','7000124913847','Gastrointestinales'),(28,'Paracetamol','500mg',120.00,15,'0024-10-15','754000001','Analgésicos');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_usuario`
--

DROP TABLE IF EXISTS `tipo_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_usuario`
--

LOCK TABLES `tipo_usuario` WRITE;
/*!40000 ALTER TABLE `tipo_usuario` DISABLE KEYS */;
INSERT INTO `tipo_usuario` VALUES (1,'Administrador'),(2,'Vendedor');
/*!40000 ALTER TABLE `tipo_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_completo` varchar(100) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `rol` enum('vendedor','auxiliar','cajero') NOT NULL,
  `turno` enum('turno 1','turno 2') NOT NULL,
  `contraseña_hash` varchar(255) NOT NULL,
  `fecha_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `activo` tinyint(1) DEFAULT '1',
  `tipo_usuario` int NOT NULL,
  PRIMARY KEY (`id_usuario`,`contraseña_hash`),
  UNIQUE KEY `correo` (`correo`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (17,'ZAID','FRANCISCO','LEON','farmciaantonio@gmail.com','admin','auxiliar','turno 1','f865b53623b121fd34ee5426c792e5c33af8c227','2025-04-25 01:29:54',1,1),(22,'frank','perez','vargas','frankvargas@gmail.com','frank','vendedor','turno 1','7c222fb2927d828af22f592134e8932480637c0d','2025-05-01 03:01:29',1,2),(23,'zaid','jimenez','jimenez','zaidjimenz@gmail.com','zaid','vendedor','turno 1','7c222fb2927d828af22f592134e8932480637c0d','2025-05-06 05:31:25',1,2),(24,'Jose','Hernandez','Fernandez','guadalupe@gmail.com','JoseSenior','vendedor','turno 1','399eeb8b3c901f91a6582e8534d9601f5f2e83f2','2025-05-06 19:26:10',1,2),(25,'ROMAN','GALEOTE','CABRERA','romangaleote@gmail.com','roman','cajero','turno 2','80b5e8b9bd813c9bba019f31c9c5f30c97e91035','2025-05-06 20:11:06',1,2),(26,'Perla','Ga','Va','okumurar398@gmail.com','perlaD','vendedor','turno 1','335336767c605b9d3bc35be4a409dc3d3de3dcb8','2025-05-19 17:27:35',1,2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_venta`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (3,'2025-05-07 21:19:41',400.20),(4,'2025-05-07 21:23:42',487.20),(5,'2025-05-07 21:23:56',0.00),(6,'2025-05-07 21:24:40',58.00),(7,'2025-05-07 22:07:52',87.00),(8,'2025-05-09 18:46:07',58.00),(9,'2025-05-11 04:35:49',370.90),(10,'2025-05-11 04:42:50',835.20),(11,'2025-05-11 04:52:28',58.00),(12,'2025-05-11 05:05:44',40.60),(13,'2025-05-11 05:06:59',134.56),(14,'2025-05-11 05:07:20',33.64),(15,'2025-05-11 05:10:05',7018.00),(16,'2025-05-11 05:11:30',98.60),(19,'2025-05-11 05:38:50',1102.00),(20,'2025-05-11 05:45:41',116.00),(21,'2025-05-11 05:48:08',290.00),(22,'2025-05-11 06:10:47',98.60),(23,'2025-05-11 06:11:16',208.80),(24,'2025-05-11 06:22:30',313.20),(25,'2025-05-11 06:46:56',63.80),(26,'2025-05-19 17:30:15',75.40);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-20 10:38:32
