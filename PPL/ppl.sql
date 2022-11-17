-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2022 at 11:58 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nip_dosen` varchar(20) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `kode_wali` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nip_dosen`, `nama_dosen`, `kode_wali`) VALUES
('23112312', 'Rachmad Akbar Ramadan', '23');

-- --------------------------------------------------------

--
-- Table structure for table `irs`
--

CREATE TABLE `irs` (
  `nim_mhs` bigint(120) NOT NULL,
  `semester_mhs` int(2) NOT NULL,
  `sks` int(2) NOT NULL,
  `status_irs` int(20) NOT NULL,
  `berkas_irs` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `irs`
--

INSERT INTO `irs` (`nim_mhs`, `semester_mhs`, `sks`, `status_irs`, `berkas_irs`) VALUES
(24060120120018, 2, 23, 0, 'irs_fadhil.pdf'),
(24060120120025, 3, 62, 0, ''),
(24060120120017, 5, 72, 0, ''),
(24060120120019, 7, 140, 0, ''),
(24060120120020, 2, 44, 0, ''),
(24060120120021, 3, 61, 1, ''),
(24060120120022, 8, 132, 0, ''),
(24060120120023, 5, 92, 0, ''),
(24060120120024, 4, 88, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `kabkota`
--

CREATE TABLE `kabkota` (
  `kode_kabkota` varchar(5) NOT NULL,
  `nama_kabkota` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `nim_mhs` bigint(20) NOT NULL,
  `semester_mhs` int(11) NOT NULL,
  `sks_semester` int(11) NOT NULL,
  `ip_semester` float NOT NULL,
  `ip_kumulatif` float NOT NULL,
  `berkas_khs` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`nim_mhs`, `semester_mhs`, `sks_semester`, `ip_semester`, `ip_kumulatif`, `berkas_khs`) VALUES
(24060120120017, 2, 32, 3, 4, ''),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120019, 5, 99, 3.5, 3.7, ''),
(24060120120020, 5, 98, 3.7, 3.8, ''),
(24060120120021, 7, 138, 3.6, 3.5, ''),
(24060120120022, 8, 130, 3.1, 3.3, ''),
(24060120120023, 8, 135, 3.4, 3.5, ''),
(24060120120024, 4, 88, 3.4, 3.6, ''),
(24060120120025, 2, 40, 3.5, 3.55, ''),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf'),
(24060120120018, 5, 40, 3.8, 3.1, 'khs_fadhil.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` bigint(200) NOT NULL,
  `nama_mhs` varchar(50) NOT NULL,
  `no_hp_mhs` varchar(15) NOT NULL,
  `angkatan` varchar(4) NOT NULL,
  `jalur_masuk` varchar(10) NOT NULL,
  `email_mhs` varchar(50) NOT NULL,
  `password_mhs` varchar(20) NOT NULL,
  `alamat_mhs` varchar(100) NOT NULL,
  `status_mhs` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `nama_mhs`, `no_hp_mhs`, `angkatan`, `jalur_masuk`, `email_mhs`, `password_mhs`, `alamat_mhs`, `status_mhs`) VALUES
(24060120120017, 'Fedro Bossini', '08282719219', '2022', 'UM', 'fedro@mahasiswa.com', '12345', 'Medan', 'aktif'),
(24060120120018, 'Fadhil Irsyad', '', '2020', '', 'fadhil@mahasiswa.com', 'fadhildong', '', 'cuti'),
(24060120120019, 'Isa', '', '2017', '', 'isa@mahasiswa.com', '12345', '', 'aktif'),
(24060120120020, 'Faris', '', '2022', '', 'faris@mahasiswa.com', '12345', '', 'aktif'),
(24060120120021, 'Zeri', '', '2021', '', 'zeri@mahasiswa.com', 'zeriasoy', '', 'cuti'),
(24060120120022, 'Adril', '', '2016', '', 'adril@mahasiswa.com', '12345', '', 'aktif'),
(24060120120023, 'Ega', '', '2019', '', 'ega@mahasiswa.com', '12345', '', 'cuti'),
(24060120120024, 'Rafly', '', '2018', '', 'rafly@mahasiswa.com', '12345', '', 'aktif'),
(24060120120025, 'Adan', '08123849102912', '2020', 'SNMPTN', 'adan@mahasiswa.com', 'adanyoi', 'Pati', 'cuti');

-- --------------------------------------------------------

--
-- Table structure for table `pkl`
--

CREATE TABLE `pkl` (
  `nim_mhs` varchar(20) NOT NULL,
  `status_pkl` varchar(20) NOT NULL,
  `nilai_pkl` varchar(1) NOT NULL,
  `ba_pkl` varchar(102) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pkl`
--

INSERT INTO `pkl` (`nim_mhs`, `status_pkl`, `nilai_pkl`, `ba_pkl`) VALUES
('24060120120017', 'Belum Lulus', '-', ''),
('24060120120018', 'Belum Lulus', 'B', 'pkl_fadhil.pdf'),
('24060120120019', 'Belum PKL', '-', ''),
('24060120120020', 'Lulus', 'B', ''),
('24060120120021', 'Belum PKL', '-', ''),
('24060120120022', 'Belum Lulus', '-', ''),
('24060120120023', 'Belum Lulus', '-', ''),
('24060120120024', 'Lulus', 'B', ''),
('24060120120025', 'Lulus', 'A', '');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `kode_prov` varchar(5) NOT NULL,
  `nama_prov` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `nim_mhs` bigint(200) NOT NULL,
  `status_skripsi` varchar(20) NOT NULL,
  `nilai_skripsi` char(1) DEFAULT NULL,
  `lama_belajar` int(11) DEFAULT NULL,
  `tanggal_sidang` date DEFAULT NULL,
  `ba_skripsi` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`nim_mhs`, `status_skripsi`, `nilai_skripsi`, `lama_belajar`, `tanggal_sidang`, `ba_skripsi`) VALUES
(24060120120017, 'Lulus', 'B', 2, '2022-10-11', ''),
(24060120120018, 'Belum Lulus', '', 0, NULL, 'skripsi_fadhil.pdf'),
(24060120120019, 'Belum Skripsi', NULL, NULL, NULL, NULL),
(24060120120020, 'Lulus', 'B', 2, '2022-10-06', NULL),
(24060120120021, 'Belum Skripsi', NULL, NULL, NULL, NULL),
(24060120120022, 'Lulus', 'B', 1, '2022-10-17', NULL),
(24060120120023, 'Lulus', 'B', 2, '2022-10-24', NULL),
(24060120120024, 'Lulus', 'A', 1, '2022-10-05', NULL),
(24060120120025, 'Lulus', 'B', 2, '2022-10-19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `role`, `nama_user`) VALUES
(1, 'idham@operator.com', 'operator1', 'operator', 'Idham Multazam'),
(2, 'adan@dosen.com', 'dosen1', 'dosen', 'Adan Ramadhan'),
(4, 'rafly@departemen.com', 'departemen1', 'departemen', 'Rafly Yanuar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip_dosen`);

--
-- Indexes for table `irs`
--
ALTER TABLE `irs`
  ADD KEY `nim` (`nim_mhs`);

--
-- Indexes for table `kabkota`
--
ALTER TABLE `kabkota`
  ADD PRIMARY KEY (`kode_kabkota`);

--
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD KEY `nim_mhs` (`nim_mhs`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD UNIQUE KEY `NIM` (`NIM`);

--
-- Indexes for table `pkl`
--
ALTER TABLE `pkl`
  ADD PRIMARY KEY (`nim_mhs`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD UNIQUE KEY `nim_mhs` (`nim_mhs`),
  ADD KEY `nim_mhs_2` (`nim_mhs`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `irs`
--
ALTER TABLE `irs`
  ADD CONSTRAINT `nim_fk` FOREIGN KEY (`nim_mhs`) REFERENCES `mahasiswa` (`NIM`);

--
-- Constraints for table `khs`
--
ALTER TABLE `khs`
  ADD CONSTRAINT `fk_nim` FOREIGN KEY (`nim_mhs`) REFERENCES `mahasiswa` (`NIM`);

--
-- Constraints for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD CONSTRAINT `nim_fkfk` FOREIGN KEY (`nim_mhs`) REFERENCES `mahasiswa` (`NIM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
