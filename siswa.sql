-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2022 at 04:52 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengunduran_diri`
--

CREATE TABLE `tb_pengunduran_diri` (
  `id` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `alasan` varchar(130) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengunduran_diri`
--

INSERT INTO `tb_pengunduran_diri` (`id`, `nama_siswa`, `alasan`, `status`) VALUES
(1, 'Agus', 'Ga bisa bayar SPP', 'ACC'),
(2, 'Dana', 'Ga uang', 'DECLINE'),
(3, 'Fahri ', 'goblok', 'ACC'),
(4, 'Melda ', 'PA', 'ACC'),
(5, 'QORI ', 'KO', 'ACC'),
(6, 'Fahri ', 'PA', 'ACC'),
(7, 'QORI ', 'Ngamilin ayam', 'Pending'),
(8, 'Nana ', 'Goblok', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `nip_siswa` int(11) NOT NULL,
  `nohp_siswa` int(11) NOT NULL,
  `alamat_siswa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nama_siswa`, `nip_siswa`, `nohp_siswa`, `alamat_siswa`) VALUES
(4, 'Melda', 1103154999, 2147483647, 'Depok'),
(5, 'Nana', 1103154777, 2147483647, 'Bogor'),
(7, 'QORI', 98999, 87678899, 'Tamansari');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `role` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `password`, `role`) VALUES
(1, 'Ardan', '1234', 'kepala sekolah'),
(2, 'Bimo', '1234', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pengunduran_diri`
--
ALTER TABLE `tb_pengunduran_diri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pengunduran_diri`
--
ALTER TABLE `tb_pengunduran_diri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
