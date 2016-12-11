CREATE DATABASE  IF NOT EXISTS `dbobaocaophanbien` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `dbobaocaophanbien`;
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
  `MaGVHD` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaNhom` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TenDeTai` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChuyenNganh` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detai`
--

LOCK TABLES `detai` WRITE;
/*!40000 ALTER TABLE `detai` DISABLE KEYS */;
INSERT INTO `detai` VALUES (1,'13000000','1','Xây dựng ứng dụng bảo vệ điện thoại trên nền tảng Android','CNTT'),(2,'13000002','2','Phát triển ứng dụng web dùng Spring MVC, Hibernate','CNTT'),(3,'13000001','3','Xây dựng ứng dụng phân tích và dự báo giá chứng khoán','CNTT'),(4,'13000003','4','Xây dựng website topscorers.net','CNTT');
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
  `MaGVHD` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiemGVHD` float DEFAULT NULL,
  `NhanXetGVHD` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaGVPB` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiemGVPB` float DEFAULT NULL,
  `NhanXetGVPB` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaUV` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DiemUV` float DEFAULT NULL,
  `NhanXetUV` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ketqua`
--

LOCK TABLES `ketqua` WRITE;
/*!40000 ALTER TABLE `ketqua` DISABLE KEYS */;
INSERT INTO `ketqua` VALUES (1,'13000000',NULL,NULL,'12000000',9,'Nhận xét của Dũng','13000001',NULL,NULL);
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
  `MaSV` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`MaNhom`,`MaSV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhom`
--

