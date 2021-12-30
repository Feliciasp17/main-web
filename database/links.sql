-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2021 pada 17.29
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
-- Struktur dari tabel `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_zoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_zoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `links`
--

INSERT INTO `links` (`id`, `nama`, `url`, `id_zoom`, `pass_zoom`, `tipe`, `session_id`) VALUES
(1, 'link absensi tm', 'https://cegubaya.com/', NULL, NULL, 'absen', 1),
(2, 'link absensi 1', 'https://cegubaya.com/aboutus', NULL, NULL, 'absen', 2),
(3, 'link absensi 2', 'https://cegubaya.com/registration', NULL, NULL, 'absen', 3),
(4, 'link absensi 3', 'https://cegubaya.com/FAQ', NULL, NULL, 'absen', 4),
(5, 'link kuesioner 1', 'https://google.com', NULL, NULL, 'kuesioner', 5),
(6, 'link afterevent1', 'https://cegubaya.com/login', 'ini room zoom', 'ini password', 'after', 6),
(7, 'S4', 'https://us05web.zoom.us/j/2156504786?pwd=VElmVzN2aUZrTnA0ODF2eEszcHZDUT09', '215 650 4786', 'CEG2021', 'rally', 7),
(8, 'S6', 'https://us05web.zoom.us/j/3265557254?pwd=czl2bFRTcDVhbjJ4TzFTakh6eGtydz09', '326 555 7254', 'CEG2021', 'rally', 7),
(9, 'link gamebesar', 'https://cegubaya.com/registration', NULL, NULL, 'gamebesar', 7),
(10, 'S7', 'https://us05web.zoom.us/j/9830068309?pwd=L1I1OWpZN3d1eW8xUWFQNHg3NnRwQT09', '983 006 8309', 'CEG2021', 'rally', 7),
(11, 'S8', 'https://us05web.zoom.us/j/5791471119?pwd=Q2s5NFIyUE44WWR3VlBNUm5WMXMrQT09', '579 147 1119', 'CEG2021', 'rally', 7),
(12, 'S10', 'https://us05web.zoom.us/j/8948147306?pwd=TlNhdjdrbTh2ZkJXbWx0ckJGL3YxZz09', '537 599 7053', 'CEG2021', 'rally', 7),
(13, 'S13', 'https://us05web.zoom.us/j/9373775966?pwd=TXMrNXVMeURjS3FueU1MR1BQSU1kZz09', '937 377 5966', 'CEG2021', 'rally', 7),
(14, 'B1', 'https://us05web.zoom.us/j/4564473574?pwd=OHVTOTZBQlFPVEw0bWhETWJUYjlzUT09', '456 447 3574', 'CEG2021', 'rally', 7),
(15, 'B2', 'https://us05web.zoom.us/j/9712303396?pwd=aWgzNHBlQjBuNkMva2RrWU9KN0pzZz09', '971 230 3396', 'CEG2021', 'rally', 7),
(16, 'B4', 'https://us05web.zoom.us/j/9629383139?pwd=TWhDZUxSK0dBTDIxV2FKRzJvVkdnZz09', '962 938 3139', 'CEG2021', 'rally', 7),
(17, 'B5', 'https://us05web.zoom.us/j/7873629432?pwd=R0xjZnBqUXFhSE4rbC94QXBGT3lwdz09', '787 362 9432', 'CEG2021', 'rally', 7),
(18, 'B6', 'https://us05web.zoom.us/j/8693537143?pwd=dDJmanpOV0tnQ3FuOXRTaU1EQWV4Zz09', '869 353 7143', 'CEG2021', 'rally', 7),
(19, 'B7', 'https://us05web.zoom.us/j/8656489707?pwd=MlRWdWord1dGY2JQS0t0ZmpvWlhlQT09', '865 648 9707', 'CEG2021', 'rally', 7),
(20, 'B8', 'https://us05web.zoom.us/j/6208764883?pwd=L0JBOTUrSWdjUEIvT2l4YlZYMGl5dz09', '620 876 4883', 'CEG2021', 'rally', 7);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_session_id_foreign` (`session_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `active_session` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
