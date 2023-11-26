-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2023 at 11:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `production`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add kategori', 7, 'add_kategori'),
(26, 'Can change kategori', 7, 'change_kategori'),
(27, 'Can delete kategori', 7, 'delete_kategori'),
(28, 'Can view kategori', 7, 'view_kategori'),
(29, 'Can add status', 8, 'add_status'),
(30, 'Can change status', 8, 'change_status'),
(31, 'Can delete status', 8, 'delete_status'),
(32, 'Can view status', 8, 'view_status'),
(33, 'Can add produk', 9, 'add_produk'),
(34, 'Can change produk', 9, 'change_produk'),
(35, 'Can delete produk', 9, 'delete_produk'),
(36, 'Can view produk', 9, 'view_produk');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$D1mJITwRnW3hOrlf3wHF5H$YGYv3hy2bNBpuW+Ggta6F6sY1UVXaVrAlDqezK8HSlQ=', '2023-11-24 08:12:38.493754', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-11-24 08:12:08.079849');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'manajemen', 'kategori'),
(9, 'manajemen', 'produk'),
(8, 'manajemen', 'status'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-24 08:05:37.819870'),
(2, 'auth', '0001_initial', '2023-11-24 08:05:38.557234'),
(3, 'admin', '0001_initial', '2023-11-24 08:05:38.776843'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-24 08:05:38.792472'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-24 08:05:38.808094'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-24 08:05:38.911775'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-24 08:05:38.996425'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-24 08:05:39.043225'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-24 08:05:39.058853'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-24 08:05:39.121753'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-24 08:05:39.137414'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-24 08:05:39.153022'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-24 08:05:39.199897'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-24 08:05:39.231571'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-24 08:05:39.262823'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-24 08:05:39.278447'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-24 08:05:39.325737'),
(18, 'manajemen', '0001_initial', '2023-11-24 08:05:39.529715'),
(19, 'sessions', '0001_initial', '2023-11-24 08:05:39.613372');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('psp46kc1ogsic8lggp1ukm54617slw5x', '.eJxVjDkOwjAUBe_iGln-8YYp6XOGyH8RDiBbipMKcXeIlALaNzPvpaa8rWXauizTzOqiQJ1-N8z0kLoDvud6a5paXZcZ9a7og3Y9Npbn9XD_Dkru5VtLiC7EgRmc98ZbPyAYB-AD4ZkhRRJGz4guh5jEJSsBE7OhaCFRVO8PwjQ3eA:1r6RIk:m7Ebh06y1oTiVuCK2l7ZeqY6BGtOD__mMZsgZ_R6ez0', '2023-12-08 08:12:38.500251');

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_kategori`
--

CREATE TABLE `manajemen_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manajemen_kategori`
--

INSERT INTO `manajemen_kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'L QUEENLY'),
(2, 'L MTH AKSESORIS (IM)'),
(3, 'L MTH TABUNG (LK)'),
(4, 'SP MTH SPAREPART (LK)'),
(5, 'CI MTH TINTA LAIN (IM)'),
(6, 'L MTH AKSESORIS (LK)'),
(7, 'S MTH STEMPEL (IM)');

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_produk`
--

CREATE TABLE `manajemen_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manajemen_produk`
--

INSERT INTO `manajemen_produk` (`id_produk`, `nama_produk`, `kategori_id`, `harga`, `status_id`) VALUES
(6, 'ALCOHOL GEL POLISH CLEANSER GP-CLN01', 1, 12500, 0),
(9, 'ALUMUNIUM FOIL ALL IN ONE BULAT 23mm IM', 2, 1000, 0),
(11, 'ALUMUNIUM FOIL ALL IN ONE BULAT 30mm IM', 2, 1000, 0),
(12, 'ALUMUNIUM FOIL ALL IN ONE SHEET 250mm IM', 2, 12500, 1),
(15, 'ALUMUNIUM FOIL HDPE/PE BULAT 23mm IM', 2, 12500, 0),
(17, 'ALUMUNIUM FOIL HDPE/PE BULAT 30mm IM', 2, 1000, 0),
(18, 'ALUMUNIUM FOIL HDPE/PE SHEET 250mm IM', 2, 13000, 1),
(19, 'ALUMUNIUM FOIL PET SHEET 250mm IM', 2, 1000, 1),
(22, 'ARM PENDEK MODEL U', 2, 13000, 0),
(23, 'ARM SUPPORT KECIL', 3, 13000, 1),
(24, 'ARM SUPPORT KOTAK PUTIH', 2, 13000, 1),
(26, 'ARM SUPPORT PENDEK POLOS', 3, 13000, 0),
(27, 'ARM SUPPORT S IM', 2, 1000, 1),
(28, 'ARM SUPPORT T (IMPORT)', 2, 13000, 0),
(29, 'ARM SUPPORT T - MODEL 1 ( LOKAL )', 3, 10000, 0),
(50, 'BLACK LASER TONER FP-T3 (100gr)', 2, 13000, 1),
(56, 'BODY PRINTER CANON IP2770', 4, 500, 0),
(58, 'BODY PRINTER T13X', 4, 15000, 0),
(59, 'BOTOL 1000ML BLUE KHUSUS UNTUK EPSON R1800/R800 - 4180 IM (T054920)', 5, 10000, 0),
(60, 'BOTOL 1000ML CYAN KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4120 IM (T054220)', 5, 10000, 1),
(61, 'BOTOL 1000ML GLOSS OPTIMIZER KHUSUS UNTUK EPSON R1800/R800/R1900/R2000/IX7000/MG6170 - 4100 IM (T054020)', 5, 1500, 0),
(62, 'BOTOL 1000ML L.LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0599 IM', 5, 1500, 1),
(63, 'BOTOL 1000ML LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0597 IM', 5, 1500, 1),
(64, 'BOTOL 1000ML MAGENTA KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4140 IM (T054320)', 5, 1000, 0),
(65, 'BOTOL 1000ML MATTE BLACK KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 3503 IM (T054820)', 5, 1500, 1),
(66, 'BOTOL 1000ML ORANGE KHUSUS UNTUK EPSON R1900/R2000 IM - 4190 (T087920)', 5, 1500, 0),
(67, 'BOTOL 1000ML RED KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4170 IM (T054720)', 5, 1000, 1),
(68, 'BOTOL 1000ML YELLOW KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4160 IM (T054420)', 5, 1500, 1),
(70, 'BOTOL KOTAK 100ML LK', 6, 1000, 0),
(72, 'BOTOL 10ML IM', 7, 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_sebagian`
--