LOCK TABLES `nhom` WRITE;
/*!40000 ALTER TABLE `nhom` DISABLE KEYS */;
INSERT INTO `nhom` VALUES (1,'14110095'),(1,'14110104'),(1,'14110106'),(2,'14110001'),(3,'14110000'),(4,'14110002');
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
  `NhanXetTruocBC` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TomTatDT` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FileBaiNop` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrangThai` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `XepLoai` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TrangThaiSV` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quatrinhbaocao`
--

LOCK TABLES `quatrinhbaocao` WRITE;
/*!40000 ALTER TABLE `quatrinhbaocao` DISABLE KEYS */;
INSERT INTO `quatrinhbaocao` VALUES (1,'nhận xét của giảng viên hướng dẫn','Mô tả đề tài 1','DBMS.txt','Xét duyệt',NULL,'Được báo cáo'),(2,NULL,NULL,NULL,'Chưa xét duyệt',NULL,'Chưa nộp'),(3,NULL,NULL,NULL,'Chưa xét duyệt',NULL,'Chưa nộp'),(4,NULL,NULL,NULL,'Chưa xét duyệt',NULL,'Chưa nộp');
/*!40000 ALTER TABLE `quatrinhbaocao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongbao`
--

DROP TABLE IF EXISTS `thongbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thongbao` (
  `MaThongBao` int(10) NOT NULL AUTO_INCREMENT,
  `TieuDe` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Ngay` datetime DEFAULT NULL,
  `NoiDung` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaThongBao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongbao`
--

LOCK TABLES `thongbao` WRITE;
/*!40000 ALTER TABLE `thongbao` DISABLE KEYS */;
INSERT INTO `thongbao` VALUES (1,'Đề tài Xây dựng ứng dụng bảo vệ điện thoại trên nền tảng Android đã được xếp lịch','2016-12-09 18:57:05','Ngày Báo Cáo: 2016-12-09 \n\nLúc:  19:00\n\nThời lượng: 1000\n\n');
/*!40000 ALTER TABLE `thongbao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `Password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChucVu` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HoTen` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaSo` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SDT` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ChuyenNganh` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Khoa` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `DiaChi` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Avatar` longblob,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('12000000','123','3','Đặng Thanh Dũng','12000000','12000000','12000000@gmail.com','CNPM','CNTT','1992-12-12','Quận Thủ Đức',NULL),('13000000','123','2','Nguyễn Trần Thi Văn','13000000','33534345','13000000@gmail.com','CNPM','CNTT','1996-12-01','Tây Ninh',NULL),('13000001','123','2','Lê Văn Vinh','13000001','12345678','13000001@gmail.com','CNPM','CNTT','1989-12-12',NULL,NULL),('13000002','123','2','Mai Tuấn Khôi','13000002','12345688','13000002@gmail.com','HTTT','CNTT','1988-12-12','Quận 1 TpHCM',NULL),('13000003','123','2','Nguyễn Minh Đạo','13000003','12321',NULL,NULL,NULL,'1996-12-12','Thủ Đức',NULL),('14110000','123','1','Nguyễn Hiển','14110000','123456789','14110100@gmail.com','CNPM','CNTT','1996-10-10','Long An',NULL),('14110001','123','1','Duy Hoàng','14110001',NULL,'14110001@gmail.com','CNPM','CNTT','1996-09-09','Quảng Nam',NULL),('14110002','123','1','Nguyễn Văn A','14110002','123456789','14110002@gmail.com','CNPM','CNTT','1994-12-12','Tiền Giang',NULL),('14110095','123','1','Lê Quốc Kỳ','14110095','8932832928',NULL,'CNPM','CNTT','1996-04-16','Số 1 Võ Văn Ngân',NULL),('14110104','123','1','Đào Hữu Lộc','14110104','01254709525','daohuuloc9419@gmail.com','CNPM','CNTT','1996-09-28','Bến Tre',NULL),('14110106','123','1','Lương Ngọc Lợi','14110106','12345678','14110000@gmail.com','CNPM','CNTT','1995-12-12','Tiền Giang',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_chucvu_chutich_detai`
--

DROP TABLE IF EXISTS `view_chucvu_chutich_detai`;
/*!50001 DROP VIEW IF EXISTS `view_chucvu_chutich_detai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_chucvu_chutich_detai` AS SELECT 
 1 AS `MaDeTai`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_chucvu_gvhd_detai`
--

DROP TABLE IF EXISTS `view_chucvu_gvhd_detai`;
/*!50001 DROP VIEW IF EXISTS `view_chucvu_gvhd_detai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_chucvu_gvhd_detai` AS SELECT 
 1 AS `MaDT`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_chucvu_phanbien_detai`
--

DROP TABLE IF EXISTS `view_chucvu_phanbien_detai`;
/*!50001 DROP VIEW IF EXISTS `view_chucvu_phanbien_detai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_chucvu_phanbien_detai` AS SELECT 
 1 AS `MaDeTai`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_chucvu_uyvien_detai`
--

DROP TABLE IF EXISTS `view_chucvu_uyvien_detai`;
/*!50001 DROP VIEW IF EXISTS `view_chucvu_uyvien_detai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_chucvu_uyvien_detai` AS SELECT 
 1 AS `MaDeTai`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_danh-sach-de-tai-xep-lich`
--

DROP TABLE IF EXISTS `view_danh-sach-de-tai-xep-lich`;
/*!50001 DROP VIEW IF EXISTS `view_danh-sach-de-tai-xep-lich`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_danh-sach-de-tai-xep-lich` AS SELECT 
 1 AS `MaDT`,
 1 AS `TenDeTai`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_demo`
--

DROP TABLE IF EXISTS `view_demo`;
/*!50001 DROP VIEW IF EXISTS `view_demo`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_demo` AS SELECT 
 1 AS `MaSo`,
 1 AS `HoTen`,
 1 AS `NgayBaoCao`,
 1 AS `ThoiGianBC`,
 1 AS `ThoiLuong`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_ds_giangvien`
--

DROP TABLE IF EXISTS `view_ds_giangvien`;
/*!50001 DROP VIEW IF EXISTS `view_ds_giangvien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_ds_giangvien` AS SELECT 
 1 AS `MaSo`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_dsdt_chucvu_huongdan`
--

DROP TABLE IF EXISTS `view_dsdt_chucvu_huongdan`;
/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_huongdan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_dsdt_chucvu_huongdan` AS SELECT 
 1 AS `MaSo`,
 1 AS `MaDT`,
 1 AS `TenDeTai`,
 1 AS `NgayBaoCao`,
 1 AS `ThoiGianBC`,
 1 AS `TrangThai`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_dsdt_chucvu_phanbien`
--

DROP TABLE IF EXISTS `view_dsdt_chucvu_phanbien`;
/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_phanbien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_dsdt_chucvu_phanbien` AS SELECT 
 1 AS `MaSo`,
 1 AS `MaDT`,
 1 AS `TenDeTai`,
 1 AS `NgayBaoCao`,
 1 AS `ThoiGianBC`,
 1 AS `TrangThai`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_dsdt_chucvu_uyvien`
--

DROP TABLE IF EXISTS `view_dsdt_chucvu_uyvien`;
/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_uyvien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_dsdt_chucvu_uyvien` AS SELECT 
 1 AS `MaSo`,
 1 AS `MaDT`,
 1 AS `TenDeTai`,
 1 AS `NgayBaoCao`,
 1 AS `ThoiGianBC`,
 1 AS `TrangThai`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_gvhd_xeplich`
--

DROP TABLE IF EXISTS `view_gvhd_xeplich`;
/*!50001 DROP VIEW IF EXISTS `view_gvhd_xeplich`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_gvhd_xeplich` AS SELECT 
 1 AS `MaDT`,
 1 AS `MaSo`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_nhomsv_detai`
--

DROP TABLE IF EXISTS `view_nhomsv_detai`;
/*!50001 DROP VIEW IF EXISTS `view_nhomsv_detai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_nhomsv_detai` AS SELECT 
 1 AS `MaDT`,
 1 AS `MaSV`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_soluongsv`
--

DROP TABLE IF EXISTS `view_soluongsv`;
/*!50001 DROP VIEW IF EXISTS `view_soluongsv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_soluongsv` AS SELECT 
 1 AS `MaDT`,
 1 AS `SoLuong`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_ten_detai_theo_madt`
--

DROP TABLE IF EXISTS `view_ten_detai_theo_madt`;
/*!50001 DROP VIEW IF EXISTS `view_ten_detai_theo_madt`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_ten_detai_theo_madt` AS SELECT 
 1 AS `MaDT`,
 1 AS `TenDeTai`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_tomtat_filebainop_xeplich`
--

DROP TABLE IF EXISTS `view_tomtat_filebainop_xeplich`;
/*!50001 DROP VIEW IF EXISTS `view_tomtat_filebainop_xeplich`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_tomtat_filebainop_xeplich` AS SELECT 
 1 AS `MaDT`,
 1 AS `TomTatDT`,
 1 AS `FileBaiNop`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_xemketquagv`
--

DROP TABLE IF EXISTS `view_xemketquagv`;
/*!50001 DROP VIEW IF EXISTS `view_xemketquagv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_xemketquagv` AS SELECT 
 1 AS `MaSo`,
 1 AS `TenDeTai`,
 1 AS `ThoiGianBC`,
 1 AS `NgayBaoCao`,
 1 AS `MaGVHD`,
 1 AS `MaChuTich`,
 1 AS `MaGVPB`,
 1 AS `MaUyVien`,
 1 AS `DiemGVHD`,
 1 AS `DiemGVPB`,
 1 AS `DiemUV`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_xemketquasv`
--

DROP TABLE IF EXISTS `view_xemketquasv`;
/*!50001 DROP VIEW IF EXISTS `view_xemketquasv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_xemketquasv` AS SELECT 
 1 AS `MaSV`,
 1 AS `MaDT`,
 1 AS `TenDeTai`,
 1 AS `NgayBaoCao`,
 1 AS `ThoiGianBC`,
 1 AS `MaGVPB`,
 1 AS `MaUyVien`,
 1 AS `MaChuTich`,
 1 AS `MaGVHD`,
 1 AS `NhanXetGVHD`,
 1 AS `DiemGVHD`,
 1 AS `NhanXetGVPB`,
 1 AS `DiemGVPB`,
 1 AS `NhanXetUV`,
 1 AS `DiemUV`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewchitietdetai`
--

DROP TABLE IF EXISTS `viewchitietdetai`;
/*!50001 DROP VIEW IF EXISTS `viewchitietdetai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewchitietdetai` AS SELECT 
 1 AS `MaDeTai`,
 1 AS `TenDeTai`,
 1 AS `MaNhom`,
 1 AS `MaGVHD`,
 1 AS `MaGVPB`,
 1 AS `MaUyVien`,
 1 AS `MaChuTich`,
 1 AS `ThoiGianBC`,
 1 AS `ThoiLuong`,
 1 AS `NgayBaoCao`,
 1 AS `TomTatDT`,
 1 AS `FileBaiNop`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdanhsachdetai`
--

DROP TABLE IF EXISTS `viewdanhsachdetai`;
/*!50001 DROP VIEW IF EXISTS `viewdanhsachdetai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewdanhsachdetai` AS SELECT 
 1 AS `MaDT`,
 1 AS `TenDeTai`,
 1 AS `MaGVHD`,
 1 AS `MaGVPB`,
 1 AS `MaUyVien`,
 1 AS `MaChuTich`,
 1 AS `NgayBaoCao`,
 1 AS `ThoiGianBC`,
 1 AS `TrangThai`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdanhsachdetaisv`
--

DROP TABLE IF EXISTS `viewdanhsachdetaisv`;
/*!50001 DROP VIEW IF EXISTS `viewdanhsachdetaisv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewdanhsachdetaisv` AS SELECT 
 1 AS `MaSo`,
 1 AS `HoTen`,
 1 AS `TenDeTai`,
 1 AS `NgayBaoCao`,
 1 AS `ThoiGianBC`,
 1 AS `ThoiLuong`,
 1 AS `TrangThaiSV`,
 1 AS `MaDT`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewtenchutichcuasv`
--

DROP TABLE IF EXISTS `viewtenchutichcuasv`;
/*!50001 DROP VIEW IF EXISTS `viewtenchutichcuasv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewtenchutichcuasv` AS SELECT 
 1 AS `MaDeTai`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewtengvhdcuasv`
--

DROP TABLE IF EXISTS `viewtengvhdcuasv`;
/*!50001 DROP VIEW IF EXISTS `viewtengvhdcuasv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewtengvhdcuasv` AS SELECT 
 1 AS `MaDT`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewtengvpbcuasv`
--

DROP TABLE IF EXISTS `viewtengvpbcuasv`;
/*!50001 DROP VIEW IF EXISTS `viewtengvpbcuasv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewtengvpbcuasv` AS SELECT 
 1 AS `MaDeTai`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewtenuyviencuasv`
--

DROP TABLE IF EXISTS `viewtenuyviencuasv`;
/*!50001 DROP VIEW IF EXISTS `viewtenuyviencuasv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewtenuyviencuasv` AS SELECT 
 1 AS `MaDeTai`,
 1 AS `HoTen`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `xeplich`
--

DROP TABLE IF EXISTS `xeplich`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xeplich` (
  `MaDeTai` int(11) NOT NULL,
  `MaGVPB` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaUyVien` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaChuTich` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ThoiGianBC` time DEFAULT NULL,
  `ThoiLuong` int(11) DEFAULT NULL,
  `NgayBaoCao` date DEFAULT NULL,
  PRIMARY KEY (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xeplich`
--

LOCK TABLES `xeplich` WRITE;
/*!40000 ALTER TABLE `xeplich` DISABLE KEYS */;
INSERT INTO `xeplich` VALUES (1,'12000000','13000001','12000000','19:00:00',1000,'2016-12-09'),(2,NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `xeplich` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbobaocaophanbien'
--
/*!50003 DROP PROCEDURE IF EXISTS `spAddThongBao` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spAddThongBao`(TieuDe varchar(200),Ngay datetime,NoiDung varchar(200))
BEGIN
 
  declare id int;
 
    set id=(select count(*) from thongbao)+1;
 

 
    insert into thongbao values(id,TieuDe,Ngay,NoiDung);
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spCapNhatDiem` */;
ALTER DATABASE `dbobaocaophanbien` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spCapNhatDiem`(_MaDeTai int,_MaSo varchar(50),_Diem float,_NhanXet varchar(50))
BEGIN

	declare magvhd varchar(50) default (select MaGVHD from ketqua where MaDT=_MaDeTai);
	declare magvpb varchar(50) default (select MaGVPB from ketqua where MaDT=_MaDeTai);
    declare mauv varchar(50) default (select MaUV from ketqua where MaDT=_MaDeTai);
	
    select "magvhd:"+magvhd;
	select "magvpb:"+magvpb;
    select "mauv:"+mauv;
    
    if _MaSo=magvhd 
    then update ketqua set DiemGVHD=_Diem, NhanXetGVHD=_NhanXet where MaDT=_MaDeTai;
    
    elseif _MaSo=magvpb
    then update ketqua set DiemGVPB=_Diem, NhanXetGVPB=_NhanXet where MaDT=_MaDeTai;
    
    elseif _MaSo=mauv
    then update ketqua set DiemUV=_Diem, NhanXetUV=_NhanXet where MaDT=_MaDeTai;
    
	end if;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dbobaocaophanbien` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `spDemoXepLich` */;
ALTER DATABASE `dbobaocaophanbien` CHARACTER SET utf8 COLLATE utf8_general_ci ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spDemoXepLich`(
     _NgayBaoCao date,
     _ThoiGianBaoCao time,
     _ThoiLuongBaoCao int
)
BEGIN
		select user.MaSo,user.HoTen
		from user
		where (user.ChucVu!=1) and user.MaSo not in ( select MaSo
		from view_demo
        where CONCAT(_NgayBaoCao,' ',_ThoiGianBaoCao) between CONCAT(NgayBaoCao,' ',ThoiGianBC) and CONCAT(NgayBaoCao, ' ',ADDTIME(ThoiGianBC, SEC_TO_TIME(ThoiLuong*60)))
        or CONCAT(_NgayBaoCao, ' ', ADDTIME(_ThoiGianBaoCao, SEC_TO_TIME(_ThoiLuongBaoCao*60))) between CONCAT(NgayBaoCao,' ',ThoiGianBC) and CONCAT(NgayBaoCao, ' ',ADDTIME(ThoiGianBC, SEC_TO_TIME(ThoiLuong*60)))
        or CONCAT(NgayBaoCao,' ',ThoiGianBC) between CONCAT(_NgayBaoCao,' ',_ThoiGianBaoCao) and CONCAT(_NgayBaoCao, ' ', ADDTIME(_ThoiGianBaoCao, SEC_TO_TIME(_ThoiLuongBaoCao*60)))
        or CONCAT(NgayBaoCao, ' ',ADDTIME(ThoiGianBC, SEC_TO_TIME(ThoiLuong*60))) between CONCAT(_NgayBaoCao,' ',_ThoiGianBaoCao) and CONCAT(_NgayBaoCao, ' ', ADDTIME(_ThoiGianBaoCao, SEC_TO_TIME(_ThoiLuongBaoCao*60)))
        );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
ALTER DATABASE `dbobaocaophanbien` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
/*!50003 DROP PROCEDURE IF EXISTS `spVaoBaoCao_GV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spVaoBaoCao_GV`(_MaSo varchar(50))
BEGIN
	SET time_zone ='+07:00';
    select xeplich.MaDeTai,detai.TenDeTai,xeplich.NgayBaoCao,xeplich.ThoiGianBC,xeplich.MaChuTich
	from xeplich,detai,quatrinhbaocao
	where quatrinhbaocao.TrangThaiSV='Được báo cáo' and
		
    xeplich.NgayBaoCao=CURDATE() and 
    
    (CurTime() between xeplich.ThoiGianBC and ADDTIME(xeplich.ThoiGianBC, SEC_TO_TIME(xeplich.ThoiLuong*60))) and
    
    (_MaSo in(MaGVPB,MaGVHD,MaUyVien)) and xeplich.MaDeTai=detai.MaDT and quatrinhbaocao.MaDT=detai.MaDT;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spVaoBaoCao_SV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spVaoBaoCao_SV`(_MaSo varchar(50))
BEGIN
	
    declare manhom int default (select MaNhom from nhom where nhom.MaSV=_MaSo);
    SET time_zone ='+07:00';
	select xeplich.MaDeTai,detai.MaNhom,detai.TenDeTai,xeplich.NgayBaoCao,xeplich.ThoiGianBC,xeplich.MaChuTich
	from xeplich,detai,quatrinhbaocao
	where quatrinhbaocao.TrangThaiSV='Được báo cáo' and
    
    xeplich.NgayBaoCao=CURDATE() and 
    
    (CurTime() between xeplich.ThoiGianBC and ADDTIME(xeplich.ThoiGianBC, SEC_TO_TIME(xeplich.ThoiLuong*60))) and
    
    detai.MaNhom=manhom and xeplich.MaDeTai=detai.MaDT and quatrinhbaocao.MaDT=detai.MaDT;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spXepLich` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spXepLich`(
	_MaDeTai int,
    _MaUyVien varchar(45),
    _MaGVPB varchar(45),
    _MaChuTich varchar(45),
    _NgayBaoCao date,
    _ThoiGianBC time,
    _ThoiLuong int
    
)
BEGIN
	declare MaGVHD varchar(45) default (select MaGVHD from detai where detai.MaDT=_MaDeTai);
    
	update xeplich set
    
    mauyvien=_MaUyVien,
    magvpb=_MaGVPB, 
    machutich=_MaChuTich,
    ngaybaocao=_NgayBaoCao, 
    thoigianbc=_ThoiGianBC,
    thoiluong=_ThoiLuong
    where xeplich.madetai=_MaDeTai;

    insert into ketqua(MaDT,MaGVHD,MaGVPB,MaUV) values(_MaDeTai,MaGVHD,_MaGVPB,_MaUyVien);
    
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_chucvu_chutich_detai`
--

/*!50001 DROP VIEW IF EXISTS `view_chucvu_chutich_detai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_chucvu_chutich_detai` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`user` join `xeplich`) where (`user`.`MaSo` = `xeplich`.`MaChuTich`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_chucvu_gvhd_detai`
--

/*!50001 DROP VIEW IF EXISTS `view_chucvu_gvhd_detai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_chucvu_gvhd_detai` AS (select `detai`.`MaDT` AS `MaDT`,`user`.`HoTen` AS `HoTen` from (`user` join `detai`) where (`user`.`MaSo` = `detai`.`MaGVHD`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_chucvu_phanbien_detai`
--

/*!50001 DROP VIEW IF EXISTS `view_chucvu_phanbien_detai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_chucvu_phanbien_detai` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`user` join `xeplich`) where (`user`.`MaSo` = `xeplich`.`MaGVPB`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_chucvu_uyvien_detai`
--

/*!50001 DROP VIEW IF EXISTS `view_chucvu_uyvien_detai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_chucvu_uyvien_detai` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`user` join `xeplich`) where (`user`.`MaSo` = `xeplich`.`MaUyVien`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_danh-sach-de-tai-xep-lich`
--

/*!50001 DROP VIEW IF EXISTS `view_danh-sach-de-tai-xep-lich`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_danh-sach-de-tai-xep-lich` AS (select `detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai` from (`detai` join `xeplich`) where ((`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (isnull(`xeplich`.`MaGVPB`) or isnull(`xeplich`.`MaChuTich`) or isnull(`xeplich`.`MaUyVien`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_demo`
--

/*!50001 DROP VIEW IF EXISTS `view_demo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_demo` AS (select `q`.`MaSo` AS `MaSo`,`q`.`HoTen` AS `HoTen`,`q`.`NgayBaoCao` AS `NgayBaoCao`,`q`.`ThoiGianBC` AS `ThoiGianBC`,`q`.`ThoiLuong` AS `ThoiLuong` from ((select `dbobaocaophanbien`.`user`.`MaSo` AS `MaSo`,`dbobaocaophanbien`.`user`.`HoTen` AS `HoTen`,`dbobaocaophanbien`.`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`dbobaocaophanbien`.`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`dbobaocaophanbien`.`xeplich`.`ThoiLuong` AS `ThoiLuong` from ((`dbobaocaophanbien`.`detai` join `dbobaocaophanbien`.`user`) join `dbobaocaophanbien`.`xeplich`) where ((`dbobaocaophanbien`.`detai`.`MaGVHD` = `dbobaocaophanbien`.`user`.`MaSo`) and (`dbobaocaophanbien`.`detai`.`MaDT` = `dbobaocaophanbien`.`xeplich`.`MaDeTai`))) union (select `dbobaocaophanbien`.`user`.`MaSo` AS `MaSo`,`dbobaocaophanbien`.`user`.`HoTen` AS `HoTen`,`dbobaocaophanbien`.`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`dbobaocaophanbien`.`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`dbobaocaophanbien`.`xeplich`.`ThoiLuong` AS `ThoiLuong` from (`dbobaocaophanbien`.`user` join `dbobaocaophanbien`.`xeplich`) where (`dbobaocaophanbien`.`xeplich`.`MaGVPB` = `dbobaocaophanbien`.`user`.`MaSo`)) union (select `dbobaocaophanbien`.`user`.`MaSo` AS `MaSo`,`dbobaocaophanbien`.`user`.`HoTen` AS `HoTen`,`dbobaocaophanbien`.`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`dbobaocaophanbien`.`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`dbobaocaophanbien`.`xeplich`.`ThoiLuong` AS `ThoiLuong` from (`dbobaocaophanbien`.`user` join `dbobaocaophanbien`.`xeplich`) where (`dbobaocaophanbien`.`xeplich`.`MaUyVien` = `dbobaocaophanbien`.`user`.`MaSo`))) `q` where ((concat(`q`.`NgayBaoCao`,' ',addtime(`q`.`ThoiGianBC`,sec_to_time((`q`.`ThoiLuong` * 60)))) >= now()) or isnull(`q`.`NgayBaoCao`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_ds_giangvien`
--

/*!50001 DROP VIEW IF EXISTS `view_ds_giangvien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_ds_giangvien` AS (select `user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen` from `user` where ((`user`.`ChucVu` = 2) or (`user`.`ChucVu` = 3))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dsdt_chucvu_huongdan`
--

/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_huongdan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dsdt_chucvu_huongdan` AS (select `user`.`MaSo` AS `MaSo`,`detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`quatrinhbaocao`.`TrangThai` AS `TrangThai` from (((`user` join `xeplich`) join `detai`) join `quatrinhbaocao`) where ((`user`.`MaSo` = `detai`.`MaGVHD`) and (`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`) and (`detai`.`MaDT` = `xeplich`.`MaDeTai`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dsdt_chucvu_phanbien`
--

/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_phanbien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dsdt_chucvu_phanbien` AS (select `user`.`MaSo` AS `MaSo`,`detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`quatrinhbaocao`.`TrangThai` AS `TrangThai` from (((`user` join `xeplich`) join `detai`) join `quatrinhbaocao`) where ((`user`.`MaSo` = `xeplich`.`MaGVPB`) and (`xeplich`.`MaDeTai` = `detai`.`MaDT`) and (`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_dsdt_chucvu_uyvien`
--

/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_uyvien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_dsdt_chucvu_uyvien` AS (select `user`.`MaSo` AS `MaSo`,`detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`quatrinhbaocao`.`TrangThai` AS `TrangThai` from (((`user` join `xeplich`) join `detai`) join `quatrinhbaocao`) where ((`user`.`MaSo` = `xeplich`.`MaUyVien`) and (`xeplich`.`MaDeTai` = `detai`.`MaDT`) and (`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_gvhd_xeplich`
--

/*!50001 DROP VIEW IF EXISTS `view_gvhd_xeplich`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_gvhd_xeplich` AS (select `detai`.`MaDT` AS `MaDT`,`user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen` from (`user` join `detai`) where (`user`.`MaSo` = `detai`.`MaGVHD`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_nhomsv_detai`
--

/*!50001 DROP VIEW IF EXISTS `view_nhomsv_detai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_nhomsv_detai` AS (select `detai`.`MaDT` AS `MaDT`,`nhom`.`MaSV` AS `MaSV`,`user`.`HoTen` AS `HoTen` from ((`detai` join `nhom`) join `user`) where ((`detai`.`MaNhom` = `nhom`.`MaNhom`) and (`user`.`MaSo` = `nhom`.`MaSV`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_soluongsv`
--

/*!50001 DROP VIEW IF EXISTS `view_soluongsv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_soluongsv` AS (select `detai`.`MaDT` AS `MaDT`,count(`nhom`.`MaSV`) AS `SoLuong` from (`detai` join `nhom`) where (`detai`.`MaNhom` = `nhom`.`MaNhom`) group by `detai`.`MaDT`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_ten_detai_theo_madt`
--

/*!50001 DROP VIEW IF EXISTS `view_ten_detai_theo_madt`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_ten_detai_theo_madt` AS (select `detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai` from `detai`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_tomtat_filebainop_xeplich`
--

/*!50001 DROP VIEW IF EXISTS `view_tomtat_filebainop_xeplich`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_tomtat_filebainop_xeplich` AS (select `quatrinhbaocao`.`MaDT` AS `MaDT`,`quatrinhbaocao`.`TomTatDT` AS `TomTatDT`,`quatrinhbaocao`.`FileBaiNop` AS `FileBaiNop` from `quatrinhbaocao`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_xemketquagv`
--

/*!50001 DROP VIEW IF EXISTS `view_xemketquagv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_xemketquagv` AS select distinct `user`.`MaSo` AS `MaSo`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`detai`.`MaGVHD` AS `MaGVHD`,`xeplich`.`MaChuTich` AS `MaChuTich`,`xeplich`.`MaGVPB` AS `MaGVPB`,`xeplich`.`MaUyVien` AS `MaUyVien`,`ketqua`.`DiemGVHD` AS `DiemGVHD`,`ketqua`.`DiemGVPB` AS `DiemGVPB`,`ketqua`.`DiemUV` AS `DiemUV` from (((`detai` join `xeplich`) join `ketqua`) join `user`) where ((`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (`detai`.`MaDT` = `ketqua`.`MaDT`) and ((`user`.`MaSo` = `xeplich`.`MaGVPB`) or (`user`.`MaSo` = `xeplich`.`MaUyVien`) or (`user`.`MaSo` = `detai`.`MaGVHD`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_xemketquasv`
--

/*!50001 DROP VIEW IF EXISTS `view_xemketquasv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_xemketquasv` AS select `nhom`.`MaSV` AS `MaSV`,`detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`MaGVPB` AS `MaGVPB`,`xeplich`.`MaUyVien` AS `MaUyVien`,`xeplich`.`MaChuTich` AS `MaChuTich`,`detai`.`MaGVHD` AS `MaGVHD`,`ketqua`.`NhanXetGVHD` AS `NhanXetGVHD`,`ketqua`.`DiemGVHD` AS `DiemGVHD`,`ketqua`.`NhanXetGVPB` AS `NhanXetGVPB`,`ketqua`.`DiemGVPB` AS `DiemGVPB`,`ketqua`.`NhanXetUV` AS `NhanXetUV`,`ketqua`.`DiemUV` AS `DiemUV` from (((`ketqua` join `detai`) join `xeplich`) join `nhom`) where ((`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (`detai`.`MaNhom` = `nhom`.`MaNhom`) and (`detai`.`MaDT` = `ketqua`.`MaDT`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewchitietdetai`
--

/*!50001 DROP VIEW IF EXISTS `viewchitietdetai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewchitietdetai` AS select distinct `temp`.`MaDeTai` AS `MaDeTai`,`temp`.`TenDeTai` AS `TenDeTai`,`temp`.`MaNhom` AS `MaNhom`,`temp`.`MaGVHD` AS `MaGVHD`,`temp`.`MaGVPB` AS `MaGVPB`,`temp`.`MaUyVien` AS `MaUyVien`,`temp`.`MaChuTich` AS `MaChuTich`,`temp`.`ThoiGianBC` AS `ThoiGianBC`,`temp`.`ThoiLuong` AS `ThoiLuong`,`temp`.`NgayBaoCao` AS `NgayBaoCao`,`temp`.`TomTatDT` AS `TomTatDT`,`temp`.`FileBaiNop` AS `FileBaiNop` from (select `dbobaocaophanbien`.`xeplich`.`MaDeTai` AS `MaDeTai`,`dbobaocaophanbien`.`detai`.`TenDeTai` AS `TenDeTai`,`dbobaocaophanbien`.`nhom`.`MaNhom` AS `MaNhom`,`dbobaocaophanbien`.`detai`.`MaGVHD` AS `MaGVHD`,`dbobaocaophanbien`.`xeplich`.`MaGVPB` AS `MaGVPB`,`dbobaocaophanbien`.`xeplich`.`MaUyVien` AS `MaUyVien`,`dbobaocaophanbien`.`xeplich`.`MaChuTich` AS `MaChuTich`,`dbobaocaophanbien`.`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`dbobaocaophanbien`.`xeplich`.`ThoiLuong` AS `ThoiLuong`,`dbobaocaophanbien`.`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`dbobaocaophanbien`.`quatrinhbaocao`.`TomTatDT` AS `TomTatDT`,`dbobaocaophanbien`.`quatrinhbaocao`.`FileBaiNop` AS `FileBaiNop` from (((`dbobaocaophanbien`.`xeplich` join `dbobaocaophanbien`.`detai`) join `dbobaocaophanbien`.`nhom`) join `dbobaocaophanbien`.`quatrinhbaocao`) where ((`dbobaocaophanbien`.`xeplich`.`MaDeTai` = `dbobaocaophanbien`.`detai`.`MaDT`) and (`dbobaocaophanbien`.`detai`.`MaNhom` = `dbobaocaophanbien`.`nhom`.`MaNhom`) and (`dbobaocaophanbien`.`quatrinhbaocao`.`MaDT` = `dbobaocaophanbien`.`detai`.`MaDT`) and `dbobaocaophanbien`.`detai`.`MaDT`)) `temp` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdanhsachdetai`
--

/*!50001 DROP VIEW IF EXISTS `viewdanhsachdetai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdanhsachdetai` AS select `detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`detai`.`MaGVHD` AS `MaGVHD`,`xeplich`.`MaGVPB` AS `MaGVPB`,`xeplich`.`MaUyVien` AS `MaUyVien`,`xeplich`.`MaChuTich` AS `MaChuTich`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`quatrinhbaocao`.`TrangThai` AS `TrangThai` from ((`detai` join `quatrinhbaocao`) join `xeplich`) where ((`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`) and (`xeplich`.`MaDeTai` = `detai`.`MaDT`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdanhsachdetaisv`
--

/*!50001 DROP VIEW IF EXISTS `viewdanhsachdetaisv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdanhsachdetaisv` AS (select `user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`ThoiLuong` AS `ThoiLuong`,`quatrinhbaocao`.`TrangThaiSV` AS `TrangThaiSV`,`detai`.`MaDT` AS `MaDT` from ((((`user` join `nhom`) join `detai`) join `xeplich`) join `quatrinhbaocao`) where ((`user`.`MaSo` = `nhom`.`MaSV`) and (`nhom`.`MaNhom` = `detai`.`MaNhom`) and (`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`) and (`detai`.`MaDT` = `xeplich`.`MaDeTai`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewtenchutichcuasv`
--

/*!50001 DROP VIEW IF EXISTS `viewtenchutichcuasv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtenchutichcuasv` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`xeplich` join `user`) where (`xeplich`.`MaChuTich` = `user`.`MaSo`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewtengvhdcuasv`
--

/*!50001 DROP VIEW IF EXISTS `viewtengvhdcuasv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtengvhdcuasv` AS (select `detai`.`MaDT` AS `MaDT`,`user`.`HoTen` AS `HoTen` from (`detai` join `user`) where (`detai`.`MaGVHD` = `user`.`MaSo`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewtengvpbcuasv`
--

/*!50001 DROP VIEW IF EXISTS `viewtengvpbcuasv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtengvpbcuasv` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`xeplich` join `user`) where (`xeplich`.`MaGVPB` = `user`.`MaSo`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewtenuyviencuasv`
--

/*!50001 DROP VIEW IF EXISTS `viewtenuyviencuasv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewtenuyviencuasv` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`xeplich` join `user`) where (`xeplich`.`MaUyVien` = `user`.`MaSo`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-09 20:39:20
