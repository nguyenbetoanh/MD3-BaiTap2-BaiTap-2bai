-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: md3-bai2-baitap2-quanlybanhang
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `idCustomer` int NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(45) DEFAULT NULL,
  `Customer_Age` int DEFAULT '0',
  PRIMARY KEY (`idCustomer`),
  UNIQUE KEY `idCustomer_UNIQUE` (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Nguyễn Việt Anh',24),(2,'JONY Dang Tiệp',18),(3,'Thanh PC',20),(4,'Phạm Thị Nghĩa',47),(5,'Nguyễn Văn Kháng',49);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idORDER` int NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Tong_Tien` varchar(45) DEFAULT '0',
  `id_Customer` int DEFAULT NULL,
  PRIMARY KEY (`idORDER`),
  UNIQUE KEY `idORDER_UNIQUE` (`idORDER`),
  KEY `fk_custorm_id_idx` (`id_Customer`),
  CONSTRAINT `fk_custorm_id` FOREIGN KEY (`id_Customer`) REFERENCES `customer` (`idCustomer`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'2022-10-31','30000',4),(2,'2022-07-29','36666',4),(3,'2021-02-26','400000',1),(4,'2021-01-15','5555555',2),(5,'2020-12-12','400',5),(6,'2020-01-29','466666',3);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `id_Customer` int NOT NULL,
  `id_Product` int NOT NULL,
  `so_luong` int DEFAULT '0',
  PRIMARY KEY (`id_Customer`,`id_Product`),
  KEY `fk_Price_idx` (`id_Product`),
  CONSTRAINT `fk_order` FOREIGN KEY (`id_Customer`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `fk_Price` FOREIGN KEY (`id_Product`) REFERENCES `product` (`idproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (1,3,2),(1,5,2),(2,1,3),(3,4,6),(4,1,2);
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `idproduct` int NOT NULL AUTO_INCREMENT,
  `product_Name` varchar(45) DEFAULT NULL,
  `product_Price` int DEFAULT '0',
  PRIMARY KEY (`idproduct`),
  UNIQUE KEY `idproduct_UNIQUE` (`idproduct`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Cà rốt thò thụt',200000),(2,'roi quật mông',50000),(3,'bộ cosplay người hầu',25000),(4,'còng số 8 2 cái',15000),(5,'tai thỏ',5000),(6,'quần lọt khe',6000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31 21:45:28
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: md3-bai2-baitap1
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `don_dh`
--

DROP TABLE IF EXISTS `don_dh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `don_dh` (
  `soDH` int NOT NULL AUTO_INCREMENT,
  `ngayDH` date DEFAULT NULL,
  `ma_nha_CC` int DEFAULT NULL,
  PRIMARY KEY (`soDH`),
  UNIQUE KEY `soDH_UNIQUE` (`soDH`),
  KEY `fk_ma_nha_cc_idx` (`ma_nha_CC`),
  CONSTRAINT `fk_ma_nha_cc` FOREIGN KEY (`ma_nha_CC`) REFERENCES `nha_cc` (`ma_nha_CC`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_dh`
--

LOCK TABLES `don_dh` WRITE;
/*!40000 ALTER TABLE `don_dh` DISABLE KEYS */;
INSERT INTO `don_dh` VALUES (1,'2023-07-29',NULL),(2,'2023-09-12',NULL),(3,'2022-12-12',NULL);
/*!40000 ALTER TABLE `don_dh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nha_cc`
--

DROP TABLE IF EXISTS `nha_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nha_cc` (
  `ma_nha_CC` int NOT NULL AUTO_INCREMENT,
  `Nha_CC_ten` varchar(45) DEFAULT NULL,
  `dia_chi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ma_nha_CC`),
  UNIQUE KEY `ma_nha_CC_UNIQUE` (`ma_nha_CC`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_cc`
--

LOCK TABLES `nha_cc` WRITE;
/*!40000 ALTER TABLE `nha_cc` DISABLE KEYS */;
INSERT INTO `nha_cc` VALUES (1,'nhà cung cấp vật liệu kháng nghĩa','vĩnh an vĩnh bảo hải phòng'),(2,'nhà cung cấp thức ăn cho chim','trần duy hưng'),(3,'nhà cung cấp kiến thức','nam từ liêm tòa nhà sông đà A');
/*!40000 ALTER TABLE `nha_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieunhap`
--

DROP TABLE IF EXISTS `phieunhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieunhap` (
  `soPN` int NOT NULL AUTO_INCREMENT,
  `ngayNhap` date NOT NULL,
  PRIMARY KEY (`soPN`),
  UNIQUE KEY `idphieunhap_UNIQUE` (`soPN`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieunhap`
--

LOCK TABLES `phieunhap` WRITE;
/*!40000 ALTER TABLE `phieunhap` DISABLE KEYS */;
INSERT INTO `phieunhap` VALUES (1,'2021-07-25'),(2,'2020-01-06'),(3,'2022-01-29');
/*!40000 ALTER TABLE `phieunhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieuxuat`
--

DROP TABLE IF EXISTS `phieuxuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieuxuat` (
  `soPX` int NOT NULL AUTO_INCREMENT,
  `NgayXuat` date DEFAULT NULL,
  PRIMARY KEY (`soPX`),
  UNIQUE KEY `soPX_UNIQUE` (`soPX`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieuxuat`
--

LOCK TABLES `phieuxuat` WRITE;
/*!40000 ALTER TABLE `phieuxuat` DISABLE KEYS */;
INSERT INTO `phieuxuat` VALUES (1,'2022-10-31'),(2,'2022-11-01'),(3,'2022-05-16');
/*!40000 ALTER TABLE `phieuxuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdt`
--

DROP TABLE IF EXISTS `sdt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdt` (
  `SDT` int NOT NULL,
  `manhaCC` int DEFAULT NULL,
  PRIMARY KEY (`SDT`),
  UNIQUE KEY `idSDT_UNIQUE` (`SDT`),
  KEY `ma_nha_cc_fk_idx` (`manhaCC`),
  CONSTRAINT `ma_nha_cc_fk` FOREIGN KEY (`manhaCC`) REFERENCES `nha_cc` (`ma_nha_CC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdt`
--

LOCK TABLES `sdt` WRITE;
/*!40000 ALTER TABLE `sdt` DISABLE KEYS */;
INSERT INTO `sdt` VALUES (987456321,1),(123456789,2),(942595229,3);
/*!40000 ALTER TABLE `sdt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `the_yeu_1`
--

DROP TABLE IF EXISTS `the_yeu_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the_yeu_1` (
  `So_PX` int NOT NULL,
  `Ma_Vat_Tu` int NOT NULL,
  `DG_Xuat` varchar(45) DEFAULT NULL,
  `SL_Xuat` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`So_PX`,`Ma_Vat_Tu`),
  KEY `soPX_idx` (`So_PX`),
  KEY `maVatTu_idx` (`Ma_Vat_Tu`),
  CONSTRAINT `maVatTu` FOREIGN KEY (`Ma_Vat_Tu`) REFERENCES `vattu` (`idvattu`),
  CONSTRAINT `soPX` FOREIGN KEY (`So_PX`) REFERENCES `phieuxuat` (`soPX`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the_yeu_1`
--

LOCK TABLES `the_yeu_1` WRITE;
/*!40000 ALTER TABLE `the_yeu_1` DISABLE KEYS */;
INSERT INTO `the_yeu_1` VALUES (1,1,'1500','26'),(2,3,'5000','63'),(3,2,'1000','151');
/*!40000 ALTER TABLE `the_yeu_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `the_yeu_2`
--

DROP TABLE IF EXISTS `the_yeu_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the_yeu_2` (
  `ma_vat_tu` int NOT NULL,
  `so_PN` int NOT NULL,
  `DG_Nhap` int DEFAULT NULL,
  `SL_Nhap` int DEFAULT NULL,
  PRIMARY KEY (`ma_vat_tu`,`so_PN`),
  KEY `fk_so_PN_idx` (`so_PN`),
  CONSTRAINT `fk_ma_vat_tu` FOREIGN KEY (`ma_vat_tu`) REFERENCES `vattu` (`idvattu`),
  CONSTRAINT `fk_so_PN` FOREIGN KEY (`so_PN`) REFERENCES `phieunhap` (`soPN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the_yeu_2`
--

LOCK TABLES `the_yeu_2` WRITE;
/*!40000 ALTER TABLE `the_yeu_2` DISABLE KEYS */;
INSERT INTO `the_yeu_2` VALUES (1,3,1500,600),(2,2,1300,300),(3,1,1600,800);
/*!40000 ALTER TABLE `the_yeu_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `the_yeu_3`
--

DROP TABLE IF EXISTS `the_yeu_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the_yeu_3` (
  `so_DH` int NOT NULL,
  `ma_vat_tu` int NOT NULL,
  PRIMARY KEY (`so_DH`,`ma_vat_tu`),
  KEY `fk_ma_vtu_idx` (`ma_vat_tu`),
  CONSTRAINT `fk_ma_vtu` FOREIGN KEY (`ma_vat_tu`) REFERENCES `vattu` (`idvattu`),
  CONSTRAINT `fk_soDH` FOREIGN KEY (`so_DH`) REFERENCES `don_dh` (`soDH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the_yeu_3`
--

LOCK TABLES `the_yeu_3` WRITE;
/*!40000 ALTER TABLE `the_yeu_3` DISABLE KEYS */;
INSERT INTO `the_yeu_3` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `the_yeu_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vattu`
--

DROP TABLE IF EXISTS `vattu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vattu` (
  `idvattu` int NOT NULL AUTO_INCREMENT,
  `TenVatTu` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idvattu`),
  UNIQUE KEY `idvattu_UNIQUE` (`idvattu`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vattu`
--

LOCK TABLES `vattu` WRITE;
/*!40000 ALTER TABLE `vattu` DISABLE KEYS */;
INSERT INTO `vattu` VALUES (1,'gỗ xoan'),(2,'sắt thép'),(3,'nhựa cứng');
/*!40000 ALTER TABLE `vattu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-31 21:45:28
