-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 09 Agu 2022 pada 04.13
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_rumah_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_nilai` int(4) NOT NULL,
  `id_rumah` int(4) NOT NULL,
  `C1` int(4) NOT NULL,
  `C2` int(4) NOT NULL,
  `C3` int(4) NOT NULL,
  `C4` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_nilai`, `id_rumah`, `C1`, `C2`, `C3`, `C4`) VALUES
(22, 2, 8, 7, 9, 10),
(23, 3, 10, 9, 8, 8),
(24, 4, 9, 9, 9, 8),
(25, 5, 10, 10, 11, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai`
--

CREATE TABLE `bobot_nilai` (
  `id_nilai` int(3) NOT NULL,
  `bobot` varchar(100) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bobot_nilai`
--

INSERT INTO `bobot_nilai` (`id_nilai`, `bobot`, `nilai`) VALUES
(1, '< 200.000.000', 5),
(2, '200.000.000-299.000.000', 4),
(3, '300.000.000-399.000.000', 3),
(4, '400.000.000-500.000.000', 2),
(5, '> 500.000.000', 1),
(6, '> 80', 5),
(7, '70-80', 4),
(8, '60-69', 3),
(9, '50-59', 2),
(10, '< 50', 1),
(11, '< 5', 5),
(12, '6-8', 4),
(13, '9-11', 3),
(14, '12-15', 2),
(15, '> 15', 1),
(16, 'Tempat ibadah, tempat olahraga, taman', 5),
(17, 'Tempat ibadah, tempat olahraga', 4),
(18, 'Tempat ibadah, taman', 3),
(19, 'Tempat olahraga, taman', 2),
(20, 'Hanya ada salah satu tempat ibadah atau taman atau tempat olahraga', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c1`
--

CREATE TABLE `kriteria_c1` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'LUAS BANGUNAN',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c1`
--

INSERT INTO `kriteria_c1` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(6, 'LUAS BANGUNAN', 'Luas bangunan perumahan > 80', 15, 6),
(7, 'LUAS BANGUNAN', 'Luas bangunan perumahan 70-80', 15, 7),
(8, 'LUAS BANGUNAN', 'Luas bangunan perumahan 60-69', 15, 8),
(9, 'LUAS BANGUNAN', 'Luas bangunan perumahan 50-59', 15, 9),
(10, 'LUAS BANGUNAN', 'Luas bangunan perumahan < 50', 15, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c2`
--

CREATE TABLE `kriteria_c2` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'SARANA & PRASARANA',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 25,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c2`
--

INSERT INTO `kriteria_c2` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(7, 'SARANA & PRASARANA', 'Tempat ibadah, tempat olahraga, taman', 25, 16),
(8, 'SARANA & PRASARANA', 'Tempat ibadah, tempat olahraga', 25, 17),
(9, 'SARANA & PRASARANA', 'Tempat ibadah, taman', 25, 18),
(10, 'SARANA & PRASARANA', 'Tempat olahraga, taman', 25, 19),
(11, 'SARANA & PRASARANA', 'Hanya ada salah satu tempat ibadah atau taman atau tempat olahraga', 25, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c3`
--

CREATE TABLE `kriteria_c3` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'HARGA',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c3`
--

INSERT INTO `kriteria_c3` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(7, 'HARGA', 'Harga perumahan < 200.000.000', 15, 1),
(8, 'HARGA', 'Harga perumahan 200.000.000 - 299.000.000', 15, 2),
(9, 'HARGA', 'Harga perumahan 300.000.000 - 399.000.000', 15, 3),
(10, 'HARGA', 'Harga perumahan 400.000.000 - 500.000.000', 15, 4),
(11, 'HARGA', 'Harga perumahan > 500.000.000', 15, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c4`
--

CREATE TABLE `kriteria_c4` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'AKSES PERUMAHAN DARI PUSAT KOTA',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 20,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria_c4`
--

INSERT INTO `kriteria_c4` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(6, 'AKSES PERUMAHAN DARI PUSAT KOTA', 'Akses perumahan menuju pusat kota < 5', 20, 11),
(7, 'AKSES PERUMAHAN DARI PUSAT KOTA', 'Akses perumahan menuju pusat kota 6-8', 20, 12),
(8, 'AKSES PERUMAHAN DARI PUSAT KOTA', 'Akses perumahan menuju pusat kota 9-11', 20, 13),
(9, 'AKSES PERUMAHAN DARI PUSAT KOTA', 'Akses perumahan menuju pusat kota 12-15', 20, 14),
(10, 'AKSES PERUMAHAN DARI PUSAT KOTA', 'Akses perumahan menuju pusat kota > 15', 20, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `username` varchar(18) NOT NULL,
  `password` varchar(100) NOT NULL DEFAULT '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae',
  `user_status` enum('admin','pengguna') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `jabatan`, `no_telpon`, `username`, `password`, `user_status`) VALUES
(12, 'Administrator', 'Owner', '08xxxxxx', 'admin', '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rumah`
--

CREATE TABLE `rumah` (
  `id_rumah` int(3) NOT NULL,
  `nama_perumahan` varchar(200) NOT NULL,
  `lokasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `rumah`
--

INSERT INTO `rumah` (`id_rumah`, `nama_perumahan`, `lokasi`) VALUES
(2, 'Perum Bumi Karomah Jaya 2', 'Jl. Pulau Singkep Sukarame'),
(3, 'Cinta Residence', 'Jl. Padat Karya Rajabasa'),
(4, 'Lingsuh Residence', 'Jl. H. Sardana, Gg. Jeruk Rajabasa'),
(5, 'New Griya Sejahtera Estate', 'Komplek Griya Sejahtera Gunung Terang'),
(6, 'Perumnas Way Kandis', 'Jl. Bunga Sedap Malam Raya, Tanjung Senang');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_alternatif`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_alternatif` (
`id_nilai` int(4)
,`id_rumah` int(3)
,`nama_perumahan` varchar(200)
,`lokasi` text
,`id_c1` int(4)
,`C1` varchar(100)
,`id_c2` int(4)
,`C2` varchar(100)
,`id_c3` int(4)
,`C3` varchar(100)
,`id_c4` int(4)
,`C4` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c1`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c1` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c2` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c3`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c3` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_kriteria_c4`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_kriteria_c4` (
`id_kriteria` int(4)
,`sub_kriteria` varchar(100)
,`id_nilai` int(3)
,`bobot` varchar(100)
,`nilai` int(3)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_rating_kecocokan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_rating_kecocokan` (
`nama_perumahan` varchar(200)
,`NC1` int(3)
,`NC2` int(3)
,`NC3` int(3)
,`NC4` int(3)
);

-- --------------------------------------------------------

--
-- Struktur untuk view `v_alternatif`
--
DROP TABLE IF EXISTS `v_alternatif`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_alternatif`  AS  select `alternatif`.`id_nilai` AS `id_nilai`,`rumah`.`id_rumah` AS `id_rumah`,`rumah`.`nama_perumahan` AS `nama_perumahan`,`rumah`.`lokasi` AS `lokasi`,`kriteria_c1`.`id_kriteria` AS `id_c1`,`kriteria_c1`.`sub_kriteria` AS `C1`,`kriteria_c2`.`id_kriteria` AS `id_c2`,`kriteria_c2`.`sub_kriteria` AS `C2`,`kriteria_c3`.`id_kriteria` AS `id_c3`,`kriteria_c3`.`sub_kriteria` AS `C3`,`kriteria_c4`.`id_kriteria` AS `id_c4`,`kriteria_c4`.`sub_kriteria` AS `C4` from (((((`alternatif` join `rumah` on(`rumah`.`id_rumah` = `alternatif`.`id_rumah`)) join `kriteria_c1` on(`kriteria_c1`.`id_kriteria` = `alternatif`.`C1`)) join `kriteria_c2` on(`kriteria_c2`.`id_kriteria` = `alternatif`.`C2`)) join `kriteria_c3` on(`kriteria_c3`.`id_kriteria` = `alternatif`.`C3`)) join `kriteria_c4` on(`kriteria_c4`.`id_kriteria` = `alternatif`.`C4`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c1`
--
DROP TABLE IF EXISTS `v_kriteria_c1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c1`  AS  select `kriteria_c1`.`id_kriteria` AS `id_kriteria`,`kriteria_c1`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c1` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c1`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c2`
--
DROP TABLE IF EXISTS `v_kriteria_c2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c2`  AS  select `kriteria_c2`.`id_kriteria` AS `id_kriteria`,`kriteria_c2`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c2` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c2`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c3`
--
DROP TABLE IF EXISTS `v_kriteria_c3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c3`  AS  select `kriteria_c3`.`id_kriteria` AS `id_kriteria`,`kriteria_c3`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c3` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c3`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c4`
--
DROP TABLE IF EXISTS `v_kriteria_c4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c4`  AS  select `kriteria_c4`.`id_kriteria` AS `id_kriteria`,`kriteria_c4`.`sub_kriteria` AS `sub_kriteria`,`bobot_nilai`.`id_nilai` AS `id_nilai`,`bobot_nilai`.`bobot` AS `bobot`,`bobot_nilai`.`nilai` AS `nilai` from (`kriteria_c4` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c4`.`id_nilai`)) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_rating_kecocokan`
--
DROP TABLE IF EXISTS `v_rating_kecocokan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rating_kecocokan`  AS  select `rumah`.`nama_perumahan` AS `nama_perumahan`,`v_kriteria_c1`.`nilai` AS `NC1`,`v_kriteria_c2`.`nilai` AS `NC2`,`v_kriteria_c3`.`nilai` AS `NC3`,`v_kriteria_c4`.`nilai` AS `NC4` from (((((`alternatif` join `v_kriteria_c1` on(`v_kriteria_c1`.`id_kriteria` = `alternatif`.`C1`)) join `v_kriteria_c2` on(`v_kriteria_c2`.`id_kriteria` = `alternatif`.`C2`)) join `v_kriteria_c3` on(`v_kriteria_c3`.`id_kriteria` = `alternatif`.`C3`)) join `v_kriteria_c4` on(`v_kriteria_c4`.`id_kriteria` = `alternatif`.`C4`)) join `rumah` on(`rumah`.`id_rumah` = `alternatif`.`id_rumah`)) ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `kriteria_c1`
--
ALTER TABLE `kriteria_c1`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c2`
--
ALTER TABLE `kriteria_c2`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c3`
--
ALTER TABLE `kriteria_c3`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria_c4`
--
ALTER TABLE `kriteria_c4`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indeks untuk tabel `rumah`
--
ALTER TABLE `rumah`
  ADD PRIMARY KEY (`id_rumah`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_nilai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c1`
--
ALTER TABLE `kriteria_c1`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c2`
--
ALTER TABLE `kriteria_c2`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c3`
--
ALTER TABLE `kriteria_c3`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c4`
--
ALTER TABLE `kriteria_c4`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `rumah`
--
ALTER TABLE `rumah`
  MODIFY `id_rumah` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
