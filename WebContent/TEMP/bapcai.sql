CREATE DATABASE  IF NOT EXISTS `dbobaocaophanbien` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dbobaocaophanbien`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dbobaocaophanbien
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
  PRIMARY KEY (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detai`
--

LOCK TABLES `detai` WRITE;
/*!40000 ALTER TABLE `detai` DISABLE KEYS */;
INSERT INTO `detai` VALUES (1,'13000000','1','Đề tài 1','CNTT'),(2,'13000002','2','Đề tài 2','CNTT'),(3,'12000000','1','hhjasj','CNTT');
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
INSERT INTO `ketqua` VALUES (1,'14110095',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
  `MaSV` varchar(45) NOT NULL,
  PRIMARY KEY (`MaNhom`,`MaSV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhom`
--

LOCK TABLES `nhom` WRITE;
/*!40000 ALTER TABLE `nhom` DISABLE KEYS */;
INSERT INTO `nhom` VALUES (1,'14110095'),(1,'14110104'),(2,'14110000');
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
  `NhanXetTruocBC` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `TomTatDT` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `FileBaiNop` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `TrangThai` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `XepLoai` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `TrangThaiSV` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quatrinhbaocao`
--

LOCK TABLES `quatrinhbaocao` WRITE;
/*!40000 ALTER TABLE `quatrinhbaocao` DISABLE KEYS */;
INSERT INTO `quatrinhbaocao` VALUES (1,'sfds',NULL,'Edit-Document-icon.png','Chưa xét duyệt',NULL,'Chưa nộp'),(2,'Nhận xét trước báo cáo 2','Tóm tắt đề tài 2','fafsak','Xét duyệt',NULL,'Đã nộp');
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
  `TieuDe` varchar(45) DEFAULT NULL,
  `Ngay` datetime DEFAULT NULL,
  `NoiDung` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`MaThongBao`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongbao`
--

LOCK TABLES `thongbao` WRITE;
/*!40000 ALTER TABLE `thongbao` DISABLE KEYS */;
INSERT INTO `thongbao` VALUES (1,'21312321được xếp !','2016-11-21 14:16:35','Ngày báo cáo:2016-11-30 \nLúc:  19:25\nThời Lượng: 30'),(2,'32131321','2016-11-21 14:16:35','Ngày báo cáo:2016-11-30 ');
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
  `Avatar` longblob,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('12000000','123','3','Trưởng khoa 1','12000000','12000000','12000000@gmail.com','CNPM','CNTT','1992-12-12','Quận Thủ Dức TpHCM',NULL),('13000000','123','2','Giảng Viên 1','13000000','33534345','13000000@gmail.com','CNPM','CNTT','1996-12-01','ksajas','�\��\�\0JFIF\0\0H\0H\0\0�\�\0C\0\r		\r\r\r  ##########�\�\0C\r\Z\Z  !     !\"!    !\"!\"!!!\"!\"\"\"\"\"\"###############��\0\0�\0�\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0?\0\0\0\0\0\0!\"1AQaq#2Br�$34R���C��\�b\��E���\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\�\0/\0\0\0\0\0\0\0\01!\"2ABQa�#q3R�b�����\�\0\0\0?\0\�\�\0P\0�@�?h\0�׽�r<��\�\00\�7�0\�\r]\�4�E\�\����߹�:K\�PTj#\�\�1\"x�]\r\�U3�Z�N�v矯��GI.K~\�H`�\�6��C\�;\rF��\0k\�\0����\0\0(\0pyۜ\0l�g�\�\\u�]id��@�Q<J�\�M\�\�B��\"\�5\�{�\�sj\�Nd�֬�۵�\���\�:c(b�d��\�Rt\�\�N\�ͨw�\�*WD�X\�{G��S��?N�c.�jr\�W$�n%Ѩ��&4\�7\�\�\�m6ZI�d�\�\��\�<7R\���U\'9I\�\�\� \�A\�zxG�ly\0\n\0\�\�&K\0(\0�\�\0ZmY�_���+�^\�h���\�\�l�����\�OFi\�uZ�#�&8u:o�m%�b\�Źd/\�����?5\"\�\��F�\�\�\0�Di\�^q�oԂ\�\r�\�6ʧ\�g�a\�L�\�\n\�\�\0-\�M#o���	Ţ\r,V��J}Gx��*\�9\��Rt\0_���oaa~	,�N���:@�\'x��ʋ6�\��\�x\�}�\�\�\�&^��Q\'\"\n�,\n�����\0�\�f˦C�\0�FAak� \�s\���1@1@\��T��)`a�b�\0I	\�\0\';;��\�\�\������ͥW,7�s����\�H�*H�ݻq-F��I\�P�ҢR�*��6��T�\�(�0J\�\�$\�1HI*>p(�2�Mel8\�I)[kJ�\�\�DT�獰R]�7+O�u\�Q�\�\�!cR��\�#�<���GY-[�lGMʶ�@\�R��\n�uE\��\��X\�\�$߰�y��V\�H�fX����s�-��1����\'\�j-J�Sd�J83�ƃ�̧�h\�N)\Z%dT�*]J�2�Z���S	\�\�\�Sj��l3N\0\0=��O�\� (P\�\0�6\�\00��v�),\�4R\�uk\�#�US���\�e7�x\�j�V��\�%\�k4��\��C\�B�V�S\���\�8\�\�񢗛�\�_��Ų�i�\�hH\��\0�\�O�4�&�U�\�\Z�\�[)#E��D����H����	�t\�s\n\�\�\��\�mU����J��̳#����Bz�ź�*�+M\�F�	��1NQ\�\�+@?Y�\0X\�\Z\�o\�	�:�F����N�:\�\�YZUo;r��Ԁ�0^\�2J�\�\�\�8\�ueӣ�\�\�m�ē\nl���&\\[�^�\�\�|\�%=\�\���\0�_0�\�\�P�ZT�&�5M�d�;&\�fe��U�B.4��?l�8	�p+@:l�/89w�\�k!-6�\�V�u�h��T���\0\� \�E�\�Ew�\�\��9��[tG��/\��\�K�xl\�\�P_rR�\�!4G���+\�s�\�\�8tZ�	\�\�b\�z�:\�.��\�\�M\�GB#\�rL\�\�n%9C\�\�ǳ�����\n�&�V\\y���B[H$\�Y\�\�J`����Sݛ�ZY��A[�\�\0�}���Bb�C3�f��Υ\�\���RI\�]��\��\��Q*�\�\��\�57��Oi�%*ɟW8�2{\�9<5\�vo\�`h�驛�2�}S\�-�-\�Bu<\�\���w\�\�p,: ��g^R��\�c��g|���y�E�I\�;#63���8�%}�AOB�\0�\�\n��\�Pjp����(q�\�l\'\�IR2=r<\�ɞ%9�\�o\��j]��T�9)G���+�\�\�\�&��!-#�����\�;��lf\��̵-Wna�d!N\0���\�\�:^9��\��#{o�i*\�7I\�\�Ǵ|��Agq#�\�:�\"u\�Ci\'p8��W���\�Q�͉;\Zt��\�*�Q��J	Iɉ�ee.\���-B\���n��b\�-�/�\�\�Bf�Ov�\�nΫ:�\�\Z͚\�@趄\�zF�\�\�ܸ\��m���ò�VTD�d?8S\�(�\0O?8�MN-�\n!S%	y�FVbTV�a\�x�]1\�%e�Ϲ\�8��_��\�\��s@��*�$�\�hQ̱\�AϼQ\'r:\���\�I��EG]4J\��W\�S�����͋8��{+I�V��:b�.\�GbU�դ_3�yno�\0z]J�R\�\Zz(~B:;<ZxMǰt��\���\�F�x��TUnEɩ\�[�	@yHmm:\r��[P��\�\�b\�dX:5�BQ|�m\�R�y\�9\�)��db���3<\�\�0�t�%�\�\�K,�\\*B����T*�\�\'\�#�:\�\�z[5F����\�L\��\�tQ\�O\�G��Ҵ\�\�\�hӝ\�1J{_m�X�\�G�Z�~\�0�\�h)�\��R}.��Yf���i9B\��x\�\�5�J\�H�>\�Ɂ\�\r(\�\�6K-:O�P#ϔz\�)Z��F��\0�˻>\�N\�\�Q\�<�F>R�\�oЋ��[\�J�e\�2��\'a\�9��T�\�kr�T������{8�\�\�Q�)\�\�R�\'�\�kֿ��\�A\"L�FU��up�P4ڜp�4�T��D�5$�\�:�����Y\\M\Z�0\�R\n�Ӣf\�WOt\'�?8�L�Wx7\nU�Uq�=)�\�۠�r�\�G�\�\�\�O\�ycg^l�e�� \�e�3Y�@D\���!@j�Ɓ �:\�n=Ƒ#ve&�6P\��\�T\�\n\Z\�H7ʭyD9�)&K�+(X�H�\�ve�q~Ω���6\�L��@�\�\'��\�Ǚ�\�\�x\��Ȇ%��ql�����@i\�ա\nH��\0#ĕ.g���\�\r�*~��+͟Ia7�Ыo;\�P=\r,��Zf\�d!��=S�+�\�~F5��\�\�\�M/\"�S���\�%�\0��G8�\�\0�tThm\�ceD\r\�QҎ�t#��=�O�F�\�Tf_�����\n*���F�v��U�v��q qZ\�\�ĺ�>��#V=2&\�1\�z\\\���\�2\'\�v\�vr��\�3R@N!�\0�\��e����5x�@\�d\�~xrJ��sbh���\�3\�NX�]\�1\�\��F2��4�b_�^V\�\�e�&��\�c\��:�I�\�\�Bv]�\�RNa3�hE?�i�ܑyz�eM%Ϊ˨`G���ՙ�R��\�g\�8�Lɨ���[�~\�\�\��+�I\��\�9wp]�\n�7\�7=*�\�u�%WͧG4���Oh\�\�_&��\�P��f4m�\�\n�\00Ӷ\��\�\�q)y���uꇚPZ��q0��`\r(\�D�V��Jcv�\�L\�\�7Bfj_�\�\�ܸW�B�B�\�O��JBtW��\�\Z.o2�8%�T\�;OfX�[\�**tb\�U\�N�_�^�pq�\�(��_��yQ9\�\Z�܈\�\�\�\�ؕ(A��U�Q���\0�u�����ѡK�\�\�:�\�\Z��-\��]T}\�#:U�_�\�a\�g��ȳ4҂�\�\�)�\��1\�S��T�LA���\'Rg\�\�\Z\�\�0�H_ ����jJ[<�nS-�\�%�x�\�2A9���$G�J��\�\�\�D��xU�6ЦU�in�H�)i\�4\r;,Q\�x��r�\�\�\�e9�\�%k\�=���t6\�5\�T���ΫzB7@\�E�<{Ʊw���Hm=(T̛�9�r\�����\�	��\0\�j�ͩ-\��mwʶ%ЃnW\nPQ\�\0�WS��/\�;0�\�\�M9m\�\��*��Y\��%�A�QE!ҿxo\��MN�H��k\"���8\�i^�vMG�����#\�=2\�\��x\�\rcJ`��\�\�p�ȸl�\n\�e\r+\0NuV�P\0c�w�)_���\�U#��\�4�\���T�t��\�G�Qo|�\�A<)Z}\nK3���uIe��;̼\'�+#�G^ӳ�7�2D�\��\�={U4\�sX��\�Sv\�\'Ft�\��\�<�~��\0$,�a%6Z�a���v\�ذ�\�\�yI�=H\� EqT�\�X�3c\�\�\�L$_�\���!r�\�m�΄c���sO(ԇ�\�T�\\�y^���N�	d\�7)]\�ԓ��u���bV��.b̒�xo\��EN�`�Y�N�\�i�h��M;\'6߰�(X��\0:3b�H\�������N\�S\�AC�i!\�㊰�\�k�\�W��c\�	\�eAK\��\'Q�vaїz\n\�g1Qԓ\�KGH?.}\�s\n���l�\�Mz\�\\��=n֊�M\�\�D\�\��d0\�\�Zs�\0ʖ\�>�Bn����{0�\�wؓ�0v3��\�=7V*\r\�Iy���n\�TTT��)\�\�ܣɢ\�Q�\'�y\�]���jjNd��}�\��\�:G�P\�2��N\�O\Z���6ߍ��4څ$6�\�\�$*]��}D�j:�9�[\�;\�i�\��݊r;�\�T\�D,��r*\�^�u�F�����1\�r4\�\�\�\�>W\�-��\�\�\�\0]\�F�8�� \���\�{\�h简\��\�Y���Lc]�g [HN�e�h�`4�\�8�{�7�+ *\��bVe�\��JQϬ̔\�\���Z�Zƭm\�j_m\�L�n�~�HHc\�\�\�\�\�Ɂ���zl\�\�i/�����\n���EV�k\�\�\�ُ�~:�N�+\��+KJ)\�(+\�ڷ\������(�\�v�\�vqSu�:��=\� \'��\�-OI6\�}\�pd:�\�,�I�=\�I���\nV�\�hh\�牭�J^\��@�1ӡ\�\�l3\�ru�g�\��S\�-�\���3A@I�)�&�Y�q\�\��\�\�r\�6��-IhfU�M��\"q�ܨJuL5�\"V\�\�G�J \�8Ƒ�p�����Q\�-,\�\�\�i�\�A\�r�z��\�5J\�I\�\�\��\�q\�\�vJ{%#An��2\rO3ui\�\�8(�S\0L��V�l{��|\�cz\�|�v#x��\�ncM\�\�\�#�C+\�E\�\0Pme\n\0=\�\�0\�H\0l\0f��\�~p��:�,\�\�P\0�\�u���!I\�*I �\�h\0�\�\�?hrI\�-�\'��\�%\�(\�x\0%!���JT\�W�2\�*\�\n\�\�\�2����\0�\�bLgQ\�ɝ\�le��@\�\�I\�t�S\��|\Z8^�\���\���bdI�j�5y�S��e\n)a^\�_rx.4\�\�;�\�mp$�\�\�6Ζ���a\�ً4\�\�(�ʿ	�	�~��\���j=\�\0\n\0\0(\0\�)���\�KuzY�\�'),('13000001','123','2','Giảng viên 2','13000001','12345678','13000001@gmail.com','CNPM','CNTT','1989-12-12',NULL,NULL),('13000002','123','2','Giảng viên 3','13000002','12345688','13000002@gmail.com','HTTT','CNTT','1988-12-12','Quận 1 tpHCM',NULL),('13000003','123','2','Giảng viên 4','13000003',NULL,NULL,NULL,NULL,'1996-12-12',NULL,NULL),('14110000','123','1','Sinh Viên 3','14110000','12345678','14110000@gmail.com','CNPM','CNTT','1995-12-12','TIền giangggg',NULL);
INSERT INTO `user` VALUES ('14110104','123','1','Đào Hữu Lộc','14110104',NULL,NULL,'CNPM','CNTT','1996-12-12',NULL,NULL);
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
 1 AS `MaSV`,
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
 1 AS `MaSV`,
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
 1 AS `MaSV`,
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
 1 AS `MaSV`,
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
  `MaGVPB` varchar(45) DEFAULT NULL,
  `MaUyVien` varchar(45) DEFAULT NULL,
  `MaChuTich` varchar(45) DEFAULT NULL,
  `ThoiGianBC` time DEFAULT NULL,
  `ThoiLuong` int(11) DEFAULT NULL,
  `NgayBaoCao` date DEFAULT NULL,
  PRIMARY KEY (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xeplich`
--

LOCK TABLES `xeplich` WRITE;
/*!40000 ALTER TABLE `xeplich` DISABLE KEYS */;
INSERT INTO `xeplich` VALUES (1,'13000001','12000000','13000001','09:00:00',45,'2016-11-22'),(2,'13000001','12000000','13000001','19:25:00',30,'2016-11-30'),(3,NULL,NULL,NULL,NULL,NULL,NULL);
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `spAddThongBao`(TieuDe varchar(45),Ngay datetime,NoiDung varchar(200))
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
/*!50003 DROP PROCEDURE IF EXISTS `spThemLichTruc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spThemLichTruc`(
     _NgayBaoCao date,
     _ThoiGianBaoCao time,
     _ThoiLuongBaoCao int
)
BEGIN

select user.MaSo,user.HoTen
from user
where (user.ChucVu!=1) and user.MaSo not in ( select MaSo
from view_demo
where (CONCAT(_NgayBaoCao,' ',_ThoiGianBaoCao)>=CONCAT(NgayBaoCao,' ',ThoiGianBC)and CONCAT(_NgayBaoCao, ' ', _ThoiGianBaoCao)<=CONCAT(NgayBaoCao, ' ',ADDTIME(ThoiGianBC, SEC_TO_TIME(ThoiLuong*60))))
 or (CONCAT(_NgayBaoCao, ' ', ADDTIME(_ThoiGianBaoCao, SEC_TO_TIME(_ThoiLuongBaoCao*60)))>=CONCAT(NgayBaoCao, ' ', ThoiGianBC) and CONCAT(_NgayBaoCao, ' ', ADDTIME(_ThoiGianBaoCao, SEC_TO_TIME(_ThoiLuongBaoCao*60)))<=CONCAT(NgayBaoCao,' ',ADDTIME(ThoiGianBC, SEC_TO_TIME(ThoiLuong*60))))
);
 
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
/*!50001 VIEW `view_demo` AS (select `q`.`MaSo` AS `MaSo`,`q`.`HoTen` AS `HoTen`,`q`.`NgayBaoCao` AS `NgayBaoCao`,`q`.`ThoiGianBC` AS `ThoiGianBC`,`q`.`ThoiLuong` AS `ThoiLuong` from ((select `dbobaocaophanbien`.`user`.`MaSo` AS `MaSo`,`dbobaocaophanbien`.`user`.`HoTen` AS `HoTen`,`dbobaocaophanbien`.`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`dbobaocaophanbien`.`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`dbobaocaophanbien`.`xeplich`.`ThoiLuong` AS `ThoiLuong` from ((`dbobaocaophanbien`.`detai` join `dbobaocaophanbien`.`user`) join `dbobaocaophanbien`.`xeplich`) where ((`dbobaocaophanbien`.`detai`.`MaGVHD` = `dbobaocaophanbien`.`user`.`MaSo`) and (`dbobaocaophanbien`.`detai`.`MaDT` = `dbobaocaophanbien`.`xeplich`.`MaDeTai`))) union (select `dbobaocaophanbien`.`user`.`MaSo` AS `MaSo`,`dbobaocaophanbien`.`user`.`HoTen` AS `HoTen`,`dbobaocaophanbien`.`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`dbobaocaophanbien`.`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`dbobaocaophanbien`.`xeplich`.`ThoiLuong` AS `ThoiLuong` from (`dbobaocaophanbien`.`user` join `dbobaocaophanbien`.`xeplich`) where (`dbobaocaophanbien`.`xeplich`.`MaGVPB` = `dbobaocaophanbien`.`user`.`MaSo`)) union (select `dbobaocaophanbien`.`user`.`MaSo` AS `MaSo`,`dbobaocaophanbien`.`user`.`HoTen` AS `HoTen`,`dbobaocaophanbien`.`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`dbobaocaophanbien`.`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`dbobaocaophanbien`.`xeplich`.`ThoiLuong` AS `ThoiLuong` from (`dbobaocaophanbien`.`user` join `dbobaocaophanbien`.`xeplich`) where (`dbobaocaophanbien`.`xeplich`.`MaUyVien` = `dbobaocaophanbien`.`user`.`MaSo`))) `q` where ((concat(`q`.`NgayBaoCao`,' ',`q`.`ThoiGianBC`) >= now()) or isnull(`q`.`NgayBaoCao`))) */;
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
/*!50001 VIEW `viewtenchutichcuasv` AS (select `nhom`.`MaSV` AS `MaSV`,`user`.`HoTen` AS `HoTen` from (((`nhom` join `detai`) join `xeplich`) join `user`) where ((`nhom`.`MaNhom` = `detai`.`MaNhom`) and (`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (`xeplich`.`MaChuTich` = `user`.`MaSo`))) */;
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
/*!50001 VIEW `viewtengvhdcuasv` AS (select `nhom`.`MaSV` AS `MaSV`,`user`.`HoTen` AS `HoTen` from ((`nhom` join `detai`) join `user`) where ((`nhom`.`MaNhom` = `detai`.`MaNhom`) and (`detai`.`MaGVHD` = `user`.`MaSo`))) */;
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
/*!50001 VIEW `viewtengvpbcuasv` AS (select `nhom`.`MaSV` AS `MaSV`,`user`.`HoTen` AS `HoTen` from (((`nhom` join `detai`) join `xeplich`) join `user`) where ((`nhom`.`MaNhom` = `detai`.`MaNhom`) and (`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (`xeplich`.`MaGVPB` = `user`.`MaSo`))) */;
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
/*!50001 VIEW `viewtenuyviencuasv` AS (select `nhom`.`MaSV` AS `MaSV`,`user`.`HoTen` AS `HoTen` from (((`nhom` join `detai`) join `xeplich`) join `user`) where ((`nhom`.`MaNhom` = `detai`.`MaNhom`) and (`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (`xeplich`.`MaUyVien` = `user`.`MaSo`))) */;
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

-- Dump completed on 2016-11-21 15:24:24