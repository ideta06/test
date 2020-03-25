/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.1.38-MariaDB : Database - ta
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ta` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ta`;

/*Table structure for table `tb_aktivitas_sosial` */

DROP TABLE IF EXISTS `tb_aktivitas_sosial`;

CREATE TABLE `tb_aktivitas_sosial` (
  `id_aktivitas_sosial` int(50) NOT NULL AUTO_INCREMENT,
  `nama_aktivitas` varchar(50) DEFAULT NULL,
  `tempat_aktivitas` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `tgl_aktivitas` date DEFAULT NULL,
  `hobby` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_aktivitas_sosial`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tb_aktivitas_sosial` */

LOCK TABLES `tb_aktivitas_sosial` WRITE;

insert  into `tb_aktivitas_sosial`(`id_aktivitas_sosial`,`nama_aktivitas`,`tempat_aktivitas`,`jabatan`,`tgl_aktivitas`,`hobby`,`id_pelamar`) values 
(1,'jhjh','','','0000-00-00','','202001222055'),
(3,'MAPALA UNJANI','UNJANI','SEKRETARIS UMUM','2012-10-17','JELAJAH ALAM','199306170002');

UNLOCK TABLES;

/*Table structure for table `tb_anggota_keluarga` */

DROP TABLE IF EXISTS `tb_anggota_keluarga`;

CREATE TABLE `tb_anggota_keluarga` (
  `id_anggota_keluarga` int(50) NOT NULL AUTO_INCREMENT,
  `nama_anggota_keluarga` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_anggota_keluarga`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tb_anggota_keluarga` */

LOCK TABLES `tb_anggota_keluarga` WRITE;

insert  into `tb_anggota_keluarga`(`id_anggota_keluarga`,`nama_anggota_keluarga`,`tempat_lahir`,`tanggal_lahir`,`jk`,`status`,`pekerjaan`,`id_pelamar`) values 
(4,'AZIZAH ANIS','SLEMAN','1994-08-11','2','2','GURU','199101220001'),
(5,'FAWWAZ KAREEM','SLEMAN','2010-01-27','1','3','-','199101220001');

UNLOCK TABLES;

/*Table structure for table `tb_data_keluarga` */

DROP TABLE IF EXISTS `tb_data_keluarga`;

CREATE TABLE `tb_data_keluarga` (
  `id_data_keluarga` int(50) NOT NULL AUTO_INCREMENT,
  `nama_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(50) DEFAULT NULL,
  `nama_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_data_keluarga`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_data_keluarga` */

LOCK TABLES `tb_data_keluarga` WRITE;

UNLOCK TABLES;

/*Table structure for table `tb_data_saudara_kandung` */

DROP TABLE IF EXISTS `tb_data_saudara_kandung`;

CREATE TABLE `tb_data_saudara_kandung` (
  `id_data_saudara_kandung` int(50) NOT NULL AUTO_INCREMENT,
  `nama_saudara` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_data_saudara_kandung`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `tb_data_saudara_kandung` */

LOCK TABLES `tb_data_saudara_kandung` WRITE;

insert  into `tb_data_saudara_kandung`(`id_data_saudara_kandung`,`nama_saudara`,`tempat_lahir`,`tanggal_lahir`,`jk`,`pekerjaan`,`id_pelamar`) values 
(1,'gdhgh','','0000-00-00','','','202001222055');

UNLOCK TABLES;

/*Table structure for table `tb_hasil_final` */

DROP TABLE IF EXISTS `tb_hasil_final`;

CREATE TABLE `tb_hasil_final` (
  `id_hasil_final` varchar(50) NOT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `hasil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_hasil_final`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_hasil_final` */

LOCK TABLES `tb_hasil_final` WRITE;

UNLOCK TABLES;

/*Table structure for table `tb_hasil_seleksi_berkas` */

DROP TABLE IF EXISTS `tb_hasil_seleksi_berkas`;

CREATE TABLE `tb_hasil_seleksi_berkas` (
  `id_hasil_seleksi_berkas` varchar(50) NOT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `hasil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_hasil_seleksi_berkas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_hasil_seleksi_berkas` */

LOCK TABLES `tb_hasil_seleksi_berkas` WRITE;

UNLOCK TABLES;

/*Table structure for table `tb_hasil_seleksi_tes_tulis` */

DROP TABLE IF EXISTS `tb_hasil_seleksi_tes_tulis`;

CREATE TABLE `tb_hasil_seleksi_tes_tulis` (
  `id_hasil_seleksi_tes_tulis` varchar(50) NOT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `hasil` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_hasil_seleksi_tes_tulis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_hasil_seleksi_tes_tulis` */

LOCK TABLES `tb_hasil_seleksi_tes_tulis` WRITE;

UNLOCK TABLES;

/*Table structure for table `tb_jenis_soal` */

DROP TABLE IF EXISTS `tb_jenis_soal`;

CREATE TABLE `tb_jenis_soal` (
  `id_jenis_soal` varchar(50) NOT NULL,
  `nama_jenis_soal` varchar(50) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_jenis_soal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_jenis_soal` */

LOCK TABLES `tb_jenis_soal` WRITE;

insert  into `tb_jenis_soal`(`id_jenis_soal`,`nama_jenis_soal`,`id_user`) values 
('JNS-0001','Tes Psikologi','USR-0001'),
('JNS-0002','Tes IQ','USR-0001'),
('JNS-0003','Tes Wawasan Kebangsaan','USR-0001');

UNLOCK TABLES;

/*Table structure for table `tb_job` */

DROP TABLE IF EXISTS `tb_job`;

CREATE TABLE `tb_job` (
  `id_job` varchar(50) NOT NULL,
  `nama_job` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `tgl_exp` date DEFAULT NULL,
  `buka_ujian` varchar(10) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_job`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_job` */

LOCK TABLES `tb_job` WRITE;

insert  into `tb_job`(`id_job`,`nama_job`,`status`,`tgl_exp`,`buka_ujian`,`id_user`) values 
('JOB-0001','STAFF PERAWAT','1','2020-04-01','Y','USR-0001');

UNLOCK TABLES;

/*Table structure for table `tb_kursus` */

DROP TABLE IF EXISTS `tb_kursus`;

CREATE TABLE `tb_kursus` (
  `id_kursus` int(50) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) DEFAULT NULL,
  `nama_kegiatan` varchar(50) DEFAULT NULL,
  `instansi_penyelenggara` varchar(50) DEFAULT NULL,
  `tahun_kegiatan` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kursus`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_kursus` */

LOCK TABLES `tb_kursus` WRITE;

insert  into `tb_kursus`(`id_kursus`,`jenis`,`nama_kegiatan`,`instansi_penyelenggara`,`tahun_kegiatan`,`kota`,`id_pelamar`) values 
(1,'fgfg','','','','','202001222055'),
(4,'PELATIHAN','PELATIHAN MANAJEMEN NYERI','DINAS KESEHATAN PROV DIY','2013','YOGYAKARTA','199306170002');

UNLOCK TABLES;

/*Table structure for table `tb_lamaran` */

DROP TABLE IF EXISTS `tb_lamaran`;

CREATE TABLE `tb_lamaran` (
  `id_lamaran` int(40) NOT NULL AUTO_INCREMENT,
  `id_pelamar` varchar(40) DEFAULT NULL,
  `id_job` varchar(40) DEFAULT NULL,
  `tgl_lamaran` date DEFAULT NULL,
  `hasil_berkas` varchar(10) DEFAULT NULL,
  `hasil_tulis` varchar(10) DEFAULT NULL,
  `hasil_wawancara` varchar(10) DEFAULT NULL,
  `nilai_wawancara` varchar(10) DEFAULT NULL,
  `hasil_final` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_lamaran`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tb_lamaran` */

LOCK TABLES `tb_lamaran` WRITE;

insert  into `tb_lamaran`(`id_lamaran`,`id_pelamar`,`id_job`,`tgl_lamaran`,`hasil_berkas`,`hasil_tulis`,`hasil_wawancara`,`nilai_wawancara`,`hasil_final`) values 
(1,'199101220001','JOB-0001','2020-01-27','1','1','1','80','1'),
(3,'199511030003','JOB-0001','2020-03-17','2','2','2','0','2'),
(4,'199306170002','JOB-0001','2020-03-21','1','1','2','60','2');

UNLOCK TABLES;

/*Table structure for table `tb_level` */

DROP TABLE IF EXISTS `tb_level`;

CREATE TABLE `tb_level` (
  `id_level` varchar(10) NOT NULL,
  `nama_level` varchar(50) NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_level` */

LOCK TABLES `tb_level` WRITE;

insert  into `tb_level`(`id_level`,`nama_level`) values 
('LVL0001','HRD'),
('LVL0002','Pelamar');

UNLOCK TABLES;

/*Table structure for table `tb_login` */

DROP TABLE IF EXISTS `tb_login`;

CREATE TABLE `tb_login` (
  `id_login` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  `id_level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_login` */

LOCK TABLES `tb_login` WRITE;

insert  into `tb_login`(`id_login`,`username`,`password`,`id_user`,`id_pelamar`,`id_level`) values 
('LOG-0001','alibaba','12345',NULL,'199101220001','LVL0002'),
('LOG-0002','kanti','12345','USR-0001',NULL,'LVL0001'),
('LOG-0003','aladin','12345',NULL,'199306170002','LVL0002'),
('LOG-0004','wisnu','12345','USR-0002',NULL,'LVL0001'),
('LOG-0005','widha','123456',NULL,'199511030003','LVL0002'),
('LOG-0006','silfi','1234567',NULL,'202001010004','LVL0002');

UNLOCK TABLES;

/*Table structure for table `tb_menu` */

DROP TABLE IF EXISTS `tb_menu`;

CREATE TABLE `tb_menu` (
  `id_menu` varchar(20) NOT NULL,
  `nama_menu` varchar(100) DEFAULT NULL,
  `modul` varchar(30) DEFAULT NULL,
  `path` varchar(50) DEFAULT NULL,
  `ikon` varchar(50) DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `parent` varchar(10) DEFAULT NULL,
  `tipe` varchar(10) DEFAULT NULL,
  `tampil` varchar(10) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_menu` */

LOCK TABLES `tb_menu` WRITE;

insert  into `tb_menu`(`id_menu`,`nama_menu`,`modul`,`path`,`ikon`,`level`,`parent`,`tipe`,`tampil`) values 
('MN001','Home','home','home/view.php','fas fa-home','1','','1','Y'),
('MN002','Master Setting','','','fas fa-cogs','1','','2','Y'),
('MN002-05','Level User','level','level/view.php','','2','MN002','1','Y'),
('MN003','Master','','','fas fa-coins','1','','2','Y'),
('MN003-01','Daftar Lowongan','lowongan','lowongan/view.php','','2','MN003','1','Y'),
('MN003-02','Jenis Soal','jenis_soal','jenis_soal/view.php','','2','MN003','1','Y'),
('MN003-03','Soal Ujian','soal_ujian','soal_ujian/view.php','','2','MN003','1','Y'),
('MN003-04','Form Soal Ujian','soal_ujian_form','soal_ujian/form.php','','2','MN003','1','N'),
('MN004','Rekrutmen','','','fas fa-file-download','1','','2','Y'),
('MN004-01','Daftar Pelamar','pelamar','pelamar/view.php','','2','MN004','1','Y'),
('MN004-02','Seleksi Berkas','sel_berkas','sel_berkas/view.php','','2','MN004','1','Y'),
('MN004-03','Seleksi Tes Tertulis','sel_tertulis','sel_tertulis/view.php','','2','MN004','1','Y'),
('MN004-04','Wawancara','wawancara','wawancara/view.php','','2','MN004','1','Y'),
('MN004-05','Rekap Akhir','rekap_akhir','rekap_akhir/view.php','','2','MN004','1','Y'),
('MN005','Biodata','biodata','biodata/view.php','fas fa-user','1',NULL,'1','Y'),
('MN006','Data Keluarga','data_keluarga','data_keluarga/view.php','fas fa-user-friends','1',NULL,'1','Y'),
('MN007','Riwayat Pendidikan','riw_pendidikan','riw_pendidikan/view.php','fas fa-graduation-cap','1',NULL,'1','Y'),
('MN008','Riwayat Pelatihan','kursus','kursus/view.php','fas fa-fist-raised','1',NULL,'1','Y'),
('MN009','Aktivitas Sosial','aktivitas','aktivitas/view.php','fas fa-person-booth','1',NULL,'1','Y'),
('MN010','Riwayat Pekerjaan','pekerjaan','pekerjaan/view.php','fas fa-american-sign-language-interpreting','1',NULL,'1','Y'),
('MN011','Seputar Lamaran','seputarlamaran','seputarlamaran/view.php','fab fa-artstation','1',NULL,'1','Y'),
('MN012','Data Pelengkap','berkas','berkas/view.php','fas fa-box','1',NULL,'1','Y'),
('MN013','Lowongan Tersedia','low_tersedia','low_tersedia/view.php','fas fa-box-open','1',NULL,'1','Y'),
('MN014','Ikuti Ujian Online','ujian_online','ujian_online/view.php','fas fa-file-import','1',NULL,'1','Y');

UNLOCK TABLES;

/*Table structure for table `tb_menu_akses` */

DROP TABLE IF EXISTS `tb_menu_akses`;

CREATE TABLE `tb_menu_akses` (
  `id_level` varchar(10) NOT NULL,
  `id_menu` varchar(10) NOT NULL,
  PRIMARY KEY (`id_level`,`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_menu_akses` */

LOCK TABLES `tb_menu_akses` WRITE;

insert  into `tb_menu_akses`(`id_level`,`id_menu`) values 
('LVL0001','MN002'),
('LVL0001','MN003'),
('LVL0001','MN004'),
('LVL0002','MN005'),
('LVL0002','MN006'),
('LVL0002','MN007'),
('LVL0002','MN008'),
('LVL0002','MN009'),
('LVL0002','MN010'),
('LVL0002','MN011'),
('LVL0002','MN012'),
('LVL0002','MN013'),
('LVL0002','MN014');

UNLOCK TABLES;

/*Table structure for table `tb_pelamar` */

DROP TABLE IF EXISTS `tb_pelamar`;

CREATE TABLE `tb_pelamar` (
  `id_pelamar` varchar(50) NOT NULL,
  `nama_pelamar` varchar(50) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `alamat_asli` text,
  `alamat_domisili` text,
  `nik` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `agama` varchar(50) DEFAULT NULL,
  `telp` varchar(50) DEFAULT NULL,
  `verif_keluarga` varchar(10) DEFAULT NULL,
  `verif_pendidikan` varchar(10) DEFAULT NULL,
  `verif_pelatihan` varchar(10) DEFAULT NULL,
  `verif_act_sosial` varchar(10) DEFAULT NULL,
  `verif_his_pekerjaan` varchar(10) DEFAULT NULL,
  `verif_sep_lamaran` varchar(10) DEFAULT NULL,
  `verif_pelengkap` varchar(10) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_pelamar`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_pelamar` */

LOCK TABLES `tb_pelamar` WRITE;

insert  into `tb_pelamar`(`id_pelamar`,`nama_pelamar`,`tempat_lahir`,`tanggal_lahir`,`jk`,`alamat_asli`,`alamat_domisili`,`nik`,`status`,`agama`,`telp`,`verif_keluarga`,`verif_pendidikan`,`verif_pelatihan`,`verif_act_sosial`,`verif_his_pekerjaan`,`verif_sep_lamaran`,`verif_pelengkap`,`id_user`) values 
('199101220001','ALI BABA','REMBANG','1991-01-22','1','Jl. Sunan Bonang No.Km.1, Lasem, Ngemplak, Kec. Lasem, Kabupaten Rembang','Perum Riverside, Sidobali RT 29 RW 09 Mujamuju Umbulharjo, Muja Muju, Kec. Umbulharjo, Kota Yogyakarta','3317121910920006','1','1','081229206922',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
('199306170002','ALADIN RASYID','BANTUL','1993-06-17','1','Jl. Wonosari Jl. Karang Anom No.KM.10,5, Karang Anom, Sitimulyo, Kec. Piyungan, Bantul, Daerah Istimewa Yogyakarta','Jl. Wonosari Jl. Karang Anom No.KM.10,5, Karang Anom, Sitimulyo, Kec. Piyungan, Bantul, Daerah Istimewa Yogyakarta','42225366640','1','1','08666666666','Y','Y','Y','Y','Y','Y','Y',NULL),
('199511030003','Widhayaning Astari','Madiun','1995-11-03','2','Jl. Imam No. 3, Karangasem, Muneng, Madiun','Jl. Jetis, Sinduadi, Sleman Yogyakarta','3318456110920008','1','1','083256789114','Y','Y','Y','Y','Y','Y','Y',NULL),
('202001010004','silfi','madiun','2020-01-01','2','madiun','Jogja','335242671','1','1','123456',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tb_riwayat_pekerjaan` */

DROP TABLE IF EXISTS `tb_riwayat_pekerjaan`;

CREATE TABLE `tb_riwayat_pekerjaan` (
  `id_riwayat_pekerjaan` int(50) NOT NULL AUTO_INCREMENT,
  `nama_perusahaan` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `alamat` text,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL,
  `alasan_keluar` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_riwayat_pekerjaan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_riwayat_pekerjaan` */

LOCK TABLES `tb_riwayat_pekerjaan` WRITE;

insert  into `tb_riwayat_pekerjaan`(`id_riwayat_pekerjaan`,`nama_perusahaan`,`jabatan`,`alamat`,`tgl_masuk`,`tgl_keluar`,`alasan_keluar`,`id_pelamar`) values 
(1,'hgh','','','0000-00-00','0000-00-00','','202001222055'),
(2,'KLINIK PRATAMA PIYUNGAN','PERAWAT PELAKSANA','GAJI KURANG MEMADAI','2014-03-14','2020-01-08','GAJI KURANG MEMADAI','199306170002');

UNLOCK TABLES;

/*Table structure for table `tb_riwayat_pendidikan` */

DROP TABLE IF EXISTS `tb_riwayat_pendidikan`;

CREATE TABLE `tb_riwayat_pendidikan` (
  `id_riwayat_pendidikan` int(50) NOT NULL AUTO_INCREMENT,
  `jenjang_pendidikan` varchar(50) DEFAULT NULL,
  `nama_sekolah` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `tahun_masuk` varchar(50) DEFAULT NULL,
  `tahun_lulus` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_riwayat_pendidikan`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tb_riwayat_pendidikan` */

LOCK TABLES `tb_riwayat_pendidikan` WRITE;

insert  into `tb_riwayat_pendidikan`(`id_riwayat_pendidikan`,`jenjang_pendidikan`,`nama_sekolah`,`jurusan`,`kota`,`tahun_masuk`,`tahun_lulus`,`id_pelamar`) values 
(2,'1','SMAN 1 SLEMAN','IPA','SLEMAN','2007','2010','199101220001'),
(4,'3','UNIV TEKNOLOGI YOGYAKARTA','TEKNIK INFORMATIKA','SLEMAN','2010','2015','199101220001'),
(5,'1','SMK KESEHATAN','FARMASI','SLEMAN','2007','2010','199306170002'),
(6,'2','UNIV. JENDRAL AHMAD YANI','KEPERAWATAN','SLEMAN','2010','2013','199306170002');

UNLOCK TABLES;

/*Table structure for table `tb_seleksi_berkas` */

DROP TABLE IF EXISTS `tb_seleksi_berkas`;

CREATE TABLE `tb_seleksi_berkas` (
  `id_seleksi_berkas` varchar(50) NOT NULL,
  `berkas` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  `ket` varchar(10) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_seleksi_berkas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_seleksi_berkas` */

LOCK TABLES `tb_seleksi_berkas` WRITE;

insert  into `tb_seleksi_berkas`(`id_seleksi_berkas`,`berkas`,`id_pelamar`,`ket`,`id_user`) values 
('199101220001_001','berkas/199101220001_001.pdf','199101220001',NULL,NULL),
('199306170002_001','berkas/199306170002_001.pdf','199306170002',NULL,NULL),
('199511030003_001','berkas/199511030003_001.pdf','199511030003',NULL,NULL);

UNLOCK TABLES;

/*Table structure for table `tb_seleksi_tes_tulis` */

DROP TABLE IF EXISTS `tb_seleksi_tes_tulis`;

CREATE TABLE `tb_seleksi_tes_tulis` (
  `id_seleksi_tes_tulis` int(50) NOT NULL AUTO_INCREMENT,
  `id_lamaran` varchar(50) DEFAULT NULL,
  `id_soal` varchar(50) DEFAULT NULL,
  `jawab_soal` varchar(20) DEFAULT NULL,
  `kunci` varchar(20) DEFAULT NULL,
  `hasil` varchar(20) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_seleksi_tes_tulis`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `tb_seleksi_tes_tulis` */

LOCK TABLES `tb_seleksi_tes_tulis` WRITE;

insert  into `tb_seleksi_tes_tulis`(`id_seleksi_tes_tulis`,`id_lamaran`,`id_soal`,`jawab_soal`,`kunci`,`hasil`,`id_pelamar`) values 
(5,'1','JNS-0001-0001','C','C','B','199101220001'),
(6,'1','JNS-0001-0002','B','E','S','199101220001'),
(7,'1','JNS-0002-0001','A','C','S','199101220001'),
(8,'1','JNS-0002-0002','D','D','B','199101220001'),
(9,'1','JNS-0003-0001','A','D','S','199101220001'),
(10,'4','JNS-0001-0001','A','C','S','199306170002'),
(11,'4','JNS-0001-0002','E','E','B','199306170002'),
(12,'4','JNS-0002-0001','A','C','S','199306170002'),
(13,'4','JNS-0002-0002','D','D','B','199306170002'),
(14,'4','JNS-0003-0001','E','D','S','199306170002');

UNLOCK TABLES;

/*Table structure for table `tb_seputar_lamaran` */

DROP TABLE IF EXISTS `tb_seputar_lamaran`;

CREATE TABLE `tb_seputar_lamaran` (
  `id_seputar_lamaran` int(50) NOT NULL AUTO_INCREMENT,
  `alasan_melamar` varchar(50) DEFAULT NULL,
  `lingkungan_pekerjaan` varchar(50) DEFAULT NULL,
  `gaji_yang_diharapkan` varchar(50) DEFAULT NULL,
  `terkait_magang` varchar(50) DEFAULT NULL,
  `terkait_kontrak` varchar(50) DEFAULT NULL,
  `terkait_tugas_luar` varchar(50) DEFAULT NULL,
  `terkait_peraturan` varchar(50) DEFAULT NULL,
  `id_pelamar` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_seputar_lamaran`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tb_seputar_lamaran` */

LOCK TABLES `tb_seputar_lamaran` WRITE;

insert  into `tb_seputar_lamaran`(`id_seputar_lamaran`,`alasan_melamar`,`lingkungan_pekerjaan`,`gaji_yang_diharapkan`,`terkait_magang`,`terkait_kontrak`,`terkait_tugas_luar`,`terkait_peraturan`,`id_pelamar`) values 
(1,'hjhjkk','','','','','','','202001222055'),
(2,'REPUTASI RS BAIK','1','2000000','1','1','1','1','199306170002');

UNLOCK TABLES;

/*Table structure for table `tb_soal` */

DROP TABLE IF EXISTS `tb_soal`;

CREATE TABLE `tb_soal` (
  `id_soal` varchar(50) NOT NULL,
  `soal` text,
  `pil_a` text,
  `pil_b` text,
  `pil_c` text,
  `pil_d` text,
  `pil_e` text,
  `kunci` varchar(50) DEFAULT NULL,
  `id_jenis_soal` varchar(50) DEFAULT NULL,
  `id_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_soal` */

LOCK TABLES `tb_soal` WRITE;

insert  into `tb_soal`(`id_soal`,`soal`,`pil_a`,`pil_b`,`pil_c`,`pil_d`,`pil_e`,`kunci`,`id_jenis_soal`,`id_user`) values 
('JNS-0001-0001','<p><span style=\"font-weight: 600; font-family: \"Source Sans Pro\", sans-serif; text-align: justify; background-color: transparent;\"><span style=\"font-weight: 400;\">5, 8, 13, 21, 34, 55, 89, 144, â€¦</span></span><br></p>','<p>203</p>','<p>213</p>','<p>223</p>','<p>233</p>','<p>233</p>','C','JNS-0001','USR-0001'),
('JNS-0001-0002','<p><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALoAAABKCAYAAAAMnE7oAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAACMYSURBVHhe7d0H/H9T/QdwTUpkFCoJSTQ0JGmQEg1JSqVBQ1tbW1pKGmiXBmlntDSojJZoUNq7tChaWorzfzzPw9v//O//nM/nfu73fj59H/zej8d9fO73jnPf55zXee97vyulFbSCLge0Augr6HJBK4C+gi4XtDCgX3zxxZfsLZ3GbGvedFnvd4un5dbviUD3gD/+8Y/p/PPPT3/961/Td77znfw3uvDCC9NFF12U99G//vWvS/b+P3WvXSotxwlv0XKb8LGpxdNy63cT6P/+97/T6173unSXu9wl3fe+90277LJLut/97pee/OQnp0c96lHpkY98ZHrGM56R9t133/TiF784PfOZz0wvetGL8nmbc895znPy9rSnPS1f/6QnPSm98IUvTK997WvTgQcemF72spfl+17+8pen97///flv593zghe8IL3qVa/Kx1x7wAEHpE996lPpn//8Z7XjFuLhhx+eeX7961+fPvaxj6VPf/rT6XOf+1ze3vnOd+b7Tz311PTxj388nXDCCekzn/lM+tKXvpTOOuus9L3vfS/96Ec/Sr/+9a8vve7b3/52+trXvpa+8IUvpNNPPz195CMfSV/84hfzue9///vpm9/8ZjrttNPSb3/72/TTn/40t/OTn/wknXHGGfkcoVDj9T//+U9u+xe/+EX6/e9/n3784x+nc889N/3tb3/L/XDf2WefnY9/61vfyu3/5je/SX/605/yvPi1/fznP0+/+93v0p///Oc8Lu77y1/+kttH/r7gggvy33EsiPAhwGz2+xBh5vlB9kOABV9xXr/td59b46Uk/BoDFPfHGHpWnJuVmkDX+Z133jld9apXTauvvnq69rWvnX/XWWeddK1rXSutscYaeX/ddddNG2ywQbrOda6TbnjDG+ZzNufWW2+9vNl3vWvWX3/9tNFGG6UNN9wwXf/618/3+91ss83y73Wve918j1/tOmZz39Zbb51OPPHEKng+9KEPpU033TS3vfHGG6db3OIWebvlLW+Ztxvd6EZpiy22SLe97W3TzW9+80vPbbnllul2t7tduv3tb5/ufve758XsmOsc93vrW98679/sZjdLW221Vdpmm23Sdtttl+54xzvm/R122CFtv/32eX/bbbfNbTn/4Q9/uDqpFsSd7nSnLER22mmndJ/73CcLkt122y0LlV133TWfc80d7nCHfM2OO+6Y7nWve6UHP/jBlwoex3fffff8N7732GOP9JCHPCTttdde6eEPf3j+fdCDHpQFz+Me97j0vOc9Lwumxz/+8enRj350bsv1z372s/PCbwEeuN797nenhz70oemJT3xievrTn54F1POf//y8PetZz8qCjAAk1PbZZ5+8ue4pT3lKeupTn5qe+9znZoGGB/y85CUvyYLRsfe9731ZWBJsrsere6INz8Qj4ekcgUn4EQ59qQl00sVgewgpaTv00EPTwQcfnN7ylrekt771remwww5Lr371q9Ob3/zm9MY3vjFLUr+uI4FJZR1xjfve/va35/P2X/Oa1+RrQmK/8pWvzNe5PgZR52MgDQ7QfeADH6gC3cBZGPh1n2e79wlPeEJ6zGMekwfIvrYMmPai7Yc97GEZFAYQCAAGgPz62yQCluuA6x73uEcGHTADObA4d8973jMD/s53vnNemHggabv0yU9+Ml3zmtdMN7nJTTKQ733ve2ewW2h+73//++e2gVf7trve9a65XYsr/rYALQA8xWIgnPDnvL8tzlvd6lZ5YVus9jfffPO8KC18woNwAHyaoUZ/+MMfMohvcIMbZOFw4xvf+NJ9c6IPnmP89Vu/CDUCi9C76U1vmq/DU/BA2NjcRzA4RogQUu693vWul4WfewlZbXnmWmutlTd9oGH7UhPof//73/PAU/+hTqlFg/GPf/wjTyBV5rhrLQzn/LrunHPOyWYA1ewaas09ztt3zDXO26hQx+z/7Gc/S7/61a+yyvZLRf/gBz/IUuGII46oSkkrHhhJy7jPxsRgJnz3u9/N+9pmZjBTom2mxplnnpl9EL/MlK985SvZbGHSMB+YL9/4xjfSSSedlLeTTz45jw3z56tf/Wr6+te/nk455ZQsGY8//vi8mEiomu9igoDjve99bzruuOPSZz/72dyetvwyj7TNRHJOmzYm1Uc/+tF8znbMMcfkY+V5v85p10ZaHnnkkXkjlY0fE++oo47Kz6cJSWGLGqC7RKgYe4uMtNUOAUeYveMd70jvete78jO0S9DZmImHHHJI3gg1f7uv5IWgDAHJlNUmAeqY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\" data-filename=\"soal.png\" style=\"width: 186px;\"><br></p>','<p><img src=\"data:image/png;base64,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\" data-filename=\"a.png\" style=\"width: 50px;\"><br></p>','<p><img src=\"data:image/png;base64,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\" data-filename=\"b.png\" style=\"width: 45px;\"><br></p>','<p><img src=\"data:image/png;base64,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\" data-filename=\"c.png\" style=\"width: 43px;\"><br></p>','<p><img src=\"data:image/png;base64,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\" data-filename=\"d.png\" style=\"width: 41px;\"><br></p>','<p><img src=\"data:image/png;base64,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\" data-filename=\"d.png\" style=\"width: 41px;\"><br></p>','E','JNS-0001','USR-0001'),
('JNS-0002-0001','<p>Semua pengendara harus mengenakan helm. Sebagian pengendara mengenakan sarung tangan.Â <br></p>','<p>Sebagian pengendara tidak mengenakan helmÂ <br></p>','<p>Semua pengendara tidak mengenakan sarung tangan<br></p>','<p>Sebagian pengendara mengenakan helm dan sarung tangan<br></p>','<p>Sebagian pengendara tidak mengenakan helm dan sarung tangan<br></p>','<p>Sebagian pengendara tidak mengenakan helm dan sarung tangan<br></p>','C','JNS-0002','USR-0001'),
('JNS-0002-0002','<p>Semua yang hadir merupakan anggota perkumpulan, sebagian yang hadir adalah psikolog.&nbsp;<br></p>','<p>Semua psikolog hadir dalam rapat<br></p>','<p>Semua anggota perkumpulan adalah psikolog<br></p>','<p>Semua anggota perkumpulan yang hadir<br></p>','<p>Sebagian psikolog adalah anggota perkumpulan<br></p>','<p>Sebagian yang hadir bukan anggota perkumpulan<br></p>','D','JNS-0002','USR-0001'),
('JNS-0003-0001','<p>Tindakan untuk membunuh bibit penyakit yang berada di luar tubuh disebut ?<br></p>','<p>Disinfektan</p>','<p>Isolasi</p>','<p>Karantina</p>','<p>Sterilisasi</p>','<p>Sterilisasi</p>','D','JNS-0003','USR-0001');

UNLOCK TABLES;

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` varchar(50) NOT NULL,
  `nama_user` varchar(50) DEFAULT NULL,
  `jk` varchar(50) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tb_user` */

LOCK TABLES `tb_user` WRITE;

insert  into `tb_user`(`id_user`,`nama_user`,`jk`,`alamat`,`telp`) values 
('USR-0001','Kanti Wilujeng','2','bjkjbjkb','09766'),
('USR-0002','Wisnu Setya','1','-','08776758');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
