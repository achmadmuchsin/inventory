-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2024 at 09:47 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `catatan`
--

CREATE TABLE `catatan` (
  `id_catatan` int(11) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catatan`
--

INSERT INTO `catatan` (`id_catatan`, `catatan`) VALUES
(1, 'Besok, Hari minggu akan ada kunjungan dari pihak dinas untuk mengecek kinerja karyawan.'),
(2, 'Hari Kamis jam 8 akan ada rapat, diharapkan kepada semua karyawan agar dapat berhadir.'),
(3, 'Tingkatkan lagi pendapatan, dan minimalkan pengeluaran'),
(4, 'tgl 6 domain dan hosting banyak yang akan expired, dan harus diperpanjang lagi');

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE `hutang` (
  `id_hutang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tgl_hutang` date NOT NULL,
  `alasan` text NOT NULL,
  `penghutang` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hutang`
--

INSERT INTO `hutang` (`id_hutang`, `jumlah`, `tgl_hutang`, `alasan`, `penghutang`) VALUES
(2, 1000000, '2019-10-17', 'Pinjam', 'riza'),
(4, 100000, '2019-10-18', 'tunggu gajian', 'lufias'),
(5, 0, '2019-10-19', '', ''),
(6, 0, '2019-10-20', '', ''),
(7, 200000, '2019-10-21', 'sakit', 'saiful'),
(8, 30000, '2019-10-22', 'berobat', 'saiful riza'),
(9, 0, '2019-10-23', '', ''),
(10, 20000, '2019-10-24', 'beli domain', 'yusril'),
(11, 120000, '2019-10-25', 'arifinal', 'untuk beli hosting'),
(12, 2500000, '2019-10-26', 'azir', 'untuk beli hosting'),
(13, 70000, '2019-10-25', 'Riza', 'Mau jalan jalan'),
(15, 40000, '2019-10-27', 'Riza', 'Uang Bensi'),
(16, 80000, '2019-10-28', 'Riza', 'Mau Nikahan'),
(17, 1000000, '2019-10-29', 'Riza', 'Biaya lahiran anak');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `posisi` varchar(40) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `umur` int(11) NOT NULL,
  `kontak` varchar(40) NOT NULL,
  `cabang` varchar(40) NOT NULL,
  `id_cabang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `posisi`, `alamat`, `umur`, `kontak`, `cabang`, `id_cabang`) VALUES
(7, 'ahmad', 'HRD', 'jl. in aja dulu', 25, '3', 'Duri', 0),
(10, 'Fitri', 'HRD', 'Jl. Rambutan no. 6', 40, '08123376345', 'Pekanbaru', 0),
(11, 'Fitri', 'HRD', 'jl. durian', 32, '08123376345', 'Dumai', 0),
(12, 'Muchsin', 'HRD', 'jl. in aja dulu', 23, '08123376345', 'Pekanbaru', 0),
(13, 'rahmad', 'HRD', 'jl. in aja dulu', 23, '08123376345', 'Pekanbaru', 4),
(14, '', 'HRD', 'jl. durian', 23, '08123376345', '', 3),
(15, 'Nur', 'HRD', 'jl. in aja dulu', 25, '08123376345', '', 3),
(16, 'Anton', 'Kepala Pimpinan', 'jl. hangtuah no.132', 42, '08123123', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `kota_cabang`
--

CREATE TABLE `kota_cabang` (
  `id` int(11) NOT NULL,
  `nama_kota` varchar(40) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kota_cabang`
--

INSERT INTO `kota_cabang` (`id`, `nama_kota`, `alamat`) VALUES
(3, 'Dumai', 'Jl. Kebangsaan No.125'),
(4, 'Pekanbaru', 'Jl. Soebrantas no.12'),
(5, 'Duri', 'jl. hangtuah no.132');

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `tgl_pemasukan` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_sumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasukan`
--

INSERT INTO `pemasukan` (`id_pemasukan`, `tgl_pemasukan`, `jumlah`, `id_sumber`) VALUES
(6, '2019-10-20', 100000, 4),
(7, '2019-10-21', 2300000, 3),
(8, '2019-10-22', 2000000, 2),
(9, '2019-10-23', 1500000, 5),
(10, '2019-10-15', 100000, 1),
(13, '2019-10-17', 200000, 1),
(14, '2019-10-09', 200000, 1),
(15, '2019-10-19', 200000, 3),
(16, '2019-10-02', 200000, 4),
(17, '2019-10-07', 20000, 5),
(18, '2019-10-26', 50000, 1),
(19, '2019-10-27', 2000000, 2),
(20, '2019-10-28', 590000, 3),
(21, '2019-10-29', 600000, 4),
(22, '2019-10-30', 600000, 5),
(23, '2019-10-25', 7000000, 1),
(24, '2024-01-15', 15000000, 1),
(25, '2024-01-22', 2000000, 1),
(26, '2024-01-23', 1200000, 3),
(27, '2024-01-23', 1000000, 1),
(28, '2024-01-23', 1500000, 3),
(29, '2024-01-25', 600000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `tgl_pengeluaran` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_sumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id_pengeluaran`, `tgl_pengeluaran`, `jumlah`, `id_sumber`) VALUES
(1, '2019-10-22', 1100000, 10),
(3, '2019-10-16', 200000, 7),
(4, '2019-10-17', 3000000, 6),
(5, '2019-10-18', 100000, 7),
(6, '2019-10-19', 150000, 6),
(7, '2019-10-20', 100000, 7),
(8, '2019-10-21', 150000, 6),
(9, '2019-10-23', 123000, 9),
(10, '2019-10-15', 600000, 6),
(11, '2019-10-13', 20000, 7),
(12, '2019-10-12', 300000, 9),
(13, '2019-10-24', 500000, 8),
(14, '2019-10-30', 121212, 6),
(15, '2019-10-25', 60000, 6),
(16, '2019-10-26', 70000, 7),
(17, '2019-10-27', 60000, 8),
(18, '2019-10-28', 78000, 9),
(19, '2019-10-29', 79000, 10),
(20, '2024-01-15', 2000000, 7),
(21, '2024-01-22', 450000, 7),
(22, '2024-01-23', 500000, 7),
(23, '0000-00-00', 1300000, 0),
(24, '2024-01-23', 1300000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `level` enum('admin','manager','unit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_admin`, `nama`, `email`, `pass`, `level`) VALUES
(1, 'Achmad Muchsin', 'muchsin@gmail.com', '12345', 'admin'),
(2, 'ahmad', 'ahmad@mail.com', 'tes123', 'manager'),
(3, 'Fitri', 'fitri@gmail.com', '12345', 'unit');

-- --------------------------------------------------------

--
-- Table structure for table `sumber`
--

CREATE TABLE `sumber` (
  `id_sumber` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sumber`
--

INSERT INTO `sumber` (`id_sumber`, `nama`) VALUES
(1, 'Buat Web Pemerintah'),
(2, 'Desain Poster Lomba'),
(3, 'Instalasi Softwre'),
(4, 'Instalasi OS'),
(5, 'Buat Video Animasi'),
(6, 'Domain'),
(7, 'Hosting'),
(8, 'Listrik'),
(9, 'Air'),
(10, 'Wifi'),
(11, 'Kerikil'),
(12, 'Aspal');

-- --------------------------------------------------------

--
-- Table structure for table `uang`
--

CREATE TABLE `uang` (
  `id_uang` int(11) NOT NULL,
  `tgl_uang` date NOT NULL,
  `id_pengeluaran` int(11) DEFAULT NULL,
  `id_pendapatan` int(11) DEFAULT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uang`
--

INSERT INTO `uang` (`id_uang`, `tgl_uang`, `id_pengeluaran`, `id_pendapatan`, `jumlah`) VALUES
(1, '2019-10-23', NULL, 1, 500000),
(2, '2019-10-24', 2, NULL, 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan`
--
ALTER TABLE `catatan`
  ADD PRIMARY KEY (`id_catatan`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`id_hutang`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indexes for table `kota_cabang`
--
ALTER TABLE `kota_cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`),
  ADD KEY `id_sumber` (`id_sumber`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`),
  ADD KEY `id_sumber` (`id_sumber`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `sumber`
--
ALTER TABLE `sumber`
  ADD PRIMARY KEY (`id_sumber`);

--
-- Indexes for table `uang`
--
ALTER TABLE `uang`
  ADD PRIMARY KEY (`id_uang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catatan`
--
ALTER TABLE `catatan`
  MODIFY `id_catatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `id_hutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kota_cabang`
--
ALTER TABLE `kota_cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sumber`
--
ALTER TABLE `sumber`
  MODIFY `id_sumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `uang`
--
ALTER TABLE `uang`
  MODIFY `id_uang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
