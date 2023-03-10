-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 03:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rutilahu`
--

-- --------------------------------------------------------

--
-- Table structure for table `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `id_dusun` int(11) DEFAULT NULL,
  `nik` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `id_dusun`, `nik`, `nama`, `jenis_kelamin`, `alamat`, `no_telp`) VALUES
(1, 5, '320552109990001', 'Ujang', 'Laki-laki', 'Kp. Narongtong rt 02 rw 04 ', '083836452943'),
(2, 6, '320552109990002', 'Hamid', 'Laki-laki', 'Kp. barujaya mekar rt 02 rw 02', '083836452900'),
(3, 7, '320552109990003', 'Jajang', 'Laki-laki', 'Kp. Negrasari rt 04 rw 02', '0863245766'),
(4, 5, '320552109990004', 'Manap', 'Perempuan', 'Kp. selong rt 01 rw 02', '097654445667'),
(13, 8, '320552109990005', 'Ajis', 'Laki-laki', 'Kp. Halimpu rt 03 rw 02\r\n', '081383772377'),
(25, 8, '3205521099900028', 'fatimah', 'Perempuan', 'Kp. Halimpu rt 02 rw 02', '081383772277'),
(26, 8, '320552109990019', 'Idah ', 'Perempuan', 'Kp. Halimpu rt 02 rw 02', '081383077217'),
(27, 6, '000', 'test', 'Laki-laki', 'TEST', '00');

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `nilai`) VALUES
(1, 1, 0.444397),
(2, 2, 0.847286),
(3, 3, 0.236089),
(4, 4, 0.9999),
(5, 13, 0.527747),
(6, 25, 0.319389),
(7, 26, 0.360939),
(8, 27, 0.9166);

-- --------------------------------------------------------

--
-- Table structure for table `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `kode_kriteria` varchar(5) NOT NULL,
  `bobot` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `keterangan`, `kode_kriteria`, `bobot`) VALUES
(9, 'Pekerjaan', 'K1', '2'),
(11, 'Penghasilan', 'K2', '2'),
(12, 'Material Atap', 'K3', '3'),
(13, 'Material Dinding', 'K4', '3'),
(14, 'Material Lantai', 'K5', '3'),
(15, 'MCK', 'K6', '4'),
(16, 'Status Rumah', 'K7', '5'),
(17, 'Jumlah Anggota Keluarga', 'K8', '2');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(1, 1, 9, 5),
(2, 1, 11, 10),
(3, 1, 12, 36),
(4, 1, 13, 39),
(5, 1, 14, 43),
(6, 1, 15, 25),
(7, 1, 16, 27),
(8, 1, 17, 31),
(9, 2, 9, 4),
(10, 2, 11, 10),
(11, 2, 12, 37),
(12, 2, 13, 41),
(13, 2, 14, 45),
(14, 2, 15, 24),
(15, 2, 16, 27),
(16, 2, 17, 29),
(17, 3, 9, 6),
(18, 3, 11, 12),
(19, 3, 12, 37),
(20, 3, 13, 40),
(21, 3, 14, 43),
(22, 3, 15, 25),
(23, 3, 16, 28),
(24, 3, 17, 31),
(25, 4, 9, 4),
(26, 4, 11, 9),
(27, 4, 12, 38),
(28, 4, 13, 42),
(29, 4, 14, 46),
(30, 4, 15, 24),
(31, 4, 16, 27),
(32, 4, 17, 29),
(33, 13, 9, 5),
(34, 13, 11, 10),
(35, 13, 12, 36),
(36, 13, 13, 39),
(37, 13, 14, 43),
(38, 13, 15, 24),
(39, 13, 16, 27),
(40, 13, 17, 31),
(41, 18, 9, 4),
(42, 18, 11, 12),
(43, 18, 12, 36),
(44, 18, 13, 40),
(45, 18, 14, 45),
(46, 18, 15, 26),
(47, 18, 16, 27),
(48, 18, 17, 29),
(49, 19, 9, 7),
(50, 19, 11, 11),
(51, 19, 12, 37),
(52, 19, 13, 42),
(53, 19, 14, 46),
(54, 19, 15, 24),
(55, 19, 16, 27),
(56, 19, 17, 31),
(57, 20, 9, 4),
(58, 20, 11, 11),
(59, 20, 12, 38),
(60, 20, 13, 40),
(61, 20, 14, 45),
(62, 20, 15, 25),
(63, 20, 16, 27),
(64, 20, 17, 31),
(65, 22, 9, 5),
(66, 22, 11, 11),
(67, 22, 12, 37),
(68, 22, 13, 42),
(69, 22, 14, 45),
(70, 22, 15, 24),
(71, 22, 16, 28),
(72, 22, 17, 29),
(73, 25, 9, 6),
(74, 25, 11, 12),
(75, 25, 12, 35),
(76, 25, 13, 39),
(77, 25, 14, 43),
(78, 25, 15, 25),
(79, 25, 16, 27),
(80, 25, 17, 31),
(81, 26, 9, 6),
(82, 26, 11, 12),
(83, 26, 12, 36),
(84, 26, 13, 40),
(85, 26, 14, 43),
(86, 26, 15, 26),
(87, 26, 16, 27),
(88, 26, 17, 30),
(89, 27, 9, 4),
(90, 27, 11, 9),
(91, 27, 12, 38),
(92, 27, 13, 42),
(93, 27, 14, 46),
(94, 27, 15, 24),
(95, 27, 16, 27),
(96, 27, 17, 31);

-- --------------------------------------------------------

--
-- Table structure for table `publish`
--

CREATE TABLE `publish` (
  `id` int(11) NOT NULL,
  `nilai` int(11) NOT NULL DEFAULT 0 COMMENT '0 = tidak tampil , 1 tampil'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publish`
