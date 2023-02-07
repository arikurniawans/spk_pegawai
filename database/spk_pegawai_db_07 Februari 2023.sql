-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Feb 2023 pada 15.53
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spk_pegawai_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_nilai` int(4) NOT NULL,
  `idpegawai` int(4) NOT NULL,
  `C1` int(4) NOT NULL,
  `C2` int(4) NOT NULL,
  `C3` int(4) NOT NULL,
  `C4` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_nilai`, `idpegawai`, `C1`, `C2`, `C3`, `C4`) VALUES
(1, 1, 1, 1, 5, 1),
(2, 2, 1, 1, 5, 2),
(3, 3, 1, 1, 5, 2),
(4, 4, 1, 1, 4, 4),
(5, 5, 1, 1, 4, 4),
(6, 6, 1, 1, 5, 2),
(7, 7, 1, 1, 4, 2),
(8, 8, 1, 1, 5, 2),
(9, 9, 1, 1, 5, 1),
(10, 10, 1, 1, 5, 2),
(11, 11, 1, 1, 5, 2),
(12, 12, 1, 1, 4, 4),
(13, 13, 1, 1, 5, 4),
(14, 14, 1, 1, 5, 2),
(15, 15, 1, 1, 5, 2),
(16, 16, 1, 1, 5, 4),
(17, 17, 1, 1, 5, 4),
(18, 18, 1, 1, 5, 4),
(19, 19, 1, 1, 5, 4),
(20, 20, 1, 1, 5, 2),
(21, 21, 1, 1, 5, 2),
(22, 22, 1, 1, 5, 4),
(23, 23, 1, 1, 5, 2),
(24, 24, 1, 1, 5, 2),
(25, 25, 1, 1, 4, 4),
(26, 26, 1, 1, 5, 2),
(27, 27, 1, 1, 5, 2),
(28, 28, 1, 1, 5, 4),
(29, 29, 1, 1, 5, 4),
(30, 30, 1, 1, 5, 4),
(31, 31, 1, 1, 5, 4),
(32, 32, 1, 1, 5, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai`
--

CREATE TABLE `bobot_nilai` (
  `id_nilai` int(3) NOT NULL,
  `bobot` varchar(100) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bobot_nilai`
--

INSERT INTO `bobot_nilai` (`id_nilai`, `bobot`, `nilai`) VALUES
(1, '20 - 22', 5),
(2, '16 - 19', 4),
(3, '12 - 15', 3),
(4, '7 - 11', 2),
(5, '< 7', 1),
(6, 'Sangat baik', 5),
(7, 'Baik', 4),
(8, 'Cukup', 3),
(9, 'Kurang baik', 2),
(10, 'Sangat tidak baik', 1),
(11, '> 15', 5),
(12, '11 - 14', 4),
(13, '7 - 10', 3),
(14, '4 - 6', 2),
(15, '1 - 3', 1),
(16, 'S2', 5),
(17, 'S1', 4),
(18, 'D3', 3),
(19, 'SMA / SMK', 2),
(20, 'SMP', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c1`
--

CREATE TABLE `kriteria_c1` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'KEHADIRAN',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kriteria_c1`
--

INSERT INTO `kriteria_c1` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'KEHADIRAN', 'Jumlah Kehadiran 20 - 22 Hari', 15, 1),
(2, 'KEHADIRAN', 'Jumlah Kehadiran 16 – 19 Hari', 15, 2),
(3, 'KEHADIRAN', 'Jumlah Kehadiran 12 – 15 Hari', 15, 3),
(4, 'KEHADIRAN', 'Jumlah Kehadiran 7 – 11 Hari', 15, 4),
(5, 'KEHADIRAN', 'Jumlah Kehadiran < 7 Hari', 15, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c2`
--

CREATE TABLE `kriteria_c2` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'KINERJA INDIVIDU',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 25,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kriteria_c2`
--

INSERT INTO `kriteria_c2` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'KINERJA INDIVIDU', 'Kinerja Individu Sangat Baik', 25, 6),
(2, 'KINERJA INDIVIDU', 'Kinerja Individu Baik', 25, 7),
(3, 'KINERJA INDIVIDU', 'Kinerja Individu Cukup', 25, 8),
(4, 'KINERJA INDIVIDU', 'Kinerja Individu Kurang Baik', 25, 9),
(5, 'KINERJA INDIVIDU', 'Kinerja Individu Sangat Tidak Baik', 25, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c3`
--

CREATE TABLE `kriteria_c3` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'MASA KERJA',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kriteria_c3`
--

INSERT INTO `kriteria_c3` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'MASA KERJA', 'Masa Kerja > 15 Tahun', 15, 11),
(2, 'MASA KERJA', 'Masa Kerja 11 - 14 Tahun', 15, 12),
(3, 'MASA KERJA', 'Masa Kerja 7 - 10 Tahun', 15, 13),
(4, 'MASA KERJA', 'Masa Kerja 4 - 6 Tahun', 15, 14),
(5, 'MASA KERJA', 'Masa Kerja 1 - 3 Tahun', 15, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c4`
--

CREATE TABLE `kriteria_c4` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'PENDIDIKAN',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 20,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kriteria_c4`
--

INSERT INTO `kriteria_c4` (`id_kriteria`, `nama_kriteria`, `sub_kriteria`, `bobot_kriteria`, `id_nilai`) VALUES
(1, 'PENDIDIKAN', 'Jenjang Pendidikan S2', 20, 16),
(2, 'PENDIDIKAN', 'Jenjang Pendidikan S1', 20, 17),
(3, 'PENDIDIKAN', 'Jenjang Pendidikan D3', 20, 18),
(4, 'PENDIDIKAN', 'Jenjang Pendidikan SMA / SMK', 20, 19),
(5, 'PENDIDIKAN', 'Jenjang Pendidikan SMP', 20, 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai_tb`
--

CREATE TABLE `pegawai_tb` (
  `idpegawai` int(3) NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_pegawai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai_tb`
--

INSERT INTO `pegawai_tb` (`idpegawai`, `nip`, `nama_pegawai`) VALUES
(1, '0101202201', 'Mochamad Junaidi'),
(2, '0101202202', 'Titin Prihatiningsih'),
(3, '0101202203', 'Ferry Kurniawan'),
(4, '0101202204', 'Fikri'),
(5, '0101202205', 'Noviyandi'),
(6, '0101202206', 'Vira Anggraini'),
(7, '0101202207', 'Siti Oktia'),
(8, '0101202208', 'Agusidha Tri Setyorini'),
(9, '0101202209', 'Rahmat Waldiantoro'),
(10, '0101202210', 'Mochamad Imam Machfuzh'),
(11, '0101202211', 'Ari Fasma'),
(12, '0101202212', 'Muhammad Kholid'),
(13, '0101202213', 'Hendro Ario Prastya'),
(14, '0101202214', 'Aryani'),
(15, '0101202215', 'Marya Rika Kurniati'),
(16, '0101202216', 'Imam Sabbihis'),
(17, '0101202217', 'Dewi Yana'),
(18, '0101202218', 'Toyibahuddin'),
(19, '0101202219', 'Mat Yuhari'),
(20, '0101202220', 'Okta Fitriansyah'),
(21, '0101202221', 'Dwi Agustina'),
(22, '0101202222', 'Ade Merdian Baksir'),
(23, '0101202223', 'Alvin Wisuda Febriansyah'),
(24, '0101202224', 'Susriyani'),
(25, '0101202225', 'Pubian Idris'),
(26, '0101202226', 'Redo Arisuli'),
(27, '0101202227', 'Thomas Feriyanto Haloho'),
(28, '0101202228', 'Ayu Christianti'),
(29, '0101202229', 'Eko Sutedi'),
(30, '0101202230', 'Yodiansyah Nikotama'),
(31, '0101202231', 'Shintia Mayasari'),
(32, '0101202232', 'Rendhy Arief Rahman');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `jabatan`, `no_telpon`, `username`, `password`, `user_status`) VALUES
(12, 'Administrator', 'Owner', '08xxxxxx', 'admin', '$2y$10$N33og08eYBFZlPT8unPeYe7D.xxoropy2OniU3jsN3Cb0iuUIGuae', 'admin');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `v_alternatif`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `v_alternatif` (
`id_nilai` int(4)
,`idpegawai` int(3)
,`nip` varchar(20)
,`nama_pegawai` varchar(50)
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
`nama_pegawai` varchar(50)
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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_alternatif`  AS SELECT `alternatif`.`id_nilai` AS `id_nilai`, `pegawai_tb`.`idpegawai` AS `idpegawai`, `pegawai_tb`.`nip` AS `nip`, `pegawai_tb`.`nama_pegawai` AS `nama_pegawai`, `kriteria_c1`.`id_kriteria` AS `id_c1`, `kriteria_c1`.`sub_kriteria` AS `C1`, `kriteria_c2`.`id_kriteria` AS `id_c2`, `kriteria_c2`.`sub_kriteria` AS `C2`, `kriteria_c3`.`id_kriteria` AS `id_c3`, `kriteria_c3`.`sub_kriteria` AS `C3`, `kriteria_c4`.`id_kriteria` AS `id_c4`, `kriteria_c4`.`sub_kriteria` AS `C4` FROM (((((`alternatif` join `pegawai_tb` on(`pegawai_tb`.`idpegawai` = `alternatif`.`idpegawai`)) join `kriteria_c1` on(`kriteria_c1`.`id_kriteria` = `alternatif`.`C1`)) join `kriteria_c2` on(`kriteria_c2`.`id_kriteria` = `alternatif`.`C2`)) join `kriteria_c3` on(`kriteria_c3`.`id_kriteria` = `alternatif`.`C3`)) join `kriteria_c4` on(`kriteria_c4`.`id_kriteria` = `alternatif`.`C4`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c1`
--
DROP TABLE IF EXISTS `v_kriteria_c1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c1`  AS SELECT `kriteria_c1`.`id_kriteria` AS `id_kriteria`, `kriteria_c1`.`sub_kriteria` AS `sub_kriteria`, `bobot_nilai`.`id_nilai` AS `id_nilai`, `bobot_nilai`.`bobot` AS `bobot`, `bobot_nilai`.`nilai` AS `nilai` FROM (`kriteria_c1` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c1`.`id_nilai`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c2`
--
DROP TABLE IF EXISTS `v_kriteria_c2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c2`  AS SELECT `kriteria_c2`.`id_kriteria` AS `id_kriteria`, `kriteria_c2`.`sub_kriteria` AS `sub_kriteria`, `bobot_nilai`.`id_nilai` AS `id_nilai`, `bobot_nilai`.`bobot` AS `bobot`, `bobot_nilai`.`nilai` AS `nilai` FROM (`kriteria_c2` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c2`.`id_nilai`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c3`
--
DROP TABLE IF EXISTS `v_kriteria_c3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c3`  AS SELECT `kriteria_c3`.`id_kriteria` AS `id_kriteria`, `kriteria_c3`.`sub_kriteria` AS `sub_kriteria`, `bobot_nilai`.`id_nilai` AS `id_nilai`, `bobot_nilai`.`bobot` AS `bobot`, `bobot_nilai`.`nilai` AS `nilai` FROM (`kriteria_c3` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c3`.`id_nilai`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_kriteria_c4`
--
DROP TABLE IF EXISTS `v_kriteria_c4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kriteria_c4`  AS SELECT `kriteria_c4`.`id_kriteria` AS `id_kriteria`, `kriteria_c4`.`sub_kriteria` AS `sub_kriteria`, `bobot_nilai`.`id_nilai` AS `id_nilai`, `bobot_nilai`.`bobot` AS `bobot`, `bobot_nilai`.`nilai` AS `nilai` FROM (`kriteria_c4` join `bobot_nilai` on(`bobot_nilai`.`id_nilai` = `kriteria_c4`.`id_nilai`))  ;

-- --------------------------------------------------------

--
-- Struktur untuk view `v_rating_kecocokan`
--
DROP TABLE IF EXISTS `v_rating_kecocokan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_rating_kecocokan`  AS SELECT `pegawai_tb`.`nama_pegawai` AS `nama_pegawai`, `v_kriteria_c1`.`nilai` AS `NC1`, `v_kriteria_c2`.`nilai` AS `NC2`, `v_kriteria_c3`.`nilai` AS `NC3`, `v_kriteria_c4`.`nilai` AS `NC4` FROM (((((`alternatif` join `v_kriteria_c1` on(`v_kriteria_c1`.`id_kriteria` = `alternatif`.`C1`)) join `v_kriteria_c2` on(`v_kriteria_c2`.`id_kriteria` = `alternatif`.`C2`)) join `v_kriteria_c3` on(`v_kriteria_c3`.`id_kriteria` = `alternatif`.`C3`)) join `v_kriteria_c4` on(`v_kriteria_c4`.`id_kriteria` = `alternatif`.`C4`)) join `pegawai_tb` on(`pegawai_tb`.`idpegawai` = `alternatif`.`idpegawai`))  ;

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
-- Indeks untuk tabel `pegawai_tb`
--
ALTER TABLE `pegawai_tb`
  ADD PRIMARY KEY (`idpegawai`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_nilai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c1`
--
ALTER TABLE `kriteria_c1`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c2`
--
ALTER TABLE `kriteria_c2`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c3`
--
ALTER TABLE `kriteria_c3`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c4`
--
ALTER TABLE `kriteria_c4`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pegawai_tb`
--
ALTER TABLE `pegawai_tb`
  MODIFY `idpegawai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