CREATE TABLE `manajemen_sebagian` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `kategori_id` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manajemen_sebagian`
--

INSERT INTO `manajemen_sebagian` (`id_produk`, `nama_produk`, `kategori_id`, `harga`, `status`) VALUES
(6, 'ALCOHOL GEL POLISH CLEANSER GP-CLN01', 'L QUEENLY', 12500, 'bisa dijual'),
(9, 'ALUMUNIUM FOIL ALL IN ONE BULAT 23mm IM', 'L MTH AKSESORIS (IM)', 1000, 'bisa dijual'),
(11, 'ALUMUNIUM FOIL ALL IN ONE BULAT 30mm IM', 'L MTH AKSESORIS (IM)', 1000, 'bisa dijual'),
(12, 'ALUMUNIUM FOIL ALL IN ONE SHEET 250mm IM', 'L MTH AKSESORIS (IM)', 12500, 'tidak bisa dijual'),
(15, 'ALUMUNIUM FOIL HDPE/PE BULAT 23mm IM', 'L MTH AKSESORIS (IM)', 12500, 'bisa dijual'),
(17, 'ALUMUNIUM FOIL HDPE/PE BULAT 30mm IM', 'L MTH AKSESORIS (IM)', 1000, 'bisa dijual'),
(18, 'ALUMUNIUM FOIL HDPE/PE SHEET 250mm IM', 'L MTH AKSESORIS (IM)', 13000, 'tidak bisa dijual'),
(19, 'ALUMUNIUM FOIL PET SHEET 250mm IM', 'L MTH AKSESORIS (IM)', 1000, 'tidak bisa dijual'),
(22, 'ARM PENDEK MODEL U', 'L MTH AKSESORIS (IM)', 13000, 'bisa dijual'),
(23, 'ARM SUPPORT KECIL', 'L MTH TABUNG (LK)', 13000, 'tidak bisa dijual'),
(24, 'ARM SUPPORT KOTAK PUTIH', 'L MTH AKSESORIS (IM)', 13000, 'tidak bisa dijual'),
(26, 'ARM SUPPORT PENDEK POLOS', 'L MTH TABUNG (LK)', 13000, 'bisa dijual'),
(27, 'ARM SUPPORT S IM', 'L MTH AKSESORIS (IM)', 1000, 'tidak bisa dijual'),
(28, 'ARM SUPPORT T (IMPORT)', 'L MTH AKSESORIS (IM)', 13000, 'bisa dijual'),
(29, 'ARM SUPPORT T - MODEL 1 ( LOKAL )', 'L MTH TABUNG (LK)', 10000, 'bisa dijual'),
(50, 'BLACK LASER TONER FP-T3 (100gr)', 'L MTH AKSESORIS (IM)', 13000, 'tidak bisa dijual'),
(56, 'BODY PRINTER CANON IP2770', 'SP MTH SPAREPART (LK)', 500, 'bisa dijual'),
(58, 'BODY PRINTER T13X', 'SP MTH SPAREPART (LK)', 15000, 'bisa dijual'),
(59, 'BOTOL 1000ML BLUE KHUSUS UNTUK EPSON R1800/R800 - 4180 IM (T054920)', 'CI MTH TINTA LAIN (IM)', 10000, 'bisa dijual'),
(60, 'BOTOL 1000ML CYAN KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4120 IM (T054220)', 'CI MTH TINTA LAIN (IM)', 10000, 'tidak bisa dijual'),
(61, 'BOTOL 1000ML GLOSS OPTIMIZER KHUSUS UNTUK EPSON R1800/R800/R1900/R2000/IX7000/MG6170 - 4100 IM (T054020)', 'CI MTH TINTA LAIN (IM)', 1500, 'bisa dijual'),
(62, 'BOTOL 1000ML L.LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0599 IM', 'CI MTH TINTA LAIN (IM)', 1500, 'tidak bisa dijual'),
(63, 'BOTOL 1000ML LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0597 IM', 'CI MTH TINTA LAIN (IM)', 1500, 'tidak bisa dijual'),
(64, 'BOTOL 1000ML MAGENTA KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4140 IM (T054320)', 'CI MTH TINTA LAIN (IM)', 1000, 'bisa dijual'),
(65, 'BOTOL 1000ML MATTE BLACK KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 3503 IM (T054820)', 'CI MTH TINTA LAIN (IM)', 1500, 'tidak bisa dijual'),
(66, 'BOTOL 1000ML ORANGE KHUSUS UNTUK EPSON R1900/R2000 IM - 4190 (T087920)', 'CI MTH TINTA LAIN (IM)', 1500, 'bisa dijual'),
(67, 'BOTOL 1000ML RED KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4170 IM (T054720)', 'CI MTH TINTA LAIN (IM)', 1000, 'tidak bisa dijual'),
(68, 'BOTOL 1000ML YELLOW KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4160 IM (T054420)', 'CI MTH TINTA LAIN (IM)', 1500, 'tidak bisa dijual'),
(70, 'BOTOL KOTAK 100ML LK', 'L MTH AKSESORIS (LK)', 1000, 'bisa dijual'),
(72, 'BOTOL 10ML IM', 'S MTH STEMPEL (IM)', 1000, 'tidak bisa dijual');

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_semua`
--

