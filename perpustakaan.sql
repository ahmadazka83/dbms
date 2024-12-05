-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2024 at 04:44 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

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
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `ID_anggota` varchar(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `No_induk` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`ID_anggota`, `username`, `password`, `No_induk`) VALUES
('A001', 'lina_damayanti', '9a1b2be94827d1e47f11fcae5e07fa796461315bd3d47a17f04212e6b32f64a0', '202001001'),
('A002', 'agus_putra', '31dc47f23ec2d7ad58b676c12d0f095852c294e25f1e9e00f3d75d5e01b51472', '202001002'),
('A003', 'andi_setiawan', 'e6d0396d0dcfda0f6d98f6e4f4a7cdd10a7b1fdd09c2c547f13127ddfdcdeaa8', '202001003'),
('A004', 'rini_sari', '441abe176fd485c28c5d56dd6ae76d14cf47f4ed20392612585586ea459645f9', '202001004'),
('A005', 'budi_pratama', '5c3d1aa3c4127b4c61dc7755f79d369cfda003e234dcbd3d5d0fe3f9075071b4', '202001005'),
('A006', 'maya_indah', '2a04c7a4b1b5ca7c81e9e6019b441d04387d3af8583b26568bc9c872db7f77bf', '202001006'),
('A007', 'dika_wijaya', 'a1e6cda93d3f1ac46270a77c5bbf9eafa12f8e0e95025473a22dca4e26979a85', '202001007'),
('A008', 'dewi_cahaya', '7a6c6a449b08d529df42a5b2d26c66eeac13bfdc603c7b3b357cfe2b9029108e', '202001008'),
('A009', 'fajar_prasetyo', '40f9d4512c9af417f7fe028f37532406f9c20a3e1e0c88902228ddcd07e9d4fd', '202001009'),
('A010', 'siti_nurul', '5d6e8562eec9ff5b34ea601618c766a7b2222b02080b7ace4e6021f9f494b64e', '202001010'),
('A011', 'yoga_santoso', 'b8f42135d8c6a9b47f0f16307c6bfbe80b8e7bb2434471a1ff783267ec9e7207', '202011001');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `no_buku` varchar(10) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `tahun_terbit` int(5) DEFAULT NULL,
  `ID_penerbit` varchar(10) DEFAULT NULL,
  `no_kategori` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`no_buku`, `judul`, `tahun_terbit`, `ID_penerbit`, `no_kategori`) VALUES
('B0001', 'Pemrograman Dasar', 2005, 'PB01', 'K01'),
('B0002', 'Batavia', 1930, 'PB02', 'K02'),
('B0003', 'Gadis Kretek', 2014, 'PB03', 'K03'),
('B0004', 'Bismillah', 2004, 'PB04', 'K04'),
('B0005', 'IPA Dasar', 2020, 'PB05', 'K05'),
('B0006', 'Demokrasi', 1999, 'PB06', 'K06'),
('B0007', 'Raket Naya', 2019, 'PB07', 'K07'),
('B0008', 'KBBI', 2000, 'PB08', 'K08'),
('B0009', 'Cipta Syair', 2002, 'PB09', 'K09'),
('B0010', 'Akuntansi', 2022, 'PB10', 'K10');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `no_kategori` varchar(10) NOT NULL,
  `jenis` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`no_kategori`, `jenis`) VALUES
