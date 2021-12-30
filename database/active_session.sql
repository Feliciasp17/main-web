-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2021 pada 17.28
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ceg`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `active_session`
--

CREATE TABLE `active_session` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mulai` datetime NOT NULL,
  `selesai` datetime NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `active_session`
--

INSERT INTO `active_session` (`id`, `kegiatan`, `tipe`, `mulai`, `selesai`, `keterangan`) VALUES
(1, 'absensi tm', 'absen', '2021-03-11 10:34:26', '2021-03-12 10:34:26', NULL),
(2, 'absensi day 1', 'absen', '2021-03-11 10:35:26', '2021-03-11 10:35:26', NULL),
(3, 'absensi day 2', 'absen', '2021-03-15 10:35:26', '2021-03-16 10:35:26', NULL),
(4, 'absensi day 3', 'absen', '2021-03-17 10:35:26', '2021-03-18 10:35:26', NULL),
(5, 'kuesioner1', 'kuesioner', '2021-03-11 12:50:36', '2021-03-11 23:50:36', NULL),
(6, 'after event 1', 'after', '2021-03-11 22:49:54', '2021-03-13 22:53:34', NULL),
(7, 'rally dan gamebesar', 'rally', '2021-03-11 21:58:51', '2021-03-16 23:25:32', NULL),
(8, 'Tidak ADa Sesi', 'kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `active_session`
--
ALTER TABLE `active_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `active_session`
--
ALTER TABLE `active_session`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
