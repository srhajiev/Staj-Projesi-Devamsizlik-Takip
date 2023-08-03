-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 04 Ağu 2023, 00:31:43
-- Sunucu sürümü: 10.1.37-MariaDB
-- PHP Sürümü: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `staj_db2`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `attendence_date` date NOT NULL,
  `attendence_status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `attendances`
--

INSERT INTO `attendances` (`id`, `class_id`, `teacher_id`, `student_id`, `attendence_date`, `attendence_status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, '2023-08-03', 1, '2023-08-03 03:38:45', '2023-08-03 03:38:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `grades`
--

CREATE TABLE `grades` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `class_numeric` bigint(20) UNSIGNED NOT NULL,
  `class_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `grades`
--

INSERT INTO `grades` (`id`, `teacher_id`, `class_numeric`, `class_name`, `class_description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'One', 'class one', NULL, NULL),
(2, 1, 1231, 'MF-105', 'SDFSFSFDS', '2023-08-03 03:35:03', '2023-08-03 03:35:03'),
(3, 7, 205, 'MF-205', '3 cü sınıflar', '2023-08-03 11:43:34', '2023-08-03 11:43:34'),
(4, 6, 305, 'MF-305', '4 cü sınıflar', '2023-08-03 11:44:04', '2023-08-03 11:44:04'),
(5, 5, 207, 'MF-207', '207', '2023-08-03 11:44:48', '2023-08-03 11:44:48');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `grade_subject`
--

CREATE TABLE `grade_subject` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `grade_id` bigint(20) UNSIGNED NOT NULL,
  `subject_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `grade_subject`
--

INSERT INTO `grade_subject` (`id`, `grade_id`, `subject_id`, `created_at`, `updated_at`) VALUES
(2, 5, 8, NULL, NULL),
(3, 5, 7, NULL, NULL),
(4, 5, 6, NULL, NULL),
(5, 5, 4, NULL, NULL),
(6, 4, 3, NULL, NULL),
(7, 4, 2, NULL, NULL),
(8, 1, 8, NULL, NULL),
(9, 1, 7, NULL, NULL),
(10, 1, 6, NULL, NULL),
(11, 1, 5, NULL, NULL),
(12, 1, 4, NULL, NULL),
(13, 1, 3, NULL, NULL),
(14, 1, 2, NULL, NULL),
(15, 2, 8, NULL, NULL),
(16, 2, 7, NULL, NULL),
(17, 2, 6, NULL, NULL),
(18, 2, 5, NULL, NULL),
(19, 2, 4, NULL, NULL),
(20, 3, 8, NULL, NULL),
(21, 3, 7, NULL, NULL),
(22, 3, 6, NULL, NULL),
(23, 3, 5, NULL, NULL),
(24, 3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_14_114748_create_permission_tables', 1),
(4, '2019_05_15_180937_create_students_table', 1),
(5, '2019_05_15_181154_create_parents_table', 1),
(6, '2019_05_15_181254_create_teachers_table', 1),
(7, '2019_05_15_181552_create_grades_table', 1),
(8, '2019_05_16_174745_create_subjects_table', 1),
(9, '2019_05_16_175620_create_grade_subject_table', 1),
(10, '2019_05_17_133226_create_attendances_table', 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2),
(2, 'App\\User', 8),
(2, 'App\\User', 9),
(2, 'App\\User', 10),
(2, 'App\\User', 11),
(3, 'App\\User', 12),
(3, 'App\\User', 13),
(3, 'App\\User', 14),
(3, 'App\\User', 15),
(3, 'App\\User', 16),
(4, 'App\\User', 18),
(4, 'App\\User', 19),
(4, 'App\\User', 20),
(4, 'App\\User', 21);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `parents`
--

CREATE TABLE `parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `parents`
--

