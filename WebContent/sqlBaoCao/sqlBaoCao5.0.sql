/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.0.82-community-nt : Database - dbobaocaophanbien
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `dbobaocaophanbien`;

USE `dbobaocaophanbien`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `detai` */

DROP TABLE IF EXISTS `detai`;

CREATE TABLE `detai` (
  `MaDT` int(11) NOT NULL,
  `MaGVHD` varchar(45) default NULL,
  `MaNhom` varchar(45) default NULL,
  `TenDeTai` varchar(200) default NULL,
  `ChuyenNganh` varchar(45) default NULL,
  PRIMARY KEY  (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ketqua` */

DROP TABLE IF EXISTS `ketqua`;

CREATE TABLE `ketqua` (
  `MaDT` int(11) NOT NULL,
  `MaGVHD` varchar(45) default NULL,
  `DiemGVHD` float default NULL,
  `NhanXetGVHD` varchar(500) default NULL,
  `MaGVPB` varchar(45) default NULL,
  `DiemGVPB` float default NULL,
  `NhanXetGVPB` varchar(500) default NULL,
  `MaUV` varchar(45) default NULL,
  `DiemUV` float default NULL,
  `NhanXetUV` varchar(500) default NULL,
  PRIMARY KEY  (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `nhom` */

DROP TABLE IF EXISTS `nhom`;

CREATE TABLE `nhom` (
  `MaNhom` int(11) NOT NULL,
  `MaSV` varchar(45) NOT NULL,
  PRIMARY KEY  (`MaNhom`,`MaSV`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `quatrinhbaocao` */

DROP TABLE IF EXISTS `quatrinhbaocao`;

CREATE TABLE `quatrinhbaocao` (
  `MaDT` int(11) NOT NULL,
  `NhanXetTruocBC` varchar(500) default NULL,
  `TomTatDT` varchar(500) default NULL,
  `FileBaiNop` varchar(45) default NULL,
  `TrangThai` varchar(45) default NULL,
  `XepLoai` varchar(45) default NULL,
  `TrangThaiSV` varchar(45) default NULL,
  PRIMARY KEY  (`MaDT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `thongbao` */

DROP TABLE IF EXISTS `thongbao`;

CREATE TABLE `thongbao` (
  `MaThongBao` int(10) NOT NULL auto_increment,
  `TieuDe` varchar(200) default NULL,
  `Ngay` datetime default NULL,
  `NoiDung` varchar(200) default NULL,
  PRIMARY KEY  (`MaThongBao`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `Username` varchar(45) NOT NULL default '',
  `Password` varchar(100) default NULL,
  `ChucVu` varchar(45) default NULL,
  `HoTen` varchar(45) default NULL,
  `MaSo` varchar(45) default NULL,
  `SDT` varchar(45) default NULL,
  `Email` varchar(45) default NULL,
  `ChuyenNganh` varchar(45) default NULL,
  `Khoa` varchar(45) default NULL,
  `NgaySinh` date default NULL,
  `DiaChi` varchar(45) default NULL,
  `Avatar` longblob,
  PRIMARY KEY  (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `view_chucvu_chutich_detai` */

DROP TABLE IF EXISTS `view_chucvu_chutich_detai`;

/*!50001 DROP VIEW IF EXISTS `view_chucvu_chutich_detai` */;
/*!50001 DROP TABLE IF EXISTS `view_chucvu_chutich_detai` */;

/*!50001 CREATE TABLE `view_chucvu_chutich_detai` (
  `MaDeTai` int(11) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_chucvu_gvhd_detai` */

DROP TABLE IF EXISTS `view_chucvu_gvhd_detai`;

/*!50001 DROP VIEW IF EXISTS `view_chucvu_gvhd_detai` */;
/*!50001 DROP TABLE IF EXISTS `view_chucvu_gvhd_detai` */;

/*!50001 CREATE TABLE `view_chucvu_gvhd_detai` (
  `MaDT` int(11) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_chucvu_phanbien_detai` */

DROP TABLE IF EXISTS `view_chucvu_phanbien_detai`;

/*!50001 DROP VIEW IF EXISTS `view_chucvu_phanbien_detai` */;
/*!50001 DROP TABLE IF EXISTS `view_chucvu_phanbien_detai` */;

/*!50001 CREATE TABLE `view_chucvu_phanbien_detai` (
  `MaDeTai` int(11) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_chucvu_uyvien_detai` */

DROP TABLE IF EXISTS `view_chucvu_uyvien_detai`;

/*!50001 DROP VIEW IF EXISTS `view_chucvu_uyvien_detai` */;
/*!50001 DROP TABLE IF EXISTS `view_chucvu_uyvien_detai` */;

/*!50001 CREATE TABLE `view_chucvu_uyvien_detai` (
  `MaDeTai` int(11) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_danh-sach-de-tai-xep-lich` */

DROP TABLE IF EXISTS `view_danh-sach-de-tai-xep-lich`;

/*!50001 DROP VIEW IF EXISTS `view_danh-sach-de-tai-xep-lich` */;
/*!50001 DROP TABLE IF EXISTS `view_danh-sach-de-tai-xep-lich` */;

/*!50001 CREATE TABLE `view_danh-sach-de-tai-xep-lich` (
  `MaDT` int(11) NOT NULL,
  `TenDeTai` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_demo` */

DROP TABLE IF EXISTS `view_demo`;

/*!50001 DROP VIEW IF EXISTS `view_demo` */;
/*!50001 DROP TABLE IF EXISTS `view_demo` */;

/*!50001 CREATE TABLE `view_demo` (
  `MaSo` varchar(45) default NULL,
  `HoTen` varchar(45) default NULL,
  `NgayBaoCao` date default NULL,
  `ThoiGianBC` time default NULL,
  `ThoiLuong` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_demo1` */

DROP TABLE IF EXISTS `view_demo1`;

/*!50001 DROP VIEW IF EXISTS `view_demo1` */;
/*!50001 DROP TABLE IF EXISTS `view_demo1` */;

/*!50001 CREATE TABLE `view_demo1` (
  `MaSo` varchar(45) default NULL,
  `HoTen` varchar(45) default NULL,
  `NgayBaoCao` date default NULL,
  `ThoiGianBC` time default NULL,
  `ThoiLuong` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_ds_giangvien` */

DROP TABLE IF EXISTS `view_ds_giangvien`;

/*!50001 DROP VIEW IF EXISTS `view_ds_giangvien` */;
/*!50001 DROP TABLE IF EXISTS `view_ds_giangvien` */;

/*!50001 CREATE TABLE `view_ds_giangvien` (
  `MaSo` varchar(45) default NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_dsdt_chucvu_huongdan` */

DROP TABLE IF EXISTS `view_dsdt_chucvu_huongdan`;

/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_huongdan` */;
/*!50001 DROP TABLE IF EXISTS `view_dsdt_chucvu_huongdan` */;

/*!50001 CREATE TABLE `view_dsdt_chucvu_huongdan` (
  `MaSo` varchar(45) default NULL,
  `MaDT` int(11) NOT NULL,
  `TenDeTai` varchar(200) default NULL,
  `NgayBaoCao` date default NULL,
  `ThoiGianBC` time default NULL,
  `TrangThai` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_dsdt_chucvu_phanbien` */

DROP TABLE IF EXISTS `view_dsdt_chucvu_phanbien`;

/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_phanbien` */;
/*!50001 DROP TABLE IF EXISTS `view_dsdt_chucvu_phanbien` */;

/*!50001 CREATE TABLE `view_dsdt_chucvu_phanbien` (
  `MaSo` varchar(45) default NULL,
  `MaDT` int(11) NOT NULL,
  `TenDeTai` varchar(200) default NULL,
  `NgayBaoCao` date default NULL,
  `ThoiGianBC` time default NULL,
  `TrangThai` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_dsdt_chucvu_uyvien` */

DROP TABLE IF EXISTS `view_dsdt_chucvu_uyvien`;

/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_uyvien` */;
/*!50001 DROP TABLE IF EXISTS `view_dsdt_chucvu_uyvien` */;

/*!50001 CREATE TABLE `view_dsdt_chucvu_uyvien` (
  `MaSo` varchar(45) default NULL,
  `MaDT` int(11) NOT NULL,
  `TenDeTai` varchar(200) default NULL,
  `NgayBaoCao` date default NULL,
  `ThoiGianBC` time default NULL,
  `TrangThai` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_gvhd_xeplich` */

DROP TABLE IF EXISTS `view_gvhd_xeplich`;

/*!50001 DROP VIEW IF EXISTS `view_gvhd_xeplich` */;
/*!50001 DROP TABLE IF EXISTS `view_gvhd_xeplich` */;

/*!50001 CREATE TABLE `view_gvhd_xeplich` (
  `MaDT` int(11) NOT NULL,
  `MaSo` varchar(45) default NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_nhomsv_detai` */

DROP TABLE IF EXISTS `view_nhomsv_detai`;

/*!50001 DROP VIEW IF EXISTS `view_nhomsv_detai` */;
/*!50001 DROP TABLE IF EXISTS `view_nhomsv_detai` */;

/*!50001 CREATE TABLE `view_nhomsv_detai` (
  `MaDT` int(11) NOT NULL,
  `MaSV` varchar(45) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_soluongsv` */

DROP TABLE IF EXISTS `view_soluongsv`;

/*!50001 DROP VIEW IF EXISTS `view_soluongsv` */;
/*!50001 DROP TABLE IF EXISTS `view_soluongsv` */;

/*!50001 CREATE TABLE `view_soluongsv` (
  `MaDT` int(11) NOT NULL,
  `SoLuong` bigint(21) NOT NULL default '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_ten_detai_theo_madt` */

DROP TABLE IF EXISTS `view_ten_detai_theo_madt`;

/*!50001 DROP VIEW IF EXISTS `view_ten_detai_theo_madt` */;
/*!50001 DROP TABLE IF EXISTS `view_ten_detai_theo_madt` */;

/*!50001 CREATE TABLE `view_ten_detai_theo_madt` (
  `MaDT` int(11) NOT NULL,
  `TenDeTai` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_tomtat_filebainop_xeplich` */

DROP TABLE IF EXISTS `view_tomtat_filebainop_xeplich`;

/*!50001 DROP VIEW IF EXISTS `view_tomtat_filebainop_xeplich` */;
/*!50001 DROP TABLE IF EXISTS `view_tomtat_filebainop_xeplich` */;

/*!50001 CREATE TABLE `view_tomtat_filebainop_xeplich` (
  `MaDT` int(11) NOT NULL,
  `TomTatDT` varchar(500) default NULL,
  `FileBaiNop` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_xemketquagv` */

DROP TABLE IF EXISTS `view_xemketquagv`;

/*!50001 DROP VIEW IF EXISTS `view_xemketquagv` */;
/*!50001 DROP TABLE IF EXISTS `view_xemketquagv` */;

/*!50001 CREATE TABLE `view_xemketquagv` (
  `MaSo` varchar(45) default NULL,
  `TenDeTai` varchar(200) default NULL,
  `ThoiGianBC` time default NULL,
  `NgayBaoCao` date default NULL,
  `MaGVHD` varchar(45) default NULL,
  `MaChuTich` varchar(45) default NULL,
  `MaGVPB` varchar(45) default NULL,
  `MaUyVien` varchar(45) default NULL,
  `DiemGVHD` float default NULL,
  `DiemGVPB` float default NULL,
  `DiemUV` float default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `view_xemketquasv` */

DROP TABLE IF EXISTS `view_xemketquasv`;

/*!50001 DROP VIEW IF EXISTS `view_xemketquasv` */;
/*!50001 DROP TABLE IF EXISTS `view_xemketquasv` */;

/*!50001 CREATE TABLE `view_xemketquasv` (
  `MaSV` varchar(45) NOT NULL,
  `MaDT` int(11) NOT NULL,
  `TenDeTai` varchar(200) default NULL,
  `NgayBaoCao` date default NULL,
  `ThoiGianBC` time default NULL,
  `MaGVPB` varchar(45) default NULL,
  `MaUyVien` varchar(45) default NULL,
  `MaChuTich` varchar(45) default NULL,
  `MaGVHD` varchar(45) default NULL,
  `NhanXetGVHD` varchar(500) default NULL,
  `DiemGVHD` float default NULL,
  `NhanXetGVPB` varchar(500) default NULL,
  `DiemGVPB` float default NULL,
  `NhanXetUV` varchar(500) default NULL,
  `DiemUV` float default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `viewchitietdetai` */

DROP TABLE IF EXISTS `viewchitietdetai`;

/*!50001 DROP VIEW IF EXISTS `viewchitietdetai` */;
/*!50001 DROP TABLE IF EXISTS `viewchitietdetai` */;

/*!50001 CREATE TABLE `viewchitietdetai` (
  `MaDeTai` int(11) NOT NULL,
  `TenDeTai` varchar(200) default NULL,
  `MaNhom` int(11) NOT NULL,
  `MaGVHD` varchar(45) default NULL,
  `MaGVPB` varchar(45) default NULL,
  `MaUyVien` varchar(45) default NULL,
  `MaChuTich` varchar(45) default NULL,
  `ThoiGianBC` time default NULL,
  `ThoiLuong` int(11) default NULL,
  `NgayBaoCao` date default NULL,
  `TomTatDT` varchar(500) default NULL,
  `FileBaiNop` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `viewdanhsachdetai` */

DROP TABLE IF EXISTS `viewdanhsachdetai`;

/*!50001 DROP VIEW IF EXISTS `viewdanhsachdetai` */;
/*!50001 DROP TABLE IF EXISTS `viewdanhsachdetai` */;

/*!50001 CREATE TABLE `viewdanhsachdetai` (
  `MaDT` int(11) NOT NULL,
  `TenDeTai` varchar(200) default NULL,
  `MaGVHD` varchar(45) default NULL,
  `MaGVPB` varchar(45) default NULL,
  `MaUyVien` varchar(45) default NULL,
  `MaChuTich` varchar(45) default NULL,
  `NgayBaoCao` date default NULL,
  `ThoiGianBC` time default NULL,
  `TrangThai` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `viewdanhsachdetaisv` */

DROP TABLE IF EXISTS `viewdanhsachdetaisv`;

/*!50001 DROP VIEW IF EXISTS `viewdanhsachdetaisv` */;
/*!50001 DROP TABLE IF EXISTS `viewdanhsachdetaisv` */;

/*!50001 CREATE TABLE `viewdanhsachdetaisv` (
  `MaSo` varchar(45) default NULL,
  `HoTen` varchar(45) default NULL,
  `TenDeTai` varchar(200) default NULL,
  `NgayBaoCao` date default NULL,
  `ThoiGianBC` time default NULL,
  `ThoiLuong` int(11) default NULL,
  `TrangThaiSV` varchar(45) default NULL,
  `MaDT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `viewtenchutichcuasv` */

DROP TABLE IF EXISTS `viewtenchutichcuasv`;

/*!50001 DROP VIEW IF EXISTS `viewtenchutichcuasv` */;
/*!50001 DROP TABLE IF EXISTS `viewtenchutichcuasv` */;

/*!50001 CREATE TABLE `viewtenchutichcuasv` (
  `MaDeTai` int(11) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `viewtengvhdcuasv` */

DROP TABLE IF EXISTS `viewtengvhdcuasv`;

/*!50001 DROP VIEW IF EXISTS `viewtengvhdcuasv` */;
/*!50001 DROP TABLE IF EXISTS `viewtengvhdcuasv` */;

/*!50001 CREATE TABLE `viewtengvhdcuasv` (
  `MaDT` int(11) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `viewtengvpbcuasv` */

DROP TABLE IF EXISTS `viewtengvpbcuasv`;

/*!50001 DROP VIEW IF EXISTS `viewtengvpbcuasv` */;
/*!50001 DROP TABLE IF EXISTS `viewtengvpbcuasv` */;

/*!50001 CREATE TABLE `viewtengvpbcuasv` (
  `MaDeTai` int(11) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `viewtenuyviencuasv` */

DROP TABLE IF EXISTS `viewtenuyviencuasv`;

/*!50001 DROP VIEW IF EXISTS `viewtenuyviencuasv` */;
/*!50001 DROP TABLE IF EXISTS `viewtenuyviencuasv` */;

/*!50001 CREATE TABLE `viewtenuyviencuasv` (
  `MaDeTai` int(11) NOT NULL,
  `HoTen` varchar(45) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 */;

/*Table structure for table `xeplich` */

DROP TABLE IF EXISTS `xeplich`;

CREATE TABLE `xeplich` (
  `MaDeTai` int(11) NOT NULL,
  `MaGVPB` varchar(45) default NULL,
  `MaUyVien` varchar(45) default NULL,
  `MaChuTich` varchar(45) default NULL,
  `ThoiGianBC` time default NULL,
  `ThoiLuong` int(11) default NULL,
  `NgayBaoCao` date default NULL,
  PRIMARY KEY  (`MaDeTai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*View structure for view view_chucvu_chutich_detai */

/*!50001 DROP TABLE IF EXISTS `view_chucvu_chutich_detai` */;
/*!50001 DROP VIEW IF EXISTS `view_chucvu_chutich_detai` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_chucvu_chutich_detai` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`user` join `xeplich`) where (`user`.`MaSo` = `xeplich`.`MaChuTich`)) */;

/*View structure for view view_chucvu_gvhd_detai */

/*!50001 DROP TABLE IF EXISTS `view_chucvu_gvhd_detai` */;
/*!50001 DROP VIEW IF EXISTS `view_chucvu_gvhd_detai` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_chucvu_gvhd_detai` AS (select `detai`.`MaDT` AS `MaDT`,`user`.`HoTen` AS `HoTen` from (`user` join `detai`) where (`user`.`MaSo` = `detai`.`MaGVHD`)) */;

/*View structure for view view_chucvu_phanbien_detai */

/*!50001 DROP TABLE IF EXISTS `view_chucvu_phanbien_detai` */;
/*!50001 DROP VIEW IF EXISTS `view_chucvu_phanbien_detai` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_chucvu_phanbien_detai` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`user` join `xeplich`) where (`user`.`MaSo` = `xeplich`.`MaGVPB`)) */;

/*View structure for view view_chucvu_uyvien_detai */

/*!50001 DROP TABLE IF EXISTS `view_chucvu_uyvien_detai` */;
/*!50001 DROP VIEW IF EXISTS `view_chucvu_uyvien_detai` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_chucvu_uyvien_detai` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`user` join `xeplich`) where (`user`.`MaSo` = `xeplich`.`MaUyVien`)) */;

/*View structure for view view_danh-sach-de-tai-xep-lich */

/*!50001 DROP TABLE IF EXISTS `view_danh-sach-de-tai-xep-lich` */;
/*!50001 DROP VIEW IF EXISTS `view_danh-sach-de-tai-xep-lich` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_danh-sach-de-tai-xep-lich` AS (select `detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai` from (`detai` join `xeplich`) where ((`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (isnull(`xeplich`.`MaGVPB`) or isnull(`xeplich`.`MaChuTich`) or isnull(`xeplich`.`MaUyVien`)))) */;

/*View structure for view view_demo */

/*!50001 DROP TABLE IF EXISTS `view_demo` */;
/*!50001 DROP VIEW IF EXISTS `view_demo` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_demo` AS (select `view_demo1`.`MaSo` AS `MaSo`,`view_demo1`.`HoTen` AS `HoTen`,`view_demo1`.`NgayBaoCao` AS `NgayBaoCao`,`view_demo1`.`ThoiGianBC` AS `ThoiGianBC`,`view_demo1`.`ThoiLuong` AS `ThoiLuong` from `view_demo1` where (((concat(`view_demo1`.`NgayBaoCao`,_utf8' ',`view_demo1`.`ThoiGianBC`) + interval `view_demo1`.`ThoiLuong` minute) >= now()) or isnull(`view_demo1`.`NgayBaoCao`))) */;

/*View structure for view view_demo1 */

/*!50001 DROP TABLE IF EXISTS `view_demo1` */;
/*!50001 DROP VIEW IF EXISTS `view_demo1` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_demo1` AS select `user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`ThoiLuong` AS `ThoiLuong` from ((`detai` join `user`) join `xeplich`) where ((`detai`.`MaGVHD` = `user`.`MaSo`) and (`detai`.`MaDT` = `xeplich`.`MaDeTai`)) union select `user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`ThoiLuong` AS `ThoiLuong` from (`user` join `xeplich`) where (`xeplich`.`MaGVPB` = `user`.`MaSo`) union select `user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`ThoiLuong` AS `ThoiLuong` from (`user` join `xeplich`) where (`xeplich`.`MaUyVien` = `user`.`MaSo`) */;

/*View structure for view view_ds_giangvien */

/*!50001 DROP TABLE IF EXISTS `view_ds_giangvien` */;
/*!50001 DROP VIEW IF EXISTS `view_ds_giangvien` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ds_giangvien` AS (select `user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen` from `user` where ((`user`.`ChucVu` = 2) or (`user`.`ChucVu` = 3))) */;

/*View structure for view view_dsdt_chucvu_huongdan */

/*!50001 DROP TABLE IF EXISTS `view_dsdt_chucvu_huongdan` */;
/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_huongdan` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_dsdt_chucvu_huongdan` AS (select `user`.`MaSo` AS `MaSo`,`detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`quatrinhbaocao`.`TrangThai` AS `TrangThai` from (((`user` join `xeplich`) join `detai`) join `quatrinhbaocao`) where ((`user`.`MaSo` = `detai`.`MaGVHD`) and (`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`) and (`detai`.`MaDT` = `xeplich`.`MaDeTai`))) */;

/*View structure for view view_dsdt_chucvu_phanbien */

/*!50001 DROP TABLE IF EXISTS `view_dsdt_chucvu_phanbien` */;
/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_phanbien` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_dsdt_chucvu_phanbien` AS (select `user`.`MaSo` AS `MaSo`,`detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`quatrinhbaocao`.`TrangThai` AS `TrangThai` from (((`user` join `xeplich`) join `detai`) join `quatrinhbaocao`) where ((`user`.`MaSo` = `xeplich`.`MaGVPB`) and (`xeplich`.`MaDeTai` = `detai`.`MaDT`) and (`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`))) */;

/*View structure for view view_dsdt_chucvu_uyvien */

/*!50001 DROP TABLE IF EXISTS `view_dsdt_chucvu_uyvien` */;
/*!50001 DROP VIEW IF EXISTS `view_dsdt_chucvu_uyvien` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_dsdt_chucvu_uyvien` AS (select `user`.`MaSo` AS `MaSo`,`detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`quatrinhbaocao`.`TrangThai` AS `TrangThai` from (((`user` join `xeplich`) join `detai`) join `quatrinhbaocao`) where ((`user`.`MaSo` = `xeplich`.`MaUyVien`) and (`xeplich`.`MaDeTai` = `detai`.`MaDT`) and (`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`))) */;

/*View structure for view view_gvhd_xeplich */

/*!50001 DROP TABLE IF EXISTS `view_gvhd_xeplich` */;
/*!50001 DROP VIEW IF EXISTS `view_gvhd_xeplich` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_gvhd_xeplich` AS (select `detai`.`MaDT` AS `MaDT`,`user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen` from (`user` join `detai`) where (`user`.`MaSo` = `detai`.`MaGVHD`)) */;

/*View structure for view view_nhomsv_detai */

/*!50001 DROP TABLE IF EXISTS `view_nhomsv_detai` */;
/*!50001 DROP VIEW IF EXISTS `view_nhomsv_detai` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_nhomsv_detai` AS (select `detai`.`MaDT` AS `MaDT`,`nhom`.`MaSV` AS `MaSV`,`user`.`HoTen` AS `HoTen` from ((`detai` join `nhom`) join `user`) where ((`detai`.`MaNhom` = `nhom`.`MaNhom`) and (`user`.`MaSo` = `nhom`.`MaSV`))) */;

/*View structure for view view_soluongsv */

/*!50001 DROP TABLE IF EXISTS `view_soluongsv` */;
/*!50001 DROP VIEW IF EXISTS `view_soluongsv` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_soluongsv` AS (select `detai`.`MaDT` AS `MaDT`,count(`nhom`.`MaSV`) AS `SoLuong` from (`detai` join `nhom`) where (`detai`.`MaNhom` = `nhom`.`MaNhom`) group by `detai`.`MaDT`) */;

/*View structure for view view_ten_detai_theo_madt */

/*!50001 DROP TABLE IF EXISTS `view_ten_detai_theo_madt` */;
/*!50001 DROP VIEW IF EXISTS `view_ten_detai_theo_madt` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_ten_detai_theo_madt` AS (select `detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai` from `detai`) */;

/*View structure for view view_tomtat_filebainop_xeplich */

/*!50001 DROP TABLE IF EXISTS `view_tomtat_filebainop_xeplich` */;
/*!50001 DROP VIEW IF EXISTS `view_tomtat_filebainop_xeplich` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tomtat_filebainop_xeplich` AS (select `quatrinhbaocao`.`MaDT` AS `MaDT`,`quatrinhbaocao`.`TomTatDT` AS `TomTatDT`,`quatrinhbaocao`.`FileBaiNop` AS `FileBaiNop` from `quatrinhbaocao`) */;

/*View structure for view view_xemketquagv */

/*!50001 DROP TABLE IF EXISTS `view_xemketquagv` */;
/*!50001 DROP VIEW IF EXISTS `view_xemketquagv` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_xemketquagv` AS select distinct `user`.`MaSo` AS `MaSo`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`detai`.`MaGVHD` AS `MaGVHD`,`xeplich`.`MaChuTich` AS `MaChuTich`,`xeplich`.`MaGVPB` AS `MaGVPB`,`xeplich`.`MaUyVien` AS `MaUyVien`,`ketqua`.`DiemGVHD` AS `DiemGVHD`,`ketqua`.`DiemGVPB` AS `DiemGVPB`,`ketqua`.`DiemUV` AS `DiemUV` from (((`detai` join `xeplich`) join `ketqua`) join `user`) where ((`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (`detai`.`MaDT` = `ketqua`.`MaDT`) and ((`user`.`MaSo` = `xeplich`.`MaGVPB`) or (`user`.`MaSo` = `xeplich`.`MaUyVien`) or (`user`.`MaSo` = `detai`.`MaGVHD`))) */;

/*View structure for view view_xemketquasv */

/*!50001 DROP TABLE IF EXISTS `view_xemketquasv` */;
/*!50001 DROP VIEW IF EXISTS `view_xemketquasv` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_xemketquasv` AS select `nhom`.`MaSV` AS `MaSV`,`detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`MaGVPB` AS `MaGVPB`,`xeplich`.`MaUyVien` AS `MaUyVien`,`xeplich`.`MaChuTich` AS `MaChuTich`,`detai`.`MaGVHD` AS `MaGVHD`,`ketqua`.`NhanXetGVHD` AS `NhanXetGVHD`,`ketqua`.`DiemGVHD` AS `DiemGVHD`,`ketqua`.`NhanXetGVPB` AS `NhanXetGVPB`,`ketqua`.`DiemGVPB` AS `DiemGVPB`,`ketqua`.`NhanXetUV` AS `NhanXetUV`,`ketqua`.`DiemUV` AS `DiemUV` from (((`ketqua` join `detai`) join `xeplich`) join `nhom`) where ((`detai`.`MaDT` = `xeplich`.`MaDeTai`) and (`detai`.`MaNhom` = `nhom`.`MaNhom`) and (`detai`.`MaDT` = `ketqua`.`MaDT`)) */;

/*View structure for view viewchitietdetai */

/*!50001 DROP TABLE IF EXISTS `viewchitietdetai` */;
/*!50001 DROP VIEW IF EXISTS `viewchitietdetai` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewchitietdetai` AS (select distinct `xeplich`.`MaDeTai` AS `MaDeTai`,`detai`.`TenDeTai` AS `TenDeTai`,`nhom`.`MaNhom` AS `MaNhom`,`detai`.`MaGVHD` AS `MaGVHD`,`xeplich`.`MaGVPB` AS `MaGVPB`,`xeplich`.`MaUyVien` AS `MaUyVien`,`xeplich`.`MaChuTich` AS `MaChuTich`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`ThoiLuong` AS `ThoiLuong`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`quatrinhbaocao`.`TomTatDT` AS `TomTatDT`,`quatrinhbaocao`.`FileBaiNop` AS `FileBaiNop` from (((`xeplich` join `detai`) join `nhom`) join `quatrinhbaocao`) where ((`xeplich`.`MaDeTai` = `detai`.`MaDT`) and (`detai`.`MaNhom` = `nhom`.`MaNhom`) and (`quatrinhbaocao`.`MaDT` = `detai`.`MaDT`))) */;

/*View structure for view viewdanhsachdetai */

/*!50001 DROP TABLE IF EXISTS `viewdanhsachdetai` */;
/*!50001 DROP VIEW IF EXISTS `viewdanhsachdetai` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewdanhsachdetai` AS select `detai`.`MaDT` AS `MaDT`,`detai`.`TenDeTai` AS `TenDeTai`,`detai`.`MaGVHD` AS `MaGVHD`,`xeplich`.`MaGVPB` AS `MaGVPB`,`xeplich`.`MaUyVien` AS `MaUyVien`,`xeplich`.`MaChuTich` AS `MaChuTich`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`quatrinhbaocao`.`TrangThai` AS `TrangThai` from ((`detai` join `quatrinhbaocao`) join `xeplich`) where ((`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`) and (`xeplich`.`MaDeTai` = `detai`.`MaDT`)) */;

/*View structure for view viewdanhsachdetaisv */

/*!50001 DROP TABLE IF EXISTS `viewdanhsachdetaisv` */;
/*!50001 DROP VIEW IF EXISTS `viewdanhsachdetaisv` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewdanhsachdetaisv` AS (select `user`.`MaSo` AS `MaSo`,`user`.`HoTen` AS `HoTen`,`detai`.`TenDeTai` AS `TenDeTai`,`xeplich`.`NgayBaoCao` AS `NgayBaoCao`,`xeplich`.`ThoiGianBC` AS `ThoiGianBC`,`xeplich`.`ThoiLuong` AS `ThoiLuong`,`quatrinhbaocao`.`TrangThaiSV` AS `TrangThaiSV`,`detai`.`MaDT` AS `MaDT` from ((((`user` join `nhom`) join `detai`) join `xeplich`) join `quatrinhbaocao`) where ((`user`.`MaSo` = `nhom`.`MaSV`) and (`nhom`.`MaNhom` = `detai`.`MaNhom`) and (`detai`.`MaDT` = `quatrinhbaocao`.`MaDT`) and (`detai`.`MaDT` = `xeplich`.`MaDeTai`))) */;

/*View structure for view viewtenchutichcuasv */

/*!50001 DROP TABLE IF EXISTS `viewtenchutichcuasv` */;
/*!50001 DROP VIEW IF EXISTS `viewtenchutichcuasv` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtenchutichcuasv` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`xeplich` join `user`) where (`xeplich`.`MaChuTich` = `user`.`MaSo`)) */;

/*View structure for view viewtengvhdcuasv */

/*!50001 DROP TABLE IF EXISTS `viewtengvhdcuasv` */;
/*!50001 DROP VIEW IF EXISTS `viewtengvhdcuasv` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtengvhdcuasv` AS (select `detai`.`MaDT` AS `MaDT`,`user`.`HoTen` AS `HoTen` from (`detai` join `user`) where (`detai`.`MaGVHD` = `user`.`MaSo`)) */;

/*View structure for view viewtengvpbcuasv */

/*!50001 DROP TABLE IF EXISTS `viewtengvpbcuasv` */;
/*!50001 DROP VIEW IF EXISTS `viewtengvpbcuasv` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtengvpbcuasv` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`xeplich` join `user`) where (`xeplich`.`MaGVPB` = `user`.`MaSo`)) */;

/*View structure for view viewtenuyviencuasv */

/*!50001 DROP TABLE IF EXISTS `viewtenuyviencuasv` */;
/*!50001 DROP VIEW IF EXISTS `viewtenuyviencuasv` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewtenuyviencuasv` AS (select `xeplich`.`MaDeTai` AS `MaDeTai`,`user`.`HoTen` AS `HoTen` from (`xeplich` join `user`) where (`xeplich`.`MaUyVien` = `user`.`MaSo`)) */;

/* Procedure structure for procedure `spAddThongBao` */

/*!50003 DROP PROCEDURE IF EXISTS  `spAddThongBao` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spAddThongBao`(IN TieuDe varchar(200),IN Ngay datetime,IN NoiDung varchar(200))
BEGIN
 
  declare id int;
 
    set id=(select count(*) from thongbao)+1;
 
 
    insert into thongbao values(id,TieuDe,Ngay,NoiDung);
 
END */$$
DELIMITER ;

/* Procedure structure for procedure `spCapNhatDiem` */

/*!50003 DROP PROCEDURE IF EXISTS  `spCapNhatDiem` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spCapNhatDiem`(_MaDeTai int,_MaSo varchar(50),_Diem float,_NhanXet varchar(50))
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
	
END */$$
DELIMITER ;

/* Procedure structure for procedure `spDemoXepLich` */

/*!50003 DROP PROCEDURE IF EXISTS  `spDemoXepLich` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spDemoXepLich`(
     _NgayBaoCao date,
     _ThoiGianBaoCao time,
     _ThoiLuongBaoCao int
)
BEGIN
		select user.MaSo,user.HoTen
		from user
		where (user.ChucVu!=1) and user.MaSo not in ( select MaSo
		from view_demo
        where CONCAT(_NgayBaoCao,' ',_ThoiGianBaoCao) between CONCAT(NgayBaoCao,' ',ThoiGianBC) and (CONCAT(NgayBaoCao, ' ',ThoiGianBC)+INTERVAL ThoiLuong MINUTE)
        or (CONCAT(_NgayBaoCao, ' ',_ThoiGianBaoCao)+INTERVAL _ThoiLuongBaoCao MINUTE) between CONCAT(NgayBaoCao,' ',ThoiGianBC) and (CONCAT(NgayBaoCao, ' ',ThoiGianBC)+INTERVAL ThoiLuong MINUTE)
        or CONCAT(NgayBaoCao,' ',ThoiGianBC) between CONCAT(_NgayBaoCao,' ',_ThoiGianBaoCao) and (CONCAT(_NgayBaoCao, ' ',_ThoiGianBaoCao)+INTERVAL _ThoiLuongBaoCao MINUTE)
        or (CONCAT(NgayBaoCao, ' ',ThoiGianBC)+INTERVAL ThoiLuong MINUTE) between CONCAT(_NgayBaoCao,' ',_ThoiGianBaoCao) and (CONCAT(_NgayBaoCao, ' ',_ThoiGianBaoCao)+INTERVAL _ThoiLuongBaoCao MINUTE)
        );
END */$$
DELIMITER ;

/* Procedure structure for procedure `spVaoBaoCao_GV` */

/*!50003 DROP PROCEDURE IF EXISTS  `spVaoBaoCao_GV` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spVaoBaoCao_GV`(_MaSo varchar(50))
BEGIN
	SET time_zone ='+07:00';
    select xeplich.MaDeTai,detai.TenDeTai,xeplich.NgayBaoCao,xeplich.ThoiGianBC,xeplich.MaChuTich
	from xeplich,detai,quatrinhbaocao
	where quatrinhbaocao.TrangThaiSV='Được báo cáo' and
		
    xeplich.NgayBaoCao=CURDATE() and 
    
    (CurTime() between xeplich.ThoiGianBC and ADDTIME(xeplich.ThoiGianBC, SEC_TO_TIME(xeplich.ThoiLuong*60))) and
    
    (_MaSo in(MaGVPB,MaGVHD,MaUyVien)) and xeplich.MaDeTai=detai.MaDT and quatrinhbaocao.MaDT=detai.MaDT;
END */$$
DELIMITER ;

/* Procedure structure for procedure `spVaoBaoCao_SV` */

/*!50003 DROP PROCEDURE IF EXISTS  `spVaoBaoCao_SV` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spVaoBaoCao_SV`(_MaSo varchar(50))
BEGIN
	
    declare manhom int default (select MaNhom from nhom where nhom.MaSV=_MaSo);
    SET time_zone ='+07:00';
	select xeplich.MaDeTai,detai.MaNhom,detai.TenDeTai,xeplich.NgayBaoCao,xeplich.ThoiGianBC,xeplich.MaChuTich
	from xeplich,detai,quatrinhbaocao
	where quatrinhbaocao.TrangThaiSV='Được báo cáo' and
    
    xeplich.NgayBaoCao=CURDATE() and 
    
    (CurTime() between xeplich.ThoiGianBC and ADDTIME(xeplich.ThoiGianBC, SEC_TO_TIME(xeplich.ThoiLuong*60))) and
    
    detai.MaNhom=manhom and xeplich.MaDeTai=detai.MaDT and quatrinhbaocao.MaDT=detai.MaDT;
    
END */$$
DELIMITER ;

/* Procedure structure for procedure `spXepLich` */

/*!50003 DROP PROCEDURE IF EXISTS  `spXepLich` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `spXepLich`(
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
    
    
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
