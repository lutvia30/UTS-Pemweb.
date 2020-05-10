-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2020 at 03:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(3) NOT NULL,
  `nm_anggota` varchar(32) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `ttl_anggota` text DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nm_anggota`, `alamat`, `ttl_anggota`, `Email`) VALUES
(10, 'Lutvia Rahmawati', 'Probolinggo, Jawa Timur', 'Probolinggo,30 Juli 2000', 'lutvia.rahmawati0@gmail.com'),
(11, 'Rohmatus Sholihah', 'Gresik', 'Gresik, 20 April 2000', 'Rohmatus@gmail.com'),
(12, 'Junistin Kresna Putri', 'Probolinggo ', 'Nganjuk, 27 Juni 1997', 'Junkrez@gmail.com'),
(14, 'Dina Putri Agustin ', 'Surabaya ', 'Malang,25 Maret 1999', 'Dina.P.Agustin@gmail.com'),
(13, 'Putra Yahya ', 'Surabaya', 'Surabaya,28 Januari 1998', 'Yahya.P@gmail.com'),
(1, 'Muhammad Zainal ', 'Mojokerto', 'Mojokerto 2 Februari 1999', 'M.Zainal@gmail.com'),
(2, 'Rahmawati Yulia ', 'Surabaya', 'Surabaya, 7 Agustus 2000', 'YuliaR@gmail.com'),
(3, 'Erliana Eddys Putri', 'Probolinggo', 'Probolinggo, 2 Maret 2000', 'Erlianaeddys@gmail.com'),
(4, 'Muhammad ridho ', 'Surabaya', 'Surabaya, 24 April 2001', 'MRidho@gmail.com'),
(5, 'Ika Septiana', 'Gresik ', 'Gresik, 17 September 2000', 'Ika.Septi@gmail.com'),
(6, 'Dani Ramadhan ', 'Gresik', 'Surabaya, 29 Maret 2000', 'DaniRamadhan@gmail.com'),
(7, 'Rani Meilani ', 'Surabaya', 'Surabaya, 3 Januari 1998', 'Rani@gmail.com'),
(8, 'Meisita Putri', 'Surabaya ', 'Surabaya, 4 Agustus 1999', 'Meisita.Putri@gmail.com '),
(9, 'Farhan Syahputra', 'Gresik', 'Malang, 8 Januari 1998', 'Farhan.Syah@gmail.com'),
(15, 'Inaya Raya Putri ', 'Malang', 'Malang,17 Oktober 2000', 'Inaya.Putri@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kd_buku` int(5) NOT NULL,
  `judul_buku` varchar(32) DEFAULT NULL,
  `pengarang` varchar(32) DEFAULT NULL,
  `jenis_buku` varchar(32) DEFAULT NULL,
  `penerbit` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kd_buku`, `judul_buku`, `pengarang`, `jenis_buku`, `penerbit`) VALUES
(1, 'Basis Data', 'Irvan', 'Buku Cetak', 'Yudhistira'),
(2, 'Desain Photoshop', 'Dicky', 'Buku Cetak', 'Yudhistira'),
(3, 'Pemrograman PHP', 'Irvan', 'Buku Cetak', 'Yudhistira');

-- --------------------------------------------------------

--
-- Table structure for table `meminjam`
--

CREATE TABLE `meminjam` (
  `id_pinjam` int(3) NOT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `jumlah_pinjam` int(2) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `id_anggota` int(3) DEFAULT NULL,
  `kd_buku` varchar(5) DEFAULT NULL,
  `kembali` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `meminjam`
--

INSERT INTO `meminjam` (`id_pinjam`, `tgl_pinjam`, `jumlah_pinjam`, `tgl_kembali`, `id_anggota`, `kd_buku`, `kembali`) VALUES
(1, '2015-02-03', 1, '2015-02-04', 2, '12', 2),
(22, '2018-12-11', 1, '2018-12-11', 10, '1', 2),
(12, '2015-02-02', 1, '2015-02-02', 3, '23', 2),
(11, '2015-02-02', 1, '2015-02-02', 6, '12', 2),
(10, '2015-02-02', 1, '2015-02-02', 6, '34', 2),
(9, '2015-02-02', 1, '2015-02-03', 5, '123', 2),
(13, '2015-02-03', 1, '2015-02-03', 3, '34', 2),
(14, '2015-02-03', 1, '2015-02-03', 3, '23', 2),
(24, '2018-12-11', 1, '2018-12-19', 10, '2', 2),
(16, '2015-02-17', 1, '2015-02-17', 8, '200', 2),
(17, '2015-04-28', 1, '2015-04-28', 4, '12', 2),
(18, '2015-04-28', 1, '2015-04-28', 5, '12', 2),
(23, '2018-12-11', 1, '2018-12-11', 11, '2', 2),
(20, '2015-05-11', 1, '2018-12-11', 2, '12', 2),
(28, '2018-12-19', 1, '0000-00-00', 12, '2', 1),
(25, '2018-12-11', 1, '2018-12-11', 11, '3', 2),
(27, '2018-12-11', 1, '2018-12-11', 14, '99', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kd_buku`);

--
-- Indexes for table `meminjam`
--
ALTER TABLE `meminjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `kd_buku` (`kd_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `meminjam`
--
ALTER TABLE `meminjam`
  MODIFY `id_pinjam` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
