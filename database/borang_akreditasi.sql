-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 03:52 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `borang_akreditasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `id_tmasuk` varchar(100) NOT NULL,
  `id_tlulus` varchar(100) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(100) NOT NULL,
  `domisili` varchar(100) NOT NULL,
  `j_pekerjaan` varchar(100) DEFAULT NULL,
  `skala_tkerja` varchar(100) DEFAULT NULL,
  `nama_tkerja` varchar(200) DEFAULT NULL,
  `t_ksesuaian` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `nim`, `nama`, `id_tmasuk`, `id_tlulus`, `no_hp`, `email`, `domisili`, `j_pekerjaan`, `skala_tkerja`, `nama_tkerja`, `t_ksesuaian`) VALUES
(1, 1503015041, 'Dody', '3', '15', '082211373611', 'dodyapriyanto07@gmail.com', 'Parung Bogor', 'Wiraswasta', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `anggaran`
--

CREATE TABLE `anggaran` (
  `id_anggaran` int(10) NOT NULL,
  `id_jenis` int(10) NOT NULL,
  `id_ta` int(10) NOT NULL,
  `id_penyelenggara` int(11) NOT NULL,
  `jumlah` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggaran`
--

INSERT INTO `anggaran` (`id_anggaran`, `id_jenis`, `id_ta`, `id_penyelenggara`, `jumlah`) VALUES
(3, 1, 14, 1, '20000000'),
(5, 6, 7, 2, '12000000');

-- --------------------------------------------------------

--
-- Table structure for table `aspek`
--