CREATE TABLE `manajemen_semua` (
  `no` varchar(11) NOT NULL,
  `id_produk` varchar(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manajemen_semua`
--

INSERT INTO `manajemen_semua` (`no`, `id_produk`, `nama_produk`, `kategori`, `harga`, `status`) VALUES
('7', '6', 'ALCOHOL GEL POLISH CLEANSER GP-CLN01', 'L QUEENLY', '12500', 'bisa dijual'),
('10', '9', 'ALUMUNIUM FOIL ALL IN ONE BULAT 23mm IM', 'L MTH AKSESORIS (IM)', '1000', 'bisa dijual'),
('12', '11', 'ALUMUNIUM FOIL ALL IN ONE BULAT 30mm IM', 'L MTH AKSESORIS (IM)', '1000', 'bisa dijual'),
('13', '12', 'ALUMUNIUM FOIL ALL IN ONE SHEET 250mm IM', 'L MTH AKSESORIS (IM)', '12500', 'tidak bisa dijual'),
('16', '15', 'ALUMUNIUM FOIL HDPE/PE BULAT 23mm IM', 'L MTH AKSESORIS (IM)', '12500', 'bisa dijual'),
('18', '17', 'ALUMUNIUM FOIL HDPE/PE BULAT 30mm IM', 'L MTH AKSESORIS (IM)', '1000', 'bisa dijual'),
('19', '18', 'ALUMUNIUM FOIL HDPE/PE SHEET 250mm IM', 'L MTH AKSESORIS (IM)', '13000', 'tidak bisa dijual'),
('20', '19', 'ALUMUNIUM FOIL PET SHEET 250mm IM', 'L MTH AKSESORIS (IM)', '1000', 'tidak bisa dijual'),
('23', '22', 'ARM PENDEK MODEL U', 'L MTH AKSESORIS (IM)', '13000', 'bisa dijual'),
('24', '23', 'ARM SUPPORT KECIL', 'L MTH TABUNG (LK)', '13000', 'tidak bisa dijual'),
('25', '24', 'ARM SUPPORT KOTAK PUTIH', 'L MTH AKSESORIS (IM)', '13000', 'tidak bisa dijual'),
('27', '26', 'ARM SUPPORT PENDEK POLOS', 'L MTH TABUNG (LK)', '13000', 'bisa dijual'),
('28', '27', 'ARM SUPPORT S IM', 'L MTH AKSESORIS (IM)', '1000', 'tidak bisa dijual'),
('29', '28', 'ARM SUPPORT T (IMPORT)', 'L MTH AKSESORIS (IM)', '13000', 'bisa dijual'),
('30', '29', 'ARM SUPPORT T - MODEL 1 ( LOKAL )', 'L MTH TABUNG (LK)', '10000', 'bisa dijual'),
('51', '50', 'BLACK LASER TONER FP-T3 (100gr)', 'L MTH AKSESORIS (IM)', '13000', 'tidak bisa dijual'),
('57', '56', 'BODY PRINTER CANON IP2770', 'SP MTH SPAREPART (LK)', '500', 'bisa dijual'),
('59', '58', 'BODY PRINTER T13X', 'SP MTH SPAREPART (LK)', '15000', 'bisa dijual'),
('60', '59', 'BOTOL 1000ML BLUE KHUSUS UNTUK EPSON R1800/R800 - 4180 IM (T054920)', 'CI MTH TINTA LAIN (IM)', '10000', 'bisa dijual'),
('61', '60', 'BOTOL 1000ML CYAN KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4120 IM (T054220)', 'CI MTH TINTA LAIN (IM)', '10000', 'tidak bisa dijual'),
('62', '61', 'BOTOL 1000ML GLOSS OPTIMIZER KHUSUS UNTUK EPSON R1800/R800/R1900/R2000/IX7000/MG6170 - 4100 IM (T054020)', 'CI MTH TINTA LAIN (IM)', '1500', 'bisa dijual'),
('63', '62', 'BOTOL 1000ML L.LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0599 IM', 'CI MTH TINTA LAIN (IM)', '1500', 'tidak bisa dijual'),
('64', '63', 'BOTOL 1000ML LIGHT BLACK KHUSUS UNTUK EPSON 2400 - 0597 IM', 'CI MTH TINTA LAIN (IM)', '1500', 'tidak bisa dijual'),
('65', '64', 'BOTOL 1000ML MAGENTA KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4140 IM (T054320)', 'CI MTH TINTA LAIN (IM)', '1000', 'bisa dijual'),
('66', '65', 'BOTOL 1000ML MATTE BLACK KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 3503 IM (T054820)', 'CI MTH TINTA LAIN (IM)', '1500', 'tidak bisa dijual'),
('67', '66', 'BOTOL 1000ML ORANGE KHUSUS UNTUK EPSON R1900/R2000 IM - 4190 (T087920)', 'CI MTH TINTA LAIN (IM)', '1500', 'bisa dijual'),
('68', '67', 'BOTOL 1000ML RED KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4170 IM (T054720)', 'CI MTH TINTA LAIN (IM)', '1000', 'tidak bisa dijual'),
('69', '68', 'BOTOL 1000ML YELLOW KHUSUS UNTUK EPSON R1800/R800/R1900/R2000 - 4160 IM (T054420)', 'CI MTH TINTA LAIN (IM)', '1500', 'tidak bisa dijual'),
('71', '70', 'BOTOL KOTAK 100ML LK', 'L MTH AKSESORIS (LK)', '1000', 'bisa dijual'),
('73', '72', 'BOTOL 10ML IM', 'S MTH STEMPEL (IM)', '1000', 'tidak bisa dijual');

-- --------------------------------------------------------

--
-- Table structure for table `manajemen_status`
--

CREATE TABLE `manajemen_status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manajemen_status`
--

INSERT INTO `manajemen_status` (`id_status`, `nama_status`) VALUES
(0, 'bisa dijual'),
(1, 'tidak bisa dijual');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `manajemen_kategori`
--
ALTER TABLE `manajemen_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `manajemen_produk`
--
ALTER TABLE `manajemen_produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD KEY `manajemen_produk_kategori_id_e1f5a4ae_fk_manajemen` (`kategori_id`),
  ADD KEY `manajemen_produk_status_id_0deedfe8_fk_manajemen` (`status_id`);

--
-- Indexes for table `manajemen_status`
--
ALTER TABLE `manajemen_status`
  ADD PRIMARY KEY (`id_status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `manajemen_produk`
--
ALTER TABLE `manajemen_produk`
  ADD CONSTRAINT `manajemen_produk_kategori_id_e1f5a4ae_fk_manajemen` FOREIGN KEY (`kategori_id`) REFERENCES `manajemen_kategori` (`id_kategori`),
  ADD CONSTRAINT `manajemen_produk_status_id_0deedfe8_fk_manajemen` FOREIGN KEY (`status_id`) REFERENCES `manajemen_status` (`id_status`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