INSERT INTO `parents` (`id`, `user_id`, `gender`, `phone`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(2, 12, 'female', '00000000', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 10:59:50', '2023-08-03 10:59:50'),
(3, 13, 'female', '00000000', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 10:59:58', '2023-08-03 10:59:58'),
(4, 14, 'female', '00000000', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 11:00:07', '2023-08-03 11:00:07'),
(5, 15, 'female', '00000000', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 11:00:14', '2023-08-03 11:00:14'),
(6, 16, 'female', '00000000', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 11:00:21', '2023-08-03 11:00:21');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'tamizin', 'web', '2023-08-03 03:42:21', '2023-08-03 03:42:21'),
(2, 'admin', 'web', '2023-08-03 03:42:44', '2023-08-03 03:42:44');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-08-02 13:38:49', '2023-08-02 13:38:49'),
(2, 'Teacher', 'web', '2023-08-02 13:38:49', '2023-08-03 13:06:42'),
(3, 'Parent', 'web', '2023-08-02 13:38:49', '2023-08-03 13:07:02'),
(4, 'Student', 'web', '2023-08-02 13:38:49', '2023-08-03 13:06:51');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL,
  `class_id` bigint(20) UNSIGNED NOT NULL,
  `roll_number` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `students`
--

INSERT INTO `students` (`id`, `user_id`, `parent_id`, `class_id`, `roll_number`, `gender`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(2, 18, 2, 2, 17155966, 'male', '00000000', '1999-05-16', 'mersın teknopark ıdarı bina n0 105 kat 1', 'mersın teknopark ıdarı bina n0 105 kat 1', '2023-08-03 11:10:11', '2023-08-03 11:10:11'),
(3, 19, 3, 2, 17155436, 'male', '00000000', '1999-05-16', 'mersın teknopark ıdarı bina n0 105 kat 1', 'mersın teknopark ıdarı bina n0 105 kat 1', '2023-08-03 11:10:36', '2023-08-03 11:10:36'),
(4, 20, 4, 2, 17153436, 'male', '00000000', '1999-05-16', 'mersın teknopark ıdarı bina n0 105 kat 1', 'mersın teknopark ıdarı bina n0 105 kat 1', '2023-08-03 11:11:24', '2023-08-03 11:11:24'),
(5, 21, 5, 2, 17153423, 'female', '00000000', '1999-05-16', 'mersın teknopark ıdarı bina n0 105 kat 1', 'mersın teknopark ıdarı bina n0 105 kat 1', '2023-08-03 11:12:00', '2023-08-03 11:12:00');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `slug`, `subject_code`, `teacher_id`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Kriptoloji', 'kriptoloji', 1555012, 1, 'Kriptografi, verinin güvenli bir şekilde şifrelenmesi ve deşifre edilmesi bilimidir. Bu, gizliliği, bütünlüğü ve kimlik doğrulamayı sağlamak için kullanılır. Bankacılık, e-ticaret gibi birçok alanda kritik öneme sahiptir.', '2023-08-03 10:37:42', '2023-08-03 10:40:08'),
(3, 'Bilgisayar Ağları', 'bilgisayar-aglari', 1555004, 1, 'Bilgisayar ağları, farklı cihazların birbirine bağlanarak veri paylaşımı yapmalarını sağlar. Bu, internet üzerinden e-posta göndermek veya şirket içinde dosya paylaşmak gibi uygulamalarda kullanılır. Ağlar, veri iletişimi için protokoller kullanır.', '2023-08-03 10:39:04', '2023-08-03 10:39:04'),
(4, 'Sistem Programlama', 'sistem-programlama', 1555001, 4, 'Sistem programlama, işletim sistemleri ve donanım arasında arayüz oluşturan yazılımların geliştirilmesini içerir. Bu ders, düşük seviye programlama, hafıza yönetimi, işlemci çağrıları gibi kavramlara odaklanır. Öğrenciler, bilgisayarın temel işle', '2023-08-03 10:45:01', '2023-08-03 10:45:01'),
(5, 'DİJİTALLEŞME VE TOPLUMSAL CİNSİYET', 'dijitallesme-ve-toplumsal-cinsiyet', 1557051, 7, 'Dijitalleşme ve toplumsal cinsiyet, teknolojinin cinsiyet rolleri ve eşitliği üzerindeki etkisini inceler', '2023-08-03 10:54:46', '2023-08-03 10:54:46'),
(6, 'OBJECT ORIENTED PROGRAMMING', 'object-oriented-programming', 1553008, 5, 'Object-Oriented Programming (OOP), programlamada kullanılan bir paradigmadır. Sınıflar ve nesneler aracılığıyla veri ve fonksiyonları düzenler, kodun yeniden kullanılmasını ve bakımını kolaylaştırır', '2023-08-03 10:55:49', '2023-08-03 10:55:49'),
(7, 'DIGITAL CONTROL SYSTEMS', 'digital-control-systems', 1557029, 6, 'Digital Control Systems, dijital bilgisayarlar ve mikroişlemciler kullanılarak kontrol işlemlerinin tasarımı ve uygulanmasını inceler. Bu sistemler, sürekli zamanlı sisteml', '2023-08-03 10:56:55', '2023-08-03 10:56:55'),
(8, 'E-COMMERCE', 'e-commerce', 1557044, 5, 'E-commerce, yani elektronik ticaret, ürün ve hizmetlerin online platformlar üzerinden alınıp satılması işlemlerini kapsar. İnternetin yaygınlaşmasıyla büyüyen bir sektör haline gelmiştir. E-', '2023-08-03 10:59:04', '2023-08-03 10:59:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `gender` enum('male','female','other') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateofbirth` date NOT NULL,
  `current_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `gender`, `phone`, `dateofbirth`, `current_address`, `permanent_address`, `created_at`, `updated_at`) VALUES
(1, 2, 'male', '0000000', '1993-04-11', 'Mersin Univ', 'Mersin Univ', '2023-08-02 13:38:49', '2023-08-03 10:44:50'),
(4, 8, 'male', '00000000', '1994-08-01', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 10:43:06', '2023-08-03 10:43:06'),
(5, 9, 'male', '00000000', '1984-08-02', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 10:46:11', '2023-08-03 10:46:11'),
(6, 10, 'male', '00000000', '1984-08-14', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 10:47:28', '2023-08-03 10:47:28'),
(7, 11, 'female', '00000000', '1995-08-03', 'Çiftlikköy, Mersin Ünv., 33110', 'Çiftlikköy, Mersin Ünv., 33110', '2023-08-03 10:49:26', '2023-08-03 10:49:26');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `profile_picture`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@hajiev.com', NULL, '$2y$10$m3zqhi1UkicJqO8PRbACSO9fIyHnUMmRfxQ14aBhkly.hJvLrl7ba', 'avatar.png', NULL, '2023-08-02 13:38:49', '2023-08-02 13:38:49'),
(2, 'Doç.Dr. Erdinç Avaroğlu', 'erdinc@hajiev.com', NULL, '$2y$10$ZnLxErwXewBWtWV0sZL9x.sQ1wIuSWXqzqbJKeGOL2eNLWDwWgAtS', 'erdinc-avaroglu-2.jpg', NULL, '2023-08-02 13:38:49', '2023-08-03 10:44:50'),
(8, 'Prof.Dr. ZEKİ YETGİN', 'zeki@hajiev.com', NULL, '$2y$10$xzd16BYguP/Rzzfynkdnb./6Su7iOmjGKD/0ganh5FKAmd7LcHB8K', 'profdr-zeki-yetgin-8.jfif', NULL, '2023-08-03 10:43:06', '2023-08-03 10:43:06'),
(9, 'Doç.Dr. FARUK SERİN', 'faruk@hajiev.com', NULL, '$2y$10$3M/PfHI66d0wq/ec0MiZQeIMCSXrIi33zEBU07w1bbP75sGKWlU7.', 'docdr-faruk-serin-9.jpg', NULL, '2023-08-03 10:46:11', '2023-08-03 10:46:11'),
(10, 'Dr.Öğretim Üyesi VOLKAN YAMAÇLI', 'volkan@hajiev.com', NULL, '$2y$10$9XY1BjMcH2coBLKhmaRwV.arpDj7xjWeSEp9GdSB/h8xU73FYB4TK', 'drogretim-uyesi-volkan-yamacli-10.jpg', NULL, '2023-08-03 10:47:28', '2023-08-03 10:47:28'),
(11, 'Öğr.Gör. PELİN KILINÇ ÖZÜÖLMEZ', 'pelin@hajiev.com', NULL, '$2y$10$BWxwQG9XC278ucFTcYc68e5o0sMWhRQ2zdg1jXq7/CvyYHtMSXxx.', 'ogrgor-pelin-kilinc-ozuolmez-11.jpg', NULL, '2023-08-03 10:49:26', '2023-08-03 10:49:26'),
(12, 'Veli  1', 'veli1@hajiev.com', NULL, '$2y$10$3HRyz3d9D226dD24Lhxswe418rb5/7rjSJhADlx6cqziZGSvT2t6q', 'veli-1-12.jpg', NULL, '2023-08-03 10:59:50', '2023-08-03 10:59:50'),
(13, 'Veli 2', 'veli2@hajiev.com', NULL, '$2y$10$C/Zo4VUQyGJjXYZgF.LMB.Lfww8WCWI5Hoeohfh7w5He/Q4NgS7v.', 'veli-2-13.jpg', NULL, '2023-08-03 10:59:58', '2023-08-03 10:59:58'),
(14, 'Veli 3', 'veli3@hajiev.com', NULL, '$2y$10$5rARSWmY9dajUZI7NH9IVu5VowctBfqSj9ZvQx0w04OZ5pfp2Af5K', 'veli-3-14.jpg', NULL, '2023-08-03 11:00:07', '2023-08-03 11:00:07'),
(15, 'Veli 4', 'veli4@hajiev.com', NULL, '$2y$10$.brVQMYEmksMBpJV3d/kg.OC5qgKMfr5PJvJAnJI4HTLUJls.kD5e', 'veli-4-15.jpg', NULL, '2023-08-03 11:00:14', '2023-08-03 11:00:14'),
(16, 'Veli 5', 'veli5@hajiev.com', NULL, '$2y$10$.TpOkIa5zqvUqTgdnY5xiuqqD8aU6WMEHmmvBf9YvIvFvUZw5RNE2', 'veli-5-16.jpg', NULL, '2023-08-03 11:00:21', '2023-08-03 11:00:21'),
(17, 'Arif Hajiyev', 'arif@hajiev.com', NULL, '$2y$10$dtoeO8p1E3x97LqsjC0woOSnKaubIkbNC0.uNh8JZWY9hz4qB8owi', 'arif-hajiyev-17.png', NULL, '2023-08-03 11:01:27', '2023-08-03 11:01:27'),
(18, 'Arif Hajiyev', 'ogrenci1@hajiev.com', NULL, '$2y$10$Ld0572UwL9NxuF7xowlNlOtw6Pjh27.uxqHq8zbbVFn6vetCuEr9W', 'arif-hajiyev-18.png', NULL, '2023-08-03 11:10:11', '2023-08-03 11:10:11'),
(19, 'Ogrenci 2', 'ogrenci2@hajiev.com', NULL, '$2y$10$LGXQlyzYAXwQW78aZqLubOExdGM9Gm09go8/wWyUUlMLngqypu92K', 'ogrenci-19.png', NULL, '2023-08-03 11:10:36', '2023-08-03 11:14:27'),
(20, 'Ogrenci 3', 'ogrenci3@hajiev.com', NULL, '$2y$10$DOOTxIxVD61tqAB.LUbPheV6Lc9JlitxFRhNdr61t1Sho713ufHnG', 'ogrenci-20.png', NULL, '2023-08-03 11:11:24', '2023-08-03 11:14:20'),
(21, 'Ogrenci 4', 'ogrenci4@hajiev.com', NULL, '$2y$10$j.PnKNymCjmJyhYpLEHEf.3gbvSXpxaUP7q4z4mtzV7DCX9gyabJC', 'ogrenci-4-21.png', NULL, '2023-08-03 11:12:00', '2023-08-03 11:12:00');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `grade_subject`
--
ALTER TABLE `grade_subject`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Tablo için indeksler `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Tablo için indeksler `parents`
--
ALTER TABLE `parents`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Tablo için indeksler `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Tablo için indeksler `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `grades`
--
ALTER TABLE `grades`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `grade_subject`
--
ALTER TABLE `grade_subject`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `parents`
--
ALTER TABLE `parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