('K01', 'Teknologi'),
('K02', 'Sejarah'),
('K03', 'Fiksi'),
('K04', 'Agama'),
('K05', 'Sains'),
('K06', 'Politik'),
('K07', 'Olahraga'),
('K08', 'Bahasa'),
('K09', 'Seni'),
('K10', 'Ekonomi');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `ID_peminjaman` varchar(10) NOT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali` date DEFAULT NULL,
  `tarif_denda` int(11) DEFAULT NULL,
  `keterangan_denda` varchar(50) DEFAULT NULL,
  `ID_anggota` varchar(10) DEFAULT NULL,
  `no_buku` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`ID_peminjaman`, `tanggal_pinjam`, `tanggal_kembali`, `tarif_denda`, `keterangan_denda`, `ID_anggota`, `no_buku`) VALUES
('PJM001', '2023-01-05', '2023-01-15', 0, '-', 'A001', 'B0001'),
('PJM002', '2023-02-10', '2023-02-20', 0, '-', 'A002', 'B0002'),
('PJM003', '2023-03-15', '2023-03-25', 20000, 'Rusak', 'A003', 'B0003'),
('PJM004', '2023-04-20', '2023-04-30', 50000, 'Hilang', 'A004', 'B0004'),
('PJM005', '2023-05-25', '2023-06-04', 0, '-', 'A005', 'B0005'),
('PJM006', '2023-06-30', '2023-07-10', 2000, 'Terlambat', 'A006', 'B0006'),
('PJM007', '2023-08-05', '2023-08-15', 0, '-', 'A007', 'B0007'),
('PJM008', '2023-09-10', '2023-09-20', 0, '-', 'A008', 'B0008'),
('PJM009', '2023-10-15', '2023-10-25', 5000, 'Rusak', 'A009', 'B0009'),
('PJM010', '2023-11-20', '2023-11-30', 0, '-', 'A010', 'B0010');

-- --------------------------------------------------------

--
-- Table structure for table `penerbit`
--

CREATE TABLE `penerbit` (
  `ID_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penerbit`
--

INSERT INTO `penerbit` (`ID_penerbit`, `nama_penerbit`) VALUES
('PB01', 'Erlangga'),
('PB02', 'Gramedia'),
('PB03', 'Mizan'),
('PB04', 'Kompas'),
('PB05', 'A3'),
('PB06', 'Naya Jaya'),
('PB07', 'Ertiga'),
('PB08', 'Matahari'),
('PB09', 'Pustaka'),
('PB10', 'Dahwa Jawa');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `No_induk` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `umur` int(11) DEFAULT NULL,
  `jenis_kelamin` char(2) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`No_induk`, `nama`, `alamat`, `email`, `umur`, `jenis_kelamin`, `status`) VALUES
('202001001', 'Lina Damayanti', 'Jl. Kenanga 23', 'lina.damayanti@email.com', 22, 'P', 'Mahasiswa'),
('202001002', 'Agus Putra', 'Jl. Demang 12', 'agus.putra@email.com', 22, 'L', 'Mahasiswa'),
('202001003', 'Andi Setiawan', 'Jl. Merdeka No. 123', 'andi.setiawan@email.com', 22, 'L', 'Mahasiswa'),
('202001004', 'Rini Sari', 'Jl. Harapan Indah 45', 'rini.sari@email.com', 22, 'P', 'Mahasiswa'),
('202001005', 'Budi Pratama', 'Jl. Pahlawan 67', 'budi.pratama@email.com', 23, 'L', 'Mahasiswa'),
('202001006', 'Maya Indah', 'Jl. Cempaka 89', 'maya.indah@email.com', 22, 'P', 'Mahasiswa'),
('202001007', 'Dika Wijaya', 'Jl. Kencana 34', 'dika.wijaya@email.com', 22, 'L', 'Mahasiswa'),
('202001008', 'Dewi Cahaya', 'Jl. Surya 56', 'dewi.cahaya@email.com', 22, 'P', 'Mahasiswa'),
('202001009', 'Fajar Prasetyo', 'Jl. Mawar 78', 'fajar.prasetyo@email.com', 21, 'L', 'Mahasiswa'),
('202001010', 'Siti Nurul', 'Jl. Anggrek 90', 'siti.nurul@email.com', 22, 'P', 'Mahasiswa'),
('202011001', 'Yoga Santoso', 'Jl. Dahlia 12', 'yoga.santoso@email.com', 34, 'L', 'Dosen');

-- --------------------------------------------------------

--
-- Table structure for table `superuser`
--

CREATE TABLE `superuser` (
  `ID_superuser` varchar(10) NOT NULL,
  `username_superuser` varchar(20) DEFAULT NULL,
  `password_superuser` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `superuser`
--

INSERT INTO `superuser` (`ID_superuser`, `username_superuser`, `password_superuser`) VALUES
('SU001', 'Ahmadfariz', '8a221bb139510e5cbdaca09b82930346d6b27748387ab10ba95bf45a9ccda794'),
('SU002', 'fitriani', 'b6305322bce74fdf912e0101ce2e6464135b86c85a584f062c98fecaef9ad61b'),
('SU003', 'madrian', 'b297fd788e59cbae9debdb6b5795ca4fa94c5215310f21595139c9b98d1a6625'),
('SU004', 'nabila', 'edd99d048235c3c0cfc4ad913bb3ee81587314f9e93e85b6fb32c76069156f9d'),
('SU005', 'rendy', 'a3f15df651e11b8566bad0150c1caa3ee02a0666c150c6689ab6ea180a376696');

--
-- Indexes for dumped tables

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`ID_anggota`),
  ADD KEY `No_induk` (`No_induk`),
  ADD KEY `idx_login_anggota` (`username`,`password`) USING BTREE,
  ADD KEY `idx_cari_anggota` (`ID_anggota`) USING BTREE;

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`no_buku`),
  ADD KEY `ID_penerbit` (`ID_penerbit`),
  ADD KEY `no_kategori` (`no_kategori`),
  ADD KEY `idx_cari_buku` (`judul`) USING BTREE,
  ADD KEY `buku_name_hash` (`judul`),
  ADD KEY `buku_judul_hash` (`judul`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`no_kategori`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`ID_peminjaman`),
  ADD KEY `ID_anggota` (`ID_anggota`),
  ADD KEY `no_buku` (`no_buku`),
  ADD KEY `idx_cari_peminjaman` (`tanggal_pinjam`,`tanggal_kembali`) USING BTREE;

--
-- Indexes for table `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`ID_penerbit`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`No_induk`);

--
-- Indexes for table `superuser`
--
ALTER TABLE `superuser`
  ADD PRIMARY KEY (`ID_superuser`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`No_induk`) REFERENCES `pengunjung` (`No_induk`);

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`ID_penerbit`) REFERENCES `penerbit` (`ID_penerbit`),
  ADD CONSTRAINT `buku_ibfk_2` FOREIGN KEY (`no_kategori`) REFERENCES `kategori` (`no_kategori`);

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`ID_anggota`) REFERENCES `anggota` (`ID_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`no_buku`) REFERENCES `buku` (`no_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
