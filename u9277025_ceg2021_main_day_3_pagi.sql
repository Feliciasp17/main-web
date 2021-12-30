-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 25, 2021 at 06:05 AM
-- Server version: 10.3.28-MariaDB-cll-lve
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u9277025_ceg2021_main`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_session`
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
-- Dumping data for table `active_session`
--

INSERT INTO `active_session` (`id`, `kegiatan`, `tipe`, `mulai`, `selesai`, `keterangan`) VALUES
(1, 'absensi tm', 'absen', '2021-04-16 00:00:00', '2021-04-16 01:00:00', 'TM'),
(2, 'technical meeting', 'acara', '2021-04-16 00:00:00', '2021-04-16 01:00:00', 'TM'),
(3, 'absensi day 1', 'absen', '2021-04-23 08:30:00', '2021-04-23 09:00:00', '1'),
(4, 'opening day 1', 'acara', '2021-04-23 09:00:00', '2021-04-23 10:05:00', '1'),
(5, 'rally gambes', 'rally', '2021-04-23 12:45:00', '2021-04-23 15:20:00', '1'),
(6, 'ishoma', 'ishoma', '2021-04-23 15:20:00', '2021-04-23 15:50:00', '1'),
(7, 'acara day 1', 'acara', '2021-04-23 15:50:00', '2021-04-23 16:27:00', '1'),
(8, 'kuesioner day 1', 'kuesioner', '2021-04-23 16:27:00', '2021-04-23 16:40:00', '1'),
(9, 'absensi day 2', 'absen', '2021-04-24 09:00:00', '2021-04-24 09:30:00', '2'),
(10, 'opening day 2', 'acara', '2021-04-24 09:30:00', '2021-04-24 10:10:00', '2'),
(11, 'Find The Antidote', 'acara', '2021-04-24 10:10:00', '2021-04-24 11:15:00', '2'),
(12, 'ishoma', 'ishoma', '2021-04-24 14:50:00', '2021-04-24 16:00:00', '2'),
(13, 'praktikum', 'semifinal', '2021-04-24 13:10:00', '2021-04-24 14:50:00', '2'),
(14, 'kuesioner day 2', 'kuesioner', '2021-04-24 16:27:00', '2021-04-24 16:37:00', '2'),
(15, 'absensi day 3', 'absen', '2021-04-25 08:00:00', '2021-04-25 08:30:00', '3'),
(16, 'opening day 3', 'acara', '2021-04-25 08:30:00', '2021-04-25 09:15:00', '3'),
(17, 'final', 'final', '2021-04-25 09:15:00', '2021-04-25 12:25:00', '3'),
(18, 'ishoma', 'ishoma', '2021-04-25 12:25:00', '2021-04-25 13:00:00', '3'),
(19, 'sesi presentasi', 'acara', '2021-04-25 13:00:00', '2021-04-25 15:42:00', '3'),
(20, 'kuesioner day 3', 'kuesioner', '2021-04-25 16:12:00', '2021-04-25 16:22:00', '3'),
(21, 'Tidak Ada Sesi', 'kosong', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0'),
(22, 'sesi pembacaan modul', 'semifinal', '2021-04-24 12:50:00', '2021-04-24 13:10:00', '2'),
(23, 'kuesioner TM', 'kuesioner', '2021-04-16 00:00:00', '2021-04-16 01:00:00', 'TM'),
(24, 'acara day 2', 'acara', '2021-04-24 16:00:00', '2021-04-24 16:27:00', '2'),
(29, 'status rally', 'aman', '2021-04-23 00:00:00', '2021-04-23 01:00:00', '1'),
(30, 'status gambes', 'aman', '2021-04-23 00:00:00', '2021-04-23 00:00:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','delete') COLLATE utf8mb4_unicode_ci NOT NULL,
  `view_role` enum('all','semifinal','final') COLLATE utf8mb4_unicode_ci DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `users_id`, `judul`, `subtitle`, `preview`, `isi`, `status`, `view_role`, `created_at`, `updated_at`) VALUES
