-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: dbobaocaophanbien
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `detai`
--

DROP TABLE IF EXISTS `detai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detai` (
  `MaDT` int(11) NOT NULL,
  `MaGVHD` varchar(45) DEFAULT NULL,
  `MaNhom` varchar(45) DEFAULT NULL,
  `TenDeTai` varchar(45) DEFAULT NULL,
  `ChuyenNganh` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaDT`),
  CONSTRAINT `fk_DeTai_KetQua1` FOREIGN KEY (`MaDT`) REFERENCES `ketqua` (`MaDT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DeTai_QuaTrinhBaoCao1` FOREIGN KEY (`MaDT`) REFERENCES `quatrinhbaocao` (`MaDT`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DeTai_XepLich1` FOREIGN KEY (`MaDT`) REFERENCES `xeplich` (`MaDeTai`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detai`
--

LOCK TABLES `detai` WRITE;
/*!40000 ALTER TABLE `detai` DISABLE KEYS */;
/*!40000 ALTER TABLE `detai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ketqua`
--

DROP TABLE IF EXISTS `ketqua`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ketqua` (
  `MaDT` int(11) NOT NULL,
  `MaGVHD` varchar(45) DEFAULT NULL,
  `DiemGVHD` float DEFAULT NULL,
  `NhanXetGVHD` varchar(45) DEFAULT NULL,
  `MaGVPB` varchar(45) DEFAULT NULL,
  `DiemGVPB` float DEFAULT NULL,
  `NhanXetGVPB` varchar(45) DEFAULT NULL,
  `MaUV` varchar(45) DEFAULT NULL,
  `DiemUV` float DEFAULT NULL,
  `NhanXetUV` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketqua`
--

LOCK TABLES `ketqua` WRITE;
/*!40000 ALTER TABLE `ketqua` DISABLE KEYS */;
/*!40000 ALTER TABLE `ketqua` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhom`
--

DROP TABLE IF EXISTS `nhom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhom` (
  `MaNhom` int(11) NOT NULL,
  `MaSV` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaNhom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhom`
--

LOCK TABLES `nhom` WRITE;
/*!40000 ALTER TABLE `nhom` DISABLE KEYS */;
/*!40000 ALTER TABLE `nhom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quatrinhbaocao`
--

DROP TABLE IF EXISTS `quatrinhbaocao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quatrinhbaocao` (
  `MaDT` int(11) NOT NULL,
  `NhanXetTruocBC` varchar(45) DEFAULT NULL,
  `TomTatDT` varchar(500) DEFAULT NULL,
  `FileBaiNop` varchar(45) DEFAULT NULL,
  `TrangThai` varchar(45) DEFAULT NULL,
  `XepLoai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quatrinhbaocao`
--

LOCK TABLES `quatrinhbaocao` WRITE;
/*!40000 ALTER TABLE `quatrinhbaocao` DISABLE KEYS */;
/*!40000 ALTER TABLE `quatrinhbaocao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongbao`
--

DROP TABLE IF EXISTS `thongbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thongbao` (
  `MaThongBao` int(11) NOT NULL,
  `TieuDe` varchar(45) DEFAULT NULL,
  `Ngay` datetime DEFAULT NULL,
  `NoiDung` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MaThongBao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongbao`
--

LOCK TABLES `thongbao` WRITE;
/*!40000 ALTER TABLE `thongbao` DISABLE KEYS */;
INSERT INTO `thongbao` VALUES (1,'123','2016-10-10 00:00:00','12');
/*!40000 ALTER TABLE `thongbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Username` varchar(45) NOT NULL DEFAULT '',
  `Password` varchar(100) DEFAULT NULL,
  `ChucVu` varchar(45) DEFAULT NULL,
  `HoTen` varchar(45) DEFAULT NULL,
  `MaSo` varchar(45) DEFAULT NULL,
  `SDT` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `ChuyenNganh` varchar(45) DEFAULT NULL,
  `Khoa` varchar(45) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(45) DEFAULT NULL,
  `Avatar` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('14110104','123','1','Đào Hữu Lộc123456','14110104','123456789','14110104@student.hcmute.edu.vn','Công Nghệ Phần Mềm','Công Nghệ Thông Tin','1996-09-17','tp Hồ chí minh123456','14110104.jpg'),('gv1','1234','2','Giảng Viên 1','141102132','01234',NULL,NULL,NULL,'2016-10-10','tpHCM',NULL),('tk1','123','3','Trưởng Khoa 1','12321321',NULL,NULL,NULL,NULL,'2000-10-10',NULL,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xeplich`
--

DROP TABLE IF EXISTS `xeplich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xeplich` (
  `MaDeTai` int(11) NOT NULL,
  `MaGVPB` varchar(45) DEFAULT NULL,
  `MaUyVien` varchar(45) DEFAULT NULL,
  `MaChuTich` varchar(45) DEFAULT NULL,
  `ThoiGianBC` time DEFAULT NULL,
  `ThoiLuong` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xeplich`
--

LOCK TABLES `xeplich` WRITE;
/*!40000 ALTER TABLE `xeplich` DISABLE KEYS */;
/*!40000 ALTER TABLE `xeplich` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-31 13:37:01
