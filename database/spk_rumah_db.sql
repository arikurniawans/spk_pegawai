-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 08 Agu 2022 pada 03.21
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `C4` int(4) NOT NULL,
  `C5` int(4) NOT NULL,
  `C6` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot_nilai`
--

CREATE TABLE `bobot_nilai` (
  `id_nilai` int(3) NOT NULL,
  `bobot` varchar(100) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c1`
--

CREATE TABLE `kriteria_c1` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'NILAI KESEHATAN PSYKOLOGI',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c2`
--

CREATE TABLE `kriteria_c2` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'NILAI DAN CATATAN DARI PIMPINAN',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 25,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c3`
--

CREATE TABLE `kriteria_c3` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'MASA DINAS',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 15,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria_c4`
--

CREATE TABLE `kriteria_c4` (
  `id_kriteria` int(4) NOT NULL,
  `nama_kriteria` varchar(100) NOT NULL DEFAULT 'KETERAMPILAN MENEMBAK',
  `sub_kriteria` varchar(100) NOT NULL,
  `bobot_kriteria` int(4) NOT NULL DEFAULT 20,
  `id_nilai` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  MODIFY `id_nilai` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `bobot_nilai`
--
ALTER TABLE `bobot_nilai`
  MODIFY `id_nilai` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `kriteria_c1`
--
ALTER TABLE `kriteria_c1`
  MODIFY `id_kriteria` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `rumah`
--
ALTER TABLE `rumah`
  MODIFY `id_rumah` int(3) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