(1, 1, 'Technical Meeting CEG 2021', 'Technical Meeting CEG 2021', 'Berikut adalah pengumuman seputar Technical Meeting CEG 2021 yang akan diadakan secara online...', '<p><span style=\"color: #ffffff;\"><strong><em>Technical Meeting</em> CEG 2021</strong></span></p>\r\n<ol>\r\n<li><span style=\"color: #ffffff;\"><em>Technical Meeting</em> akan dilaksanakan pada:</span><br /><span style=\"color: #ffffff;\"><strong>Hari, tanggal</strong>: Sabtu, 17 April 2021 </span><br /><span style=\"color: #ffffff;\"><strong>Waktu</strong>: 10.30 WIB - Selesai</span><br /><span style=\"color: #ffffff;\"><strong>Platform</strong>: Zoom</span></li>\r\n<li><span style=\"color: #ffffff;\">Registrasi akan <strong>dimulai pukul 10.00 WIB</strong> <strong>melalui <em>website</em> https://cegubaya.com</strong> dan hanya dilakukan oleh <strong>KETUA TIM</strong>.</span></li>\r\n<li><span style=\"color: #ffffff;\">Berikut merupakan cara registrasi di website</span></li>\r\n<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/bB89srIEB-c\" title=\"YouTube video player\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\r\n<li><span style=\"color: #ffffff;\">Link Zoom untuk <em>Technical Meeting</em> akan diperoleh dari <em>website</em> setelah melakukan registrasi.</span></li>\r\n<li><span style=\"color: #ffffff;\">Dresscode: Pakaian sopan berkerah</span></li>\r\n<li><span style=\"color: #ffffff;\"><strong>Format nama: Nama Tim_Nama Peserta</strong></span></li>\r\n<li><span style=\"color: #ffffff;\">Apabila tim belum di-<em>invite</em> ke grup besar peserta maka dapat kontak ke CP di bawah.</span></li>\r\n</ol>\r\n<p><span style=\"color: #ffffff;\"><em>Contact Person</em>: </span><br /><span style=\"color: #ffffff;\">Caren -&nbsp; 082281347064</span><br /><span style=\"color: #ffffff;\">Yenni Anggraeni - 081934692608</span></p>', 'active', 'all', '2021-04-14 11:51:29', '2021-04-14 11:51:29'),
(2, 1, 'Virtual Background & SOP Peserta', 'Virtual Background & SOP Peserta', 'Berikut adalah file Virtual Background yang harus dipakai peserta selama acara CEG 2021 berlangsung...', '<p style=\"text-align: left;\">Berikut adalah file <em>Virtual Background</em> yang harus dipakai peserta selama acara CEG 2021 berlangsung : <span style=\"text-decoration: underline;\"><strong><a title=\"Virtual Background Peserta CEG 2021\" href=\"https://drive.google.com/file/d/1sbEFDKtOir5wBcDJdreWVVP1LzEN07mx/view?usp=sharing\" target=\"_blank\">https://drive.google.com/file/d/1sbEFDKtOir5wBcDJdreWVVP1LzEN07mx/view?usp=sharing</a></strong></span></p>\r\n<p style=\"text-align: left;\">Peserta juga dimohon untuk memperhatikan <strong>SOP Peserta</strong> yang wajib dipatuhi selama acara berlangsung. File SOP Peserta CEG 2021 dapat di akses <a title=\"SOP Peserta CEG 2021\" href=\"https://cegubaya.com/mainweb/SOP_PESERTA_CEG_2021.pdf\" target=\"_blank\"><strong><span style=\"text-decoration: underline;\">DISINI</span></strong></a></p>\r\n<p style=\"text-align: left;\">Terima kasih atas perhatiannya.</p>', 'active', 'all', '2021-04-17 01:30:54', '2021-04-17 01:30:54'),
(3, 1, 'Twibbon Peserta CEG 2021', 'Twibbon Peserta CEG 2021', 'Silakan mengakses seluruh asset Twibbon CEG 2021 pada link berikut...', '<p>Silakan mengakses seluruh asset Twibbon CEG 2021 <a href=\"https://drive.google.com/drive/folders/1khKr7ehChN2qBA-App7huhxoyOOC7s3y?usp=sharing\" target=\"_blank\"><span style=\"text-decoration: underline;\"><strong>DISINI</strong></span></a></p>\r\n<p>Ketentuan Twibbon:</p>\r\n<ol>\r\n<li>Tag <a href=\"https://www.instagram.com/ceg.ubaya/\" target=\"_blank\"><strong>@ceg.ubaya</strong></a> dan <a href=\"https://www.instagram.com/officialtkubaya/\" target=\"_blank\"><strong>@officialtkubaya</strong></a></li>\r\n<li>Menggunakan caption sesuai dengan yang telah diberikan.</li>\r\n<li><strong>Batas upload di Instagram Kamis, 22 April 2021 pukul 19.00 WIB</strong>.</li>\r\n<li>Harus menampilkan wajah peserta.</li>\r\n<li>Foto bersifat pribadi dan tidak berkelompok.</li>\r\n</ol>\r\n<p>Terima kasih.</p>', 'active', 'all', '2021-04-17 02:06:20', '2021-04-17 02:06:20'),
(4, 1, 'Hasil TM dan Informasi Pre-Event CEG 2021', 'Hasil TM dan Informasi Pre-Event CEG 2021', 'Berikut ini adalah link untuk informasi terkait Technical Meeting, keperluan Pre-Event CEG 2021 serta link untuk pengumpulan Pre-Event CEG 2021...', '<p>Berikut ini adalah link untuk informasi terkait <em>Technical Meeting</em> dan keperluan <em>Pre-Event</em> CEG 2021 serta link untuk pengumpulan <em>Pre-Event</em> CEG 2021. Silakan mengakses link-link berikut :</p>\r\n<ol>\r\n<li><a href=\"http://tiny.cc/TechnicalMeetingCEG2021\" target=\"_blank\"><span style=\"text-decoration: underline;\"><strong>Hasil TM &amp; Asset Pre-Event</strong></span></a></li>\r\n<li><a href=\"http://tiny.cc/PengumpulanPreEvent\" target=\"_blank\"><span style=\"text-decoration: underline;\"><strong>Pengumpulan Hasil Pre-Event</strong></span></a></li>\r\n</ol>\r\n<p>Mohon memperhatikan nama dan nomor masing-masing Tim yang terdapat di dalam PPT hasil TM.</p>\r\n<p>Terima kasih atas perhatiannya. Sampai jumpa di CEG 2021 Day 1 !</p>', 'active', 'all', '2021-04-17 05:11:59', '2021-04-17 05:12:03'),
(5, 1, 'Form Kendala Peserta Day 1', 'Form Kendala Peserta Day 1', 'Apabila terjadi kendala pada saat berjalannya acara seperti jaringan yang tidak stabil atau semacamnya, dapat dilaporkan melalui link dibawah ini...', '<p>Apabila terjadi kendala pada saat berjalannya acara seperti jaringan yang tidak stabil atau semacamnya, dapat dilaporkan melalui link dibawah ini dengan menyertakan bukti sesuai dengan SOP yang telah disampaikan pada Technical Meeting. Terima kasih.</p>\r\n<p>Link Form Kendala Peserta Day 1 : <a href=\"https://tinyurl.com/G-FormKendalaPesertaDay1\" target=\"_blank\">https://tinyurl.com/G-FormKendalaPesertaDay1</a></p>', 'active', 'all', '2021-04-22 23:22:49', '2021-04-22 23:22:49'),
(6, 1, 'Sertifikat Day 1 Peserta CEG 2021', 'Sertifikat Day 1 Peserta CEG 2021', 'Selamat sore teman-teman, berikut link untuk sertifikat peserta CEG 2021 day 1...', '<p>Selamat sore teman-teman, berikut link untuk sertifikat peserta CEG 2021:</p>\r\n<p><a href=\"http://tiny.cc/SertifikatCEG-Day1\" target=\"_blank\">http://tiny.cc/SertifikatCEG-Day1</a></p>\r\n<p>Terima kasih dan Sampai Jumpa di CEG 2022!😊👋</p>\r\n<p>Apabila terdapat kesalahan penulisan nama dapat menghubungi:<br />-Yenni: 081934692608<br />-Lauren: 082127091553</p>', 'active', 'all', '2021-04-23 11:18:22', '2021-04-23 11:18:22'),
(7, 1, 'Peserta Semifinal CEG 2021', 'Peserta Semifinal CEG 2021', 'Congratulations ! Berikut adalah daftar peserta yang lolos ke babak semifinal CEG 2021...', '<p>Congratulations ! Berikut adalah daftar peserta yang lolos ke babak semifinal CEG 2021 :</p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-style: solid; margin-left: auto; margin-right: auto;\" border=\"2\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\"><strong>No. Tim</strong></td>\r\n<td style=\"width: 31.3208%; text-align: center;\"><strong>Nama Tim</strong></td>\r\n<td style=\"width: 52.8897%; text-align: center;\"><strong>Asal Sekolah</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>7</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Tenemden</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA St. Louis 1</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>9</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>PJJ</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Kristen Petra 5</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>11</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Katrol Wess</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Kristen Gloria 1</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>14</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>ROCKET 69</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Kristen Tritungal Semarang</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>16</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>UNO</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA IPH Schools East</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>18</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>PSTD1</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SPK SMAK 8 Penabur Jakarta</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>19</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>PSTD2</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SPK SMAK 8 Penabur Jakarta</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>21</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Rococo</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Kristen Petra 5</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>23</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Doa Guru</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMAN 5 Surabaya</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>24</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>SMARTACIDS</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA IPH School East</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>26</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>CESIUM</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMAN Bali Mandara</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>27</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Theobromine</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA St. Hendrikus</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>29</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Amaranth</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMAK St. Hendrikus</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>30</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>AlbayanSukabumi</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Pesantren Unggul Al Bayan Cibadak Sukabumi</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>32</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>TAFATIP</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Negeri 3 Semarang</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>34</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>three little booz</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA St. Louis 1</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>35</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>smakristenpetra1</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Kristen Petra 1</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>36</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>RBI SQUAD</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMAN 1 SDA</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>38</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>ARGON</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMAN 1 Glagah Banyuwangi</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>40</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>IPPHOS</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA St. Louis 1</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>45</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Madaers</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>MAN 2 Kota Malang</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>46</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Uranium</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMK SMAK Makassar</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>48</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Hakka B</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Harapan Kasih Bandung</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n<p>49</p>\r\n</td>\r\n<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n<p>Hakka A</p>\r\n</td>\r\n<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n<p>SMA Harapan Kasih Bandung</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>NB : Terdapat satu tim yang mengundurkan diri.</p>\r\n<p>Keputusan panitia bersifat mutlak dan tidak dapat diganggu gugat. Terima kasih atas perhatiannya ! See you at CEG 2021 Day 2 !</p>', 'active', 'all', '2021-04-23 14:52:30', '2021-04-23 14:52:30'),
(8, 1, 'Hasil Technical Meeting Semifinal CEG 2021', 'Hasil Technical Meeting Semifinal CEG 2021', 'Berikut adalah hasil Technical Meeting untuk babak Semifinal pada Day 2 yang telah diselenggarakan hari ini (23/04/2021)...', '<p>Berikut adalah hasil Technical Meeting untuk babak Semifinal pada Day 2 yang telah diselenggarakan hari ini (23/04/2021). Silakan mengakses file powerpoint TM pada link berikut :</p>\r\n<p>Link PPT TM : <strong><a href=\"https://drive.google.com/file/d/1-JGu0jWiEIvWkxgZxZEceINuXnXOWd_g/view?usp=sharing\" target=\"_blank\">https://drive.google.com/file/d/1-JGu0jWiEIvWkxgZxZEceINuXnXOWd_g/view?usp=sharing</a></strong></p>\r\n<p>Sekian dan terima kasih.</p>', 'active', 'semifinal', '2021-04-23 14:52:31', '2021-04-23 14:52:31'),
(9, 1, 'Form Kendala Peserta Day 2', 'Form Kendala Peserta Day 2', 'Apabila terjadi kendala pada saat berjalannya acara seperti jaringan yang tidak stabil atau semacamnya, dapat dilaporkan melalui link dibawah ini...', '<p>Apabila terjadi kendala pada saat berjalannya acara seperti jaringan yang tidak stabil atau semacamnya, dapat dilaporkan melalui link dibawah ini dengan menyertakan bukti sesuai dengan SOP yang telah disampaikan pada Technical Meeting. Terima kasih.</p>\r\n<p>Link Form Kendala Peserta Day 2 : <a href=\"https://tinyurl.com/G-FormKendalaPesertaDay2\" target=\"_blank\">https://tinyurl.com/G-FormKendalaPesertaDay2</a></p>', 'active', 'semifinal', '2021-04-23 23:50:10', '2021-04-23 23:50:10'),
(10, 1, 'Peserta Final CEG 2021', 'Peserta Final CEG 2021', 'Congratulations ! Berikut adalah daftar peserta yang lolos ke babak final CEG 2021...', '<p>Congratulations ! Berikut adalah daftar peserta yang lolos ke babak final CEG 2021 :</p>\r\n<table style=\"width: 100%; border-collapse: collapse; border-style: solid; margin-left: auto; margin-right: auto;\" border=\"2\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\"><strong>No. Tim</strong></td>\r\n			<td style=\"width: 31.3208%; text-align: center;\"><strong>Nama Tim</strong></td>\r\n			<td style=\"width: 52.8897%; text-align: center;\"><strong>Asal Sekolah</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>7</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>Tenemden</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMA St. Louis 1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>16</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>UNO</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMA IPH Schools East</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>21</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>Rococo</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMA Kristen Petra 5</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>23</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>Doa Guru</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMAN 5 Surabaya</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>30</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>AlbayanSukabumi</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMA Pesantren Unggul Al Bayan Cibadak Sukabumi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>35</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>smakristenpetra1</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMA Kristen Petra 1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>38</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>ARGON</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMAN 1 Glagah Banyuwangi</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>40</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>IPPHOS</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMA St. Louis 1</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>45</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>Madaers</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>MAN 2 Kota Malang</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width: 15.7894%; text-align: center;\" width=\"104\">\r\n				<p>46</p>\r\n			</td>\r\n			<td style=\"width: 31.3208%; text-align: center;\" width=\"151\">\r\n				<p>Uranium</p>\r\n			</td>\r\n			<td style=\"width: 52.8897%; text-align: center;\" width=\"196\">\r\n				<p>SMK SMAK Makassar</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>Keputusan panitia bersifat mutlak dan tidak dapat diganggu gugat. Terima kasih atas perhatiannya ! See you at CEG 2021 Day 3 !</p>', 'active', 'semifinal', '2021-04-24 10:01:23', '2021-04-24 10:01:23'),
(11, 1, 'Form Kendala Peserta Day 3', 'Form Kendala Peserta Day 3', 'Apabila terjadi kendala pada saat berjalannya acara seperti jaringan yang tidak stabil atau semacamnya, dapat dilaporkan melalui link dibawah ini...', '<p>Apabila terjadi kendala pada saat berjalannya acara seperti jaringan yang tidak stabil atau semacamnya, dapat dilaporkan melalui link dibawah ini dengan menyertakan bukti sesuai dengan SOP yang telah disampaikan pada Technical Meeting. Terima kasih.</p>\r\n<p>Link Form Kendala Peserta Day 3 : <a href=\"https://tinyurl.com/G-FormKendalaPesertaDay3\" target=\"_blank\">https://tinyurl.com/G-FormKendalaPesertaDay3</a></p>', 'delete', 'final', '2021-04-25 00:00:00', '2021-04-25 00:00:00'),
(12, 1, 'Sertifikat Day 2 Peserta CEG 2021', 'Sertifikat Day 2 Peserta CEG 2021', 'Selamat sore teman-teman, berikut link untuk sertifikat peserta CEG 2021 day 2...', '<p>Selamat malam teman-teman, berikut link untuk sertifikat peserta CEG 2021:</p>\r\n<p><a href=\"http://tiny.cc/SertifikatCEG-Day2\" target=\"_blank\">http://tiny.cc/SertifikatCEG-Day2</a></p>\r\n<p>Terima kasih dan Sampai Jumpa di CEG 2022!😊👋</p>\r\n<p>Apabila terdapat kesalahan penulisan nama dapat menghubungi:<br />-Yenni: 081934692608<br />-Lauren: 082127091553</p>', 'active', 'semifinal', '2021-04-24 15:19:06', '2021-04-24 15:19:06'),
(13, 1, 'Hasil Technical Meeting Final CEG 2021', 'Hasil Technical Meeting Final CEG 2021', 'Berikut adalah hasil Technical Meeting untuk babak Final pada Day 3 yang telah diselenggarakan hari ini (24/04/2021)...', '<p>Berikut adalah hasil Technical Meeting untuk babak Final pada Day 3 yang telah diselenggarakan hari ini (24/04/2021). Silakan mengakses file powerpoint TM pada link berikut :</p>\r\n<p>Link PPT TM : <strong><a href=\"https://drive.google.com/file/d/133Uq0WjFKvO3JxrT62xjKCFr3JPeCIph/view?usp=sharing\" target=\"_blank\">https://drive.google.com/file/d/133Uq0WjFKvO3JxrT62xjKCFr3JPeCIph/view?usp=sharing</a></strong></p>\r\n<p>Sekian dan terima kasih.</p>', 'active', 'final', '2021-04-24 15:19:07', '2021-04-24 15:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_bukti`
--

CREATE TABLE `file_bukti` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_bukti`
--

INSERT INTO `file_bukti` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Pembayaran_CEG_2021_RRQ HOSHI_William Hendrawinata.jpeg', '2021-01-17 08:53:02', '2021-01-17 08:53:02'),
(2, 'Pembayaran_CEG_2021_JFC_Marius Boko.jpg', '2021-01-24 06:54:19', '2021-01-24 06:54:19'),
(3, 'Pembayaran_CEG_2021_LiLiLi_Mettasanti Sutedjo.jpg', '2021-01-25 22:03:07', '2021-01-25 22:03:07'),
(4, 'Pembayaran_CEG_2021_Terserah_Evelyn Andrea.jpg', '2021-02-03 02:27:02', '2021-02-03 02:27:02'),
(5, 'Pembayaran_CEG_2021_Think tank_Reynold Prajogo.jpg', '2021-02-05 20:19:30', '2021-02-05 20:19:30'),
(6, '1612590243758.jpg', '2021-02-05 22:47:00', '2021-02-05 22:47:00'),
(7, '1612590243758.jpg', '2021-02-05 22:47:22', '2021-02-05 22:47:22'),
(8, 'Pembayaran_CEG_2021_tenemden_Lianawati Suryanto.jpg', '2021-02-06 21:23:17', '2021-02-06 21:23:17'),
(9, 'Pembayaran_CEG_2021_Luck, Pray and Amen_JENIWATI.jpeg', '2021-02-09 21:01:56', '2021-02-09 21:01:56'),
(10, '2634.jpg', '2021-02-10 02:54:14', '2021-02-10 02:54:14'),
(11, 'Pembayaran_CEG_2021_Santuy Squad_Naufal Revaldy Fauzan.jpg', '2021-02-11 23:28:36', '2021-02-11 23:28:36'),
(12, 'Pembayaran_CEG_2021_Katrol Wess_Lily Todar.jpg', '2021-02-12 08:08:32', '2021-02-12 08:08:32'),
(13, 'Pembayaran_CEG_2021_Chemystery Solvers_Liliana Kowardi.jpg', '2021-02-13 07:36:34', '2021-02-13 07:36:34'),
(14, 'Pembayaran_CEG_2021_sournitrate_Yovita Dini Ariani.jpg', '2021-02-14 00:34:28', '2021-02-14 00:34:28'),
(15, 'Pembayaran_CEG_2021_Wani Nyoba_Syahrul andrian.jpg', '2021-02-14 07:23:16', '2021-02-14 07:23:16'),
(16, 'Pembayaran_CEG_2021_PSTD3_John Paulus Abineno.jpg', '2021-02-14 07:41:44', '2021-02-14 07:41:44'),
(17, 'Pembayaran_CEG_2021_Rococo_Timotius Oliver.jpg', '2021-02-14 08:04:19', '2021-02-14 08:04:19'),
(18, 'Pembayaran_CEG_2021_UNO_Ngo Mega Agustin.jpg', '2021-02-14 08:45:07', '2021-02-14 08:45:07'),
(19, 'Pembayaran_CEG_2021_UNO_Ngo Mega Agustin.jpg', '2021-02-14 08:45:22', '2021-02-14 08:45:22'),
(20, 'Pembayaran_CEG_2021_SMARTACIDS_Dianpranatal.JPG', '2021-02-14 22:56:32', '2021-02-14 22:56:32'),
(21, 'Pembayaran_CEG_2021_SMARTACIDS_Dianpranatal.JPG', '2021-02-14 22:56:42', '2021-02-14 22:56:42'),
(22, 'Bukti TF.jpeg', '2021-02-14 23:53:26', '2021-02-14 23:53:26'),
(23, 'WhatsApp Image 2021-02-15 at 2.55.16 PM.jpeg', '2021-02-15 01:26:44', '2021-02-15 01:26:44'),
(24, 'WhatsApp Image 2021-02-15 at 2.55.16 PM.jpeg', '2021-02-15 01:27:22', '2021-02-15 01:27:22'),
(25, 'WhatsApp Image 2021-02-15 at 19.04.16.jpeg', '2021-02-15 06:26:10', '2021-02-15 06:26:10'),
(26, 'WhatsApp Image 2021-02-15 at 19.04.16.jpeg', '2021-02-15 06:26:25', '2021-02-15 06:26:25'),
(27, 'WhatsApp Image 2021-02-15 at 19.04.16.jpeg', '2021-02-15 06:26:43', '2021-02-15 06:26:43'),
(28, 'WhatsApp Image 2021-02-15 at 19.04.16.jpeg', '2021-02-15 06:27:02', '2021-02-15 06:27:02'),
(29, 'Pembayaran_CEG_2021_PSTD4_John Paulus Abineno.jpeg', '2021-02-16 01:21:19', '2021-02-16 01:21:19'),
(30, 'Pembayaran_CEG_2021_Eternal_Susanti.jpg', '2021-03-05 16:00:20', '2021-03-05 16:00:20'),
(31, 'Pembyrn_CEG_2021_CESIUM_Ni Kadek Ayu Widayanti.jpg', '2021-03-15 20:00:27', '2021-03-15 20:00:27'),
(32, 'Pembayaran_CEG_2021_Theobromine_Felicia Yoshe.jpg', '2021-03-16 18:28:13', '2021-03-16 18:28:13'),
(33, 'Pembayaran_CEG_2021_Amaranth_Rika Segoh.jpeg', '2021-03-17 22:30:00', '2021-03-17 22:30:00'),
(34, 'Pembayaran_CEG_2021_Titanium_Ayu Rhisma Tianingsih.jpg', '2021-03-18 00:43:32', '2021-03-18 00:43:32'),
(35, 'Pembayaran_CEG_2021_Kosayu_Kolese Santo Yusup Yayasan.jpeg', '2021-03-22 05:33:36', '2021-03-22 05:33:36'),
(36, 'IMG-20210320-WA0032.jpg', '2021-03-22 16:55:17', '2021-03-22 16:55:17'),
(37, 'IMG-20210320-WA0032.jpg', '2021-03-22 21:07:28', '2021-03-22 21:07:28'),
(38, 'IMG-20210320-WA0032.jpg', '2021-03-23 22:04:03', '2021-03-23 22:04:03'),
(39, 'Pembayaran_CEG_2021_TAFATIP_Arief Saksono.jpg', '2021-03-25 06:55:49', '2021-03-25 06:55:49'),
(40, '1616669195347.jpg', '2021-03-25 08:16:49', '2021-03-25 08:16:49'),
(41, 'Pembayaran_CEG_2021_three little booz_Natalia Ivoni Indra.jpg', '2021-03-25 19:07:31', '2021-03-25 19:07:31'),
(42, 'IMG-20210325-WA0001.jpg', '2021-03-27 05:41:37', '2021-03-27 05:41:37'),
(43, 'Pembayaran_CEG_2021_Orioniria_Sri Lestari Siguntar Alam.jpg', '2021-03-27 05:44:06', '2021-03-27 05:44:06'),
(44, 'Pembayaran_CEG_2021_smakristenpetra1_BCA.jpeg', '2021-04-02 19:55:27', '2021-04-02 19:55:27'),
(45, 'Pembayaran_CEG_2021_tim smanim_hauratul zahra.jpg', '2021-04-06 07:02:58', '2021-04-06 07:02:58'),
(46, 'Pembayaran_CEG_2021_RBI SQUAD_Parlindungan Marcelino.jpg', '2021-04-08 05:42:35', '2021-04-08 05:42:35'),
(47, 'Pembayaran_CEG_2021_Argon_SUCI ARIN ANNISA.jpg', '2021-04-08 07:27:23', '2021-04-08 07:27:23'),
(48, 'Pembayaran_CEG_2021_SMAN 1 PULE_PURWITO.jpg', '2021-04-09 01:09:57', '2021-04-09 01:09:57'),
(49, 'Pembayaran_CEG_2021_Wawan Cakep_KENNITA ALVINA JOD.jpg', '2021-04-09 03:37:29', '2021-04-09 03:37:29'),
(50, 'Pembayaran_CEG_2021_Wawan Cakep_CORNELLIUS POWELLNANDUS RONGKANG.jpg', '2021-04-09 06:06:49', '2021-04-09 06:06:49'),
(51, 'Pembayaran_CEG_2021_Madaers_Brilliant filby.jpeg', '2021-04-09 10:07:50', '2021-04-09 10:07:50'),
(52, 'bukti pembayaran.jpg', '2021-04-09 10:27:08', '2021-04-09 10:27:08'),
(53, 'Pembayaran_CEG_2021_Uranium_MUH SYACHRUL.jpg', '2021-04-09 23:42:26', '2021-04-09 23:42:26'),
(54, '92E03C7F-EC17-403A-86E7-FABBE06DEAC1.jpeg', '2021-04-10 03:18:14', '2021-04-10 03:18:14'),
(55, 'Pembayaran_CEG_2021_Asam Kuadrat_Budy Setiarti.jpg', '2021-04-15 03:58:04', '2021-04-15 03:58:04'),
(56, 'Pembayaran_CEG_2021_Hakka A_Harapan Kasih.jpg', '2021-04-15 17:38:06', '2021-04-15 17:38:06'),
(57, 'IMG_20210416_164241.jpg', '2021-04-16 02:44:27', '2021-04-16 02:44:27'),
(58, 'IMG_20210416_164241.jpg', '2021-04-16 02:44:48', '2021-04-16 02:44:48');

-- --------------------------------------------------------

--
-- Table structure for table `file_zip`
--

CREATE TABLE `file_zip` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_zip`
--

INSERT INTO `file_zip` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'CEG_2021_RRQ HOSHI.zip', '2021-01-17 08:40:07', '2021-01-17 08:40:07'),
(2, 'CEG_2021_JFC.zip', '2021-01-20 21:21:55', '2021-01-20 21:21:55'),
(3, 'CEG_2021_JFC.zip', '2021-01-21 22:40:41', '2021-01-21 22:40:41'),
(4, 'CEG_2021_LiLiLi.zip', '2021-01-24 07:30:47', '2021-01-24 07:30:47'),
(5, 'CEG_2021_Terserah.zip', '2021-02-03 02:05:54', '2021-02-03 02:05:54'),
(6, 'CEG_2021_Kent And Friends.', '2021-02-04 07:43:39', '2021-02-04 07:43:39'),
(7, 'CEG_2021_Think tank.zip', '2021-02-05 20:12:50', '2021-02-05 20:12:50'),
(8, 'CEG_2021_tenemden.zip', '2021-02-06 21:10:10', '2021-02-06 21:10:10'),
(9, 'CEG_2021_Luck, Pray and Amen.zip', '2021-02-09 19:04:43', '2021-02-09 19:04:43'),
(10, 'CEG_2021_PJJ.zip', '2021-02-10 00:02:11', '2021-02-10 00:02:11'),
(11, 'CEG_2021_Santuy Squad.zip', '2021-02-10 17:04:47', '2021-02-10 17:04:47'),
(24, 'CEG_2021_PSTD4.zip', '2021-02-14 05:03:59', '2021-02-14 05:03:59'),
(19, 'CEG_2021_Chemystery Solvers.zip', '2021-02-13 03:23:27', '2021-02-13 03:23:27'),
(18, 'CEG_2021_sournitrate.zip', '2021-02-12 23:45:50', '2021-02-12 23:45:50'),
(17, 'CEG_2021_Katrol Wess.zip', '2021-02-12 07:35:59', '2021-02-12 07:35:59'),
(20, 'CEG_2021_ROCKET 69.zip', '2021-02-13 06:44:37', '2021-02-13 06:44:37'),
(21, 'CEG_2021_YINKA 69.zip', '2021-02-13 07:08:34', '2021-02-13 07:08:34'),
(22, 'CEG_2021_UNO.zip', '2021-02-13 07:14:25', '2021-02-13 07:14:25'),
(25, 'CEG_2021_PSTD1.zip', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(26, 'CEG_2021_PSTD2.zip', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(27, 'CEG_2021_PSTD3.zip', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(28, 'CEG_2021_Rococo.zip', '2021-02-14 05:22:23', '2021-02-14 05:22:23'),
(29, 'CEG_2021_Wani Nyoba.zip', '2021-02-14 05:47:45', '2021-02-14 05:47:45'),
(30, 'CEG_2021_Doa Guru.zip', '2021-02-14 08:10:25', '2021-02-14 08:10:25'),
(31, 'CEG_2021_SMARTACIDS.zip', '2021-02-14 20:00:49', '2021-02-14 20:00:49'),
(32, 'CEG_2021_Wani Nyoba.zip', '2021-02-15 02:10:56', '2021-02-15 02:10:56'),
(33, 'CEG_2021_Wani Nyoba.zip', '2021-02-15 02:11:26', '2021-02-15 02:11:26'),
(34, 'CEG_2021_Eternal.zip', '2021-03-05 15:59:37', '2021-03-05 15:59:37'),
(35, 'CEG_2021_CESIUM (Chemical Squad with Incredible and Unbeatable Squad).zip', '2021-03-15 19:18:26', '2021-03-15 19:18:26'),
(36, 'CEG_2021_Theobromine.zip', '2021-03-16 18:24:16', '2021-03-16 18:24:16'),
(37, 'CEG_2021_Titanium Team SMA JAC SBY.zip', '2021-03-17 20:28:53', '2021-03-17 20:28:53'),
(38, 'CEG_2021_Amaranth.zip', '2021-03-17 22:10:48', '2021-03-17 22:10:48'),
(39, 'CEG_2021_AlbayanSukabumi.zip', '2021-03-18 00:05:15', '2021-03-18 00:05:15'),
(40, 'CEG_2021_Santuy Squad.zip', '2021-03-19 01:47:00', '2021-03-19 01:47:00'),
(41, 'CEG_2021_Kosayu.zip', '2021-03-21 23:07:03', '2021-03-21 23:07:03'),
(42, 'CEG_2021_TAFATIP.zip', '2021-03-24 18:23:35', '2021-03-24 18:23:35'),
(43, 'CEG_2021_Orioniria.zip', '2021-03-25 00:08:38', '2021-03-25 00:08:38'),
(44, 'CEG_2021_three little booz.zip', '2021-03-25 00:39:03', '2021-03-25 00:39:03'),
(45, 'CEG_2021_smakristenpetra1.zip', '2021-03-31 23:50:22', '2021-03-31 23:50:22'),
(46, 'CEG_2021_RBI SQUAD.zip', '2021-04-05 19:06:29', '2021-04-05 19:06:29'),
(47, 'CEG_2021_Tim SMANIM.zip', '2021-04-06 06:21:22', '2021-04-06 06:21:22'),
(48, 'CEG_2021_ARGON.zip', '2021-04-08 07:03:41', '2021-04-08 07:03:41'),
(49, 'CEG_2021_Wawan Cakep.zip', '2021-04-08 17:18:14', '2021-04-08 17:18:14'),
(50, 'CEG_2021_IPPHOS.zip', '2021-04-08 20:56:30', '2021-04-08 20:56:30'),
(51, 'CEG_2021_Tim Penyelenggara.zip', '2021-04-09 00:44:33', '2021-04-09 00:44:33'),
(52, 'CEG_2021_Tim Ar-Rahman.zip', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(53, 'CEG_2021_Pilon Team.zip', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(54, 'CEG_2021_Tim Penyelenggara.zip', '2021-04-09 00:53:34', '2021-04-09 00:53:34'),
(55, 'CEG_2021_Asam Kuadrat.zip', '2021-04-09 01:37:08', '2021-04-09 01:37:08'),
(56, 'CEG_2021_Madaers.zip', '2021-04-09 09:52:19', '2021-04-09 09:52:19'),
(57, 'CEG_2021_Uranium.zip', '2021-04-09 21:13:38', '2021-04-09 21:13:38'),
(58, 'CEG_2021_BENZENA.zip', '2021-04-10 02:26:23', '2021-04-10 02:26:23'),
(59, 'CEG_2021_Hakka B.zip', '2021-04-10 07:24:04', '2021-04-10 07:24:04'),
(60, 'CEG_2021_Hakka A.zip', '2021-04-10 07:40:19', '2021-04-10 07:40:19'),
(61, 'CEG_2021_Super SI.zip', '2021-04-10 09:26:05', '2021-04-10 09:26:05'),
(62, 'CEG_2021_Asam Kuadrat.zip', '2021-04-11 20:24:56', '2021-04-11 20:24:56');

-- --------------------------------------------------------

--
-- Table structure for table `kab_kota`
--

CREATE TABLE `kab_kota` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kab_kota`
--

INSERT INTO `kab_kota` (`id`, `nama`, `provinsi_id`, `created_at`, `updated_at`) VALUES
(1, 'CILEGON', 1, NULL, NULL),
(2, 'LEBAK', 1, NULL, NULL),
(3, 'PANDEGLANG', 1, NULL, NULL),
(4, 'SERANG', 1, NULL, NULL),
(5, 'TANGERANG', 1, NULL, NULL),
(6, 'TANGERANG SELATAN', 1, NULL, NULL),
(7, 'JAKARTA BARAT', 2, NULL, NULL),
(8, 'JAKARTA PUSAT', 2, NULL, NULL),
(9, 'JAKARTA SELATAN', 2, NULL, NULL),
(10, 'JAKARTA TIMUR', 2, NULL, NULL),
(11, 'JAKARTA UTARA', 2, NULL, NULL),
(12, 'KEPULAUAN SERIBU', 2, NULL, NULL),
(13, 'BANDUNG', 3, NULL, NULL),
(14, 'BANDUNG BARAT', 3, NULL, NULL),
(15, 'BANJAR', 3, NULL, NULL),
(16, 'BEKASI', 3, NULL, NULL),
(17, 'BOGOR', 3, NULL, NULL),
(18, 'CIAMIS', 3, NULL, NULL),
(19, 'CIANJUR', 3, NULL, NULL),
(20, 'CIMAHI', 3, NULL, NULL),
(21, 'CIREBON', 3, NULL, NULL),
(22, 'DEPOK', 3, NULL, NULL),
(23, 'GARUT', 3, NULL, NULL),
(24, 'INDRAMAYU', 3, NULL, NULL),
(25, 'KARAWANG', 3, NULL, NULL),
(26, 'KUNINGAN', 3, NULL, NULL),
(27, 'MAJALENGKA', 3, NULL, NULL),
(28, 'PANGANDARAN', 3, NULL, NULL),
(29, 'PURWAKARTA', 3, NULL, NULL),
(30, 'SUBANG', 3, NULL, NULL),
(31, 'SUKABUMI', 3, NULL, NULL),
(32, 'SUMEDANG', 3, NULL, NULL),
(33, 'TASIKMALAYA', 3, NULL, NULL),
(34, 'BANJARNEGARA', 4, NULL, NULL),
(35, 'BANYUMAS', 4, NULL, NULL),
(36, 'BATANG', 4, NULL, NULL),
(37, 'BLORA', 4, NULL, NULL),
(38, 'BOYOLALI', 4, NULL, NULL),
(39, 'BREBES', 4, NULL, NULL),
(40, 'CILACAP', 4, NULL, NULL),
(41, 'DEMAK', 4, NULL, NULL),
(42, 'GROBOGAN', 4, NULL, NULL),
(43, 'JEPARA', 4, NULL, NULL),
(44, 'KARANGANYAR', 4, NULL, NULL),
(45, 'KEBUMEN', 4, NULL, NULL),
(46, 'KENDAL', 4, NULL, NULL),
(47, 'KLATEN', 4, NULL, NULL),
(48, 'KUDUS', 4, NULL, NULL),
(49, 'MAGELANG', 4, NULL, NULL),
(50, 'PATI', 4, NULL, NULL),
(51, 'PEKALONGAN', 4, NULL, NULL),
(52, 'PEMALANG', 4, NULL, NULL),
(53, 'PURBALINGGA', 4, NULL, NULL),
(54, 'PURWOREJO', 4, NULL, NULL),
(55, 'REMBANG', 4, NULL, NULL),
(56, 'SALATIGA', 4, NULL, NULL),
(57, 'SEMARANG', 4, NULL, NULL),
(58, 'SRAGEN', 4, NULL, NULL),
(59, 'SUKOHARJO', 4, NULL, NULL),
(60, 'SURAKARTA (SOLO)', 4, NULL, NULL),
(61, 'TEGAL', 4, NULL, NULL),
(62, 'TEMANGGUNG', 4, NULL, NULL),
(63, 'WONOGIRI', 4, NULL, NULL),
(64, 'WONOSOBO', 4, NULL, NULL),
(65, 'BANTUL', 5, NULL, NULL),
(66, 'GUNUNG KIDUL', 5, NULL, NULL),
(67, 'KULON PROGO', 5, NULL, NULL),
(68, 'SLEMAN', 5, NULL, NULL),
(69, 'YOGYAKARTA', 5, NULL, NULL),
(70, 'BANGKALAN', 6, NULL, NULL),
(71, 'BANYUWANGI', 6, NULL, NULL),
(72, 'BATU', 6, NULL, NULL),
(73, 'BLITAR', 6, NULL, NULL),
(74, 'BOJONEGORO', 6, NULL, NULL),
(75, 'BONDOWOSO', 6, NULL, NULL),
(76, 'GRESIK', 6, NULL, NULL),
(77, 'JEMBER', 6, NULL, NULL),
(78, 'JOMBANG', 6, NULL, NULL),
(79, 'KEDIRI', 6, NULL, NULL),
(80, 'LAMONGAN', 6, NULL, NULL),
(81, 'LUMAJANG', 6, NULL, NULL),
(82, 'MADIUN', 6, NULL, NULL),
(83, 'MAGETAN', 6, NULL, NULL),
(84, 'MALANG', 6, NULL, NULL),
(85, 'MOJOKERTO', 6, NULL, NULL),
(86, 'NGANJUK', 6, NULL, NULL),
(87, 'NGAWI', 6, NULL, NULL),
(88, 'PACITAN', 6, NULL, NULL),
(89, 'PAMEKASAN', 6, NULL, NULL),
(90, 'PASURUAN', 6, NULL, NULL),
(91, 'PONOROGO', 6, NULL, NULL),
(92, 'PROBOLINGGO', 6, NULL, NULL),
(93, 'SAMPANG', 6, NULL, NULL),
(94, 'SIDOARJO', 6, NULL, NULL),
(95, 'SITUBONDO', 6, NULL, NULL),
(96, 'SUMENEP', 6, NULL, NULL),
(97, 'SURABAYA', 6, NULL, NULL),
(98, 'TRENGGALEK', 6, NULL, NULL),
(99, 'TUBAN', 6, NULL, NULL),
(100, 'TULUNGAGUNG', 6, NULL, NULL),
(101, 'BADUNG', 7, NULL, NULL),
(102, 'BANGLI', 7, NULL, NULL),
(103, 'BULELENG', 7, NULL, NULL),
(104, 'DENPASAR', 7, NULL, NULL),
(105, 'GIANYAR', 7, NULL, NULL),
(106, 'JEMBRANA', 7, NULL, NULL),
(107, 'KARANGASEM', 7, NULL, NULL),
(108, 'KLUNGKUNG', 7, NULL, NULL),
(109, 'TABANAN', 7, NULL, NULL),
(110, 'ACEH BARAT', 8, NULL, NULL),
(111, 'ACEH BARAT DAYA', 8, NULL, NULL),
(112, 'ACEH BESAR', 8, NULL, NULL),
(113, 'ACEH JAYA', 8, NULL, NULL),
(114, 'ACEH SELATAN', 8, NULL, NULL),
(115, 'ACEH SINGKIL', 8, NULL, NULL),
(116, 'ACEH TAMIANG', 8, NULL, NULL),
(117, 'ACEH TENGAH', 8, NULL, NULL),
(118, 'ACEH TENGGARA', 8, NULL, NULL),
(119, 'ACEH TIMUR', 8, NULL, NULL),
(120, 'ACEH UTARA', 8, NULL, NULL),
(121, 'BANDA ACEH', 8, NULL, NULL),
(122, 'BENER MERIAH', 8, NULL, NULL),
(123, 'BIREUEN', 8, NULL, NULL),
(124, 'GAYO LUES', 8, NULL, NULL),
(125, 'LANGSA', 8, NULL, NULL),
(126, 'LHOKSEUMAWE', 8, NULL, NULL),
(127, 'NAGAN RAYA', 8, NULL, NULL),
(128, 'PIDIE', 8, NULL, NULL),
(129, 'PIDIE JAYA', 8, NULL, NULL),
(130, 'SABANG', 8, NULL, NULL),
(131, 'SIMEULUE', 8, NULL, NULL),
(132, 'SUBULUSSALAM', 8, NULL, NULL),
(133, 'ASAHAN', 9, NULL, NULL),
(134, 'BATU BARA', 9, NULL, NULL),
(135, 'BINJAI', 9, NULL, NULL),
(136, 'DAIRI', 9, NULL, NULL),
(137, 'DELI SERDANG', 9, NULL, NULL),
(138, 'GUNUNGSITOLI', 9, NULL, NULL),
(139, 'HUMBANG HASUNDUTAN', 9, NULL, NULL),
(140, 'KARO', 9, NULL, NULL),
(141, 'LABUHAN BATU', 9, NULL, NULL),
(142, 'LABUHAN BATU SELATAN', 9, NULL, NULL),
(143, 'LABUHAN BATU UTARA', 9, NULL, NULL),
(144, 'LANGKAT', 9, NULL, NULL),
(145, 'MANDAILING NATAL', 9, NULL, NULL),
(146, 'MEDAN', 9, NULL, NULL),
(147, 'NIAS', 9, NULL, NULL),
(148, 'NIAS BARAT', 9, NULL, NULL),
(149, 'NIAS SELATAN', 9, NULL, NULL),
(150, 'NIAS UTARA', 9, NULL, NULL),
(151, 'PADANG LAWAS', 9, NULL, NULL),
(152, 'PADANG LAWAS UTARA', 9, NULL, NULL),
(153, 'PADANG SIDEMPUAN', 9, NULL, NULL),
(154, 'PAKPAK BHARAT', 9, NULL, NULL),
(155, 'PEMATANG SIANTAR', 9, NULL, NULL),
(156, 'SAMOSIR', 9, NULL, NULL),
(157, 'SERDANG BEDAGAI', 9, NULL, NULL),
(158, 'SIBOLGA', 9, NULL, NULL),
(159, 'SIMALUNGUN', 9, NULL, NULL),
(160, 'TANJUNG BALAI', 9, NULL, NULL),
(161, 'TAPANULI SELATAN', 9, NULL, NULL),
(162, 'TAPANULI TENGAH', 9, NULL, NULL),
(163, 'TAPANULI UTARA', 9, NULL, NULL),
(164, 'TEBING TINGGI', 9, NULL, NULL),
(165, 'TOBA SAMOSIR', 9, NULL, NULL),
(166, 'AGAM', 10, NULL, NULL),
(167, 'BUKITTINGGI', 10, NULL, NULL),
(168, 'DHARMASRAYA', 10, NULL, NULL),
(169, 'KEPULAUAN MENTAWAI', 10, NULL, NULL),
(170, 'LIMA PULUH KOTO/KOTA', 10, NULL, NULL),
(171, 'PADANG', 10, NULL, NULL),
(172, 'PADANG PANJANG', 10, NULL, NULL),
(173, 'PADANG PARIAMAN', 10, NULL, NULL),
(174, 'PARIAMAN', 10, NULL, NULL),
(175, 'PASAMAN', 10, NULL, NULL),
(176, 'PASAMAN BARAT', 10, NULL, NULL),
(177, 'PAYAKUMBUH', 10, NULL, NULL),
(178, 'PESISIR SELATAN', 10, NULL, NULL),
(179, 'SAWAH LUNTO', 10, NULL, NULL),
(180, 'SIJUNJUNG (SAWAH LUNTO SIJUNJUNG)', 10, NULL, NULL),
(181, 'SOLOK', 10, NULL, NULL),
(182, 'SOLOK SELATAN', 10, NULL, NULL),
(183, 'TANAH DATAR', 10, NULL, NULL),
(184, 'BENGKALIS', 11, NULL, NULL),
(185, 'DUMAI', 11, NULL, NULL),
(186, 'INDRAGIRI HILIR', 11, NULL, NULL),
(187, 'INDRAGIRI HULU', 11, NULL, NULL),
(188, 'KAMPAR', 11, NULL, NULL),
(189, 'KEPULAUAN MERANTI', 11, NULL, NULL),
(190, 'KUANTAN SINGINGI', 11, NULL, NULL),
(191, 'PEKANBARU', 11, NULL, NULL),
(192, 'PELALAWAN', 11, NULL, NULL),
(193, 'ROKAN HILIR', 11, NULL, NULL),
(194, 'ROKAN HULU', 11, NULL, NULL),
(195, 'SIAK', 11, NULL, NULL),
(196, 'BATAM', 12, NULL, NULL),
(197, 'BINTAN', 12, NULL, NULL),
(198, 'KARIMUN', 12, NULL, NULL),
(199, 'KEPULAUAN ANAMBAS', 12, NULL, NULL),
(200, 'LINGGA', 12, NULL, NULL),
(201, 'NATUNA', 12, NULL, NULL),
(202, 'TANJUNG PINANG', 12, NULL, NULL),
(203, 'BATANG HARI', 13, NULL, NULL),
(204, 'BUNGO', 13, NULL, NULL),
(205, 'JAMBI', 13, NULL, NULL),
(206, 'KERINCI', 13, NULL, NULL),
(207, 'MERANGIN', 13, NULL, NULL),
(208, 'MUARO JAMBI', 13, NULL, NULL),
(209, 'SAROLANGUN', 13, NULL, NULL),
(210, 'SUNGAIPENUH', 13, NULL, NULL),
(211, 'TANJUNG JABUNG BARAT', 13, NULL, NULL),
(212, 'TANJUNG JABUNG TIMUR', 13, NULL, NULL),
(213, 'TEBO', 13, NULL, NULL),
(214, 'BENGKULU', 14, NULL, NULL),
(215, 'BENGKULU SELATAN', 14, NULL, NULL),
(216, 'BENGKULU TENGAH', 14, NULL, NULL),
(217, 'BENGKULU UTARA', 14, NULL, NULL),
(218, 'KAUR', 14, NULL, NULL),
(219, 'KEPAHIANG', 14, NULL, NULL),
(220, 'LEBONG', 14, NULL, NULL),
(221, 'MUKO MUKO', 14, NULL, NULL),
(222, 'REJANG LEBONG', 14, NULL, NULL),
(223, 'SELUMA', 14, NULL, NULL),
(224, 'BANYUASIN', 15, NULL, NULL),
(225, 'EMPAT LAWANG', 15, NULL, NULL),
(226, 'LAHAT', 15, NULL, NULL),
(227, 'LUBUK LINGGAU', 15, NULL, NULL),
(228, 'MUARA ENIM', 15, NULL, NULL),
(229, 'MUSI BANYUASIN', 15, NULL, NULL),
(230, 'MUSI RAWAS', 15, NULL, NULL),
(231, 'OGAN ILIR', 15, NULL, NULL),
(232, 'OGAN KOMERING ILIR', 15, NULL, NULL),
(233, 'OGAN KOMERING ULU', 15, NULL, NULL),
(234, 'OGAN KOMERING ULU SELATAN', 15, NULL, NULL),
(235, 'OGAN KOMERING ULU TIMUR', 15, NULL, NULL),
(236, 'PAGAR ALAM', 15, NULL, NULL),
(237, 'PALEMBANG', 15, NULL, NULL),
(238, 'PRABUMULIH', 15, NULL, NULL),
(239, 'BANGKA', 16, NULL, NULL),
(240, 'BANGKA BARAT', 16, NULL, NULL),
(241, 'BANGKA SELATAN', 16, NULL, NULL),
(242, 'BANGKA TENGAH', 16, NULL, NULL),
(243, 'BELITUNG', 16, NULL, NULL),
(244, 'BELITUNG TIMUR', 16, NULL, NULL),
(245, 'PANGKAL PINANG', 16, NULL, NULL),
(246, 'BANDAR LAMPUNG', 17, NULL, NULL),
(247, 'LAMPUNG BARAT', 17, NULL, NULL),
(248, 'LAMPUNG SELATAN', 17, NULL, NULL),
(249, 'LAMPUNG TENGAH', 17, NULL, NULL),
(250, 'LAMPUNG TIMUR', 17, NULL, NULL),
(251, 'LAMPUNG UTARA', 17, NULL, NULL),
(252, 'MESUJI', 17, NULL, NULL),
(253, 'METRO', 17, NULL, NULL),
(254, 'PESAWARAN', 17, NULL, NULL),
(255, 'PESISIR BARAT', 17, NULL, NULL),
(256, 'PRINGSEWU', 17, NULL, NULL),
(257, 'TANGGAMUS', 17, NULL, NULL),
(258, 'TULANG BAWANG', 17, NULL, NULL),
(259, 'TULANG BAWANG BARAT', 17, NULL, NULL),
(260, 'WAY KANAN', 17, NULL, NULL),
(261, 'BENGKAYANG', 18, NULL, NULL),
(262, 'KAPUAS HULU', 18, NULL, NULL),
(263, 'KAYONG UTARA', 18, NULL, NULL),
(264, 'KETAPANG', 18, NULL, NULL),
(265, 'KUBU RAYA', 18, NULL, NULL),
(266, 'LANDAK', 18, NULL, NULL),
(267, 'MELAWI', 18, NULL, NULL),
(268, 'PONTIANAK', 18, NULL, NULL),
(269, 'SAMBAS', 18, NULL, NULL),
(270, 'SANGGAU', 18, NULL, NULL),
(271, 'SEKADAU', 18, NULL, NULL),
(272, 'SINGKAWANG', 18, NULL, NULL),
(273, 'SINTANG', 18, NULL, NULL),
(274, 'BARITO SELATAN', 19, NULL, NULL),
(275, 'BARITO TIMUR', 19, NULL, NULL),
(276, 'BARITO UTARA', 19, NULL, NULL),
(277, 'GUNUNG MAS', 19, NULL, NULL),
(278, 'KAPUAS', 19, NULL, NULL),
(279, 'KATINGAN', 19, NULL, NULL),
(280, 'KOTAWARINGIN BARAT', 19, NULL, NULL),
(281, 'KOTAWARINGIN TIMUR', 19, NULL, NULL),
(282, 'LAMANDAU', 19, NULL, NULL),
(283, 'MURUNG RAYA', 19, NULL, NULL),
(284, 'PALANGKA RAYA', 19, NULL, NULL),
(285, 'PULANG PISAU', 19, NULL, NULL),
(286, 'SERUYAN', 19, NULL, NULL),
(287, 'SUKAMARA', 19, NULL, NULL),
(288, 'BALANGAN', 20, NULL, NULL),
(289, 'BANJAR', 20, NULL, NULL),
(290, 'BANJARBARU', 20, NULL, NULL),
(291, 'BANJARMASIN', 20, NULL, NULL),
(292, 'BARITO KUALA', 20, NULL, NULL),
(293, 'HULU SUNGAI SELATAN', 20, NULL, NULL),
(294, 'HULU SUNGAI TENGAH', 20, NULL, NULL),
(295, 'HULU SUNGAI UTARA', 20, NULL, NULL),
(296, 'KOTABARU', 20, NULL, NULL),
(297, 'TABALONG', 20, NULL, NULL),
(298, 'TANAH BUMBU', 20, NULL, NULL),
(299, 'TANAH LAUT', 20, NULL, NULL),
(300, 'TAPIN', 20, NULL, NULL),
(301, 'BALIKPAPAN', 21, NULL, NULL),
(302, 'BERAU', 21, NULL, NULL),
(303, 'BONTANG', 21, NULL, NULL),
(304, 'KUTAI BARAT', 21, NULL, NULL),
(305, 'KUTAI KARTANEGARA', 21, NULL, NULL),
(306, 'KUTAI TIMUR', 21, NULL, NULL),
(307, 'PASER', 21, NULL, NULL),
(308, 'PENAJAM PASER UTARA', 21, NULL, NULL),
(309, 'SAMARINDA', 21, NULL, NULL),
(310, 'BULUNGAN (BULONGAN)', 22, NULL, NULL),
(311, 'MALINAU', 22, NULL, NULL),
(312, 'NUNUKAN', 22, NULL, NULL),
(313, 'TANA TIDUNG', 22, NULL, NULL),
(314, 'TARAKAN', 22, NULL, NULL),
(315, 'MAJENE', 23, NULL, NULL),
(316, 'MAMASA', 23, NULL, NULL),
(317, 'MAMUJU', 23, NULL, NULL),
(318, 'MAMUJU UTARA', 23, NULL, NULL),
(319, 'POLEWALI MANDAR', 23, NULL, NULL),
(320, 'BANTAENG', 24, NULL, NULL),
(321, 'BARRU', 24, NULL, NULL),
(322, 'BONE', 24, NULL, NULL),
(323, 'BULUKUMBA', 24, NULL, NULL),
(324, 'ENREKANG', 24, NULL, NULL),
(325, 'GOWA', 24, NULL, NULL),
(326, 'JENEPONTO', 24, NULL, NULL),
(327, 'LUWU', 24, NULL, NULL),
(328, 'LUWU TIMUR', 24, NULL, NULL),
(329, 'LUWU UTARA', 24, NULL, NULL),
(330, 'MAKASSAR', 24, NULL, NULL),
(331, 'MAROS', 24, NULL, NULL),
(332, 'PALOPO', 24, NULL, NULL),
(333, 'PANGKAJENE KEPULAUAN', 24, NULL, NULL),
(334, 'PAREPARE', 24, NULL, NULL),
(335, 'PINRANG', 24, NULL, NULL),
(336, 'SELAYAR (KEPULAUAN SELAYAR)', 24, NULL, NULL),
(337, 'SIDENRENG RAPPANG/RAPANG', 24, NULL, NULL),
(338, 'SINJAI', 24, NULL, NULL),
(339, 'SOPPENG', 24, NULL, NULL),
(340, 'TAKALAR', 24, NULL, NULL),
(341, 'TANA TORAJA', 24, NULL, NULL),
(342, 'TORAJA UTARA', 24, NULL, NULL),
(343, 'WAJO', 24, NULL, NULL),
(344, 'BAU-BAU', 25, NULL, NULL),
(345, 'BOMBANA', 25, NULL, NULL),
(346, 'BUTON', 25, NULL, NULL),
(347, 'BUTON UTARA', 25, NULL, NULL),
(348, 'KENDARI', 25, NULL, NULL),
(349, 'KOLAKA', 25, NULL, NULL),
(350, 'KOLAKA UTARA', 25, NULL, NULL),
(351, 'KONAWE', 25, NULL, NULL),
(352, 'KONAWE SELATAN', 25, NULL, NULL),
(353, 'KONAWE UTARA', 25, NULL, NULL),
(354, 'MUNA', 25, NULL, NULL),
(355, 'WAKATOBI', 25, NULL, NULL),
(356, 'BANGGAI', 26, NULL, NULL),
(357, 'BANGGAI KEPULAUAN', 26, NULL, NULL),
(358, 'BUOL', 26, NULL, NULL),
(359, 'DONGGALA', 26, NULL, NULL),
(360, 'MOROWALI', 26, NULL, NULL),
(361, 'PALU', 26, NULL, NULL),
(362, 'PARIGI MOUTONG', 26, NULL, NULL),
(363, 'POSO', 26, NULL, NULL),
(364, 'SIGI', 26, NULL, NULL),
(365, 'TOJO UNA-UNA', 26, NULL, NULL),
(366, 'TOLI-TOLI', 26, NULL, NULL),
(367, 'BOALEMO', 27, NULL, NULL),
(368, 'BONE BOLANGO', 27, NULL, NULL),
(369, 'GORONTALO', 27, NULL, NULL),
(370, 'GORONTALO UTARA', 27, NULL, NULL),
(371, 'POHUWATO', 27, NULL, NULL),
(372, 'BITUNG', 28, NULL, NULL),
(373, 'BOLAANG MONGONDOW (BOLMONG)', 28, NULL, NULL),
(374, 'BOLAANG MONGONDOW SELATAN', 28, NULL, NULL),
(375, 'BOLAANG MONGONDOW TIMUR', 28, NULL, NULL),
(376, 'BOLAANG MONGONDOW UTARA', 28, NULL, NULL),
(377, 'KEPULAUAN SANGIHE', 28, NULL, NULL),
(378, 'KEPULAUAN SIAU TAGULANDANG BIARO (SITARO)', 28, NULL, NULL),
(379, 'KEPULAUAN TALAUD', 28, NULL, NULL),
(380, 'KOTAMOBAGU', 28, NULL, NULL),
(381, 'MANADO', 28, NULL, NULL),
(382, 'MINAHASA', 28, NULL, NULL),
(383, 'MINAHASA SELATAN', 28, NULL, NULL),
(384, 'MINAHASA TENGGARA', 28, NULL, NULL),
(385, 'MINAHASA UTARA', 28, NULL, NULL),
(386, 'TOMOHON', 28, NULL, NULL),
(387, 'AMBON', 29, NULL, NULL),
(388, 'BURU', 29, NULL, NULL),
(389, 'BURU SELATAN', 29, NULL, NULL),
(390, 'KEPULAUAN ARU', 29, NULL, NULL),
(391, 'MALUKU BARAT DAYA', 29, NULL, NULL),
(392, 'MALUKU TENGAH', 29, NULL, NULL),
(393, 'MALUKU TENGGARA', 29, NULL, NULL),
(394, 'MALUKU TENGGARA BARAT', 29, NULL, NULL),
(395, 'SERAM BAGIAN BARAT', 29, NULL, NULL),
(396, 'SERAM BAGIAN TIMUR', 29, NULL, NULL),
(397, 'TUAL', 29, NULL, NULL),
(398, 'HALMAHERA BARAT', 30, NULL, NULL),
(399, 'HALMAHERA SELATAN', 30, NULL, NULL),
(400, 'HALMAHERA TENGAH', 30, NULL, NULL),
(401, 'HALMAHERA TIMUR', 30, NULL, NULL),
(402, 'HALMAHERA UTARA', 30, NULL, NULL),
(403, 'KEPULAUAN SULA', 30, NULL, NULL),
(404, 'PULAU MOROTAI', 30, NULL, NULL),
(405, 'TERNATE', 30, NULL, NULL),
(406, 'TIDORE KEPULAUAN', 30, NULL, NULL),
(407, 'BIMA', 31, NULL, NULL),
(408, 'DOMPU', 31, NULL, NULL),
(409, 'LOMBOK BARAT', 31, NULL, NULL),
(410, 'LOMBOK TENGAH', 31, NULL, NULL),
(411, 'LOMBOK TIMUR', 31, NULL, NULL),
(412, 'LOMBOK UTARA', 31, NULL, NULL),
(413, 'MATARAM', 31, NULL, NULL),
(414, 'SUMBAWA', 31, NULL, NULL),
(415, 'SUMBAWA BARAT', 31, NULL, NULL),
(416, 'ALOR', 32, NULL, NULL),
(417, 'BELU', 32, NULL, NULL),
(418, 'ENDE', 32, NULL, NULL),
(419, 'FLORES TIMUR', 32, NULL, NULL),
(420, 'KUPANG', 32, NULL, NULL),
(421, 'LEMBATA', 32, NULL, NULL),
(422, 'MANGGARAI', 32, NULL, NULL),
(423, 'MANGGARAI BARAT', 32, NULL, NULL),
(424, 'MANGGARAI TIMUR', 32, NULL, NULL),
(425, 'NAGEKEO', 32, NULL, NULL),
(426, 'NGADA', 32, NULL, NULL),
(427, 'ROTE NDAO', 32, NULL, NULL),
(428, 'SABU RAIJUA', 32, NULL, NULL),
(429, 'SIKKA', 32, NULL, NULL),
(430, 'SUMBA BARAT', 32, NULL, NULL),
(431, 'SUMBA BARAT DAYA', 32, NULL, NULL),
(432, 'SUMBA TENGAH', 32, NULL, NULL),
(433, 'SUMBA TIMUR', 32, NULL, NULL),
(434, 'TIMOR TENGAH SELATAN', 32, NULL, NULL),
(435, 'TIMOR TENGAH UTARA', 32, NULL, NULL),
(436, 'FAKFAK', 33, NULL, NULL),
(437, 'KAIMANA', 33, NULL, NULL),
(438, 'MANOKWARI', 33, NULL, NULL),
(439, 'MANOKWARI SELATAN', 33, NULL, NULL),
(440, 'MAYBRAT', 33, NULL, NULL),
(441, 'PEGUNUNGAN ARFAK', 33, NULL, NULL),
(442, 'RAJA AMPAT', 33, NULL, NULL),
(443, 'SORONG', 33, NULL, NULL),
(444, 'SORONG SELATAN', 33, NULL, NULL),
(445, 'TAMBRAUW', 33, NULL, NULL),
(446, 'TELUK BINTUNI', 33, NULL, NULL),
(447, 'TELUK WONDAMA', 33, NULL, NULL),
(448, 'ASMAT', 34, NULL, NULL),
(449, 'BIAK NUMFOR', 34, NULL, NULL),
(450, 'BOVEN DIGOEL', 34, NULL, NULL),
(451, 'DEIYAI (DELIYAI)', 34, NULL, NULL),
(452, 'DOGIYAI', 34, NULL, NULL),
(453, 'INTAN JAYA', 34, NULL, NULL),
(454, 'JAYAPURA', 34, NULL, NULL),
(455, 'JAYAWIJAYA', 34, NULL, NULL),
(456, 'KEEROM', 34, NULL, NULL),
(457, 'KEPULAUAN YAPEN (YAPEN WAROPEN)', 34, NULL, NULL),
(458, 'LANNY JAYA', 34, NULL, NULL),
(459, 'MAMBERAMO RAYA', 34, NULL, NULL),
(460, 'MAMBERAMO TENGAH', 34, NULL, NULL),
(461, 'MAPPI', 34, NULL, NULL),
(462, 'MERAUKE', 34, NULL, NULL),
(463, 'MIMIKA', 34, NULL, NULL),
(464, 'NABIRE', 34, NULL, NULL),
(465, 'NDUGA', 34, NULL, NULL),
(466, 'PANIAI', 34, NULL, NULL),
(467, 'PEGUNUNGAN BINTANG', 34, NULL, NULL),
(468, 'PUNCAK', 34, NULL, NULL),
(469, 'PUNCAK JAYA', 34, NULL, NULL),
(470, 'SARMI', 34, NULL, NULL),
(471, 'SUPIORI', 34, NULL, NULL),
(472, 'TOLIKARA', 34, NULL, NULL),
(473, 'WAROPEN', 34, NULL, NULL),
(474, 'YAHUKIMO', 34, NULL, NULL),
(475, 'YALIMO', 34, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE `links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_zoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_zoom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` bigint(20) UNSIGNED DEFAULT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `nama`, `url`, `id_zoom`, `pass_zoom`, `tipe`, `session_id`, `keterangan`) VALUES
(3, 'link absensi 1', 'https://youtu.be/wByOM2pkA1k', NULL, NULL, 'absen', 3, '1'),
(4, 'Opening Day 1', 'https://youtu.be/wByOM2pkA1k', NULL, NULL, 'acara', 4, '1'),
(5, 'Masuk Game Besar', 'https://www.artsteps.com/view/5fff2aa1d20a284328cd41b3', NULL, NULL, 'gamebesar', 5, '1'),
(6, 'world S1', 'https://gather.town/app/LXJbwTLCVfJnLwie/World%20SIngle%201%20CEG', NULL, NULL, 'rally', 5, '1'),
(7, 'world S2', 'https://gather.town/app/yt18yhpg9ztd9T12/World%20Single%20II%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(8, 'world S3', 'https://gather.town/app/bQ5eRT3KLRxKpCIk/World%20Single%20III%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(9, 'world S4', 'https://gather.town/app/dqqVwEsHcH0Bg6sk/World%20Single%20IV%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(10, 'world B1', 'https://gather.town/app/0tththlrlKnuFDOT/World%20Battle%20I%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(11, 'world B2', 'https://gather.town/app/Wy9B2yifTyvRcdG4/World%20Battle%20II%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(12, 'world B3', 'https://gather.town/app/mZqMIqd7TZnboo7R/World%20Battle%20III%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(13, 'world B4', 'https://gather.town/app/IcHE2xGVDfAJqoc7/World%20Battle%20IV%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(14, 'world B5', 'https://gather.town/app/DXbzVUNAkYjvTcyh/World%20Battle%20V%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(15, 'world B6', 'https://gather.town/app/RJfassHIz0PtoF3X/World%20Battle%20VI%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(16, 'world B7', 'https://gather.town/app/vTyr4DacnGlaUlGS/World%20Battle%20VII%20CEG%202021', NULL, NULL, 'rally', 5, '1'),
(17, 'world B8', 'https://gather.town/app/tTMloA0aOK1rrp1z/World%20Battle%20VIII%20CEG2021', NULL, NULL, 'rally', 5, '1'),
(18, 'Zoom Utama Day 1', 'https://us02web.zoom.us/j/88221400634?pwd=TExYZGRwcE1uY3RBL3JZMERreG1VUT09', '882 2140 0634', 'ceg2021', 'acara', 7, '1'),
(19, 'link kuesioner 1', 'https://forms.gle/ZLNCjEVFXMSPx7Et8', NULL, NULL, 'kuesioner', 8, '1'),
(20, 'link absensi 2', 'https://us02web.zoom.us/j/89558138323?pwd=WkpUMHV6eTlPRk5CMVlIUW9VRzBKUT09', '895 5813 8323', 'ceg2021', 'absen', 9, '2'),
(21, 'Opening Day 2', 'https://us02web.zoom.us/j/89558138323?pwd=WkpUMHV6eTlPRk5CMVlIUW9VRzBKUT09', '895 5813 8323', 'ceg2021', 'acara', 10, '2'),
(22, 'Zoom Utama Day 2', 'https://us02web.zoom.us/j/89558138323?pwd=WkpUMHV6eTlPRk5CMVlIUW9VRzBKUT09', '895 5813 8323', 'ceg2021', 'acara', 11, '2'),
(23, 'modul semifinal', 'https://drive.google.com/file/d/1Uu477sszFUluI9pKWK65FjSc5VPi7lDU/view?usp=sharing', NULL, NULL, 'semifinal', 13, '2'),
(24, 'Zoom Utama Day 2', 'https://us02web.zoom.us/j/89558138323?pwd=WkpUMHV6eTlPRk5CMVlIUW9VRzBKUT09', '895 5813 8323', 'ceg2021', 'semifinal', 13, '2'),
(25, 'link kuesioner 2', 'https://forms.gle/xfNJtjPmy37Nhbxi6', NULL, NULL, 'kuesioner', 14, '2'),
(26, 'link absensi 3', 'https://youtu.be/CPY0u8fM4kM', NULL, NULL, 'absen', 15, '3'),
(27, 'Opening Day 3', 'https://youtu.be/CPY0u8fM4kM', NULL, NULL, 'acara', 16, '3'),
(28, 'link final', 'https://factoryrush.cegubaya.com/', NULL, NULL, 'acara', 17, '3'),
(29, 'Zoom Utama Day 3', 'https://us02web.zoom.us/j/89790038234?pwd=K1lQa1c3S2F0Q0NBakt1c3BTK05zQT09', '897 9003 8234', 'ceg2021', 'acara', 19, '3'),
(30, 'link kuesioner 3', 'https://forms.gle/MfqBXT6wFt9K1nqj9', NULL, NULL, 'kuesioner', 20, '3'),
(31, 'Kembali ke Zoom Utama Day 1', 'https://us02web.zoom.us/j/88221400634?pwd=TExYZGRwcE1uY3RBL3JZMERreG1VUT09', '882 2140 0634', 'ceg2021', 'ishoma', 6, '1'),
(32, 'Kembali ke Zoom Utama Day 2', 'https://us02web.zoom.us/j/89558138323?pwd=WkpUMHV6eTlPRk5CMVlIUW9VRzBKUT09', '895 5813 8323', 'ceg2021', 'ishoma', 12, '2'),
(33, 'Kembali ke Zoom Utama Day 3', 'https://us02web.zoom.us/j/89790038234?pwd=K1lQa1c3S2F0Q0NBakt1c3BTK05zQT09', '897 9003 8234', 'ceg2021', 'ishoma', 18, '3'),
(34, 'link gform semi', 'http://tiny.cc/FormSoalFindTheAntidote', NULL, NULL, 'semifinal', 13, '2'),
(36, 'pos S1', 'https://zoom.us/j/8250873564?pwd=OHU3clFwc25ZbGo1NU9xd3Yrc3dQdz09', '825 087 3564', 'CEG2021', 'pos', 5, '1'),
(37, 'pos S2', 'https://zoom.us/j/4948681113?pwd=RnZIajhpNEpUaEhBaDZkajhPd0lUZz09', '494 868 1113', 'CEG2021', 'pos', 5, '1'),
(38, 'pos S3', 'https://zoom.us/j/6858942228?pwd=VmY5WVMxc3FtUk8yWWZPSk1PZVZpdz09', '685 894 2228', 'CEG2021', 'pos', 5, '1'),
(39, 'pos S4', 'https://zoom.us/j/4510221931?pwd=dklNMjlaSkk0RVVrOFB5NTNkejY4dz09', '451 022 1931', 'CEG2021', 'pos', 5, '1'),
(40, 'pos S5', 'https://zoom.us/j/3641679330?pwd=WjQ1M0dNMmRkN1kxN1hYT3FwSGlGdz09', '364 167 9330', 'CEG2021', 'pos', 5, '1'),
(41, 'pos S6', 'https://zoom.us/j/3269575236?pwd=VVFwZ0xrYUQzQWVEaWdWZlZGcko5Zz09', '326 957 5236', 'CEG2021', 'pos', 5, '1'),
(42, 'pos S7', 'https://zoom.us/j/6038364050', '6038364050', 'ceg2021', 'pos', 5, '1'),
(43, 'pos S8', 'https://zoom.us/j/3797495466?pwd=UitOUEVYOHhZWTM4cmM1Z0VSNVQvZz09', '379 749 5466', 'CEG2021', 'pos', 5, '1'),
(44, 'pos S9', 'https://zoom.us/j/7968291076?pwd=ak44RGF4WXo2TTdaZVptenhyUjErdz09', '796 829 1076', 'CEG2021', 'pos', 5, '1'),
(45, 'pos S10', 'https://zoom.us/j/6596688304?pwd=YzRpZXVpa0dES01laUltbnF1T00yZz09', '659 668 8304', 'CEG2021', 'pos', 5, '1'),
(46, 'pos S11', 'https://zoom.us/j/7133010583', '7133010583', 'ceg2021', 'pos', 5, '1'),
(47, 'pos S12', 'https://zoom.us/j/8512008191?pwd=Nm5hUXIwWVUxQTdZZGJQSUowSTRGQT09', '851 200 8191', 'CEG2021', 'pos', 5, '1'),
(48, 'pos S13', 'https://zoom.us/j/6437611840?pwd=YkNZc3J4bnBPWVZXUks3YWdWMlJ5UT09', '643 761 1840', 'CEG2021', 'pos', 5, '1'),
(49, 'pos S14', 'https://zoom.us/j/9089745580', '9089745580', 'ceg2021', 'pos', 5, '1'),
(50, 'pos S15', 'https://zoom.us/j/3268113959?pwd=NVhTTzdNV2RjK3hGcFA4M1NTWFZPQT09', '326 811 3959', 'CEG2021', 'pos', 5, '1'),
(51, 'pos B1', 'https://zoom.us/j/9888791901', '988 879 1901', 'ceg2021', 'pos', 5, '1'),
(52, 'pos B2', 'https://zoom.us/j/6165940188?pwd=cS9RYkt1UTdhL01HS0UyejQ3V1Q1Zz09', '616 594 0188', 'CEG2021', 'pos', 5, '1'),
(53, 'pos B3', 'https://zoom.us/j/5799847770', '579 984 7770', 'ceg2021', 'pos', 5, '1'),
(54, 'pos B4', 'https://zoom.us/j/6577102763?pwd=NnpBZXBYcWJveDNWQWpLTUhoVmpJQT09', '657 710 2763', 'CEG2021', 'pos', 5, '1'),
(55, 'pos B5', 'https://zoom.us/j/5575082847?pwd=TG5uTkFWeThDRWpUWWkwV0E0S0hyQT09', '557 508 2847', 'CEG2021', 'pos', 5, '1'),
(56, 'pos B6', 'https://zoom.us/j/6036340658?pwd=bFhmN21KcXBiajVJSHZhbmJ5RnY1QT09', '603 634 0658', 'CEG2021', 'pos', 5, '1'),
(57, 'pos B7', 'https://zoom.us/j/5340060394?pwd=aVVxR2cwekNBeE9rMUFpS09zMFFTQT09', '534 006 0394', 'CEG2021', 'pos', 5, '1'),
(58, 'pos B8', 'https://zoom.us/j/4069882624', '4069882624', 'ceg2021', 'pos', 5, '1'),
(59, 'pos B9', 'https://zoom.us/j/4144728560', '414 472 8560', 'ceg2021', 'pos', 5, '1'),
(60, 'pos B10', 'https://zoom.us/j/9718241173', '971 824 1173', 'ceg2021', 'pos', 5, '1'),
(61, 'pos B11', 'https://zoom.us/j/3870330209?pwd=S3JFaC96c0F0OVRwaEo4NFpKR3NMZz09', '387 033 0209', 'CEG2021', 'pos', 5, '1'),
(62, 'pos B12', 'https://zoom.us/j/5380770597?pwd=VGplVW84b2tCNlRnNW1HVDNBNWNCZz09', '538 077 0597', 'CEG2021', 'pos', 5, '1'),
(63, 'pos B13', 'https://zoom.us/j/4723897781?pwd=MThQWjZ6SHp1bWgzQ3BHU3NDbWp1UT09', '472 389 7781', 'CEG2021', 'pos', 5, '1'),
(64, 'pos B14', 'https://zoom.us/j/5057054918?pwd=TmFZU3JCdTJSU2w2MFRQdGNiYmJzUT09', '505 705 4918', 'CEG2021', 'pos', 5, '1'),
(65, 'pos B15', 'https://zoom.us/j/4638254798?pwd=My9tdmJOOEt1WmJnTEZpU1pldEx0QT09', '463 825 4798', 'CEG2021', 'pos', 5, '1'),
(66, 'Cek Status Pos Games', 'http://tiny.cc/KondisiPosTim1-24', NULL, NULL, 'gamebesar', 5, '1-1'),
(67, 'Cek Rumput Laut & Lubang', 'http://tiny.cc/LubangRumputLaut1-24', NULL, NULL, 'gamebesar', 5, '1-1'),
(68, 'Cek Status Pos Games', 'http://tiny.cc/KondisiPosTim25-49', NULL, NULL, 'gamebesar', 5, '1-2'),
(69, 'Pembagian Tim per Wave', 'https://drive.google.com/file/d/13nblRg0iFlWxf53eSn9k4bx5KubT1Jil/view?usp=sharing', NULL, NULL, 'gamebesar', 5, '1'),
(70, 'Cek Rumput Laut & Lubang', 'http://tiny.cc/LubangRumputLaut25-49', NULL, NULL, 'gamebesar', 5, '1-2'),
(71, 'Pos Buy & Sail', 'https://us02web.zoom.us/j/83565444203?pwd=R1hvcWROWnE4RDhmOC9tZUdhN0Rqdz09', '835 6544 4203', 'CEG2021', 'island', 5, '1'),
(72, 'Isla De Muerta', 'https://zoom.us/j/7858685155?pwd=U1U5UGxQL01qY0x6SEsvTnVPYWtKZz09', '785 868 5155', 'CEG2021', 'island', 5, '1'),
(73, 'Tortuga', 'https://zoom.us/j/5556246827?pwd=c3VlWmdFcVc1SGd5dlFBSlcyeXIxQT09', '555 624 6827', 'CEG2021', 'island', 5, '1'),
(74, 'Shipwreck Cove', 'https://zoom.us/j/2549520775?pwd=c1ZCcjJvdUx4Zm83cldEWTZlMEVKZz09', '254 952 0775', 'CEG2021', 'island', 5, '1'),
(75, 'Singapore', 'https://zoom.us/j/2450232937?pwd=ak44RGF4WXo2TTdaZVptenhyUjErdz09', '245 023 2937', 'CEG2021', 'island', 5, '1'),
(76, 'Pelegosto', 'https://zoom.us/j/7938100550?pwd=aG56VkdWNDlmQXMzTklscm16czFhQT09', '793 810 0550', 'CEG2021', 'island', 5, '1'),
(77, 'Isla Cruces', 'https://zoom.us/j/8634868917?pwd=bFpaWUlyNzhxTUsvL3pKTzAzc1JXUT09', '863 486 8917', 'CEG2021', 'island', 5, '1'),
(78, 'Zoom untuk 2nd Device', 'https://zoom.us/j/99745033556?pwd=MVZjcUpuSFhDMGYrNE9CbjMzcS9RZz09', '997 4503 3556', '378480', 'second', 9, '2'),
(79, 'Zoom untuk 2nd Device', 'https://zoom.us/j/99745033556?pwd=MVZjcUpuSFhDMGYrNE9CbjMzcS9RZz09', '997 4503 3556', '378480', 'second', 10, '2'),
(80, 'Zoom untuk 2nd Device', 'https://zoom.us/j/99745033556?pwd=MVZjcUpuSFhDMGYrNE9CbjMzcS9RZz09', '997 4503 3556', '378480', 'semifinal', 13, '2'),
(81, 'Zoom Utama Day 3', 'https://us02web.zoom.us/j/89790038234?pwd=K1lQa1c3S2F0Q0NBakt1c3BTK05zQT09', '897 9003 8234', 'ceg2021', 'acara', 17, '3'),
(82, 'Zoom untuk 2nd Device', 'https://zoom.us/j/99745033556?pwd=MVZjcUpuSFhDMGYrNE9CbjMzcS9RZz09', '997 4503 3556', '378480', 'second', NULL, '2'),
(83, 'Zoom untuk 2nd Device', 'https://zoom.us/j/9976981165?pwd=MGFpN1UrMXlkU1RyQVhUMnBMZnZxUT09', '997 698 1165', '548338', 'second', 15, '3'),
(84, 'Zoom untuk 2nd Device', 'https://zoom.us/j/9976981165?pwd=MGFpN1UrMXlkU1RyQVhUMnBMZnZxUT09', '997 698 1165', '548338', 'second', 16, '3'),
(85, 'Zoom untuk 2nd Device', 'https://zoom.us/j/9976981165?pwd=MGFpN1UrMXlkU1RyQVhUMnBMZnZxUT09', '997 698 1165', '548338', 'second', 17, '3'),
(86, 'Zoom untuk 2nd Device', 'https://zoom.us/j/9976981165?pwd=MGFpN1UrMXlkU1RyQVhUMnBMZnZxUT09', '997 698 1165', '548338', 'second', 18, '3'),
(87, 'Youtube Live Day 3', 'https://youtu.be/CPY0u8fM4kM', NULL, NULL, 'acara', 19, '3'),
(88, 'Zoom untuk 2nd Device', 'https://zoom.us/j/99745033556?pwd=MVZjcUpuSFhDMGYrNE9CbjMzcS9RZz09', '997 4503 3556', '378480', 'second', 11, '2'),
(90, 'Zoom untuk 2nd Device', 'https://zoom.us/j/9976981165?pwd=MGFpN1UrMXlkU1RyQVhUMnBMZnZxUT09', '997 698 1165', '548338', 'second', 19, '3'),
(91, 'Zoom Utama Day 2', 'https://us02web.zoom.us/j/89558138323?pwd=WkpUMHV6eTlPRk5CMVlIUW9VRzBKUT09', '895 5813 8323', 'ceg2021', 'acara', 24, '2'),
(92, 'Zoom untuk 2nd Device', 'https://zoom.us/j/99745033556?pwd=MVZjcUpuSFhDMGYrNE9CbjMzcS9RZz09', '997 4503 3556', '378480', 'second', NULL, '2');

-- --------------------------------------------------------

--
-- Table structure for table `list_pelanggaran`
--

CREATE TABLE `list_pelanggaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tim_id` bigint(20) UNSIGNED NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `pelanggaran_id` bigint(20) UNSIGNED NOT NULL,
  `user_id_inputer` bigint(20) UNSIGNED NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_pelanggaran`
--

INSERT INTO `list_pelanggaran` (`id`, `tim_id`, `anggota_id`, `pelanggaran_id`, `user_id_inputer`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 40, 120, 14, 67, NULL, '2021-04-23 03:35:00', '2021-04-23 04:54:01'),
(2, 20, 60, 14, 67, NULL, '2021-04-23 03:42:00', '2021-04-23 04:55:30'),
(3, 38, 112, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 03:43:00', '2021-04-23 04:59:55'),
(4, 26, 78, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 03:46:00', '2021-04-23 05:01:30'),
(5, 40, 118, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 03:55:00', '2021-04-23 05:03:21'),
(6, 33, 97, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 03:56:00', '2021-04-23 05:04:24'),
(7, 22, 66, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 04:06:00', '2021-04-23 05:05:08'),
(8, 26, 77, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 04:07:00', '2021-04-23 05:06:16'),
(9, 17, 49, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 04:08:00', '2021-04-23 05:13:30'),
(10, 34, 102, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 04:08:00', '2021-04-23 05:14:29'),
(11, 29, 86, 24, 67, 'sudah diperingatkan, tapi tidak dilakukan', '2021-04-23 06:19:00', '2021-04-23 08:26:28'),
(12, 22, 66, 14, 67, NULL, '2021-04-23 07:34:00', '2021-04-23 08:27:54'),
(13, 13, 37, 24, 67, NULL, '2021-04-23 06:56:00', '2021-04-23 08:28:46'),
(14, 12, 36, 24, 67, NULL, '2021-04-23 07:28:00', '2021-04-23 08:29:18'),
(15, 15, 45, 24, 67, NULL, '2021-04-23 07:32:00', '2021-04-23 08:29:47'),
(16, 50, 149, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 07:40:00', '2021-04-23 08:30:22'),
(17, 4, 10, 14, 67, 'Chat panitia pendamping dengan foto dari HP', '2021-04-23 07:34:00', '2021-04-23 08:32:37'),
(18, 7, 19, 14, 67, 'Chat panitia pendamping dari HP', '2021-04-23 07:47:00', '2021-04-23 08:33:36'),
(19, 30, 90, 14, 67, 'Chat panitia pendamping dari HP', '2021-04-23 07:48:00', '2021-04-23 08:34:06'),
(20, 34, 101, 14, 67, 'Chat panitia pendamping dari HP', '2021-04-23 07:50:00', '2021-04-23 08:34:47'),
(21, 21, 63, 3, 67, 'Meninggalkan tempat tanpa izin', '2021-04-23 07:59:00', '2021-04-23 08:35:42'),
(22, 17, 50, 14, 67, NULL, '2021-04-24 02:32:00', '2021-04-24 04:26:50'),
(23, 21, 62, 28, 67, NULL, '2021-04-24 03:26:00', '2021-04-24 04:28:24'),
(24, 51, 151, 14, 67, 'Membuka line', '2021-04-24 03:33:00', '2021-04-24 04:29:26'),
(25, 15, 43, 29, 67, NULL, '2021-04-24 03:33:00', '2021-04-24 04:30:49'),
(26, 36, 108, 30, 67, NULL, '2021-04-24 03:33:00', '2021-04-24 04:31:42'),
(27, 32, 95, 5, 67, 'Pergi ke toilet', '2021-04-24 03:12:00', '2021-04-24 04:32:37'),
(28, 15, 44, 29, 67, NULL, '2021-04-24 03:41:00', '2021-04-24 04:33:38'),
(29, 31, 91, 29, 67, NULL, '2021-04-24 03:48:00', '2021-04-24 04:34:27'),
(30, 31, 92, 29, 67, NULL, '2021-04-24 03:48:00', '2021-04-24 04:34:52'),
(31, 32, 96, 29, 67, NULL, '2021-04-24 03:52:00', '2021-04-24 04:36:54'),
(32, 15, 45, 1, 67, NULL, '2021-04-24 03:54:00', '2021-04-24 04:37:26'),
(33, 15, 45, 31, 67, NULL, '2021-04-24 04:09:00', '2021-04-24 04:38:22'),
(34, 38, 112, 14, 67, 'Membuka aplikasi lain selain Zoom', '2021-04-24 04:21:00', '2021-04-24 04:39:21'),
(35, 48, 142, 3, 67, 'Meninggalkan tempat tanpa izin', '2021-04-24 06:37:00', '2021-04-24 07:59:06'),
(36, 51, 152, 5, 67, 'Meninggalkan tempat tanpa izin', '2021-04-24 07:14:00', '2021-04-24 08:00:14'),
(37, 26, 76, 14, 67, NULL, '2021-04-24 07:30:00', '2021-04-24 08:01:13'),
(38, 21, 63, 14, 67, NULL, '2021-04-24 07:31:00', '2021-04-24 08:03:26'),
(39, 15, 44, 14, 67, 'Bermain game', '2021-04-24 07:48:00', '2021-04-24 08:04:00'),
(40, 12, 36, 3, 67, 'Menghilang', '2021-04-24 07:53:00', '2021-04-24 08:04:49'),
(41, 25, 75, 32, 67, NULL, '2021-04-24 07:53:00', '2021-04-24 08:07:30'),
(42, 12, 36, 28, 67, NULL, '2021-04-24 07:55:00', '2021-04-24 08:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2021_01_01_054955_create_provinsi_table', 3),
(8, '2021_01_01_055318_create_kab_kota_table', 3),
(9, '2021_01_01_055330_create_sekolah_table', 3),
(12, '2021_01_01_164355_drop_column_sekolah_in_tim_table', 4),
(13, '2021_01_01_165042_drop_sekolah_table', 5),
(14, '2014_10_12_000000_create_users_table', 6),
(15, '2021_01_01_044549_add_role_to_users_table', 6),
(16, '2021_01_01_055351_create_tim_table', 7),
(17, '2021_01_01_165129_add_sekolah_to_tim_table', 7),
(18, '2021_01_01_055208_create_file_zip_table', 8),
(19, '2021_01_01_055245_create_file_bukti_table', 8),
(20, '2021_01_01_055401_create_peserta_table', 9),
(21, '2021_01_12_163250_add_column_alamat_sekolah_to_tim_table', 10),
(22, '2021_01_12_210001_add_column_status_file_to_tim_table', 11),
(23, '2021_01_13_143446_create_artikel_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggarans`
--

CREATE TABLE `pelanggarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelanggaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` enum('ringan','sedang','berat') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggarans`
--

INSERT INTO `pelanggarans` (`id`, `pelanggaran`, `jenis`) VALUES
(1, 'Menonaktifkan kamera selama acara berlangsung. (Mengikuti arahan MC) ', 'ringan'),
(2, 'Mengaktifkan microphone selama acara berlangsung. (Mengikuti arahan MC) ', 'ringan'),
(3, 'Bila ingin ke toilet bisa menghubungi panitia (Panitia Pendamping) melalui private chat di Line. ', 'ringan'),
(4, 'Jika terjadi masalah koneksi, wajib screenshoot sebagai bukti dan jamnya dapat dikirim ke Panitia Pendamping. ', 'ringan'),
(5, 'Meninggalkan tempat tanpa seizin panitia acara. ', 'sedang'),
(6, 'Makan pada saat kegiatan berlangsung. ', 'sedang'),
(7, 'Melakukan tindakan yang menyinggung SARA, kriminal, asusila, berkata kotor, dan segala jenis tindakan yang bersifat menyinggung pihak tertentu. ', 'berat'),
(8, 'Melakukan tindakan yang menghambat/menghalangi jalannya acara CEG 2021. \r\nContoh: Bertengkar dengan panitia atau peserta lain.', 'berat'),
(9, 'Melakukan kecurangan dan/atau bekerjasama dengan kelompok lain dan/atau pihak lain selama acara CEG 2021 berlangsung. ', 'berat'),
(10, 'Menggunakan virtual background video. ', 'berat'),
(14, 'Mengoperasikan alat komunikasi di luar yang diperlukan selama perlombaan berlangsung', 'ringan'),
(24, 'Tidak menampilkan wajah sesuai dengan ketentuan', 'ringan'),
(28, 'Berbicara Kotor', 'sedang'),
(29, 'Device 2 tidak memenuhi syarat', 'ringan'),
(30, 'Tidak memakai masker', 'ringan'),
(31, 'Baju tidak seragam', 'ringan'),
(32, 'Berdiskusi dengan orang lain', 'sedang');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tim_id` bigint(20) UNSIGNED NOT NULL,
  `role` enum('ketua','anggota') COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id`, `tim_id`, `role`, `nama`, `whatsapp`, `line`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 1, 'ketua', 'Winston Leonard Prayonggo', '08156042616', '12345xxx6789www', 'winston.leonard.stu@elyon.sch.id', 'Taman Pondok Indah Blok CX-9', '2021-01-17 08:40:08', '2021-01-17 08:40:08'),
(2, 1, 'anggota', 'Jason Lienardi', '089513176632', 'jason_lienardi', 'jason.lienardi.stu@elyon.sch.id', 'Kupang Indah XI/11B', '2021-01-17 08:40:08', '2021-01-17 08:40:08'),
(3, 1, 'anggota', 'Kevin Antonius', '081284072486', 'kevinantonius2604', 'kevin.antonius.stu@elyon.sch.id', 'Bypass Krian KM 28', '2021-01-17 08:40:08', '2021-01-17 08:40:08'),
(4, 2, 'ketua', 'Florencia Yang', '082257000078', 'florencia_yang', 'florencia.yang@student.iphschools.sch.id', 'Medokan Asri Timur 5/F-8 (Surabaya)', '2021-01-20 21:21:55', '2021-01-20 21:21:55'),
(5, 2, 'anggota', 'Carissa Isabel Boko', '081216701197', 'carcarissa80', 'carissa.isabel@student.iphschools.sch.id', 'Jl. Raya Laran - Betun Kec. Malaka Tengah - 85762 Kab. Malaka(NTT)', '2021-01-20 21:21:55', '2021-01-20 21:21:55'),
(6, 2, 'anggota', 'Jessica Tunggal', '081359553390', 'jessicatunggal', 'jessica.tunggal@student.iphschools.sch.id', 'Griya permata gedangan b2/5 (Sidoarjo)', '2021-01-20 21:21:55', '2021-01-20 21:21:55'),
(7, 3, 'ketua', 'Daniella Widarma', '082331616816', 'daniellawidarma', 'daniellawella442@gmail.com', 'Jalan Raya Bukit Kencana Sari L-2, Surabaya', '2021-01-24 07:30:47', '2021-01-24 07:30:47'),
(8, 3, 'anggota', 'Christofarrel Graddy', '087855573899', 'graddyf43m', 'gradyfarl@gmail.com', 'Taman Aloha E3', '2021-01-24 07:30:47', '2021-01-24 07:30:47'),
(9, 3, 'anggota', 'Gerrardo Garrison', '085931368383', 'gerrardogarrisonc', 'gerrardogarrison@gmail.com', 'Jl.Delta Tama VII/11, Waru, Sidoarjo', '2021-01-24 07:30:47', '2021-01-24 07:30:47'),
(10, 4, 'ketua', 'Nayla Junita Prayugo', '085105337777', 'naylajunita_11', 'naylajunita11@gmail.com', 'Jl. Putat Gede Indah No. 19A', '2021-02-03 02:05:54', '2021-02-03 02:05:54'),
(11, 4, 'anggota', 'Evelyn Andrea Williana', '08113322005', 'lieevelyn', 'evelynandreaw@gmail.com', 'Pakuwon Indah VBR 3 PE 10/23', '2021-02-03 02:05:54', '2021-02-03 02:05:54'),
(12, 4, 'anggota', 'Queencylla Meiliana Levi Heriawan', '08123215195', 'qmlh', 'queency1255@gmail.com', 'Taman Gapura E1/22-23', '2021-02-03 02:05:54', '2021-02-03 02:05:54'),
(13, 5, 'ketua', 'Kenneth Tjahajdi', '083830055500', 'kenneth_tjahjadi', 'korneliuskennethtj@gmail.com', 'Ngagel Jaya Tengah 5 no.23', '2021-02-04 07:43:39', '2021-02-04 07:43:39'),
(14, 5, 'anggota', 'Benedictus Kevin Salim', '081338501717', 'b.k.s.29', 'kevinsalim.benedictus@gmail.com', 'Pakuwon City, Long Beach blok S9 nomor 23', '2021-02-04 07:43:39', '2021-02-04 07:43:39'),
(15, 5, 'anggota', 'Leonardo Matthew Yauw', '082239018852', 'lasthope2184', 'Leonardo.Matthew.Yauw@gmail.com', 'Apartment Gunawangsa tower a 1632', '2021-02-04 07:43:39', '2021-02-04 07:43:39'),
(16, 6, 'ketua', 'Reynold Prajogo', '081330185603', 'reynolddp', 'reynoldprajogo4@gmail.com', 'Woodland 6 no. 27, Surabaya', '2021-02-05 20:12:50', '2021-02-05 20:12:50'),
(17, 6, 'anggota', 'Edward Christian Budijanto', '082266552695', 'ghaustt', 'edwardchristianb10@gmail.com', 'Woodland 2 no.122', '2021-02-05 20:12:50', '2021-02-05 20:12:50'),
(18, 6, 'anggota', 'Nicholas Patrick Thahjono', '087856409615', 'nicholaspat', 'nicholaspatrick.tj@gmail.com', 'Satelit Utara IX KT14', '2021-02-05 20:12:50', '2021-02-05 20:12:50'),
(19, 7, 'ketua', 'Michelle Neomi Effendi', '081228483986', 'michell_neomi', 'michelleneomi8@gmail.com', 'Darmo Baru Timur 2 No .21 Surabaya', '2021-02-06 21:10:10', '2021-02-06 21:10:10'),
(20, 7, 'anggota', 'Eden Aristo Tingkir', '081350563300', 'edenaristo', 'eden.aristo@gmail.com', 'Jl. Padat Karya no 4 Balikpapan', '2021-02-06 21:10:10', '2021-02-06 21:10:10'),
(21, 7, 'anggota', 'Nathen Gallagher Priyonggo', '085100948344', 'snyp_gyocr', 'nagapri16@gmail.com', 'Jemursari IV/30 Surabaya', '2021-02-06 21:10:10', '2021-02-06 21:10:10'),
(22, 8, 'ketua', 'Alicia Princess Tandayu', '082232204376', 'aliciaprincessapt', 'aliciaprincessapt@gmail.com', 'Galaxi Bumi Perma H4 no 2', '2021-02-09 19:04:44', '2021-02-09 19:04:44'),
(23, 8, 'anggota', 'Thomas Sidarta Setio', '087853949850', 'thomas120305', 'thomasset120305@gmail.com', 'Nirwana Eksekutif CC /4 no 301', '2021-02-09 19:04:44', '2021-02-09 19:04:44'),
(24, 8, 'anggota', 'Jonathan Putera Handoyono', '081339607700', 'jo7ph', 'jonathanphandoyo@gmail.com', 'Jalan Manyar Tirtoasri 1 No 39', '2021-02-09 19:04:44', '2021-02-09 19:04:44'),
(25, 9, 'ketua', 'Justin Xavier Romano Gunawan', '081392287695', 'jxrg_05', 'justin1405xrg@gmail.com', 'Jalan Wiguna Tengah XIX no.5', '2021-02-10 00:02:11', '2021-02-10 00:02:11'),
(26, 9, 'anggota', 'Joshua Giovanni Mulyanto', '087750692269', 'projoshua04', 'projoshua04@gmail.com', 'Panjang Jiwo Permai II no.3', '2021-02-10 00:02:11', '2021-02-10 00:02:11'),
(27, 9, 'anggota', 'Christiana Renata Purwanto', '083830557745', 'christiana_renata20', 'christianarenatap@gmail.com', 'Delta Puspa no.25', '2021-02-10 00:02:11', '2021-02-10 00:02:11'),
(28, 10, 'ketua', 'Naufal Revaldy Fauzan', '082234799033', '-', 'naufalrevaldy1234@gmail.com', 'Dusun Maron, Genteng Kulon, Genteng', '2021-02-10 17:04:47', '2021-02-10 17:04:47'),
(29, 10, 'anggota', 'Arya Pradipa Airlangga Hartoyo', '082232226575', '-', 'arya.p.a.hartoyo@gmail.com', 'Dusun Krajan, Benculuk', '2021-02-10 17:04:47', '2021-02-10 17:04:47'),
(30, 10, 'anggota', 'Mohammad Ari Putra Wirayuda', '087741496524', '-', 'aryudaputra12@gmail.com', 'Dusun Tlogosari, Jambewangi, Sempu', '2021-02-10 17:04:47', '2021-02-10 17:04:47'),
(35, 12, 'anggota', 'Laetisha Jane Vanjoo', '081262229217', 'laetishajane', 'laetisha.jane@gmail.com', 'Jl. Jenggolo no. 54 Sidoarjo', '2021-02-12 07:35:59', '2021-02-12 07:35:59'),
(34, 12, 'ketua', 'Kathryn Laurencia Setiawan', '087851223886', 'kathryn2354', 'kathryn.laurenciaa@gmail.com', 'Jl. Jenggolo no. 54 Sidoarjo', '2021-02-12 07:35:59', '2021-02-12 07:35:59'),
(36, 12, 'anggota', 'Brian Timothy Santoso', '085214121990', 'briantimothy', 'briantimothy001@gmail.com', 'Jl. Jenggolo no. 54 Sidoarjo', '2021-02-12 07:35:59', '2021-02-12 07:35:59'),
(37, 13, 'ketua', 'Junita Kerin', '082158768098', 'istriyato', 'keyyy0706@gmail.com', 'Jl. Adam Malik Gg. Nihayah 4 No. 9a RT 21, Karang Asam Ilir, Kec. Sungai Kunjang, Samarinda 75126 Kalimantan Timur', '2021-02-12 23:45:50', '2021-02-12 23:45:50'),
(38, 13, 'anggota', 'Zaneta Immanuela Kang', '081368680750', 'bakemonlevi', 'zanetakang@gmail.com', 'Jl. Siradj Salman, Perumahan Grand Mahakam Blok F5 Rt 029 Teluk Lerong Ilir Samarinda Ulu Kota Samarinda, 75128 Kalimantan Timur', '2021-02-12 23:45:50', '2021-02-12 23:45:50'),
(39, 13, 'anggota', 'Fransiskus Vanness U', '085345028761', 'vannessu', 'frans.f2401@gmail.com', 'Jl. Bukit Barisan Gang 1A, Samarinda Ulu Kota Samarinda, 75128 Kalimantan Timur', '2021-02-12 23:45:50', '2021-02-12 23:45:50'),
(40, 14, 'ketua', 'Ignasya Kayna Permatasari Sondakh', '087751313678', 'misscatnap', 'kayna.sondakh@gmail.com', 'San Diego M7/no.1', '2021-02-13 03:23:27', '2021-02-13 03:23:27'),
(41, 14, 'anggota', 'Anjeanette Tiffney', '087855952004', 'Anjeanette2406', 'Atiffney24@gmail.com', 'Palem Selatan 5 mc 148 Pondok Tjandra', '2021-02-13 03:23:27', '2021-02-13 03:23:27'),
(42, 14, 'anggota', 'Jennifer', '085100988911', 'jennifertjong7', 'tambatjongjennifer07@gmail.com', 'Nginden Kota 2/113', '2021-02-13 03:23:27', '2021-02-13 03:23:27'),
(43, 15, 'ketua', 'FIRENZE VIPAZZA HUANG', '082324799327', 'kyuketsukiz', 'firenzevipassa@gmail.com', 'GRAHA PADMA B3/20, SEMARANG', '2021-02-13 06:44:37', '2021-02-13 06:44:37'),
(44, 15, 'anggota', 'NATHANAEL AURELINO SULUSTYO', '082314011088', 'arelsulistyo', 'nathanaelaurelino.sulistyo@tritunggalcs.id', 'PLAMONGAN INDAH H5-34, SEMARANG', '2021-02-13 06:44:37', '2021-02-13 06:44:37'),
(45, 15, 'anggota', 'NICHOLAS ALEXANDER JOSIA', '087832033520', 'nicholasalexander.j', 'nicholasalexander.josia@tritunggalcs.id', 'SEMARANG INDAH C10/2, SEMARANG', '2021-02-13 06:44:37', '2021-02-13 06:44:37'),
(46, 16, 'ketua', 'KEVIN SETIAWAN WAHYUDI', '0895348603845', 'kevsw', 'kevinsetiawan.wahyudi@tritunggalcs.id', 'BOEGENVILLE SELATAN EF 89, SEMARANG', '2021-02-13 07:08:34', '2021-02-13 07:08:34'),
(47, 16, 'anggota', 'PHILIP DEANNE TIRTOSUDIRO', '08112965011', 'philiptirto321', 'philipdeanne.tirtosudiro@tritunggalcs.id', 'SEROJA DALAM I/15', '2021-02-13 07:08:34', '2021-02-13 07:08:34'),
(48, 16, 'anggota', 'ONG,CLARENCIUS REYNARD VALERYO SUGIYANTO', '0896673585282', 'clarencius_reynard', 'ongclarencius.sugiyanto@tritunggalcs.id', 'TAMAN MAGNOLIA A6/18, GRAHA PADMA, SEMARANG', '2021-02-13 07:08:34', '2021-02-13 07:08:34'),
(49, 17, 'ketua', 'Aurelia Esther Rompas', '081231647880', 'auw_esther', 'auwesther@gmail.com', 'Jl. Taman Asri Utara P40, Tambaksumur, Kec. Waru, Kabupaten Sidoarjo, Jawa Timur 61256', '2021-02-13 07:14:25', '2021-02-13 07:14:25'),
(50, 17, 'anggota', 'Eugenia Aileen Putrijaya', '081335118460', 'vonpio1310', 'aiileenn13@gmail.com', 'wonorejo permai selatan 2 CC 192, nirwana eksekutif', '2021-02-13 07:14:25', '2021-02-13 07:14:25'),
(51, 17, 'anggota', 'Maria Amabella Ava', '082132331497', 'amabellaava', 'amabellaava@gmail.com', 'Jl.Arief Rahman Hakim Regency 21 block D/2', '2021-02-13 07:14:25', '2021-02-13 07:14:25'),
(56, 19, 'anggota', 'Stacy Mischa Kabidin', '081222215509', 'stacymischa', 'stacy.1667029@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:03:59', '2021-02-14 05:03:59'),
(55, 19, 'ketua', 'Rachael Priscilla Widjaja', '087877117017', 'rachwidjaja', 'rachael.1667004@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:03:59', '2021-02-14 05:03:59'),
(57, 19, 'anggota', 'Amanda Lauren Kamayata', '083812930820', 'amandalauren', 'amanda.1667013@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:03:59', '2021-02-14 05:03:59'),
(58, 20, 'ketua', 'Frederik Imanuel Tanuwijaya', '081286329093', 'fredtan2', 'frederik.1667036@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(59, 20, 'anggota', 'Clarissa Heodinata', '08118075222', 'clarissah160604', 'clarissa.1986010@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(60, 20, 'anggota', 'Oliver Nathaniel Yuwono', '089681973980', 'olivernathanael', 'oliver.0611107@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(61, 21, 'ketua', 'Natania Belinda Yasuo', '087782976016', 'nataniabelinda', 'natania.1767001@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(62, 21, 'anggota', 'Rafael Julian Tjayadi', '081248773198', 'rafael2830', 'rafael.1767019@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(63, 21, 'anggota', 'Winsen Yang', '085280128075', 'winsen_y', 'winsen.1767002@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(64, 22, 'ketua', 'Kristiana Renata', '0818983010', 'kristianarenata', 'kristiana.2086021@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(65, 22, 'anggota', 'Caitlin Leticia Apin', '081807443261', 'caitlinchu', 'caitlin.1886008@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(66, 22, 'anggota', 'Kayla', '08116000431', 'kayla.rrr7', 'kayla.2086031@bpkpenabur.sch.id', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '2021-02-14 05:05:55', '2021-02-14 05:05:55'),
(67, 23, 'ketua', 'Hansel Meinhard', '087703004065', 'hanselmeinhard', 'hansel.meinhard04@gmail.com', 'Jl. Kutisari Indah Selatan I No.81, Surabaya', '2021-02-14 05:22:23', '2021-02-14 05:22:23'),
(68, 23, 'anggota', 'Amelia Margaretha Suprapto', '085257461125', 'amelia.ms', 'ameliamargarethas@gmail.com', 'Jl. Mangga VI/172, Pondok Candra Indah, Sidoarjo', '2021-02-14 05:22:23', '2021-02-14 05:22:23'),
(69, 23, 'anggota', 'Kezia Trifena', '089607702414', 'keziatrifena17', 'keziatrifena17@gmail.com', 'Rambutan X E/665, Pondok Candra Indah, Sidoarjo', '2021-02-14 05:22:23', '2021-02-14 05:22:23'),
(70, 24, 'ketua', 'Mochammad Syahrul Andrian', '085785147466', 'andrian26_', 'andrian.2r12@gmail.com', 'Kalanganyar, Sedati, Sidoarjo', '2021-02-14 05:47:45', '2021-02-14 05:47:45'),
(71, 24, 'anggota', 'Muhammad Arsya Zain Yashifa', '087851390369', 'arsyazain16', 'arsyazain02@gmail.com', 'Taman Pondok Legi, Waru, Sidoarjo', '2021-02-14 05:47:45', '2021-02-14 05:47:45'),
(72, 24, 'anggota', 'Ferryansyah Gemarchiqbal Maulana', '081252867834', 'gemariqbal', 'ryangm79@gmail.com', 'Magersari, Sidoarjo, Sidoarjo', '2021-02-14 05:47:45', '2021-02-14 05:47:45'),
(73, 25, 'ketua', 'Zaki Yudhistira Candra', '081553685432', 'zakicandra123', 'zakicandra82@gmail.com', 'Galaxy Bumi Permai N4 No 2', '2021-02-14 08:10:26', '2021-02-14 08:10:26'),
(74, 25, 'anggota', 'Brendan Timothy Mannuel', '081515528712', 'btm555', 'brendantimothym@gmail.com', 'Alamat rumah Lebak Timur Indah B1', '2021-02-14 08:10:26', '2021-02-14 08:10:26'),
(75, 25, 'anggota', 'Aqila Az Zahra', '081252344041', 'aqilaa2508', 'aqilaazzahra2508@gmail.com', 'JL.Akasia no.5 BP.Wetan, Gresik', '2021-02-14 08:10:26', '2021-02-14 08:10:26'),
(76, 26, 'ketua', 'WENDLEY CLARA EVANGELINE ARIANTO', '08117122005', 'leila_lara', 'claraarianto@gmail.com', 'KLAMPIS SEMOLO TIMUR XII NO 18', '2021-02-14 20:00:49', '2021-02-14 20:00:49'),
(77, 26, 'anggota', 'LOIS CALISTA', '087855178900', 'loiscalista.r.190704', 'calistalois22@gmail.com', 'WONOREJO PERMAI UTARA VI NO 370', '2021-02-14 20:00:49', '2021-02-14 20:00:49'),
(78, 26, 'anggota', 'FRANCIS LIMANSETO', '085100529600', 'francis.09', 'francis.lmt@gmail.com', 'WONOREJO PERMAI UTARA IX NO 103', '2021-02-14 20:00:49', '2021-02-14 20:00:49'),
(79, 27, 'ketua', 'Richie Jonathan', '08115698883', 'richie30', 'rjrocks144@gmail.com', 'Jalan Abdul Rachman Saleh Gang Amalia Sagita Komplek Grand Residence 8 Nomor A88, Pontianak', '2021-03-05 16:02:12', '2021-03-05 16:02:12'),
(80, 27, 'anggota', 'Rachel Tiono', '082154588883', 'racheltiono', 'racheltiono@gmail.com', 'Jalan Cendrawasih Nomor 32B', '2021-03-05 16:02:12', '2021-03-05 16:02:12'),
(81, 27, 'anggota', 'Leonardo Saputra', '085822384070', 'leonardosaputra123', 'leonardosaputra1601@gmail.com', 'Jalan Pondok Indah Lestari Gang Gaharu V Nomor 12B', '2021-03-05 16:02:12', '2021-03-05 16:02:12'),
(82, 28, 'ketua', 'Gede Arya Diva Dhananjaya', '082144067910', 'gearyadiv14', 'aryadivad2003@gmail.com', 'Banjar Tegalsari, Desa Bubunan, Kecamatan Seririt, Kabupaten Buleleng', '2021-03-15 19:18:26', '2021-03-15 19:18:26'),
(83, 28, 'anggota', 'I Putu Aditya Warman', '087751085119', '157834902345', 'adityawarman@smanbalimandara.sch.id', 'Jl. Mawar, Banjar Dangin     Pangkung, Desa Pekutatan, Kecamatan Pekutatan, Kabupaten Jembrana, Bali.', '2021-03-15 19:18:26', '2021-03-15 19:18:26'),
(84, 28, 'anggota', 'I Gusti Nyoman Merta Septiadi', '082145235733', 'septiadi', 'septiadi268@gmail.com', 'Banjar Dinas Abasan, Desa Panji Anom, Kecamatan Sukasada, Kabupaten Buleleng', '2021-03-15 19:18:26', '2021-03-15 19:18:26'),
(85, 29, 'ketua', 'Felicia Yoshe', '081334306695', 'feliciaayoshee', 'yoshefelicia01@gmail.com', 'Jalan Asahan no. 8, Surabaya', '2021-03-16 18:24:16', '2021-03-16 18:24:16'),
(86, 29, 'anggota', 'Deshanna Hertha', '081231990240', 'deshanna123', 'deshanna.hertha@gmail.com', 'Jalan sutorejo prima selatan 9/pq-12', '2021-03-16 18:24:16', '2021-03-16 18:24:16'),
(87, 29, 'anggota', 'Nathanael Joshua', '0895802062183', '520.joshua', 'nathanael520.joshua@gmail.com', 'Nginden Intan Barat C7/24', '2021-03-16 18:24:16', '2021-03-16 18:24:16'),
(88, 30, 'ketua', 'Jennifer Geraldine Angie', '081217759538', 'jennifer.g.angie', 'jenifergeraldineangie@gmail.com', 'Perum. Sambikerep Indah F5/5', '2021-03-17 20:28:53', '2021-03-17 20:28:53'),
(89, 30, 'anggota', 'Nathania Nabilah Pratitasari', '089632647544', 'tita_nabilah', 'nathania.pratitasari@jacschool.sch.id', 'Citraland, Palma Grandia Blok k4/28', '2021-03-17 20:28:53', '2021-03-17 20:28:53'),
(90, 30, 'anggota', 'Matthew Regan Hadiwidjaja', '081289996711', 'mathhewrh', 'rhmatthew05@gmail.com', 'Darmo Permai Utara 2 No 34', '2021-03-17 20:28:53', '2021-03-17 20:28:53'),
(91, 31, 'ketua', 'Elizabeth Alda Hermanto', '081334952880', 'aldarika', 'aldahermanto@gmail.com', 'Apartemen Puncak Kertajaya', '2021-03-17 22:10:48', '2021-03-17 22:10:48'),
(92, 31, 'anggota', 'Jofvina Chandra', '085707851359', 'jof2405', 'jofvinac@gmail.com', 'Nirwana Eksekutif,  Jl. Wonorejo Permai Utara IX. Blok BB88', '2021-03-17 22:10:48', '2021-03-17 22:10:48'),
(93, 31, 'anggota', 'Sienny', '08113051610', 'siennykuswardi', 'siennykuswardi@gmail.com', 'Raya Manyar Jaya B234A', '2021-03-17 22:10:48', '2021-03-17 22:10:48'),
(94, 32, 'ketua', 'Dhafin Yashi Syah', '082261889693', '937389marq', 'dhafin.yashisyah@gmail.com', 'Bukit Kayumanis Blok E/5, Jalan Cendana Raya, Kayumanis, tanah sereal, Bogor', '2021-03-18 00:05:15', '2021-03-18 00:05:15'),
(95, 32, 'anggota', 'Sulaiman Syarif', '089630600094', 'ssyarif123', 'sulaiman.syarif@albayan.or.id', 'Jl. Kemang Melati 4  Blok M 27 Kemang Pratama 2, Bekasi 17116', '2021-03-18 00:05:15', '2021-03-18 00:05:15'),
(96, 32, 'anggota', 'Thaffariq Azka Rahmat', '087720445252', 'thaffariq.azka', 'thaffariq.azka.rahmat@albayan.or.id', 'Jl. Suryalaya VII No. 7, Cijagra, Lengkong, Kota Bandung, Jawa Barat, 40265', '2021-03-18 00:05:15', '2021-03-18 00:05:15'),
(97, 33, 'ketua', 'Shella Harjono', '08883101424', '@shellaharjono', 'shella.harjono10@gmail.com', 'Jl Dewi Sartika no 33 Pasuruan', '2021-03-21 23:07:03', '2021-03-21 23:07:03'),
(98, 33, 'anggota', 'Hans Morgan Lie', '089685330399', '@hansmorgan', 'morganlie1804@gmail.com', 'Jl RE Martadinata no 78', '2021-03-21 23:07:03', '2021-03-21 23:07:03'),
(99, 33, 'anggota', 'Miracle Ila Willymarsa', '082111898106', '@aclewillyang', 'willymarsam@gmail.com', 'Perum Dian Anyar Blok B3 No. 5 Ciseureuh Purwakarta', '2021-03-21 23:07:03', '2021-03-21 23:07:03'),
(100, 34, 'ketua', 'Muhammad Abdul Lathif Kariim', '081390244350', 'lathifkariim', 'lathifkariim@gmail.com', 'Perumahan Pondok Hijau D-9, Wates, Ngaliyan, Semarang, JawaTengah', '2021-03-24 18:23:35', '2021-03-24 18:23:35'),
(101, 34, 'anggota', 'Muhammad Farrel Endra Bachtiar', '081392314430', 'cheapy123', 'farrel.bachtiar22@gmail.com', 'Jl. Bima Raya No 7 RT 1/RW 1', '2021-03-24 18:23:35', '2021-03-24 18:23:35'),
(102, 34, 'anggota', 'Talitha Aristawati Listiyanti', '085643091502', 'talitharusiyanto', 'talitha3004@gmail.com', 'BSB Village Boulevard Blok H No.3A Kelurahan Bubakan, Kota Semarang, Mijen, Jawa Tengah', '2021-03-24 18:23:35', '2021-03-24 18:23:35'),
(103, 35, 'ketua', 'Nadya Ratna Riena', '08194092004', 'phosphophyllon', 'nadyaratnariena@gmail.com', 'Jalan Seruni Lorong Way Kanan Kavling 3', '2021-03-25 00:08:38', '2021-03-25 00:08:38'),
(104, 35, 'anggota', 'Fathi Aurasaliha Thorifah', '083175802006', 'aurafathi', 'fathiauras@gmail.com', 'Komplek Griya Hero Abadi Blok FF1', '2021-03-25 00:08:38', '2021-03-25 00:08:38'),
(105, 35, 'anggota', 'Kivlan', '081273476423', 'hollowsound', 'kivlanrp@gmail.com', 'Perum Green Resort Blok E7 20-22', '2021-03-25 00:08:38', '2021-03-25 00:08:38'),
(106, 36, 'ketua', 'Alexander Jason', '081336195878', 'a_jason_36', 'alexanderjason526@gmail.com', 'Tenggilis Utara V / 26, Surabaya', '2021-03-25 00:39:03', '2021-03-25 00:39:03'),
(107, 36, 'anggota', 'Jesselyne Louisa', '081331984848', 'jeslou.', 'jesselyne28@gmail.com', 'Jl. Manyar Tirto Asri 3 / 3, Surabaya', '2021-03-25 00:39:03', '2021-03-25 00:39:03'),
(108, 36, 'anggota', 'Michael Soesanto', '081234563489', 'mic7231', 'michaelsoesanto.ms@gmail.com', 'Perumahan Puri Mawar Kav 7-8, Blitar', '2021-03-25 00:39:03', '2021-03-25 00:39:03'),
(109, 37, 'ketua', 'Andreas Reynard Samsico', '082297908197', 'andreasreynards', 'andreasreynard845@gmail.com', 'Jl. Vila Regency AT4/7, Pakuwon Indah, Surabaya', '2021-03-31 23:50:22', '2021-03-31 23:50:22'),
(110, 37, 'anggota', 'Kevin Lius Bong', '081703873187', 'kevin.l.b', 'kevinliusbong@gmail.com', 'Jl.darmo indah timur s-7', '2021-03-31 23:50:22', '2021-03-31 23:50:22'),
(111, 37, 'anggota', 'Sherly Anastasia', '085106029060', 'songokukame', 'sherlyxxx.anastasiaxxx@gmail.com', 'Jl. Jarak No. 77', '2021-03-31 23:50:22', '2021-03-31 23:50:22'),
(112, 38, 'ketua', 'Parlindungan Marcelino', '085231384385', '100405tmbn', 'sitambunmarcelino@gmail.com', 'Mcg Bligo Candi F3-12', '2021-04-05 19:06:29', '2021-04-05 19:06:29'),
(113, 38, 'anggota', 'Muhammad Reza Indarto', '081336289221', 'rezaindarto', 'Indartoreza@gmail.com', 'Ds.entalsewu rt14 rw04', '2021-04-05 19:06:29', '2021-04-05 19:06:29'),
(114, 38, 'anggota', 'Elsa Marsabillah', '085895320771', 'ell', 'marsabillah15@gmail.com', 'Jl. Hasanudin Desa celep rt 03 rw 01 no 169', '2021-04-05 19:06:29', '2021-04-05 19:06:29'),
(115, 39, 'ketua', 'Hauratul Zahra', '0881036987203', 'affazala', 'zhaura105@gmail.com', 'Perum Swan Menganti Mas Blok H-55 Ds Palem Watu Menganti-Gresik', '2021-04-06 06:21:22', '2021-04-06 06:21:22'),
(116, 39, 'anggota', 'Jimly Asshidiqy', '081334714244', 'jimlyasshidiqy', 'asshidiqyjimly@gmail.com', 'Dsn Talun RT 19/RW 08 Ds Bringkang, Menganti Gresik', '2021-04-06 06:21:22', '2021-04-06 06:21:22'),
(117, 39, 'anggota', 'Mas Andias Putra Ramadhani', '083848204122', 'masandias2', 'masandiasputra23@gmail.com', 'Kav. H no 6 Dusun Kecipik RT 13/RW 05 Desa Boteng-Gresik', '2021-04-06 06:21:22', '2021-04-06 06:21:22'),
(118, 40, 'ketua', 'SEPTA LATIFA QOLBI', '081977392316', 'septalatifa15', 'septaqolbi@gmail.com', 'Perum Griya Giri Mulya C-25, Klatak, Kalipuro', '2021-04-08 07:03:41', '2021-04-08 07:03:41'),
(119, 40, 'anggota', 'BIMA RIZKY SOFYAN', '089683031617', 'bimarizkysofyan', 'bimarizkysofyan@gmail.com', 'Jl. Raya Lijen', '2021-04-08 07:03:41', '2021-04-08 07:03:41'),
(120, 40, 'anggota', 'RAISHA PUTRI AZZAHRA', '085335600707', 'raishaputri', 'raishaputri2004@gmail.com', 'Jl. Abdullah gang 2 No. 37', '2021-04-08 07:03:41', '2021-04-08 07:03:41'),
(121, 41, 'ketua', 'Maria Josephine Christina Nugroho', '085706632499', 'maria_josephine', 'mjosephine1324@gmail.com', 'Perum. Puri Mas jl. gianyar c7/5, Surabaya', '2021-04-08 17:18:14', '2021-04-08 17:18:14'),
(122, 41, 'anggota', 'Alvin', '081252058075', 'alvin_batubara', 'alvinbatubara@gmail.com', 'Pasar Krembangan 25, Surabaya', '2021-04-08 17:18:14', '2021-04-08 17:18:14'),
(123, 41, 'anggota', 'Cornellius Powellnandus Rongkang', '082231395720', 'cornellius_28', 'cornellius28@gmail.com', 'Lebak indah mas 2 kav 21', '2021-04-08 17:18:14', '2021-04-08 17:18:14'),
(124, 42, 'ketua', 'Francesco Michael Kusuma', '08993585889', 'frncs31122003', 'francescokusuma15@gmail.com', 'Jl. Sidosermo PDK 1A / 259', '2021-04-08 20:56:30', '2021-04-08 20:56:30'),
(125, 42, 'anggota', 'Nikolas Pradipta Wardana', '082257423937', 'nikolas_pradipta2303', 'nikolaspw.np@gmail.com', 'Pondok Maritim Indah Cluster Boulevard V 24', '2021-04-08 20:56:30', '2021-04-08 20:56:30'),
(126, 42, 'anggota', 'Mitchell Judah', '089653620715', 'judah.potato', 'judahmitchell2204@gmail.com', 'Manggis 8/658 Pondok Tjandra Indah', '2021-04-08 20:56:30', '2021-04-08 20:56:30'),
(127, 43, 'ketua', 'MUSTIKO BAYU AJI', '085234105198', 'mus.bayu', 'bayumustiko551@gmail.com', 'RT 12, RW 02, DS. ARANGANYAR, KEC. PULE', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(128, 43, 'anggota', 'AULIA BENING SUFIAH', '082231285792', 'aulia_phy', 'auliabening277@gmail.com', 'RT 58, RW 16, DS. JOMBOK, KEC. PULE', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(129, 43, 'anggota', 'VINKA NOVIANA SETYANINGRUM', '081249125691', '-', 'vinka.noviana21@gmail.com', 'Alamat: RT 11, RW 02, Desa Karanganyar, Kecamatan Pule', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(130, 44, 'ketua', 'ANINDYA WIDI ASRIANTO PUTRI', '085204231144', '-', 'anindwap@gmail.com', 'RT 12, RW 02, DS. ARANGANYAR, KEC. PULE', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(131, 44, 'anggota', 'ASTRI MULIAWATI', '082232463324', '-', 'astrimuliawati123@gmail.com', 'Rt. 76 Rw. 20 Dsn. Kojan Ds. Jombok Kec. Pule', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(132, 44, 'anggota', 'HAPPY NANDA ASMARA', '085233754543', '-', 'happynanda072@gmail.com', 'Desa Jombok, Kecamatan Pule', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(133, 45, 'ketua', 'BAGAS ADI PRAYOGA', '082245898382', '-', 'bgsdprayoga@gmail.com', 'Rt 54 Rw 26 Dusun Tirisan Desa Pule', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(134, 45, 'anggota', 'TERA OVI RAHAYU', '082229036447', 'tera.ovi', 'tera.ovi2005@gmail.com', 'RT 10, RW 05, Dusun Krajan, Desa Pule, Kecamatan Pule', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(135, 45, 'anggota', 'ADISA TRI SHILA PUTRI', '082264909518', '-', 'adyezzavut@gmail.com', 'RT 21 RW 02 Dsn. Ngledok Ds. Tanggaran', '2021-04-09 00:44:34', '2021-04-09 00:44:34'),
(136, 46, 'ketua', 'Afnan Nadhir', '082135083832', '-', 'afnannadhir58@gmail.com', 'Pondok Pesantren Al - Hikmah 2 Benda Sirampog Brebes Jawa Tengah Indonesia 52272', '2021-04-09 01:37:08', '2021-04-09 01:37:08'),
(137, 46, 'anggota', 'Muhammad Azmi Avisena', '085640743490', '-', 'azmiavisena66@gmail.com', 'Pondok Pesantren Al - Hikmah 2 Benda Sirampog Brebes Jawa Tengah Indonesia 52272', '2021-04-09 01:37:08', '2021-04-09 01:37:08'),
(138, 46, 'anggota', 'Hana Fitria', '088216518757', '-', 'afnannadhir@yahoo.co.id', 'Pondok Pesantren Al - Hikmah 2 Benda Sirampog Brebes Jawa Tengah Indonesia 52272', '2021-04-09 01:37:08', '2021-04-09 01:37:08'),
(139, 47, 'ketua', 'Emilda Puteri Aulia', '082230124253', 'nellaysmn', 'emildaaulia01@gmail.com', 'Jl. Ky Ahmad Kholil, No 100, Cangaan, Genteng, Banyuwangi', '2021-04-09 09:52:19', '2021-04-09 09:52:19'),
(140, 47, 'anggota', 'Zulfa Nailil Muna', '085655123207', 'zzulfaa.nm', 'zulfanailil27@gmail.com', 'Desa Blimbing RT o3 RW 01 Kec. Rejotangan, Tulungagung', '2021-04-09 09:52:19', '2021-04-09 09:52:19'),
(141, 47, 'anggota', 'Nadhif Fenella Yasmin', '087736825507', 'nellaysmn', 'nadhif16fenella@gmail.com', 'Krajan Selatan No.44 RT 01 RW 04 Sumber porong, lawang, malang', '2021-04-09 09:52:19', '2021-04-09 09:52:19'),
(142, 48, 'ketua', 'Arif Budiman Suherman', '083311142509', 'arifb0609', 'arifb0699@gmail.com', 'Jalan Kowilhan 3 lrg B6 No 11', '2021-04-09 21:13:38', '2021-04-09 21:13:38'),
(143, 48, 'anggota', 'A. Tiara Maharani', '083137373013', 'andtiamhrni07', 'a.tiaramaharani64@gmail.com', 'Kompleks Beverly Hils Makassar B.2', '2021-04-09 21:13:38', '2021-04-09 21:13:38'),
(144, 48, 'anggota', 'Gladies Angelinda Octavia', '085252136824', 'gladiesan14', 'gladiesangelinda317@gmail.com', 'Jl. Rappocini raya lrg 4 no.19', '2021-04-09 21:13:38', '2021-04-09 21:13:38'),
(145, 49, 'ketua', 'ARFANSYAH', '087865727760', 'arfnsyh9786', 'arfansyah1910@gmail.com', 'BTP BLOK K NO.353', '2021-04-10 02:26:23', '2021-04-10 02:26:23'),
(146, 49, 'anggota', 'FEBRYANY AMARA PUTRI', '082397776245', 'febyamara08', 'febryanyamara.putri0602@gmail.com', 'PERUMAHAN R2000 BLOK 2F NO 50', '2021-04-10 02:26:23', '2021-04-10 02:26:23'),
(147, 49, 'anggota', 'PUTRI N.Z DAUD', '081380382295', 'urgl23', 'putrinabilah2306@gmail.com', 'JL. KELINCI NO. 14, VETERAN SELATAN', '2021-04-10 02:26:23', '2021-04-10 02:26:23'),
(148, 50, 'ketua', 'Cardia Maharani Yohana Siburian', '085608791389', 'carlovechanyeol', 'cardiaaay@gmail.com', 'Jalan Mengger tengah N0.44', '2021-04-10 07:24:04', '2021-04-10 07:24:04'),
(149, 50, 'anggota', 'Joey', '082366556633', 'joeyvinson5555', 'joeyvinsonmall@gmail.com', 'TKI 1 Blok I no.112', '2021-04-10 07:24:04', '2021-04-10 07:24:04'),
(150, 50, 'anggota', 'Vincent Donovan Bunawan', '085724547230', '085724547230', 'vdonovan2004@gmail.com', 'Pohon Mangga Cityland Block 10 No.2', '2021-04-10 07:24:04', '2021-04-10 07:24:04'),
(151, 51, 'ketua', 'Karenina Wong', '085795027241', 'ferryaon796', 'fariatiff4@gmail.com', 'Jl. Cisaranten Baru no. 9', '2021-04-10 07:40:19', '2021-04-10 07:40:19'),
(154, 52, 'ketua', 'Anasthasya', '08125001240', 'peyinperjo', 'anasthasyaaverina@gmail.com', 'Ambengan Tengah 6', '2021-04-10 09:26:05', '2021-04-10 09:26:05'),
(155, 52, 'anggota', 'Helen Hadi', '081252222528', 'helenhadi', 's160418084@student.ubaya.ac.id', 'sama kayak alamatnya koor si ceg 2021 yang di data panitia', '2021-04-10 09:26:05', '2021-04-10 09:26:05'),
(156, 52, 'anggota', 'Bang Jago', '081234567890', 'bangjago', 'si.cegubaya@gmail.com', 'Anonymous', '2021-04-10 09:26:05', '2021-04-10 09:26:05'),
(152, 51, 'anggota', 'Stephen', '089509542891', '-', 'stephenga2909@gmail.com', 'Jl. Ipong no 11A', '2021-04-10 17:00:51', '2021-04-10 17:00:51'),
(153, 51, 'anggota', 'Thomas Anindya', '08882116392', 'thomas_21a', 'thomas.anindyaa@gmail.com', 'Jl. Cibaduyut dalam 1 no.1E/16', '2021-04-10 17:00:51', '2021-04-10 17:00:51');

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'BANTEN', NULL, NULL),
(2, 'DKI JAKARTA', NULL, NULL),
(3, 'JAWA BARAT', NULL, NULL),
(4, 'JAWA TENGAH', NULL, NULL),
(5, 'DI YOGYAKARTA', NULL, NULL),
(6, 'JAWA TIMUR', NULL, NULL),
(7, 'BALI', NULL, NULL),
(8, 'NANGGROE ACEH DARUSSALAM (NAD)', NULL, NULL),
(9, 'SUMATERA UTARA', NULL, NULL),
(10, 'SUMATERA BARAT', NULL, NULL),
(11, 'RIAU', NULL, NULL),
(12, 'KEPULAUAN RIAU', NULL, NULL),
(13, 'JAMBI', NULL, NULL),
(14, 'BENGKULU', NULL, NULL),
(15, 'SUMATERA SELATAN', NULL, NULL),
(16, 'BANGKA BELITUNG', NULL, NULL),
(17, 'LAMPUNG', NULL, NULL),
(18, 'KALIMANTAN BARAT', NULL, NULL),
(19, 'KALIMANTAN TENGAH', NULL, NULL),
(20, 'KALIMANTAN SELATAN', NULL, NULL),
(21, 'KALIMANTAN TIMUR', NULL, NULL),
(22, 'KALIMANTAN UTARA', NULL, NULL),
(23, 'SULAWESI BARAT', NULL, NULL),
(24, 'SULAWESI SELATAN', NULL, NULL),
(25, 'SULAWESI TENGGARA', NULL, NULL),
(26, 'SULAWESI TENGAH', NULL, NULL),
(27, 'GORONTALO', NULL, NULL),
(28, 'SULAWESI UTARA', NULL, NULL),
(29, 'MALUKU', NULL, NULL),
(30, 'MALUKU UTARA', NULL, NULL),
(31, 'NUSA TENGGARA BARAT (NTB)', NULL, NULL),
(32, 'NUSA TENGGARA TIMUR (NTT)', NULL, NULL),
(33, 'PAPUA BARAT', NULL, NULL),
(34, 'PAPUA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tim`
--

CREATE TABLE `tim` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sekolah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_sekolah` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `tiga_tim` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','confirmed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_file` enum('pending','confirmed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `kab_kota_id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `file_zip_id` bigint(20) UNSIGNED NOT NULL,
  `file_bukti_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `absen_tm` datetime DEFAULT NULL,
  `absen_day1` datetime DEFAULT NULL,
  `absen_day2` datetime DEFAULT NULL,
  `absen_day3` datetime DEFAULT NULL,
  `status_lomba` enum('semifinal','final','peserta') COLLATE utf8mb4_unicode_ci DEFAULT 'peserta',
  `status_peserta` enum('active','inactive') COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tim`
--

INSERT INTO `tim` (`id`, `nama`, `sekolah`, `alamat_sekolah`, `tiga_tim`, `status`, `status_file`, `kab_kota_id`, `users_id`, `file_zip_id`, `file_bukti_id`, `created_at`, `updated_at`, `absen_tm`, `absen_day1`, `absen_day2`, `absen_day3`, `status_lomba`, `status_peserta`, `link`) VALUES
(1, 'RRQ HOSHI', 'ELYON CHRISTIAN SCHOOL', 'Jl Raya Darmo Permai II/2A', NULL, 'confirmed', 'confirmed', 97, 6, 1, 1, '2021-01-17 08:40:08', '2021-04-23 01:30:17', '2021-04-17 10:06:20', '2021-04-23 08:30:17', NULL, NULL, 'peserta', 'inactive', NULL),
(2, 'JFC', 'Intan Permata Hati East', 'Raya Kedung Baruk 112-114 Surabaya 60298', NULL, 'confirmed', 'confirmed', 97, 13, 3, 2, '2021-01-20 21:21:55', '2021-04-23 01:31:07', '2021-04-17 10:00:34', '2021-04-23 08:31:07', NULL, NULL, 'peserta', 'inactive', NULL),
(3, 'LiLiLi', 'SMAK St.Louis 1, Surabaya', 'Jl. M. Jasin Polisi Istimewa 7 Surabaya, Indonesia', NULL, 'confirmed', 'confirmed', 97, 14, 4, 3, '2021-01-24 07:30:47', '2021-01-26 01:15:20', NULL, NULL, NULL, NULL, 'peserta', 'inactive', NULL),
(4, 'Terserah', 'SMA Kristen Masa Depan Cerah', 'Diamond Hill DH 1/11, CItraland, Surabaya', NULL, 'confirmed', 'confirmed', 97, 15, 5, 4, '2021-02-03 02:05:54', '2021-04-23 01:38:10', '2021-04-17 10:04:14', '2021-04-23 08:38:10', NULL, NULL, 'peserta', 'inactive', NULL),
(5, 'Kent And Friends', 'Intan Permata Hati', 'raya kedungbaruk 112-114', NULL, 'confirmed', 'confirmed', 97, 16, 6, 7, '2021-02-04 07:43:39', '2021-04-23 01:32:45', '2021-04-17 10:10:58', '2021-04-23 08:32:45', NULL, NULL, 'peserta', 'inactive', NULL),
(6, 'Think tank', 'SMA Gloria 1', 'Jalan Sukomanunggal Jaya No.25A, Surabaya', NULL, 'confirmed', 'confirmed', 97, 17, 7, 5, '2021-02-05 20:12:50', '2021-04-23 01:33:59', NULL, '2021-04-23 08:33:59', NULL, NULL, 'peserta', 'inactive', NULL),
(7, 'tenemden', 'SMA Katolik St. Louis 1 Surabaya', 'Jl. Polisi Istimewa No.7 Surabaya', NULL, 'confirmed', 'confirmed', 97, 18, 8, 8, '2021-02-06 21:10:10', '2021-04-24 02:00:14', '2021-04-17 10:19:37', '2021-04-23 08:31:02', '2021-04-24 09:00:14', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1Vbt41Ca4AXULzFZOYKWPtrv4B0p9c4zg'),
(8, 'Luck, Pray and Amen', 'SMA Kristen Petra 2', 'Jalan Manyar Tirtoasri', NULL, 'confirmed', 'confirmed', 97, 19, 9, 9, '2021-02-09 19:04:44', '2021-04-23 01:31:33', '2021-04-17 10:09:42', '2021-04-23 08:31:33', NULL, NULL, 'peserta', 'inactive', NULL),
(9, 'PJJ', 'SMA Kristen Petra 5', 'Blok N - O Jl. Jemur Andayani XVII No.2, Siwalankerto, Kec. Wonocolo, Kota SBY, Jawa Timur 60236', NULL, 'confirmed', 'confirmed', 97, 20, 10, 10, '2021-02-10 00:02:11', '2021-04-24 02:02:53', '2021-04-17 10:13:12', '2021-04-23 08:32:20', '2021-04-24 09:02:53', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=19W0qCrtm3bV9KzSq7_9a6TZkCePnC1Yy'),
(10, 'Santuy Squad', 'SMAN 1 Genteng', 'Jalan K. H. Wahid Hasyim 20 Genteng', NULL, 'confirmed', 'confirmed', 97, 21, 40, 11, '2021-02-10 17:04:47', '2021-04-23 01:32:15', '2021-04-17 10:12:42', '2021-04-23 08:32:15', NULL, NULL, 'peserta', 'inactive', NULL),
(12, 'Katrol Wess', 'SMA Kristen Gloria 1 Surabaya', 'Raya Sukomanunggal Jaya 25A, Surabaya', NULL, 'confirmed', 'confirmed', 97, 23, 17, 12, '2021-02-12 07:35:59', '2021-04-24 02:00:04', '2021-04-17 10:03:02', '2021-04-23 08:31:20', '2021-04-24 09:00:04', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=11gqPmabWcnkGcCJYdIlVmWb8KhkbKr6Y'),
(13, 'sournitrate', 'SMA Katolik W. R. Soepratman No. 020 Samarinda', 'Jl. W.R. Supratman No.03, Bugis, Kec. Samarinda Kota, Kota Samarinda', NULL, 'confirmed', 'confirmed', 309, 24, 18, 14, '2021-02-12 23:45:50', '2021-04-23 01:34:46', '2021-04-17 10:03:08', '2021-04-23 08:34:46', NULL, NULL, 'peserta', 'inactive', NULL),
(14, 'Chemystery Solvers', 'Intan Permata Hati School East', 'Jl. Raya Kedung Baruk 112-114 Surabaya 60298', NULL, 'confirmed', 'confirmed', 97, 25, 19, 13, '2021-02-13 03:23:27', '2021-04-23 01:30:49', '2021-04-17 10:15:47', '2021-04-23 08:30:49', NULL, NULL, 'peserta', 'inactive', NULL),
(15, 'ROCKET 69', 'SMA KRISTEN TRITUNGGAL SEMARANG', 'SEMARANG INDAH BLOK F-1', NULL, 'confirmed', 'confirmed', 57, 26, 20, 24, '2021-02-13 06:44:37', '2021-04-24 02:00:49', '2021-04-17 10:13:39', '2021-04-23 08:30:17', '2021-04-24 09:00:49', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1el8Fo2H8NrgnwcD0P_Lj5wH0-QZ9WSOL'),
(16, 'YINKA 69', 'SMA KRISTEN TRITUNGGAL SEMARANG', 'SEMARANG INDAH BLOK F-1', NULL, 'confirmed', 'confirmed', 57, 27, 21, 28, '2021-02-13 07:08:34', '2021-04-23 01:35:37', '2021-04-17 10:13:55', '2021-04-23 08:35:37', NULL, NULL, 'peserta', 'inactive', NULL),
(17, 'UNO', 'IPH Schools East', 'Raya Kedung Baruk No.112 - 114, Penjaringan Sari, Rungkut, Penjaringan Sari, Kec. Rungkut, Kota SBY, Jawa Timur 60298', NULL, 'confirmed', 'confirmed', 97, 28, 22, 19, '2021-02-13 07:14:25', '2021-04-24 02:00:10', '2021-04-17 10:07:58', '2021-04-23 08:33:25', '2021-04-24 09:00:10', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1ndV2W6VbIs51gN74qzPRz_Pd3xqRD_5p'),
(19, 'PSTD4', 'SPK SMAK 8 PENABUR JAKARTA', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', NULL, 'confirmed', 'confirmed', 7, 30, 24, 29, '2021-02-14 05:03:59', '2021-02-16 01:53:27', NULL, NULL, NULL, NULL, 'peserta', 'inactive', NULL),
(20, 'PSTD1', 'SPK SMAK 8 PENABUR JAKARTA', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '20-21-22', 'confirmed', 'confirmed', 7, 31, 25, 16, '2021-02-14 05:05:55', '2021-04-24 02:00:57', '2021-04-17 10:07:52', '2021-04-23 08:32:04', '2021-04-24 09:00:57', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1HjidkDZ8wGXsmqeWtBd2vpyrIiUL5Zcg'),
(21, 'PSTD2', 'SPK SMAK 8 PENABUR JAKARTA', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '20-21-22', 'confirmed', 'confirmed', 7, 32, 26, 16, '2021-02-14 05:05:55', '2021-04-24 02:02:03', '2021-04-17 10:14:20', '2021-04-23 08:31:35', '2021-04-24 09:02:03', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1sTFsDguQjEC53Z5D2N_YHfvjHWnAYw_b'),
(22, 'PSTD3', 'SPK SMAK 8 PENABUR JAKARTA', 'Jalan Tanjung Duren Raya No 4, Jakarta 11470', '20-21-22', 'confirmed', 'confirmed', 7, 33, 27, 16, '2021-02-14 05:05:55', '2021-04-23 01:30:29', '2021-04-17 10:14:59', '2021-04-23 08:30:29', NULL, NULL, 'peserta', 'inactive', NULL),
(23, 'Rococo', 'SMA Kristen Petra 5', 'Jl. Jemur Andayani XVII No.2', NULL, 'confirmed', 'confirmed', 97, 34, 28, 17, '2021-02-14 05:22:23', '2021-04-24 02:00:28', '2021-04-17 10:03:41', '2021-04-23 08:30:12', '2021-04-24 09:00:28', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=10T_FJj8hj4EtvfK9-ES0-PBssY7qhywo'),
(24, 'Wani Nyoba', 'SMAN 1 Sidoarjo', 'Jl. Jenggolo No.1, Bedrek, Siwalanpanji, Kec. Buduran, Kabupaten Sidoarjo, Jawa Timur', NULL, 'confirmed', 'confirmed', 97, 35, 33, 15, '2021-02-14 05:47:45', '2021-04-23 01:33:19', '2021-04-17 10:18:57', '2021-04-23 08:33:19', NULL, NULL, 'peserta', 'inactive', NULL),
(25, 'Doa Guru', 'Sman 5 Surabaya', 'Jl. Kusuma Bangsa No.21, Ketabang, Kec. Genteng, Kota SBY, Jawa Timu', NULL, 'confirmed', 'confirmed', 97, 36, 30, 22, '2021-02-14 08:10:25', '2021-04-24 02:05:33', NULL, '2021-04-23 08:33:38', '2021-04-24 09:05:33', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1ujC0Vp4uvrvvPyJqlms8SCy62EmObHIB'),
(26, 'SMARTACIDS', 'IPH SCHOOL EAST', 'JL.RAYA JEDUNG BARUK 112-114', NULL, 'confirmed', 'confirmed', 97, 37, 31, 21, '2021-02-14 20:00:49', '2021-04-24 02:00:27', '2021-04-17 10:07:33', '2021-04-23 08:31:12', '2021-04-24 09:00:27', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1MP3kFGUpSEB6lk6N93kGA0loUbE03ftY'),
(27, 'Eternal', 'SMA Bina Mulia', 'Jalan Abdul Rachman Saleh Nomor A1', NULL, 'confirmed', 'confirmed', 268, 38, 34, 30, '2021-03-05 15:57:59', '2021-04-17 03:23:12', '2021-04-17 10:23:12', NULL, NULL, NULL, 'peserta', 'inactive', NULL),
(28, 'CESIUM (Chemical Squad with Incredible and Unbeatable Squad)', 'SMAN Bali Mandara', 'Jalan Raya Air Sanih, Desa Kubutambahan, Kecamatan Kubutambahan, Kubutambahan, Kec. Buleleng, Kabupaten Buleleng, Bali', NULL, 'confirmed', 'confirmed', 103, 39, 35, 31, '2021-03-15 19:18:26', '2021-04-23 01:31:56', '2021-04-17 10:01:43', '2021-04-23 08:31:56', NULL, NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1dj2UMnIIdr_rwF8aLp2VIyRc4oQEDDu6'),
(29, 'Theobromine', 'SMAK St. Hendrikus', 'Jl. Arief Rahman Hakim No.40-44, Klampis Ngasem, Kec. Sukolilo, Kota SBY, Jawa Timur 60111', NULL, 'confirmed', 'confirmed', 97, 40, 36, 32, '2021-03-16 18:24:16', '2021-04-24 02:00:26', '2021-04-17 10:08:53', '2021-04-23 08:30:54', '2021-04-24 09:00:26', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=15HQubt39sTJEiCM09ysv8dS9zTZH6J-A'),
(30, 'Titanium Team SMA JAC SBY', 'SMA JAC SURABAYA', 'Puncak Permai Utara III No 9', NULL, 'confirmed', 'confirmed', 97, 41, 37, 34, '2021-03-17 20:28:53', '2021-04-23 01:32:11', NULL, '2021-04-23 08:32:11', NULL, NULL, 'peserta', 'inactive', NULL),
(31, 'Amaranth', 'SMAK St. Hendrikus', 'Jl. Arief Rahman Hakim No.40-44, Klampis Ngasem, Kec. Sukolilo, Kota SBY, Jawa Timur 60111', NULL, 'confirmed', 'confirmed', 97, 42, 38, 33, '2021-03-17 22:10:48', '2021-04-24 02:00:37', '2021-04-17 10:00:04', '2021-04-23 08:32:40', '2021-04-24 09:00:37', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1s_cIY7wcxyDwjT2KbpoknJtR8xsEe9QT'),
(32, 'AlbayanSukabumi', 'SMA Pesantren Unggul Al Bayan Cibadak Sukabumi', 'Jl Al Bayan No 100. Sekarwangi Cibadak, kab Sukabumi 43351', NULL, 'confirmed', 'confirmed', 31, 43, 39, 38, '2021-03-18 00:05:15', '2021-04-24 02:00:10', '2021-04-17 10:26:14', '2021-04-23 08:31:37', '2021-04-24 09:00:10', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1vREI-isALfqv2yQN4zRaM6734KS9cEw2'),
(33, 'Kosayu', 'SMAK Kolese Santo Yusup Malang', 'Jl. Simpang Borobudur No.1, Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142', NULL, 'confirmed', 'confirmed', 84, 44, 41, 35, '2021-03-21 23:07:03', '2021-04-23 01:30:06', '2021-04-17 10:10:42', '2021-04-23 08:30:06', NULL, NULL, 'peserta', 'inactive', NULL),
(34, 'TAFATIP', 'SMA Negeri 3 Semarang', 'Jalan Pemuda No. 149', NULL, 'confirmed', 'confirmed', 57, 45, 42, 39, '2021-03-24 18:23:35', '2021-04-24 02:01:02', '2021-04-17 10:01:43', '2021-04-23 08:31:08', '2021-04-24 09:01:02', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1F-0z72w2c7RKvAFPPfJUAvzN_-RVLK_H'),
(35, 'Orioniria', 'SMA Plus Negeri 17 Palembang', 'Jalan Mayor Zurbi Bustan Pipa Jaya Kecamatan Kemuning Kelurahan:, Sukajaya, Kec. Sukarami, Kota Palembang, Sumatera Selatan 30961', NULL, 'confirmed', 'confirmed', 237, 46, 43, 43, '2021-03-25 00:08:38', '2021-04-23 01:31:30', '2021-04-17 10:08:03', '2021-04-23 08:31:30', NULL, NULL, 'peserta', 'inactive', NULL),
(36, 'three little booz', 'SMAK ST.LOUIS 1 SURABAYA', 'Jl. Polisi Istimewa No.7, Keputran, Kec. Tegalsari, Kota SBY, Jawa Timur 60265', NULL, 'confirmed', 'confirmed', 97, 47, 44, 41, '2021-03-25 00:39:03', '2021-04-24 02:00:28', '2021-04-17 10:00:44', '2021-04-23 08:34:17', '2021-04-24 09:00:28', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1U1cQREmziRP7kW56hDZkDJJOt-hf1nFL'),
(37, 'smakristenpetra1', 'SMA Kristen Petra 1', 'Perum, Jl. Raya Graha Famili Utara Jl. Lingkar Dalam, Salam, Pradahkalikendal, Dukuhpakis, Surabaya City, East Java', NULL, 'confirmed', 'confirmed', 97, 48, 45, 44, '2021-03-31 23:50:22', '2021-04-24 02:01:34', NULL, '2021-04-23 08:30:29', '2021-04-24 09:01:34', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1R_2znUkm3WSKrnuRINhKC9MozKi2N9zc'),
(38, 'RBI SQUAD', 'SMAN 1 SDA', 'Jalan Jenggolo 1 SIDOARJO', NULL, 'confirmed', 'confirmed', 94, 49, 46, 46, '2021-04-05 19:06:29', '2021-04-24 02:00:08', '2021-04-17 10:00:59', '2021-04-23 08:32:06', '2021-04-24 09:00:08', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1Qj9cQsEYlLYyB1rkLB_KNf8qqMNEnfUI'),
(39, 'Tim SMANIM', 'SMAN 1 Menganti', 'Jalan Raya Boteng, Menganti Gresik', NULL, 'confirmed', 'confirmed', 76, 50, 47, 45, '2021-04-06 06:21:22', '2021-04-23 01:57:45', '2021-04-17 10:11:07', '2021-04-23 08:57:45', NULL, NULL, 'peserta', 'inactive', NULL),
(40, 'ARGON', 'SMAN 1 GLAGAH BANYUWANGI', 'Jl. Melati No.1, Lingkungan Cuking Rw., Mojopanggung, Glagah, Kabupaten Banyuwangi, Jawa Timur', NULL, 'confirmed', 'confirmed', 71, 51, 48, 47, '2021-04-08 07:03:41', '2021-04-24 02:00:18', '2021-04-17 10:00:55', '2021-04-23 08:30:28', '2021-04-24 09:00:18', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1WuCJDoQmMf_4exTjujXu1q17uXEU-WlG'),
(41, 'Wawan Cakep', 'SMAK Frateran Surabaya', 'Jalan Kepanjen no 8', NULL, 'confirmed', 'confirmed', 97, 52, 49, 50, '2021-04-08 17:18:14', '2021-04-23 01:30:04', '2021-04-17 10:06:37', '2021-04-23 08:30:04', NULL, NULL, 'peserta', 'inactive', NULL),
(42, 'IPPHOS', 'SMAK St. Louis 1 Surabaya', 'Jalan Polisi Istimewa (d/h Jl.Dr. Sutomo) No. 7, Surabaya, Jawa Timur, Indonesia', NULL, 'confirmed', 'confirmed', 97, 53, 50, 52, '2021-04-08 20:56:30', '2021-04-24 02:03:08', '2021-04-17 10:00:46', '2021-04-23 08:31:54', '2021-04-24 09:03:08', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1OtgX1MgHghh6vEjAmnJXcSrLZRvKolcU'),
(43, 'Tim Penyelenggara', 'SMAN 1 PULE', 'Jl. Raya Jombok, Gg. Sidem, No. 03', '43-44-45', 'confirmed', 'confirmed', 98, 54, 51, 48, '2021-04-09 00:44:34', '2021-04-23 01:35:21', '2021-04-17 10:06:04', '2021-04-23 08:35:21', NULL, NULL, 'peserta', 'inactive', NULL),
(44, 'Tim Ar-Rahman', 'SMAN 1 PULE', 'Jl. Raya Jombok, Gg. Sidem, No. 03', '43-44-45', 'confirmed', 'confirmed', 98, 55, 52, 48, '2021-04-09 00:44:34', '2021-04-23 01:39:32', NULL, '2021-04-23 08:39:32', NULL, NULL, 'peserta', 'inactive', NULL),
(45, 'Pilon Team', 'SMAN 1 PULE', 'Jl. Raya Jombok, Gg. Sidem, No. 03', '43-44-45', 'confirmed', 'confirmed', 98, 56, 53, 48, '2021-04-09 00:44:34', '2021-04-23 01:35:21', '2021-04-17 10:18:44', '2021-04-23 08:35:21', NULL, NULL, 'peserta', 'inactive', NULL),
(46, 'Asam Kuadrat', 'MA AL - HIKMAH 2', 'Pondok Pesantren Al - Hikmah 2 Benda Sirampog Brebes Jawa Tengah Indonesia 52272', NULL, 'confirmed', 'confirmed', 39, 57, 62, 55, '2021-04-09 01:37:08', '2021-04-17 03:06:25', '2021-04-17 10:06:25', NULL, NULL, NULL, 'peserta', 'inactive', NULL),
(47, 'Madaers', 'MAN 2 Kota Malang', 'Jl. Bandung No. 7 Malang', NULL, 'confirmed', 'confirmed', 97, 58, 56, 51, '2021-04-09 09:52:19', '2021-04-24 02:00:25', '2021-04-17 10:10:56', '2021-04-23 08:52:35', '2021-04-24 09:00:25', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=16JktVIiR91ELi-j8YWUaENT65R2O0Y9y'),
(48, 'Uranium', 'SMK SMAK Makassar', 'Jl.Urip Sumoharjo, Pampang, kec. Panakkukang, Kota Makassar, Sulawesi Selatan 90233', NULL, 'confirmed', 'confirmed', 330, 59, 57, 53, '2021-04-09 21:13:38', '2021-04-24 02:01:33', '2021-04-17 10:02:20', '2021-04-23 08:32:10', '2021-04-24 09:01:33', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1mYXPq4cSXCr2jSJw5O1wbHXtVIuTDFGw'),
(49, 'BENZENA', 'SMK SMAK MAKASSAR', 'JL. URIP SUMOHARJO, PAMPANG RAYA, KEC.PANAKKUKANG, KOTA MAKASSAR, SULAWESI SELATAN 90233B', NULL, 'confirmed', 'confirmed', 330, 60, 58, 54, '2021-04-10 02:26:23', '2021-04-23 01:32:04', '2021-04-17 10:00:39', '2021-04-23 08:32:04', NULL, NULL, 'peserta', 'inactive', NULL),
(50, 'Hakka B', 'SMA Harapan Kasih', 'Jl.Mekar Kencana N0,.2A', NULL, 'confirmed', 'confirmed', 13, 61, 59, 58, '2021-04-10 07:24:04', '2021-04-24 02:00:13', '2021-04-17 10:13:55', '2021-04-23 08:33:52', '2021-04-24 09:00:13', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=1tqm1w5BlU2c2TLetZsp5nZ36SIpjbMKm'),
(51, 'Hakka A', 'SMA Harapan Kasih', 'Jl.Mekar Kencana N0. 2A', NULL, 'confirmed', 'confirmed', 13, 62, 60, 56, '2021-04-10 07:40:19', '2021-04-24 02:01:02', '2021-04-17 10:11:35', '2021-04-23 08:32:48', '2021-04-24 09:01:02', NULL, 'semifinal', 'inactive', 'https://drive.google.com/folderview?id=18bY4Sqz1rneVAtWIoT5xjCNGcOrsFwzH'),
(52, 'Super SI', 'Universitas Surabaya', 'Jalan Raya Kalirungkut', NULL, 'confirmed', 'confirmed', 97, 63, 61, NULL, '2021-04-10 09:26:05', '2021-04-24 02:00:48', NULL, '2021-04-23 08:31:52', '2021-04-24 09:00:48', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1F-0z72w2c7RKvAFPPfJUAvzN_-RVLK_H'),
(53, 'Super BPH', 'UBAYA', 'Kalirungkut', NULL, 'confirmed', 'confirmed', 0, 64, 61, NULL, '2021-04-17 01:19:28', '2021-04-17 01:19:28', NULL, NULL, NULL, NULL, 'semifinal', 'active', 'https://drive.google.com/folderview?id=1F-0z72w2c7RKvAFPPfJUAvzN_-RVLK_H'),
(54, 'Super Acara', 'UBAYA', 'Kalirungkut', NULL, 'confirmed', 'confirmed', 0, 65, 61, NULL, '2021-04-17 01:19:28', '2021-04-24 02:00:43', NULL, NULL, '2021-04-24 09:00:43', NULL, 'final', 'active', 'https://drive.google.com/folderview?id=1F-0z72w2c7RKvAFPPfJUAvzN_-RVLK_H');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','peserta','bph','pubreg','keamanan','acara') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Information System CEG 2021', 'si.cegubaya@gmail.com', NULL, '$2y$10$XkwiRBUeubdfNEqW5Nu2le0HhtZ41nofAHTe1c.SyNBgcwlwkXhdq', NULL, NULL, NULL, 'admin'),
(2, 'Caren', 's160218065@student.ubaya.ac.id', NULL, '$2y$10$7eZKZvghHT/kIvVgPc1iveNQ2XucIkM29SK6lIlxf3xyjPNJuRgt.', NULL, '2021-01-15 07:03:34', '2021-01-15 07:03:34', 'bph'),
(3, 'Kevin H.', 's160219001@student.ubaya.ac.id', NULL, '$2y$10$w7P2zYCuk.GfrVeRU23Nfu/HkjGWygNfBVul4ZaAFYfk8XzzP9Flu', NULL, '2021-01-15 07:16:32', '2021-01-15 07:16:32', 'bph'),
(4, 'Yenni A.', 's160219024@student.ubaya.ac.id', NULL, '$2y$10$txOHtPHOHbfxSKLOfBrA8ekbrIToB/sYJRGJaRI0eGFR/ykkrMjvW', NULL, '2021-01-15 07:25:35', '2021-01-15 07:25:35', 'pubreg'),
(5, 'Amaris L.', 's160219045@student.ubaya.ac.id', NULL, '$2y$10$n7WAvM.otp0XbRYJYxg4/OcIZG4BiTRpb78mftZgb8Nd2zPJSKHpy', NULL, '2021-01-15 07:25:53', '2021-01-15 07:25:53', 'pubreg'),
(6, 'RRQ HOSHI', 'winston.leonard.stu@elyon.sch.id', NULL, '$2y$10$ldrqJX0KmtcSxL68CA/F3Ot7VUdK/i40WekRPNaNdCicxApsXOHFq', NULL, '2021-01-17 08:40:08', '2021-01-17 08:40:08', 'peserta'),
(7, 'Helen H.', 's160418084@student.ubaya.ac.id', NULL, '$2y$10$XkwiRBUeubdfNEqW5Nu2le0HhtZ41nofAHTe1c.SyNBgcwlwkXhdq', NULL, '2021-01-17 23:51:02', '2021-01-17 23:51:02', 'admin'),
(8, 'Verin', 's160418083@student.ubaya.ac.id', NULL, '$2y$10$W2wHDwdzk5Z0bD7jhmISt.8Tz/PLhrrnc/uJlEjkOihHb12On2sQO', NULL, '2021-01-17 23:51:27', '2021-01-17 23:51:27', 'admin'),
(9, 'Calvin A.', 's160718004@student.ubaya.ac.id', NULL, '$2y$10$2KWQPfE8mzNH3Caj9qLvqeG1PDsyQGtfUlLQjbpaTw6cNeW6HH3BW', NULL, '2021-01-17 23:53:57', '2021-01-17 23:53:57', 'admin'),
(10, 'Stefanus', 's160718011@student.ubaya.ac.id', NULL, '$2y$10$2eEjyoXkLvmDHFQglQkeIe/e0u.8/gC5kNKERnWc9U4cEiW0e5rKW', NULL, '2021-01-17 23:54:19', '2021-01-17 23:54:19', 'admin'),
(11, 'Felicia SP', 's160819009@student.ubaya.ac.id', NULL, '$2y$10$Gg..DcdGiYssRo2PI8opt.rLNoNwX33RyhgWTYDup8li/Yo5scqnG', NULL, '2021-01-17 23:54:41', '2021-01-17 23:54:41', 'admin'),
(12, 'Sean', 's160419026@student.ubaya.ac.id', NULL, '$2y$10$BKpgOiJSdgzK0zkQ/pAkpuN/tRyikpDXudp7HkuM5ZPSHuPjfzfcy', NULL, '2021-01-17 23:55:00', '2021-01-17 23:55:00', 'admin'),
(13, 'JFC', 'florencia.yang@student.iphschools.sch.id', NULL, '$2y$10$IGIuMzSMCyutZuZp4yBR4.Rkc3raVeZ6y.kAUdCvASv7T1TAYJe9G', NULL, '2021-01-20 21:21:55', '2021-01-20 21:21:55', 'peserta'),
(14, 'LiLiLi', 'daniellawella442@gmail.com', NULL, '$2y$10$0nxQYwookUqAbdxdwWVcq.Q6MyTLXkJb4KGCvr.SiF38yyWxajrSG', NULL, '2021-01-24 07:30:47', '2021-01-24 07:30:47', 'peserta'),
(15, 'Terserah', 'naylajunita11@gmail.com', NULL, '$2y$10$VJgdo8I/Q7stwEZgS2bEa.9c5zkhNo7SkAaNSMrCgAkx29MTVhfPe', NULL, '2021-02-03 02:05:54', '2021-02-03 02:05:54', 'peserta'),
(16, 'Kent And Friends', 'korneliuskennethtj@gmail.com', NULL, '$2y$10$YGzdz4PzQbbUujwcANsEuuxTMFHJw.KfnQvuuHYzTpUaMW7bbzSkC', NULL, '2021-02-04 07:43:39', '2021-02-04 07:43:39', 'peserta'),
(17, 'Think tank', 'reynoldprajogo4@gmail.com', NULL, '$2y$10$MiQ3/p2zJRcl..NQ4vKNPuGjYQYcYwJkMcrFtXxBnsrX.8DB6Pb2q', NULL, '2021-02-05 20:12:50', '2021-02-05 20:12:50', 'peserta'),
(18, 'tenemden', 'michelleneomi8@gmail.com', NULL, '$2y$10$N05ukogENwl0mw/QRuLst.Wsb/jIOqzcKMvY0ns2.BTDWahI46tB6', NULL, '2021-02-06 21:10:10', '2021-02-06 21:10:10', 'peserta'),
(19, 'Luck, Pray and Amen', 'aliciaprincessapt@gmail.com', NULL, '$2y$10$zHGQoBBqzsRKPIC.zyE8NOuKvMwK6QRucpnzwvfBCYMVLMeoECAdS', NULL, '2021-02-09 19:04:44', '2021-02-09 19:04:44', 'peserta'),
(20, 'PJJ', 'justin1405xrg@gmail.com', NULL, '$2y$10$zmF54CGGczjpW1TnF2KkP.h14HecJz2VHKL68pjlFgBpbdhU63Pj2', NULL, '2021-02-10 00:02:11', '2021-02-10 00:02:11', 'peserta'),
(21, 'Santuy Squad', 'naufalrevaldy1234@gmail.com', NULL, '$2y$10$nEPq/XEm5UIHfS8K7R0H4OaDdtT3b6UNWrw3iF4cEYNRUQ/scVxWK', NULL, '2021-02-10 17:04:47', '2021-02-11 02:15:10', 'peserta'),
(23, 'Katrol Wess', 'kathryn.laurenciaa@gmail.com', NULL, '$2y$10$Z7fbklsowCA/MPC1EPS9oOtihaKPTLmdgmVF3TS3na/f3bweFnIka', NULL, '2021-02-12 07:35:58', '2021-02-12 07:48:26', 'peserta'),
(24, 'sournitrate', 'keyyy0706@gmail.com', NULL, '$2y$10$3PTkWzdd5ITO63/pSYSMP.o9Fv2X8fP01xNsAz4lBrdkXrHxB34Ku', NULL, '2021-02-12 23:45:48', '2021-02-13 05:54:53', 'peserta'),
(25, 'Chemystery Solvers', 'kayna.sondakh@gmail.com', NULL, '$2y$10$mDo6jc/ois/.7mGQiEgG8uF2klt.zQSczZvzCpBxy9oC2S72DQBie', NULL, '2021-02-13 03:23:27', '2021-02-13 05:56:55', 'peserta'),
(26, 'ROCKET 69', 'firenzevipassa@gmail.com', NULL, '$2y$10$q2.ihXfmUvPlxBm0jkQ9VO4h.f63vdbLGR1xIQK75F5pZkkoXNyMG', NULL, '2021-02-13 06:44:37', '2021-02-13 08:16:44', 'peserta'),
(27, 'YINKA 69', 'kevinsetiawan.wahyudi@tritunggalcs.id', NULL, '$2y$10$gm5bS1GhwEdFaf/7rCuWBecBg1H/6Xif3cxnEVvrJcuYtGZ/ccAF6', NULL, '2021-02-13 07:08:34', '2021-02-13 08:19:43', 'peserta'),
(28, 'UNO', 'auwesther@gmail.com', NULL, '$2y$10$qgp4W2/xnn0autshvjJlIeYgvGxSnXascdz5F2oJkQHIpGIYiSLmi', NULL, '2021-02-13 07:14:23', '2021-02-13 08:22:14', 'peserta'),
(30, 'PSTD4', 'rachael.1667004@bpkpenabur.sch.id', NULL, '$2y$10$P058Mai0fHQNiZa5sreLneZhul3LgZgVW7FoyPHOZUzu2umP9jO6y', NULL, '2021-02-14 05:03:59', '2021-02-14 06:09:30', 'peserta'),
(31, 'PSTD1', 'frederik.1667036@bpkpenabur.sch.id', NULL, '$2y$10$k.Zyr.HZvL0hEA3zQgohGes9kPoM9VPdp409MGv0n794D2dJo4cHu', NULL, '2021-02-14 05:05:55', '2021-02-14 06:12:46', 'peserta'),
(32, 'PSTD2', 'natania.1767001@bpkpenabur.sch.id', NULL, '$2y$10$WPkCPStA41itjF9EIYm.SOLWlJq7U1S3sEa8nrIjhYW7CZumAPMwq', NULL, '2021-02-14 05:05:55', '2021-02-14 06:15:23', 'peserta'),
(33, 'PSTD3', 'kristiana.2086021@bpkpenabur.sch.id', NULL, '$2y$10$OwTmFq0NVh/KUdzboUhcLu9HYpatBEgG4AOBF9UBE.8JVmTeyPa8u', NULL, '2021-02-14 05:05:55', '2021-02-14 06:16:14', 'peserta'),
(34, 'Rococo', 'hansel.meinhard04@gmail.com', NULL, '$2y$10$n8IoKAwjHpnP5PYNKzEvHeHVmv/7EI7Z1oUSprou619BHto2zXpay', NULL, '2021-02-14 05:22:22', '2021-02-14 06:17:40', 'peserta'),
(35, 'Wani Nyoba', 'andrian.2r12@gmail.com', NULL, '$2y$10$vjebh3cwM7bzZusc9ujk7uAqUWLoaUf7oOCxZaSbOr2eBikQwFp4a', NULL, '2021-02-14 05:47:45', '2021-02-14 06:18:46', 'peserta'),
(36, 'Doa Guru', 'zakicandra82@gmail.com', NULL, '$2y$10$M/yYVDR2vx7.fl2Yhw3zn.H0w7.bjUjKc86ZWEqUB8y8mumVbKKcS', NULL, '2021-02-14 08:10:25', '2021-02-14 22:39:31', 'peserta'),
(37, 'SMARTACIDS', 'claraarianto@gmail.com', NULL, '$2y$10$lOzzkUBxJdtJrPMQanBVh.7ReMENwL8QPwcWjvv7JOPj.XfRyINzK', NULL, '2021-02-14 20:00:49', '2021-02-14 22:42:30', 'peserta'),
(38, 'Eternal', 'rjrocks144@gmail.com', NULL, '$2y$12$IcnTq1ukIzm8bzbGrhm0Te6FzkFgE6X4UbxOBdCII6OW4DEPdPLQS', NULL, '2021-03-05 15:55:29', '2021-03-05 15:55:29', 'peserta'),
(39, 'CESIUM (Chemical Squad with Incredible and Unbeatable Squad)', 'aryadivad2003@gmail.com', NULL, '$2y$10$w8RQ2kSMU3he53kytgGVuu7tnbMr7oIj.OltT0wsIJhJkCJFiyewa', NULL, '2021-03-15 19:18:26', '2021-03-15 19:18:26', 'peserta'),
(40, 'Theobromine', 'yoshefelicia01@gmail.com', NULL, '$2y$10$NtPsKelgiRQpWdx2B5sQ6u.o76I6RYnF2bamKgSIgYE9B7LRGnqk2', NULL, '2021-03-16 18:24:16', '2021-03-16 18:24:16', 'peserta'),
(41, 'Titanium Team SMA JAC SBY', 'jenifergeraldineangie@gmail.com', NULL, '$2y$10$hl1uhflMaigw05ynu/PLIOf0cjnf92HUlajX9gzbxH.cDoWn2Zu1q', NULL, '2021-03-17 20:28:53', '2021-03-17 20:28:53', 'peserta'),
(42, 'Amaranth', 'aldahermanto@gmail.com', NULL, '$2y$10$KWkXhtKCkVaZ9nhYRNyWwOJKk.qLcTklHo1JZfqpGgvW.0f1qnA9e', NULL, '2021-03-17 22:10:48', '2021-03-17 22:10:48', 'peserta'),
(43, 'AlbayanSukabumi', 'dhafin.yashisyah@gmail.com', NULL, '$2y$10$pHI3Jc8OK/5dN0VQ6l1afu9aHvlTZaM9Ed4hn32ltpLadexl/eH7O', NULL, '2021-03-18 00:05:15', '2021-03-18 00:05:15', 'peserta'),
(44, 'Kosayu', 'shella.harjono10@gmail.com', NULL, '$2y$10$8Nw7bhWh/1ymHFmiyUBOn.V6mRkhsT8DsZ.bkuE9NHMERxXNKnzxG', NULL, '2021-03-21 23:07:03', '2021-03-21 23:07:03', 'peserta'),
(45, 'TAFATIP', 'lathifkariim@gmail.com', NULL, '$2y$10$kTV4UZtj8dyGcfbaMIlif.RGN43BddAre6PiOhoShjtBM5Fc8s9g2', NULL, '2021-03-24 18:23:35', '2021-03-24 18:23:35', 'peserta'),
(46, 'Orioniria', 'nadyaratnariena@gmail.com', NULL, '$2y$10$ebCbXimRTJd45/GhCl9QQO/vSNjtaabd3CgcG1n4kjIMX8jatm11S', NULL, '2021-03-25 00:08:38', '2021-03-25 00:08:38', 'peserta'),
(47, 'three little booz', 'alexanderjason526@gmail.com', NULL, '$2y$10$YpS6rvNBAJewth0ik6IlVOrmeZbqrOz.1KsrLYrDKohTEYt/x65mK', NULL, '2021-03-25 00:39:03', '2021-03-25 00:39:03', 'peserta'),
(48, 'smakristenpetra1', 'andreasreynard845@gmail.com', NULL, '$2y$10$oI5bwFJbpfhrQ0bbZiWFyuitlwJVN0r7PieuvV2gtbU5u30YoQ9MS', NULL, '2021-03-31 23:50:22', '2021-03-31 23:50:22', 'peserta'),
(49, 'RBI SQUAD', 'sitambunmarcelino@gmail.com', NULL, '$2y$10$0Enp3PHFwu.73V8k8Kj7SeL0cTA.10diZY1BAqQTUQ7SLJ0Ipcfam', NULL, '2021-04-05 19:06:29', '2021-04-05 19:06:29', 'peserta'),
(50, 'Tim SMANIM', 'zhaura105@gmail.com', NULL, '$2y$10$0Pudw.Ge49oegaY2W.bYM.AU5GHAl7wnOVnqyCt4xf7GBb6/GEOje', NULL, '2021-04-06 06:21:22', '2021-04-06 06:21:22', 'peserta'),
(51, 'ARGON', 'septaqolbi@gmail.com', NULL, '$2y$10$kMUpJ6AsIMRdkGk43iq7KOzLljF4Lb4T3Ev6Okd3j5EUCCfdKpDDO', NULL, '2021-04-08 07:03:41', '2021-04-08 07:03:41', 'peserta'),
(52, 'Wawan Cakep', 'mjosephine1324@gmail.com', NULL, '$2y$10$iwfgZp6eH8M6CDEPfRT3X.AipyFdsiSwVAEwvsNZcYuPfU6zlxtMu', NULL, '2021-04-08 17:18:14', '2021-04-08 17:18:14', 'peserta'),
(53, 'IPPHOS', 'francescokusuma15@gmail.com', NULL, '$2y$10$.hyENlMXZGM4tFCbsFeX0ekQoeJLKAt9Fsngt6C2b49qfXget5qM.', NULL, '2021-04-08 20:56:30', '2021-04-08 20:56:30', 'peserta'),
(54, 'Tim Penyelenggara', 'bayumustiko551@gmail.com', NULL, '$2y$10$FgN46nnMrRwkkj.Q6bf5AeLrUszi3XZZbhBAP0zrShF66Fs33wmhq', NULL, '2021-04-09 00:44:33', '2021-04-09 00:44:33', 'peserta'),
(55, 'Tim Ar-Rahman', 'anindwap@gmail.com', NULL, '$2y$10$JacHC8YIPMOuRXnEYek36OJBWhd7bzD/rTPMOhJK6uhBzZsuhWA0y', NULL, '2021-04-09 00:44:34', '2021-04-09 00:44:34', 'peserta'),
(56, 'Pilon Team', 'bgsdprayoga@gmail.com', NULL, '$2y$10$jOL8Dif3r4deZbc7dyy55uglHf3rqWpsgrn6zVn261XF4AodvzQpe', NULL, '2021-04-09 00:44:34', '2021-04-09 00:44:34', 'peserta'),
(57, 'Asam Kuadrat', 'afnannadhir58@gmail.com', NULL, '$2y$10$xyThbS3AvSTychiTjc2jn.cx2hfK7iGdGBAXEWPhuXX8fpSNB56su', NULL, '2021-04-09 01:37:08', '2021-04-09 01:37:08', 'peserta'),
(58, 'Madaers', 'emildaaulia01@gmail.com', NULL, '$2y$10$g4/mjIs0441girNG0UoJ1.r5oDB1RwAfL.o7dLDJZHjpc5HkunZIm', NULL, '2021-04-09 09:52:19', '2021-04-09 09:52:19', 'peserta'),
(59, 'Uranium', 'arifb0699@gmail.com', NULL, '$2y$10$BcwjAgw4EaCb/FNmq.ysYuEbGd9FWxOxA0uu3XMvSGfCDeQaIWv.u', NULL, '2021-04-09 21:13:38', '2021-04-09 21:13:38', 'peserta'),
(60, 'BENZENA', 'arfansyah1910@gmail.com', NULL, '$2y$10$H8yUPdI/nDVy5I3jsC2KNuM47ewP2nwZ/N0TAVixm7/wu3ulsjNN.', NULL, '2021-04-10 02:26:23', '2021-04-10 02:26:23', 'peserta'),
(61, 'Hakka B', 'cardiaaay@gmail.com', NULL, '$2y$10$sWXKNq731jc4VecV2eTOQe/WoLkXtOwWEpyfFgOMZ20t0Du/KeBQG', NULL, '2021-04-10 07:24:04', '2021-04-10 07:24:04', 'peserta'),
(62, 'Hakka A', 'fariatiff4@gmail.com', NULL, '$2y$10$Vqpo2uyCKFgsauTnIWzdQOLEIIW.1YC4LjeruNBoI3cXwCC6qglli', NULL, '2021-04-10 07:40:19', '2021-04-15 06:26:57', 'peserta'),
(63, 'Super SI', 'si@cegubaya.com', NULL, '$2y$10$GSy0OdK.iMePphgQ6Q.NhOV.3ysbDfNdxFe5qpGdoDFk8U0eBgSJW', NULL, '2021-04-10 09:26:05', '2021-04-10 09:26:05', 'peserta'),
(64, 'Super BPH', 'bph@cegubaya.com', NULL, '$2y$12$cetG7xU3F8XMKv2F487EjOUQG4GM2b2YGgbVpn12unVx1HIXT1WAi', NULL, '2021-04-17 01:18:14', '2021-04-17 01:18:14', 'peserta'),
(65, 'Super Acara', 'acara@cegubaya.com', NULL, '$2y$12$JOJBjzVzz/WPeTXk3M240.u/BRkrCeXbnKNhP3Fqivj7Dr2IVWgrW', NULL, '2021-04-17 01:18:14', '2021-04-17 01:18:14', 'peserta'),
(66, 'Super SI - Keamanan', 'keamanan@cegubaya.com', NULL, '$2y$10$Sxcvy5ekYvFaeyfOoy1O/.QnNSVQercioLwaO2/dCIOHx.lKowVO6', NULL, '2021-04-18 11:22:37', '2021-04-18 11:22:37', 'keamanan'),
(67, 'Leonardy Sentosa', 's160319028@student.ubaya.ac.id', NULL, '$2y$10$VHIBQfP5lQs08.CqokncouPRdaTzKd2SfnbF.GXcfPzJFA9P6QmGa', NULL, '2021-04-18 11:22:49', '2021-04-18 11:22:49', 'keamanan'),
(68, 'Kevin McClaren', 'kevin.mcclaren234@gmail.com', NULL, '$2y$10$m6hQ6lpAu9N3NR/zDzcj1OxZvTZ6PGGK..CDXR74WD.H9bmQ3FqCG', NULL, '2021-04-18 11:23:01', '2021-04-18 11:23:01', 'keamanan'),
(69, 'Muhammad Erfan Zawawi', 's160219067@student.ubaya.ac.id', NULL, '$2y$10$mXdoQWv1Hflumt1EEMFRkO94GmQPHlsg91VdTMPB4eEvpMx/9C5fW', NULL, '2021-04-18 11:23:39', '2021-04-18 11:23:39', 'keamanan'),
(70, 'Laura Lingguina Sugianto', 'lauralingguina542@gmail.com', NULL, '$2y$10$qGYA8iEFL3Q8.IqDMnMLG.80nW5Mxlbj8i54I0P2rPQoWm2zjLRtu', NULL, '2021-04-18 11:23:54', '2021-04-18 11:23:54', 'keamanan'),
(71, 'Ella Puspita Sari', 's160220014@student.ubaya.ac.id', NULL, '$2y$10$JIp44MYhmBwBB8c1PYgzUOB9tn9VbrcbOCuwnS/GsocsfM9f0QOWy', NULL, '2021-04-18 11:24:06', '2021-04-18 11:24:06', 'keamanan'),
(72, 'Jabesh Nehemiah Wijaya', 's160720002@student.ubaya.ac.id', NULL, '$2y$10$cvsg.gXEf4aAT9bMXMuKUuHgkYbuCljjcs.kqBxmEY5FWAsehjK46', NULL, '2021-04-18 11:24:20', '2021-04-18 11:24:20', 'keamanan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_session`
--
ALTER TABLE `active_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikel_users_id_foreign` (`users_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_bukti`
--
ALTER TABLE `file_bukti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_zip`
--
ALTER TABLE `file_zip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kab_kota`
--
ALTER TABLE `kab_kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kab_kota_provinsi_id_foreign` (`provinsi_id`);

--
-- Indexes for table `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `links_session_id_foreign` (`session_id`);

--
-- Indexes for table `list_pelanggaran`
--
ALTER TABLE `list_pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `pelanggarans`
--
ALTER TABLE `pelanggarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `peserta_email_unique` (`email`),
  ADD KEY `peserta_tim_id_foreign` (`tim_id`);

--
-- Indexes for table `tim`
--
ALTER TABLE `tim`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tim_nama_unique` (`nama`),
  ADD KEY `tim_users_id_foreign` (`users_id`),
  ADD KEY `tim_file_zip_id_foreign` (`file_zip_id`),
  ADD KEY `tim_file_bukti_id_foreign` (`file_bukti_id`),
  ADD KEY `tim_kab_kota_id_foreign` (`kab_kota_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_session`
--
ALTER TABLE `active_session`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `file_bukti`
--
ALTER TABLE `file_bukti`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `file_zip`
--
ALTER TABLE `file_zip`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `links`
--
ALTER TABLE `links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `list_pelanggaran`
--
ALTER TABLE `list_pelanggaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `pelanggarans`
--
ALTER TABLE `pelanggarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tim`
--
ALTER TABLE `tim`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `links`
--
ALTER TABLE `links`
  ADD CONSTRAINT `links_session_id_foreign` FOREIGN KEY (`session_id`) REFERENCES `active_session` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
