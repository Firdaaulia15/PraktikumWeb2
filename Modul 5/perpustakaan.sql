-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 07:47 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(500) NOT NULL,
  `penulis` varchar(500) NOT NULL,
  `penerbit` varchar(250) NOT NULL,
  `tahun_terbit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul_buku`, `penulis`, `penerbit`, `tahun_terbit`) VALUES
(3, 'Ketika Cinta Berstabih', 'Firda', 'Gramedia', 2006),
(5, 'Belajar Koding', 'Putri Riha', 'Sanjaya', 2007),
(6, 'Mariposa', 'Amalia', 'Yusuf', 2008),
(7, 'Github', 'Monic', 'Bintang', 2009),
(8, 'Bahasa Inggris', 'Ryan', 'Jusuf', 2010),
(9, 'Dokter Kecil', 'Raffi', 'Ahmad', 2011),
(10, 'Kasih Ibu', 'Nagita', 'Slavina', 2012),
(11, 'Rintik Sedu', 'Nstana', 'Sari', 2013),
(12, 'Suka Suka Kita', 'Maharani', 'Candrawista', 2015);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `nomor_member` varchar(15) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_mendaftar` datetime NOT NULL,
  `tgl_terakhir_bayar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `nomor_member`, `alamat`, `tgl_mendaftar`, `tgl_terakhir_bayar`) VALUES
(31, 'Rahma', '15-15', 'Jakarta', '2022-01-20 14:07:07', '2022-04-05'),
(33, 'Firda', '15-15', 'Cempaka', '2022-04-01 11:14:33', '2022-05-28'),
(34, 'Aulia', '256-15', 'Jakarta', '2022-04-01 12:13:09', '2022-05-19'),
(77, 'Sari', '16-89', 'Bandung', '2022-03-18 16:51:27', '2022-04-05'),
(78, 'Agus', '78-15', 'Banjarnegara', '2022-07-15 13:51:16', '2022-06-24'),
(106, 'Gusnadi', '35-15', 'Banjarbaru', '2022-02-08 15:10:10', '2022-03-10'),
(107, 'Kiki', '109-15', 'Palangkaraya', '2022-03-25 18:33:45', '2022-03-31'),
(198, 'Aida', '111-15', 'Paringin', '2022-04-29 12:52:27', '2022-05-05'),
(260, 'Rozi', '890-15', 'Balangan', '2022-07-29 08:22:27', '2022-08-05'),
(654, 'Nifar', '45-15', 'Banjarr', '2022-04-30 03:07:16', '2022-06-02'),
(678, 'Ilham', '198-15', 'Pangkalambun', '2022-07-08 00:00:00', '2022-08-09');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `tgl_pinjam`, `tgl_kembali`) VALUES
(1, '2021-09-08', '2021-10-09'),
(3, '2022-04-15', '2022-06-14'),
(4, '2019-05-01', '2019-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=763;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
