-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 04:27 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uud`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_24_145523_create_uud_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uud`
--

DROP TABLE IF EXISTS `uud`;
CREATE TABLE `uud` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bab` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pasal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ayat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uud`
--

INSERT INTO `uud` (`id`, `bab`, `pasal`, `ayat`, `isi`, `created_at`, `updated_at`) VALUES
(1, 'Pembukaan', '-', '-', 'Bahwa sesungguhnya kemerdekaan itu ialah hak segala bangsa dan oleh sebab itu, maka\r\npenjajahan diatas dunia harus dihapuskan, karena tidak sesuai dengan perikemanusiaan\r\ndan perikeadilan.\r\nDan perjuangan pergerakan kemerdekaan Indonesia telah sampailah kepada saat yang\r\nberbahagia dengan selamat sentosa mengantarkan rakyat Indonesia ke depan pintu\r\ngerbang kemerdekaan negara Indonesia, yang merdeka, bersatu, berdaulat, adil dan\r\nmakmur.\r\nAtas berkat rahmat Allah Yang Maha Kuasa dan dengan didorongkan oleh keinginan\r\nluhur, supaya berkehidupan kebangsaan yang bebas, maka rakyat Indonesia menyatakan\r\ndengan ini kemerdekaannya.\r\nKemudian daripada itu untuk membentuk suatu Pemerintah Negara Indonesia yang\r\nmelindungi segenap bangsa Indonesia dan seluruh tumpah darah Indonesia dan untuk\r\nmemajukan kesejahteraan umum, mencerdaskan kehidupan bangsa, dan ikut\r\nmelaksanakan ketertiban dunia yang berdasarkan kemerdekaan, perdamaian abadi dan\r\nkeadilan sosial, maka disusunlah Kemerdekaan Kebangsaan Indonesia itu dalam suatu\r\nUndang-Undang Dasar Negara Indonesia, yang terbentuk dalam suatu susunan Negara\r\nRepublik Indonesia yang berkedaulatan rakyat dengan berdasar kepada : Ketuhanan Yang\r\nMaha Esa, kemanusiaan yang adil dan beradab, persatuan Indonesia, dan kerakyatan yang\r\ndipimpin oleh hikmat kebijaksanaan dalam permusyawaratan/perwakilan, serta dengan\r\nmewujudkan suatu keadilan sosial bagi seluruh rakyat Indonesia.', '2021-11-24 08:56:13', '2021-11-26 05:52:38'),
(2, '1', '1', '1', 'Negara Indonesia ialah Negara kesatuan yang berbentuk Republik.', '2021-11-26 05:55:15', '2021-11-26 05:55:15'),
(3, '1', '1', '2', 'Kedaulatan adalah di tangan rakyat, dan dilakukan sepenuhnya oleh Majelis\r\nPermusyawaratan Rakyat.', '2021-11-26 05:58:19', '2021-11-26 05:58:19'),
(4, '2', '2', '1', 'Majelis Permusyawaratan Rakyat terdiri atas anggota-anggota Dewan Perwakilan\r\nRakyat, ditambah dengan utusan-utusan dari daerah-daerah dan golongan-golongan,\r\nmenurut aturan yang ditetapkan dengan undang-undang', '2021-11-26 05:58:57', '2021-11-26 05:58:57'),
(5, '2', '2', '2', 'Majelis Permusyawaratan Rakyat bersidang sedikitnya sekali dalam lima tahun di\r\nibukota', '2021-11-26 05:59:12', '2021-11-26 05:59:12'),
(6, '2', '2', '3', 'Segala putusan Majelis Permusyawaratan Rakyat ditetapkan dengan suara yang\r\nterbanyak.', '2021-11-26 05:59:36', '2021-11-26 05:59:36'),
(7, '2', '3', '1', 'Majelis Permusyawaratan Rakyat menetapkan Undang-Undang Dasar dan garis-garis\r\nbesar dari ada haluan negara.', '2021-11-26 06:07:21', '2021-11-26 06:07:21'),
(8, '3', '4', '1', 'Presiden Republik Indonesia memegang kekuasaan pemerintahan menurut UndangUndang Dasar.', '2021-11-26 06:08:41', '2021-11-26 06:11:46'),
(9, '3', '4', '2', 'Dalam melakukan kewajibannya Presiden dibantu oleh satu orang Wakil Presiden.', '2021-11-26 06:11:07', '2021-11-26 06:11:52'),
(10, '3', '5', '1', 'Presiden memegang kekuasaan membentuk undang- undang dengan persetujuan\r\nDewan Perwakilan Rakyat', '2021-11-26 06:11:36', '2021-11-26 06:13:22'),
(11, '3', '5', '2', 'Presiden menetapkan peraturan pemerintah untuk menjalankan undang-undang\r\nsebagaimana mestinya.', '2021-11-26 06:13:47', '2021-11-26 06:13:47'),
(12, '3', '6', '1', 'Presiden ialah orang Indonesia asli.', '2021-11-26 06:17:13', '2021-11-26 06:17:13'),
(13, '3', '6', '2', 'Presiden dan Wakil Presiden dipilih oleh Majelis Permusyawaratan Rakyat dengan\r\nsuara yang terbanyak.', '2021-11-26 06:17:35', '2021-11-26 06:17:35'),
(14, '3', '7', '1', 'Presiden dan Wakil Presiden memegang jabatannya selama masa lima tahun, dan\r\nsesudahnya dapat dipilih kembali.', '2021-11-26 06:17:52', '2021-11-26 06:17:52'),
(15, '3', '8', '1', 'Jika Presiden mangkat, berhenti, atau tidak dapat melakukan kewajibannya dalam masa\r\njabatannya, ia diganti oleh Wakil Presiden sampai habis waktunya.', '2021-11-26 06:18:07', '2021-11-26 06:18:07'),
(16, '3', '9', '1', 'Sebelum memangku jabatannya, Presiden dan Wakil Presiden bersumpah menurut\r\nagama, atau berjanji dengan sungguh-sungguh di hadapan Majelis Permusyawaratan\r\nRakyat atau Dewan Perwakilan Rakyat sebagai berikut:\r\nSumpah Presiden (Wakil Presiden):\r\n\"Demi Allah, saya bersumpah akan memenuhi kewajiban Presiden Republik Indonesia\r\n(Wakil Presiden Republik Indonesia) dengan sebaik-baiknya dan seadil-adilnya,\r\nmemegang teguh Undang- Undang Dasar dan menjalankan segala undang-undang dan\r\nperaturannya dengan selurus-lurusnya serta berbakti kepada Nusa dan Bangsa.\r\n\"Janji Presiden (WakilPresiden):\r\n\"Saya berjanji dengan sungguh-sungguh akan memenuhi kewajiban Presiden Republik\r\nIndonesia (Wakil Presiden Republik Indonesia) dengan sebaik-baiknya dan seadiladilnya, memegang teguh Undang-Undang Dasar dan menjalankan segala undangundang dan peraturannya dengan seluruslurusnya serta berbakti kepada Nusa dan\r\nBangsa.\"', '2021-11-26 06:19:04', '2021-11-26 06:19:04'),
(17, '3', '10', '1', 'Presiden memegang kekuasaan yang tertinggi atas Angkatan Darat, Angkatan Laut, dan\r\nAngkatan Udara.', '2021-11-26 06:20:53', '2021-11-26 06:20:53'),
(18, '3', '11', '1', 'Presiden dengan persetujuan Dewan Perwakilan Rakyat menyatakan perang, membuat\r\nperdamaian dan perjanjian dengan negara lain.', '2021-11-26 06:21:09', '2021-11-26 06:21:09'),
(19, '3', '12', '1', 'Presiden menyatakan keadaan bahaya. Syarat-syarat dan akibatnya keadaan bahaya\r\nditetapkan dengan undang-undang.', '2021-11-26 06:21:22', '2021-11-26 06:21:22'),
(20, '3', '13', '1', 'Presiden mengangkat duta dan konsul.', '2021-11-26 06:21:46', '2021-11-26 06:21:46'),
(21, '3', '13', '2', 'Presiden menerima duta negara lain.', '2021-11-26 06:22:12', '2021-11-26 06:22:12'),
(22, '3', '14', '1', 'Presiden memberi grasi, amnesti, abolisi, dan rehabilitasi.', '2021-11-26 06:22:35', '2021-11-26 06:22:35'),
(23, '3', '15', '1', 'Presiden memberi gelaran, tanda jasa ,dan lain-lain tanda kehormatan.', '2021-11-26 06:22:51', '2021-11-26 06:22:51'),
(24, '4', '16', '1', 'Susunan Dewan Pertimbangan Agung ditetapkan dengan undang-undang.', '2021-11-26 06:24:30', '2021-11-26 06:24:30'),
(25, '4', '16', '2', 'Dewan ini berkewajiban memberi jawab atas pertanyaan Presiden dan berhak\r\nmemajukan usul kepada pemerintah', '2021-11-26 06:25:11', '2021-11-26 06:25:11'),
(26, '5', '17', '1', 'Presiden dibantu oleh menteri-menteri negara.', '2021-11-26 06:30:06', '2021-11-26 06:30:06'),
(27, '5', '17', '2', 'Menteri-menteri itu diangkat dan diperhentikan oleh Presiden.', '2021-11-26 06:30:20', '2021-11-26 06:30:20'),
(28, '5', '17', '3', 'Menteri-menteri itu memimpin departemen pemerintahan.', '2021-11-26 06:30:44', '2021-11-26 06:30:44'),
(29, '6', '18', '1', 'Pembagian daerah Indonesia atas daerah besar dan kecil, dengan bentuk susunan\r\npemerintahannya ditetapkan dengan undang-undang, dengan memandang dan mengingati\r\ndasar permusyawaratan dalam sistem pemerintahan negara, dan hak-hak asal-usul dalam\r\ndaerah-daerah yang bersifat istimewa.', '2021-11-26 06:34:16', '2021-11-26 06:34:16'),
(30, '7', '19', '1', 'Susunan Dewan Perwakilan Rakyat ditetapkan dengan undang-undang.', '2021-11-26 06:34:34', '2021-11-26 06:34:34'),
(31, '7', '19', '2', 'Dewan Perwakilan Rakyat bersidang sedikitnya sekali dalam setahun.', '2021-11-26 06:34:56', '2021-11-26 06:34:56'),
(32, '7', '20', '1', 'Tiap-tiap undang-undang menghendaki persetujuan Dewan Perwakilan Rakyat.', '2021-11-26 06:35:29', '2021-11-26 06:35:29'),
(33, '7', '20', '2', 'Jika sesuatu rancangan undang-undang tidak mendapat persetujuan Dewan\r\nPerwakilan Rakyat, maka rancangan tadi tidak boleh dimajukan lagi dalam persidangan Dewan Perwakilan Rakyat masa itu.', '2021-11-26 06:35:54', '2021-11-26 06:35:54'),
(34, '7', '21', '1', 'Anggota-anggota Dewan Perwakilan Rakyat berhak memajukan rancangan undangundang.', '2021-11-26 06:36:11', '2021-11-26 06:36:11'),
(35, '7', '21', '2', 'Jika rancangan itu, meskipun disetujui oleh Dewan Perwakilan Rakyat, tidak\r\ndisyahkan oleh Presiden, maka rancangan tadi tidak boleh dimajukan lagi dalam\r\npersidangan Dewan\r\nPerwakilan Rakyat masa itu.', '2021-11-26 06:37:30', '2021-11-26 06:37:30'),
(36, '7', '22', '1', 'Dalam hal ihwal kegentingan yang memaksa, Presiden berhak menetapkan peraturan\r\npemerintah pengganti undang-undang', '2021-11-26 06:37:53', '2021-11-26 06:37:53'),
(37, '7', '22', '2', 'Peraturan pemerintah itu harus mendapat persetujuan Dewan Perwakilan Rakyat\r\ndalam persidangan yang berikut.', '2021-11-26 06:38:03', '2021-11-26 06:38:23'),
(38, '7', '22', '3', 'Jika tidak mendapat persetujuan, maka peraturan pemerintah itu harus dicabut.', '2021-11-26 06:39:57', '2021-11-26 06:39:57'),
(39, '8', '23', '1', 'Anggaran pendapatan dan belanja ditetapkan tiap-tiap tahun dengan undang-undang.\r\nApabila Dewan Perwakilan Rakyat tidak menyetujui anggaran yang diusulkan\r\npemerintah, maka pemerintah menjalankan anggaran tahun yang lalu', '2021-11-26 06:41:51', '2021-11-26 06:41:51'),
(40, '8', '23', '2', 'Segala pajak untuk keperluan negara berdasarkan undang-undang.', '2021-11-26 06:42:25', '2021-11-26 06:42:25'),
(41, '8', '23', '3', 'Macam dan harga mata uang ditetapkan dengan undang-undang.', '2021-11-26 06:42:53', '2021-11-26 06:42:53'),
(42, '8', '23', '4', 'Hal keuangan negara selanjutnya diatur dengan undang-undang.', '2021-11-26 06:43:24', '2021-11-26 06:43:24'),
(43, '8', '23', '5', 'Untuk memeriksa tanggung jawab tentang keuangan negara diadakan suatu Badan\r\nPemeriksa Keuangan, yang peraturannya ditetapkan dengan undang-undang. Hasil\r\npemeriksaan itu diberitahukan kepada Dewan Perwakilan Rakyat.', '2021-11-26 06:43:40', '2021-11-26 06:43:40'),
(44, '9', '24', '1', 'Kekuasaan Kehakiman dilakukan oleh sebuah Mahkamah Agung dan lain-lain badan\r\nkehakiman menurut undang-undang.', '2021-11-26 06:44:47', '2021-11-26 06:44:47'),
(45, '9', '24', '2', 'Susunan dan kekuasaan badan kehakiman itu diatur dengan undang-undang.', '2021-11-26 06:45:07', '2021-11-26 06:45:07'),
(46, '9', '25', '1', 'Syarat-syarat untuk menjadi dan diperhentikan sebagai hakim ditetapkan dengan undangundang.', '2021-11-26 06:45:21', '2021-11-26 06:45:21'),
(47, '10', '26', '1', 'Yang menjadi warga negara ialah orang-orang bangsa Indonesia asli dan orang-orang\r\nbangsa lain yang disahkan dengan undang-undang sebagai warga negara', '2021-11-26 06:46:18', '2021-11-26 06:46:18'),
(48, '10', '26', '2', 'Syarat-syarat yang mengenai kewarganegaraan ditetapkan dengan undang-undang.', '2021-11-26 06:46:34', '2021-11-26 06:46:45'),
(49, '10', '27', '1', 'Segala warga negara bersamaan kedudukannya dalam hukum dan pemerintahan dan\r\nwajib menjunjung hukum dan pemerintahan itu dengan tidak ada kecualinya', '2021-11-26 06:47:44', '2021-11-26 06:47:44'),
(50, '10', '27', '2', 'Tiap-tiap warga negara berhak atas pekerjaan dan penghidupan yang layak bagi\r\nkemanusiaan.', '2021-11-26 06:47:58', '2021-11-26 06:47:58'),
(51, '10', '28', '1', 'Kemerdekaan berserikat dan berkumpul, mengeluarkan pikiran dengan lisan dan tulisan\r\ndan\r\nsebagainya ditetapkan dengan undang-undang.', '2021-11-26 06:48:12', '2021-11-26 06:48:12'),
(52, '11', '29', '1', 'Negara berdasar atas Ketuhanan Yang Maha Esa.', '2021-11-26 06:51:40', '2021-11-26 06:51:40'),
(53, '11', '29', '2', 'Negara menjamin kemerdekaan tiap-tiap penduduk untuk memeluk agamanya\r\nmasing-masing dan untuk beribadat menurut agamanya dan kepercayaannya itu.', '2021-11-26 06:53:02', '2021-11-26 06:53:02'),
(54, '12', '30', '1', 'Tiap-tiap warga negara berhak dan wajib ikut serta dalam usaha pembelaan negara.', '2021-11-26 06:53:16', '2021-11-26 06:53:16'),
(55, '12', '30', '2', 'Syarat-syarat tentang pembelaan diatur dengan undang-undang.', '2021-11-26 06:53:34', '2021-11-26 06:53:34'),
(56, '13', '31', '1', 'Tiap-tiap warga negara berhak mendapat pengajaran.', '2021-11-26 06:55:17', '2021-11-26 06:55:17'),
(57, '13', '31', '2', 'Pemerintah mengusahakan dan menyelenggarakan satu sistem pengajaran nasional,\r\nyang\r\ndiatur dengan undang-undang.', '2021-11-26 06:55:34', '2021-11-26 06:55:34'),
(58, '13', '32', '1', 'Pemerintah memajukan kebudayaan nasional Indonesia.', '2021-11-26 06:55:46', '2021-11-26 06:55:46'),
(59, '14', '33', '1', 'Perekonomian disusun sebagai usaha bersama berdasar atas asas kekeluargaan.', '2021-11-26 06:56:03', '2021-11-26 06:56:03'),
(60, '14', '33', '2', 'Cabang-cabang produksi yang penting bagi negara dan yang menguasai hajat hidup\r\norang banyak dikuasai oleh negara', '2021-11-26 06:56:15', '2021-11-26 06:56:28'),
(61, '14', '33', '3', 'Bumi dan air dan kekayaan alam yang terkandung didalamnya dikuasai oleh negara\r\ndan\r\ndipergunakan untuk sebesar-besar kemakmuran rakyat', '2021-11-26 06:56:42', '2021-11-26 06:57:31'),
(62, '14', '34', '1', 'Fakir miskin dan anak-anakyang terlantar dipelihara oleh negara.', '2021-11-26 06:57:00', '2021-11-26 06:57:37'),
(63, '15', '35', '1', 'Bendera Negara Indonesia ialah Sang Merah Putih.', '2021-11-26 06:57:23', '2021-11-26 06:57:23'),
(64, '15', '36', '1', 'Bahasa negara ialah Bahasa Indonesia.', '2021-11-26 06:57:55', '2021-11-26 06:57:55'),
(65, '16', '37', '1', 'Untuk mengubah Undang-Undang Dasar sekurang-kurangnya 2/3 dari pada jumlah\r\nanggota Majelis Permusyawaratan Rakyat harus hadir', '2021-11-26 06:59:44', '2021-11-26 06:59:44'),
(66, '16', '37', '2', 'Putusan diambil dengan persetujuan sekurang-kurangnya 2/3 dari pada jumlah\r\nanggota\r\nMajelis Permusyawaratan Rakyat yang hadir', '2021-11-26 07:00:03', '2021-11-26 07:00:03'),
(67, 'Aturan Peralihan', '1', '1', 'Panitia Persiapan Kemerdekaan Indonesia mengatur dan menyelenggarakan kepindahan\r\npemerintahan kepada Pemerintah Indonesia .', '2021-11-26 07:00:40', '2021-11-26 07:00:40'),
(68, 'Aturan Peralihan', '2', '1', 'Segala badan negara dan peraturan yang ada masih langsung berlaku, selama belum\r\ndiadakan yang baru menurut Undang-Undang Dasar ini.', '2021-11-26 07:00:57', '2021-11-26 07:00:57'),
(69, 'Aturan Peralihan', '3', '1', 'Untuk pertama kali Presiden dan Wakil Presiden dipilih oleh Panitia Persiapan\r\nKemerdekaan\r\nIndonesia.', '2021-11-26 07:01:15', '2021-11-26 07:01:15'),
(70, 'Aturan Peralihan', '4', '1', 'Sebelum Majelis Permusyawaratan Rakyat, Dewan Perwakilan Rakyat, dan Dewan\r\nPertimbangan Agung dibentuk menurut Undang-Undang Dasar ini, segala kekuasaannya\r\ndijalankan oleh Presiden dengan bantuan sebuah komite nasional.', '2021-11-26 07:01:26', '2021-11-26 07:01:26'),
(71, 'Aturan Pertambahan', '1', '1', 'Dalam enam bulan sesudah akhirnya peperangan Asia Timur Raya, Presiden\r\nIndonesia\r\nmengatur dan menyelenggarakan segala hal yang ditetapkan dalam Undang-Undang\r\nDasar\r\nini.', '2021-11-26 07:01:49', '2021-11-26 07:01:49'),
(72, 'Aturan Pertambahan', '1', '2', 'Dalam enam bulan sesudah Majelis Permusyawaratan Rakyat dibentuk, Majelis itu\r\nbersidang untuk menetapkan Undang-Undang Dasar.', '2021-11-26 07:02:04', '2021-11-26 07:02:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `uud`
--
ALTER TABLE `uud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `uud`
--
ALTER TABLE `uud`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
