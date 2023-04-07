-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 03, 2023 at 02:59 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_krillpay`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_08_11_073824_create_menus_wp_table', 1),
(4, '2017_08_11_074006_create_menu_items_wp_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rel_post_category`
--

CREATE TABLE `rel_post_category` (
  `id` int UNSIGNED NOT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `rel_post_category`
--

INSERT INTO `rel_post_category` (`id`, `post_id`, `category_id`) VALUES
(34, 5, 6),
(35, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_groups`
--

CREATE TABLE `tbl_admin_groups` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` varchar(191) DEFAULT NULL,
  `status` enum('1','0') DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_admin_groups`
--

INSERT INTO `tbl_admin_groups` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'Have all the access', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_menus`
--

CREATE TABLE `tbl_admin_menus` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED NOT NULL DEFAULT '0',
  `menu_name` varchar(191) DEFAULT NULL,
  `menu_controller` varchar(191) DEFAULT NULL,
  `menu_link` varchar(191) DEFAULT NULL,
  `menu_css` varchar(191) DEFAULT NULL,
  `menu_icon` varchar(191) DEFAULT NULL,
  `menu_order` int UNSIGNED NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_admin_menus`
--

INSERT INTO `tbl_admin_menus` (`id`, `parent_id`, `menu_name`, `menu_controller`, `menu_link`, `menu_css`, `menu_icon`, `menu_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Homepage', NULL, NULL, NULL, 'fa-gears', 2, '1', NULL, NULL),
(2, 0, 'Logs', NULL, NULL, NULL, 'fa-gears', 101, '1', NULL, NULL),
(3, 5, 'Pages', 'AdminPagesController', 'pages.index', NULL, 'fa-bullseye', 4, '1', NULL, NULL),
(4, 0, 'Roles Management', NULL, NULL, NULL, 'fa-gears', 4, '1', NULL, NULL),
(5, 0, 'Media Management', NULL, 'dashboard', NULL, 'fa-gears', 3, '1', NULL, NULL),
(6, 4, 'User Groups', 'AdminGroupController', 'usergroup.index', NULL, 'fa-bullseye', 1, '1', NULL, NULL),
(7, 4, 'Roles Access', 'AdminRoleAccessController', 'role-access.index', NULL, 'fa-gears', 2, '1', NULL, NULL),
(8, 1, 'Menu Management', 'AdminMenuController', 'menu', NULL, 'fa-bullseye', 2, '0', NULL, NULL),
(9, 1, 'Site Managment', 'AdminSiteSettingController', 'setting', NULL, 'fa-gears', 1, '1', NULL, NULL),
(10, 5, 'Posts', 'AdminPostsController', 'posts.index', NULL, 'fa-gears', 3, '0', NULL, NULL),
(11, 5, 'Category', 'AdminCategoryController', 'category.index', NULL, 'fa-bullseye', 2, '0', NULL, NULL),
(12, 5, 'Media Library', 'AdminDashboardController', 'medialibrary', NULL, 'fa-gears', 100, '1', NULL, NULL),
(13, 1, 'FAQ Mangement', 'AdminFaqController', 'faq.index', NULL, 'fa-bullseye', 10, '1', NULL, NULL),
(14, 1, 'Slider', 'AdminSliderController', 'slider.index', NULL, 'fa-bullseye', 3, '0', NULL, NULL),
(15, 1, 'Feedback List', 'AdminContactController', 'contact.index', NULL, 'fa-gears', 14, '1', NULL, NULL),
(16, 2, 'Login Logs', 'AdminSiteSettingController', 'successlogin', NULL, 'fa-bullseye', 1, '1', NULL, NULL),
(17, 2, 'Fail Login Logs', 'AdminSiteSettingController', 'faillogin', NULL, 'fa-bullseye', 2, '1', NULL, NULL),
(18, 5, 'Author', 'AdminAuthorController', 'author.index', NULL, 'fa-bullseye', 1, '0', NULL, NULL),
(19, 0, 'Configuration', NULL, NULL, NULL, 'fa-gears', 1, '1', NULL, NULL),
(20, 19, 'Country', 'AdminCountryController', 'country.index', NULL, 'fa-bullseye', 3, '0', NULL, NULL),
(21, 1, 'Study Abroad', 'AdminStudyAbroadController', 'study-abroad.index', NULL, 'fa-bullseye', 3, '0', NULL, NULL),
(22, 1, 'Why Choose Us', 'AdminWhyChooseController', 'why-choose.index', NULL, 'fa-bullseye', 3, '0', NULL, NULL),
(23, 19, 'Testimonial', 'AdminTestimonialController', 'testimonial.index', NULL, 'fa-bullseye', 3, '1', NULL, NULL),
(24, 1, 'Event', 'AdminEventController', 'event.index', NULL, 'fa-bullseye', 3, '0', NULL, NULL),
(25, 19, 'University', 'AdminUniversityController', 'university.index', NULL, 'fa-bullseye', 3, '0', NULL, NULL),
(26, 1, 'How we work', 'AdminWorkingController', 'working.index', NULL, 'fa-bullseye', 3, '0', NULL, NULL),
(27, 1, 'Certificate', 'AdminCertificateController', 'certificate.index', NULL, 'fa-bullseye', 4, '0', NULL, NULL),
(28, 19, 'Scholarship Offer', 'AdminScholarshipOfferController', 'scholarship-offer.index', NULL, 'fa-bullseye', 3, '0', NULL, NULL),
(29, 19, 'Partner', 'AdminPartnerController', 'partner.index', NULL, 'fa-bullseye', 1, '1', NULL, NULL),
(30, 19, 'Service', 'AdminServiceController', 'service.index', NULL, 'fa-bullseye', 1, '1', NULL, NULL),
(31, 19, 'Value', 'AdminValueController', 'value.index', NULL, 'fa-bullseye', 1, '1', NULL, NULL),
(32, 19, 'Feature', 'AdminFeatureController', 'feature.index', NULL, 'fa-bullseye', 1, '1', NULL, NULL),
(33, 19, 'Team', 'AdminTeamController', 'team.index', NULL, 'fa-bullseye', 1, '1', NULL, NULL),
(34, 1, 'Mailing List', 'AdminContactController', 'mailinglist', NULL, 'fa-gears', 14, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_roles`
--

CREATE TABLE `tbl_admin_roles` (
  `id` int UNSIGNED NOT NULL,
  `user_group_id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED NOT NULL,
  `allow_view` enum('1','0') NOT NULL DEFAULT '1',
  `allow_add` enum('1','0') NOT NULL DEFAULT '1',
  `allow_edit` enum('1','0') NOT NULL DEFAULT '1',
  `allow_delete` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_admin_roles`
--

INSERT INTO `tbl_admin_roles` (`id`, `user_group_id`, `menu_id`, `allow_view`, `allow_add`, `allow_edit`, `allow_delete`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '1', '0', '0', '0', '2022-08-14 09:31:39', NULL),
(2, 1, 2, '1', '0', '0', '0', '2022-08-14 09:31:39', NULL),
(3, 1, 3, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(4, 1, 4, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(5, 1, 5, '1', '0', '0', '0', '2022-08-14 09:31:39', NULL),
(6, 1, 6, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(7, 1, 7, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(8, 1, 8, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(9, 1, 9, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(10, 1, 10, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(11, 1, 11, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(12, 1, 12, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(13, 1, 13, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(14, 1, 14, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(15, 1, 15, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(16, 1, 16, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(17, 1, 17, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(18, 1, 18, '1', '1', '1', '1', '2022-08-14 09:31:39', NULL),
(19, 1, 19, '1', '0', '0', '0', '2022-08-14 09:31:40', NULL),
(20, 1, 20, '1', '1', '1', '1', '2022-08-14 09:33:37', NULL),
(21, 1, 21, '1', '1', '1', '1', '2022-08-14 11:54:33', NULL),
(22, 1, 22, '1', '1', '1', '1', '2022-08-14 13:53:25', NULL),
(23, 1, 23, '1', '1', '1', '1', '2022-08-14 14:30:24', NULL),
(24, 1, 24, '1', '1', '1', '1', '2022-08-14 14:45:28', NULL),
(25, 1, 25, '1', '1', '1', '1', '2022-08-14 16:31:48', NULL),
(26, 1, 26, '1', '1', '1', '1', '2022-08-16 04:02:30', NULL),
(27, 1, 27, '1', '1', '1', '1', '2022-08-17 16:10:02', NULL),
(28, 1, 28, '1', '1', '1', '1', '2022-08-29 07:57:16', NULL),
(29, 1, 29, '1', '1', '1', '1', '2022-11-12 16:41:01', NULL),
(30, 1, 30, '1', '1', '1', '1', '2022-11-12 17:47:45', NULL),
(31, 1, 31, '1', '1', '1', '1', '2022-11-12 17:47:45', NULL),
(32, 1, 32, '1', '1', '1', '1', '2022-11-13 17:19:09', NULL),
(33, 1, 33, '1', '1', '1', '1', '2022-11-14 17:01:42', NULL),
(34, 1, 34, '1', '1', '1', '1', '2022-11-14 18:21:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin_users`
--

CREATE TABLE `tbl_admin_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `mobileno` varchar(20) DEFAULT NULL,
  `address` int DEFAULT NULL,
  `hub_id` int DEFAULT NULL,
  `ui_skin` varchar(50) DEFAULT 'skin-blue',
  `user_group_id` int UNSIGNED DEFAULT NULL,
  `status` enum('1','0') DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_admin_users`
--

INSERT INTO `tbl_admin_users` (`id`, `username`, `password`, `name`, `email`, `mobileno`, `address`, `hub_id`, `ui_skin`, `user_group_id`, `status`, `lastlogin`, `created_at`, `updated_at`) VALUES
(1, 'iquita2005', '$2y$10$y9y3UP42546JurmBv3LEReaMf7YJTy91iaBVDBlP579P19v6HDbj.', 'SuperAdmin', 'emmanuel@krillpay.com', '9864832952', 0, NULL, 'skin-purple-light', 1, '1', '2023-03-29 17:20:09', '2022-11-11 02:14:03', '2023-03-29 17:20:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_author`
--

CREATE TABLE `tbl_author` (
  `id` int UNSIGNED NOT NULL,
  `name` text,
  `slug` text,
  `description` text,
  `image` varchar(256) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '0',
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `updated_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_author`
--

INSERT INTO `tbl_author` (`id`, `name`, `slug`, `description`, `image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Shoshana Blanchard', 'shoshana-blanchard', 'Laboriosam omnis se', 'public/uploads/shares/10.jpg', '1', 1, 0, '2022-03-08 22:25:44', '2022-03-08 22:25:44'),
(4, 'GSRXEjq8Gu', 'gsrxejq8gu', 'nTfncjOK5U', 'public/uploads/shares/testimonial/hari.png', '1', 1, 0, '2022-11-12 10:07:37', '2022-11-12 10:07:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int UNSIGNED NOT NULL,
  `title` text,
  `sub_title` varchar(256) DEFAULT NULL,
  `slug` text,
  `description` text,
  `status` tinyint NOT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `updated_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `sub_title`, `slug`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Notifications', 'Smart Banking', 'notifications', 'Smart Banking', 1, 1, 0, '2022-11-13 10:59:07', '2022-11-13 10:59:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_certificates`
--

CREATE TABLE `tbl_certificates` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `certificate_type` int DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_certificates`
--

INSERT INTO `tbl_certificates` (`id`, `title`, `image`, `certificate_type`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cert 12', 'public/uploads/shares/breadcrumb-image.jpg', 1, 1, 1, 1, '2022-08-17 10:40:08', '2022-08-17 10:40:51'),
(3, 'cert 2', 'public/uploads/shares/a.jpg', 2, 1, NULL, 1, '2022-08-17 10:41:52', '2022-08-17 10:41:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE `tbl_country` (
  `id` int UNSIGNED NOT NULL,
  `title` text,
  `slug` text,
  `status` tinyint DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL DEFAULT '0',
  `updated_by` int UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id`, `title`, `slug`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'USA', NULL, 1, 1, 1, '2022-08-14 03:51:24', '2022-08-14 05:45:55'),
(3, 'UK', NULL, 1, 1, 0, '2022-08-15 11:17:14', '2022-08-15 11:17:14'),
(4, 'Nepal', NULL, 1, 1, 0, '2022-08-27 22:17:28', '2022-08-27 22:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `sort_order` tinyint DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`id`, `title`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ex corporis delectus', 1, 1, '2022-03-09 22:27:21', '2022-03-09 22:27:43'),
(3, 'Molestiae ad asperio', 2, 1, '2022-03-09 23:16:30', '2022-03-09 23:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` int UNSIGNED NOT NULL,
  `province_id` int UNSIGNED NOT NULL,
  `district_name_en` varchar(200) NOT NULL,
  `district_name_np` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_by` tinyint UNSIGNED DEFAULT NULL,
  `updated_by` tinyint UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `province_id`, `district_name_en`, `district_name_np`, `created_at`, `updated_at`, `created_by`, `updated_by`, `status`) VALUES
(101, 1, 'TAPLEJUNG', 'ताप्लेजुङ', '2019-01-10 12:10:05', '2020-11-09 09:38:57', NULL, NULL, 0),
(102, 1, 'SANKHUWASABHA', 'संखुवासभा', '2019-01-10 12:10:05', '2020-11-09 09:39:15', NULL, NULL, 0),
(103, 1, 'SOLUKHUMBU', 'सोलुखुम्बु', '2019-01-10 12:10:05', '2020-11-09 09:39:15', NULL, NULL, 0),
(104, 1, 'OKHALDHUNGA', 'ओखलढुङ्गा', '2019-01-10 12:10:05', '2020-11-09 09:39:15', NULL, NULL, 0),
(105, 1, 'KHOTANG', 'खोटाङ', '2019-01-10 12:10:05', '2020-11-09 09:39:15', NULL, NULL, 0),
(106, 1, 'BHOJPUR', 'भोजपुर', '2019-01-10 12:10:05', '2019-09-04 09:16:15', NULL, NULL, 0),
(107, 1, 'DHANKUTA', 'धनकुटा', '2019-01-10 12:10:05', '2020-11-09 09:39:15', NULL, NULL, 0),
(108, 1, 'TERHATHUM', 'तेह्रथुम', '2019-01-10 12:10:05', '2020-11-09 09:39:15', NULL, NULL, 0),
(109, 1, 'PANCHTHAR', 'पाँचथर', '2019-01-10 12:10:05', '2020-11-09 09:39:15', NULL, NULL, 0),
(110, 1, 'ILAM', 'इलाम', '2019-01-10 12:10:05', '2020-11-09 09:39:15', NULL, NULL, 0),
(111, 1, 'JHAPA', 'झापा', '2019-01-10 12:10:05', '2020-11-09 09:39:29', NULL, NULL, 1),
(112, 1, 'MORANG', 'मोरङ', '2019-01-10 12:10:05', '2020-11-09 09:39:31', NULL, NULL, 1),
(113, 1, 'SUNSARI', 'सुनसरी', '2019-01-10 12:10:05', '2020-11-09 09:39:37', NULL, NULL, 1),
(114, 1, 'UDAYAPUR', 'उदयपुर', '2019-01-10 12:10:05', '2020-11-09 09:39:41', NULL, NULL, 1),
(201, 2, 'SAPTARI', 'सप्तरी', '2019-01-10 12:10:05', NULL, NULL, NULL, 1),
(202, 2, 'SIRAHA', 'सिरहा', '2019-01-10 12:10:05', NULL, NULL, NULL, 1),
(203, 2, 'DHANUSA', 'धनुषा', '2019-01-10 12:10:05', NULL, NULL, NULL, 1),
(204, 2, 'MAHOTTARI', 'महोत्तरी', '2019-01-10 12:10:05', NULL, NULL, NULL, 1),
(205, 2, 'SARLAHI', 'सर्लाही', '2019-01-10 12:10:05', '2020-11-09 09:40:09', NULL, NULL, 0),
(206, 2, 'RAUTAHAT ', 'रौतहट', '2019-01-10 12:10:05', '2020-11-09 09:40:12', NULL, NULL, 0),
(207, 2, 'BARA', 'बारा', '2019-01-10 12:10:05', '2020-11-09 09:40:16', NULL, NULL, 0),
(208, 2, 'PARSA', 'पर्सा', '2019-01-10 12:10:05', NULL, NULL, NULL, 1),
(301, 3, 'DOLAKHA', 'दोलखा', '2019-01-10 12:10:05', '2020-11-09 09:40:31', NULL, NULL, 0),
(302, 3, 'SINDHUPALCHOK', 'सिन्धुपाल्चोक', '2019-01-10 12:10:05', '2020-11-09 09:40:42', NULL, NULL, 0),
(303, 3, 'RASUWA', 'रसुवा', '2019-01-10 12:10:05', '2020-11-09 09:40:42', NULL, NULL, 0),
(304, 3, 'DHADING', 'धादिङ', '2019-01-10 12:10:05', '2020-11-09 09:40:42', NULL, NULL, 0),
(305, 3, 'NUWAKOT', 'नुवाकोट', '2019-01-10 12:10:05', '2020-11-09 09:40:42', NULL, NULL, 0),
(306, 3, 'KATHMANDU', 'काठमाडौँ', '2019-01-10 12:10:05', '2020-11-09 09:40:51', NULL, NULL, 1),
(307, 3, 'BHAKTAPUR', 'भक्तपुर', '2019-01-10 12:10:05', '2020-11-09 09:40:53', NULL, NULL, 1),
(308, 3, 'LALITPUR', 'ललितपुर', '2019-01-10 12:10:05', '2020-11-09 09:40:55', NULL, NULL, 1),
(309, 3, 'KAVREPALANCHOK', 'काभ्रेपलाञ्चोक', '2019-01-10 12:10:05', '2020-11-09 09:40:59', NULL, NULL, 1),
(310, 3, 'RAMECHHAP', 'रामेछाप', '2019-01-10 12:10:05', '2020-11-09 09:40:42', NULL, NULL, 0),
(311, 3, 'SINDHULI', 'सिन्धुली', '2019-01-10 12:10:05', '2020-11-09 09:40:42', NULL, NULL, 0),
(312, 3, 'MAKWANPUR', 'मकवानपुर', '2019-01-10 12:10:05', '2020-11-09 09:41:02', NULL, NULL, 1),
(313, 3, 'CHITAWAN', 'चितवन', '2019-01-10 12:10:05', '2020-11-09 09:41:04', NULL, NULL, 1),
(401, 4, 'GORKHA', 'गोरखा', '2019-01-10 12:10:05', '2020-12-21 07:20:36', NULL, NULL, 1),
(402, 4, 'MANANG', 'मनाङ', '2019-01-10 12:10:05', '2020-11-09 09:41:28', NULL, NULL, 0),
(403, 4, 'MUSTANG', 'मुस्ताङ', '2019-01-10 12:10:05', '2020-11-09 09:41:42', NULL, NULL, 1),
(404, 4, 'MYAGDI', 'म्याग्दी', '2019-01-10 12:10:05', '2020-11-09 09:41:46', NULL, NULL, 1),
(405, 4, 'KASKI', 'कास्की', '2019-01-10 12:10:05', '2020-11-09 09:41:48', NULL, NULL, 1),
(406, 4, 'LAMJUNG', 'लमजुङ', '2019-01-10 12:10:05', '2020-11-09 09:41:28', NULL, NULL, 0),
(407, 4, 'TANAHU', 'तनहुँ', '2019-01-10 12:10:05', '2020-11-09 09:41:51', NULL, NULL, 1),
(408, 4, 'NAWALPARASI EAST', 'नवलपरासी (बर्दघाट सुस्ता पूर्व)', '2019-01-10 12:10:05', '2020-11-09 09:41:54', NULL, NULL, 1),
(409, 4, 'SYANGJA', 'स्याङजा', '2019-01-10 12:10:05', '2020-11-09 09:41:56', NULL, NULL, 1),
(410, 4, 'PARBAT', 'पर्वत', '2019-01-10 12:10:05', '2020-11-09 09:41:59', NULL, NULL, 1),
(411, 4, 'BAGLUNG', 'बागलुङ', '2019-01-10 12:10:05', '2020-11-09 09:42:00', NULL, NULL, 1),
(501, 5, 'RUKUM EAST', 'रुकुम (पूर्वी भाग)', '2019-01-10 12:10:05', '2019-02-13 09:43:59', NULL, NULL, 0),
(502, 5, 'ROLPA', 'रोल्पा', '2019-01-10 12:10:05', '2019-02-13 09:43:50', NULL, NULL, 0),
(503, 5, 'PYUTHAN', 'प्यूठान', '2019-01-10 12:10:05', '2019-02-13 09:43:45', NULL, NULL, 0),
(504, 5, 'GULMI', 'गुल्मी', '2019-01-10 12:10:05', '2019-02-13 09:43:27', NULL, NULL, 0),
(505, 5, 'ARGHAKHANCHI', 'अर्घाखाँची', '2019-01-10 12:10:05', '2019-02-13 09:43:13', NULL, NULL, 0),
(506, 5, 'PALPA', 'पाल्पा', '2019-01-10 12:10:05', '2019-02-13 09:43:40', NULL, NULL, 0),
(507, 5, 'NAWALPARASI WEST', 'नवलपरासी (बर्दघाट सुस्ता पश्चिम)', '2019-01-10 12:10:05', '2019-02-13 09:43:33', NULL, NULL, 0),
(508, 5, 'RUPANDEHI', 'रुपन्देही', '2019-01-10 12:10:05', '2020-11-18 05:57:29', NULL, NULL, 1),
(509, 5, 'KAPILBASTU', 'कपिलवस्तु', '2019-01-10 12:10:05', '2019-02-12 15:20:30', NULL, NULL, 0),
(510, 5, 'DANG', 'दाङ', '2019-01-10 12:10:05', NULL, NULL, NULL, 1),
(511, 5, 'BANKE', 'बाँके', '2019-01-10 12:10:05', NULL, NULL, NULL, 1),
(512, 5, 'BARDIYA', 'बर्दिया', '2019-01-10 12:10:05', NULL, NULL, NULL, 1),
(601, 6, 'DOLPA', 'डोल्पा', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(602, 6, 'MUGU', 'मुगु', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(603, 6, 'HUMLA', 'हुम्ला', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(604, 6, 'JUMLA', 'जुम्ला', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(605, 6, 'KALIKOT', 'कालिकोट', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(606, 6, 'DAILEKH', 'दैलेख', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(607, 6, 'JAJARKOT', 'जाजरकोट', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(608, 6, 'RUKUM WEST', 'रुकुम (पश्चिम भाग)', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(609, 6, 'SALYAN', 'सल्यान', '2019-01-10 12:10:05', '2020-11-09 09:42:29', NULL, NULL, 0),
(610, 6, 'SURKHET', 'सुर्खेत', '2019-01-10 12:10:05', '2020-11-09 09:42:37', NULL, NULL, 1),
(701, 7, 'BAJURA', 'बाजुरा', '2019-01-10 12:10:05', '2020-11-09 09:42:51', NULL, NULL, 0),
(702, 7, 'BAJHANG', 'बझाङ', '2019-01-10 12:10:05', '2020-11-09 09:42:51', NULL, NULL, 0),
(703, 7, 'DARCHULA', 'दार्चुला', '2019-01-10 12:10:05', '2020-11-09 09:42:51', NULL, NULL, 0),
(704, 7, 'BAITADI', 'बैतडी', '2019-01-10 12:10:05', '2020-11-09 09:42:51', NULL, NULL, 0),
(705, 7, 'DADELDHURA', 'डँडेलधुरा', '2019-01-10 12:10:05', '2020-11-09 09:42:51', NULL, NULL, 0),
(706, 7, 'DOTI', 'डोटी', '2019-01-10 12:10:05', '2020-11-09 09:42:51', NULL, NULL, 0),
(707, 7, 'ACHHAM', 'अछाम', '2019-01-10 12:10:05', '2019-05-02 13:59:54', NULL, NULL, 0),
(708, 7, 'KAILALI', 'कैलाली', '2019-01-10 12:10:05', '2020-11-09 09:43:00', NULL, NULL, 1),
(709, 7, 'KANCHANPUR', 'कञ्चनपुर', '2019-01-10 12:10:05', '2020-11-09 09:43:02', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `description` text,
  `location` varchar(256) DEFAULT NULL,
  `is_event` tinyint DEFAULT NULL,
  `facebook_link` varchar(256) DEFAULT NULL,
  `date` varchar(100) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`id`, `title`, `image`, `description`, `location`, `is_event`, `facebook_link`, `date`, `time`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Velit placeat ducim', 'public/uploads/shares/10.jpg', '<p>Nesciunt, voluptas s.</p>', 'Dolore cumque error', 1, 'Pariatur Temporibus', '2022-08-25', '11 am to 2 pm', 1, '2022-08-14 10:31:52', '2022-08-29 01:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `id` int UNSIGNED NOT NULL,
  `title` text,
  `description` longtext,
  `sort_order` int DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`id`, `title`, `description`, `sort_order`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'What is a KrillPay digital account?', '<p>KrillPay digital account is your main account, for daily use. Your debit card is issued with this account. With this account you can:</p>\r\n<ol>\r\n<li>Pay bills</li>\r\n<li>Transfer money, receive a money transfer</li>\r\n<li>Mobile top-up</li>\r\n<li>Send P2P transfers</li>\r\n<li>Send Payment Requests</li>\r\n<li>Check transaction history</li>\r\n<li>Receive International money transfers (for those outside the US)</li>\r\n<li>Send International money transfers (for those in the US)</li>\r\n</ol>', 1, '0', 1, 1, '2021-02-09 03:43:57', '2023-03-28 23:21:17'),
(2, 'How to open a KrillPay account', '<p><span style=\"background-color: #ffffff;\"><strong><span style=\"color: #ff0000;\">Since KrillPay is still under development, you will not be able to open an account at the moment.</span>&nbsp;</strong></span>After KrillPay is launched, you will be able to open a KrillPay account via the KrillPay mobile app on your smartphone or on the web. To be eligible to open a KrillPay account, the following criteria apply:</p>\r\n<ul>\r\n<li>You\'re at least 18 years old</li>\r\n<li>You\'re a resident of a supported country</li>\r\n<li>You have a compatible smartphone</li>\r\n<li>You don\'t already have a KrillPay account</li>\r\n<li>You have a supported ID document, applicable to the country you\'re resident in.&nbsp;</li>\r\n</ul>', 2, '0', 1, 1, '2021-02-09 03:44:19', '2023-03-28 23:21:35'),
(5, 'I don’t have the required documents, can I still proceed?', '<p>To verify your identity, we ask you to take a photo of your physical identity document. We accept a variety of documents, depending on your nationality and the country you\'re signing up in. After KrillPay is launched, the list of accepted documents will be provided based on the country of your residence.</p>', 3, '0', 1, 1, '2022-08-29 01:41:50', '2023-03-28 23:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_features`
--

CREATE TABLE `tbl_features` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `sub_title` varchar(200) DEFAULT NULL,
  `description` text,
  `image` varchar(200) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_features`
--

INSERT INTO `tbl_features` (`id`, `title`, `sub_title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hold, spend, and send. It\'s your money!', NULL, '<p><strong>Add money to your KrillPay wallet, pay for a cup of coffee, or split a bill with an instant transfer to a friend.</strong></p>', 'public/uploads/shares/features/feature-11.png', 1, '2022-11-13 11:35:16', '2023-03-03 03:11:47'),
(2, 'Peer-to-peer cross-border transfers', NULL, '<p><strong>Send an instant peer-to-peer money transfer to your friend across the street and across the United States. Isn\'t that cool?</strong></p>', 'public/uploads/shares/features/feature-2.png', 1, '2022-11-13 11:36:19', '2023-03-22 21:27:34'),
(4, 'Pay for goods and services', NULL, '<p><strong>Do you want to pay for that delicious taco at the food truck down the street, or do you want to shop online? We got you covered with our virtual or physical debit card.</strong></p>', 'public/uploads/shares/features/feature33.png', 1, '2022-11-14 00:07:23', '2023-03-03 03:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `service` text,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `message` text,
  `ip_address` varchar(50) DEFAULT NULL,
  `viewed` enum('1','0') NOT NULL DEFAULT '0',
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `name`, `address`, `service`, `email`, `phone`, `subject`, `message`, `ip_address`, `viewed`, `status`, `created_at`, `updated_at`) VALUES
(6, 'kya2X838qj', NULL, 'WhsdGGlONH', 'ngxxp@mox6.com', '4727640120', NULL, '9032356779', NULL, '0', '1', '2022-11-10 11:19:13', '2022-11-10 11:19:13'),
(7, 'Narayan Adhikari', NULL, 'here is interest', 'adhikarin641@gmail.com', '9841414141', NULL, 'here is message', NULL, '1', '1', '2022-11-13 12:12:37', '2022-11-13 12:13:22'),
(8, 'May Nixon', NULL, 'Et dolor deserunt di', 'buliqyda@mailinator.com', '+1 (834) 576-3527', NULL, 'Voluptatem quia sunt', NULL, '0', '1', '2022-11-15 04:46:55', '2022-11-15 04:46:55'),
(9, 'Emma Clemons', NULL, 'Optio atque anim Na', 'zygotazel@mailinator.com', '+1 (766) 286-1045', NULL, 'Minim amet excepteu', NULL, '0', '1', '2022-11-15 04:47:25', '2022-11-15 04:47:25'),
(10, 'Geraldine Wall', NULL, 'Quis nihil commodi q', 'ludux@mailinator.com', '+1 (629) 271-5454', NULL, 'Harum voluptas sunt', NULL, '0', '1', '2022-11-15 04:50:07', '2022-11-15 04:50:07'),
(11, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '4527316211', NULL, 'message', NULL, '0', '1', '2022-11-18 16:37:46', '2022-11-18 16:37:46'),
(12, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '6759137465', NULL, 'message', NULL, '0', '1', '2022-11-18 16:38:31', '2022-11-18 16:38:31'),
(13, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '4289399298', NULL, 'message', NULL, '0', '1', '2022-11-18 16:39:18', '2022-11-18 16:39:18'),
(14, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '6827808274', NULL, 'message', NULL, '0', '1', '2022-11-18 16:41:46', '2022-11-18 16:41:46'),
(15, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '6827808274', NULL, 'message', NULL, '0', '1', '2022-11-18 16:41:46', '2022-11-18 16:41:46'),
(16, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '4899746242', NULL, 'message', NULL, '0', '1', '2022-11-18 16:43:42', '2022-11-18 16:43:42'),
(17, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '8616597030', NULL, 'message', NULL, '0', '1', '2022-11-18 16:43:57', '2022-11-18 16:43:57'),
(18, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '9121861820', NULL, 'message', NULL, '0', '1', '2022-11-18 16:44:06', '2022-11-18 16:44:06'),
(19, 'Test Name', NULL, 'Test interest', 'testemail@gmail.com', '0501259282', NULL, 'message', NULL, '0', '1', '2022-11-30 07:27:55', '2022-11-30 07:27:55'),
(20, 'Keegan Matthews', NULL, 'Occaecat natus aliqu', 'cycuseqe@mailinator.com', '+1 (201) 699-2193', NULL, 'Optio repellendus', NULL, '0', '1', '2022-12-24 08:54:00', '2022-12-24 08:54:00'),
(21, 'Matt Brown', NULL, NULL, 'matt@tekglide.net', '6303108384', NULL, 'We are Tekglide inc., a software development agency providing various services, from essential website development to Custom Software Development/CRMs. \r\n\r\nTekglide provides clients with outstanding assistance because of its team\'s commitment to providing excellent customer service, making software maintenance much more straightforward. We assist our clients in increasing their sales through organic marketing channels like SEO and social media marketing, in addition to just designing and developing software. We manage your social media profiles and content to increase your online visibility.\r\n\r\nStartup entrepreneurs, SMEs, and enterprises are some of our clients. So get in touch with us this new year and get special prices for our services. Offering costs that are unbeatable in the industry!\r\n\r\nClutch profile: \r\nhttps://clutch.co/profile/tekglide\r\n\r\nWe are awaiting your response!', NULL, '0', '1', '2023-01-30 15:06:01', '2023-01-30 15:06:01'),
(22, 'Oluwadamilola Ogunwale', NULL, 'Job', 'ogunwale111@gmail.com', '(234)8139499099', NULL, 'Hi, \'m a data analyst, i would like to know if there is any opening in that regard as i would like to be part of this great team.', NULL, '0', '1', '2023-02-21 22:02:22', '2023-02-21 22:02:22'),
(23, 'Narayan Adhikari', NULL, 'Test From Narayan', 'adhikarin641@gmail.com', '9864829585', NULL, 'Test From Narayan', NULL, '0', '1', '2023-02-23 14:12:07', '2023-02-23 14:12:07'),
(24, 'laurence', NULL, NULL, 'laurencemarkellis@gmail.com', '740942458', NULL, 'We learned that you\'re fundraising. We\'re mutual fund managers for private and corporate investors and offer financing to individuals and businesses through a simplified three-step process. \r\n1) Submit a proposal\r\n2) Discuss with our analysts\r\n3) Obtain funding\r\nEmail us: laurencemarkellis@gmail.com', NULL, '0', '1', '2023-02-26 13:21:13', '2023-02-26 13:21:13'),
(25, 'Abisola Mimiko', NULL, 'Job (Quality Assurance/compliance professional', 'abisolamimiko@gmail.com', '07032025905', NULL, 'My interest for Krillpay is centered on the kind of solution she offers to her client home and abroad. \r\n\r\nThe passion to work with a company that provides easy financing options for everyday people in Nigeria has always been inherent in me, Krillpay offers this and more in a very straight and basic way through technology. \r\n\r\nFurthermore, as a experienced personel in the  Quality analysis and customer care profession, I have helped a lot of client work through the journey of getting needed help and support as users of different products I have worked it.\r\n\r\nIt will be my great delight to work them through a product that places their need and interest firsthand and be part of a company that is changing the financial status of many.', NULL, '0', '1', '2023-03-04 11:26:50', '2023-03-04 11:26:50'),
(26, 'Satnam Singh', NULL, 'Quick Business Query', 'satnam@swsofttechleadgen.online', '9781525579', NULL, 'Hello there,\r\n\r\nI’m looking to connect and discuss a new opportunity for your business.\r\n\r\nIf your company is still generating leads via slow outreach then I would like to introduce you to a process that will bring more effortless and enormous results. \r\n\r\nYou can save time and money by adding this process to become an extension of your marketing and sales team. Give us the task of processing 1000\'s of leads and pulling out the ones that have true potential to become customers for you. You need not to worry about a single lead as we would not lose any opportunity by managing your CRM.\r\n\r\nI would like to continue the conversation about the potential that we have with all the solutions from generating leads to handling CRM & creating and optimizing funnels for your business niche.\r\n\r\nLet me know when we can connect to discuss further.\r\n\r\nSatnam Singh', NULL, '0', '1', '2023-03-18 08:40:32', '2023-03-18 08:40:32'),
(27, 'Rebecca Rothstein', NULL, 'Investment Opportunity', 'rebeccarothsteinn@gmail.com', '5087645584', NULL, 'Hello,\r\n\r\nHow are you doing today?\r\n\r\nI Hope this email interests you.\r\n\r\nI am Mrs. Rebecca Rothstein, an Investment negotiator with private individuals and top business exposed persons, a Chartered Investment Counselor (CIC) and an Accredited  Private Wealth Management Adviser (APWMA). I have clients who are looking to fund Investment projects of corporate organizations or well to do individuals, or those seeking means of expanding  their business.\r\n\r\nI am writing to you with respect to your posting via (www.https://askforfunding.com) as a startup and  I\'m hoping that you might be needing funding to start, grow or expand your project/business. \r\nNevertheless, It will be my pleasure to refer you to an Investor if you have solid backgrounds and ideas of making good profit in any viable businesses in your Country. Our principal Investors are looking for projects to invest huge cash which can be long and/or short-term projects but with good dividend ROI.\r\n\r\nIf this would interest you, kindly proceed to write him as a matter of urgency as his details are stated below;\r\n\r\nName:  Dr. Driebeek Eric\r\nEmail:  dr.ericdriebeek@gmail.com\r\n\r\nPlease, do not hesitate to email him if you have further questions.\r\n\r\nHave profitable negotiations ahead.\r\n\r\nCheers!\r\n\r\nBest Regards,\r\n\r\nRebecca Rothstein\r\nMD, Merrill Private Wealth Management\r\nCFP®, CIC®, APWMA®\r\nhttps://www.linkedin.com/in/rebecca-rothstein\r\nhttps://www.pbig.ml.com', NULL, '0', '1', '2023-03-30 10:44:02', '2023-03-30 10:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback_reply`
--

CREATE TABLE `tbl_feedback_reply` (
  `id` int UNSIGNED NOT NULL,
  `feedback_id` int UNSIGNED NOT NULL,
  `message_reply` text,
  `inserted_datetime` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_fail_logs`
--

CREATE TABLE `tbl_login_fail_logs` (
  `id` int UNSIGNED NOT NULL,
  `user_name` varchar(191) NOT NULL,
  `fail_password` varchar(191) NOT NULL,
  `ip_address` varchar(191) NOT NULL,
  `login_device` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_login_fail_logs`
--

INSERT INTO `tbl_login_fail_logs` (`id`, `user_name`, `fail_password`, `ip_address`, `login_device`, `created_at`, `updated_at`) VALUES
(1, 'iquita2005', 'Myplanet@earth2020 ', '107.193.249.27', 'Chrome', '2022-12-28 13:41:23', '2022-12-28 13:41:23'),
(2, 'iquita2005', 'Hebrews@138', '103.163.182.162', 'Chrome', '2023-02-23 14:54:08', '2023-02-23 14:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menus`
--

CREATE TABLE `tbl_menus` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menus`
--

INSERT INTO `tbl_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', '2020-01-17 18:05:08', '2020-01-17 18:05:08'),
(2, 'Quick Links', '2020-01-18 05:11:56', '2022-08-29 02:38:21'),
(3, 'Quick Links - sidemenu', '2020-01-18 05:12:14', '2022-08-29 02:38:40'),
(4, 'Information', '2022-03-10 22:35:49', '2022-03-10 22:35:49'),
(5, 'SideMenu', '2022-08-28 23:59:33', '2022-08-28 23:59:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu_items`
--

CREATE TABLE `tbl_menu_items` (
  `id` bigint UNSIGNED NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `sort` int NOT NULL DEFAULT '0',
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu` bigint UNSIGNED NOT NULL,
  `depth` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_menu_items`
--

INSERT INTO `tbl_menu_items` (`id`, `label`, `link`, `parent`, `sort`, `class`, `menu`, `depth`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'http://localhost/consultancy', 0, 0, NULL, 1, 0, '2020-01-17 18:05:15', '2022-08-28 23:47:25'),
(2, 'Study Abroad', '#', 0, 1, NULL, 1, 0, '2020-01-17 18:05:32', '2022-08-28 23:53:42'),
(4, 'Contact', 'http://localhost/consultancy/contact', 0, 6, NULL, 1, 0, '2020-01-17 18:06:32', '2022-08-29 02:36:30'),
(5, 'University', 'http://localhost/consultancy/universities', 0, 5, NULL, 1, 0, '2020-01-17 18:06:51', '2022-08-29 02:36:30'),
(11, 'Study in Uk', 'http://localhost/consultancy/study-abroad/study-in-uk', 2, 2, NULL, 1, 1, '2020-01-17 18:08:03', '2022-08-28 23:53:40'),
(20, 'Home', 'http://localhost/consultancy', 0, 0, NULL, 2, 0, '2020-01-18 05:12:04', '2022-08-29 00:23:54'),
(21, 'About us', 'http://localhost/consultancy/page/about-us', 0, 0, NULL, 3, 0, '2020-01-18 05:12:24', '2022-08-29 02:44:12'),
(22, 'Testimonial', 'http://localhost/consultancy/testimonial', 0, 1, NULL, 3, 0, '2020-01-18 05:12:35', '2022-08-29 02:43:56'),
(28, 'Contact us', 'http://localhost/consultancy/contact', 0, 1, NULL, 2, 0, '2020-01-17 18:08:24', '2022-08-29 00:24:31'),
(30, 'School Program', 'http://localhost/aoc/', 0, 1, NULL, 4, 0, '2022-03-10 22:36:17', '2022-03-10 22:36:17'),
(31, 'Overview', '#', 0, 0, NULL, 5, 0, '2022-08-28 23:59:47', '2022-08-29 00:00:52'),
(32, 'About Us', 'http://localhost/consultancy/page/about-us', 31, 1, NULL, 5, 1, '2022-08-29 00:00:52', '2022-08-29 00:00:58'),
(33, 'Why Choose', 'http://localhost/consultancy/why-choose', 31, 2, NULL, 5, 1, '2022-08-29 00:01:31', '2022-08-29 00:03:13'),
(34, 'Study In UK', 'http://localhost/consultancy/study-abroad/study-in-uk', 35, 4, NULL, 5, 1, '2022-08-29 00:03:13', '2022-08-29 00:03:38'),
(35, 'Study Abroad', '#', 0, 3, NULL, 5, 0, '2022-08-29 00:03:20', '2022-08-29 00:03:24'),
(36, 'University', '#', 0, 7, NULL, 5, 0, '2022-08-29 00:03:38', '2022-08-29 02:37:38'),
(37, 'University of Nepal', 'http://localhost/consultancy/university/nepal', 36, 8, NULL, 5, 1, '2022-08-29 00:04:07', '2022-08-29 02:37:38'),
(38, 'Testimonial', 'http://localhost/consultancy/testimonial', 0, 10, NULL, 5, 0, '2022-08-29 00:04:48', '2022-08-29 02:37:38'),
(39, 'Contact Us', 'http://localhost/consultancy/contact', 0, 11, NULL, 5, 0, '2022-08-29 00:05:08', '2022-08-29 02:37:38'),
(40, 'FAQ', 'http://localhost/consultancy/faq', 0, 9, NULL, 5, 0, '2022-08-29 01:56:00', '2022-08-29 02:37:38'),
(41, 'Scholarship', '#', 0, 3, NULL, 1, 0, '2022-08-29 02:35:51', '2022-08-29 02:36:28'),
(42, 'Scholarship Offers', 'http://localhost/consultancy/scholarship-offer', 41, 4, NULL, 1, 1, '2022-08-29 02:36:28', '2022-08-29 02:36:31'),
(43, 'Scholarship', '#', 0, 5, NULL, 5, 0, '2022-08-29 02:37:21', '2022-08-29 02:37:38'),
(44, 'Scholarship Offers', 'http://localhost/consultancy/scholarship-offer', 43, 6, NULL, 5, 1, '2022-08-29 02:37:31', '2022-08-29 02:37:38'),
(45, 'Contact Us', 'http://localhost/consultancy/contact', 0, 2, NULL, 3, 0, '2022-08-29 02:44:29', '2022-08-29 02:44:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_newsletter_list`
--

CREATE TABLE `tbl_newsletter_list` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_newsletter_list`
--

INSERT INTO `tbl_newsletter_list` (`id`, `name`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Qekkum7jc0', 'zdxyp@kgwj.com', 1, '2022-11-14 18:01:10', '2022-11-14 18:01:10'),
(2, 'hxnvxi8m4S', '2vpgt@zcl9.com', 1, '2022-11-14 18:02:56', '2022-11-14 18:02:56'),
(3, 'YAlodCOyAC', 'qhfmh@er9a.com', 1, '2022-11-14 18:03:26', '2022-11-14 18:03:26'),
(4, 'PDbwteG88W', 'b7wcc@r776.com', 1, '2022-11-15 04:48:08', '2022-11-15 04:48:08'),
(5, 'torivome@mailinator.com', 'gatotumi@mailinator.com', 1, '2022-11-15 04:49:51', '2022-11-15 04:49:51'),
(6, 'EQ5fod7Pvx', 'r8izb@ur6n.com', 1, '2022-11-15 08:51:06', '2022-11-15 08:51:06'),
(7, '71fZsnKbSD', 'bvvkl@gmbd.com', 1, '2022-11-15 11:01:03', '2022-11-15 11:01:03'),
(8, 'GtQYzUcExc', 'gksq7@7vx0.com', 1, '2022-11-15 11:01:14', '2022-11-15 11:01:14'),
(9, 'Emmanuel', 'emmanuel@krillpay.com', 1, '2022-11-18 19:02:18', '2022-11-18 19:02:18'),
(10, 'Emmanuel', 'methsco@gmail.com', 1, '2022-11-18 19:13:20', '2022-11-18 19:13:20'),
(11, 'eI5F4RrQMj', 'i5gtc@ybgt.com', 1, '2022-11-30 07:28:11', '2022-11-30 07:28:11'),
(12, 'BFlL6FtZxz', '9jw6w@xlax.com', 1, '2022-11-30 07:28:34', '2022-11-30 07:28:34'),
(13, 'Sampada Tandan', 'sampadatandan127@gmail.com', 1, '2023-01-08 02:47:08', '2023-01-08 02:47:08'),
(14, 'asmi', 'asmi@mail.com', 1, '2023-01-08 02:47:10', '2023-01-08 02:47:10'),
(15, 'sita', 'sita@yahoo.com', 1, '2023-01-08 02:47:27', '2023-01-08 02:47:27'),
(16, 'Jessica', 'alina@gmail.com', 1, '2023-01-08 02:47:44', '2023-01-08 02:47:44'),
(17, 'Jessica', 'alina@gmail.com', 1, '2023-01-08 02:48:03', '2023-01-08 02:48:03'),
(18, 'Daniel sam', 'edetsam74@gmail.com', 1, '2023-02-12 03:41:34', '2023-02-12 03:41:34'),
(19, 'Sam', 'godswill.image@yahoo.com', 1, '2023-02-12 03:42:16', '2023-02-12 03:42:16'),
(20, 'Adebayo Bakare', 'mugupet868@gmail.com', 1, '2023-02-19 22:58:38', '2023-02-19 22:58:38'),
(21, 'Adebayo Bakare', 'damipe59@gmail.com', 1, '2023-02-19 22:58:52', '2023-02-19 22:58:52'),
(22, 'Iyabobo', 'bakareh42@gmail.com', 1, '2023-02-19 22:59:03', '2023-02-19 22:59:03'),
(23, 'Narayan Adhikari', 'adhikarin641@gmail.com', 1, '2023-02-23 14:13:22', '2023-02-23 14:13:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int UNSIGNED NOT NULL,
  `slug` text,
  `title` text,
  `sub_title` varchar(100) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `meta_title` text,
  `meta_keywords` text,
  `meta_description` text,
  `description` longtext,
  `viewcount` int UNSIGNED DEFAULT '1',
  `show_on_homepage` enum('0','1') DEFAULT '0',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `slug`, `title`, `sub_title`, `image`, `published_date`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `viewcount`, `show_on_homepage`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(6, 'about-us', 'About Us', 'A simple and smart way to send money', 'public/uploads/shares/about/about-us.jpeg', '2022-11-13', 'About Us', 'About Us', 'About Us', '<p><span style=\"color: #000000;\">KrillPay is a financial technology company developing a mobile payment application. A peer-to-peer mobile payment application that enables our users in the United States to hold, spend, and send instant money transfers to other registered KrillPay users in the United States.&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"color: #000000;\">We believed that access to basic banking services should be available to anyone regardless of socioeconomic status, race, gender, nationality, and sexual orientation.&nbsp; &nbsp;</span></p>\r\n<p>&nbsp;</p>', 1, '1', 1, 1, '1', '2022-11-13 12:06:35', '2023-03-22 22:14:44'),
(7, 'fueled-by-technology', 'Fueled by Technology', NULL, 'public/uploads/shares/about/about-us-2.jpeg', '2022-11-14', 'About Us', 'About Us', 'About Us', '<p><span style=\"color: #000000;\">Our digital banking application is developed to facilitate peer-to-peer instant money transfers. Other services include checking and saving accounts. Once you\'re registered on the KrillPay app and successfully complete the KYC verification, you can start using your account right away. Voila! It\'s that simple.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>', 1, '1', 1, 1, '1', '2022-11-14 13:18:57', '2023-03-27 17:18:44'),
(8, 'terms-and-conditions', 'Terms of service', 'Terms of service', 'public/uploads/shares/usa_flag_resized.png', '2022-11-15', 'Terms of service', 'Terms of service', 'Terms of service', '<p data-custom-class=\"title\"><span style=\"color: #000000;\"><strong>TERMS OF SERVICE</strong></span></p>\r\n<p data-custom-class=\"title\">&nbsp;</p>\r\n<p><span style=\"color: #000000;\">KRILLPAY TERMS OF SERVICE</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Effective Date July 06, 2022</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">The following terms of service are terms of a legal agreement (the &ldquo;Agreement&rdquo;) between you</span></p>\r\n<p><span style=\"color: #000000;\">(&ldquo;you&rdquo;, &ldquo;your&rdquo;, or &ldquo;user&rdquo;) and KrillPay Inc., its subsidiaries, affiliates, agents and assigns (&ldquo;KrillPay.&rdquo;, &ldquo;we&rdquo;,&ldquo;us&rdquo;, or &ldquo;our&rdquo;) which sets forth the terms and conditions for your access and use of KrillPay application (&ldquo;KrillPay App&rdquo;) and KrillPay website, as well as the KrillPay products and services offered, operated, or made available by KrillPay through the KrillPay Application (collectively, the &ldquo;PLATORM NAME Services&rdquo;).</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">The KrillPay App, website and KrillPay Services are owned and operated by KrillPay and are being provided to you expressly subject to this Agreement. By accessing, browsing and/or using KrillPay Services, you acknowledge that you have read, understood, and agree to be bound by the terms of this Agreement, KrillPay Privacy Policy, which may be found by visiting KrillPay Privacy Policy and that you agree to comply with all applicable laws and regulations. In addition, by agreeing to this Agreement and KrillPay Privacy Policy, you also agree to Mbanq&rsquo;s Privacy Policy, which may be reviewed by visiting https://www.mbanq.com/legal. The terms and conditions of this Agreement form an essential basis of the bargain between you and Krillpay, and this Agreement governs your use of the KrillPay App, and the KrillPay Services.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">This Agreement does not apply to Customer Account and Cardholder Agreement (the &ldquo;Bank</span></p>\r\n<p><span style=\"color: #000000;\">Services&rdquo;), each of which are provided by Evolve Bank<strong>,</strong> Member FDIC (&ldquo;Evolve Bank,&rdquo;). Please</span></p>\r\n<p><span style=\"color: #000000;\">refer to the Evolve Bank deposit agreement for further information concerning.</span></p>\r\n<p><span style=\"color: #000000;\">the Bank Services and your privacy rights concerning the Bank Services, which may be accessed</span></p>\r\n<p><span style=\"color: #000000;\">by visiting Evolve Bank privacy policy is not a party this Agreement</span></p>\r\n<p><span style=\"color: #000000;\">and is neither responsible or liable for the KrillPay Services provided by KrillPay or Mbanq pursuant to this Agreement or any other agreement you may have with KrillPay.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">THIS AGREEMENT ALSO INCLUDES, AMONG OTHER THINGS, A BINDING ARBITRATION PROVISION</span></p>\r\n<p><span style=\"color: #000000;\">THAT CONTAINS A CLASS ACTION WAIVER. PLEASE REFER TO SECTION 13 BELOW FOR MORE</span></p>\r\n<p><span style=\"color: #000000;\">INFORMATION.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">ACCEPTANCE OF AGREEMENT</span></p>\r\n<p><span style=\"color: #000000;\">Please carefully review this Agreement before using the FINTECH Services, or accessing any data</span></p>\r\n<p><span style=\"color: #000000;\">thereon. If you do not agree to these terms, you may not access or use the FINTECH Services.</span></p>\r\n<p><span style=\"color: #000000;\">To use or access the FINTECH Services and to accept this Agreement, you must be (a) a legal resident</span></p>\r\n<p><span style=\"color: #000000;\">of the United States, (b) of legal age to form a binding contract with FINTECH, (c) not prohibited by law</span></p>\r\n<p><span style=\"color: #000000;\">from using the B9 Services.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">FINTECH Services are available to United States citizens or lawful U.S. residents who are at least 18</span></p>\r\n<p><span style=\"color: #000000;\">years of age, have a U.S. physical address or with military addresses (APO or FPO), and have a</span></p>\r\n<p><span style=\"color: #000000;\">valid Social Security Number or Tax Identification Number.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">FINTECH Services are not directed at children under the age of eighteen (18) and KrillPay does not</span></p>\r\n<p><span style=\"color: #000000;\">knowingly collect or sell personal information from any person under the age of eighteen (18).</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">If you have questions, comments, concerns please Contact Us at <a style=\"color: #000000;\" href=\"mailto:support@krillpay.com\">support@krillpay.com</a> with any questions you may have.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">OVERVIEW OF KrillPay SERVICES</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">By signing up for KrillPay, you can apply for and gain access to financial services such as checking and saving accounts through Evolve Bank and KrillPay Card through one of our Program Managers</span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<p><span style=\"color: #000000;\"><strong>&nbsp;</strong></span></p>\r\n<ol>\r\n<li><span style=\"color: #000000;\">ELIGIBILITY</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">To use this Site you must be, and represent and warrant that you are, of legal age (18 years of age or older or otherwise of legal age in your jurisdiction, or, if you have parental consent, 13 years of age). If you&rsquo;re agreeing to these Terms on behalf of an organization, entity, or co-applicant, you represent and warrant that you are authorized to agree to these Terms on behalf of that organization, entity, or co-applicant and bind them to these Terms (in which case, the references to &ldquo;you&rdquo; and &ldquo;your&rdquo; in these Terms, except for in this sentence, refer to that organization, entity, or co-applicant). If KrillPay has previously prohibited you from accessing this Site, you do not have permission to access this Site.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"2\">\r\n<li><span style=\"color: #000000;\">PROPRIETARY RIGHTS</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">This Site is owned and operated by KrillPay and contains material which is derived in whole or in part from material supplied by KrillPay and our partners, as well as other sources, and is protected by United States copyright laws and other intellectual property laws. You agree to abide by all applicable copyright and other laws, as well as any additional copyright notices or restrictions contained on this Site. You acknowledge that this Site has been developed, compiled, prepared, revised, selected, and arranged by KrillPay and others through the application of methods and standards of judgment developed and applied through the expenditure of substantial time, effort, and money and constitute valuable intellectual property of KrillPay and such others. You agree to notify KrillPay immediately upon becoming aware of any unauthorized access or use of this Site by any individual or entity or of any claim that this Site infringes upon any copyright, trademark, or other contractual, statutory, or common law rights. All present and future rights in and to trade secrets, patents, copyrights, trademarks, service marks, know-how, and other proprietary rights shall, as between you and KrillPay, at all times be and remain the sole and exclusive property of Krillpay.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"3\">\r\n<li><span style=\"color: #000000;\">WARRANTY AND DISCLAIMERS</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">YOU EXPRESSLY UNDERSTAND AND AGREE THAT:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">YOUR USE OF THIS SITE IS SOLELY AT YOUR OWN RISK. KrillPay DOES NOT MAKE ANY REPRESENTATIONS OR WARRANTIES CONCERNING ANY CONTENT CONTAINED IN OR ACCESSED THROUGH THIS SITE, AND WE WILL NOT BE RESPONSIBLE OR LIABLE FOR THE ACCURACY, COPYRIGHT COMPLIANCE, LEGALITY, OR DECENCY OF MATERIAL CONTAINED IN OR ACCESSED THROUGH THIS SITE. THIS SITE IS PROVIDED ON AN &ldquo;AS-IS&rdquo; BASIS, WITHOUT WARRANTIES OR ANY KIND, EITHER EXPRESS OR IMPLIED, INCLUDING, WITHOUT LIMITATION, IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, NON-INFRINGEMENT, OR THAT USE OF THIS SITE WILL BE UNINTERRUPTED OR ERROR-FREE.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">ANY CONTENT DOWNLOADED OR OTHERWISE OBTAINED THROUGH THIS SITE IS DOWNLOADED AND USED AT YOUR SOLE DISCRETION AND RISK AND YOU WILL BE SOLELY RESPONSIBLE FOR ANY DAMAGE TO YOUR COMPUTER SYSTEM, MOBILE DEVICE, SOFTWARE, TECHNOLOGY OR LOSS OF DATA THAT RESULTS FROM THE DOWNLOAD OR USE OF ANY SUCH CONTENT.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">NO ADVICE OR INFORMATION, WHETHER ORAL OR WRITTEN, OBTAINED BY YOU FROM KrillPay OR THROUGH OR FROM THIS SITE SHALL CREATE ANY WARRANTY. KrillPay MAKES NO REPRESENTATION, WARRANTY, GUARANTEE, OR PROMISE THAT THE PRODUCTS, SERVICES, OR SITE WILL MEET YOUR REQUIREMENTS OR ACHIEVE ANY PARTICULAR RESULTS.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"4\">\r\n<li><span style=\"color: #000000;\">LIMITATION OF LIABILITY</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">TO THE FULLEST EXTENT ALLOWED BY APPLICABLE LAW, UNDER NO CIRCUMSTANCES AND UNDER NO LEGAL THEORY (INCLUDING, WITHOUT LIMITATION, TORT, CONTRACT, STRICT LIABILITY, OR OTHERWISE) SHALL KrillPay BE LIABLE TO YOU OR TO ANY OTHER PERSON FOR (A) ANY INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES OF ANY KIND, INCLUDING DAMAGES FOR LOST PROFITS, LOSS OF GOODWILL, WORK STOPPAGE, ACCURACY OF RESULTS, OR COMPUTER FAILURE OR MALFUNCTION, OR (B) ANY AMOUNT, IN THE AGGREGATE, IN EXCESS OF THE GREATER OF (I) $100 OR (II) THE AMOUNTS PAID BY YOU TO KrillPay IN CONNECTION WITH THE WEBSITE IN THE TWELVE (12) MONTH PERIOD PRECEDING THIS APPLICABLE CLAIM.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">In the event that you have a dispute with any third party, you agree that KrillPay is under no obligation to become involved on your behalf. You release Krillpay, and our officers, employees, agents, and successors from claims, demands, and damages of every kind or nature, known or unknown, suspected or unsuspected, disclosed or undisclosed, arising out of or in any way relating to such disputes and/or this Site. If you are a California resident, you hereby waive California Civil Code &sect;1542, which says: &ldquo;A general release does not extend to claims which the creditor does not know or suspect to exist in his favor at the time of executing the release, which if known by him must have materially affected his settlement with the debtor.&rdquo; This release includes the criminal acts of others.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"5\">\r\n<li><span style=\"color: #000000;\">EXCLUSIONS AND LIMITATIONS</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">Some jurisdictions do not allow the exclusion of certain warranties or the limitation or exclusion of liability for incidental or consequential damages such as above in Sections 3 and 4. Accordingly, some of the above limitations may not apply to you.&nbsp; If you are a New Jersey resident, or a resident of another state that permits the exclusion of these warranties and liabilities, then the limitations in Sections 3 and 4 specifically do apply to you.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"6\">\r\n<li><span style=\"color: #000000;\">TERMINATION</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">These Terms are effective unless and until terminated by you or us. We may, in our sole and absolute discretion, deny you access to all or part of this Site and/or our Services at any time for any or no reason at all, with or without notice to you. Grounds for such termination shall include, but not be limited to, (a) breaches or violations of these Terms or other agreements, (b) requests by law enforcement or government agencies, (c) discontinuance or material modification of this Site (or any part thereof), (d) unexpected technical or security issues or problems, (e) extended periods of inactivity, (f) activities related to protecting the rights, property, or safety of KrillPay, our agents and affiliates, or our users and the public, or (g) if you provide any information that is false, inaccurate, out-of-date, or incomplete. Additionally, any suspected fraudulent, abusive, or illegal activity that may be grounds for termination of your use of our Site and/or Services may be referred to appropriate law enforcement authorities. If we terminate your right to access this Site, these Term will terminate and all rights you have to access this Site will immediately terminate; however, certain provisions of these Terms will still apply post-termination, including without limitation, the Arbitration and Class Action Waiver provisions.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"7\">\r\n<li><span style=\"color: #000000;\">INDEMNITY</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">YOU AGREE TO INDEMNIFY, DEFEND, AND HOLD KrillPay AND OUR RESPECTIVE OFFICERS, DIRECTORS, EMPLOYEES, MEMBERS, SHAREHOLDERS, AND REPRESENTATIVES (AND ALL SUCCESSORS AND ASSIGNS OF ANY OF THE FOREGOING) HARMLESS FROM AND AGAINST ANY CLAIM OR DEMAND, INCLUDING, WITHOUT LIMITATION, REASONABLE ATTORNEYS&rsquo; FEES AND DISBURSEMENTS, MADE IN CONNECTION WITH OR ARISING OUT OF YOUR VIOLATION OF THESE TERMS OR OUR PRIVACY POLICY, AND/OR YOUR SUBMISSION, POSTING, OR TRANSMISSION OF CONTENT TO THIS SITE.&nbsp; WE RESERVE THE RIGHT, AT OUR OWN EXPENSE, TO ASSUME THE EXCLUSIVE DEFENSE AND CONTROL OF SUCH DISPUTES, AND IN ANY EVENT YOU WILL COOPERATE WITH US IN ASSERTING ANY AVAILABLE DEFENSES.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"8\">\r\n<li><span style=\"color: #000000;\">PROHIBITED USES</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">Use of the Site for any illegal purpose, or any other purpose not expressly permitted in these Terms, is strictly prohibited. We reserve the right to investigate and take appropriate legal action against anyone who, in our sole discretion, violates this section, including removing the offending Content from our Site, suspending or terminating access to our Services and/or Site and reporting such violators to law enforcement authorities.</span></p>\r\n<p><span style=\"color: #000000;\">Below are examples of content and/or uses that is illegal or prohibited:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Use this Site to harass, abuse, or threaten any other person;</span></li>\r\n<li><span style=\"color: #000000;\">Provide information that is unlawful, harmful, deceptive, tortious, defamatory, libelous, or invasive of another&rsquo;s privacy;</span></li>\r\n<li><span style=\"color: #000000;\">Use this Site commercially, for benchmarking, or to compile information for a product or service;</span></li>\r\n<li><span style=\"color: #000000;\">Copy, download (other than for personal use, or as otherwise expressly permitted by these Terms), modify, distribute, post, transmit, display, perform, reproduce, broadcast, duplicate, publish, republish, upload, license, reverse engineer, create derivative works from, or offer for sale any content or other information contained on or obtained from or through this Site by any means except as provided for in these Terms or with the prior written consent of KrillPay;</span></li>\r\n<li><span style=\"color: #000000;\">Scrape, access, monitor, index, frame, link, or copy any content or information on this Site by accessing this Site in an automated way, using any robot, spider, scraper, web crawler, or any other method of access other than manually accessing the publicly available portions of this Site through a browser or accessing this Site through any approved API;</span></li>\r\n<li><span style=\"color: #000000;\">Violate the restrictions in any robot exclusion headers of this Site, if any, or bypass or circumvent other measures employed to prevent or limit access to this Site;</span></li>\r\n<li><span style=\"color: #000000;\">Upload or otherwise make available any material that contains any software, device, instructions, computer code, files, programs and/or other content or feature that is designed to interrupt, destroy, or limit the functionality of any computer software or hardware or telecommunications equipment (including without limitation any time bomb, virus, software lock, worm, self-destruction, drop-device, malicious logic, Trojan horse, trap door, &ldquo;disabling,&rdquo; &ldquo;lock out,&rdquo; or &ldquo;metering&rdquo; device, or any malicious code);</span></li>\r\n<li><span style=\"color: #000000;\">Attempt to disable, overburden, or impair the proper working of this Site (including the use of any Maillist, Listserv, or any form of auto-responder or &ldquo;spam&rdquo;);</span></li>\r\n<li><span style=\"color: #000000;\">Use the Website to distribute any other party&rsquo;s intellectual property unless you have the right to do so, or remove or alter any copyright, trademark, or other proprietary notice contained on this Site;</span></li>\r\n<li><span style=\"color: #000000;\">Make available trade secrets or other confidential or proprietary information, or provide any material that you do not have a right to make available under any law or under contractual or fiduciary relationships, including but not limited to insider information, or confidential or proprietary information learned or disclosed as part of employment relationships or under non-disclosure agreements;</span></li>\r\n<li><span style=\"color: #000000;\">Falsely state or otherwise misrepresent your affiliation with a person or entity, or impersonate any person or entity;</span></li>\r\n<li><span style=\"color: #000000;\">Violate these Terms or any guidelines or policies posted by KrillPay; and/or</span></li>\r\n<li><span style=\"color: #000000;\">Interfere with any other party&rsquo;s use of this Site.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">Please note that the terms and restrictions described in these Terms also apply to any content that you may be able to copy or download from this Site (e.g., guides and white papers).</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">KrillPay reserves the right, but not the obligation, in our sole and absolute discretion, to remove any information provided by you, and/or block access to the Site.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"9\">\r\n<li><span style=\"color: #000000;\">ELECTRONIC COMMUNICATION</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">When you communicate with us electronically, such as via e-mail, you consent to receive communications from us electronically. Please note that we are not obligated to respond to inquiries that we receive. You agree that all agreements, notices, disclosures, and other communications that we provide to you electronically satisfy any legal requirement that such communications be in writing.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"10\">\r\n<li><span style=\"color: #000000;\">THIRD PARTY LINKS AND WEBSITES</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">KrillPay has no control over, and assumes no responsibility for, the content, accuracy, privacy policies, or practices of, or opinions expressed in, any third-party websites or by any third party that you interact with through or on this Site. In addition, KrillPay will not and cannot monitor, verify, censor, or edit the content of any third-party website or service. By using this Site, you release and hold KrillPay harmless from any and all liability arising from your use of any third-party website or service, and you acknowledge and agree that the terms and privacy policies of such third parties govern your interactions with and use of such websites and services.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"11\">\r\n<li><span style=\"color: #000000;\">PRIVACY</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">By using this Site, you acknowledge and accept this Site&rsquo;s Privacy Policy and consent to the collection and use of your data in accordance with the Privacy Policy. By using this Site, you acknowledge that Internet transmissions are never completely private or secure. You understand that any message or information you send to this Site may be read or intercepted by others, even if there is a special notice that a particular transmission is encrypted.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"12\">\r\n<li><span style=\"color: #000000;\">RIGHTS TO MODIFY THIS SITE</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">We may change, suspend or discontinue any aspect of this Site or service at any time. KrillPay reserves the right to change system configurations, product specifications, upgrades, pricing, layouts, options and any other specifications at any time without notice. We may also impose limits or restrictions on certain services, features or content or restrict your access to parts or all of this Site without notice or liability.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"13\">\r\n<li><span style=\"color: #000000;\">ARBITRATION AND CLASS ACTION WAIVER</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">PLEASE READ THIS SECTION CAREFULLY. IT AFFECTS YOUR LEGAL RIGHTS, INCLUDING YOUR RIGHT TO FILE A LAWSUIT IN COURT.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><u>13a. Agreement to Arbitrate.</u> You and KrillPay agree that these Terms affect interstate commerce and that the Federal Arbitration Act governs the interpretation and enforcement of these arbitration provisions. This Section 13 is intended to be interpreted broadly and governs any and all disputes between us including but not limited to claims arising out of or relating to any aspect of the relationship between us, whether based in contract, tort, statute, fraud, misrepresentation, or any other legal theory; claims that arose before these Terms or any prior agreement (including, but not limited to, claims related to advertising); and claims that may arise after the termination of these Terms. The only disputes excluded from this broad prohibition are the litigation of certain intellectual property and small court claims, as provided below.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>13b. Dispute Resolution.</u> Most disputes can be resolved without resort to arbitration. If you have any dispute with us, you agree that before taking any formal action, you will contact us at <a style=\"color: #000000;\" href=\"mailto:support@krillpay.com\">support@krillpay.com</a> or by Certified Mail to 3720 Rime Village Drive, Hoover, AL 35216. The dispute should contain a brief written description of the dispute and your contact information (including your username if your dispute relates to a Platform account). Except for intellectual property and small claims court claims, the parties agree to use their best efforts to settle any dispute, claim, question, or disagreement directly through consultation with KrillPay, and good faith negotiations shall be a condition to either party initiating a lawsuit or arbitration.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>13c. Binding Arbitration.</u> If the parties do not reach an agreed-upon solution within a period of sixty (60) days from the time informal dispute resolution is initiated under the Dispute Resolution provision Section 13b, then either party may initiate binding arbitration as the sole means to resolve claims, (except as provided in the &ldquo;Exception: Litigation of Intellectual Property and Small Claims Court Claims&rdquo; subsection below) subject to the terms set forth in provision Section 13f. Specifically, all claims arising out of or relating to these Terms (including the Terms&rsquo; formation, performance, and breach), the parties&rsquo; relationship with each other, and/or your use of KrillPay shall be finally settled by binding arbitration. Regardless of the manner in which the arbitration is conducted, the arbitrator will issue a reasoned written decision sufficient to explain the essential findings and conclusions on which the award is based.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>13d. Class Action Waiver.</u> The parties further agree that the arbitration shall be conducted in the party&rsquo;s respective individual capacities only and not as a class action or other representative action, and the parties expressly waive their right to file a class action or seek relief on a class basis. YOU AND KrillPay AGREES THAT EACH MAY BRING CLAIMS AGAINST THE OTHER ONLY IN YOUR OR OUR INDIVIDUAL CAPACITY, AND NOT AS A PLAINTIFF OR CLASS MEMBER IN ANY PURPORTED CLASS OR REPRESENTATIVE PROCEEDING. If any court or arbitrator determines that the class action waiver set forth in this paragraph is void or unenforceable for any reason or that an arbitration can proceed on a class basis, then the arbitration provisions set forth above shall be deemed null and void in their entirety and the parties shall be deemed to have not agreed to arbitrate disputes.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>13e. Litigation of Intellectual Property and Small Claims Court Claims. </u>Notwithstanding the parties&rsquo; decision to resolve all disputes through arbitration, either party may bring enforcement actions, validity determinations, or claims arising from or relating to theft, piracy or unauthorized use of intellectual property in state or federal court or in the U.S. Patent and Trademark Office to protect its intellectual property rights (&ldquo;intellectual property rights&rdquo; means patents, copyrights, moral rights, trademarks, and trade secrets, but not privacy or publicity rights). Either party may also seek relief in a small claims court for disputes or claims within the scope of that court&rsquo;s jurisdiction.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>13f. Confidentiality.</u> All aspects of the arbitration proceeding, and any ruling, decision, or award by the arbitrator will be strictly confidential for the benefit of all parties.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>13g. Changes to this Section.</u> KrillPay will provide thirty (30) days&rsquo; notice of any changes to this section by posting on this Site. Amendments will become effective thirty (30) days after they are posted on this Site. Changes to this section will otherwise apply prospectively only to claims arising after the thirtieth (30th) day. If a court or arbitrator decides that this subsection on &ldquo;Changes to This Section&rdquo; is not enforceable or valid, then this subsection shall be severed from the section entitled &ldquo;Arbitration and Class Action Waiver,&rdquo; and the court or arbitrator shall apply the first Arbitration and Class Action Waiver section in existence after you began using this Site.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>13h. Survival. </u>This Mandatory Arbitration and Class Action Waiver section shall survive any termination of your use of the Website.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<ol start=\"14\">\r\n<li><span style=\"color: #000000;\">ELECTRONIC FUNDS TRANSFER DISCLOSURE</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><u>14a. Limits on ACH Debit Transactions.</u> The cut-off time for scheduling ACH transfers is 4:00 PM Mountain Time. Any transfer scheduled after the cut-off time will be treated as if it were scheduled on the next business day.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><u>14b. ACH Debit Limits</u>. The limitations to the amount of funds that can be transferred from your Deposit Account per day are as follows:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<table width=\"577\">\r\n<tbody>\r\n<tr>\r\n<td width=\"300\">\r\n<p><span style=\"color: #000000;\">Transaction Type</span></p>\r\n</td>\r\n<td width=\"277\">\r\n<p><span style=\"color: #000000;\">Frequency and/or Amounts</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"300\">\r\n<p><span style=\"color: #000000;\">ACH Debits (from external bank/provider)</span></p>\r\n</td>\r\n<td width=\"277\">\r\n<p><span style=\"color: #000000;\">$5000</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"300\">\r\n<p><span style=\"color: #000000;\">ACH Credits from Mobile App</span></p>\r\n</td>\r\n<td width=\"277\">\r\n<p><span style=\"color: #000000;\">$5000</span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"300\">\r\n<p><span style=\"color: #000000;\">ACH Credits from external Financial Institution</span></p>\r\n</td>\r\n<td width=\"277\">\r\n<p><span style=\"color: #000000;\">$5000</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><u>14c. Electronic Transfer Services.</u> The following terms are used to describe Electronic Funds Transfer (&ldquo;EFT&rdquo;) services. &ldquo;Automated credits&rdquo; or &ldquo;direct deposits&rdquo; are deposits made to your Deposit Account by electronic means. &ldquo;Automated debits&rdquo; and &ldquo;automated payments&rdquo; indicate payments authorized by you to be made from your Deposit Account by electronic means. &ldquo;Online Transfers&rdquo; are the movement of funds between your Deposit Accounts by use of the Mobile App. Online Transfers are described in detail in the agreement governing the Deposit Account.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">When you accept direct deposits or authorize automatic payments/debits or transfers to or from your Account, you agree to these Terms of Service.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">Other relevant terms and conditions described elsewhere in the Agreement also apply as long as they are consistent with Regulation E or Section 14.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>14d.Types of Electronic Funds Transfers Available</u>. You may arrange with another party, such as your employer or a government agency, to electronically deposit funds on a one-time or recurring basis directly to your Deposit Account.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">You may authorize another party, such as a merchant, to make a one-time or recurring payment(s) using the Deposit Account and bank routing numbers, directly from your Deposit Account subject to the established limitations on withdrawals and transfers.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">You may use the Debit Card to make purchases at merchants that accept the Debit Card or to obtain cash at ATMs, Over The Counter cash and, subject to availability, cash back at POS terminals.</span></p>\r\n<p><span style=\"color: #000000;\">Limitations on Transfers, Amounts and Frequency of Transactions</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">You may make cash withdrawals and POS purchases, not to exceed the established limits for your Deposit Account. &nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><u>14e. Limitations on Transfers, Amounts and Frequency of Transactions.</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">You may make cash withdrawals and Point of Sale (POS) purchases, not to exceed the established limits of your Deposit Account.</span>\r\n<ul>\r\n<li><span style=\"color: #000000;\">If your Deposit Account is closed, blocked or suspended for any reason, you will not be able to transact using your debit card (including at an ATM).</span></li>\r\n</ul>\r\n</li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><u>14f. Right to Receive Documentation of Electronic Funds Transfers.</u></span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\"><u></u> You will have access to an electronic monthly statement that can be viewed on the Website.</span></li>\r\n<li><span style=\"color: #000000;\"><u>Direct Deposits or Automated Credits.</u> If you have arranged to have direct deposits made to your Deposit Account at least once every sixty (60) days from the same person or company, call 205-922-3434 to find out if the deposit has been made.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>14g. Right to Stop Payment of Preauthorized Transfers.</u> If you have told us in advance to make regular payment out of your Deposit Account, you can stop any of these payments. Here&rsquo;s how:</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">To stop a recurring ACH transfer to a merchant you preauthorized to debit your Deposit Account, please contact the merchant to request cancellation of the recurring payment.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">If the merchant with whom you arranged recurring ACH transfers from your Deposit Account is unable or unwilling to stop the transfer, call customer support at 205-922-3434 or email support@krillpay.com to request a stop on such payment. Your request to stop payment must be received at least three (3) business days before the payment is scheduled to be made. Such a stop payment request will cancel a single, i.e. one (1) recurring payment. If you want to permanently stop all recurring payments to a specific merchant, you may be required to put your request in writing and email it to support@platform.com within fourteen (14) days after you call. If we ask you to put your request in writing, you will need to tell us; the name of the payee, the dollar amount of the payment and the date of the payment. If written stop payment notification is required but is not received within fourteen (14) days, only the first payment you notified us of will be stopped, and future payments will not be stopped.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>14h. Liability for Failure to Stop Payment of Preauthorized Transfer.</u> If you order us to stop a preauthorized payment three (3) business days or more before the transfer is scheduled, and we do not do so, we will be liable for your losses or damages.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>Your Liability for Unauthorized Transfers.</u> Contact us at once if you believe your Debit Card, PIN or Deposit Account number has been stolen. Telephoning is the best way to minimize your possible losses. If your Debit Card, PIN or Deposit Account number has been lost or stolen, or that someone has transferred or may transfer money from your Deposit Account without your permission, call customer support at 205-922-3434. Under Visa U.S.A. Inc. Operating Regulations, your liability for unauthorized Visa debit transactions on your Deposit Account is $0.00 if you are not grossly negligent or fraudulent in the handling of your Debit Card. This reduced liability does not apply to certain commercial card transactions, transactions not processed by Visa or to ATM transactions outside the U.S. You must notify us immediately of any unauthorized use. If the Visa Zero Liability Rules do not apply, if you notify us within two (2) business days after you learn of any unauthorized transactions, you may be liable for no more than $50.00 if someone used your Deposit Account without your permission. If you do not notify us within two (2) business days after you learn of the loss or theft of your Debit Card, Deposit Account number or PIN and we can prove that we could have stopped someone from using your Deposit Account without your permission if you had promptly notified us, you may be liable for as much as $500.00.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">If you become aware of and/or your statement shows transactions that you did not make, notify us at once following the procedures stated in the section labeled &ldquo;Information About Your Right to Dispute Errors&ldquo;. If you do not notify us within sixty (60) days after you become aware of the transaction(s) and/or the statement was made available to you, you may not get back any of the value you lost after the sixty (60) days if we can prove that we could have stopped someone from taking value if you had notified us in time. If a good reason (such as a long trip or a hospital stay) kept you from telling us, we will extend the time periods. If your Debit Card, PIN or Deposit Account number has been lost or stolen, we will close your Debit Card and/or Deposit Account to keep losses down and send you a replacement Debit Card and/or Deposit Account number.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">If your Deposit Account changes you must immediately notify your employer or any other payors or merchants. You must provide them with your new Deposit Account number to ensure that your direct deposit and/or ACH Debit activity continues uninterrupted.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>14i. Confidentiality.</u> We may disclose information to third parties about your Deposit Account, Debit Card or the transactions you make:</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Where it is necessary for completing transactions;</span></li>\r\n<li><span style=\"color: #000000;\">In order to verify the existence and condition of your Deposit Account or Debit Card for a third party, such as a merchant;</span></li>\r\n<li><span style=\"color: #000000;\">In order to comply with government agency, court order, or other legal or administrative reporting requirements;</span></li>\r\n<li><span style=\"color: #000000;\">If you consent by giving us your written permission;</span></li>\r\n<li><span style=\"color: #000000;\">To our employees, auditors, affiliates, service providers, or attorneys as needed;</span></li>\r\n<li><span style=\"color: #000000;\">As noted in the Privacy Policy and Bank Partner&rsquo;s Privacy Notice(s); or</span></li>\r\n<li><span style=\"color: #000000;\">As otherwise as necessary to fulfill our obligations under this agreement.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>14j.Information About Your Right to Dispute Errors.</u> In case of errors or questions about your electronic transactions, call customer support at 205-922-3434 or email us at support@krillpay.com as soon as you can, if you think your statement or receipt is wrong or if you need more information about a transaction listed in the statement or receipt. We must hear from you no later than sixty (60) days after we sent the FIRST statement on which the problem or error appeared.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Tell us your name, Deposit Account number and/or 16-digit Debit Card number.</span></li>\r\n<li><span style=\"color: #000000;\">Describe the error or the transfer you are unsure about and explain as clearly as you can why you believe it is an error or why you need more information.</span></li>\r\n<li><span style=\"color: #000000;\">Tell us the dollar amount of the suspected error.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">If you provide this information orally, we may require that you send your complaint or question in writing within ten (10) business days.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">We will determine whether an error occurred within ten (10) business days after we hear from you and will correct any error promptly. If we need more time, however, we may take up to forty-five (45) days to investigate your complaint or question. If we decide to do this, we will credit your Deposit Account within ten (10) business days for the amount you think is in error, so that you will have use of the money during the time it takes to complete the investigation. If we ask you to put your complaint or question in writing and you do not provide it within ten (10) business days, we may not credit your Deposit Account.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">For errors involving new Deposit Accounts; transactions with a merchant&rsquo;s POS terminal, whether in-person, online, by telephone, mail, or otherwise; or foreign-initiated transactions, we may take up to ninety (90) days to investigate your complaint or question. For new Deposit Accounts, we may take up to twenty (20) business days to credit your Deposit Account for the amount you think is in error. For errors involving unauthorized preauthorized debits (&ldquo;ACH&rdquo;), we will ask you to complete and sign an &ldquo;Affidavit of Unauthorized ACH&rdquo; and return it to us to assist in our investigation.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">We will send you the results within three (3) business days after completing the investigation. If we decide that there was no error, we will send you a written explanation. Copies of the documentation used in the investigation may be obtained by contacting us at the phone number or address shown below.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<ol start=\"15\">\r\n<li><span style=\"color: #000000;\">ENGLISH LANGUAGE CONTROLS</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\">15a. Any translation of this Agreement is provided for your convenience. The meaning of the terms, conditions and representations herein are subject to definitions and interpretations in the English language. Any translation provided may not accurately represent the information in the original English.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ol start=\"16\">\r\n<li><span style=\"color: #000000;\">GENERAL</span></li>\r\n</ol>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\"><u>16a. Severability.</u> If an arbitrator or a court of competent jurisdiction finds any provision of these Terms to be invalid, the parties agree that the court should endeavor to give effect, to the maximum extent permitted by law, to the parties&rsquo; intentions as reflected in the provision, and the other provisions of these Terms will remain in full force and effect.</span></p>\r\n<p><span style=\"color: #000000;\"><u>&nbsp;</u></span></p>\r\n<p><span style=\"color: #000000;\"><u>16b. No Waiver.</u> Except as expressly set forth in these Terms, (i) no failure or delay by you or KrillPay in exercising any rights, powers, or remedies under will operate as a waiver of that or any other right, power, or remedy, and (ii) no waiver or modification of any term of these Terms will be effective unless in writing and signed by the party against whom the waiver or modification is sought to be enforced.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">QUESTIONS</span></p>\r\n<p><span style=\"color: #000000;\">If you have questions about these Terms or the Privacy Policy, please contact us by email at support@krillpay.com, by mail at 3720 Rime Village Drive, Hoover, AL 35216, or customer support number 205-922-3434</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>', 1, '1', 1, 1, '1', '2022-11-15 10:05:57', '2023-03-29 17:23:44');
INSERT INTO `tbl_pages` (`id`, `slug`, `title`, `sub_title`, `image`, `published_date`, `meta_title`, `meta_keywords`, `meta_description`, `description`, `viewcount`, `show_on_homepage`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(9, 'privacy-policy', 'Privacy Policy', 'Privacy Policy', 'public/uploads/shares/usa_flag_resized_jpeg.jpg', '2022-11-15', 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', '<p><span style=\"color: #000000;\">KrillPay Privacy Policy</span></p>\r\n<p><span style=\"color: #000000;\"><strong>Effective Date 08/31/2022</strong></span></p>\r\n<p><span style=\"color: #000000;\">KrillPay and its affiliates (collectively &ldquo;KrillPay&rdquo;, we&rdquo;, \"our,\" or \"us\") are committed to protecting your privacy. This Privacy Policy explains how your personal information is collected, used and disclosed by KrillPay. This Privacy Policy applies to services provided through KrillPay platform. By accessing or using our Services, or otherwise manifesting your assent to this Privacy Policy, you signify that you have read, understood and agree to our collection, storage, use and disclosure of your personal information as described in this Privacy Policy and our Terms of Use. If you are an individual acting on behalf of a Company, you represent and warrant that you are an authorized representative of Company with the authority to bind Company to this Privacy Policy (\"Administrator\"), and that you agree to this Privacy Policy on Company&rsquo;s behalf.</span></p>\r\n<p><span style=\"color: #000000;\">Terms not defined in this Privacy Policy will have the meaning set forth in our Terms of Use.</span></p>\r\n<h2><span style=\"color: #000000;\">1. What Information Do We Collect and for What Purpose?</span></h2>\r\n<h2><span style=\"color: #000000;\">The categories of information we collect can include:</span></h2>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Information you provide to us directly. We will collect business and financial information as a prerequisite to you being authorized to use the Services to open an account. The collection of business information may include:</span>\r\n<ul>\r\n<li><span style=\"color: #000000;\">business name</span></li>\r\n<li><span style=\"color: #000000;\">tax identification number</span></li>\r\n<li><span style=\"color: #000000;\">business address</span></li>\r\n<li><span style=\"color: #000000;\">business telephone number</span></li>\r\n<li><span style=\"color: #000000;\">business bank account information</span></li>\r\n<li><span style=\"color: #000000;\">business related documentation</span></li>\r\n<li><span style=\"color: #000000;\">telephone number</span></li>\r\n<li><span style=\"color: #000000;\">email address.</span></li>\r\n</ul>\r\n</li>\r\n<li><span style=\"color: #000000;\">In addition, the beneficial owners of the Company will be required to provide personal information including:</span>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Name</span></li>\r\n<li><span style=\"color: #000000;\">personal address</span></li>\r\n<li><span style=\"color: #000000;\">date of birth</span></li>\r\n<li><span style=\"color: #000000;\">social security number (SSN)</span></li>\r\n<li><span style=\"color: #000000;\">phone number</span></li>\r\n<li><span style=\"color: #000000;\">a photo of their passport or drivers license.</span></li>\r\n</ul>\r\n</li>\r\n<li><span style=\"color: #000000;\">Additional information will be requested at account opening and may be requested throughout the life of the account relationship to meet regulatory and legal requirements. If you choose to provide us with personal information, business information, financial information, and financial data, you consent to the transfer and storage of that information on our servers located within the United States. We may also collect any communications between you and KrillPay and any other information you provide to KrillPay.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Data collected through the use of the Service. We collect information about how you use the Service, your actions on the Service, and your communications with us through the Services. If you need to update your permissions, you can do so in the \"Settings\" app of your device. Please remember that KrillPay may, but has no obligation to, monitor, record, and store information you provide to KrillPay and information we collect about you in order to protect your safety or the safety of other users, to assist with regulatory or law enforcement efforts, or to protect and defend our rights and property. By using the Service, you consent to the recording, storage and disclosure of such communications you send or receive for these purposes.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">USA Patriot Act. To help the government fight the funding of terrorism and money laundering activities, the USA PATRIOT Act, a Federal law, requires financial institutions to obtain, verify, and record information that identifies each business that opens an account and the personal information of its owners or representatives. Therefore, when applying for an account, we, on behalf of financial institution(s), will ask for details about the personally identifiable information about the business owners, administrators, and/or authorized users such as: name, address, date of birth, SSN, phone number, and other information that will allow financial institution(s) to confirm your identity. We may also ask for details about the business owner&rsquo;s, administrators&rsquo;, and/or authorized user&rsquo;s driver&rsquo;s license number, passport information, or other identifying information. We may also collect photos, text, videos, or any other information you upload and/or send through our Services.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Information Collected From Your Device. When you use our Services, we may collect information from your computer or mobile device, such as the unique identification number, the model, operating system and version, your browser type and version, the presence of any device, operating system, or browser add-ons, the times you access our Services, the locations from where you access our Services (attributed based on your IP address, the page you visited before navigating to our Services, and your mobile device&rsquo;s location services), and your stored contacts.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">We use this information to operate, maintain, and provide to you the features and functionality of the Service, as well as to communicate directly with you, such as to send you email messages and push notifications. We may also send you Service-related emails or messages (e.g., account verification, change or updates to features of the Service, technical and security notices). For more information about your communication preferences, see \"Control Over Your Information\" below.</span></p>\r\n<h2><span style=\"color: #000000;\">2. How We Use Cookies and Other Tracking Technology to Collect Information</span></h2>\r\n<p><span style=\"color: #000000;\">We, and our third party partners, automatically collect certain types of usage information when you visit our Services, read our emails, or otherwise engage with us. We typically collect this information through a variety of tracking technologies, including cookies, Flash objects, web beacons, file information and similar technology (collectively, \"tracking technologies\"). \"Cookies\" are small packets of data that a website stores on your computer&rsquo;s or mobile device&rsquo;s hard drive (or other storage medium) so that your computer will \"remember\" information about your use. We use both first and third party session cookies and persistent cookies. Session cookies make it easier for you to navigate our Services and expire when you close the Services. Persistent cookies remain on your device for an extended period of time or until you delete them. Persistent cookies enable us to track and target the interests of our visitors to personalize the experience on our Services.</span></p>\r\n<p><span style=\"color: #000000;\">Through the tracking technologies we collect information about your device and its software, such as your IP address, browser type, Internet service provider, platform type, device type, operating system, date and time stamp, a unique ID that allows us to uniquely identify your browser, mobile device or your account, and other such information. We also collect information about the way you use our Services, for example, the site from which you came and the site to which you are going when you leave our website, the pages you visit, the links you click, how frequently you access the Services, whether you open emails or click the links contained in emails, whether you access the Services from multiple devices, and other actions you take on the Services. When you access our Services from a mobile device, we may collect unique identification numbers associated with your device or our mobile application (including, for example, a UDID, Unique ID for Advertisers (\"IDFA\"), Google AdID, or Windows Advertising ID), mobile carrier, device type, model and manufacturer, mobile device operating system brand and model, phone number, and depending on your mobile device settings, your geographical location data, including GPS coordinates (e.g., latitude and/or longitude) or similar information regarding the location of your mobile device, or we may be able to approximate a device&rsquo;s location by analyzing other information, like an IP address.</span></p>\r\n<p><span style=\"color: #000000;\">We may use one or more third&ndash;party analytics services to evaluate your use of the Services, as the case may be, by compiling reports on activity (based on their collection of IP addresses, Internet service provider, browser type, operating system and language, referring and exit pages and URLs, data and time, amount of time spent on particular pages, what sections of the Website you visit, number of links clicked, search terms and other similar usage data) and analyzing performance metrics. These third parties use cookies and other technologies to help collect, analyze, and provide us reports or other data.</span></p>\r\n<p><span style=\"color: #000000;\">By accessing and using the Services, you consent to the processing of data about you by these analytics providers in the manner and for the purposes set out in this Privacy Policy. Please be advised that if you opt out of any service, you may not be able to use the full functionality of the Services.</span></p>\r\n<p><span style=\"color: #000000;\">Although we do our best to honor the privacy preferences of our users, we are unable to respond to Do Not Track signals set by your browser at this time.</span></p>\r\n<p><span style=\"color: #000000;\">We use or may use the data collected through tracking technologies to: (a) remember information so that you will not have to re-enter it during your visit or the next time you visit the site; (b) provide custom, personalized content and information, including targeted content and advertising; (c) identify you across multiple devices; (d) provide and monitor the effectiveness of our Service; (e) monitor aggregate metrics such as total number of visitors, traffic, usage, and demographic patterns on our Services; (f) diagnose or fix technology problems; and (g) otherwise to plan for and enhance our Services.</span></p>\r\n<p><span style=\"color: #000000;\">If you would prefer not to accept cookies, most browsers will allow you to: (i) change your browser settings to notify you when you receive a cookie, which lets you choose whether or not to accept it; (ii) disable existing cookies; or (iii) set your browser to automatically reject cookies. Please note that doing so may negatively impact your experience using the Services, as some features and services on our Services may not work properly. Depending on your mobile device and operating system, you may not be able to delete or block all cookies. You may also set your email options to prevent the automatic downloading of images that may contain technologies that would allow us to know whether you have accessed our email and performed certain functions with it. Note that deleting cookies does not delete Local Storage Objects (LSOs) such as Flash objects and HTML5. You can learn more about Flash objects - including how to manage privacy and storage settings for Flash cookies &ndash; on Adobe&rsquo;s website. If you choose to delete Flash objects from our sites, then you may not be able to access and use all or part of the Services or benefit from the information and services offered.</span></p>\r\n<p><span style=\"color: #000000;\">We and our third party partners may also use cookies and tracking technologies for advertising purposes. For more information about tracking technologies, please see \"Third Party Tracking and Online Advertising\" below.</span></p>\r\n<h2><span style=\"color: #000000;\">3. Sharing of Your Information</span></h2>\r\n<p><span style=\"color: #000000;\">We may share your personal information in the instances described below. For further information on your choices regarding your information, see the \"Control Over Your Information\" section below.</span></p>\r\n<p><span style=\"color: #000000;\">We may share your personal information with:</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Third parties at your request.</span></li>\r\n<li><span style=\"color: #000000;\">Third-party vendors and other service providers that perform services on our behalf, as needed to carry out their work for us, which may include providing the following services: identifying and serving targeted advertisements, tax and accounting, web hosting, customer and support services, or analytic services;</span></li>\r\n<li><span style=\"color: #000000;\">Third parties to investigate fraud inside or outside our Services;</span></li>\r\n<li><span style=\"color: #000000;\">Other parties in connection with a company transaction, such as a merger, sale of company assets or shares, reorganization, financing, change of control or acquisition of all or a portion of our business by another company or third party, or in the event of a bankruptcy or related or similar proceedings; and</span></li>\r\n<li><span style=\"color: #000000;\">Third parties as required by law or subpoena or if we reasonably believe that such action is necessary to (a) comply with the law and the reasonable requests of law enforcement; (b) to enforce our Terms of Service (US) or to protect the security or integrity of our Service; and/or (c) to exercise or protect the rights, property, or personal safety of KrillPay, our visitors, or others.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">We may also share information with others in an aggregated or otherwise anonymized form that does not reasonably identify you directly as an individual.</span></p>\r\n<h2><span style=\"color: #000000;\">4. Control Over Your Information</span></h2>\r\n<p><span style=\"color: #000000;\">Profile and Data Sharing Settings. You may update your profile information, such as your user name and profile photo, and may change some of your data sharing preferences on your Settings Page.</span></p>\r\n<p><span style=\"color: #000000;\">The app will ask for access to your Device Information. You may control the app&rsquo;s access to your device information through your \"Settings\" app on your device. For instance, you can withdraw permission for the app to access your address book, location, photo stream and camera.</span></p>\r\n<p><span style=\"color: #000000;\">How to control your communications preferences: You can stop receiving promotional email communications from us by clicking on the \"unsubscribe link\" provided in such communications. We make every effort to promptly process all unsubscribe requests. You may not opt out of service-related communications (e.g., account verification, transactional communications, changes/updates to features of the Service, technical and security notices).</span></p>\r\n<p><span style=\"color: #000000;\">Modifying or deleting your information: If you have any questions about reviewing, modifying, or deleting your information, or if you want to remove your name or comments from our website or publicly displayed content, you can contact us by emailing us through our support email address <a style=\"color: #000000;\" href=\"mailto:support@krillpay.com\">support@krillpay.com</a>, calling us, or submitting a Customer Support Form online. Please visit KrillPay Contact us section on its website <a style=\"color: #000000;\" href=\"http://www.krillpay.com\">www.krillpay.com</a> for the information. We may not be able to modify or delete your information in all circumstances.</span></p>\r\n<h2><span style=\"color: #000000;\">5. Site Data</span></h2>\r\n<p><span style=\"color: #000000;\">In an ongoing effort to better understand our users and the Services, we might analyze Site Data to operate, maintain, manage, and improve the Services. This Site Data does not identify you personally. We may share this aggregate data with our affiliates, agents, and business partners. We may also disclose Site Data and aggregate user statistics to describe the Services to current and prospective business partners and to other third parties for other lawful purposes.</span></p>\r\n<h2><span style=\"color: #000000;\">6. Third Party Tracking and Online Advertising</span></h2>\r\n<p><span style=\"color: #000000;\">We may share, or we may permit third party online advertising networks, social media companies and other third party services, to collect, information about your use of our website over time so that they may play or display ads that may be relevant to your interests on our Services as well as on other websites or apps, or on other devices you may use. Typically, though not always, the information we share is provided through cookies or similar tracking technologies, which recognize the device you are using and collect information, including hashed data, clickstream information, browser type, time and date you visited the Services, and other information. This information is used to display targeted ads on or through our Services or on other websites or apps. We or the online advertising networks use this information to make the advertisements you see online more relevant to your interests. As noted above, depending on your browser or mobile device, you may be able to set your browser to delete or notify you of cookies and other tracking technology by actively managing the settings on your browser or mobile device. You may also be able to limit interest-based advertising through the settings on your mobile device by selecting \"limit ad tracking\" (iOS) or \"opt-out of interest based ads\'\' (Android). If you have any questions about opting out of the collection of cookies and other tracking/recording tools, you can contact us by writing us at our address, 3720 Rime Village Drive, Hoover AL, 35216, emailing us through our support email address <a style=\"color: #000000;\" href=\"mailto:support@krillpay.com\">support@krillpay.com</a>, or submitting a Customer Support Form online. Please visit KrillPay Contact us section on its website <a style=\"color: #000000;\" href=\"http://www.krillpay.com\">www.krillpay.com</a> for the information.</span></p>\r\n<h2><span style=\"color: #000000;\">7. How We Store and Protect Your Information</span></h2>\r\n<p><span style=\"color: #000000;\">Data storage and transfer: Your information collected through our Services may be stored and processed in the United States.</span></p>\r\n<p><span style=\"color: #000000;\">Keeping your information safe: We care about the security of your information and use commercially reasonable physical, administrative, and technological safeguards to preserve the integrity and security of all information collected through our Services. However, no security system is impenetrable and we cannot guarantee the security of our systems or the systems of the third parties with which we may share your information, nor can we guarantee that the information you supply will not be intercepted while being transmitted over the Internet. In particular, e-mail sent to us may not be secure, and you should therefore take special care in deciding what information you send to us via e-mail.</span></p>\r\n<h2><span style=\"color: #000000;\">8. Children&rsquo;s Privacy</span></h2>\r\n<p><span style=\"color: #000000;\"><strong>KrillPay</strong> does not knowingly collect or solicit any information from anyone under the age of 18 through our Services. If you are under 18, please do not give us any personal information. In the event that we learn that we have inadvertently collected personal information from a child under age 18, we will delete that information as quickly as possible. If you believe that we might have any information from a child under 18, you can contact us by writing us to 3720 Rime Village Drive, Hoover AL 35216, emailing us through our support email address <a style=\"color: #000000;\" href=\"mailto:support@krillpay.com\">support@krillpay.com</a>, or submitting a Customer Support Form online. Please visit KrillPay Contact us section on its website <a style=\"color: #000000;\" href=\"http://www.krillpay.com\">www.krillpay.com</a> for the information.</span></p>\r\n<h2><span style=\"color: #000000;\">9. Links to Other Web Sites and Services</span></h2>\r\n<p><span style=\"color: #000000;\">The Services may contain links to and from third party websites of our business partners, advertisers, and social media sites and our users may post links to third party websites. If you follow a link to any of these websites, please note that these websites have their own privacy policies and that we do not accept any responsibility or liability for their policies. We strongly recommend that you read their privacy policies and terms and conditions of use to understand how they collect, use, and share information. We are not responsible for the privacy practices or the content on the websites of third party sites.</span></p>\r\n<h2><span style=\"color: #000000;\">10. California Privacy Rights</span></h2>\r\n<p><span style=\"color: #000000;\">Pursuant to Section 1798.83 of the California Civil Code, California residents have the right to obtain certain information about the types of personal information that companies with whom they have an established business relationship (and that are not otherwise exempt) have shared with third parties for direct marketing purposes during the preceding calendar year, including the names and addresses of those third parties, and examples of the types of services or products marketed by those third parties. If you wish to submit a request pursuant to Section 1798.83, please contact us by writing us to 3720 Rime Village, Hoover AL, 35216, email us at <a style=\"color: #000000;\" href=\"mailto:support@krillpay.com\">support@krillpay.com</a>, or submitting a Customer Support Form online. Please visit the Contact us section of our website <a style=\"color: #000000;\" href=\"http://www.krillpay.com\">www.krillpay.com</a> for the information</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">California Privacy Rights</span></p>\r\n<p><span style=\"color: #000000;\">If you are a resident of California, you have the following choices in our use and disclosure of your Personal Data subject to certain limitations under the California Consumer Privacy Act (&ldquo;CCPA&rdquo;):</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Right to know. You may request, up to twice in a 12-month period, the following information about the Personal Data we have collected, used, disclosed or sold about you during the past 12 months:</span></li>\r\n<ul>\r\n<li><span style=\"color: #000000;\">the categories and specific pieces of Personal Data we have collected about you;</span></li>\r\n<li><span style=\"color: #000000;\">the categories of sources from which we collected the Personal Data;</span></li>\r\n<li><span style=\"color: #000000;\">the business or commercial purpose for which we collected the Personal Data;</span></li>\r\n<li><span style=\"color: #000000;\">the categories of third parties with whom we shared the Personal Data; and</span></li>\r\n<li><span style=\"color: #000000;\">the categories of Personal Data about you that we disclosed for a business purpose and sold to third parties, and the categories of third parties to whom the information was disclosed or sold.</span></li>\r\n</ul>\r\n<li><span style=\"color: #000000;\">Right to delete. You may request that we delete the Personal Data we have collected from you, subject to certain limitations under the CCPA.</span></li>\r\n<li><span style=\"color: #000000;\">Right to opt-out from sale of Personal Data. You have the right to opt-out of the sale of your Personal Data. We do not sell your Personal Data.</span></li>\r\n<li><span style=\"color: #000000;\">Non-discrimination. The CCPA provides that you may not be discriminated against for exercising these rights.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">To submit a request to exercise any of the rights described above, you may email us at <a style=\"color: #000000;\" href=\"mailto:support@krillpay.com\">support@krillpay.com</a>. We will verify your identity before responding to your request by either verifying that the email address from which you send the request matches your email address that we have on file, or by requiring you to log into your Account.</span></p>\r\n<p><span style=\"color: #000000;\">Consumer Request by an Authorized Agent</span></p>\r\n<p><span style=\"color: #000000;\">If any authorized agent submits a consumer request under the CCPA on your behalf, we require the authorized agent to submit the following information so that we can confirm their authority to act on your behalf:</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Evidence of authorization to act on behalf of the California consumer: (1) California Secretary of State authorization, (2) notarized written permission from the California consumer, or (3) power of attorney.</span></li>\r\n<li><span style=\"color: #000000;\">Evidence of identity of the California consumer: (1) first and last name, (2) email address, and (3) password.</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">Pursuant to Section 1798.83 of the California Civil Code, residents of California have the right to obtain certain information about the types of Personal Data that companies with whom they have an established business relationship (and that are not otherwise exempt) have shared with third parties for direct marketing purposes during the preceding calendar year, including the names and addresses of those third parties, and examples of the types of services or products marketed by those third parties. If you wish to submit a request pursuant to Section 1798.83, please contact KrillPay via email at&nbsp;<a style=\"color: #000000;\" href=\"mailto:support@krillpay.com\">support@krillpay.com</a>]</span></p>\r\n<h2><span style=\"color: #000000;\">11. How to Contact Us</span></h2>\r\n<p><span style=\"color: #000000;\">If you have any questions about this Privacy Policy or the website, you can contact us by any of the following ways:</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Write to us as at:</span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">KrillPay Inc.</span></p>\r\n<p><span style=\"color: #000000;\">3720 Rime Village Drive</span></p>\r\n<ul>\r\n<li><span style=\"color: #000000;\">Email: Support@krillpay.com</span></li>\r\n<li><span style=\"color: #000000;\">Submit Customer Support <a style=\"color: #000000;\" href=\"https://support.krillpay.com/support/home\">Form</a></span></li>\r\n</ul>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<p><span style=\"color: #000000;\">*Operating hours for chat is from 8:00am to 5:00 pm Central Time.</span></p>\r\n<h2><span style=\"color: #000000;\">12. Changes to Our Privacy Policy</span></h2>\r\n<p><span style=\"color: #000000;\">We may modify or update this Privacy Policy from time to time to reflect the changes in our business and practices, and so you should review this page periodically. When we change the policy in a material manner, we will let you know via email <a style=\"color: #000000;\" href=\"mailto:info@krillpay.com\">info@krillpay.com</a> and update the &rsquo;last modified&rsquo; date at the top of this page. If you object to any changes, you may close your account. Continuing to use our Services after we publish changes to this Privacy Policy means that you are consenting to the changes.</span></p>\r\n<p><span style=\"color: #000000;\">&nbsp;</span></p>\r\n<div id=\"infocollect\"><span style=\"color: #000000;\">&nbsp;</span></div>', 1, '1', 1, 1, '1', '2022-11-15 10:07:59', '2023-03-29 17:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner`
--

CREATE TABLE `tbl_partner` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_partner`
--

INSERT INTO `tbl_partner` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Cameroon', 'public/uploads/shares/partners/cameroon.png', 0, '2022-11-15 07:42:46', '2023-03-22 17:46:57'),
(4, 'Nigeria', 'public/uploads/shares/partners/nigeria.png', 0, '2022-11-15 07:43:11', '2023-03-22 17:47:18'),
(5, 'Kenya', 'public/uploads/shares/partners/kenya_(1).png', 0, '2022-11-15 07:43:28', '2023-03-22 17:47:12'),
(6, 'Togo', 'public/uploads/shares/partners/togo.png', 0, '2022-11-15 07:43:52', '2023-03-22 17:47:26'),
(7, 'Ghana', 'public/uploads/shares/partners/ghana.png', 0, '2022-11-15 07:44:07', '2023-03-22 17:47:05'),
(8, 'USA', 'public/uploads/shares/partners/usa.png', 0, '2022-11-15 07:44:28', '2023-03-22 17:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int NOT NULL,
  `title` text,
  `slug` text,
  `description` longtext,
  `image` varchar(250) DEFAULT NULL,
  `file` varchar(150) DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `sub_title` text,
  `author_id` int UNSIGNED DEFAULT NULL,
  `video_link` varchar(256) DEFAULT NULL,
  `image_slideshow_text` text,
  `viewcount` int DEFAULT '1',
  `meta_title` varchar(256) DEFAULT NULL,
  `meta_keywords` varchar(256) DEFAULT NULL,
  `meta_description` varchar(256) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `slug`, `description`, `image`, `file`, `published_date`, `sub_title`, `author_id`, `video_link`, `image_slideshow_text`, `viewcount`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'Real time Notifications', '', '<p>Your customer stay informed in real time with everything that&rsquo;s happening on his account: payments, transfer, advice. Get visibility on your customers\' flows to anticipate their needs.</p>\n<p>&nbsp;</p>', 'public/uploads/shares/notifications/feature-item-1.png', NULL, NULL, 'Smart Banking', NULL, NULL, NULL, 1, NULL, NULL, NULL, '1', 1, 1, '2022-11-13 11:06:27', '2022-11-13 11:11:27'),
(6, 'Real time Notifications', 'real-time-notifications', '<section class=\"features-section features-section-two\">\r\n<div class=\"overlay pt-60\">\r\n<div class=\"container wow fadeInUp\">\r\n<div class=\"row\">\r\n<div class=\"col-lg-6\">\r\n<div class=\"top-section\">\r\n<p>Your customer stay informed in real time with everything that&rsquo;s happening on his account: payments, transfer, advice. Get visibility on your customers\' flows to anticipate their needs.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</section>', 'public/uploads/shares/notifications/feature-item-2.png', NULL, NULL, 'Smart Banking', NULL, NULL, NULL, 1, NULL, NULL, NULL, '1', 1, NULL, '2022-11-13 11:13:37', '2022-11-13 11:13:37');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_province`
--

CREATE TABLE `tbl_province` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `country_id` int UNSIGNED NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_province`
--

INSERT INTO `tbl_province` (`id`, `title`, `country_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'State 1', 1, 1, NULL, NULL),
(2, 'State 2', 1, 1, NULL, NULL),
(3, 'State 3', 1, 1, NULL, NULL),
(4, 'State 4', 1, 1, NULL, NULL),
(5, 'State 5', 1, 1, NULL, NULL),
(6, 'State 6', 1, 1, NULL, NULL),
(7, 'State 7', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_scholarship_offers`
--

CREATE TABLE `tbl_scholarship_offers` (
  `id` int UNSIGNED NOT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `description` text,
  `scholarship_amount` text,
  `valid_till` varchar(100) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_scholarship_offers`
--

INSERT INTO `tbl_scholarship_offers` (`id`, `country_id`, `title`, `image`, `description`, `scholarship_amount`, `valid_till`, `status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Debitis tempore vol', 'public/uploads/shares/authorization-background.jpg', '<p>Occaecat aliquid rer.</p>', '<p>Est in itaque dolore.</p>', '2002-08-10', 1, '2022-08-29 02:20:07', '2022-08-29 02:20:07'),
(2, 3, 'Nam labore sed cumqu', 'public/uploads/shares/slider_11_(1).png', '<p>Velit, optio, quaera.</p>', '<p>Qui deserunt praesen.</p>', '2018-05-05', 1, '2022-08-29 02:28:57', '2022-08-29 02:28:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  `image` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Biometric authentication', 'You can use your facial ID as your 2 Factor Authentication. This is to further protect your account from unauthorized intrusion.', 'public/uploads/shares/service/our-solutions-icon-1.png', 1, '2022-11-12 12:09:33', '2023-03-27 15:17:55'),
(2, 'Complete KYC', 'Identity verification using your government-issued IDs such as a driver\'s license, International passport, or national ID card.', 'public/uploads/shares/service/our-solutions-icon-2.png', 1, '2022-11-12 12:10:10', '2023-02-05 01:10:53'),
(3, '2 Factor Authentication', 'In addition to your username and password, you\'re required to create a 2FA for a second layer of account security.', 'public/uploads/shares/service/our-solutions-icon-3.png', 1, '2022-11-12 12:11:04', '2023-03-27 15:15:11'),
(4, 'Advanced security', 'With Multi-Factor Authentication and Biometric login, your online and in-store purchases are safe and secure.', 'public/uploads/shares/service/more-features-icon-3.png', 1, '2022-11-12 12:11:48', '2023-03-28 23:14:41');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_site_setting`
--

CREATE TABLE `tbl_site_setting` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `mobile_no` varchar(500) DEFAULT NULL,
  `phone_no` varchar(500) DEFAULT NULL,
  `facebook` varchar(256) DEFAULT NULL,
  `twitter` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `logo` varchar(500) DEFAULT NULL,
  `fav_icon` varchar(500) DEFAULT NULL,
  `map_detail` text,
  `skype` varchar(500) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `youtube` varchar(500) DEFAULT NULL,
  `call_to_action_title` varchar(500) DEFAULT NULL,
  `call_to_action_text` text,
  `study_abroad_title` varchar(500) DEFAULT NULL,
  `study_abroad_text` text,
  `why_choose_title` varchar(256) DEFAULT NULL,
  `why_choose_text` text,
  `years_of_experience` varchar(100) DEFAULT NULL,
  `countries` varchar(100) DEFAULT NULL,
  `universities` varchar(100) DEFAULT NULL,
  `success_stories` varchar(100) DEFAULT NULL,
  `visa_success_ratio_text` text,
  `how_we_work_text` text,
  `testimonial_title` varchar(256) DEFAULT NULL,
  `testimonial_text` text,
  `authorization_title` varchar(500) DEFAULT NULL,
  `authorization_text` text,
  `authorization_bg_image` varchar(500) DEFAULT NULL,
  `event_title` varchar(500) DEFAULT NULL,
  `employees_number` varchar(100) DEFAULT NULL,
  `office_no` varchar(100) DEFAULT NULL,
  `volumn_no` varchar(100) DEFAULT NULL,
  `customer_satisfaction` varchar(100) DEFAULT NULL,
  `active_user` varchar(100) DEFAULT NULL,
  `new_user_per_week` varchar(100) DEFAULT NULL,
  `our_value_header` varchar(200) DEFAULT NULL,
  `who_we_are_header` varchar(200) DEFAULT NULL,
  `ready_to_start` text,
  `wwr_video_url` varchar(200) DEFAULT NULL,
  `service_header` varchar(200) DEFAULT NULL,
  `testimonial_header` varchar(200) DEFAULT NULL,
  `app_link` varchar(200) DEFAULT NULL,
  `download_header` varchar(200) DEFAULT NULL,
  `homepage_first_banner_image` varchar(200) DEFAULT NULL,
  `mobile_app_image` varchar(200) DEFAULT NULL,
  `faq_banner_image` varchar(200) DEFAULT NULL,
  `get_start_banner_image` varchar(200) DEFAULT NULL,
  `event_text` text,
  `footer_content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `homepage_first_section_title` text,
  `homepage_first_section_desc` text,
  `meta_descriptions` varchar(500) DEFAULT NULL,
  `meta_keywords` varchar(500) DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_site_setting`
--

INSERT INTO `tbl_site_setting` (`id`, `title`, `email`, `address`, `mobile_no`, `phone_no`, `facebook`, `twitter`, `instagram`, `logo`, `fav_icon`, `map_detail`, `skype`, `linkedin`, `youtube`, `call_to_action_title`, `call_to_action_text`, `study_abroad_title`, `study_abroad_text`, `why_choose_title`, `why_choose_text`, `years_of_experience`, `countries`, `universities`, `success_stories`, `visa_success_ratio_text`, `how_we_work_text`, `testimonial_title`, `testimonial_text`, `authorization_title`, `authorization_text`, `authorization_bg_image`, `event_title`, `employees_number`, `office_no`, `volumn_no`, `customer_satisfaction`, `active_user`, `new_user_per_week`, `our_value_header`, `who_we_are_header`, `ready_to_start`, `wwr_video_url`, `service_header`, `testimonial_header`, `app_link`, `download_header`, `homepage_first_banner_image`, `mobile_app_image`, `faq_banner_image`, `get_start_banner_image`, `event_text`, `footer_content`, `homepage_first_section_title`, `homepage_first_section_desc`, `meta_descriptions`, `meta_keywords`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'KrillPay', 'emmanuel@krillpay.com', '3720 Rime Village Drive, Hoover AL 35216. USA', '+1 (205) 922-3434', '+1 (205) 922-3434', 'https://www.facebook.com/', 'https://twitter.com', 'https://instagram.com', 'https://krillpay.com/public/uploads/shares/krill-new-logo_(1).png', 'http://localhost/revive-management/public/uploads/shares/10.jpg', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1825.9459186909382!2d90.38663166995215!3d23.751236206760797!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755b8a52bb2e7df%3A0x2db066ca098cb0d6!2sNHP+Education+Consultants!5e0!3m2!1sen!2s!4v1395339610404', 'https://skype.com', 'https://linkedin.com', 'https://youtube.com', 'Get a free consultation', 'Book an appointment with our experieneced consultanats to discuss your study abroad options.', 'Choose Your Country', 'NHP processes Student Visa, Student Spouse Visa and Parents Visitors Visa for UK, USA, Canada, Australia and Malaysia.', 'Why Choose NHP?', 'In confusion, many can\'t decide where to get proper knowing for his or her desired aim and sometimes it can be an unwise decision.', '16', '5', '100', '2000', 'We have a very good visa success rates due to our very professional commitment towards our students.', 'It is very easy to apply through NHP Education Consultants. It starts from career counselling and ends in pre-departure orientation.', 'What Our Students Say?', 'We’ve chosen a selection of student testimonials to give you a better insight about us, our honesty, transparency and our devotion towards our students.', 'Authorization And Certificate Of Recognitions', 'It is always better to apply through Authorized, Trained, Experienced Consultants. NHP Education Consultants is the Authorized Agent of many UK, USA, Canada, Australia and Malaysian Universities and Colleges.', 'http://localhost/consultancy/public/uploads/shares/authorization-background.jpg', 'Event and University Visits', NULL, NULL, NULL, '90', '1', '10', 'A simple and smart way to send money.', NULL, 'It only takes a few minutes to register your FREE KrillPay account.', NULL, 'hhh', NULL, NULL, 'Our digital banking app is currently under development. Join our waitlist and we will notify you when the development is completed and the app is ready for download.', 'https://krillpay.com/public/uploads/shares/banners/banner_img.png', 'https://krillpay.com/public/uploads/shares/banners/apps_1.png', 'https://krillpay.com/public/uploads/shares/banners/get_the_venmo_app_-_desktop_1.png', NULL, 'Keep an eye on our regular Education Event, University Visits, Seminar, etc.', '© 2023 KrillPay. All Rights Reserved. In the United States, KrillPay is registered as a Delaware C Corporation. Banking services are provided by Mbanq\'s Bank partners.', 'Send money, smartly, across the United States, to friends and family members.', 'As a KrillPay user, you can send a peer-to-peer instant money transfer to your friends and family members across the U.S.', 'descr', 'keyword', 1, '2018-04-30 17:06:36', '2023-03-29 14:07:04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `title` varchar(500) NOT NULL,
  `sub_title` varchar(500) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `description` text NOT NULL,
  `btn_text` varchar(256) DEFAULT NULL,
  `btn_url` varchar(500) DEFAULT NULL,
  `published_date` date DEFAULT NULL,
  `sort_order` tinyint DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `slug`, `title`, `sub_title`, `image`, `description`, `btn_text`, `btn_url`, `published_date`, `sort_order`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'quos-fugiat-nostrud', 'Reprehenderit et sit', NULL, 'public/uploads/shares/slider/slider-1.jpg', '<p>Consequatur consecte.</p>', NULL, NULL, '1933-10-24', 3, 1, 1, 1, '2022-03-08 23:00:25', '2022-08-15 10:06:38'),
(2, 'ea-dolor-aut-ab-dolo', 'Thinking of Becoming CA', NULL, 'public/uploads/shares/slider/slider-1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean euismod bibendum laoreet. Proin gravida dolor sit amet lacus accumsan et viverra justo commodo.</p>', NULL, NULL, '2022-03-15', 2, 1, 1, 1, '2022-03-10 21:15:10', '2022-08-15 10:06:02'),
(5, 'slider-1', 'Slider 1', 'Slider sub title 1', 'public/uploads/shares/slider_11_(1).png', '<p>This is the description of slider 1</p>\r\n<p>&nbsp;</p>', 'Read More', 'https://www.google.com/', '2022-08-14', 1, 1, 1, 1, '2022-08-14 02:32:57', '2022-08-15 10:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_staff_category`
--

CREATE TABLE `tbl_staff_category` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `sort_order` int UNSIGNED DEFAULT NULL,
  `status` tinyint UNSIGNED DEFAULT '0',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_staff_category`
--

INSERT INTO `tbl_staff_category` (`id`, `title`, `slug`, `sort_order`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Board Director', 'board-director', 1, 1, 1, 1, '2020-01-26 18:07:48', '2020-01-26 18:11:19'),
(2, 'Executive Member', 'executive-member', 2, 1, 1, 1, '2020-01-26 18:12:10', '2020-01-26 18:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_statistic`
--

CREATE TABLE `tbl_statistic` (
  `id` int NOT NULL,
  `title` text,
  `data_value` varchar(50) DEFAULT NULL,
  `image` varchar(250) DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_statistic`
--

INSERT INTO `tbl_statistic` (`id`, `title`, `data_value`, `image`, `sort_order`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Speaker', '27+', 'public/uploads/shares/statistic/mic.png', 1, '1', NULL, NULL, '2020-08-06 04:01:31', '2020-08-06 04:01:31'),
(2, 'Workshops', '47+', 'public/uploads/shares/statistic/workshop.png', 2, '1', NULL, NULL, '2020-08-06 04:02:23', '2020-08-06 04:02:23'),
(3, 'Country', '4+', 'public/uploads/shares/statistic/globe.png', 3, '1', NULL, NULL, '2020-08-06 04:02:38', '2020-08-06 04:02:38'),
(4, 'Sponsor', '12+', NULL, 4, '1', NULL, NULL, '2020-08-06 04:03:02', '2020-08-06 04:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_study_abroad`
--

CREATE TABLE `tbl_study_abroad` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `heading_title` varchar(500) DEFAULT NULL,
  `sub_title` text,
  `country_id` int UNSIGNED DEFAULT NULL,
  `image` varchar(256) DEFAULT NULL,
  `banner_image` varchar(256) DEFAULT NULL,
  `description` text,
  `req_document_desc` text,
  `application_procedure_desc` text,
  `visa_procedure_fee_desc` text,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_study_abroad`
--

INSERT INTO `tbl_study_abroad` (`id`, `title`, `slug`, `heading_title`, `sub_title`, `country_id`, `image`, `banner_image`, `description`, `req_document_desc`, `application_procedure_desc`, `visa_procedure_fee_desc`, `meta_title`, `meta_keywords`, `meta_description`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Study in UK', 'study-in-uk', 'Thinking about studying in UK from Bangladesh?', 'Do you want to study in UK from Bangladesh? Process your application through the British Council Trained Agent Counselor.', 3, 'public/uploads/shares/country/usa-flag.png', 'public/uploads/shares/slider_11_(1).png', '<p>One of the main advantages of studying in the UK is that you will be exposed to different cultures and experiences. The sights, sounds and tastes of the UK are varied. Whether you enjoy exploring cities or prefer to get out into the countryside, the UK has something to offer you.</p>\r\n<h6>Global Leader in International Education</h6>\r\n<p>According to the QS World University Rankings (2012), four of the top six universities in the world are in the UK. By studying in the UK, you have the opportunity to graduate from one of the best education systems in the world!</p>\r\n<h6>Excellent International Reputation</h6>\r\n<p>British qualifications are recognised internationally and valued by employers, universities and governments throughout the world. The UK is a popular destination for international students, and well respected for world-class standards of teaching. The UK is also renowned for the excellence of its research and teaching.</p>\r\n<h6>Value for Money</h6>\r\n<p>UK undergraduate study offers fantastic value for money and the sort of experience you can&rsquo;t put a price on. Undergraduate and postgraduate courses in the UK are generally much shorter than those abroad, which helps to reduce the amount of money require in paying tuition fees and living costs. Most undergraduate courses take three years to complete, although in Scotland it would be typically four years. A postgraduate Masters course will normally only take 1 year, whereas PhD will take 3 or 4 years. Furthermore, as an international student, you can work as well as study. If you are studying at degree level or above, you are permitted to work up to 20 hours a week during term time, with no limit during vacation periods. This can help you to gain both extra finances to support your studies and valuable work experience.. You will also have access to free health care on the National Health Service.</p>\r\n<h6>Improve your English</h6>\r\n<p>By studying and living in the UK, you will be immersed in the language and have the opportunity to perfect your English communication skills. Practise your English language skills every day, in shops and caf&eacute;s and while you&rsquo;re out with English-speaking friends, as well as in seminars and discussion groups on your course.</p>\r\n<h6>Multicultural Experience</h6>\r\n<p>UK is a multicultural, multi-faith country that has always welcomed migrants and visitors from abroad. By living in the UK, you will have the opportunity to experience new culture and meet people from different culture and countries. And, because the UK is such a popular destination for international students, you are sure to meet people from all over the world during your time in the UK.</p>', '<h6>Documents required for University Application:</h6>\r\n<ul>\r\n<li>\r\n<p>Scan copy of your passport</p>\r\n</li>\r\n<li>\r\n<p>Scan copies (original) of all educational Certificates &amp; Marksheets</p>\r\n</li>\r\n<li>\r\n<p>Scan copies (original) of Two Academic Reference Letter (For PG)</p>\r\n</li>\r\n<li>\r\n<p>Statement of Purpose</p>\r\n</li>\r\n<li>\r\n<p>Scan copy (original) of UKVI/Academic IELTS Certificate</p>\r\n</li>\r\n<li>\r\n<p>Job experience letter (if required)</p>\r\n</li>\r\n<li>\r\n<p>Other supporting documents (if available, e.g extracurricular activities)</p>\r\n</li>\r\n</ul>\r\n<h6>Documents required for Tier 4 Visa Application:</h6>\r\n<ul>\r\n<li>\r\n<p>A valid Passport</p>\r\n</li>\r\n<li>\r\n<p>A completed Online Visa Application Form</p>\r\n</li>\r\n<li>\r\n<p>Appropriate Visa Application Fee</p>\r\n</li>\r\n<li>\r\n<p>Immigration Health Surcharge (IHS)</p>\r\n</li>\r\n<li>\r\n<p>Confirmation of Acceptance for Studies (CAS) Letter from your sponsor (University)</p>\r\n</li>\r\n<li>\r\n<p>Medical Test - IOM</p>\r\n</li>\r\n<li>\r\n<p>Bank Statement and Bank Solvency Certificate (from Listed Bank only)</p>\r\n</li>\r\n<li>\r\n<p>All educational Certificates and Marksheets (Original)</p>\r\n</li>\r\n<li>\r\n<p>IELTS/TOEFL Certificate</p>\r\n</li>\r\n<li>\r\n<p>Job experience letter (if required)</p>\r\n</li>\r\n<li>\r\n<p>Other supporting documents (if available, e.g extracurricular activities)</p>\r\n</li>\r\n</ul>', '<h6>Intakes</h6>\r\n<p>The main intake offered by all Universities is September / October few universities offer Jan / Feb intake also.</p>\r\n<h6>English Language Requirements</h6>\r\n<p>UKVI IELTS is mandatory for Foundation programs. UKVI/Academic IELTS score of 5.5 to 6.5 is required for Undergraduate programs. For Postgraduate programs UKVI or Academic IELTS score of 6.0 to 6.5 is required.</p>\r\n<h6>Academic Requirement</h6>\r\n<p><strong>Undergraduate &ndash; Bachelors</strong></p>\r\n<ul>\r\n<li>\r\n<p>GPA 4.75 to 5.0 in HSC / Min 2C in A Level to 3A* in A Level</p>\r\n</li>\r\n<li>\r\n<p>Few Universities require Math course in 12th Grade for Business and Science programs</p>\r\n</li>\r\n</ul>\r\n<p><strong>Postgraduate &ndash; Masters</strong></p>\r\n<ul>\r\n<li>\r\n<p>CGPA 2.50+</p>\r\n</li>\r\n<li>\r\n<p>GRE or GMAT is not required for Business, Science and Engineering programs</p>\r\n</li>\r\n<li>\r\n<p>For MBA programs at some Universities students need to have work experience along with GMAT Score</p>\r\n</li>\r\n</ul>\r\n<p>Each institution sets its own entry requirements, and you will find that they vary between universities. Your application will normally be assessed on your current level of qualification.</p>\r\n<p>To make sure you meet all the admissions criteria for the course(s) you wish to apply for, contact the International Office at the institution(s) you are applying to and check.</p>', '<h6>Points required to obtain Tier 4 General Student Visa:</h6>\r\n<p>To successfully apply for a Tier 4 General visa, you must have to score 40 out of 40 points.</p>\r\n<ul>\r\n<li>\r\n<p>Confirmation of Acceptance for Studies (CAS) Letter &ndash; 30 Points.</p>\r\n</li>\r\n<li>\r\n<p>Maintenance (Funds) &ndash; 10 points</p>\r\n</li>\r\n</ul>\r\n<h6>Funds to be shown:</h6>\r\n<ul>\r\n<li>\r\n<p>If you wish to study within London borough &ndash; First year tuition + &pound;12,006</p>\r\n</li>\r\n<li>\r\n<p>Outside London borough &ndash; First year tuition + &pound;9,207</p>\r\n</li>\r\n</ul>\r\n<p><strong>Living Expenses:</strong>&nbsp;Estimated at &pound;500 - &pound;1000 (per month).</p>\r\n<p>&nbsp;</p>\r\n<p><strong>Acceptable Funds:</strong>&nbsp;Bank balance in Savings Account, FDR Account (listed Bank only).</p>\r\n<h6>Visa Application Fees</h6>\r\n<ul>\r\n<li>\r\n<p>Tier 4 (General) or Tier 4 (Child) - &pound;348</p>\r\n</li>\r\n</ul>\r\n<h6>Visa processing times for Bangladesh</h6>\r\n<ul>\r\n<li>\r\n<p>7 Working Days (Premium) to 20 Working Days (Normal)</p>\r\n</li>\r\n</ul>', NULL, NULL, NULL, 1, 1, 1, '2022-08-15 11:17:02', '2022-08-15 11:27:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teams`
--

CREATE TABLE `tbl_teams` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `department_id` int UNSIGNED DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` text,
  `linkedin_link` varchar(100) DEFAULT NULL,
  `sort_order` int UNSIGNED DEFAULT '1',
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teams`
--

INSERT INTO `tbl_teams` (`id`, `name`, `department_id`, `designation`, `image`, `description`, `linkedin_link`, `sort_order`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Emmanuel Umoh', NULL, 'Co-founder & CEO', 'public/uploads/shares/team/emmanuel_umoh.jpg', NULL, 'https://www.linkedin.com/in/emmanuel-e-umoh/', 1, 1, '2022-11-14 17:04:22', '2023-03-22 21:56:06'),
(9, 'Niki Moyer', NULL, 'Co-founder & Business Development', 'public/uploads/shares/team/niki_moyer.jfif', NULL, NULL, 1, 1, '2022-11-14 19:16:29', '2023-03-22 21:55:58'),
(10, 'Rosemary Obasi', NULL, 'Chief Compliance Officer', 'public/uploads/shares/team/rosemary_obasi.jfif', NULL, 'https://www.linkedin.com/in/rosemary-obasi-084433b8/', 1, 1, '2022-11-14 19:18:05', '2023-03-22 21:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_universities`
--

CREATE TABLE `tbl_universities` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `description` text,
  `image` varchar(256) DEFAULT NULL,
  `logo` varchar(256) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `website_link` varchar(256) DEFAULT NULL,
  `facebook_link` varchar(256) DEFAULT NULL,
  `twitter_link` varchar(256) DEFAULT NULL,
  `youtube_link` varchar(256) DEFAULT NULL,
  `facts_and_figure` text,
  `finance_and_intake` text,
  `video_url` varchar(256) DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_universities`
--

INSERT INTO `tbl_universities` (`id`, `title`, `slug`, `country_id`, `description`, `image`, `logo`, `location`, `website_link`, `facebook_link`, `twitter_link`, `youtube_link`, `facts_and_figure`, `finance_and_intake`, `video_url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'University of Ilinois', 'university-of-ilinois', 1, '<p>Itaque iusto eu qui .</p>', 'public/uploads/shares/a.jpg', NULL, 'Canada', 'https://www.vedulukurypily.cm', 'Eveniet illum cons', 'Est asperiores enim', 'Atque et corrupti e', '<p>Dolorem facilis cons.</p>', '<p>Id pariatur. Commodo.</p>', 'Facilis occaecat est', 1, '2022-08-15 08:31:07', '2022-08-27 22:42:36'),
(2, 'Nepal', 'nepal', 3, '<p>University of Kathmandu</p>', 'public/uploads/shares/slider_11_(1).png', 'public/uploads/shares/authorization-background.jpg', 'Kathmandu', 'https://www.buvyvuciq.com', 'Earum sint esse rec', 'Nemo omnis rerum max', 'Illum debitis itaqu', '<ul>\r\n<li>Established in 1959</li>\r\n<li>Public University</li>\r\n<li>Member of U15</li>\r\n<li>Very high Research Facilities</li>\r\n<li>Total Number of Students - 35,000+</li>\r\n<li>Total Number of Staff - 4,000+</li>\r\n<li>More than 100 programs</li>\r\n<li>Campus Size - 1,112 Acres</li>\r\n<li>World Ranking - Below 150</li>\r\n</ul>', '<ul>\r\n<li>Avg Cost of Tuition/Year NRs. 100</li>\r\n<li>Cost of Living/Year NRs. 100</li>\r\n<li>Application Fee N/A</li>\r\n<li>Intakes N/A</li>\r\n</ul>', 'https://youtu.be/mu53hBMQp10', 1, '2022-08-27 22:17:04', '2022-08-28 07:45:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_login_logs`
--

CREATE TABLE `tbl_user_login_logs` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `login_date` timestamp NULL DEFAULT NULL,
  `login_device` varchar(191) DEFAULT NULL,
  `ip_address` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tbl_user_login_logs`
--

INSERT INTO `tbl_user_login_logs` (`id`, `user_id`, `login_date`, `login_device`, `ip_address`) VALUES
(1, 1, '2022-11-13 18:21:50', 'Chrome', '103.163.182.202'),
(2, 1, '2022-11-13 18:52:45', 'Chrome', '103.163.182.202'),
(3, 1, '2022-11-13 23:44:26', 'Chrome', '75.228.82.122'),
(4, 1, '2022-11-14 00:17:56', 'Chrome', '75.228.82.122'),
(5, 1, '2022-11-14 13:02:37', 'Chrome', '75.228.82.122'),
(6, 1, '2022-11-14 15:06:49', 'Chrome', '103.186.197.165'),
(7, 1, '2022-11-14 15:40:17', 'Chrome', '75.228.82.122'),
(8, 1, '2022-11-14 17:28:17', 'Chrome', '75.228.82.122'),
(9, 1, '2022-11-15 01:39:40', 'Chrome', '75.228.82.122'),
(10, 1, '2022-11-15 04:39:18', 'Chrome', '103.163.182.74'),
(11, 1, '2022-11-15 07:32:32', 'Chrome', '103.163.182.28'),
(12, 1, '2022-11-15 13:48:39', 'Chrome', '75.228.82.122'),
(13, 1, '2022-11-15 15:21:36', 'Chrome', '111.119.49.133'),
(14, 1, '2022-11-17 17:02:36', 'Chrome', '75.228.59.69'),
(15, 1, '2022-11-17 21:41:44', 'Chrome', '75.228.59.69'),
(16, 1, '2022-11-18 19:05:50', 'Chrome', '75.228.59.69'),
(17, 1, '2022-11-19 21:28:10', 'Chrome', '75.228.59.69'),
(18, 1, '2022-11-21 23:45:31', 'Chrome', '75.228.59.69'),
(19, 1, '2022-11-30 01:27:39', 'Chrome', '75.228.59.69'),
(20, 1, '2022-12-09 17:45:41', 'Chrome', '75.228.59.69'),
(21, 1, '2022-12-14 03:34:01', 'Chrome', '75.228.59.69'),
(22, 1, '2022-12-15 07:09:01', 'Chrome', '111.119.49.238'),
(23, 1, '2022-12-15 15:15:55', 'Chrome', '111.119.49.238'),
(24, 1, '2022-12-15 17:19:57', 'Chrome', '111.119.49.238'),
(25, 1, '2022-12-27 22:36:28', 'Chrome', '75.228.114.161'),
(26, 1, '2022-12-28 01:50:03', 'Chrome', '75.228.114.161'),
(27, 1, '2022-12-28 13:41:54', 'Chrome', '107.193.249.27'),
(28, 1, '2022-12-29 00:28:25', 'Chrome', '107.193.249.27'),
(29, 1, '2023-01-04 14:54:19', 'Chrome', '111.119.49.100'),
(30, 1, '2023-01-06 18:22:25', 'Chrome', '103.163.182.50'),
(31, 1, '2023-02-01 23:18:54', 'Chrome', '75.228.29.168'),
(32, 1, '2023-02-01 23:46:30', 'Chrome', '75.228.29.168'),
(33, 1, '2023-02-02 23:21:58', 'Chrome', '75.228.29.168'),
(34, 1, '2023-02-02 23:26:40', 'Chrome', '75.228.29.168'),
(35, 1, '2023-02-03 13:17:36', 'Chrome', '103.163.182.175'),
(36, 1, '2023-02-03 13:23:46', 'Chrome', '75.228.29.168'),
(37, 1, '2023-02-05 00:14:36', 'Chrome', '75.228.29.168'),
(38, 1, '2023-02-23 14:25:21', 'Chrome', '75.228.29.168'),
(39, 1, '2023-02-23 14:56:50', 'Chrome', '103.163.182.162'),
(40, 1, '2023-03-03 03:02:23', 'Chrome', '72.106.102.66'),
(41, 1, '2023-03-09 19:01:56', 'Chrome', '72.106.102.66'),
(42, 1, '2023-03-10 01:35:31', 'Chrome', '72.106.102.66'),
(43, 1, '2023-03-22 14:42:27', 'Chrome', '75.228.78.192'),
(44, 1, '2023-03-22 17:45:44', 'Chrome', '75.228.78.192'),
(45, 1, '2023-03-23 15:39:10', 'Chrome', '105.112.149.18'),
(46, 1, '2023-03-23 15:54:38', 'Chrome', '102.89.47.209'),
(47, 1, '2023-03-27 15:13:02', 'Chrome', '72.106.111.96'),
(48, 1, '2023-03-27 15:45:59', 'Chrome', '72.106.111.96'),
(49, 1, '2023-03-27 16:12:01', 'Chrome', '72.106.111.96'),
(50, 1, '2023-03-27 17:13:09', 'Chrome', '72.106.111.96'),
(51, 1, '2023-03-28 23:12:05', 'Chrome', '72.106.111.96'),
(52, 1, '2023-03-29 14:06:21', 'Chrome', '75.228.116.195'),
(53, 1, '2023-03-29 17:20:09', 'Chrome', '103.163.182.115');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_value`
--

CREATE TABLE `tbl_value` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text,
  `image` varchar(200) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_value`
--

INSERT INTO `tbl_value` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Senders', 'With your KrillPay e-wallet, you can send instant Peer-to-Peer money transfers to another KrillPay user.', 'public/uploads/shares/value/values-icon-1.png', 1, '2022-11-12 12:14:56', '2023-03-22 21:24:41'),
(2, 'Receiver', 'No bank? No problem. With your KrillPay e-wallet, you can receive money from other users for goods and services rendered.', 'public/uploads/shares/value/values-icon-2.png', 1, '2022-11-12 12:15:20', '2023-03-22 21:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_why_choose`
--

CREATE TABLE `tbl_why_choose` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` text,
  `icon` varchar(100) DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_why_choose`
--

INSERT INTO `tbl_why_choose` (`id`, `title`, `description`, `icon`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'EXPERIENCE', '<p>Experience - all that matters! Having more than 16+ years of experience in education consultancy, NHP Education Consultants have constructed a history of success and unprecedented growth from a small consulting firm. Our dedication and unwavering commitment made it possible to create the goodwill that we achieved. We have a team of trained professional that you can rely on and trust. With us, you will get services from the best in the industry. We provide accurate, factual and updated information only. There are many pitfalls to avoid, important decisions to make, and systems to navigate. Our experts will make sure you have the best advice throughout your study abroad journey.</p>', 'flaticon-consultant', 1, 1, 1, '2022-08-14 08:13:57', '2022-08-15 21:48:16'),
(2, 'Transparency', '<p>Straight Talk is Good Business! Our services are our commitments to you and we deliver what we commit. We do not chase the impossible and make fake promises - we live in reality. We are truthful to our words and maintain accountability and integrity. We maintain transparency (openness, communication and accountability) in every aspect of our business. We work to ensure students and families receive the fullest picture of admissions with real insight into how they can navigate their futures, guiding them through the whole admissions process, visa application and even pre-departure orientation.</p>', 'flaticon-badge', 1, NULL, 1, '2022-08-15 21:49:44', '2022-08-15 21:49:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_workings`
--

CREATE TABLE `tbl_workings` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` text,
  `image` varchar(256) DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_workings`
--

INSERT INTO `tbl_workings` (`id`, `title`, `description`, `image`, `created_by`, `updated_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Career Counselling', '<p>Career Counselling - Course and Institution Selection - University Application</p>', 'public/uploads/shares/workings/hww-counselling.jpg', 1, 1, 1, '2022-08-15 22:23:32', '2022-08-15 22:28:19'),
(2, 'Visa Documents Preparation', '<p>Visa Documents Preparation - Interview Preparation - Visa Application</p>', 'public/uploads/shares/workings/hww-visaapplication.jpg', 1, 1, 1, '2022-08-15 22:23:55', '2022-08-15 22:28:31'),
(3, 'Accommodation Arrangement', '<p>Accommodation Arrangement - Airport Pick Up - Pre-departure Orientation</p>', 'public/uploads/shares/workings/hww-departure.jpg', 1, 1, 1, '2022-08-15 22:24:17', '2022-08-15 22:29:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `verify_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobileno` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobileno_verify` tinyint UNSIGNED DEFAULT '0',
  `discount_id` int UNSIGNED DEFAULT NULL,
  `email_verify` tinyint UNSIGNED DEFAULT '0',
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_contact_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_status` tinyint DEFAULT NULL,
  `province_id` int UNSIGNED DEFAULT NULL,
  `district_id` int UNSIGNED DEFAULT NULL,
  `city_id` int UNSIGNED DEFAULT NULL,
  `pickup_address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `change_status` tinyint DEFAULT NULL,
  `bank_profile_status` tinyint DEFAULT NULL,
  `status` tinyint UNSIGNED DEFAULT '0',
  `mail_status` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `verify_token`, `mobileno`, `address`, `mobileno_verify`, `discount_id`, `email_verify`, `company_name`, `alt_contact_no`, `website`, `image`, `image_status`, `province_id`, `district_id`, `city_id`, `pickup_address`, `description`, `change_status`, `bank_profile_status`, `status`, `mail_status`) VALUES
(1, 'Ram', 'ram@gmail.com', '2021-02-02 23:18:23', '$2y$10$ageNtP0OAMFNOmhiMwdjnOa2QonkX8IdbDIyZcSy3IUSP7ItcE4kK', NULL, '2021-02-03 23:18:23', '2021-02-03 23:18:23', NULL, '9808915987', 'Bhaktapur', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, 'Nivaj', 'nivajshakya@gmail.com', '2021-02-07 07:37:49', '$2y$10$qamcxDZ.WBgv93AIFpkA6uJNKAC54kXidzL9RjyqkneLkqbrI410W', 'wWZVbHqfr94qFBYfg0XsFHrtP6msr9ygwGEyouLvNz7GsILO2yakl85maz4O', '2021-02-07 07:37:23', '2021-02-15 09:36:42', NULL, '9841980800', 'manbhawan-05,lalitpur', 0, NULL, 1, NULL, NULL, NULL, 'images/logos/nivaj/ppjpg-1613380834.jpg', NULL, 3, 308, 50, 'manbhawan-05,lalitpur', NULL, 1, 1, 1, NULL),
(3, 'Rakshak Bajracharya', 'bajracharyarakshak@gmail.com', '2021-02-07 11:51:40', '$2y$10$84UuuZsfv.2YQOPWncNim.KfbUM8eYsLVZCasCC9a6.JLOah/oM7y', NULL, '2021-02-07 11:51:21', '2021-04-07 06:26:32', NULL, '9808553183', 'Banglamukhi', 0, 4, 1, 'name', NULL, NULL, 'images/logos/271681jpg-1614741378.jpg', 1, 3, 308, 34, 'Banglamukhi', NULL, 1, 1, 1, 1),
(4, 'Joy Bradley', 'fakumogus@mailinator.net', NULL, '$2y$10$KawOhgyrO5zlGFQLl.yIeOblWpVfEwHeXbPtGj50bxACHLgdf6yEW', NULL, '2021-02-08 08:28:29', '2021-02-08 08:28:29', 'c5qs6ReJVA4hjzxPl6hDrbYPCABXWugVeWjcFGkP', '43', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(5, 'Ninzaj Nivaj', 'ninzajnivaj@gmail.com', '2021-02-08 11:18:19', '$2y$10$RlIuxnxxHDEizq.8MHeJeuroki8j0Q1rzJH1LIU4rdxKuaTGG3AGu', NULL, '2021-02-08 11:17:35', '2021-03-03 05:20:23', NULL, '9841980801', NULL, 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL),
(6, 'Saroj Manandhar', 'saroses.smdr@gmail.com', '2021-02-09 09:13:53', '$2y$10$b7Rek9iadbJ2O2ftMEwNGODM0cZuI7O/VgbHWRxQcM71FIlj21Xb.', NULL, '2021-02-09 09:13:00', '2021-02-28 00:26:01', NULL, '9808915988', 'asdf', 0, NULL, 1, 'fasdfasd', NULL, NULL, NULL, NULL, 2, 203, 75, 'asdff', NULL, NULL, NULL, 1, 1),
(7, 'Ronis Shrestha', 'shrestharonis@gmail.com', '2021-02-15 08:55:49', '$2y$10$yPZcU6q.qHyFA2PdpBnFwuHCLMumOEjKqpNvha/bXSiYf1iEw.ZlO', NULL, '2021-02-15 08:55:08', '2021-02-15 09:19:36', NULL, '9851173279', NULL, 0, NULL, 1, 'Nonstop Delivery', '9851125131', 'www.stxavierconsult.com.np', 'images/logos/ronis_shrestha/img-6599jpg-1613380776.JPG', NULL, 3, 308, 40, 'Lagankhel', '<p>abc</p>', 1, NULL, 1, NULL),
(8, 'Sarose 2', 'developersarose@gmail.com', '2021-02-15 09:05:04', '$2y$10$tspV6TdmkrKf82tQNBKgfuchlb2FregPBrnCmhkX63Pmezd.2KJnK', NULL, '2021-02-15 09:04:06', '2021-02-15 09:20:28', NULL, '98610152054', NULL, 0, NULL, 1, NULL, NULL, NULL, 'images/logos/sarose_2/tote1jpeg-1613380828.jpeg', NULL, 1, 112, 69, 'ok', NULL, 1, NULL, 1, NULL),
(9, '9800000000', 'noreply.candidnepal@gmail.com', '2021-02-15 11:31:22', '$2y$10$awy9VNVJtvb5aGt3922SJu.bOwIpljUpTXpYF4nyHmwqT7gfmy4jO', NULL, '2021-02-15 11:29:28', '2021-02-23 21:47:31', NULL, '9800000000', 'Baneshwor', 0, NULL, 1, 'Company', NULL, NULL, 'images/logos/9800000000/bizip8ie70cyszfqktovjtvde852hjd5eoqnvrg5jpeg-1613388832.jpeg', NULL, 3, 308, 34, 'alko', NULL, 1, NULL, 1, 1),
(10, 'Sajan Tamrakar', 'trivenisolution@gmail.com', '2021-02-15 13:41:32', '$2y$10$RJ2jGFFRqNZGv9t3GeHSKusHZHs7EWDM1UU0GYVPylH4HCGgX3iAG', NULL, '2021-02-15 13:40:26', '2021-02-28 01:25:17', NULL, '9841388640', 'Pulchowk', 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 308, 50, 'MEGA COLLEGE', NULL, 1, 1, 2, NULL),
(11, 'Saroj Manandhar', 'saroj@candidnepal.com', '2021-03-02 12:08:45', '$2y$10$1nC6BGhbE3i.fd4TZk1x8eaNPYTev43VuolrclCTGC8SCGhTrfxgm', NULL, '2021-03-02 12:03:58', '2021-03-04 04:43:38', NULL, '9808195444', 'bhaktapur', 0, 0, 1, '333', NULL, '333', 'images/logos/saroj_manandhar/balajijpeg-1614687920.jpeg', 1, 3, 308, 47, 'bhaktapur, 25 mn', NULL, 1, 1, 2, 1),
(12, 'Rakshak Bajracharya A', 'rakshak@candidnepal.com', NULL, '$2y$10$UQh9QNGCyGxhxRfqCEQzqOWV7HuPmXosk0FsPjNIKclw3a0dF1Kha', NULL, '2021-03-02 12:04:14', '2021-03-05 07:30:48', NULL, '9808553181', 'Shankhamul', 0, 0, 1, NULL, NULL, NULL, 'images/logos/rakshak_bajracharya_a/shoulder3jpeg-1614771407.jpeg', 2, 3, 308, 37, 'Alko', NULL, 1, 1, 1, 1),
(13, 'Poppy Petals', 'tamrakars01@gmail.com', '2021-03-04 06:54:57', '$2y$10$aA2yIFAHcz8hbu95or5SBek4..v3KcDhWD5JcPdTyaZ3r6AqHYwLC', NULL, '2021-03-04 06:53:53', '2021-03-08 12:34:03', NULL, '9801363515', 'Lagankhel', 0, 0, 1, NULL, NULL, NULL, 'images/logos/sandeep_tamrakar/balajijpeg-1614921995.jpeg', 2, 3, 308, 40, 'Kumaripati', NULL, 1, 1, 1, 1),
(14, 'Nepastore', 'salesnepastore@gmail.com', '2021-03-09 05:22:10', '$2y$10$qcIAiXPaXK5u41Rrwc6tturck4BgvsiwZnuFDcPCWWYEOhJItiD.2', NULL, '2021-03-09 05:21:41', '2021-03-09 05:25:15', NULL, '9801363511', 'Prayagpokhari, Lagankhel', 0, 0, 1, NULL, NULL, 'nepastore.com', NULL, NULL, 3, 308, 40, 'Prayagpokhari, Lagankhel', NULL, 1, NULL, 1, 1),
(17, 'Saroj Manandhar', 'sarosessmdr@gmail.com', NULL, '$2y$10$gL5df08X4a0NslDm4Djg7um326VmLGWmXuglPUEsupbE7LcUumC4e', NULL, '2021-04-07 04:09:20', '2021-04-07 04:10:50', NULL, '9861015205', 'Bhaktapur', 0, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `rel_post_category`
--
ALTER TABLE `rel_post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_groups`
--
ALTER TABLE `tbl_admin_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_menus`
--
ALTER TABLE `tbl_admin_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin_roles`
--
ALTER TABLE `tbl_admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_roles_user_group_id_foreign` (`user_group_id`),
  ADD KEY `user_roles_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `tbl_admin_users`
--
ALTER TABLE `tbl_admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_author`
--
ALTER TABLE `tbl_author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_certificates`
--
ALTER TABLE `tbl_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`province_id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_features`
--
ALTER TABLE `tbl_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback_reply`
--
ALTER TABLE `tbl_feedback_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login_fail_logs`
--
ALTER TABLE `tbl_login_fail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu_items`
--
ALTER TABLE `tbl_menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_menu_items_menu_foreign` (`menu`);

--
-- Indexes for table `tbl_newsletter_list`
--
ALTER TABLE `tbl_newsletter_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_province`
--
ALTER TABLE `tbl_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_scholarship_offers`
--
ALTER TABLE `tbl_scholarship_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_site_setting`
--
ALTER TABLE `tbl_site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staff_category`
--
ALTER TABLE `tbl_staff_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_statistic`
--
ALTER TABLE `tbl_statistic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_study_abroad`
--
ALTER TABLE `tbl_study_abroad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_teams`
--
ALTER TABLE `tbl_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_universities`
--
ALTER TABLE `tbl_universities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_login_logs`
--
ALTER TABLE `tbl_user_login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_value`
--
ALTER TABLE `tbl_value`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_why_choose`
--
ALTER TABLE `tbl_why_choose`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_workings`
--
ALTER TABLE `tbl_workings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobileno_unique` (`mobileno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rel_post_category`
--
ALTER TABLE `rel_post_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_admin_groups`
--
ALTER TABLE `tbl_admin_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_admin_menus`
--
ALTER TABLE `tbl_admin_menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_admin_roles`
--
ALTER TABLE `tbl_admin_roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `tbl_admin_users`
--
ALTER TABLE `tbl_admin_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_author`
--
ALTER TABLE `tbl_author`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_certificates`
--
ALTER TABLE `tbl_certificates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=710;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_features`
--
ALTER TABLE `tbl_features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_feedback_reply`
--
ALTER TABLE `tbl_feedback_reply`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login_fail_logs`
--
ALTER TABLE `tbl_login_fail_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_menus`
--
ALTER TABLE `tbl_menus`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_menu_items`
--
ALTER TABLE `tbl_menu_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_newsletter_list`
--
ALTER TABLE `tbl_newsletter_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_province`
--
ALTER TABLE `tbl_province`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_scholarship_offers`
--
ALTER TABLE `tbl_scholarship_offers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_site_setting`
--
ALTER TABLE `tbl_site_setting`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_staff_category`
--
ALTER TABLE `tbl_staff_category`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_statistic`
--
ALTER TABLE `tbl_statistic`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_study_abroad`
--
ALTER TABLE `tbl_study_abroad`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_teams`
--
ALTER TABLE `tbl_teams`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_universities`
--
ALTER TABLE `tbl_universities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user_login_logs`
--
ALTER TABLE `tbl_user_login_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tbl_value`
--
ALTER TABLE `tbl_value`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_why_choose`
--
ALTER TABLE `tbl_why_choose`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_workings`
--
ALTER TABLE `tbl_workings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