--

INSERT INTO `publish` (`id`, `nilai`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_kriteria`
--

CREATE TABLE `sub_kriteria` (
  `id_sub_kriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `nilai` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_kriteria`
--

INSERT INTO `sub_kriteria` (`id_sub_kriteria`, `id_kriteria`, `deskripsi`, `nilai`) VALUES
(4, 9, 'Serabutan', '5'),
(5, 9, 'Buruh Tani', '4'),
(6, 9, 'Petani ', '3'),
(7, 9, 'Karyawan Swasta', '2'),
(8, 9, 'Wiraswasta', '1'),
(9, 11, '<= 500.000', '5'),
(10, 11, '500.000', '4'),
(11, 11, '< = 1.000.000', '3'),
(12, 11, '1.000.000 - 1.500.000', '2'),
(13, 11, '1.500.000 - 2.000.000', '1'),
(24, 15, 'Tidak Ada', '3'),
(25, 15, 'Sebagian', '2'),
(26, 15, 'Lengkap', '1'),
(27, 16, 'Milik Pribadi', '2'),
(28, 16, 'Milik Keluarga', '1'),
(29, 17, '>=5', '5'),
(30, 17, '4', '4'),
(31, 17, '1-3', '3'),
(35, 12, 'Genteng (Rusak Sedang)', '1'),
(36, 12, 'Genteng (Rusak Parah)', '2'),
(37, 12, 'Asbes (Rusak Sedang)', '3'),
(38, 12, 'Asbes (Rusak Parah)', '4'),
(39, 13, 'GRC (Rusak Sedang)', '1'),
(40, 13, 'GRC (Rusak Parah)', '2'),
(41, 13, 'Anyaman Bambu (Rusak Sedang)', '3'),
(42, 13, 'Anyaman Bambu (Rusak Parah)', '4'),
(43, 14, 'Plester (Rusak Sedang)', '1'),
(44, 14, 'Plester (Rusak Parah)', '2'),
(45, 14, 'Kayu (Rusak Sedang)', '3'),
(46, 14, 'Kayu (Rusak Parah)', '4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `id_user_level` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `id_user_level`, `nama`, `username`, `email`, `password`, `image`) VALUES
(1, 1, 'Abdulloh', 'admin', 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'default.jpg'),
(2, 2, 'Kepala Desa', 'kepaladesa', 'kepaladesa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'default.jpg\r\n\r\n'),
(5, 3, 'Dusun 1', 'kepaladusun1', 'kepaladusun1@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(6, 3, 'Dusun 3', 'kepaladusun3', 'kepaladusun3@wpu.ac.id', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(7, 3, 'Dusun 2', 'kepaladusun2', 'kep2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(8, 3, 'dusun 4', 'kepaladusun4', 'kepaladusun4@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id_user_level` int(11) NOT NULL,
  `user_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id_user_level`, `user_level`) VALUES
(1, 'TPK DES'),
(2, 'Kepala Desa'),
(3, 'Kepala Dusun'),
(4, 'Warga');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`);

--
-- Indexes for table `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`);

--
-- Indexes for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  ADD PRIMARY KEY (`id_sub_kriteria`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id_user_level`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `sub_kriteria`
--
ALTER TABLE `sub_kriteria`
  MODIFY `id_sub_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id_user_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