CREATE TABLE `aspek` (
  `id_aspek` int(11) NOT NULL,
  `nama_aspek` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspek`
--

INSERT INTO `aspek` (`id_aspek`, `nama_aspek`) VALUES
(1, 'Keandalan (Reliability)'),
(2, 'Daya tanggap (Responsiveness)'),
(3, 'Kepastian (Assurance)'),
(4, 'Empati (Empathy)'),
(5, 'Tangible');

-- --------------------------------------------------------

--
-- Table structure for table `aspek_pengguna`
--

CREATE TABLE `aspek_pengguna` (
  `id_aspek` int(11) NOT NULL,
  `nama_aspek` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aspek_pengguna`
--

INSERT INTO `aspek_pengguna` (`id_aspek`, `nama_aspek`) VALUES
(1, 'Etika'),
(2, 'Keahlian Bidang Ilmu'),
(3, 'Kemampuan Bahasa Asing'),
(4, 'Penggunaan TI'),
(5, 'Kemampuan Berkomunikasi');

-- --------------------------------------------------------

--
-- Table structure for table `bimbingan`
--

CREATE TABLE `bimbingan` (
  `id_skpmb` int(11) NOT NULL,
  `tgl_skpmb` date NOT NULL,
  `no_skpmb` varchar(50) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `file_sk` varchar(255) DEFAULT NULL,
  `jml_mhs` int(11) DEFAULT NULL,
  `beban_sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bimbingan`
--

INSERT INTO `bimbingan` (`id_skpmb`, `tgl_skpmb`, `no_skpmb`, `id_ta`, `nid`, `file_sk`, `jml_mhs`, `beban_sks`) VALUES
(5, '2020-06-01', '1212121212', 7, '0312028704', 'Penilaian_karyawan_pt1.pdf', NULL, NULL),
(6, '2020-08-05', '1234', 14, '0331017304', '17_04_1676_bab1.pdf', 5, NULL),
(7, '2019-12-10', '1262', 14, '0302026504', NULL, NULL, NULL),
(8, '2019-09-18', '933', 14, '0302026504', NULL, NULL, NULL),
(9, '2019-03-14', '487', 10, '0302026504', NULL, NULL, NULL),
(10, '2019-08-09', '708', 10, '0302026504', NULL, NULL, NULL),
(11, '2019-04-26', '425', 10, '0302026504', NULL, NULL, NULL),
(12, '2019-12-10', '1262', 14, '0314098403', NULL, NULL, NULL),
(14, '2017-08-25', '362', 6, '0314098403', NULL, NULL, NULL),
(15, '2017-10-05', '1540', 7, '0314098403', NULL, NULL, NULL),
(16, '2017-06-09', '1097', 6, '0314098403', NULL, NULL, NULL),
(18, '2018-05-31', '351', 8, '0314098403', NULL, NULL, NULL),
(19, '2018-04-25', '268', 8, '0323056403', NULL, NULL, NULL),
(20, '2018-09-03', '879', 9, '0323056403', NULL, NULL, NULL),
(21, '2019-09-18', '933', 14, '0323056403', NULL, NULL, NULL),
(22, '2019-03-14', '487', 10, '0323056403', NULL, NULL, NULL),
(23, '2019-08-09', '708', 8, '0323056403', NULL, NULL, NULL),
(24, '2019-04-01', '363', 10, '0323056403', NULL, NULL, NULL),
(25, '2019-04-26', '425', 10, '0323056403', NULL, NULL, NULL),
(26, '2017-06-09', '1097', 6, '0307128301', NULL, NULL, NULL),
(27, '2018-09-03', '879', 9, '0307128301', NULL, NULL, NULL),
(28, '2017-08-25', '362', 6, '0307128301', NULL, NULL, NULL),
(29, '2018-03-21', '213', 8, '0307128301', NULL, NULL, NULL),
(31, '2018-09-03', '879', 9, '0307128301', NULL, NULL, NULL),
(32, '2019-03-14', '487', 10, '0307128301', NULL, NULL, NULL),
(33, '2019-11-01', '1139', 14, '0307128301', NULL, NULL, NULL),
(34, '2019-12-10', '1262', 14, '0307128301', NULL, NULL, NULL),
(35, '2019-09-18', '933', 14, '0307128301', NULL, NULL, NULL),
(37, '2019-03-14', '297', 10, '0307128301', NULL, NULL, NULL),
(38, '2019-03-14', '297', 10, '0311128701', NULL, NULL, NULL),
(39, '2019-09-18', '933', 14, '0311128701', NULL, NULL, NULL),
(40, '2019-08-09', '708', 10, '0311128701', NULL, NULL, NULL),
(41, '2019-03-14', '487', 10, '0311128701', NULL, NULL, NULL),
(43, '2019-04-14', '425', 10, '0311128701', NULL, NULL, NULL),
(44, '2019-08-09', '708', 10, '0311128701', NULL, NULL, NULL),
(45, '2019-12-10', '1262', 14, '0311128701', NULL, NULL, NULL),
(46, '2019-12-10', '1262', 14, '0328056901', NULL, NULL, NULL),
(47, '2017-06-09', '1097', 6, '0328056901', NULL, NULL, NULL),
(48, '2017-10-05', '1540', 7, '0328056901', NULL, NULL, NULL),
(49, '2018-09-03', '879', 9, '0328056901', NULL, NULL, NULL),
(50, '2018-04-25', '268', 8, '0328056901', NULL, NULL, NULL),
(51, '2019-04-26', '425', 10, '0328056901', NULL, NULL, NULL),
(52, '2019-09-18', '933', 14, '0328056901', NULL, NULL, NULL),
(54, '2019-08-09', '708', 10, '0328056901', NULL, NULL, NULL),
(55, '2019-03-14', '487', 10, '0328056901', NULL, NULL, NULL),
(56, '2019-12-10', '1262', 14, '0331017304', NULL, NULL, NULL),
(57, '2017-06-09', '1097', 6, '0331017304', NULL, NULL, NULL),
(58, '2018-03-21', '213', 8, '0331017304', NULL, NULL, NULL),
(60, '2017-10-05', '1540', 7, '0331017304', NULL, NULL, NULL),
(61, '2018-01-11', '70', 7, '0331017304', NULL, NULL, NULL),
(63, '2018-09-03', '879', 9, '0331017304', NULL, NULL, NULL),
(64, '2018-04-25', '268', 8, '0331017304', NULL, NULL, NULL),
(66, '2018-05-31', '351', 8, '0331017304', NULL, NULL, NULL),
(67, '2019-03-14', '487', 10, '0331017304', NULL, NULL, NULL),
(68, '2019-04-26', '425', 10, '0331017304', NULL, NULL, NULL),
(69, '2019-09-18', '933', 14, '0331017304', NULL, NULL, NULL),
(70, '2017-08-11', '1310', 15, '0331017304', NULL, NULL, NULL),
(72, '2019-12-10', '1262', 14, '0306028502', NULL, NULL, NULL),
(73, '2019-04-01', '363', 10, '0306028502', NULL, NULL, NULL),
(74, '2019-03-14', '297', 10, '0306028502', NULL, NULL, NULL),
(75, '2017-06-09', '1097', 6, '0306028502', NULL, NULL, NULL),
(76, '2018-09-03', '879', 9, '0306028502', NULL, NULL, NULL),
(79, '2017-10-05', '1540', 7, '0306028502', NULL, NULL, NULL),
(80, '2017-08-25', '362', 6, '0306028502', NULL, NULL, NULL),
(81, '2018-05-31', '351', 8, '0306028502', NULL, NULL, NULL),
(82, '2017-10-05', '1540', 7, '0302026504', NULL, NULL, NULL),
(83, '2017-08-25', '362', 6, '0302026504', NULL, NULL, NULL),
(84, '2017-06-09', '1097', 6, '0302026504', NULL, NULL, NULL),
(86, '2017-08-11', '1306', 8, '0312028704', NULL, NULL, NULL),
(87, '2019-11-01', '1139', 14, '0302026504', NULL, NULL, NULL),
(88, '2018-01-11', '70', 7, '0312028704', NULL, NULL, NULL),
(89, '2018-09-03', '879', 9, '0312028704', NULL, NULL, NULL),
(90, '2018-03-21', '213', 8, '0312028704', NULL, NULL, NULL),
(93, '2018-05-31', '351', 8, '0312028704', NULL, NULL, NULL),
(94, '2019-12-10', '1262', 14, '0312028704', NULL, NULL, NULL),
(95, '2017-06-09', '1097', 6, '0312028704', NULL, NULL, NULL),
(96, '2017-10-05', '1540', 7, '0312028704', NULL, NULL, NULL),
(97, '2017-08-25', '362', 5, '0312028704', NULL, NULL, NULL),
(98, '2019-08-09', '708', 10, '0312028704', NULL, NULL, NULL),
(99, '2019-04-26', '425', 10, '0312028704', NULL, NULL, NULL),
(100, '2019-04-01', '363', 10, '0312028704', NULL, NULL, NULL),
(101, '2019-03-14', '487', 10, '0312028704', NULL, NULL, NULL),
(102, '2019-09-18', '933', 14, '0312028704', NULL, NULL, NULL),
(103, '2019-03-14', '487', 10, '0302069105', NULL, NULL, NULL),
(104, '2019-12-10', '1262', 14, '0302069105', NULL, NULL, NULL),
(106, '2018-09-03', '879', 9, '0314098403', NULL, NULL, NULL),
(108, '2019-03-14', '487', 10, '0314098403', NULL, NULL, NULL),
(109, '2019-09-18', '933', 14, '0314098403', NULL, NULL, NULL),
(111, '2018-09-03', '879', 9, '0715068201', NULL, NULL, NULL),
(112, '2018-10-15', '362', 9, '0715068201', NULL, NULL, NULL),
(113, '2019-04-26', '425', 10, '0715068201', NULL, NULL, NULL),
(114, '2019-09-18', '933', 14, '0313028602', NULL, NULL, NULL),
(115, '2017-06-09', '1097', 6, '0000000001', NULL, NULL, NULL),
(116, '2017-06-09', '1097', 6, '0000000002', NULL, NULL, NULL),
(123, '2019-04-26', '425', 10, '0000000003', NULL, NULL, NULL),
(124, '2019-03-14', '297', 10, '0000000003', NULL, NULL, NULL),
(125, '2019-04-01', '363', 10, '0000000003', NULL, NULL, NULL),
(126, '2019-01-22', '98', 9, '0000000003', NULL, NULL, NULL),
(128, '2017-06-09', '1097', 6, '0000000004', NULL, NULL, NULL),
(129, '2017-06-09', '1097', 6, '0000000005', NULL, NULL, NULL),
(130, '2018-05-31', '351', 8, '0000000005', NULL, NULL, NULL),
(131, '2017-10-05', '1540', 7, '0000000003', NULL, NULL, NULL),
(132, '2017-09-18', '1409', 14, '0000000006', NULL, NULL, NULL),
(133, '2017-06-09', '1097', 6, '0000000006', NULL, NULL, NULL),
(134, '2018-05-31', '351', 8, '0000000006', NULL, NULL, NULL),
(135, '2017-08-25', '362', 6, '0000000006', NULL, NULL, NULL),
(136, '2018-07-05', '406', 8, '0000000006', NULL, NULL, NULL),
(137, '2018-03-21', '213', 8, '0000000006', NULL, NULL, NULL),
(138, '2017-10-05', '1540', 7, '0000000006', NULL, NULL, NULL),
(140, '2017-06-09', '1097', 6, '0000000007', NULL, NULL, NULL),
(141, '2017-06-09', '1097', 6, '0000000003', NULL, NULL, NULL),
(142, '2018-05-31', '351', 8, '0000000003', NULL, NULL, NULL),
(143, '2017-08-25', '362', 6, '0000000003', NULL, NULL, NULL),
(144, '2018-09-03', '879', 9, '0000000003', NULL, NULL, NULL),
(145, '2018-07-05', '406', 8, '0000000003', NULL, NULL, NULL),
(146, '2018-03-21', '213', 8, '0000000003', NULL, NULL, NULL),
(148, '2018-04-25', '268', 8, '0314098403', NULL, NULL, NULL),
(149, '2019-09-08', '708', 7, '0314098403', NULL, NULL, NULL),
(150, '2019-04-26', '425', 10, '0314098403', NULL, NULL, NULL),
(151, '2019-04-01', '363', 15, '0314098403', NULL, NULL, NULL),
(159, '2019-03-14', '297', 10, '0307128301', NULL, NULL, NULL),
(160, '2017-06-09', '1097', 6, '0312028704', NULL, NULL, NULL),
(163, '2018-07-05', '406', 8, '0000000006', NULL, NULL, NULL),
(164, '2017-06-09', '1097', 6, '0323056403', NULL, NULL, NULL),
(165, '2019-12-10', '1262', 14, '0323056403', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bluaran`
--

CREATE TABLE `bluaran` (
  `id_bl` int(11) NOT NULL,
  `id_luaran` int(11) NOT NULL,
  `file_luaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bluaran`
--

INSERT INTO `bluaran` (`id_bl`, `id_luaran`, `file_luaran`) VALUES
(1, 1, ''),
(2, 3, 'LKPS_-_Dosen.pdf'),
(5, 4, 'Penilaian_kinerja_pegawai.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `bluaranmhs`
--

CREATE TABLE `bluaranmhs` (
  `id_bl` int(11) NOT NULL,
  `id_luaranmhs` int(11) NOT NULL,
  `file_luaran` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bluaranmhs`
--

INSERT INTO `bluaranmhs` (`id_bl`, `id_luaranmhs`, `file_luaran`) VALUES
(3, 5, 'LKPS1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `bukti_kerjasama`
--

CREATE TABLE `bukti_kerjasama` (
  `id` int(11) NOT NULL,
  `file` varchar(255) NOT NULL,
  `id_kerjasama` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `daftar_mkkurikulum`
--

CREATE TABLE `daftar_mkkurikulum` (
  `id` int(11) NOT NULL,
  `id_kurikulum` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `smester` int(20) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `id_penyelenggara` int(11) NOT NULL,
  `id_tpengampu` int(11) NOT NULL,
  `bbt_kuliah` int(11) DEFAULT NULL,
  `bbt_seminar` int(11) DEFAULT NULL,
  `bbt_praktik` int(11) DEFAULT NULL,
  `cpl_sikap` varchar(50) DEFAULT NULL,
  `cpl_pengetahuan` varchar(50) DEFAULT NULL,
  `cpl_umum` varchar(50) DEFAULT NULL,
  `cpl_khusus` varchar(50) DEFAULT NULL,
  `kompetensi` enum('Ya','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_mkkurikulum`
--

INSERT INTO `daftar_mkkurikulum` (`id`, `id_kurikulum`, `id_ta`, `smester`, `kode_mk`, `id_penyelenggara`, `id_tpengampu`, `bbt_kuliah`, `bbt_seminar`, `bbt_praktik`, `cpl_sikap`, `cpl_pengetahuan`, `cpl_umum`, `cpl_khusus`, `kompetensi`) VALUES
(2, 0, 4, 4, 'MK00101', 1, 0, 3, 2, 1, NULL, NULL, NULL, NULL, 'Ya'),
(3, 0, 6, 4, 'MK00102', 1, 0, 3, 2, 1, NULL, NULL, NULL, NULL, 'Tidak'),
(4, 0, 9, 1, 'mk001', 1, 0, 3, 2, 1, NULL, NULL, NULL, NULL, 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(20) NOT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `prodi` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `link_gs` varchar(100) DEFAULT NULL,
  `bid_keahlian` varchar(100) DEFAULT NULL,
  `id_jafung` int(11) DEFAULT NULL,
  `sertdosen` varchar(200) DEFAULT NULL,
  `ksesuaian_mk` enum('Ya','Tidak') NOT NULL,
  `file_sertdosen` varchar(200) DEFAULT NULL,
  `status` enum('Ya','Tidak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nid`, `prodi`, `nama`, `email`, `link_gs`, `bid_keahlian`, `id_jafung`, `sertdosen`, `ksesuaian_mk`, `file_sertdosen`, `status`) VALUES
(1, '0312028704', 'Informatika', 'Mia Kamayani Sulaeman ST., MT.', 'mia.kamayani@uhamka.ac.id', '', 'Kecerdasan Buatan', 2, 'sr101223091', 'Ya', 'Artikel.pdf', 'Ya'),
(2, '0330019204', 'Elektro', 'Rahmi Imanda, M.kom.', 'imanda.rahmi@gmail.com', '', ' sistem informasi', 3, NULL, 'Ya', NULL, 'Ya'),
(3, '0328056901', 'Informatika', 'Arry Avorizano, S.Kom., M.Kom.', 'avorizano@gmail.com', '', 'information system, network, security, mobile computing', 2, '', 'Ya', '', 'Ya'),
(4, '0323056403', 'Informatika', 'Dr. Sugema, M.Kom.', 'sugema@uhamka.ac.id', '', 'Sistem Informasi Komputer', 4, NULL, 'Ya', NULL, 'Ya'),
(5, '123456', 'Informatika', 'Arry Avorizano, S.Kom., M.Kom.', 'avorizano@gmail.com', '', 'information system, network, security, mobile computing', 2, '', 'Ya', '', 'Ya'),
(6, '0302026504', 'Informatika', 'Erizal, S.Kom., M.Kom', 'erizal@uhamka.ac.id', NULL, 'pemrograman, logika fuzzy', NULL, NULL, '', NULL, ''),
(7, '0331017304', 'Informatika', 'Atiqah Meutia Hilda, S.Kom., M.Kom.', 'atiqahmeutiahilda@uhamka.ac.id', NULL, NULL, NULL, NULL, '', NULL, ''),
(8, '0322077101', 'Informatika', 'Endy Syaiful Alim, S.T., M.T., Ph.D.', 'endy@uhamka.ac.id', NULL, 'Computer for Education, ICT, Cloud Computing for Education', NULL, NULL, '', NULL, ''),
(9, '0301087904', 'Informatika', 'Faldy Irwiensyah, S.Kom., M.TI.', 'faldy@uhamka.ac.id', NULL, ' ICT, SDLC & CRM', NULL, NULL, '', NULL, ''),
(10, '0715068201', 'Informatika', 'Wildan Toyib, M.Eng.', 'wildan.thoyib@uhamka.ac.id', NULL, 'Big data, Bioinformatika, computational intelligence, knowledge based management', NULL, NULL, '', NULL, ''),
(11, '0301088305', 'Informatika', 'Firman Noor Hasan, S.Kom., M.TI.', 'firman.noorhasan@uhamka.ac.id', NULL, 'data warehouse, business intelligence', NULL, NULL, '', NULL, ''),
(12, '0307128301', 'informatika', 'Muchammad Sholeh, S.Kom, M.Kom.', 'm.sholeh@uhamka.ac.id', NULL, 'Information Security Specialist, Cyber Security, IT Security Governance, IT Project Manager, IT Enth', NULL, NULL, '', NULL, ''),
(13, '0314098403', 'informatika', 'Estu Sinduningrum, S.T., M.T.', 'estu.ningrum@uhamka.ac.id', NULL, 'Sistem digital, pengolahan citra, algoritma dan pemprograman', NULL, NULL, '', NULL, ''),
(14, '0306028502', 'informatika', 'Dimas Febriawan, S.Kom., M.TI.', 'dimas.febriawan@uhamka.ac.id', NULL, 'IT security', NULL, NULL, '', NULL, ''),
(15, '0313028602', 'informatika', 'Zuhri Halim, S.Kom., M.Kom.', 'zuhri@uhamka.ac.id', NULL, 'Data Mining, Sistem Informasi, Rekayasa Bisnis', NULL, NULL, '', NULL, ''),
(16, '0224028603', 'informatika', 'Arafat Febriandirza, S.T., M.TI., Ph.D.', 'arafat@uhamka.ac.id', NULL, 'IT Strategic Plan, Machine Learning, Modeling, Simulation', NULL, NULL, '', NULL, ''),
(17, '0311128701', 'informatika', 'Achmad Rizal Dzikrillah, S.T., M.TI.', 'ahmadrizaldzikrillah@uhamka.ac.id', NULL, 'DSS, artificial intelligence', NULL, NULL, '', NULL, ''),
(18, '0302069105', 'informatika', 'Nunik Pratiwi, S.T., M.Kom.', 'npratiwi@uhamka.ac.id', NULL, 'image processing', NULL, NULL, '', NULL, ''),
(19, '0316099202', 'informatika', 'Isa Faqihuddin Hanif, S.Kom., M.MSI', '', NULL, 'information system, software design, business management', NULL, NULL, '', NULL, ''),
(20, '0320027802', 'Informatika', 'Zahratul Aini, Lc., MA.', '', NULL, NULL, NULL, NULL, 'Ya', NULL, 'Ya'),
(22, '0000000001', 'Informatika', 'Gunarwan P', '', NULL, NULL, NULL, NULL, 'Ya', NULL, 'Ya'),
(23, '0000000002', 'Informatika', 'Harry Ramza, ST., MT., Ph.D', '', NULL, NULL, NULL, NULL, 'Ya', NULL, 'Ya'),
(24, '0000000003', 'Informatika', 'Ir. Sriyono, M.MSI', '', NULL, NULL, NULL, NULL, 'Ya', NULL, 'Ya'),
(25, '0000000004', 'Informatika', 'Irfan', '', NULL, NULL, NULL, NULL, 'Ya', NULL, 'Ya'),
(26, '0000000005', 'Informatika', 'M.Arip', '', NULL, NULL, NULL, NULL, 'Ya', NULL, 'Ya'),
(27, '0000000006', 'Informatika', 'Rosalina', '', NULL, NULL, NULL, NULL, 'Ya', NULL, 'Ya'),
(28, '0000000007', 'Infromatika', 'Selly Novita', '', NULL, NULL, NULL, NULL, 'Ya', NULL, 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'Teknik');

-- --------------------------------------------------------

--
-- Table structure for table `induk_mk`
--

CREATE TABLE `induk_mk` (
  `id_mk` int(11) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `jenis` enum('Seminar','Kuliah','Praktikum') NOT NULL,
  `kompetensi` enum('Ya','Tidak') NOT NULL,
  `bobot` int(10) NOT NULL,
  `konversi_jam` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `induk_mk`
--

INSERT INTO `induk_mk` (`id_mk`, `kode_mk`, `nama_mk`, `jenis`, `kompetensi`, `bobot`, `konversi_jam`) VALUES
(2, 'mk001', 'Sistem Basis Data', 'Kuliah', 'Ya', 3, 150),
(4, 'mk002', 'ecommerce', 'Seminar', 'Tidak', 3, 100),
(5, 'mk003', 'Bahasa Inggris', 'Kuliah', 'Ya', 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `integrasi`
--

CREATE TABLE `integrasi` (
  `id_integrasi` int(11) NOT NULL,
  `id_penelitiand` int(11) NOT NULL,
  `kode_mk` varchar(100) NOT NULL,
  `bentuk_i` varchar(200) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `file_integrasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `integrasi`
--

INSERT INTO `integrasi` (`id_integrasi`, `id_penelitiand`, `kode_mk`, `bentuk_i`, `id_ta`, `file_integrasi`) VALUES
(1, 1, 'mk001', 'Menerapkan pengelolaan data', 10, 'Artikel.pdf'),
(2, 5, 'mk002', 'Pengembangan Sistem Informasi Ecommerce berbasis Web', 3, 'APLIKASI_EVALUASI_DAN_REPORT_KINERJA_HOU.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `jafung`
--

CREATE TABLE `jafung` (
  `id_jafung` int(11) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `id_jjafung` int(11) NOT NULL,
  `file_jafung` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_anggaran`
--

CREATE TABLE `jenis_anggaran` (
  `id_biaya` int(10) NOT NULL,
  `nama_biaya` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_anggaran`
--

INSERT INTO `jenis_anggaran` (`id_biaya`, `nama_biaya`) VALUES
(1, 'Biaya Operasional Pendidikan'),
(2, 'Biaya Operasional Kemahasiswaan'),
(3, 'Biaya Penelitian'),
(4, 'Biaya PKM'),
(5, 'Biaya Investasi SDM'),
(6, 'Biaya Investasi Sarana'),
(7, 'Biaya Investasi Prasarana');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_luaran`
--

CREATE TABLE `jenis_luaran` (
  `id_jenis` int(11) NOT NULL,
  `nama_jl` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_luaran`
--

INSERT INTO `jenis_luaran` (`id_jenis`, `nama_jl`) VALUES
(1, 'HKI');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_publikasi`
--

CREATE TABLE `jenis_publikasi` (
  `id_jpublikasi` int(11) NOT NULL,
  `nama_media` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_publikasi`
--

INSERT INTO `jenis_publikasi` (`id_jpublikasi`, `nama_media`) VALUES
(2, 'Transmedia Group'),
(3, 'Seminar Internasional');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang_jafung`
--

CREATE TABLE `jenjang_jafung` (
  `id_jjafung` int(11) NOT NULL,
  `nama_jjafung` varchar(100) NOT NULL,
  `deskripsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenjang_jafung`
--

INSERT INTO `jenjang_jafung` (`id_jjafung`, `nama_jjafung`, `deskripsi`) VALUES
(2, 'Asisten Ahli', 'Penata Muda Tk. I Gol. III/b'),
(3, 'Asisten Ahli', 'Penata Muda Gol. III/a');

-- --------------------------------------------------------

--
-- Table structure for table `kerjasama`
--

CREATE TABLE `kerjasama` (
  `id` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `jenis` enum('Pendidikan','Penelitian','Pengmas') NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `judul_kegiatan` varchar(100) NOT NULL,
  `waktu_awal` date NOT NULL,
  `waktu_akhir` date NOT NULL,
  `id_penyelenggara` int(10) NOT NULL,
  `manfaat` varchar(255) NOT NULL,
  `bukti_kerjasama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kerjasama`
--

INSERT INTO `kerjasama` (`id`, `id_ta`, `jenis`, `nama`, `id_tingkat`, `judul_kegiatan`, `waktu_awal`, `waktu_akhir`, `id_penyelenggara`, `manfaat`, `bukti_kerjasama`) VALUES
(3, 8, 'Pengmas', 'sma', 2, 'lomba', '2020-02-02', '2020-02-09', 1, 'mempercepat', 'Artikel.pdf'),
(4, 9, 'Penelitian', 'pusdiklat', 3, 'pengembangan kualitas sdm', '2020-02-01', '2020-02-08', 3, 'membuat sdm berkualitas', NULL),
(5, 7, 'Pendidikan', 'Kemendikbud', 2, 'Pengembangan Teknik Pengajaran', '2020-05-01', '2020-06-01', 1, 'Mempermudah pengajaran', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kolaborasi`
--

CREATE TABLE `kolaborasi` (
  `id_kolab` int(11) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `jenis_k` varchar(100) NOT NULL,
  `tema` varchar(200) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `judul_k` varchar(200) NOT NULL,
  `file_k` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `id_kursemester` int(11) NOT NULL,
  `id_kursemester2` int(11) NOT NULL,
  `id_kursemester4` int(11) NOT NULL,
  `id_kursemester6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id_kurikulum` int(20) NOT NULL,
  `nama_kurikulum` varchar(100) NOT NULL,
  `id_ta` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `luaran`
--

CREATE TABLE `luaran` (
  `id_luaran` int(11) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `judul_l` varchar(200) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `ket` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luaran`
--

INSERT INTO `luaran` (`id_luaran`, `nid`, `id_jenis`, `judul_l`, `id_ta`, `ket`) VALUES
(1, '0312028704', 1, 'Rekayasa Web 2', 5, 'Merekayasa website 2'),
(3, '0330019204', 1, 'Pengembangan Web', 9, 'Mengembangkan Website'),
(4, '0312028704', 1, 'Pengembangan Aplikasi', 7, '');

-- --------------------------------------------------------

--
-- Table structure for table `luaranmhs`
--

CREATE TABLE `luaranmhs` (
  `id_luaranmhs` int(11) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `judul_l` varchar(200) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `file_luaran` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `luaranmhs`
--

INSERT INTO `luaranmhs` (`id_luaranmhs`, `nim`, `id_jenis`, `judul_l`, `id_ta`, `ket`, `file_luaran`) VALUES
(5, '1503015041', 1, 'Perancangan', 5, 'Perancangan Aplikasi', 'borang21.pdf'),
(6, '1503015041', 1, 'Penerapan aplikasi smart kampus', 10, 'Menerapkan aplikasi smart kampus ke dalam fakultas', 'Artikel.pdf'),
(7, '1503015041', 1, 'Perancangan', 7, 'Perancangan aplikasi monitoring', 'Lampiran-02-PerBAN-PT-3-2019-Kriteria-dan-Prosedur-IAPT-3_01.pdf'),
(8, '1234567', 1, 'penelitian ', 9, 'penelitian aplikasi smart kampus', 'borang23.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mhs` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `id_penyelenggara` int(11) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `email_mhs` varchar(100) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `link_gs` varchar(200) DEFAULT NULL,
  `ta_masuk` int(100) NOT NULL,
  `ta_lulus` int(100) DEFAULT NULL,
  `j_skripsi` varchar(200) DEFAULT NULL,
  `id_sk1` varchar(11) DEFAULT NULL,
  `id_sk2` varchar(11) DEFAULT NULL,
  `id_skpa` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mhs`, `nim`, `id_penyelenggara`, `nama_mhs`, `email_mhs`, `no_hp`, `link_gs`, `ta_masuk`, `ta_lulus`, `j_skripsi`, `id_sk1`, `id_sk2`, `id_skpa`) VALUES
(12, '1403015028', 1, 'Dimas Damara Putra ', '', '', NULL, 10, NULL, 'Sistem Pakar Untuk Mengidentifikasi Kepribadian Siswa Menggunakan Metode Certainty Factor Dalam Mendukung Pendekatan Guru Berbasis Mobile Android', '108', '9', NULL),
(13, '1403015067', 1, 'Muhammad Danny Waskito', '', '', NULL, 10, NULL, 'Perancangan Sistem Informasi Penerimaan Siswa Baru Berbasis Web (Studi Kasus : TK Pertiwi)', '9', '108', NULL),
(14, '1503015009', 1, 'Agus Budiantoro', '', '', NULL, 10, NULL, 'Sistem Pakar Untuk Menentukan Sanksi Pelanggaran Lalu Lintas Sepeda Motor Dan Mobil Menggunakan Metode Forw Ard Chaining Berbasis Web', '9', '67', NULL),
(15, '1503015017', 1, 'Allan Ardiyanto', '', '', NULL, 10, NULL, 'Perancangan Sistem Informasi Pendaftaran Pasien Puskesmas Batu Ampar Berbasis Web', '9', '67', NULL),
(16, '1503015037', 1, 'Chalid', '', '', NULL, 10, NULL, 'Sistem Pakar Untuk Mendiagnosa Penyakit Mata Menggunakan Metode Forward Chaining Berbasis Android\r\n', '9', '67', NULL),
(17, '1503015050', 1, 'Fadila Bachriansyah', '', '', NULL, 10, NULL, 'Perancangan Sistem Informasi Keamanan Lingkungan (Siskamling) Berbasis Mobile', '9', '108', NULL),
(20, '1503015067', 1, 'Ilham Mustaqim\r\n', '', '', NULL, 10, NULL, 'Perancangan Sistem Pembelajaran E-Learnig Pada Drums Lesson Berbasis Moodle', '9', '41', NULL),
(21, '1503015070', 1, 'Ira Mawaddah\r\n', '', '', NULL, 10, NULL, 'Implementasi Machine Learning Menggunakan Speech Recognition Untuk Mengidentifikasi Kepribadian Dengan Mel-Frequency Cepstrum Coefficients\r\n', '9', '67', NULL),
(22, '1503015074', 1, 'Istnania Ihzha Adamy\r\n', '', '', NULL, 10, NULL, 'Implementasi Adaptive Neuro-Fuzzy Interference System Untuk Mengetahui Minat Dan Bakat Siswa Pada SMAN 11 Jakarta', '9', '22', NULL),
(23, '1503015096', 1, 'Muhammad Nur Rijki\r\n', '', '', NULL, 10, NULL, 'Sistem Informasi Kelayakan Hewan Kurban dengan Menerapkan Teknologi QR (Quick Response)', '10', NULL, NULL),
(24, '1503015100', 1, 'Muhammad Rizal Fahmi\r\n', '', '', NULL, 14, NULL, 'Sistem Absensi Guru SMK Muhammadiyah 4 Jakarta Barat Menggunakan QR (Quick Response) Code Berbasis Android\r\n', '8', NULL, NULL),
(29, '1603015058', 1, 'Ridha Yeniar Apriyanti', '', '', NULL, 14, NULL, 'Perancangan aplikasi pengolahan data penentuan jurusan pada sekolah menengah kejuruan dengan metode clustering\r\n', '7', NULL, NULL),
(30, '1303015107', 1, 'Saumi Ayu Salsabila\r\n', '', '', NULL, 14, NULL, 'Perancangan Aplikasi E-learning Berbasis Web\r\n', '8', NULL, NULL),
(32, '1503015113', 1, 'Rachel Yukabit Rosyidah Ilahi\r\n', '', '', NULL, 10, NULL, 'Penerapan Logika Fuzzy Metode Sugeno untuk Menentukan Dosen Pembimbing Skripsi Berdasarkan Spesifikasi Keahlian Dosen (Studi Kasus Program Studi Teknik Informatika Fakultas Teknik Universitas Muhammad', '11', '150', NULL),
(33, '1603015086', 1, 'Fajar Tri Bahtiar\r\n', '', '', NULL, 14, NULL, 'Perancangan Aplikasi Program Belajar Anak Cerdas untuk Anak Usia 3-5 Tahun dengan Macromedia Flash', '12', NULL, NULL),
(34, '1603015094', 1, 'Muhamad Widodo Ardiansyah\r\n', '', '', NULL, 14, NULL, 'Perancangan Aplikasi Education Game untuk Pengajaran Bahasa Sunda pada Anak-Anak Berbasis Android\r\n', '12', NULL, NULL),
(35, '1603015157', 1, 'Almas Fildzah Khalilah\r\n', '', '', NULL, 14, NULL, 'Aplikasi Pembelajaran Seks pada Anak Berbasis AR\r\n', '12', NULL, NULL),
(36, '1203015020', 1, 'Ami Rahmawati\r\n', '', '', NULL, 6, NULL, 'Rancang Bangun Quiz Online pada Sekolah Menengah Atas Menngunakan Website (Studi Kasus : SMA Wijaya Kusuma)', '16', '164', NULL),
(38, '1203015032', 1, 'Assri Widianingsih\r\n', '', '', NULL, 6, NULL, 'Perancangan Aplikasi Quiz Online Mata Pelajaran Ilmu Pengetahuan Alam (IPA) Menggunakan Mobile APPS (Studi Kasus : SMA Wijaya Kusuma)\r\n', '16', '164', NULL),
(39, '1203015070', 1, 'Irfan Safutra\r\n', '', '', NULL, 6, NULL, 'Animasi Interaktif Pengenalan Binatang Pada Anak Usia Dini\r\n', '16', '128', NULL),
(40, '1303015011', 1, 'Alfian Arif Rinaldi\r\n', '', '', NULL, 6, NULL, 'Pemanfaatan Animasi 3D sebagai Motivasi Kerja Untuk Meningkatkan Kinerja Karyawan Berbasis Aplikasi Mobile\r\n', '16', '6', NULL),
(41, '1303015014', 1, 'Andhika Julianto\r\n', '', '', NULL, 6, NULL, 'penerapan teknologi Augmented Realitiy Pada Brosur Shinju Apartement Berasis Android (Studi Kasus : PT. Lousindo Damai Sejahtera)\r\n', '140', '16', NULL),
(42, '1303015029', 1, 'Desi Komalasari\r\n', '', '', NULL, 6, NULL, 'Pemanfaatan Animasi 3D Peristiwa Hari Pahlawan 10 November 1945\r\n', '16', '133', NULL),
(44, '1303015043', 1, 'Harry Darmawan\r\n', '', '', NULL, 6, NULL, 'Implementasi Algoritma Enkripsi Blowfish dalam Keamanan Login Web\r\n', '143', '14', NULL),
(45, '1303015058', 1, 'Lina Linta Najib Arfad\r\n', '', '', NULL, 7, NULL, 'Perancangan Aplikasi Matakuliah Sistem Digital Berbasis Aplikasi Android\r\n', '15', '138', NULL),
(46, '1303015088', 1, 'Nurul Hikmah\r\n', '', '', NULL, 7, NULL, 'Animasi 3D Infografis Perkembangan Balita dan Imunisasi pada Layanan Posyandu Cemara II\r\n', '15', '138', NULL),
(47, '1303015098', 1, 'Renaldi Alif Rachmawan\r\n', '', '', NULL, 6, NULL, 'Penerapan Augmented Reality Untuk Pengenalan Huruf dan Kata Bagi Anak-anak Kelompok Belajar TK. A Pada TK. Risanti 2', '140', '16', NULL),
(48, '1303015103', 1, 'Sahril Fahmi\r\n', '', '', NULL, 6, NULL, 'Sahril Fahmi	Sistem Informasi Geografis Berbasis WEB Likasi Sekolah Muhammadiyah di Jakarta\r\n', '16', '160', NULL),
(56, '1303015105', 1, 'Sandy Hilman\r\n', '', '', NULL, 6, NULL, 'Animasi 3D untuk Simulasi Tahapan Sidang Tilang Berbasis Aplikasi Mobile\r\n', '14', '97', NULL),
(57, '1303015112', 1, 'Teguh Saefudin\r\n', '', '', NULL, 6, NULL, 'Pemanfaatan Animasi 3D Untuk Simulasi Pendaftaran Fakultas Teknik UHAMKA Dalam Bentuk Aplikasi Mobile\r\n', '', NULL, NULL),
(58, '1303015113', 1, 'Thia Mirani\r\n', '', '', NULL, 6, NULL, 'Rancang Bangun Sistem Pengenalan Citra Untuk Tingkat Kematangan Buah Pepaya Bangkok Berdasarkan Warna Berbasis Mobile\r\n', '14', '80', NULL),
(59, '1403015001', 1, 'Abdul Syakur Khairi\r\n', '', '', NULL, 8, NULL, 'Pembuatan Sistem Informasi Penjualan Rumah dengan Menggunakan 3D Modeling Sebagai Media Promosi\r\n', '81', '18', NULL),
(60, '1403015074', 1, 'Muhammad Reyhan\r\n', '', '', NULL, 8, NULL, 'Pengecekan Produk Menggunakan metode QR Code untuk Badan Pengawas Obat dan Makanan\r\n', '18', '66', NULL),
(62, '1403015004', 1, 'Ainun Ajeng Rahma\r\n', '', '', NULL, 8, NULL, 'Penerapan Teknologi Augmented Reality Untuk Pembelajaran Huruf Hijaiyah Bagi Anak-Anak\r\n', '148', '64', NULL),
(63, '1403015049', 1, 'Imaduddin Abdurrahim\r\n', '', '', NULL, 8, NULL, 'Pembuatan Mapping Floor Menggunakan Engine Game Unity dan Barcode\r\n', '148', '64', NULL),
(64, '1403015081', 1, 'Mutiara Sari\r\n', '', '', NULL, 8, NULL, 'Perancangan Aplikasi Sistem Pakar Diagnosa Penyakit Umum Serta Penentuan Obatnya Berbasis Android\r\n', '148', '64', NULL),
(65, '1403015082', 1, 'Nabila Risma Aulia\r\n', '', '', '', 8, NULL, 'Pengembangan Aplikasi Mobile Vote Berbasis Android untuk Umum\r\n', '148', '64', NULL),
(66, '1403015093', 1, 'Regi Prasetia Febrizal\r\n', '', '', NULL, 9, NULL, 'Pengembangan Server Berbasis Proxmox untuk Dua Platform pada Laboratorium  Fakultas Teknik UHAMKA\r\n', '49', '106', NULL),
(78, '1303015018', 1, 'Ari Ardiansyah\r\n', '', '', NULL, 14, NULL, 'Aplikasi Game Edukasi Sebagai Upaya untuk Meningkatkan Kemampuan Berhitung Pada Anak Berkebutuhan Khusus Tuna Grahita\r\n', '109', NULL, NULL),
(79, '1403015050', 1, 'Imam Syafei\r\n\r\n', '', '', NULL, 10, NULL, 'Perancangan Aplikasi Pengaduan Masyarakat Terhadap Keresahan Lingkungan Berbasis Android\r\n', '101', '108', NULL),
(80, '1403015029', 1, 'Dwi Kusumawardani\r\n', '', '', NULL, 7, NULL, 'Rancang Bangun Aplikasi E-marketplace Makanan dan Minuman\r\n', '149', NULL, NULL),
(81, '1403015033', 1, 'Fadel Taufiq\r\n', '', '', NULL, 14, NULL, 'Rancang bangun Sistem Informasi dan Pendaftaran Klinik Tumbuh Kembang Anak\r\n', '109', NULL, NULL),
(82, '1403015038', 1, 'Fayzal Ishak\r\n', '', '', NULL, 15, NULL, 'Pembuatan Sistem Informasi Deskripsi Buku Menggunakan Barcode\r\n', '151', '100', NULL),
(94, '1503015012', 1, 'Ajeng Dwi Septiyanti\r\n', '', '', NULL, 10, NULL, 'Aplikasi Penentuan Bobot Plagiarisme Judul Skripsi Menggunakan Algoritma TF-IDF Di \r\n', '101', '108', NULL),
(95, '1403015083', 1, 'Nanda Aditya Nugroho\r\n', '', '', NULL, 14, NULL, 'Perancangan Aplikasi pembelajran Verb dan Grammar berbasis WEB\r\n', '109', NULL, NULL),
(96, '1403015102', 1, 'Sarah \r\n', '', '', NULL, 10, NULL, 'Rancangan Bangun Aplikasi Pengelolaan Data Skripsi \r\n', '101', '108', NULL),
(97, '1403015114', 1, 'Yogi Fachriyantul Utami\r\n', '', '', NULL, 15, NULL, 'Perancangan Sistem Informasi untuk Pendataan Pembayaran Retribusi\r\n', '100', '151', NULL),
(98, '1403015117', 1, 'Zaelani Fikri\r\n', '', '', NULL, 7, NULL, 'Rancang bangun Aplikasi E-commerce Cake and Partyplanner Berbasis Mobile\r\n', '149', NULL, NULL),
(105, '1503015019', 1, 'Ammar Miqdad Anugrah Aldila\r\n', '', '', NULL, 10, NULL, 'Aplikasi Keamanan Dokumen Menggunakan Algoritma Advance Encryption Standard (AES-256) Berbasis Mobile \r\n', '101', '108', NULL),
(106, '1503015028', 1, 'Arika Roihanah\r\n', '', '', NULL, 7, NULL, 'Sistem Pakar Mendiagnosa Penyakit Gigi dan Mulut dengan Metode forward Chaining\r\n', '149', NULL, NULL),
(107, '1503015030', 1, 'Ayuningtias\r\n', '', '', NULL, 10, NULL, 'Aplikasi Steganografi Menggunakan Metode EOF (End of File)\r\n', '123', '150', NULL),
(108, '1503015040', 1, 'Diasni Nurul Agustia\r\n', '', '', NULL, 10, NULL, 'Pembuatan Sistem Akademik Data Mahasiswa Berbasis Mobile\r\n', '108', '41', NULL),
(109, '1503015052', 1, 'Fahmi Rais\r\n', '', '', NULL, 10, NULL, 'Perancangan Media Pembelajaran Merakit PC (Personal Computer) dengan Virtual Reality Berbasis Android\r\n\r\n', '150', '68', NULL),
(111, '1503015054', 1, 'Fery Orlan \r\n', '', '', NULL, 10, NULL, 'Implementasi Optimasi Manajemen Bandwidth Jaringan Dengan Metode Per Connection Queue Menggunakan Simple Queue Dana Queue Tree Pada Mikrotik Di Smk Negeri 9 Bekasi\r\n', '108', '32', NULL),
(112, '1503015055', 1, 'Fitri Yanti Gobel\r\n', '', '', NULL, 10, NULL, 'Rancang Bangun Sistem Informasi Inventaris Barang (Studi Kasus CV Imelga 91 Mitra PT. Panasonic Manufacturing Indonesia)\r\n', '99', '150', NULL),
(113, '1503015059', 1, 'Hanifah Febryana\r\n', '', '', NULL, 10, NULL, 'Sistem Informasi Akuntansi Perhitungan Titik Impas Dengan Metode Break Even Point\r\n', '108', '67', NULL),
(114, '1503015066', 1, 'Ikhwan Anjar Prabowo\r\n', '', '', NULL, 10, NULL, 'Implementasi Algoritma Kriptografi Advanced Encryption Standard (AES) untuk Keamanan Data Rekam Medis Electronic (RME)\r\n', '123', '150', NULL),
(115, '1503015086', 1, 'Mita Permatasari\r\n', '', '', NULL, 10, NULL, 'Pengembangan Aplikasi Panduan Ibadah Haji Berbasis Android\r\n', '150', '43', NULL),
(122, '1303015016', 1, 'Aprianda\r\n', '', '', NULL, 6, NULL, '\r\n\r\nPenerapan Logika Fuzzy Pada Alat Pengering Lada Otomatis Berbasis  Microcontroller DHT22\r\n', '57', '115', NULL),
(123, '1503015116', 1, 'Refitania\r\n', '', '', NULL, 7, NULL, 'Sistem Pakar mendiagnosa Penyakit Usus pada Manusia dengan Metode Fordward Chaining\r\n', '149', NULL, NULL),
(124, '1503015140', 1, 'Tri handriyo pamungkas\r\n', '', '', NULL, 14, NULL, 'Data mining untuk Prediksi Volume sampah DKI Jakarta pada Pembuangan Akhir (TPA) dengan Algoritma Naïve bayes Classfier\r\n', '109', NULL, NULL),
(125, '1503015155', 1, 'Risnawati\r\n', '', '', NULL, 10, NULL, 'Perancangan Aplikasi Mobile Perpustakaan Digital Menggunakan Sistem Operasi Android \r\n', '101', '108', NULL),
(126, '1203015007', 1, 'Adrian Riad \r\n', '', '', NULL, 6, NULL, 'Perancangan jaringan MAN (Metropolitan Area Network) Menggunakan Cisco Dengan Metode OSPF (Open Shortest path First)\r\n', '133', '115', NULL),
(128, '1303015055', 1, 'Juwono Sudarsono\r\n', '', '', NULL, 6, NULL, 'Rancang Bangun E-Commerce Untuk Meningkatkan Penjualan Produk Perusahaan Secara Daring (Online)\r\n', '75', '115', NULL),
(129, '1203015033', 1, 'Ayyub Ramli\r\n', '', '', NULL, 6, NULL, 'Perancangan jaringan Very Small Aperture Terminal (VSAT) Berbasis CISCO\r\n', '141', '116', NULL),
(130, '1303015046', 1, 'Ilham Nur Alam\r\n', '', '', NULL, 6, NULL, 'Perancangan Sistem Kendali Suhu, Kelembaban dan Sensor Gerak PIR Pada Ruang Server Berbasis Internet of Things (IoT)\r\n', '113', '116', NULL),
(131, '1203015001', 1, 'Abid Eka Wibisana\r\n', '', '', NULL, 10, NULL, 'Implementasi E-Government pada Kelurahan Pondok Aren Berbasis Service Oriented Architecture (SOA)\r\n', '123', '51', NULL),
(132, '1303015100', 1, 'Riki Juliana Pratama\r\n', '', '', NULL, 10, NULL, 'Penerapan Aplikasi Berbasis SMS Gateway Sebagai Media Informasi Siswa SMK Kartika X-2 Jakarta dengan Metode Waterfall\r\n', '124', NULL, NULL),
(134, '1403015025', 1, 'Deyan Fajar Arfin\r\n', '', '', NULL, 10, NULL, 'Implementasi Autentikasi Menggunakan Captive Portal pada Jaringan Wireless\r\n', '123', '99', NULL),
(135, '1403015032', 1, 'Fachriyana Putra\r\n', '', '', NULL, 10, NULL, 'Analisa dan Implementasi High Interaction Honeypot untuk Mendeteksi Serangan Pada Web Server\r\n', '73', '125', NULL),
(136, '1403015056', 1, 'Kamriyadin\r\n', '', '', NULL, 10, NULL, 'Perancangan Aplikasi Sistem Pakar Diagnosa Gangguan Kejiwaan Skizofrenia Menggunakan Metode Dampster Shafer Berbasis Android\r\n', '99', '123', NULL),
(137, '1403015058', 1, 'Maisaroh\r\n', '', '', NULL, 10, NULL, 'Membangun Sistem Mobile Log Management Menggunakan Graylog dan Bot Telegram Channel\r\n', '125', '100', NULL),
(138, '1403015061', 1, 'Mirza Adityaraka G\r\n', '', '', NULL, 10, NULL, 'Aplikasi Steganography Berbasis Desktop Menggunakan Metode Random Ancoding dan Decoding dengan Matlab R2017a\r\n', '74', '124', NULL),
(140, '1403015080', 1, 'Mustaqim Ahmad\r\n', '', '', NULL, 10, NULL, 'Sistem Keamanan Ruangan Menggunakan Mikrokontroler Arduino Mega 2560 Melalui SMS sebagai Notifikasi\r\n', '37', '124', NULL),
(141, '1403015094', 1, 'Ridho Faizal Fikri\r\n', '', '', NULL, 10, NULL, 'Penerapan Synology dengan Network Attached Storage (NAS) untuk Pemanfaatan Data Sharing dan Backup Storage (Studi Kasus : PT. KSK Insurance Indonesia)\r\n', '73', '125', NULL),
(142, '1403015111', 1, 'Uwais Al Qorni\r\n', '', '', NULL, 10, NULL, 'Membangun Sistem Smart Home Kontrol Yang Terintegrasi dengan Google Assistant \r\n', '100', '125', NULL),
(143, '1303015007', 1, 'Amalia Amanah\r\n', '', '', NULL, 10, NULL, 'Implementasi Sistem Kriptografi Menggunakan Algoritma AES-256 untuk Keamanan File\r\n', '124', '84', NULL),
(144, '1503015011', 1, 'Ahmad Rustaman\r\n', '', '', NULL, 10, NULL, 'Analisis dan Pengembangan Otomatisasi Konfigurasi Switch CISCO Berbasis VLAN di BPPTIK KOMINFO\r\n', '123', '99', NULL),
(169, '1303015111', 1, 'Syahrezal Mahmud Fadhilah\r\n\r\n', '', '', NULL, 6, NULL, 'Perancangan Sistem E-Ticketing Menggunakan Sistem Operasi Android pada Tempat Wisata Taman Mini Indonesia Indah (TMII) (Studi Kasus : Taman Mini Indonesia Indah)\r\n\r\n', '140', '', NULL),
(170, '1103015039', 1, 'Muhamad Ansari\r\n', '', '', NULL, 6, NULL, 'Perancangan Berbasis Mikrotik Pada Jaringan Metropolitan Area Network (MAN)\r\n\r\n', '129', '26', NULL),
(171, '1503015150', 1, 'Rizky Zein Adam\r\n', '', '', NULL, 10, NULL, 'Analisa Sentimen Debat Calon Presiden dan Wakil Presiden Republik Indonesia 2019 Menggunakan Algoritma Naïve Bayes Classifier\r\n', NULL, '123', NULL),
(172, '1503015135', 1, 'Satria Anjasmara\r\n', '', '', NULL, 10, NULL, 'Sistem Pakar untuk Diagnosa Cedera pada Atlit Beladiri Pencak Silat Berbasis Web\r\n', '123', '68', NULL),
(173, '1303015039', 1, 'Fajar Saputro\r\n', '', '', NULL, 9, NULL, 'Analisi Perbedaan Vulnerability Assesment Antara Aplikasi Open Source dan Aplikasi Proprietary (Open VAS dan Nessus)\r\n', '48', '131', NULL),
(174, '1103015044', 1, 'Rifqi Mubarok\r\n\r\n', '', '', NULL, 6, NULL, 'Monitoring Teraffic dan manajemen Bandwith Jaringan Komputer Menggunakan Aplikasi PRTG\r\n', '129', '75', NULL),
(175, '1103015057', 1, 'Ari Yansa\r\n', '', '', NULL, 6, NULL, 'Perancangan Load Balancing Network Server dan bandwith Management\r\n', '129', '75', NULL),
(176, '1103015064', 1, 'Entih Ahmadi Shafar\r\n', '', '', NULL, 8, NULL, 'Load Balancing Multihoming dan Failover Menggunakan Vyos\r\n', '130', '142', NULL),
(177, '1103015066', 1, 'Muhammad Hanif', '', '', NULL, 6, NULL, 'Perancangan Wide Area Network (WAN) Dengan Menggunakan Konsep Routing Open Shortest Path First (OSPF Pada PT. Gaya Indah Kharisma\r\n', '129', '75', NULL),
(178, '1103015069', 1, 'Dhany Yuli Suprayitno\r\n', '', '', NULL, 6, NULL, 'Perancangan Voice Over Internet Protocol Net Wrking Menggunakan Trixbox\r\n', '129', '47', NULL),
(179, '1103015076', 1, 'Ahmad Faisal Ranadhan\r\n', '', '', NULL, 6, NULL, 'Perancangan jaringan Wireless menggunakan Teknologi Multiple - Input Multiple - Output\r\n', '129', '133', NULL),
(180, '1103015080', 1, 'Oki Diar Prasetyo\r\n', '', '', NULL, 8, NULL, 'Membangun Sistem Keamanan Jaringan Menggunakan Opnsense sebagai Unified Threat Management\r\n', '130', '142', NULL),
(185, '1103015084', 1, 'Sektyo Widyapranoto\r\n', '', '', NULL, 6, NULL, 'Aplikasi Berbasis Open Source Ncomputing Ubuntu\r\n', '129', '141', NULL),
(186, '1303015009', 1, 'Akhmad Reza kamil\r\n\r\n\r\n', '', '', NULL, 9, NULL, 'Perancangan Sistem Informasi Sekolah dan Pemantauan Siswa Berbasis Mobile di SDIT Insan Mandiri\r\n', '27', '111', NULL),
(189, '1303015060', 1, 'Luthfi Mawardi\r\n', '', '', NULL, 6, NULL, 'Perancangan Radius Server Pada Jaringan Virtual Private Network\r\n', '143', '28', NULL),
(190, '1303015068', 1, 'Mohammad manggar Ardian\r\n', '', '', NULL, 6, NULL, 'Implementasi Jaringan Hotspot dan Firewall Anti DDOS(Ping Flooding) Pada Jaringan Komputer Menggunakan Mikrotik RB 750 dengan Winbox\r\n', '141', '26', NULL),
(196, '1303015069', 1, 'Mohammad Rafli\r\n', '', '', NULL, 8, NULL, 'Perancangan Sistem Monitoring Server Menggunakan Teknologi BOT Communication\r\n', '29', '146', NULL),
(197, '1303015072', 1, 'Muchammad Febrian Ramadhan\r\n', '', '', NULL, 6, NULL, '', '', '143', NULL),
(198, '1403015066', 1, 'Muhammad Aziz Apendi\r\n', '', '', NULL, 9, NULL, 'Analisa Perbandingan Kinerja Virtual Machine Promox dan VMW Are Asxt\r\n', '27', NULL, NULL),
(199, '1303015006', 1, 'Ahmad Ardan Huzaifi Hidayat\r\n\r\n', '', '', NULL, 14, NULL, 'Penerapan Aplikasi Penjualan Online Menggunakan Sistem Operasi Android pada Tokokue Actacookies di Depok\r\n\r\n', '33', '', NULL),
(200, '1303015087', 1, 'Nur Kholis Abdi\r\n', '', '', NULL, 14, NULL, 'Penerapan Aplikasi Database (IT Part Investory) Berbasis WEB yang di Integrasikan pada Android di PT. Steelindo Wahana Perkasa Belitung\r\n', '33', NULL, NULL),
(201, '1603015004', 1, 'Siti Mindesih\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Penyaluran dan Penerimaan Dana Zakat Infaq Sedekah dan Wakaf Berbasis Online Web\r\n', '34', NULL, NULL),
(202, '1603015145', 1, 'Aldo Ageng Prabowo\r\n', '', '', NULL, 14, NULL, '\"Perancangan dan Analisis dalam Penerapan Teknologi Jaringan Nirkabel pada Jaringan Lab SMK Al-Muhajirin Depok.\"\r\n', '34', NULL, NULL),
(203, '1603015170', 1, 'Hafiz Faturrachman Kamil\r\n', '', '', NULL, 14, NULL, 'Perancangan Aplikasi Uji Kelayakan Kelulusan Mahasiswa Berbasis Mobile\r\n', '34', NULL, NULL),
(208, '1503015076', 1, 'Kolifa Muhasim\r\n', '', '', NULL, 14, NULL, 'Pengembangan Mobile APP Pada Computer Based Test \r\n', '35', NULL, NULL),
(224, '1403015065', 1, 'Muhammad Rezzy Adhuestyan\r\n', '', '', NULL, 14, NULL, 'Muhammad Rezzy Adhuestyan\r\n', '39', NULL, NULL),
(225, '1403015120', 1, 'Narlita Indah Permatasari\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi akademik (SIA) dan Penjadwalan Otomatis ( studi kasus : SMK Hidayathul Thalibin)\r\n', '39', NULL, NULL),
(226, '1503015023', 1, 'Annur Fuad\r\n', '', '', NULL, 10, NULL, 'Sistem Monitoring Kinerja Pemerintah Berdasarkan Sentimen masyarakat pada Media Sosial\r\n', '40', NULL, NULL),
(227, '1503015033', 1, 'Bhakti Adytia Wildan\r\n', '', '', NULL, 10, NULL, 'Sistem Pendukung Keputusan untuk Memilih Objek Wisata di Bogor Menggunakan Metode Topsis\r\n', '40', NULL, NULL),
(228, '1503015073', 1, 'Irwan Rahmadi\r\n\r\n', '', '', NULL, 10, NULL, 'Perancangan Sistem Informasi Prediksi Jumlah Kelas Perkuliahan di Fakultas Teknik UHAMKA\r\n\r\n', '68', '43', NULL),
(236, '1503015145', 1, 'Yunanda Nur Amalita\r\n', '', '', NULL, 10, NULL, 'Sistem Pendukung Keputusan Pemilihan Sekolah Menengah Kejuruan Swasta Wilayah Jakarta Timur\r\n', '40', NULL, NULL),
(237, '1503015082', 1, 'Muhammad Gigeh Riyadi\r\n', '', '', NULL, 14, NULL, 'Rancang Bangun Sistem Informasi Pelaksanaan Ujian AIKA Berbasis Mobile\r\n', '46', NULL, NULL),
(238, '1603015028', 1, 'Munajat\r\n', '', '', NULL, 14, NULL, 'Perancangan Aplikasi E-commerce pada Bisnis Properti Rumah Risha Jakarta\r\n', '39', NULL, NULL),
(239, '1603015076', 1, 'Raka Rizky\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Manajemen Pengelolaan Kelas Berbasis Web (Studi Kasus : Fakultas Teknik UHAMKA)\r\n', '45', NULL, NULL),
(240, '1603015087', 1, 'Ahmad Junaedi Rusli\r\n', '', '', NULL, 14, NULL, 'Sistem Penentuan Jadwal Perkuliahan Menggunakan Algoritma Genetika Berbasis Web (Studi Kasus Fakultas Teknik UHAMKA)\r\n', '45', NULL, NULL),
(241, '1603015149', 1, 'Muhammad Fuadi\r\n', 'Perancangan Sistem Pakar untuk Mendiagnosa Kejiwaan Anggota Keluarga dengan Metode Fordward Chaining', '', NULL, 14, NULL, NULL, '45', NULL, NULL),
(242, '1603015013', 1, 'Muhammad Dannu Ramadhan \r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi Penilaian Kinerja Guru ( PKG ) Berbasis Website \r\n', '46', NULL, NULL),
(243, '1603015068', 1, 'Ronaldo Zulfikar\r\n', '', '', NULL, 14, NULL, 'Rancang Bangun Sistem Informasi Pengembangan Karir Halal Berbasis Website\r\n', '46', NULL, NULL),
(244, '1603015120', 1, 'Muhammad Faishal M\r\n', '', '', NULL, 14, NULL, 'Pendaftaran Sidang AIKA Secara Online Berbasis Website \r\n', '46', NULL, NULL),
(245, '1603015173', 1, 'Nandar Ahmad Fauzi\r\n', '', '', NULL, 14, NULL, 'Aplikasi Penanganan Keluhan Mahasiswa Menggunakan Metode Prototipe. Studi Kasus Teknik Informatika UHAMKA\r\n', '46', NULL, NULL),
(246, '1103015004', 1, 'Aditya Pramana Rustandi\r\n', '', '', NULL, 6, NULL, 'Perangan Sistem Pembelajaran E-Learning Fakultas Teknik UHAMKA\r\n', '20', '47', NULL),
(247, '1203015027', 1, 'Ardiyanto\r\n', '', '', NULL, 6, NULL, 'Implementasi Manegemant Bandwith dengan Berbasis Open Source\r\n', '141', '132', NULL),
(248, '1303015065', 1, 'Miftahul Ari Kusuma\r\n', '', '', NULL, 6, NULL, 'Perancangan Full text pada Koleksi Skripsi Fakultas Teknik UHAMKA Menggunakan Metode Vector Space Model\r\n', '160', '47', NULL),
(249, '1303015084', 1, 'nenda Pricila Inartianongsih\r\n', '', '', NULL, 6, NULL, 'Sistem Pakar Untuk Mendiagnosa Penyakit Diabetes Mullitus Menggunakan Metode Dempster Shafer\r\n', '160', '47', NULL),
(250, '1403015109', 1, 'Tuti Alawiyah\r\n', '', '', NULL, 8, NULL, 'Perancangan Website Portal Sekolah pada Sekolah Menengah Pertama YPI Cempaka Putih Bintaro\r\n', '50', '64', NULL),
(251, '1503015044', 1, 'Edwin rachmantio\r\n', '', '', NULL, 14, NULL, 'Sistem Perancangan Aplikasi Absensi Mahasiswa dengan Location Based Service (SBS) (Studi Kasus : Fakultas Teknik UHAMKA)\r\n', '52', NULL, NULL),
(252, '1503015048', 1, 'Fachriyan Rizki Ibrahim\r\n', '', '', NULL, 10, NULL, 'Implrmrntasi Algoritma Elgamal untuk Proses Enkripsi dan Dekripsi untuk Pengamanan Gambar Berbasis Mobile\r\n', '54', NULL, NULL),
(253, '1503015126', 1, 'Risman\r\n', '', '', NULL, 10, NULL, 'Perancangan Sistem Informasi Ketersedian Serta Laporan Penjualan Sparepart Motor Berbasis Client-Server Pada Jaringan \r\n', '101', '55', NULL),
(254, '1603015006', 1, 'Diki Pratama Ramdan\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Pemetaan Kampus Muhammadiyah Seluruh Indonesia Berbasis Sistem Informasi Geografis\r\n', '56', NULL, NULL),
(255, '1603015017', 1, 'Hasyifa Muthi Azmi\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem GPS Tracker Pada Anak Usia Dini Menggunakan Ikat Pinggang Berbasis Mobile\r\n', '56', NULL, NULL),
(256, '1603015021', 1, 'Fahmi Krisyulianto\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Keamanan Kotak Amal Menggunakan Fingerprint dan Sensor PIR Malalui Notifikasi Telegram Berbasis Mikrokontroler\r\n', '56', NULL, NULL),
(257, '1603015037', 1, 'Usi Atmaula\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Pemesanan Jasa Derek/Towing  dengan Pemanfaatan GPS Berbasis Android Di Metro Towing\r\n', '56', NULL, NULL),
(258, '1603015062', 1, 'Tifanny Berlianti \r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Pengelolaan Beban Kinerja Dosen Fakultas Teknik UHAMKA  \r\n', '56', NULL, NULL),
(259, '1603015084', 1, 'Fahmi Alvyan\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Geografis Pos Perizinan & Pengelolaan Informasi Pengaduan Di Jalur Pendakian Wisata Gunung Sumbing Berbasis Website\r\n', '56', NULL, NULL),
(260, '1603015126', 1, 'Angga Fazar Ramadhan\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi geografis Untuk Mengetahui Sekolah Menengah Atas Negri Di DKI Jakarta Berbasis Web\r\n', '56', NULL, NULL),
(261, '1603015129', 1, 'Mohammad Reza Saputra\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi Cerdas Memantau Aktivitas Siswa (CEMAS) Berbasis Website\r\n', '56', NULL, NULL),
(262, '1603015147', 1, 'Martina Dewiningsih\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi Untuk OSIS Berbasis Mobile (Studi Kasus : SMK Budhi Warman I)\r\n', '56', NULL, NULL),
(263, '1203015045', 1, 'Fadli Kemal Pratama\r\n', '', '', NULL, 6, NULL, 'Sistem Informasi kependudukan Lingkungan RT/RW Berbasis WEB di Desa Pamulang Timur\r\n', '164', '57', NULL),
(264, '1203015093', 1, 'Muhammad Ayub Sholahuddin\r\n', '', '', NULL, 8, NULL, 'Perancangan Website E-Commerce Mazaya Dengan Konfigurasi OSPF Menggunakan CISCO Pada Aplikasi GNS3\r\n', '58', '137', NULL),
(265, '1203015101', 1, 'Naropah Chewae\r\n', '', '', NULL, 7, NULL, 'Sistem Informasi Pariwisata Daerah I-Yerweng Berbasis WEB GIS\r\n', '82', '60', NULL),
(266, '1303015001', 1, 'Achmad Widhiasto\r\n', '', '', NULL, 7, NULL, 'Perancangan Helpdesk dan Pusat Informasi di Fakultas Teknik UHAMKA\r\n\r\n', '88', '61', NULL),
(267, '1303015045', 1, 'Ilham Muhammad\r\n', '', '', NULL, 9, NULL, 'Perancangan Sistem Monitoring Perawatan dan Perbaikan Mesin ATM Berbasis Mobile pada PT. Swadarma Sarana Informatika\r\n', '144', '63', NULL),
(268, '1303015056', 1, 'Kevin Muhamad Iqbal Zarkasyi\r\n', '', '', NULL, 7, NULL, 'Optimalisasi Network Security Dengan Mengkobinasikan Intrusion Detection System dan Firewall pada Jaringan Local\r\n', '79', '60', NULL),
(269, '1303015070', 1, 'Mohammad Anjasmara Suryahadi\r\n', '', '', NULL, 9, NULL, 'Perancangan Sistem Informasi Bahan Kuliah di Fakultas Teknik UHAMKA Berbasis WEB\r\n', '96', '60', NULL),
(270, '1303015092', 1, 'Panji Wisnu Wrdhana\r\n', '', '', NULL, 7, NULL, 'Perancangan Profil Fakultas Teknik UHAMKA Berbasis Online Sebagai Sarana Promosi\r\n', '88', '61', NULL),
(271, '1303015094', 1, 'Perdana Purbaya Putra\r\n', '', '', NULL, 6, NULL, 'Rancang Bangun dan Implementasi Sistem Informasi Klinik (Studi kasus : Klinik Menteng Medika\r\n', '164', '57', NULL),
(272, '1303015114', 1, 'Tri Anjas Saputra\r\n', '', '', NULL, 8, NULL, 'Perancangan Aplikasi Publish Berita Berbasis WEB Dengan Metode Vector Space Model di \"Reaksi Nasional\"\r\n', '58', '90', NULL),
(273, '1403015073', 1, 'Alfi Ramdhani\r\n', '', '', NULL, 8, NULL, 'Deteksi Ujaran Kebencian (Hate Speech) pada Twitter Berbahasa Indonesia Menggunakan Algoritma Convolutional Neural Network (CNN) dan Support Vector Machine (SVM)\r\n', '66', '93', NULL),
(274, '1403015127', 1, 'Abdul Aziz Alfaraby\r\n', '', '', NULL, 8, NULL, 'Analisis dan Implementasi Algoritma Genetika pada Aplikasi Penjadwalan Penghafal Alquran\r\n', '93', '66', NULL),
(275, '1403015075', 1, 'Muhammad Rian Ilyasa\r\n', '', '', NULL, 10, NULL, 'Pendeteksi Kematangan Buah Alpukat Dengan Menggunakan Metode Image Processing Berdasarkan Komposisi Warna\r\n', '67', '103', NULL),
(280, '1503015065', 1, 'Ihwan Nurpaidin\r\n', '', '', NULL, 14, NULL, 'Data mining untuk Prediksi Volume sampah DKI Jakarta pada Pembuangan Akhir (TPA) dengan Algoritma Naïve bayes Classfier\r\n', '69', NULL, NULL),
(281, '1503015075', 1, 'Khoirudin\r\n', '', '', NULL, 14, NULL, 'Sistem Pakar Prediksi Kesiapan Mahasiswa untuk Skripsi dengan Metode Fordward Chaining\r\n', '69', NULL, NULL),
(282, '1603015110', 1, 'Dewi Nopianti\r\n\r\n', '', '', NULL, 14, NULL, 'Implementasi Sistem Informasi Nilai Bayangan Berbasis SMS Gateway di SMK Bina Nusa Mandiri\r\n', '69', '', NULL),
(283, '1503015138', 1, 'Syukron Fajri Afiatanto\r\n', '', '', NULL, 14, NULL, 'Klasifikasi Dokumen karya Ilmiah denganMetode Term Frequency-Inverse Document dan Naïve Bayes\r\n', '69', NULL, NULL),
(284, '1603015123', 1, 'Novia Tri Handayani Saputri\r\n', '', '', NULL, 14, NULL, 'Location Based Service Untuk Pencarian Ambulands di Kota Bekasi \r\n', '69', NULL, NULL),
(285, '1603015153', 1, 'Arbaiti Izmi Restani Es\r\n', '', '', NULL, 14, NULL, 'Analisa Indeks Penjualan dengan Menggunakan Algoritma Apriori Terhadap Pengaruh Pembelian pada PT XYCZ\r\n', '69', NULL, NULL),
(286, '1603015156', 1, 'Muhammad Audi Akbar\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Perpustakaan Berbasis Web dan SMS Gateway Studi Kasus SMK Respati\r\n', '69', NULL, NULL),
(287, '1203015037', 1, 'Dian Oktaviany\r\n', '', '', NULL, 15, NULL, NULL, '70', NULL, NULL),
(288, '1603015025', 1, 'Bilal Sofyan\r\n', '', '', NULL, 14, NULL, 'Perancangan Jaringan Menggunakan Router Switch Cisco Pada Packet Traker\r\n', '72', NULL, NULL),
(289, '1603015026', 1, 'Ade Bayu Susino\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi Ekspedisi SPD Cargo Berbasis Web Studi Kasus PT.Sentrasen Putri Deswita\r\n', '72', NULL, NULL),
(290, '1603015063', 1, 'Yoga Ade Pratama\r\n', '', '', NULL, 14, NULL, 'Analisis dan Optimalisasi Sistem Keamanan Jaringan dengan Packet Filltering Berbasis Mikrotik Routerboard (Studi : Badan Pembinaan Hukum Nasional)\r\n', '72', NULL, NULL),
(291, '1603015066', 1, 'Deni Kurnia Putra\r\n', '', '', NULL, 14, NULL, 'Implementasi Sistem Business Intelligence pada Minimarket XYZ\r\n', '72', NULL, NULL),
(292, '1603015081', 1, 'Azhari Nur Adji\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi Pemesanan Tiket Online pada Trans Agung Travel Berbasis Android\r\n', '72', NULL, NULL),
(293, '1603015093', 1, 'M Rifky Fairuzy\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Stok Persediaan Obat Berbasis Android SMS Gateway ( Studi Kasus Klinik Santika) \r\n', '72', NULL, NULL),
(294, '1603015117', 1, 'Ahmad Faqih\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi Manajemen Bisnis Waralaba Ranisa Fried Chicken\r\n', '72', NULL, NULL),
(295, '1603015144', 1, 'Muhammad Luthfianza\r\n', '', '', NULL, 14, NULL, 'Analisa Perbandingan Web Proxy Mikrotik dan Squid Proxy berdasarkan Hit Ratio Dan Byte Hit Ratio\r\n', '72', NULL, NULL),
(302, '1203015060', 1, 'Hapitaris Winarno\r\n', '', '', NULL, 6, NULL, 'Implementasi Jaringan Router dengan Menggunakan Konsep Routing Enhanced Interior Gateway Routing Protocol (EIGRP)\r\n', '75', '141', NULL),
(303, '1303015079', 1, 'Muhammad Muflih\r\n\r\n', '', '', NULL, 7, NULL, 'Pembuatan Aplikasi Virtual Reality Tour Museum Indonesia Berbasis Android\r\n', '79', '96', NULL),
(304, '1203015134', 1, 'Haris Syahyudi\r\n', '', '', NULL, 6, NULL, 'Perancangan Jaringan Virtual Private Network (VPN) Menggunakan Point_To-Point Tunneling Protocol (PPTP)\r\n', '141', '75', NULL),
(305, '1303015038', 1, 'Fajar santoso\r\n', '', '', NULL, 9, NULL, 'Perancangan Sistem Keamanan Smart Home Menngunakan Raspberry Pi dengan Sensor Pir\r\n', '76', '20', NULL),
(306, '1303015053', 1, 'Joko Dwianto\r\n', '', '', NULL, 9, NULL, 'Efektivitas Penggunaan Honeypot Untuk Keamanan Server SMK TI Garida Nusantara Cimahi\r\n', '76', '144', NULL),
(307, '1303015074', 1, 'Muhammad Arief Haryanto\r\n', '', '', NULL, 6, NULL, 'Rancang bangun Virtual Cloud Data Center Sekolah Dengan Menggunakan Mesin Virtual dari Proxmox\r\n', '143', '80', NULL),
(308, '1303015099', 1, 'Reza Listriyanto Putra\r\n', '', '', NULL, 6, NULL, 'Perancangan Sistem Keamanan Jaringan Dengan Metode IPS (Intrusion Prevention System) Menggunakan Assec HIDS)\r\n', NULL, '80', NULL),
(316, '1303015008', 1, 'Ahmad Riyadi\r\n', '', '', NULL, 6, NULL, 'Sistem pakar untuk Mendiagnosa Awal Penyakit Jantung Koroner Menggunakan Metode Fuzzy Mamdani berbasis Android\r\n', '83', '143', NULL),
(317, '1303015073', 1, 'Muhamad Mustofa Muhtar \r\n', '', '', NULL, 9, NULL, 'Klasifikasi Kategori  Berita Menggunakan Metode Algoritma Naïve Bayes Classifier (Studi Kasus : Website Kumparan.com\r\n', '87', NULL, NULL),
(318, '1303015004', 1, 'Afryadi\r\n', '', '', NULL, 14, NULL, 'Implementasi Algoritma Apriori untuk Mencari Asosiasi Produk yang Dijual Cafe Lo Aja\r\n', '87', NULL, NULL),
(319, '1403015047', 1, 'Iiem Bayyinullah \r\n', '', '', NULL, 14, NULL, 'Pengembangan Aplikasi Artisan Coffee Roaster Scoop berbasis android\r\n', '7', NULL, NULL),
(320, '1603015003', 1, 'Muhammad Novarizi\r\n', '', '', NULL, 14, NULL, 'Klasifikasi Minat Wirausaha Mahasiswa Informatika Angkatan 2016 Menggunakan Naïve Bayes Classification\r\n', '7', NULL, NULL),
(321, '1603015052', 1, 'Abdul Muthi Thamrin\r\n', '', '', NULL, 14, NULL, 'Assesment Minat Bakat Test Holland Berbasis Mobile Aplikasi pada Siswa SMP\r\n', '7', NULL, NULL),
(322, '1603015054', 1, 'Abiir Putri Pirdaus\r\n', '', '', NULL, 14, NULL, 'Aplikasi Sistem Pakar Untuk Mendiagnosa Penyakit Gigi Dan Mulut\r\n', '7', NULL, NULL),
(432, '1203015078', 1, 'Kurnia Nur Muharram\r\n', '', '', NULL, 8, NULL, NULL, NULL, '86', NULL),
(433, '1603015046', 1, 'Nanda Tri Utomo\r\n\r\n', '', '', NULL, 14, NULL, 'Perancangan Aplikasi Edukasi Penggabungan Warna untuk Pembelajaran Anak Berbasis Android\r\n', '104', NULL, NULL),
(434, '1303015067', 1, 'Moh. Jaja Stiadi\r\n', '', '', NULL, 9, NULL, 'Perancangan Web Service untuk Sinkronisasi Data Skripsi di fakultas Teknik UHAMKA\r\n', '89', '144', NULL),
(435, '1303015090', 1, 'Oky Oktaviardi\r\n', '', '', NULL, 14, NULL, 'Aplikasi Pencicilan dengan Mengunakan Bank Sampah Berbasis Mobile\r\n', '94', NULL, NULL),
(436, '1603015011', 1, 'Muhamad Iqbal Putra Aulia\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Pelayanan Publik Dilingkungan Rt Berbasis Web\r\n', '94', NULL, NULL),
(437, '1603015139', 1, 'Gustiana Nurhadi\r\n', '', '', NULL, 14, NULL, 'Perancangan dan Implementasi Sistem Monitoring untuk Pelaporan Sampah Berbasis Web\r\n', '94', NULL, NULL),
(438, '1303015077', 1, 'Muhammad Iqbal Supriadi\r\n', '', '', NULL, 6, NULL, 'Pertancangan E-commerce Business-To-Business pada Bisnis Distribusi Pakaian Jadi (Studi Kasus : Merek Five Project)\r\n', '140', '160', NULL),
(439, '1303015096', 1, 'Raka Pramudita\r\n', '', '', NULL, 6, NULL, 'Perancangan Router Redundant Sebagai Internet Gateway menggunakan Konsep Common Address Redudancy Protocol (CARP)\r\n', '141', '160', NULL),
(440, '1303015030', 1, 'Diana Afriayanisa\r\n', '', '', NULL, 10, NULL, 'Perancangan Aplikasi Helpdesk Ticketing Berbasis Mobile\r\n', '98', NULL, NULL),
(441, '1503015043', 1, 'Dwi Anugrah Putra \r\n', '', '', NULL, 14, NULL, 'Prediksi Kelulusan Mahasiswa Tepat Waktu Menggunakan Metode Naïve Bayes Di Fakultas Teknik Informatika Universitas Muhammadiyah Prof. Dr. Hamka\r\n', '102', NULL, NULL),
(487, '1103015024', 1, 'Hakki Setiawan\r\n', '', '', NULL, 6, NULL, 'Perancangan jaringan Local Area Network (LAN) Dengan menggunakan konsep Routing Open Shortest Path First (OSPF)\r\n', '141', '133', NULL),
(488, '1103015027', 1, 'Ikrah Nuhammad Ardila\r\n', '', '', NULL, 8, NULL, 'Analisa Perbandingan Kinerja Manajemen Bandwith antara Simple Queue dan Queue Tree untuk Mengoptimalkan Broadcasting\r\n', '142', '134', NULL),
(489, '1103015048', 1, 'Taufik Hidayat\r\n', '', '', NULL, 6, NULL, 'Perancangan Keamanan jaringan Metropolitan Area Network Cisco Acces List Simulasi\r\n', '1431', '135', NULL),
(490, '1103015073', 1, 'Rizky Hidayat\r\n', '', '', NULL, 8, NULL, 'Perancangan sistem Informasi Berbasis Web pada Usaha Rumahan Rasfur Jakarta\r\n', '142', '134', NULL),
(491, '1303015050', 1, 'Irzi Fadli\r\n', '', '', NULL, 8, NULL, 'Sistem Keamanan Ruangan Berbasis Arduino\r\n', '136', '145', NULL),
(492, '1303015124', 1, 'Aan Triani Maulina\r\n', '', '', NULL, 6, NULL, 'Sistem Informasi Geografis Berbasis Web Lokasi Klinik Yang Bekerjasama Dengan BPJS  Kesehatan Di Kota Depok \r\n', '', '133', NULL),
(493, '1203015069', 1, 'Hidayat Kurniawan\r\n', '', '', NULL, 8, NULL, 'Pembuatan Sistem Informasi Berbasis Aplikasi Monile pada Pelayanan Puskesmas\r\n', NULL, '134', NULL),
(494, '1203015092', 1, 'Muhammad Anwar\r\n', '', '', NULL, 8, NULL, 'Rancang Bangun Sistem Informasi Lokasi Bengkel Berbasis Aplikasi Mobile\r\n', '142', '134', NULL),
(495, '1203015135', 1, 'Rio rachman\r\n', '', '', NULL, 6, NULL, 'Perancangan Aplikasi Pemesanan Kue Berbasis Android\r\n', '133', '141', NULL),
(496, '1203015043', 1, 'Erwin Fadilah\r\n', '', '', NULL, 8, NULL, 'Perancangan Sistem Informasi Persediaan Barang Berbasis Mobile\r\n', '145', '163', NULL),
(497, '1603015024', 1, 'Fisilmi Kaffah\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem InformasiSekolah Berbasis Website SMA Chartar Buana\r\n', '933', NULL, NULL),
(498, '1603015016', 1, 'Rizky Putra Itaji\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi Manajemen Bimbingan Skripsi Berbasis Android\r\n', '165', NULL, NULL),
(499, '1603015065', 1, 'Ivan Resnaldi\r\n', '', '', NULL, 14, NULL, 'Perancangan Sistem Informasi Tamu Undangan Berbasis Android\r\n', '165', NULL, NULL),
(500, '1603015073', 1, 'Venezia\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Pengelolaan Administrasi dan Iuran Warga Berbasis Web\r\n', '165', NULL, NULL),
(501, '1603015074', 1, 'Agung Mega Nanda\r\n', '', '', NULL, 14, NULL, 'Rancang Bangun Aplikasi Inventory Barang Berbasis Web Secara Real Time\r\n', '165', NULL, NULL),
(502, '1603015098', 1, 'Angger Setiawan\r\n', '', '', NULL, 14, NULL, 'Perancangan sistem informasi pengelolaan rusunawa UHAMKA berbasis Website\r\n', '165', NULL, NULL),
(503, '1603015103', 1, 'Muhammad Alfian\r\n', '', '', NULL, 14, NULL, 'Sistem Informasi Pengelolaan Kenaikan Jabatan Fungsional Dosen Fakultas Teknik UHAMKA Berbasis Website\r\n', '165', NULL, NULL),
(504, '1603015089', 1, 'Agus Setiawan\r\n', '', '', NULL, 14, NULL, 'Perancangan sistem informasi pendataan dan pelayanan penduduk RT. 009 RW 017 Kel. Klender berbasis android\r\n', '165', NULL, NULL),
(505, '1303015049', 1, 'Irzan Afnis Syarifuddin\r\n', '', '', NULL, 9, NULL, 'Rancang Bangun E-Library di Universitas Muhammadiyah Prof. Dr. HAMKA Berbasis Mobile Android\r\n', '112', NULL, NULL),
(506, '1303015061', 1, 'M. Bayu Dwi Juliana\r\n', '', '', NULL, 9, NULL, 'Perancangan Sistem Informasi Pariwisata Berbasis Mobile pada Provinsi Banten\r\n', '20', '111', NULL),
(507, '1403015016', 1, 'Bagus Maulana\r\n', '', '', NULL, 14, NULL, 'Penerapan Sistem Informasi Akademik dengan Metode Extreme Programming pada Taman Kanak-kanak Almadani di Kabupaten Bogor\r\n', '114', NULL, NULL),
(508, '1403015057', 1, 'Khoiron\r\n', '', '', NULL, 14, NULL, 'Sistem Pakar Prediksi Kesiapan Mahasiswa untuk Skripsi dengan Metode Fordward Chaining\r\n', '114', NULL, NULL),
(509, '1403015069', 1, 'Muhammad Fathur Rachman\r\n', '', '', NULL, 14, NULL, 'Rancang Bangun Aplikasi E-commerce Paten Craf Berbasis Android dengan Login QR Code pada Paten Creative\r\n', '114', NULL, NULL),
(510, '1603015140', 1, 'Aidil Arief Aris\r\n', '', '', NULL, 14, NULL, 'Implementasi Alat Pengiriman Obat Sebagai Solusi Pengiriman Pertolongan Pertama Pada Kecelakaan (P3K) Dalam Bencana Banjir Menggunakan Mikrokontroler Sebagai Remote Control Berbasis Android\r\n', '114', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa_a`
--

CREATE TABLE `mahasiswa_a` (
  `nim` varchar(12) NOT NULL,
  `prodi` varchar(100) NOT NULL,
  `nama_mhs` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `time` enum('Full Time','Part Time') NOT NULL,
  `ta_masuk` int(11) NOT NULL,
  `ta_keluar` varchar(100) DEFAULT NULL,
  `j_skripsi` varchar(200) DEFAULT NULL,
  `asal_pt` varchar(100) DEFAULT NULL,
  `asal_negara` varchar(100) NOT NULL,
  `nama_program` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa_a`
--

INSERT INTO `mahasiswa_a` (`nim`, `prodi`, `nama_mhs`, `email`, `no_hp`, `time`, `ta_masuk`, `ta_keluar`, `j_skripsi`, `asal_pt`, `asal_negara`, `nama_program`) VALUES
('1234567890', '1', 'tuti', 'tuti78@gmail.com', '2367891234093', 'Full Time', 10, '', '', 'rtrtrtrtrt', 'arab saudi', ''),
('9128912891', '3', 'muhammad', 'muhammad9090@gmail.com', '090323232309', 'Part Time', 15, NULL, '', 'inggris univercity', 'mesir', '');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id_menu` int(11) NOT NULL,
  `beranda` enum('yes','no','','') NOT NULL DEFAULT 'no',
  `master_d` enum('yes','no') NOT NULL DEFAULT 'no',
  `kerjasama` enum('yes','no') NOT NULL DEFAULT 'no',
  `presma` enum('yes','no') NOT NULL DEFAULT 'no',
  `data_anggaran` enum('yes','no') NOT NULL DEFAULT 'no',
  `tracer_s` enum('yes','no') NOT NULL DEFAULT 'no',
  `kurikulum` enum('yes','no') NOT NULL DEFAULT 'no',
  `mahasiswa` enum('yes','no') NOT NULL DEFAULT 'no',
  `dosen` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id_menu`, `beranda`, `master_d`, `kerjasama`, `presma`, `data_anggaran`, `tracer_s`, `kurikulum`, `mahasiswa`, `dosen`) VALUES
(1, 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(4, 'no', 'no', 'yes', 'no', 'no', 'no', 'yes', 'no', 'no'),
(7, 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no'),
(8, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 'no'),
(10, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no'),
(13, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes'),
(15, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no'),
(16, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no'),
(17, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `mk_ampu`
--

CREATE TABLE `mk_ampu` (
  `id_ampu` int(11) NOT NULL,
  `id_sk` int(11) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `kompetensi` enum('Ya','Tidak') NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') NOT NULL,
  `ruang` varchar(20) DEFAULT NULL,
  `id_mulai` int(11) NOT NULL,
  `id_selesai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id_pddk` int(11) NOT NULL,
  `nid` varchar(11) NOT NULL,
  `jenjang` enum('S1','S2','S3','') DEFAULT NULL,
  `pt` varchar(200) DEFAULT NULL,
  `gelar` varchar(100) DEFAULT NULL,
  `file_ijazah` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id_pddk`, `nid`, `jenjang`, `pt`, `gelar`, `file_ijazah`) VALUES
(19, '0312028704', 'S1', 'Universitas Pancasila', 'Sarjana', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penelitiand`
--

CREATE TABLE `penelitiand` (
  `id_penelitiand` int(11) NOT NULL,
  `nid` varchar(30) NOT NULL,
  `jenis_p` varchar(100) NOT NULL,
  `judul_p` varchar(200) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `dana` varchar(100) NOT NULL,
  `s_dana` varchar(100) NOT NULL,
  `beban_sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penelitiand`
--

INSERT INTO `penelitiand` (`id_penelitiand`, `nid`, `jenis_p`, `judul_p`, `id_ta`, `dana`, `s_dana`, `beban_sks`) VALUES
(1, '0312028704', 'Penelitian', 'Penelitian Perilaku Mahasiswa Akhir', 5, '3000000', 'Fakultas', NULL),
(2, '0323056403', 'Pengmas', 'LKPS TI 2', 14, '2000000', 'Universitas', NULL),
(3, '0328056901', 'Penelitian', 'LKPS TI 3', 7, '1500000', 'Fakultas', NULL),
(4, '0330019204', 'Pengmas', 'LKPS TI 4', 6, '2500000', 'Universitas', NULL),
(5, '0312028704', 'Penelitian', 'Rekayasa Web', 3, '15000000', 'Perguruan Tinggi', NULL),
(6, '0312028704', 'Penelitian', 'pengembangan Kecerdasan Buatan', 3, '2000000', 'Fakultas', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengampu`
--

CREATE TABLE `pengampu` (
  `id_pengampu` int(11) NOT NULL,
  `no_pengampu` int(11) NOT NULL,
  `tgl_pengampu` date NOT NULL,
  `id_ta` int(11) NOT NULL,
  `nid` varchar(11) NOT NULL,
  `beban_sks` int(11) NOT NULL,
  `file_skpe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengampu`
--

INSERT INTO `pengampu` (`id_pengampu`, `no_pengampu`, `tgl_pengampu`, `id_ta`, `nid`, `beban_sks`, `file_skpe`) VALUES
(2, 2147483647, '2020-03-01', 5, '0312028704', 3, 'Artikel.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `penunjang`
--

CREATE TABLE `penunjang` (
  `id_penunjang` int(11) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `no_st` varchar(100) NOT NULL,
  `tgl_st` date NOT NULL,
  `beban_sks` int(11) NOT NULL,
  `ket` varchar(200) DEFAULT NULL,
  `file_st` varchar(255) DEFAULT NULL,
  `file_bk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penunjang`
--

INSERT INTO `penunjang` (`id_penunjang`, `nid`, `id_ta`, `no_st`, `tgl_st`, `beban_sks`, `ket`, `file_st`, `file_bk`) VALUES
(1, '0312028704', 3, '1232123dsfd', '2020-03-02', 1, 'anggota', '', ''),
(3, '0328056901', 7, '23k213k1bkb', '2020-02-13', 6, 'Ketua', '', ''),
(4, '0312028704', 14, 'st12231245', '2020-06-01', 3, 'Studi Lapangan', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `penyelenggara`
--

CREATE TABLE `penyelenggara` (
  `id_penyelenggara` int(11) NOT NULL,
  `nama_penyelenggara` varchar(100) NOT NULL,
  `jenis_ps` varchar(100) NOT NULL,
  `peringkat` varchar(100) NOT NULL,
  `no_sk` varchar(100) NOT NULL,
  `tgl_sk` date NOT NULL,
  `tgl_kadaluwarsa` date NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `fakultas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyelenggara`
--

INSERT INTO `penyelenggara` (`id_penyelenggara`, `nama_penyelenggara`, `jenis_ps`, `peringkat`, `no_sk`, `tgl_sk`, `tgl_kadaluwarsa`, `id_fakultas`, `fakultas`) VALUES
(1, 'Informatika', 'Sarjana', '', '0', '0000-00-00', '0000-00-00', 1, 'Teknik'),
(2, 'Mesin', 'Sarjana', '', '0', '0000-00-00', '0000-00-00', 1, 'Teknik'),
(3, 'Elektro', 'Sarjana', '', '0', '0000-00-00', '0000-00-00', 1, 'teknik');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_presma` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `jenis_presma` varchar(100) NOT NULL,
  `kegiatan` varchar(150) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `nama_prestasi` varchar(100) DEFAULT NULL,
  `file_presma` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produktivitas`
--

CREATE TABLE `produktivitas` (
  `id_produktivitas` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `id_penyelenggara` int(11) NOT NULL,
  `jml_masuk` int(11) NOT NULL,
  `jml_lts1` int(11) NOT NULL,
  `jml_lts2` int(11) NOT NULL,
  `jml_lts3` int(11) NOT NULL,
  `jml_lts4` int(11) NOT NULL,
  `jml_lts5` int(11) NOT NULL,
  `jml_lts6` int(11) NOT NULL,
  `rata_ipk` float NOT NULL,
  `max_ipk` float NOT NULL,
  `min_ipk` float NOT NULL,
  `jml_lulus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produktivitas`
--

INSERT INTO `produktivitas` (`id_produktivitas`, `id_ta`, `id_penyelenggara`, `jml_masuk`, `jml_lts1`, `jml_lts2`, `jml_lts3`, `jml_lts4`, `jml_lts5`, `jml_lts6`, `rata_ipk`, `max_ipk`, `min_ipk`, `jml_lulus`) VALUES
(2, 7, 1, 100, 10, 10, 10, 10, 20, 40, 3.25, 4, 2.75, 105);

-- --------------------------------------------------------

--
-- Table structure for table `publikasid`
--

CREATE TABLE `publikasid` (
  `id_pd` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `id_ta` int(11) DEFAULT NULL,
  `nama_j` varchar(100) NOT NULL,
  `judul_p` varchar(200) NOT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `volume` varchar(100) DEFAULT NULL,
  `issue` varchar(100) DEFAULT NULL,
  `pages` varchar(20) DEFAULT NULL,
  `tahun_j` year(4) DEFAULT NULL,
  `jml_sitasi` int(11) DEFAULT NULL,
  `file_publikasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publikasid`
--

INSERT INTO `publikasid` (`id_pd`, `id_jenis`, `nid`, `id_ta`, `nama_j`, `judul_p`, `penulis`, `volume`, `issue`, `pages`, `tahun_j`, `jml_sitasi`, `file_publikasi`) VALUES
(1, 3, '0312028704', 5, 'Journal Internasional', 'On the Quantum Theory', 'Mia Kamayani', '', NULL, '', 2010, 2, 'Artikel.pdf'),
(2, 3, '0330019204', NULL, 'Jurnal Nasional', 'Kemajuan Teknologi', 'Rahmi Imanda', '3', NULL, '', 2015, 4, ''),
(3, 3, '0312028704', NULL, 'Jurnal nasional', 'Perancangan Sistem Informasi Satu Pintu', 'Mia Kamayani', '2', NULL, '', 2019, 3, 'Penilaian_karyawan_pt.pdf'),
(4, 3, '0312028704', NULL, 'Jurnal Informatika', 'Pengembangan Aplikasi Smart Campus', 'Mia Kamayani', '3', NULL, '20', 2019, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `publikasim`
--

CREATE TABLE `publikasim` (
  `id_pm` int(11) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `nim` varchar(15) NOT NULL,
  `id_ta` int(11) DEFAULT NULL,
  `nama_j` varchar(100) NOT NULL,
  `judul_p` varchar(200) NOT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `volume` varchar(100) DEFAULT NULL,
  `issue` varchar(100) DEFAULT NULL,
  `pages` varchar(20) DEFAULT NULL,
  `tahun_j` year(4) DEFAULT NULL,
  `jml_sitasi` int(11) DEFAULT NULL,
  `file_publikasi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `publikasim`
--

INSERT INTO `publikasim` (`id_pm`, `id_jenis`, `nim`, `id_ta`, `nama_j`, `judul_p`, `penulis`, `volume`, `issue`, `pages`, `tahun_j`, `jml_sitasi`, `file_publikasi`) VALUES
(1, 3, '1503015041', NULL, 'Jurnal Informatika', 'Pengembangan Aplikasi Web', 'Dody Apriyanto', '3', NULL, '', 2018, 2, ''),
(2, 2, '1503015041', NULL, 'Jurnal informatika', 'Perancangan Sistem Informasi LKPS', 'Dody Apriyanto', '4', NULL, '', 2019, 3, 'LKPS.pdf'),
(5, 3, '1503015041', NULL, 'Jurnal Informatika', 'Sistem Informasi Smart Campus', 'Dody Apriyanto', '4', NULL, '10', 2019, 5, 'UI_LKPS_versi_3.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `rekap_asing`
--

CREATE TABLE `rekap_asing` (
  `id_ta` int(11) NOT NULL,
  `id_penyelenggara` int(11) NOT NULL,
  `jml_ft` varchar(11) NOT NULL,
  `jml_pt` varchar(11) NOT NULL,
  `jml_aktif` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rekognisi`
--

CREATE TABLE `rekognisi` (
  `id_rekognisi` int(11) NOT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `id_ta` int(11) NOT NULL,
  `id_tingkat` int(11) DEFAULT NULL,
  `deskripsi` varchar(255) NOT NULL,
  `file_bukti` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekognisi`
--

INSERT INTO `rekognisi` (`id_rekognisi`, `nid`, `id_ta`, `id_tingkat`, `deskripsi`, `file_bukti`) VALUES
(1, '0312028704', 3, 3, 'visiting lecturer', 'LKPS.pdf'),
(4, '0330019204', 9, 2, 'Narasumber/Staff ahli', 'UI_LKPS_versi_31.pdf'),
(5, '0312028704', 14, 3, 'Menjadi Visiting Lecturer di Program Studi', 'APLIKASI_EVALUASI_DAN_REPORT_KINERJA_HOU.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `rencana`
--

CREATE TABLE `rencana` (
  `id_rtl` int(11) NOT NULL,
  `jenis_rtl` varchar(100) NOT NULL,
  `deskripsi` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rencana`
--

INSERT INTO `rencana` (`id_rtl`, `jenis_rtl`, `deskripsi`) VALUES
(1, 'Diperbaiki', NULL),
(2, 'Dibuatkan Sistem', NULL),
(3, 'Dimusyawarahkan', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seleksi`
--

CREATE TABLE `seleksi` (
  `id_seleksi` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `id_penyelenggara` int(11) NOT NULL,
  `d_tampung` int(11) NOT NULL,
  `jml_daftar` int(11) NOT NULL,
  `jml_lseleksi` int(11) NOT NULL,
  `jml_barureg` int(11) NOT NULL,
  `jml_barutrf` int(11) NOT NULL,
  `jml_aktifreg` int(11) NOT NULL,
  `jml_aktiftrf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seleksi`
--

INSERT INTO `seleksi` (`id_seleksi`, `id_ta`, `id_penyelenggara`, `d_tampung`, `jml_daftar`, `jml_lseleksi`, `jml_barureg`, `jml_barutrf`, `jml_aktifreg`, `jml_aktiftrf`) VALUES
(1, 7, 1, 500, 200, 180, 175, 5, 200, 10),
(2, 9, 3, 350, 300, 299, 280, 5, 355, 9),
(3, 14, 2, 400, 300, 280, 250, 30, 300, 20);

-- --------------------------------------------------------

--
-- Table structure for table `sesi`
--

CREATE TABLE `sesi` (
  `id_sesi` int(11) NOT NULL,
  `jam` varchar(10) NOT NULL,
  `deskripsi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sesi`
--

INSERT INTO `sesi` (`id_sesi`, `jam`, `deskripsi`) VALUES
(1, '07:50', 'sesi 1'),
(2, '08:40', 'sesi 2'),
(3, '9:30', 'sesi 3'),
(4, '10:20', 'sesi 4'),
(5, '11:10', 'sesi 5');

-- --------------------------------------------------------

--
-- Table structure for table `skpa`
--

CREATE TABLE `skpa` (
  `id_skpa` int(11) NOT NULL,
  `no_skpa` int(11) NOT NULL,
  `tgl_skpa` date NOT NULL,
  `id_ta` int(11) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `jml_mhs` int(11) DEFAULT NULL,
  `beban_sks` int(11) DEFAULT NULL,
  `file_skpa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skpa`
--

INSERT INTO `skpa` (`id_skpa`, `no_skpa`, `tgl_skpa`, `id_ta`, `nid`, `jml_mhs`, `beban_sks`, `file_skpa`) VALUES
(8, 31231213, '2020-06-18', 9, '0328056901', NULL, NULL, 'APLIKASI_EVALUASI_DAN_REPORT_KINERJA_HOU.pdf'),
(9, 898989898, '2020-06-01', 7, '123456', NULL, NULL, 'Penilaian_karyawan_pt2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `skt`
--

CREATE TABLE `skt` (
  `id_skt` int(11) NOT NULL,
  `no_skt` varchar(15) NOT NULL,
  `tgl_skt` date NOT NULL,
  `id_ta` int(11) NOT NULL,
  `nid` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL,
  `beban_sks` int(11) NOT NULL,
  `file_skt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skt`
--

INSERT INTO `skt` (`id_skt`, `no_skt`, `tgl_skt`, `id_ta`, `nid`, `nama_jabatan`, `beban_sks`, `file_skt`) VALUES
(1, '2147483647', '2020-03-09', 9, 328056901, 'Kaprodi', 3, 'Artikel.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `survey_mhs`
--

CREATE TABLE `survey_mhs` (
  `id_surveymhs` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `id_aspek` int(11) NOT NULL,
  `id_penyelenggara` int(11) NOT NULL,
  `s_baik` varchar(11) NOT NULL,
  `baik` varchar(11) NOT NULL,
  `cukup` varchar(11) NOT NULL,
  `kurang` varchar(11) NOT NULL,
  `id_rtl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_mhs`
--

INSERT INTO `survey_mhs` (`id_surveymhs`, `id_ta`, `id_aspek`, `id_penyelenggara`, `s_baik`, `baik`, `cukup`, `kurang`, `id_rtl`) VALUES
(32, 9, 1, 0, '50', '30', '10', '10', 2),
(33, 9, 2, 0, '60', '30', '5', '5', 2),
(34, 9, 3, 0, '40', '40', '10', '10', 1),
(35, 9, 4, 0, '60', '20', '15', '5', 3),
(36, 9, 5, 0, '70', '10', '15', '5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `survey_pengguna`
--

CREATE TABLE `survey_pengguna` (
  `id_surveymhs` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `id_aspek` int(11) NOT NULL,
  `id_penyelenggara` int(11) NOT NULL,
  `s_baik` varchar(11) NOT NULL,
  `baik` varchar(11) NOT NULL,
  `cukup` varchar(11) NOT NULL,
  `kurang` varchar(11) NOT NULL,
  `id_rtl` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey_pengguna`
--

INSERT INTO `survey_pengguna` (`id_surveymhs`, `id_ta`, `id_aspek`, `id_penyelenggara`, `s_baik`, `baik`, `cukup`, `kurang`, `id_rtl`) VALUES
(1, 7, 1, 0, '50', '30', '15', '5', 1),
(2, 7, 2, 0, '60', '20', '15', '5', 2),
(3, 7, 3, 0, '40', '10', '45', '5', 3),
(4, 7, 4, 0, '40', '30', '25', '5', 3),
(5, 7, 5, 0, '60', '20', '15', '5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tambahan`
--

CREATE TABLE `tambahan` (
  `id_tam` int(11) NOT NULL,
  `nid` varchar(50) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `no_t` varchar(100) NOT NULL,
  `tgl_t` date NOT NULL,
  `n_jabatan` varchar(100) NOT NULL,
  `beban_sks` int(11) NOT NULL,
  `file_sk` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tambahan`
--

INSERT INTO `tambahan` (`id_tam`, `nid`, `id_ta`, `no_t`, `tgl_t`, `n_jabatan`, `beban_sks`, `file_sk`) VALUES
(1, '0312028704', 7, '23123213bkbkk', '2020-03-01', 'Kepala Bidang', 4, ''),
(2, '0312028704', 14, 's09323212390', '2020-06-01', 'Anggota', 3, 'Artikel1.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `thn_akad`
--

CREATE TABLE `thn_akad` (
  `id_ta` int(11) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL,
  `tahun` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `thn_akad`
--

INSERT INTO `thn_akad` (`id_ta`, `semester`, `tahun`) VALUES
(1, 'ganjil', '2014/2015'),
(2, 'genap', '2014/2015'),
(3, 'ganjil', '2015/2016'),
(4, 'genap', '2015/2016'),
(5, 'ganjil', '2016/2017'),
(6, 'genap', '2016/2017'),
(7, 'ganjil', '2017/2018'),
(8, 'genap', '2017/2018'),
(9, 'ganjil', '2018/2019'),
(10, 'genap', '2018/2019'),
(14, 'ganjil', '2019/2020'),
(15, 'genap', '2019/2020');

-- --------------------------------------------------------

--
-- Table structure for table `tingkat`
--

CREATE TABLE `tingkat` (
  `id_tingkat` int(11) NOT NULL,
  `nama_tingkat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tingkat`
--

INSERT INTO `tingkat` (`id_tingkat`, `nama_tingkat`) VALUES
(5, 'desa'),
(3, 'internasional'),
(7, 'kampung'),
(6, 'kecamatan'),
(1, 'lokal'),
(2, 'nasional');

-- --------------------------------------------------------

--
-- Table structure for table `tpengampu`
--

CREATE TABLE `tpengampu` (
  `id_tpengampu` int(11) NOT NULL,
  `kode_mk` varchar(20) NOT NULL,
  `koor_tim` varchar(15) NOT NULL,
  `anggota1` varchar(15) DEFAULT '-',
  `anggota2` varchar(15) DEFAULT '-',
  `anggota3` varchar(15) DEFAULT '-',
  `file_rps` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpengampu`
--

INSERT INTO `tpengampu` (`id_tpengampu`, `kode_mk`, `koor_tim`, `anggota1`, `anggota2`, `anggota3`, `file_rps`) VALUES
(9, 'mk001', '330019204', '0312028704', '123456', '', 'Penilaian_kinerja_pegawai.pdf'),
(11, 'mk003', '123456', '0330019204', '0312028704', '0323056403', 'Artikel.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tracer_study`
--

CREATE TABLE `tracer_study` (
  `id` int(11) NOT NULL,
  `id_ta` int(11) NOT NULL,
  `jml_lulus` int(11) NOT NULL,
  `jml_terlacak` int(11) NOT NULL,
  `b_lokal` int(11) NOT NULL,
  `b_nasional` int(11) NOT NULL,
  `b_multi` int(11) NOT NULL,
  `w_ijin` int(11) NOT NULL,
  `wt_ijin` int(11) NOT NULL,
  `ksesuaian_r` int(11) NOT NULL,
  `ksesuaian_s` int(11) NOT NULL,
  `ksesuaian_t` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracer_study`
--

INSERT INTO `tracer_study` (`id`, `id_ta`, `jml_lulus`, `jml_terlacak`, `b_lokal`, `b_nasional`, `b_multi`, `w_ijin`, `wt_ijin`, `ksesuaian_r`, `ksesuaian_s`, `ksesuaian_t`) VALUES
(1, 3, 200, 150, 60, 30, 20, 30, 40, 20, 30, 10),
(4, 9, 300, 200, 100, 50, 10, 100, 200, 100, 50, 10);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('dosen','mahasiswa','wadek3','penjamu','wadek2','admin','prodi') NOT NULL,
  `blokir` enum('Y','N') NOT NULL,
  `id_sessions` varchar(255) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `blokir`, `id_sessions`, `foto`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'N', '', 'Tulips.jpg'),
(4, 'prodi', '32b404761d910d277789cd91076d1459', 'prodi', 'N', 'd41d8cd98f00b204e9800998ecf8427e', 'logo_uhamka.jpg'),
(7, 'wadek2', '399c50b0a3f60097be0e554821be33cf', 'wadek2', 'N', 'd41d8cd98f00b204e9800998ecf8427e', 'Tulips.jpg'),
(8, 'penjamu', '8858d9ba4dd2c2c8b7bdcc6d43643580', 'penjamu', 'N', 'd41d8cd98f00b204e9800998ecf8427e', 'Penguins.jpg'),
(10, '1503015041', '5787be38ee03a9ae5360f54d9026465f', 'mahasiswa', 'N', 'd41d8cd98f00b204e9800998ecf8427e', 'logo_uhamka.jpg'),
(13, '0312028704', 'f499263a253447dd5cb68dafb9f13235', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', 'Chrysanthemum.jpg'),
(15, '1503015065', 'e011cd551a95371049331a75df422acc', 'mahasiswa', 'N', 'd41d8cd98f00b204e9800998ecf8427e', 'Koala.jpg'),
(16, 'superadmin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'N', 'd41d8cd98f00b204e9800998ecf8427e', 'CS.png'),
(17, 'wadek3', '66a2de8387e05e98a5e0e919bd023044', 'wadek3', 'N', 'd41d8cd98f00b204e9800998ecf8427e', 'user.jpg'),
(18, '0323056403', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(19, '0331017304', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(20, '0302026504', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(21, '0328056901', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(22, '0314098403', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(23, '0307128301', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(24, '0306028502', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(25, '0715068201', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(26, '0313028602', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(27, '0311128701', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(28, '0320027802', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(29, '0302069105', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(30, '0301088305', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(31, '0330019204', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(32, '0316099202', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(33, '0224028603', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(34, '0301087904', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL),
(35, '0322077101', 'e10adc3949ba59abbe56e057f20f883e', 'dosen', 'N', 'e10adc3949ba59abbe56e057f20f883e', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`),
  ADD UNIQUE KEY `nim` (`nim`);

--
-- Indexes for table `anggaran`
--
ALTER TABLE `anggaran`
  ADD PRIMARY KEY (`id_anggaran`),
  ADD KEY `id_ta` (`id_ta`),
  ADD KEY `id_penyelenggara` (`id_penyelenggara`),
  ADD KEY `id_jenis` (`id_jenis`);

--
-- Indexes for table `aspek`
--
ALTER TABLE `aspek`
  ADD PRIMARY KEY (`id_aspek`);

--
-- Indexes for table `aspek_pengguna`
--
ALTER TABLE `aspek_pengguna`
  ADD PRIMARY KEY (`id_aspek`);

--
-- Indexes for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD PRIMARY KEY (`id_skpmb`),
  ADD KEY `id_ta` (`id_ta`),
  ADD KEY `nid` (`nid`);

--
-- Indexes for table `bluaran`
--
ALTER TABLE `bluaran`
  ADD PRIMARY KEY (`id_bl`);

--
-- Indexes for table `bluaranmhs`
--
ALTER TABLE `bluaranmhs`
  ADD PRIMARY KEY (`id_bl`);

--
-- Indexes for table `bukti_kerjasama`
--
ALTER TABLE `bukti_kerjasama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kerjasama` (`id_kerjasama`);

--
-- Indexes for table `daftar_mkkurikulum`
--
ALTER TABLE `daftar_mkkurikulum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`),
  ADD UNIQUE KEY `nid` (`nid`) USING BTREE,
  ADD KEY `id_jafung` (`id_jafung`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indexes for table `induk_mk`
--
ALTER TABLE `induk_mk`
  ADD PRIMARY KEY (`id_mk`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`);

--
-- Indexes for table `integrasi`
--
ALTER TABLE `integrasi`
  ADD PRIMARY KEY (`id_integrasi`),
  ADD UNIQUE KEY `id_penelitiand` (`id_penelitiand`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indexes for table `jafung`
--
ALTER TABLE `jafung`
  ADD PRIMARY KEY (`id_jafung`);

--
-- Indexes for table `jenis_anggaran`
--
ALTER TABLE `jenis_anggaran`
  ADD PRIMARY KEY (`id_biaya`);

--
-- Indexes for table `jenis_luaran`
--
ALTER TABLE `jenis_luaran`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `jenis_publikasi`
--
ALTER TABLE `jenis_publikasi`
  ADD PRIMARY KEY (`id_jpublikasi`);

--
-- Indexes for table `jenjang_jafung`
--
ALTER TABLE `jenjang_jafung`
  ADD PRIMARY KEY (`id_jjafung`);

--
-- Indexes for table `kerjasama`
--
ALTER TABLE `kerjasama`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_ta` (`id_ta`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `id_penyelenggara` (`id_penyelenggara`);

--
-- Indexes for table `kolaborasi`
--
ALTER TABLE `kolaborasi`
  ADD PRIMARY KEY (`id_kolab`),
  ADD KEY `nid` (`nid`),
  ADD KEY `id_ta` (`id_ta`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id_krs`);

--
-- Indexes for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id_kurikulum`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indexes for table `luaran`
--
ALTER TABLE `luaran`
  ADD PRIMARY KEY (`id_luaran`);

--
-- Indexes for table `luaranmhs`
--
ALTER TABLE `luaranmhs`
  ADD PRIMARY KEY (`id_luaranmhs`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mhs`),
  ADD UNIQUE KEY `nim` (`nim`),
  ADD KEY `ta_masuk` (`ta_masuk`),
  ADD KEY `ta_lulus` (`ta_lulus`),
  ADD KEY `id_skpa` (`id_skpa`),
  ADD KEY `id_penyelenggara` (`id_penyelenggara`);

--
-- Indexes for table `mahasiswa_a`
--
ALTER TABLE `mahasiswa_a`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `mk_ampu`
--
ALTER TABLE `mk_ampu`
  ADD PRIMARY KEY (`id_ampu`),
  ADD KEY `id_prodi` (`id_prodi`),
  ADD KEY `id_sk` (`id_sk`),
  ADD KEY `kode_mk` (`kode_mk`),
  ADD KEY `id_mulai` (`id_mulai`),
  ADD KEY `id_selesai` (`id_selesai`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id_pddk`),
  ADD KEY `nid` (`nid`);

--
-- Indexes for table `penelitiand`
--
ALTER TABLE `penelitiand`
  ADD PRIMARY KEY (`id_penelitiand`),
  ADD KEY `nid` (`nid`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indexes for table `pengampu`
--
ALTER TABLE `pengampu`
  ADD PRIMARY KEY (`id_pengampu`);

--
-- Indexes for table `penunjang`
--
ALTER TABLE `penunjang`
  ADD PRIMARY KEY (`id_penunjang`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indexes for table `penyelenggara`
--
ALTER TABLE `penyelenggara`
  ADD PRIMARY KEY (`id_penyelenggara`),
  ADD KEY `id_fakultas` (`id_fakultas`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_presma`),
  ADD KEY `id_ta` (`id_ta`),
  ADD KEY `id_tingkat` (`id_tingkat`),
  ADD KEY `nim` (`nim`);

--
-- Indexes for table `produktivitas`
--
ALTER TABLE `produktivitas`
  ADD PRIMARY KEY (`id_produktivitas`),
  ADD UNIQUE KEY `id_ta` (`id_ta`);

--
-- Indexes for table `publikasid`
--
ALTER TABLE `publikasid`
  ADD PRIMARY KEY (`id_pd`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `nid` (`nid`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indexes for table `publikasim`
--
ALTER TABLE `publikasim`
  ADD PRIMARY KEY (`id_pm`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `nid` (`nim`);

--
-- Indexes for table `rekap_asing`
--
ALTER TABLE `rekap_asing`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indexes for table `rekognisi`
--
ALTER TABLE `rekognisi`
  ADD PRIMARY KEY (`id_rekognisi`);

--
-- Indexes for table `rencana`
--
ALTER TABLE `rencana`
  ADD PRIMARY KEY (`id_rtl`);

--
-- Indexes for table `seleksi`
--
ALTER TABLE `seleksi`
  ADD PRIMARY KEY (`id_seleksi`),
  ADD UNIQUE KEY `id_ta` (`id_ta`);

--
-- Indexes for table `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`id_sesi`);

--
-- Indexes for table `skpa`
--
ALTER TABLE `skpa`
  ADD PRIMARY KEY (`id_skpa`),
  ADD KEY `nid` (`nid`);

--
-- Indexes for table `skt`
--
ALTER TABLE `skt`
  ADD PRIMARY KEY (`id_skt`);

--
-- Indexes for table `survey_mhs`
--
ALTER TABLE `survey_mhs`
  ADD PRIMARY KEY (`id_surveymhs`),
  ADD KEY `id_ta` (`id_ta`),
  ADD KEY `id_aspek` (`id_aspek`),
  ADD KEY `id_rtl` (`id_rtl`);

--
-- Indexes for table `survey_pengguna`
--
ALTER TABLE `survey_pengguna`
  ADD PRIMARY KEY (`id_surveymhs`),
  ADD KEY `id_ta` (`id_ta`),
  ADD KEY `id_aspek` (`id_aspek`),
  ADD KEY `id_rtl` (`id_rtl`);

--
-- Indexes for table `tambahan`
--
ALTER TABLE `tambahan`
  ADD PRIMARY KEY (`id_tam`),
  ADD KEY `nid` (`nid`),
  ADD KEY `id_ta` (`id_ta`);

--
-- Indexes for table `thn_akad`
--
ALTER TABLE `thn_akad`
  ADD PRIMARY KEY (`id_ta`);

--
-- Indexes for table `tingkat`
--
ALTER TABLE `tingkat`
  ADD PRIMARY KEY (`id_tingkat`),
  ADD UNIQUE KEY `nama_tingkat` (`nama_tingkat`);

--
-- Indexes for table `tpengampu`
--
ALTER TABLE `tpengampu`
  ADD PRIMARY KEY (`id_tpengampu`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`),
  ADD KEY `koor_tim` (`koor_tim`),
  ADD KEY `anggota1` (`anggota1`),
  ADD KEY `anggota2` (`anggota2`),
  ADD KEY `anggota3` (`anggota3`);

--
-- Indexes for table `tracer_study`
--
ALTER TABLE `tracer_study`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_ta` (`id_ta`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `anggaran`
--
ALTER TABLE `anggaran`
  MODIFY `id_anggaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `aspek`
--
ALTER TABLE `aspek`
  MODIFY `id_aspek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `aspek_pengguna`
--
ALTER TABLE `aspek_pengguna`
  MODIFY `id_aspek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bimbingan`
--
ALTER TABLE `bimbingan`
  MODIFY `id_skpmb` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `bluaran`
--
ALTER TABLE `bluaran`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bluaranmhs`
--
ALTER TABLE `bluaranmhs`
  MODIFY `id_bl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bukti_kerjasama`
--
ALTER TABLE `bukti_kerjasama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daftar_mkkurikulum`
--
ALTER TABLE `daftar_mkkurikulum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `induk_mk`
--
ALTER TABLE `induk_mk`
  MODIFY `id_mk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `integrasi`
--
ALTER TABLE `integrasi`
  MODIFY `id_integrasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jafung`
--
ALTER TABLE `jafung`
  MODIFY `id_jafung` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_anggaran`
--
ALTER TABLE `jenis_anggaran`
  MODIFY `id_biaya` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jenis_luaran`
--
ALTER TABLE `jenis_luaran`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jenis_publikasi`
--
ALTER TABLE `jenis_publikasi`
  MODIFY `id_jpublikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jenjang_jafung`
--
ALTER TABLE `jenjang_jafung`
  MODIFY `id_jjafung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kerjasama`
--
ALTER TABLE `kerjasama`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kolaborasi`
--
ALTER TABLE `kolaborasi`
  MODIFY `id_kolab` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `luaran`
--
ALTER TABLE `luaran`
  MODIFY `id_luaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `luaranmhs`
--
ALTER TABLE `luaranmhs`
  MODIFY `id_luaranmhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=511;

--
-- AUTO_INCREMENT for table `mk_ampu`
--
ALTER TABLE `mk_ampu`
  MODIFY `id_ampu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id_pddk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `penelitiand`
--
ALTER TABLE `penelitiand`
  MODIFY `id_penelitiand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengampu`
--
ALTER TABLE `pengampu`
  MODIFY `id_pengampu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penunjang`
--
ALTER TABLE `penunjang`
  MODIFY `id_penunjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penyelenggara`
--
ALTER TABLE `penyelenggara`
  MODIFY `id_penyelenggara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_presma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produktivitas`
--
ALTER TABLE `produktivitas`
  MODIFY `id_produktivitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `publikasid`
--
ALTER TABLE `publikasid`
  MODIFY `id_pd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `publikasim`
--
ALTER TABLE `publikasim`
  MODIFY `id_pm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rekognisi`
--
ALTER TABLE `rekognisi`
  MODIFY `id_rekognisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rencana`
--
ALTER TABLE `rencana`
  MODIFY `id_rtl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seleksi`
--
ALTER TABLE `seleksi`
  MODIFY `id_seleksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sesi`
--
ALTER TABLE `sesi`
  MODIFY `id_sesi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `skpa`
--
ALTER TABLE `skpa`
  MODIFY `id_skpa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `skt`
--
ALTER TABLE `skt`
  MODIFY `id_skt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `survey_mhs`
--
ALTER TABLE `survey_mhs`
  MODIFY `id_surveymhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `survey_pengguna`
--
ALTER TABLE `survey_pengguna`
  MODIFY `id_surveymhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tambahan`
--
ALTER TABLE `tambahan`
  MODIFY `id_tam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `thn_akad`
--
ALTER TABLE `thn_akad`
  MODIFY `id_ta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tingkat`
--
ALTER TABLE `tingkat`
  MODIFY `id_tingkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tpengampu`
--
ALTER TABLE `tpengampu`
  MODIFY `id_tpengampu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tracer_study`
--
ALTER TABLE `tracer_study`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggaran`
--
ALTER TABLE `anggaran`
  ADD CONSTRAINT `anggaran_ibfk_1` FOREIGN KEY (`id_ta`) REFERENCES `thn_akad` (`id_ta`),
  ADD CONSTRAINT `anggaran_ibfk_2` FOREIGN KEY (`id_penyelenggara`) REFERENCES `penyelenggara` (`id_penyelenggara`),
  ADD CONSTRAINT `anggaran_ibfk_3` FOREIGN KEY (`id_jenis`) REFERENCES `jenis_anggaran` (`id_biaya`);

--
-- Constraints for table `bimbingan`
--
ALTER TABLE `bimbingan`
  ADD CONSTRAINT `bimbingan_ibfk_1` FOREIGN KEY (`id_ta`) REFERENCES `thn_akad` (`id_ta`),
  ADD CONSTRAINT `bimbingan_ibfk_2` FOREIGN KEY (`nid`) REFERENCES `dosen` (`nid`);

--
-- Constraints for table `integrasi`
--
ALTER TABLE `integrasi`
  ADD CONSTRAINT `integrasi_ibfk_1` FOREIGN KEY (`kode_mk`) REFERENCES `induk_mk` (`kode_mk`),
  ADD CONSTRAINT `integrasi_ibfk_2` FOREIGN KEY (`id_ta`) REFERENCES `thn_akad` (`id_ta`);

--
-- Constraints for table `jafung`
--
ALTER TABLE `jafung`
  ADD CONSTRAINT `jafung_ibfk_1` FOREIGN KEY (`id_jafung`) REFERENCES `dosen` (`id_jafung`);

--
-- Constraints for table `kerjasama`
--
ALTER TABLE `kerjasama`
  ADD CONSTRAINT `kerjasama_ibfk_2` FOREIGN KEY (`id_ta`) REFERENCES `thn_akad` (`id_ta`),
  ADD CONSTRAINT `kerjasama_ibfk_3` FOREIGN KEY (`id_tingkat`) REFERENCES `tingkat` (`id_tingkat`),
  ADD CONSTRAINT `kerjasama_ibfk_4` FOREIGN KEY (`id_penyelenggara`) REFERENCES `penyelenggara` (`id_penyelenggara`);

--
-- Constraints for table `kolaborasi`
--
ALTER TABLE `kolaborasi`
  ADD CONSTRAINT `kolaborasi_ibfk_1` FOREIGN KEY (`id_ta`) REFERENCES `thn_akad` (`id_ta`),
  ADD CONSTRAINT `kolaborasi_ibfk_2` FOREIGN KEY (`nid`) REFERENCES `dosen` (`nid`),
  ADD CONSTRAINT `kolaborasi_ibfk_3` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD CONSTRAINT `kurikulum_ibfk_1` FOREIGN KEY (`id_ta`) REFERENCES `thn_akad` (`id_ta`);

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_penyelenggara`) REFERENCES `penyelenggara` (`id_penyelenggara`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`ta_masuk`) REFERENCES `thn_akad` (`id_ta`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `user` (`id`);

--
-- Constraints for table `mk_ampu`
--
ALTER TABLE `mk_ampu`
  ADD CONSTRAINT `mk_ampu_ibfk_1` FOREIGN KEY (`id_prodi`) REFERENCES `penyelenggara` (`id_penyelenggara`),
  ADD CONSTRAINT `mk_ampu_ibfk_2` FOREIGN KEY (`id_sk`) REFERENCES `pengampu` (`id_pengampu`),
  ADD CONSTRAINT `mk_ampu_ibfk_3` FOREIGN KEY (`kode_mk`) REFERENCES `induk_mk` (`kode_mk`),
  ADD CONSTRAINT `mk_ampu_ibfk_4` FOREIGN KEY (`id_mulai`) REFERENCES `sesi` (`id_sesi`),
  ADD CONSTRAINT `mk_ampu_ibfk_5` FOREIGN KEY (`id_selesai`) REFERENCES `sesi` (`id_sesi`);

--
-- Constraints for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD CONSTRAINT `pendidikan_ibfk_1` FOREIGN KEY (`nid`) REFERENCES `dosen` (`nid`);

--
-- Constraints for table `penelitiand`
--
ALTER TABLE `penelitiand`
  ADD CONSTRAINT `penelitiand_ibfk_2` FOREIGN KEY (`id_ta`) REFERENCES `thn_akad` (`id_ta`),
  ADD CONSTRAINT `penelitiand_ibfk_3` FOREIGN KEY (`nid`) REFERENCES `dosen` (`nid`);

--
-- Constraints for table `penyelenggara`
--
ALTER TABLE `penyelenggara`
  ADD CONSTRAINT `penyelenggara_ibfk_1` FOREIGN KEY (`id_fakultas`) REFERENCES `fakultas` (`id_fakultas`);

--
-- Constraints for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD CONSTRAINT `prestasi_ibfk_1` FOREIGN KEY (`id_ta`) REFERENCES `thn_akad` (`id_ta`),
  ADD CONSTRAINT `prestasi_ibfk_2` FOREIGN KEY (`id_tingkat`) REFERENCES `tingkat` (`id_tingkat`),
  ADD CONSTRAINT `prestasi_ibfk_3` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
